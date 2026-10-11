#include "IndividualProgression.h"
#include "NPCHandler.h"
#include "Opcodes.h"
#include "ScriptedGossip.h"
#include "WorldPacket.h"

// The War Effort Commanders tell a player how far along the war effort is: which supplies
// have been delivered at least once, and how many Commendation Signets the player carries
// out of the number 'Complete the War Effort' asks for.

enum WarEffortProgress
{
    NPC_WARLORD_GORCHUK            = 15700,
    NPC_FIELD_MARSHAL_SNOWFALL     = 15701,

    QUEST_COMPLETE_WAR_EFFORT_A    = 108850,
    QUEST_COMPLETE_WAR_EFFORT_H    = 108855,

    // Not a row in npc_text. The text is sent to the client under this id each time a
    // commander is spoken to.
    NPC_TEXT_WAR_EFFORT_PROGRESS   = 108850
};

struct WarEffortSide
{
    uint32 commander;
    uint32 finalQuest;
    std::array<uint32, 15> deliveries;
};

static constexpr std::array<WarEffortSide, 2> WarEffortSides =
{{
    { NPC_FIELD_MARSHAL_SNOWFALL, QUEST_COMPLETE_WAR_EFFORT_A,
        { QUEST_COPPER_BARS_A, QUEST_IRON_BARS, QUEST_THORIUM_BARS, QUEST_STRANGLEKELP, QUEST_PURPLE_LOTUS_A,
          QUEST_ARTHAS_TEARS, QUEST_LIGHT_LEATHER, QUEST_MEDIUM_LEATHER, QUEST_THICK_LEATHER_A, QUEST_LINEN_BANDAGES,
          QUEST_SILK_BANDAGES, QUEST_RUNECLOTH_BANDAGES_A, QUEST_RAINBOW_FIN, QUEST_ROAST_RAPTOR,
          QUEST_SPOTTED_YELLOWTAIL_A } },
    { NPC_WARLORD_GORCHUK, QUEST_COMPLETE_WAR_EFFORT_H,
        { QUEST_COPPER_BARS_H, QUEST_TIN_BARS, QUEST_MITHRIL_BARS, QUEST_PEACEBLOOM, QUEST_FIREBLOOM,
          QUEST_PURPLE_LOTUS_H, QUEST_HEAVY_LEATHER, QUEST_THICK_LEATHER_H, QUEST_RUGGED_LEATHER, QUEST_WOOL_BANDAGES,
          QUEST_MAGEWEAVE_BANDAGES, QUEST_RUNECLOTH_BANDAGES_H, QUEST_LEAN_WOLF_STEAK, QUEST_SPOTTED_YELLOWTAIL_H,
          QUEST_BAKED_SALMON } }
}};

struct WarEffortStatus
{
    bool done = false;                 // 'Complete the War Effort' rewarded
    uint32 kinds = 0;
    uint32 kindsDelivered = 0;
    std::vector<std::string> missing;  // items of the kinds not delivered yet
    std::string signetName;
    uint32 signetsNeeded = 0;
    uint32 signetsCarried = 0;
    uint32 signetsBanked = 0;

    bool ReadyToHandIn() const { return kindsDelivered == kinds && signetsCarried >= signetsNeeded; }
};

static std::string GetWarEffortItemName(uint32 itemId)
{
    ItemTemplate const* item = sObjectMgr->GetItemTemplate(itemId);
    return item ? item->Name1 : std::string();
}

// justRewarded: a quest that is being rewarded right now and counts as delivered
static bool GetWarEffortStatus(Player* player, WarEffortSide const& side, WarEffortStatus& status, uint32 justRewarded = 0)
{
    Quest const* finalQuest = sObjectMgr->GetQuestTemplate(side.finalQuest);
    if (!finalQuest || !finalQuest->RequiredItemId[0])
        return false;

    status.done = player->GetQuestRewardStatus(side.finalQuest);

    for (uint32 questId : side.deliveries)
    {
        Quest const* delivery = sObjectMgr->GetQuestTemplate(questId);
        if (!delivery)
            continue;

        ++status.kinds;
        if (questId == justRewarded || player->GetQuestRewardStatus(questId))
            ++status.kindsDelivered;
        else
            status.missing.push_back(GetWarEffortItemName(delivery->RequiredItemId[0]));
    }

    // The amount comes from the quest, so the report stays right when the quest is changed.
    uint32 signet = finalQuest->RequiredItemId[0];
    status.signetName = GetWarEffortItemName(signet);
    status.signetsNeeded = finalQuest->RequiredItemCount[0];
    status.signetsCarried = player->GetItemCount(signet);
    status.signetsBanked = player->GetItemCount(signet, true) - status.signetsCarried;
    return true;
}

// $N and $B are replaced by the client: the player's name and a line break.
static std::string BuildWarEffortText(WarEffortStatus const& status)
{
    if (status.done)
        return "Your part in the war effort is done, $N: every kind of supply delivered and your signets handed in."
            "$B$BThe Scarab Gong in Silithus waits for whoever is ready to open the gates.";

    std::string text = "Here is where you stand in the war effort, $N.";

    text += Acore::StringFormat("$B$BSupplies: {} of {} kinds delivered.", status.kindsDelivered, status.kinds);

    std::string missing;
    for (std::string const& name : status.missing)
    {
        if (name.empty())
            continue;

        if (!missing.empty())
            missing += ", ";

        missing += name;
    }

    if (!missing.empty())
        text += Acore::StringFormat("$BStill to deliver: {}.", missing);

    text += Acore::StringFormat("$B$B{}s: {} of {}", status.signetName, status.signetsCarried, status.signetsNeeded);
    if (status.signetsBanked)
        text += Acore::StringFormat(", and {} more in your bank", status.signetsBanked);
    text += ".";

    if (status.ReadyToHandIn())
        text += "$B$BYou have everything I asked for. Hand me the signets and our preparations are complete.";
    else if (status.kindsDelivered < status.kinds)
        text += Acore::StringFormat("$B$BDeliver every kind of supply to the collectors at least once and bring me {} signets. "
            "Then our preparations are complete.", status.signetsNeeded);
    else
        text += Acore::StringFormat("$B$B{} more signets and our preparations are complete. Every delivery to the collectors "
            "earns you more.", status.signetsNeeded - status.signetsCarried);

    // The commanders also hand out the 'Signets for War Supplies' quests, which take signets.
    text += "$B$BMind the war supplies I offer: signets you trade to me for them are spent, and no longer count.";

    return text;
}

// The answer to CMSG_NPC_TEXT_QUERY, sent without being asked: the client keeps the text
// under the id and shows it when a gossip window uses that id.
static void SendWarEffortText(Player* player, std::string const& text)
{
    WorldPacket data(SMSG_NPC_TEXT_UPDATE, 4 + 2 * (text.size() + 1) + MAX_GOSSIP_TEXT_OPTIONS * 40);
    data << uint32(NPC_TEXT_WAR_EFFORT_PROGRESS);

    for (uint8 i = 0; i < MAX_GOSSIP_TEXT_OPTIONS; ++i)
    {
        data << float(i == 0 ? 1.0f : 0.0f);         // probability
        data << (i == 0 ? text : std::string());     // text of a male speaker
        data << (i == 0 ? text : std::string());     // text of a female speaker
        data << uint32(LANG_UNIVERSAL);

        for (uint8 j = 0; j < MAX_GOSSIP_TEXT_EMOTES; ++j)
        {
            data << uint32(0);                       // emote delay
            data << uint32(0);                       // emote
        }
    }

    player->SendDirectMessage(&data);
}

class npc_ipp_we_commander_gossip : public AllCreatureScript
{
public:
    npc_ipp_we_commander_gossip() : AllCreatureScript("npc_ipp_we_commander_gossip") { }

    // The commander's own window with its quests, and the report as the greeting.
    bool CanCreatureGossipHello(Player* player, Creature* creature) override
    {
        if (!sIndividualProgression->enabled)
            return false;

        for (WarEffortSide const& side : WarEffortSides)
        {
            if (side.commander != creature->GetEntry())
                continue;

            WarEffortStatus status;
            if (!GetWarEffortStatus(player, side, status))
                return false;

            player->PrepareGossipMenu(creature, creature->GetGossipMenuId(), true);
            SendWarEffortText(player, BuildWarEffortText(status));
            SendGossipMenuFor(player, NPC_TEXT_WAR_EFFORT_PROGRESS, creature);
            return true;
        }

        return false;
    }
};

class player_ipp_we_progress : public PlayerScript
{
public:
    player_ipp_we_progress() : PlayerScript("player_ipp_we_progress", { PLAYERHOOK_ON_PLAYER_COMPLETE_QUEST }) { }

    // Every delivery that rewards Commendation Signets ends with the count in chat.
    void OnPlayerCompleteQuest(Player* player, Quest const* quest) override
    {
        if (!sIndividualProgression->enabled)
            return;

        for (WarEffortSide const& side : WarEffortSides)
        {
            Quest const* finalQuest = sObjectMgr->GetQuestTemplate(side.finalQuest);
            if (!finalQuest || !RewardsItem(quest, finalQuest->RequiredItemId[0]))
                continue;

            WarEffortStatus status;
            if (!GetWarEffortStatus(player, side, status, quest->GetQuestId()) || status.done)
                return;

            std::string message = Acore::StringFormat("War effort: {} of {} kinds of supply delivered, {} of {} {}s.",
                status.kindsDelivered, status.kinds, status.signetsCarried, status.signetsNeeded, status.signetName);

            if (status.ReadyToHandIn())
                if (CreatureTemplate const* commander = sObjectMgr->GetCreatureTemplate(side.commander))
                    message += Acore::StringFormat(" {} is waiting for them.", commander->Name);

            ChatHandler(player->GetSession()).SendSysMessage(message);
            return;
        }
    }

private:
    static bool RewardsItem(Quest const* quest, uint32 itemId)
    {
        if (!itemId)
            return false;

        for (uint8 i = 0; i < QUEST_REWARDS_COUNT; ++i)
            if (quest->RewardItemId[i] == itemId && quest->RewardItemIdCount[i])
                return true;

        return false;
    }
};

void AddSC_aq_we_progress()
{
    new npc_ipp_we_commander_gossip();
    new player_ipp_we_progress();
}

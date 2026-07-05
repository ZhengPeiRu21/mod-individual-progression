/*
 * Restores Alterac Valley turn-in quest.
 * EFFECTS (elemental summons, armor scraps defender upgrades, supplies gossip report, air-strike hook)
 * WITHOUT editing core BattlegroundAV.cpp.
 *
 * Why this works: the AV turn-in still runs the normal quest-reward path, so
 * the module hook PlayerScript::OnPlayerCompleteQuest fires on turn-in
 * (PlayerQuest.cpp: end of Player::RewardQuest). From there we read the
 * player's Battleground, key a per-match counter off the BG instance id, and
 * act directly on the instance map. Core BG files are never touched.
 *
 * Armor scraps: the defenders spawned by av_creatures.sql are upgraded in place with Creature::UpdateEntry().
 * SetOriginalEntry() is called first so the upgrade survives respawns
 * Creature::Respawn() only reverts a creature whose entry differs from its original entry (Creature.cpp,
 *
 * Supplies gossip: both turn-in NPCs already have the retail option "How many more supplies are needed for the next upgrade?" in the base DB.
 * An AllCreatureScript answers it INSIDE the gossip window (dynamic text is sent as gossip item labels; npc_text is static DB text and cannot carry live numbers).
 * Returning true from CanCreatureGossipSelect suppresses the default handling, which also stops Murgot's old static submenu (5627) from replacing the live report.
 *
 * Config (see individualProgression.conf.dist):
 *   IndividualProgression.AV.ScrapsSeasoned      (default 25 turn-ins = 500 scraps)
 *   IndividualProgression.AV.ScrapsVeteran       (default 50 turn-ins = 1000 scraps)
 *   IndividualProgression.AV.ScrapsChampion      (default 75 turn-ins = 1500 scraps)
 *   IndividualProgression.AV.BossPointsRequired  (default 200)
 *   IndividualProgression.AV.GossipExactNumbers  (default 0 — estimates only)
 */

#include "IndividualProgression.h"
#include "av_quests.h"
#include "Battleground.h"
#include "Creature.h"
#include "GossipDef.h"
#include "Map.h"
#include "Player.h"
#include "ScriptedGossip.h"
#include "ScriptMgr.h"
#include <unordered_map>

namespace
{
    std::unordered_map<uint32, AVQuestState> avState;

    uint32 ScrapsThreshold(uint8 tier)
    {
        switch (tier)
        {
        case 1:  return sConfigMgr->GetOption<uint32>("IndividualProgression.AV.ScrapsSeasoned", 25);
        case 2:  return sConfigMgr->GetOption<uint32>("IndividualProgression.AV.ScrapsVeteran", 50);
        default: return sConfigMgr->GetOption<uint32>("IndividualProgression.AV.ScrapsChampion", 75);
        }
    }

    uint32 BossPointsRequired()
    {
        return sConfigMgr->GetOption<uint32>("IndividualProgression.AV.BossPointsRequired", 200);
    }

    bool UpgradeReady(AVQuestState const& state, TeamId team)
    {
        return state.defenderTier[team] < AV_DEFENDER_TIER_CHAMPION
            && state.scrapTurnIns[team] >= ScrapsThreshold(state.defenderTier[team] + 1);
    }

    uint32 SupplyTextId(AVQuestState const& state, TeamId team)
    {
        AVSupplyTexts const& texts = team == TEAM_ALLIANCE ? AV_SUPPLY_TEXTS_ALLIANCE : AV_SUPPLY_TEXTS_HORDE;
        uint8 tier = state.defenderTier[team];
        if (tier >= AV_DEFENDER_TIER_CHAMPION)
            return texts.maxed;
        return UpgradeReady(state, team) ? texts.ready[tier] : texts.notReady[tier];
    }

    // Upgrade every DB-spawned defender of `team` to `newTier`.
    // the map's spawn-id store only contains DB spawns, so summons are not effected.
    // Dead defenders only get their original entry moved up; Creature::Respawn() then brings them back already upgraded. 
    void UpgradeDefenders(Battleground* bg, TeamId team, uint8 newTier)
    {
        auto const& chains = team == TEAM_ALLIANCE ? AV_ALLIANCE_DEFENDER_CHAINS : AV_HORDE_DEFENDER_CHAINS;

        for (auto const& pair : bg->GetBgMap()->GetCreatureBySpawnIdStore())
        {
            Creature* defender = pair.second;
            if (!defender)
                continue;

            for (AVDefenderChain const& chain : chains)
            {
                if (!chain.entries[0]) // placeholder chain, not filled in yet
                    continue;

                bool isLowerTier = false;
                for (uint8 tier = 0; tier < newTier; ++tier)
                {
                    if (defender->GetEntry() == chain.entries[tier])
                    {
                        isLowerTier = true;
                        break;
                    }
                }

                if (!isLowerTier)
                    continue;

                defender->SetOriginalEntry(chain.entries[newTier]);
                if (chain.upgradeAliveImmediately && defender->IsAlive())
                {
                    uint16 currentFaction = defender->GetFaction();
                    defender->UpdateEntry(chain.entries[newTier], defender->GetCreatureData(), true);
                    defender->SetFaction(currentFaction);
                }
                break;
            }
        }
    }

    void HandleBossTurnIn(Player* player, AVQuestState& state, TeamId team, uint32 points)
    {
        state.bossPoints[team] += points;

        bool isAlliance = team == TEAM_ALLIANCE;
        ChatHandler(player->GetSession()).PSendSysMessage("{}: {}/{}",
            isAlliance ? "Ivus the Forest Lord" : "Lokholar the Ice Lord",
            state.bossPoints[team], BossPointsRequired());

        if (state.elementalSummoned[team] || state.bossPoints[team] < BossPointsRequired())
            return;

        AVSummonPos const& pos = isAlliance ? AV_IVUS_POS : AV_LOKHOLAR_POS;
        player->SummonCreature(isAlliance ? NPC_DUMMY_IVUS_THE_FOREST_LORD : NPC_DUMMY_LOKHOLAR_THE_ICE_LORD,
            pos.x, pos.y, pos.z, pos.o, TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, AV_DUMMY_LIFETIME_MS);
        state.elementalSummoned[team] = true;
    }

    void HandleScrapsTurnIn(Player* player, AVQuestState& state, TeamId team)
    {
        uint32 turnIns = ++state.scrapTurnIns[team];

        if (!UpgradeReady(state, team))
            return;

        // Threshold reached: stop taking scraps until the upgrade is triggered
        uint32 npcEntry = team == TEAM_ALLIANCE ? NPC_MURGOT_DEEPFORGE : NPC_SMITH_REGZAR;
        if (Creature* quartermaster = player->FindNearestCreature(npcEntry, 50.0f))
            quartermaster->RemoveNpcFlag(UNIT_NPC_FLAG_QUESTGIVER);

        ChatHandler(player->GetSession()).PSendSysMessage(
            "Speak with {} to upgrade your troops to {}!",
            team == TEAM_ALLIANCE ? "Murgot Deepforge" : "Smith Regzar",
            AV_TIER_NAMES[state.defenderTier[team] + 1]);
    }

    // Estimate for the supplies gossip option, using existing broadcast texts as examples
    char const* ScrapsEstimateLine(AVQuestState const& state, TeamId team)
    {
        uint8 tier = state.defenderTier[team];
        if (tier >= AV_DEFENDER_TIER_CHAMPION)
            return "I cannot store any more supplies. I have all I can handle!";

        uint32 next = ScrapsThreshold(tier + 1);
        uint32 prev = tier > 0 ? ScrapsThreshold(tier) : 0;
        uint32 turnIns = state.scrapTurnIns[team];

        uint32 interval = next > prev ? next - prev : 1;
        uint32 remaining = next > turnIns ? next - turnIns : 0;

        if (remaining * 4 >= interval * 3)      // less than a quarter done
            return "I barely have any supplies for upgrades.";
        if (remaining * 4 >= interval * 2)      // under halfway
            return "I need many more supplies in order to upgrade our units.";
        if (remaining * 4 <= interval * 2 && remaining * 4 >= interval * 3)     // over halfway and under three-quarters
            return "I have about half the supplies needed to upgrade our units.";
        return "I almost have enough supplies for the next upgrade!"; // over three-quarters done
    }

    void HandleAirStrikeTurnIn(Player* player, AVQuestState& state, AVAirFleet const& fleet)
    {
        if (state.beaconIssued[fleet.team][fleet.index])
            return; // strike already called this match; the commander should be hidden anyway

        uint32 turnIns = ++state.airTurnIns[fleet.team][fleet.index];
        uint32 required = sConfigMgr->GetOption<uint32>("IndividualProgression.AV.AirStrikeTurnIns", 50);

        ChatHandler(player->GetSession()).PSendSysMessage("{}'s Fleet: {}/{}", fleet.commanderName, turnIns, required);

        if (turnIns < required)
            return;

        // Threshold reached: this turn-in claims the beacon, if the player qualifies.
        // On failure nothing is consumed permanently — the next qualifying turn-in claims it.
        uint32 repFaction = fleet.team == TEAM_HORDE ? AV_FACTION_FROSTWOLF_CLAN : AV_FACTION_STORMPIKE_GUARD;
        if (player->GetReputationRank(repFaction) < REP_HONORED)
        {
            ChatHandler(player->GetSession()).PSendSysMessage(
                "Wing Commander {} only entrusts the beacon to those Honored with the {}.",
                fleet.commanderName, fleet.team == TEAM_HORDE ? "Frostwolf Clan" : "Stormpike Guard");
            return;
        }

        ItemPosCountVec dest;
        if (player->CanStoreNewItem(NULL_BAG, NULL_SLOT, dest, fleet.beaconItem, 1) != EQUIP_ERR_OK)
        {
            ChatHandler(player->GetSession()).PSendSysMessage(
                "Your bags are full! Make room and complete one more turn-in to receive the beacon.");
            return;
        }

        Item* beacon = player->StoreNewItem(dest, fleet.beaconItem, true);
        if (!beacon)
            return;

        player->SendNewItem(beacon, 1, true, false);
        state.beaconIssued[fleet.team][fleet.index] = true;

        // The fleet has lifted off: its base-camp commander disappears for the match.
        if (Creature* commander = player->FindNearestCreature(fleet.questGiverEntry, 100.0f))
        {
            commander->SetVisible(false);
            commander->SetFaction(AV_FACTION_FRIENDLY);
        }

        ChatHandler(player->GetSession()).PSendSysMessage(
            "Wing Commander {} hands you his beacon and takes to the skies! Plant it at the target location.",
            fleet.commanderName);
    }

    void SendSupplyStatus(Player* player, Creature* creature, AVQuestState& state, TeamId team)
    {
        ClearGossipMenuFor(player);

        if (UpgradeReady(state, team))
        {
            AddGossipItemFor(player, GOSSIP_ICON_CHAT,
                Acore::StringFormat("Upgrade our troops to {}!", AV_TIER_NAMES[state.defenderTier[team] + 1]),
                GOSSIP_SENDER_MAIN, AV_GOSSIP_ACTION_UPGRADE);
        }
        else if (state.defenderTier[team] < AV_DEFENDER_TIER_CHAMPION)
        {
            AddGossipItemFor(player, GOSSIP_ICON_CHAT, ScrapsEstimateLine(state, team), GOSSIP_SENDER_MAIN, 0);

            if (sConfigMgr->GetOption<bool>("IndividualProgression.AV.GossipExactNumbers", false))
                AddGossipItemFor(player, GOSSIP_ICON_CHAT,
                    Acore::StringFormat("(Turn-ins: {}/{})", state.scrapTurnIns[team],
                        ScrapsThreshold(state.defenderTier[team] + 1)),
                    GOSSIP_SENDER_MAIN, 0);
        }

        SendGossipMenuFor(player, SupplyTextId(state, team), creature);
    }
}

class ip_av_quests_player : public PlayerScript
{
public:
    ip_av_quests_player() : PlayerScript("ip_av_quests_player") {}

    void OnPlayerCompleteQuest(Player* player, Quest const* quest) override
    {
        if (!player || !quest)
            return;

        Battleground* bg = player->GetBattleground();
        if (!bg || bg->GetBgTypeID(true) != BATTLEGROUND_AV)
            return;

        AVQuestState& state = avState[bg->GetInstanceID()];

        switch (quest->GetQuestId())
        {
            // ---------------- Summon Elemental Boss ----------------
        case AV_Q_A_BOSS1:
            HandleBossTurnIn(player, state, TEAM_ALLIANCE, 5);
            break;
        case AV_Q_A_BOSS2:
            HandleBossTurnIn(player, state, TEAM_ALLIANCE, 1);
            break;
        case AV_Q_H_BOSS1:
            HandleBossTurnIn(player, state, TEAM_HORDE, 5);
            break;
        case AV_Q_H_BOSS2:
            HandleBossTurnIn(player, state, TEAM_HORDE, 1);
            break;

            // ---------------- Armor Scraps ----------------
        case AV_Q_A_SCRAPS1:
        case AV_Q_A_SCRAPS2:
            HandleScrapsTurnIn(player, state, TEAM_ALLIANCE);
            break;
        case AV_Q_H_SCRAPS1:
        case AV_Q_H_SCRAPS2:
            HandleScrapsTurnIn(player, state, TEAM_HORDE);
            break;

            // ---------------- Air strikes (Call of Air) ----------------
        case AV_Q_A_COMMANDER1:
        case AV_Q_A_COMMANDER2:
        case AV_Q_A_COMMANDER3:
        case AV_Q_H_COMMANDER1:
        case AV_Q_H_COMMANDER2:
        case AV_Q_H_COMMANDER3:
            for (AVAirFleet const& fleet : AV_AIR_FLEETS)
            {
                if (fleet.questId == quest->GetQuestId())
                {
                    HandleAirStrikeTurnIn(player, state, fleet);
                    break;
                }
            }
            break;
        default:
            break;
        }
    }
};

class ip_av_quests_gossip : public AllCreatureScript
{
public:
    ip_av_quests_gossip() : AllCreatureScript("ip_av_quests_gossip") {}

    bool CanCreatureGossipHello(Player* player, Creature* creature) override
    {
        TeamId team;
        AVQuestState* state = GetState(player, creature, team);
        if (!state)
            return false;

        player->PrepareGossipMenu(creature, creature->GetCreatureTemplate()->GossipMenuId, true);
        SendGossipMenuFor(player, SupplyTextId(*state, team), creature);
        return true;
    }

    bool CanCreatureGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action) override
    {
        TeamId team;
        AVQuestState* state = GetState(player, creature, team);
        if (!state)
            return false;

        // The supplies question (the only DB gossip option on these NPCs;
        // DB-driven options arrive with action = OptionType).
        if (action == GOSSIP_OPTION_GOSSIP)
        {
            SendSupplyStatus(player, creature, *state, team);
            return true;
        }

        // The script-added upgrade button.
        if (action == AV_GOSSIP_ACTION_UPGRADE)
        {
            if (UpgradeReady(*state, team))
            {
                ++state->defenderTier[team];
                UpgradeDefenders(player->GetBattleground(), team, state->defenderTier[team]);
                creature->SetNpcFlag(UNIT_NPC_FLAG_QUESTGIVER); // resume turn-ins
            }
            SendSupplyStatus(player, creature, *state, team); // show the new status
            return true;
        }

        return false;
    }

private:
    static AVQuestState* GetState(Player* player, Creature* creature, TeamId& team)
    {
        uint32 entry = creature->GetEntry();
        if (entry != NPC_MURGOT_DEEPFORGE && entry != NPC_SMITH_REGZAR)
            return nullptr;

        Battleground* bg = player->GetBattleground();
        if (!bg || bg->GetBgTypeID(true) != BATTLEGROUND_AV)
            return nullptr;

        team = entry == NPC_MURGOT_DEEPFORGE ? TEAM_ALLIANCE : TEAM_HORDE;
        return &avState[bg->GetInstanceID()];
    }
};

// Clear per-match state when the BG is destroyed so avState can't grow forever.
class ip_av_quests_bg : public AllBattlegroundScript
{
public:
    ip_av_quests_bg() : AllBattlegroundScript("ip_av_quests_bg") {}

    void OnBattlegroundDestroy(Battleground* bg) override
    {
        if (bg)
            avState.erase(bg->GetInstanceID());
    }
};

void AddSC_mod_individual_progression_av_quests()
{
    new ip_av_quests_player();
    new ip_av_quests_gossip();
    new ip_av_quests_bg();
}

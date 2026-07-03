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
                    defender->UpdateEntry(chain.entries[newTier], defender->GetCreatureData(), true);
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

    void HandleScrapsTurnIn(Player* player, Battleground* bg, AVQuestState& state, TeamId team)
    {
        uint32 turnIns = ++state.scrapTurnIns[team];

        uint8 targetTier = state.defenderTier[team];
        while (targetTier < AV_DEFENDER_TIER_CHAMPION && turnIns >= ScrapsThreshold(targetTier + 1))
            ++targetTier;

        if (targetTier < AV_DEFENDER_TIER_CHAMPION)
            ChatHandler(player->GetSession()).PSendSysMessage("Armor Scraps: {}/{}",
                turnIns, ScrapsThreshold(targetTier + 1));

        if (targetTier > state.defenderTier[team])
        {
            state.defenderTier[team] = targetTier;
            UpgradeDefenders(bg, team, targetTier);
        }
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
        if (remaining * 4 <= interval * 2 && remaining * 4 >= interval * 3)     // over halfwy and under three-quarters
            return "I have about half the supplies needed to upgrade our units.";
        return "I almost have enough supplies for the next upgrade!"; // over three-quarters done
    }
}

class ip_av_quests_player : public PlayerScript
{
public:
    ip_av_quests_player() : PlayerScript("ip_av_quests_player") { }

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
                HandleScrapsTurnIn(player, bg, state, TEAM_ALLIANCE);
                break;
            case AV_Q_H_SCRAPS1:
            case AV_Q_H_SCRAPS2:
                HandleScrapsTurnIn(player, bg, state, TEAM_HORDE);
                break;

            // ---------------- Air strikes (Call of Air) ----------------
            case AV_Q_A_COMMANDER1:
            case AV_Q_A_COMMANDER2:
            case AV_Q_A_COMMANDER3:
            case AV_Q_H_COMMANDER1:
            case AV_Q_H_COMMANDER2:
            case AV_Q_H_COMMANDER3:
                // TODO: the retail air-strike bombing spell is not present in
                // core. Pick an approach:
                //   (a) SummonCreature a stealthed "bomber" trigger over the
                //       enemy base and have it cast an AoE spell on a timer, or
                //   (b) cast an existing AoE/visual via player->CastSpell at a
                //       position near the enemy base.
                break;

            default:
                break;
        }
    }
};

class ip_av_quests_gossip : public AllCreatureScript
{
public:
    ip_av_quests_gossip() : AllCreatureScript("ip_av_quests_gossip") { }

    bool CanCreatureGossipSelect(Player* player, Creature* creature, uint32 /*sender*/, uint32 action) override
    {
        uint32 entry = creature->GetEntry();
        if (entry != NPC_MURGOT_DEEPFORGE && entry != NPC_SMITH_REGZAR)
            return false;

        // DB-driven options arrive with action = OptionType; the supplies line is the only GOSSIP-type option either NPC has.
        if (action != GOSSIP_OPTION_GOSSIP)
            return false;

        Battleground* bg = player->GetBattleground();
        if (!bg || bg->GetBgTypeID(true) != BATTLEGROUND_AV)
            return false;

        TeamId team = entry == NPC_MURGOT_DEEPFORGE ? TEAM_ALLIANCE : TEAM_HORDE;
        AVQuestState& state = avState[bg->GetInstanceID()];

        ClearGossipMenuFor(player);
        AddGossipItemFor(player, GOSSIP_ICON_CHAT,
            Acore::StringFormat("Our units are upgraded to {}, but I don\'t have enough supplies to upgrade them.", AV_TIER_NAMES[state.defenderTier[team]]),
            GOSSIP_SENDER_MAIN, 0);
        AddGossipItemFor(player, GOSSIP_ICON_CHAT, ScrapsEstimateLine(state, team), GOSSIP_SENDER_MAIN, 0);

        if (sConfigMgr->GetOption<bool>("IndividualProgression.AV.GossipExactNumbers", false)
            && state.defenderTier[team] < AV_DEFENDER_TIER_CHAMPION)
        {
            AddGossipItemFor(player, GOSSIP_ICON_CHAT,
                Acore::StringFormat("(Turn-ins: {}/{})", state.scrapTurnIns[team],
                    ScrapsThreshold(state.defenderTier[team] + 1)),
                GOSSIP_SENDER_MAIN, 0);
        }

        SendGossipMenuFor(player, entry == NPC_MURGOT_DEEPFORGE ? NPC_TEXT_MURGOT : NPC_TEXT_REGZAR, creature);
        return true;
    }
};

// Clear per-match state when the BG is destroyed so avState can't grow forever.
class ip_av_quests_bg : public AllBattlegroundScript
{
public:
    ip_av_quests_bg() : AllBattlegroundScript("ip_av_quests_bg") { }

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

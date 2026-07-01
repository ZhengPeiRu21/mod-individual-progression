/* 
 * Restores Alterac Valley turn-in quest (elemental summons + air-strike)
 */

#include "IndividualProgression.h"
#include "ScriptMgr.h"
#include "Player.h"
#include "Battleground.h"
#include "SharedDefines.h"   // BATTLEGROUND_AV  (SharedDefines.h:3737)
#include "QuestDef.h"
#include <unordered_map>

enum AVTurnInQuests
{
    // Air strikes (Call of Air) — Stormpike / Alliance
    AV_Q_A_COMMANDER1 = 6942,
    AV_Q_A_COMMANDER2 = 6941,
    AV_Q_A_COMMANDER3 = 6943,
    // Air strikes (Call of Air) — Frostwolf / Horde
    AV_Q_H_COMMANDER1 = 6825,
    AV_Q_H_COMMANDER2 = 6826,
    AV_Q_H_COMMANDER3 = 6827,
    // Elemental summon (boss turn-ins)
    AV_Q_A_BOSS1 = 7386, // 5 crystal — Alliance
    AV_Q_A_BOSS2 = 6881, // 1 crystal - Alliance
    AV_Q_H_BOSS1 = 7385, // 5 blood - Horde
    AV_Q_H_BOSS2 = 6801  // 1 blood - Horde
};

enum AVTurnInNpcs
{
    // because summons can't have waypoints (they don't have a GUID),
    // on spawn, the dummy NPC will make the real bosses appear and start their waypoints
    NPC_DUMMY_IVUS_THE_FOREST_LORD  = 113419, // Alliance elemental
    NPC_DUMMY_LOKHOLAR_THE_ICE_LORD = 113256  // Horde elemental
};

struct SummonPos { float x, y, z, o; };
static SummonPos const IVUS_POS     = { -278.02f, -289.58f, 6.77f, 0.0f };
static SummonPos const LOKHOLAR_POS = { -252.56f, -298.18f, 6.67f, 0.0f };

static constexpr uint32 BOSS_POINTS_REQUIRED = 200;
static constexpr uint32 DUMMY_LIFETIME_MS = 900000; // 900000 = 15 minutes, enough time to start the pathing of the real bosses.

// Per-match accumulation, keyed by Battleground instance id (Battleground.h:333).
struct AVQuestState
{
    uint32 allianceBoss      = 0;
    uint32 hordeBoss         = 0;
    bool   allianceElemental = false; // already summoned this match?
    bool   hordeElemental    = false;
};
static std::unordered_map<uint32, AVQuestState> s_avState;

class ip_av_quests_player : public PlayerScript
{
public:
    ip_av_quests_player() : PlayerScript("ip_av_turnins_player") { }

    void OnPlayerCompleteQuest(Player* player, Quest const* quest) override
    {
        if (!player || !quest)
            return;

        Battleground* bg = player->GetBattleground();
        if (!bg || bg->GetBgTypeID(true) != BATTLEGROUND_AV)
            return;

        AVQuestState& st = s_avState[bg->GetInstanceID()];

        switch (quest->GetQuestId())
        {
            // ---------------- Elemental summon (boss turn-ins) ----------------
            case AV_Q_A_BOSS1:
                st.allianceBoss = st.allianceBoss + 5;

                ChatHandler(player->GetSession()).PSendSysMessage("Ivus the Forest Lord: {}/{}", st.allianceBoss, BOSS_POINTS_REQUIRED);

                if (!st.allianceElemental && st.allianceBoss >= BOSS_POINTS_REQUIRED)
                {
                    player->SummonCreature(NPC_DUMMY_IVUS_THE_FOREST_LORD,
                        IVUS_POS.x, IVUS_POS.y, IVUS_POS.z, IVUS_POS.o,
                        TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, DUMMY_LIFETIME_MS);
                    st.allianceElemental = true;
                }
                break;
            case AV_Q_A_BOSS2:
                st.allianceBoss = st.allianceBoss + 1;

                ChatHandler(player->GetSession()).PSendSysMessage("Ivus the Forest Lord: {}/{}", st.allianceBoss, BOSS_POINTS_REQUIRED);

                if (!st.allianceElemental && st.allianceBoss >= BOSS_POINTS_REQUIRED)
                {
                    player->SummonCreature(NPC_DUMMY_IVUS_THE_FOREST_LORD,
                        IVUS_POS.x, IVUS_POS.y, IVUS_POS.z, IVUS_POS.o,
                        TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, DUMMY_LIFETIME_MS);
                    st.allianceElemental = true;
                }
                break;
            case AV_Q_H_BOSS1:
                st.hordeBoss = st.hordeBoss + 5;

                ChatHandler(player->GetSession()).PSendSysMessage("Lokholar the Ice Lord: {}/{}", st.hordeBoss, BOSS_POINTS_REQUIRED);

                if (!st.hordeElemental && st.hordeBoss >= BOSS_POINTS_REQUIRED)
                {
                    player->SummonCreature(NPC_DUMMY_LOKHOLAR_THE_ICE_LORD,
                        LOKHOLAR_POS.x, LOKHOLAR_POS.y, LOKHOLAR_POS.z, LOKHOLAR_POS.o,
                        TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, DUMMY_LIFETIME_MS);
                    st.hordeElemental = true;
                }
                break;
            case AV_Q_H_BOSS2:
                st.hordeBoss = st.hordeBoss + 1;

                ChatHandler(player->GetSession()).PSendSysMessage("Lokholar the Ice Lord: {}/{}", st.hordeBoss, BOSS_POINTS_REQUIRED);

                if (!st.hordeElemental && st.hordeBoss >= BOSS_POINTS_REQUIRED)
                {
                    player->SummonCreature(NPC_DUMMY_LOKHOLAR_THE_ICE_LORD,
                        LOKHOLAR_POS.x, LOKHOLAR_POS.y, LOKHOLAR_POS.z, LOKHOLAR_POS.o,
                        TEMPSUMMON_TIMED_OR_DEAD_DESPAWN, DUMMY_LIFETIME_MS);
                    st.hordeElemental = true;
                }
                break;

            // ---------------- Air strikes (Call of Air) ----------------------
            case AV_Q_A_COMMANDER1:
            case AV_Q_A_COMMANDER2:
            case AV_Q_A_COMMANDER3:
            case AV_Q_H_COMMANDER1:
            case AV_Q_H_COMMANDER2:
            case AV_Q_H_COMMANDER3:
                // TODO: the retail air-strike bombing spell is NOT present in core
                // (verified: no reference anywhere). Pick an approach:
                //   (a) SummonCreature a stealthed "bomber" trigger over the enemy
                //       and have it cast an AoE damage spell on a short timer, or
                //   (b) cast an existing AoE/visual via player->CastSpell at a
                //       position near the enemy base.
                // Implement once a spell id / bomber entry is chosen.
                break;

            default:
                break;
        }
    }
};

// Clear per-match state when the BG is destroyed so s_avState can't grow forever.
class ip_av_quests_bg : public AllBattlegroundScript
{
public:
    ip_av_quests_bg() : AllBattlegroundScript("ip_av_turnins_bg") { }

    void OnBattlegroundDestroy(Battleground* bg) override
    {
        if (bg)
            s_avState.erase(bg->GetInstanceID());
    }
};

void AddSC_mod_individual_progression_av_quests()
{
    new ip_av_quests_player();
    new ip_av_quests_bg();
}

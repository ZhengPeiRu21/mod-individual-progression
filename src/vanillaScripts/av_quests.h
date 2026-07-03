/*
 * Shared data for the Alterac Valley turn-in quest restoration
 * Holds the quest ids, NPC ids, defender upgrade chains and per-match state used by av_quests.cpp
 */

#ifndef MOD_IP_AV_QUESTS_H
#define MOD_IP_AV_QUESTS_H

#include "SharedDefines.h"
#include <array>

enum AVTurnInQuests : uint32
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
    AV_Q_A_BOSS1 = 7386, // 5 crystals — Alliance
    AV_Q_A_BOSS2 = 6881, // 1 crystal  — Alliance
    AV_Q_H_BOSS1 = 7385, // 5 blood    — Horde
    AV_Q_H_BOSS2 = 6801, // 1 blood    — Horde

    // Armor Scraps (20 scraps per turn-in)
    AV_Q_A_SCRAPS1 = 7223, // Armor Scraps
    AV_Q_A_SCRAPS2 = 6781, // More Armor Scraps
    AV_Q_H_SCRAPS1 = 7224, // Enemy Booty
    AV_Q_H_SCRAPS2 = 6741  // More Booty!
};

enum AVTurnInNpcs : uint32
{
    // Summons can't have waypoints (no DB guid), so a dummy is summoned and the
    // permanently spawned (invisible) real boss starts its waypoint path instead.
    NPC_DUMMY_IVUS_THE_FOREST_LORD = 113419, // Alliance
    NPC_DUMMY_LOKHOLAR_THE_ICE_LORD = 113256, // Horde

    // npc_text shown as the window text when answering the supplies gossip option
    // (the NPCs' own greeting texts, from gossip_menu 5021/5124).
    NPC_MURGOT_DEEPFORGE = 13257,  // Alliance
    NPC_SMITH_REGZAR = 13176   // Horde
};

struct AVSupplyTexts
{
    std::array<uint32, 3> notReady;
    std::array<uint32, 3> ready;
    uint32 maxed;
};

AVSupplyTexts constexpr AV_SUPPLY_TEXTS_ALLIANCE = { { 6073, 6217, 6218 }, { 6219, 6220, 6790 }, 6222 };
AVSupplyTexts constexpr AV_SUPPLY_TEXTS_HORDE = { { 6785, 6786, 6787 }, { 6788, 6789, 6790 }, 6791 };

// action id for the script-added "Upgrade our troops!" gossip button
uint32 constexpr AV_GOSSIP_ACTION_UPGRADE = 90001;

struct AVDefenderChain
{
    std::array<uint32, 4> entries;
    bool upgradeAliveImmediately;
};

uint8 constexpr AV_DEFENDER_TIER_NONE = 0;
uint8 constexpr AV_DEFENDER_TIER_CHAMPION = 3;

// Defender upgrade chains. entries[0] is the base creature the SQL spawns; entries[1..3] are the Seasoned/Veteran/Champion copies.
// The base entry carries the SmartAI that shows/hides the defenders with node ownership — Creature::UpdateEntry() is called with updateAI=false
// true  — living creatures morph the moment the stage is reached
// false — the upgrade is only staged via SetOriginalEntry(); the creature finishes its current life and respawns as the new tier

std::array<AVDefenderChain, 3> constexpr AV_ALLIANCE_DEFENDER_CHAINS = { {
    { { 112050, 113326, 113331, 113422 }, true  }, // graveyard defenders
    { { 0, 0, 0, 0 },                     true  }, // mine defenders  — PLACEHOLDER, fill in when entries exist
    { { 0, 0, 0, 0 },                     false }, // patrols         — PLACEHOLDER, respawn-only per Grim's notes
} };

std::array<AVDefenderChain, 3> constexpr AV_HORDE_DEFENDER_CHAINS = { {
    { { 112053, 113328, 113332, 113421 }, true  }, // graveyard guardians
    { { 0, 0, 0, 0 },                     true  }, // mine defenders  — PLACEHOLDER
    { { 0, 0, 0, 0 },                     false }, // patrols         — PLACEHOLDER, respawn-only
} };

constexpr char const* AV_TIER_NAMES[4] = { "Regular", "Seasoned", "Veteran", "Champion" };

struct AVSummonPos { float x, y, z, o; };
AVSummonPos constexpr AV_IVUS_POS = { -278.02f, -289.58f, 6.77f, 0.0f };
AVSummonPos constexpr AV_LOKHOLAR_POS = { -252.56f, -298.18f, 6.67f, 0.0f };

uint32 constexpr AV_DUMMY_LIFETIME_MS = 900000; // 15 min: enough to start the real boss pathing

// Per-match accumulation, keyed by Battleground instance id (Battleground.h:333).
// All arrays are indexed by TeamId (TEAM_ALLIANCE = 0, TEAM_HORDE = 1).
struct AVQuestState
{
    std::array<uint32, 2> bossPoints = { 0, 0 };
    std::array<bool, 2> elementalSummoned = { false, false };
    std::array<uint32, 2> scrapTurnIns = { 0, 0 };
    std::array<uint8, 2> defenderTier = { AV_DEFENDER_TIER_NONE, AV_DEFENDER_TIER_NONE };
};

#endif // MOD_IP_AV_QUESTS_H

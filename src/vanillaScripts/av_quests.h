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
    // Air strikes - Alliance
    AV_Q_A_COMMANDER1 = 6941, // Call of Air - Vipore's Fleet
    AV_Q_A_COMMANDER2 = 6942, // Call of Air - Slidore's Fleet
    AV_Q_A_COMMANDER3 = 6943, // Call of Air - Ichman's Fleet

    // Air strikes — Horde
    AV_Q_H_COMMANDER1 = 6825, // Call of Air - Guse's Fleet
    AV_Q_H_COMMANDER2 = 6826, // Call of Air - Jeztor's Fleet
    AV_Q_H_COMMANDER3 = 6827, // Call of Air - Mulverick's Fleet

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
    NPC_DUMMY_IVUS_THE_FOREST_LORD  = 113419,  // Alliance
    NPC_DUMMY_LOKHOLAR_THE_ICE_LORD = 113256, // Horde

    NPC_MURGOT_DEEPFORGE    = 13257, // Alliance
    NPC_SMITH_REGZAR        = 13176, // Horde

    NPC_WING_CMDR_GUSE      = 13179, // Horde
    NPC_WING_CMDR_JEZTOR    = 13180,
    NPC_WING_CMDR_MULVERICK = 13181,

    NPC_WING_CMDR_ICHMAN    = 13437, // Alliance
    NPC_WING_CMDR_SLIDORE   = 13438,
    NPC_WING_CMDR_VIPORE    = 13439
};

enum AVBeaconItems : uint32
{
    ITEM_BEACON_MULVERICK = 17323, // snowfall graveyard
    ITEM_BEACON_GUSE      = 17324, // east crater
    ITEM_BEACON_JEZTOR    = 17325, // west crater
    ITEM_BEACON_ICHMAN    = 17505, // snowfall graveyard
    ITEM_BEACON_VIPORE    = 17506, // west crater
    ITEM_BEACON_SLIDORE   = 17507  // east crater
};

// Reputation gates for receiving a beacon (REP_HONORED or better)
uint32 constexpr AV_FACTION_FROSTWOLF_CLAN = 729;
uint32 constexpr AV_FACTION_STORMPIKE_GUARD = 730;
uint32 constexpr AV_FACTION_FRIENDLY = 35;

struct AVAirFleet
{
    uint32 questId;
    TeamId team;
    uint8 index;
    uint32 beaconItem;
    uint32 questGiverEntry;
    char const* commanderName;
};

std::array<AVAirFleet, 6> constexpr AV_AIR_FLEETS =
{ {
    { AV_Q_H_COMMANDER1, TEAM_HORDE,    0, ITEM_BEACON_GUSE,      NPC_WING_CMDR_GUSE,      "Guse"      }, // 6825
    { AV_Q_H_COMMANDER2, TEAM_HORDE,    1, ITEM_BEACON_JEZTOR,    NPC_WING_CMDR_JEZTOR,    "Jeztor"    }, // 6826
    { AV_Q_H_COMMANDER3, TEAM_HORDE,    2, ITEM_BEACON_MULVERICK, NPC_WING_CMDR_MULVERICK, "Mulverick" }, // 6827
    { AV_Q_A_COMMANDER3, TEAM_ALLIANCE, 0, ITEM_BEACON_ICHMAN,    NPC_WING_CMDR_ICHMAN,    "Ichman"    }, // 6943
    { AV_Q_A_COMMANDER1, TEAM_ALLIANCE, 1, ITEM_BEACON_SLIDORE,   NPC_WING_CMDR_SLIDORE,   "Slidore"   }, // 6942
    { AV_Q_A_COMMANDER2, TEAM_ALLIANCE, 2, ITEM_BEACON_VIPORE,    NPC_WING_CMDR_VIPORE,    "Vipore"    }  // 6941
} };

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

std::array<AVDefenderChain, 6> constexpr AV_ALLIANCE_DEFENDER_CHAINS = { {
    { { 112050, 13326, 13331, 13422 }, true  }, // graveyard defenders
    { { 113080, 13552, 13553, 13554 }, true  }, // Irondeep Guard
    { { 113098, 13555, 13556, 13557 }, true  }, // Irondeep Surveyor
    { { 113087, 13549, 13550, 13551 }, true  }, // Coldmine Invader
    { { 113096, 13546, 13547, 13548 }, true  }, // Coldmine Explorer
    { { 0, 0, 0, 0 },                  false }, // patrols/bunkers/towers
} };

std::array<AVDefenderChain, 6> constexpr AV_HORDE_DEFENDER_CHAINS = { {
    { { 112053, 13328, 13332, 13421 }, true  }, // graveyard guardians
    { { 113081, 13543, 13544, 13545 }, true  }, // Irondeep Raider
    { { 113099, 13540, 13541, 13542 }, true  }, // Irondeep Explorer
    { { 113089, 13534, 13535, 13536 }, true  }, // Coldmine Guard
    { { 113097, 13537, 13538, 13539 }, true  }, // Coldmine Surveyor
    { { 0, 0, 0, 0 },                  false }, // patrols/bunkers/towers
} };

constexpr char const* AV_TIER_NAMES[4] = { "Regular", "Seasoned", "Veteran", "Champion" };

struct AVSummonPos { float x, y, z, o; };
AVSummonPos constexpr AV_IVUS_POS = { 729.200f, -78.8120f, 51.6335f, 0.0f };
AVSummonPos constexpr AV_LOKHOLAR_POS = { -1319.56f, -342.675f, 60.3404f, 0.0f };

uint32 constexpr AV_DUMMY_LIFETIME_MS = 10000; // 10 seconds

// Per-match accumulation, keyed by Battleground instance id (Battleground.h:333).
// All arrays are indexed by TeamId (TEAM_ALLIANCE = 0, TEAM_HORDE = 1).
struct AVQuestState
{
    std::array<uint32, 2> bossPoints = { 0, 0 };
    std::array<bool, 2> elementalSummoned = { false, false };
    std::array<uint32, 2> scrapTurnIns = { 0, 0 };
    std::array<uint8, 2> defenderTier = { AV_DEFENDER_TIER_NONE, AV_DEFENDER_TIER_NONE };

    // Call of Air: per-team, per-fleet (indexed by AVAirFleet::index)
    std::array<std::array<uint32, 3>, 2> airTurnIns = { { { 0, 0, 0 }, { 0, 0, 0 } } };
    std::array<std::array<bool, 3>, 2> beaconIssued = { { { false, false, false }, { false, false, false } } };
};

#endif // MOD_IP_AV_QUESTS_H

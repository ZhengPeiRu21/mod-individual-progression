#ifndef AZEROTHCORE_INDIVIDUALPROGRESSION_H
#define AZEROTHCORE_INDIVIDUALPROGRESSION_H

#include "ScriptMgr.h"
#include "Player.h"
#include "Config.h"
#include "Chat.h"
#include "ScriptedCreature.h"
#include "GameObjectAI.h"
#include "MapMgr.h"
#include "ObjectAccessor.h"
#include "ObjectMgr.h"
#include "Group.h"
#include "Pet.h"
#include "DBCEnums.h"
#include "QuestDef.h"
#include "GameObject.h"
#include "AreaDefines.h"
#include "IWorld.h"
#include <regex>

typedef std::unordered_map<uint32, uint32> questXpMapType;

enum ProgressionLevelThreshold
{
    IP_LEVEL_VANILLA = 60,
    IP_LEVEL_TBC     = 70,
    IP_LEVEL_WOTLK   = 80
};

enum ProgressionBossIDs
{
    RAGNAROS             = 11502,
    ONYXIA               = 10184,
    ONYXIA_40            = 301000,
    NEFARIAN             = 11583,
    CTHUN                = 15727,
    KELTHUZAD            = 15990,
    KELTHUZAD_40         = 351019,
    MALCHEZAAR           = 15690,
    KAELTHAS             = 19622,
    ILLIDAN              = 22917,
    ZULJIN               = 23863,
    KILJAEDEN            = 25315,
    YOGGSARON            = 33288,
    ANUBARAK             = 34564,
    LICH_KING            = 36597,
    HALION               = 39863,
    RHAHK_ZOR            = 644,
    SNEED                = 643,
    GILNID               = 1763
};

enum BuffSpells
{
    HP_AURA_SPELL        = 89501,
    ABSORB_SPELL         = 89505,
    RANGED_HASTE_SPELL   = 89507,
    SPELL_RUNE_TAP       = 48982,
    SPELL_LIFE_STEAL     = 20004,
    SPELL_CANNIBALISE    = 20578,
    IPP_PHASE            = 89509,
    IPP_PHASE_II         = 89511,
    IPP_PHASE_III        = 89513
};

enum ProgressionQuestIDs
{
    QUEST_TROLL_NECKLACE      = 2881,
    QUEST_MORROWGRAIN         = 3803,
    QUEST_DEADWOOD            = 6221,
    QUEST_WINTERFALL          = 6241,
    QUEST_THE_ANCIENT_LEAF    = 7632,
    MIGHT_OF_KALIMDOR         = 8742,
    BANG_A_GONG               = 8743,
    INTO_THE_BREACH           = 10259,
    BATTLE_UNDERCITY_HORDE    = 13267,
    BATTLE_UNDERCITY_ALLIANCE = 13377,
    SIMPLY_BANG_A_GONG        = 108743,
    CHAOS_AND_DESTRUCTION     = 108744
};

enum WarEffortQuestIDs
{
    // alliance
    QUEST_COPPER_BARS_A           = 8492,
    QUEST_IRON_BARS               = 8494,
    QUEST_THORIUM_BARS            = 8499,
    QUEST_STRANGLEKELP            = 8503,
    QUEST_PURPLE_LOTUS_A          = 8505,
    QUEST_ARTHAS_TEARS            = 8509,
    QUEST_LIGHT_LEATHER           = 8511,
    QUEST_MEDIUM_LEATHER          = 8513,
    QUEST_THICK_LEATHER_A         = 8515,
    QUEST_LINEN_BANDAGES          = 8517,
    QUEST_SILK_BANDAGES           = 8520,
    QUEST_RUNECLOTH_BANDAGES_A    = 8522,
    QUEST_RAINBOW_FIN             = 8524,
    QUEST_ROAST_RAPTOR            = 8526,
    QUEST_SPOTTED_YELLOWTAIL_A    = 8528,
    // horde
    QUEST_COPPER_BARS_H           = 8532,
    QUEST_TIN_BARS                = 8542,
    QUEST_MITHRIL_BARS            = 8545,
	QUEST_PEACEBLOOM              = 8549,
    QUEST_FIREBLOOM               = 8580,
    QUEST_PURPLE_LOTUS_H          = 8582,
    QUEST_HEAVY_LEATHER           = 8588,
    QUEST_THICK_LEATHER_H         = 8590,
    QUEST_RUGGED_LEATHER          = 8600,
    QUEST_WOOL_BANDAGES           = 8604,
    QUEST_MAGEWEAVE_BANDAGES      = 8607,
    QUEST_RUNECLOTH_BANDAGES_H    = 8609,
    QUEST_LEAN_WOLF_STEAK         = 8611,
    QUEST_SPOTTED_YELLOWTAIL_H    = 8613,
    QUEST_BAKED_SALMON            = 8615
};

enum ProgressionAchievements
{
    KEL_THUZAD_40_KILL   = 533,
    KEL_THUZAD_KILL      = 575, // WotLK
    ONYXIAS_KILL         = 684,
    NEFARIAN_KILL        = 685,
    RAGNAROS_KILL        = 686,
    C_THUN_KILL          = 687,
    MALCHEZAAR_KILL      = 690,
    ZUL_JIN_KILL         = 691,
    KAEL_THAS_KILL       = 696,
    ILLIDAN_KILL         = 697,
    KIL_JAEDEN_KILL      = 698,
    ANUB_ARAK_KILL       = 3916,
    LICH_KING_KILL       = 4597,
    HALION_KILL          = 4815
};

enum ProgressionZones
{
    ZONE_AZUREMYST       = 3524,
    ZONE_BLOODMYST       = 3525,
    ZONE_GHOSTLANDS      = 3433,
    ZONE_EVERSONG        = 3430,
    ZONE_EXODAR          = 3557,
    ZONE_SILVERMOON      = 3487,
    ZONE_QUELDANAS       = 4080,
    ZONE_VEILED_SEA      = 3479
};

enum ProgressionAreas
{
    AREA_THE_DARK_PORTAL                 = 72,
    AREA_DREADMAUL_ROCK                  = 249,
    AREA_RUINS_OF_THAURISSAN             = 250,
    AREA_BLACKROCK_MOUNTAIN              = 254,
    AREA_SERADANE                        = 356,
    AREA_BOUGH_SHADOW                    = 438,
    AREA_GROVE_OF_THE_ANCIENTS           = 448,
    AREA_WILDBEND_RIVER                  = 454,
    AREA_TWILIGHT_GROVE                  = 856,
    AREA_PURGATION_ISLE                  = 896,
    AREA_GADGETZAN                       = 976,
    AREA_DREAM_BOUGH                     = 1111,
    AREA_JADEMIR_LAKE                    = 1112,
    AREA_THE_SHATTERED_STRAND            = 1228,
    AREA_SOUTHRIDGE_BEACH                = 1231,
    AREA_HALDARR_ENCAMPMENT              = 1236,
    AREA_DREADMAUL_HOLD                  = 1437,
    AREA_DREADMAUL_POST                  = 1439,
    AREA_SERPENTS_COIL                   = 1440,
    AREA_VALLEY_OF_HEROES                = 1611,
    AREA_IRONTREE_WOOD                   = 1767,
    AREA_BROKEN_PILLAR                   = 1938,
    AREA_ABYSSAL_SANDS                   = 1939,
    AREA_TWILIGHT_VALE                   = 2077,
    AREA_FROSTSABER_ROCK                 = 2241,
    AREA_TIMBERMAW_POST                  = 2243,
    AREA_MAZTHORIL                       = 2245,
    AREA_ICE_THISTLE_HILLS               = 2247,
    AREA_THE_MARRIS_STEAD                = 2260,
    AREA_LIGHTS_HOPE                     = 2268,
    AREA_FOREST_SONG                     = 2358,
    AREA_DRACO_DAR                       = 2421,
    AREA_RISE_OF_THE_DEFILER             = 2517,
    AREA_PESTILENT_SCAR                  = 2622,
    AREA_SCARAB_WALL                     = 2737,
    AREA_SCARAB_DAIS                     = 2741,
    AREA_HIVE_ASHI                       = 2742,
    AREA_HIVE_ZORA                       = 2743,
    AREA_HIVE_REGAL                      = 2744,
    AREA_TERRACE_OF_LIGHT                = 3897,
    AREA_ARGENT_SUNREAVER_PAVILION       = 4666,
    AREA_ARGENT_SILVER_COVENANT_PAVILION = 4667,
    AREA_ARGENT_PAVILION                 = 4674
};

enum ProgressionSettings
{
    SETTING_PROGRESSION_STATE   = 0
};

enum DungeonKeys
{
    ITEM_DRAKEFIRE_AMULET       = 16309
};

enum ProgressionState : uint8         // Progression stands for what has been completed
{
    PROGRESSION_START           = 0,
    PROGRESSION_MOLTEN_CORE     = 1,  // BWL available
    PROGRESSION_ONYXIA          = 2,
    PROGRESSION_BLACKWING_LAIR  = 3,  // ZG, AQ War effort, AQ quest line
    PROGRESSION_PRE_AQ          = 4,  // AQ gates open, raids available, AQ outdoors war 
    PROGRESSION_AQ_WAR          = 5,  // AQ gates open, raids, Field Duty quests and all Cenarion Hold npcs available
    PROGRESSION_AQ              = 6,  // Naxx40 and Scourge Invasion
    PROGRESSION_NAXX40          = 7,  // Into the Breach
    PROGRESSION_PRE_TBC         = 8,  // Karazhan, Gruul's Lair, Magtheridon's Lair
    PROGRESSION_TBC_TIER_1      = 9,  // Serpentshrine Cavern, Tempest Keep
    PROGRESSION_TBC_TIER_2      = 10, // Hyjal Summit and Black Temple
    PROGRESSION_TBC_TIER_3      = 11, // Zul'Aman
    PROGRESSION_TBC_TIER_4      = 12, // Sunwell Plateau
    PROGRESSION_TBC_TIER_5      = 13, // WotLK Naxx, EoE, OS
    PROGRESSION_WOTLK_TIER_1    = 14, // Ulduar
    PROGRESSION_WOTLK_TIER_2    = 15, // TotC
    PROGRESSION_WOTLK_TIER_3    = 16, // ICC
    PROGRESSION_WOTLK_TIER_4    = 17, // Ruby Sanctum
    PROGRESSION_WOTLK_TIER_5    = 18
};

enum RandomDungeonIds : uint16
{
    // Values from LFGDungeons.dbc
    RDF_CLASSIC                       = 258,
    RDF_THE_BURNING_CRUSADE           = 259,
    RDF_THE_BURNING_CRUSADE_HEROIC    = 260,
    RDF_WRATH_OF_THE_LICH_KING        = 261,
    RDF_WRATH_OF_THE_LICH_KING_HEROIC = 262
};

struct IppPvPTitles
{
    uint32 RequiredKills;
    uint32 TitleId;
};

struct IppPvPTitleData
{
    uint32 TitleId[2];
};

struct PvPTitleData
{
    uint32 TitleId[2];
};

enum IppRanks
{                             //    A                           H
    RANK_ONE            = 0,  // Private                 &    Scout
    RANK_TWO            = 1,  // Corporal                &    Grunt
    RANK_THREE          = 2,  // Sergeant                &    Sergeant
    RANK_FOUR           = 3,  // Master Sergeant         &    Senior Sergeant
    RANK_FIVE           = 4,  // Sergeant Major          &    First Sergeant
    RANK_SIX            = 5,  // Knight                  &    Stone Guard
    RANK_SEVEN          = 6,  // Knight Lieutenant       &    Blood Guard
    RANK_EIGHT          = 7,  // Knight Captain          &    Legionnaire
    RANK_NINE           = 8,  // Knight Champion         &    Centurion
    RANK_TEN            = 9,  // Lieutenant Commander    &    Champion
    RANK_ELEVEN         = 10, // Commander               &    Lieutenant General
    RANK_TWELVE         = 11, // Marshal                 &    General
    RANK_THIRTEEN       = 12, // Field Marshal           &    Warlord
    RANK_FOURTEEN       = 13  // Grand Marshal           &    High Warlord
};

enum PvPAchievements
{
    // Alliance
    ACHIEVEMENT_PRIVATE                  = 442,
    ACHIEVEMENT_CORPORAL                 = 470,
    ACHIEVEMENT_SERGEANT                 = 471,
    ACHIEVEMENT_MASTER_SERGEANT          = 441,
    ACHIEVEMENT_SERGEANT_MAJOR           = 440,
    ACHIEVEMENT_KNIGHT                   = 439,
    ACHIEVEMENT_KNIGHT_LIEUTENANT        = 472,
    ACHIEVEMENT_KNIGHT_CAPTAIN           = 438,
    ACHIEVEMENT_KNIGHT_CHAMPION          = 437,
    ACHIEVEMENT_LIEUTENANT_COMMANDER     = 436,
    ACHIEVEMENT_COMMANDER                = 435,
    ACHIEVEMENT_MARSHAL                  = 473,
    ACHIEVEMENT_FIELD_MARSHAL            = 434,
    ACHIEVEMENT_GRAND_MARSHAL            = 433,

    // Horde
    ACHIEVEMENT_SCOUT                    = 454,
    ACHIEVEMENT_GRUNT                    = 468,
    ACHIEVEMENT_SERGEANT_H               = 453,
    ACHIEVEMENT_SENIOR_SERGEANT          = 450,
    ACHIEVEMENT_FIRST_SERGEANT           = 452,
    ACHIEVEMENT_STONE_GUARD              = 451,
    ACHIEVEMENT_BLOOD_GUARD              = 449,
    ACHIEVEMENT_LEGIONNAIRE              = 469,
    ACHIEVEMENT_CENTURION                = 448,
    ACHIEVEMENT_CHAMPION                 = 447,
    ACHIEVEMENT_LIEUTENANT_GENERAL       = 444,
    ACHIEVEMENT_GENERAL                  = 446,
    ACHIEVEMENT_WARLORD                  = 445,
    ACHIEVEMENT_HIGH_WARLORD             = 443
};

enum IppTitles
{
    // Alliance
    PRIVATE                  = 1,
    CORPORAL                 = 2,
    SERGEANT                 = 3,
    MASTER_SERGEANT          = 4,
    SERGEANT_MAJOR           = 5,
    KNIGHT                   = 6,
    KNIGHT_LIEUTENANT        = 7,
    KNIGHT_CAPTAIN           = 8,
    KNIGHT_CHAMPION          = 9,
    LIEUTENANT_COMMANDER     = 10,
    COMMANDER                = 11,
    MARSHAL                  = 12,
    FIELD_MARSHAL            = 13,
    GRAND_MARSHAL            = 14,

    // Horde
    SCOUT                    = 15,
    GRUNT                    = 16,
    SERGEANT_H               = 17,
    SENIOR_SERGEANT          = 18,
    FIRST_SERGEANT           = 19,
    STONE_GUARD              = 20,
    BLOOD_GUARD              = 21,
    LEGIONNAIRE              = 22,
    CENTURION                = 23,
    CHAMPION                 = 24,
    LIEUTENANT_GENERAL       = 25,
    GENERAL                  = 26,
    WARLORD                  = 27,
    HIGH_WARLORD             = 28
};

IppPvPTitleData const TitleData[14] =
{
    { PRIVATE,              SCOUT              },
    { CORPORAL,             GRUNT              },
    { SERGEANT,             SERGEANT_H         },
    { MASTER_SERGEANT,      SENIOR_SERGEANT    },
    { SERGEANT_MAJOR,       FIRST_SERGEANT     },
    { KNIGHT,               STONE_GUARD        },
    { KNIGHT_LIEUTENANT,    BLOOD_GUARD        },
    { KNIGHT_CAPTAIN,       LEGIONNAIRE        },
    { KNIGHT_CHAMPION,      CENTURION          },
    { LIEUTENANT_COMMANDER, CHAMPION           },
    { COMMANDER,            LIEUTENANT_GENERAL },
    { MARSHAL,              GENERAL            },
    { FIELD_MARSHAL,        WARLORD            },
    { GRAND_MARSHAL,        HIGH_WARLORD       }
};

PvPTitleData const AchievementData[14] =
{
    { ACHIEVEMENT_PRIVATE,              ACHIEVEMENT_SCOUT              },
    { ACHIEVEMENT_CORPORAL,             ACHIEVEMENT_GRUNT              },
    { ACHIEVEMENT_SERGEANT,             ACHIEVEMENT_SERGEANT_H         },
    { ACHIEVEMENT_MASTER_SERGEANT,      ACHIEVEMENT_SENIOR_SERGEANT    },
    { ACHIEVEMENT_SERGEANT_MAJOR,       ACHIEVEMENT_FIRST_SERGEANT     },
    { ACHIEVEMENT_KNIGHT,               ACHIEVEMENT_STONE_GUARD        },
    { ACHIEVEMENT_KNIGHT_LIEUTENANT,    ACHIEVEMENT_BLOOD_GUARD        },
    { ACHIEVEMENT_KNIGHT_CAPTAIN,       ACHIEVEMENT_LEGIONNAIRE        },
    { ACHIEVEMENT_KNIGHT_CHAMPION,      ACHIEVEMENT_CENTURION          },
    { ACHIEVEMENT_LIEUTENANT_COMMANDER, ACHIEVEMENT_CHAMPION           },
    { ACHIEVEMENT_COMMANDER,            ACHIEVEMENT_LIEUTENANT_GENERAL },
    { ACHIEVEMENT_MARSHAL,              ACHIEVEMENT_GENERAL            },
    { ACHIEVEMENT_FIELD_MARSHAL,        ACHIEVEMENT_WARLORD            },
    { ACHIEVEMENT_GRAND_MARSHAL,        ACHIEVEMENT_HIGH_WARLORD       }
};

class IndividualProgression
{
public:
    static IndividualProgression* instance();

    std::map<uint32, uint8> customProgressionMap;
    questXpMapType questXpMap;
    float vanillaPowerAdjustment, vanillaHealthAdjustment, tbcPowerAdjustment, tbcHealthAdjustment, vanillaHealingAdjustment, tbcHealingAdjustment;
    bool enabled, questXpFix, enforceGroupRules, fishingFix, simpleConfigOverride, questMoneyAtLevelCap, repeatableVanillaQuestsXp, disableDefaultProgression, earlyDungeonSet2, requireNaxxStrath, doableNaxx40Bosses, DisableRDF, excludeAccounts, VanillaPvpTitlesKeepPostVanilla, VanillaPvpTitlesEarnPostVanilla, ExcludedAccountsEarnPvPTitles;
    int progressionLimit, startingProgression, tbcRacesProgressionLevel, deathKnightProgressionLevel, deathKnightStartingProgression, RequiredZulGurubProgression, tbcArenaSeason, wotlkArenaSeason;
    uint32 VanillaPvpKillRank1, VanillaPvpKillRank2, VanillaPvpKillRank3, VanillaPvpKillRank4, VanillaPvpKillRank5, VanillaPvpKillRank6, VanillaPvpKillRank7, VanillaPvpKillRank8, VanillaPvpKillRank9, VanillaPvpKillRank10, VanillaPvpKillRank11, VanillaPvpKillRank12, VanillaPvpKillRank13, VanillaPvpKillRank14;
    std::string excludedAccountsRegex;

    bool hasPassedProgression(Player* player, ProgressionState state) const;
    static bool isBeforeProgression(Player* player, ProgressionState state) ;
    void UpdateProgressionState(Player* player, ProgressionState newState) const;
    static void ForceUpdateProgressionState(Player* player, ProgressionState newState);
    void CheckAdjustments(Player* player) const;
    void AdjustVanillaStats(Player* player) const;
    void AdjustTBCStats(Player* player) const;
    void AdjustWotLKStats(Player* player) const;
    bool hasCustomProgressionValue(uint32 creatureEntry);
    bool isExcludedFromProgression(Player* player);
    void SyncBotsProgressionToLeader(Group* group);
    bool isAttuned(Player* player);
    void checkIPPhasing(Player* player, uint32 newArea);
    void checkIPProgression(Player* player);	
    void UpdateProgressionQuests(Player* player);
    void UpdateProgressionAchievements(Player* player, uint16 achievementID);
    void checkKillProgression(Player* player, Creature* killed);
    void CleanUpVanillaPvpTitles(Player* player);
    void AwardEarnedVanillaPvpTitles(Player* player);
    static void LoadCustomProgressionEntries(const std::string& customProgressionString);
    static void RemovePlayerAchievement(uint16 playerGUID, uint16 achievementId);
    static void AdjustStats(Player* player, float computedPowerAdjustment, float computedHealthAdjustment);
    static float ComputeVanillaAdjustment(uint8 playerLevel, float configAdjustmentValue);
    static uint8 GetAccountProgression(uint32 accountId);
};

#define sIndividualProgression IndividualProgression::instance()

#endif //AZEROTHCORE_INDIVIDUALPROGRESSION_H

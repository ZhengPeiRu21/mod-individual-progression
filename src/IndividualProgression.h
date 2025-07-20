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
    HALION               = 39863
};

enum BuffSpells
{
    HP_AURA_SPELL        = 89501,
    ABSORB_SPELL         = 89505,
    RANGED_HASTE_SPELL   = 89507,
    SPELL_RUNE_TAP       = 48982,
    SPELL_LIFE_STEAL     = 20004,
    IPP_PHASE            = 89509,
    IPP_PHASE_II         = 89511
};

enum ProgressionQuestIDs
{
    QUEST_TROLL_NECKLACE  = 2881,
    QUEST_MORROWGRAIN     = 3803,
    QUEST_DEADWOOD        = 6221,
    QUEST_WINTERFALL      = 6241,
    MIGHT_OF_KALIMDOR     = 8742,
    INTO_THE_BREACH       = 10259,
    BANG_A_GONG           = 108743,
    CHAOS_AND_DESTRUCTION = 108744
};

enum ProgressionQuests
{
    PROGRESSION_FLAG_MC       = 66001,
    PROGRESSION_FLAG_ONYXIA   = 66002,
    PROGRESSION_FLAG_BWL      = 66003,
    PROGRESSION_FLAG_PRE_AQ   = 66004,
    PROGRESSION_FLAG_AQ_WAR   = 66005,
    PROGRESSION_FLAG_AQ       = 66006,
    PROGRESSION_FLAG_NAXX40   = 66007,
    PROGRESSION_FLAG_PRE_TBC  = 66008,
	PROGRESSION_FLAG_TBC_T1   = 66009,
	PROGRESSION_FLAG_TBC_T2   = 66010,
	PROGRESSION_FLAG_TBC_T3   = 66011,
	PROGRESSION_FLAG_TBC_T4   = 66012,
	PROGRESSION_FLAG_TBC_T5   = 66013,
	PROGRESSION_FLAG_WOTLK_T1 = 66014,
	PROGRESSION_FLAG_WOTLK_T2 = 66015,
	PROGRESSION_FLAG_WOTLK_T3 = 66016,
	PROGRESSION_FLAG_WOTLK_T4 = 66017,
	PROGRESSION_FLAG_WOTLK_T5 = 66018
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
    AREA_BROKEN_PILLAR                   = 1938,
    AREA_ABYSSAL_SANDS                   = 1939,
    AREA_TWILIGHT_VALE                   = 2077,
    AREA_FROSTSABER_ROCK                 = 2241,
    AREA_TIMBERMAW_POST                  = 2243,
    AREA_MAZTHORIL                       = 2245,
    AREA_ICE_THISTLE_HILLS               = 2247,
    AREA_THE_MARRIS_STEAD                = 2260,
    AREA_LIGHTS_HOPE                     = 2268,
    AREA_DRACO_DAR                       = 2421,
    AREA_RISE_OF_THE_DEFILER             = 2517,
    AREA_PESTILENT_SCAR                  = 2622,
    AREA_HIVE_ASHI                       = 2742,
    AREA_HIVE_ZORA                       = 2743,
    AREA_HIVE_REGAL                      = 2744,
    AREA_ARGENT_SUNREAVER_PAVILION       = 4666,
    AREA_ARGENT_SILVER_COVENANT_PAVILION = 4667,
    AREA_ARGENT_PAVILION                 = 4674
};

enum ProgressionSettings
{
    SETTING_PROGRESSION_STATE = 0
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

enum PvPTitles : uint32
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

class IndividualProgression
{
public:
    static IndividualProgression* instance();

    std::map<uint32, uint8> customProgressionMap;
    questXpMapType questXpMap;
    float vanillaPowerAdjustment, vanillaHealthAdjustment, tbcPowerAdjustment, tbcHealthAdjustment, vanillaHealingAdjustment, tbcHealingAdjustment, previousGearTuning;
    bool enabled, questXpFix, hunterPetLevelFix, enforceGroupRules, fishingFix, simpleConfigOverride, questMoneyAtLevelCap, repeatableVanillaQuestsXp, disableDefaultProgression, earlyDungeonSet2, requireNaxxStrath, pvpGearRequirements, DisableRDF, excludeAccounts;
    int progressionLimit, startingProgression, tbcRacesProgressionLevel, deathKnightProgressionLevel, deathKnightStartingProgression;
    std::string excludedAccountsRegex;

    bool hasPassedProgression(Player* player, ProgressionState state) const;
    static bool isBeforeProgression(Player* player, ProgressionState state) ;
    void UpdateProgressionState(Player* player, ProgressionState newState) const;
    static void ForceUpdateProgressionState(Player* player, ProgressionState newState);
    void CheckAdjustments(Player* player) const;
    void ApplyGearStatsTuning(Player* player, float& computedAdjustment, ItemTemplate const* item) const;
    void ComputeGearTuning(Player* player, float& computedAdjustment, ItemTemplate const* item) const;
    void AdjustVanillaStats(Player* player) const;
    void AdjustTBCStats(Player* player) const;
    void AdjustWotLKStats(Player* player) const;
    bool hasCustomProgressionValue(uint32 creatureEntry);
    void checkKillProgression(Player* player, Creature* killed);
    static void LoadCustomProgressionEntries(const std::string& customProgressionString);
    static void AdjustStats(Player* player, float computedAdjustment, float computedHealingAdjustment);
    static float ComputeVanillaAdjustment(uint8 playerLevel, float configAdjustmentValue);
    static uint8 GetAccountProgression(uint32 accountId);
};

#define sIndividualProgression IndividualProgression::instance()

#endif //AZEROTHCORE_INDIVIDUALPROGRESSION_H

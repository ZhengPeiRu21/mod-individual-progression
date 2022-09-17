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
#include "Group.h"
#include "Pet.h"
#include "DBCEnums.h"
#include "QuestDef.h"
#include "GameObject.h"
#include "IWorld.h"

typedef std::unordered_map<uint32, uint32> questXpMapType;

enum ProgressionBossIDs
{
    RAGNAROS = 11502,
    ONYXIA = 10184,
    NEFARIAN = 11583,
    CTHUN = 15727,
    KELTHUZAD = 15990,
    KELTHUZAD_40 = 351019,
    MALCHEZAAR = 15690,
    KAELTHAS = 19622,
    ILLIDAN = 22917,
    ZULJIN = 23863,
    KILJAEDEN = 25315,
    YOGGSARON = 33288,
    ANUBARAK = 34564,
    LICH_KING = 36597,
    HALION = 39863
};

enum BuffSpells
{
    HP_AURA_SPELL = 89501,
    DAMAGE_DONE_TAKEN_SPELL = 89502,
    BASE_STAT_AP_SPELL = 89503,
    RAGE_FROM_DAMAGE_SPELL = 89504,
    ABSORB_SPELL = 89505,
    HEALING_DONE_SPELL = 89506,
    RANGED_HASTE_SPELL = 89507,
    RUNE_TAP_FIX_SPELL = 89508
};

enum ProgressionQuestIDs
{
    MIGHT_OF_KALIMDOR    = 8742,
    QUEST_MORROWGRAIN    = 3803,
    QUEST_TROLL_NECKLACE = 2881
};

enum ProgressionMaps
{
    MAP_BLACKWING_LAIR = 469,
    MAP_ZUL_GURUB = 309,
    MAP_AQ_20 = 509,
    MAP_AQ_40 = 531,
    MAP_OUTLANDS = 530,
    MAP_ZUL_AMAN = 568,
    MAP_NORTHREND = 571,
    MAP_ULDUAR = 603,
    MAP_TRIAL_OF_THE_CRUSADER = 649,
    MAP_TRIAL_OF_THE_CHAMPION = 650,
    MAP_ICC = 631,
    MAP_FORGE_OF_SOULS = 632,
    MAP_RUBY_SANTCUM = 724
};

enum ProgressionZones
{
    ZONE_AZUREMYST = 3524,
    ZONE_BLOODMYST = 3525,
    ZONE_GHOSTLANDS = 3433,
    ZONE_EVERSONG = 3430,
    ZONE_EXODAR = 3557,
    ZONE_SILVERMOON = 3487,
    ZONE_QUELDANAS = 4080
};

enum ProgressionSettings
{
    SETTING_PROGRESSION_STATE = 0
};

enum ProgressionState : uint8
{
    PROGRESSION_START           = 0,
    PROGRESSION_MOLTEN_CORE     = 1,
    PROGRESSION_ONYXIA          = 2,
    PROGRESSION_BLACKWING_LAIR  = 3,
    PROGRESSION_PRE_AQ          = 4,
    PROGRESSION_AQ              = 5,
    PROGRESSION_NAXX40          = 6,
    PROGRESSION_TBC_TIER_1      = 7,  // Karazhan, Gruul's Lair, Magtheridon's Lair
    PROGRESSION_TBC_TIER_2      = 8,  // Serpentshrine Cavern, Tempest Keep
    PROGRESSION_TBC_TIER_3      = 9,  // Hyjal Summit and Black Temple
    PROGRESSION_TBC_TIER_4      = 10, // Zul'Aman
    PROGRESSION_TBC_TIER_5      = 11, // Sunwell Plateau
    PROGRESSION_WOTLK_TIER_1    = 12, // WotLK Naxx, EoE, OS
    PROGRESSION_WOTLK_TIER_2    = 13, // Ulduar
    PROGRESSION_WOTLK_TIER_3    = 14, // TotC
    PROGRESSION_WOTLK_TIER_4    = 15, // ICC
    PROGRESSION_WOTLK_TIER_5    = 16  // Ruby Sanctum
};

class IndividualProgression
{
public:
    static IndividualProgression* instance();

    questXpMapType questXpMap;
    float vanillaPowerAdjustment, vanillaHealthAdjustment, tbcPowerAdjustment, tbcHealthAdjustment, vanillaHealingAdjustment, tbcHealingAdjustment, previousGearTuning;
    bool enabled, questXpFix, hunterPetLevelFix, requirePreAQQuests, enforceGroupRules, fishingFix, simpleConfigOverride, questMoneyAtLevelCap, repeatableVanillaQuestsXp;
    int progressionLimit, startingProgression;

    bool hasPassedProgression(Player* player, ProgressionState state) const;
    static bool isBeforeProgression(Player* player, ProgressionState state) ;
    void UpdateProgressionState(Player* player, ProgressionState newState) const;
    static void ForceUpdateProgressionState(Player* player, ProgressionState newState) ;
    void CheckAdjustments(Player* player) const;
    void ApplyGearStatsTuning(Player* player, float& computedAdjustment, ItemTemplate const* item) const;
    void ApplyGearHealthTuning(Player* player, float& computedAdjustment, ItemTemplate const* item) const;
    void AdjustVanillaStats(Player* player) const;
    void AdjustTBCStats(Player* player) const;
    void AdjustWotLKStats(Player* player) const;
    static void AdjustStats(Player* player, float computedAdjustment, float computedHealingAdjustment);
};

#define sIndividualProgression IndividualProgression::instance()

#endif //AZEROTHCORE_INDIVIDUALPROGRESSION_H

#ifndef AZEROTHCORE_INDIVIDUALPROGRESSION_H
#define AZEROTHCORE_INDIVIDUALPROGRESSION_H

#include "ScriptMgr.h"
#include "Player.h"
#include "Config.h"
#include "Chat.h"

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

#endif //AZEROTHCORE_INDIVIDUALPROGRESSION_H

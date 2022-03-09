/*
 * Copyright (C) 2016+ AzerothCore <www.azerothcore.org>, released under GNU AGPL v3 license: https://github.com/azerothcore/azerothcore-wotlk/blob/master/LICENSE-AGPL3
 */

#ifndef _PROGRESSION_SYSTEM_H_
#define _PROGRESSION_SYSTEM_H_

#include "Config.h"
#include "ScriptMgr.h"

enum ProgressionBrackets
{
    PROGRESSION_BRACKET_DEFAULT                 = 0x00000001,
    PROGRESSION_BRACKET_1_19                    = 0x00000002,
    PROGRESSION_BRACKET_20_29                   = 0x00000004,
    PROGRESSION_BRACKET_30_39                   = 0x00000008,
    PROGRESSION_BRACKET_40_49                   = 0x00000010,
    PROGRESSION_BRACKET_50_59_TIER_A            = 0x00000020,
    PROGRESSION_BRACKET_50_59_TIER_B            = 0x00000040,
    PROGRESSION_BRACKET_60_TIER_1               = 0x00000080,
    PROGRESSION_BRACKET_60_TIER_1_A             = 0x00000100,
    PROGRESSION_BRACKET_60_TIER_2               = 0x00000200,
    PROGRESSION_BRACKET_60_TIER_3_A_ZUL_GURUB   = 0x00000400,
    PROGRESSION_BRACKET_60_TIER_3_B_AHN_QIRAJ   = 0x00000800,
    PROGRESSION_BRACKET_61_64                   = 0x00001000,
    PROGRESSION_BRACKET_65_69                   = 0x00002000,
    PROGRESSION_BRACKET_70_TIER_4               = 0x00004000,
    PROGRESSION_BRACKET_70_TIER_5               = 0x00008000,
    PROGRESSION_BRACKET_70_TIER_6_A             = 0x00010000,
    PROGRESSION_BRACKET_70_TIER_6_B             = 0x00020000,
    PROGRESSION_BRACKET_70_TIER_6_C             = 0x00040000,
    PROGRESSION_BRACKET_71_74                   = 0x00080000,
    PROGRESSION_BRACKET_75_79                   = 0x00100000,
    PROGRESSION_BRACKET_80_TIER_7               = 0x00200000,
    PROGRESSION_BRACKET_80_TIER_8               = 0x00400000,
    PROGRESSION_BRACKET_80_TIER_9               = 0x00800000,
    PROGRESSION_BRACKET_80_TIER_10_A            = 0x01000000,
    PROGRESSION_BRACKET_80_TIER_10_B            = 0x02000000
};

#define PROGRESSION_BRACKET_MAX 26
char const* const ProgressionBracketsNames[PROGRESSION_BRACKET_MAX] =
        {
                "0",
                "1_19",
                "20_29",
                "30_39",
                "40_49",
                "50_59_A",
                "50_59_B",
                "60_1",
                "60_1_A",
                "60_2",
                "60_3_A",
                "60_3_B",
                "61_64",
                "65_69",
                "70_4",
                "70_5",
                "70_6_A",
                "70_6_B",
                "70_6_C",
                "71_74",
                "75_79",
                "80_7",
                "80_8",
                "80_9",
                "80_10_A",
                "80_10_B"
        };

#endif // _PROGRESSION_SYSTEM_H_

#include "IndividualProgression.h"
#include "naxxramas_40.h"
#include "Spell.h"

class IndividualPlayerProgression : public PlayerScript
{

private:
    static bool IsTBCRaceStartingZone(uint32 mapid, float x, float y, float z)
    {
        Map const *map = sMapMgr->FindMap(mapid, 0);
        uint32 zoneId = map->GetZoneId(0, x, y, z);
        return (zoneId == AREA_AZUREMYST_ISLE || zoneId == AREA_BLOODMYST_ISLE || zoneId == AREA_GHOSTLANDS || zoneId == AREA_EVERSONG_WOODS ||
                zoneId == AREA_THE_EXODAR || zoneId == AREA_SILVERMOON_CITY || zoneId == AREA_AMMEN_VALE || zoneId == AREA_VEILED_SEA);
    }

public:
    IndividualPlayerProgression() : PlayerScript("IndividualProgression") { }

    void OnPlayerLogin(Player* player) override
    {
        if (!sIndividualProgression->enabled)
            return;

        if (!player || !player->IsInWorld())
            return;

        if (!sIndividualProgression->isExcludedFromProgression(player))
            sIndividualProgression->checkIPProgression(player);

        if (sIndividualProgression->ExcludedAccountsEarnPvPTitles || !sIndividualProgression->isExcludedFromProgression(player))
        {
            sIndividualProgression->AwardEarnedVanillaPvpTitles(player);
            sIndividualProgression->CleanUpVanillaPvpTitles(player);
        }

		if (sIndividualProgression->isExcludedFromProgression(player) && sIndividualProgression->excludeAccounts)
        {
            if (player->GetLevel() <= IP_LEVEL_VANILLA)
                sIndividualProgression->ForceUpdateProgressionState(player, static_cast<ProgressionState>(0));
            else if ((player->GetLevel() > IP_LEVEL_VANILLA) && (player->GetLevel() <= IP_LEVEL_TBC))
                sIndividualProgression->ForceUpdateProgressionState(player, static_cast<ProgressionState>(8));
            else
                sIndividualProgression->ForceUpdateProgressionState(player, static_cast<ProgressionState>(13));
        }

        if (!sIndividualProgression->isExcludedFromProgression(player) || !sIndividualProgression->excludeAccounts)
        {
            if ((player->getRace() == RACE_DRAENEI || player->getRace() == RACE_BLOODELF) && sIndividualProgression->tbcRacesStartingProgression && !sIndividualProgression->hasPassedProgression(player, static_cast<ProgressionState>(sIndividualProgression->tbcRacesStartingProgression)))
            {
                sIndividualProgression->UpdateProgressionState(player, static_cast<ProgressionState>(sIndividualProgression->tbcRacesStartingProgression));
            }

            if (player->getClass() == CLASS_DEATH_KNIGHT && sIndividualProgression->deathKnightStartingProgression && !sIndividualProgression->hasPassedProgression(player, static_cast<ProgressionState>(sIndividualProgression->deathKnightStartingProgression)))
            {
                sIndividualProgression->UpdateProgressionState(player, static_cast<ProgressionState>(sIndividualProgression->deathKnightStartingProgression));
            }

            if (sIndividualProgression->startingProgression && !sIndividualProgression->hasPassedProgression(player, static_cast<ProgressionState>(sIndividualProgression->startingProgression)))
            {
                sIndividualProgression->UpdateProgressionState(player, static_cast<ProgressionState>(sIndividualProgression->startingProgression));
            }
        }

        sIndividualProgression->CheckAdjustments(player);

        if (sIndividualProgression->enabled)
        {
            if (!player->GetSession())
                return;

            ChatHandler(player->GetSession()).SendSysMessage("|cff00ff00Individual Progression: |cffccccccenabled|r");
        }
    }

    /* void OnPlayerSetMaxLevel(Player* player, uint32& maxPlayerLevel) override
    {
        if (!sIndividualProgression->enabled || !maxPlayerLevel || !player || !player->IsInWorld() || sIndividualProgression->isExcludedFromProgression(player))
            return;

        if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC))
        {
            if (sWorld->getIntConfig(CONFIG_MAX_PLAYER_LEVEL) > IP_LEVEL_VANILLA)
                maxPlayerLevel = IP_LEVEL_VANILLA;
        }
        else if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5))
        {
            if (sWorld->getIntConfig(CONFIG_MAX_PLAYER_LEVEL) > IP_LEVEL_TBC)
                maxPlayerLevel = IP_LEVEL_TBC;
        }
    } */

    void OnPlayerMapChanged(Player* player) override
    {
        if (!sIndividualProgression->enabled || !player || !player->IsInWorld())
            return;

        if (!sIndividualProgression->isExcludedFromProgression(player))
            sIndividualProgression->checkIPProgression(player);

        sIndividualProgression->CheckAdjustments(player);
    }

    void OnPlayerUpdateZone(Player* player, uint32 newZone, uint32 /*newArea*/) override
    {
        if (!sIndividualProgression->enabled || !player || !player->IsInWorld() || !newZone)
            return;
		
        sIndividualProgression->checkIPPhasing(player, newZone);
    }

    void OnPlayerEquip(Player* player, Item* /*it*/, uint8 /*bag*/, uint8 /*slot*/, bool /*update*/) override
    {
        if (!player || !player->IsInWorld())
            return;

        sIndividualProgression->CheckAdjustments(player);
    }

    void OnPlayerResurrect(Player* player, float /*restore_percent*/, bool& /*applySickness*/) override
    {
        if (!player || !player->IsInWorld())
            return;

        sIndividualProgression->CheckAdjustments(player);
    }

    void OnPlayerQuestComputeXP(Player* player, Quest const* quest, uint32& xpValue) override
    {
        if (!sIndividualProgression->enabled || !quest || !xpValue || !player || !player->IsInWorld())
            return;

        if (!sIndividualProgression->questXpFix)
            return;

        if (sIndividualProgression->questXpMap.count(quest->GetQuestId()))
        {
            uint32 vanillaXpValue = sIndividualProgression->questXpMap[quest->GetQuestId()];
            if (player)
            {
                uint32 originalXpValue = quest->XPValue(quest->GetQuestLevel() == -1 ? player->GetLevel() : quest->GetQuestLevel());
                xpValue *= vanillaXpValue * 1.0 / originalXpValue;
            }
        }
    }

    void OnPlayerGiveXP(Player* player, uint32& amount, Unit* /*victim*/, uint8 xpSource) override
    {
        if (!sIndividualProgression->enabled || !player || !player->IsInWorld() || !amount)
            return;

        if (sIndividualProgression->isExcludedFromProgression(player))
        {
            if (player->GetLevel() >= sIndividualProgression->ExcludedAccountsMaxLevel)
            {
                // Still award XP to pets - they won't be able to pass the player's level
                Pet* pet = player->GetPet();
                if (pet && xpSource == XPSOURCE_KILL)
                    pet->GivePetXP(player->GetGroup() ? amount / 2 : amount);

                amount = 0;
            }
        }
        else
        {
            // Player is still in Vanilla content - do not give XP past level 60
            if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) && player->GetLevel() >= IP_LEVEL_VANILLA)
            {
                // Still award XP to pets - they won't be able to pass the player's level
                Pet* pet = player->GetPet();
                if (pet && xpSource == XPSOURCE_KILL)
                    pet->GivePetXP(player->GetGroup() ? amount / 2 : amount);

                amount = 0;
            }
            // Player is in TBC content - do not give XP past level 70
            else if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) && player->GetLevel() >= IP_LEVEL_TBC)
            {
                // Still award XP to pets - they won't be able to pass the player's level
                Pet* pet = player->GetPet();
                if (pet && xpSource == XPSOURCE_KILL)
                    pet->GivePetXP(player->GetGroup() ? amount / 2 : amount);

                amount = 0;
            }
        }
    }

    static bool isAttuned(Player* player)
    {
        if (!player || !player->IsInWorld())
            return false;

        if (!sIndividualProgression->enabled || player->IsGameMaster() || sIndividualProgression->isExcludedFromProgression(player))
            return true;

        if ((player->GetQuestStatus(NAXX40_ATTUNEMENT_1) == QUEST_STATUS_REWARDED) || (player->GetQuestStatus(NAXX40_ATTUNEMENT_2) == QUEST_STATUS_REWARDED) || (player->GetQuestStatus(NAXX40_ATTUNEMENT_3) == QUEST_STATUS_REWARDED))
            return true;
        else
            return false;
    }

    void OnPlayerSpellCast(Player* player, Spell* spell, bool skipCheck) override
    {
        if (!sIndividualProgression->enabled || !player || !player->IsInWorld() || !spell)
            return;

        if (sIndividualProgression->isExcludedFromProgression(player)) // bots don't cast lower ranks of spells
            return;

        if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5)) // no need to check spells if player is not in WotlK
            return;

        if (!player->getClass())
            return;

        if (player->getClass() == CLASS_DRUID)
        {
            if (spell->GetSpellInfo()->SchoolMask == 8) // Nature
            {
                static constexpr std::array<uint16, 59> Druid_SM_8 =
                {
                    5185, 5186, 5187, 5188, 5189, 6778, 8903, 9758, 9888, 9889, 25297, // Healing Touch ranks 1-11
                    774, 1058, 1430, 2090, 2091, 3627, 8910, 9839, 9840, 9841, 25299, // Rejuvenation ranks 1-11
                    8936, 8938, 8939, 8940, 8941, 9750, 9856, 9857, 9858, // Regrowth ranks 1-9
                    5176, 5177, 5178, 5179, 5180, 6780, 8905, 9912, // Wrath ranks 1-8
                    339, 1062, 5195, 5196, 9852, 9853, // Entangling Roots 1-6
                    5570, 24974, 24975, 24976, 24977, // Insect Swarm ranks 1-5
                    740, 8918, 9862, 9863, // Tranquility ranks 1-4
                    2908, 8955, 9901, // Soothe Animal ranks 1-3
                    2637, 18657 // Hibernate ranks 1-2
                };

                for (uint16 spellId : Druid_SM_8)
                {
                    if (spell->GetSpellInfo()->Id == spellId)
                    {
                        ChatHandler(player->GetSession()).PSendSysMessage("This spell is not available during WotLK.");
                        spell->cancel();
                        break;
                    }
                }
            }

            if (spell->GetSpellInfo()->SchoolMask == 64) // Arcane
            {
                static constexpr std::array<uint16, 20> Druid_SM_64 =
                {
                    8921, 8924, 8925, 8926, 8927, 8928, 8929, 9833, 9834, 9835, // Moonfire ranks 1-10
                    2912, 8949, 8950, 8951, 9875, 9876, 25298, // Starfire ranks 1-7
                    16914, 17401, 17402 // Hurricane ranks 1-3
                };

                for (uint16 spellId : Druid_SM_64)
                {
                    if (spell->GetSpellInfo()->Id == spellId)
                    {
                        ChatHandler(player->GetSession()).PSendSysMessage("This spell is not available during WotLK.");
                        spell->cancel();
                        break;
                    }
                }
            }
        }

        if (player->getClass() == CLASS_HUNTER)
        {
            if (spell->GetSpellInfo()->SchoolMask == 1 || spell->GetSpellInfo()->SchoolMask == 4)  // Physical + Fire
            {
                static constexpr std::array<uint16, 34> Hunter_SM_1_4 =
                {
                    19434, 20900, 20901, 20902, 20903, 20904, // Aimed Shot ranks 1-6
                    19306, 20909, 20910, // Counterattack ranks 1-3
                    13813, 14316, 14317, // Explosive Trap ranks 1-3
                    13795, 14302, 14303, 14304, 14305, // Immolation Trap ranks 1-5
                    1495, 14269, 14270, 14271, // Mongoose Bite ranks 1-4
                    2643, 14288, 14289, 14290, 25294, // Multi-Shot ranks 1-5
                    2973, 14260, 14261, 14262, 14263, 14264, 14265, 14266 // Raptor Strike ranks 1-8
                };

                for (uint16 spellId : Hunter_SM_1_4)
                {
                    if (spell->GetSpellInfo()->Id == spellId)
                    {
                        ChatHandler(player->GetSession()).PSendSysMessage("This spell is not available during WotLK.");
                        spell->cancel();
                        break;
                    }
                }
            }

            if (spell->GetSpellInfo()->SchoolMask == 8 || spell->GetSpellInfo()->SchoolMask == 16 || spell->GetSpellInfo()->SchoolMask == 64)  // Nature + Frost + Arcane
            {
                static constexpr std::array<uint16, 37> Hunter_SM_8_16_64 =
                {
                    1978, 13549, 13550, 13551, 13552, 13553, 13554, 13555, 25295, // Serpent Sting ranks 1-9
                    3044, 14281, 14282, 14283, 14284, 14285, 14286, 14287, // Arcane Shot ranks 1-8
                    136, 3111, 3661, 3662, 13542, 13543, 13544, // Mend Pet ranks 1-7
                    1130, 14323, 14324, // Hunter's Mark ranks 1-3
                    1510, 14294, 14295, // Volley ranks 1-3
                    19386, 24132, 24133, // Wyvern Sting ranks 1-3
                    1499, 14310, // Freezing Trap ranks 1-2
                    1513, 14326 // Scare Beast ranks 1-2
                };

                for (uint16 spellId : Hunter_SM_8_16_64)
                {
                    if (spell->GetSpellInfo()->Id == spellId)
                    {
                        ChatHandler(player->GetSession()).PSendSysMessage("This spell is not available during WotLK.");
                        spell->cancel();
                        break;
                    }
                }
            }
        }

        else if (player->getClass() == CLASS_MAGE)
        {
            if (spell->GetSpellInfo()->SchoolMask == 4)  // Fire
            {
                static constexpr std::array<uint16, 50> Mage_SM_4 =
                {
                    11113, 13018, 13019, 13020, 13021, // Blast Wave ranks 1-5
                    2136, 2137, 2138, 8412, 8413, 10197, 10199, // Fire Blast ranks 1-7
                    543, 8457, 8458, 10223, 10225, // Fire Ward ranks 1-5
                    133, 143, 145, 3140, 8400, 8401, 8402, 10148, 10149, 10150, 10151, 25306, // Fireball ranks 1-12
                    2120, 2121, 8422, 8423, 10215, 10216, // Flamestrike ranks 1-6
                    11366, 12505, 12522, 12523, 12524, 12525, 12526, 18809, // Pyroblast ranks 1-8
                    2948, 8444, 8445, 8446, 10205, 10206, 10207 // Scorch ranks 1-7
                };

                for (uint16 spellId : Mage_SM_4)
                {
                    if (spell->GetSpellInfo()->Id == spellId)
                    {
                        // ChatHandler(player->GetSession()).PSendSysMessage("spell = {}", spellId);
                        ChatHandler(player->GetSession()).PSendSysMessage("This spell is not available during WotLK.");
                        spell->cancel();
                        break;
                    }
                }
            }

            if (spell->GetSpellInfo()->SchoolMask == 16) // Frost
            {
                static constexpr std::array<uint16, 39> Mage_SM_16 =
                {
                    10, 6141, 8427, 10185, 10186, 10187, // Blizzard ranks 1-6
                    120, 8492, 10159, 10160, 10161, // Cone of Cold ranks 1-5
                    122, 865, 6131, 10230, // Frost Nova ranks 1-4
                    6143, 8461, 8462, 10177, 28609, // Frost Ward ranks 1-5
                    116, 205, 837, 7322, 8406, 8407, 8408, 10179, 10180, 10181, 25304, // Frostbolt ranks 1-11
                    7302, 7320, 10219, 10220, // Ice Armor ranks 1-4
                    11426, 13031, 13032, 13033 // Ice Barrier ranks 1-4
                };

                for (uint16 spellId : Mage_SM_16)
                {
                    if (spell->GetSpellInfo()->Id == spellId)
                    {
                        // ChatHandler(player->GetSession()).PSendSysMessage("spell = {}", spellId);
                        ChatHandler(player->GetSession()).PSendSysMessage("This spell is not available during WotLK.");
                        spell->cancel();
                        break;
                    }
                }
            }

            if (spell->GetSpellInfo()->SchoolMask == 64) // Arcane
            {
                static constexpr std::array<uint16, 39> Mage_SM_64 =
                {
                    1008, 8455, 10169, 10170, // Amplify Magic ranks 1-4
                    1449, 8437, 8438, 8439, 10201, 10202, // Arcane Explosion ranks 1-6
                    5143, 5144, 5145, 8416, 8417, 10211, 10212, 25345, // Arcane Missiles ranks 1-8
                    759, 3552, 10053, 10054, // Conjure Mana Gem ranks 1-4
                    604, 8450, 8451, 10173, 10174,  // Dampen Magic ranks 1-5
                    6117, 22782, 22783, // Mage Armor ranks 1-3
                    1463, 8494, 8495, 10191, 10192, 10193, // Mana Shield ranks 1-6
                    118, 12824, 12825, // Polymorph ranks 1-3
                };

                for (uint16 spellId : Mage_SM_64)
                {
                    if (spell->GetSpellInfo()->Id == spellId)
                    {
                        // ChatHandler(player->GetSession()).PSendSysMessage("spell = {}", spellId);
                        ChatHandler(player->GetSession()).PSendSysMessage("This spell is not available during WotLK.");
                        spell->cancel();
                        break;
                    }
                }
            }
        }

        else if (player->getClass() == CLASS_PALADIN)
        {
            if (spell->GetSpellInfo()->SchoolMask == 2) // Holy
            {
                static constexpr std::array<uint16, 42> Paladin_SM_2 =
                {
                    635, 639, 347, 1026, 1042, 3472, 10328, 10329, 25292, // Holy Light ranks 1-9
                    19750, 19939, 19940, 19941, 19942, 19943, // Flash of Light ranks 1-6
                    879, 5614, 5615, 10312, 10313, 10314, // Exorcism ranks 1-6
                    26573, 20116, 20922, 20923, 20924, // Consecration ranks 1-5
                    24275, 24274, 24239, // Hammer of Wrath ranks 1-3
                    20473, 20929, 20930, // Holy Shock ranks 1-3
                    20925, 20927, 20928, // Holy Shield ranks 1-3
                    853, 5588, 5589, // Hammer of Justice ranks 1-3
                    2812, 10318, // Holy Wrath ranks 1-2
                    1022, 5599 // Hand of Protection ranks 1-2
                };

                for (uint16 spellId : Paladin_SM_2)
                {
                    if (spell->GetSpellInfo()->Id == spellId)
                    {
                        ChatHandler(player->GetSession()).PSendSysMessage("This spell is not available during WotLK.");
                        spell->cancel();
                        break;
                    }
                }
            }
        }

        else if (player->getClass() == CLASS_PRIEST)
        {
            if (spell->GetSpellInfo()->SchoolMask == 2)
            {
                static constexpr std::array<uint16, 77> Priest_SM_2 =
                {
                    2061, 9472, 9473, 9474, 10915, 10916, 10917, // Flash Heal ranks 1-7
                    139, 6074, 6075, 6076, 6077, 6078, 10927, 10928, 10929, 25315, // Renew ranks 1-10
                    17, 592, 600, 3747, 6065, 6066, 10898, 10899, 10900, 10901, // Power Word: Shield ranks 1-10
                    14914, 15262, 15263, 15264, 15265, 15266, 15267, 15261,  // Holy Fire ranks 1-8
                    15237, 15430, 15431, 27799, 27800, 27801, // Holy Nova ranks 1-6
                    588, 7128, 602, 1006, 10951, 10952, // Inner Fire ranks 1-6
                    2054, 2055, 6063, 6064, // Heal ranks 1-4
                    585, 591, 598, 984, 1004, 6060, 10933, 10934, // Smite ranks 1-8
                    2060, 10963, 10964, 10965, 25314, // Greater Heal ranks 1-5
                    596, 996, 10960, 10961, 25316, // Prayer of Healing ranks 1-5
                    2050, 2052, 2053, // Lesser Heal ranks 1-3
                    9484, 9485, // Shackle Undead ranks 1-2
                    724, 27870, 27871  // Lightwell rank 1-3
                };

                for (uint16 spellId : Priest_SM_2)
                {
                    if (spell->GetSpellInfo()->Id == spellId)
                    {
                        ChatHandler(player->GetSession()).PSendSysMessage("This spell is not available during WotLK.");
                        spell->cancel();
                        break;
                    }
                }
            }

            if (spell->GetSpellInfo()->SchoolMask == 32) // Shadow
            {
                static constexpr std::array<uint16, 32> Priest_SM_32 =
                {
                    8092, 8102, 8103, 8104, 8105, 8106, 10945, 10946, 10947, // Mind Blast ranks 1-9
                    589, 594, 970, 992, 2767, 10892, 10893, 10894, // Shadow Word: Pain ranks 1-8
                    15407, 17311, 17312, 17313, 17314, 18807, // Mind Flay ranks 1-6
                    2944, 19276, 19277, 19278, 19279, 19280, // Devouring Plague ranks 1-6
                    8122, 8124, 10888 // Psychic Scream ranks 1-3
                };

                for (uint16 spellId : Priest_SM_32)
                {
                    if (spell->GetSpellInfo()->Id == spellId)
                    {
                        ChatHandler(player->GetSession()).PSendSysMessage("This spell is not available during WotLK.");
                        spell->cancel();
                        break;
                    }
                }
            }
        }

        else if (player->getClass() == CLASS_SHAMAN)
        {
            if (spell->GetSpellInfo()->SchoolMask == 4) // Fire
            {
                static constexpr std::array<uint16, 34> Shaman_SM_4 =
                {
                    1535, 8498, 8499, 11314, 11315, // Fire Nova ranks 1-5
                    8050, 8052, 8053, 10447, 10448, 28228, // Flame Shock ranks 1-6
                    8227, 8249, 10526, 16387, // Flametongue Totem ranks 1-4
                    8024, 8027, 8030, 16339, 16341, 16342, // Flametongue Weapon ranks 1-6
                    8181, 10478, 10479, // Frost Resistance Totem ranks 1-3
                    8190, 10585, 10586, 10587, // Magma Totem ranks 1-4
                    3599, 6363, 6364, 6365, 10437, 10438 // Searing Totem ranks 1-6
                };

                for (uint16 spellId : Shaman_SM_4)
                {
                    if (spell->GetSpellInfo()->Id == spellId)
                    {
                        ChatHandler(player->GetSession()).PSendSysMessage("This spell is not available during WotLK.");
                        spell->cancel();
                        break;
                    }
                }
            }

            if (spell->GetSpellInfo()->SchoolMask == 8) // Nature
            {
                static constexpr std::array<uint16, 61> Shaman_SM_8 =
                {
                    1064, 10622, 10623, // Chain Heal ranks 1-3
                    421, 930, 2860, 10605, // Chain Lightning ranks 1-4
                    8042, 8044, 8045, 8046, 10412, 10413, 10414, // Earth Shock ranks 1-7
                    331, 332, 547, 913, 939, 959, 8005, 10395, 10396, 25357, // Healing Wave ranks 1-10
                    8004, 8008, 8010, 10466, 10467, 10468, // Lesser Healing Wave ranks 1-6
                    403, 529, 548, 915, 943, 6041, 10391, 10392, 15207, 15208, // Lightning Bolt ranks 1-10
                    10595, 10600, 10601, // Nature Resistance Totem ranks 1-3
                    8017, 8018, 8019, // Rockbiter Weapon ranks 1-3
                    5730, 6390, 6391, 6392, 10427, 10428, // Stoneclaw Totem ranks 1-6
                    8075, 8160, 8161, 10442, 25361, // Strength of Earth Totem ranks 1-5
                    8232, 8235, 10486, 16362 // Windfury Weapon ranks 1-4
                };

                for (uint16 spellId : Shaman_SM_8)
                {
                    if (spell->GetSpellInfo()->Id == spellId)
                    {
                        ChatHandler(player->GetSession()).PSendSysMessage("This spell is not available during WotLK.");
                        spell->cancel();
                        break;
                    }
                }
            }

            if (spell->GetSpellInfo()->SchoolMask == 16) // Frost
            {
                static constexpr std::array<uint16, 21> Shaman_SM_16 =
                {
                    8184, 10537, 10538, // Fire Resistance Totem ranks 1-3
                    8056, 8058, 10472, 10473, // Frost Shock ranks 1-4
                    8033, 8038, 10456, 16355, 16356, // Frostbrand Weapon ranks 1-5
                    5394, 6375, 6377, 10462, 10463, // Healing Stream Totem ranks 1-5
                    5675, 10495, 10496, 10497 // Mana Spring Totem ranks 1-4
                };

                for (uint16 spellId : Shaman_SM_16)
                {
                    if (spell->GetSpellInfo()->Id == spellId)
                    {
                        ChatHandler(player->GetSession()).PSendSysMessage("This spell is not available during WotLK.");
                        spell->cancel();
                        break;
                    }
                }
            }
        }

        else if (player->getClass() == CLASS_WARLOCK)
        {
            if (spell->GetSpellInfo()->SchoolMask == 4) // Fire
            {
                static constexpr std::array<uint16, 27> Warlock_SM_4 =
                {
                    348, 707, 1094, 2941, 11665, 11667, 11668, 25309, // Immolate ranks 1-8
                    5676, 17919, 17920, 17921, 17922, 17923, // Searing Pain ranks 1-6
                    5740, 6219, 11677, 11678, // Rain of Fire ranks 1-4
                    6366, 17951, 17952, 17953, // Create Firestone ranks 1-4
                    1949, 11683, 11684, // Hellfire ranks 1-3
                    6353, 17924 // Soul Fire ranks 1-2
                };

                for (uint16 spellId : Warlock_SM_4)
                {
                    if (spell->GetSpellInfo()->Id == spellId)
                    {
                        ChatHandler(player->GetSession()).PSendSysMessage("This spell is not available during WotLK.");
                        spell->cancel();
                        break;
                    }
                }
            }

            if (spell->GetSpellInfo()->SchoolMask == 32) // Shadow
            {
                static constexpr std::array<uint16, 74> Warlock_SM_32 =
                {
                    686, 695, 705, 1088, 1106, 7641, 11659, 11660, 11661, 25307, // Shadow Bolt ranks 1-10
                    172, 6222, 6223, 7648, 11671, 11672, 25311, // Corruption ranks 1-7
                    980, 1014, 6217, 11711, 11712, 11713, // Curse of Agony ranks 1-6
                    702, 1108, 6205, 7646, 11707, 11708, // Curse of Weakness ranks 1-6
                    1490, 11721, 11722, // Curse of Elements ranks 1-3
                    689, 699, 709, 7651, 11699, 11700, // Drain Life ranks 1-6
                    1120, 8288, 8289, 11675, // Drain Soul ranks 1-4
                    17877, 18867, 18868, 18869, 18870, 18871, // Shadowburn ranks 1-6
                    6229, 11739, 11740, 28610, // Shadow Ward ranks 1-4
                    706, 1086, 11733, 11734, 11735, // Demon Armor ranks 1-5
                    6201, 6202, 5699, 11729, 11730, // Create Healthstone ranks 1-5
                    2362, 17727, 17728, // Create Spellstone ranks 1-3
                    6789, 17925, 17926, // Death Coil ranks 1-3
                    1098, 11725, // Enslave Demon ranks 1-2
                    1714, // Curse of Tongues rank 1
                    5484, // Howl of Terror rank 1
                    710, // Banish rank 1
                    603 // Curse of Doom rank 1
                };

                for (uint16 spellId : Warlock_SM_32)
                {
                    if (spell->GetSpellInfo()->Id == spellId)
                    {
                        ChatHandler(player->GetSession()).PSendSysMessage("This spell is not available during WotLK.");
                        spell->cancel();
                        break;
                    }
                }
            }
        }
    }

    bool OnPlayerBeforeTeleport(Player* player, uint32 mapid, float x, float y, float z, float /*orientation*/, uint32 /*options*/, Unit* /*target*/) override
    {
        if (!player || !player->IsInWorld())
            return false;

        if (!sIndividualProgression->enabled || player->IsGameMaster() || sIndividualProgression->isExcludedFromProgression(player))
            return true;

        if (mapid == MAP_BLACKWING_LAIR && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_MOLTEN_CORE))
        {
            ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_MOLTEN_CORE);
            return false;
        }
        if (mapid == MAP_ONYXIAS_LAIR)
        {
            if (player->GetLevel() <= IP_LEVEL_TBC) // vanilla version
            {
                if (player->GetLevel() < 50)
                    return false;
                if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5)) // death knights
                    return false;
                if (!player->HasItemCount(ITEM_DRAKEFIRE_AMULET))
                    return false;
            }
 			else // WotLK
            {
                if (player->GetLevel() != IP_LEVEL_WOTLK)
                    return false;
            }
        }
        if (mapid == MAP_ZUL_GURUB)
        {
            uint32 PLAYER_PROGRESSION = sIndividualProgression->GetPlayerProgressionFromQuests(player);
            ProgressionState REQUIRED_ZG_PROGRESSION = static_cast<ProgressionState>(sIndividualProgression->RequiredZulGurubProgression);

            if (PLAYER_PROGRESSION < REQUIRED_ZG_PROGRESSION)
            {
                ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", REQUIRED_ZG_PROGRESSION);
                return false;
            }
        }
        if (mapid == MAP_AHN_QIRAJ_TEMPLE && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_AQ))
        {
            ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_PRE_AQ);
            return false;
        }
        if (mapid == MAP_RUINS_OF_AHN_QIRAJ && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_AQ))
        {
            ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_PRE_AQ);
            return false;
        }
        if (mapid == MAP_OUTLAND)
        {
            if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC))
            {
                uint32 accountId = player->GetSession()->GetAccountId();
                uint8 highestProgression = sIndividualProgression->GetAccountProgression(accountId);

                if ((highestProgression < sIndividualProgression->tbcRacesProgressionLevel) && (player->getRace() != RACE_DRAENEI && player->getRace() != RACE_BLOODELF))
                {
                    ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", sIndividualProgression->tbcRacesProgressionLevel);
                    return false;
                }
                else
                    return IsTBCRaceStartingZone(mapid, x, y, z);
            }

            Map const *map = sMapMgr->FindMap(mapid, 0);
            uint32 zoneId = map->GetZoneId(0, x, y, z);

            if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_4) && zoneId == AREA_ISLE_OF_QUEL_DANAS)
            {
                ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_TBC_TIER_4);
                return false;
            }
        }
        if (mapid == MAP_ZUL_AMAN && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_3))
        {
            ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_TBC_TIER_3);
            return false;
        }
        if (mapid == MAP_NORTHREND && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5))
        {
            ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_TBC_TIER_5);
            return false;
        }
        if (mapid == MAP_ULDUAR && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_WOTLK_TIER_1))
        {
            ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_WOTLK_TIER_1);
            return false;
        }
        if ((mapid == MAP_TRIAL_OF_THE_CHAMPION || mapid == MAP_TRIAL_OF_THE_CRUSADER) && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_WOTLK_TIER_2))
        {
            ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_WOTLK_TIER_2);
            return false;
        }
        // This will also restrict other Frozen Halls dungeons, because Forge of Souls must be completed first to access them
        if ((mapid == MAP_ICECROWN_CITADEL || mapid == MAP_THE_FORGE_OF_SOULS) && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_WOTLK_TIER_3))
        {
            ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_WOTLK_TIER_3);
            return false;
        }
        if (mapid == MAP_THE_RUBY_SANCTUM && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_WOTLK_TIER_4))
        {
            ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_WOTLK_TIER_4);
            return false;
        }
        if (mapid == MAP_MAGISTERS_TERRACE && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_4))
        {
            ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_TBC_TIER_4);
            return false;
        }
        if (mapid == MAP_THE_SUNWELL && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_4))
        {
            ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_TBC_TIER_4);
            return false;
        }
        if (mapid == MAP_TEMPEST_KEEP)
        {
            if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_1))
            {
                ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_TBC_TIER_1);
                return false;
            }
 			else if (!player->HasItemCount(ITEM_TEMPEST_KEY))
            {
                ChatHandler(player->GetSession()).PSendSysMessage("You must possess the Tempest Key to enter The Eye.");
                return false;
            }
 			else if (player->GetQuestStatus(TRIAL_MAGTHERIDON) != QUEST_STATUS_REWARDED)
            {
                ChatHandler(player->GetSession()).PSendSysMessage("You must complete the quest Trial of the Naaru: Magtheridon to enter The Eye.");
                return false;
            }
        }
        if (mapid == MAP_COILFANG_SERPENTSHRINE_CAVERN)
        {
            if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_1))
            {
                ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_TBC_TIER_1);
                return false;
            }
 			else if (player->GetQuestStatus(CUDGEL_OF_KARDESH) != QUEST_STATUS_REWARDED)
            {
                ChatHandler(player->GetSession()).PSendSysMessage("You must complete the quest The Cudgel of Kar\'desh to enter Serpentshrine Reservoir.");
                return false;
            }
        }
        if (mapid == MAP_THE_BATTLE_FOR_MOUNT_HYJAL)
        {
            if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_2))
            {
                ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_TBC_TIER_2);
                return false;
            }
 			else if (player->GetQuestStatus(VIALS_OF_ETERNITY) != QUEST_STATUS_REWARDED)
            {
                ChatHandler(player->GetSession()).PSendSysMessage("You must complete the quest The Vials of Eternity to enter the Battle of Mount Hyjal.");
                return false;
            }
        }
        if (mapid == MAP_BLACK_TEMPLE)
        {
            if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_2))
            {
                ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_TBC_TIER_2);
                return false;
            }
 			else if (!player->HasItemCount(ITEM_MEDALLION_OF_KARABOR) && !player->HasItemCount(ITEM_BLESSED_MEDALLION_OF_KARABOR))
            {
                ChatHandler(player->GetSession()).PSendSysMessage("You must possess the Medallion of Karabor to enter the Black Temple.");
                return false;
            }
        }

        InstanceTemplate const* instanceTemplate = sObjectMgr->GetInstanceTemplate(mapid);
        if (instanceTemplate)
        {
            if (instanceTemplate->Parent == MAP_OUTLAND && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC))
                return false;

            if (instanceTemplate->Parent == MAP_NORTHREND && mapid != MAP_NAXXRAMAS && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5))
                return false;

            if (instanceTemplate->Parent == MAP_NORTHREND && mapid == MAP_NAXXRAMAS && player->GetLevel() <= IP_LEVEL_TBC && (!isAttuned(player) ||  sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) ))
                return false;
        }

        return true;
    }

    void OnPlayerCompleteQuest(Player* player, Quest const* quest) override
    {
        if (!player || !player->IsInWorld() || !quest || !sIndividualProgression->enabled)
            return;

        if (sIndividualProgression->questMoneyAtLevelCap)
        {
            int32 moneyRew = 0;
            int32 XPValue = 0;

            if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) && player->GetLevel() == IP_LEVEL_VANILLA)
                XPValue = quest->XPValue(quest->GetQuestLevel() == -1 ? IP_LEVEL_VANILLA : quest->GetQuestLevel());
            else if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) && player->GetLevel() == IP_LEVEL_TBC)
                XPValue = quest->XPValue(quest->GetQuestLevel() == -1 ? IP_LEVEL_TBC : quest->GetQuestLevel());

            moneyRew = (XPValue * (6 * COPPER)) * sWorld->getRate(RATE_REWARD_BONUS_MONEY);

            if (moneyRew > 0)
            {
                player->ModifyMoney(moneyRew);
                uint32 gold = moneyRew / GOLD;
                uint32 silv = (moneyRew % GOLD) / SILVER;
                // uint32 copp = (moneyRew % GOLD) % SILVER;

                if (gold > 0)
                    ChatHandler(player->GetSession()).PSendSysMessage("Received {} Gold, {} Silver.", gold, silv);
                else
                    ChatHandler(player->GetSession()).PSendSysMessage("Received {} Silver.", silv);
            }
        }

        if (!sIndividualProgression->isExcludedFromProgression(player) || !sIndividualProgression->excludeAccounts)
        {
            switch (quest->GetQuestId())
            {
            case BANG_A_GONG:
                if (!sIndividualProgression->disableDefaultProgression)
                    sIndividualProgression->UpdateProgressionState(player, PROGRESSION_PRE_AQ);
                break;
            case SIMPLY_BANG_A_GONG:
                if (!sIndividualProgression->disableDefaultProgression)
                    sIndividualProgression->UpdateProgressionState(player, PROGRESSION_PRE_AQ);
                break;
            case CHAOS_AND_DESTRUCTION:
                if (!sIndividualProgression->disableDefaultProgression)
                    sIndividualProgression->UpdateProgressionState(player, PROGRESSION_AQ_WAR);
                break;
            case INTO_THE_BREACH:
                if (!sIndividualProgression->disableDefaultProgression)
                    sIndividualProgression->UpdateProgressionState(player, PROGRESSION_PRE_TBC);
                break;
            case QUEST_MORROWGRAIN:
            case QUEST_TROLL_NECKLACE:
            case QUEST_DEADWOOD:
            case QUEST_WINTERFALL:
                if (sIndividualProgression->repeatableVanillaQuestsXp)
                {
                    // Reset the quest status so the player can take it and receive rewards again
                    player->RemoveRewardedQuest(quest->GetQuestId());
                }
                break;
            }
        }
    }

    bool OnPlayerCanGroupInvite(Player* player, std::string& membername) override
    {
        if (!player || !player->IsInWorld())
            return false;

        if (!sIndividualProgression->enabled)
            return true;

        Player* otherPlayer = ObjectAccessor::FindPlayerByName(membername, false);
        uint8 currentState = sIndividualProgression->GetPlayerProgressionFromQuests(player);
        uint8 otherPlayerState = sIndividualProgression->GetPlayerProgressionFromQuests(otherPlayer);

        if (sIndividualProgression->enforceGroupRules) // enforceGroupRules enabled
        {
            if (!sIndividualProgression->isExcludedFromProgression(player)) // player has a normal account
            {
                if (sIndividualProgression->isExcludedFromProgression(otherPlayer)) // RNDbot
                {
                    if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC)) // player is in vanilla
                    {
                        if (otherPlayer->GetLevel() <= IP_LEVEL_VANILLA)
                        {
                            return true;
                        }
                        else
                        {
                            ChatHandler(player->GetSession()).SendSysMessage("|cff00ff00Enforce Group Rules is enabled: |cffccccccthis player's level is too high.|r");
                            return false;
                        }
                    }
                    else if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5)) // player is in TBC
                    {
                        if ((otherPlayer->GetLevel() > IP_LEVEL_VANILLA) && (otherPlayer->GetLevel() <= IP_LEVEL_TBC))
                        {
                            return true;
                        }
                        else
                        {
                            ChatHandler(player->GetSession()).SendSysMessage("|cff00ff00Enforce Group Rules is enabled: |cffccccccthis player's level is too low or too high.|r");
                            return false;
                        }
                    }
                    else // player is in WotLK
                    {
                        if (otherPlayer->GetLevel() > IP_LEVEL_TBC)
                        {
                            return true;
                        }
                        else
                        {
                            ChatHandler(player->GetSession()).SendSysMessage("|cff00ff00Enforce Group Rules is enabled: |cffccccccthis player's level is too low.|r");
                            return false;
                        }
                    }
                }
                else // player or ALTbot
                {
                    return (currentState == otherPlayerState);
                }
            }
            else // player has an excluded account
            {
                if (sIndividualProgression->isExcludedFromProgression(otherPlayer)) // RNDbot
                {
                    if (player->GetLevel() <= IP_LEVEL_VANILLA) // player is in vanilla
                    {
                        if (otherPlayer->GetLevel() <= IP_LEVEL_VANILLA)
                        {
                            return true;
                        }
                        else
                        {
                            ChatHandler(player->GetSession()).SendSysMessage("|cff00ff00Enforce Group Rules is enabled: |cffccccccthis player's level is too high.|r");
                            return false;
                        }
                    }
                    else if (player->GetLevel() <= IP_LEVEL_TBC) // player is in TBC
                    {
                        if ((otherPlayer->GetLevel() > IP_LEVEL_VANILLA) && (otherPlayer->GetLevel() <= IP_LEVEL_TBC))
                        {
                            return true;
                        }
                        else
                        {
                            ChatHandler(player->GetSession()).SendSysMessage("|cff00ff00Enforce Group Rules is enabled: |cffccccccthis player's level is too low or too high.|r");
                            return false;
                        }
                    }
                    else // player is in WotLK
                    {
                        if (otherPlayer->GetLevel() > IP_LEVEL_TBC)
                        {
                            return true;
                        }
                        else
                        {
                            ChatHandler(player->GetSession()).SendSysMessage("|cff00ff00Enforce Group Rules is enabled: |cffccccccthis player's level is too low.|r");
                            return false;
                        }
                    }
                }
                else // player or ALTbot
                {
                    ChatHandler(player->GetSession()).SendSysMessage("|cff00ff00Enforce Group Rules is enabled: |cffccccccthis player does not have an excluded account.|r");
                    return false;
                }
            }
        }
        else // enforceGroupRules not enabled
        {
            return true;
        }
    }

    bool OnPlayerCanGroupAccept(Player* player, Group* group) override
    {
        if (!player || !player->IsInWorld() || !group)
            return false;

        Player* groupLeader = ObjectAccessor::FindPlayerByLowGUID(group->GetLeaderGUID().GetCounter());
        uint8 currentState = sIndividualProgression->GetPlayerProgressionFromQuests(player);
        uint8 groupLeaderState = sIndividualProgression->GetPlayerProgressionFromQuests(groupLeader);

        if (!sIndividualProgression->enabled)
            return true;

        if (sIndividualProgression->isExcludedFromProgression(player))
        {
            if (sIndividualProgression->enforceGroupRules)
            {
                if (groupLeaderState <= 7) // Group leader is in Vanilla
                {
                    if (player->GetLevel() <= 60) // invited excluded player is in Vanilla
                    {
                        sIndividualProgression->ForceUpdateProgressionState(player, static_cast<ProgressionState>(groupLeaderState));
                        return true;
                    }
                    else
                        return false;
                }
                else if (groupLeaderState > 7 && groupLeaderState < 13) // Group leader is in TBC
                {
                    if (player->GetLevel() > 60 && player->GetLevel() <= 70) // invited excluded player is in TBC
                    {
                        sIndividualProgression->ForceUpdateProgressionState(player, static_cast<ProgressionState>(groupLeaderState));
                        return true;
                    }
                    else
                        return false;
                }
                else // Group leader is in WotLK
                {
                    if (player->GetLevel() > 70) // invited excluded player is in WotLK
                    {
                        sIndividualProgression->ForceUpdateProgressionState(player, static_cast<ProgressionState>(groupLeaderState));
                        return true;
                    }
                    else
                        return false;
                }
            }
            else // not enforcing Group Rules
            {
                if (currentState != groupLeaderState)
                    sIndividualProgression->ForceUpdateProgressionState(player, static_cast<ProgressionState>(groupLeaderState));

                return true;
            }
        }
        else // normal account
        {
            if (sIndividualProgression->enforceGroupRules)
                return (currentState == groupLeaderState);
            else
                return true;
        }
    }

    void OnPlayerCreatureKill(Player* killer, Creature* killed) override
    {
        if (!sIndividualProgression->enabled || !killed || !killer || !killer->IsInWorld())
            return;

        switch (killed->GetEntry())
        {
        case RHAHK_ZOR:
            killer->RemoveAura(IPP_PHASE);
            killer->RemoveAura(IPP_PHASE_II);
            killer->RemoveAura(IPP_PHASE_III);
            killer->CastSpell(killer, IPP_PHASE, false);
            break;
        case SNEED:
            killer->RemoveAura(IPP_PHASE);
            killer->RemoveAura(IPP_PHASE_II);
            killer->RemoveAura(IPP_PHASE_III);
            killer->CastSpell(killer, IPP_PHASE, false);
            killer->CastSpell(killer, IPP_PHASE_II, false);
            break;
        case GILNID:
            killer->RemoveAura(IPP_PHASE);
            killer->RemoveAura(IPP_PHASE_II);
            killer->RemoveAura(IPP_PHASE_III);
            killer->CastSpell(killer, IPP_PHASE, false);
            killer->CastSpell(killer, IPP_PHASE_II, false);
            killer->CastSpell(killer, IPP_PHASE_III, false);
            break;
        }

        if (killed->GetCreatureTemplate()->rank > CREATURE_ELITE_NORMAL)
        {
            sIndividualProgression->checkKillProgression(killer, killed);
            Group* group = killer->GetGroup();
            if (!group)
                return;

            for (GroupReference* itr = group->GetFirstMember(); itr != nullptr; itr = itr->next())
            {
                Player* member = itr->GetSource();
                if (!member || sIndividualProgression->isExcludedFromProgression(member))
                    continue;

                if (killer->IsAtLootRewardDistance(member))
                    sIndividualProgression->checkKillProgression(member, killed);
            }
        }
    }

    bool OnPlayerUpdateFishingSkill(Player* player, int32 /*skill*/, int32 /*zone_skill*/, int32 chance, int32 roll) override
    {
        if (!player || !player->IsInWorld() || !chance || !roll)
            return false;

        if (!sIndividualProgression->enabled || !sIndividualProgression->fishingFix)
            return true;
        if (chance < roll)
            return false;

        return true;
    }

    void OnPlayerUpdateArea(Player* player, uint32 /*oldArea*/, uint32 newArea) override
    {
        if (!player || !player->IsInWorld() || !newArea)
            return;

        uint32 mapid = player->GetMap()->GetId();

        if (mapid && mapid == MAP_OUTLAND) // prevent entering Sun's Reach Harbor in Quel'Danas without proper progression
        {
            if (!sIndividualProgression->isExcludedFromProgression(player) && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_4) && newArea == 4087) // Sun's Reach Harbor
            {
                ChatHandler(player->GetSession()).PSendSysMessage("Progression Level Required = |cff00ffff{}|r", PROGRESSION_TBC_TIER_4);

                TeamId teamId = player->GetTeamId(true);
                if (teamId == TEAM_ALLIANCE)
                    player->TeleportTo(0, 2270.32f, -5341.56f, 87, 1.34946f); // Light's Hope Chapel
                else // Horde
                    player->TeleportTo(530, 9373.69f, -7168.46f, 9.17572f, 1.04876f); // Eversong Woods
            }
        }

        sIndividualProgression->checkIPPhasing(player, newArea);
    }

};

class IndividualPlayerProgression_AccountScript : public AccountScript
{
public:
    IndividualPlayerProgression_AccountScript() : AccountScript("IndividualProgression_AccountScript") { }

    bool CanAccountCreateCharacter(uint32 accountId, uint8 charRace, uint8 charClass) override
    {
        if (!accountId || !charRace || !charClass)
            return false;

        if ((!sIndividualProgression->enabled) ||
            (charRace != RACE_DRAENEI && charRace != RACE_BLOODELF && charClass != CLASS_DEATH_KNIGHT) ||
            (!sIndividualProgression->tbcRacesProgressionLevel && !sIndividualProgression->deathKnightProgressionLevel))
        {
            return true;
        }

        // Check if the account is excluded from progression (bots)
        std::string accountName;
        bool accountNameFound = AccountMgr::GetName(accountId, accountName);
        std::regex excludedAccountsRegex(sIndividualProgression->excludedAccountsRegex);
  
        if (accountNameFound && std::regex_match(accountName, excludedAccountsRegex))
			return true;

        uint8 highestProgression = sIndividualProgression->GetAccountProgression(accountId);
        if (charRace == RACE_DRAENEI || charRace == RACE_BLOODELF)
        {
            if (highestProgression < sIndividualProgression->tbcRacesProgressionLevel)
                return false;
        }
        if (charClass == CLASS_DEATH_KNIGHT && sIndividualProgression->deathKnightProgressionLevel)
        {
            if (highestProgression < sIndividualProgression->deathKnightProgressionLevel)
                return false;
        }
        return true;
    }
};

class IndividualPlayerProgression_GroupScript : public GroupScript
{
public:
    IndividualPlayerProgression_GroupScript() : GroupScript("IndividualPlayerProgression_GroupScript") { }

    void OnAddMember(Group* group, ObjectGuid guid) override
    {
        if (!group || !guid)
            return;

        Player* added = ObjectAccessor::FindPlayer(guid);
        if (!added)
            return;

        sIndividualProgression->SyncBotsProgressionToLeader(group);
    }
};

class IndividualPlayerProgression_UnitScript : public UnitScript
{
public:
    IndividualPlayerProgression_UnitScript() : UnitScript("IndividualPlayerProgression_UnitScript") { }

    void ModifyHealReceived(Unit* /*target*/, Unit *healer, uint32 &heal, SpellInfo const *spellInfo) override
    {
        // Skip potions, bandages, percentage based heals like Rune Tap, etc.
        if (!sIndividualProgression->enabled || spellInfo->HasAttribute(SPELL_ATTR0_NO_IMMUNITIES) || spellInfo->Mechanic == MECHANIC_BANDAGE)
            return;

        // Skip percentage based heals or spells already nerfed by damage reduction
        for (uint8 i = 0; i < 3; i++)
        {
            if (spellInfo->Effects[i].Effect == SPELL_EFFECT_HEAL_MAX_HEALTH)
                return;
        }
        if (spellInfo->Id == SPELL_RUNE_TAP || spellInfo->Id == SPELL_LIFE_STEAL || spellInfo->Id == SPELL_CANNIBALISE)
            return;

        if (!healer)
            return;

        bool isPet = healer->GetOwner() && healer->GetOwner()->GetTypeId() == TYPEID_PLAYER;
        if (!isPet && healer->GetTypeId() != TYPEID_PLAYER)
            return;

        Player* player = isPet ? healer->GetOwner()->ToPlayer() : healer->ToPlayer();

        if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC))
            heal *= sIndividualProgression->ComputeVanillaAdjustment(player->GetLevel(), sIndividualProgression->vanillaHealingAdjustment);
        else if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5))
            heal *= sIndividualProgression->tbcHealingAdjustment;
    }

    void ModifySpellDamageTaken(Unit* /*target*/, Unit* attacker, int32& damage, SpellInfo const* spellInfo) override
    {
        if (!sIndividualProgression->enabled || !attacker || !damage)
            return;

        // 22482 - Blade Flurry extra attack (Rogue); 12723 - Sweeping Strikes extra attack (Warrior)
        if (spellInfo && (spellInfo->Id == 22482 || spellInfo->Id == 12723))
            return;

        bool isPet = attacker->GetOwner() && attacker->GetOwner()->GetTypeId() == TYPEID_PLAYER;
        if (!isPet && attacker->GetTypeId() != TYPEID_PLAYER)
            return;

        Player* player = isPet ? attacker->GetOwner()->ToPlayer() : attacker->ToPlayer();

        if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC))
            damage *= sIndividualProgression->ComputeVanillaAdjustment(player->GetLevel(), sIndividualProgression->vanillaPowerAdjustment);
        else if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5))
            damage *= sIndividualProgression->tbcPowerAdjustment;
    }

    void ModifyMeleeDamage(Unit* /*target*/, Unit* attacker, uint32& damage) override
    {
        if (!sIndividualProgression->enabled || !attacker || !damage)
            return;

        bool isPet = attacker->GetOwner() && attacker->GetOwner()->GetTypeId() == TYPEID_PLAYER;
        if (!isPet && attacker->GetTypeId() != TYPEID_PLAYER)
            return;

        Player* player = isPet ? attacker->GetOwner()->ToPlayer() : attacker->ToPlayer();

        if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC))
            damage *= sIndividualProgression->ComputeVanillaAdjustment(player->GetLevel(), sIndividualProgression->vanillaPowerAdjustment);
        else if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5))
            damage *= sIndividualProgression->tbcPowerAdjustment;
    }

    void ModifyPeriodicDamageAurasTick(Unit* /*target*/, Unit* attacker, uint32& damage, SpellInfo const* spellInfo) override
    {
        if (!sIndividualProgression->enabled || !attacker || !damage || !spellInfo)
            return;

        // Do not apply reductions to healing auras - these are already modified in the ModifyHeal hook
        for (uint8 j = 0; j < MAX_SPELL_EFFECTS; ++j)
        {
            if (spellInfo->Effects[j].Effect == SPELL_EFFECT_APPLY_AURA && spellInfo->Effects[j].ApplyAuraName == SPELL_AURA_PERIODIC_HEAL)
                return;
        }

        // Also manually filter cannibalise (forsaken racial). It isn't covered by SPELL_AURA_PERIODIC_HEAL
        if (spellInfo->Id == SPELL_CANNIBALISE)
            return;

        bool isPet = attacker->GetOwner() && attacker->GetOwner()->GetTypeId() == TYPEID_PLAYER;
        if (!isPet && attacker->GetTypeId() != TYPEID_PLAYER)
            return;

        Player* player = isPet ? attacker->GetOwner()->ToPlayer() : attacker->ToPlayer();

        if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC))
            damage *= sIndividualProgression->ComputeVanillaAdjustment(player->GetLevel(), sIndividualProgression->vanillaPowerAdjustment);
        else if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5))
            damage *= sIndividualProgression->tbcPowerAdjustment;
    }

};

void AddSC_mod_individual_progression_player()
{
    new IndividualPlayerProgression();
    new IndividualPlayerProgression_GroupScript();
    new IndividualPlayerProgression_AccountScript();
    new IndividualPlayerProgression_UnitScript();
}

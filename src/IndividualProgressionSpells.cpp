#include "IndividualProgression.h"
#include "Spell.h"
#include "EventProcessor.h"
#include "ObjectAccessor.h"

void IndividualProgression::UpdateRNDbotSpells(Player* player)
{
    if (!player || !player->IsInWorld())
        return;

    if (!sIndividualProgression->isBotAccount(player))
        return;

    switch (player->getClass())
    {
    case CLASS_WARLOCK:
        if (player->GetLevel() >= 40 && !player->HasSpell(7584)) // Summon Felsteed
            player->learnSpell(7584, false);
        break;
    case CLASS_PALADIN:
        if (player->GetLevel() >= 40 && !player->HasSpell(13819)) // Summon Warhorse
            player->learnSpell(13819, false);
        break;
    case CLASS_DRUID:
        if (player->GetLevel() >= 10 && !player->HasSpell(18960)) // Teleport: Moonglade
            player->learnSpell(18960, false);
        if (player->GetLevel() >= 16 && !player->HasSpell(1066)) // Aquatic Form
            player->learnSpell(1066, false);
        break;
    default:
        return;
    }
}

void IndividualProgression::checkHunterPetSpells(Player* player)
{
    if (!player || !player->IsInWorld())
        return;

    if (sIndividualProgression->isBotAccount(player))
        return;

    if (player->getClass() != CLASS_HUNTER)
        return;

    if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5))
        return;

    Pet* pet = player->GetPet();
    if (!pet)
        return;

    Creature* creature = pet->ToCreature();
    if (!creature)
        return;

    const CreatureTemplate* creatureTemplate = creature->GetCreatureTemplate();
    if (!creatureTemplate)
        return;

    CreatureFamilyEntry const* familyEntry = nullptr;
    if (creature && creature->GetCreatureTemplate())
        familyEntry = sCreatureFamilyStore.LookupEntry(creature->GetCreatureTemplate()->family);

    std::string familyName = familyEntry->Name[0];


    auto wipe = [pet](std::initializer_list<uint32> ids)
        {
            for (uint32 id : ids)
            {
                if (pet->HasSpell(id))
                    pet->unlearnSpell(id, false, true);
            }
        };

    auto learnHighest = [pet, player](std::initializer_list<uint32> dummyIds)
        {
            for (auto it = std::rbegin(dummyIds); it != std::rend(dummyIds); ++it)
            {
                if (player->HasSpell(*it))
                {
                    pet->learnSpell(*it - 600000);
                    return;
                }
            }
        };

    if (familyName == "Wolf")
    {
        // Bite, ranks 1-9
        wipe({ 17253, 17255, 17256, 17257, 17258, 17259, 17260, 17261, 27050 });
        learnHighest({ 617253, 617255, 617256, 617257, 617258, 617259, 617260, 617261, 627050 });

        // Claw, ranks 1-9
        wipe({ 16827, 16828, 16829, 16830, 16831, 16832, 3010, 3009, 27049 });
        learnHighest({ 616827, 616828, 616829, 616830, 616831, 616832, 603010, 603009, 627049 });

        // Furious Howl, ranks 1-4
        wipe({ 24604, 24605, 24603, 24597, 64494 });
        learnHighest({ 624604, 624605, 624603, 624597 });

        // Dash, ranks 1-3
        wipe({ 23099, 23109, 23110, 61684 });
        learnHighest({ 623099, 623109, 623110 });

        // Cower
        wipe({ 1742 });
    }

    if (familyName == "Cat")
    {
        // Claw, ranks 1-9
        wipe({ 16827, 16828, 16829, 16830, 16831, 16832, 3010, 3009, 27049 });
        learnHighest({ 616827, 616828, 616829, 616830, 616831, 616832, 603010, 603009, 627049 });

        // Dash, ranks 1-3
        wipe({ 23099, 23109, 23110, 61684 });
        learnHighest({ 623099, 623109, 623110 });

        // Prowl, ranks 1-3
        wipe({ 24450, 24452, 24453 });
        learnHighest({ 624450, 624452, 624453 });

        // Rake
        wipe({ 59881, 59882, 59883, 59884, 59885, 59886 });

        // Cower
        wipe({ 1742 });
    }

}

void IndividualProgression::checkWarlockPetSpells(Player* player)
{
    if (!player || !player->IsInWorld() || !WarlockDemonTrainers)
        return;

    if (sIndividualProgression->isBotAccount(player))
        return;

    if (player->getClass() != CLASS_WARLOCK)
        return;

    if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5))
        return;

    Pet* pet = player->GetPet();
    if (!pet)
        return;

    // Helper: unlearn every spell in a list if present on the pet.
    // clear_ab=true so removed spells leave the action bar.
    auto wipe = [pet](std::initializer_list<uint32> ids)
        {
            for (uint32 id : ids)
            {
                if (pet->HasSpell(id))
                    pet->unlearnSpell(id, false, true);
            }
        };

    // Helper: walk dummy IDs from highest to lowest; learn the highest the player owns.
    // Order matters: dummy list MUST be passed lowest-rank-first; we iterate in reverse.
    auto learnHighest = [pet, player](std::initializer_list<uint32> dummyIds)
        {
            for (auto it = std::rbegin(dummyIds); it != std::rend(dummyIds); ++it)
            {
                // 603110, 603716, 619505 and 607814 are rank 1 dummy IDs for Firebolt, Torment, Devour Magic and Lash of Pain
                if (player->HasSpell(*it) || *it == 603110 || *it == 603716 || *it == 619505 || *it == 607814)
                {
                    pet->learnSpell(*it - 600000);
                    return;
                }
            }
        };

    switch (pet->GetEntry())
    {
    case NPC_IMP:
        // Firebolt: ranks 2..9 (47964 is WotLK rank 9)
        wipe({ 7799, 7800, 7801, 7802, 11762, 11763, 27267, 47964 });
        learnHighest({ 603110, 607799, 607800, 607801, 607802, 611762, 611763, 627267 }); // ranks 1-8

        // Blood Pact: ranks 1..7 (47982 is WotLK rank 7)
        wipe({ 6307, 7804, 7805, 11766, 11767, 27268, 47982 });
        learnHighest({ 606307, 607804, 607805, 611766, 611767, 627268 });

        // Fire Shield: ranks 1..7 (47983 is WotLK rank 7)
        wipe({ 2947, 8316, 8317, 11770, 11771, 27269, 47983 });
        learnHighest({ 602947, 608316, 608317, 611770, 611771, 627269 });

        // Phase Shift (single rank)
        wipe({ 4511 });
        learnHighest({ 604511 });
        break;

    case NPC_VOIDWALKER:
        // Torment: ranks 2..7 (47985 is WotLK rank 8)
        wipe({ 7809, 7810, 7811, 11774, 11775, 27270, 47984 });
        learnHighest({ 603716, 607809, 607810, 607811, 611774, 611775, 627270 }); // ranks 1-7

        // Sacrifice: ranks 1..9 (47986 is WotLK rank 9)
        wipe({ 7812, 19438, 19440, 19441, 19442, 19443, 27273, 47985, 47986 });
        learnHighest({ 607812, 619438, 619440, 619441, 619442, 619443, 627273 });

        // Consume Shadows: ranks 1..9 (47988 is WotLK rank 9)
        wipe({ 17767, 17850, 17851, 17852, 17853, 17854, 27272, 47987, 47988 });
        learnHighest({ 617767, 617850, 617851, 617852, 617853, 617854, 627272 });

        // Suffering: ranks 1..8 (47990 is WotLK rank 8)
        wipe({ 17735, 17750, 17751, 17752, 27271, 33701, 47989, 47990 });
        learnHighest({ 617735, 617750, 617751, 617752, 627271, 633701 });
        break;

    case NPC_SUCCUBUS:
        // Lash of Pain: ranks 1..9 (47992 is WotLK rank 9)
        wipe({ 7814, 7815, 7816, 11778, 11779, 11780, 27274, 47991, 47992 });
        learnHighest({ 607814, 607815, 607816, 611778, 611779, 611780, 627274 });

        // Soothing Kiss: ranks 1..5
        wipe({ 6360, 7813, 11784, 11785, 27275 });
        learnHighest({ 606360, 607813, 611784, 611785, 627275 });

        // Seduction & Lesser Invisibility (single ranks)
        wipe({ 6358, 7870 });
        learnHighest({ 606358 });
        learnHighest({ 607870 });
        break;

    case NPC_FELHUNTER:
        // Devour Magic + Shadow Bite
        wipe({ 19505, 19731, 19734, 19736, 27276, 27277, 48011, 54049, 54050, 54051, 54052, 54053 });
        learnHighest({ 619505, 619731, 619734, 619736, 627276, 627277 });

        // Tainted Blood / Fel Intelligence
        wipe({ 20429, 20430, 20431, 20432, 27497, 54424, 57564, 57565, 57566, 57567 });
        learnHighest({ 620429, 620430, 620431, 620432, 627497 });

        // Spell Lock: ranks 1..3
        wipe({ 19244, 19647, 24259 });
        learnHighest({ 619244, 619647 });

        // Paranoia (passive)
        wipe({ 19481 });
        learnHighest({ 619481 });
        break;

    case NPC_FELGUARD:
        // Intercept: ranks 1..3
        wipe({ 30151, 30154, 30199, 30200 });
        learnHighest({ 630154, 630199, 630200 });

        // Cleave: ranks 1..3
        wipe({ 30213, 30214, 30222, 30224 });
        learnHighest({ 630214, 630222, 630224 });

        // Anguish: ranks 1..3
        wipe({ 33704, 33705, 33706 });
        learnHighest({ 633704, 633705, 633706 });

        // Avoidance & Demonic Frenzy (passives)
        wipe({ 32234, 32852 });
        learnHighest({ 632234 });
        learnHighest({ 632852 });
        break;
    }
}

class DelayedDemonSpellCheck : public BasicEvent
{
public:
    DelayedDemonSpellCheck(ObjectGuid playerGuid) : _playerGuid(playerGuid) {}

    bool Execute(uint64 /*time*/, uint32 /*diff*/) override
    {
        if (Player* player = ObjectAccessor::FindPlayer(_playerGuid))
        {
            sIndividualProgression->checkHunterPetSpells(player);
            sIndividualProgression->checkWarlockPetSpells(player);
        }

        return true;
    }

private:
    ObjectGuid _playerGuid;
};

class IndividualPlayerProgressionSpells : public PlayerScript
{
public:
    IndividualPlayerProgressionSpells() : PlayerScript("IndividualProgression") { }

    void OnPlayerLearnSpell(Player* player, uint32 spellID) override
    {
        if (!player || !player->IsInWorld())
            return;

        if (sIndividualProgression->isBotAccount(player))
            return;

        if (player->getClass() == CLASS_HUNTER)
        {
            if (spellID < 600000 || spellID > 700000)
                return;

            sIndividualProgression->checkHunterPetSpells(player);
        }
        else if (player->getClass() == CLASS_WARLOCK)
        {
            if (spellID < 600000 || spellID > 700000)
                return;

            sIndividualProgression->checkWarlockPetSpells(player);
        }
    }

    void OnPlayerSpellCast(Player* player, Spell* spell, bool /*skipCheck*/) override
    {
        if (!sIndividualProgression->enabled || !player || !player->IsInWorld() || !spell)
            return;

        if (sIndividualProgression->isBotAccount(player)) // bots should not be effected
            return;

        uint32 SPELL_TAME_BEAST = 1515;

        if (player->getClass() == CLASS_HUNTER)
        {
            if (spell->GetSpellInfo()->Id == SPELL_TAME_BEAST)
            {
                Unit* target = player->GetSelectedUnit();

                if (!target)
                    return;

                if (target->GetCreatureType() != CREATURE_TYPE_BEAST)
                    return;

                QueryResult result = WorldDatabase.Query("SELECT ct.PetSpellDataId FROM creature_template ct WHERE ct.entry = {};", target->GetEntry());

                if (!result) // PetSpellDataId = 0
                    return;

                uint32 PetSpellDataId = (*result)[0].Get<uint32>();

                ChatHandler(player->GetSession()).PSendSysMessage("PetSpellDataId = {}", PetSpellDataId);

                CreatureSpellDataEntry const* spellDataEntry = sCreatureSpellDataStore.LookupEntry(PetSpellDataId);

                if (!spellDataEntry)
                    return;

                // player learns a dummy spell for every spell the tamed creature has
                for (uint8 i = 0; i < MAX_CREATURE_SPELL_DATA_SLOT; ++i)
                {
                    uint32 PetSpell = spellDataEntry->spellId[i];

                    if (PetSpell == 0)
                        continue;

                    ChatHandler(player->GetSession()).PSendSysMessage("PetSpell = {}", PetSpell);

                    if (!player->HasSpell(PetSpell + 600000))
                    {
                        std::string SpellName = sSpellStore.LookupEntry(PetSpell)->SpellName[0];

                        uint8 SpellRank = 1;

                        QueryResult result = WorldDatabase.Query("SELECT sr.rank FROM spell_ranks sr WHERE sr.spell_id = {};", PetSpell);

                        if (result)
                            SpellRank = (*result)[0].Get<uint8>();

                        player->learnSpell(PetSpell + 600000);
                        ChatHandler(player->GetSession()).PSendSysMessage("You have learned spell: {} (Rank {}).", SpellName, SpellRank);
                    }
                }
                return; // spell Tame Beast was cast, no need to check anything else
            }
        }

        // prevent players from casting Vanilla and TBC spells during WotLK
        if (sIndividualProgression->EnableAllSpellRanks)
            return;
        
        if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5) || player->GetLevel() < 70) // no need to check spells if player is not in WotlK
            return;

        if (player->getClass() == CLASS_WARRIOR || player->getClass() == CLASS_ROGUE || player->getClass() == CLASS_DEATH_KNIGHT)
            return;

        if (player->getClass() == CLASS_DRUID)
        {
            if (spell->GetSpellInfo()->SchoolMask == 8) // Nature
            {
                static constexpr std::array<uint16, 62> Druid_SM_8 =
                {
                    5185, 5186, 5187, 5188, 5189, 6778, 8903, 9758, 9888, 9889, 25297, 26978, // Healing Touch ranks 1-12
                    774, 1058, 1430, 2090, 2091, 3627, 8910, 9839, 9840, 9841, 25299, 26981, // Rejuvenation ranks 1-12
                    8936, 8938, 8939, 8940, 8941, 9750, 9856, 9857, 9858, // Regrowth ranks 1-9
                    5176, 5177, 5178, 5179, 5180, 6780, 8905, 9912, 26984, // Wrath ranks 1-9
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
                static constexpr std::array<uint16, 21> Druid_SM_64 =
                {
                    8921, 8924, 8925, 8926, 8927, 8928, 8929, 9833, 9834, 9835, 26987, // Moonfire ranks 1-11
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
                static constexpr std::array<uint16, 55> Mage_SM_4 =
                {
                    11113, 13018, 13019, 13020, 13021, 27133, // Blast Wave ranks 1-6
                    2136, 2137, 2138, 8412, 8413, 10197, 10199, 27078, // Fire Blast ranks 1-8
                    543, 8457, 8458, 10223, 10225, // Fire Ward ranks 1-5
                    133, 143, 145, 3140, 8400, 8401, 8402, 10148, 10149, 10150, 10151, 25306, 27070, // Fireball ranks 1-13
                    2120, 2121, 8422, 8423, 10215, 10216, // Flamestrike ranks 1-6
                    11366, 12505, 12522, 12523, 12524, 12525, 12526, 18809, 27132, // Pyroblast ranks 1-9
                    2948, 8444, 8445, 8446, 10205, 10206, 10207, 27073 // Scorch ranks 1-8
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
                static constexpr std::array<uint16, 42> Mage_SM_16 =
                {
                    10, 6141, 8427, 10185, 10186, 10187, // Blizzard ranks 1-6
                    120, 8492, 10159, 10160, 10161, // Cone of Cold ranks 1-5
                    122, 865, 6131, 10230, // Frost Nova ranks 1-4
                    6143, 8461, 8462, 10177, 28609, // Frost Ward ranks 1-5
                    116, 205, 837, 7322, 8406, 8407, 8408, 10179, 10180, 10181, 25304, 27071, 27072,  // Frostbolt ranks 1-13
                    7302, 7320, 10219, 10220, // Ice Armor ranks 1-4
                    11426, 13031, 13032, 13033, 27134 // Ice Barrier ranks 1-5
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
                static constexpr std::array<uint16, 43> Mage_SM_64 =
                {
                    1008, 8455, 10169, 10170, 27130, // Amplify Magic ranks 1-5
                    1449, 8437, 8438, 8439, 10201, 10202, 27080, // Arcane Explosion ranks 1-7
                    5143, 5144, 5145, 8416, 8417, 10211, 10212, 25345, 27075, 38699, // Arcane Missiles ranks 1-10
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
                static constexpr std::array<uint16, 44> Paladin_SM_2 =
                {
                    635, 639, 347, 1026, 1042, 3472, 10328, 10329, 25292, 27135, // Holy Light ranks 1-10
                    19750, 19939, 19940, 19941, 19942, 19943, // Flash of Light ranks 1-6
                    879, 5614, 5615, 10312, 10313, 10314, // Exorcism ranks 1-6
                    26573, 20116, 20922, 20923, 20924, // Consecration ranks 1-5
                    24275, 24274, 24239, // Hammer of Wrath ranks 1-3
                    20473, 20929, 20930, 27174, // Holy Shock ranks 1-4
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
            if (spell->GetSpellInfo()->SchoolMask == 2) // Holy
            {
                static constexpr std::array<uint16, 82> Priest_SM_2 =
                {
                    2061, 9472, 9473, 9474, 10915, 10916, 10917, 25233, // Flash Heal ranks 1-8
                    139, 6074, 6075, 6076, 6077, 6078, 10927, 10928, 10929, 25315, 25221, // Renew ranks 1-11
                    17, 592, 600, 3747, 6065, 6066, 10898, 10899, 10900, 10901, 25217, // Power Word: Shield ranks 1-11
                    14914, 15262, 15263, 15264, 15265, 15266, 15267, 15261,  // Holy Fire ranks 1-8
                    15237, 15430, 15431, 27799, 27800, 27801, // Holy Nova ranks 1-6
                    588, 7128, 602, 1006, 10951, 10952, // Inner Fire ranks 1-6
                    2054, 2055, 6063, 6064, // Heal ranks 1-4
                    585, 591, 598, 984, 1004, 6060, 10933, 10934, 25363, // Smite ranks 1-9
                    2060, 10963, 10964, 10965, 25314, 25210, // Greater Heal ranks 1-6
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
                static constexpr std::array<uint16, 34> Priest_SM_32 =
                {
                    8092, 8102, 8103, 8104, 8105, 8106, 10945, 10946, 10947, 25372, // Mind Blast ranks 1-10
                    589, 594, 970, 992, 2767, 10892, 10893, 10894, 25367, // Shadow Word: Pain ranks 1-9
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
                static constexpr std::array<uint16, 35> Shaman_SM_4 =
                {
                    1535, 8498, 8499, 11314, 11315, 25546, // Fire Nova ranks 1-6
                    8050, 8052, 8053, 10447, 10448, 29228, // Flame Shock ranks 1-6
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
                static constexpr std::array<uint16, 65> Shaman_SM_8 =
                {
                    1064, 10622, 10623, 25422, // Chain Heal ranks 1-4
                    421, 930, 2860, 10605, 25439, // Chain Lightning ranks 1-5
                    8042, 8044, 8045, 8046, 10412, 10413, 10414, // Earth Shock ranks 1-7
                    331, 332, 547, 913, 939, 959, 8005, 10395, 10396, 25357, 25391, // Healing Wave ranks 1-11
                    8004, 8008, 8010, 10466, 10467, 10468, // Lesser Healing Wave ranks 1-6
                    403, 529, 548, 915, 943, 6041, 10391, 10392, 15207, 15208, 25448, // Lightning Bolt ranks 1-11
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
                static constexpr std::array<uint16, 29> Warlock_SM_4 =
                {
                    348, 707, 1094, 2941, 11665, 11667, 11668, 25309, // Immolate ranks 1-8
                    5676, 17919, 17920, 17921, 17922, 17923, 27210, // Searing Pain ranks 1-7
                    5740, 6219, 11677, 11678, // Rain of Fire ranks 1-4
                    6366, 17951, 17952, 17953, // Create Firestone ranks 1-4
                    1949, 11683, 11684, // Hellfire ranks 1-3
                    6353, 17924, 27211, // Soul Fire ranks 1-3
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
                static constexpr std::array<uint16, 77> Warlock_SM_32 =
                {
                    686, 695, 705, 1088, 1106, 7641, 11659, 11660, 11661, 25307, // Shadow Bolt ranks 1-10
                    172, 6222, 6223, 7648, 11671, 11672, 25311, // Corruption ranks 1-7
                    980, 1014, 6217, 11711, 11712, 11713, // Curse of Agony ranks 1-6
                    702, 1108, 6205, 7646, 11707, 11708, 27224, // Curse of Weakness ranks 1-7
                    1490, 11721, 11722, // Curse of Elements ranks 1-3
                    689, 699, 709, 7651, 11699, 11700, 27219, // Drain Life ranks 1-7
                    1120, 8288, 8289, 11675, // Drain Soul ranks 1-4
                    17877, 18867, 18868, 18869, 18870, 18871, 27263, // Shadowburn ranks 1-7
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
};

class IndividualPlayerProgression_PetScript : public PetScript
{
private:
    static void ScheduleDelayedSpellStrip(Pet* pet)
    {
        if (!pet)
            return;

        Unit* owner = pet->GetOwner();

        if (!owner || !owner->IsPlayer())
            return;

        if (!owner->ToPlayer()->IsClass(CLASS_WARLOCK, CLASS_CONTEXT_PET) && !owner->ToPlayer()->IsClass(CLASS_HUNTER, CLASS_CONTEXT_PET))
            return;

        pet->m_Events.AddEvent(
            new DelayedPetSpellStrip(owner->GetGUID()),
            pet->m_Events.CalculateTime(100));
    }

public:
    IndividualPlayerProgression_PetScript() : PetScript("IndividualProgression_PetScript") {}

    void OnPetAddToWorld(Pet* pet) override
    {
        if (!sIndividualProgression->enabled || !pet || !pet->GetOwner())
            return;

        ScheduleDelayedSpellStrip(pet);
    }

    void OnInitStatsForLevel(Guardian* guardian, uint8 /*petlevel*/) override
    {
        if (!sIndividualProgression->enabled || !guardian)
            return;

        Pet* pet = guardian->ToPet();
        if (!pet)
            return;

        ScheduleDelayedSpellStrip(pet);
    }

    class DelayedPetSpellStrip : public BasicEvent
    {
    public:
        explicit DelayedPetSpellStrip(ObjectGuid ownerGuid, uint8 attempts = 0)
            : _ownerGuid(ownerGuid), _attempts(attempts) {
        }

        bool Execute(uint64 /*e_time*/, uint32 /*p_time*/) override
        {
            Player* player = ObjectAccessor::FindPlayer(_ownerGuid);
            if (!player)
                return true;
            Pet* pet = player->GetPet();
            if (!pet)
                return true;

            // If the LoadPetFromDB async callback hasn't completed yet, poll again.
            // Cap attempts so a stuck loading flag can't recurse forever.
            if (pet->isBeingLoaded() && _attempts < 20)
            {
                pet->m_Events.AddEvent(
                    new DelayedPetSpellStrip(_ownerGuid, _attempts + 1),
                    pet->m_Events.CalculateTime(100));
                return true;
            }

            sIndividualProgression->checkHunterPetSpells(player);
            return true;
        }

    private:
        ObjectGuid _ownerGuid;
        uint8      _attempts;
    };
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

        if (sIndividualProgression->BotOnlyAdjustments)
        {
            if (!sIndividualProgression->isBotAccount(player) && sIndividualProgression->isPlayerInDungeonOrRaid(player))
                return;
        }

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

        if (sIndividualProgression->BotOnlyAdjustments)
        {
            if (!sIndividualProgression->isBotAccount(player) && sIndividualProgression->isPlayerInDungeonOrRaid(player))
                return;
        }

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

        if (sIndividualProgression->BotOnlyAdjustments)
        {
            if (!sIndividualProgression->isBotAccount(player) && sIndividualProgression->isPlayerInDungeonOrRaid(player))
                return;
        }

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

        if (sIndividualProgression->BotOnlyAdjustments)
        {
            if (!sIndividualProgression->isBotAccount(player) && sIndividualProgression->isPlayerInDungeonOrRaid(player))
                return;
        }

        if (!sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC))
            damage *= sIndividualProgression->ComputeVanillaAdjustment(player->GetLevel(), sIndividualProgression->vanillaPowerAdjustment);
        else if (sIndividualProgression->hasPassedProgression(player, PROGRESSION_PRE_TBC) && !sIndividualProgression->hasPassedProgression(player, PROGRESSION_TBC_TIER_5))
            damage *= sIndividualProgression->tbcPowerAdjustment;
    }

};

void AddSC_mod_individual_progression_spells()
{
    new IndividualPlayerProgressionSpells();
    new IndividualPlayerProgression_PetScript();
    new IndividualPlayerProgression_UnitScript();
}

/* These are actually a work-around for an issue in AzerothCore. Low-rank spells have incorrect bonus coefficients and do more damage than they should.
   This is very impacting the leveling experience and making it easier than it should, so it is important for Individual Progression.
   This is resolved when this PR is merge: https://github.com/azerothcore/azerothcore-wotlk/pull/12562
   Until then, this will correct the bonus data to use the proper values extracted from the DBC */

UPDATE `spell_bonus_data` SET `direct_bonus` = 0.172 WHERE `entry` = 116; /* Mage - Frost Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.018 WHERE `entry` = 122; /* Mage - Frost Nova */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.123 WHERE `entry` = 133; /* Mage - Fire ball */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.207 WHERE `entry` = 139; /* Priest - Renew */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.271 WHERE `entry` = 143; /* Mage - Fire ball */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.5 WHERE `entry` = 145; /* Mage - Fire ball */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.0624 WHERE `entry` = 172; /* Warlock - Corruption */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.283 WHERE `entry` = 205; /* Mage - Frost Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.231 WHERE `entry` = 331; /* Shaman - Healing Wave */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.51 WHERE `entry` = 332; /* Shaman - Healing Wave */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.055 WHERE `entry` = 339; /* Druid - Entangling Roots */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.058 WHERE `entry` = 348; /* Warlock - Immolate */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.058 WHERE `entry` = 348; /* Warlock - Immolate */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.125 WHERE `entry` = 403; /* Shaman - Lightning Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 421; /* Shaman - Chain Lightning */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.317 WHERE `entry` = 529; /* Shaman - Lightning Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.94 WHERE `entry` = 547; /* Shaman - Healing Wave */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.561 WHERE `entry` = 548; /* Shaman - Lightning Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.123 WHERE `entry` = 585; /* Priest - Smite */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.271 WHERE `entry` = 591; /* Priest - Smite */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.554 WHERE `entry` = 598; /* Priest - Smite */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.481 WHERE `entry` = 635; /* Paladin - Holy Light */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.796 WHERE `entry` = 639; /* Paladin - Holy Light */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.3 WHERE `entry` = 647; /* Paladin - Holy Light */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.14 WHERE `entry` = 686; /* Warlock - Shadow Bolt */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.111 WHERE `entry` = 689; /* Warlock - Drain Life */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.299 WHERE `entry` = 695; /* Warlock - Shadow Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.56 WHERE `entry` = 705; /* Warlock - Shadow Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.125 WHERE `entry` = 707; /* Warlock - Immolate */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.125 WHERE `entry` = 707; /* Warlock - Immolate */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.376 WHERE `entry` = 755; /* Warlock - Health Funnel */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.15 WHERE `entry` = 774; /* Druid - Rejuvenation */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.488 WHERE `entry` = 837; /* Mage - Frost Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.043 WHERE `entry` = 865; /* Mage - Frost Nova */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.491 WHERE `entry` = 913; /* Shaman - Healing Wave */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 915; /* Shaman - Lightning Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 930; /* Shaman - Chain Lightning */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.611 WHERE `entry` = 939; /* Shaman - Healing Wave */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 943; /* Shaman - Lightning Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.611 WHERE `entry` = 959; /* Shaman - Healing Wave */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.0548 WHERE `entry` = 980; /* Warlock - Curse of Agony */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 984; /* Priest - Smite */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 1004; /* Priest - Smite */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.0923 WHERE `entry` = 1014; /* Warlock - Curse of Agony */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.235 WHERE `entry` = 1058; /* Druid - Rejuvenation */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.093 WHERE `entry` = 1062; /* Druid - Entangling Roots */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.857 WHERE `entry` = 1088; /* Warlock - Shadow Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.857 WHERE `entry` = 1106; /* Warlock - Shadow Bolt */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.268 WHERE `entry` = 1120; /* Warlock - Drain Soul */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.32 WHERE `entry` = 1430; /* Druid - Rejuvenation */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.166 WHERE `entry` = 1449; /* Mage - Arcane Explosion */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.231 WHERE `entry` = 2050; /* Priest - Lesser Heal */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.431 WHERE `entry` = 2052; /* Priest - Lesser Heal */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.611 WHERE `entry` = 2060; /* Priest - Greater Heal */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.204 WHERE `entry` = 2136; /* Mage - Fire Blast */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.332 WHERE `entry` = 2137; /* Mage - Fire Blast */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 2860; /* Shaman - Chain Lightning */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 3110; /* Pet Warlock - Firebolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.793 WHERE `entry` = 3140; /* Mage - Fire ball */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.104 WHERE `entry` = 3606; /* Shaman - Searing Totem Attack Rank 1 */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.538 WHERE `entry` = 3698; /* Warlock - Health Funnel */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.538 WHERE `entry` = 3699; /* Warlock - Health Funnel */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.538 WHERE `entry` = 3700; /* Warlock - Health Funnel */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.123 WHERE `entry` = 5176; /* Druid - Wrath */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.231 WHERE `entry` = 5177; /* Druid - Wrath */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.443 WHERE `entry` = 5178; /* Druid - Wrath */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 5179; /* Druid - Wrath */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 5180; /* Druid - Wrath */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.231 WHERE `entry` = 5185; /* Druid - Healing Touch */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.59 WHERE `entry` = 5186; /* Druid - Healing Touch */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.042 WHERE `entry` = 5187; /* Druid - Healing Touch */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.611 WHERE `entry` = 5188; /* Druid - Healing Touch */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.61 WHERE `entry` = 5189; /* Druid - Healing Touch */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.1 WHERE `entry` = 5195; /* Druid - Entangling Roots */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.1 WHERE `entry` = 5196; /* Druid - Entangling Roots */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.396 WHERE `entry` = 5676; /* Warlock - Searing Pain */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 6041; /* Shaman - Lightning Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 6060; /* Priest - Smite */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.291 WHERE `entry` = 6074; /* Priest - Renew */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.043 WHERE `entry` = 6131; /* Mage - Frost Nova */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.61 WHERE `entry` = 6778; /* Druid - Healing Touch */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 6780; /* Druid - Wrath */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 6789; /* Warlock - Death Coil */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.157 WHERE `entry` = 7268; /* Mage - Arcane Missiles */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.243 WHERE `entry` = 7269; /* Mage - Arcane Missiles */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.743 WHERE `entry` = 7322; /* Mage - Frost Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.857 WHERE `entry` = 7641; /* Warlock - Shadow Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 7799; /* Pet Warlock - Firebolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 7800; /* Pet Warlock - Firebolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 7801; /* Pet Warlock - Firebolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 7802; /* Pet Warlock - Firebolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.807 WHERE `entry` = 8004; /* Shaman - Lesser Healing Wave */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.611 WHERE `entry` = 8005; /* Shaman - Healing Wave */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.807 WHERE `entry` = 8008; /* Shaman - Lesser Healing Wave */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.807 WHERE `entry` = 8010; /* Shaman - Lesser Healing Wave */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.154 WHERE `entry` = 8042; /* Shaman - Earth Shock */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.212 WHERE `entry` = 8044; /* Shaman - Earth Shock */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.299 WHERE `entry` = 8045; /* Shaman - Earth Shock */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.134 WHERE `entry` = 8050; /* Shaman - Flame Shock */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.198 WHERE `entry` = 8052; /* Shaman - Flame Shock */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 8053; /* Shaman - Flame Shock */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.268 WHERE `entry` = 8092; /* Priest - Mind Blast */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.364 WHERE `entry` = 8102; /* Priest - Mind Blast */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.15 WHERE `entry` = 8349; /* Shaman - Fire Nova Totem */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 8437; /* Mage - Arcane Explosion */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 8438; /* Mage - Arcane Explosion */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 8439; /* Mage - Arcane Explosion */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 8502; /* Shaman - Fire Nova Totem */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 8503; /* Shaman - Fire Nova Totem */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.61 WHERE `entry` = 8903; /* Druid - Healing Touch */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 8905; /* Druid - Wrath */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.052 WHERE `entry` = 8921; /* Druid - Moonfire */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.052 WHERE `entry` = 8921; /* Druid - Moonfire */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.081 WHERE `entry` = 8924; /* Druid - Moonfire */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.081 WHERE `entry` = 8924; /* Druid - Moonfire */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.111 WHERE `entry` = 8925; /* Druid - Moonfire */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.111 WHERE `entry` = 8925; /* Druid - Moonfire */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.13 WHERE `entry` = 8926; /* Druid - Moonfire */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.13 WHERE `entry` = 8926; /* Druid - Moonfire */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.13 WHERE `entry` = 8927; /* Druid - Moonfire */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.13 WHERE `entry` = 8927; /* Druid - Moonfire */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.13 WHERE `entry` = 8928; /* Druid - Moonfire */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.13 WHERE `entry` = 8928; /* Druid - Moonfire */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.13 WHERE `entry` = 8929; /* Druid - Moonfire */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.13 WHERE `entry` = 8929; /* Druid - Moonfire */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.61 WHERE `entry` = 9758; /* Druid - Healing Touch */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.13 WHERE `entry` = 9833; /* Druid - Moonfire */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.13 WHERE `entry` = 9833; /* Druid - Moonfire */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.13 WHERE `entry` = 9834; /* Druid - Moonfire */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.13 WHERE `entry` = 9834; /* Druid - Moonfire */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.13 WHERE `entry` = 9835; /* Druid - Moonfire */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.13 WHERE `entry` = 9835; /* Druid - Moonfire */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.1 WHERE `entry` = 9852; /* Druid - Entangling Roots */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.1 WHERE `entry` = 9853; /* Druid - Entangling Roots */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.61 WHERE `entry` = 9888; /* Druid - Healing Touch */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.61 WHERE `entry` = 9889; /* Druid - Healing Touch */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 9912; /* Druid - Wrath */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 10201; /* Mage - Arcane Explosion */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 10202; /* Mage - Arcane Explosion */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.043 WHERE `entry` = 10230; /* Mage - Frost Nova */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 10391; /* Shaman - Lightning Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 10392; /* Shaman - Lightning Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.611 WHERE `entry` = 10395; /* Shaman - Healing Wave */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.611 WHERE `entry` = 10396; /* Shaman - Healing Wave */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 10447; /* Shaman - Flame Shock */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 10448; /* Shaman - Flame Shock */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 10605; /* Shaman - Chain Lightning */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 10933; /* Priest - Smite */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 10934; /* Priest - Smite */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.611 WHERE `entry` = 10963; /* Priest - Greater Heal */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.611 WHERE `entry` = 10964; /* Priest - Greater Heal */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.611 WHERE `entry` = 10965; /* Priest - Greater Heal */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.193 WHERE `entry` = 11113; /* Mage - Blast Wave */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 11306; /* Shaman - Fire Nova Totem */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 11307; /* Shaman - Fire Nova Totem */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.857 WHERE `entry` = 11659; /* Warlock - Shadow Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.857 WHERE `entry` = 11660; /* Warlock - Shadow Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.857 WHERE `entry` = 11661; /* Warlock - Shadow Bolt */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.538 WHERE `entry` = 11693; /* Warlock - Health Funnel */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.538 WHERE `entry` = 11694; /* Warlock - Health Funnel */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.538 WHERE `entry` = 11695; /* Warlock - Health Funnel */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 11762; /* Pet Warlock - Firebolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 11763; /* Pet Warlock - Firebolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.193 WHERE `entry` = 13018; /* Mage - Blast Wave */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.193 WHERE `entry` = 13019; /* Mage - Blast Wave */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.193 WHERE `entry` = 13020; /* Mage - Blast Wave */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.193 WHERE `entry` = 13021; /* Mage - Blast Wave */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 14914; /* Priest - Holy Fire */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 15207; /* Shaman - Lightning Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 15208; /* Shaman - Lightning Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.161 WHERE `entry` = 15237; /* Priest - Holy Nova Damage */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 15261; /* Priest - Holy Fire */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 15262; /* Priest - Holy Fire */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 15263; /* Priest - Holy Fire */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 15264; /* Priest - Holy Fire */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 15265; /* Priest - Holy Fire */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 15266; /* Priest - Holy Fire */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 15267; /* Priest - Holy Fire */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.161 WHERE `entry` = 15430; /* Priest - Holy Nova Damage */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.161 WHERE `entry` = 15431; /* Priest - Holy Nova Damage */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 17925; /* Warlock - Death Coil */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 17926; /* Warlock - Death Coil */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.1 WHERE `entry` = 19970; /* Druid - Entangling Roots (Natures Grasp) */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.1 WHERE `entry` = 19971; /* Druid - Entangling Roots (Natures Grasp) */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.1 WHERE `entry` = 19972; /* Druid - Entangling Roots (Natures Grasp) */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.1 WHERE `entry` = 19973; /* Druid - Entangling Roots (Natures Grasp) */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.093 WHERE `entry` = 19974; /* Druid - Entangling Roots (Natures Grasp) */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.055 WHERE `entry` = 19975; /* Druid - Entangling Roots (Natures Grasp) */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.303 WHERE `entry` = 23455; /* Priest - Holy Nova Heal */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.303 WHERE `entry` = 23458; /* Priest - Holy Nova Heal */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.303 WHERE `entry` = 23459; /* Priest - Holy Nova Heal */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.611 WHERE `entry` = 25210; /* Priest - Greater Heal */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.611 WHERE `entry` = 25213; /* Priest - Greater Heal */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.61 WHERE `entry` = 25297; /* Druid - Healing Touch */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.857 WHERE `entry` = 25307; /* Warlock - Shadow Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.611 WHERE `entry` = 25314; /* Priest - Greater Heal */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.303 WHERE `entry` = 25329; /* Priest - Holy Nova Heal */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.161 WHERE `entry` = 25331; /* Priest - Holy Nova Damage */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.611 WHERE `entry` = 25357; /* Shaman - Healing Wave */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 25363; /* Priest - Smite */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 25364; /* Priest - Smite */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 25384; /* Priest - Holy Fire */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.611 WHERE `entry` = 25391; /* Shaman - Healing Wave */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.611 WHERE `entry` = 25396; /* Shaman - Healing Wave */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 25439; /* Shaman - Chain Lightning */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 25442; /* Shaman - Chain Lightning */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 25448; /* Shaman - Lightning Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 25449; /* Shaman - Lightning Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 25457; /* Shaman - Flame Shock */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 25535; /* Shaman - Fire Nova Totem */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 25537; /* Shaman - Fire Nova Totem */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.267 WHERE `entry` = 26363; /* Shaman - Lightning Shield Proc Rank 1 */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.147 WHERE `entry` = 26364; /* Shaman - Lightning Shield Proc Rank 1 */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.227 WHERE `entry` = 26365; /* Shaman - Lightning Shield Proc Rank 1 */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.267 WHERE `entry` = 26366; /* Shaman - Lightning Shield Proc Rank 1 */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.267 WHERE `entry` = 26367; /* Shaman - Lightning Shield Proc Rank 1 */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.267 WHERE `entry` = 26369; /* Shaman - Lightning Shield Proc Rank 1 */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.267 WHERE `entry` = 26370; /* Shaman - Lightning Shield Proc Rank 1 */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.267 WHERE `entry` = 26371; /* Shaman - Lightning Shield Proc Rank 1 */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.267 WHERE `entry` = 26372; /* Shaman - Lightning Shield Proc Rank 1 */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.61 WHERE `entry` = 26978; /* Druid - Healing Touch */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.61 WHERE `entry` = 26979; /* Druid - Healing Touch */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 26984; /* Druid - Wrath */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 26985; /* Druid - Wrath */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.13 WHERE `entry` = 26987; /* Druid - Moonfire */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.13 WHERE `entry` = 26987; /* Druid - Moonfire */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.13 WHERE `entry` = 26988; /* Druid - Moonfire */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.13 WHERE `entry` = 26988; /* Druid - Moonfire */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.1 WHERE `entry` = 26989; /* Druid - Entangling Roots */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.1 WHERE `entry` = 27010; /* Druid - Entangling Roots (Natures Grasp) */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 27080; /* Mage - Arcane Explosion */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 27082; /* Mage - Arcane Explosion */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.193 WHERE `entry` = 27088; /* Mage - Frost Nova */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.193 WHERE `entry` = 27133; /* Mage - Blast Wave */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.857 WHERE `entry` = 27209; /* Warlock - Shadow Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 27223; /* Warlock - Death Coil */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.538 WHERE `entry` = 27259; /* Warlock - Health Funnel */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 27267; /* Pet Warlock - Firebolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.161 WHERE `entry` = 27799; /* Priest - Holy Nova Damage */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.161 WHERE `entry` = 27800; /* Priest - Holy Nova Damage */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.161 WHERE `entry` = 27801; /* Priest - Holy Nova Damage */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.303 WHERE `entry` = 27803; /* Priest - Holy Nova Heal */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.303 WHERE `entry` = 27804; /* Priest - Holy Nova Heal */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.303 WHERE `entry` = 27805; /* Priest - Holy Nova Heal */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 29228; /* Shaman - Flame Shock */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 29722; /* Warlock - Incinerate */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.193 WHERE `entry` = 30283; /* Warlock - Shadowfury */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.193 WHERE `entry` = 30413; /* Warlock - Shadowfury */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.193 WHERE `entry` = 30414; /* Warlock - Shadowfury */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 30451; /* Mage - Arcane Blast */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.193 WHERE `entry` = 31661; /* Mage - Dragons Breath */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 32231; /* Warlock - Incinerate */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.193 WHERE `entry` = 33041; /* Mage - Dragons Breath */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.193 WHERE `entry` = 33042; /* Mage - Dragons Breath */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.193 WHERE `entry` = 33043; /* Mage - Dragons Breath */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.193 WHERE `entry` = 33933; /* Mage - Blast Wave */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.402 WHERE `entry` = 34861; /* Priest - Circle of Healing */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.402 WHERE `entry` = 34863; /* Priest - Circle of Healing */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.402 WHERE `entry` = 34864; /* Priest - Circle of Healing */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.402 WHERE `entry` = 34865; /* Priest - Circle of Healing */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.402 WHERE `entry` = 34866; /* Priest - Circle of Healing */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.286 WHERE `entry` = 42218; /* Warlock - Rain of Fire Triggered Rank 1 */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.286 WHERE `entry` = 42223; /* Warlock - Rain of Fire Triggered Rank 1 */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.286 WHERE `entry` = 42224; /* Warlock - Rain of Fire Triggered Rank 1 */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.286 WHERE `entry` = 42225; /* Warlock - Rain of Fire Triggered Rank 1 */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.286 WHERE `entry` = 42226; /* Warlock - Rain of Fire Triggered Rank 1 */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.286 WHERE `entry` = 42227; /* Pet Warlock - Rain of Fire */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 42894; /* Mage - Arcane Blast */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 42896; /* Mage - Arcane Blast */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 42897; /* Mage - Arcane Blast */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.193 WHERE `entry` = 42917; /* Mage - Frost Nova */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 42920; /* Mage - Arcane Explosion */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 42921; /* Mage - Arcane Explosion */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.193 WHERE `entry` = 42944; /* Mage - Blast Wave */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.193 WHERE `entry` = 42945; /* Mage - Blast Wave */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.193 WHERE `entry` = 42949; /* Mage - Dragons Breath */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.193 WHERE `entry` = 42950; /* Mage - Dragons Breath */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.538 WHERE `entry` = 44203; /* Druid - Tranquility Triggered */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.538 WHERE `entry` = 44205; /* Druid - Tranquility Triggered */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.538 WHERE `entry` = 44206; /* Druid - Tranquility Triggered */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.538 WHERE `entry` = 44207; /* Druid - Tranquility Triggered */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.538 WHERE `entry` = 44208; /* Druid - Tranquility Triggered */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 44425; /* Mage - Arcane Barrage */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.4 WHERE `entry` = 44461; /* Mage - Living Bomb DD */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.857 WHERE `entry` = 44614; /* Mage - Frostfire Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 44780; /* Mage - Arcane Barrage */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 44781; /* Mage - Arcane Barrage */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.857 WHERE `entry` = 47610; /* Mage - Frostfire Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.857 WHERE `entry` = 47808; /* Warlock - Shadow Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.857 WHERE `entry` = 47809; /* Warlock - Shadow Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.286 WHERE `entry` = 47817; /* Warlock - Rain of Fire Triggered Rank 1 */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.286 WHERE `entry` = 47818; /* Warlock - Rain of Fire Triggered Rank 1 */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 47837; /* Warlock - Incinerate */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 47838; /* Warlock - Incinerate */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.193 WHERE `entry` = 47846; /* Warlock - Shadowfury */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.193 WHERE `entry` = 47847; /* Warlock - Shadowfury */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.538 WHERE `entry` = 47856; /* Warlock - Health Funnel */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 47859; /* Warlock - Death Coil */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 47860; /* Warlock - Death Coil */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 47964; /* Pet Warlock - Firebolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.611 WHERE `entry` = 48062; /* Priest - Greater Heal */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.611 WHERE `entry` = 48063; /* Priest - Greater Heal */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.303 WHERE `entry` = 48075; /* Priest - Holy Nova Heal */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.303 WHERE `entry` = 48076; /* Priest - Holy Nova Heal */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.161 WHERE `entry` = 48077; /* Priest - Holy Nova Damage */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.161 WHERE `entry` = 48078; /* Priest - Holy Nova Damage */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.402 WHERE `entry` = 48088; /* Priest - Circle of Healing */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.402 WHERE `entry` = 48089; /* Priest - Circle of Healing */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 48122; /* Priest - Smite */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 48123; /* Priest - Smite */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 48134; /* Priest - Holy Fire */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 48135; /* Priest - Holy Fire */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.61 WHERE `entry` = 48377; /* Druid - Healing Touch */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.61 WHERE `entry` = 48378; /* Druid - Healing Touch */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.115 WHERE `entry` = 48438; /* Druid - Wild Growth */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.538 WHERE `entry` = 48444; /* Druid - Tranquility Triggered */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.538 WHERE `entry` = 48445; /* Druid - Tranquility Triggered */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 48459; /* Druid - Wrath */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 48461; /* Druid - Wrath */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.13 WHERE `entry` = 48462; /* Druid - Moonfire */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.13 WHERE `entry` = 48462; /* Druid - Moonfire */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.13 WHERE `entry` = 48463; /* Druid - Moonfire */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.13 WHERE `entry` = 48463; /* Druid - Moonfire */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 49232; /* Shaman - Flame Shock */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 49233; /* Shaman - Flame Shock */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 49237; /* Shaman - Lightning Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 49238; /* Shaman - Lightning Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 49270; /* Shaman - Chain Lightning */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 49271; /* Shaman - Chain Lightning */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.611 WHERE `entry` = 49272; /* Shaman - Healing Wave */
UPDATE `spell_bonus_data` SET `direct_bonus` = 1.611 WHERE `entry` = 49273; /* Shaman - Healing Wave */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.267 WHERE `entry` = 49278; /* Shaman - Lightning Shield Proc Rank 1 */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.267 WHERE `entry` = 49279; /* Shaman - Lightning Shield Proc Rank 1 */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.672 WHERE `entry` = 50464; /* Druid - Nourish */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 50796; /* Warlock - Chaos Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 51505; /* Shaman - Lava Burst */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.453 WHERE `entry` = 51963; /* Pet Death Knight, Gargoyle Strike */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.193 WHERE `entry` = 53227; /* Druid - Typhoon */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.115 WHERE `entry` = 53248; /* Druid - Wild Growth */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.115 WHERE `entry` = 53249; /* Druid - Wild Growth */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.115 WHERE `entry` = 53251; /* Druid - Wild Growth */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.1 WHERE `entry` = 53308; /* Druid - Entangling Roots */
UPDATE `spell_bonus_data` SET `dot_bonus` = 0.1 WHERE `entry` = 53313; /* Druid - Entangling Roots (Natures Grasp) */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.4 WHERE `entry` = 55361; /* Mage - Living Bomb DD */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.4 WHERE `entry` = 55362; /* Mage - Living Bomb DD */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 59170; /* Warlock - Chaos Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 59171; /* Warlock - Chaos Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.714 WHERE `entry` = 59172; /* Warlock - Chaos Bolt */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.15 WHERE `entry` = 59637; /* Pet Mage - Mirror Image Fireblast */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.571 WHERE `entry` = 60043; /* Shaman - Lava Burst */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.402 WHERE `entry` = 61295; /* Shaman - Riptide */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.402 WHERE `entry` = 61299; /* Shaman - Riptide */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.402 WHERE `entry` = 61300; /* Shaman - Riptide */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.402 WHERE `entry` = 61301; /* Shaman - Riptide */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.193 WHERE `entry` = 61387; /* Druid - Typhoon */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.193 WHERE `entry` = 61388; /* Druid - Typhoon */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.193 WHERE `entry` = 61390; /* Druid - Typhoon */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.193 WHERE `entry` = 61391; /* Druid - Typhoon */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 61650; /* Shaman - Fire Nova Totem */
UPDATE `spell_bonus_data` SET `direct_bonus` = 0.214 WHERE `entry` = 61654; /* Shaman - Fire Nova Totem */

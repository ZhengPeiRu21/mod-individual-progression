-- Alter AzerothCore table to support Vanilla negative resistance values
ALTER TABLE item_template MODIFY fire_res SMALLINT;
ALTER TABLE item_template MODIFY holy_res SMALLINT;
ALTER TABLE item_template MODIFY nature_res SMALLINT;
ALTER TABLE item_template MODIFY frost_res SMALLINT;
ALTER TABLE item_template MODIFY shadow_res SMALLINT;
ALTER TABLE item_template MODIFY arcane_res SMALLINT;

-- Restore rep requirement to Mantle of the Dawn
UPDATE item_template SET RequiredReputationFaction=529, RequiredReputationRank=6 WHERE entry IN (18169, 18170, 18171, 18172, 18173);
UPDATE item_template SET RequiredReputationFaction=529, RequiredReputationRank=7 WHERE entry=18182;

/*  Martin Fury  */
UPDATE `item_template` SET `spellcooldown_2` = -1, `spellcategorycooldown_2` = -1, `spellcooldown_3` = -1, `spellcategorycooldown_3` = -1, `spellcooldown_4` = -1, `spellcategorycooldown_4` = -1, `spellcooldown_5` = -1, `spellcategorycooldown_5` = -1 WHERE entry=17;

/*  Axe of the Deep Woods  */
UPDATE `item_template` SET `spellppmrate_1` = 0.8 WHERE entry=811;

/*  Lifestone  */
UPDATE `item_template` SET `spellid_1` = 17712, `spellcooldown_1` = 1800000, `spellcategorycooldown_1` = 0, `spellid_3` = 0, `spellcooldown_3` = -1, `spellcategorycooldown_3` = -1 WHERE entry=833;

/*  Knightly Longsword  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=864;

/*  Monk's Staff  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=866;

/*  Flurry Axe  */
UPDATE `item_template` SET `spellppmrate_1` = 1.8 WHERE entry=871;

/*  Rockslicer  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 36.0, `dmg_max1` = 55.0, `stat_value1` = 7, `DisenchantID` = 23 WHERE entry=872;

/*  Staff of Jordan  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `spelltrigger_3` = 0, `spelltrigger_4` = 0, `spelltrigger_5` = 0 WHERE entry=873;

/*  Worn Wooden Buckler  */
UPDATE `item_template` SET `Quality` = 0 WHERE entry=876;

/*  Naga Battle Gloves  */
UPDATE `item_template` SET `stat_type1` = 6 WHERE entry=888;

/*  Madwolf Bracers  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=897;

/*  Freezing Band  */
UPDATE `item_template` SET `spellid_1` = 9308 WHERE entry=942;

/*  Elemental Mage Staff  */
UPDATE `item_template` SET `spellid_1` = 17873, `spellid_2` = 17897 WHERE entry=944;

/*  Fire Sword of Crippling  */
UPDATE `item_template` SET `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0, `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0, `spellcooldown_4` = 0, `spellcategorycooldown_4` = 0 WHERE entry=997;

/*  Well-used Sword  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=1008;

/*  Compact Hammer  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=1009;

/*  Gnarled Short Staff  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=1010;

/*  Sharp Axe  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=1011;

/*  Plate Helmet D2 (test)  */
UPDATE `item_template` SET `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0, `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0, `spellcooldown_4` = 0, `spellcategorycooldown_4` = 0 WHERE entry=1024;

/*  Mail Helmet A (Test)  */
UPDATE `item_template` SET `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0, `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0, `spellcooldown_4` = 0, `spellcategorycooldown_4` = 0 WHERE entry=1027;

/*  Defias Renegade Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=1076;

/*  Rod of the Sleepwalker  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=1155;

/*  Lavishly Jeweled Ring  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_value1` = 2, `stat_type2` = 5, `stat_value2` = 6 WHERE entry=1156;

/*  Dented Buckler  */
UPDATE `item_template` SET `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0, `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0, `spellcooldown_4` = 0, `spellcategorycooldown_4` = 0 WHERE entry=1166;

/*  Small Targe  */
UPDATE `item_template` SET `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0, `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0, `spellcooldown_4` = 0, `spellcategorycooldown_4` = 0 WHERE entry=1167;

/*  Overseer's Ring  */
UPDATE `item_template` SET `DisenchantID` = 0, `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0, `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0, `spellcooldown_4` = 0, `spellcategorycooldown_4` = 0 WHERE entry=1189;

/*  Banded Buckler  */
UPDATE `item_template` SET `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0, `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0, `spellcooldown_4` = 0, `spellcategorycooldown_4` = 0 WHERE entry=1193;

/*  Bind On Use Test Item  */
UPDATE `item_template` SET `spellid_1` = 133, `spellcooldown_1` = 30000, `spellcategorycooldown_1` = 30000, `spellcategory_1` = 24 WHERE entry=1258;

/*  JYoo test item  */
UPDATE `item_template` SET `dmg_min1` = 1.0, `dmg_max1` = 1.0, `dmg_min2` = 3000.0, `dmg_max2` = 3000.0 WHERE entry=1259;

/*  Cloaked Hood  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=1280;

/*  Sparkmetal Coif  */
UPDATE `item_template` SET `stat_type2` = 6, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=1282;

/*  Riding Gloves  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_type2` = 5, `stat_value2` = 3, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=1304;

/*  Ring of Iron Will  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=1319;

/*  Thistlewood Axe  */
UPDATE `item_template` SET `dmg_min1` = 7.0, `dmg_max1` = 11.0, `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0, `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0, `spellcooldown_4` = 0, `spellcategorycooldown_4` = 0 WHERE entry=1386;

/*  Warrior's Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=1438;

/*  Jeweled Amulet of Cainwyn  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=1443;

/*  Minor Channeling Ring  */
UPDATE `item_template` SET `stat_type2` = 6, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=1449;

/*  Ring of the Shadow  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=1462;

/*  Witching Stave  */
UPDATE `item_template` SET `spellid_1` = 9412 WHERE entry=1484;

/*  Gloomshroud Armor  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_type2` = 4 WHERE entry=1489;

/*  Ring of Precision  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=1491;

/*  Engineering Gloves  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_type2` = 5, `stat_value2` = 8, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=1659;

/*  Necklace of Calisea  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=1714;

/*  Polished Jazeraint Armor  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_type3` = 4, `stat_value3` = 9 WHERE entry=1715;

/*  Basilisk Hide Pants  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=1718;

/*  Tanglewood Staff  */
UPDATE `item_template` SET `spellid_1` = 9411 WHERE entry=1720;

/*  Lucky Trousers  */
UPDATE `item_template` SET `stat_type2` = 3, `stat_value2` = 2, `stat_type3` = 6, `stat_value3` = 3, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=1832;

/*  Silk-threaded Trousers  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_type2` = 6, `stat_value2` = 3, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=1929;

/*  Buzz Saw  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 17.0, `dmg_max1` = 33.0, `stat_value1` = 2, `stat_value2` = 2, `DisenchantID` = 23 WHERE entry=1937;

/*  Mindthrust Bracers  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=1974;

/*  Underworld Band  */
UPDATE `item_template` SET `spellid_1` = 9414 WHERE entry=1980;

/*  Swampchill Fetish  */
UPDATE `item_template` SET `spellid_1` = 9402, `spellid_2` = 9412 WHERE entry=1992;

/*  Bloodscalp Channeling Staff  */
UPDATE `item_template` SET `spellid_1` = 9359 WHERE entry=1998;

/*  Ring of Forlorn Spirits  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 2, `stat_type2` = 6, `stat_value2` = 7, `DisenchantID` = 5, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=2043;

/*  Crescent of Forlorn Spirits  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 20.0, `dmg_max1` = 38.0, `stat_type1` = 6, `stat_value1` = 6, `DisenchantID` = 25 WHERE entry=2044;

/*  Magician Staff  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=2077;

/*  Double-barreled Shotgun  */
UPDATE `item_template` SET `dmg_min1` = 21.0, `dmg_max1` = 40.0 WHERE entry=2098;

/*  Dwarven Hand Cannon  */
UPDATE `item_template` SET `dmg_min1` = 66.0, `dmg_max1` = 124.0 WHERE entry=2099;

/*  Precisely Calibrated Boomstick  */
UPDATE `item_template` SET `dmg_min1` = 38.0, `dmg_max1` = 45.0 WHERE entry=2100;

/*  Scratched Claymore  */
UPDATE `item_template` SET `dmg_max1` = 7.0 WHERE entry=2128;

/*  Foreman's Leggings  */
UPDATE `item_template` SET `stat_type3` = 6 WHERE entry=2166;

/*  Foreman's Gloves  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 5, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=2167;

/*  Buzzer Blade  */
UPDATE `item_template` SET `Quality` = 1, `dmg_min1` = 10.0, `dmg_max1` = 19.0, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=2169;

/*  Inferno Robe  */
UPDATE `item_template` SET `spellid_1` = 17747 WHERE entry=2231;

/*  Nightwalker Armor  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 9, `stat_type2` = 7, `stat_value2` = 4, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=2234;

/*  Militia Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=2249;

/*  Mantle of Thieves  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=2264;

/*  Necromancer Leggings  */
UPDATE `item_template` SET `spellid_1` = 7709 WHERE entry=2277;

/*  Kam's Walking Stick  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 41.0, `dmg_max1` = 62.0, `bonding` = 2, `stat_type1` = 3, `stat_value1` = 3, `stat_type2` = 5, `stat_value2` = 8, `DisenchantID` = 24, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=2280;

/*  Fine Leather Boots  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=2307;

/*  Embossed Leather Boots  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=2309;

/*  Embossed Leather Cloak  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=2310;

/*  White Leather Jerkin  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=2311;

/*  Fine Leather Gloves  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=2312;

/*  Toughened Leather Armor  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=2314;

/*  Dark Leather Boots  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=2315;

/*  Dark Leather Cloak  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 0 WHERE entry=2316;

/*  Round Buckler  */
UPDATE `item_template` SET `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0, `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0, `spellcooldown_4` = 0, `spellcategorycooldown_4` = 0 WHERE entry=2377;

/*  Ringed Buckler  */
UPDATE `item_template` SET `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0, `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0, `spellcooldown_4` = 0, `spellcategorycooldown_4` = 0 WHERE entry=2441;

/*  Reinforced Targe  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=2442;

/*  Metal Buckler  */
UPDATE `item_template` SET `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0, `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0, `spellcooldown_4` = 0, `spellcategorycooldown_4` = 0 WHERE entry=2443;

/*  Ornate Buckler  */
UPDATE `item_template` SET `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0, `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0, `spellcooldown_4` = 0, `spellcategorycooldown_4` = 0 WHERE entry=2444;

/*  Peon Sword  */
UPDATE `item_template` SET `dmg_min1` = 2.0, `dmg_max1` = 5.0 WHERE entry=2481;

/*  Rough Broad Axe  */
UPDATE `item_template` SET `dmg_max1` = 6.0 WHERE entry=2483;

/*  Splintered Board  */
UPDATE `item_template` SET `dmg_max1` = 3.0 WHERE entry=2485;

/*  Large Stone Mace  */
UPDATE `item_template` SET `dmg_min1` = 4.0 WHERE entry=2486;

/*  Acolyte Staff  */
UPDATE `item_template` SET `dmg_min1` = 4.0, `dmg_max1` = 6.0 WHERE entry=2487;

/*  Raider Shortsword  */
UPDATE `item_template` SET `dmg_min1` = 5.0, `dmg_max1` = 11.0 WHERE entry=2496;

/*  Rusted Claymore  */
UPDATE `item_template` SET `dmg_min1` = 12.0, `dmg_max1` = 19.0 WHERE entry=2497;

/*  Worn Shortbow  */
UPDATE `item_template` SET `dmg_min1` = 2.0, `dmg_max1` = 5.0 WHERE entry=2504;

/*  Polished Shortbow  */
UPDATE `item_template` SET `dmg_min1` = 2.0, `dmg_max1` = 5.0 WHERE entry=2505;

/*  Hornwood Recurve Bow  */
UPDATE `item_template` SET `dmg_min1` = 3.0, `dmg_max1` = 7.0 WHERE entry=2506;

/*  Laminated Recurve Bow  */
UPDATE `item_template` SET `dmg_min1` = 10.0, `dmg_max1` = 20.0 WHERE entry=2507;

/*  Old Blunderbuss  */
UPDATE `item_template` SET `dmg_min1` = 2.0, `dmg_max1` = 5.0 WHERE entry=2508;

/*  Ornate Blunderbuss  */
UPDATE `item_template` SET `dmg_min1` = 4.0, `dmg_max1` = 9.0 WHERE entry=2509;

/*  Solid Blunderbuss  */
UPDATE `item_template` SET `dmg_min1` = 3.0, `dmg_max1` = 6.0 WHERE entry=2510;

/*  Hunter's Boomstick  */
UPDATE `item_template` SET `dmg_min1` = 7.0, `dmg_max1` = 14.0 WHERE entry=2511;

/*  Staff of the Shade  */
UPDATE `item_template` SET `spellid_1` = 9328 WHERE entry=2549;

/*  Elven Spirit Claws  */
UPDATE `item_template` SET `spellid_1` = 9361 WHERE entry=2564;

/*  Rod of Molten Fire  */
UPDATE `item_template` SET `spellid_1` = 9400 WHERE entry=2565;

/*  Linen Boots  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 0 WHERE entry=2569;

/*  Reinforced Linen Cape  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=2580;

/*  Green Woolen Vest  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 0 WHERE entry=2582;

/*  Woolen Boots  */
UPDATE `item_template` SET `stat_type3` = 3, `stat_value3` = 2, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=2583;

/*  Burning Robes  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=2617;

/*  Thinking Cap  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=2624;

/*  Spinner Fang  */
UPDATE `item_template` SET `dmg_min1` = 9.0, `dmg_max1` = 18.0 WHERE entry=2664;

/*  Cracked Shortbow  */
UPDATE `item_template` SET `dmg_min1` = 3.0, `dmg_max1` = 6.0 WHERE entry=2773;

/*  Rust-covered Blunderbuss  */
UPDATE `item_template` SET `dmg_min1` = 3.0, `dmg_max1` = 6.0 WHERE entry=2774;

/*  Feeble Shortbow  */
UPDATE `item_template` SET `dmg_min1` = 4.0, `dmg_max1` = 8.0 WHERE entry=2777;

/*  Cheap Blunderbuss  */
UPDATE `item_template` SET `dmg_min1` = 5.0, `dmg_max1` = 9.0 WHERE entry=2778;

/*  Light Hunting Bow  */
UPDATE `item_template` SET `dmg_min1` = 5.0, `dmg_max1` = 10.0 WHERE entry=2780;

/*  Dirty Blunderbuss  */
UPDATE `item_template` SET `dmg_min1` = 6.0, `dmg_max1` = 12.0 WHERE entry=2781;

/*  Mishandled Recurve Bow  */
UPDATE `item_template` SET `dmg_min1` = 9.0, `dmg_max1` = 18.0 WHERE entry=2782;

/*  Shoddy Blunderbuss  */
UPDATE `item_template` SET `dmg_min1` = 7.0, `dmg_max1` = 14.0 WHERE entry=2783;

/*  Stiff Recurve Bow  */
UPDATE `item_template` SET `dmg_min1` = 13.0, `dmg_max1` = 25.0 WHERE entry=2785;

/*  Oiled Blunderbuss  */
UPDATE `item_template` SET `dmg_min1` = 9.0, `dmg_max1` = 19.0 WHERE entry=2786;

/*  Yeti Fur Cloak  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=2805;

/*  Death Speaker Scepter  */
UPDATE `item_template` SET `dmg_min1` = 33.0, `dmg_max1` = 63.0, `spellid_1` = 7679, `spellid_2` = 7708, `RequiredLevel` = 28 WHERE entry=2816;

/*  Hurricane  */
UPDATE `item_template` SET `dmg_min1` = 34.0, `dmg_max1` = 63.0 WHERE entry=2824;

/*  Bow of Searing Arrows  */
UPDATE `item_template` SET `dmg_min1` = 47.0, `dmg_max1` = 88.0 WHERE entry=2825;

/*  Bronze Mace  */
UPDATE `item_template` SET `Quality` = 1, `dmg_min1` = 18.0, `dmg_max1` = 34.0, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=2848;

/*  Bronze Axe  */
UPDATE `item_template` SET `Quality` = 1, `dmg_min1` = 15.0, `dmg_max1` = 29.0, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=2849;

/*  Bronze Shortsword  */
UPDATE `item_template` SET `Quality` = 1, `dmg_min1` = 16.0, `dmg_max1` = 31.0, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=2850;

/*  Runed Copper Bracers  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=2854;

/*  Runed Copper Belt  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 0 WHERE entry=2857;

/*  Rough Bronze Leggings  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=2865;

/*  Rough Bronze Cuirass  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 0 WHERE entry=2866;

/*  Rough Bronze Bracers  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=2867;

/*  Silvered Bronze Breastplate  */
UPDATE `item_template` SET `stat_type3` = 6 WHERE entry=2869;

/*  Antipodean Rod  */
UPDATE `item_template` SET `spellid_1` = 7686, `spellid_2` = 7700 WHERE entry=2879;

/*  Daryl's Hunting Bow  */
UPDATE `item_template` SET `dmg_min1` = 9.0, `dmg_max1` = 18.0 WHERE entry=2903;

/*  Daryl's Hunting Rifle  */
UPDATE `item_template` SET `dmg_min1` = 11.0, `dmg_max1` = 21.0 WHERE entry=2904;

/*  Dwarven Tree Chopper  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0, `spellid_1` = 7552 WHERE entry=2907;

/*  Sacred Relic  */
UPDATE `item_template` SET `bonding` = 0, `RequiredLevel` = 5 WHERE entry=2920;

/*  Blessed Relic  */
UPDATE `item_template` SET `bonding` = 0, `RequiredLevel` = 10 WHERE entry=2921;

/*  Spirit Relic  */
UPDATE `item_template` SET `bonding` = 0, `RequiredLevel` = 15 WHERE entry=2922;

/*  Cursed Eye of Paleth  */
UPDATE `item_template` SET `spellid_1` = 7709 WHERE entry=2944;

/*  Icicle Rod  */
UPDATE `item_template` SET `spellid_1` = 7703 WHERE entry=2950;

/*  Watch Master's Cloak  */
UPDATE `item_template` SET `stat_type1` = 7 WHERE entry=2953;

/*  Night Watch Pantaloons  */
UPDATE `item_template` SET `stat_type1` = 7, `stat_value1` = 9, `stat_type2` = 5, `stat_value2` = 8, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=2954;

/*  Relic of the Eye  */
UPDATE `item_template` SET `bonding` = 0, `RequiredLevel` = 5 WHERE entry=3003;

/*  Relic of the Dead  */
UPDATE `item_template` SET `bonding` = 0, `RequiredLevel` = 10 WHERE entry=3004;

/*  Relic of Truth  */
UPDATE `item_template` SET `bonding` = 0, `RequiredLevel` = 15 WHERE entry=3005;

/*  Noble's Robe  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 1, `stat_type3` = 6, `stat_value3` = 3 WHERE entry=3019;

/*  Enduring Cap  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 7 WHERE entry=3020;

/*  Ranger Bow  */
UPDATE `item_template` SET `dmg_min1` = 23.0, `dmg_max1` = 45.0 WHERE entry=3021;

/*  Large Bore Blunderbuss  */
UPDATE `item_template` SET `dmg_min1` = 13.0, `dmg_max1` = 24.0 WHERE entry=3023;

/*  BKP 2700 "Enforcer"  */
UPDATE `item_template` SET `dmg_min1` = 18.0, `dmg_max1` = 34.0 WHERE entry=3024;

/*  BKP 42 "Ultra"  */
UPDATE `item_template` SET `dmg_min1` = 20.0, `dmg_max1` = 38.0 WHERE entry=3025;

/*  Reinforced Bow  */
UPDATE `item_template` SET `dmg_min1` = 11.0, `dmg_max1` = 22.0 WHERE entry=3026;

/*  Heavy Recurve Bow  */
UPDATE `item_template` SET `dmg_min1` = 15.0, `dmg_max1` = 29.0 WHERE entry=3027;

/*  Heavy Shortbow  */
UPDATE `item_template` SET `dmg_min1` = 10.0, `dmg_max1` = 20.0 WHERE entry=3036;

/*  Whipwood Recurve Bow  */
UPDATE `item_template` SET `dmg_min1` = 17.0, `dmg_max1` = 32.0 WHERE entry=3037;

/*  Short Ash Bow  */
UPDATE `item_template` SET `dmg_min1` = 12.0, `dmg_max1` = 23.0 WHERE entry=3039;

/*  Hunter's Muzzle Loader  */
UPDATE `item_template` SET `dmg_min1` = 9.0, `dmg_max1` = 18.0 WHERE entry=3040;

/*  "Mage-Eye" Blunderbuss  */
UPDATE `item_template` SET `dmg_min1` = 24.0, `dmg_max1` = 46.0 WHERE entry=3041;

/*  BKP "Sparrow" Smallbore  */
UPDATE `item_template` SET `dmg_min1` = 15.0, `dmg_max1` = 30.0 WHERE entry=3042;

/*  Smoldering Pants  */
UPDATE `item_template` SET `spellid_1` = 9400 WHERE entry=3073;

/*  Eye of Flame  */
UPDATE `item_template` SET `spellid_1` = 17878 WHERE entry=3075;

/*  Naga Heartpiercer  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 13.0, `dmg_max1` = 25.0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 24 WHERE entry=3078;

/*  Skorn's Rifle  */
UPDATE `item_template` SET `dmg_min1` = 6.0, `dmg_max1` = 13.0 WHERE entry=3079;

/*  Arced War Axe  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 46.0, `dmg_max1` = 70.0, `stat_value1` = 6, `stat_value2` = 6, `DisenchantID` = 24, `RequiredLevel` = 21 WHERE entry=3191;

/*  Brutal War Axe  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=3210;

/*  Wicked Dagger  */
UPDATE `item_template` SET `dmg_min1` = 10.0, `dmg_max1` = 20.0, `bonding` = 2, `stat_type1` = 4, `stat_value1` = 1, `stat_type2` = 3, `stat_value2` = 1, `DisenchantID` = 0 WHERE entry=3222;

/*  Tarantula Silk Sash  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 2, `stat_type2` = 5, `stat_value2` = 5, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=3229;

/*  Black Wolf Bracers  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 5, `DisenchantID` = 4, `RequiredLevel` = 21 WHERE entry=3230;

/*  Aura Proc Damage Sword  */
UPDATE `item_template` SET `spellid_1` = 3742, `spelltrigger_1` = 2 WHERE entry=3278;

/*  Barbaric Cloth Gloves  */
UPDATE `item_template` SET `stat_type3` = 4, `stat_value3` = 1, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=3308;

/*  Barbaric Loincloth  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 3, `stat_type2` = 5, `stat_value2` = 2, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=3309;

/*  Martyr's Chain  */
UPDATE `item_template` SET `stat_type1` = 6 WHERE entry=3416;

/*  Sniper Rifle  */
UPDATE `item_template` SET `dmg_min1` = 56.0, `dmg_max1` = 65.0 WHERE entry=3430;

/*  Ceremonial Tomahawk  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=3443;

/*  Runed Copper Gauntlets  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=3472;

/*  Gemmed Copper Gauntlets  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0 WHERE entry=3474;

/*  Rough Bronze Shoulders  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 0 WHERE entry=3480;

/*  Silvered Bronze Shoulders  */
UPDATE `item_template` SET `stat_type3` = 6 WHERE entry=3481;

/*  Silvered Bronze Boots  */
UPDATE `item_template` SET `stat_type3` = 6 WHERE entry=3482;

/*  Silvered Bronze Gauntlets  */
UPDATE `item_template` SET `stat_type3` = 6 WHERE entry=3483;

/*  Raptor's End  */
UPDATE `item_template` SET `dmg_min1` = 24.0, `dmg_max1` = 46.0 WHERE entry=3493;

/*  Beerstained Gloves  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_type2` = 7, `stat_value2` = 3, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=3565;

/*  Dwarven Fishing Pole  */
UPDATE `item_template` SET `dmg_min1` = 9.0, `dmg_max1` = 19.0 WHERE entry=3567;

/*  Warrior's Buckler  */
UPDATE `item_template` SET `ItemLevel` = 9, `RequiredLevel` = 4 WHERE entry=3648;

/*  Tribal Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=3649;

/*  Battle Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=3650;

/*  Veteran Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=3651;

/*  Hunting Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=3652;

/*  Ceremonial Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=3653;

/*  Brackwater Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=3654;

/*  Burnished Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=3655;

/*  Lambent Scale Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=3656;

/*  Hillman's Cloak  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=3719;

/*  Brewing Rod  */
UPDATE `item_template` SET `dmg_min1` = 39.0, `dmg_max1` = 59.0 WHERE entry=3738;

/*  Bow of Plunder  */
UPDATE `item_template` SET `dmg_min1` = 20.0, `dmg_max1` = 39.0 WHERE entry=3742;

/*  Feline Mantle  */
UPDATE `item_template` SET `ItemLevel` = 28, `stat_value1` = 10, `stat_value2` = 3, `stat_type3` = 3, `stat_value3` = 2, `spellid_1` = 0, `spelltrigger_1` = 0, `RequiredLevel` = 23 WHERE entry=3748;

/*  Grunt Vest  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 5, `stat_type2` = 6, `stat_value2` = 4, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=3752;

/*  Mantis Boots  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 3, `stat_type2` = 6, `stat_value2` = 7, `stat_type3` = 3, `stat_value3` = 2, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=3764;

/*  Taut Compound Bow  */
UPDATE `item_template` SET `dmg_min1` = 13.0, `dmg_max1` = 25.0 WHERE entry=3778;

/*  Long-barreled Musket  */
UPDATE `item_template` SET `dmg_min1` = 14.0, `dmg_max1` = 27.0 WHERE entry=3780;

/*  Green Iron Bracers  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=3835;

/*  Golden Scale Coif  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=3837;

/*  Golden Scale Shoulders  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=3841;

/*  Golden Scale Leggings  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=3843;

/*  Golden Scale Cuirass  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=3845;

/*  Golden Scale Boots  */
UPDATE `item_template` SET `stat_value1` = 8, `stat_type2` = 6, `stat_value2` = 8, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=3847;

/*  Hardened Iron Shortsword  */
UPDATE `item_template` SET `dmg_min1` = 21.0, `dmg_max1` = 39.0, `stat_type1` = 7, `stat_value1` = 5 WHERE entry=3849;

/*  Golden Iron Destroyer  */
UPDATE `item_template` SET `dmg_min1` = 50.0, `dmg_max1` = 76.0 WHERE entry=3852;

/*  Moonsteel Broadsword  */
UPDATE `item_template` SET `stat_type1` = 7, `stat_value1` = 4, `stat_type2` = 6, `stat_value2` = 12, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=3853;

/*  TEST Legendary  */
UPDATE `item_template` SET `dmg_min1` = 16.0, `dmg_max1` = 31.0 WHERE entry=3895;

/*  Balanced Long Bow  */
UPDATE `item_template` SET `dmg_min1` = 15.0, `dmg_max1` = 29.0 WHERE entry=4025;

/*  Sentinel Musket  */
UPDATE `item_template` SET `dmg_min1` = 22.0, `dmg_max1` = 43.0 WHERE entry=4026;

/*  Aurora Gloves  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_type2` = 5, `stat_value2` = 8, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=4042;

/*  Emblazoned Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=4064;

/*  Combat Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=4065;

/*  Insignia Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=4066;

/*  Glyphed Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=4067;

/*  Chief Brigadier Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=4068;

/*  Blackforge Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=4069;

/*  Jouster's Crest  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=4070;

/*  Flash Rifle  */
UPDATE `item_template` SET `dmg_min1` = 19.0, `dmg_max1` = 36.0 WHERE entry=4086;

/*  Trueshot Bow  */
UPDATE `item_template` SET `dmg_min1` = 24.0, `dmg_max1` = 45.0 WHERE entry=4087;

/*  Ricochet Blunderbuss  */
UPDATE `item_template` SET `dmg_min1` = 36.0, `dmg_max1` = 67.0 WHERE entry=4089;

/*  Choker of the High Shaman  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=4112;

/*  Grom'gol Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=4115;

/*  Scorching Sash  */
UPDATE `item_template` SET `spellid_1` = 9400 WHERE entry=4117;

/*  Robe of Crystal Waters  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 8, `stat_type2` = 6, `stat_value2` = 9, `stat_value3` = 10, `DisenchantID` = 6 WHERE entry=4120;

/*  Gemmed Gloves  */
UPDATE `item_template` SET `stat_type2` = 3, `stat_value2` = 5, `stat_type3` = 5, `stat_value3` = 6, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=4121;

/*  Shrapnel Blaster  */
UPDATE `item_template` SET `dmg_min1` = 23.0, `dmg_max1` = 43.0 WHERE entry=4127;

/*  Nimboya's Mystical Staff  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 65.0, `dmg_max1` = 99.0, `DisenchantID` = 28, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=4134;

/*  Bloodbone Band  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=4135;

/*  Feathered Mantle  */
UPDATE `item_template` SET `DisenchantID` = 0, `RequiredLevel` = 25 WHERE entry=4196;

/*  Embossed Leather Gloves  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=4239;

/*  Embossed Leather Pants  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=4242;

/*  Hillman's Leather Vest  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 4 WHERE entry=4244;

/*  Fine Leather Belt  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=4246;

/*  Hillman's Leather Gloves  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 5 WHERE entry=4247;

/*  Hillman's Belt  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 4 WHERE entry=4250;

/*  Hillman's Shoulders  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=4251;

/*  Toughened Leather Gloves  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_type3` = 7 WHERE entry=4253;

/*  Barbaric Gloves  */
UPDATE `item_template` SET `stat_value1` = 5, `stat_type2` = 6, `stat_value2` = 4, `stat_type3` = 3, `stat_value3` = 4 WHERE entry=4254;

/*  Green Leather Armor  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=4255;

/*  Guardian Armor  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 9 WHERE entry=4256;

/*  Green Leather Belt  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=4257;

/*  Guardian Belt  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 6 WHERE entry=4258;

/*  Green Leather Bracers  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=4259;

/*  Guardian Leather Bracers  */
UPDATE `item_template` SET `stat_type1` = 5, `stat_value1` = 6 WHERE entry=4260;

/*  Gem-studded Leather Belt  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 6, `spellcooldown_1` = 3600000 WHERE entry=4262;

/*  Barbaric Belt  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 11, `spellcooldown_1` = 3600000 WHERE entry=4264;

/*  Heavy Linen Gloves  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=4307;

/*  Green Linen Bracers  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=4308;

/*  Double-stitched Woolen Shoulders  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=4314;

/*  Reinforced Woolen Shoulders  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 0 WHERE entry=4315;

/*  Phoenix Pants  */
UPDATE `item_template` SET `spellid_1` = 7689 WHERE entry=4317;

/*  Azure Silk Gloves  */
UPDATE `item_template` SET `spellid_1` = 7703 WHERE entry=4319;

/*  Spidersilk Boots  */
UPDATE `item_template` SET `ItemLevel` = 25, `stat_type1` = 6, `stat_value1` = 7, `RequiredLevel` = 20 WHERE entry=4320;

/*  Spider Silk Slippers  */
UPDATE `item_template` SET `stat_type2` = 3, `stat_value2` = 3, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=4321;

/*  Shadow Hood  */
UPDATE `item_template` SET `spellid_1` = 7708 WHERE entry=4323;

/*  Azure Silk Vest  */
UPDATE `item_template` SET `spellid_1` = 7701 WHERE entry=4324;

/*  Icy Cloak  */
UPDATE `item_template` SET `frost_res` = 11, `stat_type1` = 6, `stat_value1` = 6, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=4327;

/*  Phoenix Gloves  */
UPDATE `item_template` SET `spellid_1` = 7688 WHERE entry=4331;

/*  Brown Linen Pants  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=4343;

/*  Rough Boomstick  */
UPDATE `item_template` SET `dmg_min1` = 6.0, `dmg_max1` = 13.0 WHERE entry=4362;

/*  Deadly Blunderbuss  */
UPDATE `item_template` SET `dmg_min1` = 15.0, `dmg_max1` = 28.0 WHERE entry=4369;

/*  Lovingly Crafted Boomstick  */
UPDATE `item_template` SET `dmg_min1` = 12.0, `dmg_max1` = 23.0 WHERE entry=4372;

/*  Silver-plated Shotgun  */
UPDATE `item_template` SET `dmg_min1` = 19.0, `dmg_max1` = 37.0 WHERE entry=4379;

/*  Moonsight Rifle  */
UPDATE `item_template` SET `dmg_min1` = 14.0, `dmg_max1` = 26.0 WHERE entry=4383;

/*  Craftsman's Monocle  */
UPDATE `item_template` SET `RequiredLevel` = 32 WHERE entry=4393;

/*  Ethereal Talisman  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=4430;

/*  Raptor Hide Harness  */
UPDATE `item_template` SET `stat_value1` = 13, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=4455;

/*  Raptor Hide Belt  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 6 WHERE entry=4456;

/*  Beaded Raptor Collar  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_type2` = 7, `stat_value2` = 6, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=4463;

/*  Ravenwood Bow  */
UPDATE `item_template` SET `dmg_min1` = 17.0, `dmg_max1` = 32.0 WHERE entry=4474;

/*  Beastwalker Robe  */
UPDATE `item_template` SET `stat_type2` = 3, `stat_value2` = 3, `stat_type3` = 6, `stat_value3` = 6, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=4476;

/*  Nefarious Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=4477;

/*  Pit Fighter's Shield  */
UPDATE `item_template` SET `Quality` = 2, `stat_value2` = 3, `DisenchantID` = 27 WHERE entry=4507;

/*  Blood-tinged Armor  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 5, `stat_value2` = 15, `DisenchantID` = 7 WHERE entry=4508;

/*  Ironforge Memorial Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=4535;

/*  Gnomish Zapper  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=4547;

/*  Servomechanic Sledgehammer  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0, `spellid_1` = 7560 WHERE entry=4548;

/*  Seafire Band  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=4549;

/*  Coldwater Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=4550;

/*  Light Bow  */
UPDATE `item_template` SET `dmg_min1` = 9.0, `dmg_max1` = 18.0 WHERE entry=4576;

/*  Compact Shotgun  */
UPDATE `item_template` SET `dmg_min1` = 7.0, `dmg_max1` = 14.0 WHERE entry=4577;

/*  Walking Boots  */
UPDATE `item_template` SET `stat_type2` = 3 WHERE entry=4660;

/*  Pulsating Crystalline Shard  */
UPDATE `item_template` SET `Quality` = 2, `DisenchantID` = 8, `spellid_1` = 0, `spelltrigger_1` = 0, `spellcooldown_1` = -1 WHERE entry=4743;

/*  Blackwood Recurve Bow  */
UPDATE `item_template` SET `dmg_min1` = 7.0, `dmg_max1` = 14.0 WHERE entry=4763;

/*  Coppercloth Gloves  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 3, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=4767;

/*  Test Wand JChow  */
UPDATE `item_template` SET `dmg_min1` = 11.0, `dmg_max1` = 21.0, `spellcooldown_1` = -1 WHERE entry=4912;

/*  Hickory Shortbow  */
UPDATE `item_template` SET `dmg_min1` = 5.0, `dmg_max1` = 10.0 WHERE entry=4931;

/*  Test Totem  */
UPDATE `item_template` SET `spellid_1` = 4975, `spellcharges_1` = -1 WHERE entry=4956;

/*  Bloodhoof Hand Axe  */
UPDATE `item_template` SET `dmg_min1` = 8.0, `dmg_max1` = 16.0 WHERE entry=4965;

/*  Vigilant Buckler  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 7, `DisenchantID` = 26 WHERE entry=4975;

/*  Test Proc Wand  */
UPDATE `item_template` SET `spellid_1` = 2607, `spelltrigger_1` = 2, `spellcharges_1` = -1, `spellcooldown_1` = 0 WHERE entry=4985;

/*  Burning Obsidian Band  */
UPDATE `item_template` SET `DisenchantID` = 0, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=4988;

/*  Mage Dragon Robe  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 7, `stat_type2` = 6, `stat_value2` = 18, `DisenchantID` = 0 WHERE entry=4989;

/*  Scorched Bands  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=4990;

/*  Blood Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=4998;

/*  Azora's Will  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=4999;

/*  Coral Band  */
UPDATE `item_template` SET `stat_type1` = 7, `stat_value1` = 4, `stat_type2` = 5, `stat_value2` = 3, `DisenchantID` = 0 WHERE entry=5000;

/*  Heart Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=5001;

/*  Glowing Green Talisman  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5002;

/*  Crystal Starfire Medallion  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5003;

/*  Mark of the Kirin Tor  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=5004;

/*  Quicksilver Ring  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=5008;

/*  Inscribed Gold Ring  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=5010;

/*  Artisan's Trousers  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_type2` = 6, `stat_value2` = 9, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=5016;

/*  Lord Sakrasis' Scepter  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=5028;

/*  Talisman of the Naga Lord  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5029;

/*  Fire Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5069;

/*  Shadow Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5071;

/*  Charred Razormane Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5092;

/*  Razormane War Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=5094;

/*  Necklace of Harmony  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5180;

/*  Pulsating Hydra Heart  */
UPDATE `item_template` SET `spellid_1` = 7687 WHERE entry=5183;

/*  Rhahk'Zor's Hammer  */
UPDATE `item_template` SET `Quality` = 1, `dmg_min1` = 30.0, `dmg_max1` = 46.0, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=5187;

/*  Thief's Blade  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 13.0, `dmg_max1` = 25.0, `stat_value1` = 3, `DisenchantID` = 23 WHERE entry=5192;

/*  Gold-flecked Gloves  */
UPDATE `item_template` SET `Quality` = 2, `stat_type1` = 4, `stat_value1` = 4, `stat_type2` = 5, `stat_value2` = 3, `DisenchantID` = 3, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=5195;

/*  Smite's Reaver  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 14.0, `dmg_max1` = 28.0, `stat_type2` = 6, `stat_value2` = 1, `stat_value3` = 1, `DisenchantID` = 23 WHERE entry=5196;

/*  Cookie's Tenderizer  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 20.0, `dmg_max1` = 39.0, `stat_value1` = 3, `DisenchantID` = 23 WHERE entry=5197;

/*  Cookie's Stirring Rod  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5198;

/*  Smelting Pants  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 5, `stat_type2` = 6, `stat_value2` = 4, `DisenchantID` = 3 WHERE entry=5199;

/*  Impaling Harpoon  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 27.0, `dmg_max1` = 42.0, `stat_value1` = 7, `DisenchantID` = 23 WHERE entry=5200;

/*  Opaque Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5207;

/*  Smoldering Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5208;

/*  Gloom Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5209;

/*  Burning Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5210;

/*  Dusk Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5211;

/*  Blazing Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5212;

/*  Scorching Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5213;

/*  Wand of Eventide  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5214;

/*  Ember Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5215;

/*  Umbral Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5216;

/*  Alchemist's Wand  */
UPDATE `item_template` SET `dmg_min1` = 5.0, `dmg_max1` = 11.0, `bonding` = 1, `RequiredLevel` = 0 WHERE entry=5235;

/*  Combustible Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5236;

/*  Pitchwood Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5238;

/*  Blackbone Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5239;

/*  Torchlight Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5240;

/*  Dwarven Flamestick  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5241;

/*  Cinder Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5242;

/*  Firebelcher  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5243;

/*  Consecrated Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5244;

/*  Summoner's Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5245;

/*  Excavation Rod  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5246;

/*  Rod of Sorrow  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5247;

/*  Flash Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5248;

/*  Burning Sliver  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=5249;

/*  Charred Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5250;

/*  Wand of Decay  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5252;

/*  Goblin Igniter  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5253;

/*  Rugged Spaulders  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=5254;

/*  Quilboar Tomahawk  */
UPDATE `item_template` SET `dmg_min1` = 13.0, `dmg_max1` = 26.0 WHERE entry=5255;

/*  Eye of Adaegus  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=5266;

/*  Scarlet Kris  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=5267;

/*  Privateer Musket  */
UPDATE `item_template` SET `dmg_min1` = 12.0, `dmg_max1` = 24.0 WHERE entry=5309;

/*  Sea Dog Britches  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_type2` = 6, `stat_value2` = 4, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=5310;

/*  Totemic Clan Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=5313;

/*  Flaring Baton  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5326;

/*  Cauldron Stirrer  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=5340;

/*  Orcish Battle Bow  */
UPDATE `item_template` SET `dmg_min1` = 7.0, `dmg_max1` = 14.0 WHERE entry=5346;

/*  Pestilent Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5347;

/*  Bounty Hunter's Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=5351;

/*  Branding Rod  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5356;

/*  Serpent's Shoulders  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=5404;

/*  Boahn's Fang  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=5423;

/*  Runescale Girdle  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 5, `DisenchantID` = 2 WHERE entry=5425;

/*  Miner's Cape  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 3, `DisenchantID` = 2 WHERE entry=5444;

/*  Mana Agate  */
UPDATE `item_template` SET `spellid_1` = 5405, `spellcharges_1` = -1, `spellcooldown_1` = -1, `spellcategorycooldown_1` = 120000, `spellcategory_1` = 1153, `spellid_2` = 0, `spellcharges_2` = 0, `spellcategorycooldown_2` = 0, `spellcategory_2` = 0, `spellcooldown_3` = -1, `spellcategorycooldown_3` = -1, `spellcooldown_4` = -1, `spellcategorycooldown_4` = -1, `RequiredLevel` = 23 WHERE entry=5514;

/*  Iridescent Hammer  */
UPDATE `item_template` SET `dmg_min1` = 18.0, `dmg_max1` = 34.0, `stat_type1` = 4, `stat_type2` = 7, `stat_value2` = 3 WHERE entry=5541;

/*  Fast Test Dagger  */
UPDATE `item_template` SET `dmg_min1` = 10.0, `dmg_max1` = 11.0 WHERE entry=5549;

/*  Fast Test Gun  */
UPDATE `item_template` SET `dmg_min1` = 9.0, `dmg_max1` = 10.0 WHERE entry=5550;

/*  Fast Test 1H Sword  */
UPDATE `item_template` SET `dmg_min1` = 10.0, `dmg_max1` = 11.0 WHERE entry=5555;

/*  Fast Test Wand  */
UPDATE `item_template` SET `dmg_min1` = 10.0, `dmg_max1` = 10.0, `spellcooldown_1` = -1 WHERE entry=5560;

/*  Crag Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5593;

/*  Ashwood Bow  */
UPDATE `item_template` SET `dmg_min1` = 5.0, `dmg_max1` = 11.0 WHERE entry=5596;

/*  Elven Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5604;

/*  Clergy Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=5622;

/*  Circlet of the Order  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=5624;

/*  Barbaric Harness  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 0 WHERE entry=5739;

/*  Gemstone Dagger  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=5742;

/*  Prismstone Ring  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=5743;

/*  Centaur Longbow  */
UPDATE `item_template` SET `dmg_min1` = 9.0, `dmg_max1` = 18.0 WHERE entry=5748;

/*  Wolfpack Medallion  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5754;

/*  Murloc Scale Belt  */
UPDATE `item_template` SET `stat_type2` = 4, `stat_value2` = 2 WHERE entry=5780;

/*  Murloc Scale Breastplate  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 5 WHERE entry=5781;

/*  Thick Murloc Armor  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 9 WHERE entry=5782;

/*  Murloc Scale Bracers  */
UPDATE `item_template` SET `stat_type2` = 4, `stat_value2` = 5 WHERE entry=5783;

/*  Lunaris Bow  */
UPDATE `item_template` SET `dmg_min1` = 23.0, `dmg_max1` = 43.0 WHERE entry=5817;

/*  Moonbeam Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5818;

/*  Sunblaze Coif  */
UPDATE `item_template` SET `stat_type1` = 6 WHERE entry=5819;

/*  Ring of Uber Resists (TEST)  */
UPDATE `item_template` SET `fire_res` = 315, `nature_res` = 315, `frost_res` = 315, `shadow_res` = 315, `arcane_res` = 315, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `stat_type4` = 0, `stat_value4` = 0, `stat_type5` = 0, `stat_value5` = 0, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=5828;

/*  Rift Bracers  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 5, `DisenchantID` = 3 WHERE entry=5943;

/*  Blacksmith Hammer  */
UPDATE `item_template` SET `dmg_min1` = 2.0, `dmg_max1` = 3.0 WHERE entry=5956;

/*  Fine Leather Pants  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 4 WHERE entry=5958;

/*  Guardian Pants  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 8 WHERE entry=5962;

/*  Barbaric Leggings  */
UPDATE `item_template` SET `stat_value1` = 7, `stat_type2` = 6, `stat_value2` = 7, `stat_value3` = 7 WHERE entry=5963;

/*  Barbaric Shoulders  */
UPDATE `item_template` SET `stat_value1` = 6, `stat_type2` = 6, `stat_type3` = 3, `stat_value3` = 5 WHERE entry=5964;

/*  Guardian Cloak  */
UPDATE `item_template` SET `stat_type2` = 5, `stat_value2` = 5 WHERE entry=5965;

/*  Guardian Gloves  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 0 WHERE entry=5966;

/*  Serpent Gloves  */
UPDATE `item_template` SET `Quality` = 2, `stat_type1` = 3, `stat_value1` = 4, `stat_type2` = 5, `stat_value2` = 4, `DisenchantID` = 3, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=5970;

/*  Golden Scale Bracers  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 0 WHERE entry=6040;

/*  Twain Random Sword  */
UPDATE `item_template` SET `dmg_min1` = 50.0, `dmg_max1` = 100.0 WHERE entry=6174;

/*  Dwarven Defender  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=6187;

/*  Kimbra Boots  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_value1` = 4, `stat_type2` = 6, `stat_value2` = 3, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=6191;

/*  Black Widow Band  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=6199;

/*  Heavy Copper Maul  */
UPDATE `item_template` SET `Quality` = 1, `dmg_min1` = 21.0, `dmg_max1` = 32.0, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 0 WHERE entry=6214;

/*  Arclight Spanner  */
UPDATE `item_template` SET `dmg_min1` = 5.0, `dmg_max1` = 8.0 WHERE entry=6219;

/*  Meteor Shard  */
UPDATE `item_template` SET `RequiredLevel` = 24 WHERE entry=6220;

/*  Bloody Apron  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 8, `DisenchantID` = 3 WHERE entry=6226;

/*  Green Woolen Robe  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=6243;

/*  Blue Overalls  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_type2` = 7, `stat_value2` = 4, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=6263;

/*  Sacred Burial Trousers  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 3, `stat_type3` = 6, `stat_value3` = 9, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=6282;

/*  Wolfmaster Cape  */
UPDATE `item_template` SET `Quality` = 2, `stat_type1` = 7, `stat_value1` = 2, `stat_value2` = 4, `DisenchantID` = 4, `RequiredLevel` = 22 WHERE entry=6314;

/*  Steelarrow Crossbow  */
UPDATE `item_template` SET `dmg_min1` = 29.0, `dmg_max1` = 45.0 WHERE entry=6315;

/*  Girdle of the Blindwatcher  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 3, `stat_value2` = 5, `DisenchantID` = 4, `RequiredLevel` = 21 WHERE entry=6319;

/*  Commander's Crest  */
UPDATE `item_template` SET `stat_type1` = 6, `spellcooldown_1` = -1, `RequiredLevel` = 23 WHERE entry=6320;

/*  Silverlaine's Family Seal  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=6321;

/*  Baron's Scepter  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 21.0, `dmg_max1` = 40.0, `stat_value1` = 4, `DisenchantID` = 23, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=6323;

/*  Robes of Arugal  */
UPDATE `item_template` SET `stat_value1` = 10, `stat_type4` = 3, `stat_value4` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `RequiredLevel` = 24 WHERE entry=6324;

/*  Black Pearl Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=6332;

/*  Fenrus' Hide  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 4, `stat_value2` = 2, `DisenchantID` = 4, `RequiredLevel` = 21 WHERE entry=6340;

/*  Eerie Stable Lantern  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 3, `DisenchantID` = 22, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=6341;

/*  Rough Bronze Boots  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 0 WHERE entry=6350;

/*  Inscribed Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=6380;

/*  Glimmering Mail Coif  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=6389;

/*  Belt of Arugal  */
UPDATE `item_template` SET `stat_type3` = 3, `stat_value3` = 2, `spellid_1` = 0, `spelltrigger_1` = 0, `RequiredLevel` = 24 WHERE entry=6392;

/*  Nightsky Trousers  */
UPDATE `item_template` SET `stat_type2` = 3, `stat_value2` = 5, `stat_type3` = 6, `stat_value3` = 10, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=6405;

/*  Mistscape Gloves  */
UPDATE `item_template` SET `stat_type2` = 3, `stat_value2` = 4, `stat_type3` = 5, `stat_value3` = 9, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=6428;

/*  Worn Turtle Shell Shield  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `DisenchantID` = 0 WHERE entry=6447;

/*  Tail Spike  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 14.0, `dmg_max1` = 26.0, `stat_value1` = 2, `stat_value2` = 2, `DisenchantID` = 23 WHERE entry=6448;

/*  Glowing Lizardscale Cloak  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=6449;

/*  Savage Trodders  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 6, `DisenchantID` = 3 WHERE entry=6459;

/*  Slime-encrusted Pads  */
UPDATE `item_template` SET `spellid_1` = 18764, `RequiredLevel` = 22 WHERE entry=6461;

/*  Deep Fathom Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `RequiredLevel` = 21 WHERE entry=6463;

/*  Robe of the Moccasin  */
UPDATE `item_template` SET `Quality` = 2, `stat_type1` = 4, `stat_value1` = 2, `stat_value2` = 2, `stat_type3` = 6, `stat_value3` = 6, `DisenchantID` = 3, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=6465;

/*  Deviate Scale Belt  */
UPDATE `item_template` SET `stat_type3` = 6 WHERE entry=6468;

/*  Venomstrike  */
UPDATE `item_template` SET `dmg_min1` = 16.0, `dmg_max1` = 30.0 WHERE entry=6469;

/*  Armor of the Fang  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 2, `stat_type2` = 6, `stat_value2` = 7, `DisenchantID` = 3 WHERE entry=6473;

/*  Rat Stompers  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=6478;

/*  Firewalker Boots  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 2, `stat_type3` = 5, `stat_value3` = 1, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=6482;

/*  Bard's Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=6559;

/*  Soldier's Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=6560;

/*  Scouting Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=6571;

/*  Defender Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=6572;

/*  Battleforge Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=6599;

/*  Sword of Zeal  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=6622;

/*  Mutant Scale Breastplate  */
UPDATE `item_template` SET `RequiredLevel` = 23 WHERE entry=6627;

/*  Sporid Cape  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 3, `stat_value2` = 2, `DisenchantID` = 3 WHERE entry=6629;

/*  Living Root  */
UPDATE `item_template` SET `nature_res` = 5, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=6631;

/*  Feyscale Cloak  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 3, `stat_type2` = 6, `stat_value2` = 2, `DisenchantID` = 2, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=6632;

/*  Butcher's Slicer  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 23.0, `dmg_max1` = 44.0, `stat_value1` = 2, `stat_value2` = 2, `DisenchantID` = 23 WHERE entry=6633;

/*  Haunting Blade  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 53.0, `dmg_max1` = 80.0, `stat_type1` = 6, `stat_value1` = 9, `DisenchantID` = 24, `spellid_1` = 0, `spelltrigger_1` = 0, `RequiredLevel` = 21 WHERE entry=6641;

/*  Phantom Armor  */
UPDATE `item_template` SET `stat_type1` = 6 WHERE entry=6642;

/*  Julie's Dagger  */
UPDATE `item_template` SET `spellppmrate_1` = 5.0 WHERE entry=6660;

/*  Spellcrafter Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=6677;

/*  Band of Elven Grace  */
UPDATE `item_template` SET `stat_type2` = 6, `spelltrigger_1` = 0, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=6678;

/*  Armor Piercer  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 41.0, `dmg_max1` = 62.0, `stat_value1` = 11, `DisenchantID` = 24 WHERE entry=6679;

/*  Thornspike  */
UPDATE `item_template` SET `Quality` = 1, `dmg_min1` = 18.0, `dmg_max1` = 35.0, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=6681;

/*  Death Speaker Robes  */
UPDATE `item_template` SET `Quality` = 2, `stat_type4` = 0, `stat_value4` = 0, `DisenchantID` = 5 WHERE entry=6682;

/*  Death Speaker Mantle  */
UPDATE `item_template` SET `Quality` = 2, `DisenchantID` = 4, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=6685;

/*  Tusken Helm  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 9, `stat_value2` = 8, `DisenchantID` = 5, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `RequiredLevel` = 28 WHERE entry=6686;

/*  Corpsemaker  */
UPDATE `item_template` SET `RequiredLevel` = 29 WHERE entry=6687;

/*  Whisperwind Headdress  */
UPDATE `item_template` SET `Quality` = 2, `DisenchantID` = 5, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=6688;

/*  Ferine Leggings  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 9, `stat_value2` = 8, `DisenchantID` = 5 WHERE entry=6690;

/*  Pronged Reaver  */
UPDATE `item_template` SET `RequiredLevel` = 31 WHERE entry=6692;

/*  Agamaggan's Clutch  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `RequiredLevel` = 31 WHERE entry=6693;

/*  Heart of Agamaggan  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `RequiredLevel` = 31 WHERE entry=6694;

/*  Stygian Bone Amulet  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=6695;

/*  Nightstalker Bow  */
UPDATE `item_template` SET `dmg_min1` = 19.0, `dmg_max1` = 36.0 WHERE entry=6696;

/*  Batwing Mantle  */
UPDATE `item_template` SET `stat_type3` = 3, `stat_value3` = 3, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=6697;

/*  Stone of Pierce  */
UPDATE `item_template` SET `spellid_1` = 8299, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 0, `spellcategory_1` = 38 WHERE entry=6698;

/*  Stone of Lapidis  */
UPDATE `item_template` SET `spellid_1` = 8315, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 0, `spellcategory_1` = 38 WHERE entry=6707;

/*  Stone of Goodman  */
UPDATE `item_template` SET `spellid_1` = 21751, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 0, `spellcategory_1` = 38 WHERE entry=6708;

/*  Moonglow Vest  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 4 WHERE entry=6709;

/*  Stone of Kurtz  */
UPDATE `item_template` SET `spellid_1` = 8324, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 0, `spellcategory_1` = 38 WHERE entry=6711;

/*  Medal of Courage  */
UPDATE `item_template` SET `Quality` = 2, `stat_type1` = 6, `stat_value1` = 3, `stat_type2` = 7, `stat_value2` = 9, `DisenchantID` = 7, `spellid_1` = 0, `spelltrigger_1` = 0, `spellcooldown_1` = -1 WHERE entry=6723;

/*  Stone of Backus  */
UPDATE `item_template` SET `spellid_1` = 8357, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 0, `spellcategory_1` = 38 WHERE entry=6724;

/*  Stone of Brownell  */
UPDATE `item_template` SET `spellid_1` = 8360, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 0, `spellcategory_1` = 38 WHERE entry=6728;

/*  Fizzle's Zippy Lighter  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=6729;

/*  Ironforge Chain  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=6730;

/*  Ironforge Gauntlets  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=6733;

/*  Cliffrunner's Aim  */
UPDATE `item_template` SET `dmg_min1` = 19.0, `dmg_max1` = 36.0 WHERE entry=6739;

/*  Sustaining Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=6743;

/*  Gloves of Kapelan  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 7, `stat_type2` = 5, `stat_value2` = 6, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=6744;

/*  Basalt Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=6746;

/*  Monkey Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=6748;

/*  Tiger Band  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=6749;

/*  Snake Hoop  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=6750;

/*  Jaina's Signet Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=6757;

/*  Simple Dress  */
UPDATE `item_template` SET `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=6786;

/*  White Woolen Dress  */
UPDATE `item_template` SET `ItemLevel` = 22, `RequiredLevel` = 17 WHERE entry=6787;

/*  Hellion Boots  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_value1` = 3, `stat_type3` = 5, `stat_value3` = 5, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=6791;

/*  Eyepoker  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=6797;

/*  Blasting Hackbut  */
UPDATE `item_template` SET `dmg_min1` = 30.0, `dmg_max1` = 56.0 WHERE entry=6798;

/*  Baroque Apron  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 6, `stat_type3` = 6, `stat_value3` = 7, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=6801;

/*  Windstorm Hammer  */
UPDATE `item_template` SET `Quality` = 2, `ItemLevel` = 40, `dmg_min1` = 32.0, `dmg_max1` = 61.0, `stat_value1` = 4, `stat_value2` = 5, `DisenchantID` = 26 WHERE entry=6804;

/*  Dancing Flame  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 32.0, `dmg_max1` = 60.0, `DisenchantID` = 26, `spellcooldown_1` = -1 WHERE entry=6806;

/*  Visionary Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=6828;

/*  Black Tuxedo  */
UPDATE `item_template` SET `RequiredLevel` = 0 WHERE entry=6834;

/*  Orb of Soran'ruk  */
UPDATE `item_template` SET `spellid_1` = 7685, `spellid_2` = 7706 WHERE entry=6898;

/*  Glowing Thresher Cape  */
UPDATE `item_template` SET `stat_type2` = 4 WHERE entry=6901;

/*  Bands of Serra'kis  */
UPDATE `item_template` SET `Quality` = 2, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 4 WHERE entry=6902;

/*  Gaze Dreamer Pants  */
UPDATE `item_template` SET `Quality` = 2, `DisenchantID` = 4, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=6903;

/*  Reef Axe  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 48.0, `dmg_max1` = 73.0, `stat_value1` = 5, `stat_type2` = 6, `stat_value2` = 7, `DisenchantID` = 24, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=6905;

/*  Tortoise Armor  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0 WHERE entry=6907;

/*  Ghamoo-ra's Bind  */
UPDATE `item_template` SET `Quality` = 2, `DisenchantID` = 3, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=6908;

/*  Strike of the Hydra  */
UPDATE `item_template` SET `RequiredLevel` = 26 WHERE entry=6909;

/*  Leech Pants  */
UPDATE `item_template` SET `RequiredLevel` = 26 WHERE entry=6910;

/*  Moss Cinch  */
UPDATE `item_template` SET `RequiredLevel` = 26 WHERE entry=6911;

/*  Fire Hardened Coif  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=6971;

/*  Fire Hardened Hauberk  */
UPDATE `item_template` SET `spellid_1` = 9174 WHERE entry=6972;

/*  Nimbus Boots  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_value1` = 3, `stat_type2` = 6, `stat_value2` = 5, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=6998;

/*  Gravestone Scepter  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=7001;

/*  Skinning Knife  */
UPDATE `item_template` SET `dmg_min1` = 2.0, `dmg_max1` = 5.0 WHERE entry=7005;

/*  Boots of Darkness  */
UPDATE `item_template` SET `spellid_1` = 7708 WHERE entry=7027;

/*  Azure Silk Pants  */
UPDATE `item_template` SET `spellid_1` = 7703 WHERE entry=7046;

/*  Hands of Darkness  */
UPDATE `item_template` SET `spellid_1` = 7710 WHERE entry=7047;

/*  Azure Silk Hood  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=7048;

/*  Silk Headband  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 0 WHERE entry=7050;

/*  Azure Silk Cloak  */
UPDATE `item_template` SET `spellid_1` = 7703 WHERE entry=7053;

/*  Robe of Power  */
UPDATE `item_template` SET `stat_value1` = 12, `stat_type2` = 6, `stat_value2` = 8, `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 9343 WHERE entry=7054;

/*  Crimson Silk Vest  */
UPDATE `item_template` SET `Quality` = 1, `ItemLevel` = 37, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 0, `RequiredLevel` = 32 WHERE entry=7058;

/*  Azure Shoulders  */
UPDATE `item_template` SET `spellid_1` = 9403 WHERE entry=7060;

/*  Crimson Silk Pantaloons  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 0 WHERE entry=7062;

/*  Crimson Silk Gloves  */
UPDATE `item_template` SET `spellid_1` = 9401 WHERE entry=7064;

/*  Infantry Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=7108;

/*  Pioneer Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=7109;

/*  Brutal Helm  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=7130;

/*  Brutal Hauberk  */
UPDATE `item_template` SET `spellid_1` = 9174 WHERE entry=7133;

/*  Twain Random Sword FOO  */
UPDATE `item_template` SET `dmg_min1` = 50.0, `dmg_max1` = 100.0 WHERE entry=7170;

/*  VanCleef's Boots  */
UPDATE `item_template` SET `Quality` = 2, `ItemLevel` = 25, `stat_value1` = 6, `RequiredLevel` = 20 WHERE entry=7187;

/*  Stormwind Guard Shield  */
UPDATE `item_template` SET `bonding` = 2, `shadow_res` = 0, `stat_type1` = 4, `stat_value1` = 2, `stat_type2` = 7, `stat_value2` = 4, `DisenchantID` = 0 WHERE entry=7188;

/*  Goblin Rocket Boots  */
UPDATE `item_template` SET `spellcategorycooldown_1` = 0, `spellcategory_1` = 0 WHERE entry=7189;

/*  Light Leather Bracers  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=7281;

/*  Light Leather Pants  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=7282;

/*  Nimble Leather Gloves  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=7285;

/*  Infiltrator Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=7330;

/*  Phalanx Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=7331;

/*  Efflorescent Robe  */
UPDATE `item_template` SET `stat_type1` = 7, `stat_value1` = 9, `stat_type2` = 5, `stat_value2` = 2 WHERE entry=7334;

/*  The Rock  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=7337;

/*  Mood Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=7338;

/*  Miniscule Diamond Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=7339;

/*  Flawless Diamond Solitaire  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=7340;

/*  Cubic Zirconia Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=7341;

/*  Silver Piffeny Band  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=7342;

/*  Torch of Holy Flame  */
UPDATE `item_template` SET `spellid_1` = 9176, `spelltrigger_1` = 0 WHERE entry=7344;

/*  Fletcher's Gloves  */
UPDATE `item_template` SET `Quality` = 2, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 3, `spellid_1` = 9132, `spellid_2` = 21352 WHERE entry=7348;

/*  Frost Leather Cloak  */
UPDATE `item_template` SET `spellid_1` = 9402 WHERE entry=7377;

/*  Green Whelp Bracers  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 8, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=7386;

/*  Swift Boots  */
UPDATE `item_template` SET `stat_type1` = 6, `spellcooldown_1` = 3600000, `spellcategorycooldown_1` = 0, `spellcategory_1` = 0 WHERE entry=7391;

/*  Phalanx Headguard  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=7420;

/*  Cerulean Ring  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=7426;

/*  Cerulean Talisman  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=7427;

/*  Sentinel Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=7463;

/*  Knight's Crest  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=7465;

/*  Captain's Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=7495;

/*  Field Plate Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=7496;

/*  Ley Orb  */
UPDATE `item_template` SET `ItemLevel` = 10, `spellcooldown_1` = 1800000 WHERE entry=7508;

/*  Nether-lace Robe  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=7512;

/*  Ragefire Wand  */
UPDATE `item_template` SET `spellid_1` = 7688 WHERE entry=7513;

/*  Icefury Wand  */
UPDATE `item_template` SET `spellid_1` = 7702 WHERE entry=7514;

/*  Celestial Orb  */
UPDATE `item_template` SET `spelltrigger_3` = 0, `spelltrigger_4` = 0 WHERE entry=7515;

/*  Champion's Wall Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=7536;

/*  Gothic Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=7537;

/*  Onyx Ring  */
UPDATE `item_template` SET `DisenchantID` = 0, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=7547;

/*  Fairy's Embrace  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=7549;

/*  Warrior's Honor  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=7550;

/*  Falcon's Hook  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=7552;

/*  Regal Star  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=7555;

/*  Twilight Orb  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=7556;

/*  Gossamer Rod  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=7557;

/*  Sable Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=7607;

/*  Elder's Amber Stave  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=7609;

/*  Aurora Sphere  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=7610;

/*  Mistscape Stave  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=7611;

/*  Torturing Poker  */
UPDATE `item_template` SET `dmg_min1` = 21.0, `dmg_max1` = 39.0 WHERE entry=7682;

/*  Bloody Brass Knuckles  */
UPDATE `item_template` SET `Quality` = 1, `dmg_min1` = 18.0, `dmg_max1` = 35.0, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=7683;

/*  Bloodmage Mantle  */
UPDATE `item_template` SET `Quality` = 2, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 5 WHERE entry=7684;

/*  Ironspine's Eye  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=7686;

/*  Embalmed Shroud  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 12, `stat_type3` = 5, `stat_value3` = 11, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=7691;

/*  Necrotic Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=7708;

/*  Blighted Leggings  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 17, `spellid_1` = 7709 WHERE entry=7709;

/*  Loksey's Training Stick  */
UPDATE `item_template` SET `spellid_1` = 18207 WHERE entry=7710;

/*  Robe of Doan  */
UPDATE `item_template` SET `Quality` = 2, `DisenchantID` = 6, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=7711;

/*  Mantle of Doan  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 8, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 6 WHERE entry=7712;

/*  Illusionary Rod  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 10, `stat_type3` = 7, `stat_value3` = 7 WHERE entry=7713;

/*  Ravager  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=7717;

/*  Triune Amulet  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=7722;

/*  Mograine's Might  */
UPDATE `item_template` SET `stat_type1` = 6 WHERE entry=7723;

/*  Aegis of the Scarlet Commander  */
UPDATE `item_template` SET `stat_type1` = 6, `spellcooldown_1` = -1 WHERE entry=7726;

/*  Watchman Pauldrons  */
UPDATE `item_template` SET `stat_type3` = 6 WHERE entry=7727;

/*  Chesterfall Musket  */
UPDATE `item_template` SET `dmg_min1` = 26.0, `dmg_max1` = 50.0 WHERE entry=7729;

/*  Ghostshard Talisman  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 4, `spellid_1` = 0, `spelltrigger_1` = 0, `spellcooldown_1` = -1 WHERE entry=7731;

/*  Six Demon Bag  */
UPDATE `item_template` SET `spellcooldown_1` = 1800000 WHERE entry=7734;

/*  Explorers' League Commendation  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=7746;

/*  Harbinger Boots  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=7754;

/*  Dog Training Gloves  */
UPDATE `item_template` SET `Quality` = 2, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 5, `spellid_1` = 14565 WHERE entry=7756;

/*  Windweaver Staff  */
UPDATE `item_template` SET `spellid_1` = 13599 WHERE entry=7757;

/*  Archon Chestpiece  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=7759;

/*  Warchief Kilt  */
UPDATE `item_template` SET `stat_type3` = 4, `stat_value3` = 5 WHERE entry=7760;

/*  Barbaric Iron Shoulders  */
UPDATE `item_template` SET `stat_type2` = 3 WHERE entry=7913;

/*  Barbaric Iron Helm  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_type2` = 4 WHERE entry=7915;

/*  Barbaric Iron Boots  */
UPDATE `item_template` SET `stat_type2` = 3 WHERE entry=7916;

/*  Heavy Mithril Shoulder  */
UPDATE `item_template` SET `ItemLevel` = 41, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=7918;

/*  Heavy Mithril Gauntlet  */
UPDATE `item_template` SET `ItemLevel` = 41, `stat_value1` = 8 WHERE entry=7919;

/*  Mithril Scale Pants  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 11, `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 13669 WHERE entry=7920;

/*  Heavy Mithril Pants  */
UPDATE `item_template` SET `ItemLevel` = 42, `stat_value1` = 11 WHERE entry=7921;

/*  Steel Plate Helm  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=7922;

/*  Mithril Scale Bracers  */
UPDATE `item_template` SET `stat_type1` = 6 WHERE entry=7924;

/*  Mithril Scale Gloves  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=7925;

/*  Ornate Mithril Pants  */
UPDATE `item_template` SET `ItemLevel` = 44, `stat_value1` = 12 WHERE entry=7926;

/*  Ornate Mithril Gloves  */
UPDATE `item_template` SET `ItemLevel` = 44, `stat_type1` = 0, `stat_value1` = 0, `spellid_1` = 7597 WHERE entry=7927;

/*  Heavy Mithril Breastplate  */
UPDATE `item_template` SET `stat_value1` = 15, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=7930;

/*  Mithril Coif  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 13, `stat_value2` = 12 WHERE entry=7931;

/*  Mithril Scale Shoulders  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 10, `stat_value2` = 10 WHERE entry=7932;

/*  Heavy Mithril Boots  */
UPDATE `item_template` SET `stat_value1` = 12, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=7933;

/*  Heavy Mithril Helm  */
UPDATE `item_template` SET `stat_value1` = 15, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=7934;

/*  Truesilver Gauntlets  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=7938;

/*  Heavy Mithril Axe  */
UPDATE `item_template` SET `stat_type1` = 7, `stat_value1` = 7 WHERE entry=7941;

/*  Wicked Mithril Blade  */
UPDATE `item_template` SET `dmg_min1` = 43.0, `dmg_max1` = 80.0, `stat_type1` = 4, `stat_value1` = 6, `stat_type2` = 3 WHERE entry=7943;

/*  Bronze Warhammer  */
UPDATE `item_template` SET `Quality` = 1, `dmg_min1` = 37.0, `dmg_max1` = 57.0, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 0 WHERE entry=7956;

/*  Bronze Greatsword  */
UPDATE `item_template` SET `Quality` = 1, `dmg_min1` = 38.0, `dmg_max1` = 58.0, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 0 WHERE entry=7957;

/*  Bronze Battle Axe  */
UPDATE `item_template` SET `Quality` = 1, `dmg_min1` = 39.0, `dmg_max1` = 59.0, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=7958;

/*  Blight  */
UPDATE `item_template` SET `dmg_min1` = 93.0, `dmg_max1` = 141.0 WHERE entry=7959;

/*  Steel Breastplate  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0 WHERE entry=7963;

/*  Sizzle Stick  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=8071;

/*  Hibernal Gloves  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_type2` = 5, `stat_value2` = 10, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=8110;

/*  Hibernal Pants  */
UPDATE `item_template` SET `stat_type2` = 3, `stat_type3` = 6, `stat_value3` = 11, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=8112;

/*  Myrmidon's Defender  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=8134;

/*  Chromite Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=8135;

/*  Comfortable Leather Hat  */
UPDATE `item_template` SET `Quality` = 2, `stat_type1` = 7, `stat_value1` = 11, `stat_type2` = 6, `stat_value2` = 10, `DisenchantID` = 6, `spelltrigger_1` = 0 WHERE entry=8174;

/*  Nightscape Headband  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=8176;

/*  Cadet's Bow  */
UPDATE `item_template` SET `dmg_min1` = 3.0, `dmg_max1` = 6.0 WHERE entry=8179;

/*  Hunting Bow  */
UPDATE `item_template` SET `dmg_min1` = 8.0, `dmg_max1` = 16.0 WHERE entry=8180;

/*  Hunting Rifle  */
UPDATE `item_template` SET `dmg_min1` = 5.0, `dmg_max1` = 11.0 WHERE entry=8181;

/*  Pellet Rifle  */
UPDATE `item_template` SET `dmg_min1` = 4.0, `dmg_max1` = 9.0 WHERE entry=8182;

/*  Precision Bow  */
UPDATE `item_template` SET `dmg_min1` = 20.0, `dmg_max1` = 37.0 WHERE entry=8183;

/*  Firestarter  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=8184;

/*  Dire Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=8186;

/*  Turtle Scale Gloves  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 6 WHERE entry=8187;

/*  Explosive Shotgun  */
UPDATE `item_template` SET `dmg_min1` = 22.0, `dmg_max1` = 42.0 WHERE entry=8188;

/*  Turtle Scale Breastplate  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 9 WHERE entry=8189;

/*  Nightscape Cloak  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=8195;

/*  Turtle Scale Bracers  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0 WHERE entry=8198;

/*  Big Voodoo Robe  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 9 WHERE entry=8200;

/*  Big Voodoo Mask  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 9, `spelltrigger_1` = 0 WHERE entry=8201;

/*  Big Voodoo Pants  */
UPDATE `item_template` SET `stat_type2` = 5, `stat_value2` = 10 WHERE entry=8202;

/*  Tough Scorpid Breastplate  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=8203;

/*  Tough Scorpid Gloves  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=8204;

/*  Tough Scorpid Bracers  */
UPDATE `item_template` SET `stat_type2` = 6, `spelltrigger_1` = 0 WHERE entry=8205;

/*  Tough Scorpid Leggings  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=8206;

/*  Tough Scorpid Shoulders  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=8207;

/*  Tough Scorpid Helm  */
UPDATE `item_template` SET `stat_type2` = 6, `spelltrigger_1` = 0 WHERE entry=8208;

/*  Tough Scorpid Boots  */
UPDATE `item_template` SET `stat_type2` = 6, `spelltrigger_1` = 0 WHERE entry=8209;

/*  Wild Leather Boots  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=8213;

/*  Wild Leather Helmet  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=8214;

/*  Big Voodoo Cloak  */
UPDATE `item_template` SET `stat_value1` = 9, `stat_value2` = 5, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=8216;

/*  Tainted Pierce  */
UPDATE `item_template` SET `spellppmrate_1` = 1.0 WHERE entry=8225;

/*  Imperial Red Boots  */
UPDATE `item_template` SET `stat_type2` = 3, `stat_value2` = 4, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=8246;

/*  Imperial Red Mantle  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_value1` = 4, `stat_type2` = 5, `stat_value2` = 15, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=8250;

/*  Imperial Red Pants  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_type2` = 5, `stat_value2` = 15, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=8251;

/*  Imperial Red Sash  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 4, `stat_type2` = 5, `stat_value2` = 15, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=8253;

/*  Ebonhold Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=8275;

/*  Valorous Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=8282;

/*  Hero's Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=8313;

/*  Alabaster Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=8320;

/*  Wolfshead Helm  */
UPDATE `item_template` SET `stat_type1` = 6 WHERE entry=8345;

/*  Gauntlets of the Sea  */
UPDATE `item_template` SET `stat_value1` = 7, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=8346;

/*  Dragonscale Gauntlets  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 6 WHERE entry=8347;

/*  Helm of Fire  */
UPDATE `item_template` SET `stat_value1` = 17, `stat_value2` = 10, `spellcooldown_1` = 900000 WHERE entry=8348;

/*  Feathered Breastplate  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_type2` = 5, `stat_value2` = 10, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=8349;

/*  The 1 Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=8350;

/*  Dragonscale Breastplate  */
UPDATE `item_template` SET `fire_res` = 13, `frost_res` = 13, `shadow_res` = 12, `stat_value1` = 10, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=8367;

/*  Wirt's Third Leg  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=9359;

/*  Golden Scale Gauntlets  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=9366;

/*  Expert Goldminer's Helmet  */
UPDATE `item_template` SET `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 15874 WHERE entry=9375;

/*  Sang'thraze the Deflector  */
UPDATE `item_template` SET `dmg_min1` = 34.0, `dmg_max1` = 65.0 WHERE entry=9379;

/*  Jang'thraze the Protector  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=9380;

/*  Earthen Rod  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9381;

/*  Tromping Miner's Boots  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=9382;

/*  Revelosh's Boots  */
UPDATE `item_template` SET `Quality` = 2, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 7 WHERE entry=9387;

/*  Revelosh's Armguards  */
UPDATE `item_template` SET `Quality` = 2, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 6 WHERE entry=9388;

/*  Revelosh's Spaulders  */
UPDATE `item_template` SET `Quality` = 2, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 7 WHERE entry=9389;

/*  Revelosh's Gloves  */
UPDATE `item_template` SET `Quality` = 2, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 6 WHERE entry=9390;

/*  Legguards of the Vault  */
UPDATE `item_template` SET `stat_type2` = 4, `stat_value2` = 13, `stat_type4` = 6, `stat_value4` = 5, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=9396;

/*  Worn Running Boots  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 11, `stat_value2` = 3, `DisenchantID` = 6 WHERE entry=9398;

/*  Baelog's Shortbow  */
UPDATE `item_template` SET `Quality` = 1, `dmg_min1` = 26.0, `dmg_max1` = 50.0, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=9400;

/*  Earthborn Kilt  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=9402;

/*  Battered Viking Shield  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_value1` = 8, `stat_type2` = 6, `stat_value2` = 4, `DisenchantID` = 0 WHERE entry=9403;

/*  Stoneweaver Leggings  */
UPDATE `item_template` SET `stat_type3` = 5, `stat_value3` = 8, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=9407;

/*  Ironshod Bludgeon  */
UPDATE `item_template` SET `stat_type1` = 7, `stat_type2` = 4 WHERE entry=9408;

/*  Rockshard Pauldrons  */
UPDATE `item_template` SET `Quality` = 2, `stat_type1` = 4, `stat_value1` = 2, `stat_value2` = 9, `stat_type3` = 6, `stat_value3` = 9, `DisenchantID` = 7, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=9411;

/*  Galgann's Fireblaster  */
UPDATE `item_template` SET `dmg_min1` = 44.0, `dmg_max1` = 84.0, `RequiredLevel` = 42 WHERE entry=9412;

/*  The Rockpounder  */
UPDATE `item_template` SET `RequiredLevel` = 44 WHERE entry=9413;

/*  Oilskin Leggings  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 13, `stat_type2` = 6, `stat_value2` = 12, `DisenchantID` = 8, `RequiredLevel` = 41 WHERE entry=9414;

/*  Grimlok's Tribal Vestments  */
UPDATE `item_template` SET `stat_value2` = 20, `spellid_1` = 0, `spelltrigger_1` = 0, `RequiredLevel` = 42 WHERE entry=9415;

/*  Grimlok's Charge  */
UPDATE `item_template` SET `stat_type2` = 4, `stat_value2` = 10, `stat_type3` = 7, `stat_value3` = 15, `spellid_1` = 0, `spelltrigger_1` = 0, `RequiredLevel` = 42 WHERE entry=9416;

/*  Archaedic Shard  */
UPDATE `item_template` SET `DisenchantID` = 0, `spelltrigger_1` = 0 WHERE entry=9417;

/*  Stoneslayer  */
UPDATE `item_template` SET `RequiredLevel` = 44 WHERE entry=9418;

/*  Galgann's Firehammer  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 42.0, `dmg_max1` = 79.0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 28, `RequiredLevel` = 41 WHERE entry=9419;

/*  Adventurer's Pith Helmet  */
UPDATE `item_template` SET `stat_type1` = 6 WHERE entry=9420;

/*  Shadowforge Bushmaster  */
UPDATE `item_template` SET `dmg_min1` = 46.0, `dmg_max1` = 86.0, `shadow_res` = 7, `stat_type1` = 0, `stat_value1` = 0 WHERE entry=9422;

/*  Monolithic Bow  */
UPDATE `item_template` SET `dmg_min1` = 41.0, `dmg_max1` = 77.0, `stat_type1` = 4, `stat_value1` = 6, `stat_type2` = 3, `stat_value2` = 3, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=9426;

/*  Miner's Hat of the Deep  */
UPDATE `item_template` SET `stat_value1` = 10, `stat_value2` = 17, `stat_type4` = 3, `stat_value4` = 4, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=9429;

/*  Spaulders of a Lost Age  */
UPDATE `item_template` SET `stat_value1` = 16, `stat_type2` = 6, `stat_value2` = 7, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=9430;

/*  Skullplate Bracers  */
UPDATE `item_template` SET `stat_type3` = 6 WHERE entry=9432;

/*  Forgotten Wraps  */
UPDATE `item_template` SET `stat_type3` = 3, `stat_value3` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `spellcooldown_1` = -1 WHERE entry=9433;

/*  Grubbis Paws  */
UPDATE `item_template` SET `stat_type3` = 6 WHERE entry=9445;

/*  Electrocutioner Leg  */
UPDATE `item_template` SET `RequiredLevel` = 29 WHERE entry=9446;

/*  Electrocutioner Lagnut  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `RequiredLevel` = 29 WHERE entry=9447;

/*  Spidertank Oilrag  */
UPDATE `item_template` SET `Quality` = 2, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 5 WHERE entry=9448;

/*  Manual Crowd Pummeler  */
UPDATE `item_template` SET `spellcharges_1` = 3, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `RequiredLevel` = 29 WHERE entry=9449;

/*  Gnomebot Operating Boots  */
UPDATE `item_template` SET `Quality` = 2, `stat_type2` = 6, `DisenchantID` = 5, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=9450;

/*  Hydrocane  */
UPDATE `item_template` SET `dmg_min1` = 48.0, `dmg_max1` = 73.0 WHERE entry=9452;

/*  Glass Shooter  */
UPDATE `item_template` SET `dmg_min1` = 36.0, `dmg_max1` = 68.0 WHERE entry=9456;

/*  Thermaplugg's Central Core  */
UPDATE `item_template` SET `RequiredLevel` = 32 WHERE entry=9458;

/*  Thermaplugg's Left Arm  */
UPDATE `item_template` SET `RequiredLevel` = 32 WHERE entry=9459;

/*  Charged Gear  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `RequiredLevel` = 32 WHERE entry=9461;

/*  Gahz'rilla Fang  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 35.0, `dmg_max1` = 66.0, `DisenchantID` = 28 WHERE entry=9467;

/*  Gahz'rilla Scale Armor  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 23, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=9469;

/*  Bad Mojo Mask  */
UPDATE `item_template` SET `stat_value1` = 24, `spellid_1` = 9414 WHERE entry=9470;

/*  Jinxed Hoodoo Skin  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 20, `stat_type2` = 4 WHERE entry=9473;

/*  Jinxed Hoodoo Kilt  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_type2` = 5, `stat_value2` = 10 WHERE entry=9474;

/*  Big Bad Pauldrons  */
UPDATE `item_template` SET `stat_type3` = 6 WHERE entry=9476;

/*  Embrace of the Lycan  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=9479;

/*  Witch Doctor's Cane  */
UPDATE `item_template` SET `spellid_1` = 17993 WHERE entry=9482;

/*  Flaming Incinerator  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9483;

/*  Hi-tech Supergun  */
UPDATE `item_template` SET `dmg_min1` = 23.0, `dmg_max1` = 43.0 WHERE entry=9487;

/*  Gyromatic Icemaker  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9489;

/*  Hotshot Pilot's Gloves  */
UPDATE `item_template` SET `stat_type4` = 3, `stat_value4` = 3, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=9491;

/*  Electromagnetic Gigaflux Reactivator  */
UPDATE `item_template` SET `RequiredLevel` = 32 WHERE entry=9492;

/*  Petrolspill Leggings  */
UPDATE `item_template` SET `fire_res` = -10 WHERE entry=9509;

/*  Ley Staff  */
UPDATE `item_template` SET `ItemLevel` = 10, `dmg_min1` = 16.0, `dmg_max1` = 25.0, `stat_value1` = 1, `stat_value2` = 1 WHERE entry=9513;

/*  Nether-lace Tunic  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=9515;

/*  Celestial Stave  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `spelltrigger_3` = 0 WHERE entry=9517;

/*  Durtfeet Stompers  */
UPDATE `item_template` SET `stat_type1` = 4 WHERE entry=9519;

/*  Energized Stone Circle  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9522;

/*  Masons Fraternity Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=9533;

/*  Skilled Handling Gloves  */
UPDATE `item_template` SET `stat_type2` = 3, `stat_value2` = 6, `stat_type3` = 5, `stat_value3` = 10, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=9634;

/*  Swashbuckler Sash  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 10, `stat_type2` = 7, `stat_value2` = 9, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=9636;

/*  Lifeblood Amulet  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 5, `stat_type2` = 7, `stat_value2` = 13, `spellid_1` = 0, `spelltrigger_1` = 0, `spellcooldown_1` = -1 WHERE entry=9641;

/*  Band of the Great Tortoise  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=9642;

/*  Royal Highmark Vestments  */
UPDATE `item_template` SET `Quality` = 2, `DisenchantID` = 9, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=9649;

/*  Honorguard Chestpiece  */
UPDATE `item_template` SET `Quality` = 2, `stat_type1` = 4, `stat_value1` = 22, `stat_value2` = 3, `stat_type3` = 5, `stat_value3` = 3, `DisenchantID` = 9, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=9650;

/*  Gryphon Rider's Stormhammer  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 59.0, `dmg_max1` = 111.0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 29 WHERE entry=9651;

/*  Gryphon Rider's Leggings  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 15, `stat_value2` = 15, `DisenchantID` = 9 WHERE entry=9652;

/*  Speedy Racer Goggles  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_type2` = 5, `stat_value2` = 14, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=9653;

/*  Cairnstone Sliver  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=9654;

/*  Seedtime Hoop  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=9655;

/*  Boots of the Maharishi  */
UPDATE `item_template` SET `stat_type2` = 3, `stat_value2` = 4, `stat_type3` = 5, `stat_value3` = 9, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=9658;

/*  Earthclasp Barrier  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9661;

/*  Strength of the Treant  */
UPDATE `item_template` SET `Quality` = 2, `ItemLevel` = 50, `dmg_min1` = 115.0, `dmg_max1` = 173.0, `stat_value1` = 7, `stat_value2` = 18, `DisenchantID` = 28 WHERE entry=9683;

/*  Force of the Hippogryph  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 51.0, `dmg_max1` = 95.0, `stat_value1` = 9, `DisenchantID` = 29 WHERE entry=9684;

/*  Will of the Mountain Giant  */
UPDATE `item_template` SET `dmg_min1` = 88.0, `dmg_max1` = 133.0, `stat_type1` = 4, `stat_value1` = 15, `stat_type2` = 7, `stat_value2` = 14, `DisenchantID` = 0 WHERE entry=9685;

/*  Spirit of the Faerie Dragon  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 55.0, `dmg_max1` = 103.0, `stat_value1` = 9, `DisenchantID` = 29 WHERE entry=9686;

/*  Tharg's Disk  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9706;

/*  Reforged Blade of Heroes  */
UPDATE `item_template` SET `dmg_min1` = 31.0, `dmg_max1` = 59.0 WHERE entry=9718;

/*  Gypsy Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9753;

/*  Cadet Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9764;

/*  Bandit Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9778;

/*  Raider's Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9790;

/*  Superior Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9804;

/*  Fortified Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9816;

/*  Banded Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9843;

/*  Archer's Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9858;

/*  Renegade Circlet  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=9870;

/*  Renegade Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9873;

/*  Sorcerer Sphere  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=9882;

/*  Jazeraint Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9899;

/*  Royal Scepter  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `spellcooldown_2` = -1, `spellcategorycooldown_2` = -1, `spellcooldown_3` = -1, `spellcategorycooldown_3` = -1 WHERE entry=9914;

/*  Brigade Defender  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9918;

/*  Embossed Plate Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9935;

/*  Abjurer's Crystal  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=9944;

/*  Warmonger's Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9958;

/*  Overlord's Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9974;

/*  Shadoweave Pants  */
UPDATE `item_template` SET `spellid_1` = 9328 WHERE entry=10002;

/*  Shadoweave Robe  */
UPDATE `item_template` SET `spellid_1` = 9328 WHERE entry=10004;

/*  White Bandit Mask  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_type2` = 4, `stat_value2` = 11, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10008;

/*  Stormcloth Pants  */
UPDATE `item_template` SET `DisenchantID` = 0, `spellid_1` = 7696 WHERE entry=10010;

/*  Stormcloth Gloves  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=10011;

/*  Stormcloth Vest  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=10020;

/*  Dreamweave Vest  */
UPDATE `item_template` SET `stat_type1` = 6 WHERE entry=10021;

/*  Shadoweave Gloves  */
UPDATE `item_template` SET `spellid_1` = 9325 WHERE entry=10023;

/*  Shadoweave Mask  */
UPDATE `item_template` SET `spellid_1` = 14794 WHERE entry=10025;

/*  Shadoweave Shoulders  */
UPDATE `item_template` SET `spellid_1` = 9325 WHERE entry=10028;

/*  Admiral's Hat  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0 WHERE entry=10030;

/*  Shadoweave Boots  */
UPDATE `item_template` SET `spellid_1` = 9414 WHERE entry=10031;

/*  Stormcloth Headband  */
UPDATE `item_template` SET `DisenchantID` = 0, `spellid_1` = 9411 WHERE entry=10032;

/*  Tuxedo Pants  */
UPDATE `item_template` SET `RequiredLevel` = 30 WHERE entry=10035;

/*  Tuxedo Jacket  */
UPDATE `item_template` SET `ItemLevel` = 35, `RequiredLevel` = 30 WHERE entry=10036;

/*  Stormcloth Shoulders  */
UPDATE `item_template` SET `DisenchantID` = 0, `spellid_1` = 9328 WHERE entry=10038;

/*  Stormcloth Boots  */
UPDATE `item_template` SET `DisenchantID` = 0, `spellid_1` = 9357 WHERE entry=10039;

/*  Cindercloth Robe  */
UPDATE `item_template` SET `spellid_1` = 17868 WHERE entry=10042;

/*  Cindercloth Boots  */
UPDATE `item_template` SET `spellid_1` = 9298 WHERE entry=10044;

/*  Simple Kilt  */
UPDATE `item_template` SET `Quality` = 1, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=10047;

/*  Colorful Kilt  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_type2` = 6, `stat_value2` = 5, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10048;

/*  Diabolist's Blade  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=10049;

/*  Lord's Crest  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=10078;

/*  Revenant Deflector  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=10093;

/*  Mercurial Guard  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=10158;

/*  Crusader's Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=10195;

/*  Heavy Lamellar Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=10204;

/*  Masterwork Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=10271;

/*  Gnomeregan Band  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=10298;

/*  Gnomeregan Amulet  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=10299;

/*  Scarlet Belt  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=10329;

/*  Ornate Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=10362;

/*  Engraved Wall  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=10363;

/*  Templar Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=10364;

/*  Emerald Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=10365;

/*  Demon Guard  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=10366;

/*  Hyperion Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=10367;

/*  Blackened Defias Belt  */
UPDATE `item_template` SET `Quality` = 2, `stat_type1` = 4, `stat_value1` = 5, `DisenchantID` = 3, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10403;

/*  Banded Helm  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=10408;

/*  Footpads of the Fang  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 4, `stat_value2` = 4, `DisenchantID` = 3 WHERE entry=10411;

/*  Belt of the Fang  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 3, `stat_value2` = 2, `DisenchantID` = 3 WHERE entry=10412;

/*  Gloves of the Fang  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 3, `stat_value2` = 2, `DisenchantID` = 2 WHERE entry=10413;

/*  Silvered Bronze Leggings  */
UPDATE `item_template` SET `stat_type3` = 6 WHERE entry=10423;

/*  Shadowy Bracers  */
UPDATE `item_template` SET `spellid_1` = 7706 WHERE entry=10461;

/*  Mithril Blunderbuss  */
UPDATE `item_template` SET `dmg_min1` = 36.0, `dmg_max1` = 68.0 WHERE entry=10508;

/*  Mithril Heavy-bore Rifle  */
UPDATE `item_template` SET `dmg_min1` = 41.0, `dmg_max1` = 76.0 WHERE entry=10510;

/*  Parachute Cloak  */
UPDATE `item_template` SET `spellcooldown_1` = 1800000 WHERE entry=10518;

/*  Gnomish Goggles  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_type3` = 6, `stat_value3` = 9, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10545;

/*  Foreman Vest  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 2, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10553;

/*  Foreman Pants  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_type2` = 7, `stat_value2` = 1, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10554;

/*  Resist Test Item  */
UPDATE `item_template` SET `holy_res` = -50, `fire_res` = -50, `nature_res` = -50, `frost_res` = -50, `shadow_res` = -50 WHERE entry=10555;

/*  Quillshooter  */
UPDATE `item_template` SET `dmg_min1` = 31.0, `dmg_max1` = 58.0 WHERE entry=10567;

/*  Freezing Shard  */
UPDATE `item_template` SET `spellid_1` = 7703 WHERE entry=10572;

/*  Corpseshroud  */
UPDATE `item_template` SET `stat_type3` = 3, `stat_value3` = 5, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10574;

/*  Briar Tredders  */
UPDATE `item_template` SET `stat_type2` = 3, `stat_value2` = 5 WHERE entry=10582;

/*  Stormgale Fists  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=10584;

/*  Goblin Rocket Helmet  */
UPDATE `item_template` SET `spellcategory_1` = 0 WHERE entry=10588;

/*  Stinging Bow  */
UPDATE `item_template` SET `dmg_min1` = 36.0, `dmg_max1` = 67.0, `stat_type1` = 4 WHERE entry=10624;

/*  Mistwalker Boots  */
UPDATE `item_template` SET `stat_value2` = 18, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10629;

/*  Soulcatcher Halo  */
UPDATE `item_template` SET `stat_value1` = 25, `stat_type2` = 6, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10630;

/*  Murkwater Gauntlets  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 13, `stat_type3` = 7, `stat_value3` = 12, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10631;

/*  Slimescale Bracers  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 13, `stat_type3` = 7, `stat_value3` = 4, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10632;

/*  Silvershell Leggings  */
UPDATE `item_template` SET `stat_type3` = 6 WHERE entry=10633;

/*  Mindseye Circle  */
UPDATE `item_template` SET `stat_value2` = 12, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10634;

/*  Brewer's Gloves  */
UPDATE `item_template` SET `stat_type2` = 4, `stat_value2` = 2, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10637;

/*  Will of the Mountain Giant  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 88.0, `dmg_max1` = 133.0, `stat_value1` = 15, `stat_value2` = 14, `DisenchantID` = 29 WHERE entry=10652;

/*  Jutebraid Gloves  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_type2` = 5, `stat_value2` = 6, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10654;

/*  Aegis of Battle  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 10, `stat_type2` = 3, `stat_value2` = 6, `DisenchantID` = 29, `spellcooldown_1` = -1 WHERE entry=10686;

/*  Enchanted Azsharite Felbane Staff  */
UPDATE `item_template` SET `spellcategorycooldown_2` = 180000 WHERE entry=10698;

/*  Encarmine Boots  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 4, `stat_type3` = 5, `stat_value3` = 8, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10700;

/*  Chillnail Splinter  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=10704;

/*  Firwillow Wristbands  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_value1` = 2, `stat_type2` = 5, `stat_value2` = 10, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10705;

/*  Dragonclaw Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=10710;

/*  Dragon's Blood Necklace  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=10711;

/*  Gnomish Rocket Boots  */
UPDATE `item_template` SET `spellcooldown_1` = 1800000, `spellcategorycooldown_1` = 0, `spellcategory_1` = 0 WHERE entry=10724;

/*  Ring of Fortitude  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=10739;

/*  Dragonflight Leggings  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_value1` = 13, `stat_type2` = 4, `stat_type3` = 6, `stat_value3` = 14, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10742;

/*  Gemburst Circlet  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_value1` = 5, `stat_type4` = 7, `stat_value4` = 9, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10751;

/*  Swine Fists  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 8, `stat_value2` = 8, `DisenchantID` = 6 WHERE entry=10760;

/*  Coldrage Dagger  */
UPDATE `item_template` SET `RequiredLevel` = 39 WHERE entry=10761;

/*  Robes of the Lich  */
UPDATE `item_template` SET `stat_value2` = 20, `stat_type3` = 0, `stat_value3` = 0, `RequiredLevel` = 39 WHERE entry=10762;

/*  Icemetal Barbute  */
UPDATE `item_template` SET `stat_type2` = 6, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=10763;

/*  Deathchill Armor  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 20, `stat_type3` = 7, `stat_value3` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `RequiredLevel` = 39 WHERE entry=10764;

/*  Bonefingers  */
UPDATE `item_template` SET `Quality` = 2, `DisenchantID` = 7, `spellid_1` = 0, `spelltrigger_1` = 0, `RequiredLevel` = 38 WHERE entry=10765;

/*  Plaguerot Sprig  */
UPDATE `item_template` SET `shadow_res` = 7, `spellid_1` = 0, `spelltrigger_1` = 0, `spellcooldown_1` = -1 WHERE entry=10766;

/*  Savage Boar's Guard  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=10767;

/*  Glowing Eye of Mordresh  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_type2` = 5, `stat_value2` = 5, `spellid_1` = 0, `spelltrigger_1` = 0, `spellcooldown_1` = -1 WHERE entry=10769;

/*  Mordresh's Lifeless Skull  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 11, `stat_type2` = 7, `stat_value2` = 5, `spellid_1` = 0, `spelltrigger_1` = 0, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=10770;

/*  Deathmage Sash  */
UPDATE `item_template` SET `stat_value1` = 15, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10771;

/*  Glutton's Cleaver  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 32.0, `dmg_max1` = 60.0, `DisenchantID` = 27 WHERE entry=10772;

/*  Silky Spider Cape  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=10776;

/*  Necklace of Sanctuary  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=10778;

/*  Mark of Hakkar  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `RequiredLevel` = 0 WHERE entry=10780;

/*  Hakkari Breastplate  */
UPDATE `item_template` SET `RequiredLevel` = 0 WHERE entry=10781;

/*  Hakkari Shroud  */
UPDATE `item_template` SET `RequiredLevel` = 0 WHERE entry=10782;

/*  Atal'ai Leggings  */
UPDATE `item_template` SET `Quality` = 2, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 9 WHERE entry=10785;

/*  Atal'ai Boots  */
UPDATE `item_template` SET `Quality` = 2, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 9 WHERE entry=10786;

/*  Atal'ai Girdle  */
UPDATE `item_template` SET `Quality` = 2, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 9 WHERE entry=10788;

/*  Darkwater Bracers  */
UPDATE `item_template` SET `shadow_res` = 7, `stat_type1` = 0, `stat_value1` = 0 WHERE entry=10800;

/*  Slitherscale Boots  */
UPDATE `item_template` SET `stat_type1` = 7, `stat_value1` = 12, `stat_type2` = 4, `stat_type3` = 6, `stat_value3` = 15, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10801;

/*  Wingveil Cloak  */
UPDATE `item_template` SET `Quality` = 2, `DisenchantID` = 9, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10802;

/*  Blade of the Wretched  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 47.0, `dmg_max1` = 88.0, `DisenchantID` = 29, `spellppmrate_1` = 2.6, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=10803;

/*  Fist of the Damned  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 42.0, `dmg_max1` = 80.0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 29 WHERE entry=10804;

/*  Eater of the Dead  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 49.0, `dmg_max1` = 92.0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 29 WHERE entry=10805;

/*  Vestments of the Atal'ai Prophet  */
UPDATE `item_template` SET `stat_value2` = 27, `stat_type3` = 0, `stat_value3` = 0, `spelltrigger_1` = 0 WHERE entry=10806;

/*  Kilt of the Atal'ai Prophet  */
UPDATE `item_template` SET `stat_value2` = 18, `stat_type4` = 4, `stat_value4` = 4, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10807;

/*  Gloves of the Atal'ai Prophet  */
UPDATE `item_template` SET `stat_value1` = 20, `stat_type2` = 4, `stat_value2` = 5, `stat_type3` = 7, `stat_value3` = 6, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10808;

/*  Amberglow Talisman  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=10824;

/*  Dire Nail  */
UPDATE `item_template` SET `shadow_res` = 5, `stat_type1` = 0, `stat_value1` = 0, `RequiredLevel` = 51 WHERE entry=10828;

/*  Horns of Eranikus  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 11, `stat_value2` = 27, `spellid_1` = 0, `spelltrigger_1` = 0, `RequiredLevel` = 51 WHERE entry=10833;

/*  Crest of Supremacy  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_value1` = 6, `stat_value2` = 7, `stat_type3` = 6, `stat_value3` = 7, `stat_type4` = 7, `stat_value4` = 7, `stat_type5` = 4, `stat_value5` = 6, `spellid_1` = 0, `spelltrigger_1` = 0, `spellcooldown_1` = -1, `RequiredLevel` = 51 WHERE entry=10835;

/*  Rod of Corrosion  */
UPDATE `item_template` SET `nature_res` = 10, `stat_type1` = 0, `stat_value1` = 0, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `RequiredLevel` = 51 WHERE entry=10836;

/*  Tooth of Eranikus  */
UPDATE `item_template` SET `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 15464, `RequiredLevel` = 51 WHERE entry=10837;

/*  Might of Hakkar  */
UPDATE `item_template` SET `stat_type1` = 7, `stat_type2` = 6, `spellcooldown_1` = -1 WHERE entry=10838;

/*  Windscale Sarong  */
UPDATE `item_template` SET `stat_value1` = 20, `stat_type4` = 3, `stat_value4` = 7, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10842;

/*  Featherskin Cape  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 15, `stat_type3` = 5, `stat_value3` = 4, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10843;

/*  Warrior's Embrace  */
UPDATE `item_template` SET `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 13670 WHERE entry=10845;

/*  Bloodshot Greaves  */
UPDATE `item_template` SET `stat_type3` = 4, `stat_value3` = 5, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10846;

/*  Archaedic Stone  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `RequiredLevel` = 42 WHERE entry=11118;

/*  Darkwater Talwar  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 20.0, `dmg_max1` = 39.0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 24 WHERE entry=11121;

/*  Carrot on a Stick  */
UPDATE `item_template` SET `spellid_1` = 13587 WHERE entry=11122;

/*  Rainstrider Leggings  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_value1` = 8, `stat_type3` = 7, `stat_value3` = 7, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=11123;

/*  Mindburst Medallion  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=11196;

/*  Nether Force Wand  */
UPDATE `item_template` SET `spellid_1` = 13595 WHERE entry=11263;

/*  Lesser Magic Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=11287;

/*  Greater Magic Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=11288;

/*  Lesser Mystic Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=11289;

/*  Greater Mystic Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=11290;

/*  Fine Shortbow  */
UPDATE `item_template` SET `dmg_min1` = 7.0, `dmg_max1` = 14.0 WHERE entry=11303;

/*  Fine Longbow  */
UPDATE `item_template` SET `dmg_min1` = 14.0, `dmg_max1` = 26.0 WHERE entry=11304;

/*  Dense Shortbow  */
UPDATE `item_template` SET `dmg_min1` = 19.0, `dmg_max1` = 35.0 WHERE entry=11305;

/*  Sturdy Recurve  */
UPDATE `item_template` SET `dmg_min1` = 20.0, `dmg_max1` = 37.0 WHERE entry=11306;

/*  Massive Longbow  */
UPDATE `item_template` SET `dmg_min1` = 43.0, `dmg_max1` = 80.0 WHERE entry=11307;

/*  Sylvan Shortbow  */
UPDATE `item_template` SET `dmg_min1` = 32.0, `dmg_max1` = 59.0 WHERE entry=11308;

/*  Flameseer Mantle  */
UPDATE `item_template` SET `spellid_1` = 9401, `RequiredLevel` = 42 WHERE entry=11310;

/*  Emberscale Cape  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 3, `stat_value2` = 10, `DisenchantID` = 8, `RequiredLevel` = 41 WHERE entry=11311;

/*  Enthralled Sphere  */
UPDATE `item_template` SET `stat_value1` = 14, `stat_type2` = 6, `stat_value2` = 5, `stat_type3` = 7, `stat_value3` = 3, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=11625;

/*  Houndmaster's Bow  */
UPDATE `item_template` SET `dmg_min1` = 34.0, `dmg_max1` = 64.0 WHERE entry=11628;

/*  Houndmaster's Rifle  */
UPDATE `item_template` SET `dmg_min1` = 44.0, `dmg_max1` = 82.0 WHERE entry=11629;

/*  Stoneshell Guard  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=11631;

/*  Earthslag Shoulders  */
UPDATE `item_template` SET `stat_type2` = 5, `stat_value2` = 8, `spellid_1` = 9415 WHERE entry=11632;

/*  Spiderfang Carapace  */
UPDATE `item_template` SET `stat_value1` = 14, `stat_type3` = 5, `spellid_1` = 9342 WHERE entry=11633;

/*  Graverot Cape  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 6, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=11677;

/*  Rubicund Armguards  */
UPDATE `item_template` SET `stat_type1` = 7, `stat_type2` = 3 WHERE entry=11679;

/*  Ironfoe  */
UPDATE `item_template` SET `spellppmrate_1` = 0.8 WHERE entry=11684;

/*  Splinthide Shoulders  */
UPDATE `item_template` SET `stat_type3` = 5, `stat_type4` = 0, `stat_value4` = 0, `spellid_1` = 9415 WHERE entry=11685;

/*  Stonewall Girdle  */
UPDATE `item_template` SET `stat_type2` = 0, `stat_value2` = 0 WHERE entry=11703;

/*  Dregmetal Spaulders  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 10, `stat_type2` = 4, `stat_value2` = 6, `stat_type3` = 7, `stat_value3` = 5, `stat_type4` = 5, `stat_value4` = 15, `spellid_1` = 0, `spelltrigger_1` = 0, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=11722;

/*  Savage Gladiator Chain  */
UPDATE `item_template` SET `stat_type3` = 4, `stat_value3` = 13, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=11726;

/*  Savage Gladiator Leggings  */
UPDATE `item_template` SET `stat_type3` = 4, `stat_value3` = 12, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=11728;

/*  Savage Gladiator Helm  */
UPDATE `item_template` SET `stat_value1` = 28, `stat_value2` = 12 WHERE entry=11729;

/*  Savage Gladiator Grips  */
UPDATE `item_template` SET `stat_type4` = 4, `stat_value4` = 5, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=11730;

/*  Savage Gladiator Greaves  */
UPDATE `item_template` SET `stat_type2` = 4, `stat_value2` = 10, `stat_type3` = 7, `stat_value3` = 13, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=11731;

/*  Rockfist  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 32.0, `dmg_max1` = 60.0, `stat_type1` = 4, `stat_value1` = 10, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=11743;

/*  Flamestrider Robes  */
UPDATE `item_template` SET `fire_res` = 10, `stat_type4` = 0, `stat_value4` = 0 WHERE entry=11747;

/*  Pyric Caduceus  */
UPDATE `item_template` SET `spellid_1` = 9400 WHERE entry=11748;

/*  Searingscale Leggings  */
UPDATE `item_template` SET `fire_res` = 10, `stat_type1` = 6, `stat_value1` = 10, `stat_type4` = 3, `stat_value4` = 13, `spellid_1` = 0, `spelltrigger_1` = 0, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=11749;

/*  Kindling Stave  */
UPDATE `item_template` SET `fire_res` = 10, `stat_value1` = 13, `stat_type4` = 0, `stat_value4` = 0, `spellid_1` = 18384, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=11750;

/*  Incendic Bracers  */
UPDATE `item_template` SET `Quality` = 2, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 10 WHERE entry=11768;

/*  Boreal Mantle  */
UPDATE `item_template` SET `spellid_1` = 13831 WHERE entry=11782;

/*  Chillsteel Girdle  */
UPDATE `item_template` SET `frost_res` = 10, `stat_value1` = 20, `stat_type2` = 6, `stat_value2` = 7, `spellid_1` = 0, `spelltrigger_1` = 0, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=11783;

/*  Rock Golem Bulwark  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=11785;

/*  Rubidium Hammer  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=11805;

/*  Sash of the Burning Heart  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_type3` = 5, `spellid_1` = 9401 WHERE entry=11807;

/*  Circle of Flame  */
UPDATE `item_template` SET `fire_res` = 15, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=11808;

/*  Force of Will  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=11810;

/*  Smoking Heart of the Mountain  */
UPDATE `item_template` SET `fire_res` = 7, `nature_res` = 7, `frost_res` = 7, `shadow_res` = 7, `stat_type1` = 0, `stat_value1` = 0 WHERE entry=11811;

/*  Cape of the Fire Salamander  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 6, `stat_type2` = 7, `stat_value2` = 9 WHERE entry=11812;

/*  Molten Fists  */
UPDATE `item_template` SET `fire_res` = 10, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=11814;

/*  Second Wind  */
UPDATE `item_template` SET `spellid_1` = 15604, `spellcooldown_1` = 900000, `spellcategorycooldown_1` = 0, `spellid_3` = 0, `spellcooldown_3` = -1, `spellcategorycooldown_3` = -1 WHERE entry=11819;

/*  Warstrife Leggings  */
UPDATE `item_template` SET `stat_value1` = 6, `stat_value3` = 6, `spellid_1` = 13670 WHERE entry=11821;

/*  Cyclopean Band  */
UPDATE `item_template` SET `stat_type2` = 4 WHERE entry=11824;

/*  Burst of Knowledge  */
UPDATE `item_template` SET `spellid_1` = 15646, `spellcooldown_1` = 900000, `spellcategorycooldown_1` = 0, `spellid_3` = 0, `spellcooldown_3` = -1, `spellcategorycooldown_3` = -1 WHERE entry=11832;

/*  Chief Architect's Monocle  */
UPDATE `item_template` SET `stat_value1` = 27, `stat_type2` = 6, `stat_value2` = 3, `stat_type3` = 7, `stat_value3` = 10 WHERE entry=11839;

/*  Lead Surveyor's Mantle  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 8, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=11842;

/*  Charged Lightning Rod  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=11860;

/*  Rancor Boots  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_value1` = 12, `stat_type2` = 5, `stat_value2` = 11, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=11865;

/*  Choking Band  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=11868;

/*  Sha'ni's Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=11869;

/*  Archaeologist's Quarry Boots  */
UPDATE `item_template` SET `stat_type2` = 3, `stat_type3` = 5, `stat_value3` = 9, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=11908;

/*  Treetop Leggings  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 8, `stat_type3` = 6, `stat_value3` = 18, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=11911;

/*  Shizzle's Drizzle Blocker  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=11915;

/*  Robes of the Royal Crown  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=11924;

/*  Ghostshroud  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=11925;

/*  Thaurissan's Royal Scepter  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=11928;

/*  The Emperor's New Cape  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=11930;

/*  Imperial Jewel  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=11933;

/*  Emperor's Seal  */
UPDATE `item_template` SET `frost_res` = 6, `arcane_res` = 6, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 49, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=11934;

/*  Magmus Stone  */
UPDATE `item_template` SET `fire_res` = 15, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=11935;

/*  Relic Hunter Belt  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_type3` = 6, `stat_value3` = 2, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=11936;

/*  Dark Iron Ring  */
UPDATE `item_template` SET `Quality` = 2, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 9, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=11945;

/*  Fire Opal Necklace  */
UPDATE `item_template` SET `Quality` = 2, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 9, `spellcooldown_1` = -1 WHERE entry=11946;

/*  Cerulean Talisman  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12019;

/*  Thallium Choker  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12020;

/*  Iridium Chain  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12022;

/*  Tellurium Necklace  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12023;

/*  Vanadium Talisman  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12024;

/*  Selenium Chain  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12025;

/*  Quicksilver Pendant  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12026;

/*  Vermilion Necklace  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12027;

/*  Basalt Necklace  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12028;

/*  Greenstone Talisman  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12029;

/*  Jet Chain  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12030;

/*  Lodestone Necklace  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12031;

/*  Onyx Choker  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12032;

/*  Marble Necklace  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12034;

/*  Obsidian Pendant  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12035;

/*  Granite Necklace  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12036;

/*  Lagrave's Seal  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=12038;

/*  Tundra Necklace  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12039;

/*  Forest Pendant  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12040;

/*  Marsh Chain  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12042;

/*  Desert Choker  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12043;

/*  Arctic Pendant  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12044;

/*  Swamp Pendant  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12045;

/*  Jungle Necklace  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12046;

/*  Spectral Necklace  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12047;

/*  Prismatic Pendant  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12048;

/*  Hazecover Boots  */
UPDATE `item_template` SET `stat_type3` = 3, `stat_value3` = 4, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=12050;

/*  Ring of the Moon  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=12052;

/*  Volcanic Rock Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=12053;

/*  Demon Band  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=12054;

/*  Stardust Band  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=12055;

/*  Ring of the Heavens  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=12056;

/*  Dragonscale Band  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=12057;

/*  Demonic Bone Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=12058;

/*  Conqueror's Medallion  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12059;

/*  Skilled Fighting Blade  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0, `spellid_1` = 15776 WHERE entry=12062;

/*  Ward of the Elements  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=12065;

/*  Ring of the Aristocrat  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=12102;

/*  Star of Mystaria  */
UPDATE `item_template` SET `stat_type4` = 0, `stat_value4` = 0, `DisenchantID` = 49, `spellid_1` = 23727, `spelltrigger_2` = 0 WHERE entry=12103;

/*  Brindlethorn Tunic  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=12104;

/*  Pridemail Leggings  */
UPDATE `item_template` SET `Quality` = 2, `ItemLevel` = 60, `stat_type1` = 6, `stat_value1` = 13, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 17819, `spelltrigger_1` = 1 WHERE entry=12105;

/*  Boulderskin Breastplate  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=12106;

/*  Whispersilk Leggings  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=12107;

/*  Sunborne Cape  */
UPDATE `item_template` SET `spellid_1` = 9295 WHERE entry=12113;

/*  Bloodsail Admiral's Hat  */
UPDATE `item_template` SET `spellid_1` = 17567, `spelltrigger_1` = 0, `spellid_2` = 0, `spellcooldown_2` = -1 WHERE entry=12185;

/*  Test Defense Chest  */
UPDATE `item_template` SET `spellid_1` = 15804, `spelltrigger_1` = 1 WHERE entry=12187;

/*  Test Armor Chest  */
UPDATE `item_template` SET `spellid_1` = 15805, `spelltrigger_1` = 1 WHERE entry=12188;

/*  Smoldering Claw  */
UPDATE `item_template` SET `fire_res` = 10, `stat_type1` = 0, `stat_value1` = 0 WHERE entry=12243;

/*  Cindercloth Leggings  */
UPDATE `item_template` SET `spellid_1` = 9296 WHERE entry=12256;

/*  Serpent Clasp Belt  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0, `spellid_1` = 7597, `spelltrigger_1` = 1 WHERE entry=12258;

/*  Searing Golden Blade  */
UPDATE `item_template` SET `spellid_1` = 7689 WHERE entry=12260;

/*  Leggings of the People's Militia  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_type2` = 6, `stat_value2` = 2, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=12295;

/*  Spark of the People's Militia  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12296;

/*  Seal of Ascension  */
UPDATE `item_template` SET `fire_res` = 10, `nature_res` = 10, `frost_res` = 10, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `spellcooldown_1` = 180000, `spellcategorycooldown_1` = 0, `spellcategory_1` = 0 WHERE entry=12344;

/*  Thorium Armor  */
UPDATE `item_template` SET `fire_res` = 8, `nature_res` = 8, `frost_res` = 8, `shadow_res` = 8, `arcane_res` = 8, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=12405;

/*  Thorium Belt  */
UPDATE `item_template` SET `fire_res` = 6, `nature_res` = 6, `frost_res` = 6, `shadow_res` = 6, `arcane_res` = 6, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=12406;

/*  Thorium Bracers  */
UPDATE `item_template` SET `fire_res` = 5, `nature_res` = 5, `frost_res` = 5, `shadow_res` = 5, `arcane_res` = 5, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=12408;

/*  Thorium Boots  */
UPDATE `item_template` SET `fire_res` = 7, `nature_res` = 7, `frost_res` = 7, `shadow_res` = 7, `arcane_res` = 7, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=12409;

/*  Thorium Helm  */
UPDATE `item_template` SET `fire_res` = 10, `nature_res` = 10, `frost_res` = 10, `shadow_res` = 10, `arcane_res` = 10, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=12410;

/*  Thorium Leggings  */
UPDATE `item_template` SET `fire_res` = 10, `nature_res` = 10, `frost_res` = 10, `shadow_res` = 10, `arcane_res` = 10, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=12414;

/*  Radiant Breastplate  */
UPDATE `item_template` SET `frost_res` = 16, `shadow_res` = 16, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=12415;

/*  Radiant Belt  */
UPDATE `item_template` SET `frost_res` = 12, `shadow_res` = 12, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=12416;

/*  Radiant Circlet  */
UPDATE `item_template` SET `frost_res` = 18, `shadow_res` = 18, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=12417;

/*  Radiant Gloves  */
UPDATE `item_template` SET `frost_res` = 12, `shadow_res` = 12, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=12418;

/*  Radiant Boots  */
UPDATE `item_template` SET `frost_res` = 15, `shadow_res` = 15, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=12419;

/*  Radiant Leggings  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=12420;

/*  Knucklebone Pouch (DND)  */
UPDATE `item_template` SET `spellid_1` = 16197, `spellcharges_1` = -1 WHERE entry=12443;

/*  Anvilmar Musket  */
UPDATE `item_template` SET `dmg_min1` = 4.0, `dmg_max1` = 8.0 WHERE entry=12446;

/*  Thistlewood Bow  */
UPDATE `item_template` SET `dmg_min1` = 3.0, `dmg_max1` = 7.0 WHERE entry=12447;

/*  Light Hunting Rifle  */
UPDATE `item_template` SET `dmg_min1` = 2.0, `dmg_max1` = 6.0 WHERE entry=12448;

/*  Primitive Bow  */
UPDATE `item_template` SET `dmg_min1` = 4.0, `dmg_max1` = 8.0 WHERE entry=12449;

/*  Embrace of the Wind Serpent  */
UPDATE `item_template` SET `nature_res` = 12, `stat_value1` = 30, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=12462;

/*  Bloodfire Talons  */
UPDATE `item_template` SET `fire_res` = 10, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=12464;

/*  Nightfall Drape  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=12465;

/*  Dawnspire Cord  */
UPDATE `item_template` SET `stat_value1` = 19, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=12466;

/*  Chilton Wand  */
UPDATE `item_template` SET `dmg_min1` = 18.0, `dmg_max1` = 19.0, `spellcooldown_1` = -1 WHERE entry=12468;

/*  Mutilator  */
UPDATE `item_template` SET `ItemLevel` = 47, `dmg_min1` = 82.0, `dmg_max1` = 124.0, `RequiredLevel` = 42 WHERE entry=12469;

/*  Sandstalker Ankleguards  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_type3` = 4, `stat_value3` = 6 WHERE entry=12470;

/*  Desertwalker Cane  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=12471;

/*  Songstone of Ironforge  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12543;

/*  Thrall's Resolve  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=12544;

/*  Eye of Orgrimmar  */
UPDATE `item_template` SET `DisenchantID` = 49, `spelltrigger_2` = 0 WHERE entry=12545;

/*  Magni's Will  */
UPDATE `item_template` SET `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 49, `spellid_1` = 7597, `spelltrigger_2` = 0 WHERE entry=12548;

/*  Braincage  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 9, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=12549;

/*  High Priestess Boots  */
UPDATE `item_template` SET `shadow_res` = 10, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=12556;

/*  Keris of Zul'Serak  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12582;

/*  Blackhand Doomsaw  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12583;

/*  Eye of Rend  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12587;

/*  Bonespike Shoulder  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12588;

/*  Dustfeather Sash  */
UPDATE `item_template` SET `stat_value1` = 18, `stat_value2` = 10, `DisenchantID` = 49, `spellid_1` = 9415 WHERE entry=12589;

/*  Felstriker  */
UPDATE `item_template` SET `spellppmrate_1` = 1.0 WHERE entry=12590;

/*  Draconian Deflector  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12602;

/*  Nightbrace Tunic  */
UPDATE `item_template` SET `fire_res` = 10, `shadow_res` = 10, `stat_value1` = 5, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 49 WHERE entry=12603;

/*  Starfire Tiara  */
UPDATE `item_template` SET `fire_res` = 10, `DisenchantID` = 49, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=12604;

/*  Serpentine Skuller  */
UPDATE `item_template` SET `shadow_res` = 10, `stat_type1` = 0, `stat_value1` = 0, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=12605;

/*  Crystallized Girdle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12606;

/*  Butcher's Apron  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=12608;

/*  Polychromatic Visionwrap  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12609;

/*  Enchanted Thorium Breastplate  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12618;

/*  Enchanted Thorium Leggings  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12619;

/*  Enchanted Thorium Helm  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12620;

/*  Wildthorn Mail  */
UPDATE `item_template` SET `spellid_1` = 16638 WHERE entry=12624;

/*  Funeral Cuffs  */
UPDATE `item_template` SET `shadow_res` = 10, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=12626;

/*  Storm Gauntlets  */
UPDATE `item_template` SET `spellid_2` = 9361 WHERE entry=12632;

/*  Whitesoul Helm  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12633;

/*  Chiselbrand Girdle  */
UPDATE `item_template` SET `stat_type1` = 6, `DisenchantID` = 49 WHERE entry=12634;

/*  Helm of the Great Chief  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12636;

/*  Backusarian Gauntlets  */
UPDATE `item_template` SET `stat_value1` = 9, `stat_type2` = 5, `DisenchantID` = 49, `spellid_1` = 21618 WHERE entry=12637;

/*  Stronghold Gauntlets  */
UPDATE `item_template` SET `spellid_1` = 7219 WHERE entry=12639;

/*  Blackcrow  */
UPDATE `item_template` SET `dmg_min1` = 77.0, `dmg_max1` = 117.0 WHERE entry=12651;

/*  Riphook  */
UPDATE `item_template` SET `dmg_min1` = 46.0, `dmg_max1` = 87.0 WHERE entry=12653;

/*  Thorium Greatsword  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=12764;

/*  Bleakwood Hew  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=12769;

/*  Huge Thorium Battleaxe  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0, `spellid_1` = 15768 WHERE entry=12775;

/*  Rune Edge  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=12779;

/*  Heartseeker  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12783;

/*  Arcanite Reaper  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12784;

/*  Arcanite Champion  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12790;

/*  Masterwork Stormhammer  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12794;

/*  Blood Talon  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=12795;

/*  Hammer of the Titans  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12796;

/*  Frostguard  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12797;

/*  Annihilator  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellppmrate_1` = 1.0 WHERE entry=12798;

/*  Darkspear  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=12802;

/*  Orb of Fire  */
UPDATE `item_template` SET `spellid_1` = 16982, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 0 WHERE entry=12805;

/*  Wildfire Cape  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12905;

/*  Flaming Band  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellid_1` = 17866 WHERE entry=12926;

/*  Truestrike Shoulders  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12927;

/*  Emberfury Talisman  */
UPDATE `item_template` SET `fire_res` = 7, `stat_type2` = 6, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 49 WHERE entry=12929;

/*  Briarwood Reed  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12930;

/*  Warmaster Legguards  */
UPDATE `item_template` SET `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 49, `spellid_1` = 13670 WHERE entry=12935;

/*  Battleborn Armbraces  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12936;

/*  Dal'Rend's Tribal Guardian  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12939;

/*  Dal'Rend's Sacred Charge  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12940;

/*  Gyth's Skull  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12952;

/*  Dragoneye Coif  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12953;

/*  Tribal War Feathers  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12960;

/*  Blademaster Leggings  */
UPDATE `item_template` SET `stat_value1` = 5, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 49, `spellid_3` = 13670 WHERE entry=12963;

/*  Tristam Legguards  */
UPDATE `item_template` SET `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 49, `spellid_2` = 13670 WHERE entry=12964;

/*  Spiritshroud Leggings  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12965;

/*  Blackmist Armguards  */
UPDATE `item_template` SET `shadow_res` = 10, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 49 WHERE entry=12966;

/*  Bloodmoon Cloak  */
UPDATE `item_template` SET `arcane_res` = 7, `stat_value1` = 17, `stat_type2` = 6, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 49 WHERE entry=12967;

/*  Frostweaver Cape  */
UPDATE `item_template` SET `frost_res` = 10, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 49 WHERE entry=12968;

/*  Seeping Willow  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12969;

/*  General's Ceremonial Plate  */
UPDATE `item_template` SET `DisenchantID` = 0, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=12970;

/*  Skycaller  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12984;

/*  Band of Purification  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=12996;

/*  Drakewing Bands  */
UPDATE `item_template` SET `stat_type1` = 6 WHERE entry=12999;

/*  Staff of Hale Magefire  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13000;

/*  Maiden's Circle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13001;

/*  Lady Alizabeth's Pendant  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=13002;

/*  Torch of Austen  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=13004;

/*  Amy's Blanket  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=13005;

/*  Mass of McGowan  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellcooldown_1` = -1 WHERE entry=13006;

/*  Mageflame Cloak  */
UPDATE `item_template` SET `spellid_1` = 9298 WHERE entry=13007;

/*  Dreamsinger Legguards  */
UPDATE `item_template` SET `stat_type1` = 6 WHERE entry=13010;

/*  Silver-lined Belt  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 4, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=13011;

/*  Serathil  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13015;

/*  Harpyclaw Short Bow  */
UPDATE `item_template` SET `dmg_min1` = 20.0, `dmg_max1` = 38.0 WHERE entry=13019;

/*  Skystriker Bow  */
UPDATE `item_template` SET `dmg_min1` = 30.0, `dmg_max1` = 57.0 WHERE entry=13020;

/*  Needle Threader  */
UPDATE `item_template` SET `dmg_min1` = 34.0, `dmg_max1` = 64.0 WHERE entry=13021;

/*  Gryphonwing Long Bow  */
UPDATE `item_template` SET `dmg_min1` = 53.0, `dmg_max1` = 100.0 WHERE entry=13022;

/*  Eaglehorn Long Bow  */
UPDATE `item_template` SET `dmg_min1` = 40.0, `dmg_max1` = 76.0, `DisenchantID` = 49 WHERE entry=13023;

/*  Beazel's Basher  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=13024;

/*  Deadwood Sledge  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=13025;

/*  Heaven's Light  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=13026;

/*  Bonesnapper  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=13027;

/*  Bludstone Hammer  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellcooldown_1` = -1 WHERE entry=13028;

/*  Umbral Crystal  */
UPDATE `item_template` SET `spellid_1` = 9325 WHERE entry=13029;

/*  Orb of Mistmantle  */
UPDATE `item_template` SET `spellid_1` = 7678, `spellid_2` = 7707, `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0 WHERE entry=13031;

/*  Crystalpine Stinger  */
UPDATE `item_template` SET `dmg_min1` = 35.0, `dmg_max1` = 54.0 WHERE entry=13037;

/*  Swiftwind  */
UPDATE `item_template` SET `dmg_min1` = 34.0, `dmg_max1` = 51.0 WHERE entry=13038;

/*  Skull Splitting Crossbow  */
UPDATE `item_template` SET `dmg_min1` = 52.0, `dmg_max1` = 79.0 WHERE entry=13039;

/*  Heartseeking Crossbow  */
UPDATE `item_template` SET `dmg_min1` = 71.0, `dmg_max1` = 108.0 WHERE entry=13040;

/*  Looming Gavel  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=13048;

/*  Warmonger  */
UPDATE `item_template` SET `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 15466 WHERE entry=13052;

/*  Doombringer  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13053;

/*  The Needler  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13060;

/*  Thunderwood  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=13062;

/*  Starfaller  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=13063;

/*  Jaina's Firestarter  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=13064;

/*  Wand of Allistarj  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=13065;

/*  Stonegrip Gauntlets  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13072;

/*  Direwing Legguards  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13075;

/*  Widow's Clutch  */
UPDATE `item_template` SET `shadow_res` = 0, `arcane_res` = 13, `DisenchantID` = 0 WHERE entry=13080;

/*  Garrett Family Crest  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13083;

/*  Kaleidoscope Chain  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=13084;

/*  Horizon Choker  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=13085;

/*  River Pride Choker  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=13087;

/*  Gazlowe's Charm  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=13088;

/*  Skibi's Pendant  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=13089;

/*  Breastplate of the Chosen  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=13090;

/*  Blush Ember Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=13093;

/*  The Queen's Jewel  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=13094;

/*  Band of the Hierophant  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13096;

/*  Painweaver Band  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13098;

/*  Moccasins of the White Hare  */
UPDATE `item_template` SET `stat_type2` = 3, `stat_value2` = 3, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=13099;

/*  Glowing Magical Bracelets  */
UPDATE `item_template` SET `stat_type2` = 4, `stat_value2` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `spellcooldown_1` = -1 WHERE entry=13106;

/*  Magiskull Cuffs  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellcooldown_1` = -1 WHERE entry=13107;

/*  Wolffear Harness  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=13110;

/*  Winged Helm  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_type2` = 5, `stat_value2` = 23 WHERE entry=13112;

/*  Feathermoon Headdress  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 21, `DisenchantID` = 49 WHERE entry=13113;

/*  Troll's Bane Leggings  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 4 WHERE entry=13114;

/*  Sheepshear Mantle  */
UPDATE `item_template` SET `stat_type1` = 5, `stat_value1` = 16, `stat_type3` = 6 WHERE entry=13115;

/*  Spaulders of the Unseen  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13116;

/*  Ogron's Sash  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=13117;

/*  Serpentine Sash  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=13118;

/*  Dreamwalker Armor  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13123;

/*  Ravasaur Scale Boots  */
UPDATE `item_template` SET `stat_type1` = 6 WHERE entry=13124;

/*  Elven Chain Boots  */
UPDATE `item_template` SET `stat_type3` = 6 WHERE entry=13125;

/*  Battlecaller Gauntlets  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_type3` = 6, `stat_value3` = 15 WHERE entry=13126;

/*  Frostreaver Crown  */
UPDATE `item_template` SET `stat_type3` = 6 WHERE entry=13127;

/*  High Bergg Helm  */
UPDATE `item_template` SET `stat_type1` = 6 WHERE entry=13128;

/*  Windrunner Legguards  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=13130;

/*  Drakesfire Epaulets  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13133;

/*  Lil Timmy's Peashooter  */
UPDATE `item_template` SET `dmg_min1` = 20.0, `dmg_max1` = 37.0 WHERE entry=13136;

/*  Ironweaver  */
UPDATE `item_template` SET `dmg_min1` = 31.0, `dmg_max1` = 59.0 WHERE entry=13137;

/*  The Silencer  */
UPDATE `item_template` SET `dmg_min1` = 43.0, `dmg_max1` = 82.0 WHERE entry=13138;

/*  Guttbuster  */
UPDATE `item_template` SET `dmg_min1` = 49.0, `dmg_max1` = 92.0 WHERE entry=13139;

/*  Tooth of Gnarr  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13141;

/*  Brigam Girdle  */
UPDATE `item_template` SET `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 49, `spellid_1` = 15464 WHERE entry=13142;

/*  Shell Launcher Shotgun  */
UPDATE `item_template` SET `dmg_min1` = 48.0, `dmg_max1` = 89.0 WHERE entry=13146;

/*  Chillpike  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13148;

/*  Trindlehaven Staff  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13161;

/*  Reiver Claws  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13162;

/*  Relentless Scythe  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13163;

/*  Heart of the Scale  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13164;

/*  Slamshot Shoulders  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13166;

/*  Fist of Omokk  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13167;

/*  Plate of the Shaman King  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13168;

/*  Tressermane Leggings  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13169;

/*  Skyshroud Leggings  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13170;

/*  Voone's Twitchbow  */
UPDATE `item_template` SET `dmg_min1` = 31.0, `dmg_max1` = 58.0 WHERE entry=13175;

/*  Talisman of Evasion  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13177;

/*  Rosewine Circle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13178;

/*  Brazecore Armguards  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13179;

/*  Demonskin Gloves  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 17, `stat_type3` = 7, `stat_value3` = 9, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=13181;

/*  Venomspitter  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13183;

/*  Fallbrush Handgrips  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13184;

/*  Sunderseer Mantle  */
UPDATE `item_template` SET `stat_value1` = 17, `stat_value2` = 11, `DisenchantID` = 49, `spellid_1` = 9398 WHERE entry=13185;

/*  Hurd Smasher  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13198;

/*  Armswake Cloak  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13203;

/*  Bashguuder  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13204;

/*  Rhombeard Protector  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellcooldown_1` = -1 WHERE entry=13205;

/*  Wolfshear Leggings  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13206;

/*  Bleak Howler Armguards  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13208;

/*  Seal of the Dawn  */
UPDATE `item_template` SET `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=13209;

/*  Pads of the Dread Wolf  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13210;

/*  Slashclaw Bracers  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13211;

/*  Halycon's Spiked Collar  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13212;

/*  Smolderweb's Eye  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13213;

/*  Fang of the Crystal Spider  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13218;

/*  Argent Defender  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13243;

/*  Gilded Gauntlets  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13244;

/*  Argent Avenger  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13246;

/*  Burstshot Harquebus  */
UPDATE `item_template` SET `dmg_min1` = 52.0, `dmg_max1` = 98.0 WHERE entry=13248;

/*  Argent Crusader  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13249;

/*  Cloudrunner Girdle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13252;

/*  Hands of Power  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13253;

/*  Trueaim Gauntlets  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 17818, `spellid_2` = 15464, `spellid_3` = 27743, `spellid_4` = 27744 WHERE entry=13255;

/*  Demonic Runed Spaulders  */
UPDATE `item_template` SET `stat_type1` = 5, `stat_type3` = 4 WHERE entry=13257;

/*  Slaghide Gauntlets  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=13258;

/*  Ribsteel Footguards  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13259;

/*  Wind Dancer Boots  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13260;

/*  Globe of D'sak  */
UPDATE `item_template` SET `shadow_res` = 7, `stat_type1` = 5, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=13261;

/*  Ogreseer Tower Boots  */
UPDATE `item_template` SET `stat_type2` = 6, `spelltrigger_1` = 0 WHERE entry=13282;

/*  Magus Ring  */
UPDATE `item_template` SET `stat_value1` = 12, `stat_type2` = 6, `stat_value2` = 7, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=13283;

/*  Cape of the Black Baron  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13340;

/*  Dracorian Gauntlets  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13344;

/*  Seal of Rivendare  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=13345;

/*  Robes of the Exalted  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13346;

/*  Demonshear  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13348;

/*  Scepter of the Unholy  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellid_1` = 9326 WHERE entry=13349;

/*  Wyrmtongue Shoulders  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13358;

/*  Crown of Tyranny  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13359;

/*  Gift of the Elven Magi  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13360;

/*  Skullforge Reaver  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellppmrate_1` = 2.0 WHERE entry=13361;

/*  Bonescraper  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13368;

/*  Fire Striders  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellid_1` = 13830 WHERE entry=13369;

/*  Father Flame  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=13371;

/*  Slavedriver's Cane  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13372;

/*  Band of Flesh  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=13373;

/*  Soulstealer Mantle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13374;

/*  Crest of Retribution  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13375;

/*  Willey's Portable Howitzer  */
UPDATE `item_template` SET `dmg_min1` = 63.0, `dmg_max1` = 118.0, `DisenchantID` = 49 WHERE entry=13380;

/*  Master Cannoneer Boots  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13381;

/*  Cannonball Runner  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13382;

/*  Tome of Knowledge  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13385;

/*  Archivist Cape  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13386;

/*  Foresight Girdle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13387;

/*  The Postmaster's Tunic  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13388;

/*  The Postmaster's Trousers  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13389;

/*  The Postmaster's Band  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13390;

/*  The Postmaster's Treads  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13391;

/*  The Postmaster's Seal  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=13392;

/*  Malown's Slam  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13393;

/*  Skul's Ghastly Touch  */
UPDATE `item_template` SET `spellid_1` = 9414 WHERE entry=13396;

/*  Boots of the Shrieker  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13398;

/*  The Cruel Hand of Timmy  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13401;

/*  Mask of the Unforgiven  */
UPDATE `item_template` SET `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 15465, `spellid_2` = 7597 WHERE entry=13404;

/*  Soul Breaker  */
UPDATE `item_template` SET `spellppmrate_1` = 2.6 WHERE entry=13408;

/*  Felstone Good Luck Charm  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=13473;

/*  Farmer Dalson's Shotgun  */
UPDATE `item_template` SET `dmg_min1` = 34.0, `dmg_max1` = 64.0 WHERE entry=13474;

/*  Dalson Family Wedding Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=13475;

/*  Handcrafted Mastersmith Leggings  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13498;

/*  Handcrafted Mastersmith Girdle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13502;

/*  Ramstein's Lightning Bolts  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13515;

/*  Skull of Burning Shadows  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13524;

/*  Husk of Nerub'enkan  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellcooldown_1` = -1 WHERE entry=13529;

/*  Banshee Finger  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=13534;

/*  Test Crit Chest  */
UPDATE `item_template` SET `spellid_1` = 17713, `spelltrigger_1` = 1 WHERE entry=13586;

/*  Test Attack Power Chest  */
UPDATE `item_template` SET `spellid_1` = 18060, `spelltrigger_1` = 1 WHERE entry=13711;

/*  Test Sword Chest  */
UPDATE `item_template` SET `spellid_1` = 18061, `spelltrigger_1` = 1 WHERE entry=13712;

/*  Test Dodge Chest  */
UPDATE `item_template` SET `spellid_1` = 18062, `spelltrigger_1` = 1 WHERE entry=13713;

/*  Test Parry Chest  */
UPDATE `item_template` SET `spellid_1` = 18063, `spelltrigger_1` = 1 WHERE entry=13714;

/*  Test Block Chest  */
UPDATE `item_template` SET `spellid_1` = 18064, `spelltrigger_1` = 1 WHERE entry=13715;

/*  Test Haste Chest  */
UPDATE `item_template` SET `spellid_1` = 18065, `spelltrigger_1` = 1 WHERE entry=13716;

/*  Test Hit Chance Chest  */
UPDATE `item_template` SET `spellid_1` = 18066, `spelltrigger_1` = 1 WHERE entry=13717;

/*  Ring of the Dawn  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=13812;

/*  Recurve Long Bow  */
UPDATE `item_template` SET `dmg_min1` = 26.0, `dmg_max1` = 50.0 WHERE entry=13824;

/*  Primed Musket  */
UPDATE `item_template` SET `dmg_min1` = 20.0, `dmg_max1` = 37.0 WHERE entry=13825;

/*  Frostweave Robe  */
UPDATE `item_template` SET `spellid_1` = 17890 WHERE entry=13868;

/*  Frostweave Tunic  */
UPDATE `item_template` SET `spellid_1` = 17890 WHERE entry=13869;

/*  Frostweave Gloves  */
UPDATE `item_template` SET `spellid_1` = 9308 WHERE entry=13870;

/*  Frostweave Pants  */
UPDATE `item_template` SET `spellid_1` = 17891 WHERE entry=13871;

/*  Bonecreeper Stylus  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13938;

/*  Tombstone Breastplate  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13944;

/*  Detention Strap  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13950;

/*  Vigorsteel Vambraces  */
UPDATE `item_template` SET `DisenchantID` = 49, `spelltrigger_1` = 0 WHERE entry=13951;

/*  Iceblade Hacker  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13952;

/*  Silent Fang  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13953;

/*  Verdant Footpads  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellid_1` = 18030, `spellid_2` = 17988 WHERE entry=13954;

/*  Stoneform Shoulders  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13955;

/*  Clutch of Andros  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13956;

/*  Gargoyle Slashers  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13957;

/*  Wyrmthalak's Shackles  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13958;

/*  Omokk's Girth Restrainer  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13959;

/*  Heart of the Fiend  */
UPDATE `item_template` SET `DisenchantID` = 49, `spelltrigger_1` = 0, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `spelltrigger_2` = 0 WHERE entry=13960;

/*  Halycon's Muzzle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13961;

/*  Vosh'gajin's Strand  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13962;

/*  Voone's Vice Grips  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13963;

/*  Witchblade  */
UPDATE `item_template` SET `DisenchantID` = 49, `spelltrigger_2` = 0 WHERE entry=13964;

/*  Blackhand's Breadth  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13965;

/*  Mark of Tyranny  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13966;

/*  Windreaver Greaves  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13967;

/*  Eye of the Beast  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13968;

/*  Loomguard Armbraces  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13969;

/*  Warblade of Caer Darrow  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13982;

/*  Gravestone War Axe  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13983;

/*  Darrowspike  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13984;

/*  Crown of Caer Darrow  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13986;

/*  Darrowshire Strongguard  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14002;

/*  Barov Peasant Caller  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14022;

/*  Barov Peasant Caller  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14023;

/*  Frightalon  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14024;

/*  Mystic's Belt  */
UPDATE `item_template` SET `stat_type2` = 3, `stat_value2` = 2, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14025;

/*  Cindercloth Vest  */
UPDATE `item_template` SET `spellid_1` = 17866 WHERE entry=14042;

/*  Cindercloth Gloves  */
UPDATE `item_template` SET `spellid_1` = 9295 WHERE entry=14043;

/*  Cindercloth Cloak  */
UPDATE `item_template` SET `spellid_1` = 9400 WHERE entry=14044;

/*  Cindercloth Pants  */
UPDATE `item_template` SET `spellid_1` = 17867 WHERE entry=14045;

/*  Tyrande's Staff  */
UPDATE `item_template` SET `dmg_min1` = 4.0, `dmg_max1` = 6.0 WHERE entry=14083;

/*  Brightcloth Cloak  */
UPDATE `item_template` SET `spellid_1` = 7703 WHERE entry=14103;

/*  Felcloth Robe  */
UPDATE `item_template` SET `spellid_1` = 18015 WHERE entry=14106;

/*  Felcloth Pants  */
UPDATE `item_template` SET `spellid_1` = 18008 WHERE entry=14107;

/*  Felcloth Boots  */
UPDATE `item_template` SET `spellid_1` = 9295 WHERE entry=14108;

/*  Felcloth Hood  */
UPDATE `item_template` SET `spellid_1` = 18011 WHERE entry=14111;

/*  Felcloth Shoulders  */
UPDATE `item_template` SET `spellid_1` = 18008 WHERE entry=14112;

/*  Robe of Winter Night  */
UPDATE `item_template` SET `spellid_1` = 18018, `spellid_2` = 17900 WHERE entry=14136;

/*  Mooncloth Vest  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14138;

/*  Mooncloth Shoulders  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14139;

/*  Mooncloth Circlet  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14140;

/*  Cursed Felblade  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 16.0, `dmg_max1` = 31.0, `DisenchantID` = 22 WHERE entry=14145;

/*  Cavedweller Bracers  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 1, `stat_value2` = 2, `DisenchantID` = 2 WHERE entry=14147;

/*  Crystalline Cuffs  */
UPDATE `item_template` SET `Quality` = 2, `stat_value2` = 1, `DisenchantID` = 2, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14148;

/*  Subterranean Cape  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 2, `stat_value2` = 2, `DisenchantID` = 2 WHERE entry=14149;

/*  Robe of Evocation  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 4, `stat_value2` = 3, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 2 WHERE entry=14150;

/*  Chanting Blade  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 9.0, `dmg_max1` = 18.0, `stat_value1` = 1, `stat_value2` = 1, `DisenchantID` = 22 WHERE entry=14151;

/*  Robe of the Void  */
UPDATE `item_template` SET `spelltrigger_3` = 0 WHERE entry=14153;

/*  Freezing Lich Robes  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellid_1` = 17902 WHERE entry=14340;

/*  Mystic's Wrap  */
UPDATE `item_template` SET `stat_type1` = 3 WHERE entry=14369;

/*  Mystic's Robe  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_value1` = 3, `stat_type2` = 5, `stat_value2` = 7, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14371;

/*  Sanguine Trousers  */
UPDATE `item_template` SET `stat_type2` = 4, `stat_value2` = 4, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14379;

/*  Durability Staff  */
UPDATE `item_template` SET `dmg_min1` = 2.0, `dmg_max1` = 3.0 WHERE entry=14392;

/*  Resilient Tunic  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_value1` = 4, `stat_type2` = 5, `stat_value2` = 11, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14398;

/*  Resilient Boots  */
UPDATE `item_template` SET `stat_type2` = 3, `stat_value2` = 2, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14399;

/*  Resilient Cap  */
UPDATE `item_template` SET `stat_type3` = 3, `stat_value3` = 2, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14401;

/*  Resilient Handgrips  */
UPDATE `item_template` SET `stat_type2` = 3, `stat_value2` = 3, `stat_type3` = 7, `stat_value3` = 4, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14403;

/*  Resilient Leggings  */
UPDATE `item_template` SET `stat_type2` = 3, `stat_value2` = 5, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14404;

/*  Resilient Robe  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_value1` = 4, `stat_type2` = 5, `stat_value2` = 11, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14405;

/*  Resilient Cord  */
UPDATE `item_template` SET `stat_type3` = 4, `stat_value3` = 1, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14406;

/*  Stonecloth Vest  */
UPDATE `item_template` SET `stat_type2` = 4, `stat_value2` = 2, `stat_type3` = 6, `stat_value3` = 15, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14407;

/*  Stonecloth Circlet  */
UPDATE `item_template` SET `stat_type2` = 4, `stat_value2` = 3, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14410;

/*  Stonecloth Robe  */
UPDATE `item_template` SET `stat_type2` = 4, `stat_value2` = 2, `stat_type3` = 6, `stat_value3` = 15, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14413;

/*  Stonecloth Belt  */
UPDATE `item_template` SET `stat_type3` = 3, `stat_value3` = 3, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14414;

/*  Silksand Shoulder Pads  */
UPDATE `item_template` SET `stat_type3` = 4, `stat_value3` = 1, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14423;

/*  Windchaser Footpads  */
UPDATE `item_template` SET `stat_type2` = 3, `stat_value2` = 3, `stat_type3` = 6, `stat_value3` = 12, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14428;

/*  Windchaser Cuffs  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_value1` = 2, `stat_type2` = 5, `stat_value2` = 9, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14429;

/*  Windchaser Handguards  */
UPDATE `item_template` SET `stat_type2` = 3, `stat_value2` = 3, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14431;

/*  Windchaser Amice  */
UPDATE `item_template` SET `stat_type2` = 3, `stat_value2` = 3, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14432;

/*  Windchaser Woolies  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 5, `stat_type3` = 5, `stat_value3` = 12, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14433;

/*  Windchaser Coronet  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_value1` = 4, `stat_type3` = 6, `stat_value3` = 7, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14436;

/*  Highborne Footpads  */
UPDATE `item_template` SET `stat_type2` = 3, `stat_value2` = 4, `stat_type3` = 7, `stat_value3` = 9, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14447;

/*  Highborne Crown  */
UPDATE `item_template` SET `stat_type3` = 4, `stat_value3` = 3, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14449;

/*  Highborne Gloves  */
UPDATE `item_template` SET `stat_type3` = 3, `stat_value3` = 5, `stat_type4` = 4, `stat_value4` = 3, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14451;

/*  Highborne Cord  */
UPDATE `item_template` SET `stat_type3` = 3, `stat_value3` = 5, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14454;

/*  Elunarian Vest  */
UPDATE `item_template` SET `stat_type3` = 4, `stat_value3` = 5, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14456;

/*  Elunarian Silk Robes  */
UPDATE `item_template` SET `stat_type3` = 4, `stat_value3` = 5, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14464;

/*  Elunarian Belt  */
UPDATE `item_template` SET `stat_type3` = 4, `stat_value3` = 6, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14465;

/*  Bonechill Hammer  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14487;

/*  Frostbite Girdle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14502;

/*  Death's Clutch  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14503;

/*  Maelstrom Leggings  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14522;

/*  Boneclenched Gauntlets  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14525;

/*  Rattlecage Buckler  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellcooldown_1` = -1 WHERE entry=14528;

/*  Bonebrace Hauberk  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14536;

/*  Corpselight Greaves  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14537;

/*  Deadwalker Mantle  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellid_1` = 9413 WHERE entry=14538;

/*  Bone Ring Helm  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 6, `stat_type3` = 6, `stat_type4` = 5, `DisenchantID` = 49, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=14539;

/*  Barovian Family Sword  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14541;

/*  Darkshade Gloves  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14543;

/*  Ghostloom Leggings  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 13, `DisenchantID` = 49 WHERE entry=14545;

/*  Royal Cap Spaulders  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14548;

/*  Bladebane Armguards  */
UPDATE `item_template` SET `stat_value2` = 10, `stat_type3` = 6, `stat_type4` = 4, `stat_value4` = 6 WHERE entry=14550;

/*  Edgemaster's Handguards  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 15874, `spellid_2` = 7578, `spellid_3` = 7527 WHERE entry=14551;

/*  Alcor's Sunrazor  */
UPDATE `item_template` SET `spellppmrate_1` = 1.3 WHERE entry=14555;

/*  Ebon Hilt of Marduk  */
UPDATE `item_template` SET `spellppmrate_1` = 1.8 WHERE entry=14576;

/*  Skullsmoke Pants  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14577;

/*  Hawkeye's Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14607;

/*  Dokebi Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14608;

/*  Bloodmail Hauberk  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14611;

/*  Bloodmail Legguards  */
UPDATE `item_template` SET `DisenchantID` = 49, `spelltrigger_1` = 0, `spelltrigger_2` = 0 WHERE entry=14612;

/*  Bloodmail Belt  */
UPDATE `item_template` SET `DisenchantID` = 49, `spelltrigger_1` = 0 WHERE entry=14614;

/*  Bloodmail Gauntlets  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14615;

/*  Bloodmail Boots  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14616;

/*  Deathbone Girdle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14620;

/*  Deathbone Sabatons  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14621;

/*  Deathbone Gauntlets  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14622;

/*  Deathbone Legguards  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14623;

/*  Deathbone Chestplate  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14624;

/*  Necropile Robe  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14626;

/*  Necropile Cuffs  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14629;

/*  Necropile Boots  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14631;

/*  Necropile Leggings  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14632;

/*  Necropile Mantle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14633;

/*  Cadaverous Belt  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14636;

/*  Cadaverous Armor  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14637;

/*  Cadaverous Leggings  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14638;

/*  Cadaverous Gloves  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14640;

/*  Cadaverous Walkers  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14641;

/*  War Paint Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14729;

/*  Slayer's Skullcap  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=14753;

/*  Ravager's Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14777;

/*  Khan's Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14780;

/*  Protector Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14790;

/*  Bloodlust Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14800;

/*  Warstrike Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14812;

/*  Symbolic Crest  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14825;

/*  Tyrant's Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14842;

/*  Sunscale Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14852;

/*  Test Glaive I  */
UPDATE `item_template` SET `dmg_min1` = 2.0, `dmg_max1` = 5.0 WHERE entry=14891;

/*  Saltstone Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14902;

/*  Brutish Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14912;

/*  Jade Deflector  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14916;

/*  Lofty Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14930;

/*  Warbringer's Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14947;

/*  Bloodforged Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14954;

/*  High Chief's Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14964;

/*  Glorious Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14973;

/*  Exalted Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14982;

/*  Primal Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15006;

/*  Lupine Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15014;

/*  Green Dragonscale Breastplate  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 21, `stat_type2` = 7, `stat_value2` = 10, `stat_type3` = 0, `stat_value3` = 0, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15045;

/*  Green Dragonscale Leggings  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 22, `stat_type2` = 7, `stat_value2` = 10, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=15046;

/*  Red Dragonscale Breastplate  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=15047;

/*  Blue Dragonscale Breastplate  */
UPDATE `item_template` SET `arcane_res` = 8, `stat_value1` = 28, `stat_type2` = 6, `stat_value2` = 8, `stat_type3` = 0, `stat_value3` = 0, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15048;

/*  Blue Dragonscale Shoulders  */
UPDATE `item_template` SET `arcane_res` = 6, `stat_value1` = 21, `stat_type2` = 6, `stat_value2` = 6, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=15049;

/*  Black Dragonscale Breastplate  */
UPDATE `item_template` SET `fire_res` = 12, `stat_type1` = 7, `stat_value1` = 8, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 14056 WHERE entry=15050;

/*  Black Dragonscale Shoulders  */
UPDATE `item_template` SET `fire_res` = 6, `stat_type1` = 7, `stat_value1` = 9, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 49, `spellid_1` = 14049 WHERE entry=15051;

/*  Black Dragonscale Leggings  */
UPDATE `item_template` SET `ItemLevel` = 62, `fire_res` = 13, `stat_type1` = 7, `stat_value1` = 8, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 49, `spellid_1` = 15813, `RequiredLevel` = 57 WHERE entry=15052;

/*  Volcanic Breastplate  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15053;

/*  Living Breastplate  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=15059;

/*  Living Shoulders  */
UPDATE `item_template` SET `nature_res` = 3, `stat_type1` = 6, `stat_value1` = 13, `stat_type2` = 7, `stat_value2` = 8, `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 9317 WHERE entry=15061;

/*  Devilsaur Leggings  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=15062;

/*  Warbear Harness  */
UPDATE `item_template` SET `stat_type1` = 7, `stat_value1` = 27, `stat_type2` = 4, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15064;

/*  Warbear Woolies  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 28 WHERE entry=15065;

/*  Ironfeather Breastplate  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 28, `stat_value2` = 12, `stat_type3` = 0, `stat_value3` = 0, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15066;

/*  Ironfeather Shoulders  */
UPDATE `item_template` SET `stat_type1` = 5, `stat_value1` = 20, `stat_type2` = 6, `stat_value2` = 8, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=15067;

/*  Frostsaber Tunic  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15068;

/*  Frostsaber Gloves  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15070;

/*  Frostsaber Boots  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=15071;

/*  Chimeric Boots  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15073;

/*  Chimeric Gloves  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15074;

/*  Chimeric Vest  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15075;

/*  Heavy Scorpid Vest  */
UPDATE `item_template` SET `stat_type1` = 7, `stat_value1` = 16, `stat_type2` = 6 WHERE entry=15076;

/*  Heavy Scorpid Bracers  */
UPDATE `item_template` SET `stat_type1` = 7, `stat_value1` = 8, `stat_type2` = 6, `stat_value2` = 8, `spelltrigger_1` = 0 WHERE entry=15077;

/*  Heavy Scorpid Leggings  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 20 WHERE entry=15079;

/*  Heavy Scorpid Helm  */
UPDATE `item_template` SET `stat_type1` = 7, `stat_value1` = 20, `stat_type2` = 6, `spelltrigger_1` = 0 WHERE entry=15080;

/*  Heavy Scorpid Shoulders  */
UPDATE `item_template` SET `stat_type1` = 7, `stat_value1` = 14, `stat_type2` = 6, `stat_value2` = 13 WHERE entry=15081;

/*  Heavy Scorpid Belt  */
UPDATE `item_template` SET `stat_type1` = 7, `stat_value1` = 12, `stat_type2` = 6, `stat_value2` = 12, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15082;

/*  Wicked Leather Bracers  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=15084;

/*  Wicked Leather Headband  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=15086;

/*  Wicked Leather Belt  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15088;

/*  Runic Leather Armor  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=15090;

/*  Runic Leather Gauntlets  */
UPDATE `item_template` SET `stat_type2` = 5 WHERE entry=15091;

/*  Runic Leather Bracers  */
UPDATE `item_template` SET `stat_type2` = 6, `spelltrigger_1` = 0 WHERE entry=15092;

/*  Runic Leather Belt  */
UPDATE `item_template` SET `stat_type2` = 6, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15093;

/*  Runic Leather Headband  */
UPDATE `item_template` SET `stat_type2` = 6, `spelltrigger_1` = 0 WHERE entry=15094;

/*  Runic Leather Pants  */
UPDATE `item_template` SET `stat_type2` = 5 WHERE entry=15095;

/*  Runic Leather Shoulders  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=15096;

/*  Wingborne Boots  */
UPDATE `item_template` SET `Quality` = 2, `DisenchantID` = 6, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=15104;

/*  Staff of Noh'Orahil  */
UPDATE `item_template` SET `spellid_1` = 9296 WHERE entry=15105;

/*  Staff of Dar'Orahil  */
UPDATE `item_template` SET `spellid_1` = 9326 WHERE entry=15106;

/*  Orb of Noh'Orahil  */
UPDATE `item_template` SET `spellid_1` = 9401 WHERE entry=15107;

/*  Orb of Dar'Orahil  */
UPDATE `item_template` SET `spellid_1` = 9414 WHERE entry=15108;

/*  Staff of Soran'ruk  */
UPDATE `item_template` SET `spellid_1` = 7710, `spellid_2` = 7688 WHERE entry=15109;

/*  Rigid Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15113;

/*  Highborne Pants  */
UPDATE `item_template` SET `stat_type3` = 3, `stat_value3` = 9, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=15119;

/*  Cutthroat's Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15133;

/*  Onyxia Scale Cloak  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=15138;

/*  Onyxia Scale Breastplate  */
UPDATE `item_template` SET `spellid_1` = 7597, `spelltrigger_1` = 1, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=15141;

/*  Ghostwalker Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15145;

/*  Senior Sergeant's Insignia  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15200;

/*  Moonstone Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15204;

/*  Owlsight Rifle  */
UPDATE `item_template` SET `dmg_min1` = 14.0, `dmg_max1` = 27.0 WHERE entry=15205;

/*  Nobles Brand  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=15214;

/*  Holy War Sword  */
UPDATE `item_template` SET `dmg_min1` = 59.0, `dmg_max1` = 111.0 WHERE entry=15221;

/*  Demon's Claw  */
UPDATE `item_template` SET `dmg_max1` = 115.0 WHERE entry=15240;

/*  Bloodstrike Dagger  */
UPDATE `item_template` SET `dmg_max1` = 85.0 WHERE entry=15247;

/*  Divine Warblade  */
UPDATE `item_template` SET `dmg_min1` = 109.0, `dmg_max1` = 164.0 WHERE entry=15258;

/*  Gigantic War Axe  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=15270;

/*  Colossal Great Axe  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=15271;

/*  Razor Axe  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=15272;

/*  Death Striker  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=15273;

/*  Ivory Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15279;

/*  Wizard's Hand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15280;

/*  Glowstar Rod  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15281;

/*  Dragon Finger  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15282;

/*  Lunar Wand  */
UPDATE `item_template` SET `dmg_max1` = 126.0, `spellcooldown_1` = -1 WHERE entry=15283;

/*  Long Battle Bow  */
UPDATE `item_template` SET `dmg_min1` = 18.0, `dmg_max1` = 34.0 WHERE entry=15284;

/*  Archer's Longbow  */
UPDATE `item_template` SET `dmg_min1` = 23.0, `dmg_max1` = 44.0 WHERE entry=15285;

/*  Long Redwood Bow  */
UPDATE `item_template` SET `dmg_min1` = 28.0, `dmg_max1` = 52.0 WHERE entry=15286;

/*  Crusader Bow  */
UPDATE `item_template` SET `dmg_min1` = 32.0, `dmg_max1` = 60.0 WHERE entry=15287;

/*  Blasthorn Bow  */
UPDATE `item_template` SET `dmg_min1` = 51.0, `dmg_max1` = 96.0 WHERE entry=15288;

/*  Archstrike Bow  */
UPDATE `item_template` SET `dmg_min1` = 48.0, `dmg_max1` = 91.0 WHERE entry=15289;

/*  Harpy Needler  */
UPDATE `item_template` SET `dmg_min1` = 44.0, `dmg_max1` = 84.0 WHERE entry=15291;

/*  Siege Bow  */
UPDATE `item_template` SET `dmg_min1` = 48.0, `dmg_max1` = 90.0 WHERE entry=15294;

/*  Quillfire Bow  */
UPDATE `item_template` SET `dmg_min1` = 41.0, `dmg_max1` = 77.0 WHERE entry=15295;

/*  Hawkeye Bow  */
UPDATE `item_template` SET `dmg_min1` = 35.0, `dmg_max1` = 65.0 WHERE entry=15296;

/*  Grizzly Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15298;

/*  Feral Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15307;

/*  Smoothbore Gun  */
UPDATE `item_template` SET `dmg_min1` = 29.0, `dmg_max1` = 54.0 WHERE entry=15322;

/*  Percussion Shotgun  */
UPDATE `item_template` SET `dmg_min1` = 37.0, `dmg_max1` = 70.0 WHERE entry=15323;

/*  Burnside Rifle  */
UPDATE `item_template` SET `dmg_min1` = 45.0, `dmg_max1` = 85.0 WHERE entry=15324;

/*  Sharpshooter Harquebus  */
UPDATE `item_template` SET `dmg_min1` = 43.0, `dmg_max1` = 80.0 WHERE entry=15325;

/*  Wrangler's Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15332;

/*  Headhunter's Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15352;

/*  Trickster's Protector  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15367;

/*  Oakthrush Staff  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15397;

/*  Mark of Fordring  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=15411;

/*  Ornate Adamantium Breastplate  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=15413;

/*  Shimmering Platinum Warhammer  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=15418;

/*  Shroud of the Exile  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=15421;

/*  Stingshot Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15465;

/*  Inventor's League Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15467;

/*  Charger's Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15478;

/*  War Torn Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15486;

/*  Bloodspattered Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15494;

/*  Outrunner's Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15504;

/*  Grunt's Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15512;

/*  Spiked Chain Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15522;

/*  Sentry's Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15530;

/*  Sentry's Headdress  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15533;

/*  Wicked Chain Helmet  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15540;

/*  Wicked Chain Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15543;

/*  Thick Scale Crown  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15550;

/*  Thick Scale Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15552;

/*  Pillager's Crown  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15558;

/*  Pillager's Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15563;

/*  Marauder's Crest  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15569;

/*  Sparkleshell Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15584;

/*  Steadfast Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15592;

/*  Ancient Defender  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15604;

/*  Bonelink Wall Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15618;

/*  Gryphon Mail Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15621;

/*  Formidable Crest  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15633;

/*  Ironhide Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15648;

/*  Merciless Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15657;

/*  Impenetrable Wall  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15667;

/*  Magnificent Guard  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15675;

/*  Triumphant Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15687;

/*  Kodobone Necklace  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15690;

/*  Sidegunner Shottie  */
UPDATE `item_template` SET `dmg_min1` = 32.0, `dmg_max1` = 61.0 WHERE entry=15691;

/*  Kodo Brander  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15692;

/*  Studded Ring Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15695;

/*  Chemist's Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15702;

/*  Hunter's Insignia Medal  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15704;

/*  Brantwood Sash  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_value1` = 9, `stat_type3` = 6, `stat_value3` = 10, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=15707;

/*  Turquoise Sash  */
UPDATE `item_template` SET `stat_type3` = 3, `stat_value3` = 6, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=15791;

/*  Heroic Commendation Medal  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 12, `stat_type2` = 6, `stat_value2` = 5, `DisenchantID` = 10, `spellcooldown_1` = -1 WHERE entry=15799;

/*  Intrepid Shortsword  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 50.0, `dmg_max1` = 95.0, `stat_type1` = 7, `stat_value1` = 11, `DisenchantID` = 30 WHERE entry=15800;

/*  Valiant Shortsword  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 50.0, `dmg_max1` = 95.0, `stat_type1` = 5, `stat_value1` = 11, `DisenchantID` = 30 WHERE entry=15801;

/*  Penelope's Rose  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=15805;

/*  Mirah's Song  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=15806;

/*  Light Crossbow  */
UPDATE `item_template` SET `dmg_min1` = 6.0, `dmg_max1` = 7.0 WHERE entry=15807;

/*  Fine Light Crossbow  */
UPDATE `item_template` SET `dmg_min1` = 20.0, `dmg_max1` = 20.0 WHERE entry=15808;

/*  Heavy Crossbow  */
UPDATE `item_template` SET `dmg_min1` = 36.0, `dmg_max1` = 37.0 WHERE entry=15809;

/*  Orchid Amice  */
UPDATE `item_template` SET `stat_type3` = 4, `stat_value3` = 4, `stat_type4` = 6, `stat_value4` = 3, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=15812;

/*  Astoria Robes  */
UPDATE `item_template` SET `stat_type3` = 4, `stat_value3` = 5, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=15824;

/*  Windreaper  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=15853;

/*  Dancing Sliver  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=15854;

/*  Ring of Protection  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15855;

/*  Archlight Talisman  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellcooldown_1` = -1 WHERE entry=15856;

/*  Magebane Scion  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=15857;

/*  Grave Scepter  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15863;

/*  Anchorhold Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15865;

/*  Ragged John's Neverending Cup  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=15873;

/*  Heroic Guard  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15887;

/*  Vanguard Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15890;

/*  Hulking Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15891;

/*  Prospector's Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15893;

/*  Burnt Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15895;

/*  Conjurer's Sphere  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15918;

/*  Hibernal Sphere  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `spellcooldown_2` = -1, `spellcategorycooldown_2` = -1, `spellcooldown_3` = -1, `spellcategorycooldown_3` = -1 WHERE entry=15937;

/*  Imbued Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15943;

/*  Silksand Star  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15964;

/*  Windchaser Orb  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15965;

/*  Venomshroud Orb  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15966;

/*  Beaded Orb  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15969;

/*  Native Branch  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `spellcooldown_2` = -1, `spellcategorycooldown_2` = -1, `spellcooldown_3` = -1, `spellcategorycooldown_3` = -1 WHERE entry=15970;

/*  Aboriginal Rod  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `spellcooldown_2` = -1, `spellcategorycooldown_2` = -1, `spellcooldown_3` = -1, `spellcategorycooldown_3` = -1 WHERE entry=15971;

/*  Ritual Stein  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15972;

/*  Watcher's Star  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15973;

/*  Pagan Rod  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15974;

/*  Raincaller Scepter  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `spellcooldown_2` = -1, `spellcategorycooldown_2` = -1, `spellcooldown_3` = -1, `spellcategorycooldown_3` = -1 WHERE entry=15975;

/*  Thistlefur Branch  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15976;

/*  Vital Orb  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15977;

/*  Geomancer's Rod  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15978;

/*  Embersilk Stave  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15979;

/*  Darkmist Orb  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15980;

/*  Lunar Sphere  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15981;

/*  Bloodwoven Rod  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15982;

/*  Gaea's Scepter  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15983;

/*  Opulent Scepter  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15984;

/*  Arachnidian Branch  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15985;

/*  Bonecaster's Star  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15986;

/*  Astral Orb  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `spellcooldown_2` = -1, `spellcategorycooldown_2` = -1, `spellcooldown_3` = -1, `spellcategorycooldown_3` = -1 WHERE entry=15987;

/*  Resplendent Orb  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15988;

/*  Eternal Rod  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `spellcooldown_2` = -1, `spellcategorycooldown_2` = -1, `spellcooldown_3` = -1, `spellcategorycooldown_3` = -1 WHERE entry=15989;

/*  Warleader's Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15991;

/*  Thorium Rifle  */
UPDATE `item_template` SET `dmg_min1` = 42.0, `dmg_max1` = 79.0 WHERE entry=15995;

/*  Dark Iron Rifle  */
UPDATE `item_template` SET `dmg_min1` = 53.0, `dmg_max1` = 100.0 WHERE entry=16004;

/*  Flawless Arcanite Rifle  */
UPDATE `item_template` SET `dmg_min1` = 65.0, `dmg_max1` = 122.0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 49, `spellid_1` = 7581 WHERE entry=16007;

/*  Voice Amplification Modulator  */
UPDATE `item_template` SET `spellid_1` = 19786 WHERE entry=16009;

/*  Fordring's Seal  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16058;

/*  Test Fire Res Shoulders Cloth  */
UPDATE `item_template` SET `spellid_1` = 14590, `spelltrigger_1` = 1 WHERE entry=16061;

/*  Test Fire Res Waist Cloth  */
UPDATE `item_template` SET `spellid_1` = 14590, `spelltrigger_1` = 1 WHERE entry=16062;

/*  Test Fire Res Hands Cloth  */
UPDATE `item_template` SET `spellid_1` = 14590, `spelltrigger_1` = 1 WHERE entry=16063;

/*  Test Fire Res Waist Mail  */
UPDATE `item_template` SET `spellid_1` = 14590, `spelltrigger_1` = 1 WHERE entry=16064;

/*  Test Fire Res Feet Leather  */
UPDATE `item_template` SET `spellid_1` = 14590, `spelltrigger_1` = 1 WHERE entry=16065;

/*  Test Fire Res Feet Mail  */
UPDATE `item_template` SET `spellid_1` = 14590, `spelltrigger_1` = 1 WHERE entry=16066;

/*  Test Fire Res Ring  */
UPDATE `item_template` SET `spellid_1` = 14588, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 180000 WHERE entry=16067;

/*  Test Nature Res Cloak Cloth  */
UPDATE `item_template` SET `spellid_1` = 14628, `spelltrigger_1` = 1 WHERE entry=16116;

/*  Test Nature Res Hands Cloth  */
UPDATE `item_template` SET `spellid_1` = 14630, `spelltrigger_1` = 1 WHERE entry=16117;

/*  Test Nature Res Legs Cloth  */
UPDATE `item_template` SET `spellid_1` = 14635, `spelltrigger_1` = 1 WHERE entry=16118;

/*  Test Nature Res Wrist Cloth  */
UPDATE `item_template` SET `spellid_1` = 14628, `spelltrigger_1` = 1 WHERE entry=16119;

/*  Test Nature Res Waist Cloth  */
UPDATE `item_template` SET `spellid_1` = 14630, `spelltrigger_1` = 1 WHERE entry=16120;

/*  Test Nature Res Head Cloth  */
UPDATE `item_template` SET `spellid_1` = 14635, `spelltrigger_1` = 1 WHERE entry=16121;

/*  Test Nature Res Shoulders Cloth  */
UPDATE `item_template` SET `spellid_1` = 14630, `spelltrigger_1` = 1 WHERE entry=16122;

/*  Test Nature Res Neck  */
UPDATE `item_template` SET `spellid_1` = 14628, `spelltrigger_1` = 1, `spellcooldown_1` = 0 WHERE entry=16123;

/*  Test Frost Res Neck  */
UPDATE `item_template` SET `spellid_1` = 14548, `spelltrigger_1` = 1, `spellcooldown_1` = 0 WHERE entry=16124;

/*  Test Arcane Res Neck  */
UPDATE `item_template` SET `spellid_1` = 14710, `spelltrigger_1` = 1, `spellcooldown_1` = 0 WHERE entry=16125;

/*  Test Nature Res Waist Leather  */
UPDATE `item_template` SET `spellid_1` = 14630, `spelltrigger_1` = 1 WHERE entry=16126;

/*  Test Nature Res Wrist Leather  */
UPDATE `item_template` SET `spellid_1` = 14628, `spelltrigger_1` = 1 WHERE entry=16127;

/*  Test Nature Res Feet Mail  */
UPDATE `item_template` SET `spellid_1` = 14630, `spelltrigger_1` = 1 WHERE entry=16129;

/*  Test Nature Res Waist Mail  */
UPDATE `item_template` SET `spellid_1` = 14630, `spelltrigger_1` = 1 WHERE entry=16131;

/*  Test Nature Res Wrist Mail  */
UPDATE `item_template` SET `spellid_1` = 14628, `spelltrigger_1` = 1 WHERE entry=16132;

/*  Test Nature Res Shoulders Mail  */
UPDATE `item_template` SET `spellid_1` = 14630, `spelltrigger_1` = 1 WHERE entry=16134;

/*  Test Frost Res Feet Cloth  */
UPDATE `item_template` SET `spellid_1` = 14550, `spelltrigger_1` = 1 WHERE entry=16135;

/*  Test Frost Res Waist Cloth  */
UPDATE `item_template` SET `spellid_1` = 14550, `spelltrigger_1` = 1 WHERE entry=16136;

/*  Test Frost Res Wrist Cloth  */
UPDATE `item_template` SET `spellid_1` = 14548, `spelltrigger_1` = 1 WHERE entry=16137;

/*  Test Frost Res Head Cloth  */
UPDATE `item_template` SET `spellid_1` = 14553, `spelltrigger_1` = 1 WHERE entry=16138;

/*  Test Frost Res Head Leather  */
UPDATE `item_template` SET `spellid_1` = 14550, `spelltrigger_1` = 1 WHERE entry=16139;

/*  Test Nature Res Head Leather  */
UPDATE `item_template` SET `spellid_1` = 14635, `spelltrigger_1` = 1 WHERE entry=16140;

/*  Test Nature Res Head Mail  */
UPDATE `item_template` SET `spellid_1` = 14635, `spelltrigger_1` = 1, `spellcooldown_1` = 900000, `spellcategorycooldown_1` = 30000 WHERE entry=16141;

/*  Test Frost Res Wrist Mail  */
UPDATE `item_template` SET `spellid_1` = 14548, `spelltrigger_1` = 1 WHERE entry=16142;

/*  Test Frost Res Shoulder Mail  */
UPDATE `item_template` SET `spellid_1` = 14550, `spelltrigger_1` = 1 WHERE entry=16143;

/*  Test Frost Res Shoulders Leather  */
UPDATE `item_template` SET `spellid_1` = 14550, `spelltrigger_1` = 1 WHERE entry=16144;

/*  Test Shadow Res Waist Cloth  */
UPDATE `item_template` SET `spellid_1` = 14673, `spelltrigger_1` = 1 WHERE entry=16145;

/*  Test Shadow Res Head Cloth  */
UPDATE `item_template` SET `spellid_1` = 14677, `spelltrigger_1` = 1 WHERE entry=16146;

/*  Test Shadow Res Shoulders Cloth  */
UPDATE `item_template` SET `spellid_1` = 14673, `spelltrigger_1` = 1 WHERE entry=16147;

/*  Test Shadow Res Shoulders Leather  */
UPDATE `item_template` SET `spellid_1` = 14673, `spelltrigger_1` = 1 WHERE entry=16148;

/*  Test Shadow Res Shoulder Mail  */
UPDATE `item_template` SET `spellid_1` = 14673, `spelltrigger_1` = 1 WHERE entry=16149;

/*  Test Shadow Res Waist Leather  */
UPDATE `item_template` SET `spellid_1` = 14673, `spelltrigger_1` = 1 WHERE entry=16150;

/*  Test Arcane Res Feet Cloth  */
UPDATE `item_template` SET `spellid_1` = 14712, `spelltrigger_1` = 1 WHERE entry=16151;

/*  Test Arcane Res Waist Cloth  */
UPDATE `item_template` SET `spellid_1` = 14712, `spelltrigger_1` = 1 WHERE entry=16152;

/*  Test Arcane Res Wrist Cloth  */
UPDATE `item_template` SET `spellid_1` = 14710, `spelltrigger_1` = 1 WHERE entry=16153;

/*  Test Arcane Res Shoulders Cloth  */
UPDATE `item_template` SET `spellid_1` = 14712, `spelltrigger_1` = 1 WHERE entry=16154;

/*  Test Arcane Res Waist Leather  */
UPDATE `item_template` SET `spellid_1` = 14712, `spelltrigger_1` = 1 WHERE entry=16155;

/*  Test Arcane Res Head Leather  */
UPDATE `item_template` SET `spellid_1` = 14712, `spelltrigger_1` = 1 WHERE entry=16156;

/*  Test Arcane Res Feet Mail  */
UPDATE `item_template` SET `spellid_1` = 14712, `spelltrigger_1` = 1 WHERE entry=16157;

/*  Test Arcane Res Wrist Mail  */
UPDATE `item_template` SET `spellid_1` = 14710, `spelltrigger_1` = 1 WHERE entry=16158;

/*  Test Arcane Res Head Mail  */
UPDATE `item_template` SET `spellid_1` = 14716, `spelltrigger_1` = 1, `spellcooldown_1` = 900000, `spellcategorycooldown_1` = 30000 WHERE entry=16159;

/*  Test Arcane Res Shoulders Plate  */
UPDATE `item_template` SET `spellid_1` = 14714, `spelltrigger_1` = 1 WHERE entry=16160;

/*  Test Shadow Res Hands Plate  */
UPDATE `item_template` SET `spellid_1` = 14675, `spelltrigger_1` = 1 WHERE entry=16161;

/*  Test Frost Res Shoulders Plate  */
UPDATE `item_template` SET `spellid_1` = 14552, `spelltrigger_1` = 1 WHERE entry=16162;

/*  Test Arcane Res Waist Mail  */
UPDATE `item_template` SET `spellid_1` = 14712, `spelltrigger_1` = 1 WHERE entry=16163;

/*  Test Arcane Res Hands Mail  */
UPDATE `item_template` SET `spellid_1` = 14712, `spelltrigger_1` = 1 WHERE entry=16164;

/*  Test Nature Res Hands Plate  */
UPDATE `item_template` SET `spellid_1` = 14633, `spelltrigger_1` = 1 WHERE entry=16172;

/*  Sergeant Major's Cape  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=16315;

/*  Sergeant's Insignia  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=16334;

/*  Senior Sergeant's Insignia  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=16335;

/*  Sergeant Major's Cape  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=16336;

/*  Sergeant Major's Cape  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=16337;

/*  First Sergeant's Cloak  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=16340;

/*  Knight-Lieutenant's Chain Boots  */
UPDATE `item_template` SET `stat_value2` = 10, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16401;

/*  Knight-Lieutenant's Chain Gauntlets  */
UPDATE `item_template` SET `stat_value2` = 11, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16403;

/*  Knight-Captain's Chain Hauberk  */
UPDATE `item_template` SET `stat_value2` = 16, `spellid_1` = 9334 WHERE entry=16425;

/*  Knight-Captain's Chain Leggings  */
UPDATE `item_template` SET `stat_value1` = 18, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=16426;

/*  Lieutenant Commander's Chain Pauldrons  */
UPDATE `item_template` SET `stat_value2` = 10, `spellid_1` = 9141 WHERE entry=16427;

/*  Lieutenant Commander's Chain Helmet  */
UPDATE `item_template` SET `stat_value2` = 15, `spellid_1` = 9141 WHERE entry=16428;

/*  Marshal's Dragonhide Legguards  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=16450;

/*  Field Marshal's Dragonhide Breastplate  */
UPDATE `item_template` SET `spelltrigger_3` = 0 WHERE entry=16452;

/*  Field Marshal's Leather Mask  */
UPDATE `item_template` SET `spelltrigger_3` = 0 WHERE entry=16455;

/*  Marshal's Chain Boots  */
UPDATE `item_template` SET `stat_value2` = 26, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16462;

/*  Marshal's Chain Grips  */
UPDATE `item_template` SET `stat_value2` = 21, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=16463;

/*  Field Marshal's Chain Helm  */
UPDATE `item_template` SET `stat_value2` = 34, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16465;

/*  Field Marshal's Chain Breastplate  */
UPDATE `item_template` SET `stat_value2` = 34, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=16466;

/*  Marshal's Chain Legguards  */
UPDATE `item_template` SET `stat_value1` = 34, `spellid_2` = 0, `spelltrigger_2` = 0, `spelltrigger_3` = 0 WHERE entry=16467;

/*  Field Marshal's Chain Spaulders  */
UPDATE `item_template` SET `stat_value2` = 26, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16468;

/*  Legionnaire's Chain Breastplate  */
UPDATE `item_template` SET `stat_value2` = 16, `spellid_1` = 9334 WHERE entry=16525;

/*  Champion's Chain Headguard  */
UPDATE `item_template` SET `stat_value2` = 15, `spellid_1` = 9141 WHERE entry=16526;

/*  Legionnaire's Chain Leggings  */
UPDATE `item_template` SET `stat_value1` = 18, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=16527;

/*  Champion's Chain Pauldrons  */
UPDATE `item_template` SET `stat_value2` = 10, `spellid_1` = 9141 WHERE entry=16528;

/*  Blood Guard's Chain Gauntlets  */
UPDATE `item_template` SET `stat_value2` = 11, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16530;

/*  Blood Guard's Chain Boots  */
UPDATE `item_template` SET `stat_value2` = 10, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16531;

/*  Warlord's Dragonhide Hauberk  */
UPDATE `item_template` SET `spelltrigger_3` = 0 WHERE entry=16549;

/*  General's Dragonhide Leggings  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=16552;

/*  Warlord's Leather Helm  */
UPDATE `item_template` SET `spelltrigger_3` = 0 WHERE entry=16561;

/*  Warlord's Chain Chestpiece  */
UPDATE `item_template` SET `stat_value1` = 34, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=16565;

/*  Warlord's Chain Helmet  */
UPDATE `item_template` SET `stat_value1` = 34, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16566;

/*  General's Chain Legguards  */
UPDATE `item_template` SET `stat_value1` = 34, `spellid_2` = 0, `spelltrigger_2` = 0, `spelltrigger_3` = 0 WHERE entry=16567;

/*  Warlord's Chain Shoulders  */
UPDATE `item_template` SET `stat_value1` = 26, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16568;

/*  General's Chain Boots  */
UPDATE `item_template` SET `stat_value1` = 26, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16569;

/*  General's Chain Gloves  */
UPDATE `item_template` SET `stat_value1` = 21, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=16571;

/*  Warlord's Mail Armor  */
UPDATE `item_template` SET `stat_type4` = 0, `stat_value4` = 0, `spellid_1` = 7597, `spellid_2` = 18384 WHERE entry=16577;

/*  Warlord's Mail Helm  */
UPDATE `item_template` SET `stat_type4` = 0, `stat_value4` = 0, `spellid_1` = 7597, `spellid_2` = 18384 WHERE entry=16578;

/*  Aquarius Belt  */
UPDATE `item_template` SET `Quality` = 2, `ItemLevel` = 16, `stat_type1` = 7, `stat_value1` = 2, `stat_type2` = 5, `stat_value2` = 2, `DisenchantID` = 2, `spellid_1` = 0, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=16608;

/*  Thornflinger  */
UPDATE `item_template` SET `dmg_min1` = 52.0, `dmg_max1` = 97.0 WHERE entry=16622;

/*  Opaline Medallion  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=16623;

/*  Vest of Elements  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16666;

/*  Coif of Elements  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16667;

/*  Kilt of Elements  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16668;

/*  Pauldrons of Elements  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16669;

/*  Beaststalker's Tunic  */
UPDATE `item_template` SET `stat_value1` = 21, `DisenchantID` = 49, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=16674;

/*  Beaststalker's Boots  */
UPDATE `item_template` SET `stat_value1` = 21, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=16675;

/*  Beaststalker's Gloves  */
UPDATE `item_template` SET `stat_value1` = 14, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=16676;

/*  Beaststalker's Cap  */
UPDATE `item_template` SET `stat_value1` = 20, `DisenchantID` = 49, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=16677;

/*  Beaststalker's Pants  */
UPDATE `item_template` SET `stat_value1` = 26, `DisenchantID` = 49, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=16678;

/*  Beaststalker's Mantle  */
UPDATE `item_template` SET `stat_value2` = 11, `DisenchantID` = 49, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=16679;

/*  Beaststalker's Belt  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value2` = 10, `stat_type4` = 4, `stat_value4` = 9, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=16680;

/*  Beaststalker's Bindings  */
UPDATE `item_template` SET `stat_value1` = 15, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=16681;

/*  Magister's Crown  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16686;

/*  Magister's Leggings  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16687;

/*  Magister's Robes  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16688;

/*  Magister's Mantle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16689;

/*  Devout Robe  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16690;

/*  Devout Crown  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16693;

/*  Devout Skirt  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16694;

/*  Devout Mantle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16695;

/*  Dreadmist Mask  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16698;

/*  Dreadmist Leggings  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16699;

/*  Dreadmist Robe  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16700;

/*  Dreadmist Mantle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16701;

/*  Wildheart Vest  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16706;

/*  Shadowcraft Cap  */
UPDATE `item_template` SET `stat_type3` = 4, `stat_value3` = 13, `stat_type4` = 6, `DisenchantID` = 49 WHERE entry=16707;

/*  Shadowcraft Spaulders  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16708;

/*  Shadowcraft Pants  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16709;

/*  Shadowcraft Gloves  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 10, `stat_type4` = 4 WHERE entry=16712;

/*  Shadowcraft Belt  */
UPDATE `item_template` SET `stat_type3` = 6, `stat_type4` = 4, `stat_value4` = 9 WHERE entry=16713;

/*  Wildheart Spaulders  */
UPDATE `item_template` SET `stat_type1` = 5, `stat_value1` = 18, `stat_type2` = 7, `stat_value2` = 9, `stat_type3` = 6, `stat_value3` = 8, `DisenchantID` = 49 WHERE entry=16718;

/*  Wildheart Kilt  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16719;

/*  Wildheart Cowl  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16720;

/*  Shadowcraft Tunic  */
UPDATE `item_template` SET `stat_type3` = 6, `DisenchantID` = 49 WHERE entry=16721;

/*  Lightforge Breastplate  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16726;

/*  Lightforge Helm  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16727;

/*  Lightforge Legplates  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16728;

/*  Lightforge Spaulders  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16729;

/*  Breastplate of Valor  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16730;

/*  Helm of Valor  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16731;

/*  Legplates of Valor  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16732;

/*  Spaulders of Valor  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16733;

/*  Shredder Operating Gloves  */
UPDATE `item_template` SET `stat_type3` = 3, `stat_value3` = 2, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=16740;

/*  Captain Rackmore's Wheel  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=16788;

/*  Captain Rackmore's Tiller  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=16789;

/*  Giant Club  */
UPDATE `item_template` SET `dmg_min1` = 26.0, `dmg_max1` = 49.0 WHERE entry=16792;

/*  Felheart Belt  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=16806;

/*  Giantstalker's Breastplate  */
UPDATE `item_template` SET `stat_value1` = 26, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16845;

/*  Giantstalker's Helmet  */
UPDATE `item_template` SET `stat_value1` = 23, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16846;

/*  Giantstalker's Leggings  */
UPDATE `item_template` SET `stat_value1` = 32, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16847;

/*  Giantstalker's Epaulets  */
UPDATE `item_template` SET `stat_value1` = 24, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16848;

/*  Giantstalker's Boots  */
UPDATE `item_template` SET `stat_value1` = 28, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=16849;

/*  Giantstalker's Bracers  */
UPDATE `item_template` SET `stat_value1` = 20, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=16850;

/*  Giantstalker's Belt  */
UPDATE `item_template` SET `stat_value1` = 18, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16851;

/*  Giantstalker's Gloves  */
UPDATE `item_template` SET `stat_value1` = 18, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16852;

/*  Bloodfang Gloves  */
UPDATE `item_template` SET `spellid_1` = 7219 WHERE entry=16907;

/*  Dragonstalker's Bracers  */
UPDATE `item_template` SET `stat_value1` = 23, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=16935;

/*  Dragonstalker's Belt  */
UPDATE `item_template` SET `stat_value1` = 20, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16936;

/*  Dragonstalker's Spaulders  */
UPDATE `item_template` SET `stat_value1` = 23, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16937;

/*  Dragonstalker's Legguards  */
UPDATE `item_template` SET `stat_value1` = 31, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=16938;

/*  Dragonstalker's Helm  */
UPDATE `item_template` SET `stat_value1` = 27, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16939;

/*  Dragonstalker's Gauntlets  */
UPDATE `item_template` SET `stat_value1` = 20, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16940;

/*  Dragonstalker's Greaves  */
UPDATE `item_template` SET `stat_value1` = 30, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=16941;

/*  Dragonstalker's Breastplate  */
UPDATE `item_template` SET `stat_value1` = 34, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16942;

/*  Helmet of Ten Storms  */
UPDATE `item_template` SET `spellid_2` = 9415, `spellid_3` = 9406 WHERE entry=16947;

/*  Gauntlets of Ten Storms  */
UPDATE `item_template` SET `spellid_2` = 9398, `spellid_3` = 7681 WHERE entry=16948;

/*  Corehound Boots  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=16982;

/*  Smokey's Explosive Launcher  */
UPDATE `item_template` SET `dmg_min1` = 52.0, `dmg_max1` = 98.0 WHERE entry=16992;

/*  Smokey's Fireshooter  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=16993;

/*  Gorewood Bow  */
UPDATE `item_template` SET `dmg_min1` = 55.0, `dmg_max1` = 104.0, `DisenchantID` = 49 WHERE entry=16996;

/*  Stormrager  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=16997;

/*  Sacred Protector  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16998;

/*  Skullstone Hammer  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=17003;

/*  Dark Iron Reaver  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=17015;

/*  Dark Iron Destroyer  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=17016;

/*  Nail Spitter  */
UPDATE `item_template` SET `dmg_min1` = 19.0, `dmg_max1` = 37.0 WHERE entry=17042;

/*  Will of the Martyr  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=17044;

/*  Blood of the Martyr  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=17045;

/*  Changuk Smasher  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=17055;

/*  Band of Accuria  */
UPDATE `item_template` SET `stat_value2` = 16, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=17063;

/*  Deathbringer  */
UPDATE `item_template` SET `spellppmrate_1` = 0.8 WHERE entry=17068;

/*  Striker's Mark  */
UPDATE `item_template` SET `dmg_min1` = 69.0, `dmg_max1` = 129.0 WHERE entry=17069;

/*  Fang of the Mystics  */
UPDATE `item_template` SET `dmg_min1` = 38.0, `dmg_max1` = 85.0 WHERE entry=17070;

/*  Blastershot Launcher  */
UPDATE `item_template` SET `dmg_min1` = 73.0, `dmg_max1` = 136.0 WHERE entry=17072;

/*  Earthshaker  */
UPDATE `item_template` SET `spellppmrate_1` = 2.15 WHERE entry=17073;

/*  Vis'kag the Bloodletter  */
UPDATE `item_template` SET `spellppmrate_1` = 0.6 WHERE entry=17075;

/*  Crimson Shocker  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=17077;

/*  Aurastone Hammer  */
UPDATE `item_template` SET `dmg_min1` = 78.8, `dmg_max1` = 161.8 WHERE entry=17105;

/*  Mark of Deflection  */
UPDATE `item_template` SET `spellid_2` = 13665, `spelltrigger_2` = 1 WHERE entry=17108;

/*  Empyrean Demolisher  */
UPDATE `item_template` SET `spellppmrate_1` = 1.0 WHERE entry=17112;

/*  Amberseal Keeper  */
UPDATE `item_template` SET `dmg_min1` = 144.9, `dmg_max1` = 228.9 WHERE entry=17113;

/*  Sulfuras, Hand of Ragnaros  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=17182;

/*  Forcestone Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=17508;

/*  Master Hunter's Bow  */
UPDATE `item_template` SET `dmg_min1` = 32.0, `dmg_max1` = 61.0 WHERE entry=17686;

/*  Master Hunter's Rifle  */
UPDATE `item_template` SET `dmg_min1` = 35.0, `dmg_max1` = 66.0 WHERE entry=17687;

/*  Frostwolf Insignia Rank 1  */
UPDATE `item_template` SET `spellcooldown_1` = 0 WHERE entry=17690;

/*  Stormpike Insignia Rank 1  */
UPDATE `item_template` SET `spellcooldown_1` = 0 WHERE entry=17691;

/*  Thrash Blade  */
UPDATE `item_template` SET `spellppmrate_1` = 1.0 WHERE entry=17705;

/*  Gemshard Heart  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `RequiredLevel` = 49 WHERE entry=17707;

/*  Charstone Dirk  */
UPDATE `item_template` SET `RequiredLevel` = 49 WHERE entry=17710;

/*  Elemental Rockridge Leggings  */
UPDATE `item_template` SET `nature_res` = 10, `stat_type3` = 0, `stat_value3` = 0, `RequiredLevel` = 49 WHERE entry=17711;

/*  Blackstone Ring  */
UPDATE `item_template` SET `RequiredLevel` = 49 WHERE entry=17713;

/*  Bracers of the Stone Princess  */
UPDATE `item_template` SET `RequiredLevel` = 49 WHERE entry=17714;

/*  Eye of Theradras  */
UPDATE `item_template` SET `RequiredLevel` = 49 WHERE entry=17715;

/*  Megashot Rifle  */
UPDATE `item_template` SET `dmg_min1` = 32.0, `dmg_max1` = 61.0, `arcane_res` = 5, `stat_type1` = 0, `stat_value1` = 0 WHERE entry=17717;

/*  Gloves of the Greatfather  */
UPDATE `item_template` SET `spellid_1` = 9406, `spellid_2` = 7696 WHERE entry=17721;

/*  Albino Crocscale Boots  */
UPDATE `item_template` SET `nature_res` = 5, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=17728;

/*  Helm of the Mountain  */
UPDATE `item_template` SET `nature_res` = 10, `stat_type1` = 0, `stat_value1` = 0 WHERE entry=17734;

/*  Cloud Stone  */
UPDATE `item_template` SET `arcane_res` = 10, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=17737;

/*  Claw of Celebras  */
UPDATE `item_template` SET `RequiredLevel` = 47 WHERE entry=17738;

/*  Grovekeeper's Drape  */
UPDATE `item_template` SET `nature_res` = 10, `stat_type2` = 0, `stat_value2` = 0, `RequiredLevel` = 47 WHERE entry=17739;

/*  Soothsayer's Headdress  */
UPDATE `item_template` SET `stat_type1` = 5, `stat_value1` = 25, `stat_type2` = 6, `stat_type3` = 7, `stat_value3` = 7, `spellid_1` = 0, `spelltrigger_1` = 0, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `RequiredLevel` = 47 WHERE entry=17740;

/*  Nature's Embrace  */
UPDATE `item_template` SET `spellid_1` = 21518 WHERE entry=17741;

/*  Noxious Shooter  */
UPDATE `item_template` SET `nature_res` = 5, `stat_type2` = 0, `stat_value2` = 0, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=17745;

/*  Noxxion's Shackles  */
UPDATE `item_template` SET `nature_res` = 15, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=17746;

/*  Vinerot Sandals  */
UPDATE `item_template` SET `nature_res` = 12, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=17748;

/*  Phytoskin Spaulders  */
UPDATE `item_template` SET `nature_res` = 10, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=17749;

/*  Chloromesh Girdle  */
UPDATE `item_template` SET `Quality` = 2, `nature_res` = 20, `DisenchantID` = 9, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=17750;

/*  Brusslehide Leggings  */
UPDATE `item_template` SET `Quality` = 2, `nature_res` = 10, `stat_value1` = 15, `stat_value2` = 11, `DisenchantID` = 9, `spelltrigger_1` = 0 WHERE entry=17751;

/*  Satyr's Lash  */
UPDATE `item_template` SET `RequiredLevel` = 45 WHERE entry=17752;

/*  Verdant Keeper's Aim  */
UPDATE `item_template` SET `dmg_min1` = 53.0, `dmg_max1` = 100.0 WHERE entry=17753;

/*  Infernal Trickster Leggings  */
UPDATE `item_template` SET `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 7569, `RequiredLevel` = 45 WHERE entry=17754;

/*  Satyrmane Sash  */
UPDATE `item_template` SET `shadow_res` = 10, `spellid_1` = 0, `spelltrigger_1` = 0, `RequiredLevel` = 45 WHERE entry=17755;

/*  Mark of Resolution  */
UPDATE `item_template` SET `Quality` = 2, `stat_type1` = 0, `stat_value1` = 0, `spellcooldown_1` = 1800000, `spellid_2` = 21958 WHERE entry=17759;

/*  Princess Theradras' Scepter  */
UPDATE `item_template` SET `RequiredLevel` = 49 WHERE entry=17766;

/*  Bloomsprout Headpiece  */
UPDATE `item_template` SET `nature_res` = 10, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=17767;

/*  Woodseed Hoop  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=17768;

/*  Prodigious Shadowshard Pendant  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=17773;

/*  Blade of Eternal Darkness  */
UPDATE `item_template` SET `dmg_min1` = 33.5, `dmg_max1` = 69.5 WHERE entry=17780;

/*  Talisman of Binding Shard  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=17782;

/*  Talisman of Binding Fragment  */
UPDATE `item_template` SET `spellid_1` = 21991, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 0 WHERE entry=17783;

/*  Thunderfury, Blessed Blade of the Windseeker DEPRECATED  */
UPDATE `item_template` SET `dmg_min1` = 82.0, `dmg_max1` = 153.0, `dmg_min2` = 16.0, `dmg_max2` = 30.0, `fire_res` = 8, `nature_res` = 9, `stat_type3` = 0, `stat_value3` = 0, `stat_type4` = 0, `stat_value4` = 0, `spelltrigger_2` = 0 WHERE entry=17802;

/*  Stormpike Insignia Rank 2  */
UPDATE `item_template` SET `spellcooldown_2` = 1000 WHERE entry=17900;

/*  Stormpike Insignia Rank 3  */
UPDATE `item_template` SET `spellcooldown_3` = 1000 WHERE entry=17901;

/*  Stormpike Insignia Rank 4  */
UPDATE `item_template` SET `spellcooldown_3` = 1000 WHERE entry=17902;

/*  Stormpike Insignia Rank 5  */
UPDATE `item_template` SET `spellcooldown_3` = 1000 WHERE entry=17903;

/*  Stormpike Insignia Rank 6  */
UPDATE `item_template` SET `spellcooldown_3` = -1 WHERE entry=17904;

/*  Frostwolf Insignia Rank 2  */
UPDATE `item_template` SET `spellcooldown_2` = 1000 WHERE entry=17905;

/*  Frostwolf Insignia Rank 3  */
UPDATE `item_template` SET `spellcooldown_3` = 1000 WHERE entry=17906;

/*  Frostwolf Insignia Rank 4  */
UPDATE `item_template` SET `spellcooldown_3` = 1000 WHERE entry=17907;

/*  Frostwolf Insignia Rank 5  */
UPDATE `item_template` SET `spellcooldown_3` = 1000 WHERE entry=17908;

/*  Frostwolf Insignia Rank 6  */
UPDATE `item_template` SET `spellcooldown_3` = -1 WHERE entry=17909;

/*  Ragnaros Core  */
UPDATE `item_template` SET `DisenchantID` = 49, `spelltrigger_1` = 0, `spellcooldown_1` = -1 WHERE entry=17982;

/*  Royal Seal of Alexis  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18022;

/*  Blood Ruby Pendant  */
UPDATE `item_template` SET `spellid_1` = 13598, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellid_2` = 9413, `spelltrigger_2` = 1 WHERE entry=18023;

/*  Coal Miner Boots  */
UPDATE `item_template` SET `fire_res` = 10, `stat_value1` = 17, `stat_value2` = 9, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=18043;

/*  Hurley's Tankard  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=18044;

/*  Flame Walkers  */
UPDATE `item_template` SET `fire_res` = 18, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 49, `spellid_1` = 13669 WHERE entry=18047;

/*  Mastersmith's Hammer  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18048;

/*  Dragonrider Boots  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18102;

/*  Band of Rumination  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18103;

/*  Feralsurge Girdle  */
UPDATE `item_template` SET `DisenchantID` = 49, `spelltrigger_1` = 0 WHERE entry=18104;

/*  5% Test Speed Boots  */
UPDATE `item_template` SET `spellid_1` = 22586, `spelltrigger_1` = 1 WHERE entry=18161;

/*  8% Test Speed Boots  */
UPDATE `item_template` SET `spellid_1` = 22587, `spelltrigger_1` = 1 WHERE entry=18162;

/*  10% Test Speed Boots  */
UPDATE `item_template` SET `spellid_1` = 22588, `spelltrigger_1` = 1 WHERE entry=18163;

/*  13% Test Speed Boots  */
UPDATE `item_template` SET `spellid_1` = 22589, `spelltrigger_1` = 1 WHERE entry=18164;

/*  15% Test Speed Boots  */
UPDATE `item_template` SET `spellid_1` = 22590, `spelltrigger_1` = 1 WHERE entry=18165;

/*  Core Marksman Rifle  */
UPDATE `item_template` SET `dmg_min1` = 64.0, `dmg_max1` = 120.0 WHERE entry=18282;

/*  Barbed Thorn Necklace  */
UPDATE `item_template` SET `spellid_1` = 9358 WHERE entry=18289;

/*  Marksman Bands  */
UPDATE `item_template` SET `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 7570, `spellid_2` = 22811, `spellid_3` = 7582 WHERE entry=18296;

/*  Nimble Buckler  */
UPDATE `item_template` SET `Quality` = 2, `ItemLevel` = 58, `stat_type1` = 3, `stat_value1` = 5, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 21475, `spelltrigger_1` = 1, `RequiredLevel` = 53 WHERE entry=18303;

/*  Greenroot Mail  */
UPDATE `item_template` SET `Quality` = 2, `ItemLevel` = 58, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 18029, `spelltrigger_1` = 1, `RequiredLevel` = 53 WHERE entry=18304;

/*  Gloves of Shadowy Mist  */
UPDATE `item_template` SET `spellid_1` = 9326 WHERE entry=18306;

/*  Riptide Shoes  */
UPDATE `item_template` SET `spellid_1` = 9306 WHERE entry=18307;

/*  Obsidian Bauble  */
UPDATE `item_template` SET `spellid_1` = 14254, `spelltrigger_1` = 1 WHERE entry=18316;

/*  Demonheart Spaulders  */
UPDATE `item_template` SET `ItemLevel` = 58, `stat_value1` = 14, `stat_value2` = 14, `stat_type3` = 4, `stat_value3` = 9, `RequiredLevel` = 53 WHERE entry=18320;

/*  Satyr's Bow  */
UPDATE `item_template` SET `dmg_min1` = 50.0, `dmg_max1` = 93.0 WHERE entry=18323;

/*  Orphic Bracers  */
UPDATE `item_template` SET `spellid_1` = 13597 WHERE entry=18337;

/*  Wand of Arcane Potency  */
UPDATE `item_template` SET `spellid_1` = 13601 WHERE entry=18338;

/*  Murmuring Ring  */
UPDATE `item_template` SET `spellid_1` = 18985 WHERE entry=18345;

/*  Quel'Serrar  */
UPDATE `item_template` SET `dmg_min1` = 84.0, `dmg_max1` = 126.0, `spellppmrate_1` = 1.75 WHERE entry=18348;

/*  Pimgib's Collar  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18354;

/*  Ferra's Collar  */
UPDATE `item_template` SET `spellid_1` = 22854, `spelltrigger_1` = 1 WHERE entry=18355;

/*  Gordok's Handguards  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18366;

/*  Gordok's Gauntlets  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18367;

/*  Gordok's Gloves  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18368;

/*  Gordok's Handwraps  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18369;

/*  Vigilance Charm  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18370;

/*  Mindtap Talisman  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18371;

/*  Blade of the New Moon  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellid_1` = 9326 WHERE entry=18372;

/*  Chestplate of Tranquility  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18373;

/*  Flamescarred Shoulders  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18374;

/*  Bracers of the Eclipse  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18375;

/*  Timeworn Mace  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18376;

/*  Quickdraw Gloves  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18377;

/*  Silvermoon Leggings  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18378;

/*  Odious Greaves  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18379;

/*  Eldritch Reinforced Legplates  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18380;

/*  Evil Eye Pendant  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18381;

/*  Fluctuating Cloak  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18382;

/*  Force Imbued Gauntlets  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18383;

/*  Bile-etched Spaulders  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18384;

/*  Robe of Everlasting Night  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18385;

/*  Padre's Trousers  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18386;

/*  Brightspark Gloves  */
UPDATE `item_template` SET `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 49, `spellid_1` = 18384 WHERE entry=18387;

/*  Stoneshatter  */
UPDATE `item_template` SET `dmg_min1` = 73.0, `dmg_max1` = 111.0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 49, `spellid_1` = 22188 WHERE entry=18388;

/*  Cloak of the Cosmos  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18389;

/*  Tanglemoss Leggings  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18390;

/*  Eyestalk Cord  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18391;

/*  Distracting Dagger  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 49, `spellid_1` = 15717 WHERE entry=18392;

/*  Warpwood Binding  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18393;

/*  Demon Howl Wristguards  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18394;

/*  Emerald Flame Ring  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18395;

/*  Mind Carver  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18396;

/*  Elder Magus Pendant  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18397;

/*  Tidal Loop  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18398;

/*  Ocean's Breeze  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18399;

/*  Felcloth Gloves  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellid_1` = 18013 WHERE entry=18407;

/*  Inferno Gloves  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellid_1` = 17871 WHERE entry=18408;

/*  Mooncloth Gloves  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18409;

/*  Cloak of Warding  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18413;

/*  Bonecrusher  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18420;

/*  Backwood Helm  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18421;

/*  Sedge Boots  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18424;

/*  Kreeg's Mug  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=18425;

/*  Senior Sergeant's Insignia  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=18428;

/*  Sergeant's Mark  */
UPDATE `item_template` SET `spellid_1` = 22891, `spellcooldown_1` = 180000, `spellcategorycooldown_1` = 0 WHERE entry=18438;

/*  Master Sergeant's Insignia  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=18442;

/*  Master Sergeant's Insignia  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=18443;

/*  Master Sergeant's Insignia  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=18444;

/*  Robe of Combustion  */
UPDATE `item_template` SET `spellid_1` = 17867 WHERE entry=18450;

/*  Unsophisticated Hand Cannon  */
UPDATE `item_template` SET `dmg_min1` = 48.0, `dmg_max1` = 91.0 WHERE entry=18460;

/*  Jagged Bone Fist  */
UPDATE `item_template` SET `dmg_min1` = 51.0, `dmg_max1` = 78.0 WHERE entry=18462;

/*  Royal Seal of Eldre'Thalas  */
UPDATE `item_template` SET `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0 WHERE entry=18472;

/*  Ogre Toothpick Shooter  */
UPDATE `item_template` SET `dmg_min1` = 61.0, `dmg_max1` = 62.0 WHERE entry=18482;

/*  Mana Channeling Wand  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18483;

/*  Cho'Rush's Blade  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18484;

/*  Observer's Shield  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18485;

/*  Mooncloth Robe  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18486;

/*  Insightful Hood  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18490;

/*  Lorespinner  */
UPDATE `item_template` SET `dmg_min1` = 45.0, `dmg_max1` = 68.0 WHERE entry=18491;

/*  Bulky Iron Spaulders  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18493;

/*  Denwatcher's Shoulders  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18494;

/*  Redoubt Cloak  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18495;

/*  Heliotrope Cloak  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18496;

/*  Sublime Wristguards  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18497;

/*  Hedgecutter  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18498;

/*  Barrier Shield  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18499;

/*  Tarnished Elven Ring  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18500;

/*  Monstrous Glaive  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18502;

/*  Kromcrush's Chestplate  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18503;

/*  Girdle of Insight  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18504;

/*  Mugger's Belt  */
UPDATE `item_template` SET `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 49, `spellid_2` = 7576 WHERE entry=18505;

/*  Mongoose Boots  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18506;

/*  Boots of the Full Moon  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18507;

/*  Swift Flight Bracers  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18508;

/*  Barbarous Blade  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18520;

/*  Grimy Metal Boots  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18521;

/*  Band of the Ogre King  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18522;

/*  Brightly Glowing Stone  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18523;

/*  Leggings of Destruction  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18524;

/*  Bracers of Prosperity  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18525;

/*  Crown of the Ogre King  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18526;

/*  Harmonious Gauntlets  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18527;

/*  Cyclone Spaulders  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18528;

/*  Elemental Plate Girdle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18529;

/*  Ogre Forged Hauberk  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18530;

/*  Unyielding Maul  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18531;

/*  Mindsurge Robe  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18532;

/*  Gordok Bracers of Power  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18533;

/*  Rod of the Ogre Magi  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18534;

/*  Counterattack Lodestone  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18537;

/*  Treant's Bane  */
UPDATE `item_template` SET `dmg_min1` = 128.0, `dmg_max1` = 193.0, `spelltrigger_2` = 0 WHERE entry=18538;

/*  Leggings of Arcane Supremacy  */
UPDATE `item_template` SET `spellid_1` = 17830 WHERE entry=18545;

/*  The Twin Blades of Azzinoth  */
UPDATE `item_template` SET `dmg_min1` = 132.0, `dmg_max1` = 139.0 WHERE entry=18582;

/*  Warglaive of Azzinoth (Right)  */
UPDATE `item_template` SET `dmg_min1` = 85.0, `dmg_max1` = 95.0 WHERE entry=18583;

/*  Warglaive of Azzinoth (Left)  */
UPDATE `item_template` SET `dmg_min1` = 85.0, `dmg_max1` = 95.0 WHERE entry=18584;

/*  Tome of Sacrifice  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18602;

/*  Benediction  */
UPDATE `item_template` SET `stat_type4` = 0, `stat_value4` = 0, `spellid_2` = 23236 WHERE entry=18608;

/*  Anathema  */
UPDATE `item_template` SET `spellid_3` = 23265 WHERE entry=18609;

/*  Keen Machete  */
UPDATE `item_template` SET `bonding` = 2 WHERE entry=18610;

/*  Gnarlpine Leggings  */
UPDATE `item_template` SET `bonding` = 2 WHERE entry=18611;

/*  Bloody Chain Boots  */
UPDATE `item_template` SET `bonding` = 2 WHERE entry=18612;

/*  Elemental Ember  */
UPDATE `item_template` SET `spellid_1` = 9400 WHERE entry=18672;

/*  Sash of the Windreaver  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellid_1` = 17819 WHERE entry=18676;

/*  Tempestria's Frozen Necklace  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18678;

/*  Frigid Ring  */
UPDATE `item_template` SET `spellid_1` = 9404 WHERE entry=18679;

/*  Ancient Bone Bow  */
UPDATE `item_template` SET `dmg_min1` = 61.0, `dmg_max1` = 114.0, `DisenchantID` = 49 WHERE entry=18680;

/*  Burial Shawl  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18681;

/*  Ghoul Skin Leggings  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18682;

/*  Hammer of the Vesper  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18683;

/*  Dimly Opalescent Ring  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18684;

/*  Bone Golem Shoulders  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18686;

/*  Phantasmal Cloak  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18689;

/*  Wraithplate Leggings  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18690;

/*  Dark Advisor's Pendant  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellid_1` = 9327 WHERE entry=18691;

/*  Shivery Handwraps  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellid_1` = 9305 WHERE entry=18693;

/*  Shadowy Mail Greaves  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18694;

/*  Spellbound Tome  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18695;

/*  Intricately Runed Shield  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18696;

/*  Belt of the Ordained  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18702;

/*  Rhok'delar, Longbow of the Ancient Keepers  */
UPDATE `item_template` SET `dmg_min1` = 89.0, `dmg_max1` = 166.0, `spellid_1` = 7597, `spellid_2` = 21432, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=18713;

/*  Lok'delar, Stave of the Ancient Keepers  */
UPDATE `item_template` SET `spellid_1` = 7598, `spellid_2` = 14097, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=18715;

/*  Ash Covered Boots  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18716;

/*  Hammer of the Grand Crusader  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18717;

/*  Grand Crusader's Helm  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18718;

/*  Shroud of the Nathrezim  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18720;

/*  Barrage Girdle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18721;

/*  Death Grips  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellid_1` = 7219 WHERE entry=18722;

/*  Animated Chain Necklace  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18723;

/*  Anastari Heirloom  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellid_1` = 9413 WHERE entry=18728;

/*  Screeching Bow  */
UPDATE `item_template` SET `dmg_min1` = 70.0, `dmg_max1` = 71.0, `DisenchantID` = 49 WHERE entry=18729;

/*  Shadowy Laced Handwraps  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18730;

/*  Pale Moon Cloak  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18734;

/*  Maleki's Footwraps  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellid_1` = 18009 WHERE entry=18735;

/*  Plaguehound Leggings  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18736;

/*  Bone Slicing Hatchet  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18737;

/*  Carapace Spine Crossbow  */
UPDATE `item_template` SET `dmg_min1` = 82.0, `dmg_max1` = 124.0, `DisenchantID` = 49 WHERE entry=18738;

/*  Chitinous Plate Legguards  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18739;

/*  Thuzadin Sash  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18740;

/*  Morlune's Bracer  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18741;

/*  Stratholme Militia Shoulderguard  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18742;

/*  Item Properties Test  */
UPDATE `item_template` SET `spellid_1` = 9417, `spelltrigger_1` = 1, `spellid_2` = 14049, `spelltrigger_2` = 1, `spellid_3` = 9405, `spelltrigger_3` = 1 WHERE entry=18747;

/*  Fel Hardened Bracers  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18754;

/*  Xorothian Firestick  */
UPDATE `item_template` SET `dmg_min1` = 57.0, `dmg_max1` = 108.0, `DisenchantID` = 49 WHERE entry=18755;

/*  Dreadguard's Protector  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18756;

/*  Diabolic Mantle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18757;

/*  Specter's Blade  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18758;

/*  Malicious Axe  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18759;

/*  Necromantic Band  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18760;

/*  Oblivion's Touch  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18761;

/*  Shard of the Green Flame  */
UPDATE `item_template` SET `spellid_1` = 9294 WHERE entry=18762;

/*  TEST GUN Raid  */
UPDATE `item_template` SET `spellid_1` = 21432, `spelltrigger_1` = 1 WHERE entry=18764;

/*  TEST GUN Horde50  */
UPDATE `item_template` SET `spellid_1` = 21432, `spelltrigger_1` = 1 WHERE entry=18765;

/*  TEST 1H Amberseal Keeper  */
UPDATE `item_template` SET `spellid_1` = 21636, `spelltrigger_1` = 1, `spellid_2` = 23213, `spelltrigger_2` = 1 WHERE entry=18800;

/*  TEST 1H Benediction  */
UPDATE `item_template` SET `spellid_1` = 23041, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 1800000, `spellcategory_1` = 1031, `spellid_2` = 23236, `spelltrigger_2` = 1 WHERE entry=18801;

/*  Helm of Latent Power  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18807;

/*  Gloves of the Hypnotic Flame  */
UPDATE `item_template` SET `spellid_1` = 17747, `spellid_2` = 9415 WHERE entry=18808;

/*  Sash of Whispered Secrets  */
UPDATE `item_template` SET `spellid_1` = 18013 WHERE entry=18809;

/*  Perdition's Blade  */
UPDATE `item_template` SET `spellppmrate_1` = 1.3 WHERE entry=18816;

/*  Crown of Destruction  */
UPDATE `item_template` SET `stat_type4` = 0, `stat_value4` = 0, `spellid_1` = 7598 WHERE entry=18817;

/*  Obsidian Edged Blade  */
UPDATE `item_template` SET `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 15771 WHERE entry=18822;

/*  Aged Core Leather Gloves  */
UPDATE `item_template` SET `stat_type3` = 0, `stat_value3` = 0, `spellid_2` = 7576 WHERE entry=18823;

/*  Deep Earth Spaulders  */
UPDATE `item_template` SET `spellid_1` = 17997 WHERE entry=18829;

/*  Grand Marshal's Bullseye  */
UPDATE `item_template` SET `dmg_min1` = 66.0, `dmg_max1` = 100.0 WHERE entry=18833;

/*  Insignia of the Horde  */
UPDATE `item_template` SET `ItemLevel` = 0, `spellid_1` = 5579, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18834;

/*  High Warlord's Recurve  */
UPDATE `item_template` SET `dmg_min1` = 66.0, `dmg_max1` = 100.0 WHERE entry=18835;

/*  Grand Marshal's Repeater  */
UPDATE `item_template` SET `dmg_min1` = 107.0, `dmg_max1` = 162.0 WHERE entry=18836;

/*  High Warlord's Crossbow  */
UPDATE `item_template` SET `dmg_min1` = 107.0, `dmg_max1` = 162.0 WHERE entry=18837;

/*  Insignia of the Horde  */
UPDATE `item_template` SET `ItemLevel` = 0, `spellid_1` = 5579, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18845;

/*  Insignia of the Horde  */
UPDATE `item_template` SET `ItemLevel` = 0, `spellid_1` = 5579, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18846;

/*  Insignia of the Horde  */
UPDATE `item_template` SET `ItemLevel` = 0, `spellid_1` = 23273, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18849;

/*  Insignia of the Horde  */
UPDATE `item_template` SET `ItemLevel` = 0, `spellid_1` = 23274, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18850;

/*  Insignia of the Horde  */
UPDATE `item_template` SET `ItemLevel` = 0, `spellid_1` = 23276, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18851;

/*  Insignia of the Horde  */
UPDATE `item_template` SET `ItemLevel` = 0, `spellid_1` = 23273, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18852;

/*  Insignia of the Horde  */
UPDATE `item_template` SET `ItemLevel` = 0, `spellid_1` = 23277, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18853;

/*  Insignia of the Alliance  */
UPDATE `item_template` SET `ItemLevel` = 0, `spellid_1` = 5579, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18854;

/*  Grand Marshal's Hand Cannon  */
UPDATE `item_template` SET `dmg_min1` = 107.0, `dmg_max1` = 162.0 WHERE entry=18855;

/*  Insignia of the Alliance  */
UPDATE `item_template` SET `ItemLevel` = 0, `spellid_1` = 5579, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18856;

/*  Insignia of the Alliance  */
UPDATE `item_template` SET `ItemLevel` = 0, `spellid_1` = 23273, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18857;

/*  Insignia of the Alliance  */
UPDATE `item_template` SET `ItemLevel` = 0, `spellid_1` = 23273, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18858;

/*  Insignia of the Alliance  */
UPDATE `item_template` SET `ItemLevel` = 0, `spellid_1` = 23274, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18859;

/*  High Warlord's Street Sweeper  */
UPDATE `item_template` SET `dmg_min1` = 107.0, `dmg_max1` = 162.0 WHERE entry=18860;

/*  Insignia of the Alliance  */
UPDATE `item_template` SET `ItemLevel` = 0, `spellid_1` = 23276, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18862;

/*  Insignia of the Alliance  */
UPDATE `item_template` SET `ItemLevel` = 0, `spellid_1` = 23277, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18863;

/*  Insignia of the Alliance  */
UPDATE `item_template` SET `ItemLevel` = 0, `spellid_1` = 23276, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18864;

/*  TEST Ragnaros Hammer  */
UPDATE `item_template` SET `dmg_min1` = 180.0, `dmg_max1` = 302.0, `fire_res` = 30, `stat_type3` = 0, `stat_value3` = 0, `spelltrigger_1` = 0 WHERE entry=18881;

/*  TEST Level 80 Epic  */
UPDATE `item_template` SET `spellid_1` = 21153, `spelltrigger_1` = 2, `spellid_2` = 7597, `spelltrigger_2` = 1 WHERE entry=18882;

/*  Barbaric Bracers  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 4 WHERE entry=18948;

/*  Evonice's Landin' Pilla  */
UPDATE `item_template` SET `spellid_1` = 23409, `spelltrigger_1` = 1, `spellcooldown_1` = -1 WHERE entry=18951;

/*  Ring of Critical Testing  */
UPDATE `item_template` SET `spellid_1` = 23433, `spelltrigger_1` = 1 WHERE entry=18968;

/*  Ring of Critical Testing 3  */
UPDATE `item_template` SET `spellid_1` = 23435, `spelltrigger_1` = 1 WHERE entry=18971;

/*  Ring of Critical Testing 4  */
UPDATE `item_template` SET `spellid_1` = 23440, `spelltrigger_1` = 1 WHERE entry=18982;

/*  Thunderfury, Blessed Blade of the Windseeker  */
UPDATE `item_template` SET `spellppmrate_1` = 8.0, `spelltrigger_2` = 0 WHERE entry=19019;

/*  Nat Pagle's Extreme Angler FC-5000  */
UPDATE `item_template` SET `spellid_1` = 8082 WHERE entry=19022;

/*  Arena Grand Master  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0, `spellid_1` = 13669, `spellcooldown_2` = 1800000 WHERE entry=19024;

/*  Elegant Dress  */
UPDATE `item_template` SET `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=19028;

/*  Might of the Timbermaw  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 21 WHERE entry=19044;

/*  Heavy Timbermaw Boots  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19048;

/*  Timbermaw Brawlers  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19049;

/*  Mantle of the Timbermaw  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19050;

/*  Dawn Treaders  */
UPDATE `item_template` SET `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 13669 WHERE entry=19052;

/*  Gloves of the Dawn  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19057;

/*  Golden Mantle of the Dawn  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19058;

/*  Argent Shoulders  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19059;

/*  Emerald Circle  */
UPDATE `item_template` SET `stat_type3` = 0, `stat_value3` = 0 WHERE entry=19065;

/*  Frost Runed Headdress  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellid_1` = 17901 WHERE entry=19105;

/*  Ice Barbed Spear  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19106;

/*  Bloodseeker  */
UPDATE `item_template` SET `dmg_min1` = 85.0, `dmg_max1` = 128.0, `DisenchantID` = 49 WHERE entry=19107;

/*  Wand of Biting Cold  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellid_1` = 9304 WHERE entry=19108;

/*  Deep Rooted Ring  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19109;

/*  Cold Forged Blade  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19110;

/*  Winteraxe Epaulets  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19111;

/*  Frozen Steel Vambraces  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19112;

/*  Yeti Hide Bracers  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19113;

/*  Highland Bow  */
UPDATE `item_template` SET `dmg_min1` = 41.0, `dmg_max1` = 77.0 WHERE entry=19114;

/*  Everglowing Robe  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=19129;

/*  Cold Snap  */
UPDATE `item_template` SET `spellid_1` = 9307 WHERE entry=19130;

/*  Fel Infused Leggings  */
UPDATE `item_template` SET `spellid_1` = 23594 WHERE entry=19133;

/*  Robe of Volatile Power  */
UPDATE `item_template` SET `stat_type4` = 0, `stat_value4` = 0, `spellid_1` = 18382 WHERE entry=19145;

/*  Lava Belt  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=19149;

/*  Chromatic Gauntlets  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0, `spellid_2` = 7597, `spellid_3` = 18384 WHERE entry=19157;

/*  TEST Sulfuras, Hand of Ragnaros  */
UPDATE `item_template` SET `dmg_min1` = 180.0, `dmg_max1` = 302.0, `fire_res` = 30, `stat_type3` = 0, `stat_value3` = 0, `spelltrigger_1` = 0 WHERE entry=19158;

/*  Flarecore Leggings  */
UPDATE `item_template` SET `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0 WHERE entry=19165;

/*  Nightfall  */
UPDATE `item_template` SET `spellppmrate_1` = 1.375 WHERE entry=19169;

/*  Fast Test Fist  */
UPDATE `item_template` SET `spellid_1` = 23674, `spelltrigger_1` = 1 WHERE entry=19226;

/*  Darkmoon Card: Heroism  */
UPDATE `item_template` SET `bonding` = 1, `spellppmrate_1` = 2.0 WHERE entry=19287;

/*  Darkmoon Card: Blue Dragon  */
UPDATE `item_template` SET `bonding` = 1 WHERE entry=19288;

/*  Darkmoon Card: Maelstrom  */
UPDATE `item_template` SET `bonding` = 1 WHERE entry=19289;

/*  Darkmoon Card: Twisting Nether  */
UPDATE `item_template` SET `bonding` = 1 WHERE entry=19290;

/*  Darkmoon Necklace  */
UPDATE `item_template` SET `Quality` = 3, `DisenchantID` = 47 WHERE entry=19303;

/*  Tome of Arcane Domination  */
UPDATE `item_template` SET `spellid_1` = 17829 WHERE entry=19308;

/*  Tome of Shadow Force  */
UPDATE `item_template` SET `spellid_1` = 18014, `spelltrigger_2` = 0 WHERE entry=19309;

/*  Tome of the Ice Lord  */
UPDATE `item_template` SET `spellid_1` = 17896, `spelltrigger_2` = 0 WHERE entry=19310;

/*  Tome of Fiery Arcana  */
UPDATE `item_template` SET `spellid_1` = 17875, `spelltrigger_2` = 0 WHERE entry=19311;

/*  Therazane's Touch  */
UPDATE `item_template` SET `stat_type1` = 5, `spelltrigger_2` = 0 WHERE entry=19315;

/*  The Untamed Blade  */
UPDATE `item_template` SET `spellppmrate_1` = 2.0 WHERE entry=19334;

/*  Heartstriker  */
UPDATE `item_template` SET `dmg_min1` = 80.0, `dmg_max1` = 149.0 WHERE entry=19350;

/*  Maladath, Runed Blade of the Black Flight  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0, `spellid_2` = 14121 WHERE entry=19351;

/*  Shadow Wing Focus Staff  */
UPDATE `item_template` SET `dmg_min1` = 142.2, `dmg_max1` = 237.2 WHERE entry=19355;

/*  Staff of the Shadow Flame  */
UPDATE `item_template` SET `dmg_min1` = 141.8, `dmg_max1` = 247.8 WHERE entry=19356;

/*  Lok'amir il Romathis  */
UPDATE `item_template` SET `dmg_min1` = 47.9, `dmg_max1` = 127.9 WHERE entry=19360;

/*  Ashjre'thul, Crossbow of Smiting  */
UPDATE `item_template` SET `dmg_min1` = 124.0, `dmg_max1` = 186.0 WHERE entry=19361;

/*  Dragonbreath Hand Cannon  */
UPDATE `item_template` SET `dmg_min1` = 86.0, `dmg_max1` = 160.0 WHERE entry=19368;

/*  Prestor's Talisman of Connivery  */
UPDATE `item_template` SET `stat_value1` = 30, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=19377;

/*  Neltharion's Tear  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0, `spellid_2` = 23729 WHERE entry=19379;

/*  Ebony Flame Gloves  */
UPDATE `item_template` SET `spellid_1` = 18020 WHERE entry=19407;

/*  Band of Dark Dominion  */
UPDATE `item_template` SET `spellid_1` = 18013 WHERE entry=19434;

/*  Ringo's Blizzard Boots  */
UPDATE `item_template` SET `spellid_1` = 17900 WHERE entry=19438;

/*  Inquisitor's Shawl  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 8, `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 9415 WHERE entry=19507;

/*  Branded Leather Bracers  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 4, `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 9142 WHERE entry=19508;

/*  Dusty Mail Boots  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 9, `DisenchantID` = 7 WHERE entry=19509;

/*  Advisor's Ring  */
UPDATE `item_template` SET `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0 WHERE entry=19520;

/*  Outrider's Bow  */
UPDATE `item_template` SET `dmg_min1` = 54.0, `dmg_max1` = 101.0 WHERE entry=19558;

/*  Outrider's Bow  */
UPDATE `item_template` SET `dmg_min1` = 46.0, `dmg_max1` = 86.0 WHERE entry=19559;

/*  Outrider's Bow  */
UPDATE `item_template` SET `dmg_min1` = 38.0, `dmg_max1` = 71.0 WHERE entry=19560;

/*  Outrider's Bow  */
UPDATE `item_template` SET `dmg_min1` = 28.0, `dmg_max1` = 52.0 WHERE entry=19561;

/*  Outrunner's Bow  */
UPDATE `item_template` SET `dmg_min1` = 54.0, `dmg_max1` = 101.0 WHERE entry=19562;

/*  Outrunner's Bow  */
UPDATE `item_template` SET `dmg_min1` = 46.0, `dmg_max1` = 86.0 WHERE entry=19563;

/*  Outrunner's Bow  */
UPDATE `item_template` SET `dmg_min1` = 38.0, `dmg_max1` = 71.0 WHERE entry=19564;

/*  Outrunner's Bow  */
UPDATE `item_template` SET `dmg_min1` = 28.0, `dmg_max1` = 52.0 WHERE entry=19565;

/*  Rage of Mugamba  */
UPDATE `item_template` SET `stat_type4` = 0, `stat_value4` = 0, `spellid_2` = 13675 WHERE entry=19577;

/*  Maelstrom's Wrath  */
UPDATE `item_template` SET `stat_value1` = 15, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=19621;

/*  Bloodvine Vest  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19682;

/*  Bloodvine Leggings  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19683;

/*  Bloodvine Boots  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19684;

/*  Primal Batskin Jerkin  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19685;

/*  Primal Batskin Gloves  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19686;

/*  Primal Batskin Bracers  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19687;

/*  Blood Tiger Breastplate  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19688;

/*  Blood Tiger Shoulders  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19689;

/*  Bloodsoul Breastplate  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19690;

/*  Bloodsoul Shoulders  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19691;

/*  Bloodsoul Gauntlets  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19692;

/*  Darksoul Breastplate  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19693;

/*  Darksoul Leggings  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19694;

/*  Darksoul Shoulders  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19695;

/*  Rune of the Dawn  */
UPDATE `item_template` SET `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=19812;

/*  Zandalar Predator's Mantle  */
UPDATE `item_template` SET `stat_value1` = 22, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=19831;

/*  Zandalar Predator's Belt  */
UPDATE `item_template` SET `stat_value2` = 20, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=19832;

/*  Test Ranged Slot  */
UPDATE `item_template` SET `spellid_1` = 26647, `spelltrigger_1` = 1 WHERE entry=19837;

/*  Zandalar Illusionist's Robe DEPRECATED  */
UPDATE `item_template` SET `spellid_1` = 23729, `spelltrigger_1` = 1, `spellid_2` = 9345, `spelltrigger_2` = 1 WHERE entry=19844;

/*  Zandalar Demoniac's Robe DEPRECATED  */
UPDATE `item_template` SET `spellid_1` = 23729, `spelltrigger_1` = 1, `spellid_2` = 9345, `spelltrigger_2` = 1 WHERE entry=19847;

/*  Gurubashi Dwarf Destroyer  */
UPDATE `item_template` SET `dmg_min1` = 76.0, `dmg_max1` = 142.0 WHERE entry=19853;

/*  Primalist's Seal  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19863;

/*  Bloodcaller  */
UPDATE `item_template` SET `dmg_min1` = 52.6, `dmg_max1` = 113.6 WHERE entry=19864;

/*  Blooddrenched Grips  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19869;

/*  Hakkari Loa Cloak  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19870;

/*  Overlord's Crimson Band  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19873;

/*  Bloodstained Coif  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19875;

/*  Animist's Leggings  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19877;

/*  Bloodsoaked Pauldrons  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19878;

/*  Alex's Test Beatdown Staff  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=19879;

/*  Jin'do's Judgement  */
UPDATE `item_template` SET `dmg_min1` = 143.55, `dmg_max1` = 226.55 WHERE entry=19884;

/*  The Hexxer's Cover  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19886;

/*  Bloodstained Legplates  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19887;

/*  Overlord's Embrace  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19888;

/*  Blooddrenched Leggings  */
UPDATE `item_template` SET `DisenchantID` = 49, `spelltrigger_1` = 0 WHERE entry=19889;

/*  Jin'do's Hexxer  */
UPDATE `item_template` SET `dmg_min1` = 64.4, `dmg_max1` = 134.4 WHERE entry=19890;

/*  Animist's Boots  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19892;

/*  Zanzil's Seal  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19893;

/*  Bloodsoaked Gauntlets  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19894;

/*  Bloodtinged Kilt  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19895;

/*  Seal of Jin  */
UPDATE `item_template` SET `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0 WHERE entry=19898;

/*  Fang of Venoxis  */
UPDATE `item_template` SET `dmg_min1` = 35.2, `dmg_max1` = 72.2 WHERE entry=19903;

/*  Zulian Tigerhide Cloak  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=19907;

/*  Sceptre of Smiting  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 49, `spellid_1` = 7546 WHERE entry=19908;

/*  Arlokk's Grasp  */
UPDATE `item_template` SET `dmg_min1` = 41.5, `dmg_max1` = 84.5 WHERE entry=19910;

/*  Zulian Hacker  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 49, `spellid_1` = 7540 WHERE entry=19921;

/*  Flowing Ritual Robes DEPRECATED  */
UPDATE `item_template` SET `spellid_1` = 14047, `spelltrigger_1` = 1 WHERE entry=19926;

/*  Bloodtinged Gloves  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19929;

/*  Renataki's Soul Conduit  */
UPDATE `item_template` SET `dmg_min1` = 57.6, `dmg_max1` = 114.6 WHERE entry=19964;

/*  Wushoolay's Poker  */
UPDATE `item_template` SET `dmg_min1` = 43.6, `dmg_max1` = 87.6 WHERE entry=19965;

/*  Nat Pagle's Extreme Anglin' Boots  */
UPDATE `item_template` SET `RequiredLevel` = 0 WHERE entry=19969;

/*  Hook of the Master Angler  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellcooldown_1` = 5000 WHERE entry=19979;

/*  Duskbat Drape  */
UPDATE `item_template` SET `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 24350 WHERE entry=19982;

/*  Tome of Devouring Shadows  */
UPDATE `item_template` SET `spellid_1` = 9327, `spelltrigger_1` = 1 WHERE entry=19989;

/*  Blessed Prayer Beads  */
UPDATE `item_template` SET `spellcategorycooldown_1` = 0, `spellcategory_1` = 0 WHERE entry=19990;

/*  Devilsaur Tooth  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0, `spellid_1` = 24353, `spellcategorycooldown_1` = 10000 WHERE entry=19992;

/*  Hoodoo Hunting Bow  */
UPDATE `item_template` SET `dmg_min1` = 68.0, `dmg_max1` = 128.0 WHERE entry=19993;

/*  Bloodvine Lens  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19998;

/*  Bloodvine Goggles  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19999;

/*  Devilsaur Claws  */
UPDATE `item_template` SET `dmg_min1` = 48.0, `dmg_max1` = 90.0, `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 15464, `spelltrigger_1` = 1 WHERE entry=20003;

/*  Devilsaur Claws  */
UPDATE `item_template` SET `dmg_min1` = 48.0, `dmg_max1` = 90.0, `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 24362 WHERE entry=20005;

/*  Circle of Hope  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0, `spellid_1` = 24426, `spelltrigger_2` = 0 WHERE entry=20006;

/*  Glacial Spike  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=20035;

/*  Arcane Crystal Pendant  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=20037;

/*  Mandokir's Sting  */
UPDATE `item_template` SET `dmg_min1` = 68.0, `dmg_max1` = 127.0 WHERE entry=20038;

/*  Highlander's Plate Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20041;

/*  Highlander's Lamellar Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20042;

/*  Highlander's Chain Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20043;

/*  Highlander's Mail Girdle  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20044;

/*  Highlander's Leather Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20045;

/*  Highlander's Lizardhide Girdle  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20046;

/*  Highlander's Cloth Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20047;

/*  Highlander's Plate Greaves  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20048;

/*  Highlander's Lamellar Greaves  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20049;

/*  Highlander's Chain Greaves  */
UPDATE `item_template` SET `stat_value2` = 15, `spellid_2` = 0, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20050;

/*  Highlander's Mail Greaves  */
UPDATE `item_template` SET `stat_value2` = 15, `spellid_2` = 0, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20051;

/*  Highlander's Leather Boots  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20052;

/*  Highlander's Lizardhide Boots  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20053;

/*  Highlander's Cloth Boots  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20054;

/*  Highlander's Chain Pauldrons  */
UPDATE `item_template` SET `stat_value1` = 20, `spellid_1` = 0, `spelltrigger_1` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 7 WHERE entry=20055;

/*  Highlander's Mail Pauldrons  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 7 WHERE entry=20056;

/*  Highlander's Plate Spaulders  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 7 WHERE entry=20057;

/*  Highlander's Lamellar Spaulders  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 7 WHERE entry=20058;

/*  Highlander's Leather Shoulders  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 7 WHERE entry=20059;

/*  Highlander's Lizardhide Shoulders  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 7 WHERE entry=20060;

/*  Highlander's Epaulets  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 7 WHERE entry=20061;

/*  Deathguard's Cloak  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 7 WHERE entry=20068;

/*  Ironbark Staff  */
UPDATE `item_template` SET `dmg_min1` = 136.62, `dmg_max1` = 242.62, `spelltrigger_3` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 7 WHERE entry=20069;

/*  Sageclaw  */
UPDATE `item_template` SET `dmg_min1` = 46.31, `dmg_max1` = 95.31, `spelltrigger_3` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 7 WHERE entry=20070;

/*  Talisman of Arathor  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 4 WHERE entry=20071;

/*  Defiler's Talisman  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 4 WHERE entry=20072;

/*  Cloak of the Honor Guard  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 7 WHERE entry=20073;

/*  Woestave  */
UPDATE `item_template` SET `spellid_1` = 9412 WHERE entry=20082;

/*  Highlander's Chain Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20088;

/*  Highlander's Chain Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20089;

/*  Highlander's Chain Greaves  */
UPDATE `item_template` SET `stat_value2` = 12, `spellid_2` = 0, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20091;

/*  Highlander's Chain Greaves  */
UPDATE `item_template` SET `stat_value2` = 10, `spellid_2` = 0, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20092;

/*  Highlander's Cloth Boots  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20094;

/*  Highlander's Cloth Boots  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20095;

/*  Highlander's Cloth Boots  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20096;

/*  Highlander's Cloth Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20097;

/*  Highlander's Cloth Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20098;

/*  Highlander's Cloth Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20099;

/*  Highlander's Lizardhide Boots  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20100;

/*  Highlander's Lizardhide Boots  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20101;

/*  Highlander's Lizardhide Boots  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20102;

/*  Highlander's Lizardhide Girdle  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20103;

/*  Highlander's Lizardhide Girdle  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20104;

/*  Highlander's Lizardhide Girdle  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20105;

/*  Highlander's Lamellar Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20106;

/*  Highlander's Lamellar Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20107;

/*  Highlander's Lamellar Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20108;

/*  Highlander's Lamellar Greaves  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20109;

/*  Highlander's Lamellar Greaves  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20110;

/*  Highlander's Lamellar Greaves  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20111;

/*  Highlander's Leather Boots  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20112;

/*  Highlander's Leather Boots  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20113;

/*  Highlander's Leather Boots  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20114;

/*  Highlander's Leather Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20115;

/*  Highlander's Leather Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20116;

/*  Highlander's Leather Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20117;

/*  Highlander's Mail Girdle  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20118;

/*  Highlander's Mail Girdle  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20119;

/*  Highlander's Mail Girdle  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20120;

/*  Highlander's Mail Greaves  */
UPDATE `item_template` SET `stat_value2` = 12, `spellid_2` = 0, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20121;

/*  Highlander's Mail Greaves  */
UPDATE `item_template` SET `stat_value2` = 10, `spellid_2` = 0, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20122;

/*  Highlander's Mail Greaves  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20123;

/*  Highlander's Plate Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20124;

/*  Highlander's Plate Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20125;

/*  Highlander's Plate Greaves  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20127;

/*  Highlander's Plate Greaves  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20128;

/*  Battle Tabard of the Defilers  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 7 WHERE entry=20131;

/*  Arathor Battle Tabard  */
UPDATE `item_template` SET `RequiredReputationFaction` = 509, `RequiredReputationRank` = 7 WHERE entry=20132;

/*  Skyfury Helm  */
UPDATE `item_template` SET `stat_type4` = 0, `stat_value4` = 0, `spellid_1` = 18382, `spellid_2` = 7597 WHERE entry=20134;

/*  90 Epic Warrior Bracelets  */
UPDATE `item_template` SET `spellid_1` = 7597, `spelltrigger_1` = 1, `spellid_2` = 15464, `spelltrigger_2` = 1 WHERE entry=20135;

/*  90 Epic Warrior Breastplate  */
UPDATE `item_template` SET `spellid_2` = 15465, `spelltrigger_2` = 1 WHERE entry=20136;

/*  90 Epic Warrior Gauntlets  */
UPDATE `item_template` SET `spellid_1` = 14803, `spelltrigger_1` = 1, `spellid_2` = 7597, `spelltrigger_2` = 1 WHERE entry=20137;

/*  90 Epic Warrior Helm  */
UPDATE `item_template` SET `spellid_1` = 15465, `spelltrigger_1` = 1, `spellid_2` = 21607, `spelltrigger_2` = 1 WHERE entry=20138;

/*  90 Epic Warrior Legplates  */
UPDATE `item_template` SET `spellid_1` = 13665, `spelltrigger_1` = 1 WHERE entry=20139;

/*  90 Epic Warrior Pauldrons  */
UPDATE `item_template` SET `spellid_1` = 7597, `spelltrigger_1` = 1, `spellid_2` = 14803, `spelltrigger_2` = 1 WHERE entry=20140;

/*  90 Epic Warrior Sabatons  */
UPDATE `item_template` SET `spellid_1` = 7597, `spelltrigger_1` = 1 WHERE entry=20141;

/*  90 Epic Warrior Waistband  */
UPDATE `item_template` SET `fire_res` = 5, `nature_res` = 6, `frost_res` = 6, `shadow_res` = 6, `arcane_res` = 6, `stat_type3` = 0, `stat_value3` = 0, `stat_type4` = 0, `stat_value4` = 0, `stat_type5` = 0, `stat_value5` = 0, `stat_type6` = 0, `stat_value6` = 0, `stat_type7` = 0, `stat_value7` = 0, `stat_type8` = 0, `stat_value8` = 0, `spelltrigger_1` = 0, `spellid_2` = 14803 WHERE entry=20142;

/*  90 Epic Warrior Neck  */
UPDATE `item_template` SET `spellid_1` = 7597, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellid_2` = 21595, `spelltrigger_2` = 1 WHERE entry=20143;

/*  90 Epic Warrior Ring  */
UPDATE `item_template` SET `spellid_1` = 7597, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 0, `spellid_2` = 21595, `spelltrigger_2` = 1 WHERE entry=20144;

/*  90 Epic Warrior Cloak  */
UPDATE `item_template` SET `spellid_1` = 7597, `spelltrigger_1` = 1, `spellid_2` = 15464, `spelltrigger_2` = 1 WHERE entry=20145;

/*  90 Epic Warrior Gun  */
UPDATE `item_template` SET `spellid_1` = 7597, `spelltrigger_1` = 1 WHERE entry=20146;

/*  90 Epic Warrior Axe  */
UPDATE `item_template` SET `spellid_1` = 21607, `spelltrigger_1` = 1, `spellid_2` = 13665, `spelltrigger_2` = 1 WHERE entry=20149;

/*  Defiler's Chain Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20150;

/*  Defiler's Chain Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20151;

/*  Defiler's Chain Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20152;

/*  Defiler's Chain Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20153;

/*  Defiler's Chain Greaves  */
UPDATE `item_template` SET `stat_value2` = 15, `spellid_2` = 0, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20154;

/*  Defiler's Chain Greaves  */
UPDATE `item_template` SET `stat_value2` = 12, `spellid_2` = 0, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20155;

/*  Defiler's Chain Greaves  */
UPDATE `item_template` SET `stat_value2` = 10, `spellid_2` = 0, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20156;

/*  Defiler's Chain Greaves  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20157;

/*  Defiler's Chain Pauldrons  */
UPDATE `item_template` SET `stat_value1` = 20, `spellid_1` = 0, `spelltrigger_1` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 7 WHERE entry=20158;

/*  Defiler's Cloth Boots  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20159;

/*  Defiler's Cloth Boots  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20160;

/*  Defiler's Cloth Boots  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20161;

/*  Defiler's Cloth Boots  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20162;

/*  Defiler's Cloth Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20163;

/*  Defiler's Cloth Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20164;

/*  Defiler's Cloth Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20165;

/*  Defiler's Cloth Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20166;

/*  Defiler's Lizardhide Boots  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20167;

/*  Defiler's Lizardhide Boots  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20168;

/*  Defiler's Lizardhide Boots  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20169;

/*  Defiler's Lizardhide Boots  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20170;

/*  Defiler's Lizardhide Girdle  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20171;

/*  Defiler's Lizardhide Girdle  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20172;

/*  Defiler's Lizardhide Girdle  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20173;

/*  Defiler's Lizardhide Girdle  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20174;

/*  Defiler's Lizardhide Shoulders  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 7 WHERE entry=20175;

/*  Defiler's Epaulets  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 7 WHERE entry=20176;

/*  Defiler's Lamellar Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20177;

/*  Defiler's Lamellar Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20178;

/*  Defiler's Lamellar Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20179;

/*  Defiler's Lamellar Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20180;

/*  Defiler's Lamellar Greaves  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20181;

/*  Defiler's Lamellar Greaves  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20182;

/*  Defiler's Lamellar Greaves  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20183;

/*  Defiler's Lamellar Spaulders  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 7 WHERE entry=20184;

/*  Defiler's Lamellar Greaves  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20185;

/*  Defiler's Leather Boots  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20186;

/*  Defiler's Leather Boots  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20187;

/*  Defiler's Leather Boots  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20188;

/*  Defiler's Leather Boots  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20189;

/*  Defiler's Leather Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20190;

/*  Defiler's Leather Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20191;

/*  Defiler's Leather Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20192;

/*  Defiler's Leather Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20193;

/*  Defiler's Leather Shoulders  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 7 WHERE entry=20194;

/*  Defiler's Mail Girdle  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20195;

/*  Defiler's Mail Girdle  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20196;

/*  Defiler's Mail Girdle  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20198;

/*  Defiler's Mail Greaves  */
UPDATE `item_template` SET `stat_value2` = 15, `spellid_2` = 0, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20199;

/*  Defiler's Mail Greaves  */
UPDATE `item_template` SET `stat_value2` = 10, `spellid_2` = 0, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20200;

/*  Defiler's Mail Greaves  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20201;

/*  Defiler's Mail Greaves  */
UPDATE `item_template` SET `stat_value2` = 12, `spellid_2` = 0, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20202;

/*  Defiler's Mail Pauldrons  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 7 WHERE entry=20203;

/*  Defiler's Plate Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20204;

/*  Defiler's Plate Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20205;

/*  Defiler's Plate Girdle  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20206;

/*  Defiler's Plate Greaves  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20208;

/*  Defiler's Plate Greaves  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20209;

/*  Defiler's Plate Greaves  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20211;

/*  Defiler's Plate Spaulders  */
UPDATE `item_template` SET `RequiredReputationFaction` = 510, `RequiredReputationRank` = 7 WHERE entry=20212;

/*  Mindfang  */
UPDATE `item_template` SET `dmg_min1` = 46.31, `dmg_max1` = 95.31, `spelltrigger_3` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 7 WHERE entry=20214;

/*  Ironbark Staff  */
UPDATE `item_template` SET `dmg_min1` = 136.62, `dmg_max1` = 242.62, `spelltrigger_3` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 7 WHERE entry=20220;

/*  Seafury Gauntlets  */
UPDATE `item_template` SET `stat_type4` = 0, `stat_value4` = 0, `spellid_1` = 7597, `spellid_2` = 18384 WHERE entry=20257;

/*  Zulian Ceremonial Staff  */
UPDATE `item_template` SET `dmg_min1` = 112.4, `dmg_max1` = 171.4, `DisenchantID` = 49 WHERE entry=20258;

/*  Shadow Panther Hide Gloves  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20259;

/*  Shadow Panther Hide Belt  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20261;

/*  Gurubashi Helm  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20263;

/*  Peacekeeper Gauntlets  */
UPDATE `item_template` SET `spelltrigger_3` = 0 WHERE entry=20264;

/*  90 Epic Rogue Belt  */
UPDATE `item_template` SET `spellid_1` = 7597, `spelltrigger_1` = 1 WHERE entry=20267;

/*  90 Epic Rogue Boots  */
UPDATE `item_template` SET `spellid_1` = 7597, `spelltrigger_1` = 1, `spellid_2` = 14803, `spelltrigger_2` = 1 WHERE entry=20268;

/*  90 Epic Rogue Bracers  */
UPDATE `item_template` SET `spellid_1` = 7597, `spelltrigger_1` = 1 WHERE entry=20269;

/*  90 Epic Rogue Cap  */
UPDATE `item_template` SET `spellid_1` = 13670, `spelltrigger_1` = 1, `spellid_2` = 14803, `spelltrigger_2` = 1 WHERE entry=20270;

/*  90 Epic Rogue Gloves  */
UPDATE `item_template` SET `spellid_1` = 14803, `spelltrigger_1` = 1, `spellid_2` = 7597, `spelltrigger_2` = 1 WHERE entry=20271;

/*  90 Epic Rogue Pants  */
UPDATE `item_template` SET `spellid_1` = 13665, `spelltrigger_1` = 1, `spellid_2` = 15687, `spelltrigger_2` = 1 WHERE entry=20272;

/*  90 Epic Rogue Spaulders  */
UPDATE `item_template` SET `spellid_1` = 14803, `spelltrigger_1` = 1, `spellid_2` = 7597, `spelltrigger_2` = 1 WHERE entry=20273;

/*  90 Epic Rogue Tunic  */
UPDATE `item_template` SET `spellid_1` = 13670, `spelltrigger_1` = 1, `spellid_2` = 14803, `spelltrigger_2` = 1 WHERE entry=20274;

/*  90 Epic Rogue Neck  */
UPDATE `item_template` SET `spellid_1` = 7597, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 0 WHERE entry=20275;

/*  90 Epic Rogue Cloak  */
UPDATE `item_template` SET `spellid_1` = 7597, `spelltrigger_1` = 1 WHERE entry=20276;

/*  90 Epic Rogue Ring  */
UPDATE `item_template` SET `spellid_1` = 7597, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 0, `spellid_2` = 21595, `spelltrigger_2` = 1 WHERE entry=20277;

/*  90 Epic Rogue Bow  */
UPDATE `item_template` SET `spellid_1` = 21624, `spelltrigger_1` = 1 WHERE entry=20278;

/*  90 Epic Rogue Dagger  */
UPDATE `item_template` SET `spellid_1` = 13669, `spelltrigger_1` = 1, `spellcooldown_1` = 0 WHERE entry=20279;

/*  Blue Dragonscale Leggings  */
UPDATE `item_template` SET `arcane_res` = 12, `stat_value1` = 20, `stat_type2` = 6, `stat_value2` = 19, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 49 WHERE entry=20295;

/*  Green Dragonscale Gauntlets  */
UPDATE `item_template` SET `ItemLevel` = 56, `stat_type1` = 6, `stat_value1` = 18, `stat_type2` = 7, `stat_value2` = 5, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 48, `RequiredLevel` = 51 WHERE entry=20296;

/*  90 Epic Frost Belt  */
UPDATE `item_template` SET `spellid_1` = 18384, `spelltrigger_1` = 1, `spellid_2` = 13831, `spelltrigger_2` = 1 WHERE entry=20324;

/*  90 Epic Frost Bindings  */
UPDATE `item_template` SET `spellid_1` = 9308, `spelltrigger_1` = 1, `spellid_2` = 21619, `spelltrigger_2` = 1 WHERE entry=20325;

/*  90 Epic Frost Boots  */
UPDATE `item_template` SET `spellid_1` = 18384, `spelltrigger_1` = 1, `spellid_2` = 13831, `spelltrigger_2` = 1 WHERE entry=20326;

/*  90 Epic Frost Crown  */
UPDATE `item_template` SET `spellid_1` = 17898, `spelltrigger_1` = 1, `spellid_2` = 18378, `spelltrigger_2` = 1 WHERE entry=20327;

/*  90 Epic Frost Gloves  */
UPDATE `item_template` SET `spellid_1` = 18384, `spelltrigger_1` = 1, `spellid_2` = 13831, `spelltrigger_2` = 1 WHERE entry=20328;

/*  90 Epic Frost Leggings  */
UPDATE `item_template` SET `stat_value1` = 15, `stat_type2` = 5, `stat_value2` = 37, `stat_type3` = 7, `stat_value3` = 16, `spellid_1` = 17898, `spellid_2` = 18378, `spelltrigger_2` = 1 WHERE entry=20329;

/*  90 Epic Frost Mantle  */
UPDATE `item_template` SET `spellid_1` = 18384, `spelltrigger_1` = 1, `spellid_2` = 13831, `spelltrigger_2` = 1 WHERE entry=20330;

/*  90 Epic Frost Robes  */
UPDATE `item_template` SET `spellid_1` = 17898, `spelltrigger_1` = 1, `spellid_2` = 18378, `spelltrigger_2` = 1 WHERE entry=20331;

/*  90 Epic Frost Neck  */
UPDATE `item_template` SET `spellid_1` = 9308, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 0, `spellid_2` = 21619, `spelltrigger_2` = 1 WHERE entry=20332;

/*  90 Epic Frost Ring  */
UPDATE `item_template` SET `spellid_1` = 9308, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 0, `spellid_2` = 21619, `spelltrigger_2` = 1 WHERE entry=20333;

/*  90 Epic Frost Staff  */
UPDATE `item_template` SET `spellid_1` = 18382, `spelltrigger_1` = 1, `spellid_2` = 24666, `spelltrigger_2` = 1, `spellid_3` = 21620, `spelltrigger_3` = 1 WHERE entry=20334;

/*  90 Epic Frost Wand  */
UPDATE `item_template` SET `spellid_1` = 9402, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 0, `spellid_2` = 21624, `spelltrigger_2` = 1 WHERE entry=20335;

/*  90 Epic Frost Shroud  */
UPDATE `item_template` SET `spellid_1` = 9308, `spelltrigger_1` = 1, `spellid_2` = 21619, `spelltrigger_2` = 1 WHERE entry=20336;

/*  90 Green Frost Belt  */
UPDATE `item_template` SET `spellid_2` = 13831, `spelltrigger_2` = 1 WHERE entry=20338;

/*  90 Green Frost Bindings  */
UPDATE `item_template` SET `spellid_1` = 9308, `spelltrigger_1` = 1 WHERE entry=20339;

/*  90 Green Frost Boots  */
UPDATE `item_template` SET `spellid_2` = 13831, `spelltrigger_2` = 1 WHERE entry=20340;

/*  90 Green Frost Crown  */
UPDATE `item_template` SET `spellid_1` = 17899, `spelltrigger_1` = 1 WHERE entry=20341;

/*  90 Green Frost Gloves  */
UPDATE `item_template` SET `spellid_2` = 13831, `spelltrigger_2` = 1 WHERE entry=20342;

/*  90 Green Frost Leggings  */
UPDATE `item_template` SET `spellid_1` = 17899, `spelltrigger_1` = 1 WHERE entry=20343;

/*  90 Green Frost Mantle  */
UPDATE `item_template` SET `spellid_2` = 13831, `spelltrigger_2` = 1 WHERE entry=20344;

/*  90 Green Frost Neck  */
UPDATE `item_template` SET `spellid_1` = 9308, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 0 WHERE entry=20345;

/*  90 Green Frost Ring  */
UPDATE `item_template` SET `spellid_1` = 9308, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 0 WHERE entry=20346;

/*  90 Green Frost Robes  */
UPDATE `item_template` SET `spellid_1` = 17899, `spelltrigger_1` = 1 WHERE entry=20347;

/*  90 Green Frost Shroud  */
UPDATE `item_template` SET `spellid_1` = 9308, `spelltrigger_1` = 1 WHERE entry=20348;

/*  90 Green Frost Staff  */
UPDATE `item_template` SET `spellid_2` = 24667, `spelltrigger_2` = 1 WHERE entry=20349;

/*  90 Green Frost Wand  */
UPDATE `item_template` SET `spellid_1` = 9402, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 0 WHERE entry=20350;

/*  63 Green Frost Belt  */
UPDATE `item_template` SET `spellid_2` = 9404, `spelltrigger_2` = 1 WHERE entry=20351;

/*  63 Green Frost Bindings  */
UPDATE `item_template` SET `spellid_1` = 9404, `spelltrigger_1` = 1 WHERE entry=20352;

/*  63 Green Frost Boots  */
UPDATE `item_template` SET `spellid_2` = 9307, `spelltrigger_2` = 1 WHERE entry=20353;

/*  63 Green Frost Crown  */
UPDATE `item_template` SET `spellid_1` = 17891, `spelltrigger_1` = 1 WHERE entry=20354;

/*  63 Green Frost Gloves  */
UPDATE `item_template` SET `spellid_2` = 9307, `spelltrigger_2` = 1 WHERE entry=20355;

/*  63 Green Frost Leggings  */
UPDATE `item_template` SET `spellid_1` = 17891, `spelltrigger_1` = 1 WHERE entry=20356;

/*  63 Green Frost Mantle  */
UPDATE `item_template` SET `spellid_2` = 9307, `spelltrigger_2` = 1 WHERE entry=20357;

/*  63 Green Frost Neck  */
UPDATE `item_template` SET `spellid_1` = 9404, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 0 WHERE entry=20358;

/*  63 Green Frost Ring  */
UPDATE `item_template` SET `spellid_1` = 9404, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 0 WHERE entry=20359;

/*  63 Green Frost Robes  */
UPDATE `item_template` SET `spellid_1` = 17891, `spelltrigger_1` = 1 WHERE entry=20360;

/*  63 Green Frost Shroud  */
UPDATE `item_template` SET `spellid_1` = 9404, `spelltrigger_1` = 1 WHERE entry=20361;

/*  63 Green Frost Staff  */
UPDATE `item_template` SET `spellid_2` = 17891, `spelltrigger_2` = 1 WHERE entry=20362;

/*  63 Green Frost Wand  */
UPDATE `item_template` SET `spellid_1` = 7702, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 0 WHERE entry=20363;

/*  Bland Bow of Steadiness  */
UPDATE `item_template` SET `dmg_min1` = 46.0, `dmg_max1` = 46.0 WHERE entry=20368;

/*  Azurite Fists  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=20369;

/*  Test Staff 90 epic  */
UPDATE `item_template` SET `spellid_1` = 24694, `spelltrigger_1` = 1, `spellid_2` = 13670, `spelltrigger_2` = 1 WHERE entry=20370;

/*  Test Staff 77 epic  */
UPDATE `item_template` SET `spellid_1` = 24697, `spelltrigger_1` = 1, `spellid_2` = 13670, `spelltrigger_2` = 1 WHERE entry=20372;

/*  Outrider's Bow  */
UPDATE `item_template` SET `dmg_min1` = 19.0, `dmg_max1` = 37.0 WHERE entry=20437;

/*  Outrunner's Bow  */
UPDATE `item_template` SET `dmg_min1` = 19.0, `dmg_max1` = 37.0 WHERE entry=20438;

/*  Test Defense Ring +120  */
UPDATE `item_template` SET `spellid_1` = 24774, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 0 WHERE entry=20445;

/*  Test Defense Ring +80  */
UPDATE `item_template` SET `spellid_1` = 24775, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 0 WHERE entry=20446;

/*  Sandstalker Bracers  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20476;

/*  Sandstalker Gauntlets  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20477;

/*  Sandstalker Breastplate  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20478;

/*  Spitfire Breastplate  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20479;

/*  Spitfire Gauntlets  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20480;

/*  Spitfire Bracers  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20481;

/*  Ironbark Shield  */
UPDATE `item_template` SET `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 24852, `spelltrigger_1` = 1 WHERE entry=20502;

/*  Lightforged Blade  */
UPDATE `item_template` SET `spellid_1` = 21509 WHERE entry=20504;

/*  Chivalrous Signet  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=20505;

/*  Feral Staff  */
UPDATE `item_template` SET `dmg_min1` = 108.0, `dmg_max1` = 162.0, `stat_type3` = 0, `stat_value3` = 0, `spelltrigger_1` = 0 WHERE entry=20522;

/*  Shadowhide Leggings  */
UPDATE `item_template` SET `shadow_res` = 6, `stat_type3` = 0, `stat_value3` = 0, `stat_type4` = 0, `stat_value4` = 0, `spelltrigger_1` = 0 WHERE entry=20524;

/*  Earthen Sigil  */
UPDATE `item_template` SET `spellid_1` = 24884, `spellcooldown_1` = 180000 WHERE entry=20525;

/*  Robes of Servitude  */
UPDATE `item_template` SET `spellid_1` = 17747, `spellid_2` = 14793 WHERE entry=20530;

/*  Abyss Shard  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0 WHERE entry=20534;

/*  Soul Harvester  */
UPDATE `item_template` SET `spellid_2` = 14794 WHERE entry=20536;

/*  Runed Stygian Boots  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20537;

/*  Runed Stygian Leggings  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20538;

/*  Runed Stygian Belt  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20539;

/*  Darkrune Gauntlets  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20549;

/*  Darkrune Breastplate  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20550;

/*  Darkrune Helm  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20551;

/*  Black Whelp Tunic  */
UPDATE `item_template` SET `stat_type1` = 4 WHERE entry=20575;

/*  Hammer of Bestial Fury  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 13, `spellid_1` = 24994 WHERE entry=20580;

/*  Staff of Rampant Growth  */
UPDATE `item_template` SET `dmg_min1` = 113.4, `dmg_max1` = 184.4 WHERE entry=20581;

/*  Sturdy Male Dwarf Mask  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=20591;

/*  Sturdy Male Tauren Mask  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=20596;

/*  Polished Ironwood Crossbow  */
UPDATE `item_template` SET `dmg_min1` = 101.0, `dmg_max1` = 153.0 WHERE entry=20599;

/*  Malfurion's Signet Ring  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=20600;

/*  Circlet of Restless Dreams  */
UPDATE `item_template` SET `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 15717 WHERE entry=20623;

/*  Hibernation Crystal  */
UPDATE `item_template` SET `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=20636;

/*  Sandstrider's Mark  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 44.0, `dmg_max1` = 82.0, `stat_value1` = 8, `DisenchantID` = 30 WHERE entry=20646;

/*  Black Crystal Dagger  */
UPDATE `item_template` SET `Quality` = 2, `dmg_min1` = 44.0, `dmg_max1` = 83.0, `DisenchantID` = 30, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=20647;

/*  Cold Forged Hammer  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20648;

/*  Amethyst War Staff  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20654;

/*  Crystal Tipped Stiletto  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20657;

/*  Stonecutting Glaive  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20660;

/*  Deep Strike Bow  */
UPDATE `item_template` SET `dmg_min1` = 58.0, `dmg_max1` = 108.0, `DisenchantID` = 49 WHERE entry=20663;

/*  Abyssal Leather Leggings  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20665;

/*  Hardened Steel Warhammer  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20666;

/*  Abyssal Mail Legguards  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20668;

/*  Darkstone Claymore  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20669;

/*  Sparkling Crystal Wand  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20672;

/*  Abyssal Cloth Pants  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20674;

/*  Soulrender  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20675;

/*  Abyssal War Beads  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20695;

/*  Crystal Spiked Maul  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20696;

/*  Crystalline Threaded Cape  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20697;

/*  Elemental Attuned Blade  */
UPDATE `item_template` SET `dmg_min1` = 58.6, `dmg_max1` = 116.6 WHERE entry=20698;

/*  Cenarion Reservist's Legplates  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20699;

/*  Cenarion Reservist's Legplates  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20700;

/*  Cenarion Reservist's Legguards  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20701;

/*  Cenarion Reservist's Legguards  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20702;

/*  Cenarion Reservist's Leggings  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20703;

/*  Cenarion Reservist's Leggings  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20704;

/*  Cenarion Reservist's Pants  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20705;

/*  Cenarion Reservist's Pants  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20706;

/*  Cenarion Reservist's Pants  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20707;

/*  Crystal Encrusted Greaves  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20710;

/*  Crystal Lined Greaves  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20711;

/*  Wastewalker's Gauntlets  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20712;

/*  Desertstalkers's Gauntlets  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20713;

/*  Sandstorm Boots  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20714;

/*  Dunestalker's Boots  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20715;

/*  Sandworm Skin Gloves  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20716;

/*  Desert Bloom Gloves  */
UPDATE `item_template` SET `DisenchantID` = 49, `spelltrigger_2` = 0 WHERE entry=20717;

/*  Dark Whisper Blade  */
UPDATE `item_template` SET `dmg_min1` = 39.6, `dmg_max1` = 76.6, `DisenchantID` = 49 WHERE entry=20720;

/*  Band of the Cultist  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20721;

/*  Crystal Slugthrower  */
UPDATE `item_template` SET `dmg_min1` = 65.0, `dmg_max1` = 122.0, `DisenchantID` = 49 WHERE entry=20722;

/*  Staff of Spell Penetration - Fire (TEST)  */
UPDATE `item_template` SET `spellid_1` = 25717, `spelltrigger_1` = 1 WHERE entry=21101;

/*  Staff of Spell Penetration - Frost (TEST)  */
UPDATE `item_template` SET `spellid_1` = 25718, `spelltrigger_1` = 1 WHERE entry=21102;

/*  Defiler's Talisman  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 4 WHERE entry=21115;

/*  Defiler's Talisman  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 4 WHERE entry=21116;

/*  Talisman of Arathor  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 4 WHERE entry=21117;

/*  Talisman of Arathor  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 4 WHERE entry=21118;

/*  Talisman of Arathor  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 4 WHERE entry=21119;

/*  Defiler's Talisman  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 4 WHERE entry=21120;

/*  Death's Sting  */
UPDATE `item_template` SET `stat_type2` = 0, `stat_value2` = 0, `spellid_2` = 7574 WHERE entry=21126;

/*  Staff of the Qiraji Prophets  */
UPDATE `item_template` SET `dmg_min1` = 129.4, `dmg_max1` = 214.4 WHERE entry=21128;

/*  Gloves of Earthen Power  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21178;

/*  Band of Earthen Wrath  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21179;

/*  Earthweave Cloak  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21187;

/*  Might of Cenarius  */
UPDATE `item_template` SET `spelltrigger_3` = 0 WHERE entry=21189;

/*  Signet Ring of the Bronze Dragonflight  */
UPDATE `item_template` SET `stat_value1` = 18, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=21201;

/*  Signet Ring of the Bronze Dragonflight  */
UPDATE `item_template` SET `stat_value1` = 19, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=21202;

/*  Signet Ring of the Bronze Dragonflight  */
UPDATE `item_template` SET `stat_value1` = 21, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=21203;

/*  Signet Ring of the Bronze Dragonflight  */
UPDATE `item_template` SET `stat_value1` = 22, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=21204;

/*  Signet Ring of the Bronze Dragonflight  */
UPDATE `item_template` SET `stat_value1` = 24, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=21205;

/*  Blessed Qiraji War Hammer  */
UPDATE `item_template` SET `stat_type2` = 4, `stat_value2` = 10, `spellid_1` = 24697 WHERE entry=21268;

/*  Blessed Qiraji Musket  */
UPDATE `item_template` SET `dmg_min1` = 86.0, `dmg_max1` = 160.0 WHERE entry=21272;

/*  Stormshroud Gloves  */
UPDATE `item_template` SET `ItemLevel` = 62, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 49, `spellid_1` = 7597, `spellid_2` = 15464, `RequiredLevel` = 57 WHERE entry=21278;

/*  Striker's Footguards  */
UPDATE `item_template` SET `stat_value1` = 31, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=21365;

/*  Striker's Diadem  */
UPDATE `item_template` SET `stat_value1` = 29, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=21366;

/*  Striker's Pauldrons  */
UPDATE `item_template` SET `stat_value1` = 26, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=21367;

/*  Striker's Leggings  */
UPDATE `item_template` SET `stat_value1` = 36, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=21368;

/*  Striker's Hauberk  */
UPDATE `item_template` SET `stat_value1` = 39, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=21370;

/*  Scythe of the Unseen Path  */
UPDATE `item_template` SET `stat_value1` = 16, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=21401;

/*  Signet of the Unseen Path  */
UPDATE `item_template` SET `stat_value1` = 19, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=21402;

/*  Cloak of the Unseen Path  */
UPDATE `item_template` SET `stat_value1` = 17, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=21403;

/*  Mace of Unending Life  */
UPDATE `item_template` SET `dmg_min1` = 67.0, `dmg_max1` = 149.0, `stat_type1` = 4, `stat_value1` = 9, `stat_value2` = 7, `stat_value3` = 11, `stat_value4` = 10, `stat_type5` = 0, `stat_value5` = 0, `spellid_1` = 18056, `spelltrigger_1` = 1, `spellid_2` = 26153, `spelltrigger_2` = 1 WHERE entry=21407;

/*  Staff of the Ruins  */
UPDATE `item_template` SET `dmg_min1` = 151.6, `dmg_max1` = 246.6 WHERE entry=21452;

/*  Southwind Helm  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21455;

/*  Crossbow of Imminent Doom  */
UPDATE `item_template` SET `dmg_min1` = 103.0, `dmg_max1` = 155.0 WHERE entry=21459;

/*  Stinger of Ayamiss  */
UPDATE `item_template` SET `dmg_min1` = 63.4, `dmg_max1` = 136.4 WHERE entry=21466;

/*  Mantle of Maz'Nadir  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21468;

/*  Gauntlets of Southwind  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21469;

/*  Cloak of the Savior  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21470;

/*  Eye of Moam  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21473;

/*  Chitinous Shoulderguards  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21474;

/*  Legplates of the Destroyer  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21475;

/*  Obsidian Scaled Leggings  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21476;

/*  Ring of Fury  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21477;

/*  Bow of Taut Sinew  */
UPDATE `item_template` SET `dmg_min1` = 59.0, `dmg_max1` = 111.0 WHERE entry=21478;

/*  Scaled Silithid Gauntlets  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21480;

/*  Boots of the Desert Protector  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21481;

/*  Boots of the Fiery Sands  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21482;

/*  Ring of the Desert Winds  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21483;

/*  Helm of Regrowth  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21484;

/*  Fetish of Chitinous Spikes  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21488;

/*  Quicksand Waders  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21489;

/*  Slime Kickers  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21490;

/*  Scaled Bracers of the Gorger  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21491;

/*  Southwind's Grasp  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21494;

/*  Legplates of the Qiraji Command  */
UPDATE `item_template` SET `DisenchantID` = 49, `spelltrigger_2` = 0 WHERE entry=21495;

/*  Bracers of Qiraji Command  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21496;

/*  Boots of the Qiraji General  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21497;

/*  Belt of the Inquisition  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21500;

/*  Toughened Silithid Hide Gloves  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21501;

/*  Sand Reaver Wristguards  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21502;

/*  Belt of the Sand Reaver  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21503;

/*  Dagger of Spell Penetration - Fire 150 Resist (TEST)  */
UPDATE `item_template` SET `spellid_1` = 26203, `spelltrigger_1` = 1 WHERE entry=21516;

/*  Gnomish Turban of Psychic Might  */
UPDATE `item_template` SET `spellid_2` = 26208 WHERE entry=21517;

/*  Dagger of Spell Penetration - Frost 150 Resist (TEST)  */
UPDATE `item_template` SET `spellid_1` = 26204, `spelltrigger_1` = 1 WHERE entry=21518;

/*  Runesword of the Red  */
UPDATE `item_template` SET `dmg_min1` = 52.8, `dmg_max1` = 128.8 WHERE entry=21521;

/*  Fang of Korialstrasz  */
UPDATE `item_template` SET `dmg_min1` = 43.2, `dmg_max1` = 106.2 WHERE entry=21523;

/*  Darkwater Robes  */
UPDATE `item_template` SET `spellid_1` = 17899 WHERE entry=21527;

/*  Don Rodrigo's Band  */
UPDATE `item_template` SET `spelltrigger_3` = 0 WHERE entry=21563;

/*  Rune of Perfection  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=21565;

/*  Rune of Perfection  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=21566;

/*  Rune of Duty  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=21567;

/*  Rune of Duty  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=21568;

/*  Wristguards of Elemental Fury  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=21588;

/*  Bracers of the Fallen Son  */
UPDATE `item_template` SET `stat_type1` = 5, `stat_value1` = 15, `stat_type2` = 7, `stat_value2` = 10, `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 14054, `spelltrigger_1` = 1, `spellid_2` = 23727, `spelltrigger_2` = 1 WHERE entry=21594;

/*  Ring of the Godslayer  */
UPDATE `item_template` SET `stat_value1` = 27, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=21596;

/*  Wormscale Stompers  */
UPDATE `item_template` SET `stat_value2` = 12, `stat_value3` = 12, `stat_type4` = 0, `stat_value4` = 0, `spellid_1` = 9344, `spelltrigger_1` = 1, `spellid_2` = 21620, `spelltrigger_2` = 1 WHERE entry=21612;

/*  Wormhide Boots  */
UPDATE `item_template` SET `stat_type2` = 4, `stat_value2` = 18, `stat_type3` = 7, `stat_value3` = 13 WHERE entry=21613;

/*  Wormhide Protector  */
UPDATE `item_template` SET `nature_res` = 30, `stat_value1` = 26, `stat_type3` = 4, `stat_value3` = 18 WHERE entry=21614;

/*  Huhuran's Stinger  */
UPDATE `item_template` SET `dmg_min1` = 87.0, `dmg_max1` = 163.0 WHERE entry=21616;

/*  Sharpened Silithid Femur  */
UPDATE `item_template` SET `dmg_min1` = 53.6, `dmg_max1` = 136.6 WHERE entry=21622;

/*  Barb of the Sand Reaver  */
UPDATE `item_template` SET `stat_value1` = 41, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=21635;

/*  Leggings of the Festering Swarm  */
UPDATE `item_template` SET `spellid_1` = 26405 WHERE entry=21676;

/*  Mantle of Phrenic Power  */
UPDATE `item_template` SET `spellid_1` = 17871 WHERE entry=21686;

/*  Silithid Husked Launcher  */
UPDATE `item_template` SET `dmg_min1` = 68.0, `dmg_max1` = 128.0 WHERE entry=21800;

/*  The Lost Kris of Zedd  */
UPDATE `item_template` SET `dmg_min1` = 41.75, `dmg_max1` = 82.75 WHERE entry=21802;

/*  Gavel of Qiraji Authority  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21806;

/*  Fury of the Forgotten Swarm  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21809;

/*  Treads of the Wandering Nomad  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21810;

/*  Anubisath Warhammer  */
UPDATE `item_template` SET `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 15760 WHERE entry=21837;

/*  Scepter of the False Prophet  */
UPDATE `item_template` SET `dmg_min1` = 38.36, `dmg_max1` = 111.36 WHERE entry=21839;

/*  Gloves of the Fallen Prophet  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=21890;

/*  Belt of Heroism  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21994;

/*  Bracers of Heroism  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21996;

/*  Gauntlets of Heroism  */
UPDATE `item_template` SET `ItemLevel` = 55, `stat_value1` = 18, `stat_value2` = 12, `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 7597 WHERE entry=21998;

/*  Spaulders of Heroism  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22001;

/*  Darkmantle Belt  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22002;

/*  Darkmantle Bracers  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22004;

/*  Darkmantle Gloves  */
UPDATE `item_template` SET `ItemLevel` = 55, `stat_value1` = 22, `stat_value2` = 12, `stat_value3` = 9 WHERE entry=22006;

/*  Darkmantle Spaulders  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22008;

/*  Beastmaster's Belt  */
UPDATE `item_template` SET `stat_value1` = 16, `DisenchantID` = 49, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=22010;

/*  Beastmaster's Bindings  */
UPDATE `item_template` SET `stat_value1` = 16, `DisenchantID` = 49, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=22011;

/*  Beastmaster's Cap  */
UPDATE `item_template` SET `stat_value1` = 22, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=22013;

/*  Beastmaster's Gloves  */
UPDATE `item_template` SET `ItemLevel` = 55, `stat_value1` = 14, `stat_value2` = 12, `stat_value3` = 10, `stat_type4` = 0, `stat_value4` = 0, `spelltrigger_1` = 0 WHERE entry=22015;

/*  Beastmaster's Mantle  */
UPDATE `item_template` SET `stat_value2` = 12, `DisenchantID` = 49, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=22016;

/*  Beastmaster's Pants  */
UPDATE `item_template` SET `stat_value1` = 28, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=22017;

/*  Beastmaster's Tunic  */
UPDATE `item_template` SET `stat_value1` = 25, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=22060;

/*  Beastmaster's Boots  */
UPDATE `item_template` SET `stat_value1` = 24, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=22061;

/*  Sorcerer's Belt  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22062;

/*  Sorcerer's Bindings  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22063;

/*  Sorcerer's Gloves  */
UPDATE `item_template` SET `ItemLevel` = 55, `stat_value1` = 10, `stat_value2` = 14, `stat_value3` = 12, `stat_type4` = 0, `stat_value4` = 0, `stat_type5` = 0, `stat_value5` = 0, `spellid_1` = 9417, `spellid_2` = 23727 WHERE entry=22066;

/*  Sorcerer's Mantle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22068;

/*  Deathmist Belt  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22070;

/*  Deathmist Bracers  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22071;

/*  Deathmist Mantle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22073;

/*  Deathmist Wraps  */
UPDATE `item_template` SET `ItemLevel` = 55, `stat_value1` = 16, `stat_value2` = 13, `stat_type3` = 0, `stat_value3` = 0, `stat_type4` = 0, `stat_value4` = 0, `spellid_1` = 9342, `spellid_2` = 23727 WHERE entry=22077;

/*  Virtuous Belt  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22078;

/*  Virtuous Bracers  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22079;

/*  Virtuous Gloves  */
UPDATE `item_template` SET `ItemLevel` = 55, `stat_value1` = 12, `stat_value2` = 15, `stat_value3` = 14, `stat_type4` = 0, `stat_value4` = 0, `spellid_1` = 9416 WHERE entry=22081;

/*  Virtuous Mantle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22082;

/*  Soulforge Belt  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22086;

/*  Soulforge Bracers  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22088;

/*  Soulforge Gauntlets  */
UPDATE `item_template` SET `ItemLevel` = 55, `stat_value1` = 10, `stat_value2` = 9, `stat_value3` = 10, `stat_type4` = 0, `stat_value4` = 0, `stat_type5` = 0, `stat_value5` = 0, `spellid_1` = 9416, `spellid_2` = 7597 WHERE entry=22090;

/*  Soulforge Spaulders  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22093;

/*  Bindings of The Five Thunders  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22095;

/*  Cord of The Five Thunders  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22098;

/*  Gauntlets of The Five Thunders  */
UPDATE `item_template` SET `ItemLevel` = 55, `stat_value1` = 9, `stat_value2` = 14, `stat_value3` = 12, `stat_type4` = 0, `stat_value4` = 0, `stat_type5` = 0, `stat_value5` = 0, `spellid_1` = 21618, `spellid_2` = 9417 WHERE entry=22099;

/*  Pauldrons of The Five Thunders  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22101;

/*  Feralheart Belt  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22106;

/*  Feralheart Bracers  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22108;

/*  Feralheart Gloves  */
UPDATE `item_template` SET `ItemLevel` = 55, `stat_value1` = 10, `stat_value2` = 12, `stat_value3` = 9, `stat_value4` = 10, `stat_value5` = 10, `stat_type6` = 0, `stat_value6` = 0, `spellid_1` = 9416 WHERE entry=22110;

/*  Feralheart Spaulders  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22112;

/*  Beads of Ogre Mojo  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22149;

/*  Beads of Ogre Might  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22150;

/*  Thick Obsidian Breastplate  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `spelltrigger_3` = 0 WHERE entry=22196;

/*  Wristguards of Renown  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22204;

/*  Sash of the Grand Hunt  */
UPDATE `item_template` SET `stat_type4` = 0, `stat_value4` = 0, `DisenchantID` = 49, `spellid_1` = 7570, `spellid_2` = 7582, `spellid_3` = 22811 WHERE entry=22207;

/*  Lavastone Hammer  */
UPDATE `item_template` SET `stat_type2` = 5, `stat_value2` = 12, `stat_value3` = 10, `spellid_1` = 14799 WHERE entry=22208;

/*  Foreman's Head Protector  */
UPDATE `item_template` SET `stat_type3` = 5, `stat_value3` = 11, `spellid_1` = 9342 WHERE entry=22223;

/*  Dragonskin Cowl  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22225;

/*  Frightmaw Hide  */
UPDATE `item_template` SET `stat_type2` = 0, `stat_value2` = 0, `spelltrigger_1` = 0 WHERE entry=22230;

/*  Kayser's Boots of Precision  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22231;

/*  Marksman's Girdle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22232;

/*  Verek's Leash  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_type4` = 3, `stat_value4` = 8, `stat_type5` = 6, `stat_value5` = 7, `spellid_1` = 9416, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=22242;

/*  Faith Healer's Boots  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22247;

/*  Tome of the Lost  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22253;

/*  Mana Shaping Handwraps  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=22256;

/*  Flarethorn  */
UPDATE `item_template` SET `spellid_1` = 9295 WHERE entry=22266;

/*  Spellweaver's Turban  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22267;

/*  Draconic Infused Emblem  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22268;

/*  Shadow Prowler's Cloak  */
UPDATE `item_template` SET `DisenchantID` = 49, `spelltrigger_1` = 0 WHERE entry=22269;

/*  Entrenching Boots  */
UPDATE `item_template` SET `stat_type2` = 3, `stat_value2` = 5, `stat_type3` = 5, `spellid_1` = 9397 WHERE entry=22270;

/*  Moonshadow Hood  */
UPDATE `item_template` SET `stat_type1` = 5, `stat_value1` = 15, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 9346, `spelltrigger_1` = 1, `spellid_2` = 18384, `spelltrigger_2` = 1 WHERE entry=22273;

/*  Grizzled Pelt  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=22274;

/*  Lovely Red Dress  */
UPDATE `item_template` SET `bonding` = 1 WHERE entry=22276;

/*  Red Dinner Suit  */
UPDATE `item_template` SET `bonding` = 1 WHERE entry=22277;

/*  Lovely Blue Dress  */
UPDATE `item_template` SET `bonding` = 1 WHERE entry=22278;

/*  Lovely Purple Dress  */
UPDATE `item_template` SET `bonding` = 1 WHERE entry=22280;

/*  Blue Dinner Suit  */
UPDATE `item_template` SET `bonding` = 1 WHERE entry=22281;

/*  Purple Dinner Suit  */
UPDATE `item_template` SET `bonding` = 1 WHERE entry=22282;

/*  Ironweave Robe  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22301;

/*  Ironweave Cowl  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22302;

/*  Ironweave Pants  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22303;

/*  Ironweave Gloves  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22304;

/*  Ironweave Mantle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22305;

/*  Ironweave Belt  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22306;

/*  Ironweave Boots  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22311;

/*  Ironweave Bracers  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22313;

/*  Huntsman's Harpoon  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22314;

/*  Hammer of Revitalization  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22315;

/*  Lefty's Brass Knuckle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22317;

/*  Malgen's Long Bow  */
UPDATE `item_template` SET `dmg_min1` = 63.0, `dmg_max1` = 118.0, `DisenchantID` = 49 WHERE entry=22318;

/*  Tome of Divine Right  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22319;

/*  Heart of Wyrmthalak  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22321;

/*  The Jaw Breaker  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22322;

/*  Belt of the Trickster  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22325;

/*  Amalgam's Band  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22326;

/*  Amulet of the Redeemed  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22327;

/*  Legplates of Vigilance  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22328;

/*  Scepter of Interminable Focus  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22329;

/*  Shroud of Arcane Mastery  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22330;

/*  Band of the Steadfast Hero  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22331;

/*  Blade of Necromancy  */
UPDATE `item_template` SET `DisenchantID` = 49, `spelltrigger_2` = 0 WHERE entry=22332;

/*  Hammer of Divine Might  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22333;

/*  Band of Mending  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22334;

/*  Lord Valthalak's Staff of Command  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22335;

/*  Draconian Aegis of the Legion  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22336;

/*  Shroud of Domination  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22337;

/*  Rune Band of Wizardry  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22339;

/*  Pendant of Celerity  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22340;

/*  Leggings of Torment  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellid_1` = 18014 WHERE entry=22342;

/*  Handguards of Savagery  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22343;

/*  Totem of Rebirth  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22345;

/*  Fahrad's Reloading Repeater  */
UPDATE `item_template` SET `dmg_min1` = 85.0, `dmg_max1` = 128.0, `DisenchantID` = 49 WHERE entry=22347;

/*  Doomulus Prime  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22348;

/*  The Thunderwood Poker  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22377;

/*  Ravenholdt Slicer  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22378;

/*  Shivsprocket's Shiv  */
UPDATE `item_template` SET `dmg_min1` = 42.05, `dmg_max1` = 82.05, `DisenchantID` = 49 WHERE entry=22379;

/*  Simone's Cultivating Hammer  */
UPDATE `item_template` SET `dmg_min1` = 50.66, `dmg_max1` = 97.66, `DisenchantID` = 49 WHERE entry=22380;

/*  Staff of Metanoia  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22394;

/*  Idol of Rejuvenation  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22398;

/*  Libram of Hope  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22401;

/*  Diana's Pearl Necklace  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22403;

/*  Willey's Back Scratcher  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22404;

/*  Mantle of the Scarlet Crusade  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22405;

/*  Redemption  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22406;

/*  Helm of the New Moon  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22407;

/*  Ritssyn's Wand of Bad Mojo  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22408;

/*  Tunic of the Crescent Moon  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22409;

/*  Gauntlets of Deftness  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22410;

/*  Helm of the Executioner  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22411;

/*  Thuzadin Mantle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22412;

/*  Don Mauricio's Band of Domination  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22433;

/*  Cryptstalker Tunic  */
UPDATE `item_template` SET `stat_value1` = 45, `spellid_4` = 0, `spelltrigger_4` = 0 WHERE entry=22436;

/*  Cryptstalker Legguards  */
UPDATE `item_template` SET `stat_value1` = 42, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=22437;

/*  Cryptstalker Headpiece  */
UPDATE `item_template` SET `stat_value1` = 31, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=22438;

/*  Cryptstalker Spaulders  */
UPDATE `item_template` SET `stat_value1` = 29, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=22439;

/*  Cryptstalker Boots  */
UPDATE `item_template` SET `stat_value1` = 33, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=22440;

/*  Cryptstalker Handguards  */
UPDATE `item_template` SET `stat_value1` = 24, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=22441;

/*  Cryptstalker Girdle  */
UPDATE `item_template` SET `stat_value1` = 23, `spellid_4` = 0, `spelltrigger_4` = 0 WHERE entry=22442;

/*  Cryptstalker Wristguards  */
UPDATE `item_template` SET `stat_value1` = 26, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=22443;

/*  Boots of Ferocity  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22472;

/*  Bonescythe Waistguard  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=22482;

/*  Bonescythe Bracers  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=22483;

/*  Dreamwalker Headpiece  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=22490;

/*  Atiesh, Greatstaff of the Guardian  */
UPDATE `item_template` SET `spellid_5` = 0, `spelltrigger_5` = 0 WHERE entry=22589;

/*  Atiesh, Greatstaff of the Guardian  */
UPDATE `item_template` SET `spellid_5` = 0, `spelltrigger_5` = 0 WHERE entry=22630;

/*  Atiesh, Greatstaff of the Guardian  */
UPDATE `item_template` SET `spellid_4` = 0, `spelltrigger_4` = 0 WHERE entry=22631;

/*  Atiesh, Greatstaff of the Guardian  */
UPDATE `item_template` SET `dmg_min1` = 130.0, `dmg_max1` = 243.0, `spellid_3` = 28154, `spellid_5` = 0, `spelltrigger_5` = 0 WHERE entry=22632;

/*  The Purifier  */
UPDATE `item_template` SET `dmg_min1` = 71.0, `dmg_max1` = 132.0 WHERE entry=22656;

/*  Bracers of Hope  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=22667;

/*  Bracers of Subterfuge  */
UPDATE `item_template` SET `spelltrigger_1` = 0, `spelltrigger_2` = 0 WHERE entry=22668;

/*  Outrider's Mail Leggings  */
UPDATE `item_template` SET `stat_type4` = 0, `stat_value4` = 0, `spellid_1` = 7597, `spellid_2` = 18384 WHERE entry=22676;

/*  Band of Resolution  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=22680;

/*  Verimonde's Last Resort  */
UPDATE `item_template` SET `dmg_min1` = 39.48, `dmg_max1` = 76.48 WHERE entry=22688;

/*  Glacial Leggings  */
UPDATE `item_template` SET `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0 WHERE entry=22700;

/*  Ramaladni's Icy Grasp  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=22707;

/*  Zulian Scepter of Rites  */
UPDATE `item_template` SET `dmg_min1` = 71.9, `dmg_max1` = 142.9 WHERE entry=22713;

/*  Band of Servitude  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=22721;

/*  Seal of the Gurubashi Berserker  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=22722;

/*  Outrider's Lizardhide Pants  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=22741;

/*  Sentinel's Lizardhide Pants  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=22750;

/*  Might of Menethil  */
UPDATE `item_template` SET `spellid_1` = 7598, `spelltrigger_1` = 1, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=22798;

/*  Brimstone Staff  */
UPDATE `item_template` SET `dmg_min1` = 140.0, `dmg_max1` = 250.0 WHERE entry=22800;

/*  Spire of Twilight  */
UPDATE `item_template` SET `dmg_min1` = 140.0, `dmg_max1` = 250.0 WHERE entry=22801;

/*  Kingsfall  */
UPDATE `item_template` SET `spellid_1` = 7597, `spellid_2` = 15464, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=22802;

/*  Midnight Haze  */
UPDATE `item_template` SET `dmg_min1` = 51.0, `dmg_max1` = 97.0, `spelltrigger_2` = 0 WHERE entry=22803;

/*  Widow's Remorse  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=22806;

/*  Wraith Blade  */
UPDATE `item_template` SET `dmg_min1` = 38.0, `dmg_max1` = 109.0 WHERE entry=22807;

/*  Toxin Injector  */
UPDATE `item_template` SET `dmg_min1` = 68.0, `dmg_max1` = 128.0, `spelltrigger_2` = 0 WHERE entry=22810;

/*  Soulstring  */
UPDATE `item_template` SET `dmg_min1` = 103.0, `dmg_max1` = 192.0 WHERE entry=22811;

/*  Nerubian Slavemaker  */
UPDATE `item_template` SET `dmg_min1` = 128.0, `dmg_max1` = 238.0 WHERE entry=22812;

/*  Claymore of Unholy Might  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=22813;

/*  The Plague Bearer  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=22818;

/*  Blood Guard's Chain Greaves  */
UPDATE `item_template` SET `stat_value2` = 20, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=22843;

/*  Blood Guard's Mail Greaves  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=22857;

/*  Blood Guard's Chain Vices  */
UPDATE `item_template` SET `stat_value2` = 18, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=22862;

/*  Legionnaire's Chain Hauberk  */
UPDATE `item_template` SET `stat_value1` = 16, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=22874;

/*  Legionnaire's Chain Legguards  */
UPDATE `item_template` SET `stat_value1` = 16, `spellid_2` = 0, `spelltrigger_2` = 0, `spelltrigger_3` = 0 WHERE entry=22875;

/*  Legionnaire's Mail Hauberk  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=22876;

/*  Legionnaire's Satin Tunic  */
UPDATE `item_template` SET `spellid_2` = 21626 WHERE entry=22885;

/*  Legionnaire's Mail Legguards  */
UPDATE `item_template` SET `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0 WHERE entry=22887;

/*  Gem of Nerubis  */
UPDATE `item_template` SET `spelltrigger_3` = 0 WHERE entry=22937;

/*  The Widow's Embrace  */
UPDATE `item_template` SET `dmg_min1` = 42.53, `dmg_max1` = 115.53, `spelltrigger_2` = 0 WHERE entry=22942;

/*  Kiss of the Spider  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 7597, `spellid_2` = 15464 WHERE entry=22954;

/*  Band of Reanimation  */
UPDATE `item_template` SET `stat_value1` = 34, `spellid_1` = 0, `spelltrigger_1` = 0, `spelltrigger_2` = 0 WHERE entry=22961;

/*  Gluth's Missing Collar  */
UPDATE `item_template` SET `spelltrigger_3` = 0 WHERE entry=22981;

/*  The End of Dreams  */
UPDATE `item_template` SET `dmg_min1` = 44.0, `dmg_max1` = 120.0, `spellid_2` = 28717 WHERE entry=22988;

/*  Wand of the Whispering Dead  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=23009;

/*  Signet of the Fallen Defender  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=23018;

/*  Sadist's Collar  */
UPDATE `item_template` SET `spelltrigger_3` = 0 WHERE entry=23023;

/*  Warmth of Forgiveness  */
UPDATE `item_template` SET `spelltrigger_3` = 0 WHERE entry=23027;

/*  Noth's Frigid Heart  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `spelltrigger_3` = 0 WHERE entry=23029;

/*  Glacial Headdress  */
UPDATE `item_template` SET `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0 WHERE entry=23032;

/*  Preceptor's Hat  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `spelltrigger_3` = 0 WHERE entry=23035;

/*  The Eye of Nerub  */
UPDATE `item_template` SET `stat_value1` = 45, `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 7569, `spellid_2` = 22188, `spellid_3` = 7581, `spellid_4` = 0, `spelltrigger_4` = 0 WHERE entry=23039;

/*  Glyph of Deflection  */
UPDATE `item_template` SET `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0, `spellcategorycooldown_3` = -1, `spellcategory_3` = 0 WHERE entry=23040;

/*  Slayer's Crest  */
UPDATE `item_template` SET `spelltrigger_3` = 0 WHERE entry=23041;

/*  Loatheb's Reflection  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `spellcooldown_3` = 0 WHERE entry=23042;

/*  The Restrained Essence of Sapphiron  */
UPDATE `item_template` SET `spellcooldown_3` = 0 WHERE entry=23046;

/*  Eye of the Dead  */
UPDATE `item_template` SET `spellcategorycooldown_2` = -1, `spellcategory_2` = 0, `spelltrigger_3` = 0 WHERE entry=23047;

/*  Sapphiron's Right Eye  */
UPDATE `item_template` SET `spelltrigger_3` = 0 WHERE entry=23048;

/*  Stormrage's Talisman of Seething  */
UPDATE `item_template` SET `spelltrigger_3` = 0 WHERE entry=23053;

/*  Gressil, Dawn of Ruin  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=23054;

/*  Hammer of the Twisting Nether  */
UPDATE `item_template` SET `dmg_min1` = 36.0, `dmg_max1` = 120.0 WHERE entry=23056;

/*  Gem of Trapped Innocents  */
UPDATE `item_template` SET `spelltrigger_3` = 0 WHERE entry=23057;

/*  Life Channeling Necklace  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 18043, `spelltrigger_1` = 1, `spellid_2` = 18379, `spelltrigger_2` = 1 WHERE entry=23058;

/*  Bonescythe Ring  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=23060;

/*  Ring of Faith  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=23061;

/*  Plagueheart Ring  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=23063;

/*  Ring of the Cryptstalker  */
UPDATE `item_template` SET `stat_value1` = 30, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=23067;

/*  Legplates of Carnage  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `spelltrigger_3` = 0 WHERE entry=23068;

/*  Necro-Knight's Garb  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=23069;

/*  Fists of the Unrelenting  */
UPDATE `item_template` SET `DisenchantID` = 0, `spellid_1` = 7219 WHERE entry=23072;

/*  Gauntlets of Undead Slaying  */
UPDATE `item_template` SET `DisenchantID` = 49, `spelltrigger_2` = 0, `spelltrigger_3` = 0 WHERE entry=23078;

/*  Handwraps of Undead Slaying  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=23081;

/*  Handguards of Undead Slaying  */
UPDATE `item_template` SET `DisenchantID` = 49, `spelltrigger_2` = 0 WHERE entry=23082;

/*  Gloves of Undead Cleansing  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=23084;

/*  Robe of Undead Cleansing  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=23085;

/*  Breastplate of Undead Slaying  */
UPDATE `item_template` SET `DisenchantID` = 49, `spelltrigger_2` = 0, `spelltrigger_3` = 0 WHERE entry=23087;

/*  Chestguard of Undead Slaying  */
UPDATE `item_template` SET `DisenchantID` = 49, `spelltrigger_2` = 0 WHERE entry=23088;

/*  Tunic of Undead Slaying  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=23089;

/*  Bracers of Undead Slaying  */
UPDATE `item_template` SET `DisenchantID` = 49, `spelltrigger_2` = 0, `spelltrigger_3` = 0 WHERE entry=23090;

/*  Bracers of Undead Cleansing  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=23091;

/*  Wristguards of Undead Slaying  */
UPDATE `item_template` SET `DisenchantID` = 49, `spelltrigger_2` = 0 WHERE entry=23092;

/*  Wristwraps of Undead Slaying  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=23093;

/*  Staff of Balzaphon  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=23124;

/*  Chains of the Lich  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=23125;

/*  Waistband of Balzaphon  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellid_1` = 9307 WHERE entry=23126;

/*  Cloak of Revanchion  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=23127;

/*  The Shadow's Grasp  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellid_1` = 9327 WHERE entry=23128;

/*  Bracers of Mending  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=23129;

/*  Lord Blackwood's Blade  */
UPDATE `item_template` SET `DisenchantID` = 49, `spelltrigger_1` = 0 WHERE entry=23132;

/*  Lord Blackwood's Buckler  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=23139;

/*  Blackwood's Thigh  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=23156;

/*  Lady Falther'ess' Finger  */
UPDATE `item_template` SET `spellid_1` = 7709 WHERE entry=23177;

/*  Tabard of the Scarlet Crusade  */
UPDATE `item_template` SET `Quality` = 1 WHERE entry=23192;

/*  Idol of the Moon  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=23197;

/*  Idol of Brutality  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=23198;

/*  Libram of Divinity  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=23201;

/*  Libram of Fervor  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellid_1` = 28852 WHERE entry=23203;

/*  Crystal Webbed Robe  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=23220;

/*  Ring of the Eternal Flame  */
UPDATE `item_template` SET `spellid_1` = 17872 WHERE entry=23237;

/*  Stygian Buckler  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `spelltrigger_3` = 0 WHERE entry=23238;

/*  Champion's Chain Helm  */
UPDATE `item_template` SET `stat_value1` = 18, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=23251;

/*  Champion's Chain Shoulders  */
UPDATE `item_template` SET `stat_value1` = 18, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=23252;

/*  Champion's Dragonhide Headguard  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=23253;

/*  Champion's Mail Headguard  */
UPDATE `item_template` SET `stat_type4` = 0, `stat_value4` = 0, `spellid_1` = 7597, `spellid_2` = 18384 WHERE entry=23259;

/*  Knight-Lieutenant's Chain Greaves  */
UPDATE `item_template` SET `stat_value2` = 20, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=23278;

/*  Knight-Lieutenant's Chain Vices  */
UPDATE `item_template` SET `stat_value2` = 18, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=23279;

/*  Knight-Captain's Chain Hauberk  */
UPDATE `item_template` SET `stat_value1` = 16, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=23292;

/*  Knight-Captain's Chain Legguards  */
UPDATE `item_template` SET `stat_value1` = 16, `spellid_2` = 0, `spelltrigger_2` = 0, `spelltrigger_3` = 0 WHERE entry=23293;

/*  Knight-Captain's Satin Tunic  */
UPDATE `item_template` SET `spellid_2` = 21626 WHERE entry=23303;

/*  Lieutenant Commander's Chain Helm  */
UPDATE `item_template` SET `stat_value1` = 18, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=23306;

/*  Lieutenant Commander's Chain Shoulders  */
UPDATE `item_template` SET `stat_value1` = 18, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=23307;

/*  Lieutenant Commander's Dragonhide Headguard  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=23308;

/*  Grand Marshal's Mageblade  */
UPDATE `item_template` SET `dmg_min1` = 59.0, `dmg_max1` = 107.0 WHERE entry=23451;

/*  Grand Marshal's Warhammer  */
UPDATE `item_template` SET `dmg_min1` = 85.8, `dmg_max1` = 154.8 WHERE entry=23454;

/*  High Warlord's Battle Mace  */
UPDATE `item_template` SET `dmg_min1` = 85.8, `dmg_max1` = 154.8 WHERE entry=23464;

/*  High Warlord's Spellblade  */
UPDATE `item_template` SET `dmg_min1` = 59.0, `dmg_max1` = 107.0 WHERE entry=23466;

/*  Larvae of the Great Worm  */
UPDATE `item_template` SET `dmg_min1` = 103.0, `dmg_max1` = 192.0 WHERE entry=23557;

/*  The Burrower's Shell  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=23558;

/*  Jom Gabbar  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=23570;

/*  The Hungering Cold  */
UPDATE `item_template` SET `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 15763, `spelltrigger_2` = 0 WHERE entry=23577;

/*  Leggings of Elemental Fury  */
UPDATE `item_template` SET `spelltrigger_3` = 0 WHERE entry=23665;

/*  Tabard of Flame  */
UPDATE `item_template` SET `Quality` = 1 WHERE entry=23705;

/*  Tabard of Frost  */
UPDATE `item_template` SET `Quality` = 1 WHERE entry=23709;

/*  Perpetual Purple Firework  */
UPDATE `item_template` SET `Quality` = 1, `spellid_1` = 30161, `spellcharges_1` = 0, `spellcooldown_1` = 600000 WHERE entry=23714;

/*  Carved Ogre Idol  */
UPDATE `item_template` SET `Quality` = 1, `spellid_1` = 30167, `spellcharges_1` = 0, `spellcooldown_1` = 3600000 WHERE entry=23716;

/*  Bland Dagger  */
UPDATE `item_template` SET `dmg_min1` = 82.0, `dmg_max1` = 82.0 WHERE entry=24071;

/*  QATest +1000 Spell Dmg Ring  */
UPDATE `item_template` SET `spellid_1` = 31750, `spelltrigger_1` = 1 WHERE entry=24358;


/* =========== NON-EQUIPMENT ITEMS ================ */

/*  Horn of the Black Wolf  */
UPDATE item_template SET Quality = 3 WHERE entry=1041;

/*  Horn of the Winter Wolf  */
UPDATE item_template SET Quality = 3 WHERE entry=1133;

/*  Horn of the Gray Wolf  */
UPDATE item_template SET Quality = 3 WHERE entry=1134;

/*  Palomino  */
UPDATE item_template SET Quality = 3 WHERE entry=2413;

/*  White Stallion  */
UPDATE item_template SET Quality = 3 WHERE entry=2415;

/*  Hot Spices  */
UPDATE item_template SET Quality = 1 WHERE entry=2692;

/*  Dust of Decay  */
UPDATE item_template SET Quality = 1 WHERE entry=2928;

/*  Essence of Pain  */
UPDATE item_template SET Quality = 1 WHERE entry=2930;

/*  Maiden's Anguish  */
UPDATE item_template SET Quality = 1 WHERE entry=2931;

/*  Dog Whistle  */
UPDATE item_template SET Quality = 2 WHERE entry=3456;

/*  Belamoore's Research Journal  */
UPDATE item_template SET Quality = 1 WHERE entry=3711;

/*  Soothing Spices  */
UPDATE item_template SET Quality = 1 WHERE entry=3713;

/*  Crippling Poison II  */
UPDATE item_template SET Quality = 1 WHERE entry=3776;

/*  Mechanical Dragonling  */
UPDATE item_template SET Quality = 1 WHERE entry=4396;

/*  Gnomish Cloaking Device  */
UPDATE item_template SET Quality = 1 WHERE entry=4397;

/*  Accurate Scope  */
UPDATE item_template SET Quality = 1 WHERE entry=4407;

/*  Flint and Tinder  */
UPDATE item_template SET Quality = 1 WHERE entry=4471;

/*  Long Tail Feather  */
UPDATE item_template SET Quality = 1 WHERE entry=5116;

/*  Flash Powder  */
UPDATE item_template SET Quality = 1 WHERE entry=5140;

/*  Deathweed  */
UPDATE item_template SET Quality = 1 WHERE entry=5173;

/*  Horn of the Red Wolf  */
UPDATE item_template SET Quality = 4 WHERE entry=5663;

/*  Harness: Black Ram  */
UPDATE item_template SET Quality = 3 WHERE entry=5874;

/*  Harness: Blue Ram  */
UPDATE item_template SET Quality = 3 WHERE entry=5875;

/*  Snakeskin Bag  */
UPDATE item_template SET Quality = 1 WHERE entry=6446;

/*  Mind-numbing Poison II  */
UPDATE item_template SET Quality = 1 WHERE entry=6951;

/*  Shadowcat Hide  */
UPDATE item_template SET Quality = 1 WHERE entry=7428;

/*  Gni'kiv Medallion  */
UPDATE item_template SET Quality = 1 WHERE entry=7740;

/*  The Shaft of Tsol  */
UPDATE item_template SET Quality = 1 WHERE entry=7741;

/*  Wicked Claw  */
UPDATE item_template SET Quality = 1 WHERE entry=8146;

/*  Wildvine  */
UPDATE item_template SET Quality = 1 WHERE entry=8153;

/*  Jet Black Feather  */
UPDATE item_template SET Quality = 1 WHERE entry=8168;

/*  Thick Wolfhide  */
UPDATE item_template SET Quality = 1 WHERE entry=8368;

/*  Large Ruffled Feather  */
UPDATE item_template SET Quality = 0 WHERE entry=8426;

/*  Parrot Cage (Hyacinth Macaw)  */
UPDATE item_template SET Quality = 1 WHERE entry=8494;

/*  Horn of the Skeletal Mount  */
UPDATE item_template SET Quality = 3 WHERE entry=8583;

/*  Old Whistle of the Ivory Raptor  */
UPDATE item_template SET Quality = 3 WHERE entry=8589;

/*  Old Whistle of the Obsidian Raptor  */
UPDATE item_template SET Quality = 3 WHERE entry=8590;

/*  Reins of the Spotted Nightsaber  */
UPDATE item_template SET Quality = 3 WHERE entry=8628;

/*  Reins of the Bengal Tiger  */
UPDATE item_template SET Quality = 3 WHERE entry=8630;

/*  Reins of the Leopard  */
UPDATE item_template SET Quality = 3 WHERE entry=8633;

/*  Essence of Agony  */
UPDATE item_template SET Quality = 1 WHERE entry=8923;

/*  Dust of Deterioration  */
UPDATE item_template SET Quality = 1 WHERE entry=8924;

/*  Mind-numbing Poison III  */
UPDATE item_template SET Quality = 1 WHERE entry=9186;

/*  Undamaged Hippogryph Feather  */
UPDATE item_template SET Quality = 1 WHERE entry=10450;

/*  Goblin Engineer Membership Card  */
UPDATE item_template SET Quality = 1 WHERE entry=10791;

/*  Crystallized Note  */
UPDATE item_template SET Quality = 1 WHERE entry=10839;

/*  Crystallized Note  */
UPDATE item_template SET Quality = 1 WHERE entry=10840;

/*  Crystal Pylon User's Manual  */
UPDATE item_template SET Quality = 1 WHERE entry=11482;

/*  Deathcharger's Reins  */
UPDATE item_template SET Quality = 3 WHERE entry=13335;

/*  Crystal of Zin-Malor  */
UPDATE item_template SET Quality = 2 WHERE entry=13347;

/*  Recipe: Transmute Water to Air  */
UPDATE item_template SET RequiredReputationRank = 0 WHERE entry=13485;

/*  Zergling Leash  */
UPDATE item_template SET Quality = 1 WHERE entry=13582;

/*  Panda Collar  */
UPDATE item_template SET Quality = 1 WHERE entry=13583;

/*  Diablo Stone  */
UPDATE item_template SET Quality = 1 WHERE entry=13584;

/*  Ironfeather  */
UPDATE item_template SET Quality = 1 WHERE entry=15420;

/*  Frostsaber Leather  */
UPDATE item_template SET Quality = 1 WHERE entry=15422;

/*  Chimera Leather  */
UPDATE item_template SET Quality = 1 WHERE entry=15423;

/*  Commander's Steed  */
UPDATE item_template SET Quality = 4 WHERE entry=16339;

/*  Red Moro'gai Gem  */
UPDATE item_template SET Quality = 2 WHERE entry=18153;

/*  Heated Ancient Blade  */
UPDATE item_template SET Quality = 4 WHERE entry=18488;

/*  Treated Ancient Blade  */
UPDATE item_template SET Quality = 4 WHERE entry=18492;

/*  Essence of the Firelord DEPRECATED  */
UPDATE item_template SET Quality = 5 WHERE entry=18566;

/*  Essence of the Firelord  */
UPDATE item_template SET Quality = 5 WHERE entry=19017;

/*  Defiler's Enriched Ration  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 4 WHERE entry=20222;

/*  Defiler's Field Ration  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 4 WHERE entry=20223;

/*  Defiler's Iron Ration  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 4 WHERE entry=20224;

/*  Highlander's Enriched Ration  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 4 WHERE entry=20225;

/*  Highlander's Field Ration  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 4 WHERE entry=20226;

/*  Highlander's Iron Ration  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 4 WHERE entry=20227;

/*  Defiler's Mageweave Bandage  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 4 WHERE entry=20232;

/*  Defiler's Runecloth Bandage  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 4 WHERE entry=20234;

/*  Defiler's Silk Bandage  */
UPDATE item_template SET RequiredReputationFaction = 510, RequiredReputationRank = 4 WHERE entry=20235;

/*  Highlander's Mageweave Bandage  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 4 WHERE entry=20237;

/*  Highlander's Runecloth Bandage  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 4 WHERE entry=20243;

/*  Highlander's Silk Bandage  */
UPDATE item_template SET RequiredReputationFaction = 509, RequiredReputationRank = 4 WHERE entry=20244;

/*  Blue Murloc Egg  */
UPDATE item_template SET Quality = 1 WHERE entry=20371;

/*  Head of the Broodlord Lashlayer  */
UPDATE item_template SET Quality = 4 WHERE entry=20383;

/*  Orange Murloc Egg  */
UPDATE item_template SET Quality = 1 WHERE entry=20651;

/*  Pink Murloc Egg  */
UPDATE item_template SET Quality = 1 WHERE entry=22114;

/*  Staff Head of Atiesh  */
UPDATE item_template SET Quality = 5 WHERE entry=22733;

/*  Base of Atiesh  */
UPDATE item_template SET Quality = 5 WHERE entry=22734;

/*  White Murloc Egg  */
UPDATE item_template SET Quality = 1 WHERE entry=22780;

/*  Captured Flame  */
UPDATE item_template SET Quality = 1 WHERE entry=23083;

/*  White Tiger Cub  */
UPDATE item_template SET Quality = 1 WHERE entry=23712;

/*  Hippogryph Hatchling  */
UPDATE item_template SET Quality = 1 WHERE entry=23713;

/*  Riding Turtle  */
UPDATE item_template SET Quality = 1 WHERE entry=23720;



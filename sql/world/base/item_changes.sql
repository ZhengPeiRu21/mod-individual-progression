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
UPDATE `item_template` SET `SellPrice` = 0, `spellcooldown_2` = -1, `spellcategorycooldown_2` = -1, `spellcooldown_3` = -1, `spellcategorycooldown_3` = -1, `spellcooldown_4` = -1, `spellcategorycooldown_4` = -1, `spellcooldown_5` = -1, `spellcategorycooldown_5` = -1 WHERE entry=17;

/*  Worn Shortsword  */
UPDATE `item_template` SET `BuyPrice` = 35 WHERE entry=25;

/*  Bent Staff  */
UPDATE `item_template` SET `BuyPrice` = 47 WHERE entry=35;

/*  Worn Axe  */
UPDATE `item_template` SET `BuyPrice` = 38 WHERE entry=37;

/*  Recruit's Boots  */
UPDATE `item_template` SET `BuyPrice` = 4 WHERE entry=40;

/*  Squire's Boots  */
UPDATE `item_template` SET `BuyPrice` = 4 WHERE entry=43;

/*  Footpad's Shoes  */
UPDATE `item_template` SET `BuyPrice` = 4 WHERE entry=47;

/*  Dwarven Cloth Britches  */
UPDATE `item_template` SET `BuyPrice` = 52 WHERE entry=79;

/*  Soft Fur-lined Shoes  */
UPDATE `item_template` SET `BuyPrice` = 35 WHERE entry=80;

/*  Dirty Leather Vest  */
UPDATE `item_template` SET `BuyPrice` = 62 WHERE entry=85;

/*  Thug Boots  */
UPDATE `item_template` SET `BuyPrice` = 4 WHERE entry=121;

/*  Brawler's Boots  */
UPDATE `item_template` SET `BuyPrice` = 4 WHERE entry=140;

/*  Tattered Cloth Vest  */
UPDATE `item_template` SET `BuyPrice` = 48 WHERE entry=193;

/*  Tattered Cloth Boots  */
UPDATE `item_template` SET `BuyPrice` = 36 WHERE entry=195;

/*  Thick Cloth Shoes  */
UPDATE `item_template` SET `BuyPrice` = 1714, `SellPrice` = 342 WHERE entry=202;

/*  Dirty Leather Pants  */
UPDATE `item_template` SET `BuyPrice` = 60 WHERE entry=209;

/*  Cured Leather Pants  */
UPDATE `item_template` SET `BuyPrice` = 2805 WHERE entry=237;

/*  Scalemail Boots  */
UPDATE `item_template` SET `BuyPrice` = 2441 WHERE entry=287;

/*  Bracers of the People's Militia  */
UPDATE `item_template` SET `BuyPrice` = 361 WHERE entry=710;

/*  Tattered Cloth Gloves  */
UPDATE `item_template` SET `BuyPrice` = 25 WHERE entry=711;

/*  Rabbit Handler Gloves  */
UPDATE `item_template` SET `BuyPrice` = 23 WHERE entry=719;

/*  Brawler Gloves  */
UPDATE `item_template` SET `BuyPrice` = 5350 WHERE entry=720;

/*  Notched Shortsword  */
UPDATE `item_template` SET `BuyPrice` = 1224, `SellPrice` = 244 WHERE entry=727;

/*  Dragonmaw Shortsword  */
UPDATE `item_template` SET `BuyPrice` = 19211 WHERE entry=753;

/*  Ice-covered Bracers  */
UPDATE `item_template` SET `BuyPrice` = 293 WHERE entry=763;

/*  Flanged Mace  */
UPDATE `item_template` SET `BuyPrice` = 286 WHERE entry=766;

/*  Vendetta  */
UPDATE `item_template` SET `BuyPrice` = 28826 WHERE entry=776;

/*  Gnarled Ash Staff  */
UPDATE `item_template` SET `BuyPrice` = 35347 WHERE entry=791;

/*  Knitted Sandals  */
UPDATE `item_template` SET `BuyPrice` = 207 WHERE entry=792;

/*  Knitted Pants  */
UPDATE `item_template` SET `BuyPrice` = 279, `SellPrice` = 55 WHERE entry=794;

/*  Knitted Tunic  */
UPDATE `item_template` SET `BuyPrice` = 280 WHERE entry=795;

/*  Rough Leather Gloves  */
UPDATE `item_template` SET `BuyPrice` = 176 WHERE entry=797;

/*  Rough Leather Pants  */
UPDATE `item_template` SET `BuyPrice` = 354, `SellPrice` = 70 WHERE entry=798;

/*  Rough Leather Vest  */
UPDATE `item_template` SET `BuyPrice` = 355 WHERE entry=799;

/*  Axe of the Deep Woods  */
UPDATE `item_template` SET `spellppmrate_1` = 0.8 WHERE entry=811;

/*  Small Hand Blade  */
UPDATE `item_template` SET `BuyPrice` = 1527 WHERE entry=816;

/*  Slicer Blade  */
UPDATE `item_template` SET `BuyPrice` = 4738 WHERE entry=820;

/*  Brutish Riverpaw Axe  */
UPDATE `item_template` SET `BuyPrice` = 3661 WHERE entry=826;

/*  Wicked Blackjack  */
UPDATE `item_template` SET `BuyPrice` = 4858 WHERE entry=827;

/*  Lifestone  */
UPDATE `item_template` SET `spellid_1` = 17712, `spellcooldown_1` = 1800000, `spellcategorycooldown_1` = 0, `spellid_3` = 0, `spellcooldown_3` = -1, `spellcategorycooldown_3` = -1 WHERE entry=833;

/*  Heavy Weave Armor  */
UPDATE `item_template` SET `BuyPrice` = 1124, `SellPrice` = 224 WHERE entry=837;

/*  Heavy Weave Pants  */
UPDATE `item_template` SET `BuyPrice` = 1128 WHERE entry=838;

/*  Tanned Leather Gloves  */
UPDATE `item_template` SET `BuyPrice` = 720 WHERE entry=844;

/*  Chainmail Boots  */
UPDATE `item_template` SET `BuyPrice` = 1326 WHERE entry=849;

/*  Quarter Staff  */
UPDATE `item_template` SET `BuyPrice` = 3022 WHERE entry=854;

/*  Knightly Longsword  */
UPDATE `item_template` SET `BuyPrice` = 48580, `spelltrigger_1` = 0 WHERE entry=864;

/*  Monk's Staff  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=866;

/*  Gloves of Holy Might  */
UPDATE `item_template` SET `armor` = 86 WHERE entry=867;

/*  Ardent Custodian  */
UPDATE `item_template` SET `BuyPrice` = 107664, `SellPrice` = 21532 WHERE entry=868;

/*  Flurry Axe  */
UPDATE `item_template` SET `BuyPrice` = 148139, `SellPrice` = 29627, `spellppmrate_1` = 1.8 WHERE entry=871;

/*  Rockslicer  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 10058, `SellPrice` = 2011, `dmg_min1` = 36.0, `dmg_max1` = 55.0, `MaxDurability` = 65, `stat_value1` = 7, `DisenchantID` = 23 WHERE entry=872;

/*  Staff of Jordan  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `spelltrigger_3` = 0, `spelltrigger_4` = 0, `spelltrigger_5` = 0 WHERE entry=873;

/*  Worn Wooden Buckler  */
UPDATE `item_template` SET `Quality` = 0, `armor` = 5, `BuyPrice` = 7, `SellPrice` = 1, `block` = 1, `MaxDurability` = 20 WHERE entry=876;

/*  Black Metal Axe  */
UPDATE `item_template` SET `BuyPrice` = 11504, `SellPrice` = 2300 WHERE entry=885;

/*  Naga Battle Gloves  */
UPDATE `item_template` SET `stat_type1` = 6 WHERE entry=888;

/*  Twisted Chanter's Staff  */
UPDATE `item_template` SET `BuyPrice` = 17588 WHERE entry=890;

/*  Gnoll Casting Gloves  */
UPDATE `item_template` SET `BuyPrice` = 1849, `SellPrice` = 369 WHERE entry=892;

/*  Madwolf Bracers  */
UPDATE `item_template` SET `BuyPrice` = 5112, `spellcooldown_1` = -1 WHERE entry=897;

/*  Venom Web Fang  */
UPDATE `item_template` SET `BuyPrice` = 6241 WHERE entry=899;

/*  Huge Ogre Sword  */
UPDATE `item_template` SET `MaxDurability` = 85 WHERE entry=913;

/*  Large Ogre Chain Armor  */
UPDATE `item_template` SET `BuyPrice` = 13347 WHERE entry=914;

/*  Wicked Spiked Mace  */
UPDATE `item_template` SET `BuyPrice` = 14106 WHERE entry=920;

/*  Dacian Falx  */
UPDATE `item_template` SET `BuyPrice` = 12038 WHERE entry=922;

/*  Longsword  */
UPDATE `item_template` SET `BuyPrice` = 8743 WHERE entry=923;

/*  Maul  */
UPDATE `item_template` SET `BuyPrice` = 10972 WHERE entry=924;

/*  Battle Axe  */
UPDATE `item_template` SET `BuyPrice` = 9784, `SellPrice` = 1956 WHERE entry=926;

/*  Double Axe  */
UPDATE `item_template` SET `BuyPrice` = 6953 WHERE entry=927;

/*  Stalvan's Reaper  */
UPDATE `item_template` SET `BuyPrice` = 53411 WHERE entry=934;

/*  Night Watch Shortsword  */
UPDATE `item_template` SET `BuyPrice` = 8712 WHERE entry=935;

/*  Black Duskwood Staff  */
UPDATE `item_template` SET `BuyPrice` = 72885 WHERE entry=937;

/*  Robes of Insight  */
UPDATE `item_template` SET `armor` = 74 WHERE entry=940;

/*  Freezing Band  */
UPDATE `item_template` SET `spellid_1` = 9308 WHERE entry=942;

/*  Elemental Mage Staff  */
UPDATE `item_template` SET `BuyPrice` = 415003, `SellPrice` = 83000, `spellid_1` = 17873, `spellid_2` = 17897 WHERE entry=944;

/*  Fire Sword of Crippling  */
UPDATE `item_template` SET `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0, `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0, `spellcooldown_4` = 0, `spellcategorycooldown_4` = 0 WHERE entry=997;

/*  Well-used Sword  */
UPDATE `item_template` SET `BuyPrice` = 720, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=1008;

/*  Compact Hammer  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=1009;

/*  Gnarled Short Staff  */
UPDATE `item_template` SET `BuyPrice` = 498, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=1010;

/*  Sharp Axe  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=1011;

/*  Leather Helmet D (Test)  */
UPDATE `item_template` SET `armor` = 13, `MaxDurability` = 25 WHERE entry=1020;

/*  Leather Helmet A (test)  */
UPDATE `item_template` SET `armor` = 13, `MaxDurability` = 25 WHERE entry=1021;

/*  Plate Helmet D2 (test)  */
UPDATE `item_template` SET `armor` = 13, `MaxDurability` = 25, `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0, `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0, `spellcooldown_4` = 0, `spellcategorycooldown_4` = 0 WHERE entry=1024;

/*  Plate Helmet D1 (Test)  */
UPDATE `item_template` SET `armor` = 13, `MaxDurability` = 25 WHERE entry=1025;

/*  Mail Helmet A (Test)  */
UPDATE `item_template` SET `armor` = 13, `MaxDurability` = 25, `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0, `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0, `spellcooldown_4` = 0, `spellcategorycooldown_4` = 0 WHERE entry=1027;

/*  Defias Renegade Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=1076;

/*  Rod of the Sleepwalker  */
UPDATE `item_template` SET `BuyPrice` = 29770, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=1155;

/*  Lavishly Jeweled Ring  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_value1` = 2, `stat_type2` = 5, `stat_value2` = 6 WHERE entry=1156;

/*  Solid Metal Club  */
UPDATE `item_template` SET `BuyPrice` = 731 WHERE entry=1158;

/*  Militia Shortsword  */
UPDATE `item_template` SET `BuyPrice` = 128 WHERE entry=1161;

/*  Pirates Patch (Test)  */
UPDATE `item_template` SET `armor` = 15, `MaxDurability` = 25 WHERE entry=1162;

/*  Dented Buckler  */
UPDATE `item_template` SET `armor` = 55, `block` = 1, `MaxDurability` = 35, `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0, `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0, `spellcooldown_4` = 0, `spellcategorycooldown_4` = 0 WHERE entry=1166;

/*  Small Targe  */
UPDATE `item_template` SET `armor` = 161, `BuyPrice` = 483, `block` = 3, `MaxDurability` = 45, `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0, `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0, `spellcooldown_4` = 0, `spellcategorycooldown_4` = 0 WHERE entry=1167;

/*  Skullflame Shield  */
UPDATE `item_template` SET `armor` = 2256, `block` = 40 WHERE entry=1168;

/*  Blackskull Shield  */
UPDATE `item_template` SET `armor` = 1895, `block` = 30 WHERE entry=1169;

/*  Overseer's Ring  */
UPDATE `item_template` SET `DisenchantID` = 0, `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0, `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0, `spellcooldown_4` = 0, `spellcategorycooldown_4` = 0 WHERE entry=1189;

/*  Overseer's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 3150, `SellPrice` = 630 WHERE entry=1190;

/*  Banded Buckler  */
UPDATE `item_template` SET `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0, `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0, `spellcooldown_4` = 0, `spellcategorycooldown_4` = 0 WHERE entry=1193;

/*  Giant Mace  */
UPDATE `item_template` SET `BuyPrice` = 2666 WHERE entry=1197;

/*  Claymore  */
UPDATE `item_template` SET `BuyPrice` = 2676 WHERE entry=1198;

/*  The Green Tower  */
UPDATE `item_template` SET `armor` = 1308, `block` = 25 WHERE entry=1204;

/*  Gnoll War Harness  */
UPDATE `item_template` SET `BuyPrice` = 1738 WHERE entry=1211;

/*  Gnoll Kindred Bracers  */
UPDATE `item_template` SET `BuyPrice` = 437 WHERE entry=1213;

/*  Gnoll Punisher  */
UPDATE `item_template` SET `BuyPrice` = 4651 WHERE entry=1214;

/*  Bind On Use Test Item  */
UPDATE `item_template` SET `spellid_1` = 133, `spellcooldown_1` = 30000, `spellcategorycooldown_1` = 30000, `spellcategory_1` = 24 WHERE entry=1258;

/*  JYoo test item  */
UPDATE `item_template` SET `dmg_min1` = 1.0, `dmg_max1` = 1.0, `dmg_min2` = 3000.0, `dmg_max2` = 3000.0, `MaxDurability` = 20, `RandomProperty` = 2191 WHERE entry=1259;

/*  Brain Hacker  */
UPDATE `item_template` SET `BuyPrice` = 395323 WHERE entry=1263;

/*  Scorpion Sting  */
UPDATE `item_template` SET `BuyPrice` = 58874, `SellPrice` = 11774 WHERE entry=1265;

/*  Forest Chain  */
UPDATE `item_template` SET `BuyPrice` = 8282 WHERE entry=1273;

/*  Deputy Chain Coat  */
UPDATE `item_template` SET `BuyPrice` = 8342 WHERE entry=1275;

/*  Cloaked Hood  */
UPDATE `item_template` SET `BuyPrice` = 18481, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=1280;

/*  Sparkmetal Coif  */
UPDATE `item_template` SET `stat_type2` = 6, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=1282;

/*  Blackrock Mace  */
UPDATE `item_template` SET `BuyPrice` = 8408 WHERE entry=1296;

/*  Robes of the Shadowcaster  */
UPDATE `item_template` SET `BuyPrice` = 10193 WHERE entry=1297;

/*  Lesser Belt of the Spire  */
UPDATE `item_template` SET `BuyPrice` = 1953 WHERE entry=1299;

/*  Lesser Staff of the Spire  */
UPDATE `item_template` SET `BuyPrice` = 9270 WHERE entry=1300;

/*  Riding Gloves  */
UPDATE `item_template` SET `BuyPrice` = 1398, `stat_type1` = 3, `stat_type2` = 5, `stat_value2` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=1304;

/*  Wolfmane Wristguards  */
UPDATE `item_template` SET `BuyPrice` = 1761 WHERE entry=1306;

/*  Smith's Trousers  */
UPDATE `item_template` SET `BuyPrice` = 3576 WHERE entry=1310;

/*  Ring of Iron Will  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=1319;

/*  Fingerbone Bracers  */
UPDATE `item_template` SET `BuyPrice` = 3843 WHERE entry=1351;

/*  Buckskin Cape  */
UPDATE `item_template` SET `BuyPrice` = 1259, `SellPrice` = 251 WHERE entry=1355;

/*  Lion-stamped Gloves  */
UPDATE `item_template` SET `BuyPrice` = 95 WHERE entry=1359;

/*  Ragged Leather Pants  */
UPDATE `item_template` SET `BuyPrice` = 11 WHERE entry=1366;

/*  Frayed Shoes  */
UPDATE `item_template` SET `BuyPrice` = 16 WHERE entry=1374;

/*  Frayed Cloak  */
UPDATE `item_template` SET `BuyPrice` = 23 WHERE entry=1376;

/*  Frayed Gloves  */
UPDATE `item_template` SET `BuyPrice` = 6 WHERE entry=1377;

/*  Rock Mace  */
UPDATE `item_template` SET `BuyPrice` = 122 WHERE entry=1382;

/*  Stone Tomahawk  */
UPDATE `item_template` SET `BuyPrice` = 126 WHERE entry=1383;

/*  Thistlewood Axe  */
UPDATE `item_template` SET `dmg_min1` = 7.0, `dmg_max1` = 11.0, `MaxDurability` = 35, `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0, `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0, `spellcooldown_4` = 0, `spellcategorycooldown_4` = 0 WHERE entry=1386;

/*  Crooked Staff  */
UPDATE `item_template` SET `BuyPrice` = 71 WHERE entry=1388;

/*  Kobold Mining Mallet  */
UPDATE `item_template` SET `BuyPrice` = 291 WHERE entry=1389;

/*  Foamspittle Staff  */
UPDATE `item_template` SET `BuyPrice` = 5923 WHERE entry=1405;

/*  Pearl-encrusted Spear  */
UPDATE `item_template` SET `BuyPrice` = 10398 WHERE entry=1406;

/*  Feeble Sword  */
UPDATE `item_template` SET `BuyPrice` = 276 WHERE entry=1413;

/*  Worn Leather Pants  */
UPDATE `item_template` SET `BuyPrice` = 94, `SellPrice` = 18 WHERE entry=1423;

/*  Patchwork Shoes  */
UPDATE `item_template` SET `BuyPrice` = 147 WHERE entry=1427;

/*  Patchwork Cloak  */
UPDATE `item_template` SET `BuyPrice` = 38 WHERE entry=1429;

/*  Patchwork Gloves  */
UPDATE `item_template` SET `BuyPrice` = 38 WHERE entry=1430;

/*  Patchwork Pants  */
UPDATE `item_template` SET `BuyPrice` = 101 WHERE entry=1431;

/*  Patchwork Armor  */
UPDATE `item_template` SET `BuyPrice` = 72 WHERE entry=1433;

/*  Frontier Britches  */
UPDATE `item_template` SET `BuyPrice` = 2290 WHERE entry=1436;

/*  Warrior's Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=1438;

/*  Gnoll Skull Basher  */
UPDATE `item_template` SET `BuyPrice` = 6151 WHERE entry=1440;

/*  Jeweled Amulet of Cainwyn  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=1443;

/*  Blackrock Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 2919, `SellPrice` = 583 WHERE entry=1445;

/*  Blackrock Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 2027 WHERE entry=1448;

/*  Minor Channeling Ring  */
UPDATE `item_template` SET `stat_type2` = 6, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=1449;

/*  Ring of the Shadow  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=1462;

/*  Tigerbane  */
UPDATE `item_template` SET `BuyPrice` = 49124, `SellPrice` = 9824 WHERE entry=1465;

/*  Salma's Oven Mitts  */
UPDATE `item_template` SET `BuyPrice` = 238 WHERE entry=1479;

/*  Fist of the People's Militia  */
UPDATE `item_template` SET `BuyPrice` = 4773 WHERE entry=1480;

/*  Grimclaw  */
UPDATE `item_template` SET `BuyPrice` = 16688 WHERE entry=1481;

/*  Witching Stave  */
UPDATE `item_template` SET `BuyPrice` = 14612, `spellid_1` = 9412 WHERE entry=1484;

/*  Tree Bark Jacket  */
UPDATE `item_template` SET `BuyPrice` = 6012 WHERE entry=1486;

/*  Gloomshroud Armor  */
UPDATE `item_template` SET `BuyPrice` = 7767, `stat_type1` = 6, `stat_type2` = 4 WHERE entry=1489;

/*  Ring of Precision  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=1491;

/*  Calico Shoes  */
UPDATE `item_template` SET `BuyPrice` = 294, `SellPrice` = 58 WHERE entry=1495;

/*  Calico Cloak  */
UPDATE `item_template` SET `BuyPrice` = 356 WHERE entry=1497;

/*  Calico Gloves  */
UPDATE `item_template` SET `BuyPrice` = 285 WHERE entry=1498;

/*  Warped Leather Boots  */
UPDATE `item_template` SET `BuyPrice` = 546 WHERE entry=1503;

/*  Warped Leather Gloves  */
UPDATE `item_template` SET `BuyPrice` = 255 WHERE entry=1506;

/*  Commoner's Sword  */
UPDATE `item_template` SET `BuyPrice` = 969, `SellPrice` = 193 WHERE entry=1511;

/*  Old Greatsword  */
UPDATE `item_template` SET `BuyPrice` = 1465 WHERE entry=1513;

/*  Rusty Warhammer  */
UPDATE `item_template` SET `BuyPrice` = 1470 WHERE entry=1514;

/*  Lumbering Ogre Axe  */
UPDATE `item_template` SET `BuyPrice` = 96027 WHERE entry=1521;

/*  Buckler of the Seas  */
UPDATE `item_template` SET `BuyPrice` = 4594, `SellPrice` = 918 WHERE entry=1557;

/*  Bluegill Sandals  */
UPDATE `item_template` SET `BuyPrice` = 2568 WHERE entry=1560;

/*  Harvester's Robe  */
UPDATE `item_template` SET `BuyPrice` = 1343 WHERE entry=1561;

/*  Chromatic Sword  */
UPDATE `item_template` SET `BuyPrice` = 97319, `SellPrice` = 19463 WHERE entry=1604;

/*  Skullcrusher Mace  */
UPDATE `item_template` SET `BuyPrice` = 94703 WHERE entry=1608;

/*  Engineering Gloves  */
UPDATE `item_template` SET `BuyPrice` = 10682, `stat_type1` = 4, `stat_type2` = 5, `stat_value2` = 8, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=1659;

/*  Spellforce Rod  */
UPDATE `item_template` SET `BuyPrice` = 73475 WHERE entry=1664;

/*  Necklace of Calisea  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=1714;

/*  Polished Jazeraint Armor  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_type3` = 4, `stat_value3` = 9 WHERE entry=1715;

/*  Robe of the Magi  */
UPDATE `item_template` SET `BuyPrice` = 25335 WHERE entry=1716;

/*  Double Link Tunic  */
UPDATE `item_template` SET `BuyPrice` = 15540 WHERE entry=1717;

/*  Basilisk Hide Pants  */
UPDATE `item_template` SET `BuyPrice` = 40202, `stat_type2` = 6 WHERE entry=1718;

/*  Tanglewood Staff  */
UPDATE `item_template` SET `spellid_1` = 9411 WHERE entry=1720;

/*  Poison-tipped Bone Spear  */
UPDATE `item_template` SET `BuyPrice` = 60915 WHERE entry=1726;

/*  Teebu's Blazing Longsword  */
UPDATE `item_template` SET `BuyPrice` = 435040, `SellPrice` = 87008 WHERE entry=1728;

/*  Worn Mail Belt  */
UPDATE `item_template` SET `BuyPrice` = 243 WHERE entry=1730;

/*  Worn Cloak  */
UPDATE `item_template` SET `BuyPrice` = 443 WHERE entry=1733;

/*  Worn Mail Gloves  */
UPDATE `item_template` SET `BuyPrice` = 197 WHERE entry=1734;

/*  Laced Mail Gloves  */
UPDATE `item_template` SET `BuyPrice` = 648 WHERE entry=1742;

/*  Laced Mail Pants  */
UPDATE `item_template` SET `BuyPrice` = 1497 WHERE entry=1743;

/*  Laced Mail Shoulderpads  */
UPDATE `item_template` SET `BuyPrice` = 1302 WHERE entry=1744;

/*  Linked Chain Cloak  */
UPDATE `item_template` SET `BuyPrice` = 1982, `SellPrice` = 396 WHERE entry=1749;

/*  Linked Chain Gloves  */
UPDATE `item_template` SET `BuyPrice` = 1491 WHERE entry=1750;

/*  Reinforced Chain Belt  */
UPDATE `item_template` SET `BuyPrice` = 1796 WHERE entry=1754;

/*  Reinforced Chain Bracers  */
UPDATE `item_template` SET `BuyPrice` = 2190 WHERE entry=1756;

/*  Reinforced Chain Cloak  */
UPDATE `item_template` SET `BuyPrice` = 3643, `SellPrice` = 728 WHERE entry=1757;

/*  Reinforced Chain Pants  */
UPDATE `item_template` SET `BuyPrice` = 3661 WHERE entry=1759;

/*  Canvas Gloves  */
UPDATE `item_template` SET `BuyPrice` = 505 WHERE entry=1767;

/*  Canvas Pants  */
UPDATE `item_template` SET `BuyPrice` = 1085 WHERE entry=1768;

/*  Canvas Shoulderpads  */
UPDATE `item_template` SET `BuyPrice` = 816 WHERE entry=1769;

/*  Brocade Shoes  */
UPDATE `item_template` SET `BuyPrice` = 1235 WHERE entry=1772;

/*  Brocade Cloak  */
UPDATE `item_template` SET `BuyPrice` = 1406 WHERE entry=1774;

/*  Cross-stitched Cloak  */
UPDATE `item_template` SET `BuyPrice` = 2709, `SellPrice` = 541 WHERE entry=1782;

/*  Cross-stitched Shoulderpads  */
UPDATE `item_template` SET `BuyPrice` = 2322 WHERE entry=1785;

/*  Patched Leather Belt  */
UPDATE `item_template` SET `BuyPrice` = 510 WHERE entry=1787;

/*  Patched Leather Boots  */
UPDATE `item_template` SET `BuyPrice` = 884, `SellPrice` = 176 WHERE entry=1788;

/*  Patched Leather Bracers  */
UPDATE `item_template` SET `BuyPrice` = 680 WHERE entry=1789;

/*  Patched Leather Gloves  */
UPDATE `item_template` SET `BuyPrice` = 450 WHERE entry=1791;

/*  Patched Leather Pants  */
UPDATE `item_template` SET `BuyPrice` = 1041 WHERE entry=1792;

/*  Patched Leather Jerkin  */
UPDATE `item_template` SET `BuyPrice` = 1387 WHERE entry=1794;

/*  Rawhide Boots  */
UPDATE `item_template` SET `BuyPrice` = 2001 WHERE entry=1796;

/*  Rawhide Cloak  */
UPDATE `item_template` SET `BuyPrice` = 1397, `SellPrice` = 279 WHERE entry=1798;

/*  Rawhide Gloves  */
UPDATE `item_template` SET `BuyPrice` = 1056 WHERE entry=1799;

/*  Rawhide Pants  */
UPDATE `item_template` SET `BuyPrice` = 2397 WHERE entry=1800;

/*  Tough Cloak  */
UPDATE `item_template` SET `BuyPrice` = 2330 WHERE entry=1806;

/*  Tough Leather Gloves  */
UPDATE `item_template` SET `BuyPrice` = 1939, `SellPrice` = 387 WHERE entry=1807;

/*  Blunt Claymore  */
UPDATE `item_template` SET `BuyPrice` = 2255 WHERE entry=1811;

/*  Short-handled Battle Axe  */
UPDATE `item_template` SET `BuyPrice` = 2264, `SellPrice` = 452 WHERE entry=1812;

/*  Chipped Quarterstaff  */
UPDATE `item_template` SET `BuyPrice` = 2614, `SellPrice` = 522 WHERE entry=1813;

/*  Unbalanced Axe  */
UPDATE `item_template` SET `BuyPrice` = 2432 WHERE entry=1816;

/*  Wooden Maul  */
UPDATE `item_template` SET `BuyPrice` = 4818 WHERE entry=1820;

/*  Rock Maul  */
UPDATE `item_template` SET `BuyPrice` = 8828 WHERE entry=1826;

/*  Stone War Axe  */
UPDATE `item_template` SET `BuyPrice` = 8046 WHERE entry=1828;

/*  Lucky Trousers  */
UPDATE `item_template` SET `BuyPrice` = 1811, `stat_type2` = 3, `stat_value2` = 2, `stat_type3` = 6, `stat_value3` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=1832;

/*  Rough Leather Belt  */
UPDATE `item_template` SET `BuyPrice` = 184, `SellPrice` = 36 WHERE entry=1839;

/*  Tanned Leather Belt  */
UPDATE `item_template` SET `BuyPrice` = 725 WHERE entry=1843;

/*  Chainmail Bracers  */
UPDATE `item_template` SET `BuyPrice` = 880 WHERE entry=1846;

/*  Studded Blackjack  */
UPDATE `item_template` SET `BuyPrice` = 742 WHERE entry=1913;

/*  Defias Rapier  */
UPDATE `item_template` SET `BuyPrice` = 3938 WHERE entry=1925;

/*  Defias Mage Staff  */
UPDATE `item_template` SET `BuyPrice` = 4979, `SellPrice` = 995 WHERE entry=1928;

/*  Silk-threaded Trousers  */
UPDATE `item_template` SET `BuyPrice` = 2171, `stat_type1` = 3, `stat_type2` = 6, `stat_value2` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=1929;

/*  Stonemason Cloak  */
UPDATE `item_template` SET `BuyPrice` = 2044, `SellPrice` = 408 WHERE entry=1930;

/*  Goblin Screwdriver  */
UPDATE `item_template` SET `BuyPrice` = 5569, `SellPrice` = 1113 WHERE entry=1936;

/*  Buzz Saw  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 8500, `SellPrice` = 1700, `dmg_min1` = 17.0, `dmg_max1` = 33.0, `MaxDurability` = 60, `stat_value1` = 2, `stat_value2` = 2, `DisenchantID` = 23 WHERE entry=1937;

/*  Goblin Mail Leggings  */
UPDATE `item_template` SET `BuyPrice` = 3566 WHERE entry=1943;

/*  Metalworking Gloves  */
UPDATE `item_template` SET `BuyPrice` = 1296 WHERE entry=1944;

/*  Woodworking Gloves  */
UPDATE `item_template` SET `BuyPrice` = 1337 WHERE entry=1945;

/*  Blackwater Cutlass  */
UPDATE `item_template` SET `BuyPrice` = 6290 WHERE entry=1951;

/*  Petrified Shinbone  */
UPDATE `item_template` SET `BuyPrice` = 4876 WHERE entry=1958;

/*  Mindthrust Bracers  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=1974;

/*  Wolfclaw Gloves  */
UPDATE `item_template` SET `BuyPrice` = 4904, `SellPrice` = 980 WHERE entry=1978;

/*  Wall of the Dead  */
UPDATE `item_template` SET `armor` = 1937, `BuyPrice` = 116369, `SellPrice` = 23273, `block` = 34 WHERE entry=1979;

/*  Underworld Band  */
UPDATE `item_template` SET `spellid_1` = 9414 WHERE entry=1980;

/*  Icemail Jerkin  */
UPDATE `item_template` SET `armor` = 294 WHERE entry=1981;

/*  Chief Brigadier Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 14260 WHERE entry=1988;

/*  Swampchill Fetish  */
UPDATE `item_template` SET `spellid_1` = 9402, `spellid_2` = 9412 WHERE entry=1992;

/*  Pressed Felt Robe  */
UPDATE `item_template` SET `BuyPrice` = 12694, `SellPrice` = 2538 WHERE entry=1997;

/*  Bloodscalp Channeling Staff  */
UPDATE `item_template` SET `spellid_1` = 9359 WHERE entry=1998;

/*  Twisted Sabre  */
UPDATE `item_template` SET `BuyPrice` = 19200 WHERE entry=2011;

/*  Cryptbone Staff  */
UPDATE `item_template` SET `BuyPrice` = 18222 WHERE entry=2013;

/*  Black Metal Greatsword  */
UPDATE `item_template` SET `BuyPrice` = 24346 WHERE entry=2014;

/*  Dusty Chain Armor  */
UPDATE `item_template` SET `armor` = 186, `MaxDurability` = 95 WHERE entry=2016;

/*  Hollowfang Blade  */
UPDATE `item_template` SET `BuyPrice` = 5249, `SellPrice` = 1049 WHERE entry=2020;

/*  Espadon  */
UPDATE `item_template` SET `BuyPrice` = 6078 WHERE entry=2024;

/*  Bearded Axe  */
UPDATE `item_template` SET `BuyPrice` = 5304, `SellPrice` = 1060 WHERE entry=2025;

/*  Scimitar  */
UPDATE `item_template` SET `BuyPrice` = 3815 WHERE entry=2027;

/*  Cleaver  */
UPDATE `item_template` SET `BuyPrice` = 4419, `SellPrice` = 883 WHERE entry=2029;

/*  Gnarled Staff  */
UPDATE `item_template` SET `BuyPrice` = 5544, `SellPrice` = 1108 WHERE entry=2030;

/*  Ambassador's Boots  */
UPDATE `item_template` SET `BuyPrice` = 4836 WHERE entry=2033;

/*  Dusty Mining Gloves  */
UPDATE `item_template` SET `BuyPrice` = 1291 WHERE entry=2036;

/*  Tunneler's Boots  */
UPDATE `item_template` SET `BuyPrice` = 2345 WHERE entry=2037;

/*  Staff of Westfall  */
UPDATE `item_template` SET `BuyPrice` = 18195 WHERE entry=2042;

/*  Ring of Forlorn Spirits  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 2, `stat_type2` = 6, `stat_value2` = 7, `DisenchantID` = 5, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=2043;

/*  Crescent of Forlorn Spirits  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 36787, `SellPrice` = 7357, `dmg_min1` = 20.0, `dmg_max1` = 38.0, `MaxDurability` = 75, `stat_type1` = 6, `stat_value1` = 6, `DisenchantID` = 25 WHERE entry=2044;

/*  Anvilmar Hand Axe  */
UPDATE `item_template` SET `BuyPrice` = 129, `SellPrice` = 25 WHERE entry=2047;

/*  Anvilmar Hammer  */
UPDATE `item_template` SET `BuyPrice` = 129, `SellPrice` = 25 WHERE entry=2048;

/*  Trogg Club  */
UPDATE `item_template` SET `BuyPrice` = 958 WHERE entry=2064;

/*  Skull Hatchet  */
UPDATE `item_template` SET `BuyPrice` = 407 WHERE entry=2066;

/*  Frostbit Staff  */
UPDATE `item_template` SET `BuyPrice` = 931 WHERE entry=2067;

/*  Black Bear Hide Vest  */
UPDATE `item_template` SET `BuyPrice` = 609, `SellPrice` = 121 WHERE entry=2069;

/*  Dwarven Hatchet  */
UPDATE `item_template` SET `BuyPrice` = 3713 WHERE entry=2073;

/*  Solid Shortblade  */
UPDATE `item_template` SET `BuyPrice` = 5271 WHERE entry=2074;

/*  Priest's Mace  */
UPDATE `item_template` SET `BuyPrice` = 1932 WHERE entry=2075;

/*  Magician Staff  */
UPDATE `item_template` SET `BuyPrice` = 25295, `spelltrigger_1` = 0 WHERE entry=2077;

/*  Northern Shortsword  */
UPDATE `item_template` SET `BuyPrice` = 5350 WHERE entry=2078;

/*  Sergeant's Warhammer  */
UPDATE `item_template` SET `BuyPrice` = 4669, `SellPrice` = 933 WHERE entry=2079;

/*  Darksteel Bastard Sword  */
UPDATE `item_template` SET `BuyPrice` = 28547 WHERE entry=2084;

/*  Scrimshaw Dagger  */
UPDATE `item_template` SET `BuyPrice` = 5567 WHERE entry=2089;

/*  Worn Dagger  */
UPDATE `item_template` SET `BuyPrice` = 35 WHERE entry=2092;

/*  Double-barreled Shotgun  */
UPDATE `item_template` SET `BuyPrice` = 15104, `SellPrice` = 3020, `dmg_min1` = 21.0, `dmg_max1` = 40.0 WHERE entry=2098;

/*  Dwarven Hand Cannon  */
UPDATE `item_template` SET `dmg_min1` = 66.0, `dmg_max1` = 124.0 WHERE entry=2099;

/*  Precisely Calibrated Boomstick  */
UPDATE `item_template` SET `BuyPrice` = 122699, `SellPrice` = 24539, `dmg_min1` = 38.0, `dmg_max1` = 45.0 WHERE entry=2100;

/*  Frostmane Chain Vest  */
UPDATE `item_template` SET `BuyPrice` = 72 WHERE entry=2109;

/*  Light Magesmith Robe  */
UPDATE `item_template` SET `BuyPrice` = 31 WHERE entry=2110;

/*  Snowy Robe  */
UPDATE `item_template` SET `BuyPrice` = 155 WHERE entry=2114;

/*  Thin Cloth Shoes  */
UPDATE `item_template` SET `BuyPrice` = 36 WHERE entry=2117;

/*  Thin Cloth Gloves  */
UPDATE `item_template` SET `BuyPrice` = 24, `SellPrice` = 4 WHERE entry=2119;

/*  Cracked Leather Boots  */
UPDATE `item_template` SET `BuyPrice` = 48 WHERE entry=2123;

/*  Cracked Leather Bracers  */
UPDATE `item_template` SET `BuyPrice` = 32 WHERE entry=2124;

/*  Cracked Leather Gloves  */
UPDATE `item_template` SET `BuyPrice` = 32 WHERE entry=2125;

/*  Cracked Leather Pants  */
UPDATE `item_template` SET `BuyPrice` = 59, `SellPrice` = 11 WHERE entry=2126;

/*  Scratched Claymore  */
UPDATE `item_template` SET `dmg_max1` = 7.0, `MaxDurability` = 30 WHERE entry=2128;

/*  Small Shield  */
UPDATE `item_template` SET `SellPrice` = 15 WHERE entry=2133;

/*  Whittling Knife  */
UPDATE `item_template` SET `BuyPrice` = 124, `SellPrice` = 24 WHERE entry=2137;

/*  Sharpened Letter Opener  */
UPDATE `item_template` SET `BuyPrice` = 192 WHERE entry=2138;

/*  Cuirboulli Vest  */
UPDATE `item_template` SET `BuyPrice` = 5223 WHERE entry=2141;

/*  Cuirboulli Belt  */
UPDATE `item_template` SET `BuyPrice` = 2620 WHERE entry=2142;

/*  Cuirboulli Boots  */
UPDATE `item_template` SET `BuyPrice` = 3944, `SellPrice` = 788 WHERE entry=2143;

/*  Cuirboulli Gloves  */
UPDATE `item_template` SET `BuyPrice` = 2648 WHERE entry=2145;

/*  Polished Scale Belt  */
UPDATE `item_template` SET `BuyPrice` = 2907 WHERE entry=2148;

/*  Polished Scale Boots  */
UPDATE `item_template` SET `BuyPrice` = 4397 WHERE entry=2149;

/*  Polished Scale Vest  */
UPDATE `item_template` SET `BuyPrice` = 5927 WHERE entry=2153;

/*  Padded Boots  */
UPDATE `item_template` SET `BuyPrice` = 3077 WHERE entry=2156;

/*  Gut Ripper  */
UPDATE `item_template` SET `BuyPrice` = 135159, `SellPrice` = 27031 WHERE entry=2164;

/*  Foreman's Leggings  */
UPDATE `item_template` SET `BuyPrice` = 4054, `SellPrice` = 810, `stat_type3` = 6 WHERE entry=2166;

/*  Foreman's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 1695, `stat_type1` = 4, `stat_value1` = 5, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 1 WHERE entry=2167;

/*  Buzzer Blade  */
UPDATE `item_template` SET `Quality` = 1, `BuyPrice` = 4717, `SellPrice` = 943, `dmg_min1` = 10.0, `dmg_max1` = 19.0, `bonding` = 0, `MaxDurability` = 40, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=2169;

/*  Rustic Belt  */
UPDATE `item_template` SET `BuyPrice` = 36 WHERE entry=2172;

/*  Diamond Hammer  */
UPDATE `item_template` SET `BuyPrice` = 16383 WHERE entry=2194;

/*  Brashclaw's Chopper  */
UPDATE `item_template` SET `BuyPrice` = 7463 WHERE entry=2203;

/*  Jambiya  */
UPDATE `item_template` SET `BuyPrice` = 2390 WHERE entry=2207;

/*  Poniard  */
UPDATE `item_template` SET `BuyPrice` = 3650 WHERE entry=2208;

/*  Kris  */
UPDATE `item_template` SET `BuyPrice` = 7115 WHERE entry=2209;

/*  Wooden Shield  */
UPDATE `item_template` SET `BuyPrice` = 405 WHERE entry=2215;

/*  Rectangular Shield  */
UPDATE `item_template` SET `BuyPrice` = 1216 WHERE entry=2217;

/*  Craftsman's Dagger  */
UPDATE `item_template` SET `BuyPrice` = 2505 WHERE entry=2218;

/*  Small Round Shield  */
UPDATE `item_template` SET `BuyPrice` = 2288 WHERE entry=2219;

/*  Targe Shield  */
UPDATE `item_template` SET `BuyPrice` = 4550 WHERE entry=2221;

/*  Sharp Kitchen Knife  */
UPDATE `item_template` SET `BuyPrice` = 916 WHERE entry=2225;

/*  Ogremage Staff  */
UPDATE `item_template` SET `BuyPrice` = 20589, `SellPrice` = 4117 WHERE entry=2226;

/*  Heavy Ogre War Axe  */
UPDATE `item_template` SET `BuyPrice` = 20667 WHERE entry=2227;

/*  Gloves of Brawn  */
UPDATE `item_template` SET `BuyPrice` = 3570 WHERE entry=2230;

/*  Inferno Robe  */
UPDATE `item_template` SET `spellid_1` = 17747 WHERE entry=2231;

/*  Dark Runner Boots  */
UPDATE `item_template` SET `BuyPrice` = 4064, `SellPrice` = 812 WHERE entry=2232;

/*  Nightwalker Armor  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 9, `stat_type2` = 7, `stat_value2` = 4, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=2234;

/*  Brackclaw  */
UPDATE `item_template` SET `BuyPrice` = 6406 WHERE entry=2235;

/*  Patched Pants  */
UPDATE `item_template` SET `BuyPrice` = 377 WHERE entry=2237;

/*  Rugged Cape  */
UPDATE `item_template` SET `BuyPrice` = 758, `SellPrice` = 151 WHERE entry=2240;

/*  Desperado Cape  */
UPDATE `item_template` SET `BuyPrice` = 3078, `SellPrice` = 615 WHERE entry=2241;

/*  Hand of Edward the Odd  */
UPDATE `item_template` SET `BuyPrice` = 352770, `SellPrice` = 70554 WHERE entry=2243;

/*  Krol Blade  */
UPDATE `item_template` SET `BuyPrice` = 259289, `SellPrice` = 51857 WHERE entry=2244;

/*  Helm of Narv  */
UPDATE `item_template` SET `armor` = 309 WHERE entry=2245;

/*  Militia Buckler  */
UPDATE `item_template` SET `BuyPrice` = 457, `spellcooldown_1` = -1 WHERE entry=2249;

/*  Frostmane Staff  */
UPDATE `item_template` SET `BuyPrice` = 944, `SellPrice` = 188 WHERE entry=2257;

/*  Frostmane Shortsword  */
UPDATE `item_template` SET `BuyPrice` = 416 WHERE entry=2258;

/*  Mantle of Thieves  */
UPDATE `item_template` SET `BuyPrice` = 9788, `stat_type2` = 6 WHERE entry=2264;

/*  Stonesplinter Axe  */
UPDATE `item_template` SET `BuyPrice` = 2387 WHERE entry=2265;

/*  Guerrilla Armor  */
UPDATE `item_template` SET `armor` = 144, `MaxDurability` = 75 WHERE entry=2273;

/*  Necromancer Leggings  */
UPDATE `item_template` SET `spellid_1` = 7709 WHERE entry=2277;

/*  Forest Tracker Epaulets  */
UPDATE `item_template` SET `BuyPrice` = 11633 WHERE entry=2278;

/*  Kam's Walking Stick  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 20117, `SellPrice` = 4023, `dmg_min1` = 41.0, `dmg_max1` = 62.0, `bonding` = 2, `MaxDurability` = 80, `stat_type1` = 3, `stat_value1` = 3, `stat_type2` = 5, `stat_value2` = 8, `DisenchantID` = 24, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=2280;

/*  Rodentia Shortsword  */
UPDATE `item_template` SET `BuyPrice` = 696 WHERE entry=2282;

/*  Rat Cloth Belt  */
UPDATE `item_template` SET `BuyPrice` = 700 WHERE entry=2283;

/*  Necrology Robes  */
UPDATE `item_template` SET `BuyPrice` = 6673 WHERE entry=2292;

/*  Burning War Axe  */
UPDATE `item_template` SET `BuyPrice` = 43784, `SellPrice` = 8756 WHERE entry=2299;

/*  Handstitched Leather Pants  */
UPDATE `item_template` SET `BuyPrice` = 358 WHERE entry=2303;

/*  Fine Leather Boots  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 49, `BuyPrice` = 1216, `SellPrice` = 243, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=2307;

/*  Fine Leather Cloak  */
UPDATE `item_template` SET `BuyPrice` = 1338, `SellPrice` = 267 WHERE entry=2308;

/*  Embossed Leather Boots  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=2309;

/*  Embossed Leather Cloak  */
UPDATE `item_template` SET `Quality` = 1, `BuyPrice` = 561, `SellPrice` = 112, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=2310;

/*  White Leather Jerkin  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 62, `BuyPrice` = 751, `SellPrice` = 150, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=2311;

/*  Fine Leather Gloves  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=2312;

/*  Toughened Leather Armor  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 80, `BuyPrice` = 3717, `SellPrice` = 743, `bonding` = 0, `MaxDurability` = 75, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=2314;

/*  Dark Leather Boots  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 51, `BuyPrice` = 1538, `SellPrice` = 307, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=2315;

/*  Dark Leather Cloak  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 17, `BuyPrice` = 2043, `SellPrice` = 408, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 0 WHERE entry=2316;

/*  Battleworn Hammer  */
UPDATE `item_template` SET `BuyPrice` = 45 WHERE entry=2361;

/*  Woven Boots  */
UPDATE `item_template` SET `BuyPrice` = 223 WHERE entry=2367;

/*  Battered Leather Harness  */
UPDATE `item_template` SET `BuyPrice` = 377 WHERE entry=2370;

/*  Battered Leather Pants  */
UPDATE `item_template` SET `BuyPrice` = 343 WHERE entry=2372;

/*  Battered Leather Gloves  */
UPDATE `item_template` SET `BuyPrice` = 173 WHERE entry=2375;

/*  Worn Heater Shield  */
UPDATE `item_template` SET `BuyPrice` = 447 WHERE entry=2376;

/*  Round Buckler  */
UPDATE `item_template` SET `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0, `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0, `spellcooldown_4` = 0, `spellcategorycooldown_4` = 0 WHERE entry=2377;

/*  Tarnished Chain Vest  */
UPDATE `item_template` SET `BuyPrice` = 75 WHERE entry=2379;

/*  Tarnished Chain Belt  */
UPDATE `item_template` SET `BuyPrice` = 37 WHERE entry=2380;

/*  Tarnished Chain Leggings  */
UPDATE `item_template` SET `BuyPrice` = 75 WHERE entry=2381;

/*  Tarnished Chain Boots  */
UPDATE `item_template` SET `BuyPrice` = 57 WHERE entry=2383;

/*  Tarnished Chain Bracers  */
UPDATE `item_template` SET `BuyPrice` = 37 WHERE entry=2384;

/*  Tarnished Chain Gloves  */
UPDATE `item_template` SET `BuyPrice` = 37 WHERE entry=2385;

/*  Rusted Chain Vest  */
UPDATE `item_template` SET `BuyPrice` = 77 WHERE entry=2386;

/*  Rusted Chain Belt  */
UPDATE `item_template` SET `BuyPrice` = 38 WHERE entry=2387;

/*  Rusted Chain Leggings  */
UPDATE `item_template` SET `BuyPrice` = 77 WHERE entry=2388;

/*  Rusted Chain Bracers  */
UPDATE `item_template` SET `BuyPrice` = 38 WHERE entry=2390;

/*  Rusted Chain Gloves  */
UPDATE `item_template` SET `BuyPrice` = 38 WHERE entry=2391;

/*  Light Mail Belt  */
UPDATE `item_template` SET `BuyPrice` = 206 WHERE entry=2393;

/*  Light Mail Boots  */
UPDATE `item_template` SET `BuyPrice` = 322 WHERE entry=2395;

/*  Light Mail Gloves  */
UPDATE `item_template` SET `BuyPrice` = 215 WHERE entry=2397;

/*  Light Chain Belt  */
UPDATE `item_template` SET `BuyPrice` = 217 WHERE entry=2399;

/*  Light Chain Boots  */
UPDATE `item_template` SET `BuyPrice` = 330 WHERE entry=2401;

/*  Light Chain Bracers  */
UPDATE `item_template` SET `BuyPrice` = 219, `SellPrice` = 43 WHERE entry=2402;

/*  Light Chain Gloves  */
UPDATE `item_template` SET `BuyPrice` = 220 WHERE entry=2403;

/*  Augmented Chain Leggings  */
UPDATE `item_template` SET `BuyPrice` = 15731 WHERE entry=2418;

/*  Augmented Chain Belt  */
UPDATE `item_template` SET `BuyPrice` = 7894, `SellPrice` = 1578 WHERE entry=2419;

/*  Augmented Chain Boots  */
UPDATE `item_template` SET `BuyPrice` = 11937 WHERE entry=2420;

/*  Brigandine Boots  */
UPDATE `item_template` SET `BuyPrice` = 32568 WHERE entry=2426;

/*  Russet Vest  */
UPDATE `item_template` SET `BuyPrice` = 10138 WHERE entry=2429;

/*  Russet Boots  */
UPDATE `item_template` SET `BuyPrice` = 7690 WHERE entry=2432;

/*  Russet Gloves  */
UPDATE `item_template` SET `BuyPrice` = 5165 WHERE entry=2434;

/*  Embroidered Pants  */
UPDATE `item_template` SET `BuyPrice` = 27890 WHERE entry=2437;

/*  Ringed Buckler  */
UPDATE `item_template` SET `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0, `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0, `spellcooldown_4` = 0, `spellcategorycooldown_4` = 0 WHERE entry=2441;

/*  Reinforced Targe  */
UPDATE `item_template` SET `BuyPrice` = 6564, `SellPrice` = 1312, `block` = 9, `MaxDurability` = 80, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=2442;

/*  Metal Buckler  */
UPDATE `item_template` SET `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0, `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0, `spellcooldown_4` = 0, `spellcategorycooldown_4` = 0 WHERE entry=2443;

/*  Ornate Buckler  */
UPDATE `item_template` SET `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0, `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0, `spellcooldown_4` = 0, `spellcategorycooldown_4` = 0 WHERE entry=2444;

/*  Heavy Pavise  */
UPDATE `item_template` SET `BuyPrice` = 16158 WHERE entry=2448;

/*  Studded Belt  */
UPDATE `item_template` SET `BuyPrice` = 6871 WHERE entry=2464;

/*  Studded Bracers  */
UPDATE `item_template` SET `BuyPrice` = 6310 WHERE entry=2468;

/*  Studded Gloves  */
UPDATE `item_template` SET `BuyPrice` = 6334, `SellPrice` = 1266 WHERE entry=2469;

/*  Reinforced Leather Belt  */
UPDATE `item_template` SET `BuyPrice` = 17040 WHERE entry=2471;

/*  Reinforced Leather Pants  */
UPDATE `item_template` SET `BuyPrice` = 34211 WHERE entry=2472;

/*  Broad Axe  */
UPDATE `item_template` SET `BuyPrice` = 107 WHERE entry=2479;

/*  Peon Sword  */
UPDATE `item_template` SET `BuyPrice` = 86, `dmg_min1` = 2.0, `dmg_max1` = 5.0, `MaxDurability` = 25 WHERE entry=2481;

/*  Inferior Tomahawk  */
UPDATE `item_template` SET `MaxDurability` = 20 WHERE entry=2482;

/*  Rough Broad Axe  */
UPDATE `item_template` SET `dmg_max1` = 6.0, `MaxDurability` = 25 WHERE entry=2483;

/*  Small Knife  */
UPDATE `item_template` SET `MaxDurability` = 20 WHERE entry=2484;

/*  Splintered Board  */
UPDATE `item_template` SET `dmg_max1` = 3.0, `MaxDurability` = 20 WHERE entry=2485;

/*  Large Stone Mace  */
UPDATE `item_template` SET `dmg_min1` = 4.0, `MaxDurability` = 25 WHERE entry=2486;

/*  Acolyte Staff  */
UPDATE `item_template` SET `dmg_min1` = 4.0, `dmg_max1` = 6.0, `MaxDurability` = 30 WHERE entry=2487;

/*  Two-handed Sword  */
UPDATE `item_template` SET `BuyPrice` = 342 WHERE entry=2489;

/*  Cudgel  */
UPDATE `item_template` SET `BuyPrice` = 284, `SellPrice` = 56 WHERE entry=2492;

/*  Stiletto  */
UPDATE `item_template` SET `BuyPrice` = 401 WHERE entry=2494;

/*  Walking Stick  */
UPDATE `item_template` SET `BuyPrice` = 504, `SellPrice` = 100 WHERE entry=2495;

/*  Raider Shortsword  */
UPDATE `item_template` SET `BuyPrice` = 404, `SellPrice` = 80, `dmg_min1` = 5.0, `dmg_max1` = 11.0, `MaxDurability` = 35 WHERE entry=2496;

/*  Rusted Claymore  */
UPDATE `item_template` SET `dmg_min1` = 12.0, `dmg_max1` = 19.0, `MaxDurability` = 40 WHERE entry=2497;

/*  Small Tomahawk  */
UPDATE `item_template` SET `MaxDurability` = 35 WHERE entry=2498;

/*  Double-bladed Axe  */
UPDATE `item_template` SET `BuyPrice` = 716 WHERE entry=2499;

/*  Light Hammer  */
UPDATE `item_template` SET `MaxDurability` = 30 WHERE entry=2500;

/*  Wooden Warhammer  */
UPDATE `item_template` SET `MaxDurability` = 40 WHERE entry=2501;

/*  Scuffed Dagger  */
UPDATE `item_template` SET `MaxDurability` = 25 WHERE entry=2502;

/*  Adept Short Staff  */
UPDATE `item_template` SET `MaxDurability` = 40 WHERE entry=2503;

/*  Worn Shortbow  */
UPDATE `item_template` SET `dmg_min1` = 2.0, `dmg_max1` = 5.0 WHERE entry=2504;

/*  Polished Shortbow  */
UPDATE `item_template` SET `dmg_min1` = 2.0, `dmg_max1` = 5.0 WHERE entry=2505;

/*  Hornwood Recurve Bow  */
UPDATE `item_template` SET `dmg_min1` = 3.0, `dmg_max1` = 7.0 WHERE entry=2506;

/*  Laminated Recurve Bow  */
UPDATE `item_template` SET `BuyPrice` = 1751, `dmg_min1` = 10.0, `dmg_max1` = 20.0 WHERE entry=2507;

/*  Old Blunderbuss  */
UPDATE `item_template` SET `dmg_min1` = 2.0, `dmg_max1` = 5.0 WHERE entry=2508;

/*  Ornate Blunderbuss  */
UPDATE `item_template` SET `dmg_min1` = 4.0, `dmg_max1` = 9.0 WHERE entry=2509;

/*  Solid Blunderbuss  */
UPDATE `item_template` SET `dmg_min1` = 3.0, `dmg_max1` = 6.0 WHERE entry=2510;

/*  Hunter's Boomstick  */
UPDATE `item_template` SET `dmg_min1` = 7.0, `dmg_max1` = 14.0 WHERE entry=2511;

/*  Broadsword  */
UPDATE `item_template` SET `BuyPrice` = 24628 WHERE entry=2520;

/*  Bullova  */
UPDATE `item_template` SET `BuyPrice` = 28285 WHERE entry=2523;

/*  War Hammer  */
UPDATE `item_template` SET `BuyPrice` = 26489, `SellPrice` = 5297 WHERE entry=2525;

/*  Zweihander  */
UPDATE `item_template` SET `BuyPrice` = 65031 WHERE entry=2529;

/*  Francisca  */
UPDATE `item_template` SET `BuyPrice` = 52219, `SellPrice` = 10443 WHERE entry=2530;

/*  Great Axe  */
UPDATE `item_template` SET `BuyPrice` = 56169, `SellPrice` = 11233 WHERE entry=2531;

/*  War Maul  */
UPDATE `item_template` SET `BuyPrice` = 61107 WHERE entry=2533;

/*  War Staff  */
UPDATE `item_template` SET `BuyPrice` = 61556 WHERE entry=2535;

/*  Malleable Chain Leggings  */
UPDATE `item_template` SET `BuyPrice` = 8984, `SellPrice` = 1796 WHERE entry=2545;

/*  Royal Frostmane Girdle  */
UPDATE `item_template` SET `BuyPrice` = 276 WHERE entry=2546;

/*  Boar Handler Gloves  */
UPDATE `item_template` SET `BuyPrice` = 36 WHERE entry=2547;

/*  Staff of the Shade  */
UPDATE `item_template` SET `spellid_1` = 9328 WHERE entry=2549;

/*  Elven Spirit Claws  */
UPDATE `item_template` SET `spellid_1` = 9361 WHERE entry=2564;

/*  Rod of Molten Fire  */
UPDATE `item_template` SET `spellid_1` = 9400 WHERE entry=2565;

/*  Brown Linen Vest  */
UPDATE `item_template` SET `BuyPrice` = 156 WHERE entry=2568;

/*  Linen Boots  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 16, `BuyPrice` = 437, `SellPrice` = 87, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 0 WHERE entry=2569;

/*  Linen Cloak  */
UPDATE `item_template` SET `BuyPrice` = 55 WHERE entry=2570;

/*  Viny Wrappings  */
UPDATE `item_template` SET `BuyPrice` = 84, `SellPrice` = 16 WHERE entry=2571;

/*  Red Linen Robe  */
UPDATE `item_template` SET `BuyPrice` = 496 WHERE entry=2572;

/*  Reinforced Linen Cape  */
UPDATE `item_template` SET `Quality` = 1, `BuyPrice` = 338, `SellPrice` = 67, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=2580;

/*  Green Woolen Vest  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 29, `BuyPrice` = 1082, `SellPrice` = 216, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 0 WHERE entry=2582;

/*  Woolen Boots  */
UPDATE `item_template` SET `BuyPrice` = 1796, `stat_type3` = 3, `stat_value3` = 2, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=2583;

/*  Gray Woolen Robe  */
UPDATE `item_template` SET `BuyPrice` = 3193 WHERE entry=2585;

/*  Gamemaster's Robe  */
UPDATE `item_template` SET `BuyPrice` = 6 WHERE entry=2586;

/*  Double-stitched Robes  */
UPDATE `item_template` SET `BuyPrice` = 607 WHERE entry=2613;

/*  Robe of Apprenticeship  */
UPDATE `item_template` SET `BuyPrice` = 1161 WHERE entry=2614;

/*  Chromatic Robe  */
UPDATE `item_template` SET `BuyPrice` = 5091 WHERE entry=2615;

/*  Shimmering Silk Robes  */
UPDATE `item_template` SET `BuyPrice` = 2659, `SellPrice` = 531 WHERE entry=2616;

/*  Burning Robes  */
UPDATE `item_template` SET `BuyPrice` = 10991, `spelltrigger_1` = 0 WHERE entry=2617;

/*  Silver Dress Robes  */
UPDATE `item_template` SET `BuyPrice` = 26639, `SellPrice` = 5327 WHERE entry=2618;

/*  Cowl of Necromancy  */
UPDATE `item_template` SET `BuyPrice` = 11787 WHERE entry=2621;

/*  Holy Diadem  */
UPDATE `item_template` SET `BuyPrice` = 17772 WHERE entry=2623;

/*  Thinking Cap  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=2624;

/*  Loose Chain Cloak  */
UPDATE `item_template` SET `BuyPrice` = 56, `SellPrice` = 11 WHERE entry=2644;

/*  Loose Chain Gloves  */
UPDATE `item_template` SET `BuyPrice` = 56 WHERE entry=2645;

/*  Loose Chain Pants  */
UPDATE `item_template` SET `BuyPrice` = 159, `SellPrice` = 31 WHERE entry=2646;

/*  Loose Chain Vest  */
UPDATE `item_template` SET `BuyPrice` = 293 WHERE entry=2648;

/*  Flimsy Chain Boots  */
UPDATE `item_template` SET `BuyPrice` = 16 WHERE entry=2650;

/*  Flimsy Chain Bracers  */
UPDATE `item_template` SET `BuyPrice` = 16 WHERE entry=2651;

/*  Flimsy Chain Cloak  */
UPDATE `item_template` SET `BuyPrice` = 36, `SellPrice` = 7 WHERE entry=2652;

/*  Flimsy Chain Gloves  */
UPDATE `item_template` SET `BuyPrice` = 15 WHERE entry=2653;

/*  Flimsy Chain Vest  */
UPDATE `item_template` SET `BuyPrice` = 48 WHERE entry=2656;

/*  Spinner Fang  */
UPDATE `item_template` SET `BuyPrice` = 5369, `SellPrice` = 1073, `dmg_min1` = 9.0, `dmg_max1` = 18.0, `MaxDurability` = 40 WHERE entry=2664;

/*  Latched Belt  */
UPDATE `item_template` SET `BuyPrice` = 38 WHERE entry=2690;

/*  Settler's Leggings  */
UPDATE `item_template` SET `BuyPrice` = 2697 WHERE entry=2694;

/*  Small Dagger  */
UPDATE `item_template` SET `BuyPrice` = 2202 WHERE entry=2764;

/*  Hunting Knife  */
UPDATE `item_template` SET `BuyPrice` = 4057 WHERE entry=2765;

/*  Cracked Shortbow  */
UPDATE `item_template` SET `BuyPrice` = 195, `dmg_min1` = 3.0, `dmg_max1` = 6.0 WHERE entry=2773;

/*  Rust-covered Blunderbuss  */
UPDATE `item_template` SET `dmg_min1` = 3.0, `dmg_max1` = 6.0 WHERE entry=2774;

/*  Feeble Shortbow  */
UPDATE `item_template` SET `BuyPrice` = 734, `SellPrice` = 146, `dmg_min1` = 4.0, `dmg_max1` = 8.0 WHERE entry=2777;

/*  Cheap Blunderbuss  */
UPDATE `item_template` SET `BuyPrice` = 737, `dmg_min1` = 5.0, `dmg_max1` = 9.0 WHERE entry=2778;

/*  Light Hunting Bow  */
UPDATE `item_template` SET `BuyPrice` = 1872, `dmg_min1` = 5.0, `dmg_max1` = 10.0 WHERE entry=2780;

/*  Dirty Blunderbuss  */
UPDATE `item_template` SET `BuyPrice` = 1676, `dmg_min1` = 6.0, `dmg_max1` = 12.0 WHERE entry=2781;

/*  Mishandled Recurve Bow  */
UPDATE `item_template` SET `dmg_min1` = 9.0, `dmg_max1` = 18.0 WHERE entry=2782;

/*  Shoddy Blunderbuss  */
UPDATE `item_template` SET `dmg_min1` = 7.0, `dmg_max1` = 14.0 WHERE entry=2783;

/*  Stiff Recurve Bow  */
UPDATE `item_template` SET `BuyPrice` = 5311, `dmg_min1` = 13.0, `dmg_max1` = 25.0 WHERE entry=2785;

/*  Oiled Blunderbuss  */
UPDATE `item_template` SET `BuyPrice` = 5865, `dmg_min1` = 9.0, `dmg_max1` = 19.0 WHERE entry=2786;

/*  Trogg Dagger  */
UPDATE `item_template` SET `BuyPrice` = 53 WHERE entry=2787;

/*  Blade of Hanna  */
UPDATE `item_template` SET `BuyPrice` = 523648, `SellPrice` = 104729 WHERE entry=2801;

/*  Yeti Fur Cloak  */
UPDATE `item_template` SET `BuyPrice` = 11762, `SellPrice` = 2352, `spellcooldown_1` = -1 WHERE entry=2805;

/*  Curve-bladed Ripper  */
UPDATE `item_template` SET `BuyPrice` = 98890 WHERE entry=2815;

/*  Death Speaker Scepter  */
UPDATE `item_template` SET `BuyPrice` = 36620, `dmg_min1` = 33.0, `dmg_max1` = 63.0, `spellid_1` = 7679, `spellid_2` = 7708, `RequiredLevel` = 28 WHERE entry=2816;

/*  Stretched Leather Trousers  */
UPDATE `item_template` SET `BuyPrice` = 1817 WHERE entry=2818;

/*  Cross Dagger  */
UPDATE `item_template` SET `BuyPrice` = 19152 WHERE entry=2819;

/*  Mo'grosh Masher  */
UPDATE `item_template` SET `BuyPrice` = 5589, `SellPrice` = 1117 WHERE entry=2821;

/*  Mo'grosh Toothpick  */
UPDATE `item_template` SET `BuyPrice` = 7012 WHERE entry=2822;

/*  Hurricane  */
UPDATE `item_template` SET `dmg_min1` = 34.0, `dmg_max1` = 63.0 WHERE entry=2824;

/*  Bow of Searing Arrows  */
UPDATE `item_template` SET `dmg_min1` = 47.0, `dmg_max1` = 88.0 WHERE entry=2825;

/*  Copper Axe  */
UPDATE `item_template` SET `BuyPrice` = 546 WHERE entry=2845;

/*  Bronze Mace  */
UPDATE `item_template` SET `Quality` = 1, `BuyPrice` = 5595, `SellPrice` = 1119, `dmg_min1` = 18.0, `dmg_max1` = 34.0, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=2848;

/*  Bronze Axe  */
UPDATE `item_template` SET `Quality` = 1, `BuyPrice` = 6345, `SellPrice` = 1269, `dmg_min1` = 15.0, `dmg_max1` = 29.0, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=2849;

/*  Bronze Shortsword  */
UPDATE `item_template` SET `Quality` = 1, `BuyPrice` = 7197, `SellPrice` = 1439, `dmg_min1` = 16.0, `dmg_max1` = 31.0, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=2850;

/*  Copper Chain Belt  */
UPDATE `item_template` SET `BuyPrice` = 282 WHERE entry=2851;

/*  Copper Chain Pants  */
UPDATE `item_template` SET `BuyPrice` = 335 WHERE entry=2852;

/*  Copper Bracers  */
UPDATE `item_template` SET `BuyPrice` = 85 WHERE entry=2853;

/*  Runed Copper Bracers  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 68, `BuyPrice` = 1127, `SellPrice` = 225, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=2854;

/*  Runed Copper Belt  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 86, `BuyPrice` = 991, `SellPrice` = 198, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 0 WHERE entry=2857;

/*  Runed Copper Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 3150 WHERE entry=2864;

/*  Rough Bronze Leggings  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=2865;

/*  Rough Bronze Cuirass  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 168, `BuyPrice` = 3764, `SellPrice` = 752, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 0 WHERE entry=2866;

/*  Rough Bronze Bracers  */
UPDATE `item_template` SET `BuyPrice` = 3148, `DisenchantID` = 0 WHERE entry=2867;

/*  Patterned Bronze Bracers  */
UPDATE `item_template` SET `BuyPrice` = 4035 WHERE entry=2868;

/*  Silvered Bronze Breastplate  */
UPDATE `item_template` SET `stat_type3` = 6 WHERE entry=2869;

/*  Shining Silver Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 14677 WHERE entry=2870;

/*  Antipodean Rod  */
UPDATE `item_template` SET `spellid_1` = 7686, `spellid_2` = 7700 WHERE entry=2879;

/*  Daryl's Hunting Bow  */
UPDATE `item_template` SET `BuyPrice` = 2578, `dmg_min1` = 9.0, `dmg_max1` = 18.0 WHERE entry=2903;

/*  Daryl's Hunting Rifle  */
UPDATE `item_template` SET `dmg_min1` = 11.0, `dmg_max1` = 21.0 WHERE entry=2904;

/*  Goat Fur Cloak  */
UPDATE `item_template` SET `BuyPrice` = 266, `SellPrice` = 53 WHERE entry=2905;

/*  Dwarven Tree Chopper  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0, `spellid_1` = 7552 WHERE entry=2907;

/*  Thornblade  */
UPDATE `item_template` SET `BuyPrice` = 7048 WHERE entry=2908;

/*  Gold Militia Boots  */
UPDATE `item_template` SET `BuyPrice` = 6286 WHERE entry=2910;

/*  Claw of the Shadowmancer  */
UPDATE `item_template` SET `BuyPrice` = 33656 WHERE entry=2912;

/*  Silk Mantle of Gamn  */
UPDATE `item_template` SET `BuyPrice` = 5766 WHERE entry=2913;

/*  Gold Lion Shield  */
UPDATE `item_template` SET `BuyPrice` = 22028 WHERE entry=2916;

/*  Sacred Relic  */
UPDATE `item_template` SET `armor` = 0, `bonding` = 0, `RequiredLevel` = 5 WHERE entry=2920;

/*  Blessed Relic  */
UPDATE `item_template` SET `armor` = 0, `bonding` = 0, `RequiredLevel` = 10 WHERE entry=2921;

/*  Spirit Relic  */
UPDATE `item_template` SET `armor` = 0, `bonding` = 0, `RequiredLevel` = 15 WHERE entry=2922;

/*  Iron Knuckles  */
UPDATE `item_template` SET `BuyPrice` = 18316 WHERE entry=2942;

/*  Cursed Eye of Paleth  */
UPDATE `item_template` SET `spellid_1` = 7709 WHERE entry=2944;

/*  Icicle Rod  */
UPDATE `item_template` SET `spellid_1` = 7703 WHERE entry=2950;

/*  Watch Master's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 11606, `SellPrice` = 2321, `stat_type1` = 7 WHERE entry=2953;

/*  Night Watch Pantaloons  */
UPDATE `item_template` SET `stat_type1` = 7, `stat_value1` = 9, `stat_type2` = 5, `stat_value2` = 8, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=2954;

/*  Journeyman's Vest  */
UPDATE `item_template` SET `BuyPrice` = 596 WHERE entry=2957;

/*  Journeyman's Pants  */
UPDATE `item_template` SET `BuyPrice` = 473 WHERE entry=2958;

/*  Journeyman's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 109, `SellPrice` = 21 WHERE entry=2960;

/*  Burnt Leather Breeches  */
UPDATE `item_template` SET `BuyPrice` = 600 WHERE entry=2962;

/*  Warrior's Pants  */
UPDATE `item_template` SET `BuyPrice` = 731 WHERE entry=2966;

/*  Warrior's Boots  */
UPDATE `item_template` SET `BuyPrice` = 331 WHERE entry=2967;

/*  Warrior's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 169, `SellPrice` = 33 WHERE entry=2968;

/*  Spellbinder Boots  */
UPDATE `item_template` SET `BuyPrice` = 544, `SellPrice` = 108 WHERE entry=2971;

/*  Hunting Tunic  */
UPDATE `item_template` SET `BuyPrice` = 2420 WHERE entry=2973;

/*  Hunting Pants  */
UPDATE `item_template` SET `BuyPrice` = 1962 WHERE entry=2974;

/*  Hunting Gloves  */
UPDATE `item_template` SET `BuyPrice` = 859, `SellPrice` = 171 WHERE entry=2976;

/*  Veteran Boots  */
UPDATE `item_template` SET `BuyPrice` = 785 WHERE entry=2979;

/*  Seer's Robe  */
UPDATE `item_template` SET `BuyPrice` = 3242 WHERE entry=2981;

/*  Seer's Pants  */
UPDATE `item_template` SET `BuyPrice` = 2829, `SellPrice` = 565 WHERE entry=2982;

/*  Seer's Boots  */
UPDATE `item_template` SET `BuyPrice` = 1400 WHERE entry=2983;

/*  Seer's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 1077 WHERE entry=2984;

/*  Inscribed Leather Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 4113 WHERE entry=2985;

/*  Inscribed Leather Gloves  */
UPDATE `item_template` SET `BuyPrice` = 1571 WHERE entry=2988;

/*  Relic of the Eye  */
UPDATE `item_template` SET `armor` = 0, `bonding` = 0, `RequiredLevel` = 5 WHERE entry=3003;

/*  Relic of the Dead  */
UPDATE `item_template` SET `armor` = 0, `bonding` = 0, `RequiredLevel` = 10 WHERE entry=3004;

/*  Relic of Truth  */
UPDATE `item_template` SET `armor` = 0, `bonding` = 0, `RequiredLevel` = 15 WHERE entry=3005;

/*  Wendigo Fur Cloak  */
UPDATE `item_template` SET `BuyPrice` = 218, `SellPrice` = 43 WHERE entry=3008;

/*  Feathered Headdress  */
UPDATE `item_template` SET `BuyPrice` = 14234, `SellPrice` = 2846 WHERE entry=3011;

/*  Hide of Lupos  */
UPDATE `item_template` SET `BuyPrice` = 3906, `SellPrice` = 781 WHERE entry=3018;

/*  Noble's Robe  */
UPDATE `item_template` SET `BuyPrice` = 2115, `stat_type1` = 4, `stat_value1` = 1, `stat_type3` = 6, `stat_value3` = 3 WHERE entry=3019;

/*  Enduring Cap  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 7 WHERE entry=3020;

/*  Ranger Bow  */
UPDATE `item_template` SET `BuyPrice` = 12105, `dmg_min1` = 23.0, `dmg_max1` = 45.0 WHERE entry=3021;

/*  Large Bore Blunderbuss  */
UPDATE `item_template` SET `BuyPrice` = 3771, `dmg_min1` = 13.0, `dmg_max1` = 24.0 WHERE entry=3023;

/*  BKP 2700 "Enforcer"  */
UPDATE `item_template` SET `dmg_min1` = 18.0, `dmg_max1` = 34.0 WHERE entry=3024;

/*  BKP 42 "Ultra"  */
UPDATE `item_template` SET `BuyPrice` = 18478, `dmg_min1` = 20.0, `dmg_max1` = 38.0 WHERE entry=3025;

/*  Reinforced Bow  */
UPDATE `item_template` SET `dmg_min1` = 11.0, `dmg_max1` = 22.0 WHERE entry=3026;

/*  Heavy Recurve Bow  */
UPDATE `item_template` SET `dmg_min1` = 15.0, `dmg_max1` = 29.0 WHERE entry=3027;

/*  Heavy Shortbow  */
UPDATE `item_template` SET `BuyPrice` = 2578, `dmg_min1` = 10.0, `dmg_max1` = 20.0 WHERE entry=3036;

/*  Whipwood Recurve Bow  */
UPDATE `item_template` SET `BuyPrice` = 24071, `dmg_min1` = 17.0, `dmg_max1` = 32.0 WHERE entry=3037;

/*  Short Ash Bow  */
UPDATE `item_template` SET `dmg_min1` = 12.0, `dmg_max1` = 23.0 WHERE entry=3039;

/*  Hunter's Muzzle Loader  */
UPDATE `item_template` SET `BuyPrice` = 4701, `dmg_min1` = 9.0, `dmg_max1` = 18.0 WHERE entry=3040;

/*  "Mage-Eye" Blunderbuss  */
UPDATE `item_template` SET `BuyPrice` = 18846, `dmg_min1` = 24.0, `dmg_max1` = 46.0 WHERE entry=3041;

/*  BKP "Sparrow" Smallbore  */
UPDATE `item_template` SET `BuyPrice` = 22887, `dmg_min1` = 15.0, `dmg_max1` = 30.0 WHERE entry=3042;

/*  Lambent Scale Boots  */
UPDATE `item_template` SET `BuyPrice` = 7869, `SellPrice` = 1573 WHERE entry=3045;

/*  Lambent Scale Gloves  */
UPDATE `item_template` SET `BuyPrice` = 5260 WHERE entry=3047;

/*  Lambent Scale Legguards  */
UPDATE `item_template` SET `BuyPrice` = 9598 WHERE entry=3048;

/*  Lambent Scale Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 10595 WHERE entry=3049;

/*  Humbert's Chestpiece  */
UPDATE `item_template` SET `BuyPrice` = 10703 WHERE entry=3053;

/*  Forest Leather Chestpiece  */
UPDATE `item_template` SET `BuyPrice` = 7631 WHERE entry=3055;

/*  Bright Pants  */
UPDATE `item_template` SET `BuyPrice` = 6375 WHERE entry=3067;

/*  Ensign Cloak  */
UPDATE `item_template` SET `BuyPrice` = 55, `SellPrice` = 11 WHERE entry=3070;

/*  Smoldering Robe  */
UPDATE `item_template` SET `BuyPrice` = 6036 WHERE entry=3072;

/*  Smoldering Pants  */
UPDATE `item_template` SET `spellid_1` = 9400 WHERE entry=3073;

/*  Smoldering Gloves  */
UPDATE `item_template` SET `BuyPrice` = 2380 WHERE entry=3074;

/*  Eye of Flame  */
UPDATE `item_template` SET `armor` = 70, `BuyPrice` = 75368, `spellid_1` = 17878 WHERE entry=3075;

/*  Naga Heartpiercer  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 11572, `SellPrice` = 2314, `dmg_min1` = 13.0, `dmg_max1` = 25.0, `MaxDurability` = 60, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 24 WHERE entry=3078;

/*  Skorn's Rifle  */
UPDATE `item_template` SET `BuyPrice` = 1486, `dmg_min1` = 6.0, `dmg_max1` = 13.0 WHERE entry=3079;

/*  Siege Brigade Vest  */
UPDATE `item_template` SET `BuyPrice` = 437 WHERE entry=3151;

/*  Thelsamar Axe  */
UPDATE `item_template` SET `BuyPrice` = 5470 WHERE entry=3154;

/*  Burnt Hide Bracers  */
UPDATE `item_template` SET `BuyPrice` = 303 WHERE entry=3158;

/*  Ironplate Buckler  */
UPDATE `item_template` SET `BuyPrice` = 2351 WHERE entry=3160;

/*  Robe of the Keeper  */
UPDATE `item_template` SET `BuyPrice` = 1474, `SellPrice` = 294 WHERE entry=3161;

/*  Sacrificial Kris  */
UPDATE `item_template` SET `BuyPrice` = 74353 WHERE entry=3187;

/*  Arced War Axe  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 19289, `SellPrice` = 3857, `dmg_min1` = 46.0, `dmg_max1` = 70.0, `MaxDurability` = 80, `stat_value1` = 6, `stat_value2` = 6, `DisenchantID` = 24, `RequiredLevel` = 21 WHERE entry=3191;

/*  Oak Mallet  */
UPDATE `item_template` SET `BuyPrice` = 10361 WHERE entry=3193;

/*  Black Malice  */
UPDATE `item_template` SET `BuyPrice` = 12479, `SellPrice` = 2495 WHERE entry=3194;

/*  Barbaric Battle Axe  */
UPDATE `item_template` SET `BuyPrice` = 6862 WHERE entry=3195;

/*  Edged Bastard Sword  */
UPDATE `item_template` SET `BuyPrice` = 6886 WHERE entry=3196;

/*  Battering Hammer  */
UPDATE `item_template` SET `BuyPrice` = 13709, `SellPrice` = 2741 WHERE entry=3198;

/*  Burnt Leather Bracers  */
UPDATE `item_template` SET `BuyPrice` = 95 WHERE entry=3200;

/*  Barbarian War Axe  */
UPDATE `item_template` SET `BuyPrice` = 22483 WHERE entry=3201;

/*  Inscribed Leather Bracers  */
UPDATE `item_template` SET `BuyPrice` = 1149, `SellPrice` = 229 WHERE entry=3205;

/*  Cavalier Two-hander  */
UPDATE `item_template` SET `BuyPrice` = 22910 WHERE entry=3206;

/*  Conk Hammer  */
UPDATE `item_template` SET `BuyPrice` = 126893 WHERE entry=3208;

/*  Ancient War Sword  */
UPDATE `item_template` SET `BuyPrice` = 33917 WHERE entry=3209;

/*  Brutal War Axe  */
UPDATE `item_template` SET `BuyPrice` = 28134, `SellPrice` = 5626, `spelltrigger_1` = 0 WHERE entry=3210;

/*  Burnished Bracers  */
UPDATE `item_template` SET `BuyPrice` = 1865 WHERE entry=3211;

/*  Warrior's Bracers  */
UPDATE `item_template` SET `BuyPrice` = 169, `SellPrice` = 33 WHERE entry=3214;

/*  Foreman Belt  */
UPDATE `item_template` SET `BuyPrice` = 674, `SellPrice` = 134 WHERE entry=3217;

/*  Wicked Dagger  */
UPDATE `item_template` SET `dmg_min1` = 10.0, `dmg_max1` = 20.0, `bonding` = 2, `MaxDurability` = 40, `stat_type1` = 4, `stat_value1` = 1, `stat_type2` = 3, `stat_value2` = 1, `DisenchantID` = 0, `StatsCount` = 2 WHERE entry=3222;

/*  Jimmied Handcuffs  */
UPDATE `item_template` SET `BuyPrice` = 5492 WHERE entry=3228;

/*  Tarantula Silk Sash  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 2, `stat_type2` = 5, `stat_value2` = 5, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=3229;

/*  Black Wolf Bracers  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 38, `BuyPrice` = 3842, `SellPrice` = 768, `MaxDurability` = 30, `stat_value1` = 5, `DisenchantID` = 4, `RequiredLevel` = 21 WHERE entry=3230;

/*  Cutthroat Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 6332 WHERE entry=3231;

/*  Scarlet Initiate Robes  */
UPDATE `item_template` SET `BuyPrice` = 31 WHERE entry=3260;

/*  Webbed Cloak  */
UPDATE `item_template` SET `BuyPrice` = 35 WHERE entry=3261;

/*  Forsaken Dagger  */
UPDATE `item_template` SET `BuyPrice` = 128 WHERE entry=3268;

/*  Flax Vest  */
UPDATE `item_template` SET `BuyPrice` = 51 WHERE entry=3270;

/*  Rugged Mail Vest  */
UPDATE `item_template` SET `BuyPrice` = 77 WHERE entry=3273;

/*  Flax Boots  */
UPDATE `item_template` SET `BuyPrice` = 38 WHERE entry=3274;

/*  Aura Proc Damage Sword  */
UPDATE `item_template` SET `spellid_1` = 3742, `spelltrigger_1` = 2 WHERE entry=3278;

/*  Battle Chain Boots  */
UPDATE `item_template` SET `BuyPrice` = 525 WHERE entry=3279;

/*  Battle Chain Gloves  */
UPDATE `item_template` SET `BuyPrice` = 280 WHERE entry=3281;

/*  Battle Chain Tunic  */
UPDATE `item_template` SET `BuyPrice` = 1476 WHERE entry=3283;

/*  Tribal Bracers  */
UPDATE `item_template` SET `BuyPrice` = 182 WHERE entry=3285;

/*  Tribal Gloves  */
UPDATE `item_template` SET `BuyPrice` = 297 WHERE entry=3286;

/*  Tribal Pants  */
UPDATE `item_template` SET `BuyPrice` = 998 WHERE entry=3287;

/*  Ancestral Boots  */
UPDATE `item_template` SET `BuyPrice` = 288 WHERE entry=3289;

/*  Ancestral Gloves  */
UPDATE `item_template` SET `BuyPrice` = 241 WHERE entry=3290;

/*  Ancestral Tunic  */
UPDATE `item_template` SET `BuyPrice` = 1016 WHERE entry=3292;

/*  Brackwater Boots  */
UPDATE `item_template` SET `BuyPrice` = 1595 WHERE entry=3302;

/*  Brackwater Bracers  */
UPDATE `item_template` SET `BuyPrice` = 353 WHERE entry=3303;

/*  Brackwater Vest  */
UPDATE `item_template` SET `BuyPrice` = 3269, `SellPrice` = 653 WHERE entry=3306;

/*  Barbaric Cloth Boots  */
UPDATE `item_template` SET `BuyPrice` = 1078 WHERE entry=3307;

/*  Barbaric Cloth Gloves  */
UPDATE `item_template` SET `BuyPrice` = 721, `stat_type3` = 4, `stat_value3` = 1, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=3308;

/*  Barbaric Loincloth  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 3, `stat_type2` = 5, `stat_value2` = 2, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=3309;

/*  Ceremonial Leather Ankleguards  */
UPDATE `item_template` SET `BuyPrice` = 761 WHERE entry=3311;

/*  Ceremonial Leather Bracers  */
UPDATE `item_template` SET `BuyPrice` = 353 WHERE entry=3312;

/*  Ceremonial Leather Harness  */
UPDATE `item_template` SET `BuyPrice` = 2595 WHERE entry=3313;

/*  Ceremonial Leather Loincloth  */
UPDATE `item_template` SET `BuyPrice` = 2274, `SellPrice` = 454 WHERE entry=3315;

/*  Short Sabre  */
UPDATE `item_template` SET `BuyPrice` = 550 WHERE entry=3319;

/*  Bonecaster Sash  */
UPDATE `item_template` SET `armor` = 9, `MaxDurability` = 16 WHERE entry=3320;

/*  Gray Fur Booties  */
UPDATE `item_template` SET `BuyPrice` = 207 WHERE entry=3321;

/*  Wispy Cloak  */
UPDATE `item_template` SET `BuyPrice` = 55 WHERE entry=3322;

/*  Ghostly Mantle  */
UPDATE `item_template` SET `BuyPrice` = 5599, `SellPrice` = 1119 WHERE entry=3324;

/*  Vile Fin Battle Axe  */
UPDATE `item_template` SET `BuyPrice` = 703 WHERE entry=3325;

/*  Vile Fin Oracle Staff  */
UPDATE `item_template` SET `BuyPrice` = 708 WHERE entry=3327;

/*  Dargol's Hauberk  */
UPDATE `item_template` SET `BuyPrice` = 1405 WHERE entry=3330;

/*  Melrache's Cape  */
UPDATE `item_template` SET `BuyPrice` = 509, `SellPrice` = 101 WHERE entry=3331;

/*  Farmer's Shovel  */
UPDATE `item_template` SET `BuyPrice` = 343 WHERE entry=3334;

/*  Gauntlets of Ogre Strength  */
UPDATE `item_template` SET `BuyPrice` = 8108 WHERE entry=3341;

/*  Frayed Bracers  */
UPDATE `item_template` SET `BuyPrice` = 16 WHERE entry=3365;

/*  Calico Belt  */
UPDATE `item_template` SET `BuyPrice` = 227 WHERE entry=3374;

/*  Cross-stitched Belt  */
UPDATE `item_template` SET `BuyPrice` = 1826 WHERE entry=3380;

/*  Ringed Helm  */
UPDATE `item_template` SET `BuyPrice` = 8317 WHERE entry=3392;

/*  Lucine Longsword  */
UPDATE `item_template` SET `BuyPrice` = 13806 WHERE entry=3400;

/*  Doomspike  */
UPDATE `item_template` SET `BuyPrice` = 16147 WHERE entry=3413;

/*  Crested Scepter  */
UPDATE `item_template` SET `BuyPrice` = 20144, `SellPrice` = 4028 WHERE entry=3414;

/*  Staff of the Friar  */
UPDATE `item_template` SET `BuyPrice` = 17993 WHERE entry=3415;

/*  Martyr's Chain  */
UPDATE `item_template` SET `stat_type1` = 6 WHERE entry=3416;

/*  Onyx Claymore  */
UPDATE `item_template` SET `BuyPrice` = 23146 WHERE entry=3417;

/*  Guardsman Belt  */
UPDATE `item_template` SET `BuyPrice` = 2931 WHERE entry=3429;

/*  Sniper Rifle  */
UPDATE `item_template` SET `BuyPrice` = 55134, `SellPrice` = 11026, `dmg_min1` = 56.0, `dmg_max1` = 65.0 WHERE entry=3430;

/*  Zombie Skin Bracers  */
UPDATE `item_template` SET `BuyPrice` = 98 WHERE entry=3435;

/*  Clasped Belt  */
UPDATE `item_template` SET `BuyPrice` = 119, `SellPrice` = 23 WHERE entry=3437;

/*  Zombie Skin Boots  */
UPDATE `item_template` SET `BuyPrice` = 150 WHERE entry=3439;

/*  Bonecracker  */
UPDATE `item_template` SET `BuyPrice` = 3202 WHERE entry=3440;

/*  Apprentice Sash  */
UPDATE `item_template` SET `BuyPrice` = 223 WHERE entry=3442;

/*  Ceremonial Tomahawk  */
UPDATE `item_template` SET `BuyPrice` = 691, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=3443;

/*  Faerleia's Shield  */
UPDATE `item_template` SET `BuyPrice` = 2217 WHERE entry=3450;

/*  Quilted Bracers  */
UPDATE `item_template` SET `BuyPrice` = 232 WHERE entry=3453;

/*  Rugged Mail Gloves  */
UPDATE `item_template` SET `BuyPrice` = 1670 WHERE entry=3458;

/*  High Robe of the Adjudicator  */
UPDATE `item_template` SET `BuyPrice` = 5029, `SellPrice` = 1005 WHERE entry=3461;

/*  Copper Chain Boots  */
UPDATE `item_template` SET `BuyPrice` = 245 WHERE entry=3469;

/*  Copper Chain Vest  */
UPDATE `item_template` SET `BuyPrice` = 712 WHERE entry=3471;

/*  Runed Copper Gauntlets  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 73, `BuyPrice` = 357, `SellPrice` = 71, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=3472;

/*  Runed Copper Pants  */
UPDATE `item_template` SET `BuyPrice` = 1498 WHERE entry=3473;

/*  Gemmed Copper Gauntlets  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0, `RandomProperty` = 749 WHERE entry=3474;

/*  Cloak of Flames  */
UPDATE `item_template` SET `armor` = 50, `BuyPrice` = 130092, `SellPrice` = 26018 WHERE entry=3475;

/*  Rough Bronze Shoulders  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 124, `BuyPrice` = 2660, `SellPrice` = 532, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 0 WHERE entry=3480;

/*  Silvered Bronze Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 6422, `stat_type3` = 6 WHERE entry=3481;

/*  Silvered Bronze Boots  */
UPDATE `item_template` SET `stat_type3` = 6 WHERE entry=3482;

/*  Silvered Bronze Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 4828, `stat_type3` = 6 WHERE entry=3483;

/*  Green Iron Boots  */
UPDATE `item_template` SET `BuyPrice` = 8837 WHERE entry=3484;

/*  Thick War Axe  */
UPDATE `item_template` SET `BuyPrice` = 4688 WHERE entry=3489;

/*  Deadly Bronze Poniard  */
UPDATE `item_template` SET `BuyPrice` = 13658 WHERE entry=3490;

/*  Raptor's End  */
UPDATE `item_template` SET `dmg_min1` = 24.0, `dmg_max1` = 46.0 WHERE entry=3493;

/*  Cloak of the People's Militia  */
UPDATE `item_template` SET `BuyPrice` = 1338, `SellPrice` = 267 WHERE entry=3511;

/*  Demon Hunter Blindfold  */
UPDATE `item_template` SET `armor` = 30, `MaxDurability` = 30 WHERE entry=3536;

/*  Fen Keeper Robe  */
UPDATE `item_template` SET `BuyPrice` = 5220 WHERE entry=3558;

/*  Night Watch Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 2368 WHERE entry=3559;

/*  Belt of Vindication  */
UPDATE `item_template` SET `BuyPrice` = 4117 WHERE entry=3562;

/*  Seafarer's Pantaloons  */
UPDATE `item_template` SET `BuyPrice` = 2787 WHERE entry=3563;

/*  Beerstained Gloves  */
UPDATE `item_template` SET `BuyPrice` = 1403, `stat_type1` = 4, `stat_type2` = 7, `stat_value2` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=3565;

/*  Dwarven Fishing Pole  */
UPDATE `item_template` SET `BuyPrice` = 4613, `dmg_min1` = 9.0, `dmg_max1` = 19.0 WHERE entry=3567;

/*  Bonegrinding Pestle  */
UPDATE `item_template` SET `BuyPrice` = 4197 WHERE entry=3570;

/*  Daryl's Shortsword  */
UPDATE `item_template` SET `BuyPrice` = 4861 WHERE entry=3572;

/*  Harvester's Pants  */
UPDATE `item_template` SET `BuyPrice` = 1699, `SellPrice` = 339 WHERE entry=3578;

/*  Serrated Knife  */
UPDATE `item_template` SET `BuyPrice` = 5230 WHERE entry=3581;

/*  Acidproof Cloak  */
UPDATE `item_template` SET `BuyPrice` = 2372, `SellPrice` = 474 WHERE entry=3582;

/*  Camouflaged Tunic  */
UPDATE `item_template` SET `BuyPrice` = 4767 WHERE entry=3585;

/*  Logsplitter  */
UPDATE `item_template` SET `BuyPrice` = 5171 WHERE entry=3586;

/*  Embroidered Bracers  */
UPDATE `item_template` SET `BuyPrice` = 14365 WHERE entry=3588;

/*  Heavy Weave Belt  */
UPDATE `item_template` SET `BuyPrice` = 576 WHERE entry=3589;

/*  Heavy Weave Bracers  */
UPDATE `item_template` SET `BuyPrice` = 578 WHERE entry=3590;

/*  Russet Belt  */
UPDATE `item_template` SET `BuyPrice` = 5477 WHERE entry=3593;

/*  Tattered Cloth Belt  */
UPDATE `item_template` SET `BuyPrice` = 23 WHERE entry=3595;

/*  Tattered Cloth Bracers  */
UPDATE `item_template` SET `BuyPrice` = 23 WHERE entry=3596;

/*  Knitted Bracers  */
UPDATE `item_template` SET `BuyPrice` = 145 WHERE entry=3603;

/*  Journeyman's Bracers  */
UPDATE `item_template` SET `BuyPrice` = 78 WHERE entry=3641;

/*  Barbaric Cloth Bracers  */
UPDATE `item_template` SET `BuyPrice` = 237 WHERE entry=3644;

/*  Bright Bracers  */
UPDATE `item_template` SET `BuyPrice` = 2169, `SellPrice` = 433 WHERE entry=3647;

/*  Warrior's Buckler  */
UPDATE `item_template` SET `armor` = 135, `BuyPrice` = 365, `SellPrice` = 73, `ItemLevel` = 9, `block` = 3, `MaxDurability` = 40, `RequiredLevel` = 4 WHERE entry=3648;

/*  Tribal Buckler  */
UPDATE `item_template` SET `BuyPrice` = 575, `spellcooldown_1` = -1 WHERE entry=3649;

/*  Battle Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=3650;

/*  Veteran Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=3651;

/*  Hunting Buckler  */
UPDATE `item_template` SET `BuyPrice` = 1820, `spellcooldown_1` = -1 WHERE entry=3652;

/*  Ceremonial Buckler  */
UPDATE `item_template` SET `BuyPrice` = 2192, `spellcooldown_1` = -1 WHERE entry=3653;

/*  Brackwater Shield  */
UPDATE `item_template` SET `BuyPrice` = 1834, `SellPrice` = 366, `spellcooldown_1` = -1 WHERE entry=3654;

/*  Burnished Shield  */
UPDATE `item_template` SET `BuyPrice` = 5111, `spellcooldown_1` = -1 WHERE entry=3655;

/*  Lambent Scale Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=3656;

/*  Handcrafted Staff  */
UPDATE `item_template` SET `BuyPrice` = 45 WHERE entry=3661;

/*  Hillman's Cloak  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 20, `BuyPrice` = 5139, `SellPrice` = 1027, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=3719;

/*  Hooded Cowl  */
UPDATE `item_template` SET `BuyPrice` = 4006 WHERE entry=3732;

/*  Brewing Rod  */
UPDATE `item_template` SET `BuyPrice` = 17195, `dmg_min1` = 39.0, `dmg_max1` = 59.0, `MaxDurability` = 75 WHERE entry=3738;

/*  Decapitating Sword  */
UPDATE `item_template` SET `BuyPrice` = 12262 WHERE entry=3740;

/*  Stomping Boots  */
UPDATE `item_template` SET `BuyPrice` = 4614, `SellPrice` = 922 WHERE entry=3741;

/*  Bow of Plunder  */
UPDATE `item_template` SET `dmg_min1` = 20.0, `dmg_max1` = 39.0 WHERE entry=3742;

/*  Feline Mantle  */
UPDATE `item_template` SET `armor` = 34, `BuyPrice` = 6524, `SellPrice` = 1304, `ItemLevel` = 28, `stat_value1` = 10, `stat_value2` = 3, `stat_type3` = 3, `stat_value3` = 2, `spellid_1` = 0, `spelltrigger_1` = 0, `RequiredLevel` = 23, `StatsCount` = 3 WHERE entry=3748;

/*  High Apothecary Cloak  */
UPDATE `item_template` SET `BuyPrice` = 6603 WHERE entry=3749;

/*  Mercenary Leggings  */
UPDATE `item_template` SET `BuyPrice` = 13307 WHERE entry=3751;

/*  Grunt Vest  */
UPDATE `item_template` SET `BuyPrice` = 3729, `SellPrice` = 745, `stat_type1` = 4, `stat_value1` = 5, `stat_type2` = 6, `stat_value2` = 4, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=3752;

/*  Shepherd's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 7461 WHERE entry=3754;

/*  Fish Gutter  */
UPDATE `item_template` SET `BuyPrice` = 27236 WHERE entry=3755;

/*  Crusader Belt  */
UPDATE `item_template` SET `BuyPrice` = 9086 WHERE entry=3758;

/*  Deadskull Shield  */
UPDATE `item_template` SET `BuyPrice` = 16533 WHERE entry=3761;

/*  Lunar Buckler  */
UPDATE `item_template` SET `BuyPrice` = 33805 WHERE entry=3763;

/*  Mantis Boots  */
UPDATE `item_template` SET `BuyPrice` = 15905, `stat_type1` = 4, `stat_value1` = 3, `stat_type2` = 6, `stat_value2` = 7, `stat_type3` = 3, `stat_value3` = 2, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=3764;

/*  Taut Compound Bow  */
UPDATE `item_template` SET `dmg_min1` = 13.0, `dmg_max1` = 25.0 WHERE entry=3778;

/*  Hefty War Axe  */
UPDATE `item_template` SET `BuyPrice` = 14175 WHERE entry=3779;

/*  Long-barreled Musket  */
UPDATE `item_template` SET `BuyPrice` = 9388, `dmg_min1` = 14.0, `dmg_max1` = 27.0 WHERE entry=3780;

/*  Large War Club  */
UPDATE `item_template` SET `BuyPrice` = 17257 WHERE entry=3782;

/*  Shiny Dirk  */
UPDATE `item_template` SET `BuyPrice` = 19785 WHERE entry=3786;

/*  Interlaced Bracers  */
UPDATE `item_template` SET `BuyPrice` = 3874, `SellPrice` = 774 WHERE entry=3794;

/*  Interlaced Cloak  */
UPDATE `item_template` SET `BuyPrice` = 4909, `SellPrice` = 981 WHERE entry=3795;

/*  Interlaced Gloves  */
UPDATE `item_template` SET `BuyPrice` = 2467 WHERE entry=3796;

/*  Interlaced Pants  */
UPDATE `item_template` SET `BuyPrice` = 8460 WHERE entry=3797;

/*  Interlaced Shoulderpads  */
UPDATE `item_template` SET `BuyPrice` = 4510 WHERE entry=3798;

/*  Interlaced Vest  */
UPDATE `item_template` SET `BuyPrice` = 7304, `SellPrice` = 1460 WHERE entry=3799;

/*  Hardened Leather Belt  */
UPDATE `item_template` SET `BuyPrice` = 5343 WHERE entry=3800;

/*  Hardened Leather Bracers  */
UPDATE `item_template` SET `BuyPrice` = 3136 WHERE entry=3802;

/*  Hardened Leather Shoulderpads  */
UPDATE `item_template` SET `BuyPrice` = 6359, `SellPrice` = 1271 WHERE entry=3806;

/*  Hardened Leather Tunic  */
UPDATE `item_template` SET `BuyPrice` = 5813 WHERE entry=3807;

/*  Double Mail Boots  */
UPDATE `item_template` SET `BuyPrice` = 4813 WHERE entry=3809;

/*  Double Mail Gloves  */
UPDATE `item_template` SET `BuyPrice` = 4856 WHERE entry=3812;

/*  Double Mail Pants  */
UPDATE `item_template` SET `BuyPrice` = 8862 WHERE entry=3813;

/*  Double Mail Vest  */
UPDATE `item_template` SET `BuyPrice` = 7377 WHERE entry=3815;

/*  Reflective Heater  */
UPDATE `item_template` SET `BuyPrice` = 10511 WHERE entry=3816;

/*  Runic Darkblade  */
UPDATE `item_template` SET `BuyPrice` = 32405 WHERE entry=3822;

/*  Adept's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 121 WHERE entry=3833;

/*  Sturdy Cloth Trousers  */
UPDATE `item_template` SET `BuyPrice` = 162 WHERE entry=3834;

/*  Green Iron Bracers  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 86, `BuyPrice` = 5532, `SellPrice` = 1106, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=3835;

/*  Golden Scale Coif  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=3837;

/*  Golden Scale Shoulders  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=3841;

/*  Green Iron Leggings  */
UPDATE `item_template` SET `BuyPrice` = 14531 WHERE entry=3842;

/*  Golden Scale Leggings  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=3843;

/*  Green Iron Hauberk  */
UPDATE `item_template` SET `BuyPrice` = 28293 WHERE entry=3844;

/*  Golden Scale Cuirass  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=3845;

/*  Golden Scale Boots  */
UPDATE `item_template` SET `stat_value1` = 8, `stat_type2` = 6, `stat_value2` = 8, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=3847;

/*  Hardened Iron Shortsword  */
UPDATE `item_template` SET `dmg_min1` = 21.0, `dmg_max1` = 39.0, `stat_type1` = 7, `stat_value1` = 5 WHERE entry=3849;

/*  Jade Serpentblade  */
UPDATE `item_template` SET `BuyPrice` = 36523 WHERE entry=3850;

/*  Golden Iron Destroyer  */
UPDATE `item_template` SET `BuyPrice` = 41804, `SellPrice` = 8360, `dmg_min1` = 50.0, `dmg_max1` = 76.0 WHERE entry=3852;

/*  Moonsteel Broadsword  */
UPDATE `item_template` SET `stat_type1` = 7, `stat_value1` = 4, `stat_type2` = 6, `stat_value2` = 12, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=3853;

/*  Frost Tiger Blade  */
UPDATE `item_template` SET `BuyPrice` = 70603 WHERE entry=3854;

/*  Massive Iron Axe  */
UPDATE `item_template` SET `BuyPrice` = 56243 WHERE entry=3855;

/*  Shadow Crescent Axe  */
UPDATE `item_template` SET `BuyPrice` = 71106 WHERE entry=3856;

/*  Russet Hat  */
UPDATE `item_template` SET `BuyPrice` = 7922 WHERE entry=3889;

/*  Augmented Chain Helm  */
UPDATE `item_template` SET `BuyPrice` = 12284, `SellPrice` = 2456 WHERE entry=3891;

/*  TEST Legendary  */
UPDATE `item_template` SET `dmg_min1` = 16.0, `dmg_max1` = 31.0, `MaxDurability` = 125 WHERE entry=3895;

/*  Staff of Nobles  */
UPDATE `item_template` SET `BuyPrice` = 6588 WHERE entry=3902;

/*  Crochet Boots  */
UPDATE `item_template` SET `BuyPrice` = 10092 WHERE entry=3937;

/*  Crochet Cloak  */
UPDATE `item_template` SET `BuyPrice` = 11283 WHERE entry=3939;

/*  Crochet Shoulderpads  */
UPDATE `item_template` SET `BuyPrice` = 13183 WHERE entry=3942;

/*  Crochet Vest  */
UPDATE `item_template` SET `BuyPrice` = 11221 WHERE entry=3943;

/*  Twill Boots  */
UPDATE `item_template` SET `BuyPrice` = 19263 WHERE entry=3945;

/*  Twill Bracers  */
UPDATE `item_template` SET `BuyPrice` = 12159, `SellPrice` = 2431 WHERE entry=3946;

/*  Twill Vest  */
UPDATE `item_template` SET `BuyPrice` = 29487 WHERE entry=3951;

/*  Mesh Belt  */
UPDATE `item_template` SET `armor` = 44, `BuyPrice` = 25547, `SellPrice` = 5109, `MaxDurability` = 25 WHERE entry=3952;

/*  Mesh Boots  */
UPDATE `item_template` SET `armor` = 51, `BuyPrice` = 31635, `SellPrice` = 6327, `MaxDurability` = 35 WHERE entry=3953;

/*  Mesh Bracers  */
UPDATE `item_template` SET `armor` = 33, `BuyPrice` = 20665, `SellPrice` = 4133, `MaxDurability` = 25 WHERE entry=3954;

/*  Mesh Cloak  */
UPDATE `item_template` SET `armor` = 36, `BuyPrice` = 26879, `SellPrice` = 5375 WHERE entry=3955;

/*  Mesh Gloves  */
UPDATE `item_template` SET `armor` = 46, `BuyPrice` = 18884, `SellPrice` = 3776, `MaxDurability` = 25 WHERE entry=3956;

/*  Mesh Pants  */
UPDATE `item_template` SET `armor` = 68, `BuyPrice` = 46082, `SellPrice` = 9216, `MaxDurability` = 55 WHERE entry=3957;

/*  Mesh Mantle  */
UPDATE `item_template` SET `armor` = 60, `BuyPrice` = 38247, `SellPrice` = 7649, `MaxDurability` = 45 WHERE entry=3958;

/*  Mesh Armor  */
UPDATE `item_template` SET `armor` = 76, `BuyPrice` = 44216, `SellPrice` = 8843, `MaxDurability` = 70 WHERE entry=3959;

/*  Thick Leather Boots  */
UPDATE `item_template` SET `BuyPrice` = 15399, `SellPrice` = 3079 WHERE entry=3962;

/*  Thick Leather Bracers  */
UPDATE `item_template` SET `BuyPrice` = 7012 WHERE entry=3963;

/*  Thick Cloak  */
UPDATE `item_template` SET `BuyPrice` = 10638 WHERE entry=3964;

/*  Thick Leather Shoulderpads  */
UPDATE `item_template` SET `BuyPrice` = 14519, `SellPrice` = 2903 WHERE entry=3967;

/*  Smooth Leather Belt  */
UPDATE `item_template` SET `BuyPrice` = 16283 WHERE entry=3969;

/*  Smooth Leather Boots  */
UPDATE `item_template` SET `BuyPrice` = 21481 WHERE entry=3970;

/*  Smooth Leather Gloves  */
UPDATE `item_template` SET `BuyPrice` = 18286 WHERE entry=3973;

/*  Smooth Leather Pants  */
UPDATE `item_template` SET `BuyPrice` = 27434, `SellPrice` = 5486 WHERE entry=3974;

/*  Smooth Leather Shoulderpads  */
UPDATE `item_template` SET `BuyPrice` = 19482 WHERE entry=3975;

/*  Smooth Leather Armor  */
UPDATE `item_template` SET `BuyPrice` = 34894, `SellPrice` = 6978 WHERE entry=3976;

/*  Strapped Belt  */
UPDATE `item_template` SET `armor` = 81, `BuyPrice` = 23692, `SellPrice` = 4738, `MaxDurability` = 30 WHERE entry=3977;

/*  Strapped Boots  */
UPDATE `item_template` SET `armor` = 107, `BuyPrice` = 47803, `SellPrice` = 9560, `MaxDurability` = 45 WHERE entry=3978;

/*  Strapped Bracers  */
UPDATE `item_template` SET `armor` = 66, `BuyPrice` = 29011, `SellPrice` = 5802, `MaxDurability` = 30 WHERE entry=3979;

/*  Strapped Cloak  */
UPDATE `item_template` SET `armor` = 36, `BuyPrice` = 34223, `SellPrice` = 6844 WHERE entry=3980;

/*  Strapped Gloves  */
UPDATE `item_template` SET `armor` = 96, `BuyPrice` = 30688, `SellPrice` = 6137, `MaxDurability` = 30 WHERE entry=3981;

/*  Strapped Pants  */
UPDATE `item_template` SET `armor` = 131, `BuyPrice` = 55876, `SellPrice` = 11175, `MaxDurability` = 65 WHERE entry=3982;

/*  Strapped Shoulderpads  */
UPDATE `item_template` SET `armor` = 111, `BuyPrice` = 40054, `SellPrice` = 8010, `MaxDurability` = 50 WHERE entry=3983;

/*  Strapped Armor  */
UPDATE `item_template` SET `armor` = 146, `BuyPrice` = 51049, `SellPrice` = 10209, `MaxDurability` = 85 WHERE entry=3984;

/*  Plate Wall Shield  */
UPDATE `item_template` SET `armor` = 1742, `BuyPrice` = 64622, `SellPrice` = 12924, `block` = 32, `MaxDurability` = 85 WHERE entry=3988;

/*  Plated Buckler  */
UPDATE `item_template` SET `armor` = 1817, `BuyPrice` = 75670, `SellPrice` = 15134, `block` = 35, `MaxDurability` = 85 WHERE entry=3991;

/*  Laminated Scale Bracers  */
UPDATE `item_template` SET `BuyPrice` = 22023 WHERE entry=3994;

/*  Laminated Scale Cloak  */
UPDATE `item_template` SET `BuyPrice` = 31422, `SellPrice` = 6284 WHERE entry=3995;

/*  Laminated Scale Gloves  */
UPDATE `item_template` SET `BuyPrice` = 23299, `SellPrice` = 4659 WHERE entry=3996;

/*  Overlinked Chain Belt  */
UPDATE `item_template` SET `BuyPrice` = 8986 WHERE entry=4000;

/*  Overlinked Chain Bracers  */
UPDATE `item_template` SET `BuyPrice` = 12315 WHERE entry=4002;

/*  Overlinked Chain Cloak  */
UPDATE `item_template` SET `BuyPrice` = 20451, `SellPrice` = 4090 WHERE entry=4003;

/*  Overlinked Chain Pants  */
UPDATE `item_template` SET `BuyPrice` = 17389, `SellPrice` = 3477 WHERE entry=4005;

/*  Overlinked Chain Shoulderpads  */
UPDATE `item_template` SET `BuyPrice` = 12172 WHERE entry=4006;

/*  Overlinked Chain Armor  */
UPDATE `item_template` SET `BuyPrice` = 18480 WHERE entry=4007;

/*  Sterling Chain Belt  */
UPDATE `item_template` SET `armor` = 170, `BuyPrice` = 27472, `SellPrice` = 5494, `MaxDurability` = 35 WHERE entry=4008;

/*  Sterling Chain Boots  */
UPDATE `item_template` SET `armor` = 214, `BuyPrice` = 45806, `SellPrice` = 9161, `MaxDurability` = 50 WHERE entry=4009;

/*  Sterling Chain Bracers  */
UPDATE `item_template` SET `armor` = 139, `BuyPrice` = 32045, `SellPrice` = 6409, `MaxDurability` = 35 WHERE entry=4010;

/*  Sterling Chain Cloak  */
UPDATE `item_template` SET `armor` = 39, `BuyPrice` = 53436, `SellPrice` = 10687 WHERE entry=4011;

/*  Sterling Chain Gloves  */
UPDATE `item_template` SET `armor` = 201, `BuyPrice` = 33907, `SellPrice` = 6781, `MaxDurability` = 35 WHERE entry=4012;

/*  Sterling Chain Pants  */
UPDATE `item_template` SET `armor` = 269, `BuyPrice` = 58798, `SellPrice` = 11759, `MaxDurability` = 75 WHERE entry=4013;

/*  Sterling Chain Shoulderpads  */
UPDATE `item_template` SET `armor` = 248, `BuyPrice` = 56747, `SellPrice` = 11349, `MaxDurability` = 60 WHERE entry=4014;

/*  Sterling Chain Armor  */
UPDATE `item_template` SET `armor` = 299, `BuyPrice` = 53737, `SellPrice` = 10747, `MaxDurability` = 100 WHERE entry=4015;

/*  Blunting Mace  */
UPDATE `item_template` SET `BuyPrice` = 35991 WHERE entry=4021;

/*  Fine Pointed Dagger  */
UPDATE `item_template` SET `BuyPrice` = 31079, `SellPrice` = 6215 WHERE entry=4023;

/*  Heavy War Staff  */
UPDATE `item_template` SET `BuyPrice` = 49109, `SellPrice` = 9821 WHERE entry=4024;

/*  Balanced Long Bow  */
UPDATE `item_template` SET `BuyPrice` = 25351, `dmg_min1` = 15.0, `dmg_max1` = 29.0 WHERE entry=4025;

/*  Sentinel Musket  */
UPDATE `item_template` SET `dmg_min1` = 22.0, `dmg_max1` = 43.0 WHERE entry=4026;

/*  Silver-thread Robe  */
UPDATE `item_template` SET `BuyPrice` = 9944, `SellPrice` = 1988 WHERE entry=4035;

/*  Nightsky Robe  */
UPDATE `item_template` SET `BuyPrice` = 17810 WHERE entry=4038;

/*  Aurora Gloves  */
UPDATE `item_template` SET `BuyPrice` = 10536, `stat_type1` = 3, `stat_type2` = 5, `stat_value2` = 8, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=4042;

/*  Emblazoned Hat  */
UPDATE `item_template` SET `BuyPrice` = 8837 WHERE entry=4048;

/*  Emblazoned Leggings  */
UPDATE `item_template` SET `BuyPrice` = 11874, `SellPrice` = 2374 WHERE entry=4050;

/*  Emblazoned Boots  */
UPDATE `item_template` SET `BuyPrice` = 8349, `SellPrice` = 1669 WHERE entry=4051;

/*  Insignia Leggings  */
UPDATE `item_template` SET `BuyPrice` = 18129, `SellPrice` = 3625 WHERE entry=4054;

/*  Insignia Boots  */
UPDATE `item_template` SET `BuyPrice` = 12406 WHERE entry=4055;

/*  Insignia Chestguard  */
UPDATE `item_template` SET `BuyPrice` = 20163 WHERE entry=4057;

/*  Glyphed Bracers  */
UPDATE `item_template` SET `BuyPrice` = 11169, `SellPrice` = 2233 WHERE entry=4059;

/*  Imperial Leather Pants  */
UPDATE `item_template` SET `BuyPrice` = 41795 WHERE entry=4062;

/*  Emblazoned Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=4064;

/*  Combat Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=4065;

/*  Insignia Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=4066;

/*  Glyphed Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=4067;

/*  Chief Brigadier Shield  */
UPDATE `item_template` SET `BuyPrice` = 34592, `spellcooldown_1` = -1 WHERE entry=4068;

/*  Blackforge Buckler  */
UPDATE `item_template` SET `BuyPrice` = 59503, `spellcooldown_1` = -1 WHERE entry=4069;

/*  Jouster's Crest  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=4070;

/*  Glimmering Mail Greaves  */
UPDATE `item_template` SET `BuyPrice` = 11151 WHERE entry=4073;

/*  Mail Combat Armor  */
UPDATE `item_template` SET `BuyPrice` = 23928 WHERE entry=4074;

/*  Mail Combat Boots  */
UPDATE `item_template` SET `BuyPrice` = 16508 WHERE entry=4076;

/*  Chief Brigadier Leggings  */
UPDATE `item_template` SET `BuyPrice` = 33766 WHERE entry=4079;

/*  Flash Rifle  */
UPDATE `item_template` SET `dmg_min1` = 19.0, `dmg_max1` = 36.0 WHERE entry=4086;

/*  Trueshot Bow  */
UPDATE `item_template` SET `BuyPrice` = 43611, `dmg_min1` = 24.0, `dmg_max1` = 45.0 WHERE entry=4087;

/*  Dreadblade  */
UPDATE `item_template` SET `BuyPrice` = 92615 WHERE entry=4088;

/*  Ricochet Blunderbuss  */
UPDATE `item_template` SET `dmg_min1` = 36.0, `dmg_max1` = 67.0 WHERE entry=4089;

/*  Mug O' Hurt  */
UPDATE `item_template` SET `BuyPrice` = 103683 WHERE entry=4090;

/*  Tiger Hunter Gloves  */
UPDATE `item_template` SET `BuyPrice` = 10682 WHERE entry=4107;

/*  Choker of the High Shaman  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=4112;

/*  Darktide Cape  */
UPDATE `item_template` SET `BuyPrice` = 29130, `SellPrice` = 5826 WHERE entry=4114;

/*  Grom'gol Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=4115;

/*  Scorching Sash  */
UPDATE `item_template` SET `BuyPrice` = 15596, `spellid_1` = 9400 WHERE entry=4117;

/*  Robe of Crystal Waters  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 53, `BuyPrice` = 20963, `SellPrice` = 4192, `MaxDurability` = 70, `stat_value1` = 8, `stat_type2` = 6, `stat_value2` = 9, `stat_value3` = 10, `DisenchantID` = 6 WHERE entry=4120;

/*  Gemmed Gloves  */
UPDATE `item_template` SET `BuyPrice` = 6902, `stat_type2` = 3, `stat_value2` = 5, `stat_type3` = 5, `stat_value3` = 6, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=4121;

/*  Bookmaker's Scepter  */
UPDATE `item_template` SET `BuyPrice` = 41922 WHERE entry=4122;

/*  Cap of Harmony  */
UPDATE `item_template` SET `BuyPrice` = 19956 WHERE entry=4124;

/*  Shrapnel Blaster  */
UPDATE `item_template` SET `BuyPrice` = 40368, `dmg_min1` = 23.0, `dmg_max1` = 43.0 WHERE entry=4127;

/*  Silver Spade  */
UPDATE `item_template` SET `BuyPrice` = 72939, `SellPrice` = 14587 WHERE entry=4128;

/*  Collection Plate  */
UPDATE `item_template` SET `BuyPrice` = 47221 WHERE entry=4129;

/*  Nimboya's Mystical Staff  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 112477, `SellPrice` = 22495, `dmg_min1` = 65.0, `dmg_max1` = 99.0, `MaxDurability` = 85, `DisenchantID` = 28, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=4134;

/*  Bloodbone Band  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=4135;

/*  Darkspear Boots  */
UPDATE `item_template` SET `BuyPrice` = 30109, `SellPrice` = 6021 WHERE entry=4136;

/*  Darkspear Shoes  */
UPDATE `item_template` SET `BuyPrice` = 20053 WHERE entry=4137;

/*  Palm Frond Mantle  */
UPDATE `item_template` SET `BuyPrice` = 9375 WHERE entry=4140;

/*  Feathered Mantle  */
UPDATE `item_template` SET `armor` = 77, `MaxDurability` = 60, `DisenchantID` = 0, `RequiredLevel` = 25 WHERE entry=4196;

/*  Berylline Pads  */
UPDATE `item_template` SET `BuyPrice` = 13828 WHERE entry=4197;

/*  Handstitched Leather Belt  */
UPDATE `item_template` SET `BuyPrice` = 174, `SellPrice` = 34 WHERE entry=4237;

/*  Embossed Leather Gloves  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 39, `BuyPrice` = 357, `SellPrice` = 71, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=4239;

/*  Embossed Leather Pants  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=4242;

/*  Fine Leather Tunic  */
UPDATE `item_template` SET `BuyPrice` = 2308 WHERE entry=4243;

/*  Hillman's Leather Vest  */
UPDATE `item_template` SET `BuyPrice` = 3618, `stat_type2` = 6, `stat_value2` = 4 WHERE entry=4244;

/*  Fine Leather Belt  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 38, `BuyPrice` = 625, `SellPrice` = 125, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=4246;

/*  Hillman's Leather Gloves  */
UPDATE `item_template` SET `BuyPrice` = 5248, `stat_type2` = 6, `stat_value2` = 5 WHERE entry=4247;

/*  Hillman's Belt  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 4 WHERE entry=4250;

/*  Hillman's Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 5999, `SellPrice` = 1199, `stat_type2` = 6 WHERE entry=4251;

/*  Toughened Leather Gloves  */
UPDATE `item_template` SET `BuyPrice` = 4810, `stat_type2` = 6, `stat_type3` = 7 WHERE entry=4253;

/*  Barbaric Gloves  */
UPDATE `item_template` SET `stat_value1` = 5, `stat_type2` = 6, `stat_value2` = 4, `stat_type3` = 3, `stat_value3` = 4, `StatsCount` = 3 WHERE entry=4254;

/*  Green Leather Armor  */
UPDATE `item_template` SET `BuyPrice` = 11830, `stat_type2` = 6 WHERE entry=4255;

/*  Guardian Armor  */
UPDATE `item_template` SET `BuyPrice` = 17387, `stat_type2` = 6, `stat_value2` = 9 WHERE entry=4256;

/*  Green Leather Belt  */
UPDATE `item_template` SET `BuyPrice` = 6556, `stat_type2` = 6 WHERE entry=4257;

/*  Guardian Belt  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 6 WHERE entry=4258;

/*  Green Leather Bracers  */
UPDATE `item_template` SET `BuyPrice` = 9672, `stat_type2` = 6 WHERE entry=4259;

/*  Guardian Leather Bracers  */
UPDATE `item_template` SET `stat_type1` = 5, `stat_value1` = 6 WHERE entry=4260;

/*  Solliden's Trousers  */
UPDATE `item_template` SET `BuyPrice` = 159, `SellPrice` = 31 WHERE entry=4261;

/*  Gem-studded Leather Belt  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 6, `spellcooldown_1` = 3600000, `StatsCount` = 2 WHERE entry=4262;

/*  Barbaric Belt  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 11, `spellcooldown_1` = 3600000 WHERE entry=4264;

/*  Dust Bowl  */
UPDATE `item_template` SET `BuyPrice` = 3576 WHERE entry=4290;

/*  Heavy Linen Gloves  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 11, `BuyPrice` = 149, `SellPrice` = 29, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=4307;

/*  Green Linen Bracers  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 9, `BuyPrice` = 225, `SellPrice` = 45, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=4308;

/*  Handstitched Linen Britches  */
UPDATE `item_template` SET `BuyPrice` = 1133 WHERE entry=4309;

/*  Heavy Woolen Gloves  */
UPDATE `item_template` SET `BuyPrice` = 902 WHERE entry=4310;

/*  Soft-soled Linen Boots  */
UPDATE `item_template` SET `BuyPrice` = 1186 WHERE entry=4312;

/*  Red Woolen Boots  */
UPDATE `item_template` SET `BuyPrice` = 2083 WHERE entry=4313;

/*  Double-stitched Woolen Shoulders  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 26, `BuyPrice` = 1659, `SellPrice` = 331, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=4314;

/*  Reinforced Woolen Shoulders  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 27, `BuyPrice` = 2126, `SellPrice` = 425, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 0 WHERE entry=4315;

/*  Heavy Woolen Pants  */
UPDATE `item_template` SET `BuyPrice` = 3715 WHERE entry=4316;

/*  Phoenix Pants  */
UPDATE `item_template` SET `spellid_1` = 7689 WHERE entry=4317;

/*  Azure Silk Gloves  */
UPDATE `item_template` SET `BuyPrice` = 4076, `spellid_1` = 7703 WHERE entry=4319;

/*  Spidersilk Boots  */
UPDATE `item_template` SET `BuyPrice` = 4897, `SellPrice` = 979, `ItemLevel` = 25, `MaxDurability` = 40, `stat_type1` = 6, `stat_value1` = 7, `RequiredLevel` = 20 WHERE entry=4320;

/*  Spider Silk Slippers  */
UPDATE `item_template` SET `BuyPrice` = 5600, `stat_type2` = 3, `stat_value2` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=4321;

/*  Shadow Hood  */
UPDATE `item_template` SET `spellid_1` = 7708 WHERE entry=4323;

/*  Azure Silk Vest  */
UPDATE `item_template` SET `BuyPrice` = 9373, `spellid_1` = 7701 WHERE entry=4324;

/*  Icy Cloak  */
UPDATE `item_template` SET `BuyPrice` = 18941, `frost_res` = 11, `stat_type1` = 6, `stat_value1` = 6, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=4327;

/*  Star Belt  */
UPDATE `item_template` SET `BuyPrice` = 10603 WHERE entry=4329;

/*  Phoenix Gloves  */
UPDATE `item_template` SET `BuyPrice` = 2630, `spellid_1` = 7688 WHERE entry=4331;

/*  Brown Linen Pants  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 16, `BuyPrice` = 301, `SellPrice` = 60, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=4343;

/*  Rough Boomstick  */
UPDATE `item_template` SET `BuyPrice` = 938, `dmg_min1` = 6.0, `dmg_max1` = 13.0 WHERE entry=4362;

/*  Flying Tiger Goggles  */
UPDATE `item_template` SET `BuyPrice` = 2043 WHERE entry=4368;

/*  Deadly Blunderbuss  */
UPDATE `item_template` SET `dmg_min1` = 15.0, `dmg_max1` = 28.0 WHERE entry=4369;

/*  Lovingly Crafted Boomstick  */
UPDATE `item_template` SET `dmg_min1` = 12.0, `dmg_max1` = 23.0 WHERE entry=4372;

/*  Silver-plated Shotgun  */
UPDATE `item_template` SET `dmg_min1` = 19.0, `dmg_max1` = 37.0 WHERE entry=4379;

/*  Moonsight Rifle  */
UPDATE `item_template` SET `BuyPrice` = 15915, `dmg_min1` = 14.0, `dmg_max1` = 26.0 WHERE entry=4383;

/*  Green Tinted Goggles  */
UPDATE `item_template` SET `BuyPrice` = 7052 WHERE entry=4385;

/*  Craftsman's Monocle  */
UPDATE `item_template` SET `RequiredLevel` = 32 WHERE entry=4393;

/*  Ethereal Talisman  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=4430;

/*  Scarecrow Trousers  */
UPDATE `item_template` SET `BuyPrice` = 2861 WHERE entry=4434;

/*  Channeler's Staff  */
UPDATE `item_template` SET `BuyPrice` = 9278 WHERE entry=4437;

/*  Pugilist Bracers  */
UPDATE `item_template` SET `BuyPrice` = 8464, `SellPrice` = 1692 WHERE entry=4438;

/*  Grim Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 17360 WHERE entry=4443;

/*  Blackvenom Blade  */
UPDATE `item_template` SET `BuyPrice` = 17972 WHERE entry=4446;

/*  Cloak of Night  */
UPDATE `item_template` SET `BuyPrice` = 4509, `SellPrice` = 901 WHERE entry=4447;

/*  Husk of Naraxis  */
UPDATE `item_template` SET `BuyPrice` = 9959, `SellPrice` = 1991 WHERE entry=4448;

/*  Talon of Vultros  */
UPDATE `item_template` SET `BuyPrice` = 19001 WHERE entry=4454;

/*  Raptor Hide Harness  */
UPDATE `item_template` SET `BuyPrice` = 15483, `stat_value1` = 13, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=4455;

/*  Raptor Hide Belt  */
UPDATE `item_template` SET `BuyPrice` = 7768, `stat_type1` = 4, `stat_value1` = 6 WHERE entry=4456;

/*  Beaded Raptor Collar  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_type2` = 7, `stat_value2` = 6, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=4463;

/*  Trouncing Boots  */
UPDATE `item_template` SET `BuyPrice` = 11901 WHERE entry=4464;

/*  Ravenwood Bow  */
UPDATE `item_template` SET `dmg_min1` = 17.0, `dmg_max1` = 32.0 WHERE entry=4474;

/*  Beastwalker Robe  */
UPDATE `item_template` SET `stat_type2` = 3, `stat_value2` = 3, `stat_type3` = 6, `stat_value3` = 6, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=4476;

/*  Nefarious Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=4477;

/*  Iridescent Scale Leggings  */
UPDATE `item_template` SET `BuyPrice` = 50883 WHERE entry=4478;

/*  Dwarven Guard Cloak  */
UPDATE `item_template` SET `BuyPrice` = 11112, `SellPrice` = 2222 WHERE entry=4504;

/*  Pit Fighter's Shield  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 1148, `BuyPrice` = 41411, `SellPrice` = 8282, `block` = 18, `MaxDurability` = 85, `stat_value2` = 3, `DisenchantID` = 27 WHERE entry=4507;

/*  Blood-tinged Armor  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 238, `BuyPrice` = 38965, `SellPrice` = 7793, `MaxDurability` = 100, `stat_value1` = 5, `stat_value2` = 15, `DisenchantID` = 7 WHERE entry=4508;

/*  Steel-clasped Bracers  */
UPDATE `item_template` SET `BuyPrice` = 5868 WHERE entry=4534;

/*  Ironforge Memorial Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=4535;

/*  Radiant Silver Bracers  */
UPDATE `item_template` SET `BuyPrice` = 11010 WHERE entry=4545;

/*  Gnomish Zapper  */
UPDATE `item_template` SET `BuyPrice` = 41596, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=4547;

/*  Servomechanic Sledgehammer  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0, `spellid_1` = 7560 WHERE entry=4548;

/*  Seafire Band  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=4549;

/*  Coldwater Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=4550;

/*  Fine Scimitar  */
UPDATE `item_template` SET `BuyPrice` = 185 WHERE entry=4560;

/*  Severing Axe  */
UPDATE `item_template` SET `BuyPrice` = 1491 WHERE entry=4562;

/*  Billy Club  */
UPDATE `item_template` SET `BuyPrice` = 552 WHERE entry=4563;

/*  Spiked Club  */
UPDATE `item_template` SET `BuyPrice` = 3053 WHERE entry=4564;

/*  Simple Dagger  */
UPDATE `item_template` SET `BuyPrice` = 193 WHERE entry=4565;

/*  Sturdy Quarterstaff  */
UPDATE `item_template` SET `BuyPrice` = 3157 WHERE entry=4566;

/*  Merc Sword  */
UPDATE `item_template` SET `BuyPrice` = 5247 WHERE entry=4567;

/*  Grunt Axe  */
UPDATE `item_template` SET `BuyPrice` = 8474, `SellPrice` = 1694 WHERE entry=4568;

/*  Staunch Hammer  */
UPDATE `item_template` SET `BuyPrice` = 3063 WHERE entry=4569;

/*  Birchwood Maul  */
UPDATE `item_template` SET `BuyPrice` = 4611 WHERE entry=4570;

/*  War Knife  */
UPDATE `item_template` SET `BuyPrice` = 4896 WHERE entry=4571;

/*  Light Bow  */
UPDATE `item_template` SET `dmg_min1` = 9.0, `dmg_max1` = 18.0 WHERE entry=4576;

/*  Compact Shotgun  */
UPDATE `item_template` SET `BuyPrice` = 1784, `SellPrice` = 356, `dmg_min1` = 7.0, `dmg_max1` = 14.0 WHERE entry=4577;

/*  Ryedol's Lucky Pick  */
UPDATE `item_template` SET `BuyPrice` = 17, `SellPrice` = 3 WHERE entry=4616;

/*  Grimsteel Cape  */
UPDATE `item_template` SET `BuyPrice` = 13741, `SellPrice` = 2748 WHERE entry=4643;

/*  Warrior's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 118 WHERE entry=4658;

/*  Walking Boots  */
UPDATE `item_template` SET `BuyPrice` = 1622, `stat_type2` = 3 WHERE entry=4660;

/*  Bright Mantle  */
UPDATE `item_template` SET `BuyPrice` = 4645 WHERE entry=4661;

/*  Journeyman's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 123 WHERE entry=4662;

/*  Journeyman's Belt  */
UPDATE `item_template` SET `BuyPrice` = 115 WHERE entry=4663;

/*  Burnt Leather Belt  */
UPDATE `item_template` SET `BuyPrice` = 132 WHERE entry=4666;

/*  Battle Chain Cloak  */
UPDATE `item_template` SET `BuyPrice` = 160 WHERE entry=4668;

/*  Battle Chain Girdle  */
UPDATE `item_template` SET `BuyPrice` = 209, `SellPrice` = 41 WHERE entry=4669;

/*  Tribal Belt  */
UPDATE `item_template` SET `BuyPrice` = 178 WHERE entry=4675;

/*  Spellbinder Belt  */
UPDATE `item_template` SET `BuyPrice` = 307 WHERE entry=4684;

/*  Barbaric Cloth Cloak  */
UPDATE `item_template` SET `BuyPrice` = 336 WHERE entry=4686;

/*  Hunting Cloak  */
UPDATE `item_template` SET `BuyPrice` = 532, `SellPrice` = 106 WHERE entry=4689;

/*  Hunting Belt  */
UPDATE `item_template` SET `BuyPrice` = 356 WHERE entry=4690;

/*  Ceremonial Cloak  */
UPDATE `item_template` SET `BuyPrice` = 344, `SellPrice` = 68 WHERE entry=4692;

/*  Burnished Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 2576 WHERE entry=4694;

/*  Burnished Cloak  */
UPDATE `item_template` SET `BuyPrice` = 1635 WHERE entry=4695;

/*  Seer's Mantle  */
UPDATE `item_template` SET `BuyPrice` = 1508 WHERE entry=4698;

/*  Seer's Belt  */
UPDATE `item_template` SET `BuyPrice` = 1105 WHERE entry=4699;

/*  Inscribed Cloak  */
UPDATE `item_template` SET `BuyPrice` = 1263 WHERE entry=4701;

/*  Lambent Scale Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 7248 WHERE entry=4705;

/*  Bright Belt  */
UPDATE `item_template` SET `BuyPrice` = 2309, `SellPrice` = 461 WHERE entry=4708;

/*  Forest Cloak  */
UPDATE `item_template` SET `BuyPrice` = 2808 WHERE entry=4710;

/*  Glimmering Cloak  */
UPDATE `item_template` SET `BuyPrice` = 5561 WHERE entry=4711;

/*  Glimmering Mail Girdle  */
UPDATE `item_template` SET `BuyPrice` = 6140 WHERE entry=4712;

/*  Emblazoned Cloak  */
UPDATE `item_template` SET `BuyPrice` = 5130 WHERE entry=4715;

/*  Nightsky Mantle  */
UPDATE `item_template` SET `BuyPrice` = 11118 WHERE entry=4718;

/*  Nightsky Cloak  */
UPDATE `item_template` SET `BuyPrice` = 8383 WHERE entry=4719;

/*  Insignia Mantle  */
UPDATE `item_template` SET `BuyPrice` = 14047 WHERE entry=4721;

/*  Insignia Cloak  */
UPDATE `item_template` SET `BuyPrice` = 10591, `SellPrice` = 2118 WHERE entry=4722;

/*  Humbert's Helm  */
UPDATE `item_template` SET `BuyPrice` = 8815 WHERE entry=4724;

/*  Chief Brigadier Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 23680 WHERE entry=4725;

/*  Chief Brigadier Girdle  */
UPDATE `item_template` SET `BuyPrice` = 13955 WHERE entry=4727;

/*  Mistscape Sash  */
UPDATE `item_template` SET `BuyPrice` = 13081 WHERE entry=4736;

/*  Imperial Leather Belt  */
UPDATE `item_template` SET `BuyPrice` = 16471 WHERE entry=4738;

/*  Pulsating Crystalline Shard  */
UPDATE `item_template` SET `Quality` = 2, `DisenchantID` = 8, `spellid_1` = 0, `spelltrigger_1` = 0, `spellcooldown_1` = -1 WHERE entry=4743;

/*  Arcane Runed Bracers  */
UPDATE `item_template` SET `BuyPrice` = 9933 WHERE entry=4744;

/*  War Rider Bracers  */
UPDATE `item_template` SET `BuyPrice` = 16153 WHERE entry=4745;

/*  Blackwood Recurve Bow  */
UPDATE `item_template` SET `BuyPrice` = 675, `dmg_min1` = 7.0, `dmg_max1` = 14.0, `MaxDurability` = 30 WHERE entry=4763;

/*  Enamelled Broadsword  */
UPDATE `item_template` SET `BuyPrice` = 2877 WHERE entry=4765;

/*  Coppercloth Gloves  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 1 WHERE entry=4767;

/*  Harvest Cloak  */
UPDATE `item_template` SET `BuyPrice` = 1324, `SellPrice` = 264 WHERE entry=4771;

/*  Warm Cloak  */
UPDATE `item_template` SET `BuyPrice` = 353, `SellPrice` = 70 WHERE entry=4772;

/*  Heavy Spiked Mace  */
UPDATE `item_template` SET `BuyPrice` = 7350 WHERE entry=4778;

/*  Whispering Vest  */
UPDATE `item_template` SET `BuyPrice` = 2735 WHERE entry=4781;

/*  Solstice Robe  */
UPDATE `item_template` SET `BuyPrice` = 2076 WHERE entry=4782;

/*  Wise Man's Belt  */
UPDATE `item_template` SET `BuyPrice` = 1393 WHERE entry=4786;

/*  Agile Boots  */
UPDATE `item_template` SET `BuyPrice` = 2633 WHERE entry=4788;

/*  Stable Boots  */
UPDATE `item_template` SET `BuyPrice` = 1998 WHERE entry=4789;

/*  Inferno Cloak  */
UPDATE `item_template` SET `BuyPrice` = 4158 WHERE entry=4790;

/*  Spirit Cloak  */
UPDATE `item_template` SET `BuyPrice` = 3279, `SellPrice` = 655 WHERE entry=4792;

/*  Fiery Cloak  */
UPDATE `item_template` SET `BuyPrice` = 4262 WHERE entry=4797;

/*  Heavy Runed Cloak  */
UPDATE `item_template` SET `BuyPrice` = 5832, `SellPrice` = 1166 WHERE entry=4798;

/*  Antiquated Cloak  */
UPDATE `item_template` SET `BuyPrice` = 3042 WHERE entry=4799;

/*  Mighty Chain Pants  */
UPDATE `item_template` SET `BuyPrice` = 6109, `SellPrice` = 1221 WHERE entry=4800;

/*  Boulder Pads  */
UPDATE `item_template` SET `BuyPrice` = 16759, `SellPrice` = 3351 WHERE entry=4810;

/*  Legionnaire's Leggings  */
UPDATE `item_template` SET `BuyPrice` = 7518 WHERE entry=4816;

/*  Guardian Buckler  */
UPDATE `item_template` SET `BuyPrice` = 8320 WHERE entry=4820;

/*  Wizard's Belt  */
UPDATE `item_template` SET `BuyPrice` = 3748 WHERE entry=4827;

/*  Dreamer's Belt  */
UPDATE `item_template` SET `BuyPrice` = 4153 WHERE entry=4829;

/*  Saber Leggings  */
UPDATE `item_template` SET `BuyPrice` = 9474, `SellPrice` = 1894 WHERE entry=4830;

/*  Stalking Pants  */
UPDATE `item_template` SET `BuyPrice` = 7858 WHERE entry=4831;

/*  Mystic Sarong  */
UPDATE `item_template` SET `BuyPrice` = 10497 WHERE entry=4832;

/*  Elite Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 10550 WHERE entry=4835;

/*  Long Bayonet  */
UPDATE `item_template` SET `BuyPrice` = 713 WHERE entry=4840;

/*  Unused Cloth Shoulder B02 Black  */
UPDATE `item_template` SET `armor` = 31, `BuyPrice` = 4238, `MaxDurability` = 45 WHERE entry=4858;

/*  Sleek Feathered Tunic  */
UPDATE `item_template` SET `BuyPrice` = 596 WHERE entry=4861;

/*  Rainwalker Boots  */
UPDATE `item_template` SET `BuyPrice` = 109, `SellPrice` = 21 WHERE entry=4906;

/*  Kodo Hunter's Leggings  */
UPDATE `item_template` SET `BuyPrice` = 1844, `SellPrice` = 368 WHERE entry=4909;

/*  Painted Chain Gloves  */
UPDATE `item_template` SET `BuyPrice` = 38 WHERE entry=4910;

/*  Test Wand JChow  */
UPDATE `item_template` SET `dmg_min1` = 11.0, `dmg_max1` = 21.0, `MaxDurability` = 45, `spellcooldown_1` = -1 WHERE entry=4912;

/*  Painted Chain Belt  */
UPDATE `item_template` SET `BuyPrice` = 35 WHERE entry=4913;

/*  Battleworn Leather Gloves  */
UPDATE `item_template` SET `BuyPrice` = 29, `SellPrice` = 5 WHERE entry=4914;

/*  Soft Wool Boots  */
UPDATE `item_template` SET `BuyPrice` = 35 WHERE entry=4915;

/*  Soft Wool Vest  */
UPDATE `item_template` SET `BuyPrice` = 48 WHERE entry=4916;

/*  Battleworn Chain Leggings  */
UPDATE `item_template` SET `BuyPrice` = 72 WHERE entry=4917;

/*  Battleworn Cape  */
UPDATE `item_template` SET `BuyPrice` = 37 WHERE entry=4920;

/*  Dust-covered Leggings  */
UPDATE `item_template` SET `BuyPrice` = 63 WHERE entry=4921;

/*  Jagged Chain Vest  */
UPDATE `item_template` SET `BuyPrice` = 76 WHERE entry=4922;

/*  Primitive Hatchet  */
UPDATE `item_template` SET `BuyPrice` = 128 WHERE entry=4923;

/*  Primitive Hand Blade  */
UPDATE `item_template` SET `BuyPrice` = 129, `SellPrice` = 25 WHERE entry=4925;

/*  Sandrunner Wristguards  */
UPDATE `item_template` SET `BuyPrice` = 102 WHERE entry=4928;

/*  Hickory Shortbow  */
UPDATE `item_template` SET `BuyPrice` = 671, `dmg_min1` = 5.0, `dmg_max1` = 10.0 WHERE entry=4931;

/*  Seasoned Fighter's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 241, `SellPrice` = 48 WHERE entry=4933;

/*  Wide Metal Girdle  */
UPDATE `item_template` SET `BuyPrice` = 117 WHERE entry=4935;

/*  Dirt-trodden Boots  */
UPDATE `item_template` SET `BuyPrice` = 118 WHERE entry=4936;

/*  Veiled Grips  */
UPDATE `item_template` SET `BuyPrice` = 182 WHERE entry=4940;

/*  Handsewn Cloak  */
UPDATE `item_template` SET `BuyPrice` = 361 WHERE entry=4944;

/*  Lightweight Boots  */
UPDATE `item_template` SET `BuyPrice` = 337 WHERE entry=4946;

/*  Jagged Dagger  */
UPDATE `item_template` SET `BuyPrice` = 1627 WHERE entry=4947;

/*  Orcish Cleaver  */
UPDATE `item_template` SET `BuyPrice` = 8532 WHERE entry=4949;

/*  Nomadic Belt  */
UPDATE `item_template` SET `BuyPrice` = 30 WHERE entry=4954;

/*  Test Totem  */
UPDATE `item_template` SET `spellid_1` = 4975, `spellcharges_1` = -1 WHERE entry=4956;

/*  Sun-beaten Cloak  */
UPDATE `item_template` SET `BuyPrice` = 180, `SellPrice` = 36 WHERE entry=4958;

/*  Dreamwatcher Staff  */
UPDATE `item_template` SET `BuyPrice` = 918 WHERE entry=4961;

/*  Double-layered Gloves  */
UPDATE `item_template` SET `BuyPrice` = 100 WHERE entry=4962;

/*  Thunderhorn Cloak  */
UPDATE `item_template` SET `BuyPrice` = 152, `SellPrice` = 30 WHERE entry=4963;

/*  Bloodhoof Hand Axe  */
UPDATE `item_template` SET `BuyPrice` = 745, `dmg_min1` = 8.0, `dmg_max1` = 16.0, `MaxDurability` = 40 WHERE entry=4965;

/*  Bound Harness  */
UPDATE `item_template` SET `BuyPrice` = 454, `SellPrice` = 90 WHERE entry=4968;

/*  Cliff Runner Boots  */
UPDATE `item_template` SET `BuyPrice` = 320 WHERE entry=4972;

/*  Vigilant Buckler  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 728, `BuyPrice` = 32389, `SellPrice` = 6477, `block` = 16, `MaxDurability` = 85, `stat_value1` = 7, `DisenchantID` = 26 WHERE entry=4975;

/*  Test Proc Wand  */
UPDATE `item_template` SET `spellid_1` = 2607, `spelltrigger_1` = 2, `spellcharges_1` = -1, `spellcooldown_1` = 0 WHERE entry=4985;

/*  Dwarf Captain's Sword  */
UPDATE `item_template` SET `BuyPrice` = 77920 WHERE entry=4987;

/*  Burning Obsidian Band  */
UPDATE `item_template` SET `DisenchantID` = 0, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=4988;

/*  Mage Dragon Robe  */
UPDATE `item_template` SET `armor` = 65, `MaxDurability` = 70, `stat_type1` = 4, `stat_value1` = 7, `stat_type2` = 6, `stat_value2` = 18, `DisenchantID` = 0 WHERE entry=4989;

/*  Scorched Bands  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=4990;

/*  Blood Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=4998;

/*  Azora's Will  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=4999;

/*  Coral Band  */
UPDATE `item_template` SET `stat_type1` = 7, `stat_value1` = 4, `stat_type2` = 5, `stat_value2` = 3, `DisenchantID` = 0, `StatsCount` = 2 WHERE entry=5000;

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
UPDATE `item_template` SET `BuyPrice` = 14775, `stat_type1` = 3, `stat_type2` = 6, `stat_value2` = 9, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=5016;

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

/*  Razormane Backstabber  */
UPDATE `item_template` SET `BuyPrice` = 1238 WHERE entry=5093;

/*  Razormane War Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=5094;

/*  Dark Iron Leather  */
UPDATE `item_template` SET `armor` = 92 WHERE entry=5108;

/*  Rathorian's Cape  */
UPDATE `item_template` SET `BuyPrice` = 1601, `SellPrice` = 320 WHERE entry=5111;

/*  Necklace of Harmony  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5180;

/*  Vibrant Silk Cape  */
UPDATE `item_template` SET `BuyPrice` = 8890 WHERE entry=5181;

/*  Pulsating Hydra Heart  */
UPDATE `item_template` SET `spellid_1` = 7687 WHERE entry=5183;

/*  Rhahk'Zor's Hammer  */
UPDATE `item_template` SET `Quality` = 1, `BuyPrice` = 5407, `SellPrice` = 1081, `dmg_min1` = 30.0, `dmg_max1` = 46.0, `bonding` = 0, `MaxDurability` = 65, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=5187;

/*  Thief's Blade  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 9015, `SellPrice` = 1803, `dmg_min1` = 13.0, `dmg_max1` = 25.0, `MaxDurability` = 60, `stat_value1` = 3, `DisenchantID` = 23 WHERE entry=5192;

/*  Cape of the Brotherhood  */
UPDATE `item_template` SET `BuyPrice` = 4700 WHERE entry=5193;

/*  Gold-flecked Gloves  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 22, `BuyPrice` = 1823, `SellPrice` = 364, `stat_type1` = 4, `stat_value1` = 4, `stat_type2` = 5, `stat_value2` = 3, `DisenchantID` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=5195;

/*  Smite's Reaver  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 9154, `SellPrice` = 1830, `dmg_min1` = 14.0, `dmg_max1` = 28.0, `MaxDurability` = 60, `stat_type2` = 6, `stat_value2` = 1, `stat_value3` = 1, `DisenchantID` = 23 WHERE entry=5196;

/*  Cookie's Tenderizer  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 7989, `SellPrice` = 1597, `dmg_min1` = 20.0, `dmg_max1` = 39.0, `MaxDurability` = 60, `stat_value1` = 3, `DisenchantID` = 23 WHERE entry=5197;

/*  Cookie's Stirring Rod  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5198;

/*  Smelting Pants  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 69, `BuyPrice` = 4024, `SellPrice` = 804, `MaxDurability` = 55, `stat_value1` = 5, `stat_type2` = 6, `stat_value2` = 4, `DisenchantID` = 3 WHERE entry=5199;

/*  Impaling Harpoon  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 11615, `SellPrice` = 2323, `dmg_min1` = 27.0, `dmg_max1` = 42.0, `MaxDurability` = 70, `stat_value1` = 7, `DisenchantID` = 23 WHERE entry=5200;

/*  Corsair's Overshirt  */
UPDATE `item_template` SET `BuyPrice` = 5737 WHERE entry=5202;

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
UPDATE `item_template` SET `dmg_min1` = 5.0, `dmg_max1` = 11.0, `bonding` = 1, `MaxDurability` = 25, `RequiredLevel` = 0 WHERE entry=5235;

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
UPDATE `item_template` SET `Quality` = 1, `armor` = 55, `BuyPrice` = 1544, `SellPrice` = 308, `bonding` = 0, `MaxDurability` = 40, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=5254;

/*  Quilboar Tomahawk  */
UPDATE `item_template` SET `BuyPrice` = 3426, `dmg_min1` = 13.0, `dmg_max1` = 26.0, `MaxDurability` = 50 WHERE entry=5255;

/*  Kovork's Rattle  */
UPDATE `item_template` SET `BuyPrice` = 36136 WHERE entry=5256;

/*  Eye of Adaegus  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=5266;

/*  Scarlet Kris  */
UPDATE `item_template` SET `BuyPrice` = 299255, `SellPrice` = 59851, `DisenchantID` = 49 WHERE entry=5267;

/*  Rose Mantle  */
UPDATE `item_template` SET `BuyPrice` = 5018 WHERE entry=5274;

/*  Binding Girdle  */
UPDATE `item_template` SET `BuyPrice` = 879, `SellPrice` = 175 WHERE entry=5275;

/*  Harpy Skinner  */
UPDATE `item_template` SET `BuyPrice` = 7184, `SellPrice` = 1436 WHERE entry=5279;

/*  Gloves of the Moon  */
UPDATE `item_template` SET `BuyPrice` = 1795 WHERE entry=5299;

/*  Cobalt Buckler  */
UPDATE `item_template` SET `BuyPrice` = 4647 WHERE entry=5302;

/*  Privateer Musket  */
UPDATE `item_template` SET `BuyPrice` = 5190, `dmg_min1` = 12.0, `dmg_max1` = 24.0 WHERE entry=5309;

/*  Sea Dog Britches  */
UPDATE `item_template` SET `BuyPrice` = 2778, `stat_type1` = 4, `stat_type2` = 6, `stat_value2` = 4, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=5310;

/*  Riveted Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 2099, `SellPrice` = 419 WHERE entry=5312;

/*  Totemic Clan Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=5313;

/*  Boar Hunter's Cape  */
UPDATE `item_template` SET `BuyPrice` = 2643, `SellPrice` = 528 WHERE entry=5314;

/*  Timberland Armguards  */
UPDATE `item_template` SET `BuyPrice` = 1069, `SellPrice` = 213 WHERE entry=5315;

/*  Bashing Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 1615 WHERE entry=5319;

/*  Padded Lamellar Boots  */
UPDATE `item_template` SET `BuyPrice` = 1862 WHERE entry=5320;

/*  Elegant Shortsword  */
UPDATE `item_template` SET `BuyPrice` = 7423 WHERE entry=5321;

/*  Engineer's Hammer  */
UPDATE `item_template` SET `BuyPrice` = 3881 WHERE entry=5324;

/*  Welding Shield  */
UPDATE `item_template` SET `BuyPrice` = 2493 WHERE entry=5325;

/*  Flaring Baton  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5326;

/*  Greasy Tinker's Pants  */
UPDATE `item_template` SET `BuyPrice` = 2595 WHERE entry=5327;

/*  Cauldron Stirrer  */
UPDATE `item_template` SET `BuyPrice` = 4596, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=5340;

/*  Spore-covered Tunic  */
UPDATE `item_template` SET `BuyPrice` = 1844, `SellPrice` = 368 WHERE entry=5341;

/*  Barkeeper's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 2310, `SellPrice` = 462 WHERE entry=5343;

/*  Orcish Battle Bow  */
UPDATE `item_template` SET `dmg_min1` = 7.0, `dmg_max1` = 14.0 WHERE entry=5346;

/*  Pestilent Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5347;

/*  Bounty Hunter's Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=5351;

/*  Beastmaster's Girdle  */
UPDATE `item_template` SET `BuyPrice` = 4738 WHERE entry=5355;

/*  Branding Rod  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5356;

/*  Ward of the Vale  */
UPDATE `item_template` SET `BuyPrice` = 11107 WHERE entry=5357;

/*  Archery Training Gloves  */
UPDATE `item_template` SET `BuyPrice` = 31 WHERE entry=5394;

/*  Serpent's Shoulders  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 59, `BuyPrice` = 2345, `SellPrice` = 469, `bonding` = 0, `MaxDurability` = 45, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=5404;

/*  Draped Cloak  */
UPDATE `item_template` SET `BuyPrice` = 36 WHERE entry=5405;

/*  Boahn's Fang  */
UPDATE `item_template` SET `BuyPrice` = 10421, `stat_type2` = 6 WHERE entry=5423;

/*  Runescale Girdle  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 94, `BuyPrice` = 2099, `SellPrice` = 419, `MaxDurability` = 30, `stat_value1` = 5, `DisenchantID` = 2 WHERE entry=5425;

/*  Miner's Cape  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 16, `BuyPrice` = 2740, `SellPrice` = 548, `stat_value1` = 3, `DisenchantID` = 2 WHERE entry=5444;

/*  Dirtwood Belt  */
UPDATE `item_template` SET `BuyPrice` = 138 WHERE entry=5458;

/*  Defender Axe  */
UPDATE `item_template` SET `BuyPrice` = 2361 WHERE entry=5459;

/*  Mana Agate  */
UPDATE `item_template` SET `spellid_1` = 5405, `spellcharges_1` = -1, `spellcooldown_1` = -1, `spellcategorycooldown_1` = 120000, `spellcategory_1` = 1153, `spellid_2` = 0, `spellcharges_2` = 0, `spellcategorycooldown_2` = 0, `spellcategory_2` = 0, `spellcooldown_3` = -1, `spellcategorycooldown_3` = -1, `spellcooldown_4` = -1, `spellcategorycooldown_4` = -1, `RequiredLevel` = 23 WHERE entry=5514;

/*  Iridescent Hammer  */
UPDATE `item_template` SET `BuyPrice` = 18469, `SellPrice` = 3693, `dmg_min1` = 18.0, `dmg_max1` = 34.0, `stat_type1` = 4, `stat_type2` = 7, `stat_value2` = 3, `delay` = 1800 WHERE entry=5541;

/*  Pearl-clasped Cloak  */
UPDATE `item_template` SET `BuyPrice` = 1852 WHERE entry=5542;

/*  Fast Test Dagger  */
UPDATE `item_template` SET `dmg_min1` = 10.0, `dmg_max1` = 11.0, `MaxDurability` = 55 WHERE entry=5549;

/*  Fast Test Gun  */
UPDATE `item_template` SET `BuyPrice` = 96662, `SellPrice` = 19332, `dmg_min1` = 9.0, `dmg_max1` = 10.0, `MaxDurability` = 65 WHERE entry=5550;

/*  Fast Test 1H Sword  */
UPDATE `item_template` SET `dmg_min1` = 10.0, `dmg_max1` = 11.0, `MaxDurability` = 75 WHERE entry=5555;

/*  Fast Test Wand  */
UPDATE `item_template` SET `dmg_min1` = 10.0, `dmg_max1` = 10.0, `MaxDurability` = 55, `spellcooldown_1` = -1 WHERE entry=5560;

/*  Thistlewood Blade  */
UPDATE `item_template` SET `BuyPrice` = 130 WHERE entry=5586;

/*  Cord Bracers  */
UPDATE `item_template` SET `BuyPrice` = 179, `SellPrice` = 35 WHERE entry=5590;

/*  Rain-spotted Cape  */
UPDATE `item_template` SET `BuyPrice` = 338, `SellPrice` = 67 WHERE entry=5591;

/*  Shackled Girdle  */
UPDATE `item_template` SET `BuyPrice` = 271 WHERE entry=5592;

/*  Crag Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5593;

/*  Ashwood Bow  */
UPDATE `item_template` SET `BuyPrice` = 708, `dmg_min1` = 5.0, `dmg_max1` = 11.0 WHERE entry=5596;

/*  Elven Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5604;

/*  Pruning Knife  */
UPDATE `item_template` SET `BuyPrice` = 750 WHERE entry=5605;

/*  Gardening Gloves  */
UPDATE `item_template` SET `BuyPrice` = 115 WHERE entry=5606;

/*  Ivy Cuffs  */
UPDATE `item_template` SET `BuyPrice` = 363 WHERE entry=5612;

/*  Gutwrencher  */
UPDATE `item_template` SET `BuyPrice` = 113690 WHERE entry=5616;

/*  Scout's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 430, `SellPrice` = 86 WHERE entry=5618;

/*  Clergy Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=5622;

/*  Circlet of the Order  */
UPDATE `item_template` SET `BuyPrice` = 14634, `SellPrice` = 2926, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=5624;

/*  Skullchipper  */
UPDATE `item_template` SET `BuyPrice` = 8587 WHERE entry=5626;

/*  Hammerfist Gloves  */
UPDATE `item_template` SET `BuyPrice` = 1736 WHERE entry=5629;

/*  Barbaric Harness  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 101, `BuyPrice` = 13694, `SellPrice` = 2738, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 0 WHERE entry=5739;

/*  Gemstone Dagger  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=5742;

/*  Prismstone Ring  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=5743;

/*  Pale Skinner  */
UPDATE `item_template` SET `RandomProperty` = 0 WHERE entry=5744;

/*  Centaur Longbow  */
UPDATE `item_template` SET `BuyPrice` = 3046, `dmg_min1` = 9.0, `dmg_max1` = 18.0, `MaxDurability` = 40 WHERE entry=5748;

/*  Scythe Axe  */
UPDATE `item_template` SET `BuyPrice` = 13321 WHERE entry=5749;

/*  Warchief's Girdle  */
UPDATE `item_template` SET `BuyPrice` = 3208 WHERE entry=5750;

/*  Webwing Cloak  */
UPDATE `item_template` SET `BuyPrice` = 5140, `SellPrice` = 1028 WHERE entry=5751;

/*  Wolfpack Medallion  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5754;

/*  Hardwood Cudgel  */
UPDATE `item_template` SET `BuyPrice` = 6816 WHERE entry=5757;

/*  Violet Robes  */
UPDATE `item_template` SET `BuyPrice` = 221 WHERE entry=5767;

/*  Robes of Arcana  */
UPDATE `item_template` SET `BuyPrice` = 9037 WHERE entry=5770;

/*  Primitive Walking Stick  */
UPDATE `item_template` SET `BuyPrice` = 151 WHERE entry=5778;

/*  Murloc Scale Belt  */
UPDATE `item_template` SET `stat_type2` = 4, `stat_value2` = 2 WHERE entry=5780;

/*  Murloc Scale Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 3008, `stat_type1` = 4, `stat_value1` = 5 WHERE entry=5781;

/*  Thick Murloc Armor  */
UPDATE `item_template` SET `BuyPrice` = 16055, `stat_type1` = 4, `stat_value1` = 9 WHERE entry=5782;

/*  Murloc Scale Bracers  */
UPDATE `item_template` SET `BuyPrice` = 11581, `stat_type2` = 4, `stat_value2` = 5 WHERE entry=5783;

/*  Emil's Brand  */
UPDATE `item_template` SET `BuyPrice` = 35439, `SellPrice` = 7087 WHERE entry=5813;

/*  Snapbrook Armor  */
UPDATE `item_template` SET `BuyPrice` = 11756 WHERE entry=5814;

/*  Lunaris Bow  */
UPDATE `item_template` SET `dmg_min1` = 23.0, `dmg_max1` = 43.0 WHERE entry=5817;

/*  Moonbeam Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=5818;

/*  Sunblaze Coif  */
UPDATE `item_template` SET `stat_type1` = 6 WHERE entry=5819;

/*  Faerie Mantle  */
UPDATE `item_template` SET `BuyPrice` = 8114, `SellPrice` = 1622 WHERE entry=5820;

/*  Darkstalker Boots  */
UPDATE `item_template` SET `armor` = 58, `MaxDurability` = 40 WHERE entry=5821;

/*  Hedgeseed Gauntlets  */
UPDATE `item_template` SET `armor` = 112, `BuyPrice` = 3613, `MaxDurability` = 30 WHERE entry=5822;

/*  Ring of Uber Resists (TEST)  */
UPDATE `item_template` SET `fire_res` = 315, `nature_res` = 315, `frost_res` = 315, `shadow_res` = 315, `arcane_res` = 315, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `stat_type4` = 0, `stat_value4` = 0, `stat_type5` = 0, `stat_value5` = 0, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `StatsCount` = 5 WHERE entry=5828;

/*  Animal Skin Belt  */
UPDATE `item_template` SET `BuyPrice` = 99, `SellPrice` = 19 WHERE entry=5936;

/*  Sewing Gloves  */
UPDATE `item_template` SET `BuyPrice` = 100 WHERE entry=5939;

/*  Bone Buckler  */
UPDATE `item_template` SET `BuyPrice` = 769, `SellPrice` = 153 WHERE entry=5940;

/*  Brass Scale Pants  */
UPDATE `item_template` SET `BuyPrice` = 578 WHERE entry=5941;

/*  Rift Bracers  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 80, `BuyPrice` = 4202, `SellPrice` = 840, `MaxDurability` = 30, `stat_value1` = 5, `DisenchantID` = 3 WHERE entry=5943;

/*  Greaves of the People's Militia  */
UPDATE `item_template` SET `BuyPrice` = 1655 WHERE entry=5944;

/*  Blacksmith Hammer  */
UPDATE `item_template` SET `dmg_min1` = 2.0, `dmg_max1` = 3.0 WHERE entry=5956;

/*  Handstitched Leather Vest  */
UPDATE `item_template` SET `BuyPrice` = 200 WHERE entry=5957;

/*  Fine Leather Pants  */
UPDATE `item_template` SET `BuyPrice` = 4145, `stat_type2` = 6, `stat_value2` = 4 WHERE entry=5958;

/*  Guardian Pants  */
UPDATE `item_template` SET `BuyPrice` = 13972, `stat_type2` = 6, `stat_value2` = 8 WHERE entry=5962;

/*  Barbaric Leggings  */
UPDATE `item_template` SET `stat_value1` = 7, `stat_type2` = 6, `stat_value2` = 7, `stat_value3` = 7 WHERE entry=5963;

/*  Barbaric Shoulders  */
UPDATE `item_template` SET `stat_value1` = 6, `stat_type2` = 6, `stat_type3` = 3, `stat_value3` = 5, `StatsCount` = 3 WHERE entry=5964;

/*  Guardian Cloak  */
UPDATE `item_template` SET `stat_type2` = 5, `stat_value2` = 5 WHERE entry=5965;

/*  Guardian Gloves  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 63, `BuyPrice` = 6873, `SellPrice` = 1374, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 0 WHERE entry=5966;

/*  Girdle of Nobility  */
UPDATE `item_template` SET `BuyPrice` = 1045 WHERE entry=5967;

/*  Rugged Boots  */
UPDATE `item_template` SET `armor` = 48, `MaxDurability` = 30 WHERE entry=5968;

/*  Regent's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 3908, `SellPrice` = 781 WHERE entry=5969;

/*  Serpent Gloves  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 23, `BuyPrice` = 2092, `SellPrice` = 418, `stat_type1` = 3, `stat_value1` = 4, `stat_type2` = 5, `stat_value2` = 4, `DisenchantID` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=5970;

/*  Feathered Cape  */
UPDATE `item_template` SET `BuyPrice` = 5681, `SellPrice` = 1136 WHERE entry=5971;

/*  Golden Scale Bracers  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 91, `BuyPrice` = 8247, `SellPrice` = 1649, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 0 WHERE entry=6040;

/*  Nomadic Vest  */
UPDATE `item_template` SET `BuyPrice` = 65 WHERE entry=6059;

/*  Tapered Pants  */
UPDATE `item_template` SET `BuyPrice` = 47 WHERE entry=6076;

/*  Stormwind Guard Leggings  */
UPDATE `item_template` SET `BuyPrice` = 1454, `SellPrice` = 290 WHERE entry=6084;

/*  Chausses of Westfall  */
UPDATE `item_template` SET `BuyPrice` = 8639, `SellPrice` = 1727 WHERE entry=6087;

/*  Black Whelp Boots  */
UPDATE `item_template` SET `BuyPrice` = 2104, `SellPrice` = 420 WHERE entry=6092;

/*  Piercing Axe  */
UPDATE `item_template` SET `BuyPrice` = 6393 WHERE entry=6094;

/*  Apprentice's Robe  */
UPDATE `item_template` SET `MaxDurability` = 35 WHERE entry=6116;

/*  Recruit's Boots  */
UPDATE `item_template` SET `BuyPrice` = 4 WHERE entry=6122;

/*  Thug Boots  */
UPDATE `item_template` SET `BuyPrice` = 4 WHERE entry=6138;

/*  Twain Random Sword  */
UPDATE `item_template` SET `dmg_min1` = 50.0, `dmg_max1` = 100.0 WHERE entry=6174;

/*  Ironwrought Bracers  */
UPDATE `item_template` SET `BuyPrice` = 348 WHERE entry=6177;

/*  Privateer's Cape  */
UPDATE `item_template` SET `BuyPrice` = 2782, `SellPrice` = 556 WHERE entry=6179;

/*  Bear Shawl  */
UPDATE `item_template` SET `BuyPrice` = 47, `SellPrice` = 9 WHERE entry=6185;

/*  Trogg Slicer  */
UPDATE `item_template` SET `BuyPrice` = 6864, `SellPrice` = 1372 WHERE entry=6186;

/*  Dwarven Defender  */
UPDATE `item_template` SET `BuyPrice` = 3066, `spellcooldown_1` = -1 WHERE entry=6187;

/*  Mud Stompers  */
UPDATE `item_template` SET `BuyPrice` = 1525 WHERE entry=6188;

/*  Kimbra Boots  */
UPDATE `item_template` SET `BuyPrice` = 3079, `SellPrice` = 615, `stat_type1` = 3, `stat_value1` = 4, `stat_type2` = 6, `stat_value2` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=6191;

/*  Barreling Reaper  */
UPDATE `item_template` SET `BuyPrice` = 26543 WHERE entry=6194;

/*  Black Widow Band  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=6199;

/*  Garneg's War Belt  */
UPDATE `item_template` SET `BuyPrice` = 6117 WHERE entry=6200;

/*  Fingerless Gloves  */
UPDATE `item_template` SET `BuyPrice` = 179, `SellPrice` = 35 WHERE entry=6202;

/*  Thuggish Shield  */
UPDATE `item_template` SET `BuyPrice` = 608 WHERE entry=6203;

/*  Tribal Worg Helm  */
UPDATE `item_template` SET `BuyPrice` = 10327 WHERE entry=6204;

/*  Burrowing Shovel  */
UPDATE `item_template` SET `BuyPrice` = 4613 WHERE entry=6205;

/*  Rock Chipper  */
UPDATE `item_template` SET `BuyPrice` = 2777 WHERE entry=6206;

/*  Heavy Copper Maul  */
UPDATE `item_template` SET `Quality` = 1, `BuyPrice` = 2978, `SellPrice` = 595, `dmg_min1` = 21.0, `dmg_max1` = 32.0, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 0 WHERE entry=6214;

/*  Balanced Fighting Stick  */
UPDATE `item_template` SET `BuyPrice` = 3009, `SellPrice` = 601 WHERE entry=6215;

/*  Arclight Spanner  */
UPDATE `item_template` SET `dmg_min1` = 5.0, `dmg_max1` = 8.0 WHERE entry=6219;

/*  Meteor Shard  */
UPDATE `item_template` SET `RequiredLevel` = 24 WHERE entry=6220;

/*  Crest of Darkshire  */
UPDATE `item_template` SET `BuyPrice` = 23986 WHERE entry=6223;

/*  Bloody Apron  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 37, `BuyPrice` = 4452, `SellPrice` = 890, `MaxDurability` = 65, `stat_value1` = 8, `DisenchantID` = 3 WHERE entry=6226;

/*  Brown Linen Robe  */
UPDATE `item_template` SET `BuyPrice` = 491 WHERE entry=6238;

/*  White Linen Robe  */
UPDATE `item_template` SET `BuyPrice` = 496 WHERE entry=6241;

/*  Green Woolen Robe  */
UPDATE `item_template` SET `BuyPrice` = 2228, `DisenchantID` = 0 WHERE entry=6243;

/*  Blue Overalls  */
UPDATE `item_template` SET `BuyPrice` = 2947, `stat_type1` = 4, `stat_type2` = 7, `stat_value2` = 4, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=6263;

/*  Greater Adept's Robe  */
UPDATE `item_template` SET `BuyPrice` = 4420 WHERE entry=6264;

/*  Pioneer Trousers  */
UPDATE `item_template` SET `BuyPrice` = 966 WHERE entry=6269;

/*  Sacred Burial Trousers  */
UPDATE `item_template` SET `BuyPrice` = 11219, `SellPrice` = 2243, `stat_type1` = 4, `stat_value1` = 3, `stat_type3` = 6, `stat_value3` = 9, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=6282;

/*  Wolfmaster Cape  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 20, `BuyPrice` = 6343, `SellPrice` = 1268, `stat_type1` = 7, `stat_value1` = 2, `stat_value2` = 4, `DisenchantID` = 4, `RequiredLevel` = 22 WHERE entry=6314;

/*  Steelarrow Crossbow  */
UPDATE `item_template` SET `dmg_min1` = 29.0, `dmg_max1` = 45.0 WHERE entry=6315;

/*  Odo's Ley Staff  */
UPDATE `item_template` SET `BuyPrice` = 24014, `SellPrice` = 4802 WHERE entry=6318;

/*  Girdle of the Blindwatcher  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 49, `BuyPrice` = 4016, `SellPrice` = 803, `MaxDurability` = 30, `stat_value1` = 3, `stat_value2` = 5, `DisenchantID` = 4, `RequiredLevel` = 21 WHERE entry=6319;

/*  Commander's Crest  */
UPDATE `item_template` SET `stat_type1` = 6, `spellcooldown_1` = -1, `RequiredLevel` = 23 WHERE entry=6320;

/*  Silverlaine's Family Seal  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=6321;

/*  Baron's Scepter  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 13058, `SellPrice` = 2611, `dmg_min1` = 21.0, `dmg_max1` = 40.0, `MaxDurability` = 65, `stat_value1` = 4, `DisenchantID` = 23, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=6323;

/*  Robes of Arugal  */
UPDATE `item_template` SET `BuyPrice` = 9463, `stat_value1` = 10, `stat_type4` = 3, `stat_value4` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `RequiredLevel` = 24, `StatsCount` = 4 WHERE entry=6324;

/*  The Pacifier  */
UPDATE `item_template` SET `BuyPrice` = 64118 WHERE entry=6327;

/*  Howling Blade  */
UPDATE `item_template` SET `BuyPrice` = 47333 WHERE entry=6331;

/*  Black Pearl Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=6332;

/*  Grizzled Boots  */
UPDATE `item_template` SET `BuyPrice` = 7905 WHERE entry=6335;

/*  Infantry Tunic  */
UPDATE `item_template` SET `BuyPrice` = 1526 WHERE entry=6336;

/*  Fenrus' Hide  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 20, `BuyPrice` = 4375, `SellPrice` = 875, `stat_value1` = 4, `stat_value2` = 2, `DisenchantID` = 4, `RequiredLevel` = 21 WHERE entry=6340;

/*  Eerie Stable Lantern  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 3, `DisenchantID` = 22, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=6341;

/*  Rough Bronze Boots  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 106, `BuyPrice` = 1478, `SellPrice` = 295, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 0 WHERE entry=6350;

/*  Strong Fishing Pole  */
UPDATE `item_template` SET `BuyPrice` = 901 WHERE entry=6365;

/*  Darkwood Fishing Pole  */
UPDATE `item_template` SET `BuyPrice` = 5330 WHERE entry=6366;

/*  Seer's Cape  */
UPDATE `item_template` SET `BuyPrice` = 1463 WHERE entry=6378;

/*  Inscribed Leather Belt  */
UPDATE `item_template` SET `BuyPrice` = 1223 WHERE entry=6379;

/*  Inscribed Buckler  */
UPDATE `item_template` SET `BuyPrice` = 3271, `spellcooldown_1` = -1 WHERE entry=6380;

/*  Glimmering Mail Legguards  */
UPDATE `item_template` SET `BuyPrice` = 13462 WHERE entry=6386;

/*  Glimmering Mail Bracers  */
UPDATE `item_template` SET `BuyPrice` = 6141 WHERE entry=6387;

/*  Glimmering Mail Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 10216 WHERE entry=6388;

/*  Glimmering Mail Coif  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=6389;

/*  Belt of Arugal  */
UPDATE `item_template` SET `BuyPrice` = 5003, `stat_type3` = 3, `stat_value3` = 2, `spellid_1` = 0, `spelltrigger_1` = 0, `RequiredLevel` = 24, `StatsCount` = 3 WHERE entry=6392;

/*  Silver-thread Gloves  */
UPDATE `item_template` SET `BuyPrice` = 3803 WHERE entry=6393;

/*  Silver-thread Boots  */
UPDATE `item_template` SET `BuyPrice` = 5205 WHERE entry=6394;

/*  Silver-thread Amice  */
UPDATE `item_template` SET `BuyPrice` = 6321 WHERE entry=6395;

/*  Emblazoned Chestpiece  */
UPDATE `item_template` SET `BuyPrice` = 14073 WHERE entry=6396;

/*  Emblazoned Gloves  */
UPDATE `item_template` SET `BuyPrice` = 4929, `SellPrice` = 985 WHERE entry=6397;

/*  Emblazoned Belt  */
UPDATE `item_template` SET `BuyPrice` = 4948 WHERE entry=6398;

/*  Emblazoned Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 8196 WHERE entry=6399;

/*  Mail Combat Leggings  */
UPDATE `item_template` SET `BuyPrice` = 23496 WHERE entry=6402;

/*  Mail Combat Armguards  */
UPDATE `item_template` SET `BuyPrice` = 8859, `SellPrice` = 1771 WHERE entry=6403;

/*  Nightsky Trousers  */
UPDATE `item_template` SET `BuyPrice` = 15839, `SellPrice` = 3167, `stat_type2` = 3, `stat_value2` = 5, `stat_type3` = 6, `stat_value3` = 10, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=6405;

/*  Insignia Gloves  */
UPDATE `item_template` SET `BuyPrice` = 8271 WHERE entry=6408;

/*  Insignia Bracers  */
UPDATE `item_template` SET `BuyPrice` = 7574, `SellPrice` = 1514 WHERE entry=6410;

/*  Aurora Robe  */
UPDATE `item_template` SET `BuyPrice` = 22825 WHERE entry=6415;

/*  Glyphed Mitts  */
UPDATE `item_template` SET `BuyPrice` = 11497 WHERE entry=6419;

/*  Glyphed Boots  */
UPDATE `item_template` SET `BuyPrice` = 18698 WHERE entry=6420;

/*  Glyphed Belt  */
UPDATE `item_template` SET `BuyPrice` = 11585 WHERE entry=6421;

/*  Blackforge Girdle  */
UPDATE `item_template` SET `BuyPrice` = 22393 WHERE entry=6425;

/*  Blackforge Bracers  */
UPDATE `item_template` SET `BuyPrice` = 20811 WHERE entry=6426;

/*  Mistscape Robe  */
UPDATE `item_template` SET `BuyPrice` = 35081 WHERE entry=6427;

/*  Mistscape Gloves  */
UPDATE `item_template` SET `BuyPrice` = 13975, `stat_type2` = 3, `stat_value2` = 4, `stat_type3` = 5, `stat_value3` = 9, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=6428;

/*  Imperial Leather Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 45493 WHERE entry=6430;

/*  Imperial Leather Boots  */
UPDATE `item_template` SET `BuyPrice` = 27181 WHERE entry=6431;

/*  Imperial Cloak  */
UPDATE `item_template` SET `BuyPrice` = 18708 WHERE entry=6432;

/*  Worn Turtle Shell Shield  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 412, `BuyPrice` = 2810, `SellPrice` = 562, `block` = 6, `bonding` = 0, `MaxDurability` = 65, `DisenchantID` = 0 WHERE entry=6447;

/*  Tail Spike  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 9714, `SellPrice` = 1942, `dmg_min1` = 14.0, `dmg_max1` = 26.0, `MaxDurability` = 45, `stat_value1` = 2, `stat_value2` = 2, `DisenchantID` = 23 WHERE entry=6448;

/*  Glowing Lizardscale Cloak  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=6449;

/*  Savage Trodders  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 122, `BuyPrice` = 4674, `SellPrice` = 934, `MaxDurability` = 45, `stat_value1` = 6, `DisenchantID` = 3 WHERE entry=6459;

/*  Cobrahn's Grasp  */
UPDATE `item_template` SET `BuyPrice` = 4222 WHERE entry=6460;

/*  Slime-encrusted Pads  */
UPDATE `item_template` SET `spellid_1` = 18764, `RequiredLevel` = 22 WHERE entry=6461;

/*  Deep Fathom Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `RequiredLevel` = 21 WHERE entry=6463;

/*  Robe of the Moccasin  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 36, `BuyPrice` = 3843, `SellPrice` = 768, `MaxDurability` = 60, `stat_type1` = 4, `stat_value1` = 2, `stat_value2` = 2, `stat_type3` = 6, `stat_value3` = 6, `DisenchantID` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=6465;

/*  Deviate Scale Cloak  */
UPDATE `item_template` SET `BuyPrice` = 2067, `SellPrice` = 413 WHERE entry=6466;

/*  Deviate Scale Gloves  */
UPDATE `item_template` SET `BuyPrice` = 2103 WHERE entry=6467;

/*  Deviate Scale Belt  */
UPDATE `item_template` SET `stat_type3` = 6 WHERE entry=6468;

/*  Venomstrike  */
UPDATE `item_template` SET `dmg_min1` = 16.0, `dmg_max1` = 30.0 WHERE entry=6469;

/*  Armor of the Fang  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 82, `BuyPrice` = 5053, `SellPrice` = 1010, `MaxDurability` = 75, `stat_value1` = 2, `stat_type2` = 6, `stat_value2` = 7, `DisenchantID` = 3 WHERE entry=6473;

/*  Grassland Sash  */
UPDATE `item_template` SET `BuyPrice` = 1372 WHERE entry=6477;

/*  Rat Stompers  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=6478;

/*  Slick Deviate Leggings  */
UPDATE `item_template` SET `BuyPrice` = 3566 WHERE entry=6480;

/*  Dagmire Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 3209, `SellPrice` = 641 WHERE entry=6481;

/*  Firewalker Boots  */
UPDATE `item_template` SET `BuyPrice` = 3640, `stat_type1` = 4, `stat_value1` = 2, `stat_type3` = 5, `stat_value3` = 1, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=6482;

/*  Harlequin Robes  */
UPDATE `item_template` SET `BuyPrice` = 3814, `SellPrice` = 762 WHERE entry=6503;

/*  Wingblade  */
UPDATE `item_template` SET `BuyPrice` = 14667 WHERE entry=6504;

/*  Infantry Belt  */
UPDATE `item_template` SET `BuyPrice` = 224, `SellPrice` = 44 WHERE entry=6509;

/*  Infantry Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 272 WHERE entry=6510;

/*  Journeyman's Robe  */
UPDATE `item_template` SET `BuyPrice` = 608 WHERE entry=6511;

/*  Disciple's Robe  */
UPDATE `item_template` SET `BuyPrice` = 955 WHERE entry=6512;

/*  Disciple's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 212 WHERE entry=6514;

/*  Pioneer Boots  */
UPDATE `item_template` SET `BuyPrice` = 351 WHERE entry=6518;

/*  Pioneer Bracers  */
UPDATE `item_template` SET `BuyPrice` = 180 WHERE entry=6519;

/*  Pioneer Cloak  */
UPDATE `item_template` SET `BuyPrice` = 209, `SellPrice` = 41 WHERE entry=6520;

/*  Pioneer Gloves  */
UPDATE `item_template` SET `BuyPrice` = 236 WHERE entry=6521;

/*  Studded Leather Harness  */
UPDATE `item_template` SET `BuyPrice` = 2870 WHERE entry=6524;

/*  Grunt's Harness  */
UPDATE `item_template` SET `BuyPrice` = 5167 WHERE entry=6525;

/*  Ancestral Robe  */
UPDATE `item_template` SET `BuyPrice` = 937 WHERE entry=6527;

/*  Spellbinder Robe  */
UPDATE `item_template` SET `BuyPrice` = 1792 WHERE entry=6528;

/*  Barbaric Cloth Robe  */
UPDATE `item_template` SET `BuyPrice` = 2085 WHERE entry=6531;

/*  Willow Vest  */
UPDATE `item_template` SET `BuyPrice` = 2443 WHERE entry=6536;

/*  Willow Boots  */
UPDATE `item_template` SET `BuyPrice` = 1051 WHERE entry=6537;

/*  Willow Robe  */
UPDATE `item_template` SET `BuyPrice` = 2461 WHERE entry=6538;

/*  Willow Belt  */
UPDATE `item_template` SET `BuyPrice` = 811 WHERE entry=6539;

/*  Willow Pants  */
UPDATE `item_template` SET `BuyPrice` = 2156 WHERE entry=6540;

/*  Willow Gloves  */
UPDATE `item_template` SET `BuyPrice` = 817 WHERE entry=6541;

/*  Soldier's Armor  */
UPDATE `item_template` SET `BuyPrice` = 3379, `SellPrice` = 675 WHERE entry=6545;

/*  Soldier's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 509, `SellPrice` = 101 WHERE entry=6549;

/*  Soldier's Boots  */
UPDATE `item_template` SET `BuyPrice` = 2048 WHERE entry=6551;

/*  Bard's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 1145 WHERE entry=6554;

/*  Bard's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 652, `SellPrice` = 130 WHERE entry=6555;

/*  Bard's Boots  */
UPDATE `item_template` SET `BuyPrice` = 1511 WHERE entry=6557;

/*  Bard's Belt  */
UPDATE `item_template` SET `BuyPrice` = 902 WHERE entry=6558;

/*  Bard's Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=6559;

/*  Soldier's Shield  */
UPDATE `item_template` SET `BuyPrice` = 3079, `SellPrice` = 615, `spellcooldown_1` = -1 WHERE entry=6560;

/*  Seer's Padded Armor  */
UPDATE `item_template` SET `BuyPrice` = 3378 WHERE entry=6561;

/*  Shimmering Boots  */
UPDATE `item_template` SET `BuyPrice` = 2542 WHERE entry=6562;

/*  Shimmering Bracers  */
UPDATE `item_template` SET `BuyPrice` = 1478 WHERE entry=6563;

/*  Shimmering Cloak  */
UPDATE `item_template` SET `BuyPrice` = 2560 WHERE entry=6564;

/*  Shimmering Gloves  */
UPDATE `item_template` SET `BuyPrice` = 1969, `SellPrice` = 393 WHERE entry=6565;

/*  Shimmering Trousers  */
UPDATE `item_template` SET `BuyPrice` = 4603 WHERE entry=6568;

/*  Shimmering Robe  */
UPDATE `item_template` SET `BuyPrice` = 5222 WHERE entry=6569;

/*  Shimmering Sash  */
UPDATE `item_template` SET `BuyPrice` = 1815 WHERE entry=6570;

/*  Scouting Buckler  */
UPDATE `item_template` SET `BuyPrice` = 5834, `SellPrice` = 1166, `spellcooldown_1` = -1 WHERE entry=6571;

/*  Defender Shield  */
UPDATE `item_template` SET `BuyPrice` = 6618, `spellcooldown_1` = -1 WHERE entry=6572;

/*  Defender Boots  */
UPDATE `item_template` SET `BuyPrice` = 4691 WHERE entry=6573;

/*  Defender Bracers  */
UPDATE `item_template` SET `BuyPrice` = 2840 WHERE entry=6574;

/*  Defender Cloak  */
UPDATE `item_template` SET `BuyPrice` = 2155 WHERE entry=6575;

/*  Defender Girdle  */
UPDATE `item_template` SET `BuyPrice` = 2861 WHERE entry=6576;

/*  Defender Leggings  */
UPDATE `item_template` SET `BuyPrice` = 6514, `SellPrice` = 1302 WHERE entry=6578;

/*  Scouting Cloak  */
UPDATE `item_template` SET `BuyPrice` = 2792, `SellPrice` = 558 WHERE entry=6585;

/*  Viridian Band  */
UPDATE `item_template` SET `RandomProperty` = 3475 WHERE entry=6589;

/*  Battleforge Armor  */
UPDATE `item_template` SET `BuyPrice` = 12239, `SellPrice` = 2447 WHERE entry=6592;

/*  Battleforge Cloak  */
UPDATE `item_template` SET `BuyPrice` = 4614, `SellPrice` = 922 WHERE entry=6593;

/*  Battleforge Girdle  */
UPDATE `item_template` SET `BuyPrice` = 5604, `SellPrice` = 1120 WHERE entry=6594;

/*  Battleforge Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 5624, `SellPrice` = 1124 WHERE entry=6595;

/*  Battleforge Legguards  */
UPDATE `item_template` SET `BuyPrice` = 11290 WHERE entry=6596;

/*  Battleforge Shoulderguards  */
UPDATE `item_template` SET `BuyPrice` = 8536 WHERE entry=6597;

/*  Dervish Buckler  */
UPDATE `item_template` SET `BuyPrice` = 12131 WHERE entry=6598;

/*  Battleforge Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=6599;

/*  Dervish Belt  */
UPDATE `item_template` SET `BuyPrice` = 4338 WHERE entry=6600;

/*  Dervish Bracers  */
UPDATE `item_template` SET `BuyPrice` = 4369, `SellPrice` = 873 WHERE entry=6602;

/*  Dervish Tunic  */
UPDATE `item_template` SET `BuyPrice` = 11674, `SellPrice` = 2334 WHERE entry=6603;

/*  Dervish Cape  */
UPDATE `item_template` SET `BuyPrice` = 6000, `SellPrice` = 1200 WHERE entry=6604;

/*  Dervish Gloves  */
UPDATE `item_template` SET `BuyPrice` = 4857 WHERE entry=6605;

/*  Sage's Sash  */
UPDATE `item_template` SET `BuyPrice` = 4063 WHERE entry=6611;

/*  Sage's Boots  */
UPDATE `item_template` SET `BuyPrice` = 5562 WHERE entry=6612;

/*  Sage's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 5603 WHERE entry=6614;

/*  Sage's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 4123 WHERE entry=6615;

/*  Sage's Pants  */
UPDATE `item_template` SET `BuyPrice` = 11019, `SellPrice` = 2203 WHERE entry=6616;

/*  Sword of Zeal  */
UPDATE `item_template` SET `BuyPrice` = 277000, `SellPrice` = 55400, `DisenchantID` = 49 WHERE entry=6622;

/*  Mutant Scale Breastplate  */
UPDATE `item_template` SET `RequiredLevel` = 23 WHERE entry=6627;

/*  Raven's Claws  */
UPDATE `item_template` SET `BuyPrice` = 1851 WHERE entry=6628;

/*  Sporid Cape  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 18, `BuyPrice` = 3150, `SellPrice` = 630, `stat_value1` = 3, `stat_value2` = 2, `DisenchantID` = 3 WHERE entry=6629;

/*  Living Root  */
UPDATE `item_template` SET `nature_res` = 5, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=6631;

/*  Feyscale Cloak  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 17, `BuyPrice` = 3211, `SellPrice` = 642, `stat_value1` = 3, `stat_type2` = 6, `stat_value2` = 2, `DisenchantID` = 2, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=6632;

/*  Butcher's Slicer  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 10659, `SellPrice` = 2131, `dmg_min1` = 23.0, `dmg_max1` = 44.0, `MaxDurability` = 65, `stat_value1` = 2, `stat_value2` = 2, `DisenchantID` = 23 WHERE entry=6633;

/*  Haunting Blade  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 18376, `SellPrice` = 3675, `dmg_min1` = 53.0, `dmg_max1` = 80.0, `MaxDurability` = 80, `stat_type1` = 6, `stat_value1` = 9, `DisenchantID` = 24, `spellid_1` = 0, `spelltrigger_1` = 0, `RequiredLevel` = 21, `StatsCount` = 1 WHERE entry=6641;

/*  Phantom Armor  */
UPDATE `item_template` SET `BuyPrice` = 9402, `stat_type1` = 6 WHERE entry=6642;

/*  Scarab Trousers  */
UPDATE `item_template` SET `BuyPrice` = 2705 WHERE entry=6659;

/*  Julie's Dagger  */
UPDATE `item_template` SET `BuyPrice` = 180788, `spellppmrate_1` = 5.0 WHERE entry=6660;

/*  Dredge Boots  */
UPDATE `item_template` SET `BuyPrice` = 4152 WHERE entry=6666;

/*  Panther Armor  */
UPDATE `item_template` SET `BuyPrice` = 8363 WHERE entry=6670;

/*  Tempered Bracers  */
UPDATE `item_template` SET `BuyPrice` = 5244, `SellPrice` = 1048 WHERE entry=6675;

/*  Constable Buckler  */
UPDATE `item_template` SET `BuyPrice` = 11229, `SellPrice` = 2245 WHERE entry=6676;

/*  Spellcrafter Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=6677;

/*  Band of Elven Grace  */
UPDATE `item_template` SET `stat_type2` = 6, `spelltrigger_1` = 0, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=6678;

/*  Armor Piercer  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 24264, `SellPrice` = 4852, `dmg_min1` = 41.0, `dmg_max1` = 62.0, `MaxDurability` = 85, `stat_value1` = 11, `DisenchantID` = 24 WHERE entry=6679;

/*  Thornspike  */
UPDATE `item_template` SET `Quality` = 1, `BuyPrice` = 15622, `SellPrice` = 3124, `dmg_min1` = 18.0, `dmg_max1` = 35.0, `bonding` = 0, `MaxDurability` = 55, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=6681;

/*  Death Speaker Robes  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 44, `BuyPrice` = 9504, `SellPrice` = 1900, `MaxDurability` = 70, `stat_type4` = 0, `stat_value4` = 0, `DisenchantID` = 5 WHERE entry=6682;

/*  Death Speaker Mantle  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 32, `BuyPrice` = 6554, `SellPrice` = 1310, `MaxDurability` = 45, `DisenchantID` = 4, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=6685;

/*  Tusken Helm  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 168, `BuyPrice` = 13135, `SellPrice` = 2627, `MaxDurability` = 60, `stat_value1` = 9, `stat_value2` = 8, `DisenchantID` = 5, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `RequiredLevel` = 28 WHERE entry=6686;

/*  Corpsemaker  */
UPDATE `item_template` SET `BuyPrice` = 49652, `RequiredLevel` = 29 WHERE entry=6687;

/*  Whisperwind Headdress  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 79, `BuyPrice` = 10295, `SellPrice` = 2059, `MaxDurability` = 50, `DisenchantID` = 5, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=6688;

/*  Wind Spirit Staff  */
UPDATE `item_template` SET `BuyPrice` = 41336 WHERE entry=6689;

/*  Ferine Leggings  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 87, `BuyPrice` = 16731, `SellPrice` = 3346, `MaxDurability` = 65, `stat_value1` = 9, `stat_value2` = 8, `DisenchantID` = 5 WHERE entry=6690;

/*  Swinetusk Shank  */
UPDATE `item_template` SET `BuyPrice` = 44332 WHERE entry=6691;

/*  Pronged Reaver  */
UPDATE `item_template` SET `BuyPrice` = 48942, `RequiredLevel` = 31 WHERE entry=6692;

/*  Agamaggan's Clutch  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `RequiredLevel` = 31 WHERE entry=6693;

/*  Heart of Agamaggan  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `RequiredLevel` = 31 WHERE entry=6694;

/*  Stygian Bone Amulet  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=6695;

/*  Nightstalker Bow  */
UPDATE `item_template` SET `dmg_min1` = 19.0, `dmg_max1` = 36.0 WHERE entry=6696;

/*  Batwing Mantle  */
UPDATE `item_template` SET `stat_type3` = 3, `stat_value3` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=6697;

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

/*  Ripped Pants  */
UPDATE `item_template` SET `BuyPrice` = 51 WHERE entry=6713;

/*  Windborne Belt  */
UPDATE `item_template` SET `BuyPrice` = 5485 WHERE entry=6719;

/*  Spirit Hunter Headdress  */
UPDATE `item_template` SET `BuyPrice` = 16094, `SellPrice` = 3218 WHERE entry=6720;

/*  Chestplate of Kor  */
UPDATE `item_template` SET `BuyPrice` = 7094, `SellPrice` = 1418 WHERE entry=6721;

/*  Medal of Courage  */
UPDATE `item_template` SET `Quality` = 2, `stat_type1` = 6, `stat_value1` = 3, `stat_type2` = 7, `stat_value2` = 9, `DisenchantID` = 7, `spellid_1` = 0, `spelltrigger_1` = 0, `spellcooldown_1` = -1, `StatsCount` = 2 WHERE entry=6723;

/*  Stone of Backus  */
UPDATE `item_template` SET `spellid_1` = 8357, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 0, `spellcategory_1` = 38 WHERE entry=6724;

/*  Marbled Buckler  */
UPDATE `item_template` SET `BuyPrice` = 30528 WHERE entry=6725;

/*  Stone of Brownell  */
UPDATE `item_template` SET `spellid_1` = 8360, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 0, `spellcategory_1` = 38 WHERE entry=6728;

/*  Fizzle's Zippy Lighter  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=6729;

/*  Ironforge Chain  */
UPDATE `item_template` SET `BuyPrice` = 2482, `DisenchantID` = 0 WHERE entry=6730;

/*  Gnomish Mechanic's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 12108 WHERE entry=6732;

/*  Ironforge Gauntlets  */
UPDATE `item_template` SET `armor` = 120, `BuyPrice` = 5726, `DisenchantID` = 0 WHERE entry=6733;

/*  Dryleaf Pants  */
UPDATE `item_template` SET `BuyPrice` = 14027 WHERE entry=6737;

/*  Bleeding Crescent  */
UPDATE `item_template` SET `BuyPrice` = 35203 WHERE entry=6738;

/*  Cliffrunner's Aim  */
UPDATE `item_template` SET `BuyPrice` = 14958, `dmg_min1` = 19.0, `dmg_max1` = 36.0 WHERE entry=6739;

/*  Azure Sash  */
UPDATE `item_template` SET `BuyPrice` = 5004, `SellPrice` = 1000 WHERE entry=6740;

/*  Stonefist Girdle  */
UPDATE `item_template` SET `BuyPrice` = 14150 WHERE entry=6742;

/*  Sustaining Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=6743;

/*  Gloves of Kapelan  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 7, `stat_type2` = 5, `stat_value2` = 6, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=6744;

/*  Swiftrunner Cape  */
UPDATE `item_template` SET `BuyPrice` = 11197, `SellPrice` = 2239 WHERE entry=6745;

/*  Basalt Buckler  */
UPDATE `item_template` SET `BuyPrice` = 35379, `SellPrice` = 7075, `spellcooldown_1` = -1 WHERE entry=6746;

/*  Monkey Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=6748;

/*  Tiger Band  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=6749;

/*  Snake Hoop  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=6750;

/*  Lancer Boots  */
UPDATE `item_template` SET `BuyPrice` = 8009, `SellPrice` = 1601 WHERE entry=6752;

/*  Jaina's Signet Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=6757;

/*  Gelkis Marauder Chain  */
UPDATE `item_template` SET `BuyPrice` = 36831 WHERE entry=6773;

/*  Braced Handguards  */
UPDATE `item_template` SET `BuyPrice` = 10159, `SellPrice` = 2031 WHERE entry=6784;

/*  Simple Dress  */
UPDATE `item_template` SET `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=6786;

/*  White Woolen Dress  */
UPDATE `item_template` SET `armor` = 34, `BuyPrice` = 2331, `SellPrice` = 466, `ItemLevel` = 22, `MaxDurability` = 60, `RequiredLevel` = 17 WHERE entry=6787;

/*  Ceremonial Centaur Blanket  */
UPDATE `item_template` SET `BuyPrice` = 20060 WHERE entry=6789;

/*  Hellion Boots  */
UPDATE `item_template` SET `BuyPrice` = 17321, `stat_type1` = 3, `stat_value1` = 3, `stat_type3` = 5, `stat_value3` = 5, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=6791;

/*  Auric Bracers  */
UPDATE `item_template` SET `BuyPrice` = 15786 WHERE entry=6793;

/*  Eyepoker  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=6797;

/*  Blasting Hackbut  */
UPDATE `item_template` SET `dmg_min1` = 30.0, `dmg_max1` = 56.0 WHERE entry=6798;

/*  Baroque Apron  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 6, `stat_type3` = 6, `stat_value3` = 7, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=6801;

/*  Windstorm Hammer  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 56312, `SellPrice` = 11262, `ItemLevel` = 40, `dmg_min1` = 32.0, `dmg_max1` = 61.0, `MaxDurability` = 75, `stat_value1` = 4, `stat_value2` = 5, `DisenchantID` = 26 WHERE entry=6804;

/*  Dancing Flame  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 42540, `SellPrice` = 8508, `dmg_min1` = 32.0, `dmg_max1` = 60.0, `MaxDurability` = 55, `DisenchantID` = 26, `spellcooldown_1` = -1 WHERE entry=6806;

/*  Visionary Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=6828;

/*  Sword of Serenity  */
UPDATE `item_template` SET `BuyPrice` = 93572 WHERE entry=6829;

/*  Bonebiter  */
UPDATE `item_template` SET `BuyPrice` = 117381 WHERE entry=6830;

/*  Black Menace  */
UPDATE `item_template` SET `BuyPrice` = 87613 WHERE entry=6831;

/*  Cloak of Blight  */
UPDATE `item_template` SET `BuyPrice` = 18849, `SellPrice` = 3769 WHERE entry=6832;

/*  White Tuxedo Shirt  */
UPDATE `item_template` SET `BuyPrice` = 2000, `SellPrice` = 500 WHERE entry=6833;

/*  Black Tuxedo  */
UPDATE `item_template` SET `RequiredLevel` = 0 WHERE entry=6834;

/*  Black Tuxedo Pants  */
UPDATE `item_template` SET `armor` = 0, `BuyPrice` = 2521, `SellPrice` = 504, `MaxDurability` = 0 WHERE entry=6835;

/*  Dress Shoes  */
UPDATE `item_template` SET `BuyPrice` = 4, `MaxDurability` = 0 WHERE entry=6836;

/*  Orb of Soran'ruk  */
UPDATE `item_template` SET `spellid_1` = 7685, `spellid_2` = 7706 WHERE entry=6898;

/*  Glowing Thresher Cape  */
UPDATE `item_template` SET `BuyPrice` = 7615, `stat_type2` = 4 WHERE entry=6901;

/*  Bands of Serra'kis  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 39, `BuyPrice` = 4385, `SellPrice` = 877, `MaxDurability` = 30, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 4 WHERE entry=6902;

/*  Gaze Dreamer Pants  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 36, `BuyPrice` = 7747, `SellPrice` = 1549, `MaxDurability` = 50, `DisenchantID` = 4, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=6903;

/*  Reef Axe  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 20054, `SellPrice` = 4010, `dmg_min1` = 48.0, `dmg_max1` = 73.0, `MaxDurability` = 80, `stat_value1` = 5, `stat_type2` = 6, `stat_value2` = 7, `DisenchantID` = 24, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=6905;

/*  Tortoise Armor  */
UPDATE `item_template` SET `BuyPrice` = 9364, `SellPrice` = 1872, `stat_type1` = 0, `stat_value1` = 0 WHERE entry=6907;

/*  Ghamoo-ra's Bind  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 22, `BuyPrice` = 2611, `SellPrice` = 522, `MaxDurability` = 25, `DisenchantID` = 3, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=6908;

/*  Strike of the Hydra  */
UPDATE `item_template` SET `BuyPrice` = 35777, `RequiredLevel` = 26 WHERE entry=6909;

/*  Leech Pants  */
UPDATE `item_template` SET `BuyPrice` = 11492, `RequiredLevel` = 26 WHERE entry=6910;

/*  Moss Cinch  */
UPDATE `item_template` SET `RequiredLevel` = 26 WHERE entry=6911;

/*  Elunite Dagger  */
UPDATE `item_template` SET `BuyPrice` = 3506 WHERE entry=6969;

/*  Fire Hardened Coif  */
UPDATE `item_template` SET `BuyPrice` = 11105, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=6971;

/*  Fire Hardened Hauberk  */
UPDATE `item_template` SET `spellid_1` = 9174 WHERE entry=6972;

/*  Fire Hardened Leggings  */
UPDATE `item_template` SET `BuyPrice` = 12326 WHERE entry=6973;

/*  Nimbus Boots  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_value1` = 3, `stat_type2` = 6, `stat_value2` = 5, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=6998;

/*  Gravestone Scepter  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=7001;

/*  Arctic Buckler  */
UPDATE `item_template` SET `BuyPrice` = 15141 WHERE entry=7002;

/*  Prelacy Cape  */
UPDATE `item_template` SET `BuyPrice` = 4924, `SellPrice` = 984 WHERE entry=7004;

/*  Skinning Knife  */
UPDATE `item_template` SET `dmg_min1` = 2.0, `dmg_max1` = 5.0 WHERE entry=7005;

/*  Linen Belt  */
UPDATE `item_template` SET `BuyPrice` = 111 WHERE entry=7026;

/*  Boots of Darkness  */
UPDATE `item_template` SET `BuyPrice` = 5625, `spellid_1` = 7708 WHERE entry=7027;

/*  Azure Silk Pants  */
UPDATE `item_template` SET `spellid_1` = 7703 WHERE entry=7046;

/*  Hands of Darkness  */
UPDATE `item_template` SET `BuyPrice` = 4124, `SellPrice` = 824, `spellid_1` = 7710 WHERE entry=7047;

/*  Azure Silk Hood  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 33, `BuyPrice` = 3725, `SellPrice` = 745, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=7048;

/*  Silk Headband  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 34, `BuyPrice` = 4995, `SellPrice` = 999, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 0 WHERE entry=7050;

/*  Azure Silk Cloak  */
UPDATE `item_template` SET `spellid_1` = 7703 WHERE entry=7053;

/*  Robe of Power  */
UPDATE `item_template` SET `BuyPrice` = 23504, `SellPrice` = 4700, `stat_value1` = 12, `stat_type2` = 6, `stat_value2` = 8, `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 9343 WHERE entry=7054;

/*  Crimson Silk Belt  */
UPDATE `item_template` SET `BuyPrice` = 7519, `SellPrice` = 1503 WHERE entry=7055;

/*  Crimson Silk Vest  */
UPDATE `item_template` SET `Quality` = 1, `BuyPrice` = 10262, `SellPrice` = 2052, `ItemLevel` = 37, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 0, `RequiredLevel` = 32 WHERE entry=7058;

/*  Crimson Silk Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 13905 WHERE entry=7059;

/*  Azure Shoulders  */
UPDATE `item_template` SET `spellid_1` = 9403 WHERE entry=7060;

/*  Earthen Silk Belt  */
UPDATE `item_template` SET `BuyPrice` = 10087 WHERE entry=7061;

/*  Crimson Silk Pantaloons  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 43, `BuyPrice` = 12150, `SellPrice` = 2430, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 0 WHERE entry=7062;

/*  Crimson Silk Gloves  */
UPDATE `item_template` SET `spellid_1` = 9401 WHERE entry=7064;

/*  Driftwood Branch  */
UPDATE `item_template` SET `BuyPrice` = 871 WHERE entry=7094;

/*  Zodiac Gloves  */
UPDATE `item_template` SET `BuyPrice` = 6173 WHERE entry=7106;

/*  Belt of the Stars  */
UPDATE `item_template` SET `BuyPrice` = 9293 WHERE entry=7107;

/*  Infantry Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=7108;

/*  Pioneer Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `RandomProperty` = 0 WHERE entry=7109;

/*  Silver-thread Armor  */
UPDATE `item_template` SET `BuyPrice` = 10349, `SellPrice` = 2069 WHERE entry=7110;

/*  Ruga's Bulwark  */
UPDATE `item_template` SET `BuyPrice` = 4479, `SellPrice` = 895 WHERE entry=7120;

/*  Brutal Helm  */
UPDATE `item_template` SET `BuyPrice` = 11642, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=7130;

/*  Brutal Hauberk  */
UPDATE `item_template` SET `spellid_1` = 9174 WHERE entry=7133;

/*  Twain Random Sword FOO  */
UPDATE `item_template` SET `dmg_min1` = 50.0, `dmg_max1` = 100.0 WHERE entry=7170;

/*  VanCleef's Boots  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 59, `BuyPrice` = 4898, `SellPrice` = 979, `ItemLevel` = 25, `MaxDurability` = 40, `stat_value1` = 6, `RequiredLevel` = 20, `StatsCount` = 1 WHERE entry=7187;

/*  Stormwind Guard Shield  */
UPDATE `item_template` SET `armor` = 478, `block` = 9, `bonding` = 2, `MaxDurability` = 75, `shadow_res` = 0, `stat_type1` = 4, `stat_value1` = 2, `stat_type2` = 7, `stat_value2` = 4, `DisenchantID` = 0, `StatsCount` = 2 WHERE entry=7188;

/*  Goblin Rocket Boots  */
UPDATE `item_template` SET `spellcategorycooldown_1` = 0, `spellcategory_1` = 0 WHERE entry=7189;

/*  Explorer's Vest  */
UPDATE `item_template` SET `BuyPrice` = 1427 WHERE entry=7229;

/*  Smite's Mighty Hammer  */
UPDATE `item_template` SET `BuyPrice` = 15515 WHERE entry=7230;

/*  Handstitched Leather Bracers  */
UPDATE `item_template` SET `BuyPrice` = 142 WHERE entry=7277;

/*  Light Leather Bracers  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 28, `BuyPrice` = 421, `SellPrice` = 84, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=7281;

/*  Light Leather Pants  */
UPDATE `item_template` SET `BuyPrice` = 2998, `stat_type2` = 6 WHERE entry=7282;

/*  Black Whelp Cloak  */
UPDATE `item_template` SET `BuyPrice` = 2595, `SellPrice` = 519 WHERE entry=7283;

/*  Red Whelp Gloves  */
UPDATE `item_template` SET `BuyPrice` = 2933 WHERE entry=7284;

/*  Nimble Leather Gloves  */
UPDATE `item_template` SET `BuyPrice` = 2944, `SellPrice` = 588, `stat_type2` = 6 WHERE entry=7285;

/*  Blade of Cunning  */
UPDATE `item_template` SET `BuyPrice` = 2344, `SellPrice` = 468 WHERE entry=7298;

/*  Infiltrator Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=7330;

/*  Phalanx Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=7331;

/*  Efflorescent Robe  */
UPDATE `item_template` SET `stat_type1` = 7, `stat_value1` = 9, `stat_type2` = 5, `stat_value2` = 2 WHERE entry=7334;

/*  Grizzly Tunic  */
UPDATE `item_template` SET `BuyPrice` = 9685 WHERE entry=7335;

/*  Wildwood Chain  */
UPDATE `item_template` SET `BuyPrice` = 7548 WHERE entry=7336;

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
UPDATE `item_template` SET `Quality` = 2, `armor` = 53, `BuyPrice` = 3454, `SellPrice` = 690, `MaxDurability` = 30, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 3, `spellid_1` = 9132, `spellid_2` = 21352 WHERE entry=7348;

/*  Herbalist's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 4308 WHERE entry=7349;

/*  Disciple's Boots  */
UPDATE `item_template` SET `BuyPrice` = 290 WHERE entry=7351;

/*  Elder's Boots  */
UPDATE `item_template` SET `BuyPrice` = 9324, `SellPrice` = 1864 WHERE entry=7354;

/*  Elder's Bracers  */
UPDATE `item_template` SET `BuyPrice` = 5155 WHERE entry=7355;

/*  Elder's Hat  */
UPDATE `item_template` SET `BuyPrice` = 9378 WHERE entry=7357;

/*  Pilferer's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 4428 WHERE entry=7358;

/*  Elder's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 5490 WHERE entry=7366;

/*  Elder's Mantle  */
UPDATE `item_template` SET `BuyPrice` = 9093 WHERE entry=7367;

/*  Green Whelp Armor  */
UPDATE `item_template` SET `BuyPrice` = 18869, `SellPrice` = 3773 WHERE entry=7375;

/*  Frost Leather Cloak  */
UPDATE `item_template` SET `spellid_1` = 9402 WHERE entry=7377;

/*  Dusky Bracers  */
UPDATE `item_template` SET `BuyPrice` = 10731 WHERE entry=7378;

/*  Green Whelp Bracers  */
UPDATE `item_template` SET `BuyPrice` = 11937, `stat_type1` = 6, `stat_value1` = 8, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=7386;

/*  Dusky Boots  */
UPDATE `item_template` SET `BuyPrice` = 21188 WHERE entry=7390;

/*  Swift Boots  */
UPDATE `item_template` SET `stat_type1` = 6, `spellcooldown_1` = 3600000, `spellcategorycooldown_1` = 0, `spellcategory_1` = 0 WHERE entry=7391;

/*  Infiltrator Cord  */
UPDATE `item_template` SET `BuyPrice` = 6861 WHERE entry=7406;

/*  Infiltrator Armor  */
UPDATE `item_template` SET `BuyPrice` = 18333 WHERE entry=7407;

/*  Infiltrator Boots  */
UPDATE `item_template` SET `BuyPrice` = 11445 WHERE entry=7409;

/*  Infiltrator Bracers  */
UPDATE `item_template` SET `BuyPrice` = 5873 WHERE entry=7410;

/*  Infiltrator Cloak  */
UPDATE `item_template` SET `BuyPrice` = 8846, `SellPrice` = 1769 WHERE entry=7411;

/*  Infiltrator Cap  */
UPDATE `item_template` SET `BuyPrice` = 10785 WHERE entry=7413;

/*  Infiltrator Pants  */
UPDATE `item_template` SET `BuyPrice` = 15879, `SellPrice` = 3175 WHERE entry=7414;

/*  Phalanx Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 21280 WHERE entry=7418;

/*  Phalanx Headguard  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=7420;

/*  Phalanx Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 8891 WHERE entry=7421;

/*  Phalanx Girdle  */
UPDATE `item_template` SET `BuyPrice` = 8113 WHERE entry=7422;

/*  Phalanx Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 13545 WHERE entry=7424;

/*  Cerulean Ring  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=7426;

/*  Cerulean Talisman  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=7427;

/*  Twilight Pants  */
UPDATE `item_template` SET `BuyPrice` = 19495 WHERE entry=7431;

/*  Twilight Cowl  */
UPDATE `item_template` SET `BuyPrice` = 13589, `SellPrice` = 2717 WHERE entry=7432;

/*  Twilight Cape  */
UPDATE `item_template` SET `BuyPrice` = 10558 WHERE entry=7436;

/*  Sentinel Cap  */
UPDATE `item_template` SET `BuyPrice` = 17573 WHERE entry=7441;

/*  Sentinel Gloves  */
UPDATE `item_template` SET `BuyPrice` = 11217 WHERE entry=7443;

/*  Sentinel Boots  */
UPDATE `item_template` SET `BuyPrice` = 16887 WHERE entry=7444;

/*  Sentinel Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 18303 WHERE entry=7445;

/*  Sentinel Cloak  */
UPDATE `item_template` SET `BuyPrice` = 15462, `SellPrice` = 3092 WHERE entry=7446;

/*  Sentinel Bracers  */
UPDATE `item_template` SET `BuyPrice` = 10343 WHERE entry=7447;

/*  Sentinel Girdle  */
UPDATE `item_template` SET `BuyPrice` = 10380 WHERE entry=7448;

/*  Knight's Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 21588 WHERE entry=7459;

/*  Sentinel Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=7463;

/*  Knight's Crest  */
UPDATE `item_template` SET `BuyPrice` = 33735, `spellcooldown_1` = -1 WHERE entry=7465;

/*  Vermilion Band  */
UPDATE `item_template` SET `RandomProperty` = 3479 WHERE entry=7466;

/*  Vermilion Necklace  */
UPDATE `item_template` SET `RandomProperty` = 3507 WHERE entry=7467;

/*  Regal Robe  */
UPDATE `item_template` SET `BuyPrice` = 33815 WHERE entry=7468;

/*  Regal Leggings  */
UPDATE `item_template` SET `BuyPrice` = 31421 WHERE entry=7469;

/*  Regal Wizard Hat  */
UPDATE `item_template` SET `BuyPrice` = 18341 WHERE entry=7470;

/*  Regal Gloves  */
UPDATE `item_template` SET `BuyPrice` = 12275 WHERE entry=7471;

/*  Regal Boots  */
UPDATE `item_template` SET `BuyPrice` = 17115 WHERE entry=7472;

/*  Regal Cuffs  */
UPDATE `item_template` SET `BuyPrice` = 11856 WHERE entry=7475;

/*  Ranger Tunic  */
UPDATE `item_template` SET `BuyPrice` = 40624, `SellPrice` = 8124 WHERE entry=7477;

/*  Ranger Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 24630 WHERE entry=7482;

/*  Ranger Cloak  */
UPDATE `item_template` SET `BuyPrice` = 21192, `SellPrice` = 4238 WHERE entry=7483;

/*  Ranger Cord  */
UPDATE `item_template` SET `BuyPrice` = 15367 WHERE entry=7485;

/*  Captain's Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 46628 WHERE entry=7486;

/*  Captain's Leggings  */
UPDATE `item_template` SET `BuyPrice` = 43328 WHERE entry=7487;

/*  Captain's Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 18703 WHERE entry=7489;

/*  Captain's Waistguard  */
UPDATE `item_template` SET `BuyPrice` = 17717 WHERE entry=7494;

/*  Captain's Buckler  */
UPDATE `item_template` SET `BuyPrice` = 47792, `spellcooldown_1` = -1 WHERE entry=7495;

/*  Field Plate Shield  */
UPDATE `item_template` SET `BuyPrice` = 44412, `spellcooldown_1` = -1 WHERE entry=7496;

/*  Ivory Band  */
UPDATE `item_template` SET `RandomProperty` = 3480 WHERE entry=7497;

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

/*  Gossamer Tunic  */
UPDATE `item_template` SET `BuyPrice` = 46863 WHERE entry=7517;

/*  Gossamer Robe  */
UPDATE `item_template` SET `BuyPrice` = 47031 WHERE entry=7518;

/*  Gossamer Pants  */
UPDATE `item_template` SET `BuyPrice` = 38175 WHERE entry=7519;

/*  Gossamer Boots  */
UPDATE `item_template` SET `BuyPrice` = 24814, `SellPrice` = 4962 WHERE entry=7522;

/*  Gossamer Cape  */
UPDATE `item_template` SET `BuyPrice` = 21486 WHERE entry=7524;

/*  Gossamer Belt  */
UPDATE `item_template` SET `BuyPrice` = 16835 WHERE entry=7526;

/*  Cabalist Chestpiece  */
UPDATE `item_template` SET `BuyPrice` = 56423 WHERE entry=7527;

/*  Cabalist Cloak  */
UPDATE `item_template` SET `BuyPrice` = 27789, `SellPrice` = 5557 WHERE entry=7533;

/*  Cabalist Bracers  */
UPDATE `item_template` SET `BuyPrice` = 20080 WHERE entry=7534;

/*  Champion's Wall Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=7536;

/*  Gothic Shield  */
UPDATE `item_template` SET `BuyPrice` = 70062, `spellcooldown_1` = -1 WHERE entry=7537;

/*  Champion's Armor  */
UPDATE `item_template` SET `BuyPrice` = 61612 WHERE entry=7538;

/*  Champion's Leggings  */
UPDATE `item_template` SET `BuyPrice` = 63461 WHERE entry=7539;

/*  Champion's Greaves  */
UPDATE `item_template` SET `BuyPrice` = 41422 WHERE entry=7542;

/*  Champion's Bracers  */
UPDATE `item_template` SET `BuyPrice` = 23290 WHERE entry=7545;

/*  Onyx Ring  */
UPDATE `item_template` SET `DisenchantID` = 0, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=7547;

/*  Onyx Choker  */
UPDATE `item_template` SET `RandomProperty` = 3511 WHERE entry=7548;

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

/*  Polar Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 2788 WHERE entry=7606;

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
UPDATE `item_template` SET `Quality` = 1, `BuyPrice` = 19792, `SellPrice` = 3958, `dmg_min1` = 18.0, `dmg_max1` = 35.0, `bonding` = 0, `MaxDurability` = 55, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=7683;

/*  Bloodmage Mantle  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 35, `BuyPrice` = 10924, `SellPrice` = 2184, `MaxDurability` = 45, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 5 WHERE entry=7684;

/*  Ironspine's Eye  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=7686;

/*  Ironspine's Fist  */
UPDATE `item_template` SET `BuyPrice` = 44180 WHERE entry=7687;

/*  Morbid Dawn  */
UPDATE `item_template` SET `BuyPrice` = 55621 WHERE entry=7689;

/*  Embalmed Shroud  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 12, `stat_type3` = 5, `stat_value3` = 11, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=7691;

/*  Necrotic Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=7708;

/*  Blighted Leggings  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 17, `spellid_1` = 7709 WHERE entry=7709;

/*  Loksey's Training Stick  */
UPDATE `item_template` SET `BuyPrice` = 61398, `spellid_1` = 18207 WHERE entry=7710;

/*  Robe of Doan  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 50, `BuyPrice` = 5855, `SellPrice` = 1171, `MaxDurability` = 70, `DisenchantID` = 6, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=7711;

/*  Mantle of Doan  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 38, `BuyPrice` = 4407, `SellPrice` = 881, `MaxDurability` = 45, `stat_value1` = 8, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 6 WHERE entry=7712;

/*  Illusionary Rod  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 10, `stat_type3` = 7, `stat_value3` = 7 WHERE entry=7713;

/*  Ravager  */
UPDATE `item_template` SET `BuyPrice` = 94616, `spellcooldown_1` = -1 WHERE entry=7717;

/*  Herod's Shoulder  */
UPDATE `item_template` SET `BuyPrice` = 34338 WHERE entry=7718;

/*  Hand of Righteousness  */
UPDATE `item_template` SET `BuyPrice` = 89611 WHERE entry=7721;

/*  Triune Amulet  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=7722;

/*  Mograine's Might  */
UPDATE `item_template` SET `BuyPrice` = 112836, `stat_type1` = 6 WHERE entry=7723;

/*  Aegis of the Scarlet Commander  */
UPDATE `item_template` SET `stat_type1` = 6, `spellcooldown_1` = -1 WHERE entry=7726;

/*  Watchman Pauldrons  */
UPDATE `item_template` SET `stat_type3` = 6 WHERE entry=7727;

/*  Beguiler Robes  */
UPDATE `item_template` SET `BuyPrice` = 16118 WHERE entry=7728;

/*  Chesterfall Musket  */
UPDATE `item_template` SET `dmg_min1` = 26.0, `dmg_max1` = 50.0 WHERE entry=7729;

/*  Cobalt Crusher  */
UPDATE `item_template` SET `BuyPrice` = 50732 WHERE entry=7730;

/*  Ghostshard Talisman  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 4, `spellid_1` = 0, `spelltrigger_1` = 0, `spellcooldown_1` = -1, `StatsCount` = 2 WHERE entry=7731;

/*  Six Demon Bag  */
UPDATE `item_template` SET `spellcooldown_1` = 1800000 WHERE entry=7734;

/*  Fight Club  */
UPDATE `item_template` SET `BuyPrice` = 59854, `SellPrice` = 11970 WHERE entry=7736;

/*  Evergreen Gloves  */
UPDATE `item_template` SET `BuyPrice` = 1058 WHERE entry=7738;

/*  Timberland Cape  */
UPDATE `item_template` SET `BuyPrice` = 2401, `SellPrice` = 480 WHERE entry=7739;

/*  Explorers' League Commendation  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=7746;

/*  Mantle of Woe  */
UPDATE `item_template` SET `BuyPrice` = 8562 WHERE entry=7750;

/*  Vorrel's Boots  */
UPDATE `item_template` SET `BuyPrice` = 8072 WHERE entry=7751;

/*  Dreamslayer  */
UPDATE `item_template` SET `BuyPrice` = 34514, `SellPrice` = 6902 WHERE entry=7752;

/*  Bloodspiller  */
UPDATE `item_template` SET `BuyPrice` = 39371 WHERE entry=7753;

/*  Harbinger Boots  */
UPDATE `item_template` SET `BuyPrice` = 9798, `stat_type2` = 6 WHERE entry=7754;

/*  Dog Training Gloves  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 62, `BuyPrice` = 8030, `SellPrice` = 1606, `MaxDurability` = 30, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 5, `spellid_1` = 14565 WHERE entry=7756;

/*  Windweaver Staff  */
UPDATE `item_template` SET `BuyPrice` = 64374, `SellPrice` = 12874, `spellid_1` = 13599 WHERE entry=7757;

/*  Archon Chestpiece  */
UPDATE `item_template` SET `BuyPrice` = 33619, `SellPrice` = 6723, `stat_type2` = 6 WHERE entry=7759;

/*  Warchief Kilt  */
UPDATE `item_template` SET `stat_type3` = 4, `stat_value3` = 5 WHERE entry=7760;

/*  Steelclaw Reaver  */
UPDATE `item_template` SET `BuyPrice` = 56453 WHERE entry=7761;

/*  Barbaric Iron Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 12502, `stat_type2` = 3 WHERE entry=7913;

/*  Barbaric Iron Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 16654, `SellPrice` = 3330 WHERE entry=7914;

/*  Barbaric Iron Helm  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_type2` = 4 WHERE entry=7915;

/*  Barbaric Iron Boots  */
UPDATE `item_template` SET `BuyPrice` = 18502, `stat_type2` = 3 WHERE entry=7916;

/*  Heavy Mithril Shoulder  */
UPDATE `item_template` SET `armor` = 225, `BuyPrice` = 18508, `SellPrice` = 3701, `ItemLevel` = 41, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=7918;

/*  Heavy Mithril Gauntlet  */
UPDATE `item_template` SET `armor` = 268, `BuyPrice` = 12382, `SellPrice` = 2476, `ItemLevel` = 41, `stat_value1` = 8 WHERE entry=7919;

/*  Mithril Scale Pants  */
UPDATE `item_template` SET `BuyPrice` = 40265, `stat_type1` = 6, `stat_value1` = 11, `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 13669 WHERE entry=7920;

/*  Heavy Mithril Pants  */
UPDATE `item_template` SET `armor` = 417, `BuyPrice` = 26936, `SellPrice` = 5387, `ItemLevel` = 42, `stat_value1` = 11 WHERE entry=7921;

/*  Steel Plate Helm  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 355, `BuyPrice` = 11885, `SellPrice` = 2377, `bonding` = 0, `MaxDurability` = 70, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=7922;

/*  Mithril Scale Bracers  */
UPDATE `item_template` SET `stat_type1` = 6 WHERE entry=7924;

/*  Mithril Scale Gloves  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=7925;

/*  Ornate Mithril Pants  */
UPDATE `item_template` SET `armor` = 375, `BuyPrice` = 29761, `SellPrice` = 5952, `ItemLevel` = 44, `stat_value1` = 12 WHERE entry=7926;

/*  Ornate Mithril Gloves  */
UPDATE `item_template` SET `armor` = 268, `BuyPrice` = 14935, `SellPrice` = 2987, `ItemLevel` = 44, `stat_type1` = 0, `stat_value1` = 0, `spellid_1` = 7597 WHERE entry=7927;

/*  Ornate Mithril Shoulder  */
UPDATE `item_template` SET `BuyPrice` = 24286, `SellPrice` = 4857 WHERE entry=7928;

/*  Orcish War Leggings  */
UPDATE `item_template` SET `BuyPrice` = 38698 WHERE entry=7929;

/*  Heavy Mithril Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 35228, `SellPrice` = 7045, `stat_value1` = 15, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=7930;

/*  Mithril Coif  */
UPDATE `item_template` SET `BuyPrice` = 39778, `stat_type1` = 6, `stat_value1` = 13, `stat_value2` = 12 WHERE entry=7931;

/*  Mithril Scale Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 43309, `SellPrice` = 8661, `stat_type1` = 6, `stat_value1` = 10, `stat_value2` = 10 WHERE entry=7932;

/*  Heavy Mithril Boots  */
UPDATE `item_template` SET `BuyPrice` = 28847, `SellPrice` = 5769, `stat_value1` = 12, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=7933;

/*  Heavy Mithril Helm  */
UPDATE `item_template` SET `BuyPrice` = 28952, `SellPrice` = 5790, `stat_value1` = 15, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=7934;

/*  Ornate Mithril Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 41842, `SellPrice` = 8368 WHERE entry=7935;

/*  Ornate Mithril Boots  */
UPDATE `item_template` SET `BuyPrice` = 33697, `SellPrice` = 6739 WHERE entry=7936;

/*  Ornate Mithril Helm  */
UPDATE `item_template` SET `BuyPrice` = 33818, `SellPrice` = 6763 WHERE entry=7937;

/*  Truesilver Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 20142, `SellPrice` = 4028, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=7938;

/*  Truesilver Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 54496, `SellPrice` = 10899 WHERE entry=7939;

/*  Heavy Mithril Axe  */
UPDATE `item_template` SET `BuyPrice` = 62601, `stat_type1` = 7, `stat_value1` = 7 WHERE entry=7941;

/*  Wicked Mithril Blade  */
UPDATE `item_template` SET `BuyPrice` = 79459, `SellPrice` = 15891, `dmg_min1` = 43.0, `dmg_max1` = 80.0, `stat_type1` = 4, `stat_value1` = 6, `stat_type2` = 3 WHERE entry=7943;

/*  Dazzling Mithril Rapier  */
UPDATE `item_template` SET `BuyPrice` = 100463 WHERE entry=7944;

/*  Runed Mithril Hammer  */
UPDATE `item_template` SET `BuyPrice` = 108304, `SellPrice` = 21660 WHERE entry=7946;

/*  Ebon Shiv  */
UPDATE `item_template` SET `BuyPrice` = 124460 WHERE entry=7947;

/*  The Shatterer  */
UPDATE `item_template` SET `BuyPrice` = 115799, `SellPrice` = 23159 WHERE entry=7954;

/*  Bronze Warhammer  */
UPDATE `item_template` SET `Quality` = 1, `BuyPrice` = 9722, `SellPrice` = 1944, `dmg_min1` = 37.0, `dmg_max1` = 57.0, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 0 WHERE entry=7956;

/*  Bronze Greatsword  */
UPDATE `item_template` SET `Quality` = 1, `BuyPrice` = 11028, `SellPrice` = 2205, `dmg_min1` = 38.0, `dmg_max1` = 58.0, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 0 WHERE entry=7957;

/*  Bronze Battle Axe  */
UPDATE `item_template` SET `Quality` = 1, `BuyPrice` = 12178, `SellPrice` = 2435, `dmg_min1` = 39.0, `dmg_max1` = 59.0, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=7958;

/*  Blight  */
UPDATE `item_template` SET `BuyPrice` = 169289, `SellPrice` = 33857, `dmg_min1` = 93.0, `dmg_max1` = 141.0 WHERE entry=7959;

/*  Truesilver Champion  */
UPDATE `item_template` SET `BuyPrice` = 192743 WHERE entry=7960;

/*  Steel Breastplate  */
UPDATE `item_template` SET `armor` = 381, `stat_type1` = 0, `stat_value1` = 0 WHERE entry=7963;

/*  The Ziggler  */
UPDATE `item_template` SET `BuyPrice` = 62360 WHERE entry=8006;

/*  Sizzle Stick  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=8071;

/*  Light Plate Chestpiece  */
UPDATE `item_template` SET `BuyPrice` = 29936, `SellPrice` = 5987 WHERE entry=8080;

/*  Light Plate Belt  */
UPDATE `item_template` SET `BuyPrice` = 14172, `SellPrice` = 2834 WHERE entry=8081;

/*  Light Plate Boots  */
UPDATE `item_template` SET `BuyPrice` = 15945, `SellPrice` = 3189 WHERE entry=8082;

/*  Light Plate Bracers  */
UPDATE `item_template` SET `BuyPrice` = 11308, `SellPrice` = 2261 WHERE entry=8083;

/*  Light Plate Gloves  */
UPDATE `item_template` SET `BuyPrice` = 13517, `SellPrice` = 2703 WHERE entry=8084;

/*  Light Plate Pants  */
UPDATE `item_template` SET `BuyPrice` = 26269, `SellPrice` = 5253 WHERE entry=8085;

/*  Light Plate Shoulderpads  */
UPDATE `item_template` SET `BuyPrice` = 18652, `SellPrice` = 3730 WHERE entry=8086;

/*  Platemail Belt  */
UPDATE `item_template` SET `BuyPrice` = 13335, `SellPrice` = 2667 WHERE entry=8088;

/*  Platemail Boots  */
UPDATE `item_template` SET `BuyPrice` = 20081, `SellPrice` = 4016 WHERE entry=8089;

/*  Platemail Bracers  */
UPDATE `item_template` SET `BuyPrice` = 13439, `SellPrice` = 2687 WHERE entry=8090;

/*  Platemail Gloves  */
UPDATE `item_template` SET `BuyPrice` = 13489, `SellPrice` = 2697 WHERE entry=8091;

/*  Platemail Helm  */
UPDATE `item_template` SET `BuyPrice` = 20312, `SellPrice` = 4062 WHERE entry=8092;

/*  Platemail Leggings  */
UPDATE `item_template` SET `BuyPrice` = 27186, `SellPrice` = 5437 WHERE entry=8093;

/*  Platemail Armor  */
UPDATE `item_template` SET `BuyPrice` = 27290, `SellPrice` = 5458 WHERE entry=8094;

/*  Hibernal Bracers  */
UPDATE `item_template` SET `BuyPrice` = 17972 WHERE entry=8108;

/*  Hibernal Cloak  */
UPDATE `item_template` SET `BuyPrice` = 25059, `SellPrice` = 5011 WHERE entry=8109;

/*  Hibernal Gloves  */
UPDATE `item_template` SET `BuyPrice` = 18110, `stat_type1` = 3, `stat_type2` = 5, `stat_value2` = 10, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=8110;

/*  Hibernal Mantle  */
UPDATE `item_template` SET `BuyPrice` = 29452 WHERE entry=8111;

/*  Hibernal Pants  */
UPDATE `item_template` SET `stat_type2` = 3, `stat_type3` = 6, `stat_value3` = 11, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=8112;

/*  Hibernal Robe  */
UPDATE `item_template` SET `BuyPrice` = 48473 WHERE entry=8113;

/*  Hibernal Sash  */
UPDATE `item_template` SET `BuyPrice` = 18388 WHERE entry=8114;

/*  Hibernal Cowl  */
UPDATE `item_template` SET `BuyPrice` = 29902 WHERE entry=8115;

/*  Heraldic Belt  */
UPDATE `item_template` SET `BuyPrice` = 23160 WHERE entry=8116;

/*  Heraldic Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 63629, `SellPrice` = 12725 WHERE entry=8119;

/*  Heraldic Cloak  */
UPDATE `item_template` SET `BuyPrice` = 31036, `SellPrice` = 6207 WHERE entry=8120;

/*  Heraldic Leggings  */
UPDATE `item_template` SET `BuyPrice` = 56379, `SellPrice` = 11275 WHERE entry=8123;

/*  Myrmidon's Bracers  */
UPDATE `item_template` SET `BuyPrice` = 31837 WHERE entry=8125;

/*  Myrmidon's Greaves  */
UPDATE `item_template` SET `BuyPrice` = 47294, `SellPrice` = 9458 WHERE entry=8130;

/*  Myrmidon's Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 52585 WHERE entry=8133;

/*  Myrmidon's Defender  */
UPDATE `item_template` SET `BuyPrice` = 79966, `spellcooldown_1` = -1 WHERE entry=8134;

/*  Chromite Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=8135;

/*  Chromite Bracers  */
UPDATE `item_template` SET `BuyPrice` = 14035, `SellPrice` = 2807 WHERE entry=8137;

/*  Chromite Chestplate  */
UPDATE `item_template` SET `BuyPrice` = 38330, `SellPrice` = 7666 WHERE entry=8138;

/*  Chromite Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 15269, `SellPrice` = 3053 WHERE entry=8139;

/*  Chromite Girdle  */
UPDATE `item_template` SET `BuyPrice` = 14188, `SellPrice` = 2837 WHERE entry=8140;

/*  Chromite Greaves  */
UPDATE `item_template` SET `BuyPrice` = 23068, `SellPrice` = 4613 WHERE entry=8141;

/*  Chromite Barbute  */
UPDATE `item_template` SET `BuyPrice` = 23152, `SellPrice` = 4630 WHERE entry=8142;

/*  Chromite Legplates  */
UPDATE `item_template` SET `BuyPrice` = 36135, `SellPrice` = 7227 WHERE entry=8143;

/*  Chromite Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 25181, `SellPrice` = 5036 WHERE entry=8144;

/*  Jouster's Wristguards  */
UPDATE `item_template` SET `BuyPrice` = 11099, `SellPrice` = 2219 WHERE entry=8156;

/*  Jouster's Chestplate  */
UPDATE `item_template` SET `BuyPrice` = 25989, `SellPrice` = 5197 WHERE entry=8157;

/*  Jouster's Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 11181, `SellPrice` = 2236 WHERE entry=8158;

/*  Jouster's Girdle  */
UPDATE `item_template` SET `BuyPrice` = 11221, `SellPrice` = 2244 WHERE entry=8159;

/*  Jouster's Greaves  */
UPDATE `item_template` SET `BuyPrice` = 16893, `SellPrice` = 3378 WHERE entry=8160;

/*  Jouster's Visor  */
UPDATE `item_template` SET `BuyPrice` = 16954, `SellPrice` = 3390 WHERE entry=8161;

/*  Jouster's Legplates  */
UPDATE `item_template` SET `BuyPrice` = 24500, `SellPrice` = 4900 WHERE entry=8162;

/*  Jouster's Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 18441, `SellPrice` = 3688 WHERE entry=8163;

/*  Comfortable Leather Hat  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 90, `BuyPrice` = 20657, `SellPrice` = 4131, `MaxDurability` = 50, `stat_type1` = 7, `stat_value1` = 11, `stat_type2` = 6, `stat_value2` = 10, `DisenchantID` = 6, `spelltrigger_1` = 0 WHERE entry=8174;

/*  Nightscape Headband  */
UPDATE `item_template` SET `BuyPrice` = 22475, `spelltrigger_1` = 0 WHERE entry=8176;

/*  Practice Sword  */
UPDATE `item_template` SET `BuyPrice` = 358 WHERE entry=8177;

/*  Training Sword  */
UPDATE `item_template` SET `BuyPrice` = 1531 WHERE entry=8178;

/*  Cadet's Bow  */
UPDATE `item_template` SET `dmg_min1` = 3.0, `dmg_max1` = 6.0 WHERE entry=8179;

/*  Hunting Bow  */
UPDATE `item_template` SET `BuyPrice` = 1203, `dmg_min1` = 8.0, `dmg_max1` = 16.0 WHERE entry=8180;

/*  Hunting Rifle  */
UPDATE `item_template` SET `BuyPrice` = 397, `dmg_min1` = 5.0, `dmg_max1` = 11.0 WHERE entry=8181;

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
UPDATE `item_template` SET `BuyPrice` = 32071, `dmg_min1` = 22.0, `dmg_max1` = 42.0 WHERE entry=8188;

/*  Turtle Scale Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 37838, `stat_type2` = 6, `stat_value2` = 9 WHERE entry=8189;

/*  Turtle Scale Helm  */
UPDATE `item_template` SET `BuyPrice` = 38900 WHERE entry=8191;

/*  Nightscape Cloak  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=8195;

/*  Turtle Scale Bracers  */
UPDATE `item_template` SET `armor` = 204, `BuyPrice` = 20068, `stat_type1` = 0, `stat_value1` = 0 WHERE entry=8198;

/*  Big Voodoo Robe  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 9 WHERE entry=8200;

/*  Big Voodoo Mask  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 9, `spelltrigger_1` = 0 WHERE entry=8201;

/*  Big Voodoo Pants  */
UPDATE `item_template` SET `stat_type2` = 5, `stat_value2` = 10 WHERE entry=8202;

/*  Tough Scorpid Breastplate  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=8203;

/*  Tough Scorpid Gloves  */
UPDATE `item_template` SET `BuyPrice` = 23382, `stat_type2` = 6 WHERE entry=8204;

/*  Tough Scorpid Bracers  */
UPDATE `item_template` SET `stat_type2` = 6, `spelltrigger_1` = 0 WHERE entry=8205;

/*  Tough Scorpid Leggings  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=8206;

/*  Tough Scorpid Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 44892, `stat_type2` = 6 WHERE entry=8207;

/*  Tough Scorpid Helm  */
UPDATE `item_template` SET `stat_type2` = 6, `spelltrigger_1` = 0 WHERE entry=8208;

/*  Tough Scorpid Boots  */
UPDATE `item_template` SET `stat_type2` = 6, `spelltrigger_1` = 0 WHERE entry=8209;

/*  Wild Leather Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 27685 WHERE entry=8210;

/*  Wild Leather Vest  */
UPDATE `item_template` SET `BuyPrice` = 40012 WHERE entry=8211;

/*  Wild Leather Boots  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=8213;

/*  Wild Leather Helmet  */
UPDATE `item_template` SET `BuyPrice` = 31151, `spelltrigger_1` = 0 WHERE entry=8214;

/*  Wild Leather Cloak  */
UPDATE `item_template` SET `BuyPrice` = 45086, `SellPrice` = 9017 WHERE entry=8215;

/*  Big Voodoo Cloak  */
UPDATE `item_template` SET `BuyPrice` = 31617, `stat_value1` = 9, `stat_value2` = 5, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=8216;

/*  Blade of the Basilisk  */
UPDATE `item_template` SET `BuyPrice` = 50333 WHERE entry=8223;

/*  Silithid Ripper  */
UPDATE `item_template` SET `BuyPrice` = 38278 WHERE entry=8224;

/*  Tainted Pierce  */
UPDATE `item_template` SET `spellppmrate_1` = 1.0 WHERE entry=8225;

/*  The Butcher  */
UPDATE `item_template` SET `BuyPrice` = 28737 WHERE entry=8226;

/*  Imperial Red Tunic  */
UPDATE `item_template` SET `BuyPrice` = 64614, `SellPrice` = 12922 WHERE entry=8245;

/*  Imperial Red Boots  */
UPDATE `item_template` SET `stat_type2` = 3, `stat_value2` = 4, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=8246;

/*  Imperial Red Bracers  */
UPDATE `item_template` SET `BuyPrice` = 24988 WHERE entry=8247;

/*  Imperial Red Cloak  */
UPDATE `item_template` SET `BuyPrice` = 35161 WHERE entry=8248;

/*  Imperial Red Mantle  */
UPDATE `item_template` SET `BuyPrice` = 40170, `stat_type1` = 3, `stat_value1` = 4, `stat_type2` = 5, `stat_value2` = 15, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=8250;

/*  Imperial Red Pants  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_type2` = 5, `stat_value2` = 15, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=8251;

/*  Imperial Red Robe  */
UPDATE `item_template` SET `BuyPrice` = 68114, `SellPrice` = 13622 WHERE entry=8252;

/*  Imperial Red Sash  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 4, `stat_type2` = 5, `stat_value2` = 15, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=8253;

/*  Imperial Red Circlet  */
UPDATE `item_template` SET `BuyPrice` = 43199, `SellPrice` = 8639 WHERE entry=8254;

/*  Serpentskin Boots  */
UPDATE `item_template` SET `BuyPrice` = 51306 WHERE entry=8256;

/*  Serpentskin Armor  */
UPDATE `item_template` SET `BuyPrice` = 86983 WHERE entry=8258;

/*  Serpentskin Cloak  */
UPDATE `item_template` SET `BuyPrice` = 45721, `SellPrice` = 9144 WHERE entry=8259;

/*  Serpentskin Leggings  */
UPDATE `item_template` SET `BuyPrice` = 73029, `SellPrice` = 14605 WHERE entry=8262;

/*  Serpentskin Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 51866 WHERE entry=8263;

/*  Ebonhold Wristguards  */
UPDATE `item_template` SET `BuyPrice` = 39287 WHERE entry=8264;

/*  Ebonhold Armor  */
UPDATE `item_template` SET `BuyPrice` = 99571 WHERE entry=8265;

/*  Ebonhold Cloak  */
UPDATE `item_template` SET `BuyPrice` = 37341 WHERE entry=8266;

/*  Ebonhold Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 44639, `SellPrice` = 8927 WHERE entry=8267;

/*  Ebonhold Girdle  */
UPDATE `item_template` SET `BuyPrice` = 44800 WHERE entry=8268;

/*  Ebonhold Boots  */
UPDATE `item_template` SET `BuyPrice` = 71813 WHERE entry=8269;

/*  Ebonhold Helmet  */
UPDATE `item_template` SET `BuyPrice` = 71758 WHERE entry=8270;

/*  Ebonhold Leggings  */
UPDATE `item_template` SET `BuyPrice` = 101790 WHERE entry=8271;

/*  Valorous Wristguards  */
UPDATE `item_template` SET `BuyPrice` = 17871, `SellPrice` = 3574 WHERE entry=8273;

/*  Valorous Chestguard  */
UPDATE `item_template` SET `BuyPrice` = 51259, `SellPrice` = 10251 WHERE entry=8274;

/*  Ebonhold Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=8275;

/*  Valorous Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 19509, `SellPrice` = 3901 WHERE entry=8276;

/*  Valorous Girdle  */
UPDATE `item_template` SET `BuyPrice` = 18128, `SellPrice` = 3625 WHERE entry=8277;

/*  Valorous Greaves  */
UPDATE `item_template` SET `BuyPrice` = 27387, `SellPrice` = 5477 WHERE entry=8278;

/*  Valorous Helm  */
UPDATE `item_template` SET `BuyPrice` = 29688, `SellPrice` = 5937 WHERE entry=8279;

/*  Valorous Legguards  */
UPDATE `item_template` SET `BuyPrice` = 42518, `SellPrice` = 8503 WHERE entry=8280;

/*  Valorous Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 29914, `SellPrice` = 5982 WHERE entry=8281;

/*  Valorous Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=8282;

/*  Arcane Armor  */
UPDATE `item_template` SET `BuyPrice` = 85690, `SellPrice` = 17138 WHERE entry=8283;

/*  Arcane Boots  */
UPDATE `item_template` SET `BuyPrice` = 52570 WHERE entry=8284;

/*  Arcane Bands  */
UPDATE `item_template` SET `BuyPrice` = 33186 WHERE entry=8285;

/*  Arcane Cloak  */
UPDATE `item_template` SET `BuyPrice` = 47137 WHERE entry=8286;

/*  Arcane Pads  */
UPDATE `item_template` SET `BuyPrice` = 59381 WHERE entry=8288;

/*  Arcane Leggings  */
UPDATE `item_template` SET `BuyPrice` = 83441 WHERE entry=8289;

/*  Arcane Robe  */
UPDATE `item_template` SET `BuyPrice` = 87927, `SellPrice` = 17585 WHERE entry=8290;

/*  Arcane Sash  */
UPDATE `item_template` SET `BuyPrice` = 33922 WHERE entry=8291;

/*  Arcane Cover  */
UPDATE `item_template` SET `BuyPrice` = 57382 WHERE entry=8292;

/*  Traveler's Belt  */
UPDATE `item_template` SET `BuyPrice` = 42713 WHERE entry=8293;

/*  Traveler's Boots  */
UPDATE `item_template` SET `BuyPrice` = 63259, `SellPrice` = 12651 WHERE entry=8294;

/*  Traveler's Bracers  */
UPDATE `item_template` SET `BuyPrice` = 39940 WHERE entry=8295;

/*  Traveler's Jerkin  */
UPDATE `item_template` SET `BuyPrice` = 104305, `SellPrice` = 20861 WHERE entry=8296;

/*  Traveler's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 45565 WHERE entry=8297;

/*  Traveler's Helm  */
UPDATE `item_template` SET `BuyPrice` = 71769, `SellPrice` = 14353 WHERE entry=8299;

/*  Traveler's Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 72317 WHERE entry=8301;

/*  Hero's Bracers  */
UPDATE `item_template` SET `BuyPrice` = 55301 WHERE entry=8302;

/*  Hero's Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 134948, `SellPrice` = 26989 WHERE entry=8303;

/*  Hero's Cape  */
UPDATE `item_template` SET `BuyPrice` = 52565 WHERE entry=8304;

/*  Hero's Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 58718 WHERE entry=8305;

/*  Hero's Belt  */
UPDATE `item_template` SET `BuyPrice` = 58937 WHERE entry=8306;

/*  Hero's Boots  */
UPDATE `item_template` SET `BuyPrice` = 93586 WHERE entry=8307;

/*  Hero's Band  */
UPDATE `item_template` SET `BuyPrice` = 93517 WHERE entry=8308;

/*  Hero's Leggings  */
UPDATE `item_template` SET `BuyPrice` = 131394, `SellPrice` = 26278 WHERE entry=8309;

/*  Hero's Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 97099, `SellPrice` = 19419 WHERE entry=8310;

/*  Alabaster Plate Vambraces  */
UPDATE `item_template` SET `BuyPrice` = 29224, `SellPrice` = 5844 WHERE entry=8311;

/*  Alabaster Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 74053, `SellPrice` = 14810 WHERE entry=8312;

/*  Hero's Buckler  */
UPDATE `item_template` SET `BuyPrice` = 153187, `SellPrice` = 30637, `spellcooldown_1` = -1 WHERE entry=8313;

/*  Alabaster Plate Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 26721, `SellPrice` = 5344 WHERE entry=8314;

/*  Alabaster Plate Girdle  */
UPDATE `item_template` SET `BuyPrice` = 25306, `SellPrice` = 5061 WHERE entry=8315;

/*  Alabaster Plate Greaves  */
UPDATE `item_template` SET `BuyPrice` = 40393, `SellPrice` = 8078 WHERE entry=8316;

/*  Alabaster Plate Helmet  */
UPDATE `item_template` SET `BuyPrice` = 42977, `SellPrice` = 8595 WHERE entry=8317;

/*  Alabaster Plate Leggings  */
UPDATE `item_template` SET `BuyPrice` = 64634, `SellPrice` = 12926 WHERE entry=8318;

/*  Alabaster Plate Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 45906, `SellPrice` = 9181 WHERE entry=8319;

/*  Alabaster Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=8320;

/*  Wolfshead Helm  */
UPDATE `item_template` SET `stat_type1` = 6 WHERE entry=8345;

/*  Gauntlets of the Sea  */
UPDATE `item_template` SET `stat_value1` = 7, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=8346;

/*  Dragonscale Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 29899, `SellPrice` = 5979, `stat_type1` = 6, `stat_value1` = 6 WHERE entry=8347;

/*  Helm of Fire  */
UPDATE `item_template` SET `stat_value1` = 17, `stat_value2` = 10, `spellcooldown_1` = 900000 WHERE entry=8348;

/*  Feathered Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 72391, `stat_type1` = 6, `stat_type2` = 5, `stat_value2` = 10, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=8349;

/*  The 1 Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=8350;

/*  Dragonscale Breastplate  */
UPDATE `item_template` SET `fire_res` = 13, `frost_res` = 13, `shadow_res` = 12, `stat_value1` = 10, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=8367;

/*  Interlaced Cowl  */
UPDATE `item_template` SET `BuyPrice` = 3411 WHERE entry=8746;

/*  Double Mail Coif  */
UPDATE `item_template` SET `BuyPrice` = 3874, `SellPrice` = 774 WHERE entry=8748;

/*  Crochet Hat  */
UPDATE `item_template` SET `BuyPrice` = 8019, `SellPrice` = 1603 WHERE entry=8749;

/*  Overlinked Coif  */
UPDATE `item_template` SET `BuyPrice` = 13091 WHERE entry=8751;

/*  Laminated Scale Circlet  */
UPDATE `item_template` SET `BuyPrice` = 26086 WHERE entry=8752;

/*  Light Plate Helmet  */
UPDATE `item_template` SET `BuyPrice` = 18642, `SellPrice` = 3728 WHERE entry=8755;

/*  Field Plate Vambraces  */
UPDATE `item_template` SET `BuyPrice` = 11943, `SellPrice` = 2388 WHERE entry=9285;

/*  Field Plate Armor  */
UPDATE `item_template` SET `BuyPrice` = 30203, `SellPrice` = 6040 WHERE entry=9286;

/*  Field Plate Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 12031, `SellPrice` = 2406 WHERE entry=9287;

/*  Field Plate Girdle  */
UPDATE `item_template` SET `BuyPrice` = 12074, `SellPrice` = 2414 WHERE entry=9288;

/*  Field Plate Boots  */
UPDATE `item_template` SET `BuyPrice` = 18178, `SellPrice` = 3635 WHERE entry=9289;

/*  Field Plate Helmet  */
UPDATE `item_template` SET `BuyPrice` = 19703, `SellPrice` = 3940 WHERE entry=9290;

/*  Field Plate Leggings  */
UPDATE `item_template` SET `BuyPrice` = 26432, `SellPrice` = 5286 WHERE entry=9291;

/*  Field Plate Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 18424, `SellPrice` = 3684 WHERE entry=9292;

/*  Wirt's Third Leg  */
UPDATE `item_template` SET `BuyPrice` = 97888, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=9359;

/*  Golden Scale Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 18446, `stat_type2` = 6 WHERE entry=9366;

/*  Expert Goldminer's Helmet  */
UPDATE `item_template` SET `BuyPrice` = 21101, `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 15874 WHERE entry=9375;

/*  Shovelphlange's Mining Axe  */
UPDATE `item_template` SET `BuyPrice` = 56901 WHERE entry=9378;

/*  Sang'thraze the Deflector  */
UPDATE `item_template` SET `BuyPrice` = 131917, `dmg_min1` = 34.0, `dmg_max1` = 65.0 WHERE entry=9379;

/*  Jang'thraze the Protector  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=9380;

/*  Earthen Rod  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9381;

/*  Tromping Miner's Boots  */
UPDATE `item_template` SET `BuyPrice` = 18039, `SellPrice` = 3607, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=9382;

/*  Archaic Defender  */
UPDATE `item_template` SET `BuyPrice` = 61404, `SellPrice` = 12280 WHERE entry=9385;

/*  Revelosh's Boots  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 206, `BuyPrice` = 17194, `SellPrice` = 3438, `MaxDurability` = 55, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 7 WHERE entry=9387;

/*  Revelosh's Armguards  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 101, `BuyPrice` = 15981, `SellPrice` = 3196, `MaxDurability` = 35, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 6 WHERE entry=9388;

/*  Revelosh's Spaulders  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 84, `BuyPrice` = 21657, `SellPrice` = 4331, `MaxDurability` = 50, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 7 WHERE entry=9389;

/*  Revelosh's Gloves  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 33, `BuyPrice` = 10734, `SellPrice` = 2146, `MaxDurability` = 25, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 6 WHERE entry=9390;

/*  Horned Viking Helmet  */
UPDATE `item_template` SET `BuyPrice` = 6863, `SellPrice` = 1372 WHERE entry=9394;

/*  Legguards of the Vault  */
UPDATE `item_template` SET `stat_type2` = 4, `stat_value2` = 13, `stat_type4` = 6, `stat_value4` = 5, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 4 WHERE entry=9396;

/*  Worn Running Boots  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 76, `BuyPrice` = 6221, `SellPrice` = 1244, `MaxDurability` = 45, `stat_value1` = 11, `stat_value2` = 3, `DisenchantID` = 6 WHERE entry=9398;

/*  Baelog's Shortbow  */
UPDATE `item_template` SET `Quality` = 1, `BuyPrice` = 8121, `SellPrice` = 1624, `dmg_min1` = 26.0, `dmg_max1` = 50.0, `bonding` = 0, `MaxDurability` = 65, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=9400;

/*  Earthborn Kilt  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=9402;

/*  Battered Viking Shield  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 907, `BuyPrice` = 6655, `SellPrice` = 1331, `block` = 15, `bonding` = 0, `MaxDurability` = 85, `stat_value1` = 8, `stat_type2` = 6, `stat_value2` = 4, `DisenchantID` = 0 WHERE entry=9403;

/*  Girdle of Golem Strength  */
UPDATE `item_template` SET `BuyPrice` = 10277 WHERE entry=9405;

/*  Stoneweaver Leggings  */
UPDATE `item_template` SET `BuyPrice` = 25470, `stat_type3` = 5, `stat_value3` = 8, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=9407;

/*  Ironshod Bludgeon  */
UPDATE `item_template` SET `BuyPrice` = 93198, `stat_type1` = 7, `stat_type2` = 4 WHERE entry=9408;

/*  Ironaya's Bracers  */
UPDATE `item_template` SET `BuyPrice` = 22450 WHERE entry=9409;

/*  Cragfists  */
UPDATE `item_template` SET `BuyPrice` = 18925, `SellPrice` = 3785 WHERE entry=9410;

/*  Rockshard Pauldrons  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 186, `BuyPrice` = 35780, `SellPrice` = 7156, `MaxDurability` = 60, `stat_type1` = 4, `stat_value1` = 2, `stat_value2` = 9, `stat_type3` = 6, `stat_value3` = 9, `DisenchantID` = 7, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=9411;

/*  Galgann's Fireblaster  */
UPDATE `item_template` SET `dmg_min1` = 44.0, `dmg_max1` = 84.0, `RequiredLevel` = 42 WHERE entry=9412;

/*  The Rockpounder  */
UPDATE `item_template` SET `BuyPrice` = 161244, `SellPrice` = 32248, `RequiredLevel` = 44 WHERE entry=9413;

/*  Oilskin Leggings  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 108, `BuyPrice` = 43227, `SellPrice` = 8645, `MaxDurability` = 65, `stat_value1` = 13, `stat_type2` = 6, `stat_value2` = 12, `DisenchantID` = 8, `RequiredLevel` = 41 WHERE entry=9414;

/*  Grimlok's Tribal Vestments  */
UPDATE `item_template` SET `stat_value2` = 20, `spellid_1` = 0, `spelltrigger_1` = 0, `RequiredLevel` = 42 WHERE entry=9415;

/*  Grimlok's Charge  */
UPDATE `item_template` SET `BuyPrice` = 141092, `stat_type2` = 4, `stat_value2` = 10, `stat_type3` = 7, `stat_value3` = 15, `spellid_1` = 0, `spelltrigger_1` = 0, `RequiredLevel` = 42, `StatsCount` = 3 WHERE entry=9416;

/*  Archaedic Shard  */
UPDATE `item_template` SET `DisenchantID` = 0, `spelltrigger_1` = 0 WHERE entry=9417;

/*  Stoneslayer  */
UPDATE `item_template` SET `BuyPrice` = 164258, `RequiredLevel` = 44 WHERE entry=9418;

/*  Galgann's Firehammer  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 90384, `SellPrice` = 18076, `dmg_min1` = 42.0, `dmg_max1` = 79.0, `MaxDurability` = 75, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 28, `RequiredLevel` = 41 WHERE entry=9419;

/*  Adventurer's Pith Helmet  */
UPDATE `item_template` SET `BuyPrice` = 20416, `stat_type1` = 6 WHERE entry=9420;

/*  Shadowforge Bushmaster  */
UPDATE `item_template` SET `dmg_min1` = 46.0, `dmg_max1` = 86.0, `shadow_res` = 7, `stat_type1` = 0, `stat_value1` = 0 WHERE entry=9422;

/*  The Jackhammer  */
UPDATE `item_template` SET `BuyPrice` = 127319, `SellPrice` = 25463 WHERE entry=9423;

/*  Ginn-su Sword  */
UPDATE `item_template` SET `BuyPrice` = 67970 WHERE entry=9424;

/*  Pendulum of Doom  */
UPDATE `item_template` SET `BuyPrice` = 107446 WHERE entry=9425;

/*  Monolithic Bow  */
UPDATE `item_template` SET `dmg_min1` = 41.0, `dmg_max1` = 77.0, `stat_type1` = 4, `stat_value1` = 6, `stat_type2` = 3, `stat_value2` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=9426;

/*  Stonevault Bonebreaker  */
UPDATE `item_template` SET `BuyPrice` = 74265 WHERE entry=9427;

/*  Unearthed Bands  */
UPDATE `item_template` SET `BuyPrice` = 10481 WHERE entry=9428;

/*  Miner's Hat of the Deep  */
UPDATE `item_template` SET `stat_value1` = 10, `stat_value2` = 17, `stat_type4` = 3, `stat_value4` = 4, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 4 WHERE entry=9429;

/*  Spaulders of a Lost Age  */
UPDATE `item_template` SET `BuyPrice` = 42768, `stat_value1` = 16, `stat_type2` = 6, `stat_value2` = 7, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=9430;

/*  Papal Fez  */
UPDATE `item_template` SET `BuyPrice` = 24426 WHERE entry=9431;

/*  Skullplate Bracers  */
UPDATE `item_template` SET `BuyPrice` = 15135, `SellPrice` = 3027, `stat_type3` = 6 WHERE entry=9432;

/*  Forgotten Wraps  */
UPDATE `item_template` SET `stat_type3` = 3, `stat_value3` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `spellcooldown_1` = -1, `StatsCount` = 3 WHERE entry=9433;

/*  Reticulated Bone Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 14583 WHERE entry=9435;

/*  Grubbis Paws  */
UPDATE `item_template` SET `BuyPrice` = 11302, `stat_type3` = 6 WHERE entry=9445;

/*  Electrocutioner Leg  */
UPDATE `item_template` SET `RequiredLevel` = 29 WHERE entry=9446;

/*  Electrocutioner Lagnut  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `RequiredLevel` = 29 WHERE entry=9447;

/*  Spidertank Oilrag  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 20, `BuyPrice` = 5774, `SellPrice` = 1154, `MaxDurability` = 25, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 5 WHERE entry=9448;

/*  Manual Crowd Pummeler  */
UPDATE `item_template` SET `BuyPrice` = 47822, `spellcharges_1` = 3, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `RequiredLevel` = 29 WHERE entry=9449;

/*  Gnomebot Operating Boots  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 68, `BuyPrice` = 10908, `SellPrice` = 2181, `MaxDurability` = 45, `stat_type2` = 6, `DisenchantID` = 5, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=9450;

/*  Hydrocane  */
UPDATE `item_template` SET `BuyPrice` = 41051, `dmg_min1` = 48.0, `dmg_max1` = 73.0 WHERE entry=9452;

/*  Toxic Revenger  */
UPDATE `item_template` SET `BuyPrice` = 32961 WHERE entry=9453;

/*  Emissary Cuffs  */
UPDATE `item_template` SET `BuyPrice` = 9129, `SellPrice` = 1825 WHERE entry=9455;

/*  Glass Shooter  */
UPDATE `item_template` SET `dmg_min1` = 36.0, `dmg_max1` = 68.0 WHERE entry=9456;

/*  Royal Diplomatic Scepter  */
UPDATE `item_template` SET `BuyPrice` = 44510 WHERE entry=9457;

/*  Thermaplugg's Central Core  */
UPDATE `item_template` SET `BuyPrice` = 34589, `SellPrice` = 6917, `RequiredLevel` = 32 WHERE entry=9458;

/*  Thermaplugg's Left Arm  */
UPDATE `item_template` SET `BuyPrice` = 67801, `RequiredLevel` = 32 WHERE entry=9459;

/*  Charged Gear  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `RequiredLevel` = 32 WHERE entry=9461;

/*  Gahz'rilla Fang  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 93409, `SellPrice` = 18681, `dmg_min1` = 35.0, `dmg_max1` = 66.0, `MaxDurability` = 55, `DisenchantID` = 28 WHERE entry=9467;

/*  Gahz'rilla Scale Armor  */
UPDATE `item_template` SET `BuyPrice` = 73171, `stat_type2` = 6, `stat_value2` = 23, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=9469;

/*  Bad Mojo Mask  */
UPDATE `item_template` SET `stat_value1` = 24, `spellid_1` = 9414 WHERE entry=9470;

/*  Jinxed Hoodoo Skin  */
UPDATE `item_template` SET `BuyPrice` = 66207, `stat_type1` = 6, `stat_value1` = 20, `stat_type2` = 4 WHERE entry=9473;

/*  Jinxed Hoodoo Kilt  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_type2` = 5, `stat_value2` = 10 WHERE entry=9474;

/*  Big Bad Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 42968, `SellPrice` = 8593, `stat_type3` = 6 WHERE entry=9476;

/*  The Chief's Enforcer  */
UPDATE `item_template` SET `BuyPrice` = 179682 WHERE entry=9477;

/*  Embrace of the Lycan  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=9479;

/*  Eyegouger  */
UPDATE `item_template` SET `BuyPrice` = 158625 WHERE entry=9480;

/*  The Minotaur  */
UPDATE `item_template` SET `BuyPrice` = 170335 WHERE entry=9481;

/*  Witch Doctor's Cane  */
UPDATE `item_template` SET `spellid_1` = 17993 WHERE entry=9482;

/*  Flaming Incinerator  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9483;

/*  Spellshock Leggings  */
UPDATE `item_template` SET `BuyPrice` = 54811 WHERE entry=9484;

/*  Vibroblade  */
UPDATE `item_template` SET `BuyPrice` = 26440 WHERE entry=9485;

/*  Supercharger Battle Axe  */
UPDATE `item_template` SET `BuyPrice` = 27417 WHERE entry=9486;

/*  Hi-tech Supergun  */
UPDATE `item_template` SET `BuyPrice` = 18163, `dmg_min1` = 23.0, `dmg_max1` = 43.0 WHERE entry=9487;

/*  Oscillating Power Hammer  */
UPDATE `item_template` SET `BuyPrice` = 22096 WHERE entry=9488;

/*  Gyromatic Icemaker  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9489;

/*  Gizmotron Megachopper  */
UPDATE `item_template` SET `BuyPrice` = 30609, `SellPrice` = 6121 WHERE entry=9490;

/*  Hotshot Pilot's Gloves  */
UPDATE `item_template` SET `stat_type4` = 3, `stat_value4` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 4 WHERE entry=9491;

/*  Electromagnetic Gigaflux Reactivator  */
UPDATE `item_template` SET `RequiredLevel` = 32 WHERE entry=9492;

/*  Mechbuilder's Overalls  */
UPDATE `item_template` SET `BuyPrice` = 11762 WHERE entry=9508;

/*  Petrolspill Leggings  */
UPDATE `item_template` SET `BuyPrice` = 13416, `fire_res` = -10 WHERE entry=9509;

/*  Blackmetal Cape  */
UPDATE `item_template` SET `BuyPrice` = 31705 WHERE entry=9512;

/*  Ley Staff  */
UPDATE `item_template` SET `BuyPrice` = 1526, `SellPrice` = 305, `ItemLevel` = 10, `dmg_min1` = 16.0, `dmg_max1` = 25.0, `MaxDurability` = 45, `stat_value1` = 1, `stat_value2` = 1 WHERE entry=9513;

/*  Nether-lace Tunic  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=9515;

/*  Celestial Stave  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `spelltrigger_3` = 0 WHERE entry=9517;

/*  Mud's Crushers  */
UPDATE `item_template` SET `BuyPrice` = 9499, `SellPrice` = 1899 WHERE entry=9518;

/*  Durtfeet Stompers  */
UPDATE `item_template` SET `stat_type1` = 4 WHERE entry=9519;

/*  Energized Stone Circle  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9522;

/*  Gemshale Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 26322, `SellPrice` = 5264 WHERE entry=9531;

/*  Masons Fraternity Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=9533;

/*  Engineer's Guild Headpiece  */
UPDATE `item_template` SET `BuyPrice` = 44236 WHERE entry=9534;

/*  Sleeping Robes  */
UPDATE `item_template` SET `BuyPrice` = 473 WHERE entry=9598;

/*  Barkmail Leggings  */
UPDATE `item_template` SET `BuyPrice` = 713 WHERE entry=9599;

/*  Lace Pants  */
UPDATE `item_template` SET `BuyPrice` = 465 WHERE entry=9600;

/*  Bastion of Stormwind  */
UPDATE `item_template` SET `BuyPrice` = 8810 WHERE entry=9607;

/*  Shilly Mitts  */
UPDATE `item_template` SET `BuyPrice` = 5046 WHERE entry=9609;

/*  Dual Reinforced Leggings  */
UPDATE `item_template` SET `BuyPrice` = 31721 WHERE entry=9625;

/* Neeru's Herb Pouch */
UPDATE `item_template` SET `name` = "Neeru's Herb Pouch" WHERE `entry`=9628;

/*  Pratt's Handcrafted Boots  */
UPDATE `item_template` SET `BuyPrice` = 28903 WHERE entry=9630;

/*  Pratt's Handcrafted Gloves  */
UPDATE `item_template` SET `BuyPrice` = 19341 WHERE entry=9631;

/*  Jangdor's Handcrafted Gloves  */
UPDATE `item_template` SET `BuyPrice` = 19416 WHERE entry=9632;

/*  Jangdor's Handcrafted Boots  */
UPDATE `item_template` SET `BuyPrice` = 29237 WHERE entry=9633;

/*  Skilled Handling Gloves  */
UPDATE `item_template` SET `BuyPrice` = 16905, `stat_type2` = 3, `stat_value2` = 6, `stat_type3` = 5, `stat_value3` = 10, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=9634;

/*  Master Apothecary Cape  */
UPDATE `item_template` SET `BuyPrice` = 23567 WHERE entry=9635;

/*  Swashbuckler Sash  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 10, `stat_type2` = 7, `stat_value2` = 9, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=9636;

/*  Shinkicker Boots  */
UPDATE `item_template` SET `BuyPrice` = 23747, `SellPrice` = 4749 WHERE entry=9637;

/*  The Hand of Antu'sul  */
UPDATE `item_template` SET `BuyPrice` = 120556 WHERE entry=9639;

/*  Vice Grips  */
UPDATE `item_template` SET `BuyPrice` = 24201, `SellPrice` = 4840 WHERE entry=9640;

/*  Lifeblood Amulet  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 5, `stat_type2` = 7, `stat_value2` = 13, `spellid_1` = 0, `spelltrigger_1` = 0, `spellcooldown_1` = -1, `StatsCount` = 2 WHERE entry=9641;

/*  Band of the Great Tortoise  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=9642;

/*  Optomatic Deflector  */
UPDATE `item_template` SET `BuyPrice` = 79942 WHERE entry=9643;

/*  Gnomish Water Sinking Device  */
UPDATE `item_template` SET `BuyPrice` = 33959, `SellPrice` = 6791 WHERE entry=9646;

/*  Chainlink Towel  */
UPDATE `item_template` SET `BuyPrice` = 31963 WHERE entry=9648;

/*  Royal Highmark Vestments  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 71, `BuyPrice` = 66146, `SellPrice` = 13229, `MaxDurability` = 70, `DisenchantID` = 9, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=9649;

/*  Honorguard Chestpiece  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 298, `BuyPrice` = 90081, `SellPrice` = 18016, `MaxDurability` = 100, `stat_type1` = 4, `stat_value1` = 22, `stat_value2` = 3, `stat_type3` = 5, `stat_value3` = 3, `DisenchantID` = 9, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=9650;

/*  Gryphon Rider's Stormhammer  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 134140, `SellPrice` = 26828, `dmg_min1` = 59.0, `dmg_max1` = 111.0, `MaxDurability` = 75, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 29 WHERE entry=9651;

/*  Gryphon Rider's Leggings  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 122, `BuyPrice` = 67330, `SellPrice` = 13466, `MaxDurability` = 65, `stat_value1` = 15, `stat_value2` = 15, `DisenchantID` = 9 WHERE entry=9652;

/*  Speedy Racer Goggles  */
UPDATE `item_template` SET `BuyPrice` = 33727, `stat_type1` = 3, `stat_type2` = 5, `stat_value2` = 14, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=9653;

/*  Cairnstone Sliver  */
UPDATE `item_template` SET `BuyPrice` = 84644, `SellPrice` = 16928, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=9654;

/*  Seedtime Hoop  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=9655;

/*  Granite Grips  */
UPDATE `item_template` SET `BuyPrice` = 21256, `SellPrice` = 4251 WHERE entry=9656;

/*  Boots of the Maharishi  */
UPDATE `item_template` SET `BuyPrice` = 20432, `stat_type2` = 3, `stat_value2` = 4, `stat_type3` = 5, `stat_value3` = 9, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=9658;

/*  Earthclasp Barrier  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9661;

/*  Rushridge Boots  */
UPDATE `item_template` SET `BuyPrice` = 21291, `SellPrice` = 4258 WHERE entry=9662;

/*  Dawnrider's Chestpiece  */
UPDATE `item_template` SET `BuyPrice` = 49848 WHERE entry=9663;

/*  Sentinel's Guard  */
UPDATE `item_template` SET `BuyPrice` = 25013, `SellPrice` = 5002 WHERE entry=9664;

/*  Wingcrest Gloves  */
UPDATE `item_template` SET `BuyPrice` = 24134, `SellPrice` = 4826 WHERE entry=9665;

/*  Tok'kar's Murloc Basher  */
UPDATE `item_template` SET `BuyPrice` = 87429, `SellPrice` = 17485 WHERE entry=9678;

/*  Tok'kar's Murloc Chopper  */
UPDATE `item_template` SET `BuyPrice` = 87750 WHERE entry=9679;

/*  Leather Chef's Belt  */
UPDATE `item_template` SET `BuyPrice` = 19159, `SellPrice` = 3831 WHERE entry=9682;

/*  Strength of the Treant  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 149764, `SellPrice` = 29952, `ItemLevel` = 50, `dmg_min1` = 115.0, `dmg_max1` = 173.0, `MaxDurability` = 85, `stat_value1` = 7, `stat_value2` = 18, `DisenchantID` = 28 WHERE entry=9683;

/*  Force of the Hippogryph  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 128648, `SellPrice` = 25729, `dmg_min1` = 51.0, `dmg_max1` = 95.0, `MaxDurability` = 75, `stat_value1` = 9, `DisenchantID` = 29 WHERE entry=9684;

/*  Will of the Mountain Giant  */
UPDATE `item_template` SET `dmg_min1` = 88.0, `dmg_max1` = 133.0, `MaxDurability` = 85, `stat_type1` = 4, `stat_value1` = 15, `stat_type2` = 7, `stat_value2` = 14, `DisenchantID` = 0 WHERE entry=9685;

/*  Spirit of the Faerie Dragon  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 129573, `SellPrice` = 25914, `dmg_min1` = 55.0, `dmg_max1` = 103.0, `MaxDurability` = 75, `stat_value1` = 9, `DisenchantID` = 29 WHERE entry=9686;

/*  Grappler's Belt  */
UPDATE `item_template` SET `BuyPrice` = 7771 WHERE entry=9687;

/*  Gloves of Insight  */
UPDATE `item_template` SET `BuyPrice` = 7524, `SellPrice` = 1504 WHERE entry=9698;

/*  Rustler Gloves  */
UPDATE `item_template` SET `BuyPrice` = 17865 WHERE entry=9704;

/*  Tharg's Disk  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9706;

/*  Reforged Blade of Heroes  */
UPDATE `item_template` SET `dmg_min1` = 31.0, `dmg_max1` = 59.0 WHERE entry=9718;

/*  Simple Cord  */
UPDATE `item_template` SET `BuyPrice` = 246 WHERE entry=9742;

/*  Simple Shoes  */
UPDATE `item_template` SET `BuyPrice` = 335 WHERE entry=9743;

/*  Simple Bands  */
UPDATE `item_template` SET `BuyPrice` = 224, `SellPrice` = 44 WHERE entry=9744;

/*  Simple Cape  */
UPDATE `item_template` SET `BuyPrice` = 270 WHERE entry=9745;

/*  Simple Gloves  */
UPDATE `item_template` SET `BuyPrice` = 282 WHERE entry=9746;

/*  Simple Robe  */
UPDATE `item_template` SET `BuyPrice` = 1371 WHERE entry=9748;

/*  Simple Blouse  */
UPDATE `item_template` SET `BuyPrice` = 1376 WHERE entry=9749;

/*  Gypsy Sash  */
UPDATE `item_template` SET `BuyPrice` = 287 WHERE entry=9750;

/*  Gypsy Bands  */
UPDATE `item_template` SET `BuyPrice` = 289, `SellPrice` = 57 WHERE entry=9752;

/*  Gypsy Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9753;

/*  Gypsy Cloak  */
UPDATE `item_template` SET `BuyPrice` = 350, `SellPrice` = 70 WHERE entry=9754;

/*  Gypsy Trousers  */
UPDATE `item_template` SET `BuyPrice` = 1471 WHERE entry=9756;

/*  Gypsy Tunic  */
UPDATE `item_template` SET `BuyPrice` = 1819, `SellPrice` = 363 WHERE entry=9757;

/*  Cadet Belt  */
UPDATE `item_template` SET `BuyPrice` = 364, `SellPrice` = 72 WHERE entry=9758;

/*  Cadet Cloak  */
UPDATE `item_template` SET `BuyPrice` = 294, `SellPrice` = 58 WHERE entry=9761;

/*  Cadet Leggings  */
UPDATE `item_template` SET `BuyPrice` = 1681 WHERE entry=9763;

/*  Cadet Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9764;

/*  Greenweave Sash  */
UPDATE `item_template` SET `BuyPrice` = 1809, `SellPrice` = 361 WHERE entry=9766;

/*  Greenweave Cloak  */
UPDATE `item_template` SET `BuyPrice` = 2084, `SellPrice` = 416 WHERE entry=9770;

/*  Greenweave Robe  */
UPDATE `item_template` SET `BuyPrice` = 6847 WHERE entry=9773;

/*  Bandit Cinch  */
UPDATE `item_template` SET `BuyPrice` = 1579, `SellPrice` = 315 WHERE entry=9775;

/*  Bandit Boots  */
UPDATE `item_template` SET `BuyPrice` = 2735 WHERE entry=9776;

/*  Bandit Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9778;

/*  Bandit Cloak  */
UPDATE `item_template` SET `BuyPrice` = 1671 WHERE entry=9779;

/*  Bandit Gloves  */
UPDATE `item_template` SET `BuyPrice` = 1849, `SellPrice` = 369 WHERE entry=9780;

/*  Raider's Chestpiece  */
UPDATE `item_template` SET `BuyPrice` = 4059, `SellPrice` = 811 WHERE entry=9783;

/*  Raider's Bracers  */
UPDATE `item_template` SET `BuyPrice` = 1344, `SellPrice` = 268 WHERE entry=9785;

/*  Raider's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 1173 WHERE entry=9786;

/*  Raider's Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 1791 WHERE entry=9787;

/*  Raider's Belt  */
UPDATE `item_template` SET `BuyPrice` = 1563 WHERE entry=9788;

/*  Raider's Legguards  */
UPDATE `item_template` SET `BuyPrice` = 3709, `SellPrice` = 741 WHERE entry=9789;

/*  Raider's Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9790;

/*  Ivycloth Boots  */
UPDATE `item_template` SET `BuyPrice` = 4115 WHERE entry=9792;

/*  Ivycloth Bracelets  */
UPDATE `item_template` SET `BuyPrice` = 2753 WHERE entry=9793;

/*  Ivycloth Cloak  */
UPDATE `item_template` SET `BuyPrice` = 4145 WHERE entry=9794;

/*  Ivycloth Mantle  */
UPDATE `item_template` SET `BuyPrice` = 5190 WHERE entry=9796;

/*  Superior Boots  */
UPDATE `item_template` SET `BuyPrice` = 6024, `SellPrice` = 1204 WHERE entry=9802;

/*  Superior Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9804;

/*  Superior Gloves  */
UPDATE `item_template` SET `BuyPrice` = 4169, `SellPrice` = 833 WHERE entry=9806;

/*  Fortified Boots  */
UPDATE `item_template` SET `BuyPrice` = 6155 WHERE entry=9810;

/*  Fortified Bracers  */
UPDATE `item_template` SET `BuyPrice` = 3628 WHERE entry=9811;

/*  Fortified Cloak  */
UPDATE `item_template` SET `BuyPrice` = 2851 WHERE entry=9812;

/*  Fortified Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 4129, `SellPrice` = 825 WHERE entry=9813;

/*  Fortified Shield  */
UPDATE `item_template` SET `BuyPrice` = 8906, `spellcooldown_1` = -1 WHERE entry=9816;

/*  Fortified Chain  */
UPDATE `item_template` SET `BuyPrice` = 8410 WHERE entry=9818;

/*  Durable Cape  */
UPDATE `item_template` SET `BuyPrice` = 5963 WHERE entry=9822;

/*  Durable Gloves  */
UPDATE `item_template` SET `BuyPrice` = 4828 WHERE entry=9823;

/*  Scaled Leather Bracers  */
UPDATE `item_template` SET `BuyPrice` = 5100 WHERE entry=9829;

/*  Scaled Shield  */
UPDATE `item_template` SET `BuyPrice` = 17445 WHERE entry=9830;

/*  Scaled Leather Gloves  */
UPDATE `item_template` SET `BuyPrice` = 6240 WHERE entry=9832;

/*  Scaled Leather Leggings  */
UPDATE `item_template` SET `BuyPrice` = 15157 WHERE entry=9833;

/*  Scaled Leather Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 10371 WHERE entry=9834;

/*  Scaled Leather Tunic  */
UPDATE `item_template` SET `BuyPrice` = 15266 WHERE entry=9835;

/*  Banded Cloak  */
UPDATE `item_template` SET `BuyPrice` = 5872 WHERE entry=9838;

/*  Banded Shield  */
UPDATE `item_template` SET `BuyPrice` = 18696, `spellcooldown_1` = -1 WHERE entry=9843;

/*  Conjurer's Vest  */
UPDATE `item_template` SET `BuyPrice` = 18546 WHERE entry=9844;

/*  Conjurer's Bracers  */
UPDATE `item_template` SET `BuyPrice` = 7148 WHERE entry=9846;

/*  Conjurer's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 8895 WHERE entry=9847;

/*  Conjurer's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 7922 WHERE entry=9848;

/*  Conjurer's Robe  */
UPDATE `item_template` SET `BuyPrice` = 19102 WHERE entry=9852;

/*  Archer's Jerkin  */
UPDATE `item_template` SET `BuyPrice` = 24677 WHERE entry=9854;

/*  Archer's Boots  */
UPDATE `item_template` SET `BuyPrice` = 14195 WHERE entry=9856;

/*  Archer's Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9858;

/*  Archer's Cap  */
UPDATE `item_template` SET `BuyPrice` = 14359, `SellPrice` = 2871 WHERE entry=9859;

/*  Archer's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 11912, `SellPrice` = 2382 WHERE entry=9860;

/*  Archer's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 8768 WHERE entry=9861;

/*  Archer's Trousers  */
UPDATE `item_template` SET `BuyPrice` = 21302 WHERE entry=9862;

/*  Renegade Boots  */
UPDATE `item_template` SET `BuyPrice` = 17637 WHERE entry=9864;

/*  Renegade Cloak  */
UPDATE `item_template` SET `BuyPrice` = 8894, `SellPrice` = 1778 WHERE entry=9867;

/*  Renegade Circlet  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=9870;

/*  Renegade Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9873;

/*  Sorcerer Slippers  */
UPDATE `item_template` SET `BuyPrice` = 15733 WHERE entry=9876;

/*  Sorcerer Hat  */
UPDATE `item_template` SET `BuyPrice` = 17124, `SellPrice` = 3424 WHERE entry=9878;

/*  Sorcerer Gloves  */
UPDATE `item_template` SET `BuyPrice` = 10650 WHERE entry=9880;

/*  Sorcerer Mantle  */
UPDATE `item_template` SET `BuyPrice` = 17320 WHERE entry=9881;

/*  Sorcerer Sphere  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=9882;

/*  Huntsman's Boots  */
UPDATE `item_template` SET `BuyPrice` = 20899, `SellPrice` = 4179 WHERE entry=9885;

/*  Huntsman's Cap  */
UPDATE `item_template` SET `BuyPrice` = 21203 WHERE entry=9889;

/*  Huntsman's Belt  */
UPDATE `item_template` SET `BuyPrice` = 13181 WHERE entry=9891;

/*  Huntsman's Leggings  */
UPDATE `item_template` SET `BuyPrice` = 33448 WHERE entry=9893;

/*  Jazeraint Boots  */
UPDATE `item_template` SET `BuyPrice` = 26105 WHERE entry=9895;

/*  Jazeraint Chestguard  */
UPDATE `item_template` SET `BuyPrice` = 36842 WHERE entry=9897;

/*  Jazeraint Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9899;

/*  Jazeraint Belt  */
UPDATE `item_template` SET `BuyPrice` = 16474, `SellPrice` = 3294 WHERE entry=9901;

/*  Jazeraint Leggings  */
UPDATE `item_template` SET `BuyPrice` = 38714, `SellPrice` = 7742 WHERE entry=9903;

/*  Royal Blouse  */
UPDATE `item_template` SET `BuyPrice` = 41258 WHERE entry=9905;

/*  Royal Sash  */
UPDATE `item_template` SET `BuyPrice` = 15216 WHERE entry=9906;

/*  Royal Bands  */
UPDATE `item_template` SET `BuyPrice` = 14242 WHERE entry=9909;

/*  Royal Gloves  */
UPDATE `item_template` SET `BuyPrice` = 15437 WHERE entry=9910;

/*  Royal Trousers  */
UPDATE `item_template` SET `BuyPrice` = 36142 WHERE entry=9911;

/*  Royal Amice  */
UPDATE `item_template` SET `BuyPrice` = 25188 WHERE entry=9912;

/*  Royal Gown  */
UPDATE `item_template` SET `BuyPrice` = 42454, `SellPrice` = 8490 WHERE entry=9913;

/*  Royal Scepter  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `spellcooldown_2` = -1, `spellcategorycooldown_2` = -1, `spellcooldown_3` = -1, `spellcategorycooldown_3` = -1 WHERE entry=9914;

/*  Brigade Defender  */
UPDATE `item_template` SET `BuyPrice` = 51061, `spellcooldown_1` = -1 WHERE entry=9918;

/*  Tracker's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 25746, `SellPrice` = 5149 WHERE entry=9919;

/*  Tracker's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 18606 WHERE entry=9920;

/*  Tracker's Headband  */
UPDATE `item_template` SET `BuyPrice` = 30252 WHERE entry=9921;

/*  Tracker's Shoulderpads  */
UPDATE `item_template` SET `BuyPrice` = 30477 WHERE entry=9923;

/*  Tracker's Wristguards  */
UPDATE `item_template` SET `BuyPrice` = 18949, `SellPrice` = 3789 WHERE entry=9925;

/*  Brigade Bracers  */
UPDATE `item_template` SET `BuyPrice` = 19638 WHERE entry=9927;

/*  Brigade Circlet  */
UPDATE `item_template` SET `BuyPrice` = 34977 WHERE entry=9932;

/*  Brigade Leggings  */
UPDATE `item_template` SET `BuyPrice` = 46970 WHERE entry=9933;

/*  Brigade Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 32888 WHERE entry=9934;

/*  Embossed Plate Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9935;

/*  Abjurer's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 30147 WHERE entry=9938;

/*  Abjurer's Pants  */
UPDATE `item_template` SET `BuyPrice` = 46708 WHERE entry=9942;

/*  Abjurer's Robe  */
UPDATE `item_template` SET `BuyPrice` = 56358 WHERE entry=9943;

/*  Abjurer's Crystal  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=9944;

/*  Chieftain's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 33976, `SellPrice` = 6795 WHERE entry=9951;

/*  Chieftain's Leggings  */
UPDATE `item_template` SET `BuyPrice` = 60629, `SellPrice` = 12125 WHERE entry=9954;

/*  Chieftain's Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 42654, `SellPrice` = 8530 WHERE entry=9955;

/*  Warmonger's Chestpiece  */
UPDATE `item_template` SET `BuyPrice` = 68766 WHERE entry=9957;

/*  Warmonger's Buckler  */
UPDATE `item_template` SET `BuyPrice` = 73620, `spellcooldown_1` = -1 WHERE entry=9958;

/*  Warmonger's Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 49866 WHERE entry=9965;

/*  Embossed Plate Armor  */
UPDATE `item_template` SET `BuyPrice` = 33715, `SellPrice` = 6743 WHERE entry=9966;

/*  Embossed Plate Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 14503, `SellPrice` = 2900 WHERE entry=9967;

/*  Embossed Plate Girdle  */
UPDATE `item_template` SET `BuyPrice` = 13476, `SellPrice` = 2695 WHERE entry=9968;

/*  Embossed Plate Helmet  */
UPDATE `item_template` SET `BuyPrice` = 19824, `SellPrice` = 3964 WHERE entry=9969;

/*  Embossed Plate Leggings  */
UPDATE `item_template` SET `BuyPrice` = 28654, `SellPrice` = 5730 WHERE entry=9970;

/*  Embossed Plate Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 19976, `SellPrice` = 3995 WHERE entry=9971;

/*  Embossed Plate Bracers  */
UPDATE `item_template` SET `BuyPrice` = 12378, `SellPrice` = 2475 WHERE entry=9972;

/*  Embossed Plate Boots  */
UPDATE `item_template` SET `BuyPrice` = 18637, `SellPrice` = 3727 WHERE entry=9973;

/*  Overlord's Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=9974;

/*  Black Mageweave Leggings  */
UPDATE `item_template` SET `BuyPrice` = 24164, `SellPrice` = 4832 WHERE entry=9999;

/*  Shadoweave Pants  */
UPDATE `item_template` SET `BuyPrice` = 26380, `spellid_1` = 9328 WHERE entry=10002;

/*  Black Mageweave Gloves  */
UPDATE `item_template` SET `BuyPrice` = 14296 WHERE entry=10003;

/*  Shadoweave Robe  */
UPDATE `item_template` SET `spellid_1` = 9328 WHERE entry=10004;

/*  Red Mageweave Vest  */
UPDATE `item_template` SET `BuyPrice` = 28999, `SellPrice` = 5799 WHERE entry=10007;

/*  White Bandit Mask  */
UPDATE `item_template` SET `BuyPrice` = 21826, `stat_type1` = 3, `stat_type2` = 4, `stat_value2` = 11, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=10008;

/*  Stormcloth Pants  */
UPDATE `item_template` SET `BuyPrice` = 28648, `DisenchantID` = 0, `spellid_1` = 7696 WHERE entry=10010;

/*  Stormcloth Gloves  */
UPDATE `item_template` SET `BuyPrice` = 14377, `DisenchantID` = 0 WHERE entry=10011;

/*  Stormcloth Vest  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=10020;

/*  Dreamweave Vest  */
UPDATE `item_template` SET `stat_type1` = 6 WHERE entry=10021;

/*  Shadoweave Gloves  */
UPDATE `item_template` SET `BuyPrice` = 16672, `spellid_1` = 9325 WHERE entry=10023;

/*  Shadoweave Mask  */
UPDATE `item_template` SET `spellid_1` = 14794 WHERE entry=10025;

/*  Black Mageweave Boots  */
UPDATE `item_template` SET `BuyPrice` = 27298 WHERE entry=10026;

/*  Shadoweave Shoulders  */
UPDATE `item_template` SET `spellid_1` = 9325 WHERE entry=10028;

/*  Admiral's Hat  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0 WHERE entry=10030;

/*  Shadoweave Boots  */
UPDATE `item_template` SET `BuyPrice` = 30150, `spellid_1` = 9414 WHERE entry=10031;

/*  Stormcloth Headband  */
UPDATE `item_template` SET `BuyPrice` = 30263, `DisenchantID` = 0, `spellid_1` = 9411 WHERE entry=10032;

/*  Red Mageweave Headband  */
UPDATE `item_template` SET `BuyPrice` = 30377 WHERE entry=10033;

/*  Tuxedo Pants  */
UPDATE `item_template` SET `BuyPrice` = 8676, `RequiredLevel` = 30 WHERE entry=10035;

/*  Tuxedo Jacket  */
UPDATE `item_template` SET `armor` = 44, `BuyPrice` = 8708, `ItemLevel` = 35, `MaxDurability` = 70, `RequiredLevel` = 30 WHERE entry=10036;

/*  Stormcloth Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 33103, `DisenchantID` = 0, `spellid_1` = 9328 WHERE entry=10038;

/*  Stormcloth Boots  */
UPDATE `item_template` SET `BuyPrice` = 35550, `DisenchantID` = 0, `spellid_1` = 9357 WHERE entry=10039;

/*  White Wedding Dress  */
UPDATE `item_template` SET `BuyPrice` = 8836 WHERE entry=10040;

/*  Cindercloth Robe  */
UPDATE `item_template` SET `spellid_1` = 17868 WHERE entry=10042;

/*  Pious Legwraps  */
UPDATE `item_template` SET `BuyPrice` = 10167 WHERE entry=10043;

/*  Cindercloth Boots  */
UPDATE `item_template` SET `BuyPrice` = 33827, `spellid_1` = 9298 WHERE entry=10044;

/*  Simple Linen Pants  */
UPDATE `item_template` SET `BuyPrice` = 117 WHERE entry=10045;

/*  Simple Kilt  */
UPDATE `item_template` SET `Quality` = 1, `armor` = 23, `BuyPrice` = 822, `SellPrice` = 164, `bonding` = 0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 0 WHERE entry=10047;

/*  Colorful Kilt  */
UPDATE `item_template` SET `BuyPrice` = 4678, `stat_type1` = 3, `stat_type2` = 6, `stat_value2` = 5, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=10048;

/*  Diabolist's Blade  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=10049;

/*  Duskwoven Bracers  */
UPDATE `item_template` SET `BuyPrice` = 23697 WHERE entry=10059;

/*  Duskwoven Cape  */
UPDATE `item_template` SET `BuyPrice` = 33339, `SellPrice` = 6667 WHERE entry=10060;

/*  Duskwoven Gloves  */
UPDATE `item_template` SET `BuyPrice` = 23791 WHERE entry=10062;

/*  Duskwoven Pants  */
UPDATE `item_template` SET `BuyPrice` = 53874, `SellPrice` = 10774 WHERE entry=10064;

/*  Duskwoven Robe  */
UPDATE `item_template` SET `BuyPrice` = 60767 WHERE entry=10065;

/*  Righteous Boots  */
UPDATE `item_template` SET `BuyPrice` = 45640 WHERE entry=10068;

/*  Righteous Armor  */
UPDATE `item_template` SET `BuyPrice` = 77411 WHERE entry=10070;

/*  Righteous Cloak  */
UPDATE `item_template` SET `BuyPrice` = 40315, `SellPrice` = 8063 WHERE entry=10071;

/*  Righteous Gloves  */
UPDATE `item_template` SET `BuyPrice` = 30886 WHERE entry=10072;

/*  Righteous Helmet  */
UPDATE `item_template` SET `BuyPrice` = 49293 WHERE entry=10073;

/*  Righteous Leggings  */
UPDATE `item_template` SET `BuyPrice` = 69928 WHERE entry=10074;

/*  Righteous Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 46845 WHERE entry=10075;

/*  Lord's Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 84841 WHERE entry=10077;

/*  Lord's Crest  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=10078;

/*  Lord's Cape  */
UPDATE `item_template` SET `BuyPrice` = 31852 WHERE entry=10079;

/*  Lord's Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 36598 WHERE entry=10080;

/*  Lord's Boots  */
UPDATE `item_template` SET `BuyPrice` = 53763 WHERE entry=10082;

/*  Lord's Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 57648 WHERE entry=10085;

/*  Gothic Plate Armor  */
UPDATE `item_template` SET `BuyPrice` = 42194, `SellPrice` = 8438 WHERE entry=10086;

/*  Gothic Plate Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 16968, `SellPrice` = 3393 WHERE entry=10087;

/*  Gothic Plate Girdle  */
UPDATE `item_template` SET `BuyPrice` = 15772, `SellPrice` = 3154 WHERE entry=10088;

/*  Gothic Sabatons  */
UPDATE `item_template` SET `BuyPrice` = 23747, `SellPrice` = 4749 WHERE entry=10089;

/*  Gothic Plate Helmet  */
UPDATE `item_template` SET `BuyPrice` = 25742, `SellPrice` = 5148 WHERE entry=10090;

/*  Gothic Plate Leggings  */
UPDATE `item_template` SET `BuyPrice` = 37208, `SellPrice` = 7441 WHERE entry=10091;

/*  Gothic Plate Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 28011, `SellPrice` = 5602 WHERE entry=10092;

/*  Revenant Deflector  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=10093;

/*  Gothic Plate Vambraces  */
UPDATE `item_template` SET `BuyPrice` = 16557, `SellPrice` = 3311 WHERE entry=10094;

/*  Councillor's Boots  */
UPDATE `item_template` SET `BuyPrice` = 51476 WHERE entry=10095;

/*  Councillor's Circlet  */
UPDATE `item_template` SET `BuyPrice` = 54959, `SellPrice` = 10991 WHERE entry=10097;

/*  Councillor's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 43684, `SellPrice` = 8736 WHERE entry=10098;

/*  Councillor's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 32839, `SellPrice` = 6567 WHERE entry=10099;

/*  Councillor's Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 55544, `SellPrice` = 11108 WHERE entry=10100;

/*  Councillor's Pants  */
UPDATE `item_template` SET `BuyPrice` = 78781 WHERE entry=10101;

/*  Councillor's Robes  */
UPDATE `item_template` SET `BuyPrice` = 75101 WHERE entry=10102;

/*  Wanderer's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 41016 WHERE entry=10108;

/*  Wanderer's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 39739, `SellPrice` = 7947 WHERE entry=10110;

/*  Wanderer's Leggings  */
UPDATE `item_template` SET `BuyPrice` = 95356 WHERE entry=10112;

/*  Wanderer's Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 67708 WHERE entry=10113;

/*  Ornate Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 116909, `SellPrice` = 23381 WHERE entry=10118;

/*  Ornate Greaves  */
UPDATE `item_template` SET `BuyPrice` = 83383 WHERE entry=10119;

/*  Ornate Cloak  */
UPDATE `item_template` SET `BuyPrice` = 43987 WHERE entry=10120;

/*  Ornate Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 52576 WHERE entry=10121;

/*  Ornate Girdle  */
UPDATE `item_template` SET `BuyPrice` = 45035 WHERE entry=10122;

/*  Ornate Circlet  */
UPDATE `item_template` SET `BuyPrice` = 76198 WHERE entry=10123;

/*  Revenant Bracers  */
UPDATE `item_template` SET `BuyPrice` = 21752, `SellPrice` = 4350 WHERE entry=10127;

/*  Revenant Chestplate  */
UPDATE `item_template` SET `BuyPrice` = 59538, `SellPrice` = 11907 WHERE entry=10128;

/*  Revenant Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 23445, `SellPrice` = 4689 WHERE entry=10129;

/*  Revenant Girdle  */
UPDATE `item_template` SET `BuyPrice` = 23531, `SellPrice` = 4706 WHERE entry=10130;

/*  Revenant Boots  */
UPDATE `item_template` SET `BuyPrice` = 35428, `SellPrice` = 7085 WHERE entry=10131;

/*  Revenant Helmet  */
UPDATE `item_template` SET `BuyPrice` = 38043, `SellPrice` = 7608 WHERE entry=10132;

/*  Revenant Leggings  */
UPDATE `item_template` SET `BuyPrice` = 53964, `SellPrice` = 10792 WHERE entry=10133;

/*  Revenant Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 38320, `SellPrice` = 7664 WHERE entry=10134;

/*  High Councillor's Tunic  */
UPDATE `item_template` SET `BuyPrice` = 103318, `SellPrice` = 20663 WHERE entry=10135;

/*  High Councillor's Boots  */
UPDATE `item_template` SET `BuyPrice` = 67420, `SellPrice` = 13484 WHERE entry=10137;

/*  High Councillor's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 61371 WHERE entry=10138;

/*  High Councillor's Circlet  */
UPDATE `item_template` SET `BuyPrice` = 71291, `SellPrice` = 14258 WHERE entry=10139;

/*  High Councillor's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 45425, `SellPrice` = 9085 WHERE entry=10140;

/*  High Councillor's Pants  */
UPDATE `item_template` SET `BuyPrice` = 100518, `SellPrice` = 20103 WHERE entry=10141;

/*  High Councillor's Mantle  */
UPDATE `item_template` SET `BuyPrice` = 67007, `SellPrice` = 13401 WHERE entry=10142;

/*  High Councillor's Robe  */
UPDATE `item_template` SET `BuyPrice` = 98864, `SellPrice` = 19772 WHERE entry=10143;

/*  High Councillor's Sash  */
UPDATE `item_template` SET `BuyPrice` = 40820 WHERE entry=10144;

/*  Mighty Boots  */
UPDATE `item_template` SET `BuyPrice` = 80970, `SellPrice` = 16194 WHERE entry=10146;

/*  Mighty Cloak  */
UPDATE `item_template` SET `BuyPrice` = 56367 WHERE entry=10148;

/*  Mighty Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 54579, `SellPrice` = 10915 WHERE entry=10149;

/*  Mighty Helmet  */
UPDATE `item_template` SET `BuyPrice` = 86270, `SellPrice` = 17254 WHERE entry=10150;

/*  Mighty Tunic  */
UPDATE `item_template` SET `BuyPrice` = 127283, `SellPrice` = 25456 WHERE entry=10151;

/*  Mighty Leggings  */
UPDATE `item_template` SET `BuyPrice` = 121666, `SellPrice` = 24333 WHERE entry=10152;

/*  Mighty Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 87221, `SellPrice` = 17444 WHERE entry=10153;

/*  Mercurial Girdle  */
UPDATE `item_template` SET `BuyPrice` = 66689, `SellPrice` = 13337 WHERE entry=10154;

/*  Mercurial Greaves  */
UPDATE `item_template` SET `BuyPrice` = 100842, `SellPrice` = 20168 WHERE entry=10155;

/*  Mercurial Bracers  */
UPDATE `item_template` SET `BuyPrice` = 63973 WHERE entry=10156;

/*  Mercurial Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 156081, `SellPrice` = 31216 WHERE entry=10157;

/*  Mercurial Guard  */
UPDATE `item_template` SET `BuyPrice` = 155200, `SellPrice` = 31040, `spellcooldown_1` = -1 WHERE entry=10158;

/*  Mercurial Cloak  */
UPDATE `item_template` SET `BuyPrice` = 57220 WHERE entry=10159;

/*  Mercurial Circlet  */
UPDATE `item_template` SET `BuyPrice` = 99741, `SellPrice` = 19948 WHERE entry=10160;

/*  Mercurial Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 63568, `SellPrice` = 12713 WHERE entry=10161;

/*  Mercurial Legguards  */
UPDATE `item_template` SET `BuyPrice` = 140688, `SellPrice` = 28137 WHERE entry=10162;

/*  Mercurial Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 101320, `SellPrice` = 20264 WHERE entry=10163;

/*  Templar Chestplate  */
UPDATE `item_template` SET `BuyPrice` = 74044, `SellPrice` = 14808 WHERE entry=10164;

/*  Templar Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 31200, `SellPrice` = 6240 WHERE entry=10165;

/*  Templar Girdle  */
UPDATE `item_template` SET `BuyPrice` = 29542, `SellPrice` = 5908 WHERE entry=10166;

/*  Templar Boots  */
UPDATE `item_template` SET `BuyPrice` = 47147, `SellPrice` = 9429 WHERE entry=10167;

/*  Templar Crown  */
UPDATE `item_template` SET `BuyPrice` = 50161, `SellPrice` = 10032 WHERE entry=10168;

/*  Templar Legplates  */
UPDATE `item_template` SET `BuyPrice` = 71151, `SellPrice` = 14230 WHERE entry=10169;

/*  Templar Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 50528, `SellPrice` = 10105 WHERE entry=10170;

/*  Templar Bracers  */
UPDATE `item_template` SET `BuyPrice` = 30090, `SellPrice` = 6018 WHERE entry=10171;

/*  Mystical Mantle  */
UPDATE `item_template` SET `BuyPrice` = 48018 WHERE entry=10172;

/*  Mystical Cape  */
UPDATE `item_template` SET `BuyPrice` = 40607 WHERE entry=10174;

/*  Mystical Headwrap  */
UPDATE `item_template` SET `BuyPrice` = 45054, `SellPrice` = 9010 WHERE entry=10175;

/*  Mystical Leggings  */
UPDATE `item_template` SET `BuyPrice` = 64165 WHERE entry=10177;

/*  Mystical Armor  */
UPDATE `item_template` SET `BuyPrice` = 73202 WHERE entry=10181;

/*  Swashbuckler's Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 91850 WHERE entry=10182;

/*  Swashbuckler's Eyepatch  */
UPDATE `item_template` SET `BuyPrice` = 58928 WHERE entry=10187;

/*  Swashbuckler's Leggings  */
UPDATE `item_template` SET `BuyPrice` = 83587 WHERE entry=10188;

/*  Swashbuckler's Shoulderpads  */
UPDATE `item_template` SET `BuyPrice` = 59360 WHERE entry=10189;

/*  Crusader's Armor  */
UPDATE `item_template` SET `BuyPrice` = 98879, `SellPrice` = 19775 WHERE entry=10193;

/*  Crusader's Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=10195;

/*  Crusader's Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 37967 WHERE entry=10196;

/*  Overlord's Greaves  */
UPDATE `item_template` SET `BuyPrice` = 29801, `SellPrice` = 5960 WHERE entry=10201;

/*  Overlord's Vambraces  */
UPDATE `item_template` SET `BuyPrice` = 19943, `SellPrice` = 3988 WHERE entry=10202;

/*  Overlord's Chestplate  */
UPDATE `item_template` SET `BuyPrice` = 51986, `SellPrice` = 10397 WHERE entry=10203;

/*  Heavy Lamellar Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=10204;

/*  Overlord's Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 21580, `SellPrice` = 4316 WHERE entry=10205;

/*  Overlord's Girdle  */
UPDATE `item_template` SET `BuyPrice` = 20243, `SellPrice` = 4048 WHERE entry=10206;

/*  Overlord's Crown  */
UPDATE `item_template` SET `BuyPrice` = 33477, `SellPrice` = 6695 WHERE entry=10207;

/*  Overlord's Legplates  */
UPDATE `item_template` SET `BuyPrice` = 47933, `SellPrice` = 9586 WHERE entry=10208;

/*  Overlord's Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 36080, `SellPrice` = 7216 WHERE entry=10209;

/*  Elegant Mantle  */
UPDATE `item_template` SET `BuyPrice` = 64228 WHERE entry=10210;

/*  Elegant Boots  */
UPDATE `item_template` SET `BuyPrice` = 61383 WHERE entry=10211;

/*  Elegant Bracers  */
UPDATE `item_template` SET `BuyPrice` = 39251 WHERE entry=10213;

/*  Elegant Robes  */
UPDATE `item_template` SET `BuyPrice` = 86939, `SellPrice` = 17387 WHERE entry=10215;

/*  Elegant Belt  */
UPDATE `item_template` SET `BuyPrice` = 35901 WHERE entry=10216;

/*  Elegant Leggings  */
UPDATE `item_template` SET `BuyPrice` = 83444, `SellPrice` = 16688 WHERE entry=10217;

/*  Elegant Tunic  */
UPDATE `item_template` SET `BuyPrice` = 87945, `SellPrice` = 17589 WHERE entry=10218;

/*  Elegant Circlet  */
UPDATE `item_template` SET `BuyPrice` = 60056 WHERE entry=10219;

/*  Nightshade Tunic  */
UPDATE `item_template` SET `BuyPrice` = 116316, `SellPrice` = 23263 WHERE entry=10220;

/*  Nightshade Armguards  */
UPDATE `item_template` SET `BuyPrice` = 47330 WHERE entry=10223;

/*  Nightshade Cloak  */
UPDATE `item_template` SET `BuyPrice` = 53778 WHERE entry=10224;

/*  Nightshade Helmet  */
UPDATE `item_template` SET `BuyPrice` = 83084, `SellPrice` = 16616 WHERE entry=10226;

/*  Nightshade Leggings  */
UPDATE `item_template` SET `BuyPrice` = 116741, `SellPrice` = 23348 WHERE entry=10227;

/*  Nightshade Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 79702 WHERE entry=10228;

/*  Engraved Bracers  */
UPDATE `item_template` SET `BuyPrice` = 51657 WHERE entry=10229;

/*  Engraved Cape  */
UPDATE `item_template` SET `BuyPrice` = 49079, `SellPrice` = 9815 WHERE entry=10231;

/*  Engraved Leggings  */
UPDATE `item_template` SET `BuyPrice` = 113079, `SellPrice` = 22615 WHERE entry=10236;

/*  Heavy Lamellar Boots  */
UPDATE `item_template` SET `BuyPrice` = 38250, `SellPrice` = 7650 WHERE entry=10238;

/*  Heavy Lamellar Vambraces  */
UPDATE `item_template` SET `BuyPrice` = 24811, `SellPrice` = 4962 WHERE entry=10239;

/*  Heavy Lamellar Chestpiece  */
UPDATE `item_template` SET `BuyPrice` = 62882, `SellPrice` = 12576 WHERE entry=10240;

/*  Heavy Lamellar Helm  */
UPDATE `item_template` SET `BuyPrice` = 42125, `SellPrice` = 8425 WHERE entry=10241;

/*  Heavy Lamellar Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 26592, `SellPrice` = 5318 WHERE entry=10242;

/*  Heavy Lamellar Girdle  */
UPDATE `item_template` SET `BuyPrice` = 25179, `SellPrice` = 5035 WHERE entry=10243;

/*  Heavy Lamellar Leggings  */
UPDATE `item_template` SET `BuyPrice` = 60199, `SellPrice` = 12039 WHERE entry=10244;

/*  Heavy Lamellar Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 42744, `SellPrice` = 8548 WHERE entry=10245;

/*  Master's Vest  */
UPDATE `item_template` SET `BuyPrice` = 107712, `SellPrice` = 21542 WHERE entry=10246;

/*  Master's Boots  */
UPDATE `item_template` SET `BuyPrice` = 73539, `SellPrice` = 14707 WHERE entry=10247;

/*  Master's Bracers  */
UPDATE `item_template` SET `BuyPrice` = 46856, `SellPrice` = 9371 WHERE entry=10248;

/*  Master's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 67179, `SellPrice` = 13435 WHERE entry=10249;

/*  Master's Hat  */
UPDATE `item_template` SET `BuyPrice` = 74331, `SellPrice` = 14866 WHERE entry=10250;

/*  Master's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 49731, `SellPrice` = 9946 WHERE entry=10251;

/*  Master's Leggings  */
UPDATE `item_template` SET `BuyPrice` = 104799, `SellPrice` = 20959 WHERE entry=10252;

/*  Master's Mantle  */
UPDATE `item_template` SET `BuyPrice` = 75123, `SellPrice` = 15024 WHERE entry=10253;

/*  Master's Robe  */
UPDATE `item_template` SET `BuyPrice` = 110823, `SellPrice` = 22164 WHERE entry=10254;

/*  Master's Belt  */
UPDATE `item_template` SET `BuyPrice` = 44671, `SellPrice` = 8934 WHERE entry=10255;

/*  Adventurer's Bracers  */
UPDATE `item_template` SET `BuyPrice` = 53376, `SellPrice` = 10675 WHERE entry=10256;

/*  Adventurer's Boots  */
UPDATE `item_template` SET `BuyPrice` = 84385, `SellPrice` = 16877 WHERE entry=10257;

/*  Adventurer's Cape  */
UPDATE `item_template` SET `BuyPrice` = 61461 WHERE entry=10258;

/*  Adventurer's Belt  */
UPDATE `item_template` SET `BuyPrice` = 56679, `SellPrice` = 11335 WHERE entry=10259;

/*  Adventurer's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 59729, `SellPrice` = 11945 WHERE entry=10260;

/*  Adventurer's Bandana  */
UPDATE `item_template` SET `BuyPrice` = 89927, `SellPrice` = 17985 WHERE entry=10261;

/*  Adventurer's Legguards  */
UPDATE `item_template` SET `BuyPrice` = 126364, `SellPrice` = 25272 WHERE entry=10262;

/*  Adventurer's Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 90583, `SellPrice` = 18116 WHERE entry=10263;

/*  Adventurer's Tunic  */
UPDATE `item_template` SET `BuyPrice` = 133648, `SellPrice` = 26729 WHERE entry=10264;

/*  Masterwork Bracers  */
UPDATE `item_template` SET `BuyPrice` = 69523, `SellPrice` = 13904 WHERE entry=10265;

/*  Masterwork Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 161552, `SellPrice` = 32310 WHERE entry=10266;

/*  Masterwork Cape  */
UPDATE `item_template` SET `BuyPrice` = 66689, `SellPrice` = 13337 WHERE entry=10267;

/*  Masterwork Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 73791, `SellPrice` = 14758 WHERE entry=10268;

/*  Masterwork Girdle  */
UPDATE `item_template` SET `BuyPrice` = 70531, `SellPrice` = 14106 WHERE entry=10269;

/*  Masterwork Boots  */
UPDATE `item_template` SET `BuyPrice` = 111982, `SellPrice` = 22396 WHERE entry=10270;

/*  Masterwork Shield  */
UPDATE `item_template` SET `BuyPrice` = 162960, `SellPrice` = 32592, `spellcooldown_1` = -1 WHERE entry=10271;

/*  Masterwork Circlet  */
UPDATE `item_template` SET `BuyPrice` = 104328, `SellPrice` = 20865 WHERE entry=10272;

/*  Masterwork Legplates  */
UPDATE `item_template` SET `BuyPrice` = 146619, `SellPrice` = 29323 WHERE entry=10273;

/*  Masterwork Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 105594, `SellPrice` = 21118 WHERE entry=10274;

/*  Emerald Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 81021, `SellPrice` = 16204 WHERE entry=10275;

/*  Emerald Sabatons  */
UPDATE `item_template` SET `BuyPrice` = 49238, `SellPrice` = 9847 WHERE entry=10276;

/*  Emerald Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 34926, `SellPrice` = 6985 WHERE entry=10277;

/*  Emerald Girdle  */
UPDATE `item_template` SET `BuyPrice` = 31197, `SellPrice` = 6239 WHERE entry=10278;

/*  Emerald Helm  */
UPDATE `item_template` SET `BuyPrice` = 55944, `SellPrice` = 11188 WHERE entry=10279;

/*  Emerald Legplates  */
UPDATE `item_template` SET `BuyPrice` = 78615, `SellPrice` = 15723 WHERE entry=10280;

/*  Emerald Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 56362, `SellPrice` = 11272 WHERE entry=10281;

/*  Emerald Vambraces  */
UPDATE `item_template` SET `BuyPrice` = 33561, `SellPrice` = 6712 WHERE entry=10282;

/*  Durable Hat  */
UPDATE `item_template` SET `BuyPrice` = 7787 WHERE entry=10289;

/*  Gnomeregan Band  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=10298;

/*  Gnomeregan Amulet  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=10299;

/*  Scarlet Belt  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=10329;

/*  Scarlet Leggings  */
UPDATE `item_template` SET `BuyPrice` = 47938 WHERE entry=10330;

/*  Scarlet Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 13644, `SellPrice` = 2728 WHERE entry=10331;

/*  Scarlet Boots  */
UPDATE `item_template` SET `BuyPrice` = 18950 WHERE entry=10332;

/*  Duracin Bracers  */
UPDATE `item_template` SET `BuyPrice` = 12107 WHERE entry=10358;

/*  Everlast Boots  */
UPDATE `item_template` SET `BuyPrice` = 12151 WHERE entry=10359;

/*  Ornate Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=10362;

/*  Engraved Wall  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=10363;

/*  Templar Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=10364;

/*  Emerald Shield  */
UPDATE `item_template` SET `BuyPrice` = 131381, `spellcooldown_1` = -1 WHERE entry=10365;

/*  Demon Guard  */
UPDATE `item_template` SET `BuyPrice` = 160263, `SellPrice` = 32052, `spellcooldown_1` = -1 WHERE entry=10366;

/*  Hyperion Shield  */
UPDATE `item_template` SET `BuyPrice` = 164856, `SellPrice` = 32971, `spellcooldown_1` = -1 WHERE entry=10367;

/*  Imbued Plate Armor  */
UPDATE `item_template` SET `BuyPrice` = 89343, `SellPrice` = 17868 WHERE entry=10368;

/*  Imbued Plate Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 36886, `SellPrice` = 7377 WHERE entry=10369;

/*  Imbued Plate Girdle  */
UPDATE `item_template` SET `BuyPrice` = 34929, `SellPrice` = 6985 WHERE entry=10370;

/*  Imbued Plate Greaves  */
UPDATE `item_template` SET `BuyPrice` = 55747, `SellPrice` = 11149 WHERE entry=10371;

/*  Imbued Plate Helmet  */
UPDATE `item_template` SET `BuyPrice` = 58754, `SellPrice` = 11750 WHERE entry=10372;

/*  Imbued Plate Leggings  */
UPDATE `item_template` SET `BuyPrice` = 86682, `SellPrice` = 17336 WHERE entry=10373;

/*  Imbued Plate Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 59186, `SellPrice` = 11837 WHERE entry=10374;

/*  Imbued Plate Vambraces  */
UPDATE `item_template` SET `BuyPrice` = 35582, `SellPrice` = 7116 WHERE entry=10375;

/*  Commander's Boots  */
UPDATE `item_template` SET `BuyPrice` = 62599, `SellPrice` = 12519 WHERE entry=10376;

/*  Commander's Vambraces  */
UPDATE `item_template` SET `BuyPrice` = 39891, `SellPrice` = 7978 WHERE entry=10377;

/*  Commander's Armor  */
UPDATE `item_template` SET `BuyPrice` = 97332, `SellPrice` = 19466 WHERE entry=10378;

/*  Commander's Helm  */
UPDATE `item_template` SET `BuyPrice` = 66454, `SellPrice` = 13290 WHERE entry=10379;

/*  Commander's Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 42342, `SellPrice` = 8468 WHERE entry=10380;

/*  Commander's Girdle  */
UPDATE `item_template` SET `BuyPrice` = 40471, `SellPrice` = 8094 WHERE entry=10381;

/*  Commander's Leggings  */
UPDATE `item_template` SET `BuyPrice` = 94041, `SellPrice` = 18808 WHERE entry=10382;

/*  Commander's Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 62609, `SellPrice` = 12521 WHERE entry=10383;

/*  Hyperion Armor  */
UPDATE `item_template` SET `BuyPrice` = 101850, `SellPrice` = 20370 WHERE entry=10384;

/*  Hyperion Greaves  */
UPDATE `item_template` SET `BuyPrice` = 66239, `SellPrice` = 13247 WHERE entry=10385;

/*  Hyperion Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 44329, `SellPrice` = 8865 WHERE entry=10386;

/*  Hyperion Girdle  */
UPDATE `item_template` SET `BuyPrice` = 42379, `SellPrice` = 8475 WHERE entry=10387;

/*  Hyperion Helm  */
UPDATE `item_template` SET `BuyPrice` = 70344, `SellPrice` = 14068 WHERE entry=10388;

/*  Hyperion Legplates  */
UPDATE `item_template` SET `BuyPrice` = 98854, `SellPrice` = 19770 WHERE entry=10389;

/*  Hyperion Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 70876, `SellPrice` = 14175 WHERE entry=10390;

/*  Hyperion Vambraces  */
UPDATE `item_template` SET `BuyPrice` = 40966, `SellPrice` = 8193 WHERE entry=10391;

/*  Blackened Defias Armor  */
UPDATE `item_template` SET `BuyPrice` = 7335 WHERE entry=10399;

/*  Blackened Defias Leggings  */
UPDATE `item_template` SET `BuyPrice` = 2817 WHERE entry=10400;

/*  Blackened Defias Gloves  */
UPDATE `item_template` SET `BuyPrice` = 1278 WHERE entry=10401;

/*  Blackened Defias Belt  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 45, `BuyPrice` = 2255, `SellPrice` = 451, `MaxDurability` = 25, `stat_type1` = 4, `stat_value1` = 5, `DisenchantID` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 1 WHERE entry=10403;

/*  Raider's Shoulderpads  */
UPDATE `item_template` SET `BuyPrice` = 2159, `SellPrice` = 431 WHERE entry=10407;

/*  Banded Helm  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=10408;

/*  Footpads of the Fang  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 57, `BuyPrice` = 3939, `SellPrice` = 787, `MaxDurability` = 40, `stat_value1` = 4, `stat_value2` = 4, `DisenchantID` = 3 WHERE entry=10411;

/*  Belt of the Fang  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 45, `BuyPrice` = 2028, `SellPrice` = 405, `MaxDurability` = 25, `stat_value1` = 3, `stat_value2` = 2, `DisenchantID` = 3 WHERE entry=10412;

/*  Gloves of the Fang  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 47, `BuyPrice` = 1539, `SellPrice` = 307, `MaxDurability` = 25, `stat_value1` = 3, `stat_value2` = 2, `DisenchantID` = 2 WHERE entry=10413;

/*  Rough Copper Vest  */
UPDATE `item_template` SET `BuyPrice` = 161 WHERE entry=10421;

/*  Silvered Bronze Leggings  */
UPDATE `item_template` SET `BuyPrice` = 14211, `stat_type3` = 6 WHERE entry=10423;

/*  Shadowy Bracers  */
UPDATE `item_template` SET `spellid_1` = 7706 WHERE entry=10461;

/*  Shadowy Belt  */
UPDATE `item_template` SET `BuyPrice` = 18044, `SellPrice` = 3608 WHERE entry=10462;

/*  Mithril Blunderbuss  */
UPDATE `item_template` SET `BuyPrice` = 44794, `SellPrice` = 8958, `dmg_min1` = 36.0, `dmg_max1` = 68.0 WHERE entry=10508;

/*  Mithril Heavy-bore Rifle  */
UPDATE `item_template` SET `BuyPrice` = 56845, `dmg_min1` = 41.0, `dmg_max1` = 76.0 WHERE entry=10510;

/*  Parachute Cloak  */
UPDATE `item_template` SET `BuyPrice` = 23482, `spellcooldown_1` = 1800000 WHERE entry=10518;

/*  Thistlewood Maul  */
UPDATE `item_template` SET `BuyPrice` = 127 WHERE entry=10544;

/*  Gnomish Goggles  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_type3` = 6, `stat_value3` = 9, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=10545;

/*  Wooly Mittens  */
UPDATE `item_template` SET `BuyPrice` = 243 WHERE entry=10550;

/*  Foreman Vest  */
UPDATE `item_template` SET `BuyPrice` = 657, `stat_type1` = 4, `stat_value1` = 2, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 1 WHERE entry=10553;

/*  Foreman Pants  */
UPDATE `item_template` SET `BuyPrice` = 597, `stat_type1` = 4, `stat_type2` = 7, `stat_value2` = 1, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=10554;

/*  Quillshooter  */
UPDATE `item_template` SET `dmg_min1` = 31.0, `dmg_max1` = 58.0 WHERE entry=10567;

/*  Freezing Shard  */
UPDATE `item_template` SET `spellid_1` = 7703 WHERE entry=10572;

/*  Boneslasher  */
UPDATE `item_template` SET `BuyPrice` = 68773 WHERE entry=10573;

/*  Corpseshroud  */
UPDATE `item_template` SET `BuyPrice` = 18878, `stat_type3` = 3, `stat_value3` = 5, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=10574;

/*  Thoughtcast Boots  */
UPDATE `item_template` SET `BuyPrice` = 16885 WHERE entry=10578;

/*  Briar Tredders  */
UPDATE `item_template` SET `stat_type2` = 3, `stat_value2` = 5 WHERE entry=10582;

/*  Stormgale Fists  */
UPDATE `item_template` SET `BuyPrice` = 14528, `stat_type2` = 6 WHERE entry=10584;

/*  Goblin Rocket Helmet  */
UPDATE `item_template` SET `spellcategory_1` = 0 WHERE entry=10588;

/*  Winter's Bite  */
UPDATE `item_template` SET `BuyPrice` = 123740 WHERE entry=10623;

/*  Stinging Bow  */
UPDATE `item_template` SET `dmg_min1` = 36.0, `dmg_max1` = 67.0, `stat_type1` = 4 WHERE entry=10624;

/*  Stealthblade  */
UPDATE `item_template` SET `BuyPrice` = 136831 WHERE entry=10625;

/*  Ragehammer  */
UPDATE `item_template` SET `BuyPrice` = 183661 WHERE entry=10626;

/*  Deathblow  */
UPDATE `item_template` SET `BuyPrice` = 146225 WHERE entry=10628;

/*  Mistwalker Boots  */
UPDATE `item_template` SET `BuyPrice` = 40330, `stat_value2` = 18, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10629;

/*  Soulcatcher Halo  */
UPDATE `item_template` SET `stat_value1` = 25, `stat_type2` = 6, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10630;

/*  Murkwater Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 30433, `stat_type1` = 4, `stat_value1` = 13, `stat_type3` = 7, `stat_value3` = 12, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=10631;

/*  Slimescale Bracers  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 13, `stat_type3` = 7, `stat_value3` = 4, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=10632;

/*  Silvershell Leggings  */
UPDATE `item_template` SET `BuyPrice` = 58420, `SellPrice` = 11684, `stat_type3` = 6 WHERE entry=10633;

/*  Mindseye Circle  */
UPDATE `item_template` SET `stat_value2` = 12, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10634;

/*  Painted Chain Leggings  */
UPDATE `item_template` SET `BuyPrice` = 73 WHERE entry=10635;

/*  Nomadic Gloves  */
UPDATE `item_template` SET `BuyPrice` = 30 WHERE entry=10636;

/*  Brewer's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 698, `stat_type2` = 4, `stat_value2` = 2, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=10637;

/*  Will of the Mountain Giant  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 151543, `SellPrice` = 30308, `dmg_min1` = 88.0, `dmg_max1` = 133.0, `MaxDurability` = 85, `stat_value1` = 15, `stat_value2` = 14, `DisenchantID` = 29 WHERE entry=10652;

/*  Trailblazer Boots  */
UPDATE `item_template` SET `BuyPrice` = 8197 WHERE entry=10653;

/*  Jutebraid Gloves  */
UPDATE `item_template` SET `BuyPrice` = 4827, `stat_type1` = 4, `stat_type2` = 5, `stat_value2` = 6, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=10654;

/*  Barkmail Vest  */
UPDATE `item_template` SET `BuyPrice` = 73 WHERE entry=10656;

/*  Aegis of Battle  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 1691, `BuyPrice` = 105815, `SellPrice` = 21163, `block` = 29, `MaxDurability` = 85, `stat_value1` = 10, `stat_type2` = 3, `stat_value2` = 6, `DisenchantID` = 29, `spellcooldown_1` = -1 WHERE entry=10686;

/*  Enchanted Azsharite Felbane Sword  */
UPDATE `item_template` SET `BuyPrice` = 209454, `SellPrice` = 41890 WHERE entry=10696;

/*  Enchanted Azsharite Felbane Dagger  */
UPDATE `item_template` SET `BuyPrice` = 210221 WHERE entry=10697;

/*  Enchanted Azsharite Felbane Staff  */
UPDATE `item_template` SET `BuyPrice` = 263735, `spellcategorycooldown_2` = 180000 WHERE entry=10698;

/*  Encarmine Boots  */
UPDATE `item_template` SET `BuyPrice` = 24918, `stat_type1` = 4, `stat_value1` = 4, `stat_type3` = 5, `stat_value3` = 8, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=10700;

/*  Boots of Zua'tec  */
UPDATE `item_template` SET `BuyPrice` = 37680 WHERE entry=10701;

/*  Enormous Ogre Boots  */
UPDATE `item_template` SET `BuyPrice` = 26897 WHERE entry=10702;

/*  Fiendish Skiv  */
UPDATE `item_template` SET `BuyPrice` = 83963 WHERE entry=10703;

/*  Chillnail Splinter  */
UPDATE `item_template` SET `BuyPrice` = 68246, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=10704;

/*  Firwillow Wristbands  */
UPDATE `item_template` SET `BuyPrice` = 18333, `stat_type1` = 3, `stat_value1` = 2, `stat_type2` = 5, `stat_value2` = 10, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=10705;

/*  Steelsmith Greaves  */
UPDATE `item_template` SET `BuyPrice` = 38862, `SellPrice` = 7772 WHERE entry=10707;

/*  Dragonclaw Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=10710;

/*  Dragon's Blood Necklace  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=10711;

/*  Gnomish Rocket Boots  */
UPDATE `item_template` SET `spellcooldown_1` = 1800000, `spellcategorycooldown_1` = 0, `spellcategory_1` = 0 WHERE entry=10724;

/*  Ring of Fortitude  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=10739;

/*  Centurion Legplates  */
UPDATE `item_template` SET `BuyPrice` = 53464, `SellPrice` = 10692 WHERE entry=10740;

/*  Dragonflight Leggings  */
UPDATE `item_template` SET `BuyPrice` = 47948, `stat_type1` = 3, `stat_value1` = 13, `stat_type2` = 4, `stat_type3` = 6, `stat_value3` = 14, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=10742;

/*  Kaylari Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 42492 WHERE entry=10745;

/*  Runesteel Vambraces  */
UPDATE `item_template` SET `BuyPrice` = 22748, `SellPrice` = 4549 WHERE entry=10746;

/*  Teacher's Sash  */
UPDATE `item_template` SET `BuyPrice` = 11637 WHERE entry=10747;

/*  Wanderlust Boots  */
UPDATE `item_template` SET `BuyPrice` = 21903 WHERE entry=10748;

/*  Avenguard Helm  */
UPDATE `item_template` SET `BuyPrice` = 52774, `SellPrice` = 10554 WHERE entry=10749;

/*  Gemburst Circlet  */
UPDATE `item_template` SET `BuyPrice` = 53170, `stat_type1` = 3, `stat_value1` = 5, `stat_type4` = 7, `stat_value4` = 9, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 4 WHERE entry=10751;

/*  Swine Fists  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 68, `BuyPrice` = 12141, `SellPrice` = 2428, `MaxDurability` = 30, `stat_value1` = 8, `stat_value2` = 8, `DisenchantID` = 6 WHERE entry=10760;

/*  Coldrage Dagger  */
UPDATE `item_template` SET `RequiredLevel` = 39 WHERE entry=10761;

/*  Robes of the Lich  */
UPDATE `item_template` SET `stat_value2` = 20, `stat_type3` = 0, `stat_value3` = 0, `RequiredLevel` = 39 WHERE entry=10762;

/*  Icemetal Barbute  */
UPDATE `item_template` SET `BuyPrice` = 25989, `SellPrice` = 5197, `stat_type2` = 6, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=10763;

/*  Deathchill Armor  */
UPDATE `item_template` SET `BuyPrice` = 52173, `stat_type1` = 6, `stat_value1` = 20, `stat_type3` = 7, `stat_value3` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `RequiredLevel` = 39, `StatsCount` = 3 WHERE entry=10764;

/*  Bonefingers  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 73, `BuyPrice` = 16837, `SellPrice` = 3367, `MaxDurability` = 30, `DisenchantID` = 7, `spellid_1` = 0, `spelltrigger_1` = 0, `RequiredLevel` = 38 WHERE entry=10765;

/*  Plaguerot Sprig  */
UPDATE `item_template` SET `shadow_res` = 7, `spellid_1` = 0, `spelltrigger_1` = 0, `spellcooldown_1` = -1 WHERE entry=10766;

/*  Savage Boar's Guard  */
UPDATE `item_template` SET `BuyPrice` = 48260, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=10767;

/*  Glowing Eye of Mordresh  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_type2` = 5, `stat_value2` = 5, `spellid_1` = 0, `spelltrigger_1` = 0, `spellcooldown_1` = -1, `StatsCount` = 2 WHERE entry=10769;

/*  Mordresh's Lifeless Skull  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 11, `stat_type2` = 7, `stat_value2` = 5, `spellid_1` = 0, `spelltrigger_1` = 0, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `StatsCount` = 2 WHERE entry=10770;

/*  Deathmage Sash  */
UPDATE `item_template` SET `BuyPrice` = 14552, `stat_value1` = 15, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10771;

/*  Glutton's Cleaver  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 60853, `SellPrice` = 12170, `dmg_min1` = 32.0, `dmg_max1` = 60.0, `MaxDurability` = 75, `DisenchantID` = 27 WHERE entry=10772;

/*  Fleshhide Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 29787 WHERE entry=10774;

/*  Carapace of Tuten'kash  */
UPDATE `item_template` SET `BuyPrice` = 31888, `SellPrice` = 6377 WHERE entry=10775;

/*  Silky Spider Cape  */
UPDATE `item_template` SET `BuyPrice` = 23999, `SellPrice` = 4799, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=10776;

/*  Arachnid Gloves  */
UPDATE `item_template` SET `BuyPrice` = 20070 WHERE entry=10777;

/*  Necklace of Sanctuary  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=10778;

/*  Mark of Hakkar  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `RequiredLevel` = 0 WHERE entry=10780;

/*  Hakkari Breastplate  */
UPDATE `item_template` SET `RequiredLevel` = 0 WHERE entry=10781;

/*  Hakkari Shroud  */
UPDATE `item_template` SET `RequiredLevel` = 0 WHERE entry=10782;

/*  Atal'ai Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 57381 WHERE entry=10783;

/*  Atal'ai Leggings  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 120, `BuyPrice` = 66003, `SellPrice` = 13200, `MaxDurability` = 65, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 9 WHERE entry=10785;

/*  Atal'ai Boots  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 195, `BuyPrice` = 59889, `SellPrice` = 11977, `MaxDurability` = 50, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 9 WHERE entry=10786;

/*  Atal'ai Girdle  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 280, `BuyPrice` = 26693, `SellPrice` = 5338, `MaxDurability` = 40, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 9 WHERE entry=10788;

/*  Firebreather  */
UPDATE `item_template` SET `BuyPrice` = 175347 WHERE entry=10797;

/*  Atal'alarion's Tusk Ring  */
UPDATE `item_template` SET `BuyPrice` = 31319, `SellPrice` = 6263 WHERE entry=10798;

/*  Headspike  */
UPDATE `item_template` SET `BuyPrice` = 196442 WHERE entry=10799;

/*  Darkwater Bracers  */
UPDATE `item_template` SET `BuyPrice` = 37812, `shadow_res` = 7, `stat_type1` = 0, `stat_value1` = 0 WHERE entry=10800;

/*  Slitherscale Boots  */
UPDATE `item_template` SET `BuyPrice` = 58520, `stat_type1` = 7, `stat_value1` = 12, `stat_type2` = 4, `stat_type3` = 6, `stat_value3` = 15, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=10801;

/*  Wingveil Cloak  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 34, `BuyPrice` = 39156, `SellPrice` = 7831, `DisenchantID` = 9, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=10802;

/*  Blade of the Wretched  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 147207, `SellPrice` = 29441, `dmg_min1` = 47.0, `dmg_max1` = 88.0, `MaxDurability` = 75, `DisenchantID` = 29, `spellppmrate_1` = 2.6, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=10803;

/*  Fist of the Damned  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 147758, `SellPrice` = 29551, `dmg_min1` = 42.0, `dmg_max1` = 80.0, `MaxDurability` = 75, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 29 WHERE entry=10804;

/*  Eater of the Dead  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 148309, `SellPrice` = 29661, `dmg_min1` = 49.0, `dmg_max1` = 92.0, `MaxDurability` = 75, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 29 WHERE entry=10805;

/*  Vestments of the Atal'ai Prophet  */
UPDATE `item_template` SET `BuyPrice` = 75731, `stat_value2` = 27, `stat_type3` = 0, `stat_value3` = 0, `spelltrigger_1` = 0 WHERE entry=10806;

/*  Kilt of the Atal'ai Prophet  */
UPDATE `item_template` SET `BuyPrice` = 76012, `stat_value2` = 18, `stat_type4` = 4, `stat_value4` = 4, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 4 WHERE entry=10807;

/*  Gloves of the Atal'ai Prophet  */
UPDATE `item_template` SET `stat_value1` = 20, `stat_type2` = 4, `stat_value2` = 5, `stat_type3` = 7, `stat_value3` = 6, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=10808;

/*  Sower's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 1040 WHERE entry=10821;

/*  Vanquisher's Sword  */
UPDATE `item_template` SET `BuyPrice` = 88981 WHERE entry=10823;

/*  Amberglow Talisman  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=10824;

/*  Dire Nail  */
UPDATE `item_template` SET `BuyPrice` = 202136, `shadow_res` = 5, `stat_type1` = 0, `stat_value1` = 0, `RequiredLevel` = 51 WHERE entry=10828;

/*  Horns of Eranikus  */
UPDATE `item_template` SET `BuyPrice` = 42986, `stat_type1` = 6, `stat_value1` = 11, `stat_value2` = 27, `spellid_1` = 0, `spelltrigger_1` = 0, `RequiredLevel` = 51 WHERE entry=10833;

/*  Crest of Supremacy  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_value1` = 6, `stat_value2` = 7, `stat_type3` = 6, `stat_value3` = 7, `stat_type4` = 7, `stat_value4` = 7, `stat_type5` = 4, `stat_value5` = 6, `spellid_1` = 0, `spelltrigger_1` = 0, `spellcooldown_1` = -1, `RequiredLevel` = 51, `StatsCount` = 5 WHERE entry=10835;

/*  Rod of Corrosion  */
UPDATE `item_template` SET `BuyPrice` = 144946, `nature_res` = 10, `stat_type1` = 0, `stat_value1` = 0, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `RequiredLevel` = 51 WHERE entry=10836;

/*  Tooth of Eranikus  */
UPDATE `item_template` SET `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 15464, `RequiredLevel` = 51 WHERE entry=10837;

/*  Might of Hakkar  */
UPDATE `item_template` SET `stat_type1` = 7, `stat_type2` = 6, `spellcooldown_1` = -1 WHERE entry=10838;

/*  Windscale Sarong  */
UPDATE `item_template` SET `stat_value1` = 20, `stat_type4` = 3, `stat_value4` = 7, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 4 WHERE entry=10842;

/*  Featherskin Cape  */
UPDATE `item_template` SET `BuyPrice` = 52977, `stat_type2` = 6, `stat_value2` = 15, `stat_type3` = 5, `stat_value3` = 4, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=10843;

/*  Spire of Hakkar  */
UPDATE `item_template` SET `BuyPrice` = 221570 WHERE entry=10844;

/*  Warrior's Embrace  */
UPDATE `item_template` SET `BuyPrice` = 71166, `SellPrice` = 14233, `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 13670 WHERE entry=10845;

/*  Bloodshot Greaves  */
UPDATE `item_template` SET `stat_type3` = 4, `stat_value3` = 5, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=10846;

/*  Apothecary Gloves  */
UPDATE `item_template` SET `BuyPrice` = 1074, `SellPrice` = 214 WHERE entry=10919;

/*  Archaedic Stone  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `RequiredLevel` = 42 WHERE entry=11118;

/*  Belgrom's Hammer  */
UPDATE `item_template` SET `BuyPrice` = 150720 WHERE entry=11120;

/*  Darkwater Talwar  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 14705, `SellPrice` = 2941, `dmg_min1` = 20.0, `dmg_max1` = 39.0, `MaxDurability` = 70, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 24 WHERE entry=11121;

/*  Carrot on a Stick  */
UPDATE `item_template` SET `spellid_1` = 13587 WHERE entry=11122;

/*  Rainstrider Leggings  */
UPDATE `item_template` SET `BuyPrice` = 75186, `stat_type1` = 3, `stat_value1` = 8, `stat_type3` = 7, `stat_value3` = 7, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=11123;

/*  Stemleaf Bracers  */
UPDATE `item_template` SET `BuyPrice` = 25 WHERE entry=11187;

/*  Farmer's Boots  */
UPDATE `item_template` SET `BuyPrice` = 227 WHERE entry=11191;

/*  Outfitter Gloves  */
UPDATE `item_template` SET `BuyPrice` = 23 WHERE entry=11192;

/*  Prismscale Hauberk  */
UPDATE `item_template` SET `BuyPrice` = 102024, `SellPrice` = 20404 WHERE entry=11194;

/*  Warforged Chestplate  */
UPDATE `item_template` SET `BuyPrice` = 68278, `SellPrice` = 13655 WHERE entry=11195;

/*  Mindburst Medallion  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=11196;

/*  Nether Force Wand  */
UPDATE `item_template` SET `spellid_1` = 13595 WHERE entry=11263;

/*  Cragwood Maul  */
UPDATE `item_template` SET `BuyPrice` = 82424, `SellPrice` = 16484 WHERE entry=11265;

/*  Lesser Magic Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=11287;

/*  Greater Magic Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=11288;

/*  Lesser Mystic Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=11289;

/*  Greater Mystic Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=11290;

/*  Fine Shortbow  */
UPDATE `item_template` SET `BuyPrice` = 3184, `SellPrice` = 636, `dmg_min1` = 7.0, `dmg_max1` = 14.0 WHERE entry=11303;

/*  Fine Longbow  */
UPDATE `item_template` SET `BuyPrice` = 4861, `dmg_min1` = 14.0, `dmg_max1` = 26.0 WHERE entry=11304;

/*  Dense Shortbow  */
UPDATE `item_template` SET `dmg_min1` = 19.0, `dmg_max1` = 35.0 WHERE entry=11305;

/*  Sturdy Recurve  */
UPDATE `item_template` SET `BuyPrice` = 19467, `dmg_min1` = 20.0, `dmg_max1` = 37.0 WHERE entry=11306;

/*  Massive Longbow  */
UPDATE `item_template` SET `dmg_min1` = 43.0, `dmg_max1` = 80.0 WHERE entry=11307;

/*  Sylvan Shortbow  */
UPDATE `item_template` SET `BuyPrice` = 78828, `dmg_min1` = 32.0, `dmg_max1` = 59.0 WHERE entry=11308;

/*  Flameseer Mantle  */
UPDATE `item_template` SET `BuyPrice` = 32990, `spellid_1` = 9401, `RequiredLevel` = 42 WHERE entry=11310;

/*  Emberscale Cape  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 30, `BuyPrice` = 25553, `SellPrice` = 5110, `stat_value1` = 3, `stat_value2` = 10, `DisenchantID` = 8, `RequiredLevel` = 41 WHERE entry=11311;

/*  Bloodband Bracers  */
UPDATE `item_template` SET `BuyPrice` = 17815 WHERE entry=11469;

/*  Wine-stained Cloak  */
UPDATE `item_template` SET `BuyPrice` = 38 WHERE entry=11475;

/*  Loreskin Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 32551 WHERE entry=11502;

/*  Vilerend Slicer  */
UPDATE `item_template` SET `BuyPrice` = 153283 WHERE entry=11603;

/*  Dark Iron Plate  */
UPDATE `item_template` SET `BuyPrice` = 97143, `SellPrice` = 19428 WHERE entry=11604;

/*  Dark Iron Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 53880, `SellPrice` = 10776 WHERE entry=11605;

/*  Dark Iron Mail  */
UPDATE `item_template` SET `BuyPrice` = 96279, `SellPrice` = 19255 WHERE entry=11606;

/*  Dark Iron Sunderer  */
UPDATE `item_template` SET `BuyPrice` = 256125 WHERE entry=11607;

/*  Dark Iron Pulverizer  */
UPDATE `item_template` SET `BuyPrice` = 228803 WHERE entry=11608;

/*  Enthralled Sphere  */
UPDATE `item_template` SET `stat_value1` = 14, `stat_type2` = 6, `stat_value2` = 5, `stat_type3` = 7, `stat_value3` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=11625;

/*  Houndmaster's Bow  */
UPDATE `item_template` SET `BuyPrice` = 122167, `dmg_min1` = 34.0, `dmg_max1` = 64.0 WHERE entry=11628;

/*  Houndmaster's Rifle  */
UPDATE `item_template` SET `dmg_min1` = 44.0, `dmg_max1` = 82.0 WHERE entry=11629;

/*  Stoneshell Guard  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=11631;

/*  Earthslag Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 46802, `SellPrice` = 9360, `stat_type2` = 5, `stat_value2` = 8, `spellid_1` = 9415 WHERE entry=11632;

/*  Spiderfang Carapace  */
UPDATE `item_template` SET `BuyPrice` = 70380, `SellPrice` = 14076, `stat_value1` = 14, `stat_type3` = 5, `spellid_1` = 9342 WHERE entry=11633;

/*  Graverot Cape  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 6, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=11677;

/*  Carapace of Anub'shiah  */
UPDATE `item_template` SET `BuyPrice` = 77981, `SellPrice` = 15596 WHERE entry=11678;

/*  Rubicund Armguards  */
UPDATE `item_template` SET `stat_type1` = 7, `stat_type2` = 3 WHERE entry=11679;

/*  Ironfoe  */
UPDATE `item_template` SET `spellppmrate_1` = 0.8 WHERE entry=11684;

/*  Splinthide Shoulders  */
UPDATE `item_template` SET `stat_type3` = 5, `stat_type4` = 0, `stat_value4` = 0, `spellid_1` = 9415 WHERE entry=11685;

/*  Girdle of Beastial Fury  */
UPDATE `item_template` SET `BuyPrice` = 46645 WHERE entry=11686;

/*  Stonewall Girdle  */
UPDATE `item_template` SET `BuyPrice` = 36892, `SellPrice` = 7378, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=11703;

/*  Dregmetal Spaulders  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 10, `stat_type2` = 4, `stat_value2` = 6, `stat_type3` = 7, `stat_value3` = 5, `stat_type4` = 5, `stat_value4` = 15, `spellid_1` = 0, `spelltrigger_1` = 0, `spellid_2` = 0, `spelltrigger_2` = 0, `StatsCount` = 4 WHERE entry=11722;

/*  Savage Gladiator Chain  */
UPDATE `item_template` SET `armor` = 369, `stat_type3` = 4, `stat_value3` = 13, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=11726;

/*  Savage Gladiator Leggings  */
UPDATE `item_template` SET `stat_type3` = 4, `stat_value3` = 12, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=11728;

/*  Savage Gladiator Helm  */
UPDATE `item_template` SET `stat_value1` = 28, `stat_value2` = 12 WHERE entry=11729;

/*  Savage Gladiator Grips  */
UPDATE `item_template` SET `stat_type4` = 4, `stat_value4` = 5, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 4 WHERE entry=11730;

/*  Savage Gladiator Greaves  */
UPDATE `item_template` SET `stat_type2` = 4, `stat_value2` = 10, `stat_type3` = 7, `stat_value3` = 13, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=11731;

/*  Ragefury Eyepatch  */
UPDATE `item_template` SET `BuyPrice` = 83349, `SellPrice` = 16669 WHERE entry=11735;

/*  Rockfist  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 153672, `SellPrice` = 30734, `dmg_min1` = 32.0, `dmg_max1` = 60.0, `MaxDurability` = 55, `stat_type1` = 4, `stat_value1` = 10, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=11743;

/*  Bloodfist  */
UPDATE `item_template` SET `BuyPrice` = 196213 WHERE entry=11744;

/*  Fists of Phalanx  */
UPDATE `item_template` SET `BuyPrice` = 39391, `SellPrice` = 7878 WHERE entry=11745;

/*  Golem Skull Helm  */
UPDATE `item_template` SET `BuyPrice` = 59309, `SellPrice` = 11861 WHERE entry=11746;

/*  Flamestrider Robes  */
UPDATE `item_template` SET `fire_res` = 10, `stat_type4` = 0, `stat_value4` = 0 WHERE entry=11747;

/*  Pyric Caduceus  */
UPDATE `item_template` SET `BuyPrice` = 125416, `spellid_1` = 9400 WHERE entry=11748;

/*  Searingscale Leggings  */
UPDATE `item_template` SET `fire_res` = 10, `stat_type1` = 6, `stat_value1` = 10, `stat_type4` = 3, `stat_value4` = 13, `spellid_1` = 0, `spelltrigger_1` = 0, `spellid_2` = 0, `spelltrigger_2` = 0, `StatsCount` = 4 WHERE entry=11749;

/*  Kindling Stave  */
UPDATE `item_template` SET `fire_res` = 10, `stat_value1` = 13, `stat_type4` = 0, `stat_value4` = 0, `spellid_1` = 18384, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=11750;

/*  Cinderhide Armsplints  */
UPDATE `item_template` SET `BuyPrice` = 51990 WHERE entry=11764;

/*  Pyremail Wristguards  */
UPDATE `item_template` SET `BuyPrice` = 62625 WHERE entry=11765;

/*  Emberplate Armguards  */
UPDATE `item_template` SET `BuyPrice` = 43188, `SellPrice` = 8637 WHERE entry=11767;

/*  Incendic Bracers  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 32, `BuyPrice` = 36121, `SellPrice` = 7224, `MaxDurability` = 25, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 10 WHERE entry=11768;

/*  Boreal Mantle  */
UPDATE `item_template` SET `spellid_1` = 13831 WHERE entry=11782;

/*  Chillsteel Girdle  */
UPDATE `item_template` SET `BuyPrice` = 63838, `frost_res` = 10, `stat_value1` = 20, `stat_type2` = 6, `stat_value2` = 7, `spellid_1` = 0, `spelltrigger_1` = 0, `spellid_2` = 0, `spelltrigger_2` = 0, `StatsCount` = 2 WHERE entry=11783;

/*  Rock Golem Bulwark  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=11785;

/*  Stone of the Earth  */
UPDATE `item_template` SET `BuyPrice` = 253699, `SellPrice` = 50739 WHERE entry=11786;

/*  Shalehusk Boots  */
UPDATE `item_template` SET `BuyPrice` = 68664, `SellPrice` = 13732 WHERE entry=11787;

/*  Lavacrest Leggings  */
UPDATE `item_template` SET `BuyPrice` = 89883, `SellPrice` = 17976 WHERE entry=11802;

/*  Rubidium Hammer  */
UPDATE `item_template` SET `BuyPrice` = 202196, `spellcooldown_1` = -1 WHERE entry=11805;

/*  Sash of the Burning Heart  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_type3` = 5, `spellid_1` = 9401 WHERE entry=11807;

/*  Circle of Flame  */
UPDATE `item_template` SET `armor` = 74, `fire_res` = 15, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=11808;

/*  Force of Will  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=11810;

/*  Smoking Heart of the Mountain  */
UPDATE `item_template` SET `fire_res` = 7, `nature_res` = 7, `frost_res` = 7, `shadow_res` = 7, `stat_type1` = 0, `stat_value1` = 0 WHERE entry=11811;

/*  Cape of the Fire Salamander  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 6, `stat_type2` = 7, `stat_value2` = 9, `StatsCount` = 2 WHERE entry=11812;

/*  Molten Fists  */
UPDATE `item_template` SET `fire_res` = 10, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=11814;

/*  Lord General's Sword  */
UPDATE `item_template` SET `BuyPrice` = 196273 WHERE entry=11817;

/*  Second Wind  */
UPDATE `item_template` SET `spellid_1` = 15604, `spellcooldown_1` = 900000, `spellcategorycooldown_1` = 0, `spellid_3` = 0, `spellcooldown_3` = -1, `spellcategorycooldown_3` = -1 WHERE entry=11819;

/*  Warstrife Leggings  */
UPDATE `item_template` SET `BuyPrice` = 111924, `SellPrice` = 22384, `stat_value1` = 6, `stat_value3` = 6, `spellid_1` = 13670 WHERE entry=11821;

/*  Cyclopean Band  */
UPDATE `item_template` SET `stat_type2` = 4 WHERE entry=11824;

/*  Burst of Knowledge  */
UPDATE `item_template` SET `spellid_1` = 15646, `spellcooldown_1` = 900000, `spellcategorycooldown_1` = 0, `spellid_3` = 0, `spellcooldown_3` = -1, `spellcategorycooldown_3` = -1 WHERE entry=11832;

/*  Chief Architect's Monocle  */
UPDATE `item_template` SET `stat_value1` = 27, `stat_type2` = 6, `stat_value2` = 3, `stat_type3` = 7, `stat_value3` = 10 WHERE entry=11839;

/*  Lead Surveyor's Mantle  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 8, `spellid_2` = 0, `spelltrigger_2` = 0, `StatsCount` = 2 WHERE entry=11842;

/*  Battered Cloak  */
UPDATE `item_template` SET `BuyPrice` = 38 WHERE entry=11847;

/*  Rustmetal Bracers  */
UPDATE `item_template` SET `BuyPrice` = 38 WHERE entry=11849;

/*  Short Duskbat Cape  */
UPDATE `item_template` SET `BuyPrice` = 35 WHERE entry=11850;

/*  Roamer's Leggings  */
UPDATE `item_template` SET `BuyPrice` = 71 WHERE entry=11852;

/*  Charged Lightning Rod  */
UPDATE `item_template` SET `BuyPrice` = 64854, `SellPrice` = 12970, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=11860;

/*  White Bone Spear  */
UPDATE `item_template` SET `BuyPrice` = 170542 WHERE entry=11864;

/*  Rancor Boots  */
UPDATE `item_template` SET `BuyPrice` = 43541, `stat_type1` = 3, `stat_value1` = 12, `stat_type2` = 5, `stat_value2` = 11, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=11865;

/*  Nagmara's Whipping Belt  */
UPDATE `item_template` SET `BuyPrice` = 49098 WHERE entry=11866;

/*  Maddening Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 43848 WHERE entry=11867;

/*  Choking Band  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=11868;

/*  Sha'ni's Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=11869;

/*  Snarkshaw Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 53331 WHERE entry=11871;

/*  Eschewal Greaves  */
UPDATE `item_template` SET `BuyPrice` = 42830, `SellPrice` = 8566 WHERE entry=11872;

/*  Ethereal Mist Cape  */
UPDATE `item_template` SET `BuyPrice` = 48309, `SellPrice` = 9661 WHERE entry=11873;

/*  Plainstalker Tunic  */
UPDATE `item_template` SET `BuyPrice` = 81437 WHERE entry=11876;

/*  Outrider Leggings  */
UPDATE `item_template` SET `BuyPrice` = 102603 WHERE entry=11882;

/*  Moonlit Amice  */
UPDATE `item_template` SET `BuyPrice` = 9231 WHERE entry=11884;

/*  Quintis' Research Gloves  */
UPDATE `item_template` SET `BuyPrice` = 24398 WHERE entry=11888;

/*  Bark Iron Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 36728, `SellPrice` = 7345 WHERE entry=11889;

/*  Linken's Sword of Mastery  */
UPDATE `item_template` SET `BuyPrice` = 170973 WHERE entry=11902;

/*  Beastsmasher  */
UPDATE `item_template` SET `BuyPrice` = 163615 WHERE entry=11906;

/*  Archaeologist's Quarry Boots  */
UPDATE `item_template` SET `BuyPrice` = 49434, `SellPrice` = 9886, `stat_type2` = 3, `stat_type3` = 5, `stat_value3` = 9, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=11908;

/*  Excavator's Utility Belt  */
UPDATE `item_template` SET `BuyPrice` = 41337 WHERE entry=11909;

/*  Bejeweled Legguards  */
UPDATE `item_template` SET `BuyPrice` = 61727, `SellPrice` = 12345 WHERE entry=11910;

/*  Treetop Leggings  */
UPDATE `item_template` SET `BuyPrice` = 61960, `stat_type1` = 4, `stat_value1` = 8, `stat_type3` = 6, `stat_value3` = 18, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=11911;

/*  Clayridge Helm  */
UPDATE `item_template` SET `BuyPrice` = 70224, `SellPrice` = 14044 WHERE entry=11913;

/*  Shizzle's Drizzle Blocker  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=11915;

/*  Shizzle's Muzzle  */
UPDATE `item_template` SET `BuyPrice` = 59171 WHERE entry=11916;

/*  Shizzle's Nozzle Wiper  */
UPDATE `item_template` SET `BuyPrice` = 31674, `SellPrice` = 6334 WHERE entry=11917;

/*  Grotslab Gloves  */
UPDATE `item_template` SET `BuyPrice` = 47687 WHERE entry=11918;

/*  Cragplate Greaves  */
UPDATE `item_template` SET `BuyPrice` = 47862, `SellPrice` = 9572 WHERE entry=11919;

/*  Impervious Giant  */
UPDATE `item_template` SET `BuyPrice` = 270836 WHERE entry=11921;

/*  The Hammer of Grace  */
UPDATE `item_template` SET `BuyPrice` = 218244, `SellPrice` = 43648 WHERE entry=11923;

/*  Robes of the Royal Crown  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=11924;

/*  Ghostshroud  */
UPDATE `item_template` SET `BuyPrice` = 82423, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=11925;

/*  Deathdealer Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 122952 WHERE entry=11926;

/*  Legplates of the Eternal Guardian  */
UPDATE `item_template` SET `BuyPrice` = 82283, `SellPrice` = 16456 WHERE entry=11927;

/*  Thaurissan's Royal Scepter  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=11928;

/*  The Emperor's New Cape  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=11930;

/*  Dreadforge Retaliator  */
UPDATE `item_template` SET `BuyPrice` = 290516 WHERE entry=11931;

/*  Imperial Jewel  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=11933;

/*  Emperor's Seal  */
UPDATE `item_template` SET `frost_res` = 6, `arcane_res` = 6, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 49, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=11934;

/*  Magmus Stone  */
UPDATE `item_template` SET `fire_res` = 15, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=11935;

/*  Relic Hunter Belt  */
UPDATE `item_template` SET `BuyPrice` = 1421, `stat_type1` = 4, `stat_type3` = 6, `stat_value3` = 2, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=11936;

/*  Dark Iron Ring  */
UPDATE `item_template` SET `Quality` = 2, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 9, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=11945;

/*  Fire Opal Necklace  */
UPDATE `item_template` SET `Quality` = 2, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 9, `spellcooldown_1` = -1 WHERE entry=11946;

/*  Penance Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 50128 WHERE entry=11963;

/*  Swiftstrike Cudgel  */
UPDATE `item_template` SET `BuyPrice` = 150783 WHERE entry=11964;

/*  Limb Cleaver  */
UPDATE `item_template` SET `BuyPrice` = 205269, `SellPrice` = 41053 WHERE entry=12000;

/*  Cerulean Talisman  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12019;

/*  Thallium Choker  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12020;

/*  Shieldplate Sabatons  */
UPDATE `item_template` SET `BuyPrice` = 46636, `SellPrice` = 9327 WHERE entry=12021;

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

/*  Splintsteel Armor  */
UPDATE `item_template` SET `BuyPrice` = 84251 WHERE entry=12049;

/*  Hazecover Boots  */
UPDATE `item_template` SET `stat_type3` = 3, `stat_value3` = 4, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=12050;

/*  Brazen Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 44983 WHERE entry=12051;

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

/*  Blade of Reckoning  */
UPDATE `item_template` SET `BuyPrice` = 201060 WHERE entry=12061;

/*  Skilled Fighting Blade  */
UPDATE `item_template` SET `BuyPrice` = 201827, `stat_type1` = 0, `stat_value1` = 0, `spellid_1` = 15776 WHERE entry=12062;

/*  Gamemaster Hood  */
UPDATE `item_template` SET `BuyPrice` = 4 WHERE entry=12064;

/*  Ward of the Elements  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=12065;

/*  Shaleskin Cape  */
UPDATE `item_template` SET `BuyPrice` = 55747 WHERE entry=12066;

/*  Valconian Sash  */
UPDATE `item_template` SET `BuyPrice` = 36743 WHERE entry=12083;

/*  Ring of the Aristocrat  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=12102;

/*  Star of Mystaria  */
UPDATE `item_template` SET `stat_type4` = 0, `stat_value4` = 0, `DisenchantID` = 49, `spellid_1` = 23727, `spelltrigger_2` = 0 WHERE entry=12103;

/*  Brindlethorn Tunic  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=12104;

/*  Pridemail Leggings  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 282, `BuyPrice` = 125722, `SellPrice` = 25144, `ItemLevel` = 60, `MaxDurability` = 75, `stat_type1` = 6, `stat_value1` = 13, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 17819, `spelltrigger_1` = 1, `StatsCount` = 3 WHERE entry=12105;

/*  Boulderskin Breastplate  */
UPDATE `item_template` SET `armor` = 570, `DisenchantID` = 0 WHERE entry=12106;

/*  Whispersilk Leggings  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=12107;

/*  Basaltscale Armor  */
UPDATE `item_template` SET `BuyPrice` = 115274, `SellPrice` = 23054 WHERE entry=12108;

/*  Azure Moon Amice  */
UPDATE `item_template` SET `BuyPrice` = 57845 WHERE entry=12109;

/*  Lavaplate Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 38841, `SellPrice` = 7768 WHERE entry=12111;

/*  Crypt Demon Bracers  */
UPDATE `item_template` SET `BuyPrice` = 52034, `SellPrice` = 10406 WHERE entry=12112;

/*  Sunborne Cape  */
UPDATE `item_template` SET `BuyPrice` = 52219, `SellPrice` = 10443, `spellid_1` = 9295 WHERE entry=12113;

/*  Nightfall Gloves  */
UPDATE `item_template` SET `BuyPrice` = 43671 WHERE entry=12114;

/*  Stalwart Clutch  */
UPDATE `item_template` SET `BuyPrice` = 35060, `SellPrice` = 7012 WHERE entry=12115;

/*  Bloodsail Admiral's Hat  */
UPDATE `item_template` SET `spellid_1` = 17567, `spelltrigger_1` = 0, `spellid_2` = 0, `spellcooldown_2` = -1 WHERE entry=12185;

/*  Test Defense Chest  */
UPDATE `item_template` SET `spellid_1` = 15804, `spelltrigger_1` = 1 WHERE entry=12187;

/*  Test Armor Chest  */
UPDATE `item_template` SET `spellid_1` = 15805, `spelltrigger_1` = 1 WHERE entry=12188;

/*  Blump Family Fishing Pole  */
UPDATE `item_template` SET `BuyPrice` = 939, `SellPrice` = 187 WHERE entry=12225;

/*  Smoldering Claw  */
UPDATE `item_template` SET `BuyPrice` = 229901, `fire_res` = 10, `stat_type1` = 0, `stat_value1` = 0 WHERE entry=12243;

/*  Broad Bladed Knife  */
UPDATE `item_template` SET `BuyPrice` = 28372 WHERE entry=12247;

/*  Daring Dirk  */
UPDATE `item_template` SET `BuyPrice` = 32029, `SellPrice` = 6405 WHERE entry=12248;

/*  Midnight Axe  */
UPDATE `item_template` SET `BuyPrice` = 40341 WHERE entry=12250;

/*  Big Stick  */
UPDATE `item_template` SET `BuyPrice` = 53896 WHERE entry=12251;

/*  Pale Leggings  */
UPDATE `item_template` SET `BuyPrice` = 34987 WHERE entry=12255;

/*  Cindercloth Leggings  */
UPDATE `item_template` SET `spellid_1` = 9296 WHERE entry=12256;

/*  Heavy Notched Belt  */
UPDATE `item_template` SET `BuyPrice` = 19429, `SellPrice` = 3885 WHERE entry=12257;

/*  Serpent Clasp Belt  */
UPDATE `item_template` SET `armor` = 138, `MaxDurability` = 35, `stat_type1` = 0, `stat_value1` = 0, `spellid_1` = 7597, `spelltrigger_1` = 1, `StatsCount` = 1 WHERE entry=12258;

/*  Glinting Steel Dagger  */
UPDATE `item_template` SET `BuyPrice` = 40363 WHERE entry=12259;

/*  Searing Golden Blade  */
UPDATE `item_template` SET `spellid_1` = 7689 WHERE entry=12260;

/*  Worn Battleaxe  */
UPDATE `item_template` SET `BuyPrice` = 43 WHERE entry=12282;

/*  Leggings of the People's Militia  */
UPDATE `item_template` SET `BuyPrice` = 1413, `stat_type1` = 4, `stat_type2` = 6, `stat_value2` = 2, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=12295;

/*  Spark of the People's Militia  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12296;

/*  Seal of Ascension  */
UPDATE `item_template` SET `fire_res` = 10, `nature_res` = 10, `frost_res` = 10, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `spellcooldown_1` = 180000, `spellcategorycooldown_1` = 0, `spellcategory_1` = 0 WHERE entry=12344;

/*  Thorium Armor  */
UPDATE `item_template` SET `BuyPrice` = 46199, `SellPrice` = 9239, `fire_res` = 8, `nature_res` = 8, `frost_res` = 8, `shadow_res` = 8, `arcane_res` = 8, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=12405;

/*  Thorium Belt  */
UPDATE `item_template` SET `BuyPrice` = 23183, `SellPrice` = 4636, `fire_res` = 6, `nature_res` = 6, `frost_res` = 6, `shadow_res` = 6, `arcane_res` = 6, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=12406;

/*  Thorium Bracers  */
UPDATE `item_template` SET `BuyPrice` = 24991, `SellPrice` = 4998, `fire_res` = 5, `nature_res` = 5, `frost_res` = 5, `shadow_res` = 5, `arcane_res` = 5, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=12408;

/*  Thorium Boots  */
UPDATE `item_template` SET `BuyPrice` = 51682, `SellPrice` = 10336, `fire_res` = 7, `nature_res` = 7, `frost_res` = 7, `shadow_res` = 7, `arcane_res` = 7, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=12409;

/*  Thorium Helm  */
UPDATE `item_template` SET `BuyPrice` = 51863, `SellPrice` = 10372, `fire_res` = 10, `nature_res` = 10, `frost_res` = 10, `shadow_res` = 10, `arcane_res` = 10, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=12410;

/*  Thorium Leggings  */
UPDATE `item_template` SET `BuyPrice` = 86882, `SellPrice` = 17376, `fire_res` = 10, `nature_res` = 10, `frost_res` = 10, `shadow_res` = 10, `arcane_res` = 10, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=12414;

/*  Radiant Breastplate  */
UPDATE `item_template` SET `frost_res` = 16, `shadow_res` = 16, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=12415;

/*  Radiant Belt  */
UPDATE `item_template` SET `BuyPrice` = 37979, `SellPrice` = 7595, `frost_res` = 12, `shadow_res` = 12, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=12416;

/*  Radiant Circlet  */
UPDATE `item_template` SET `frost_res` = 18, `shadow_res` = 18, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=12417;

/*  Radiant Gloves  */
UPDATE `item_template` SET `frost_res` = 12, `shadow_res` = 12, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=12418;

/*  Radiant Boots  */
UPDATE `item_template` SET `frost_res` = 15, `shadow_res` = 15, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=12419;

/*  Radiant Leggings  */
UPDATE `item_template` SET `BuyPrice` = 126654, `SellPrice` = 25330, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=12420;

/*  Imperial Plate Chest  */
UPDATE `item_template` SET `BuyPrice` = 81021, `SellPrice` = 16204 WHERE entry=12422;

/*  Imperial Plate Belt  */
UPDATE `item_template` SET `BuyPrice` = 27665, `SellPrice` = 5533 WHERE entry=12424;

/*  Imperial Plate Bracers  */
UPDATE `item_template` SET `BuyPrice` = 30221, `SellPrice` = 6044 WHERE entry=12425;

/*  Imperial Plate Boots  */
UPDATE `item_template` SET `BuyPrice` = 60311, `SellPrice` = 12062 WHERE entry=12426;

/*  Imperial Plate Helm  */
UPDATE `item_template` SET `BuyPrice` = 60530, `SellPrice` = 12106 WHERE entry=12427;

/*  Imperial Plate Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 43233, `SellPrice` = 8646 WHERE entry=12428;

/*  Imperial Plate Leggings  */
UPDATE `item_template` SET `BuyPrice` = 89615, `SellPrice` = 17923 WHERE entry=12429;

/*  Knucklebone Pouch (DND)  */
UPDATE `item_template` SET `spellid_1` = 16197, `spellcharges_1` = -1 WHERE entry=12443;

/*  Anvilmar Musket  */
UPDATE `item_template` SET `BuyPrice` = 95, `dmg_min1` = 4.0, `dmg_max1` = 8.0 WHERE entry=12446;

/*  Thistlewood Bow  */
UPDATE `item_template` SET `BuyPrice` = 96, `dmg_min1` = 3.0, `dmg_max1` = 7.0 WHERE entry=12447;

/*  Light Hunting Rifle  */
UPDATE `item_template` SET `BuyPrice` = 96, `dmg_min1` = 2.0, `dmg_max1` = 6.0 WHERE entry=12448;

/*  Primitive Bow  */
UPDATE `item_template` SET `BuyPrice` = 96, `dmg_min1` = 4.0, `dmg_max1` = 8.0 WHERE entry=12449;

/*  Embrace of the Wind Serpent  */
UPDATE `item_template` SET `armor` = 86, `nature_res` = 12, `stat_value1` = 30, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=12462;

/*  Drakefang Butcher  */
UPDATE `item_template` SET `BuyPrice` = 212231 WHERE entry=12463;

/*  Bloodfire Talons  */
UPDATE `item_template` SET `BuyPrice` = 42601, `fire_res` = 10, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=12464;

/*  Nightfall Drape  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=12465;

/*  Dawnspire Cord  */
UPDATE `item_template` SET `BuyPrice` = 34327, `stat_value1` = 19, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=12466;

/*  Chilton Wand  */
UPDATE `item_template` SET `dmg_min1` = 18.0, `dmg_max1` = 19.0, `MaxDurability` = 55, `spellcooldown_1` = -1 WHERE entry=12468;

/*  Mutilator  */
UPDATE `item_template` SET `BuyPrice` = 145898, `SellPrice` = 29179, `ItemLevel` = 47, `dmg_min1` = 82.0, `dmg_max1` = 124.0, `MaxDurability` = 100, `RequiredLevel` = 42 WHERE entry=12469;

/*  Sandstalker Ankleguards  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_type3` = 4, `stat_value3` = 6 WHERE entry=12470;

/*  Desertwalker Cane  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=12471;

/*  Ribsplitter  */
UPDATE `item_template` SET `BuyPrice` = 176662 WHERE entry=12527;

/*  Searing Needle  */
UPDATE `item_template` SET `BuyPrice` = 144416 WHERE entry=12531;

/*  Doomforged Straightedge  */
UPDATE `item_template` SET `BuyPrice` = 174629, `SellPrice` = 34925 WHERE entry=12535;

/*  Songstone of Ironforge  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12543;

/*  Thrall's Resolve  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=12544;

/*  Eye of Orgrimmar  */
UPDATE `item_template` SET `DisenchantID` = 49, `spelltrigger_2` = 0 WHERE entry=12545;

/*  Magni's Will  */
UPDATE `item_template` SET `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 49, `spellid_1` = 7597, `spelltrigger_2` = 0 WHERE entry=12548;

/*  Braincage  */
UPDATE `item_template` SET `BuyPrice` = 68349, `SellPrice` = 13669, `stat_type2` = 6, `stat_value2` = 9, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=12549;

/*  Runed Golem Shackles  */
UPDATE `item_template` SET `BuyPrice` = 32324, `SellPrice` = 6464 WHERE entry=12550;

/*  Battlechaser's Greaves  */
UPDATE `item_template` SET `BuyPrice` = 57032, `SellPrice` = 11406 WHERE entry=12555;

/*  High Priestess Boots  */
UPDATE `item_template` SET `shadow_res` = 10, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=12556;

/*  Ebonsteel Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 71841, `SellPrice` = 14368 WHERE entry=12557;

/*  Keris of Zul'Serak  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12582;

/*  Blackhand Doomsaw  */
UPDATE `item_template` SET `BuyPrice` = 371731, `SellPrice` = 74346, `DisenchantID` = 49 WHERE entry=12583;

/*  Grand Marshal's Longsword  */
UPDATE `item_template` SET `BuyPrice` = 248182, `SellPrice` = 49636 WHERE entry=12584;

/*  Eye of Rend  */
UPDATE `item_template` SET `BuyPrice` = 105159, `SellPrice` = 21031, `DisenchantID` = 49 WHERE entry=12587;

/*  Bonespike Shoulder  */
UPDATE `item_template` SET `BuyPrice` = 127233, `SellPrice` = 25446, `DisenchantID` = 49 WHERE entry=12588;

/*  Dustfeather Sash  */
UPDATE `item_template` SET `BuyPrice` = 51257, `SellPrice` = 10251, `stat_value1` = 18, `stat_value2` = 10, `DisenchantID` = 49, `spellid_1` = 9415 WHERE entry=12589;

/*  Felstriker  */
UPDATE `item_template` SET `BuyPrice` = 378124, `SellPrice` = 75624, `spellppmrate_1` = 1.0 WHERE entry=12590;

/*  Blackblade of Shahram  */
UPDATE `item_template` SET `BuyPrice` = 476208, `SellPrice` = 95241 WHERE entry=12592;

/*  Draconian Deflector  */
UPDATE `item_template` SET `BuyPrice` = 176064, `SellPrice` = 35212, `DisenchantID` = 49 WHERE entry=12602;

/*  Nightbrace Tunic  */
UPDATE `item_template` SET `BuyPrice` = 125244, `SellPrice` = 25048, `fire_res` = 10, `shadow_res` = 10, `stat_value1` = 5, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 49 WHERE entry=12603;

/*  Starfire Tiara  */
UPDATE `item_template` SET `fire_res` = 10, `DisenchantID` = 49, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=12604;

/*  Serpentine Skuller  */
UPDATE `item_template` SET `BuyPrice` = 145533, `shadow_res` = 10, `stat_type1` = 0, `stat_value1` = 0, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=12605;

/*  Crystallized Girdle  */
UPDATE `item_template` SET `BuyPrice` = 63340, `SellPrice` = 12668, `DisenchantID` = 49 WHERE entry=12606;

/*  Butcher's Apron  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=12608;

/*  Polychromatic Visionwrap  */
UPDATE `item_template` SET `BuyPrice` = 102494, `SellPrice` = 20498, `DisenchantID` = 49 WHERE entry=12609;

/*  Runic Plate Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 61238, `SellPrice` = 12247 WHERE entry=12610;

/*  Runic Plate Boots  */
UPDATE `item_template` SET `BuyPrice` = 61468, `SellPrice` = 12293 WHERE entry=12611;

/*  Runic Plate Helm  */
UPDATE `item_template` SET `BuyPrice` = 64783, `SellPrice` = 12956 WHERE entry=12612;

/*  Runic Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 91025, `SellPrice` = 18205 WHERE entry=12613;

/*  Runic Plate Leggings  */
UPDATE `item_template` SET `BuyPrice` = 91363, `SellPrice` = 18272 WHERE entry=12614;

/*  Savage Mail Tunic  */
UPDATE `item_template` SET `armor` = 332, `BuyPrice` = 137553, `SellPrice` = 27510, `MaxDurability` = 100 WHERE entry=12615;

/*  Savage Mail Boots  */
UPDATE `item_template` SET `armor` = 231, `BuyPrice` = 109206, `SellPrice` = 21841, `MaxDurability` = 50 WHERE entry=12616;

/*  Savage Mail Shoulders  */
UPDATE `item_template` SET `armor` = 253, `BuyPrice` = 109596, `SellPrice` = 21919, `MaxDurability` = 60 WHERE entry=12617;

/*  Enchanted Thorium Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 119863, `SellPrice` = 23972, `DisenchantID` = 49 WHERE entry=12618;

/*  Enchanted Thorium Leggings  */
UPDATE `item_template` SET `BuyPrice` = 120290, `SellPrice` = 24058, `DisenchantID` = 49 WHERE entry=12619;

/*  Enchanted Thorium Helm  */
UPDATE `item_template` SET `BuyPrice` = 86225, `SellPrice` = 17245, `DisenchantID` = 49 WHERE entry=12620;

/*  Demonfork  */
UPDATE `item_template` SET `BuyPrice` = 225425 WHERE entry=12621;

/*  Wildthorn Mail  */
UPDATE `item_template` SET `spellid_1` = 16638 WHERE entry=12624;

/*  Dawnbringer Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 65402, `SellPrice` = 13080 WHERE entry=12625;

/*  Funeral Cuffs  */
UPDATE `item_template` SET `shadow_res` = 10, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=12626;

/*  Demon Forged Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 83203, `SellPrice` = 16640 WHERE entry=12628;

/*  Fiery Plate Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 44598, `SellPrice` = 8919 WHERE entry=12631;

/*  Storm Gauntlets  */
UPDATE `item_template` SET `spellid_2` = 9361 WHERE entry=12632;

/*  Whitesoul Helm  */
UPDATE `item_template` SET `BuyPrice` = 74299, `SellPrice` = 14859, `DisenchantID` = 49 WHERE entry=12633;

/*  Chiselbrand Girdle  */
UPDATE `item_template` SET `stat_type1` = 6, `DisenchantID` = 49 WHERE entry=12634;

/*  Helm of the Great Chief  */
UPDATE `item_template` SET `BuyPrice` = 121428, `SellPrice` = 24285, `DisenchantID` = 49 WHERE entry=12636;

/*  Backusarian Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 51582, `SellPrice` = 10316, `stat_value1` = 9, `stat_type2` = 5, `DisenchantID` = 49, `spellid_1` = 21618 WHERE entry=12637;

/*  Stronghold Gauntlets  */
UPDATE `item_template` SET `armor` = 441, `BuyPrice` = 76359, `SellPrice` = 15271, `spellid_1` = 7219 WHERE entry=12639;

/*  Lionheart Helm  */
UPDATE `item_template` SET `armor` = 565, `BuyPrice` = 109471, `SellPrice` = 21894 WHERE entry=12640;

/*  Invulnerable Mail  */
UPDATE `item_template` SET `armor` = 554, `BuyPrice` = 219182, `SellPrice` = 43836 WHERE entry=12641;

/*  Blackcrow  */
UPDATE `item_template` SET `dmg_min1` = 77.0, `dmg_max1` = 117.0 WHERE entry=12651;

/*  Riphook  */
UPDATE `item_template` SET `dmg_min1` = 46.0, `dmg_max1` = 87.0 WHERE entry=12653;

/*  Cap of the Scarlet Savant  */
UPDATE `item_template` SET `armor` = 78, `BuyPrice` = 114539, `SellPrice` = 22907 WHERE entry=12752;

/*  Leggings of Arcana  */
UPDATE `item_template` SET `armor` = 166, `BuyPrice` = 175287, `SellPrice` = 35057 WHERE entry=12756;

/*  Breastplate of Bloodthirst  */
UPDATE `item_template` SET `armor` = 190, `BuyPrice` = 175964, `SellPrice` = 35192 WHERE entry=12757;

/*  Thorium Greatsword  */
UPDATE `item_template` SET `BuyPrice` = 168107, `DisenchantID` = 0 WHERE entry=12764;

/*  Bleakwood Hew  */
UPDATE `item_template` SET `BuyPrice` = 230772, `DisenchantID` = 0 WHERE entry=12769;

/*  Inlaid Thorium Hammer  */
UPDATE `item_template` SET `BuyPrice` = 194357 WHERE entry=12772;

/*  Ornate Thorium Handaxe  */
UPDATE `item_template` SET `BuyPrice` = 165399, `SellPrice` = 33079 WHERE entry=12773;

/*  Dawn's Edge  */
UPDATE `item_template` SET `BuyPrice` = 180220 WHERE entry=12774;

/*  Huge Thorium Battleaxe  */
UPDATE `item_template` SET `BuyPrice` = 199746, `stat_type1` = 0, `stat_value1` = 0, `spellid_1` = 15768 WHERE entry=12775;

/*  Enchanted Battlehammer  */
UPDATE `item_template` SET `BuyPrice` = 240624, `SellPrice` = 48124 WHERE entry=12776;

/*  Rune Edge  */
UPDATE `item_template` SET `BuyPrice` = 176691, `DisenchantID` = 0 WHERE entry=12779;

/*  Heartseeker  */
UPDATE `item_template` SET `BuyPrice` = 291079, `SellPrice` = 58215, `DisenchantID` = 49 WHERE entry=12783;

/*  Arcanite Reaper  */
UPDATE `item_template` SET `BuyPrice` = 365181, `SellPrice` = 73036, `DisenchantID` = 49 WHERE entry=12784;

/*  Arcanite Champion  */
UPDATE `item_template` SET `BuyPrice` = 373098, `SellPrice` = 74619, `DisenchantID` = 49 WHERE entry=12790;

/*  Masterwork Stormhammer  */
UPDATE `item_template` SET `BuyPrice` = 281520, `SellPrice` = 56304, `DisenchantID` = 49 WHERE entry=12794;

/*  Blood Talon  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=12795;

/*  Hammer of the Titans  */
UPDATE `item_template` SET `BuyPrice` = 354564, `SellPrice` = 70912, `DisenchantID` = 49 WHERE entry=12796;

/*  Frostguard  */
UPDATE `item_template` SET `BuyPrice` = 284716, `SellPrice` = 56943, `DisenchantID` = 49 WHERE entry=12797;

/*  Annihilator  */
UPDATE `item_template` SET `BuyPrice` = 285752, `SellPrice` = 57150, `DisenchantID` = 49, `spellppmrate_1` = 1.0 WHERE entry=12798;

/*  Darkspear  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=12802;

/*  Orb of Fire  */
UPDATE `item_template` SET `spellid_1` = 16982, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 0 WHERE entry=12805;

/*  Breastplate of the Chromatic Flight  */
UPDATE `item_template` SET `armor` = 706, `BuyPrice` = 147308, `SellPrice` = 29461 WHERE entry=12895;

/*  Legguards of the Chromatic Defier  */
UPDATE `item_template` SET `armor` = 349, `BuyPrice` = 227412, `SellPrice` = 45482 WHERE entry=12903;

/*  Shawn's Super Special Swami Hat  */
UPDATE `item_template` SET `armor` = 64, `BuyPrice` = 67923, `SellPrice` = 13584, `MaxDurability` = 45 WHERE entry=12904;

/*  Wildfire Cape  */
UPDATE `item_template` SET `BuyPrice` = 81798, `SellPrice` = 16359, `DisenchantID` = 49 WHERE entry=12905;

/*  Flaming Band  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellid_1` = 17866 WHERE entry=12926;

/*  Truestrike Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 95745, `SellPrice` = 19149, `DisenchantID` = 49 WHERE entry=12927;

/*  Emberfury Talisman  */
UPDATE `item_template` SET `fire_res` = 7, `stat_type2` = 6, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 49 WHERE entry=12929;

/*  Briarwood Reed  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12930;

/*  Warmaster Legguards  */
UPDATE `item_template` SET `BuyPrice` = 115982, `SellPrice` = 23196, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 49, `spellid_1` = 13670 WHERE entry=12935;

/*  Battleborn Armbraces  */
UPDATE `item_template` SET `BuyPrice` = 58203, `SellPrice` = 11640, `DisenchantID` = 49 WHERE entry=12936;

/*  Dal'Rend's Tribal Guardian  */
UPDATE `item_template` SET `BuyPrice` = 301818, `SellPrice` = 60363, `DisenchantID` = 49 WHERE entry=12939;

/*  Dal'Rend's Sacred Charge  */
UPDATE `item_template` SET `BuyPrice` = 274063, `SellPrice` = 54812, `DisenchantID` = 49 WHERE entry=12940;

/*  Legplates of the Chromatic Defier  */
UPDATE `item_template` SET `armor` = 349, `BuyPrice` = 212825, `SellPrice` = 42565 WHERE entry=12945;

/*  Gyth's Skull  */
UPDATE `item_template` SET `BuyPrice` = 74307, `SellPrice` = 14861, `DisenchantID` = 49 WHERE entry=12952;

/*  Dragoneye Coif  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12953;

/*  Tribal War Feathers  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=12960;

/*  Blademaster Leggings  */
UPDATE `item_template` SET `BuyPrice` = 138586, `SellPrice` = 27717, `stat_value1` = 5, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 49, `spellid_3` = 13670 WHERE entry=12963;

/*  Tristam Legguards  */
UPDATE `item_template` SET `BuyPrice` = 166942, `SellPrice` = 33388, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 49, `spellid_2` = 13670 WHERE entry=12964;

/*  Spiritshroud Leggings  */
UPDATE `item_template` SET `BuyPrice` = 111721, `SellPrice` = 22344, `DisenchantID` = 49 WHERE entry=12965;

/*  Blackmist Armguards  */
UPDATE `item_template` SET `BuyPrice` = 70092, `SellPrice` = 14018, `shadow_res` = 10, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 49 WHERE entry=12966;

/*  Bloodmoon Cloak  */
UPDATE `item_template` SET `BuyPrice` = 84420, `SellPrice` = 16884, `arcane_res` = 7, `stat_value1` = 17, `stat_type2` = 6, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 49 WHERE entry=12967;

/*  Frostweaver Cape  */
UPDATE `item_template` SET `BuyPrice` = 84740, `SellPrice` = 16948, `frost_res` = 10, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 49 WHERE entry=12968;

/*  Seeping Willow  */
UPDATE `item_template` SET `BuyPrice` = 354420, `SellPrice` = 70884, `DisenchantID` = 49 WHERE entry=12969;

/*  General's Ceremonial Plate  */
UPDATE `item_template` SET `armor` = 657, `MaxDurability` = 135, `DisenchantID` = 0, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=12970;

/*  The Black Knight  */
UPDATE `item_template` SET `BuyPrice` = 30525 WHERE entry=12974;

/*  Prospector Axe  */
UPDATE `item_template` SET `BuyPrice` = 11026 WHERE entry=12975;

/*  Ironpatch Blade  */
UPDATE `item_template` SET `BuyPrice` = 8852 WHERE entry=12976;

/*  Magefist Gloves  */
UPDATE `item_template` SET `BuyPrice` = 1776 WHERE entry=12977;

/*  Silver-linked Footguards  */
UPDATE `item_template` SET `BuyPrice` = 4254, `SellPrice` = 850 WHERE entry=12982;

/*  Skycaller  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=12984;

/*  Razor's Edge  */
UPDATE `item_template` SET `BuyPrice` = 12946 WHERE entry=12990;

/*  Thorbia's Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 3939, `SellPrice` = 787 WHERE entry=12994;

/*  Band of Purification  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=12996;

/*  Drakewing Bands  */
UPDATE `item_template` SET `stat_type1` = 6 WHERE entry=12999;

/*  Staff of Hale Magefire  */
UPDATE `item_template` SET `BuyPrice` = 326129, `SellPrice` = 65225, `DisenchantID` = 49 WHERE entry=13000;

/*  Maiden's Circle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13001;

/*  Lady Alizabeth's Pendant  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=13002;

/*  Lord Alexander's Battle Axe  */
UPDATE `item_template` SET `BuyPrice` = 248203 WHERE entry=13003;

/*  Torch of Austen  */
UPDATE `item_template` SET `BuyPrice` = 167954, `SellPrice` = 33590, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=13004;

/*  Amy's Blanket  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=13005;

/*  Mass of McGowan  */
UPDATE `item_template` SET `BuyPrice` = 274202, `SellPrice` = 54840, `DisenchantID` = 49, `spellcooldown_1` = -1 WHERE entry=13006;

/*  Mageflame Cloak  */
UPDATE `item_template` SET `spellid_1` = 9298 WHERE entry=13007;

/*  Dreamsinger Legguards  */
UPDATE `item_template` SET `BuyPrice` = 11207, `stat_type1` = 6 WHERE entry=13010;

/*  Silver-lined Belt  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 4, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=13011;

/*  Elder Wizard's Mantle  */
UPDATE `item_template` SET `BuyPrice` = 61778 WHERE entry=13013;

/*  Axe of Rin'ji  */
UPDATE `item_template` SET `BuyPrice` = 173526 WHERE entry=13014;

/*  Serathil  */
UPDATE `item_template` SET `BuyPrice` = 269788, `SellPrice` = 53957, `DisenchantID` = 49 WHERE entry=13015;

/*  Killmaim  */
UPDATE `item_template` SET `BuyPrice` = 23855 WHERE entry=13016;

/*  Harpyclaw Short Bow  */
UPDATE `item_template` SET `BuyPrice` = 23828, `dmg_min1` = 20.0, `dmg_max1` = 38.0 WHERE entry=13019;

/*  Skystriker Bow  */
UPDATE `item_template` SET `BuyPrice` = 44927, `dmg_min1` = 30.0, `dmg_max1` = 57.0 WHERE entry=13020;

/*  Needle Threader  */
UPDATE `item_template` SET `dmg_min1` = 34.0, `dmg_max1` = 64.0 WHERE entry=13021;

/*  Gryphonwing Long Bow  */
UPDATE `item_template` SET `BuyPrice` = 139952, `dmg_min1` = 53.0, `dmg_max1` = 100.0 WHERE entry=13022;

/*  Eaglehorn Long Bow  */
UPDATE `item_template` SET `BuyPrice` = 213515, `SellPrice` = 42703, `dmg_min1` = 40.0, `dmg_max1` = 76.0, `DisenchantID` = 49 WHERE entry=13023;

/*  Beazel's Basher  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=13024;

/*  Deadwood Sledge  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=13025;

/*  Heaven's Light  */
UPDATE `item_template` SET `BuyPrice` = 97208, `spellcooldown_1` = -1 WHERE entry=13026;

/*  Bonesnapper  */
UPDATE `item_template` SET `BuyPrice` = 169160, `spellcooldown_1` = -1 WHERE entry=13027;

/*  Bludstone Hammer  */
UPDATE `item_template` SET `BuyPrice` = 263025, `SellPrice` = 52605, `DisenchantID` = 49, `spellcooldown_1` = -1 WHERE entry=13028;

/*  Umbral Crystal  */
UPDATE `item_template` SET `spellid_1` = 9325 WHERE entry=13029;

/*  Orb of Mistmantle  */
UPDATE `item_template` SET `spellid_1` = 7678, `spellid_2` = 7707, `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0 WHERE entry=13031;

/*  Speedsteel Rapier  */
UPDATE `item_template` SET `BuyPrice` = 73551 WHERE entry=13034;

/*  Serpent Slicer  */
UPDATE `item_template` SET `BuyPrice` = 125706 WHERE entry=13035;

/*  Crystalpine Stinger  */
UPDATE `item_template` SET `dmg_min1` = 35.0, `dmg_max1` = 54.0 WHERE entry=13037;

/*  Swiftwind  */
UPDATE `item_template` SET `dmg_min1` = 34.0, `dmg_max1` = 51.0 WHERE entry=13038;

/*  Skull Splitting Crossbow  */
UPDATE `item_template` SET `BuyPrice` = 89461, `dmg_min1` = 52.0, `dmg_max1` = 79.0 WHERE entry=13039;

/*  Heartseeking Crossbow  */
UPDATE `item_template` SET `dmg_min1` = 71.0, `dmg_max1` = 108.0 WHERE entry=13040;

/*  Guardian Blade  */
UPDATE `item_template` SET `BuyPrice` = 22582 WHERE entry=13041;

/*  Demonslayer  */
UPDATE `item_template` SET `BuyPrice` = 264000 WHERE entry=13044;

/*  Viscous Hammer  */
UPDATE `item_template` SET `BuyPrice` = 54048 WHERE entry=13045;

/*  Blanchard's Stout  */
UPDATE `item_template` SET `BuyPrice` = 175213 WHERE entry=13046;

/*  Looming Gavel  */
UPDATE `item_template` SET `BuyPrice` = 29858, `spellcooldown_1` = -1 WHERE entry=13048;

/*  Deanship Claymore  */
UPDATE `item_template` SET `BuyPrice` = 30958 WHERE entry=13049;

/*  Witchfury  */
UPDATE `item_template` SET `BuyPrice` = 114557 WHERE entry=13051;

/*  Warmonger  */
UPDATE `item_template` SET `BuyPrice` = 208388, `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 15466 WHERE entry=13052;

/*  Doombringer  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13053;

/*  Bonechewer  */
UPDATE `item_template` SET `BuyPrice` = 146838 WHERE entry=13055;

/*  Frenzied Striker  */
UPDATE `item_template` SET `BuyPrice` = 241653 WHERE entry=13056;

/*  Khoo's Point  */
UPDATE `item_template` SET `BuyPrice` = 109167 WHERE entry=13058;

/*  Stoneraven  */
UPDATE `item_template` SET `BuyPrice` = 193598 WHERE entry=13059;

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

/*  Wyrmslayer Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 44989, `SellPrice` = 8997 WHERE entry=13066;

/*  Hydralick Armor  */
UPDATE `item_template` SET `BuyPrice` = 71709, `SellPrice` = 14341 WHERE entry=13067;

/*  Obsidian Greaves  */
UPDATE `item_template` SET `BuyPrice` = 23927, `SellPrice` = 4785 WHERE entry=13068;

/*  Sapphiron's Scale Boots  */
UPDATE `item_template` SET `BuyPrice` = 70437, `SellPrice` = 14087 WHERE entry=13070;

/*  Plated Fist of Hakoo  */
UPDATE `item_template` SET `BuyPrice` = 20308, `SellPrice` = 4061 WHERE entry=13071;

/*  Stonegrip Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 52134, `SellPrice` = 10426, `DisenchantID` = 49 WHERE entry=13072;

/*  Mugthol's Helm  */
UPDATE `item_template` SET `BuyPrice` = 45404, `SellPrice` = 9080 WHERE entry=13073;

/*  Golem Shard Leggings  */
UPDATE `item_template` SET `BuyPrice` = 40124, `SellPrice` = 8024 WHERE entry=13074;

/*  Direwing Legguards  */
UPDATE `item_template` SET `BuyPrice` = 110454, `SellPrice` = 22090, `DisenchantID` = 49 WHERE entry=13075;

/*  Giantslayer Bracers  */
UPDATE `item_template` SET `BuyPrice` = 23579, `SellPrice` = 4715 WHERE entry=13076;

/*  Girdle of Uther  */
UPDATE `item_template` SET `BuyPrice` = 41132, `SellPrice` = 8226 WHERE entry=13077;

/*  Widow's Clutch  */
UPDATE `item_template` SET `armor` = 89, `MaxDurability` = 80, `shadow_res` = 0, `arcane_res` = 13, `DisenchantID` = 0 WHERE entry=13080;

/*  Skullance Shield  */
UPDATE `item_template` SET `BuyPrice` = 35617 WHERE entry=13081;

/*  Mountainside Buckler  */
UPDATE `item_template` SET `BuyPrice` = 66175 WHERE entry=13082;

/*  Garrett Family Crest  */
UPDATE `item_template` SET `BuyPrice` = 173470, `SellPrice` = 34694, `DisenchantID` = 49 WHERE entry=13083;

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
UPDATE `item_template` SET `armor` = 370, `MaxDurability` = 120, `DisenchantID` = 0 WHERE entry=13090;

/*  Blush Ember Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=13093;

/*  The Queen's Jewel  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=13094;

/*  Band of the Hierophant  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13096;

/*  Painweaver Band  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13098;

/*  Moccasins of the White Hare  */
UPDATE `item_template` SET `BuyPrice` = 7155, `stat_type2` = 3, `stat_value2` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=13099;

/*  Pads of the Venom Spider  */
UPDATE `item_template` SET `BuyPrice` = 17268 WHERE entry=13103;

/*  Sutarn's Ring  */
UPDATE `item_template` SET `BuyPrice` = 10737 WHERE entry=13105;

/*  Glowing Magical Bracelets  */
UPDATE `item_template` SET `BuyPrice` = 6081, `stat_type2` = 4, `stat_value2` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `spellcooldown_1` = -1, `StatsCount` = 2 WHERE entry=13106;

/*  Magiskull Cuffs  */
UPDATE `item_template` SET `BuyPrice` = 56457, `SellPrice` = 11291, `DisenchantID` = 49, `spellcooldown_1` = -1 WHERE entry=13107;

/*  Wolffear Harness  */
UPDATE `item_template` SET `BuyPrice` = 24840, `stat_type2` = 6 WHERE entry=13110;

/*  Sandals of the Insurgent  */
UPDATE `item_template` SET `BuyPrice` = 69968 WHERE entry=13111;

/*  Winged Helm  */
UPDATE `item_template` SET `BuyPrice` = 48124, `SellPrice` = 9624, `stat_type1` = 6, `stat_type2` = 5, `stat_value2` = 23 WHERE entry=13112;

/*  Feathermoon Headdress  */
UPDATE `item_template` SET `BuyPrice` = 102730, `SellPrice` = 20546, `stat_type1` = 6, `stat_value1` = 21, `DisenchantID` = 49, `StatsCount` = 3 WHERE entry=13113;

/*  Troll's Bane Leggings  */
UPDATE `item_template` SET `BuyPrice` = 12870, `stat_type2` = 6, `stat_value2` = 4 WHERE entry=13114;

/*  Sheepshear Mantle  */
UPDATE `item_template` SET `BuyPrice` = 34954, `SellPrice` = 6990, `stat_type1` = 5, `stat_value1` = 16, `stat_type3` = 6 WHERE entry=13115;

/*  Spaulders of the Unseen  */
UPDATE `item_template` SET `BuyPrice` = 96851, `SellPrice` = 19370, `DisenchantID` = 49 WHERE entry=13116;

/*  Ogron's Sash  */
UPDATE `item_template` SET `BuyPrice` = 19152, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=13117;

/*  Serpentine Sash  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=13118;

/*  Deepfury Bracers  */
UPDATE `item_template` SET `BuyPrice` = 47526 WHERE entry=13120;

/*  Dreamwalker Armor  */
UPDATE `item_template` SET `BuyPrice` = 166939, `SellPrice` = 33387, `DisenchantID` = 49 WHERE entry=13123;

/*  Ravasaur Scale Boots  */
UPDATE `item_template` SET `stat_type1` = 6 WHERE entry=13124;

/*  Elven Chain Boots  */
UPDATE `item_template` SET `stat_type3` = 6 WHERE entry=13125;

/*  Battlecaller Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 51870, `stat_type1` = 4, `stat_type3` = 6, `stat_value3` = 15 WHERE entry=13126;

/*  Frostreaver Crown  */
UPDATE `item_template` SET `stat_type3` = 6 WHERE entry=13127;

/*  High Bergg Helm  */
UPDATE `item_template` SET `stat_type1` = 6 WHERE entry=13128;

/*  Windrunner Legguards  */
UPDATE `item_template` SET `stat_type2` = 6 WHERE entry=13130;

/*  Drakesfire Epaulets  */
UPDATE `item_template` SET `BuyPrice` = 115416, `SellPrice` = 23083, `DisenchantID` = 49 WHERE entry=13133;

/*  Lil Timmy's Peashooter  */
UPDATE `item_template` SET `BuyPrice` = 7280, `dmg_min1` = 20.0, `dmg_max1` = 37.0 WHERE entry=13136;

/*  Ironweaver  */
UPDATE `item_template` SET `dmg_min1` = 31.0, `dmg_max1` = 59.0 WHERE entry=13137;

/*  The Silencer  */
UPDATE `item_template` SET `dmg_min1` = 43.0, `dmg_max1` = 82.0 WHERE entry=13138;

/*  Guttbuster  */
UPDATE `item_template` SET `dmg_min1` = 49.0, `dmg_max1` = 92.0 WHERE entry=13139;

/*  Tooth of Gnarr  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13141;

/*  Brigam Girdle  */
UPDATE `item_template` SET `BuyPrice` = 58210, `SellPrice` = 11642, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 49, `spellid_1` = 15464 WHERE entry=13142;

/*  Serenity Belt  */
UPDATE `item_template` SET `BuyPrice` = 34327 WHERE entry=13144;

/*  Enormous Ogre Belt  */
UPDATE `item_template` SET `BuyPrice` = 13522, `SellPrice` = 2704 WHERE entry=13145;

/*  Shell Launcher Shotgun  */
UPDATE `item_template` SET `dmg_min1` = 48.0, `dmg_max1` = 89.0 WHERE entry=13146;

/*  Chillpike  */
UPDATE `item_template` SET `BuyPrice` = 313145, `SellPrice` = 62629, `DisenchantID` = 49 WHERE entry=13148;

/*  Trindlehaven Staff  */
UPDATE `item_template` SET `BuyPrice` = 328749, `SellPrice` = 65749, `DisenchantID` = 49 WHERE entry=13161;

/*  Reiver Claws  */
UPDATE `item_template` SET `BuyPrice` = 52793, `SellPrice` = 10558, `DisenchantID` = 49 WHERE entry=13162;

/*  Relentless Scythe  */
UPDATE `item_template` SET `BuyPrice` = 347689, `SellPrice` = 69537, `DisenchantID` = 49 WHERE entry=13163;

/*  Heart of the Scale  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13164;

/*  Slamshot Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 71024, `SellPrice` = 14204, `DisenchantID` = 49 WHERE entry=13166;

/*  Fist of Omokk  */
UPDATE `item_template` SET `BuyPrice` = 297052, `DisenchantID` = 49 WHERE entry=13167;

/*  Plate of the Shaman King  */
UPDATE `item_template` SET `BuyPrice` = 95425, `SellPrice` = 19085, `DisenchantID` = 49 WHERE entry=13168;

/*  Tressermane Leggings  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13169;

/*  Skyshroud Leggings  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13170;

/*  Voone's Twitchbow  */
UPDATE `item_template` SET `BuyPrice` = 153095, `dmg_min1` = 31.0, `dmg_max1` = 58.0 WHERE entry=13175;

/*  Talisman of Evasion  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13177;

/*  Rosewine Circle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13178;

/*  Brazecore Armguards  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13179;

/*  Demonskin Gloves  */
UPDATE `item_template` SET `BuyPrice` = 43988, `stat_type1` = 6, `stat_value1` = 17, `stat_type3` = 7, `stat_value3` = 9, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=13181;

/*  Venomspitter  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13183;

/*  Fallbrush Handgrips  */
UPDATE `item_template` SET `BuyPrice` = 68191, `SellPrice` = 13638, `DisenchantID` = 49 WHERE entry=13184;

/*  Sunderseer Mantle  */
UPDATE `item_template` SET `BuyPrice` = 82111, `SellPrice` = 16422, `stat_value1` = 17, `stat_value2` = 11, `DisenchantID` = 49, `spellid_1` = 9398 WHERE entry=13185;

/*  Hurd Smasher  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13198;

/*  Crushridge Bindings  */
UPDATE `item_template` SET `BuyPrice` = 21994, `SellPrice` = 4398 WHERE entry=13199;

/*  Armswake Cloak  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13203;

/*  Bashguuder  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13204;

/*  Rhombeard Protector  */
UPDATE `item_template` SET `BuyPrice` = 175155, `SellPrice` = 35031, `DisenchantID` = 49, `spellcooldown_1` = -1 WHERE entry=13205;

/*  Wolfshear Leggings  */
UPDATE `item_template` SET `BuyPrice` = 99402, `SellPrice` = 19880, `DisenchantID` = 49 WHERE entry=13206;

/*  Bleak Howler Armguards  */
UPDATE `item_template` SET `BuyPrice` = 62603, `SellPrice` = 12520, `DisenchantID` = 49 WHERE entry=13208;

/*  Seal of the Dawn  */
UPDATE `item_template` SET `spellid_2` = 17670, `spelltrigger_2` = 1 WHERE entry=13209;

/*  Pads of the Dread Wolf  */
UPDATE `item_template` SET `BuyPrice` = 90122, `DisenchantID` = 49 WHERE entry=13210;

/*  Slashclaw Bracers  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13211;

/*  Halycon's Spiked Collar  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13212;

/*  Smolderweb's Eye  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13213;

/*  Crown of the Penitent  */
UPDATE `item_template` SET `BuyPrice` = 66252, `SellPrice` = 13250 WHERE entry=13216;

/*  Fang of the Crystal Spider  */
UPDATE `item_template` SET `BuyPrice` = 266942, `SellPrice` = 53388, `DisenchantID` = 49 WHERE entry=13218;

/*  Argent Defender  */
UPDATE `item_template` SET `BuyPrice` = 182578, `SellPrice` = 36515, `DisenchantID` = 49 WHERE entry=13243;

/*  Gilded Gauntlets  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13244;

/*  Argent Avenger  */
UPDATE `item_template` SET `BuyPrice` = 268114, `SellPrice` = 53622, `DisenchantID` = 49 WHERE entry=13246;

/*  Burstshot Harquebus  */
UPDATE `item_template` SET `dmg_min1` = 52.0, `dmg_max1` = 98.0 WHERE entry=13248;

/*  Argent Crusader  */
UPDATE `item_template` SET `BuyPrice` = 338914, `SellPrice` = 67782, `DisenchantID` = 49 WHERE entry=13249;

/*  Cloudrunner Girdle  */
UPDATE `item_template` SET `BuyPrice` = 62170, `DisenchantID` = 49 WHERE entry=13252;

/*  Hands of Power  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13253;

/*  Trueaim Gauntlets  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 17818, `spellid_2` = 15464, `spellid_3` = 27743, `spellid_4` = 27744 WHERE entry=13255;

/*  Demonic Runed Spaulders  */
UPDATE `item_template` SET `stat_type1` = 5, `stat_type3` = 4 WHERE entry=13257;

/*  Slaghide Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 66715, `SellPrice` = 13343, `DisenchantID` = 49, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=13258;

/*  Ribsteel Footguards  */
UPDATE `item_template` SET `BuyPrice` = 80348, `SellPrice` = 16069, `DisenchantID` = 49 WHERE entry=13259;

/*  Wind Dancer Boots  */
UPDATE `item_template` SET `BuyPrice` = 112808, `SellPrice` = 22561, `DisenchantID` = 49 WHERE entry=13260;

/*  Globe of D'sak  */
UPDATE `item_template` SET `shadow_res` = 7, `stat_type1` = 5, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=13261;

/*  Ashbringer  */
UPDATE `item_template` SET `BuyPrice` = 1307038, `SellPrice` = 261407 WHERE entry=13262;

/*  Ogreseer Tower Boots  */
UPDATE `item_template` SET `stat_type2` = 6, `spelltrigger_1` = 0 WHERE entry=13282;

/*  Magus Ring  */
UPDATE `item_template` SET `stat_value1` = 12, `stat_type2` = 6, `stat_value2` = 7, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=13283;

/*  Rivenspike  */
UPDATE `item_template` SET `BuyPrice` = 220533 WHERE entry=13286;

/*  Alanna's Embrace  */
UPDATE `item_template` SET `armor` = 96, `BuyPrice` = 151110, `SellPrice` = 30222 WHERE entry=13314;

/*  Cape of the Black Baron  */
UPDATE `item_template` SET `BuyPrice` = 82494, `SellPrice` = 16498, `DisenchantID` = 49 WHERE entry=13340;

/*  Dracorian Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 86054, `SellPrice` = 17210, `DisenchantID` = 49 WHERE entry=13344;

/*  Seal of Rivendare  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=13345;

/*  Robes of the Exalted  */
UPDATE `item_template` SET `BuyPrice` = 115591, `SellPrice` = 23118, `DisenchantID` = 49 WHERE entry=13346;

/*  Demonshear  */
UPDATE `item_template` SET `BuyPrice` = 363850, `SellPrice` = 72770, `DisenchantID` = 49 WHERE entry=13348;

/*  Scepter of the Unholy  */
UPDATE `item_template` SET `BuyPrice` = 292145, `SellPrice` = 58429, `DisenchantID` = 49, `spellid_1` = 9326 WHERE entry=13349;

/*  Wyrmtongue Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 105181, `SellPrice` = 21036, `DisenchantID` = 49 WHERE entry=13358;

/*  Crown of Tyranny  */
UPDATE `item_template` SET `BuyPrice` = 126683, `SellPrice` = 25336, `DisenchantID` = 49 WHERE entry=13359;

/*  Gift of the Elven Magi  */
UPDATE `item_template` SET `BuyPrice` = 282585, `SellPrice` = 56517, `DisenchantID` = 49 WHERE entry=13360;

/*  Skullforge Reaver  */
UPDATE `item_template` SET `BuyPrice` = 283650, `SellPrice` = 56730, `DisenchantID` = 49, `spellppmrate_1` = 2.0 WHERE entry=13361;

/*  Bonescraper  */
UPDATE `item_template` SET `BuyPrice` = 277190, `SellPrice` = 55438, `DisenchantID` = 49 WHERE entry=13368;

/*  Fire Striders  */
UPDATE `item_template` SET `BuyPrice` = 87634, `SellPrice` = 17526, `DisenchantID` = 49, `spellid_1` = 13830 WHERE entry=13369;

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

/*  Songbird Blouse  */
UPDATE `item_template` SET `BuyPrice` = 109860 WHERE entry=13378;

/*  Willey's Portable Howitzer  */
UPDATE `item_template` SET `BuyPrice` = 192216, `SellPrice` = 38443, `dmg_min1` = 63.0, `dmg_max1` = 118.0, `DisenchantID` = 49 WHERE entry=13380;

/*  Master Cannoneer Boots  */
UPDATE `item_template` SET `BuyPrice` = 77167, `SellPrice` = 15433, `DisenchantID` = 49 WHERE entry=13381;

/*  Cannonball Runner  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13382;

/*  Rainbow Girdle  */
UPDATE `item_template` SET `BuyPrice` = 44941, `SellPrice` = 8988 WHERE entry=13384;

/*  Tome of Knowledge  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13385;

/*  Archivist Cape  */
UPDATE `item_template` SET `BuyPrice` = 78610, `SellPrice` = 15722, `DisenchantID` = 49 WHERE entry=13386;

/*  Foresight Girdle  */
UPDATE `item_template` SET `BuyPrice` = 78899, `SellPrice` = 15779, `DisenchantID` = 49 WHERE entry=13387;

/*  The Postmaster's Tunic  */
UPDATE `item_template` SET `BuyPrice` = 105586, `SellPrice` = 21117, `DisenchantID` = 49 WHERE entry=13388;

/*  The Postmaster's Trousers  */
UPDATE `item_template` SET `BuyPrice` = 108730, `SellPrice` = 21746, `DisenchantID` = 49 WHERE entry=13389;

/*  The Postmaster's Band  */
UPDATE `item_template` SET `BuyPrice` = 81837, `SellPrice` = 16367, `DisenchantID` = 49 WHERE entry=13390;

/*  The Postmaster's Treads  */
UPDATE `item_template` SET `BuyPrice` = 82127, `SellPrice` = 16425, `DisenchantID` = 49 WHERE entry=13391;

/*  The Postmaster's Seal  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=13392;

/*  Malown's Slam  */
UPDATE `item_template` SET `BuyPrice` = 311904, `SellPrice` = 62380, `DisenchantID` = 49 WHERE entry=13393;

/*  Skul's Cold Embrace  */
UPDATE `item_template` SET `BuyPrice` = 90881, `SellPrice` = 18176 WHERE entry=13394;

/*  Skul's Ghastly Touch  */
UPDATE `item_template` SET `BuyPrice` = 154265, `spellid_1` = 9414 WHERE entry=13396;

/*  Boots of the Shrieker  */
UPDATE `item_template` SET `BuyPrice` = 100142, `SellPrice` = 20028, `DisenchantID` = 49 WHERE entry=13398;

/*  Vambraces of the Sadist  */
UPDATE `item_template` SET `BuyPrice` = 46482, `SellPrice` = 9296 WHERE entry=13400;

/*  The Cruel Hand of Timmy  */
UPDATE `item_template` SET `BuyPrice` = 257201, `SellPrice` = 51440, `DisenchantID` = 49 WHERE entry=13401;

/*  Mask of the Unforgiven  */
UPDATE `item_template` SET `BuyPrice` = 79478, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 15465, `spellid_2` = 7597 WHERE entry=13404;

/*  Wailing Nightbane Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 65511, `SellPrice` = 13102 WHERE entry=13405;

/*  Soul Breaker  */
UPDATE `item_template` SET `spellppmrate_1` = 2.6 WHERE entry=13408;

/*  Tearfall Bracers  */
UPDATE `item_template` SET `BuyPrice` = 40596, `SellPrice` = 8119 WHERE entry=13409;

/*  Felstone Good Luck Charm  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=13473;

/*  Farmer Dalson's Shotgun  */
UPDATE `item_template` SET `BuyPrice` = 123624, `SellPrice` = 24724, `dmg_min1` = 34.0, `dmg_max1` = 64.0 WHERE entry=13474;

/*  Dalson Family Wedding Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=13475;

/*  Handcrafted Mastersmith Leggings  */
UPDATE `item_template` SET `BuyPrice` = 99454, `SellPrice` = 19890, `DisenchantID` = 49 WHERE entry=13498;

/*  Handcrafted Mastersmith Girdle  */
UPDATE `item_template` SET `BuyPrice` = 59937, `SellPrice` = 11987, `DisenchantID` = 49 WHERE entry=13502;

/*  Runeblade of Baron Rivendare  */
UPDATE `item_template` SET `BuyPrice` = 456725, `SellPrice` = 91345 WHERE entry=13505;

/*  Ramstein's Lightning Bolts  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13515;

/*  Skull of Burning Shadows  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13524;

/*  Darkbind Fingers  */
UPDATE `item_template` SET `BuyPrice` = 43492, `SellPrice` = 8698 WHERE entry=13525;

/*  Flamescarred Girdle  */
UPDATE `item_template` SET `BuyPrice` = 54485, `SellPrice` = 10897 WHERE entry=13526;

/*  Lavawalker Greaves  */
UPDATE `item_template` SET `BuyPrice` = 65746, `SellPrice` = 13149 WHERE entry=13527;

/*  Twilight Void Bracers  */
UPDATE `item_template` SET `BuyPrice` = 65993, `SellPrice` = 13198 WHERE entry=13528;

/*  Husk of Nerub'enkan  */
UPDATE `item_template` SET `BuyPrice` = 161517, `SellPrice` = 32303, `DisenchantID` = 49, `spellcooldown_1` = -1 WHERE entry=13529;

/*  Fangdrip Runners  */
UPDATE `item_template` SET `BuyPrice` = 62269, `SellPrice` = 12453 WHERE entry=13530;

/*  Crypt Stalker Leggings  */
UPDATE `item_template` SET `BuyPrice` = 105959, `SellPrice` = 21191 WHERE entry=13531;

/*  Darkspinner Claws  */
UPDATE `item_template` SET `BuyPrice` = 63810, `SellPrice` = 12762 WHERE entry=13532;

/*  Acid-etched Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 64052, `SellPrice` = 12810 WHERE entry=13533;

/*  Banshee Finger  */
UPDATE `item_template` SET `BuyPrice` = 188639, `SellPrice` = 37727, `DisenchantID` = 49, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=13534;

/*  Chillhide Bracers  */
UPDATE `item_template` SET `BuyPrice` = 49420, `SellPrice` = 9884 WHERE entry=13537;

/*  Windshrieker Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 96115 WHERE entry=13538;

/*  Banshee's Touch  */
UPDATE `item_template` SET `BuyPrice` = 42677, `SellPrice` = 8535 WHERE entry=13539;

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

/*  Test Hit Chance Chest  */
UPDATE `item_template` SET `spellid_1` = 18066, `spelltrigger_1` = 1 WHERE entry=13717;

/*  Ring of the Dawn  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=13812;

/*  Tapered Greatsword  */
UPDATE `item_template` SET `BuyPrice` = 93984, `SellPrice` = 18796 WHERE entry=13817;

/*  Jagged Axe  */
UPDATE `item_template` SET `BuyPrice` = 67157 WHERE entry=13818;

/*  Balanced War Axe  */
UPDATE `item_template` SET `BuyPrice` = 99404, `SellPrice` = 19880 WHERE entry=13819;

/*  Spiked Dagger  */
UPDATE `item_template` SET `BuyPrice` = 57212 WHERE entry=13822;

/*  Stout War Staff  */
UPDATE `item_template` SET `BuyPrice` = 59622, `SellPrice` = 11924 WHERE entry=13823;

/*  Recurve Long Bow  */
UPDATE `item_template` SET `dmg_min1` = 26.0, `dmg_max1` = 50.0 WHERE entry=13824;

/*  Primed Musket  */
UPDATE `item_template` SET `BuyPrice` = 50841, `dmg_min1` = 20.0, `dmg_max1` = 37.0 WHERE entry=13825;

/*  Runecloth Cloak  */
UPDATE `item_template` SET `BuyPrice` = 43705 WHERE entry=13860;

/*  Runecloth Gloves  */
UPDATE `item_template` SET `BuyPrice` = 33085 WHERE entry=13863;

/*  Runecloth Boots  */
UPDATE `item_template` SET `BuyPrice` = 47767 WHERE entry=13864;

/*  Runecloth Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 62850, `SellPrice` = 12570 WHERE entry=13867;

/*  Frostweave Robe  */
UPDATE `item_template` SET `BuyPrice` = 48328, `spellid_1` = 17890 WHERE entry=13868;

/*  Frostweave Tunic  */
UPDATE `item_template` SET `BuyPrice` = 48513, `spellid_1` = 17890 WHERE entry=13869;

/*  Frostweave Gloves  */
UPDATE `item_template` SET `BuyPrice` = 27358, `spellid_1` = 9308 WHERE entry=13870;

/*  Frostweave Pants  */
UPDATE `item_template` SET `BuyPrice` = 67183, `spellid_1` = 17891 WHERE entry=13871;

/*  White Traditional Hanbok  */
UPDATE `item_template` SET `BuyPrice` = 2976 WHERE entry=13897;

/*  Headmaster's Charge  */
UPDATE `item_template` SET `BuyPrice` = 435068, `SellPrice` = 87013 WHERE entry=13937;

/*  Bonecreeper Stylus  */
UPDATE `item_template` SET `BuyPrice` = 196521, `SellPrice` = 39304, `DisenchantID` = 49 WHERE entry=13938;

/*  Tombstone Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 134044, `SellPrice` = 26808, `DisenchantID` = 49 WHERE entry=13944;

/*  Detention Strap  */
UPDATE `item_template` SET `BuyPrice` = 82235, `SellPrice` = 16447, `DisenchantID` = 49 WHERE entry=13950;

/*  Vigorsteel Vambraces  */
UPDATE `item_template` SET `BuyPrice` = 55026, `SellPrice` = 11005, `DisenchantID` = 49, `spelltrigger_1` = 0 WHERE entry=13951;

/*  Iceblade Hacker  */
UPDATE `item_template` SET `BuyPrice` = 283415, `SellPrice` = 56683, `DisenchantID` = 49 WHERE entry=13952;

/*  Silent Fang  */
UPDATE `item_template` SET `BuyPrice` = 284402, `SellPrice` = 56880, `DisenchantID` = 49 WHERE entry=13953;

/*  Verdant Footpads  */
UPDATE `item_template` SET `BuyPrice` = 101934, `SellPrice` = 20386, `DisenchantID` = 49, `spellid_1` = 18030, `spellid_2` = 17988 WHERE entry=13954;

/*  Stoneform Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 81837, `SellPrice` = 16367, `DisenchantID` = 49 WHERE entry=13955;

/*  Clutch of Andros  */
UPDATE `item_template` SET `BuyPrice` = 54751, `SellPrice` = 10950, `DisenchantID` = 49 WHERE entry=13956;

/*  Gargoyle Slashers  */
UPDATE `item_template` SET `BuyPrice` = 62139, `SellPrice` = 12427, `DisenchantID` = 49 WHERE entry=13957;

/*  Wyrmthalak's Shackles  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13958;

/*  Omokk's Girth Restrainer  */
UPDATE `item_template` SET `BuyPrice` = 47712, `SellPrice` = 9542, `DisenchantID` = 49 WHERE entry=13959;

/*  Heart of the Fiend  */
UPDATE `item_template` SET `DisenchantID` = 49, `spelltrigger_1` = 0, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `spelltrigger_2` = 0 WHERE entry=13960;

/*  Halycon's Muzzle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13961;

/*  Vosh'gajin's Strand  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13962;

/*  Voone's Vice Grips  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13963;

/*  Witchblade  */
UPDATE `item_template` SET `BuyPrice` = 268060, `SellPrice` = 53612, `DisenchantID` = 49, `spelltrigger_2` = 0 WHERE entry=13964;

/*  Blackhand's Breadth  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13965;

/*  Mark of Tyranny  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13966;

/*  Windreaver Greaves  */
UPDATE `item_template` SET `BuyPrice` = 116692, `SellPrice` = 23338, `DisenchantID` = 49 WHERE entry=13967;

/*  Eye of the Beast  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=13968;

/*  Loomguard Armbraces  */
UPDATE `item_template` SET `BuyPrice` = 80097, `SellPrice` = 16019, `DisenchantID` = 49 WHERE entry=13969;

/*  Warblade of Caer Darrow  */
UPDATE `item_template` SET `BuyPrice` = 349130, `SellPrice` = 69826, `DisenchantID` = 49 WHERE entry=13982;

/*  Gravestone War Axe  */
UPDATE `item_template` SET `BuyPrice` = 333773, `SellPrice` = 66754, `DisenchantID` = 49 WHERE entry=13983;

/*  Darrowspike  */
UPDATE `item_template` SET `BuyPrice` = 289034, `SellPrice` = 57806, `DisenchantID` = 49 WHERE entry=13984;

/*  Crown of Caer Darrow  */
UPDATE `item_template` SET `BuyPrice` = 87349, `SellPrice` = 17469, `DisenchantID` = 49 WHERE entry=13986;

/*  Darrowshire Strongguard  */
UPDATE `item_template` SET `BuyPrice` = 183600, `SellPrice` = 36720, `DisenchantID` = 49 WHERE entry=14002;

/*  Barov Peasant Caller  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14022;

/*  Barov Peasant Caller  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14023;

/*  Frightalon  */
UPDATE `item_template` SET `BuyPrice` = 262111, `SellPrice` = 52422, `DisenchantID` = 49 WHERE entry=14024;

/*  Mystic's Belt  */
UPDATE `item_template` SET `BuyPrice` = 941, `stat_type2` = 3, `stat_value2` = 2, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=14025;

/*  Cindercloth Vest  */
UPDATE `item_template` SET `spellid_1` = 17866 WHERE entry=14042;

/*  Cindercloth Gloves  */
UPDATE `item_template` SET `spellid_1` = 9295 WHERE entry=14043;

/*  Cindercloth Cloak  */
UPDATE `item_template` SET `BuyPrice` = 47516, `spellid_1` = 9400 WHERE entry=14044;

/*  Cindercloth Pants  */
UPDATE `item_template` SET `BuyPrice` = 67404, `SellPrice` = 13480, `spellid_1` = 17867 WHERE entry=14045;

/*  Tyrande's Staff  */
UPDATE `item_template` SET `BuyPrice` = 100, `SellPrice` = 20, `dmg_min1` = 4.0, `dmg_max1` = 6.0, `MaxDurability` = 30 WHERE entry=14083;

/*  Beaded Gloves  */
UPDATE `item_template` SET `BuyPrice` = 151 WHERE entry=14089;

/*  Beaded Britches  */
UPDATE `item_template` SET `BuyPrice` = 597 WHERE entry=14090;

/*  Beaded Robe  */
UPDATE `item_template` SET `BuyPrice` = 599, `SellPrice` = 119 WHERE entry=14091;

/*  Beaded Cord  */
UPDATE `item_template` SET `BuyPrice` = 106 WHERE entry=14093;

/*  Beaded Wraps  */
UPDATE `item_template` SET `BuyPrice` = 606 WHERE entry=14094;

/*  Native Bands  */
UPDATE `item_template` SET `BuyPrice` = 182 WHERE entry=14095;

/*  Native Cloak  */
UPDATE `item_template` SET `BuyPrice` = 218 WHERE entry=14098;

/*  Native Sash  */
UPDATE `item_template` SET `BuyPrice` = 237 WHERE entry=14099;

/*  Native Handwraps  */
UPDATE `item_template` SET `BuyPrice` = 300 WHERE entry=14102;

/*  Brightcloth Cloak  */
UPDATE `item_template` SET `BuyPrice` = 48582, `spellid_1` = 7703 WHERE entry=14103;

/*  Brightcloth Pants  */
UPDATE `item_template` SET `BuyPrice` = 77420 WHERE entry=14104;

/*  Felcloth Robe  */
UPDATE `item_template` SET `BuyPrice` = 90268, `SellPrice` = 18053, `spellid_1` = 18015 WHERE entry=14106;

/*  Felcloth Pants  */
UPDATE `item_template` SET `BuyPrice` = 65704, `SellPrice` = 13140, `spellid_1` = 18008 WHERE entry=14107;

/*  Felcloth Boots  */
UPDATE `item_template` SET `BuyPrice` = 55560, `spellid_1` = 9295 WHERE entry=14108;

/*  Felcloth Hood  */
UPDATE `item_template` SET `spellid_1` = 18011 WHERE entry=14111;

/*  Felcloth Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 67549, `SellPrice` = 13509, `spellid_1` = 18008 WHERE entry=14112;

/*  Aboriginal Bands  */
UPDATE `item_template` SET `BuyPrice` = 351 WHERE entry=14115;

/*  Aboriginal Vest  */
UPDATE `item_template` SET `BuyPrice` = 2897 WHERE entry=14121;

/*  Ritual Bands  */
UPDATE `item_template` SET `BuyPrice` = 1098 WHERE entry=14122;

/*  Ritual Gloves  */
UPDATE `item_template` SET `BuyPrice` = 1463 WHERE entry=14124;

/*  Ritual Amice  */
UPDATE `item_template` SET `BuyPrice` = 1983 WHERE entry=14126;

/*  Ritual Shroud  */
UPDATE `item_template` SET `BuyPrice` = 4999, `SellPrice` = 999 WHERE entry=14127;

/*  Wizardweave Turban  */
UPDATE `item_template` SET `BuyPrice` = 63843, `SellPrice` = 12768 WHERE entry=14130;

/*  Wizardweave Leggings  */
UPDATE `item_template` SET `BuyPrice` = 62206 WHERE entry=14132;

/*  Robe of Winter Night  */
UPDATE `item_template` SET `spellid_1` = 18018, `spellid_2` = 17900 WHERE entry=14136;

/*  Mooncloth Leggings  */
UPDATE `item_template` SET `BuyPrice` = 90567 WHERE entry=14137;

/*  Mooncloth Vest  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=14138;

/*  Mooncloth Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 79204, `SellPrice` = 15840, `DisenchantID` = 49 WHERE entry=14139;

/*  Mooncloth Circlet  */
UPDATE `item_template` SET `BuyPrice` = 83469, `SellPrice` = 16693, `DisenchantID` = 49 WHERE entry=14140;

/*  Ghostweave Vest  */
UPDATE `item_template` SET `BuyPrice` = 64296 WHERE entry=14141;

/*  Ghostweave Pants  */
UPDATE `item_template` SET `BuyPrice` = 71871 WHERE entry=14144;

/*  Cursed Felblade  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 5161, `SellPrice` = 1032, `dmg_min1` = 16.0, `dmg_max1` = 31.0, `MaxDurability` = 55, `DisenchantID` = 22 WHERE entry=14145;

/*  Gloves of Spell Mastery  */
UPDATE `item_template` SET `armor` = 60, `BuyPrice` = 70421, `SellPrice` = 14084 WHERE entry=14146;

/*  Cavedweller Bracers  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 71, `BuyPrice` = 1559, `SellPrice` = 311, `MaxDurability` = 25, `stat_value1` = 1, `stat_value2` = 2, `DisenchantID` = 2 WHERE entry=14147;

/*  Crystalline Cuffs  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 14, `BuyPrice` = 1043, `SellPrice` = 208, `stat_value2` = 1, `DisenchantID` = 2, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=14148;

/*  Subterranean Cape  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 16, `BuyPrice` = 1538, `SellPrice` = 307, `stat_value1` = 2, `stat_value2` = 2, `DisenchantID` = 2 WHERE entry=14149;

/*  Robe of Evocation  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 32, `BuyPrice` = 2103, `SellPrice` = 420, `MaxDurability` = 55, `stat_value1` = 4, `stat_value2` = 3, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 2 WHERE entry=14150;

/*  Chanting Blade  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 5279, `SellPrice` = 1055, `dmg_min1` = 9.0, `dmg_max1` = 18.0, `MaxDurability` = 40, `stat_value1` = 1, `stat_value2` = 1, `DisenchantID` = 22 WHERE entry=14151;

/*  Robe of the Archmage  */
UPDATE `item_template` SET `armor` = 96, `BuyPrice` = 144077, `SellPrice` = 28815, `AllowableClass` = 31360 WHERE entry=14152;

/*  Robe of the Void  */
UPDATE `item_template` SET `armor` = 96, `BuyPrice` = 144603, `SellPrice` = 28920, `spelltrigger_3` = 0 WHERE entry=14153;

/*  Truefaith Vestments  */
UPDATE `item_template` SET `armor` = 96, `BuyPrice` = 145144, `SellPrice` = 29028 WHERE entry=14154;

/*  Pagan Mantle  */
UPDATE `item_template` SET `BuyPrice` = 2169, `SellPrice` = 433 WHERE entry=14157;

/*  Pagan Shoes  */
UPDATE `item_template` SET `BuyPrice` = 2852 WHERE entry=14159;

/*  Pagan Cape  */
UPDATE `item_template` SET `BuyPrice` = 1685 WHERE entry=14161;

/*  Pagan Mitts  */
UPDATE `item_template` SET `BuyPrice` = 2228 WHERE entry=14162;

/*  Pagan Britches  */
UPDATE `item_template` SET `BuyPrice` = 5208 WHERE entry=14165;

/*  Buccaneer's Cape  */
UPDATE `item_template` SET `BuyPrice` = 1793 WHERE entry=14167;

/*  Buccaneer's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 1379, `SellPrice` = 275 WHERE entry=14168;

/*  Aboriginal Shoulder Pads  */
UPDATE `item_template` SET `BuyPrice` = 1433 WHERE entry=14169;

/*  Buccaneer's Robes  */
UPDATE `item_template` SET `BuyPrice` = 4188 WHERE entry=14172;

/*  Buccaneer's Cord  */
UPDATE `item_template` SET `BuyPrice` = 1405 WHERE entry=14173;

/*  Buccaneer's Boots  */
UPDATE `item_template` SET `BuyPrice` = 1840 WHERE entry=14174;

/*  Buccaneer's Vest  */
UPDATE `item_template` SET `BuyPrice` = 4235 WHERE entry=14175;

/*  Watcher's Handwraps  */
UPDATE `item_template` SET `BuyPrice` = 3877 WHERE entry=14181;

/*  Watcher's Mantle  */
UPDATE `item_template` SET `BuyPrice` = 5836 WHERE entry=14182;

/*  Watcher's Leggings  */
UPDATE `item_template` SET `BuyPrice` = 8550 WHERE entry=14183;

/*  Raincaller Mantle  */
UPDATE `item_template` SET `BuyPrice` = 5897 WHERE entry=14186;

/*  Raincaller Cuffs  */
UPDATE `item_template` SET `BuyPrice` = 3587 WHERE entry=14187;

/*  Raincaller Vest  */
UPDATE `item_template` SET `BuyPrice` = 9660 WHERE entry=14190;

/*  Raincaller Robes  */
UPDATE `item_template` SET `BuyPrice` = 9732 WHERE entry=14192;

/*  Raincaller Pants  */
UPDATE `item_template` SET `BuyPrice` = 10031 WHERE entry=14193;

/*  Raincaller Cord  */
UPDATE `item_template` SET `BuyPrice` = 3781 WHERE entry=14194;

/*  Thistlefur Sandals  */
UPDATE `item_template` SET `BuyPrice` = 8365 WHERE entry=14196;

/*  Thistlefur Bands  */
UPDATE `item_template` SET `BuyPrice` = 4625 WHERE entry=14197;

/*  Thistlefur Mantle  */
UPDATE `item_template` SET `BuyPrice` = 10303 WHERE entry=14201;

/*  Thistlefur Jerkin  */
UPDATE `item_template` SET `BuyPrice` = 16681 WHERE entry=14202;

/*  Thistlefur Belt  */
UPDATE `item_template` SET `BuyPrice` = 5212 WHERE entry=14205;

/*  Vital Cape  */
UPDATE `item_template` SET `BuyPrice` = 8184, `SellPrice` = 1636 WHERE entry=14210;

/*  Vital Handwraps  */
UPDATE `item_template` SET `BuyPrice` = 6626 WHERE entry=14211;

/*  Vital Raiment  */
UPDATE `item_template` SET `BuyPrice` = 17768 WHERE entry=14213;

/*  Vital Boots  */
UPDATE `item_template` SET `BuyPrice` = 10048 WHERE entry=14214;

/*  Geomancer's Bracers  */
UPDATE `item_template` SET `BuyPrice` = 7554, `SellPrice` = 1510 WHERE entry=14221;

/*  Geomancer's Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 13494, `SellPrice` = 2698 WHERE entry=14223;

/*  Embersilk Coronet  */
UPDATE `item_template` SET `BuyPrice` = 17799, `SellPrice` = 3559 WHERE entry=14228;

/*  Embersilk Mitts  */
UPDATE `item_template` SET `BuyPrice` = 9524, `SellPrice` = 1904 WHERE entry=14231;

/*  Embersilk Robes  */
UPDATE `item_template` SET `BuyPrice` = 26200 WHERE entry=14234;

/*  Embersilk Boots  */
UPDATE `item_template` SET `BuyPrice` = 14546 WHERE entry=14236;

/*  Darkmist Armor  */
UPDATE `item_template` SET `BuyPrice` = 36030 WHERE entry=14237;

/*  Darkmist Bands  */
UPDATE `item_template` SET `BuyPrice` = 11473 WHERE entry=14240;

/*  Darkmist Handguards  */
UPDATE `item_template` SET `BuyPrice` = 11558 WHERE entry=14241;

/*  Darkmist Pants  */
UPDATE `item_template` SET `BuyPrice` = 27068 WHERE entry=14242;

/*  Darkmist Girdle  */
UPDATE `item_template` SET `BuyPrice` = 11733 WHERE entry=14245;

/*  Lunar Bindings  */
UPDATE `item_template` SET `BuyPrice` = 11864, `SellPrice` = 2372 WHERE entry=14248;

/*  Lunar Slippers  */
UPDATE `item_template` SET `BuyPrice` = 19364, `SellPrice` = 3872 WHERE entry=14250;

/*  Lunar Cloak  */
UPDATE `item_template` SET `BuyPrice` = 16661 WHERE entry=14251;

/*  Lunar Coronet  */
UPDATE `item_template` SET `BuyPrice` = 24571 WHERE entry=14252;

/*  Lunar Raiment  */
UPDATE `item_template` SET `BuyPrice` = 38493 WHERE entry=14254;

/*  Lunar Belt  */
UPDATE `item_template` SET `BuyPrice` = 13144, `SellPrice` = 2628 WHERE entry=14255;

/*  Bloodwoven Bracers  */
UPDATE `item_template` SET `BuyPrice` = 14503 WHERE entry=14260;

/*  Bloodwoven Mask  */
UPDATE `item_template` SET `BuyPrice` = 29936 WHERE entry=14263;

/*  Bloodwoven Pants  */
UPDATE `item_template` SET `BuyPrice` = 40066 WHERE entry=14264;

/*  Bloodwoven Wraps  */
UPDATE `item_template` SET `BuyPrice` = 49268 WHERE entry=14265;

/*  Bloodwoven Jerkin  */
UPDATE `item_template` SET `BuyPrice` = 49633 WHERE entry=14267;

/*  Gaea's Circlet  */
UPDATE `item_template` SET `BuyPrice` = 32995 WHERE entry=14271;

/*  Gaea's Handwraps  */
UPDATE `item_template` SET `BuyPrice` = 19104, `SellPrice` = 3820 WHERE entry=14272;

/*  Gaea's Amice  */
UPDATE `item_template` SET `BuyPrice` = 31874, `SellPrice` = 6374 WHERE entry=14273;

/*  Gaea's Belt  */
UPDATE `item_template` SET `BuyPrice` = 17991 WHERE entry=14276;

/*  Opulent Bracers  */
UPDATE `item_template` SET `BuyPrice` = 21031 WHERE entry=14279;

/*  Opulent Cape  */
UPDATE `item_template` SET `BuyPrice` = 29596 WHERE entry=14280;

/*  Opulent Crown  */
UPDATE `item_template` SET `BuyPrice` = 40890 WHERE entry=14281;

/*  Opulent Gloves  */
UPDATE `item_template` SET `BuyPrice` = 22760 WHERE entry=14282;

/*  Opulent Robes  */
UPDATE `item_template` SET `BuyPrice` = 65678 WHERE entry=14284;

/*  Opulent Belt  */
UPDATE `item_template` SET `BuyPrice` = 23103 WHERE entry=14286;

/*  Opulent Tunic  */
UPDATE `item_template` SET `BuyPrice` = 66414, `SellPrice` = 13282 WHERE entry=14287;

/*  Arachnidian Bracelets  */
UPDATE `item_template` SET `BuyPrice` = 24153 WHERE entry=14291;

/*  Arachnidian Circlet  */
UPDATE `item_template` SET `BuyPrice` = 49287 WHERE entry=14293;

/*  Arachnidian Legguards  */
UPDATE `item_template` SET `BuyPrice` = 66184, `SellPrice` = 13236 WHERE entry=14295;

/*  Arachnidian Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 37840 WHERE entry=14296;

/*  Bonecaster's Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 48144, `SellPrice` = 9628 WHERE entry=14298;

/*  Bonecaster's Boots  */
UPDATE `item_template` SET `BuyPrice` = 43013 WHERE entry=14299;

/*  Bonecaster's Bindings  */
UPDATE `item_template` SET `BuyPrice` = 27257 WHERE entry=14301;

/*  Bonecaster's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 32587 WHERE entry=14302;

/*  Bonecaster's Shroud  */
UPDATE `item_template` SET `BuyPrice` = 81045 WHERE entry=14303;

/*  Bonecaster's Belt  */
UPDATE `item_template` SET `BuyPrice` = 30973 WHERE entry=14304;

/*  Bonecaster's Sarong  */
UPDATE `item_template` SET `BuyPrice` = 71747 WHERE entry=14305;

/*  Bonecaster's Vest  */
UPDATE `item_template` SET `BuyPrice` = 84154, `SellPrice` = 16830 WHERE entry=14306;

/*  Bonecaster's Crown  */
UPDATE `item_template` SET `BuyPrice` = 60323 WHERE entry=14307;

/*  Celestial Tunic  */
UPDATE `item_template` SET `BuyPrice` = 88997, `SellPrice` = 17799 WHERE entry=14308;

/*  Celestial Belt  */
UPDATE `item_template` SET `BuyPrice` = 34334, `SellPrice` = 6866 WHERE entry=14309;

/*  Celestial Slippers  */
UPDATE `item_template` SET `BuyPrice` = 58076 WHERE entry=14310;

/*  Celestial Bindings  */
UPDATE `item_template` SET `BuyPrice` = 32621 WHERE entry=14311;

/*  Celestial Crown  */
UPDATE `item_template` SET `BuyPrice` = 67708, `SellPrice` = 13541 WHERE entry=14312;

/*  Celestial Cape  */
UPDATE `item_template` SET `BuyPrice` = 46493 WHERE entry=14313;

/*  Celestial Kilt  */
UPDATE `item_template` SET `BuyPrice` = 82752 WHERE entry=14315;

/*  Celestial Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 56355 WHERE entry=14316;

/*  Celestial Silk Robes  */
UPDATE `item_template` SET `BuyPrice` = 83165, `SellPrice` = 16633 WHERE entry=14317;

/*  Resplendent Tunic  */
UPDATE `item_template` SET `BuyPrice` = 92044, `SellPrice` = 18408 WHERE entry=14318;

/*  Resplendent Circlet  */
UPDATE `item_template` SET `BuyPrice` = 68563, `SellPrice` = 13712 WHERE entry=14322;

/*  Resplendent Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 41612 WHERE entry=14323;

/*  Resplendent Epaulets  */
UPDATE `item_template` SET `BuyPrice` = 66023, `SellPrice` = 13204 WHERE entry=14325;

/*  Resplendent Robes  */
UPDATE `item_template` SET `BuyPrice` = 97399, `SellPrice` = 19479 WHERE entry=14326;

/*  Resplendent Belt  */
UPDATE `item_template` SET `BuyPrice` = 38296 WHERE entry=14327;

/*  Eternal Chestguard  */
UPDATE `item_template` SET `BuyPrice` = 108167, `SellPrice` = 21633 WHERE entry=14328;

/*  Eternal Boots  */
UPDATE `item_template` SET `BuyPrice` = 70332, `SellPrice` = 14066 WHERE entry=14329;

/*  Eternal Bindings  */
UPDATE `item_template` SET `BuyPrice` = 44812, `SellPrice` = 8962 WHERE entry=14330;

/*  Eternal Cloak  */
UPDATE `item_template` SET `BuyPrice` = 58273 WHERE entry=14331;

/*  Eternal Crown  */
UPDATE `item_template` SET `BuyPrice` = 78373, `SellPrice` = 15674 WHERE entry=14332;

/*  Eternal Gloves  */
UPDATE `item_template` SET `BuyPrice` = 49937, `SellPrice` = 9987 WHERE entry=14333;

/*  Eternal Sarong  */
UPDATE `item_template` SET `BuyPrice` = 100221, `SellPrice` = 20044 WHERE entry=14334;

/*  Eternal Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 75432, `SellPrice` = 15086 WHERE entry=14335;

/*  Eternal Wraps  */
UPDATE `item_template` SET `BuyPrice` = 100686, `SellPrice` = 20137 WHERE entry=14336;

/*  Eternal Cord  */
UPDATE `item_template` SET `BuyPrice` = 42731, `SellPrice` = 8546 WHERE entry=14337;

/*  Freezing Lich Robes  */
UPDATE `item_template` SET `BuyPrice` = 108891, `SellPrice` = 21778, `DisenchantID` = 49, `spellid_1` = 17902 WHERE entry=14340;

/*  Mystic's Slippers  */
UPDATE `item_template` SET `BuyPrice` = 1624, `SellPrice` = 324 WHERE entry=14364;

/*  Mystic's Bracelets  */
UPDATE `item_template` SET `BuyPrice` = 948 WHERE entry=14366;

/*  Mystic's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 1259, `SellPrice` = 251 WHERE entry=14367;

/*  Mystic's Wrap  */
UPDATE `item_template` SET `BuyPrice` = 4048, `stat_type1` = 3 WHERE entry=14369;

/*  Mystic's Woolies  */
UPDATE `item_template` SET `BuyPrice` = 2364, `SellPrice` = 472 WHERE entry=14370;

/*  Mystic's Robe  */
UPDATE `item_template` SET `BuyPrice` = 4079, `SellPrice` = 815, `stat_type1` = 3, `stat_value1` = 3, `stat_type2` = 5, `stat_value2` = 7, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=14371;

/*  Sanguine Belt  */
UPDATE `item_template` SET `BuyPrice` = 2624, `SellPrice` = 524 WHERE entry=14373;

/*  Sanguine Sandals  */
UPDATE `item_template` SET `BuyPrice` = 3497 WHERE entry=14374;

/*  Sanguine Cape  */
UPDATE `item_template` SET `BuyPrice` = 2759, `SellPrice` = 551 WHERE entry=14376;

/*  Sanguine Trousers  */
UPDATE `item_template` SET `BuyPrice` = 8075, `stat_type2` = 4, `stat_value2` = 4, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=14379;

/*  Durability Belt  */
UPDATE `item_template` SET `armor` = 2, `BuyPrice` = 2, `MaxDurability` = 12 WHERE entry=14390;

/*  Durability Staff  */
UPDATE `item_template` SET `dmg_min1` = 2.0, `dmg_max1` = 3.0, `MaxDurability` = 20 WHERE entry=14392;

/*  Resilient Tunic  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_value1` = 4, `stat_type2` = 5, `stat_value2` = 11, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=14398;

/*  Resilient Boots  */
UPDATE `item_template` SET `stat_type2` = 3, `stat_value2` = 2, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=14399;

/*  Resilient Cape  */
UPDATE `item_template` SET `BuyPrice` = 6078 WHERE entry=14400;

/*  Resilient Cap  */
UPDATE `item_template` SET `stat_type3` = 3, `stat_value3` = 2, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=14401;

/*  Resilient Bands  */
UPDATE `item_template` SET `BuyPrice` = 4189, `SellPrice` = 837 WHERE entry=14402;

/*  Resilient Handgrips  */
UPDATE `item_template` SET `BuyPrice` = 5088, `stat_type2` = 3, `stat_value2` = 3, `stat_type3` = 7, `stat_value3` = 4, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=14403;

/*  Resilient Leggings  */
UPDATE `item_template` SET `BuyPrice` = 12359, `SellPrice` = 2471, `stat_type2` = 3, `stat_value2` = 5, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=14404;

/*  Resilient Robe  */
UPDATE `item_template` SET `BuyPrice` = 12402, `stat_type1` = 3, `stat_value1` = 4, `stat_type2` = 5, `stat_value2` = 11, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=14405;

/*  Resilient Cord  */
UPDATE `item_template` SET `stat_type3` = 4, `stat_value3` = 1, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=14406;

/*  Stonecloth Vest  */
UPDATE `item_template` SET `BuyPrice` = 21331, `stat_type2` = 4, `stat_value2` = 2, `stat_type3` = 6, `stat_value3` = 15, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=14407;

/*  Stonecloth Cape  */
UPDATE `item_template` SET `BuyPrice` = 8535 WHERE entry=14409;

/*  Stonecloth Circlet  */
UPDATE `item_template` SET `BuyPrice` = 13549, `SellPrice` = 2709, `stat_type2` = 4, `stat_value2` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=14410;

/*  Stonecloth Gloves  */
UPDATE `item_template` SET `BuyPrice` = 6938 WHERE entry=14411;

/*  Stonecloth Robe  */
UPDATE `item_template` SET `BuyPrice` = 19736, `stat_type2` = 4, `stat_value2` = 2, `stat_type3` = 6, `stat_value3` = 15, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=14413;

/*  Stonecloth Belt  */
UPDATE `item_template` SET `stat_type3` = 3, `stat_value3` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=14414;

/*  Silksand Tunic  */
UPDATE `item_template` SET `BuyPrice` = 29440 WHERE entry=14417;

/*  Silksand Bracers  */
UPDATE `item_template` SET `BuyPrice` = 9596 WHERE entry=14419;

/*  Silksand Circlet  */
UPDATE `item_template` SET `BuyPrice` = 19725 WHERE entry=14421;

/*  Silksand Gloves  */
UPDATE `item_template` SET `BuyPrice` = 11314, `SellPrice` = 2262 WHERE entry=14422;

/*  Silksand Shoulder Pads  */
UPDATE `item_template` SET `BuyPrice` = 17033, `stat_type3` = 4, `stat_value3` = 1, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=14423;

/*  Silksand Wraps  */
UPDATE `item_template` SET `BuyPrice` = 31118 WHERE entry=14425;

/*  Silksand Girdle  */
UPDATE `item_template` SET `BuyPrice` = 10626 WHERE entry=14426;

/*  Windchaser Footpads  */
UPDATE `item_template` SET `stat_type2` = 3, `stat_value2` = 3, `stat_type3` = 6, `stat_value3` = 12, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=14428;

/*  Windchaser Cuffs  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_value1` = 2, `stat_type2` = 5, `stat_value2` = 9, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=14429;

/*  Windchaser Cloak  */
UPDATE `item_template` SET `BuyPrice` = 18432 WHERE entry=14430;

/*  Windchaser Handguards  */
UPDATE `item_template` SET `BuyPrice` = 14388, `stat_type2` = 3, `stat_value2` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=14431;

/*  Windchaser Amice  */
UPDATE `item_template` SET `BuyPrice` = 23397, `stat_type2` = 3, `stat_value2` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=14432;

/*  Windchaser Woolies  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 5, `stat_type3` = 5, `stat_value3` = 12, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=14433;

/*  Windchaser Cinch  */
UPDATE `item_template` SET `BuyPrice` = 13893 WHERE entry=14435;

/*  Windchaser Coronet  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_value1` = 4, `stat_type3` = 6, `stat_value3` = 7, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=14436;

/*  Venomshroud Boots  */
UPDATE `item_template` SET `BuyPrice` = 30961 WHERE entry=14438;

/*  Venomshroud Mask  */
UPDATE `item_template` SET `BuyPrice` = 35834, `SellPrice` = 7166 WHERE entry=14441;

/*  Venomshroud Belt  */
UPDATE `item_template` SET `BuyPrice` = 21241 WHERE entry=14446;

/*  Highborne Footpads  */
UPDATE `item_template` SET `BuyPrice` = 44008, `stat_type2` = 3, `stat_value2` = 4, `stat_type3` = 7, `stat_value3` = 9, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=14447;

/*  Highborne Crown  */
UPDATE `item_template` SET `BuyPrice` = 50628, `stat_type3` = 4, `stat_value3` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=14449;

/*  Highborne Gloves  */
UPDATE `item_template` SET `BuyPrice` = 27684, `SellPrice` = 5536, `stat_type3` = 3, `stat_value3` = 5, `stat_type4` = 4, `stat_value4` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 4 WHERE entry=14451;

/*  Highborne Robes  */
UPDATE `item_template` SET `BuyPrice` = 78386 WHERE entry=14453;

/*  Highborne Cord  */
UPDATE `item_template` SET `BuyPrice` = 27993, `stat_type3` = 3, `stat_value3` = 5, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=14454;

/*  Highborne Padded Armor  */
UPDATE `item_template` SET `BuyPrice` = 78962 WHERE entry=14455;

/*  Elunarian Vest  */
UPDATE `item_template` SET `BuyPrice` = 101151, `SellPrice` = 20230, `stat_type3` = 4, `stat_value3` = 5, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=14456;

/*  Elunarian Cuffs  */
UPDATE `item_template` SET `BuyPrice` = 37878 WHERE entry=14457;

/*  Elunarian Diadem  */
UPDATE `item_template` SET `BuyPrice` = 73309, `SellPrice` = 14661 WHERE entry=14460;

/*  Elunarian Handgrips  */
UPDATE `item_template` SET `BuyPrice` = 46714, `SellPrice` = 9342 WHERE entry=14461;

/*  Elunarian Sarong  */
UPDATE `item_template` SET `BuyPrice` = 93758, `SellPrice` = 18751 WHERE entry=14462;

/*  Elunarian Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 70572, `SellPrice` = 14114 WHERE entry=14463;

/*  Elunarian Silk Robes  */
UPDATE `item_template` SET `BuyPrice` = 104114, `SellPrice` = 20822, `stat_type3` = 4, `stat_value3` = 5, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=14464;

/*  Elunarian Belt  */
UPDATE `item_template` SET `BuyPrice` = 42980, `stat_type3` = 4, `stat_value3` = 6, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=14465;

/*  Bonechill Hammer  */
UPDATE `item_template` SET `BuyPrice` = 266113, `SellPrice` = 53222, `DisenchantID` = 49 WHERE entry=14487;

/*  Frostbite Girdle  */
UPDATE `item_template` SET `BuyPrice` = 65259, `SellPrice` = 13051, `DisenchantID` = 49 WHERE entry=14502;

/*  Death's Clutch  */
UPDATE `item_template` SET `BuyPrice` = 98260, `SellPrice` = 19652, `DisenchantID` = 49 WHERE entry=14503;

/*  Maelstrom Leggings  */
UPDATE `item_template` SET `BuyPrice` = 156591, `SellPrice` = 31318, `DisenchantID` = 49 WHERE entry=14522;

/*  Boneclenched Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 52805, `SellPrice` = 10561, `DisenchantID` = 49 WHERE entry=14525;

/*  Rattlecage Buckler  */
UPDATE `item_template` SET `BuyPrice` = 170909, `SellPrice` = 34181, `DisenchantID` = 49, `spellcooldown_1` = -1 WHERE entry=14528;

/*  Bonebrace Hauberk  */
UPDATE `item_template` SET `BuyPrice` = 161356, `SellPrice` = 32271, `DisenchantID` = 49 WHERE entry=14536;

/*  Corpselight Greaves  */
UPDATE `item_template` SET `BuyPrice` = 85008, `SellPrice` = 17001, `DisenchantID` = 49 WHERE entry=14537;

/*  Deadwalker Mantle  */
UPDATE `item_template` SET `BuyPrice` = 85312, `SellPrice` = 17062, `DisenchantID` = 49, `spellid_1` = 9413 WHERE entry=14538;

/*  Bone Ring Helm  */
UPDATE `item_template` SET `BuyPrice` = 107021, `SellPrice` = 21404, `stat_type1` = 4, `stat_value1` = 6, `stat_type3` = 6, `stat_type4` = 5, `DisenchantID` = 49, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=14539;

/*  Barovian Family Sword  */
UPDATE `item_template` SET `BuyPrice` = 342133, `SellPrice` = 68426, `DisenchantID` = 49 WHERE entry=14541;

/*  Darkshade Gloves  */
UPDATE `item_template` SET `BuyPrice` = 52394, `SellPrice` = 10478, `DisenchantID` = 49 WHERE entry=14543;

/*  Ghostloom Leggings  */
UPDATE `item_template` SET `BuyPrice` = 131987, `SellPrice` = 26397, `stat_type2` = 6, `stat_value2` = 13, `DisenchantID` = 49 WHERE entry=14545;

/*  Royal Cap Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 123964, `SellPrice` = 24792, `DisenchantID` = 49 WHERE entry=14548;

/*  Boots of Avoidance  */
UPDATE `item_template` SET `armor` = 360, `BuyPrice` = 39038, `SellPrice` = 7807 WHERE entry=14549;

/*  Bladebane Armguards  */
UPDATE `item_template` SET `armor` = 69, `BuyPrice` = 44011, `MaxDurability` = 40, `stat_value2` = 10, `stat_type3` = 6, `stat_type4` = 4, `stat_value4` = 6, `StatsCount` = 4 WHERE entry=14550;

/*  Edgemaster's Handguards  */
UPDATE `item_template` SET `armor` = 201, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 15874, `spellid_2` = 7578, `spellid_3` = 7527 WHERE entry=14551;

/*  Stockade Pauldrons  */
UPDATE `item_template` SET `armor` = 472, `BuyPrice` = 76890, `SellPrice` = 15378 WHERE entry=14552;

/*  Sash of Mercy  */
UPDATE `item_template` SET `armor` = 105, `BuyPrice` = 88667, `SellPrice` = 17733 WHERE entry=14553;

/*  Cloudkeeper Legplates  */
UPDATE `item_template` SET `armor` = 617, `BuyPrice` = 149502, `SellPrice` = 29900 WHERE entry=14554;

/*  Alcor's Sunrazor  */
UPDATE `item_template` SET `BuyPrice` = 393864, `SellPrice` = 78772, `spellppmrate_1` = 1.3 WHERE entry=14555;

/*  Prospector's Sash  */
UPDATE `item_template` SET `BuyPrice` = 1398 WHERE entry=14559;

/*  Prospector's Boots  */
UPDATE `item_template` SET `BuyPrice` = 2421 WHERE entry=14560;

/*  Prospector's Mitts  */
UPDATE `item_template` SET `BuyPrice` = 1523 WHERE entry=14564;

/*  Prospector's Woolies  */
UPDATE `item_template` SET `BuyPrice` = 4045 WHERE entry=14565;

/*  Bristlebark Bindings  */
UPDATE `item_template` SET `BuyPrice` = 2360 WHERE entry=14569;

/*  Bristlebark Blouse  */
UPDATE `item_template` SET `BuyPrice` = 9350 WHERE entry=14570;

/*  Bristlebark Gloves  */
UPDATE `item_template` SET `BuyPrice` = 3047 WHERE entry=14572;

/*  Ebon Hilt of Marduk  */
UPDATE `item_template` SET `BuyPrice` = 243853, `spellppmrate_1` = 1.8 WHERE entry=14576;

/*  Skullsmoke Pants  */
UPDATE `item_template` SET `BuyPrice` = 107926, `SellPrice` = 21585, `DisenchantID` = 49 WHERE entry=14577;

/*  Dokebi Cord  */
UPDATE `item_template` SET `BuyPrice` = 4916 WHERE entry=14578;

/*  Dokebi Bracers  */
UPDATE `item_template` SET `BuyPrice` = 4093 WHERE entry=14580;

/*  Dokebi Chestguard  */
UPDATE `item_template` SET `BuyPrice` = 14562 WHERE entry=14581;

/*  Dokebi Cape  */
UPDATE `item_template` SET `BuyPrice` = 5444, `SellPrice` = 1088 WHERE entry=14582;

/*  Dokebi Gloves  */
UPDATE `item_template` SET `BuyPrice` = 6668 WHERE entry=14583;

/*  Dokebi Leggings  */
UPDATE `item_template` SET `BuyPrice` = 13438 WHERE entry=14585;

/*  Dokebi Mantle  */
UPDATE `item_template` SET `BuyPrice` = 10153 WHERE entry=14587;

/*  Hawkeye's Shoes  */
UPDATE `item_template` SET `BuyPrice` = 16473 WHERE entry=14589;

/*  Hawkeye's Helm  */
UPDATE `item_template` SET `BuyPrice` = 20903 WHERE entry=14591;

/*  Hawkeye's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 11182 WHERE entry=14594;

/*  Hawkeye's Breeches  */
UPDATE `item_template` SET `BuyPrice` = 22502 WHERE entry=14595;

/*  Hawkeye's Epaulets  */
UPDATE `item_template` SET `BuyPrice` = 16942 WHERE entry=14596;

/*  Warden's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 14975 WHERE entry=14602;

/*  Warden's Mantle  */
UPDATE `item_template` SET `BuyPrice` = 21916 WHERE entry=14603;

/*  Warden's Wizard Hat  */
UPDATE `item_template` SET `BuyPrice` = 29930 WHERE entry=14604;

/*  Hawkeye's Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14607;

/*  Dokebi Buckler  */
UPDATE `item_template` SET `BuyPrice` = 15810, `spellcooldown_1` = -1 WHERE entry=14608;

/*  Bloodmail Hauberk  */
UPDATE `item_template` SET `BuyPrice` = 162547, `SellPrice` = 32509, `DisenchantID` = 49 WHERE entry=14611;

/*  Bloodmail Legguards  */
UPDATE `item_template` SET `BuyPrice` = 163111, `SellPrice` = 32622, `DisenchantID` = 49, `spelltrigger_1` = 0, `spelltrigger_2` = 0 WHERE entry=14612;

/*  Bloodmail Belt  */
UPDATE `item_template` SET `BuyPrice` = 82135, `SellPrice` = 16427, `DisenchantID` = 49, `spelltrigger_1` = 0 WHERE entry=14614;

/*  Bloodmail Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 74583, `SellPrice` = 14916, `DisenchantID` = 49 WHERE entry=14615;

/*  Bloodmail Boots  */
UPDATE `item_template` SET `BuyPrice` = 112796, `SellPrice` = 22559, `DisenchantID` = 49 WHERE entry=14616;

/*  Deathbone Girdle  */
UPDATE `item_template` SET `BuyPrice` = 50677, `SellPrice` = 10135, `DisenchantID` = 49 WHERE entry=14620;

/*  Deathbone Sabatons  */
UPDATE `item_template` SET `BuyPrice` = 76306, `SellPrice` = 15261, `DisenchantID` = 49 WHERE entry=14621;

/*  Deathbone Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 51064, `SellPrice` = 10212, `DisenchantID` = 49 WHERE entry=14622;

/*  Deathbone Legguards  */
UPDATE `item_template` SET `BuyPrice` = 102515, `SellPrice` = 20503, `DisenchantID` = 49 WHERE entry=14623;

/*  Deathbone Chestplate  */
UPDATE `item_template` SET `BuyPrice` = 102891, `SellPrice` = 20578, `DisenchantID` = 49 WHERE entry=14624;

/*  Necropile Robe  */
UPDATE `item_template` SET `BuyPrice` = 103664, `SellPrice` = 20732, `DisenchantID` = 49 WHERE entry=14626;

/*  Necropile Cuffs  */
UPDATE `item_template` SET `BuyPrice` = 53790, `SellPrice` = 10758, `DisenchantID` = 49 WHERE entry=14629;

/*  Necropile Boots  */
UPDATE `item_template` SET `BuyPrice` = 81258, `SellPrice` = 16251, `DisenchantID` = 49 WHERE entry=14631;

/*  Necropile Leggings  */
UPDATE `item_template` SET `BuyPrice` = 108730, `SellPrice` = 21746, `DisenchantID` = 49 WHERE entry=14632;

/*  Necropile Mantle  */
UPDATE `item_template` SET `BuyPrice` = 81837, `SellPrice` = 16367, `DisenchantID` = 49 WHERE entry=14633;

/*  Cadaverous Belt  */
UPDATE `item_template` SET `BuyPrice` = 62381, `SellPrice` = 12476, `DisenchantID` = 49 WHERE entry=14636;

/*  Cadaverous Armor  */
UPDATE `item_template` SET `BuyPrice` = 125244, `SellPrice` = 25048, `DisenchantID` = 49 WHERE entry=14637;

/*  Cadaverous Leggings  */
UPDATE `item_template` SET `BuyPrice` = 125728, `SellPrice` = 25145, `DisenchantID` = 49 WHERE entry=14638;

/*  Cadaverous Gloves  */
UPDATE `item_template` SET `BuyPrice` = 63340, `SellPrice` = 12668, `DisenchantID` = 49 WHERE entry=14640;

/*  Cadaverous Walkers  */
UPDATE `item_template` SET `BuyPrice` = 95373, `SellPrice` = 19074, `DisenchantID` = 49 WHERE entry=14641;

/*  Scorpashi Sash  */
UPDATE `item_template` SET `BuyPrice` = 21079, `SellPrice` = 4215 WHERE entry=14652;

/*  Scorpashi Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 51962 WHERE entry=14655;

/*  Keeper's Hooves  */
UPDATE `item_template` SET `BuyPrice` = 47065 WHERE entry=14662;

/*  Keeper's Bindings  */
UPDATE `item_template` SET `BuyPrice` = 25707 WHERE entry=14663;

/*  Keeper's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 31072 WHERE entry=14665;

/*  Keeper's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 31836 WHERE entry=14666;

/*  Keeper's Wreath  */
UPDATE `item_template` SET `BuyPrice` = 53852 WHERE entry=14667;

/*  Keeper's Woolies  */
UPDATE `item_template` SET `BuyPrice` = 67984, `SellPrice` = 13596 WHERE entry=14668;

/*  Keeper's Mantle  */
UPDATE `item_template` SET `BuyPrice` = 48270 WHERE entry=14669;

/*  Pridelord Gloves  */
UPDATE `item_template` SET `BuyPrice` = 40910 WHERE entry=14675;

/*  Pridelord Pants  */
UPDATE `item_template` SET `BuyPrice` = 92621 WHERE entry=14677;

/*  Indomitable Vest  */
UPDATE `item_template` SET `BuyPrice` = 125507, `SellPrice` = 25101 WHERE entry=14680;

/*  Indomitable Boots  */
UPDATE `item_template` SET `BuyPrice` = 85696, `SellPrice` = 17139 WHERE entry=14681;

/*  Indomitable Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 57970, `SellPrice` = 11594 WHERE entry=14685;

/*  Indomitable Headdress  */
UPDATE `item_template` SET `BuyPrice` = 91636, `SellPrice` = 18327 WHERE entry=14686;

/*  Indomitable Leggings  */
UPDATE `item_template` SET `BuyPrice` = 116787, `SellPrice` = 23357 WHERE entry=14687;

/*  Indomitable Epaulets  */
UPDATE `item_template` SET `BuyPrice` = 83712, `SellPrice` = 16742 WHERE entry=14688;

/*  War Paint Gloves  */
UPDATE `item_template` SET `BuyPrice` = 1685 WHERE entry=14726;

/*  War Paint Legguards  */
UPDATE `item_template` SET `BuyPrice` = 3890 WHERE entry=14727;

/*  War Paint Shoulder Pads  */
UPDATE `item_template` SET `BuyPrice` = 2428 WHERE entry=14728;

/*  War Paint Shield  */
UPDATE `item_template` SET `BuyPrice` = 4350, `spellcooldown_1` = -1 WHERE entry=14729;

/*  Hulking Bands  */
UPDATE `item_template` SET `BuyPrice` = 2916 WHERE entry=14743;

/*  Hulking Chestguard  */
UPDATE `item_template` SET `BuyPrice` = 11551 WHERE entry=14744;

/*  Hulking Belt  */
UPDATE `item_template` SET `BuyPrice` = 2947 WHERE entry=14746;

/*  Hulking Leggings  */
UPDATE `item_template` SET `BuyPrice` = 7752 WHERE entry=14748;

/*  Slayer's Cuffs  */
UPDATE `item_template` SET `BuyPrice` = 5340 WHERE entry=14750;

/*  Slayer's Cape  */
UPDATE `item_template` SET `BuyPrice` = 4892 WHERE entry=14752;

/*  Slayer's Skullcap  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=14753;

/*  Slayer's Sash  */
UPDATE `item_template` SET `BuyPrice` = 5590 WHERE entry=14755;

/*  Slayer's Pants  */
UPDATE `item_template` SET `BuyPrice` = 16491 WHERE entry=14757;

/*  Enduring Bracers  */
UPDATE `item_template` SET `BuyPrice` = 10049, `SellPrice` = 2009 WHERE entry=14759;

/*  Enduring Belt  */
UPDATE `item_template` SET `BuyPrice` = 10122 WHERE entry=14761;

/*  Enduring Circlet  */
UPDATE `item_template` SET `BuyPrice` = 22139, `SellPrice` = 4427 WHERE entry=14765;

/*  Enduring Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 22393 WHERE entry=14767;

/*  Ravager's Cord  */
UPDATE `item_template` SET `BuyPrice` = 15263 WHERE entry=14773;

/*  Ravager's Woolies  */
UPDATE `item_template` SET `BuyPrice` = 41836 WHERE entry=14775;

/*  Ravager's Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14777;

/*  Khan's Chestpiece  */
UPDATE `item_template` SET `BuyPrice` = 66738 WHERE entry=14779;

/*  Khan's Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14780;

/*  Khan's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 25023 WHERE entry=14782;

/*  Khan's Mantle  */
UPDATE `item_template` SET `BuyPrice` = 41618 WHERE entry=14787;

/*  Protector Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14790;

/*  Protector Cape  */
UPDATE `item_template` SET `BuyPrice` = 30282 WHERE entry=14791;

/*  Protector Waistband  */
UPDATE `item_template` SET `BuyPrice` = 34926 WHERE entry=14793;

/*  Protector Ankleguards  */
UPDATE `item_template` SET `BuyPrice` = 52818 WHERE entry=14794;

/*  Protector Legguards  */
UPDATE `item_template` SET `BuyPrice` = 84917 WHERE entry=14796;

/*  Bloodlust Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 120185 WHERE entry=14798;

/*  Bloodlust Boots  */
UPDATE `item_template` SET `BuyPrice` = 86542 WHERE entry=14799;

/*  Bloodlust Buckler  */
UPDATE `item_template` SET `BuyPrice` = 129132, `spellcooldown_1` = -1 WHERE entry=14800;

/*  Bloodlust Cape  */
UPDATE `item_template` SET `BuyPrice` = 40782 WHERE entry=14801;

/*  Bloodlust Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 48747 WHERE entry=14802;

/*  Bloodlust Bracelets  */
UPDATE `item_template` SET `BuyPrice` = 41058 WHERE entry=14807;

/*  Warstrike Sabatons  */
UPDATE `item_template` SET `BuyPrice` = 101382, `SellPrice` = 20276 WHERE entry=14809;

/*  Warstrike Armsplints  */
UPDATE `item_template` SET `BuyPrice` = 58345 WHERE entry=14810;

/*  Warstrike Chestguard  */
UPDATE `item_template` SET `BuyPrice` = 149491, `SellPrice` = 29898 WHERE entry=14811;

/*  Warstrike Buckler  */
UPDATE `item_template` SET `BuyPrice` = 160037, `SellPrice` = 32007, `spellcooldown_1` = -1 WHERE entry=14812;

/*  Warstrike Helmet  */
UPDATE `item_template` SET `BuyPrice` = 107967, `SellPrice` = 21593 WHERE entry=14814;

/*  Warstrike Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 68803, `SellPrice` = 13760 WHERE entry=14815;

/*  Warstrike Legguards  */
UPDATE `item_template` SET `BuyPrice` = 138101, `SellPrice` = 27620 WHERE entry=14816;

/*  Warstrike Shoulder Pads  */
UPDATE `item_template` SET `BuyPrice` = 104419, `SellPrice` = 20883 WHERE entry=14817;

/*  Symbolic Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 26452, `SellPrice` = 5290 WHERE entry=14821;

/*  Symbolic Crest  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14825;

/*  Symbolic Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 11557, `SellPrice` = 2311 WHERE entry=14826;

/*  Symbolic Belt  */
UPDATE `item_template` SET `BuyPrice` = 11600, `SellPrice` = 2320 WHERE entry=14827;

/*  Symbolic Greaves  */
UPDATE `item_template` SET `BuyPrice` = 18864, `SellPrice` = 3772 WHERE entry=14828;

/*  Symbolic Legplates  */
UPDATE `item_template` SET `BuyPrice` = 25249, `SellPrice` = 5049 WHERE entry=14829;

/*  Symbolic Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 19007, `SellPrice` = 3801 WHERE entry=14830;

/*  Symbolic Crown  */
UPDATE `item_template` SET `BuyPrice` = 20603, `SellPrice` = 4120 WHERE entry=14831;

/*  Symbolic Vambraces  */
UPDATE `item_template` SET `BuyPrice` = 11819, `SellPrice` = 2363 WHERE entry=14832;

/*  Tyrant's Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 14944, `SellPrice` = 2988 WHERE entry=14833;

/*  Tyrant's Armguards  */
UPDATE `item_template` SET `BuyPrice` = 13889, `SellPrice` = 2777 WHERE entry=14834;

/*  Tyrant's Chestpiece  */
UPDATE `item_template` SET `BuyPrice` = 40964, `SellPrice` = 8192 WHERE entry=14835;

/*  Tyrant's Belt  */
UPDATE `item_template` SET `BuyPrice` = 14460, `SellPrice` = 2892 WHERE entry=14838;

/*  Tyrant's Greaves  */
UPDATE `item_template` SET `BuyPrice` = 23509, `SellPrice` = 4701 WHERE entry=14839;

/*  Tyrant's Legplates  */
UPDATE `item_template` SET `BuyPrice` = 39627, `SellPrice` = 7925 WHERE entry=14840;

/*  Tyrant's Epaulets  */
UPDATE `item_template` SET `BuyPrice` = 21423, `SellPrice` = 4284 WHERE entry=14841;

/*  Tyrant's Shield  */
UPDATE `item_template` SET `BuyPrice` = 62415, `spellcooldown_1` = -1 WHERE entry=14842;

/*  Tyrant's Helm  */
UPDATE `item_template` SET `BuyPrice` = 25180, `SellPrice` = 5036 WHERE entry=14843;

/*  Sunscale Chestguard  */
UPDATE `item_template` SET `BuyPrice` = 57358, `SellPrice` = 11471 WHERE entry=14844;

/*  Sunscale Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 22673, `SellPrice` = 4534 WHERE entry=14846;

/*  Sunscale Belt  */
UPDATE `item_template` SET `BuyPrice` = 21272, `SellPrice` = 4254 WHERE entry=14847;

/*  Sunscale Sabatons  */
UPDATE `item_template` SET `BuyPrice` = 34271, `SellPrice` = 6854 WHERE entry=14848;

/*  Sunscale Helmet  */
UPDATE `item_template` SET `BuyPrice` = 41358, `SellPrice` = 8271 WHERE entry=14849;

/*  Sunscale Legplates  */
UPDATE `item_template` SET `BuyPrice` = 52214, `SellPrice` = 10442 WHERE entry=14850;

/*  Sunscale Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 37083, `SellPrice` = 7416 WHERE entry=14851;

/*  Sunscale Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14852;

/*  Sunscale Wristguards  */
UPDATE `item_template` SET `BuyPrice` = 20870, `SellPrice` = 4174 WHERE entry=14853;

/*  Vanguard Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 81023, `SellPrice` = 16204 WHERE entry=14854;

/*  Vanguard Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 32510, `SellPrice` = 6502 WHERE entry=14855;

/*  Vanguard Girdle  */
UPDATE `item_template` SET `BuyPrice` = 30781, `SellPrice` = 6156 WHERE entry=14856;

/*  Vanguard Sabatons  */
UPDATE `item_template` SET `BuyPrice` = 46332, `SellPrice` = 9266 WHERE entry=14857;

/*  Vanguard Headdress  */
UPDATE `item_template` SET `BuyPrice` = 58702, `SellPrice` = 11740 WHERE entry=14858;

/*  Vanguard Legplates  */
UPDATE `item_template` SET `BuyPrice` = 74102, `SellPrice` = 14820 WHERE entry=14859;

/*  Vanguard Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 52616, `SellPrice` = 10523 WHERE entry=14860;

/*  Vanguard Vambraces  */
UPDATE `item_template` SET `BuyPrice` = 25227, `SellPrice` = 5045 WHERE entry=14861;

/*  Warleader's Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 91699, `SellPrice` = 18339 WHERE entry=14862;

/*  Warleader's Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 39759, `SellPrice` = 7951 WHERE entry=14863;

/*  Warleader's Belt  */
UPDATE `item_template` SET `BuyPrice` = 38012, `SellPrice` = 7602 WHERE entry=14864;

/*  Warleader's Greaves  */
UPDATE `item_template` SET `BuyPrice` = 60094, `SellPrice` = 12018 WHERE entry=14865;

/*  Warleader's Crown  */
UPDATE `item_template` SET `BuyPrice` = 66507, `SellPrice` = 13301 WHERE entry=14866;

/*  Warleader's Leggings  */
UPDATE `item_template` SET `BuyPrice` = 89014, `SellPrice` = 17802 WHERE entry=14867;

/*  Warleader's Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 65547, `SellPrice` = 13109 WHERE entry=14868;

/*  Warleader's Bracers  */
UPDATE `item_template` SET `BuyPrice` = 37886, `SellPrice` = 7577 WHERE entry=14869;

/*  Test Glaive I  */
UPDATE `item_template` SET `BuyPrice` = 127, `dmg_min1` = 2.0, `dmg_max1` = 5.0, `MaxDurability` = 30 WHERE entry=14891;

/*  Saltstone Surcoat  */
UPDATE `item_template` SET `BuyPrice` = 24524, `SellPrice` = 4904 WHERE entry=14895;

/*  Saltstone Sabatons  */
UPDATE `item_template` SET `BuyPrice` = 17091, `SellPrice` = 3418 WHERE entry=14896;

/*  Saltstone Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 11434, `SellPrice` = 2286 WHERE entry=14897;

/*  Saltstone Girdle  */
UPDATE `item_template` SET `BuyPrice` = 11475, `SellPrice` = 2295 WHERE entry=14898;

/*  Saltstone Helm  */
UPDATE `item_template` SET `BuyPrice` = 18655, `SellPrice` = 3731 WHERE entry=14899;

/*  Saltstone Legplates  */
UPDATE `item_template` SET `BuyPrice` = 21490, `SellPrice` = 4298 WHERE entry=14900;

/*  Saltstone Shoulder Pads  */
UPDATE `item_template` SET `BuyPrice` = 17472, `SellPrice` = 3494 WHERE entry=14901;

/*  Saltstone Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14902;

/*  Saltstone Armsplints  */
UPDATE `item_template` SET `BuyPrice` = 10866, `SellPrice` = 2173 WHERE entry=14903;

/*  Brutish Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 46227, `SellPrice` = 9245 WHERE entry=14904;

/*  Brutish Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 16086, `SellPrice` = 3217 WHERE entry=14905;

/*  Brutish Belt  */
UPDATE `item_template` SET `BuyPrice` = 14948, `SellPrice` = 2989 WHERE entry=14906;

/*  Brutish Helmet  */
UPDATE `item_template` SET `BuyPrice` = 30619, `SellPrice` = 6123 WHERE entry=14907;

/*  Brutish Legguards  */
UPDATE `item_template` SET `BuyPrice` = 40977, `SellPrice` = 8195 WHERE entry=14908;

/*  Brutish Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 24486, `SellPrice` = 4897 WHERE entry=14909;

/*  Brutish Armguards  */
UPDATE `item_template` SET `BuyPrice` = 15168, `SellPrice` = 3033 WHERE entry=14910;

/*  Brutish Boots  */
UPDATE `item_template` SET `BuyPrice` = 26637, `SellPrice` = 5327 WHERE entry=14911;

/*  Brutish Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14912;

/*  Jade Greaves  */
UPDATE `item_template` SET `BuyPrice` = 33487, `SellPrice` = 6697 WHERE entry=14913;

/*  Jade Bracers  */
UPDATE `item_template` SET `BuyPrice` = 17950, `SellPrice` = 3590 WHERE entry=14914;

/*  Jade Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 57847, `SellPrice` = 11569 WHERE entry=14915;

/*  Jade Deflector  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14916;

/*  Jade Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 19659, `SellPrice` = 3931 WHERE entry=14917;

/*  Jade Belt  */
UPDATE `item_template` SET `BuyPrice` = 18273, `SellPrice` = 3654 WHERE entry=14918;

/*  Jade Circlet  */
UPDATE `item_template` SET `BuyPrice` = 38588, `SellPrice` = 7717 WHERE entry=14919;

/*  Jade Legplates  */
UPDATE `item_template` SET `BuyPrice` = 48723, `SellPrice` = 9744 WHERE entry=14920;

/*  Jade Epaulets  */
UPDATE `item_template` SET `BuyPrice` = 32036, `SellPrice` = 6407 WHERE entry=14921;

/*  Lofty Sabatons  */
UPDATE `item_template` SET `BuyPrice` = 41366, `SellPrice` = 8273 WHERE entry=14922;

/*  Lofty Armguards  */
UPDATE `item_template` SET `BuyPrice` = 23024, `SellPrice` = 4604 WHERE entry=14923;

/*  Lofty Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 70158, `SellPrice` = 14031 WHERE entry=14924;

/*  Lofty Helm  */
UPDATE `item_template` SET `BuyPrice` = 52810, `SellPrice` = 10562 WHERE entry=14925;

/*  Lofty Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 27991, `SellPrice` = 5598 WHERE entry=14926;

/*  Lofty Belt  */
UPDATE `item_template` SET `BuyPrice` = 26505, `SellPrice` = 5301 WHERE entry=14927;

/*  Lofty Legguards  */
UPDATE `item_template` SET `BuyPrice` = 63368, `SellPrice` = 12673 WHERE entry=14928;

/*  Lofty Shoulder Pads  */
UPDATE `item_template` SET `BuyPrice` = 44997, `SellPrice` = 8999 WHERE entry=14929;

/*  Lofty Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14930;

/*  Heroic Armor  */
UPDATE `item_template` SET `BuyPrice` = 92743, `SellPrice` = 18548 WHERE entry=14931;

/*  Heroic Greaves  */
UPDATE `item_template` SET `BuyPrice` = 58922, `SellPrice` = 11784 WHERE entry=14932;

/*  Heroic Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 39420, `SellPrice` = 7884 WHERE entry=14933;

/*  Heroic Girdle  */
UPDATE `item_template` SET `BuyPrice` = 33770, `SellPrice` = 6754 WHERE entry=14934;

/*  Heroic Skullcap  */
UPDATE `item_template` SET `BuyPrice` = 59428, `SellPrice` = 11885 WHERE entry=14935;

/*  Heroic Legplates  */
UPDATE `item_template` SET `BuyPrice` = 83513, `SellPrice` = 16702 WHERE entry=14936;

/*  Heroic Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 57030, `SellPrice` = 11406 WHERE entry=14937;

/*  Heroic Bracers  */
UPDATE `item_template` SET `BuyPrice` = 32350, `SellPrice` = 6470 WHERE entry=14938;

/*  Warbringer's Chestguard  */
UPDATE `item_template` SET `BuyPrice` = 33965, `SellPrice` = 6793 WHERE entry=14939;

/*  Warbringer's Armsplints  */
UPDATE `item_template` SET `BuyPrice` = 12576, `SellPrice` = 2515 WHERE entry=14941;

/*  Warbringer's Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 12624, `SellPrice` = 2524 WHERE entry=14942;

/*  Warbringer's Belt  */
UPDATE `item_template` SET `BuyPrice` = 12671, `SellPrice` = 2534 WHERE entry=14943;

/*  Warbringer's Crown  */
UPDATE `item_template` SET `BuyPrice` = 24031, `SellPrice` = 4806 WHERE entry=14944;

/*  Warbringer's Legguards  */
UPDATE `item_template` SET `BuyPrice` = 32162, `SellPrice` = 6432 WHERE entry=14945;

/*  Warbringer's Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 20757, `SellPrice` = 4151 WHERE entry=14946;

/*  Warbringer's Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14947;

/*  Bloodforged Chestpiece  */
UPDATE `item_template` SET `BuyPrice` = 51509, `SellPrice` = 10301 WHERE entry=14948;

/*  Bloodforged Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 19535, `SellPrice` = 3907 WHERE entry=14949;

/*  Bloodforged Belt  */
UPDATE `item_template` SET `BuyPrice` = 18153, `SellPrice` = 3630 WHERE entry=14950;

/*  Bloodforged Sabatons  */
UPDATE `item_template` SET `BuyPrice` = 29511, `SellPrice` = 5902 WHERE entry=14951;

/*  Bloodforged Helmet  */
UPDATE `item_template` SET `BuyPrice` = 36619, `SellPrice` = 7323 WHERE entry=14952;

/*  Bloodforged Legplates  */
UPDATE `item_template` SET `BuyPrice` = 45794, `SellPrice` = 9158 WHERE entry=14953;

/*  Bloodforged Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14954;

/*  Bloodforged Shoulder Pads  */
UPDATE `item_template` SET `BuyPrice` = 27090, `SellPrice` = 5418 WHERE entry=14955;

/*  Bloodforged Bindings  */
UPDATE `item_template` SET `BuyPrice` = 15543, `SellPrice` = 3108 WHERE entry=14956;

/*  High Chief's Sabatons  */
UPDATE `item_template` SET `BuyPrice` = 36119, `SellPrice` = 7223 WHERE entry=14957;

/*  High Chief's Armor  */
UPDATE `item_template` SET `BuyPrice` = 64694, `SellPrice` = 12938 WHERE entry=14958;

/*  High Chief's Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 25717, `SellPrice` = 5143 WHERE entry=14959;

/*  High Chief's Belt  */
UPDATE `item_template` SET `BuyPrice` = 24353, `SellPrice` = 4870 WHERE entry=14960;

/*  High Chief's Crown  */
UPDATE `item_template` SET `BuyPrice` = 46295, `SellPrice` = 9259 WHERE entry=14961;

/*  High Chief's Legguards  */
UPDATE `item_template` SET `BuyPrice` = 58454, `SellPrice` = 11690 WHERE entry=14962;

/*  High Chief's Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 41509, `SellPrice` = 8301 WHERE entry=14963;

/*  High Chief's Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=14964;

/*  High Chief's Bindings  */
UPDATE `item_template` SET `BuyPrice` = 22252, `SellPrice` = 4450 WHERE entry=14965;

/*  Glorious Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 89006, `SellPrice` = 17801 WHERE entry=14966;

/*  Glorious Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 34337, `SellPrice` = 6867 WHERE entry=14967;

/*  Glorious Belt  */
UPDATE `item_template` SET `BuyPrice` = 32510, `SellPrice` = 6502 WHERE entry=14968;

/*  Glorious Headdress  */
UPDATE `item_template` SET `BuyPrice` = 61205, `SellPrice` = 12241 WHERE entry=14969;

/*  Glorious Legplates  */
UPDATE `item_template` SET `BuyPrice` = 77992, `SellPrice` = 15598 WHERE entry=14970;

/*  Glorious Shoulder Pads  */
UPDATE `item_template` SET `BuyPrice` = 55380, `SellPrice` = 11076 WHERE entry=14971;

/*  Glorious Sabatons  */
UPDATE `item_template` SET `BuyPrice` = 52430, `SellPrice` = 10486 WHERE entry=14972;

/*  Glorious Shield  */
UPDATE `item_template` SET `BuyPrice` = 139051, `spellcooldown_1` = -1 WHERE entry=14973;

/*  Glorious Bindings  */
UPDATE `item_template` SET `BuyPrice` = 30045, `SellPrice` = 6009 WHERE entry=14974;

/*  Exalted Harness  */
UPDATE `item_template` SET `BuyPrice` = 101099, `SellPrice` = 20219 WHERE entry=14975;

/*  Exalted Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 41748, `SellPrice` = 8349 WHERE entry=14976;

/*  Exalted Girdle  */
UPDATE `item_template` SET `BuyPrice` = 39913, `SellPrice` = 7982 WHERE entry=14977;

/*  Exalted Sabatons  */
UPDATE `item_template` SET `BuyPrice` = 69566, `SellPrice` = 13913 WHERE entry=14978;

/*  Exalted Helmet  */
UPDATE `item_template` SET `BuyPrice` = 73324, `SellPrice` = 14664 WHERE entry=14979;

/*  Exalted Legplates  */
UPDATE `item_template` SET `BuyPrice` = 96008, `SellPrice` = 19201 WHERE entry=14980;

/*  Exalted Epaulets  */
UPDATE `item_template` SET `BuyPrice` = 68824, `SellPrice` = 13764 WHERE entry=14981;

/*  Exalted Shield  */
UPDATE `item_template` SET `BuyPrice` = 170595, `SellPrice` = 34119, `spellcooldown_1` = -1 WHERE entry=14982;

/*  Exalted Armsplints  */
UPDATE `item_template` SET `BuyPrice` = 39927, `SellPrice` = 7985 WHERE entry=14983;

/*  Primal Bands  */
UPDATE `item_template` SET `BuyPrice` = 141 WHERE entry=15005;

/*  Primal Buckler  */
UPDATE `item_template` SET `BuyPrice` = 364, `SellPrice` = 72, `spellcooldown_1` = -1 WHERE entry=15006;

/*  Lupine Cord  */
UPDATE `item_template` SET `BuyPrice` = 919, `SellPrice` = 183 WHERE entry=15011;

/*  Lupine Buckler  */
UPDATE `item_template` SET `BuyPrice` = 2927, `spellcooldown_1` = -1 WHERE entry=15014;

/*  Lupine Cloak  */
UPDATE `item_template` SET `BuyPrice` = 433 WHERE entry=15015;

/*  Lupine Handwraps  */
UPDATE `item_template` SET `BuyPrice` = 1001 WHERE entry=15016;

/*  Lupine Mantle  */
UPDATE `item_template` SET `BuyPrice` = 1833 WHERE entry=15019;

/*  Green Dragonscale Breastplate  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 21, `stat_type2` = 7, `stat_value2` = 10, `stat_type3` = 0, `stat_value3` = 0, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15045;

/*  Green Dragonscale Leggings  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 22, `stat_type2` = 7, `stat_value2` = 10, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=15046;

/*  Red Dragonscale Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 149181, `SellPrice` = 29836, `DisenchantID` = 49 WHERE entry=15047;

/*  Blue Dragonscale Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 122046, `arcane_res` = 8, `stat_value1` = 28, `stat_type2` = 6, `stat_value2` = 8, `stat_type3` = 0, `stat_value3` = 0, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15048;

/*  Blue Dragonscale Shoulders  */
UPDATE `item_template` SET `arcane_res` = 6, `stat_value1` = 21, `stat_type2` = 6, `stat_value2` = 6, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=15049;

/*  Black Dragonscale Breastplate  */
UPDATE `item_template` SET `fire_res` = 12, `stat_type1` = 7, `stat_value1` = 8, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 14056 WHERE entry=15050;

/*  Black Dragonscale Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 108683, `fire_res` = 6, `stat_type1` = 7, `stat_value1` = 9, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 49, `spellid_1` = 14049 WHERE entry=15051;

/*  Black Dragonscale Leggings  */
UPDATE `item_template` SET `armor` = 320, `BuyPrice` = 159667, `SellPrice` = 31933, `ItemLevel` = 62, `fire_res` = 13, `stat_type1` = 7, `stat_value1` = 8, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 49, `spellid_1` = 15813, `RequiredLevel` = 57 WHERE entry=15052;

/*  Volcanic Breastplate  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15053;

/*  Volcanic Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 80097, `SellPrice` = 16019 WHERE entry=15055;

/*  Stormshroud Pants  */
UPDATE `item_template` SET `BuyPrice` = 93642 WHERE entry=15057;

/*  Living Breastplate  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=15059;

/*  Living Shoulders  */
UPDATE `item_template` SET `nature_res` = 3, `stat_type1` = 6, `stat_value1` = 13, `stat_type2` = 7, `stat_value2` = 8, `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 9317 WHERE entry=15061;

/*  Devilsaur Leggings  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=15062;

/*  Devilsaur Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 58505 WHERE entry=15063;

/*  Warbear Harness  */
UPDATE `item_template` SET `BuyPrice` = 98585, `stat_type1` = 7, `stat_value1` = 27, `stat_type2` = 4, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15064;

/*  Warbear Woolies  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 28 WHERE entry=15065;

/*  Ironfeather Breastplate  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 28, `stat_value2` = 12, `stat_type3` = 0, `stat_value3` = 0, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15066;

/*  Ironfeather Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 63790, `stat_type1` = 5, `stat_value1` = 20, `stat_type2` = 6, `stat_value2` = 8, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=15067;

/*  Frostsaber Tunic  */
UPDATE `item_template` SET `BuyPrice` = 109178, `SellPrice` = 21835, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15068;

/*  Frostsaber Leggings  */
UPDATE `item_template` SET `BuyPrice` = 85064, `SellPrice` = 17012 WHERE entry=15069;

/*  Frostsaber Gloves  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15070;

/*  Frostsaber Boots  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=15071;

/*  Chimeric Leggings  */
UPDATE `item_template` SET `BuyPrice` = 81169, `SellPrice` = 16233 WHERE entry=15072;

/*  Chimeric Boots  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15073;

/*  Chimeric Gloves  */
UPDATE `item_template` SET `BuyPrice` = 34335, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15074;

/*  Chimeric Vest  */
UPDATE `item_template` SET `BuyPrice` = 92245, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15075;

/*  Heavy Scorpid Vest  */
UPDATE `item_template` SET `BuyPrice` = 83020, `stat_type1` = 7, `stat_value1` = 16, `stat_type2` = 6 WHERE entry=15076;

/*  Heavy Scorpid Bracers  */
UPDATE `item_template` SET `stat_type1` = 7, `stat_value1` = 8, `stat_type2` = 6, `stat_value2` = 8, `spelltrigger_1` = 0 WHERE entry=15077;

/*  Heavy Scorpid Leggings  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value1` = 20 WHERE entry=15079;

/*  Heavy Scorpid Helm  */
UPDATE `item_template` SET `stat_type1` = 7, `stat_value1` = 20, `stat_type2` = 6, `spelltrigger_1` = 0 WHERE entry=15080;

/*  Heavy Scorpid Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 101305, `SellPrice` = 20261, `stat_type1` = 7, `stat_value1` = 14, `stat_type2` = 6, `stat_value2` = 13 WHERE entry=15081;

/*  Heavy Scorpid Belt  */
UPDATE `item_template` SET `stat_type1` = 7, `stat_value1` = 12, `stat_type2` = 6, `stat_value2` = 12, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15082;

/*  Wicked Leather Bracers  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=15084;

/*  Wicked Leather Armor  */
UPDATE `item_template` SET `BuyPrice` = 113662, `SellPrice` = 22732 WHERE entry=15085;

/*  Wicked Leather Headband  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=15086;

/*  Wicked Leather Pants  */
UPDATE `item_template` SET `BuyPrice` = 89463 WHERE entry=15087;

/*  Wicked Leather Belt  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15088;

/*  Runic Leather Armor  */
UPDATE `item_template` SET `BuyPrice` = 110012, `SellPrice` = 22002, `stat_type2` = 6 WHERE entry=15090;

/*  Runic Leather Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 35978, `stat_type2` = 5 WHERE entry=15091;

/*  Runic Leather Bracers  */
UPDATE `item_template` SET `stat_type2` = 6, `spelltrigger_1` = 0 WHERE entry=15092;

/*  Runic Leather Belt  */
UPDATE `item_template` SET `stat_type2` = 6, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15093;

/*  Runic Leather Headband  */
UPDATE `item_template` SET `BuyPrice` = 70777, `stat_type2` = 6, `spelltrigger_1` = 0 WHERE entry=15094;

/*  Runic Leather Pants  */
UPDATE `item_template` SET `BuyPrice` = 104426, `stat_type2` = 5 WHERE entry=15095;

/*  Runic Leather Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 86664, `SellPrice` = 17332, `stat_type2` = 6 WHERE entry=15096;

/*  Wingborne Boots  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 35, `BuyPrice` = 15940, `SellPrice` = 3188, `MaxDurability` = 35, `DisenchantID` = 6, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=15104;

/*  Staff of Noh'Orahil  */
UPDATE `item_template` SET `spellid_1` = 9296 WHERE entry=15105;

/*  Staff of Dar'Orahil  */
UPDATE `item_template` SET `spellid_1` = 9326 WHERE entry=15106;

/*  Orb of Noh'Orahil  */
UPDATE `item_template` SET `spellid_1` = 9401 WHERE entry=15107;

/*  Orb of Dar'Orahil  */
UPDATE `item_template` SET `spellid_1` = 9414 WHERE entry=15108;

/*  Staff of Soran'ruk  */
UPDATE `item_template` SET `BuyPrice` = 16723, `spellid_1` = 7710, `spellid_2` = 7688 WHERE entry=15109;

/*  Rigid Belt  */
UPDATE `item_template` SET `BuyPrice` = 1758 WHERE entry=15110;

/*  Rigid Bracelets  */
UPDATE `item_template` SET `BuyPrice` = 1771 WHERE entry=15112;

/*  Rigid Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15113;

/*  Rigid Cape  */
UPDATE `item_template` SET `BuyPrice` = 1862 WHERE entry=15114;

/*  Rigid Gloves  */
UPDATE `item_template` SET `BuyPrice` = 2369, `SellPrice` = 473 WHERE entry=15115;

/*  Rigid Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 5816 WHERE entry=15116;

/*  Rigid Tunic  */
UPDATE `item_template` SET `BuyPrice` = 7812 WHERE entry=15118;

/*  Highborne Pants  */
UPDATE `item_template` SET `BuyPrice` = 68415, `stat_type3` = 3, `stat_value3` = 9, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=15119;

/*  Robust Girdle  */
UPDATE `item_template` SET `BuyPrice` = 3934, `SellPrice` = 786 WHERE entry=15120;

/*  Robust Cloak  */
UPDATE `item_template` SET `BuyPrice` = 4237 WHERE entry=15124;

/*  Robust Gloves  */
UPDATE `item_template` SET `BuyPrice` = 4954, `SellPrice` = 990 WHERE entry=15125;

/*  Robust Leggings  */
UPDATE `item_template` SET `BuyPrice` = 9947 WHERE entry=15126;

/*  Robust Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 8237 WHERE entry=15127;

/*  Robust Tunic  */
UPDATE `item_template` SET `BuyPrice` = 12126 WHERE entry=15128;

/*  Cutthroat's Vest  */
UPDATE `item_template` SET `BuyPrice` = 16262 WHERE entry=15130;

/*  Cutthroat's Boots  */
UPDATE `item_template` SET `BuyPrice` = 10117 WHERE entry=15131;

/*  Cutthroat's Armguards  */
UPDATE `item_template` SET `BuyPrice` = 5085 WHERE entry=15132;

/*  Cutthroat's Buckler  */
UPDATE `item_template` SET `BuyPrice` = 19134, `SellPrice` = 3826, `spellcooldown_1` = -1 WHERE entry=15133;

/*  Cutthroat's Hat  */
UPDATE `item_template` SET `BuyPrice` = 16475 WHERE entry=15134;

/*  Cutthroat's Belt  */
UPDATE `item_template` SET `BuyPrice` = 6244, `SellPrice` = 1248 WHERE entry=15136;

/*  Cutthroat's Mitts  */
UPDATE `item_template` SET `BuyPrice` = 7583 WHERE entry=15137;

/*  Onyxia Scale Cloak  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=15138;

/*  Cutthroat's Mantle  */
UPDATE `item_template` SET `BuyPrice` = 12649, `SellPrice` = 2529 WHERE entry=15140;

/*  Onyxia Scale Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 209688, `SellPrice` = 41937, `spellid_1` = 7597, `spelltrigger_1` = 1, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=15141;

/*  Ghostwalker Boots  */
UPDATE `item_template` SET `BuyPrice` = 13016 WHERE entry=15142;

/*  Ghostwalker Bindings  */
UPDATE `item_template` SET `BuyPrice` = 7197 WHERE entry=15143;

/*  Ghostwalker Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15145;

/*  Ghostwalker Crown  */
UPDATE `item_template` SET `BuyPrice` = 18652 WHERE entry=15146;

/*  Ghostwalker Cloak  */
UPDATE `item_template` SET `BuyPrice` = 8769, `SellPrice` = 1753 WHERE entry=15147;

/*  Ghostwalker Belt  */
UPDATE `item_template` SET `BuyPrice` = 8069, `SellPrice` = 1613 WHERE entry=15148;

/*  Ghostwalker Gloves  */
UPDATE `item_template` SET `BuyPrice` = 9800 WHERE entry=15149;

/*  Ghostwalker Pads  */
UPDATE `item_template` SET `BuyPrice` = 14756 WHERE entry=15150;

/*  Ghostwalker Legguards  */
UPDATE `item_template` SET `BuyPrice` = 19747 WHERE entry=15151;

/*  Nocturnal Shoes  */
UPDATE `item_template` SET `BuyPrice` = 22247 WHERE entry=15152;

/*  Nocturnal Sash  */
UPDATE `item_template` SET `BuyPrice` = 11860 WHERE entry=15154;

/*  Nocturnal Cap  */
UPDATE `item_template` SET `BuyPrice` = 26332 WHERE entry=15156;

/*  Nocturnal Leggings  */
UPDATE `item_template` SET `BuyPrice` = 31000 WHERE entry=15157;

/*  Nocturnal Shoulder Pads  */
UPDATE `item_template` SET `BuyPrice` = 21602 WHERE entry=15158;

/*  Nocturnal Tunic  */
UPDATE `item_template` SET `BuyPrice` = 33715 WHERE entry=15159;

/*  Nocturnal Wristbands  */
UPDATE `item_template` SET `BuyPrice` = 12151 WHERE entry=15160;

/*  Imposing Boots  */
UPDATE `item_template` SET `BuyPrice` = 29146 WHERE entry=15162;

/*  Imposing Cape  */
UPDATE `item_template` SET `BuyPrice` = 18723 WHERE entry=15165;

/*  Imposing Gloves  */
UPDATE `item_template` SET `BuyPrice` = 19728 WHERE entry=15166;

/*  Imposing Pants  */
UPDATE `item_template` SET `BuyPrice` = 39757 WHERE entry=15168;

/*  Imposing Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 27713 WHERE entry=15169;

/*  Potent Armor  */
UPDATE `item_template` SET `BuyPrice` = 65519, `SellPrice` = 13103 WHERE entry=15170;

/*  Potent Boots  */
UPDATE `item_template` SET `BuyPrice` = 43487 WHERE entry=15171;

/*  Potent Helmet  */
UPDATE `item_template` SET `BuyPrice` = 48462 WHERE entry=15175;

/*  Potent Pants  */
UPDATE `item_template` SET `BuyPrice` = 60606 WHERE entry=15176;

/*  Potent Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 42628 WHERE entry=15177;

/*  Potent Belt  */
UPDATE `item_template` SET `BuyPrice` = 24679, `SellPrice` = 4935 WHERE entry=15178;

/*  Praetorian Padded Armor  */
UPDATE `item_template` SET `BuyPrice` = 92965 WHERE entry=15179;

/*  Praetorian Wristbands  */
UPDATE `item_template` SET `BuyPrice` = 29982 WHERE entry=15182;

/*  Praetorian Coif  */
UPDATE `item_template` SET `BuyPrice` = 64529, `SellPrice` = 12905 WHERE entry=15185;

/*  Praetorian Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 54593 WHERE entry=15187;

/*  Grand Boots  */
UPDATE `item_template` SET `BuyPrice` = 78614, `SellPrice` = 15722 WHERE entry=15189;

/*  Grand Cloak  */
UPDATE `item_template` SET `BuyPrice` = 48070 WHERE entry=15190;

/*  Grand Belt  */
UPDATE `item_template` SET `BuyPrice` = 45174, `SellPrice` = 9034 WHERE entry=15191;

/*  Grand Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 52979, `SellPrice` = 10595 WHERE entry=15192;

/*  Grand Crown  */
UPDATE `item_template` SET `BuyPrice` = 87933, `SellPrice` = 17586 WHERE entry=15193;

/*  Grand Legguards  */
UPDATE `item_template` SET `BuyPrice` = 112063, `SellPrice` = 22412 WHERE entry=15194;

/*  Grand Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 118089, `SellPrice` = 23617 WHERE entry=15195;

/*  Private's Tabard  */
UPDATE `item_template` SET `BuyPrice` = 10000, `SellPrice` = 2500 WHERE entry=15196;

/*  Scout's Tabard  */
UPDATE `item_template` SET `BuyPrice` = 10000, `SellPrice` = 2500 WHERE entry=15197;

/*  Knight's Colors  */
UPDATE `item_template` SET `BuyPrice` = 40000, `SellPrice` = 10000 WHERE entry=15198;

/*  Stone Guard's Herald  */
UPDATE `item_template` SET `BuyPrice` = 40000, `SellPrice` = 10000 WHERE entry=15199;

/*  Senior Sergeant's Insignia  */
UPDATE `item_template` SET `BuyPrice` = 20000, `SellPrice` = 5000, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15200;

/*  Wildkeeper Leggings  */
UPDATE `item_template` SET `BuyPrice` = 2579, `SellPrice` = 515 WHERE entry=15202;

/*  Guststorm Legguards  */
UPDATE `item_template` SET `BuyPrice` = 3107 WHERE entry=15203;

/*  Moonstone Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15204;

/*  Owlsight Rifle  */
UPDATE `item_template` SET `BuyPrice` = 5317, `dmg_min1` = 14.0, `dmg_max1` = 27.0 WHERE entry=15205;

/*  Steelcap Shield  */
UPDATE `item_template` SET `BuyPrice` = 4342, `SellPrice` = 868 WHERE entry=15207;

/*  Raider Shortsword  */
UPDATE `item_template` SET `BuyPrice` = 4128 WHERE entry=15210;

/*  Militant Shortsword  */
UPDATE `item_template` SET `BuyPrice` = 9584, `SellPrice` = 1916 WHERE entry=15211;

/*  Fighter Broadsword  */
UPDATE `item_template` SET `BuyPrice` = 17252 WHERE entry=15212;

/*  Nobles Brand  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=15214;

/*  Furious Falchion  */
UPDATE `item_template` SET `BuyPrice` = 83720 WHERE entry=15215;

/*  Rune Sword  */
UPDATE `item_template` SET `BuyPrice` = 129661 WHERE entry=15216;

/*  Crystal Sword  */
UPDATE `item_template` SET `BuyPrice` = 185239, `SellPrice` = 37047 WHERE entry=15218;

/*  Dimensional Blade  */
UPDATE `item_template` SET `BuyPrice` = 206882 WHERE entry=15219;

/*  Battlefell Sabre  */
UPDATE `item_template` SET `BuyPrice` = 217465, `SellPrice` = 43493 WHERE entry=15220;

/*  Holy War Sword  */
UPDATE `item_template` SET `BuyPrice` = 259732, `SellPrice` = 51946, `dmg_min1` = 59.0, `dmg_max1` = 111.0 WHERE entry=15221;

/*  Sequoia Hammer  */
UPDATE `item_template` SET `BuyPrice` = 29793 WHERE entry=15225;

/*  Giant Club  */
UPDATE `item_template` SET `BuyPrice` = 43778 WHERE entry=15226;

/*  Diamond-Tip Bludgeon  */
UPDATE `item_template` SET `BuyPrice` = 109625 WHERE entry=15227;

/*  Smashing Star  */
UPDATE `item_template` SET `BuyPrice` = 141543 WHERE entry=15228;

/*  Blesswind Hammer  */
UPDATE `item_template` SET `BuyPrice` = 159622 WHERE entry=15229;

/*  Hacking Cleaver  */
UPDATE `item_template` SET `BuyPrice` = 30561 WHERE entry=15232;

/*  Savage Axe  */
UPDATE `item_template` SET `BuyPrice` = 52380 WHERE entry=15233;

/*  Crescent Edge  */
UPDATE `item_template` SET `BuyPrice` = 105454, `SellPrice` = 21090 WHERE entry=15235;

/*  Warlord's Axe  */
UPDATE `item_template` SET `BuyPrice` = 182480 WHERE entry=15238;

/*  Felstone Reaver  */
UPDATE `item_template` SET `BuyPrice` = 212049, `SellPrice` = 42409 WHERE entry=15239;

/*  Demon's Claw  */
UPDATE `item_template` SET `BuyPrice` = 246405, `SellPrice` = 49281, `dmg_max1` = 115.0 WHERE entry=15240;

/*  Razor Blade  */
UPDATE `item_template` SET `BuyPrice` = 63848 WHERE entry=15244;

/*  Demon Blade  */
UPDATE `item_template` SET `BuyPrice` = 228524, `SellPrice` = 45704 WHERE entry=15246;

/*  Bloodstrike Dagger  */
UPDATE `item_template` SET `BuyPrice` = 252880, `SellPrice` = 50576, `dmg_max1` = 85.0 WHERE entry=15247;

/*  Polished Zweihander  */
UPDATE `item_template` SET `BuyPrice` = 19388 WHERE entry=15249;

/*  Glimmering Flamberge  */
UPDATE `item_template` SET `BuyPrice` = 34474, `SellPrice` = 6894 WHERE entry=15250;

/*  Tusker Sword  */
UPDATE `item_template` SET `BuyPrice` = 139530 WHERE entry=15252;

/*  Dark Espadon  */
UPDATE `item_template` SET `BuyPrice` = 177922 WHERE entry=15254;

/*  Gallant Flamberge  */
UPDATE `item_template` SET `BuyPrice` = 212728 WHERE entry=15255;

/*  Shin Blade  */
UPDATE `item_template` SET `BuyPrice` = 276172, `SellPrice` = 55234 WHERE entry=15257;

/*  Divine Warblade  */
UPDATE `item_template` SET `BuyPrice` = 320928, `SellPrice` = 64185, `dmg_min1` = 109.0, `dmg_max1` = 164.0 WHERE entry=15258;

/*  Hefty Battlehammer  */
UPDATE `item_template` SET `BuyPrice` = 16533 WHERE entry=15259;

/*  Stone Hammer  */
UPDATE `item_template` SET `BuyPrice` = 57783 WHERE entry=15260;

/*  Sequoia Branch  */
UPDATE `item_template` SET `BuyPrice` = 67653 WHERE entry=15261;

/*  Royal Mallet  */
UPDATE `item_template` SET `BuyPrice` = 144448 WHERE entry=15263;

/*  Painbringer  */
UPDATE `item_template` SET `BuyPrice` = 234116 WHERE entry=15265;

/*  Fierce Mauler  */
UPDATE `item_template` SET `BuyPrice` = 272026, `SellPrice` = 54405 WHERE entry=15266;

/*  Brutehammer  */
UPDATE `item_template` SET `BuyPrice` = 301018, `SellPrice` = 60203 WHERE entry=15267;

/*  Gigantic War Axe  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=15270;

/*  Colossal Great Axe  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=15271;

/*  Razor Axe  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=15272;

/*  Death Striker  */
UPDATE `item_template` SET `BuyPrice` = 285543, `SellPrice` = 57108, `spelltrigger_1` = 0 WHERE entry=15273;

/*  Solstice Staff  */
UPDATE `item_template` SET `BuyPrice` = 251429, `SellPrice` = 50285 WHERE entry=15278;

/*  Ivory Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15279;

/*  Wizard's Hand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15280;

/*  Glowstar Rod  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15281;

/*  Dragon Finger  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15282;

/*  Lunar Wand  */
UPDATE `item_template` SET `BuyPrice` = 186826, `SellPrice` = 37365, `dmg_max1` = 126.0, `spellcooldown_1` = -1 WHERE entry=15283;

/*  Long Battle Bow  */
UPDATE `item_template` SET `dmg_min1` = 18.0, `dmg_max1` = 34.0 WHERE entry=15284;

/*  Archer's Longbow  */
UPDATE `item_template` SET `dmg_min1` = 23.0, `dmg_max1` = 44.0 WHERE entry=15285;

/*  Long Redwood Bow  */
UPDATE `item_template` SET `dmg_min1` = 28.0, `dmg_max1` = 52.0 WHERE entry=15286;

/*  Crusader Bow  */
UPDATE `item_template` SET `BuyPrice` = 62583, `dmg_min1` = 32.0, `dmg_max1` = 60.0 WHERE entry=15287;

/*  Blasthorn Bow  */
UPDATE `item_template` SET `BuyPrice` = 168715, `SellPrice` = 33743, `dmg_min1` = 51.0, `dmg_max1` = 96.0 WHERE entry=15288;

/*  Archstrike Bow  */
UPDATE `item_template` SET `BuyPrice` = 205809, `SellPrice` = 41161, `dmg_min1` = 48.0, `dmg_max1` = 91.0 WHERE entry=15289;

/*  Harpy Needler  */
UPDATE `item_template` SET `BuyPrice` = 97958, `dmg_min1` = 44.0, `dmg_max1` = 84.0 WHERE entry=15291;

/*  Siege Bow  */
UPDATE `item_template` SET `dmg_min1` = 48.0, `dmg_max1` = 90.0 WHERE entry=15294;

/*  Quillfire Bow  */
UPDATE `item_template` SET `BuyPrice` = 113560, `dmg_min1` = 41.0, `dmg_max1` = 77.0 WHERE entry=15295;

/*  Hawkeye Bow  */
UPDATE `item_template` SET `BuyPrice` = 173287, `SellPrice` = 34657, `dmg_min1` = 35.0, `dmg_max1` = 65.0 WHERE entry=15296;

/*  Grizzly Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15298;

/*  Grizzly Cape  */
UPDATE `item_template` SET `BuyPrice` = 211 WHERE entry=15299;

/*  Grizzly Slippers  */
UPDATE `item_template` SET `BuyPrice` = 541 WHERE entry=15301;

/*  Grizzly Belt  */
UPDATE `item_template` SET `BuyPrice` = 237 WHERE entry=15302;

/*  Grizzly Pants  */
UPDATE `item_template` SET `BuyPrice` = 1495 WHERE entry=15303;

/*  Grizzly Jerkin  */
UPDATE `item_template` SET `BuyPrice` = 2071 WHERE entry=15304;

/*  Feral Bindings  */
UPDATE `item_template` SET `BuyPrice` = 1042 WHERE entry=15306;

/*  Feral Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15307;

/*  Feral Gloves  */
UPDATE `item_template` SET `BuyPrice` = 1398 WHERE entry=15310;

/*  Feral Harness  */
UPDATE `item_template` SET `BuyPrice` = 4913 WHERE entry=15311;

/*  Feral Leggings  */
UPDATE `item_template` SET `BuyPrice` = 3728 WHERE entry=15312;

/*  Smoothbore Gun  */
UPDATE `item_template` SET `dmg_min1` = 29.0, `dmg_max1` = 54.0 WHERE entry=15322;

/*  Percussion Shotgun  */
UPDATE `item_template` SET `dmg_min1` = 37.0, `dmg_max1` = 70.0 WHERE entry=15323;

/*  Burnside Rifle  */
UPDATE `item_template` SET `dmg_min1` = 45.0, `dmg_max1` = 85.0 WHERE entry=15324;

/*  Sharpshooter Harquebus  */
UPDATE `item_template` SET `BuyPrice` = 158924, `SellPrice` = 31784, `dmg_min1` = 43.0, `dmg_max1` = 80.0 WHERE entry=15325;

/*  Wrangler's Belt  */
UPDATE `item_template` SET `BuyPrice` = 3114, `SellPrice` = 622 WHERE entry=15329;

/*  Wrangler's Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15332;

/*  Wrangler's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 2685 WHERE entry=15333;

/*  Wrangler's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 4141 WHERE entry=15334;

/*  Wrangler's Leggings  */
UPDATE `item_template` SET `BuyPrice` = 8345 WHERE entry=15336;

/*  Wrangler's Wraps  */
UPDATE `item_template` SET `BuyPrice` = 10136 WHERE entry=15337;

/*  Pathfinder Hat  */
UPDATE `item_template` SET `BuyPrice` = 12333 WHERE entry=15339;

/*  Pathfinder Cloak  */
UPDATE `item_template` SET `BuyPrice` = 5081 WHERE entry=15340;

/*  Pathfinder Pants  */
UPDATE `item_template` SET `BuyPrice` = 12582 WHERE entry=15344;

/*  Pathfinder Vest  */
UPDATE `item_template` SET `BuyPrice` = 13941 WHERE entry=15346;

/*  Pathfinder Belt  */
UPDATE `item_template` SET `BuyPrice` = 4777 WHERE entry=15347;

/*  Pathfinder Bracers  */
UPDATE `item_template` SET `BuyPrice` = 3962 WHERE entry=15348;

/*  Headhunter's Belt  */
UPDATE `item_template` SET `BuyPrice` = 7749, `SellPrice` = 1549 WHERE entry=15349;

/*  Headhunter's Slippers  */
UPDATE `item_template` SET `BuyPrice` = 11924, `SellPrice` = 2384 WHERE entry=15350;

/*  Headhunter's Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15352;

/*  Headhunter's Headdress  */
UPDATE `item_template` SET `BuyPrice` = 17337 WHERE entry=15353;

/*  Headhunter's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 8003 WHERE entry=15354;

/*  Headhunter's Mitts  */
UPDATE `item_template` SET `BuyPrice` = 8100 WHERE entry=15355;

/*  Headhunter's Woolies  */
UPDATE `item_template` SET `BuyPrice` = 18020 WHERE entry=15358;

/*  Trickster's Vest  */
UPDATE `item_template` SET `BuyPrice` = 29776 WHERE entry=15359;

/*  Trickster's Bindings  */
UPDATE `item_template` SET `BuyPrice` = 11861 WHERE entry=15360;

/*  Trickster's Headdress  */
UPDATE `item_template` SET `BuyPrice` = 24473 WHERE entry=15363;

/*  Trickster's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 12157 WHERE entry=15364;

/*  Trickster's Handwraps  */
UPDATE `item_template` SET `BuyPrice` = 12078 WHERE entry=15365;

/*  Trickster's Protector  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15367;

/*  Wolf Rider's Boots  */
UPDATE `item_template` SET `BuyPrice` = 27198 WHERE entry=15370;

/*  Wolf Rider's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 17338 WHERE entry=15371;

/*  Wolf Rider's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 16917 WHERE entry=15372;

/*  Wolf Rider's Headgear  */
UPDATE `item_template` SET `BuyPrice` = 34652 WHERE entry=15373;

/*  Wolf Rider's Leggings  */
UPDATE `item_template` SET `BuyPrice` = 36816 WHERE entry=15374;

/*  Wolf Rider's Padded Armor  */
UPDATE `item_template` SET `BuyPrice` = 43266 WHERE entry=15376;

/*  Rageclaw Bracers  */
UPDATE `item_template` SET `BuyPrice` = 21954, `SellPrice` = 4390 WHERE entry=15380;

/*  Rageclaw Chestguard  */
UPDATE `item_template` SET `BuyPrice` = 62967 WHERE entry=15381;

/*  Rageclaw Cloak  */
UPDATE `item_template` SET `BuyPrice` = 25215 WHERE entry=15382;

/*  Rageclaw Helm  */
UPDATE `item_template` SET `BuyPrice` = 45778 WHERE entry=15384;

/*  Rageclaw Shoulder Pads  */
UPDATE `item_template` SET `BuyPrice` = 36437 WHERE entry=15386;

/*  Jadefire Bracelets  */
UPDATE `item_template` SET `BuyPrice` = 27919, `SellPrice` = 5583 WHERE entry=15387;

/*  Jadefire Belt  */
UPDATE `item_template` SET `BuyPrice` = 31785 WHERE entry=15388;

/*  Jadefire Chestguard  */
UPDATE `item_template` SET `BuyPrice` = 80876 WHERE entry=15390;

/*  Jadefire Epaulets  */
UPDATE `item_template` SET `BuyPrice` = 51898 WHERE entry=15395;

/*  Curvewood Dagger  */
UPDATE `item_template` SET `BuyPrice` = 2913 WHERE entry=15396;

/*  Oakthrush Staff  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15397;

/*  Dryweed Belt  */
UPDATE `item_template` SET `BuyPrice` = 755 WHERE entry=15399;

/*  Clamshell Bracers  */
UPDATE `item_template` SET `BuyPrice` = 545 WHERE entry=15400;

/*  Welldrip Gloves  */
UPDATE `item_template` SET `BuyPrice` = 364, `SellPrice` = 72 WHERE entry=15401;

/*  Noosegrip Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 549, `SellPrice` = 109 WHERE entry=15402;

/*  Ridgeback Bracers  */
UPDATE `item_template` SET `BuyPrice` = 1399, `SellPrice` = 279 WHERE entry=15403;

/*  Breakwater Girdle  */
UPDATE `item_template` SET `BuyPrice` = 1685 WHERE entry=15404;

/*  Shucking Gloves  */
UPDATE `item_template` SET `BuyPrice` = 1225 WHERE entry=15405;

/*  Mark of Fordring  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=15411;

/*  Ornate Adamantium Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 112596, `SellPrice` = 22519, `DisenchantID` = 49 WHERE entry=15413;

/*  Shimmering Platinum Warhammer  */
UPDATE `item_template` SET `BuyPrice` = 367988, `SellPrice` = 73597, `DisenchantID` = 49 WHERE entry=15418;

/*  Shroud of the Exile  */
UPDATE `item_template` SET `BuyPrice` = 89275, `SellPrice` = 17855, `DisenchantID` = 49 WHERE entry=15421;

/*  Axe of Orgrimmar  */
UPDATE `item_template` SET `BuyPrice` = 7023 WHERE entry=15424;

/*  Peerless Bracers  */
UPDATE `item_template` SET `BuyPrice` = 41364, `SellPrice` = 8272 WHERE entry=15425;

/*  Peerless Gloves  */
UPDATE `item_template` SET `BuyPrice` = 45248 WHERE entry=15429;

/*  Peerless Headband  */
UPDATE `item_template` SET `BuyPrice` = 77176 WHERE entry=15430;

/*  Peerless Armor  */
UPDATE `item_template` SET `BuyPrice` = 109245, `SellPrice` = 21849 WHERE entry=15433;

/*  Supreme Sash  */
UPDATE `item_template` SET `BuyPrice` = 54823, `SellPrice` = 10964 WHERE entry=15434;

/*  Supreme Shoes  */
UPDATE `item_template` SET `BuyPrice` = 90997, `SellPrice` = 18199 WHERE entry=15435;

/*  Supreme Cape  */
UPDATE `item_template` SET `BuyPrice` = 66506, `SellPrice` = 13301 WHERE entry=15437;

/*  Supreme Gloves  */
UPDATE `item_template` SET `BuyPrice` = 61324, `SellPrice` = 12264 WHERE entry=15438;

/*  Supreme Crown  */
UPDATE `item_template` SET `BuyPrice` = 96936, `SellPrice` = 19387 WHERE entry=15439;

/*  Supreme Leggings  */
UPDATE `item_template` SET `BuyPrice` = 123537, `SellPrice` = 24707 WHERE entry=15440;

/*  Supreme Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 92977, `SellPrice` = 18595 WHERE entry=15441;

/*  Supreme Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 137166, `SellPrice` = 27433 WHERE entry=15442;

/*  Kris of Orgrimmar  */
UPDATE `item_template` SET `BuyPrice` = 5598 WHERE entry=15443;

/*  Hammer of Orgrimmar  */
UPDATE `item_template` SET `BuyPrice` = 5637 WHERE entry=15445;

/*  Ghastly Trousers  */
UPDATE `item_template` SET `BuyPrice` = 2127 WHERE entry=15449;

/*  Dredgemire Leggings  */
UPDATE `item_template` SET `BuyPrice` = 2669, `SellPrice` = 533 WHERE entry=15450;

/*  Featherbead Bracers  */
UPDATE `item_template` SET `BuyPrice` = 1075 WHERE entry=15452;

/*  Savannah Bracers  */
UPDATE `item_template` SET `BuyPrice` = 1349, `SellPrice` = 269 WHERE entry=15453;

/*  Desert Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 5671 WHERE entry=15457;

/*  Grimtoll Wristguards  */
UPDATE `item_template` SET `BuyPrice` = 5712 WHERE entry=15459;

/*  Lightheel Boots  */
UPDATE `item_template` SET `BuyPrice` = 4207 WHERE entry=15461;

/*  Palestrider Gloves  */
UPDATE `item_template` SET `BuyPrice` = 3937 WHERE entry=15463;

/*  Stingshot Wand  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15465;

/*  Clink Shield  */
UPDATE `item_template` SET `BuyPrice` = 11619, `SellPrice` = 2323 WHERE entry=15466;

/*  Inventor's League Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15467;

/*  Windsong Drape  */
UPDATE `item_template` SET `BuyPrice` = 6035 WHERE entry=15468;

/*  Windsong Cinch  */
UPDATE `item_template` SET `BuyPrice` = 5048 WHERE entry=15469;

/*  Plainsguard Leggings  */
UPDATE `item_template` SET `BuyPrice` = 12162 WHERE entry=15470;

/*  Charger's Boots  */
UPDATE `item_template` SET `BuyPrice` = 328 WHERE entry=15473;

/*  Charger's Bindings  */
UPDATE `item_template` SET `BuyPrice` = 119, `SellPrice` = 23 WHERE entry=15474;

/*  Charger's Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15478;

/*  Charger's Armor  */
UPDATE `item_template` SET `BuyPrice` = 897 WHERE entry=15479;

/*  War Torn Bands  */
UPDATE `item_template` SET `BuyPrice` = 271 WHERE entry=15482;

/*  War Torn Cape  */
UPDATE `item_template` SET `BuyPrice` = 209, `SellPrice` = 41 WHERE entry=15483;

/*  War Torn Handgrips  */
UPDATE `item_template` SET `BuyPrice` = 342 WHERE entry=15484;

/*  War Torn Pants  */
UPDATE `item_template` SET `BuyPrice` = 1722 WHERE entry=15485;

/*  War Torn Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15486;

/*  Bloodspattered Sabatons  */
UPDATE `item_template` SET `BuyPrice` = 1817 WHERE entry=15489;

/*  Bloodspattered Loincloth  */
UPDATE `item_template` SET `BuyPrice` = 3238 WHERE entry=15493;

/*  Bloodspattered Shield  */
UPDATE `item_template` SET `BuyPrice` = 3467, `spellcooldown_1` = -1 WHERE entry=15494;

/*  Bloodspattered Shoulder Pads  */
UPDATE `item_template` SET `BuyPrice` = 2309, `SellPrice` = 461 WHERE entry=15496;

/*  Outrunner's Cord  */
UPDATE `item_template` SET `BuyPrice` = 1938 WHERE entry=15497;

/*  Outrunner's Slippers  */
UPDATE `item_template` SET `BuyPrice` = 3370 WHERE entry=15498;

/*  Outrunner's Cuffs  */
UPDATE `item_template` SET `BuyPrice` = 1535 WHERE entry=15499;

/*  Outrunner's Chestguard  */
UPDATE `item_template` SET `BuyPrice` = 6889, `SellPrice` = 1377 WHERE entry=15500;

/*  Outrunner's Legguards  */
UPDATE `item_template` SET `BuyPrice` = 5457 WHERE entry=15503;

/*  Outrunner's Shield  */
UPDATE `item_template` SET `BuyPrice` = 5843, `spellcooldown_1` = -1 WHERE entry=15504;

/*  Grunt's AnkleWraps  */
UPDATE `item_template` SET `BuyPrice` = 3615 WHERE entry=15506;

/*  Grunt's Bracers  */
UPDATE `item_template` SET `BuyPrice` = 1820 WHERE entry=15507;

/*  Grunt's Cape  */
UPDATE `item_template` SET `BuyPrice` = 1827 WHERE entry=15508;

/*  Grunt's Handwraps  */
UPDATE `item_template` SET `BuyPrice` = 2426 WHERE entry=15509;

/*  Grunt's Belt  */
UPDATE `item_template` SET `BuyPrice` = 2117 WHERE entry=15510;

/*  Grunt's Legguards  */
UPDATE `item_template` SET `BuyPrice` = 7371 WHERE entry=15511;

/*  Grunt's Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15512;

/*  Spiked Chain Belt  */
UPDATE `item_template` SET `BuyPrice` = 4224, `SellPrice` = 844 WHERE entry=15515;

/*  Spiked Chain Slippers  */
UPDATE `item_template` SET `BuyPrice` = 7939, `SellPrice` = 1587 WHERE entry=15516;

/*  Spiked Chain Cloak  */
UPDATE `item_template` SET `BuyPrice` = 3035 WHERE entry=15519;

/*  Spiked Chain Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 4397 WHERE entry=15520;

/*  Spiked Chain Leggings  */
UPDATE `item_template` SET `BuyPrice` = 9712 WHERE entry=15521;

/*  Spiked Chain Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15522;

/*  Sentry's Surcoat  */
UPDATE `item_template` SET `BuyPrice` = 14383 WHERE entry=15524;

/*  Sentry's Slippers  */
UPDATE `item_template` SET `BuyPrice` = 8171 WHERE entry=15525;

/*  Sentry's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 5101 WHERE entry=15527;

/*  Sentry's Sash  */
UPDATE `item_template` SET `BuyPrice` = 4654, `SellPrice` = 930 WHERE entry=15528;

/*  Sentry's Shield  */
UPDATE `item_template` SET `BuyPrice` = 16110, `spellcooldown_1` = -1 WHERE entry=15530;

/*  Sentry's Headdress  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15533;

/*  Wicked Chain Bracers  */
UPDATE `item_template` SET `BuyPrice` = 6352 WHERE entry=15535;

/*  Wicked Chain Chestpiece  */
UPDATE `item_template` SET `BuyPrice` = 20537 WHERE entry=15536;

/*  Wicked Chain Cloak  */
UPDATE `item_template` SET `BuyPrice` = 5816 WHERE entry=15537;

/*  Wicked Chain Helmet  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15540;

/*  Wicked Chain Shield  */
UPDATE `item_template` SET `BuyPrice` = 20898, `spellcooldown_1` = -1 WHERE entry=15543;

/*  Thick Scale Bracelets  */
UPDATE `item_template` SET `BuyPrice` = 6740 WHERE entry=15545;

/*  Thick Scale Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 23969, `SellPrice` = 4793 WHERE entry=15546;

/*  Thick Scale Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 8245 WHERE entry=15548;

/*  Thick Scale Belt  */
UPDATE `item_template` SET `BuyPrice` = 7523 WHERE entry=15549;

/*  Thick Scale Crown  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15550;

/*  Thick Scale Shield  */
UPDATE `item_template` SET `BuyPrice` = 26130, `spellcooldown_1` = -1 WHERE entry=15552;

/*  Thick Scale Shoulder Pads  */
UPDATE `item_template` SET `BuyPrice` = 15306 WHERE entry=15553;

/*  Pillager's Girdle  */
UPDATE `item_template` SET `BuyPrice` = 9267 WHERE entry=15554;

/*  Pillager's Boots  */
UPDATE `item_template` SET `BuyPrice` = 14013 WHERE entry=15555;

/*  Pillager's Bracers  */
UPDATE `item_template` SET `BuyPrice` = 8485 WHERE entry=15556;

/*  Pillager's Crown  */
UPDATE `item_template` SET `BuyPrice` = 20643, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15558;

/*  Pillager's Gloves  */
UPDATE `item_template` SET `BuyPrice` = 9686 WHERE entry=15560;

/*  Pillager's Leggings  */
UPDATE `item_template` SET `BuyPrice` = 23527 WHERE entry=15561;

/*  Pillager's Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 17790 WHERE entry=15562;

/*  Pillager's Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15563;

/*  Marauder's Boots  */
UPDATE `item_template` SET `BuyPrice` = 21370 WHERE entry=15565;

/*  Marauder's Tunic  */
UPDATE `item_template` SET `BuyPrice` = 33333 WHERE entry=15567;

/*  Marauder's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 9069, `SellPrice` = 1813 WHERE entry=15568;

/*  Marauder's Crest  */
UPDATE `item_template` SET `BuyPrice` = 35813, `spellcooldown_1` = -1 WHERE entry=15569;

/*  Marauder's Belt  */
UPDATE `item_template` SET `BuyPrice` = 11093 WHERE entry=15571;

/*  Marauder's Shoulder Pads  */
UPDATE `item_template` SET `BuyPrice` = 25751 WHERE entry=15574;

/*  Sparkleshell Headwrap  */
UPDATE `item_template` SET `BuyPrice` = 24357 WHERE entry=15580;

/*  Sparkleshell Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 13973 WHERE entry=15581;

/*  Sparkleshell Legguards  */
UPDATE `item_template` SET `BuyPrice` = 32721 WHERE entry=15582;

/*  Sparkleshell Shield  */
UPDATE `item_template` SET `BuyPrice` = 37973, `spellcooldown_1` = -1 WHERE entry=15584;

/*  Pardoc Grips  */
UPDATE `item_template` SET `BuyPrice` = 7234, `SellPrice` = 1446 WHERE entry=15585;

/*  Ringtail Girdle  */
UPDATE `item_template` SET `BuyPrice` = 9110 WHERE entry=15587;

/*  Steadfast Bracelets  */
UPDATE `item_template` SET `BuyPrice` = 13373 WHERE entry=15590;

/*  Steadfast Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 43699, `SellPrice` = 8739 WHERE entry=15591;

/*  Steadfast Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15592;

/*  Steadfast Coronet  */
UPDATE `item_template` SET `BuyPrice` = 27663 WHERE entry=15593;

/*  Steadfast Girdle  */
UPDATE `item_template` SET `BuyPrice` = 13816 WHERE entry=15598;

/*  Ancient Greaves  */
UPDATE `item_template` SET `BuyPrice` = 33156 WHERE entry=15599;

/*  Ancient Crown  */
UPDATE `item_template` SET `BuyPrice` = 36055 WHERE entry=15602;

/*  Ancient Cloak  */
UPDATE `item_template` SET `BuyPrice` = 17731 WHERE entry=15603;

/*  Ancient Defender  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15604;

/*  Ancient Belt  */
UPDATE `item_template` SET `BuyPrice` = 17928 WHERE entry=15606;

/*  Ancient Legguards  */
UPDATE `item_template` SET `BuyPrice` = 46529, `SellPrice` = 9305 WHERE entry=15607;

/*  Ancient Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 35177 WHERE entry=15608;

/*  Bonelink Armor  */
UPDATE `item_template` SET `BuyPrice` = 59033 WHERE entry=15609;

/*  Bonelink Cape  */
UPDATE `item_template` SET `BuyPrice` = 21847 WHERE entry=15611;

/*  Bonelink Belt  */
UPDATE `item_template` SET `BuyPrice` = 18440 WHERE entry=15613;

/*  Bonelink Wall Shield  */
UPDATE `item_template` SET `BuyPrice` = 58910, `spellcooldown_1` = -1 WHERE entry=15618;

/*  Gryphon Mail Belt  */
UPDATE `item_template` SET `BuyPrice` = 29936 WHERE entry=15619;

/*  Gryphon Mail Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15621;

/*  Gryphon Mail Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 74173 WHERE entry=15622;

/*  Gryphon Cloak  */
UPDATE `item_template` SET `BuyPrice` = 24855 WHERE entry=15624;

/*  Gryphon Mail Legguards  */
UPDATE `item_template` SET `BuyPrice` = 72468 WHERE entry=15627;

/*  Formidable Bracers  */
UPDATE `item_template` SET `BuyPrice` = 31871 WHERE entry=15629;

/*  Formidable Crest  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15633;

/*  Formidable Circlet  */
UPDATE `item_template` SET `BuyPrice` = 57208 WHERE entry=15634;

/*  Formidable Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 29483 WHERE entry=15635;

/*  Formidable Shoulder Pads  */
UPDATE `item_template` SET `BuyPrice` = 48074, `SellPrice` = 9614 WHERE entry=15638;

/*  Ironhide Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 40651 WHERE entry=15644;

/*  Ironhide Helmet  */
UPDATE `item_template` SET `BuyPrice` = 72887 WHERE entry=15645;

/*  Ironhide Legguards  */
UPDATE `item_template` SET `BuyPrice` = 97534, `SellPrice` = 19506 WHERE entry=15646;

/*  Ironhide Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15648;

/*  Merciless Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 40266 WHERE entry=15653;

/*  Merciless Legguards  */
UPDATE `item_template` SET `BuyPrice` = 99310 WHERE entry=15655;

/*  Merciless Epaulets  */
UPDATE `item_template` SET `BuyPrice` = 66833 WHERE entry=15656;

/*  Merciless Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15657;

/*  Impenetrable Sabatons  */
UPDATE `item_template` SET `BuyPrice` = 89254, `SellPrice` = 17850 WHERE entry=15658;

/*  Impenetrable Bindings  */
UPDATE `item_template` SET `BuyPrice` = 47540 WHERE entry=15659;

/*  Impenetrable Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 131577, `SellPrice` = 26315 WHERE entry=15660;

/*  Impenetrable Belt  */
UPDATE `item_template` SET `BuyPrice` = 51130 WHERE entry=15663;

/*  Impenetrable Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 91877 WHERE entry=15666;

/*  Impenetrable Wall  */
UPDATE `item_template` SET `BuyPrice` = 143928, `SellPrice` = 28785, `spellcooldown_1` = -1 WHERE entry=15667;

/*  Magnificent Bracers  */
UPDATE `item_template` SET `BuyPrice` = 58488 WHERE entry=15668;

/*  Magnificent Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 142694, `SellPrice` = 28538 WHERE entry=15669;

/*  Magnificent Helmet  */
UPDATE `item_template` SET `BuyPrice` = 102277, `SellPrice` = 20455 WHERE entry=15670;

/*  Magnificent Cloak  */
UPDATE `item_template` SET `BuyPrice` = 48912 WHERE entry=15671;

/*  Magnificent Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 60821 WHERE entry=15672;

/*  Magnificent Belt  */
UPDATE `item_template` SET `BuyPrice` = 55375 WHERE entry=15673;

/*  Magnificent Greaves  */
UPDATE `item_template` SET `BuyPrice` = 92321 WHERE entry=15674;

/*  Magnificent Guard  */
UPDATE `item_template` SET `BuyPrice` = 144661, `SellPrice` = 28932, `spellcooldown_1` = -1 WHERE entry=15675;

/*  Magnificent Leggings  */
UPDATE `item_template` SET `BuyPrice` = 129644, `SellPrice` = 25928 WHERE entry=15676;

/*  Magnificent Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 98029, `SellPrice` = 19605 WHERE entry=15677;

/*  Triumphant Sabatons  */
UPDATE `item_template` SET `BuyPrice` = 108468, `SellPrice` = 21693 WHERE entry=15678;

/*  Triumphant Bracers  */
UPDATE `item_template` SET `BuyPrice` = 65540, `SellPrice` = 13108 WHERE entry=15679;

/*  Triumphant Chestpiece  */
UPDATE `item_template` SET `BuyPrice` = 159918, `SellPrice` = 31983 WHERE entry=15680;

/*  Triumphant Cloak  */
UPDATE `item_template` SET `BuyPrice` = 57033 WHERE entry=15681;

/*  Triumphant Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 73050, `SellPrice` = 14610 WHERE entry=15682;

/*  Triumphant Girdle  */
UPDATE `item_template` SET `BuyPrice` = 63333 WHERE entry=15683;

/*  Triumphant Skullcap  */
UPDATE `item_template` SET `BuyPrice` = 115893, `SellPrice` = 23178 WHERE entry=15684;

/*  Triumphant Legplates  */
UPDATE `item_template` SET `BuyPrice` = 147698, `SellPrice` = 29539 WHERE entry=15685;

/*  Triumphant Shoulder Pads  */
UPDATE `item_template` SET `BuyPrice` = 111657, `SellPrice` = 22331 WHERE entry=15686;

/*  Triumphant Shield  */
UPDATE `item_template` SET `BuyPrice` = 162469, `SellPrice` = 32493, `spellcooldown_1` = -1 WHERE entry=15687;

/*  Kodobone Necklace  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15690;

/*  Sidegunner Shottie  */
UPDATE `item_template` SET `BuyPrice` = 34545, `dmg_min1` = 32.0, `dmg_max1` = 61.0 WHERE entry=15691;

/*  Kodo Brander  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15692;

/*  Grand Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 72665 WHERE entry=15693;

/*  Studded Ring Shield  */
UPDATE `item_template` SET `BuyPrice` = 28856, `SellPrice` = 5771, `spellcooldown_1` = -1 WHERE entry=15695;

/*  Kodo Rustler Boots  */
UPDATE `item_template` SET `BuyPrice` = 14129, `SellPrice` = 2825 WHERE entry=15697;

/*  Wrangling Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 21368 WHERE entry=15698;

/*  Chemist's Ring  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15702;

/*  Chemist's Smock  */
UPDATE `item_template` SET `BuyPrice` = 45163, `SellPrice` = 9032 WHERE entry=15703;

/*  Hunter's Insignia Medal  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15704;

/*  Tidecrest Blade  */
UPDATE `item_template` SET `BuyPrice` = 169154, `SellPrice` = 33830 WHERE entry=15705;

/*  Hunt Tracker Blade  */
UPDATE `item_template` SET `BuyPrice` = 169154, `SellPrice` = 33830 WHERE entry=15706;

/*  Brantwood Sash  */
UPDATE `item_template` SET `stat_type1` = 3, `stat_value1` = 9, `stat_type3` = 6, `stat_value3` = 10, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=15707;

/*  Blight Leather Gloves  */
UPDATE `item_template` SET `BuyPrice` = 44825, `SellPrice` = 8965 WHERE entry=15708;

/*  Gearforge Girdle  */
UPDATE `item_template` SET `BuyPrice` = 36352, `SellPrice` = 7270 WHERE entry=15709;

/*  Crystal Breeze Mantle  */
UPDATE `item_template` SET `BuyPrice` = 57705 WHERE entry=15784;

/*  Fernpulse Jerkin  */
UPDATE `item_template` SET `BuyPrice` = 94134, `SellPrice` = 18826 WHERE entry=15786;

/*  Willow Band Hauberk  */
UPDATE `item_template` SET `BuyPrice` = 112961, `SellPrice` = 22592 WHERE entry=15787;

/*  Deep River Cloak  */
UPDATE `item_template` SET `BuyPrice` = 47873, `SellPrice` = 9574 WHERE entry=15789;

/*  Turquoise Sash  */
UPDATE `item_template` SET `BuyPrice` = 35860, `SellPrice` = 7172, `stat_type3` = 3, `stat_value3` = 6, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=15791;

/*  Ripped Ogre Loincloth  */
UPDATE `item_template` SET `armor` = 0, `MaxDurability` = 0 WHERE entry=15794;

/*  Emerald Mist Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 38157, `SellPrice` = 7631 WHERE entry=15795;

/*  Seaspray Bracers  */
UPDATE `item_template` SET `BuyPrice` = 60317 WHERE entry=15796;

/*  Shining Armplates  */
UPDATE `item_template` SET `BuyPrice` = 37653, `SellPrice` = 7530 WHERE entry=15797;

/*  Heroic Commendation Medal  */
UPDATE `item_template` SET `Quality` = 2, `stat_value1` = 12, `stat_type2` = 6, `stat_value2` = 5, `DisenchantID` = 10, `spellcooldown_1` = -1 WHERE entry=15799;

/*  Intrepid Shortsword  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 180413, `SellPrice` = 36082, `dmg_min1` = 50.0, `dmg_max1` = 95.0, `MaxDurability` = 75, `stat_type1` = 7, `stat_value1` = 11, `DisenchantID` = 30 WHERE entry=15800;

/*  Valiant Shortsword  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 179303, `SellPrice` = 35860, `dmg_min1` = 50.0, `dmg_max1` = 95.0, `MaxDurability` = 75, `stat_type1` = 5, `stat_value1` = 11, `DisenchantID` = 30 WHERE entry=15801;

/*  Cerise Drape  */
UPDATE `item_template` SET `BuyPrice` = 47873, `SellPrice` = 9574 WHERE entry=15804;

/*  Penelope's Rose  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=15805;

/*  Mirah's Song  */
UPDATE `item_template` SET `BuyPrice` = 256366, `SellPrice` = 51273, `DisenchantID` = 49 WHERE entry=15806;

/*  Light Crossbow  */
UPDATE `item_template` SET `dmg_min1` = 6.0, `dmg_max1` = 7.0 WHERE entry=15807;

/*  Fine Light Crossbow  */
UPDATE `item_template` SET `BuyPrice` = 3640, `dmg_min1` = 20.0, `dmg_max1` = 20.0 WHERE entry=15808;

/*  Heavy Crossbow  */
UPDATE `item_template` SET `dmg_min1` = 36.0, `dmg_max1` = 37.0 WHERE entry=15809;

/*  Heavy Spear  */
UPDATE `item_template` SET `BuyPrice` = 27132 WHERE entry=15811;

/*  Orchid Amice  */
UPDATE `item_template` SET `BuyPrice` = 47873, `SellPrice` = 9574, `stat_type3` = 4, `stat_value3` = 4, `stat_type4` = 6, `stat_value4` = 3, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 4 WHERE entry=15812;

/*  Gold Link Belt  */
UPDATE `item_template` SET `BuyPrice` = 50568 WHERE entry=15813;

/*  Hameya's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 59304, `SellPrice` = 11860 WHERE entry=15815;

/*  Shadowskin Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 56454, `SellPrice` = 11290 WHERE entry=15822;

/*  Bricksteel Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 45958 WHERE entry=15823;

/*  Astoria Robes  */
UPDATE `item_template` SET `BuyPrice` = 75307, `SellPrice` = 15061, `stat_type3` = 4, `stat_value3` = 5, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=15824;

/*  Traphook Jerkin  */
UPDATE `item_template` SET `BuyPrice` = 96512 WHERE entry=15825;

/*  Jadescale Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 112961, `SellPrice` = 22592 WHERE entry=15827;

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

/*  Freewind Gloves  */
UPDATE `item_template` SET `BuyPrice` = 37653, `SellPrice` = 7530 WHERE entry=15858;

/*  Seapost Girdle  */
UPDATE `item_template` SET `BuyPrice` = 56480, `SellPrice` = 11296 WHERE entry=15859;

/*  Blinkstrike Armguards  */
UPDATE `item_template` SET `BuyPrice` = 39535, `SellPrice` = 7907 WHERE entry=15860;

/*  Swiftfoot Treads  */
UPDATE `item_template` SET `BuyPrice` = 74845 WHERE entry=15861;

/*  Grave Scepter  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15863;

/*  Condor Bracers  */
UPDATE `item_template` SET `BuyPrice` = 9738, `SellPrice` = 1947 WHERE entry=15864;

/*  Anchorhold Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15865;

/*  Ragged John's Neverending Cup  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=15873;

/*  Heroic Guard  */
UPDATE `item_template` SET `BuyPrice` = 147908, `SellPrice` = 29581, `spellcooldown_1` = -1 WHERE entry=15887;

/*  Vanguard Shield  */
UPDATE `item_template` SET `BuyPrice` = 129157, `spellcooldown_1` = -1 WHERE entry=15890;

/*  Hulking Shield  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15891;

/*  Slayer's Shield  */
UPDATE `item_template` SET `BuyPrice` = 17911 WHERE entry=15892;

/*  Prospector's Buckler  */
UPDATE `item_template` SET `BuyPrice` = 5410, `spellcooldown_1` = -1 WHERE entry=15893;

/*  Bristlebark Buckler  */
UPDATE `item_template` SET `BuyPrice` = 9010 WHERE entry=15894;

/*  Burnt Buckler  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=15895;

/*  Right-Handed Claw  */
UPDATE `item_template` SET `BuyPrice` = 8117 WHERE entry=15903;

/*  Conjurer's Sphere  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=15918;

/*  Hibernal Sphere  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `spellcooldown_2` = -1, `spellcategorycooldown_2` = -1, `spellcooldown_3` = -1, `spellcategorycooldown_3` = -1 WHERE entry=15937;

/*  Imbued Shield  */
UPDATE `item_template` SET `BuyPrice` = 138761, `SellPrice` = 27752, `spellcooldown_1` = -1 WHERE entry=15943;

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
UPDATE `item_template` SET `BuyPrice` = 146151, `SellPrice` = 29230, `spellcooldown_1` = -1 WHERE entry=15991;

/*  Thorium Rifle  */
UPDATE `item_template` SET `BuyPrice` = 98697, `dmg_min1` = 42.0, `dmg_max1` = 79.0 WHERE entry=15995;

/*  Spellpower Goggles Xtreme Plus  */
UPDATE `item_template` SET `BuyPrice` = 45014, `SellPrice` = 9002 WHERE entry=15999;

/*  Dark Iron Rifle  */
UPDATE `item_template` SET `dmg_min1` = 53.0, `dmg_max1` = 100.0 WHERE entry=16004;

/*  Flawless Arcanite Rifle  */
UPDATE `item_template` SET `BuyPrice` = 203125, `SellPrice` = 40625, `dmg_min1` = 65.0, `dmg_max1` = 122.0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 49, `spellid_1` = 7581 WHERE entry=16007;

/*  Master Engineer's Goggles  */
UPDATE `item_template` SET `BuyPrice` = 58696 WHERE entry=16008;

/*  Voice Amplification Modulator  */
UPDATE `item_template` SET `spellid_1` = 19786 WHERE entry=16009;

/*  PVP Plate Helm Alliance  */
UPDATE `item_template` SET `armor` = 440, `BuyPrice` = 35802, `SellPrice` = 7160, `MaxDurability` = 70 WHERE entry=16026;

/*  Ta'Kierthan Songblade  */
UPDATE `item_template` SET `BuyPrice` = 267990 WHERE entry=16039;

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
UPDATE `item_template` SET `BuyPrice` = 40000, `SellPrice` = 10000, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=16335;

/*  Sergeant Major's Cape  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=16336;

/*  Sergeant Major's Cape  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=16337;

/*  First Sergeant's Cloak  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=16340;

/*  Sergeant's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 21425, `SellPrice` = 4285 WHERE entry=16341;

/*  Sergeant's Cape  */
UPDATE `item_template` SET `BuyPrice` = 44154, `SellPrice` = 8830 WHERE entry=16342;

/*  High Warlord's Blade  */
UPDATE `item_template` SET `BuyPrice` = 247416, `SellPrice` = 49483 WHERE entry=16345;

/*  Knight-Lieutenant's Silk Boots  */
UPDATE `item_template` SET `BuyPrice` = 42081, `SellPrice` = 8416 WHERE entry=16369;

/*  Knight-Lieutenant's Silk Gloves  */
UPDATE `item_template` SET `BuyPrice` = 28261, `SellPrice` = 5652 WHERE entry=16391;

/*  Knight-Lieutenant's Leather Boots  */
UPDATE `item_template` SET `BuyPrice` = 53190, `SellPrice` = 10638 WHERE entry=16392;

/*  Knight-Lieutenant's Dragonhide Footwraps  */
UPDATE `item_template` SET `BuyPrice` = 53384, `SellPrice` = 10676 WHERE entry=16393;

/*  Knight-Lieutenant's Leather Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 36942, `SellPrice` = 7388 WHERE entry=16396;

/*  Knight-Lieutenant's Dragonhide Gloves  */
UPDATE `item_template` SET `BuyPrice` = 37072, `SellPrice` = 7414 WHERE entry=16397;

/*  Knight-Lieutenant's Chain Boots  */
UPDATE `item_template` SET `BuyPrice` = 67983, `SellPrice` = 13596, `stat_value2` = 10, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16401;

/*  Knight-Lieutenant's Chain Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 41118, `SellPrice` = 8223, `stat_value2` = 11, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16403;

/*  Knight-Lieutenant's Plate Boots  */
UPDATE `item_template` SET `BuyPrice` = 41433, `SellPrice` = 8286 WHERE entry=16405;

/*  Knight-Lieutenant's Plate Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 27728, `SellPrice` = 5545 WHERE entry=16406;

/*  Knight-Lieutenant's Lamellar Sabatons  */
UPDATE `item_template` SET `BuyPrice` = 42068, `SellPrice` = 8413 WHERE entry=16409;

/*  Knight-Lieutenant's Lamellar Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 28152, `SellPrice` = 5630 WHERE entry=16410;

/*  Knight-Captain's Silk Raiment  */
UPDATE `item_template` SET `BuyPrice` = 58463, `SellPrice` = 11692 WHERE entry=16413;

/*  Knight-Captain's Silk Leggings  */
UPDATE `item_template` SET `BuyPrice` = 58676, `SellPrice` = 11735 WHERE entry=16414;

/*  Lieutenant Commander's Silk Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 44167, `SellPrice` = 8833 WHERE entry=16415;

/*  Lieutenant Commander's Crown  */
UPDATE `item_template` SET `BuyPrice` = 44322, `SellPrice` = 8864 WHERE entry=16416;

/*  Knight-Captain's Leather Armor  */
UPDATE `item_template` SET `BuyPrice` = 74137, `SellPrice` = 14827 WHERE entry=16417;

/*  Lieutenant Commander's Leather Veil  */
UPDATE `item_template` SET `BuyPrice` = 55802, `SellPrice` = 11160 WHERE entry=16418;

/*  Knight-Captain's Leather Legguards  */
UPDATE `item_template` SET `BuyPrice` = 74670, `SellPrice` = 14934 WHERE entry=16419;

/*  Lieutenant Commander's Leather Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 56197, `SellPrice` = 11239 WHERE entry=16420;

/*  Knight-Captain's Dragonhide Tunic  */
UPDATE `item_template` SET `BuyPrice` = 75195, `SellPrice` = 15039 WHERE entry=16421;

/*  Knight-Captain's Dragonhide Leggings  */
UPDATE `item_template` SET `BuyPrice` = 75461, `SellPrice` = 15092 WHERE entry=16422;

/*  Lieutenant Commander's Dragonhide Epaulets  */
UPDATE `item_template` SET `BuyPrice` = 51392, `SellPrice` = 10278 WHERE entry=16423;

/*  Lieutenant Commander's Dragonhide Shroud  */
UPDATE `item_template` SET `BuyPrice` = 51586, `SellPrice` = 10317 WHERE entry=16424;

/*  Knight-Captain's Chain Hauberk  */
UPDATE `item_template` SET `BuyPrice` = 82858, `SellPrice` = 16571, `stat_value2` = 16, `spellid_1` = 9334 WHERE entry=16425;

/*  Knight-Captain's Chain Leggings  */
UPDATE `item_template` SET `BuyPrice` = 83178, `SellPrice` = 16635, `stat_value1` = 18, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=16426;

/*  Lieutenant Commander's Chain Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 64619, `SellPrice` = 12923, `stat_value2` = 10, `spellid_1` = 9141 WHERE entry=16427;

/*  Lieutenant Commander's Chain Helmet  */
UPDATE `item_template` SET `BuyPrice` = 64573, `SellPrice` = 12914, `stat_value2` = 15, `spellid_1` = 9141 WHERE entry=16428;

/*  Lieutenant Commander's Plate Helm  */
UPDATE `item_template` SET `BuyPrice` = 43208, `SellPrice` = 8641 WHERE entry=16429;

/*  Knight-Captain's Plate Chestguard  */
UPDATE `item_template` SET `BuyPrice` = 57824, `SellPrice` = 11564 WHERE entry=16430;

/*  Knight-Captain's Plate Leggings  */
UPDATE `item_template` SET `BuyPrice` = 58031, `SellPrice` = 11606 WHERE entry=16431;

/*  Lieutenant Commander's Plate Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 43683, `SellPrice` = 8736 WHERE entry=16432;

/*  Knight-Captain's Lamellar Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 58457, `SellPrice` = 11691 WHERE entry=16433;

/*  Lieutenant Commander's Lamellar Headguard  */
UPDATE `item_template` SET `BuyPrice` = 44003, `SellPrice` = 8800 WHERE entry=16434;

/*  Knight-Captain's Lamellar Leggings  */
UPDATE `item_template` SET `BuyPrice` = 58878, `SellPrice` = 11775 WHERE entry=16435;

/*  Lieutenant Commander's Lamellar Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 44318, `SellPrice` = 8863 WHERE entry=16436;

/*  Marshal's Silk Footwraps  */
UPDATE `item_template` SET `armor` = 115, `BuyPrice` = 87619, `SellPrice` = 17523 WHERE entry=16437;

/*  Marshal's Silk Gloves  */
UPDATE `item_template` SET `armor` = 108, `BuyPrice` = 59036, `SellPrice` = 11807 WHERE entry=16440;

/*  Field Marshal's Coronet  */
UPDATE `item_template` SET `armor` = 162, `BuyPrice` = 102878, `SellPrice` = 20575 WHERE entry=16441;

/*  Marshal's Silk Leggings  */
UPDATE `item_template` SET `armor` = 155, `BuyPrice` = 118901, `SellPrice` = 23780 WHERE entry=16442;

/*  Field Marshal's Silk Vestments  */
UPDATE `item_template` SET `armor` = 183, `BuyPrice` = 128464, `SellPrice` = 25692 WHERE entry=16443;

/*  Field Marshal's Silk Spaulders  */
UPDATE `item_template` SET `armor` = 135, `BuyPrice` = 96713, `SellPrice` = 19342 WHERE entry=16444;

/*  Marshal's Leather Footguards  */
UPDATE `item_template` SET `armor` = 186, `BuyPrice` = 105206, `SellPrice` = 21041 WHERE entry=16446;

/*  Marshal's Dragonhide Gauntlets  */
UPDATE `item_template` SET `armor` = 173, `BuyPrice` = 70662, `SellPrice` = 14132 WHERE entry=16448;

/*  Field Marshal's Dragonhide Spaulders  */
UPDATE `item_template` SET `armor` = 215, `BuyPrice` = 123156, `SellPrice` = 24631 WHERE entry=16449;

/*  Marshal's Dragonhide Legguards  */
UPDATE `item_template` SET `armor` = 216, `BuyPrice` = 142360, `SellPrice` = 28472, `spelltrigger_2` = 0 WHERE entry=16450;

/*  Field Marshal's Dragonhide Helmet  */
UPDATE `item_template` SET `armor` = 209, `BuyPrice` = 124055, `SellPrice` = 24811 WHERE entry=16451;

/*  Field Marshal's Dragonhide Breastplate  */
UPDATE `item_template` SET `armor` = 260, `BuyPrice` = 166014, `SellPrice` = 33202, `spelltrigger_3` = 0 WHERE entry=16452;

/*  Field Marshal's Leather Chestpiece  */
UPDATE `item_template` SET `armor` = 260, `BuyPrice` = 166621, `SellPrice` = 33324 WHERE entry=16453;

/*  Marshal's Leather Handgrips  */
UPDATE `item_template` SET `armor` = 193, `BuyPrice` = 72222, `SellPrice` = 14444 WHERE entry=16454;

/*  Field Marshal's Leather Mask  */
UPDATE `item_template` SET `armor` = 229, `BuyPrice` = 125864, `SellPrice` = 25172, `spelltrigger_3` = 0 WHERE entry=16455;

/*  Marshal's Leather Leggings  */
UPDATE `item_template` SET `armor` = 236, `BuyPrice` = 145493, `SellPrice` = 29098 WHERE entry=16456;

/*  Field Marshal's Leather Epaulets  */
UPDATE `item_template` SET `armor` = 215, `BuyPrice` = 126763, `SellPrice` = 25352 WHERE entry=16457;

/*  Marshal's Dragonhide Boots  */
UPDATE `item_template` SET `armor` = 176, `BuyPrice` = 102463, `SellPrice` = 20492 WHERE entry=16459;

/*  Marshal's Chain Boots  */
UPDATE `item_template` SET `armor` = 361, `BuyPrice` = 124912, `SellPrice` = 24982, `stat_value2` = 26, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16462;

/*  Marshal's Chain Grips  */
UPDATE `item_template` SET `armor` = 323, `BuyPrice` = 83221, `SellPrice` = 16644, `stat_value2` = 21, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=16463;

/*  Field Marshal's Chain Helm  */
UPDATE `item_template` SET `armor` = 432, `BuyPrice` = 145586, `SellPrice` = 29117, `stat_value2` = 34, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16465;

/*  Field Marshal's Chain Breastplate  */
UPDATE `item_template` SET `armor` = 520, `BuyPrice` = 194844, `SellPrice` = 38968, `stat_value2` = 34, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=16466;

/*  Marshal's Chain Legguards  */
UPDATE `item_template` SET `armor` = 446, `BuyPrice` = 168943, `SellPrice` = 33788, `stat_value1` = 34, `spellid_2` = 0, `spelltrigger_2` = 0, `spelltrigger_3` = 0 WHERE entry=16467;

/*  Field Marshal's Chain Spaulders  */
UPDATE `item_template` SET `armor` = 403, `BuyPrice` = 147880, `SellPrice` = 29576, `stat_value2` = 26, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16468;

/*  Marshal's Lamellar Gloves  */
UPDATE `item_template` SET `armor` = 502, `BuyPrice` = 57148, `SellPrice` = 11429 WHERE entry=16471;

/*  Marshal's Lamellar Boots  */
UPDATE `item_template` SET `armor` = 552, `BuyPrice` = 86028, `SellPrice` = 17205 WHERE entry=16472;

/*  Field Marshal's Lamellar Chestplate  */
UPDATE `item_template` SET `armor` = 835, `BuyPrice` = 133270, `SellPrice` = 26654 WHERE entry=16473;

/*  Field Marshal's Lamellar Faceguard  */
UPDATE `item_template` SET `armor` = 679, `BuyPrice` = 100317, `SellPrice` = 20063 WHERE entry=16474;

/*  Marshal's Lamellar Legplates  */
UPDATE `item_template` SET `armor` = 703, `BuyPrice` = 118969, `SellPrice` = 23793 WHERE entry=16475;

/*  Field Marshal's Lamellar Pauldrons  */
UPDATE `item_template` SET `armor` = 626, `BuyPrice` = 93787, `SellPrice` = 18757 WHERE entry=16476;

/*  Field Marshal's Plate Armor  */
UPDATE `item_template` SET `armor` = 875, `BuyPrice` = 125536, `SellPrice` = 25107 WHERE entry=16477;

/*  Field Marshal's Plate Helm  */
UPDATE `item_template` SET `armor` = 719, `BuyPrice` = 94516, `SellPrice` = 18903 WHERE entry=16478;

/*  Marshal's Plate Legguards  */
UPDATE `item_template` SET `armor` = 743, `BuyPrice` = 109282, `SellPrice` = 21856 WHERE entry=16479;

/*  Field Marshal's Plate Shoulderguards  */
UPDATE `item_template` SET `armor` = 626, `BuyPrice` = 95235, `SellPrice` = 19047 WHERE entry=16480;

/*  Marshal's Plate Boots  */
UPDATE `item_template` SET `armor` = 592, `BuyPrice` = 83212, `SellPrice` = 16642 WHERE entry=16483;

/*  Marshal's Plate Gauntlets  */
UPDATE `item_template` SET `armor` = 532, `BuyPrice` = 55679, `SellPrice` = 11135 WHERE entry=16484;

/*  Blood Guard's Silk Footwraps  */
UPDATE `item_template` SET `BuyPrice` = 42556, `SellPrice` = 8511 WHERE entry=16485;

/*  First Sergeant's Silk Cuffs  */
UPDATE `item_template` SET `BuyPrice` = 28477, `SellPrice` = 5695 WHERE entry=16486;

/*  Blood Guard's Silk Gloves  */
UPDATE `item_template` SET `BuyPrice` = 28584, `SellPrice` = 5716 WHERE entry=16487;

/*  Champion's Silk Hood  */
UPDATE `item_template` SET `BuyPrice` = 43191, `SellPrice` = 8638 WHERE entry=16489;

/*  Legionnaire's Silk Pants  */
UPDATE `item_template` SET `BuyPrice` = 57801, `SellPrice` = 11560 WHERE entry=16490;

/*  Legionnaire's Silk Robes  */
UPDATE `item_template` SET `BuyPrice` = 59534, `SellPrice` = 11906 WHERE entry=16491;

/*  Champion's Silk Shoulderpads  */
UPDATE `item_template` SET `BuyPrice` = 44810, `SellPrice` = 8962 WHERE entry=16492;

/*  Blood Guard's Dragonhide Boots  */
UPDATE `item_template` SET `BuyPrice` = 56412, `SellPrice` = 11282 WHERE entry=16494;

/*  Blood Guard's Dragonhide Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 34268, `SellPrice` = 6853 WHERE entry=16496;

/*  First Sergeant's Leather Armguards  */
UPDATE `item_template` SET `BuyPrice` = 34402, `SellPrice` = 6880 WHERE entry=16497;

/*  Blood Guard's Leather Treads  */
UPDATE `item_template` SET `BuyPrice` = 51802, `SellPrice` = 10360 WHERE entry=16498;

/*  Blood Guard's Leather Vices  */
UPDATE `item_template` SET `BuyPrice` = 34664, `SellPrice` = 6932 WHERE entry=16499;

/*  Champion's Dragonhide Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 52396, `SellPrice` = 10479 WHERE entry=16501;

/*  Legionnaire's Dragonhide Trousers  */
UPDATE `item_template` SET `BuyPrice` = 70128, `SellPrice` = 14025 WHERE entry=16502;

/*  Champion's Dragonhide Helm  */
UPDATE `item_template` SET `BuyPrice` = 52790, `SellPrice` = 10558 WHERE entry=16503;

/*  Legionnaire's Dragonhide Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 70653, `SellPrice` = 14130 WHERE entry=16504;

/*  Legionnaire's Leather Hauberk  */
UPDATE `item_template` SET `BuyPrice` = 70920, `SellPrice` = 14184 WHERE entry=16505;

/*  Champion's Leather Headguard  */
UPDATE `item_template` SET `BuyPrice` = 53384, `SellPrice` = 10676 WHERE entry=16506;

/*  Champion's Leather Mantle  */
UPDATE `item_template` SET `BuyPrice` = 55014, `SellPrice` = 11002 WHERE entry=16507;

/*  Legionnaire's Leather Leggings  */
UPDATE `item_template` SET `BuyPrice` = 73619, `SellPrice` = 14723 WHERE entry=16508;

/*  Blood Guard's Plate Boots  */
UPDATE `item_template` SET `BuyPrice` = 44331, `SellPrice` = 8866 WHERE entry=16509;

/*  Blood Guard's Plate Gloves  */
UPDATE `item_template` SET `BuyPrice` = 29657, `SellPrice` = 5931 WHERE entry=16510;

/*  Legionnaire's Plate Armor  */
UPDATE `item_template` SET `BuyPrice` = 59955, `SellPrice` = 11991 WHERE entry=16513;

/*  Champion's Plate Headguard  */
UPDATE `item_template` SET `BuyPrice` = 45121, `SellPrice` = 9024 WHERE entry=16514;

/*  Legionnaire's Plate Legguards  */
UPDATE `item_template` SET `BuyPrice` = 60375, `SellPrice` = 12075 WHERE entry=16515;

/*  Champion's Plate Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 41118, `SellPrice` = 8223 WHERE entry=16516;

/*  Blood Guard's Mail Walkers  */
UPDATE `item_template` SET `BuyPrice` = 62426, `SellPrice` = 12485 WHERE entry=16518;

/*  Blood Guard's Mail Grips  */
UPDATE `item_template` SET `BuyPrice` = 41593, `SellPrice` = 8318 WHERE entry=16519;

/*  Champion's Mail Helm  */
UPDATE `item_template` SET `BuyPrice` = 62862, `SellPrice` = 12572 WHERE entry=16521;

/*  Legionnaire's Mail Chestpiece  */
UPDATE `item_template` SET `BuyPrice` = 84136, `SellPrice` = 16827 WHERE entry=16522;

/*  Legionnaire's Mail Leggings  */
UPDATE `item_template` SET `BuyPrice` = 86745, `SellPrice` = 17349 WHERE entry=16523;

/*  Champion's Mail Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 65588, `SellPrice` = 13117 WHERE entry=16524;

/*  Legionnaire's Chain Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 87375, `SellPrice` = 17475, `stat_value2` = 16, `spellid_1` = 9334 WHERE entry=16525;

/*  Champion's Chain Headguard  */
UPDATE `item_template` SET `BuyPrice` = 65771, `SellPrice` = 13154, `stat_value2` = 15, `spellid_1` = 9141 WHERE entry=16526;

/*  Legionnaire's Chain Leggings  */
UPDATE `item_template` SET `BuyPrice` = 88015, `SellPrice` = 17603, `stat_value1` = 18, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=16527;

/*  Champion's Chain Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 66545, `SellPrice` = 13309, `stat_value2` = 10, `spellid_1` = 9141 WHERE entry=16528;

/*  Blood Guard's Chain Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 44482, `SellPrice` = 8896, `stat_value2` = 11, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16530;

/*  Blood Guard's Chain Boots  */
UPDATE `item_template` SET `BuyPrice` = 67261, `SellPrice` = 13452, `stat_value2` = 10, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16531;

/*  First Sergeant's Mail Wristguards  */
UPDATE `item_template` SET `BuyPrice` = 44802, `SellPrice` = 8960 WHERE entry=16532;

/*  Warlord's Silk Cowl  */
UPDATE `item_template` SET `armor` = 162, `BuyPrice` = 102523, `SellPrice` = 20504 WHERE entry=16533;

/*  General's Silk Trousers  */
UPDATE `item_template` SET `armor` = 155, `BuyPrice` = 118504, `SellPrice` = 23700 WHERE entry=16534;

/*  Warlord's Silk Raiment  */
UPDATE `item_template` SET `armor` = 183, `BuyPrice` = 137669, `SellPrice` = 27533 WHERE entry=16535;

/*  Warlord's Silk Amice  */
UPDATE `item_template` SET `armor` = 135, `BuyPrice` = 93758, `SellPrice` = 18751 WHERE entry=16536;

/*  General's Silk Boots  */
UPDATE `item_template` SET `armor` = 115, `BuyPrice` = 84182, `SellPrice` = 16836 WHERE entry=16539;

/*  General's Silk Handguards  */
UPDATE `item_template` SET `armor` = 108, `BuyPrice` = 56325, `SellPrice` = 11265 WHERE entry=16540;

/*  Warlord's Plate Armor  */
UPDATE `item_template` SET `armor` = 875, `BuyPrice` = 130894, `SellPrice` = 26178 WHERE entry=16541;

/*  Warlord's Plate Headpiece  */
UPDATE `item_template` SET `armor` = 719, `BuyPrice` = 98535, `SellPrice` = 19707 WHERE entry=16542;

/*  General's Plate Leggings  */
UPDATE `item_template` SET `armor` = 743, `BuyPrice` = 113910, `SellPrice` = 22782 WHERE entry=16543;

/*  Warlord's Plate Shoulders  */
UPDATE `item_template` SET `armor` = 626, `BuyPrice` = 99253, `SellPrice` = 19850 WHERE entry=16544;

/*  General's Plate Boots  */
UPDATE `item_template` SET `armor` = 592, `BuyPrice` = 86054, `SellPrice` = 17210 WHERE entry=16545;

/*  General's Plate Gauntlets  */
UPDATE `item_template` SET `armor` = 532, `BuyPrice` = 57993, `SellPrice` = 11598 WHERE entry=16548;

/*  Warlord's Dragonhide Hauberk  */
UPDATE `item_template` SET `armor` = 260, `BuyPrice` = 168443, `SellPrice` = 33688, `spelltrigger_3` = 0 WHERE entry=16549;

/*  Warlord's Dragonhide Helmet  */
UPDATE `item_template` SET `armor` = 209, `BuyPrice` = 126788, `SellPrice` = 25357 WHERE entry=16550;

/*  Warlord's Dragonhide Epaulets  */
UPDATE `item_template` SET `armor` = 215, `BuyPrice` = 127243, `SellPrice` = 25448 WHERE entry=16551;

/*  General's Dragonhide Leggings  */
UPDATE `item_template` SET `armor` = 216, `BuyPrice` = 147067, `SellPrice` = 29413, `spelltrigger_2` = 0 WHERE entry=16552;

/*  General's Dragonhide Boots  */
UPDATE `item_template` SET `armor` = 176, `BuyPrice` = 111087, `SellPrice` = 22217 WHERE entry=16554;

/*  General's Dragonhide Gloves  */
UPDATE `item_template` SET `armor` = 173, `BuyPrice` = 69095, `SellPrice` = 13819 WHERE entry=16555;

/*  General's Leather Treads  */
UPDATE `item_template` SET `armor` = 186, `BuyPrice` = 104823, `SellPrice` = 20964 WHERE entry=16558;

/*  General's Leather Mitts  */
UPDATE `item_template` SET `armor` = 193, `BuyPrice` = 70400, `SellPrice` = 14080 WHERE entry=16560;

/*  Warlord's Leather Helm  */
UPDATE `item_template` SET `armor` = 229, `BuyPrice` = 122700, `SellPrice` = 24540, `spelltrigger_3` = 0 WHERE entry=16561;

/*  Warlord's Leather Spaulders  */
UPDATE `item_template` SET `armor` = 215, `BuyPrice` = 123156, `SellPrice` = 24631 WHERE entry=16562;

/*  Warlord's Leather Breastplate  */
UPDATE `item_template` SET `armor` = 260, `BuyPrice` = 164799, `SellPrice` = 32959 WHERE entry=16563;

/*  General's Leather Legguards  */
UPDATE `item_template` SET `armor` = 236, `BuyPrice` = 142884, `SellPrice` = 28576 WHERE entry=16564;

/*  Warlord's Chain Chestpiece  */
UPDATE `item_template` SET `armor` = 520, `BuyPrice` = 199217, `SellPrice` = 39843, `stat_value1` = 34, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=16565;

/*  Warlord's Chain Helmet  */
UPDATE `item_template` SET `armor` = 432, `BuyPrice` = 149959, `SellPrice` = 29991, `stat_value1` = 34, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16566;

/*  General's Chain Legguards  */
UPDATE `item_template` SET `armor` = 446, `BuyPrice` = 173333, `SellPrice` = 34666, `stat_value1` = 34, `spellid_2` = 0, `spelltrigger_2` = 0, `spelltrigger_3` = 0 WHERE entry=16567;

/*  Warlord's Chain Shoulders  */
UPDATE `item_template` SET `armor` = 403, `BuyPrice` = 151709, `SellPrice` = 30341, `stat_value1` = 26, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16568;

/*  General's Chain Boots  */
UPDATE `item_template` SET `armor` = 361, `BuyPrice` = 131526, `SellPrice` = 26305, `stat_value1` = 26, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16569;

/*  General's Chain Gloves  */
UPDATE `item_template` SET `armor` = 323, `BuyPrice` = 81655, `SellPrice` = 16331, `stat_value1` = 21, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=16571;

/*  General's Mail Boots  */
UPDATE `item_template` SET `armor` = 311, `BuyPrice` = 123976, `SellPrice` = 24795 WHERE entry=16573;

/*  General's Mail Gauntlets  */
UPDATE `item_template` SET `armor` = 353, `BuyPrice` = 82591, `SellPrice` = 16518 WHERE entry=16574;

/*  Warlord's Mail Armor  */
UPDATE `item_template` SET `armor` = 470, `BuyPrice` = 193406, `SellPrice` = 38681, `stat_type4` = 0, `stat_value4` = 0, `spellid_1` = 7597, `spellid_2` = 18384 WHERE entry=16577;

/*  Warlord's Mail Helm  */
UPDATE `item_template` SET `armor` = 382, `BuyPrice` = 145586, `SellPrice` = 29117, `stat_type4` = 0, `stat_value4` = 0, `spellid_1` = 7597, `spellid_2` = 18384 WHERE entry=16578;

/*  General's Mail Leggings  */
UPDATE `item_template` SET `armor` = 396, `BuyPrice` = 168313, `SellPrice` = 33662 WHERE entry=16579;

/*  Warlord's Mail Spaulders  */
UPDATE `item_template` SET `armor` = 353, `BuyPrice` = 147331, `SellPrice` = 29466 WHERE entry=16580;

/*  Moon Robes of Elune  */
UPDATE `item_template` SET `BuyPrice` = 86 WHERE entry=16604;

/*  Acolyte's Sacrificial Robes  */
UPDATE `item_template` SET `BuyPrice` = 80, `SellPrice` = 16 WHERE entry=16607;

/*  Aquarius Belt  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 40, `BuyPrice` = 969, `SellPrice` = 193, `ItemLevel` = 16, `MaxDurability` = 20, `stat_type1` = 7, `stat_value1` = 2, `stat_type2` = 5, `stat_value2` = 2, `DisenchantID` = 2, `spellid_1` = 0, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=16608;

/*  Thornflinger  */
UPDATE `item_template` SET `BuyPrice` = 136535, `dmg_min1` = 52.0, `dmg_max1` = 97.0 WHERE entry=16622;

/*  Opaline Medallion  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=16623;

/*  Wildhunter Cloak  */
UPDATE `item_template` SET `BuyPrice` = 8246 WHERE entry=16658;

/*  Soft Willow Cape  */
UPDATE `item_template` SET `BuyPrice` = 4828, `SellPrice` = 965 WHERE entry=16661;

/*  Ornate Bracers  */
UPDATE `item_template` SET `armor` = 128, `BuyPrice` = 46171, `MaxDurability` = 35 WHERE entry=16664;

/*  Vest of Elements  */
UPDATE `item_template` SET `BuyPrice` = 179813, `SellPrice` = 35962, `DisenchantID` = 49 WHERE entry=16666;

/*  Coif of Elements  */
UPDATE `item_template` SET `BuyPrice` = 128894, `SellPrice` = 25778, `DisenchantID` = 49 WHERE entry=16667;

/*  Kilt of Elements  */
UPDATE `item_template` SET `BuyPrice` = 152707, `SellPrice` = 30541, `DisenchantID` = 49 WHERE entry=16668;

/*  Pauldrons of Elements  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16669;

/*  Beaststalker's Tunic  */
UPDATE `item_template` SET `BuyPrice` = 172177, `SellPrice` = 34435, `stat_value1` = 21, `DisenchantID` = 49, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=16674;

/*  Beaststalker's Boots  */
UPDATE `item_template` SET `stat_value1` = 21, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=16675;

/*  Beaststalker's Gloves  */
UPDATE `item_template` SET `stat_value1` = 14, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=16676;

/*  Beaststalker's Cap  */
UPDATE `item_template` SET `BuyPrice` = 124341, `SellPrice` = 24868, `stat_value1` = 20, `DisenchantID` = 49, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=16677;

/*  Beaststalker's Pants  */
UPDATE `item_template` SET `BuyPrice` = 158473, `SellPrice` = 31694, `stat_value1` = 26, `DisenchantID` = 49, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=16678;

/*  Beaststalker's Mantle  */
UPDATE `item_template` SET `stat_value2` = 11, `DisenchantID` = 49, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=16679;

/*  Beaststalker's Belt  */
UPDATE `item_template` SET `stat_type1` = 6, `stat_value2` = 10, `stat_type4` = 4, `stat_value4` = 9, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=16680;

/*  Beaststalker's Bindings  */
UPDATE `item_template` SET `stat_value1` = 15, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=16681;

/*  Magister's Crown  */
UPDATE `item_template` SET `BuyPrice` = 79562, `SellPrice` = 15912, `DisenchantID` = 49 WHERE entry=16686;

/*  Magister's Leggings  */
UPDATE `item_template` SET `BuyPrice` = 101408, `SellPrice` = 20281, `DisenchantID` = 49 WHERE entry=16687;

/*  Magister's Robes  */
UPDATE `item_template` SET `BuyPrice` = 112228, `SellPrice` = 22445, `DisenchantID` = 49 WHERE entry=16688;

/*  Magister's Mantle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16689;

/*  Devout Robe  */
UPDATE `item_template` SET `BuyPrice` = 113080, `SellPrice` = 22616, `DisenchantID` = 49 WHERE entry=16690;

/*  Devout Crown  */
UPDATE `item_template` SET `BuyPrice` = 81676, `SellPrice` = 16335, `DisenchantID` = 49 WHERE entry=16693;

/*  Devout Skirt  */
UPDATE `item_template` SET `BuyPrice` = 104103, `SellPrice` = 20820, `DisenchantID` = 49 WHERE entry=16694;

/*  Devout Mantle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16695;

/*  Devout Belt  */
UPDATE `item_template` SET `BuyPrice` = 45292 WHERE entry=16696;

/*  Devout Bracers  */
UPDATE `item_template` SET `BuyPrice` = 42886 WHERE entry=16697;

/*  Dreadmist Mask  */
UPDATE `item_template` SET `BuyPrice` = 83182, `SellPrice` = 16636, `DisenchantID` = 49 WHERE entry=16698;

/*  Dreadmist Leggings  */
UPDATE `item_template` SET `BuyPrice` = 106014, `SellPrice` = 21202, `DisenchantID` = 49 WHERE entry=16699;

/*  Dreadmist Robe  */
UPDATE `item_template` SET `BuyPrice` = 120358, `SellPrice` = 24071, `DisenchantID` = 49 WHERE entry=16700;

/*  Dreadmist Mantle  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16701;

/*  Dreadmist Belt  */
UPDATE `item_template` SET `BuyPrice` = 42964, `SellPrice` = 8592 WHERE entry=16702;

/*  Wildheart Vest  */
UPDATE `item_template` SET `BuyPrice` = 139205, `SellPrice` = 27841, `DisenchantID` = 49 WHERE entry=16706;

/*  Shadowcraft Cap  */
UPDATE `item_template` SET `BuyPrice` = 99813, `SellPrice` = 19962, `stat_type3` = 4, `stat_value3` = 13, `stat_type4` = 6, `DisenchantID` = 49 WHERE entry=16707;

/*  Shadowcraft Spaulders  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=16708;

/*  Shadowcraft Pants  */
UPDATE `item_template` SET `BuyPrice` = 127712, `SellPrice` = 25542, `DisenchantID` = 49 WHERE entry=16709;

/*  Shadowcraft Gloves  */
UPDATE `item_template` SET `stat_type2` = 6, `stat_value2` = 10, `stat_type4` = 4 WHERE entry=16712;

/*  Shadowcraft Belt  */
UPDATE `item_template` SET `BuyPrice` = 55984, `SellPrice` = 11196, `stat_type3` = 6, `stat_type4` = 4, `stat_value4` = 9 WHERE entry=16713;

/*  Wildheart Bracers  */
UPDATE `item_template` SET `BuyPrice` = 53012 WHERE entry=16714;

/*  Wildheart Belt  */
UPDATE `item_template` SET `BuyPrice` = 58104, `SellPrice` = 11620 WHERE entry=16716;

/*  Wildheart Gloves  */
UPDATE `item_template` SET `BuyPrice` = 61223 WHERE entry=16717;

/*  Wildheart Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 96772, `stat_type1` = 5, `stat_value1` = 18, `stat_type2` = 7, `stat_value2` = 9, `stat_type3` = 6, `stat_value3` = 8, `DisenchantID` = 49 WHERE entry=16718;

/*  Wildheart Kilt  */
UPDATE `item_template` SET `BuyPrice` = 135964, `SellPrice` = 27192, `DisenchantID` = 49 WHERE entry=16719;

/*  Wildheart Cowl  */
UPDATE `item_template` SET `BuyPrice` = 107453, `SellPrice` = 21490, `DisenchantID` = 49 WHERE entry=16720;

/*  Shadowcraft Tunic  */
UPDATE `item_template` SET `BuyPrice` = 150952, `SellPrice` = 30190, `stat_type3` = 6, `DisenchantID` = 49 WHERE entry=16721;

/*  Lightforge Bracers  */
UPDATE `item_template` SET `BuyPrice` = 40528, `SellPrice` = 8105 WHERE entry=16722;

/*  Lightforge Belt  */
UPDATE `item_template` SET `BuyPrice` = 43127, `SellPrice` = 8625 WHERE entry=16723;

/*  Lightforge Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 45459, `SellPrice` = 9091 WHERE entry=16724;

/*  Lightforge Boots  */
UPDATE `item_template` SET `BuyPrice` = 68444, `SellPrice` = 13688 WHERE entry=16725;

/*  Lightforge Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 111353, `SellPrice` = 22270, `DisenchantID` = 49 WHERE entry=16726;

/*  Lightforge Helm  */
UPDATE `item_template` SET `BuyPrice` = 79842, `SellPrice` = 15968, `DisenchantID` = 49 WHERE entry=16727;

/*  Lightforge Legplates  */
UPDATE `item_template` SET `BuyPrice` = 101773, `SellPrice` = 20354, `DisenchantID` = 49 WHERE entry=16728;

/*  Lightforge Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 72964, `SellPrice` = 14592, `DisenchantID` = 49 WHERE entry=16729;

/*  Breastplate of Valor  */
UPDATE `item_template` SET `BuyPrice` = 113045, `SellPrice` = 22609, `DisenchantID` = 49 WHERE entry=16730;

/*  Helm of Valor  */
UPDATE `item_template` SET `BuyPrice` = 81051, `SellPrice` = 16210, `DisenchantID` = 49 WHERE entry=16731;

/*  Legplates of Valor  */
UPDATE `item_template` SET `BuyPrice` = 106066, `SellPrice` = 21213, `DisenchantID` = 49 WHERE entry=16732;

/*  Spaulders of Valor  */
UPDATE `item_template` SET `BuyPrice` = 76038, `SellPrice` = 15207, `DisenchantID` = 49 WHERE entry=16733;

/*  Boots of Valor  */
UPDATE `item_template` SET `BuyPrice` = 72680, `SellPrice` = 14536 WHERE entry=16734;

/*  Bracers of Valor  */
UPDATE `item_template` SET `BuyPrice` = 43690, `SellPrice` = 8738 WHERE entry=16735;

/*  Belt of Valor  */
UPDATE `item_template` SET `BuyPrice` = 46475, `SellPrice` = 9295 WHERE entry=16736;

/*  Gauntlets of Valor  */
UPDATE `item_template` SET `BuyPrice` = 48974, `SellPrice` = 9794 WHERE entry=16737;

/*  Witherseed Gloves  */
UPDATE `item_template` SET `BuyPrice` = 19468, `SellPrice` = 3893 WHERE entry=16738;

/*  Rugwood Mantle  */
UPDATE `item_template` SET `BuyPrice` = 36502, `SellPrice` = 7300 WHERE entry=16739;

/*  Shredder Operating Gloves  */
UPDATE `item_template` SET `BuyPrice` = 4712, `SellPrice` = 942, `stat_type3` = 3, `stat_value3` = 2, `spellid_1` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=16740;

/*  Oilrag Handwraps  */
UPDATE `item_template` SET `BuyPrice` = 5890, `SellPrice` = 1178 WHERE entry=16741;

/*  Captain Rackmore's Wheel  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=16788;

/*  Captain Rackmore's Tiller  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=16789;

/*  Silkstream Cuffs  */
UPDATE `item_template` SET `BuyPrice` = 9561 WHERE entry=16791;

/*  Giant Club  */
UPDATE `item_template` SET `BuyPrice` = 44430, `dmg_min1` = 26.0, `dmg_max1` = 49.0, `MaxDurability` = 75 WHERE entry=16792;

/*  Arcmetal Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 21765 WHERE entry=16793;

/*  Gripsteel Wristguards  */
UPDATE `item_template` SET `BuyPrice` = 13525, `SellPrice` = 2705 WHERE entry=16794;

/*  Arcanist Crown  */
UPDATE `item_template` SET `armor` = 83, `BuyPrice` = 136797, `SellPrice` = 27359 WHERE entry=16795;

/*  Arcanist Leggings  */
UPDATE `item_template` SET `armor` = 89, `BuyPrice` = 169953, `SellPrice` = 33990 WHERE entry=16796;

/*  Arcanist Mantle  */
UPDATE `item_template` SET `armor` = 76, `BuyPrice` = 127958, `SellPrice` = 25591 WHERE entry=16797;

/*  Arcanist Robes  */
UPDATE `item_template` SET `armor` = 102, `BuyPrice` = 171269, `SellPrice` = 34253 WHERE entry=16798;

/*  Arcanist Bindings  */
UPDATE `item_template` SET `armor` = 44, `BuyPrice` = 85963, `SellPrice` = 17192 WHERE entry=16799;

/*  Arcanist Boots  */
UPDATE `item_template` SET `armor` = 70, `BuyPrice` = 129425, `SellPrice` = 25885 WHERE entry=16800;

/*  Arcanist Gloves  */
UPDATE `item_template` SET `armor` = 63, `BuyPrice` = 86612, `SellPrice` = 17322 WHERE entry=16801;

/*  Arcanist Belt  */
UPDATE `item_template` SET `armor` = 57, `BuyPrice` = 86941, `SellPrice` = 17388 WHERE entry=16802;

/*  Felheart Slippers  */
UPDATE `item_template` SET `armor` = 70, `BuyPrice` = 130905, `SellPrice` = 26181 WHERE entry=16803;

/*  Felheart Bracers  */
UPDATE `item_template` SET `armor` = 44, `BuyPrice` = 87589, `SellPrice` = 17517 WHERE entry=16804;

/*  Felheart Gloves  */
UPDATE `item_template` SET `armor` = 63, `BuyPrice` = 87918, `SellPrice` = 17583 WHERE entry=16805;

/*  Felheart Belt  */
UPDATE `item_template` SET `armor` = 57, `BuyPrice` = 88247, `SellPrice` = 17649, `spelltrigger_2` = 0 WHERE entry=16806;

/*  Felheart Shoulder Pads  */
UPDATE `item_template` SET `armor` = 76, `BuyPrice` = 132864, `SellPrice` = 26572 WHERE entry=16807;

/*  Felheart Horns  */
UPDATE `item_template` SET `armor` = 83, `BuyPrice` = 133344, `SellPrice` = 26668 WHERE entry=16808;

/*  Felheart Robes  */
UPDATE `item_template` SET `armor` = 102, `BuyPrice` = 178450, `SellPrice` = 35690 WHERE entry=16809;

/*  Felheart Pants  */
UPDATE `item_template` SET `armor` = 89, `BuyPrice` = 179108, `SellPrice` = 35821 WHERE entry=16810;

/*  Boots of Prophecy  */
UPDATE `item_template` SET `armor` = 70, `BuyPrice` = 134811, `SellPrice` = 26962 WHERE entry=16811;

/*  Gloves of Prophecy  */
UPDATE `item_template` SET `armor` = 63, `BuyPrice` = 90203, `SellPrice` = 18040 WHERE entry=16812;

/*  Circlet of Prophecy  */
UPDATE `item_template` SET `armor` = 83, `BuyPrice` = 139330, `SellPrice` = 27866 WHERE entry=16813;

/*  Pants of Prophecy  */
UPDATE `item_template` SET `armor` = 89, `BuyPrice` = 186432, `SellPrice` = 37286 WHERE entry=16814;

/*  Robes of Prophecy  */
UPDATE `item_template` SET `armor` = 102, `BuyPrice` = 169278, `SellPrice` = 33855 WHERE entry=16815;

/*  Mantle of Prophecy  */
UPDATE `item_template` SET `armor` = 76, `BuyPrice` = 127452, `SellPrice` = 25490 WHERE entry=16816;

/*  Girdle of Prophecy  */
UPDATE `item_template` SET `armor` = 57, `BuyPrice` = 85296, `SellPrice` = 17059 WHERE entry=16817;

/*  Netherwind Belt  */
UPDATE `item_template` SET `armor` = 65, `BuyPrice` = 139475, `SellPrice` = 27895 WHERE entry=16818;

/*  Vambraces of Prophecy  */
UPDATE `item_template` SET `armor` = 44, `BuyPrice` = 85945, `SellPrice` = 17189 WHERE entry=16819;

/*  Nightslayer Chestpiece  */
UPDATE `item_template` SET `armor` = 200, `BuyPrice` = 215686, `SellPrice` = 43137 WHERE entry=16820;

/*  Nightslayer Cover  */
UPDATE `item_template` SET `armor` = 163, `BuyPrice` = 162381, `SellPrice` = 32476 WHERE entry=16821;

/*  Nightslayer Pants  */
UPDATE `item_template` SET `armor` = 175, `BuyPrice` = 217330, `SellPrice` = 43466 WHERE entry=16822;

/*  Nightslayer Shoulder Pads  */
UPDATE `item_template` SET `armor` = 150, `BuyPrice` = 163597, `SellPrice` = 32719 WHERE entry=16823;

/*  Nightslayer Boots  */
UPDATE `item_template` SET `armor` = 138, `BuyPrice` = 164214, `SellPrice` = 32842 WHERE entry=16824;

/*  Nightslayer Bracelets  */
UPDATE `item_template` SET `armor` = 88, `BuyPrice` = 109887, `SellPrice` = 21977 WHERE entry=16825;

/*  Nightslayer Gloves  */
UPDATE `item_template` SET `armor` = 125, `BuyPrice` = 110287, `SellPrice` = 22057 WHERE entry=16826;

/*  Nightslayer Belt  */
UPDATE `item_template` SET `armor` = 113, `BuyPrice` = 110698, `SellPrice` = 22139 WHERE entry=16827;

/*  Cenarion Belt  */
UPDATE `item_template` SET `armor` = 113, `BuyPrice` = 111109, `SellPrice` = 22221 WHERE entry=16828;

/*  Cenarion Boots  */
UPDATE `item_template` SET `armor` = 138, `BuyPrice` = 171697, `SellPrice` = 34339 WHERE entry=16829;

/*  Cenarion Bracers  */
UPDATE `item_template` SET `armor` = 88, `BuyPrice` = 114864, `SellPrice` = 22972 WHERE entry=16830;

/*  Cenarion Gloves  */
UPDATE `item_template` SET `armor` = 125, `BuyPrice` = 115275, `SellPrice` = 23055 WHERE entry=16831;

/*  Bloodfang Spaulders  */
UPDATE `item_template` SET `armor` = 169, `BuyPrice` = 282662, `SellPrice` = 56532 WHERE entry=16832;

/*  Cenarion Vestments  */
UPDATE `item_template` SET `armor` = 200, `BuyPrice` = 232195, `SellPrice` = 46439 WHERE entry=16833;

/*  Cenarion Helm  */
UPDATE `item_template` SET `armor` = 163, `BuyPrice` = 174746, `SellPrice` = 34949 WHERE entry=16834;

/*  Cenarion Leggings  */
UPDATE `item_template` SET `armor` = 175, `BuyPrice` = 211575, `SellPrice` = 42315 WHERE entry=16835;

/*  Cenarion Spaulders  */
UPDATE `item_template` SET `armor` = 150, `BuyPrice` = 159298, `SellPrice` = 31859 WHERE entry=16836;

/*  Earthfury Boots  */
UPDATE `item_template` SET `armor` = 290, `BuyPrice` = 192750, `SellPrice` = 38550 WHERE entry=16837;

/*  Earthfury Belt  */
UPDATE `item_template` SET `armor` = 237, `BuyPrice` = 128411, `SellPrice` = 25682 WHERE entry=16838;

/*  Earthfury Gauntlets  */
UPDATE `item_template` SET `armor` = 264, `BuyPrice` = 128905, `SellPrice` = 25781 WHERE entry=16839;

/*  Earthfury Bracers  */
UPDATE `item_template` SET `armor` = 185, `BuyPrice` = 129398, `SellPrice` = 25879 WHERE entry=16840;

/*  Earthfury Vestments  */
UPDATE `item_template` SET `armor` = 422, `BuyPrice` = 259783, `SellPrice` = 51956 WHERE entry=16841;

/*  Earthfury Helmet  */
UPDATE `item_template` SET `armor` = 343, `BuyPrice` = 195557, `SellPrice` = 39111 WHERE entry=16842;

/*  Earthfury Legguards  */
UPDATE `item_template` SET `armor` = 369, `BuyPrice` = 261730, `SellPrice` = 52346 WHERE entry=16843;

/*  Earthfury Epaulets  */
UPDATE `item_template` SET `armor` = 317, `BuyPrice` = 197913, `SellPrice` = 39582 WHERE entry=16844;

/*  Giantstalker's Breastplate  */
UPDATE `item_template` SET `armor` = 422, `BuyPrice` = 270742, `SellPrice` = 54148, `stat_value1` = 26, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16845;

/*  Giantstalker's Helmet  */
UPDATE `item_template` SET `armor` = 343, `BuyPrice` = 203796, `SellPrice` = 40759, `stat_value1` = 23, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16846;

/*  Giantstalker's Leggings  */
UPDATE `item_template` SET `armor` = 369, `BuyPrice` = 272715, `SellPrice` = 54543, `stat_value1` = 32, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16847;

/*  Giantstalker's Epaulets  */
UPDATE `item_template` SET `armor` = 317, `BuyPrice` = 206188, `SellPrice` = 41237, `stat_value1` = 24, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16848;

/*  Giantstalker's Boots  */
UPDATE `item_template` SET `armor` = 290, `BuyPrice` = 206912, `SellPrice` = 41382, `stat_value1` = 28, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=16849;

/*  Giantstalker's Bracers  */
UPDATE `item_template` SET `armor` = 185, `BuyPrice` = 137824, `SellPrice` = 27564, `stat_value1` = 20, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=16850;

/*  Giantstalker's Belt  */
UPDATE `item_template` SET `armor` = 237, `BuyPrice` = 138317, `SellPrice` = 27663, `stat_value1` = 18, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16851;

/*  Giantstalker's Gloves  */
UPDATE `item_template` SET `armor` = 264, `BuyPrice` = 138810, `SellPrice` = 27762, `stat_value1` = 18, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16852;

/*  Lawbringer Chestguard  */
UPDATE `item_template` SET `armor` = 749, `BuyPrice` = 185721, `SellPrice` = 37144 WHERE entry=16853;

/*  Lawbringer Helm  */
UPDATE `item_template` SET `armor` = 608, `BuyPrice` = 139784, `SellPrice` = 27956 WHERE entry=16854;

/*  Lawbringer Legplates  */
UPDATE `item_template` SET `armor` = 655, `BuyPrice` = 169242, `SellPrice` = 33848 WHERE entry=16855;

/*  Lawbringer Spaulders  */
UPDATE `item_template` SET `armor` = 562, `BuyPrice` = 127425, `SellPrice` = 25485 WHERE entry=16856;

/*  Lawbringer Bracers  */
UPDATE `item_template` SET `armor` = 328, `BuyPrice` = 85270, `SellPrice` = 17054 WHERE entry=16857;

/*  Lawbringer Belt  */
UPDATE `item_template` SET `armor` = 421, `BuyPrice` = 85599, `SellPrice` = 17119 WHERE entry=16858;

/*  Lawbringer Boots  */
UPDATE `item_template` SET `armor` = 515, `BuyPrice` = 128891, `SellPrice` = 25778 WHERE entry=16859;

/*  Lawbringer Gauntlets  */
UPDATE `item_template` SET `armor` = 468, `BuyPrice` = 86247, `SellPrice` = 17249 WHERE entry=16860;

/*  Bracers of Might  */
UPDATE `item_template` SET `armor` = 328, `BuyPrice` = 88932, `SellPrice` = 17786 WHERE entry=16861;

/*  Sabatons of Might  */
UPDATE `item_template` SET `armor` = 515, `BuyPrice` = 133891, `SellPrice` = 26778 WHERE entry=16862;

/*  Gauntlets of Might  */
UPDATE `item_template` SET `armor` = 468, `BuyPrice` = 89589, `SellPrice` = 17917 WHERE entry=16863;

/*  Belt of Might  */
UPDATE `item_template` SET `armor` = 421, `BuyPrice` = 89909, `SellPrice` = 17981 WHERE entry=16864;

/*  Breastplate of Might  */
UPDATE `item_template` SET `armor` = 749, `BuyPrice` = 180477, `SellPrice` = 36095 WHERE entry=16865;

/*  Helm of Might  */
UPDATE `item_template` SET `armor` = 608, `BuyPrice` = 135851, `SellPrice` = 27170 WHERE entry=16866;

/*  Legplates of Might  */
UPDATE `item_template` SET `armor` = 655, `BuyPrice` = 181792, `SellPrice` = 36358 WHERE entry=16867;

/*  Pauldrons of Might  */
UPDATE `item_template` SET `armor` = 562, `BuyPrice` = 136824, `SellPrice` = 27364 WHERE entry=16868;

/*  Braidfur Gloves  */
UPDATE `item_template` SET `BuyPrice` = 11271, `SellPrice` = 2254 WHERE entry=16873;

/*  Claystone Shortsword  */
UPDATE `item_template` SET `BuyPrice` = 8485 WHERE entry=16891;

/*  Stormrage Chestguard  */
UPDATE `item_template` SET `armor` = 225, `BuyPrice` = 356759, `SellPrice` = 71351 WHERE entry=16897;

/*  Stormrage Boots  */
UPDATE `item_template` SET `armor` = 154, `BuyPrice` = 268546, `SellPrice` = 53709 WHERE entry=16898;

/*  Stormrage Handguards  */
UPDATE `item_template` SET `armor` = 140, `BuyPrice` = 179700, `SellPrice` = 35940 WHERE entry=16899;

/*  Stormrage Cover  */
UPDATE `item_template` SET `armor` = 183, `BuyPrice` = 270555, `SellPrice` = 54111 WHERE entry=16900;

/*  Stormrage Legguards  */
UPDATE `item_template` SET `armor` = 197, `BuyPrice` = 362079, `SellPrice` = 72415 WHERE entry=16901;

/*  Stormrage Pauldrons  */
UPDATE `item_template` SET `armor` = 169, `BuyPrice` = 272537, `SellPrice` = 54507 WHERE entry=16902;

/*  Stormrage Belt  */
UPDATE `item_template` SET `armor` = 126, `BuyPrice` = 182361, `SellPrice` = 36472 WHERE entry=16903;

/*  Stormrage Bracers  */
UPDATE `item_template` SET `armor` = 98, `BuyPrice` = 183030, `SellPrice` = 36606 WHERE entry=16904;

/*  Bloodfang Chestpiece  */
UPDATE `item_template` SET `armor` = 225, `BuyPrice` = 367400, `SellPrice` = 73480 WHERE entry=16905;

/*  Bloodfang Boots  */
UPDATE `item_template` SET `armor` = 154, `BuyPrice` = 276527, `SellPrice` = 55305 WHERE entry=16906;

/*  Bloodfang Gloves  */
UPDATE `item_template` SET `armor` = 140, `BuyPrice` = 185021, `SellPrice` = 37004, `spellid_1` = 7219 WHERE entry=16907;

/*  Bloodfang Hood  */
UPDATE `item_template` SET `armor` = 183, `BuyPrice` = 278536, `SellPrice` = 55707 WHERE entry=16908;

/*  Bloodfang Pants  */
UPDATE `item_template` SET `armor` = 197, `BuyPrice` = 346046, `SellPrice` = 69209 WHERE entry=16909;

/*  Bloodfang Belt  */
UPDATE `item_template` SET `armor` = 126, `BuyPrice` = 173692, `SellPrice` = 34738 WHERE entry=16910;

/*  Bloodfang Bracers  */
UPDATE `item_template` SET `armor` = 98, `BuyPrice` = 174362, `SellPrice` = 34872 WHERE entry=16911;

/*  Netherwind Boots  */
UPDATE `item_template` SET `armor` = 80, `BuyPrice` = 210038, `SellPrice` = 42007 WHERE entry=16912;

/*  Netherwind Gloves  */
UPDATE `item_template` SET `armor` = 72, `BuyPrice` = 140546, `SellPrice` = 28109 WHERE entry=16913;

/*  Netherwind Crown  */
UPDATE `item_template` SET `armor` = 94, `BuyPrice` = 211623, `SellPrice` = 42324 WHERE entry=16914;

/*  Netherwind Pants  */
UPDATE `item_template` SET `armor` = 101, `BuyPrice` = 283236, `SellPrice` = 56647 WHERE entry=16915;

/*  Netherwind Robes  */
UPDATE `item_template` SET `armor` = 116, `BuyPrice` = 284307, `SellPrice` = 56861 WHERE entry=16916;

/*  Netherwind Mantle  */
UPDATE `item_template` SET `armor` = 87, `BuyPrice` = 214012, `SellPrice` = 42802 WHERE entry=16917;

/*  Netherwind Bindings  */
UPDATE `item_template` SET `armor` = 51, `BuyPrice` = 143210, `SellPrice` = 28642 WHERE entry=16918;

/*  Boots of Transcendence  */
UPDATE `item_template` SET `armor` = 80, `BuyPrice` = 215619, `SellPrice` = 43123 WHERE entry=16919;

/*  Handguards of Transcendence  */
UPDATE `item_template` SET `armor` = 72, `BuyPrice` = 144281, `SellPrice` = 28856 WHERE entry=16920;

/*  Halo of Transcendence  */
UPDATE `item_template` SET `armor` = 94, `BuyPrice` = 217204, `SellPrice` = 43440 WHERE entry=16921;

/*  Leggings of Transcendence  */
UPDATE `item_template` SET `armor` = 101, `BuyPrice` = 290677, `SellPrice` = 58135 WHERE entry=16922;

/*  Robes of Transcendence  */
UPDATE `item_template` SET `armor` = 116, `BuyPrice` = 291748, `SellPrice` = 58349 WHERE entry=16923;

/*  Pauldrons of Transcendence  */
UPDATE `item_template` SET `armor` = 87, `BuyPrice` = 219593, `SellPrice` = 43918 WHERE entry=16924;

/*  Belt of Transcendence  */
UPDATE `item_template` SET `armor` = 65, `BuyPrice` = 150767, `SellPrice` = 30153 WHERE entry=16925;

/*  Bindings of Transcendence  */
UPDATE `item_template` SET `armor` = 51, `BuyPrice` = 151303, `SellPrice` = 30260 WHERE entry=16926;

/*  Nemesis Boots  */
UPDATE `item_template` SET `armor` = 80, `BuyPrice` = 227758, `SellPrice` = 45551 WHERE entry=16927;

/*  Nemesis Gloves  */
UPDATE `item_template` SET `armor` = 72, `BuyPrice` = 137868, `SellPrice` = 27573 WHERE entry=16928;

/*  Nemesis Skullcap  */
UPDATE `item_template` SET `armor` = 94, `BuyPrice` = 207606, `SellPrice` = 41521 WHERE entry=16929;

/*  Nemesis Leggings  */
UPDATE `item_template` SET `armor` = 101, `BuyPrice` = 277879, `SellPrice` = 55575 WHERE entry=16930;

/*  Nemesis Robes  */
UPDATE `item_template` SET `armor` = 116, `BuyPrice` = 278950, `SellPrice` = 55790 WHERE entry=16931;

/*  Nemesis Spaulders  */
UPDATE `item_template` SET `armor` = 87, `BuyPrice` = 209994, `SellPrice` = 41998 WHERE entry=16932;

/*  Nemesis Belt  */
UPDATE `item_template` SET `armor` = 65, `BuyPrice` = 140532, `SellPrice` = 28106 WHERE entry=16933;

/*  Nemesis Bracers  */
UPDATE `item_template` SET `armor` = 51, `BuyPrice` = 141067, `SellPrice` = 28213 WHERE entry=16934;

/*  Dragonstalker's Bracers  */
UPDATE `item_template` SET `armor` = 211, `BuyPrice` = 212405, `SellPrice` = 42481, `stat_value1` = 23, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=16935;

/*  Dragonstalker's Belt  */
UPDATE `item_template` SET `armor` = 271, `BuyPrice` = 213187, `SellPrice` = 42637, `stat_value1` = 20, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16936;

/*  Dragonstalker's Spaulders  */
UPDATE `item_template` SET `armor` = 362, `BuyPrice` = 322412, `SellPrice` = 64482, `stat_value1` = 23, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16937;

/*  Dragonstalker's Legguards  */
UPDATE `item_template` SET `armor` = 422, `BuyPrice` = 429588, `SellPrice` = 85917, `stat_value1` = 31, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=16938;

/*  Dragonstalker's Helm  */
UPDATE `item_template` SET `armor` = 392, `BuyPrice` = 323363, `SellPrice` = 64672, `stat_value1` = 27, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16939;

/*  Dragonstalker's Gauntlets  */
UPDATE `item_template` SET `armor` = 301, `BuyPrice` = 216379, `SellPrice` = 43275, `stat_value1` = 20, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16940;

/*  Dragonstalker's Greaves  */
UPDATE `item_template` SET `armor` = 332, `BuyPrice` = 335892, `SellPrice` = 67178, `stat_value1` = 30, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=16941;

/*  Dragonstalker's Breastplate  */
UPDATE `item_template` SET `armor` = 482, `BuyPrice` = 447482, `SellPrice` = 89496, `stat_value1` = 34, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=16942;

/*  Bracers of Ten Storms  */
UPDATE `item_template` SET `armor` = 211, `BuyPrice` = 224522, `SellPrice` = 44904 WHERE entry=16943;

/*  Belt of Ten Storms  */
UPDATE `item_template` SET `armor` = 271, `BuyPrice` = 225326, `SellPrice` = 45065 WHERE entry=16944;

/*  Epaulets of Ten Storms  */
UPDATE `item_template` SET `armor` = 362, `BuyPrice` = 340702, `SellPrice` = 68140 WHERE entry=16945;

/*  Legplates of Ten Storms  */
UPDATE `item_template` SET `armor` = 422, `BuyPrice` = 453866, `SellPrice` = 90773 WHERE entry=16946;

/*  Helmet of Ten Storms  */
UPDATE `item_template` SET `armor` = 392, `BuyPrice` = 341572, `SellPrice` = 68314, `spellid_2` = 9415, `spellid_3` = 9406 WHERE entry=16947;

/*  Gauntlets of Ten Storms  */
UPDATE `item_template` SET `armor` = 301, `BuyPrice` = 206780, `SellPrice` = 41356, `spellid_2` = 9398, `spellid_3` = 7681 WHERE entry=16948;

/*  Greaves of Ten Storms  */
UPDATE `item_template` SET `armor` = 332, `BuyPrice` = 312760, `SellPrice` = 62552 WHERE entry=16949;

/*  Breastplate of Ten Storms  */
UPDATE `item_template` SET `armor` = 482, `BuyPrice` = 416775, `SellPrice` = 83355 WHERE entry=16950;

/*  Judgement Bindings  */
UPDATE `item_template` SET `armor` = 375, `BuyPrice` = 139446, `SellPrice` = 27889 WHERE entry=16951;

/*  Judgement Belt  */
UPDATE `item_template` SET `armor` = 482, `BuyPrice` = 139982, `SellPrice` = 27996 WHERE entry=16952;

/*  Judgement Spaulders  */
UPDATE `item_template` SET `armor` = 642, `BuyPrice` = 210776, `SellPrice` = 42155 WHERE entry=16953;

/*  Judgement Legplates  */
UPDATE `item_template` SET `armor` = 749, `BuyPrice` = 282077, `SellPrice` = 56415 WHERE entry=16954;

/*  Judgement Crown  */
UPDATE `item_template` SET `armor` = 696, `BuyPrice` = 212361, `SellPrice` = 42472 WHERE entry=16955;

/*  Judgement Gauntlets  */
UPDATE `item_template` SET `armor` = 535, `BuyPrice` = 142110, `SellPrice` = 28422 WHERE entry=16956;

/*  Judgement Sabatons  */
UPDATE `item_template` SET `armor` = 589, `BuyPrice` = 219723, `SellPrice` = 43944 WHERE entry=16957;

/*  Judgement Breastplate  */
UPDATE `item_template` SET `armor` = 857, `BuyPrice` = 294007, `SellPrice` = 58801 WHERE entry=16958;

/*  Bracelets of Wrath  */
UPDATE `item_template` SET `armor` = 375, `BuyPrice` = 147539, `SellPrice` = 29507 WHERE entry=16959;

/*  Waistband of Wrath  */
UPDATE `item_template` SET `armor` = 482, `BuyPrice` = 148074, `SellPrice` = 29614 WHERE entry=16960;

/*  Pauldrons of Wrath  */
UPDATE `item_template` SET `armor` = 642, `BuyPrice` = 222915, `SellPrice` = 44583 WHERE entry=16961;

/*  Legplates of Wrath  */
UPDATE `item_template` SET `armor` = 749, `BuyPrice` = 298263, `SellPrice` = 59652 WHERE entry=16962;

/*  Helm of Wrath  */
UPDATE `item_template` SET `armor` = 696, `BuyPrice` = 224501, `SellPrice` = 44900 WHERE entry=16963;

/*  Gauntlets of Wrath  */
UPDATE `item_template` SET `armor` = 535, `BuyPrice` = 150203, `SellPrice` = 30040 WHERE entry=16964;

/*  Sabatons of Wrath  */
UPDATE `item_template` SET `armor` = 589, `BuyPrice` = 226108, `SellPrice` = 45221 WHERE entry=16965;

/*  Breastplate of Wrath  */
UPDATE `item_template` SET `armor` = 857, `BuyPrice` = 302519, `SellPrice` = 60503 WHERE entry=16966;

/*  Warsong Boots  */
UPDATE `item_template` SET `BuyPrice` = 7242, `SellPrice` = 1448 WHERE entry=16977;

/*  Warsong Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 5794, `SellPrice` = 1158 WHERE entry=16978;

/*  Flarecore Gloves  */
UPDATE `item_template` SET `armor` = 60, `BuyPrice` = 74510, `SellPrice` = 14902 WHERE entry=16979;

/*  Flarecore Mantle  */
UPDATE `item_template` SET `armor` = 71, `BuyPrice` = 106829, `SellPrice` = 21365 WHERE entry=16980;

/*  Owlbeard Bracers  */
UPDATE `item_template` SET `BuyPrice` = 1356, `SellPrice` = 271 WHERE entry=16981;

/*  Corehound Boots  */
UPDATE `item_template` SET `armor` = 126, `BuyPrice` = 121985, `spelltrigger_1` = 0 WHERE entry=16982;

/*  Molten Helm  */
UPDATE `item_template` SET `armor` = 150 WHERE entry=16983;

/*  Black Dragonscale Boots  */
UPDATE `item_template` SET `armor` = 270, `BuyPrice` = 163269, `SellPrice` = 32653 WHERE entry=16984;

/*  Windseeker Boots  */
UPDATE `item_template` SET `BuyPrice` = 4238 WHERE entry=16985;

/*  Screecher Belt  */
UPDATE `item_template` SET `BuyPrice` = 4422 WHERE entry=16987;

/*  Fiery Chain Shoulders  */
UPDATE `item_template` SET `armor` = 299, `BuyPrice` = 157303, `SellPrice` = 31460 WHERE entry=16988;

/*  Fiery Chain Girdle  */
UPDATE `item_template` SET `armor` = 214 WHERE entry=16989;

/*  Smokey's Explosive Launcher  */
UPDATE `item_template` SET `BuyPrice` = 154370, `dmg_min1` = 52.0, `dmg_max1` = 98.0 WHERE entry=16992;

/*  Smokey's Fireshooter  */
UPDATE `item_template` SET `BuyPrice` = 154945, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=16993;

/*  Duskwing Gloves  */
UPDATE `item_template` SET `BuyPrice` = 49420, `SellPrice` = 9884 WHERE entry=16994;

/*  Duskwing Mantle  */
UPDATE `item_template` SET `BuyPrice` = 74130, `SellPrice` = 14826 WHERE entry=16995;

/*  Gorewood Bow  */
UPDATE `item_template` SET `BuyPrice` = 207256, `SellPrice` = 41451, `dmg_min1` = 55.0, `dmg_max1` = 104.0, `DisenchantID` = 49 WHERE entry=16996;

/*  Stormrager  */
UPDATE `item_template` SET `BuyPrice` = 208017, `SellPrice` = 41603, `DisenchantID` = 49, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=16997;

/*  Sacred Protector  */
UPDATE `item_template` SET `BuyPrice` = 178156, `SellPrice` = 35631, `DisenchantID` = 49 WHERE entry=16998;

/*  Ichor Spitter  */
UPDATE `item_template` SET `BuyPrice` = 224127, `SellPrice` = 44825 WHERE entry=17002;

/*  Skullstone Hammer  */
UPDATE `item_template` SET `BuyPrice` = 224911, `SellPrice` = 44982, `spellcooldown_1` = -1 WHERE entry=17003;

/*  Sarah's Guide  */
UPDATE `item_template` SET `BuyPrice` = 282145, `SellPrice` = 56429 WHERE entry=17004;

/*  Stonerender Gauntlets  */
UPDATE `item_template` SET `armor` = 209, `BuyPrice` = 57238, `SellPrice` = 11447 WHERE entry=17007;

/*  Dark Iron Leggings  */
UPDATE `item_template` SET `armor` = 778, `BuyPrice` = 132207, `SellPrice` = 26441 WHERE entry=17013;

/*  Dark Iron Bracers  */
UPDATE `item_template` SET `armor` = 394, `BuyPrice` = 63189, `SellPrice` = 12637 WHERE entry=17014;

/*  Dark Iron Reaver  */
UPDATE `item_template` SET `BuyPrice` = 318693, `SellPrice` = 63738, `DisenchantID` = 49 WHERE entry=17015;

/*  Dark Iron Destroyer  */
UPDATE `item_template` SET `BuyPrice` = 319868, `SellPrice` = 63973, `DisenchantID` = 49 WHERE entry=17016;

/*  Nail Spitter  */
UPDATE `item_template` SET `BuyPrice` = 28464, `SellPrice` = 5692, `dmg_min1` = 19.0, `dmg_max1` = 37.0 WHERE entry=17042;

/*  Zealot's Robe  */
UPDATE `item_template` SET `BuyPrice` = 15274, `SellPrice` = 3054 WHERE entry=17043;

/*  Will of the Martyr  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=17044;

/*  Blood of the Martyr  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=17045;

/*  Joonho's Mercy  */
UPDATE `item_template` SET `BuyPrice` = 143942 WHERE entry=17054;

/*  Changuk Smasher  */
UPDATE `item_template` SET `BuyPrice` = 133735, `SellPrice` = 26747, `spellcooldown_1` = -1 WHERE entry=17055;

/*  Band of Accuria  */
UPDATE `item_template` SET `stat_value2` = 16, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=17063;

/*  Drillborer Disk  */
UPDATE `item_template` SET `armor` = 2539, `BuyPrice` = 289852, `SellPrice` = 57970, `block` = 46 WHERE entry=17066;

/*  Deathbringer  */
UPDATE `item_template` SET `BuyPrice` = 674164, `SellPrice` = 134832, `spellppmrate_1` = 0.8 WHERE entry=17068;

/*  Striker's Mark  */
UPDATE `item_template` SET `BuyPrice` = 378731, `SellPrice` = 75746, `dmg_min1` = 69.0, `dmg_max1` = 129.0 WHERE entry=17069;

/*  Fang of the Mystics  */
UPDATE `item_template` SET `BuyPrice` = 546537, `SellPrice` = 109307, `dmg_min1` = 38.0, `dmg_max1` = 85.0 WHERE entry=17070;

/*  Gutgore Ripper  */
UPDATE `item_template` SET `BuyPrice` = 522363, `SellPrice` = 104472 WHERE entry=17071;

/*  Blastershot Launcher  */
UPDATE `item_template` SET `BuyPrice` = 412860, `SellPrice` = 82572, `dmg_min1` = 73.0, `dmg_max1` = 136.0 WHERE entry=17072;

/*  Earthshaker  */
UPDATE `item_template` SET `BuyPrice` = 568157, `SellPrice` = 113631, `spellppmrate_1` = 2.15 WHERE entry=17073;

/*  Shadowstrike  */
UPDATE `item_template` SET `BuyPrice` = 492571, `SellPrice` = 98514 WHERE entry=17074;

/*  Vis'kag the Bloodletter  */
UPDATE `item_template` SET `BuyPrice` = 676334, `SellPrice` = 135266, `spellppmrate_1` = 0.6 WHERE entry=17075;

/*  Bonereaver's Edge  */
UPDATE `item_template` SET `BuyPrice` = 982192, `SellPrice` = 196438 WHERE entry=17076;

/*  Crimson Shocker  */
UPDATE `item_template` SET `BuyPrice` = 298709, `SellPrice` = 59741, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=17077;

/*  Sapphiron Drape  */
UPDATE `item_template` SET `armor` = 55, `BuyPrice` = 186019, `SellPrice` = 37203 WHERE entry=17078;

/*  Cloak of the Shrouded Mists  */
UPDATE `item_template` SET `armor` = 57, `BuyPrice` = 193445, `SellPrice` = 38689 WHERE entry=17102;

/*  Azuresong Mageblade  */
UPDATE `item_template` SET `BuyPrice` = 559117, `SellPrice` = 111823 WHERE entry=17103;

/*  Spinal Reaper  */
UPDATE `item_template` SET `BuyPrice` = 895337, `SellPrice` = 179067 WHERE entry=17104;

/*  Aurastone Hammer  */
UPDATE `item_template` SET `BuyPrice` = 510891, `SellPrice` = 102178, `dmg_min1` = 78.8, `dmg_max1` = 161.8 WHERE entry=17105;

/*  Malistar's Defender  */
UPDATE `item_template` SET `armor` = 2822, `BuyPrice` = 439804, `SellPrice` = 87960, `block` = 52 WHERE entry=17106;

/*  Dragon's Blood Cape  */
UPDATE `item_template` SET `armor` = 116, `BuyPrice` = 187685, `SellPrice` = 37537 WHERE entry=17107;

/*  Mark of Deflection  */
UPDATE `item_template` SET `spellid_2` = 13665, `spelltrigger_2` = 1 WHERE entry=17108;

/*  Empyrean Demolisher  */
UPDATE `item_template` SET `BuyPrice` = 452792, `SellPrice` = 90558, `spellppmrate_1` = 1.0 WHERE entry=17112;

/*  Amberseal Keeper  */
UPDATE `item_template` SET `BuyPrice` = 596390, `SellPrice` = 119278, `dmg_min1` = 144.9, `dmg_max1` = 228.9 WHERE entry=17113;

/*  Sulfuras, Hand of Ragnaros  */
UPDATE `item_template` SET `BuyPrice` = 1663117, `SellPrice` = 332623, `spelltrigger_1` = 0 WHERE entry=17182;

/*  Dented Buckler  */
UPDATE `item_template` SET `BuyPrice` = 34, `SellPrice` = 6 WHERE entry=17183;

/*  Small Shield  */
UPDATE `item_template` SET `BuyPrice` = 34, `SellPrice` = 6 WHERE entry=17184;

/*  Round Buckler  */
UPDATE `item_template` SET `BuyPrice` = 243, `SellPrice` = 48 WHERE entry=17185;

/*  Small Targe  */
UPDATE `item_template` SET `BuyPrice` = 243, `SellPrice` = 48 WHERE entry=17186;

/*  Banded Buckler  */
UPDATE `item_template` SET `BuyPrice` = 1078, `SellPrice` = 215 WHERE entry=17187;

/*  Ringed Buckler  */
UPDATE `item_template` SET `BuyPrice` = 2265, `SellPrice` = 453 WHERE entry=17188;

/*  Metal Buckler  */
UPDATE `item_template` SET `BuyPrice` = 12043, `SellPrice` = 2408 WHERE entry=17189;

/*  Ornate Buckler  */
UPDATE `item_template` SET `BuyPrice` = 34609, `SellPrice` = 6921 WHERE entry=17190;

/* Scepter of Celebras - keep WotLK stats but make unsellable */
UPDATE `item_template` SET `BuyPrice` = 0, `SellPrice` = 0, `DisenchantID` = 0, `RequiredDisenchantSkill` = 0 WHERE entry=17191;

/*  Reinforced Targe  */
UPDATE `item_template` SET `BuyPrice` = 4399, `SellPrice` = 879 WHERE entry=17192;

/*  Sulfuron Hammer  */
UPDATE `item_template` SET `BuyPrice` = 611555, `SellPrice` = 122311 WHERE entry=17193;

/*  Thunderstrike  */
UPDATE `item_template` SET `BuyPrice` = 485373, `SellPrice` = 97074 WHERE entry=17223;

/*  Forcestone Buckler  */
UPDATE `item_template` SET `BuyPrice` = 36350, `SellPrice` = 7270, `spellcooldown_1` = -1 WHERE entry=17508;

/*  Smokey's Drape  */
UPDATE `item_template` SET `BuyPrice` = 53790, `SellPrice` = 10758 WHERE entry=17523;

/*  Knight-Lieutenant's Dreadweave Boots  */
UPDATE `item_template` SET `BuyPrice` = 43683, `SellPrice` = 8736 WHERE entry=17562;

/*  Knight-Lieutenant's Dreadweave Gloves  */
UPDATE `item_template` SET `BuyPrice` = 29332, `SellPrice` = 5866 WHERE entry=17564;

/*  Lieutenant Commander's Headguard  */
UPDATE `item_template` SET `BuyPrice` = 44318, `SellPrice` = 8863 WHERE entry=17566;

/*  Knight-Captain's Dreadweave Leggings  */
UPDATE `item_template` SET `BuyPrice` = 59304, `SellPrice` = 11860 WHERE entry=17567;

/*  Knight-Captain's Dreadweave Robe  */
UPDATE `item_template` SET `BuyPrice` = 55273, `SellPrice` = 11054 WHERE entry=17568;

/*  Lieutenant Commander's Dreadweave Mantle  */
UPDATE `item_template` SET `BuyPrice` = 41614, `SellPrice` = 8322 WHERE entry=17569;

/*  Champion's Dreadweave Hood  */
UPDATE `item_template` SET `BuyPrice` = 41774, `SellPrice` = 8354 WHERE entry=17570;

/*  Legionnaire's Dreadweave Leggings  */
UPDATE `item_template` SET `BuyPrice` = 55912, `SellPrice` = 11182 WHERE entry=17571;

/*  Legionnaire's Dreadweave Robe  */
UPDATE `item_template` SET `BuyPrice` = 56119, `SellPrice` = 11223 WHERE entry=17572;

/*  Champion's Dreadweave Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 42249, `SellPrice` = 8449 WHERE entry=17573;

/*  Blood Guard's Dreadweave Boots  */
UPDATE `item_template` SET `BuyPrice` = 42724, `SellPrice` = 8544 WHERE entry=17576;

/*  Blood Guard's Dreadweave Gloves  */
UPDATE `item_template` SET `BuyPrice` = 28589, `SellPrice` = 5717 WHERE entry=17577;

/*  Field Marshal's Coronal  */
UPDATE `item_template` SET `armor` = 132, `BuyPrice` = 98160, `SellPrice` = 19632 WHERE entry=17578;

/*  Marshal's Dreadweave Leggings  */
UPDATE `item_template` SET `armor` = 135, `BuyPrice` = 113479, `SellPrice` = 22695 WHERE entry=17579;

/*  Field Marshal's Dreadweave Shoulders  */
UPDATE `item_template` SET `armor` = 115, `BuyPrice` = 98879, `SellPrice` = 19775 WHERE entry=17580;

/*  Field Marshal's Dreadweave Robe  */
UPDATE `item_template` SET `armor` = 153, `BuyPrice` = 132325, `SellPrice` = 26465 WHERE entry=17581;

/*  Marshal's Dreadweave Boots  */
UPDATE `item_template` SET `armor` = 135, `BuyPrice` = 86351, `SellPrice` = 17270 WHERE entry=17583;

/*  Marshal's Dreadweave Gloves  */
UPDATE `item_template` SET `armor` = 68, `BuyPrice` = 59280, `SellPrice` = 11856 WHERE entry=17584;

/*  General's Dreadweave Boots  */
UPDATE `item_template` SET `armor` = 135, `BuyPrice` = 81034, `SellPrice` = 16206 WHERE entry=17586;

/*  General's Dreadweave Gloves  */
UPDATE `item_template` SET `armor` = 68, `BuyPrice` = 54437, `SellPrice` = 10887 WHERE entry=17588;

/*  Warlord's Dreadweave Mantle  */
UPDATE `item_template` SET `armor` = 115, `BuyPrice` = 95255, `SellPrice` = 19051 WHERE entry=17590;

/*  Warlord's Dreadweave Hood  */
UPDATE `item_template` SET `armor` = 132, `BuyPrice` = 95609, `SellPrice` = 19121 WHERE entry=17591;

/*  Warlord's Dreadweave Robe  */
UPDATE `item_template` SET `armor` = 153, `BuyPrice` = 127965, `SellPrice` = 25593 WHERE entry=17592;

/*  General's Dreadweave Pants  */
UPDATE `item_template` SET `armor` = 135, `BuyPrice` = 110961, `SellPrice` = 22192 WHERE entry=17593;

/*  Knight-Lieutenant's Satin Boots  */
UPDATE `item_template` SET `BuyPrice` = 42405, `SellPrice` = 8481 WHERE entry=17594;

/*  Knight-Lieutenant's Satin Gloves  */
UPDATE `item_template` SET `BuyPrice` = 28480, `SellPrice` = 5696 WHERE entry=17596;

/*  Lieutenant Commander's Diadem  */
UPDATE `item_template` SET `BuyPrice` = 43035, `SellPrice` = 8607 WHERE entry=17598;

/*  Knight-Captain's Satin Leggings  */
UPDATE `item_template` SET `BuyPrice` = 57594, `SellPrice` = 11518 WHERE entry=17599;

/*  Knight-Captain's Satin Robes  */
UPDATE `item_template` SET `BuyPrice` = 59333, `SellPrice` = 11866 WHERE entry=17600;

/*  Lieutenant Commander's Satin Amice  */
UPDATE `item_template` SET `BuyPrice` = 44659, `SellPrice` = 8931 WHERE entry=17601;

/*  Field Marshal's Headdress  */
UPDATE `item_template` SET `armor` = 162, `BuyPrice` = 102198, `SellPrice` = 20439 WHERE entry=17602;

/*  Marshal's Satin Pants  */
UPDATE `item_template` SET `armor` = 165, `BuyPrice` = 118130, `SellPrice` = 23626 WHERE entry=17603;

/*  Field Marshal's Satin Mantle  */
UPDATE `item_template` SET `armor` = 145, `BuyPrice` = 102927, `SellPrice` = 20585 WHERE entry=17604;

/*  Field Marshal's Satin Vestments  */
UPDATE `item_template` SET `armor` = 183, `BuyPrice` = 137722, `SellPrice` = 27544 WHERE entry=17605;

/*  Marshal's Satin Sandals  */
UPDATE `item_template` SET `armor` = 125, `BuyPrice` = 81332, `SellPrice` = 16266 WHERE entry=17607;

/*  Marshal's Satin Gloves  */
UPDATE `item_template` SET `armor` = 118, `BuyPrice` = 54431, `SellPrice` = 10886 WHERE entry=17608;

/*  Champion's Satin Cowl  */
UPDATE `item_template` SET `BuyPrice` = 41761, `SellPrice` = 8352 WHERE entry=17610;

/*  Legionnaire's Satin Trousers  */
UPDATE `item_template` SET `BuyPrice` = 55895, `SellPrice` = 11179 WHERE entry=17611;

/*  Legionnaire's Satin Vestments  */
UPDATE `item_template` SET `BuyPrice` = 56108, `SellPrice` = 11221 WHERE entry=17612;

/*  Champion's Satin Shoulderpads  */
UPDATE `item_template` SET `BuyPrice` = 42236, `SellPrice` = 8447 WHERE entry=17613;

/*  Blood Guard's Satin Boots  */
UPDATE `item_template` SET `BuyPrice` = 43860, `SellPrice` = 8772 WHERE entry=17616;

/*  Blood Guard's Satin Gloves  */
UPDATE `item_template` SET `BuyPrice` = 29344, `SellPrice` = 5868 WHERE entry=17617;

/*  General's Satin Boots  */
UPDATE `item_template` SET `armor` = 125, `BuyPrice` = 87023, `SellPrice` = 17404 WHERE entry=17618;

/*  General's Satin Gloves  */
UPDATE `item_template` SET `armor` = 118, `BuyPrice` = 58435, `SellPrice` = 11687 WHERE entry=17620;

/*  Warlord's Satin Mantle  */
UPDATE `item_template` SET `armor` = 145, `BuyPrice` = 102188, `SellPrice` = 20437 WHERE entry=17622;

/*  Warlord's Satin Cowl  */
UPDATE `item_template` SET `armor` = 162, `BuyPrice` = 102553, `SellPrice` = 20510 WHERE entry=17623;

/*  Warlord's Satin Robes  */
UPDATE `item_template` SET `armor` = 183, `BuyPrice` = 137223, `SellPrice` = 27444 WHERE entry=17624;

/*  General's Satin Leggings  */
UPDATE `item_template` SET `armor` = 165, `BuyPrice` = 118947, `SellPrice` = 23789 WHERE entry=17625;

/*  Master Hunter's Bow  */
UPDATE `item_template` SET `BuyPrice` = 49686, `SellPrice` = 9937, `dmg_min1` = 32.0, `dmg_max1` = 61.0 WHERE entry=17686;

/*  Master Hunter's Rifle  */
UPDATE `item_template` SET `BuyPrice` = 49686, `SellPrice` = 9937, `dmg_min1` = 35.0, `dmg_max1` = 66.0 WHERE entry=17687;

/*  Jungle Boots  */
UPDATE `item_template` SET `BuyPrice` = 15776, `SellPrice` = 3155 WHERE entry=17688;

/*  Frostwolf Insignia Rank 1  */
UPDATE `item_template` SET `spellcooldown_1` = 0 WHERE entry=17690;

/*  Stormpike Insignia Rank 1  */
UPDATE `item_template` SET `spellcooldown_1` = 0 WHERE entry=17691;

/*  Edge of Winter  */
UPDATE `item_template` SET `BuyPrice` = 45890 WHERE entry=17704;

/*  Thrash Blade  */
UPDATE `item_template` SET `BuyPrice` = 164272, `spellppmrate_1` = 1.0 WHERE entry=17705;

/*  Gemshard Heart  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `RequiredLevel` = 49 WHERE entry=17707;

/*  Charstone Dirk  */
UPDATE `item_template` SET `RequiredLevel` = 49 WHERE entry=17710;

/*  Elemental Rockridge Leggings  */
UPDATE `item_template` SET `BuyPrice` = 71223, `SellPrice` = 14244, `nature_res` = 10, `stat_type3` = 0, `stat_value3` = 0, `RequiredLevel` = 49 WHERE entry=17711;

/*  Blackstone Ring  */
UPDATE `item_template` SET `RequiredLevel` = 49 WHERE entry=17713;

/*  Bracers of the Stone Princess  */
UPDATE `item_template` SET `BuyPrice` = 51128, `SellPrice` = 10225, `RequiredLevel` = 49 WHERE entry=17714;

/*  Eye of Theradras  */
UPDATE `item_template` SET `BuyPrice` = 51128, `SellPrice` = 10225, `RequiredLevel` = 49 WHERE entry=17715;

/*  Megashot Rifle  */
UPDATE `item_template` SET `BuyPrice` = 132129, `SellPrice` = 26425, `dmg_min1` = 32.0, `dmg_max1` = 61.0, `arcane_res` = 5, `stat_type1` = 0, `stat_value1` = 0 WHERE entry=17717;

/*  Gloves of the Greatfather  */
UPDATE `item_template` SET `BuyPrice` = 11340, `spellid_1` = 9406, `spellid_2` = 7696 WHERE entry=17721;

/*  Albino Crocscale Boots  */
UPDATE `item_template` SET `nature_res` = 5, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=17728;

/*  Gatorbite Axe  */
UPDATE `item_template` SET `BuyPrice` = 214759, `SellPrice` = 42951 WHERE entry=17730;

/*  Fist of Stone  */
UPDATE `item_template` SET `BuyPrice` = 173678 WHERE entry=17733;

/*  Helm of the Mountain  */
UPDATE `item_template` SET `BuyPrice` = 52285, `SellPrice` = 10457, `nature_res` = 10, `stat_type1` = 0, `stat_value1` = 0 WHERE entry=17734;

/*  Rockgrip Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 48234, `SellPrice` = 9646 WHERE entry=17736;

/*  Cloud Stone  */
UPDATE `item_template` SET `arcane_res` = 10, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=17737;

/*  Claw of Celebras  */
UPDATE `item_template` SET `BuyPrice` = 166758, `RequiredLevel` = 47 WHERE entry=17738;

/*  Grovekeeper's Drape  */
UPDATE `item_template` SET `BuyPrice` = 45504, `SellPrice` = 9100, `nature_res` = 10, `stat_type2` = 0, `stat_value2` = 0, `RequiredLevel` = 47 WHERE entry=17739;

/*  Soothsayer's Headdress  */
UPDATE `item_template` SET `stat_type1` = 5, `stat_value1` = 25, `stat_type2` = 6, `stat_type3` = 7, `stat_value3` = 7, `spellid_1` = 0, `spelltrigger_1` = 0, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `RequiredLevel` = 47, `StatsCount` = 3 WHERE entry=17740;

/*  Nature's Embrace  */
UPDATE `item_template` SET `BuyPrice` = 57238, `SellPrice` = 11447, `spellid_1` = 21518 WHERE entry=17741;

/*  Resurgence Rod  */
UPDATE `item_template` SET `BuyPrice` = 203739, `SellPrice` = 40747 WHERE entry=17743;

/*  Noxious Shooter  */
UPDATE `item_template` SET `BuyPrice` = 112599, `SellPrice` = 22519, `nature_res` = 5, `stat_type2` = 0, `stat_value2` = 0, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=17745;

/*  Noxxion's Shackles  */
UPDATE `item_template` SET `BuyPrice` = 28618, `SellPrice` = 5723, `nature_res` = 15, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=17746;

/*  Vinerot Sandals  */
UPDATE `item_template` SET `nature_res` = 12, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=17748;

/*  Phytoskin Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 57126, `nature_res` = 10, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=17749;

/*  Chloromesh Girdle  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 37, `BuyPrice` = 23848, `SellPrice` = 4769, `MaxDurability` = 25, `nature_res` = 20, `DisenchantID` = 9, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=17750;

/*  Brusslehide Leggings  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 118, `BuyPrice` = 63936, `SellPrice` = 12787, `MaxDurability` = 65, `nature_res` = 10, `stat_value1` = 15, `stat_value2` = 11, `DisenchantID` = 9, `spelltrigger_1` = 0 WHERE entry=17751;

/*  Satyr's Lash  */
UPDATE `item_template` SET `BuyPrice` = 143928, `RequiredLevel` = 45 WHERE entry=17752;

/*  Verdant Keeper's Aim  */
UPDATE `item_template` SET `dmg_min1` = 53.0, `dmg_max1` = 100.0 WHERE entry=17753;

/*  Infernal Trickster Leggings  */
UPDATE `item_template` SET `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 7569, `RequiredLevel` = 45 WHERE entry=17754;

/*  Satyrmane Sash  */
UPDATE `item_template` SET `BuyPrice` = 29093, `shadow_res` = 10, `spellid_1` = 0, `spelltrigger_1` = 0, `RequiredLevel` = 45 WHERE entry=17755;

/*  Mark of Resolution  */
UPDATE `item_template` SET `Quality` = 2, `stat_type1` = 0, `stat_value1` = 0, `spellcooldown_1` = 1800000, `spellid_2` = 21958 WHERE entry=17759;

/*  Princess Theradras' Scepter  */
UPDATE `item_template` SET `BuyPrice` = 224317, `RequiredLevel` = 49 WHERE entry=17766;

/*  Bloomsprout Headpiece  */
UPDATE `item_template` SET `nature_res` = 10, `stat_type2` = 0, `stat_value2` = 0 WHERE entry=17767;

/*  Woodseed Hoop  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=17768;

/*  Sagebrush Spaulders  */
UPDATE `item_template` SET `armor` = 194, `BuyPrice` = 43365, `MaxDurability` = 60 WHERE entry=17769;

/*  Branchclaw Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 19258, `SellPrice` = 3851 WHERE entry=17770;

/*  Prodigious Shadowshard Pendant  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=17773;

/*  Acumen Robes  */
UPDATE `item_template` SET `BuyPrice` = 39207 WHERE entry=17775;

/*  Sprightring Helm  */
UPDATE `item_template` SET `BuyPrice` = 36888 WHERE entry=17776;

/*  Relentless Chain  */
UPDATE `item_template` SET `BuyPrice` = 54078, `SellPrice` = 10815 WHERE entry=17777;

/*  Sagebrush Girdle  */
UPDATE `item_template` SET `BuyPrice` = 22532, `SellPrice` = 4506 WHERE entry=17778;

/*  Hulkstone Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 27736, `SellPrice` = 5547 WHERE entry=17779;

/*  Blade of Eternal Darkness  */
UPDATE `item_template` SET `dmg_min1` = 33.5, `dmg_max1` = 69.5 WHERE entry=17780;

/*  Talisman of Binding Shard  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=17782;

/*  Talisman of Binding Fragment  */
UPDATE `item_template` SET `spellid_1` = 21991, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 0 WHERE entry=17783;

/*  Thunderfury, Blessed Blade of the Windseeker DEPRECATED  */
UPDATE `item_template` SET `BuyPrice` = 1305681, `SellPrice` = 261136, `dmg_min1` = 82.0, `dmg_max1` = 153.0, `dmg_min2` = 16.0, `dmg_max2` = 30.0, `MaxDurability` = 125, `fire_res` = 8, `nature_res` = 9, `stat_type3` = 0, `stat_value3` = 0, `stat_type4` = 0, `stat_value4` = 0, `spelltrigger_2` = 0, `StatsCount` = 4 WHERE entry=17802;

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

/*  Lionfur Armor  */
UPDATE `item_template` SET `BuyPrice` = 576, `SellPrice` = 115 WHERE entry=17922;

/*  Fist of Stone  */
UPDATE `item_template` SET `BuyPrice` = 160783, `SellPrice` = 32156 WHERE entry=17943;

/*  Ragnaros Core  */
UPDATE `item_template` SET `DisenchantID` = 49, `spelltrigger_1` = 0, `spellcooldown_1` = -1, `RandomProperty` = 3474 WHERE entry=17982;

/*  Royal Seal of Alexis  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18022;

/*  Blood Ruby Pendant  */
UPDATE `item_template` SET `spellid_1` = 13598, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellid_2` = 9413, `spelltrigger_2` = 1 WHERE entry=18023;

/*  Coal Miner Boots  */
UPDATE `item_template` SET `fire_res` = 10, `stat_value1` = 17, `stat_value2` = 9, `stat_type3` = 0, `stat_value3` = 0 WHERE entry=18043;

/*  Hurley's Tankard  */
UPDATE `item_template` SET `spellcooldown_1` = -1 WHERE entry=18044;

/*  Flame Walkers  */
UPDATE `item_template` SET `BuyPrice` = 122142, `SellPrice` = 24428, `fire_res` = 18, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 49, `spellid_1` = 13669 WHERE entry=18047;

/*  Mastersmith's Hammer  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18048;

/*  Dragonrider Boots  */
UPDATE `item_template` SET `BuyPrice` = 85794, `SellPrice` = 17158, `DisenchantID` = 49 WHERE entry=18102;

/*  Band of Rumination  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18103;

/*  Feralsurge Girdle  */
UPDATE `item_template` SET `BuyPrice` = 86425, `SellPrice` = 17285, `DisenchantID` = 49, `spelltrigger_1` = 0 WHERE entry=18104;

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

/*  Force Reactive Disk  */
UPDATE `item_template` SET `armor` = 2548, `BuyPrice` = 282082, `SellPrice` = 56416, `block` = 44 WHERE entry=18168;

/*  Eskhandar's Left Claw  */
UPDATE `item_template` SET `BuyPrice` = 452881, `SellPrice` = 90576 WHERE entry=18202;

/*  Eskhandar's Right Claw  */
UPDATE `item_template` SET `BuyPrice` = 454525, `SellPrice` = 90905 WHERE entry=18203;

/*  Eskhandar's Pelt  */
UPDATE `item_template` SET `armor` = 51, `BuyPrice` = 136851, `SellPrice` = 27370 WHERE entry=18204;

/*  Drape of Benediction  */
UPDATE `item_template` SET `armor` = 52, `BuyPrice` = 145737, `SellPrice` = 29147 WHERE entry=18208;

/*  Shadowskin Gloves  */
UPDATE `item_template` SET `BuyPrice` = 16608 WHERE entry=18238;

/*  Flarecore Wraps  */
UPDATE `item_template` SET `armor` = 43, `BuyPrice` = 84557, `SellPrice` = 16911 WHERE entry=18263;

/*  Core Marksman Rifle  */
UPDATE `item_template` SET `BuyPrice` = 331739, `SellPrice` = 66347, `dmg_min1` = 64.0, `dmg_max1` = 120.0 WHERE entry=18282;

/*  Barbed Thorn Necklace  */
UPDATE `item_template` SET `spellid_1` = 9358 WHERE entry=18289;

/*  Marksman Bands  */
UPDATE `item_template` SET `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 7570, `spellid_2` = 22811, `spellid_3` = 7582 WHERE entry=18296;

/*  Nimble Buckler  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 1776, `BuyPrice` = 126160, `SellPrice` = 25232, `ItemLevel` = 58, `block` = 32, `MaxDurability` = 85, `stat_type1` = 3, `stat_value1` = 5, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 21475, `spelltrigger_1` = 1, `RequiredLevel` = 53, `StatsCount` = 3 WHERE entry=18303;

/*  Greenroot Mail  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 313, `BuyPrice` = 107402, `SellPrice` = 21480, `ItemLevel` = 58, `MaxDurability` = 100, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 18029, `spelltrigger_1` = 1, `RequiredLevel` = 53, `StatsCount` = 3 WHERE entry=18304;

/*  Breakwater Legguards  */
UPDATE `item_template` SET `BuyPrice` = 71879, `SellPrice` = 14375 WHERE entry=18305;

/*  Gloves of Shadowy Mist  */
UPDATE `item_template` SET `spellid_1` = 9326 WHERE entry=18306;

/*  Riptide Shoes  */
UPDATE `item_template` SET `spellid_1` = 9306 WHERE entry=18307;

/*  Gloves of Restoration  */
UPDATE `item_template` SET `BuyPrice` = 56480, `SellPrice` = 11296 WHERE entry=18309;

/*  Energized Chestplate  */
UPDATE `item_template` SET `BuyPrice` = 90369, `SellPrice` = 18073 WHERE entry=18312;

/*  Helm of Awareness  */
UPDATE `item_template` SET `BuyPrice` = 68474, `SellPrice` = 13694 WHERE entry=18313;

/*  Obsidian Bauble  */
UPDATE `item_template` SET `spellid_1` = 14254, `spelltrigger_1` = 1 WHERE entry=18316;

/*  Demonheart Spaulders  */
UPDATE `item_template` SET `armor` = 258, `BuyPrice` = 105789, `SellPrice` = 21157, `ItemLevel` = 58, `MaxDurability` = 70, `stat_value1` = 14, `stat_value2` = 14, `stat_type3` = 4, `stat_value3` = 9, `RequiredLevel` = 53, `StatsCount` = 3 WHERE entry=18320;

/*  Waterspout Boots  */
UPDATE `item_template` SET `BuyPrice` = 80686, `SellPrice` = 16137 WHERE entry=18322;

/*  Satyr's Bow  */
UPDATE `item_template` SET `dmg_min1` = 50.0, `dmg_max1` = 93.0 WHERE entry=18323;

/*  Felhide Cap  */
UPDATE `item_template` SET `BuyPrice` = 80686, `SellPrice` = 16137 WHERE entry=18325;

/*  Razor Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 45184, `SellPrice` = 9036 WHERE entry=18326;

/*  Orphic Bracers  */
UPDATE `item_template` SET `spellid_1` = 13597 WHERE entry=18337;

/*  Wand of Arcane Potency  */
UPDATE `item_template` SET `spellid_1` = 13601 WHERE entry=18338;

/*  Murmuring Ring  */
UPDATE `item_template` SET `spellid_1` = 18985 WHERE entry=18345;

/*  Well Balanced Axe  */
UPDATE `item_template` SET `BuyPrice` = 215336, `SellPrice` = 43067 WHERE entry=18347;

/*  Quel'Serrar  */
UPDATE `item_template` SET `BuyPrice` = 563257, `SellPrice` = 112651, `dmg_min1` = 84.0, `dmg_max1` = 126.0, `spellppmrate_1` = 1.75 WHERE entry=18348;

/*  Gauntlets of Accuracy  */
UPDATE `item_template` SET `BuyPrice` = 62270, `SellPrice` = 12454 WHERE entry=18349;

/*  Amplifying Cloak  */
UPDATE `item_template` SET `BuyPrice` = 65319, `SellPrice` = 13063 WHERE entry=18350;

/*  Magically Sealed Bracers  */
UPDATE `item_template` SET `BuyPrice` = 43702, `SellPrice` = 8740 WHERE entry=18351;

/*  Petrified Bark Shield  */
UPDATE `item_template` SET `BuyPrice` = 140363, `SellPrice` = 28072 WHERE entry=18352;

/*  Stoneflower Staff  */
UPDATE `item_template` SET `BuyPrice` = 275154, `SellPrice` = 55030 WHERE entry=18353;

/*  Pimgib's Collar  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18354;

/*  Ferra's Collar  */
UPDATE `item_template` SET `spellid_1` = 22854, `spelltrigger_1` = 1 WHERE entry=18355;

/*  Gordok's Handguards  */
UPDATE `item_template` SET `BuyPrice` = 49025, `SellPrice` = 9805, `DisenchantID` = 49 WHERE entry=18366;

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
UPDATE `item_template` SET `BuyPrice` = 283580, `SellPrice` = 56716, `DisenchantID` = 49, `spellid_1` = 9326 WHERE entry=18372;

/*  Chestplate of Tranquility  */
UPDATE `item_template` SET `BuyPrice` = 142297, `SellPrice` = 28459, `DisenchantID` = 49 WHERE entry=18373;

/*  Flamescarred Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 107093, `SellPrice` = 21418, `DisenchantID` = 49 WHERE entry=18374;

/*  Bracers of the Eclipse  */
UPDATE `item_template` SET `BuyPrice` = 71649, `SellPrice` = 14329, `DisenchantID` = 49 WHERE entry=18375;

/*  Timeworn Mace  */
UPDATE `item_template` SET `BuyPrice` = 261534, `SellPrice` = 52306, `DisenchantID` = 49 WHERE entry=18376;

/*  Quickdraw Gloves  */
UPDATE `item_template` SET `BuyPrice` = 65383, `SellPrice` = 13076, `DisenchantID` = 49 WHERE entry=18377;

/*  Silvermoon Leggings  */
UPDATE `item_template` SET `BuyPrice` = 156920, `SellPrice` = 31384, `DisenchantID` = 49 WHERE entry=18378;

/*  Odious Greaves  */
UPDATE `item_template` SET `BuyPrice` = 118957, `SellPrice` = 23791, `DisenchantID` = 49 WHERE entry=18379;

/*  Eldritch Reinforced Legplates  */
UPDATE `item_template` SET `BuyPrice` = 105677, `SellPrice` = 21135, `DisenchantID` = 49 WHERE entry=18380;

/*  Evil Eye Pendant  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18381;

/*  Fluctuating Cloak  */
UPDATE `item_template` SET `BuyPrice` = 79858, `SellPrice` = 15971, `DisenchantID` = 49 WHERE entry=18382;

/*  Force Imbued Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 50897, `SellPrice` = 10179, `DisenchantID` = 49 WHERE entry=18383;

/*  Bile-etched Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 80467, `SellPrice` = 16093, `DisenchantID` = 49 WHERE entry=18384;

/*  Robe of Everlasting Night  */
UPDATE `item_template` SET `BuyPrice` = 107684, `SellPrice` = 21536, `DisenchantID` = 49 WHERE entry=18385;

/*  Padre's Trousers  */
UPDATE `item_template` SET `BuyPrice` = 102943, `SellPrice` = 20588, `DisenchantID` = 49 WHERE entry=18386;

/*  Brightspark Gloves  */
UPDATE `item_template` SET `BuyPrice` = 47443, `SellPrice` = 9488, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 49, `spellid_1` = 18384 WHERE entry=18387;

/*  Stoneshatter  */
UPDATE `item_template` SET `BuyPrice` = 209641, `SellPrice` = 41928, `dmg_min1` = 73.0, `dmg_max1` = 111.0, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 49, `spellid_1` = 22188 WHERE entry=18388;

/*  Cloak of the Cosmos  */
UPDATE `item_template` SET `BuyPrice` = 84152, `SellPrice` = 16830, `DisenchantID` = 49 WHERE entry=18389;

/*  Tanglemoss Leggings  */
UPDATE `item_template` SET `BuyPrice` = 134059, `SellPrice` = 26811, `DisenchantID` = 49 WHERE entry=18390;

/*  Eyestalk Cord  */
UPDATE `item_template` SET `BuyPrice` = 65383, `SellPrice` = 13076, `DisenchantID` = 49 WHERE entry=18391;

/*  Distracting Dagger  */
UPDATE `item_template` SET `BuyPrice` = 283553, `SellPrice` = 56710, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 49, `spellid_1` = 15717 WHERE entry=18392;

/*  Warpwood Binding  */
UPDATE `item_template` SET `BuyPrice` = 74724, `SellPrice` = 14944, `DisenchantID` = 49 WHERE entry=18393;

/*  Demon Howl Wristguards  */
UPDATE `item_template` SET `BuyPrice` = 85666, `SellPrice` = 17133, `DisenchantID` = 49 WHERE entry=18394;

/*  Emerald Flame Ring  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18395;

/*  Mind Carver  */
UPDATE `item_template` SET `BuyPrice` = 287583, `SellPrice` = 57516, `DisenchantID` = 49 WHERE entry=18396;

/*  Elder Magus Pendant  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18397;

/*  Tidal Loop  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18398;

/*  Ocean's Breeze  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18399;

/*  Belt of the Archmage  */
UPDATE `item_template` SET `armor` = 54, `BuyPrice` = 73720, `SellPrice` = 14744 WHERE entry=18405;

/*  Felcloth Gloves  */
UPDATE `item_template` SET `BuyPrice` = 55696, `SellPrice` = 11139, `DisenchantID` = 49, `spellid_1` = 18013 WHERE entry=18407;

/*  Inferno Gloves  */
UPDATE `item_template` SET `BuyPrice` = 55893, `SellPrice` = 11178, `DisenchantID` = 49, `spellid_1` = 17871 WHERE entry=18408;

/*  Mooncloth Gloves  */
UPDATE `item_template` SET `BuyPrice` = 56096, `SellPrice` = 11219, `DisenchantID` = 49 WHERE entry=18409;

/*  Cloak of Warding  */
UPDATE `item_template` SET `BuyPrice` = 85353, `SellPrice` = 17070, `DisenchantID` = 49 WHERE entry=18413;

/*  Bonecrusher  */
UPDATE `item_template` SET `BuyPrice` = 356184, `SellPrice` = 71236, `DisenchantID` = 49 WHERE entry=18420;

/*  Backwood Helm  */
UPDATE `item_template` SET `BuyPrice` = 128705, `SellPrice` = 25741, `DisenchantID` = 49 WHERE entry=18421;

/*  Sedge Boots  */
UPDATE `item_template` SET `BuyPrice` = 102979, `SellPrice` = 20595, `DisenchantID` = 49 WHERE entry=18424;

/*  Kreeg's Mug  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=18425;

/*  Sergeant's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 6611, `SellPrice` = 1322 WHERE entry=18427;

/*  Senior Sergeant's Insignia  */
UPDATE `item_template` SET `BuyPrice` = 30000, `SellPrice` = 7500, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=18428;

/*  First Sergeant's Plate Bracers  */
UPDATE `item_template` SET `BuyPrice` = 29447, `SellPrice` = 5889 WHERE entry=18429;

/*  First Sergeant's Plate Bracers  */
UPDATE `item_template` SET `BuyPrice` = 14391, `SellPrice` = 2878 WHERE entry=18430;

/*  First Sergeant's Mail Wristguards  */
UPDATE `item_template` SET `BuyPrice` = 21742, `SellPrice` = 4348 WHERE entry=18432;

/*  First Sergeant's Dragonhide Armguards  */
UPDATE `item_template` SET `BuyPrice` = 37468, `SellPrice` = 7493 WHERE entry=18434;

/*  First Sergeant's Leather Armguards  */
UPDATE `item_template` SET `BuyPrice` = 18311, `SellPrice` = 3662 WHERE entry=18435;

/*  First Sergeant's Dragonhide Armguards  */
UPDATE `item_template` SET `BuyPrice` = 17086, `SellPrice` = 3417 WHERE entry=18436;

/*  First Sergeant's Silk Cuffs  */
UPDATE `item_template` SET `BuyPrice` = 13721, `SellPrice` = 2744 WHERE entry=18437;

/*  Sergeant's Mark  */
UPDATE `item_template` SET `spellid_1` = 22891, `spellcooldown_1` = 180000, `spellcategorycooldown_1` = 0 WHERE entry=18438;

/*  Sergeant's Cape  */
UPDATE `item_template` SET `BuyPrice` = 6443, `SellPrice` = 1288 WHERE entry=18440;

/*  Sergeant's Cape  */
UPDATE `item_template` SET `BuyPrice` = 20891, `SellPrice` = 4178 WHERE entry=18441;

/*  Master Sergeant's Insignia  */
UPDATE `item_template` SET `BuyPrice` = 20000, `SellPrice` = 5000, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=18442;

/*  Master Sergeant's Insignia  */
UPDATE `item_template` SET `BuyPrice` = 40000, `SellPrice` = 10000, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=18443;

/*  Master Sergeant's Insignia  */
UPDATE `item_template` SET `BuyPrice` = 30000, `SellPrice` = 7500, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=18444;

/*  Sergeant Major's Plate Wristguards  */
UPDATE `item_template` SET `BuyPrice` = 29021, `SellPrice` = 5804 WHERE entry=18445;

/*  Sergeant Major's Plate Wristguards  */
UPDATE `item_template` SET `BuyPrice` = 14235, `SellPrice` = 2847 WHERE entry=18447;

/*  Sergeant Major's Chain Armguards  */
UPDATE `item_template` SET `BuyPrice` = 44007, `SellPrice` = 8801 WHERE entry=18448;

/*  Sergeant Major's Chain Armguards  */
UPDATE `item_template` SET `BuyPrice` = 21507, `SellPrice` = 4301 WHERE entry=18449;

/*  Robe of Combustion  */
UPDATE `item_template` SET `BuyPrice` = 79073, `SellPrice` = 15814, `spellid_1` = 17867 WHERE entry=18450;

/*  Hyena Hide Belt  */
UPDATE `item_template` SET `BuyPrice` = 49420, `SellPrice` = 9884 WHERE entry=18451;

/*  Sergeant Major's Leather Armsplints  */
UPDATE `item_template` SET `BuyPrice` = 34553, `SellPrice` = 6910 WHERE entry=18452;

/*  Sergeant Major's Leather Armsplints  */
UPDATE `item_template` SET `BuyPrice` = 16890, `SellPrice` = 3378 WHERE entry=18453;

/*  Sergeant Major's Dragonhide Armsplints  */
UPDATE `item_template` SET `BuyPrice` = 34815, `SellPrice` = 6963 WHERE entry=18454;

/*  Sergeant Major's Dragonhide Armsplints  */
UPDATE `item_template` SET `BuyPrice` = 17020, `SellPrice` = 3404 WHERE entry=18455;

/*  Sergeant Major's Silk Cuffs  */
UPDATE `item_template` SET `BuyPrice` = 28065, `SellPrice` = 5613 WHERE entry=18456;

/*  Sergeant Major's Silk Cuffs  */
UPDATE `item_template` SET `BuyPrice` = 13373, `SellPrice` = 2674 WHERE entry=18457;

/*  Gallant's Wristguards  */
UPDATE `item_template` SET `BuyPrice` = 39536, `SellPrice` = 7907 WHERE entry=18459;

/*  Unsophisticated Hand Cannon  */
UPDATE `item_template` SET `dmg_min1` = 48.0, `dmg_max1` = 91.0 WHERE entry=18460;

/*  Sergeant's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 42888, `SellPrice` = 8577 WHERE entry=18461;

/*  Jagged Bone Fist  */
UPDATE `item_template` SET `dmg_min1` = 51.0, `dmg_max1` = 78.0 WHERE entry=18462;

/*  Royal Seal of Eldre'Thalas  */
UPDATE `item_template` SET `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0 WHERE entry=18472;

/*  Oddly Magical Belt  */
UPDATE `item_template` SET `BuyPrice` = 39536, `SellPrice` = 7907 WHERE entry=18475;

/*  Mud Stained Boots  */
UPDATE `item_template` SET `BuyPrice` = 75747, `SellPrice` = 15149 WHERE entry=18476;

/*  Shaggy Leggings  */
UPDATE `item_template` SET `BuyPrice` = 98841, `SellPrice` = 19768 WHERE entry=18477;

/*  Hyena Hide Jerkin  */
UPDATE `item_template` SET `BuyPrice` = 98841, `SellPrice` = 19768 WHERE entry=18478;

/*  Carrion Scorpid Helm  */
UPDATE `item_template` SET `BuyPrice` = 88957, `SellPrice` = 17791 WHERE entry=18479;

/*  Scarab Plate Helm  */
UPDATE `item_template` SET `BuyPrice` = 59304, `SellPrice` = 11860 WHERE entry=18480;

/*  Skullcracking Mace  */
UPDATE `item_template` SET `BuyPrice` = 257259, `SellPrice` = 51451 WHERE entry=18481;

/*  Ogre Toothpick Shooter  */
UPDATE `item_template` SET `BuyPrice` = 154930, `SellPrice` = 30986, `dmg_min1` = 61.0, `dmg_max1` = 62.0 WHERE entry=18482;

/*  Mana Channeling Wand  */
UPDATE `item_template` SET `BuyPrice` = 186810, `SellPrice` = 37362, `DisenchantID` = 49 WHERE entry=18483;

/*  Cho'Rush's Blade  */
UPDATE `item_template` SET `BuyPrice` = 269110, `SellPrice` = 53822, `DisenchantID` = 49 WHERE entry=18484;

/*  Observer's Shield  */
UPDATE `item_template` SET `BuyPrice` = 172849, `SellPrice` = 34569, `DisenchantID` = 49 WHERE entry=18485;

/*  Mooncloth Robe  */
UPDATE `item_template` SET `BuyPrice` = 108417, `SellPrice` = 21683, `DisenchantID` = 49 WHERE entry=18486;

/*  Insightful Hood  */
UPDATE `item_template` SET `BuyPrice` = 93277, `SellPrice` = 18655, `DisenchantID` = 49 WHERE entry=18490;

/*  Lorespinner  */
UPDATE `item_template` SET `dmg_min1` = 45.0, `dmg_max1` = 68.0 WHERE entry=18491;

/*  Bulky Iron Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 71165, `SellPrice` = 14233, `DisenchantID` = 49 WHERE entry=18493;

/*  Denwatcher's Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 107223, `SellPrice` = 21444, `DisenchantID` = 49 WHERE entry=18494;

/*  Redoubt Cloak  */
UPDATE `item_template` SET `BuyPrice` = 83851, `SellPrice` = 16770, `DisenchantID` = 49 WHERE entry=18495;

/*  Heliotrope Cloak  */
UPDATE `item_template` SET `BuyPrice` = 71165, `SellPrice` = 14233, `DisenchantID` = 49 WHERE entry=18496;

/*  Sublime Wristguards  */
UPDATE `item_template` SET `BuyPrice` = 47443, `SellPrice` = 9488, `DisenchantID` = 49 WHERE entry=18497;

/*  Hedgecutter  */
UPDATE `item_template` SET `BuyPrice` = 237219, `SellPrice` = 47443, `DisenchantID` = 49 WHERE entry=18498;

/*  Barrier Shield  */
UPDATE `item_template` SET `BuyPrice` = 172945, `SellPrice` = 34589, `DisenchantID` = 49 WHERE entry=18499;

/*  Tarnished Elven Ring  */
UPDATE `item_template` SET `BuyPrice` = 125360, `SellPrice` = 31340, `DisenchantID` = 49 WHERE entry=18500;

/*  Monstrous Glaive  */
UPDATE `item_template` SET `BuyPrice` = 350636, `SellPrice` = 70127, `DisenchantID` = 49 WHERE entry=18502;

/*  Kromcrush's Chestplate  */
UPDATE `item_template` SET `BuyPrice` = 112609, `SellPrice` = 22521, `DisenchantID` = 49 WHERE entry=18503;

/*  Girdle of Insight  */
UPDATE `item_template` SET `BuyPrice` = 70634, `SellPrice` = 14126, `DisenchantID` = 49 WHERE entry=18504;

/*  Mugger's Belt  */
UPDATE `item_template` SET `BuyPrice` = 65383, `SellPrice` = 13076, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 49, `spellid_2` = 7576 WHERE entry=18505;

/*  Mongoose Boots  */
UPDATE `item_template` SET `BuyPrice` = 106702, `SellPrice` = 21340, `DisenchantID` = 49 WHERE entry=18506;

/*  Boots of the Full Moon  */
UPDATE `item_template` SET `BuyPrice` = 78460, `SellPrice` = 15692, `DisenchantID` = 49 WHERE entry=18507;

/*  Swift Flight Bracers  */
UPDATE `item_template` SET `BuyPrice` = 85970, `SellPrice` = 17194, `DisenchantID` = 49 WHERE entry=18508;

/*  Chromatic Cloak  */
UPDATE `item_template` SET `armor` = 48, `BuyPrice` = 115033, `SellPrice` = 23006 WHERE entry=18509;

/*  Hide of the Wild  */
UPDATE `item_template` SET `armor` = 48, `BuyPrice` = 104449, `SellPrice` = 20889 WHERE entry=18510;

/*  Shifting Cloak  */
UPDATE `item_template` SET `armor` = 48, `BuyPrice` = 104855, `SellPrice` = 20971 WHERE entry=18511;

/*  Barbarous Blade  */
UPDATE `item_template` SET `BuyPrice` = 365505, `SellPrice` = 73101, `DisenchantID` = 49 WHERE entry=18520;

/*  Grimy Metal Boots  */
UPDATE `item_template` SET `BuyPrice` = 88032, `SellPrice` = 17606, `DisenchantID` = 49 WHERE entry=18521;

/*  Band of the Ogre King  */
UPDATE `item_template` SET `BuyPrice` = 145013, `SellPrice` = 36253, `DisenchantID` = 49 WHERE entry=18522;

/*  Brightly Glowing Stone  */
UPDATE `item_template` SET `BuyPrice` = 139243, `SellPrice` = 34810, `DisenchantID` = 49 WHERE entry=18523;

/*  Leggings of Destruction  */
UPDATE `item_template` SET `BuyPrice` = 177982, `SellPrice` = 35596, `DisenchantID` = 49 WHERE entry=18524;

/*  Bracers of Prosperity  */
UPDATE `item_template` SET `BuyPrice` = 68652, `SellPrice` = 13730, `DisenchantID` = 49 WHERE entry=18525;

/*  Crown of the Ogre King  */
UPDATE `item_template` SET `BuyPrice` = 89621, `SellPrice` = 17924, `DisenchantID` = 49 WHERE entry=18526;

/*  Harmonious Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 89941, `SellPrice` = 17988, `DisenchantID` = 49 WHERE entry=18527;

/*  Cyclone Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 102326, `SellPrice` = 20465, `DisenchantID` = 49 WHERE entry=18528;

/*  Elemental Plate Girdle  */
UPDATE `item_template` SET `BuyPrice` = 49816, `SellPrice` = 9963, `DisenchantID` = 49 WHERE entry=18529;

/*  Ogre Forged Hauberk  */
UPDATE `item_template` SET `BuyPrice` = 156657, `SellPrice` = 31331, `DisenchantID` = 49 WHERE entry=18530;

/*  Unyielding Maul  */
UPDATE `item_template` SET `BuyPrice` = 326918, `SellPrice` = 65383, `DisenchantID` = 49 WHERE entry=18531;

/*  Mindsurge Robe  */
UPDATE `item_template` SET `BuyPrice` = 108145, `SellPrice` = 21629, `DisenchantID` = 49 WHERE entry=18532;

/*  Gordok Bracers of Power  */
UPDATE `item_template` SET `BuyPrice` = 54922, `SellPrice` = 10984, `DisenchantID` = 49 WHERE entry=18533;

/*  Rod of the Ogre Magi  */
UPDATE `item_template` SET `BuyPrice` = 357515, `SellPrice` = 71503, `DisenchantID` = 49 WHERE entry=18534;

/*  Counterattack Lodestone  */
UPDATE `item_template` SET `BuyPrice` = 264540, `SellPrice` = 66135, `DisenchantID` = 49 WHERE entry=18537;

/*  Treant's Bane  */
UPDATE `item_template` SET `BuyPrice` = 483741, `SellPrice` = 96748, `dmg_min1` = 128.0, `dmg_max1` = 193.0, `spelltrigger_2` = 0 WHERE entry=18538;

/*  Puissant Cape  */
UPDATE `item_template` SET `armor` = 54, `BuyPrice` = 165144, `SellPrice` = 33028 WHERE entry=18541;

/*  Typhoon  */
UPDATE `item_template` SET `BuyPrice` = 626393, `SellPrice` = 125278 WHERE entry=18542;

/*  Doomhide Gauntlets  */
UPDATE `item_template` SET `armor` = 133, `BuyPrice` = 146060, `SellPrice` = 29212 WHERE entry=18544;

/*  Leggings of Arcane Supremacy  */
UPDATE `item_template` SET `armor` = 93, `BuyPrice` = 212731, `SellPrice` = 42546, `spellid_1` = 17830 WHERE entry=18545;

/*  Infernal Headcage  */
UPDATE `item_template` SET `armor` = 358, `BuyPrice` = 240179, `SellPrice` = 48035 WHERE entry=18546;

/*  Unmelting Ice Girdle  */
UPDATE `item_template` SET `armor` = 452, `BuyPrice` = 118096, `SellPrice` = 23619 WHERE entry=18547;

/*  The Twin Blades of Azzinoth  */
UPDATE `item_template` SET `BuyPrice` = 6122369, `SellPrice` = 1224473, `dmg_min1` = 132.0, `dmg_max1` = 139.0 WHERE entry=18582;

/*  Warglaive of Azzinoth (Right)  */
UPDATE `item_template` SET `BuyPrice` = 5559741, `SellPrice` = 1111948, `dmg_min1` = 85.0, `dmg_max1` = 95.0 WHERE entry=18583;

/*  Warglaive of Azzinoth (Left)  */
UPDATE `item_template` SET `BuyPrice` = 5581336, `SellPrice` = 1116267, `dmg_min1` = 85.0, `dmg_max1` = 95.0 WHERE entry=18584;

/*  Tome of Sacrifice  */
UPDATE `item_template` SET `BuyPrice` = 0, `SellPrice` = 0, `DisenchantID` = 49 WHERE entry=18602;

/*  Benediction  */
UPDATE `item_template` SET `stat_type4` = 0, `stat_value4` = 0, `spellid_2` = 23236 WHERE entry=18608;

/*  Anathema  */
UPDATE `item_template` SET `spellid_3` = 23265 WHERE entry=18609;

/*  Keen Machete  */
UPDATE `item_template` SET `BuyPrice` = 181, `SellPrice` = 36, `bonding` = 2 WHERE entry=18610;

/*  Gnarlpine Leggings  */
UPDATE `item_template` SET `bonding` = 2 WHERE entry=18611;

/*  Bloody Chain Boots  */
UPDATE `item_template` SET `BuyPrice` = 171, `SellPrice` = 34, `bonding` = 2 WHERE entry=18612;

/*  Baron Charr's Sceptre  */
UPDATE `item_template` SET `BuyPrice` = 225923, `SellPrice` = 45184 WHERE entry=18671;

/*  Elemental Ember  */
UPDATE `item_template` SET `spellid_1` = 9400 WHERE entry=18672;

/*  Avalanchion's Stony Hide  */
UPDATE `item_template` SET `BuyPrice` = 144591, `SellPrice` = 28918 WHERE entry=18673;

/*  Sash of the Windreaver  */
UPDATE `item_template` SET `BuyPrice` = 80404, `SellPrice` = 16080, `DisenchantID` = 49, `spellid_1` = 17819 WHERE entry=18676;

/*  Zephyr Cloak  */
UPDATE `item_template` SET `BuyPrice` = 62439, `SellPrice` = 12487 WHERE entry=18677;

/*  Tempestria's Frozen Necklace  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18678;

/*  Frigid Ring  */
UPDATE `item_template` SET `spellid_1` = 9404 WHERE entry=18679;

/*  Ancient Bone Bow  */
UPDATE `item_template` SET `BuyPrice` = 189474, `SellPrice` = 37894, `dmg_min1` = 61.0, `dmg_max1` = 114.0, `DisenchantID` = 49 WHERE entry=18680;

/*  Burial Shawl  */
UPDATE `item_template` SET `BuyPrice` = 76079, `SellPrice` = 15215, `DisenchantID` = 49 WHERE entry=18681;

/*  Ghoul Skin Leggings  */
UPDATE `item_template` SET `BuyPrice` = 127282, `SellPrice` = 25456, `DisenchantID` = 49 WHERE entry=18682;

/*  Hammer of the Vesper  */
UPDATE `item_template` SET `BuyPrice` = 255504, `SellPrice` = 51100, `DisenchantID` = 49 WHERE entry=18683;

/*  Dimly Opalescent Ring  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18684;

/*  Bone Golem Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 122638, `SellPrice` = 24527, `DisenchantID` = 49 WHERE entry=18686;

/*  Phantasmal Cloak  */
UPDATE `item_template` SET `BuyPrice` = 82301, `SellPrice` = 16460, `DisenchantID` = 49 WHERE entry=18689;

/*  Wraithplate Leggings  */
UPDATE `item_template` SET `BuyPrice` = 110130, `SellPrice` = 22026, `DisenchantID` = 49 WHERE entry=18690;

/*  Dark Advisor's Pendant  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellid_1` = 9327 WHERE entry=18691;

/*  Death Knight Sabatons  */
UPDATE `item_template` SET `BuyPrice` = 71877, `SellPrice` = 14375 WHERE entry=18692;

/*  Shivery Handwraps  */
UPDATE `item_template` SET `BuyPrice` = 57127, `SellPrice` = 11425, `DisenchantID` = 49, `spellid_1` = 9305 WHERE entry=18693;

/*  Shadowy Mail Greaves  */
UPDATE `item_template` SET `BuyPrice` = 129554, `SellPrice` = 25910, `DisenchantID` = 49 WHERE entry=18694;

/*  Spellbound Tome  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18695;

/*  Intricately Runed Shield  */
UPDATE `item_template` SET `BuyPrice` = 167382, `SellPrice` = 33476, `DisenchantID` = 49 WHERE entry=18696;

/*  Belt of the Ordained  */
UPDATE `item_template` SET `BuyPrice` = 48478, `SellPrice` = 9695, `DisenchantID` = 49 WHERE entry=18702;

/*  Arena Vambraces  */
UPDATE `item_template` SET `BuyPrice` = 29105, `SellPrice` = 5821 WHERE entry=18712;

/*  Rhok'delar, Longbow of the Ancient Keepers  */
UPDATE `item_template` SET `dmg_min1` = 89.0, `dmg_max1` = 166.0, `spellid_1` = 7597, `spellid_2` = 21432, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=18713;

/*  Lok'delar, Stave of the Ancient Keepers  */
UPDATE `item_template` SET `spellid_1` = 7598, `spellid_2` = 14097, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=18715;

/*  Ash Covered Boots  */
UPDATE `item_template` SET `BuyPrice` = 93277, `SellPrice` = 18655, `DisenchantID` = 49 WHERE entry=18716;

/*  Hammer of the Grand Crusader  */
UPDATE `item_template` SET `BuyPrice` = 344091, `SellPrice` = 68818, `DisenchantID` = 49 WHERE entry=18717;

/*  Grand Crusader's Helm  */
UPDATE `item_template` SET `BuyPrice` = 82901, `SellPrice` = 16580, `DisenchantID` = 49 WHERE entry=18718;

/*  Shroud of the Nathrezim  */
UPDATE `item_template` SET `BuyPrice` = 83532, `SellPrice` = 16706, `DisenchantID` = 49 WHERE entry=18720;

/*  Barrage Girdle  */
UPDATE `item_template` SET `BuyPrice` = 74724, `SellPrice` = 14944, `DisenchantID` = 49 WHERE entry=18721;

/*  Death Grips  */
UPDATE `item_template` SET `BuyPrice` = 53442, `SellPrice` = 10688, `DisenchantID` = 49, `spellid_1` = 7219 WHERE entry=18722;

/*  Animated Chain Necklace  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18723;

/*  Magistrate's Cuffs  */
UPDATE `item_template` SET `BuyPrice` = 56480, `SellPrice` = 11296 WHERE entry=18726;

/*  Anastari Heirloom  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellid_1` = 9413 WHERE entry=18728;

/*  Screeching Bow  */
UPDATE `item_template` SET `dmg_min1` = 70.0, `dmg_max1` = 71.0, `DisenchantID` = 49 WHERE entry=18729;

/*  Shadowy Laced Handwraps  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18730;

/*  Pale Moon Cloak  */
UPDATE `item_template` SET `BuyPrice` = 85970, `SellPrice` = 17194, `DisenchantID` = 49 WHERE entry=18734;

/*  Maleki's Footwraps  */
UPDATE `item_template` SET `BuyPrice` = 86266, `SellPrice` = 17253, `DisenchantID` = 49, `spellid_1` = 18009 WHERE entry=18735;

/*  Plaguehound Leggings  */
UPDATE `item_template` SET `BuyPrice` = 130561, `SellPrice` = 26112, `DisenchantID` = 49 WHERE entry=18736;

/*  Bone Slicing Hatchet  */
UPDATE `item_template` SET `BuyPrice` = 262137, `SellPrice` = 52427, `DisenchantID` = 49 WHERE entry=18737;

/*  Carapace Spine Crossbow  */
UPDATE `item_template` SET `BuyPrice` = 187966, `SellPrice` = 37593, `dmg_min1` = 82.0, `dmg_max1` = 124.0, `DisenchantID` = 49 WHERE entry=18738;

/*  Chitinous Plate Legguards  */
UPDATE `item_template` SET `BuyPrice` = 100624, `SellPrice` = 20124, `DisenchantID` = 49 WHERE entry=18739;

/*  Thuzadin Sash  */
UPDATE `item_template` SET `BuyPrice` = 50505, `SellPrice` = 10101, `DisenchantID` = 49 WHERE entry=18740;

/*  Morlune's Bracer  */
UPDATE `item_template` SET `BuyPrice` = 52082, `SellPrice` = 10416, `DisenchantID` = 49 WHERE entry=18741;

/*  Stratholme Militia Shoulderguard  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18742;

/*  Item Properties Test  */
UPDATE `item_template` SET `spellid_1` = 9417, `spelltrigger_1` = 1, `spellid_2` = 14049, `spelltrigger_2` = 1, `spellid_3` = 9405, `spelltrigger_3` = 1 WHERE entry=18747;

/*  Fel Hardened Bracers  */
UPDATE `item_template` SET `BuyPrice` = 52306, `SellPrice` = 10461, `DisenchantID` = 49 WHERE entry=18754;

/*  Xorothian Firestick  */
UPDATE `item_template` SET `BuyPrice` = 215646, `SellPrice` = 43129, `dmg_min1` = 57.0, `dmg_max1` = 108.0, `DisenchantID` = 49 WHERE entry=18755;

/*  Dreadguard's Protector  */
UPDATE `item_template` SET `BuyPrice` = 167101, `SellPrice` = 33420, `DisenchantID` = 49 WHERE entry=18756;

/*  Diabolic Mantle  */
UPDATE `item_template` SET `BuyPrice` = 80813, `SellPrice` = 16162, `DisenchantID` = 49 WHERE entry=18757;

/*  Specter's Blade  */
UPDATE `item_template` SET `BuyPrice` = 270363, `SellPrice` = 54072, `DisenchantID` = 49 WHERE entry=18758;

/*  Malicious Axe  */
UPDATE `item_template` SET `BuyPrice` = 339223, `SellPrice` = 67844, `DisenchantID` = 49 WHERE entry=18759;

/*  Necromantic Band  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18760;

/*  Oblivion's Touch  */
UPDATE `item_template` SET `BuyPrice` = 205055, `SellPrice` = 41011, `DisenchantID` = 49 WHERE entry=18761;

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

/*  Finkle's Lava Dredger  */
UPDATE `item_template` SET `BuyPrice` = 677972, `SellPrice` = 135594 WHERE entry=18803;

/*  Core Hound Tooth  */
UPDATE `item_template` SET `BuyPrice` = 546375, `SellPrice` = 109275 WHERE entry=18805;

/*  Core Forged Greaves  */
UPDATE `item_template` SET `armor` = 634, `BuyPrice` = 168806, `SellPrice` = 33761 WHERE entry=18806;

/*  Helm of Latent Power  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=18807;

/*  Gloves of the Hypnotic Flame  */
UPDATE `item_template` SET `armor` = 67, `BuyPrice` = 113326, `SellPrice` = 22665, `spellid_1` = 17747, `spellid_2` = 9415 WHERE entry=18808;

/*  Sash of Whispered Secrets  */
UPDATE `item_template` SET `armor` = 61, `BuyPrice` = 108057, `SellPrice` = 21611, `spellid_1` = 18013 WHERE entry=18809;

/*  Wild Growth Spaulders  */
UPDATE `item_template` SET `armor` = 159, `BuyPrice` = 203394, `SellPrice` = 40678 WHERE entry=18810;

/*  Fireproof Cloak  */
UPDATE `item_template` SET `armor` = 54, `BuyPrice` = 163328, `SellPrice` = 32665 WHERE entry=18811;

/*  Wristguards of True Flight  */
UPDATE `item_template` SET `armor` = 198, `BuyPrice` = 162290, `SellPrice` = 32458 WHERE entry=18812;

/*  Perdition's Blade  */
UPDATE `item_template` SET `BuyPrice` = 743570, `SellPrice` = 148714, `spellppmrate_1` = 1.3 WHERE entry=18816;

/*  Crown of Destruction  */
UPDATE `item_template` SET `armor` = 392, `BuyPrice` = 319878, `SellPrice` = 63975, `stat_type4` = 0, `stat_value4` = 0, `spellid_1` = 7598 WHERE entry=18817;

/*  Obsidian Edged Blade  */
UPDATE `item_template` SET `BuyPrice` = 628843, `SellPrice` = 125768, `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 15771 WHERE entry=18822;

/*  Aged Core Leather Gloves  */
UPDATE `item_template` SET `armor` = 130, `BuyPrice` = 132532, `SellPrice` = 26506, `stat_type3` = 0, `stat_value3` = 0, `spellid_2` = 7576 WHERE entry=18823;

/*  Magma Tempered Boots  */
UPDATE `item_template` SET `armor` = 544, `BuyPrice` = 167591, `SellPrice` = 33518 WHERE entry=18824;

/*  Grand Marshal's Aegis  */
UPDATE `item_template` SET `armor` = 2929, `BuyPrice` = 159036, `SellPrice` = 31807, `block` = 55 WHERE entry=18825;

/*  High Warlord's Shield Wall  */
UPDATE `item_template` SET `armor` = 2929, `BuyPrice` = 159587, `SellPrice` = 31917, `block` = 55 WHERE entry=18826;

/*  Grand Marshal's Handaxe  */
UPDATE `item_template` SET `BuyPrice` = 250241, `SellPrice` = 50048 WHERE entry=18827;

/*  High Warlord's Cleaver  */
UPDATE `item_template` SET `BuyPrice` = 251127, `SellPrice` = 50225 WHERE entry=18828;

/*  Deep Earth Spaulders  */
UPDATE `item_template` SET `armor` = 399, `BuyPrice` = 244184, `SellPrice` = 48836, `spellid_1` = 17997 WHERE entry=18829;

/*  Grand Marshal's Sunderer  */
UPDATE `item_template` SET `BuyPrice` = 286137, `SellPrice` = 57227 WHERE entry=18830;

/*  High Warlord's Battle Axe  */
UPDATE `item_template` SET `BuyPrice` = 287244, `SellPrice` = 57448 WHERE entry=18831;

/*  Brutality Blade  */
UPDATE `item_template` SET `BuyPrice` = 520447, `SellPrice` = 104089 WHERE entry=18832;

/*  Grand Marshal's Bullseye  */
UPDATE `item_template` SET `BuyPrice` = 173657, `SellPrice` = 34731, `dmg_min1` = 66.0, `dmg_max1` = 100.0 WHERE entry=18833;

/*  Insignia of the Horde  */
UPDATE `item_template` SET `BuyPrice` = 15000, `SellPrice` = 3750, `ItemLevel` = 0, `spellid_1` = 5579, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18834;

/*  High Warlord's Recurve  */
UPDATE `item_template` SET `BuyPrice` = 174986, `SellPrice` = 34997, `dmg_min1` = 66.0, `dmg_max1` = 100.0 WHERE entry=18835;

/*  Grand Marshal's Repeater  */
UPDATE `item_template` SET `BuyPrice` = 175650, `SellPrice` = 35130, `dmg_min1` = 107.0, `dmg_max1` = 162.0 WHERE entry=18836;

/*  High Warlord's Crossbow  */
UPDATE `item_template` SET `BuyPrice` = 176297, `SellPrice` = 35259, `dmg_min1` = 107.0, `dmg_max1` = 162.0 WHERE entry=18837;

/*  Grand Marshal's Dirk  */
UPDATE `item_template` SET `BuyPrice` = 242293, `SellPrice` = 48458 WHERE entry=18838;

/*  High Warlord's Razor  */
UPDATE `item_template` SET `BuyPrice` = 244064, `SellPrice` = 48812 WHERE entry=18840;

/*  Staff of Dominance  */
UPDATE `item_template` SET `BuyPrice` = 693232, `SellPrice` = 138646 WHERE entry=18842;

/*  Grand Marshal's Right Hand Blade  */
UPDATE `item_template` SET `BuyPrice` = 246698, `SellPrice` = 49339 WHERE entry=18843;

/*  High Warlord's Right Claw  */
UPDATE `item_template` SET `BuyPrice` = 247584, `SellPrice` = 49516 WHERE entry=18844;

/*  Insignia of the Horde  */
UPDATE `item_template` SET `BuyPrice` = 15000, `SellPrice` = 3750, `ItemLevel` = 0, `spellid_1` = 5579, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18845;

/*  Insignia of the Horde  */
UPDATE `item_template` SET `BuyPrice` = 15000, `SellPrice` = 3750, `ItemLevel` = 0, `spellid_1` = 5579, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18846;

/*  Grand Marshal's Left Hand Blade  */
UPDATE `item_template` SET `BuyPrice` = 250218, `SellPrice` = 50043 WHERE entry=18847;

/*  High Warlord's Left Claw  */
UPDATE `item_template` SET `BuyPrice` = 251079, `SellPrice` = 50215 WHERE entry=18848;

/*  Insignia of the Horde  */
UPDATE `item_template` SET `BuyPrice` = 15000, `SellPrice` = 3750, `ItemLevel` = 0, `spellid_1` = 42292, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18849;

/*  Insignia of the Horde  */
UPDATE `item_template` SET `BuyPrice` = 15000, `SellPrice` = 3750, `ItemLevel` = 0, `spellid_1` = 23274, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18850;

/*  Insignia of the Horde  */
UPDATE `item_template` SET `BuyPrice` = 15000, `SellPrice` = 3750, `ItemLevel` = 0, `spellid_1` = 23276, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18851;

/*  Insignia of the Horde  */
UPDATE `item_template` SET `BuyPrice` = 15000, `SellPrice` = 3750, `ItemLevel` = 0, `spellid_1` = 42292, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18852;

/*  Insignia of the Horde  */
UPDATE `item_template` SET `BuyPrice` = 15000, `SellPrice` = 3750, `ItemLevel` = 0, `spellid_1` = 23277, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18853;

/*  Insignia of the Alliance  */
UPDATE `item_template` SET `BuyPrice` = 15000, `SellPrice` = 3750, `ItemLevel` = 0, `spellid_1` = 5579, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18854;

/*  Grand Marshal's Hand Cannon  */
UPDATE `item_template` SET `BuyPrice` = 179726, `SellPrice` = 35945, `dmg_min1` = 107.0, `dmg_max1` = 162.0 WHERE entry=18855;

/*  Insignia of the Alliance  */
UPDATE `item_template` SET `BuyPrice` = 15000, `SellPrice` = 3750, `ItemLevel` = 0, `spellid_1` = 5579, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18856;

/*  Insignia of the Alliance  */
UPDATE `item_template` SET `BuyPrice` = 15000, `SellPrice` = 3750, `ItemLevel` = 0, `spellid_1` = 42292, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18857;

/*  Insignia of the Alliance  */
UPDATE `item_template` SET `BuyPrice` = 15000, `SellPrice` = 3750, `ItemLevel` = 0, `spellid_1` = 42292, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18858;

/*  Insignia of the Alliance  */
UPDATE `item_template` SET `BuyPrice` = 15000, `SellPrice` = 3750, `ItemLevel` = 0, `spellid_1` = 23274, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18859;

/*  High Warlord's Street Sweeper  */
UPDATE `item_template` SET `BuyPrice` = 183012, `SellPrice` = 36602, `dmg_min1` = 107.0, `dmg_max1` = 162.0 WHERE entry=18860;

/*  Flamewaker Legplates  */
UPDATE `item_template` SET `armor` = 748, `BuyPrice` = 142467, `SellPrice` = 28493 WHERE entry=18861;

/*  Insignia of the Alliance  */
UPDATE `item_template` SET `BuyPrice` = 15000, `SellPrice` = 3750, `ItemLevel` = 0, `spellid_1` = 23276, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18862;

/*  Insignia of the Alliance  */
UPDATE `item_template` SET `BuyPrice` = 15000, `SellPrice` = 3750, `ItemLevel` = 0, `spellid_1` = 23277, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18863;

/*  Insignia of the Alliance  */
UPDATE `item_template` SET `BuyPrice` = 15000, `SellPrice` = 3750, `ItemLevel` = 0, `spellid_1` = 23276, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=18864;

/*  Grand Marshal's Punisher  */
UPDATE `item_template` SET `BuyPrice` = 248422, `SellPrice` = 49684 WHERE entry=18865;

/*  High Warlord's Bludgeon  */
UPDATE `item_template` SET `BuyPrice` = 249308, `SellPrice` = 49861 WHERE entry=18866;

/*  Grand Marshal's Battle Hammer  */
UPDATE `item_template` SET `BuyPrice` = 312712, `SellPrice` = 62542 WHERE entry=18867;

/*  High Warlord's Pulverizer  */
UPDATE `item_template` SET `BuyPrice` = 313819, `SellPrice` = 62763 WHERE entry=18868;

/*  Grand Marshal's Glaive  */
UPDATE `item_template` SET `BuyPrice` = 284969, `SellPrice` = 56993 WHERE entry=18869;

/*  Helm of the Lifegiver  */
UPDATE `item_template` SET `armor` = 324, `BuyPrice` = 156920, `SellPrice` = 31384 WHERE entry=18870;

/*  High Warlord's Pig Sticker  */
UPDATE `item_template` SET `BuyPrice` = 295085, `SellPrice` = 59017 WHERE entry=18871;

/*  Manastorm Leggings  */
UPDATE `item_template` SET `armor` = 85, `BuyPrice` = 151971, `SellPrice` = 30394 WHERE entry=18872;

/*  Grand Marshal's Stave  */
UPDATE `item_template` SET `BuyPrice` = 297299, `SellPrice` = 59459 WHERE entry=18873;

/*  High Warlord's War Staff  */
UPDATE `item_template` SET `BuyPrice` = 298407, `SellPrice` = 59681 WHERE entry=18874;

/*  Salamander Scale Pants  */
UPDATE `item_template` SET `armor` = 171, `BuyPrice` = 192227, `SellPrice` = 38445 WHERE entry=18875;

/*  Grand Marshal's Claymore  */
UPDATE `item_template` SET `BuyPrice` = 300592, `SellPrice` = 60118 WHERE entry=18876;

/*  High Warlord's Greatsword  */
UPDATE `item_template` SET `BuyPrice` = 301699, `SellPrice` = 60339 WHERE entry=18877;

/*  Sorcerous Dagger  */
UPDATE `item_template` SET `BuyPrice` = 428226, `SellPrice` = 85645 WHERE entry=18878;

/*  TEST Ragnaros Hammer  */
UPDATE `item_template` SET `BuyPrice` = 1573535, `SellPrice` = 314707, `dmg_min1` = 180.0, `dmg_max1` = 302.0, `MaxDurability` = 145, `fire_res` = 30, `stat_type3` = 0, `stat_value3` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=18881;

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
UPDATE `item_template` SET `BuyPrice` = 1276777, `SellPrice` = 255355, `spellppmrate_1` = 8.0, `spelltrigger_2` = 0 WHERE entry=19019;

/*  Nat Pagle's Extreme Angler FC-5000  */
UPDATE `item_template` SET `spellid_1` = 8082 WHERE entry=19022;

/*  Arena Grand Master  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0, `spellid_1` = 13669, `spellcooldown_2` = 1800000 WHERE entry=19024;

/*  Elegant Dress  */
UPDATE `item_template` SET `BuyPrice` = 5393, `SellPrice` = 1078, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=19028;

/*  Frostwolf Battle Tabard  */
UPDATE `item_template` SET `BuyPrice` = 10000, `SellPrice` = 2500, `RequiredReputationFaction` = 729, `RequiredReputationRank` = 4 WHERE entry=19031;

/*  Stormpike Battle Tabard  */
UPDATE `item_template` SET `BuyPrice` = 10000, `SellPrice` = 2500, `RequiredReputationFaction` = 730, `RequiredReputationRank` = 4 WHERE entry=19032;

/*  Emerald Peak Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 29389, `SellPrice` = 5877 WHERE entry=19037;

/*  Zorbin's Mega-Slicer  */
UPDATE `item_template` SET `BuyPrice` = 97341, `SellPrice` = 19468 WHERE entry=19040;

/*  Might of the Timbermaw  */
UPDATE `item_template` SET `stat_type1` = 4, `stat_value1` = 21 WHERE entry=19044;

/*  Heavy Timbermaw Boots  */
UPDATE `item_template` SET `BuyPrice` = 140305, `SellPrice` = 28061, `DisenchantID` = 49 WHERE entry=19048;

/*  Timbermaw Brawlers  */
UPDATE `item_template` SET `BuyPrice` = 77882, `SellPrice` = 15576, `DisenchantID` = 49 WHERE entry=19049;

/*  Mantle of the Timbermaw  */
UPDATE `item_template` SET `BuyPrice` = 93794, `SellPrice` = 18758, `DisenchantID` = 49 WHERE entry=19050;

/*  Girdle of the Dawn  */
UPDATE `item_template` SET `BuyPrice` = 46827, `SellPrice` = 9365 WHERE entry=19051;

/*  Dawn Treaders  */
UPDATE `item_template` SET `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 13669 WHERE entry=19052;

/*  Gloves of the Dawn  */
UPDATE `item_template` SET `BuyPrice` = 58031, `SellPrice` = 11606, `DisenchantID` = 49 WHERE entry=19057;

/*  Golden Mantle of the Dawn  */
UPDATE `item_template` SET `BuyPrice` = 109227, `SellPrice` = 21845, `DisenchantID` = 49 WHERE entry=19058;

/*  Argent Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 87708, `SellPrice` = 17541, `DisenchantID` = 49 WHERE entry=19059;

/*  Emerald Circle  */
UPDATE `item_template` SET `armor` = 50, `stat_type3` = 0, `stat_value3` = 0, `StatsCount` = 3 WHERE entry=19065;

/*  Frostwolf Legionnaire's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 75224, `SellPrice` = 15044 WHERE entry=19083;

/*  Stormpike Soldier's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 75500, `SellPrice` = 15100 WHERE entry=19084;

/*  Frostwolf Advisor's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 75776, `SellPrice` = 15155 WHERE entry=19085;

/*  Stormpike Sage's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 76045, `SellPrice` = 15209 WHERE entry=19086;

/*  Frostwolf Plate Belt  */
UPDATE `item_template` SET `BuyPrice` = 50881, `SellPrice` = 10176 WHERE entry=19087;

/*  Frostwolf Mail Belt  */
UPDATE `item_template` SET `BuyPrice` = 76597, `SellPrice` = 15319 WHERE entry=19088;

/*  Frostwolf Leather Belt  */
UPDATE `item_template` SET `BuyPrice` = 59304, `SellPrice` = 11860 WHERE entry=19089;

/*  Frostwolf Cloth Belt  */
UPDATE `item_template` SET `BuyPrice` = 51428, `SellPrice` = 10285 WHERE entry=19090;

/*  Stormpike Plate Girdle  */
UPDATE `item_template` SET `BuyPrice` = 47443, `SellPrice` = 9488 WHERE entry=19091;

/*  Stormpike Mail Girdle  */
UPDATE `item_template` SET `BuyPrice` = 71165, `SellPrice` = 14233 WHERE entry=19092;

/*  Stormpike Leather Girdle  */
UPDATE `item_template` SET `BuyPrice` = 59304, `SellPrice` = 11860 WHERE entry=19093;

/*  Stormpike Cloth Girdle  */
UPDATE `item_template` SET `BuyPrice` = 47443, `SellPrice` = 9488 WHERE entry=19094;

/*  Frostwolf Legionnaire's Pendant  */
UPDATE `item_template` SET `BuyPrice` = 71648, `SellPrice` = 17912 WHERE entry=19095;

/*  Frostwolf Advisor's Pendant  */
UPDATE `item_template` SET `BuyPrice` = 71648, `SellPrice` = 17912 WHERE entry=19096;

/*  Stormpike Soldier's Pendant  */
UPDATE `item_template` SET `BuyPrice` = 71648, `SellPrice` = 17912 WHERE entry=19097;

/*  Stormpike Sage's Pendant  */
UPDATE `item_template` SET `BuyPrice` = 71648, `SellPrice` = 17912 WHERE entry=19098;

/*  Glacial Blade  */
UPDATE `item_template` SET `BuyPrice` = 315329, `SellPrice` = 63065 WHERE entry=19099;

/*  Electrified Dagger  */
UPDATE `item_template` SET `BuyPrice` = 316503, `SellPrice` = 63300 WHERE entry=19100;

/*  Whiteout Staff  */
UPDATE `item_template` SET `BuyPrice` = 397057, `SellPrice` = 79411 WHERE entry=19101;

/*  Crackling Staff  */
UPDATE `item_template` SET `BuyPrice` = 398525, `SellPrice` = 79705 WHERE entry=19102;

/*  Frostbite  */
UPDATE `item_template` SET `BuyPrice` = 319995, `SellPrice` = 63999 WHERE entry=19103;

/*  Stormstrike Hammer  */
UPDATE `item_template` SET `BuyPrice` = 321137, `SellPrice` = 64227 WHERE entry=19104;

/*  Frost Runed Headdress  */
UPDATE `item_template` SET `BuyPrice` = 87704, `SellPrice` = 17540, `DisenchantID` = 49, `spellid_1` = 17901 WHERE entry=19105;

/*  Ice Barbed Spear  */
UPDATE `item_template` SET `BuyPrice` = 366765, `SellPrice` = 73353, `DisenchantID` = 49 WHERE entry=19106;

/*  Bloodseeker  */
UPDATE `item_template` SET `BuyPrice` = 220858, `SellPrice` = 44171, `dmg_min1` = 85.0, `dmg_max1` = 128.0, `DisenchantID` = 49 WHERE entry=19107;

/*  Wand of Biting Cold  */
UPDATE `item_template` SET `BuyPrice` = 221635, `SellPrice` = 44327, `DisenchantID` = 49, `spellid_1` = 9304 WHERE entry=19108;

/*  Deep Rooted Ring  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19109;

/*  Cold Forged Blade  */
UPDATE `item_template` SET `BuyPrice` = 274611, `SellPrice` = 54922, `DisenchantID` = 49 WHERE entry=19110;

/*  Winteraxe Epaulets  */
UPDATE `item_template` SET `BuyPrice` = 124124, `SellPrice` = 24824, `DisenchantID` = 49 WHERE entry=19111;

/*  Frozen Steel Vambraces  */
UPDATE `item_template` SET `BuyPrice` = 54922, `SellPrice` = 10984, `DisenchantID` = 49 WHERE entry=19112;

/*  Yeti Hide Bracers  */
UPDATE `item_template` SET `BuyPrice` = 68652, `SellPrice` = 13730, `DisenchantID` = 49 WHERE entry=19113;

/*  Highland Bow  */
UPDATE `item_template` SET `BuyPrice` = 89435, `SellPrice` = 17887, `dmg_min1` = 41.0, `dmg_max1` = 77.0 WHERE entry=19114;

/*  Deep Woodlands Cloak  */
UPDATE `item_template` SET `BuyPrice` = 42929, `SellPrice` = 8585 WHERE entry=19121;

/*  Slagplate Leggings  */
UPDATE `item_template` SET `BuyPrice` = 41296, `SellPrice` = 8259 WHERE entry=19124;

/*  Slagplate Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 22255, `SellPrice` = 4451 WHERE entry=19126;

/*  Everglowing Robe  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=19129;

/*  Cold Snap  */
UPDATE `item_template` SET `BuyPrice` = 388958, `SellPrice` = 77791, `spellid_1` = 9307 WHERE entry=19130;

/*  Snowblind Shoes  */
UPDATE `item_template` SET `armor` = 73, `BuyPrice` = 148730, `SellPrice` = 29746 WHERE entry=19131;

/*  Crystal Adorned Crown  */
UPDATE `item_template` SET `armor` = 85, `BuyPrice` = 142191, `SellPrice` = 28438 WHERE entry=19132;

/*  Fel Infused Leggings  */
UPDATE `item_template` SET `armor` = 95, `BuyPrice` = 216387, `SellPrice` = 43277, `spellid_1` = 23594 WHERE entry=19133;

/*  Flayed Doomguard Belt  */
UPDATE `item_template` SET `armor` = 115, `BuyPrice` = 116827, `SellPrice` = 23365 WHERE entry=19134;

/*  Blacklight Bracer  */
UPDATE `item_template` SET `armor` = 44, `BuyPrice` = 84772, `SellPrice` = 16954 WHERE entry=19135;

/*  Mana Igniting Cord  */
UPDATE `item_template` SET `armor` = 61, `BuyPrice` = 111403, `SellPrice` = 22280 WHERE entry=19136;

/*  Onslaught Girdle  */
UPDATE `item_template` SET `armor` = 494, `BuyPrice` = 157346, `SellPrice` = 31469 WHERE entry=19137;

/*  Fireguard Shoulders  */
UPDATE `item_template` SET `armor` = 159, `BuyPrice` = 211221, `SellPrice` = 42244 WHERE entry=19139;

/*  Flameguard Gauntlets  */
UPDATE `item_template` SET `armor` = 488, `BuyPrice` = 106417, `SellPrice` = 21283 WHERE entry=19143;

/*  Sabatons of the Flamewalker  */
UPDATE `item_template` SET `armor` = 298, `BuyPrice` = 229869, `SellPrice` = 45973 WHERE entry=19144;

/*  Robe of Volatile Power  */
UPDATE `item_template` SET `armor` = 102, `BuyPrice` = 185169, `SellPrice` = 37033, `stat_type4` = 0, `stat_value4` = 0, `spellid_1` = 18382 WHERE entry=19145;

/*  Wristguards of Stability  */
UPDATE `item_template` SET `armor` = 86, `BuyPrice` = 100919, `SellPrice` = 20183 WHERE entry=19146;

/*  Dark Iron Helm  */
UPDATE `item_template` SET `armor` = 758, `BuyPrice` = 126998, `SellPrice` = 25399 WHERE entry=19148;

/*  Lava Belt  */
UPDATE `item_template` SET `armor` = 223, `BuyPrice` = 106243, `SellPrice` = 21248, `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=19149;

/*  Flarecore Robe  */
UPDATE `item_template` SET `armor` = 102, `BuyPrice` = 174557, `SellPrice` = 34911 WHERE entry=19156;

/*  Chromatic Gauntlets  */
UPDATE `item_template` SET `armor` = 279, `BuyPrice` = 159715, `SellPrice` = 31943, `stat_type1` = 0, `stat_value1` = 0, `spellid_2` = 7597, `spellid_3` = 18384 WHERE entry=19157;

/*  TEST Sulfuras, Hand of Ragnaros  */
UPDATE `item_template` SET `BuyPrice` = 1573535, `SellPrice` = 314707, `dmg_min1` = 180.0, `dmg_max1` = 302.0, `MaxDurability` = 145, `fire_res` = 30, `stat_type3` = 0, `stat_value3` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=19158;

/*  Corehound Belt  */
UPDATE `item_template` SET `armor` = 118, `BuyPrice` = 139159, `SellPrice` = 27831 WHERE entry=19162;

/*  Molten Belt  */
UPDATE `item_template` SET `armor` = 118, `BuyPrice` = 139659, `SellPrice` = 27931 WHERE entry=19163;

/*  Dark Iron Gauntlets  */
UPDATE `item_template` SET `armor` = 495, `BuyPrice` = 112127, `SellPrice` = 22425 WHERE entry=19164;

/*  Flarecore Leggings  */
UPDATE `item_template` SET `armor` = 94, `BuyPrice` = 225032, `SellPrice` = 45006, `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0 WHERE entry=19165;

/*  Black Amnesty  */
UPDATE `item_template` SET `BuyPrice` = 464480, `SellPrice` = 92896 WHERE entry=19166;

/*  Blackfury  */
UPDATE `item_template` SET `BuyPrice` = 582655, `SellPrice` = 116531 WHERE entry=19167;

/*  Blackguard  */
UPDATE `item_template` SET `BuyPrice` = 514451, `SellPrice` = 102890 WHERE entry=19168;

/*  Nightfall  */
UPDATE `item_template` SET `BuyPrice` = 645562, `SellPrice` = 129112, `spellppmrate_1` = 1.375 WHERE entry=19169;

/*  Ebon Hand  */
UPDATE `item_template` SET `BuyPrice` = 518448, `SellPrice` = 103689 WHERE entry=19170;

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
UPDATE `item_template` SET `BuyPrice` = 500000, `SellPrice` = 125000, `spellid_1` = 17829 WHERE entry=19308;

/*  Tome of Shadow Force  */
UPDATE `item_template` SET `BuyPrice` = 500000, `SellPrice` = 125000, `spellid_1` = 18014, `spelltrigger_2` = 0 WHERE entry=19309;

/*  Tome of the Ice Lord  */
UPDATE `item_template` SET `BuyPrice` = 500000, `SellPrice` = 125000, `spellid_1` = 17896, `spelltrigger_2` = 0 WHERE entry=19310;

/*  Tome of Fiery Arcana  */
UPDATE `item_template` SET `BuyPrice` = 500000, `SellPrice` = 125000, `spellid_1` = 17875, `spelltrigger_2` = 0 WHERE entry=19311;

/*  Lei of the Lifegiver  */
UPDATE `item_template` SET `BuyPrice` = 500000, `SellPrice` = 125000 WHERE entry=19312;

/*  Therazane's Touch  */
UPDATE `item_template` SET `BuyPrice` = 500000, `SellPrice` = 125000, `stat_type1` = 5, `spelltrigger_2` = 0 WHERE entry=19315;

/*  The Immovable Object  */
UPDATE `item_template` SET `armor` = 2468, `BuyPrice` = 795297, `SellPrice` = 159059, `block` = 44 WHERE entry=19321;

/*  The Unstoppable Force  */
UPDATE `item_template` SET `BuyPrice` = 1564900, `SellPrice` = 312980 WHERE entry=19323;

/*  The Lobotomizer  */
UPDATE `item_template` SET `BuyPrice` = 1256618, `SellPrice` = 251323 WHERE entry=19324;

/*  Don Julio's Band  */
UPDATE `item_template` SET `BuyPrice` = 755555, `SellPrice` = 188888 WHERE entry=19325;

/*  The Untamed Blade  */
UPDATE `item_template` SET `BuyPrice` = 802268, `SellPrice` = 160453, `spellppmrate_1` = 2.0 WHERE entry=19334;

/*  Spineshatter  */
UPDATE `item_template` SET `BuyPrice` = 644128, `SellPrice` = 128825 WHERE entry=19335;

/*  Dragonfang Blade  */
UPDATE `item_template` SET `BuyPrice` = 654536, `SellPrice` = 130907 WHERE entry=19346;

/*  Claw of Chromaggus  */
UPDATE `item_template` SET `BuyPrice` = 760520, `SellPrice` = 152104 WHERE entry=19347;

/*  Red Dragonscale Protector  */
UPDATE `item_template` SET `armor` = 2787, `BuyPrice` = 422012, `SellPrice` = 84402, `block` = 51 WHERE entry=19348;

/*  Elementium Reinforced Bulwark  */
UPDATE `item_template` SET `armor` = 2893, `BuyPrice` = 490283, `SellPrice` = 98056, `block` = 54 WHERE entry=19349;

/*  Heartstriker  */
UPDATE `item_template` SET `BuyPrice` = 523048, `SellPrice` = 104609, `dmg_min1` = 80.0, `dmg_max1` = 149.0 WHERE entry=19350;

/*  Maladath, Runed Blade of the Black Flight  */
UPDATE `item_template` SET `BuyPrice` = 699948, `SellPrice` = 139989, `stat_type1` = 0, `stat_value1` = 0, `spellid_2` = 14121 WHERE entry=19351;

/*  Chromatically Tempered Sword  */
UPDATE `item_template` SET `BuyPrice` = 794646, `SellPrice` = 158929 WHERE entry=19352;

/*  Drake Talon Cleaver  */
UPDATE `item_template` SET `BuyPrice` = 904062, `SellPrice` = 180812 WHERE entry=19353;

/*  Draconic Avenger  */
UPDATE `item_template` SET `BuyPrice` = 675430, `SellPrice` = 135086 WHERE entry=19354;

/*  Shadow Wing Focus Staff  */
UPDATE `item_template` SET `BuyPrice` = 824178, `SellPrice` = 164835, `dmg_min1` = 142.2, `dmg_max1` = 237.2 WHERE entry=19355;

/*  Staff of the Shadow Flame  */
UPDATE `item_template` SET `BuyPrice` = 1108750, `SellPrice` = 221750, `dmg_min1` = 141.8, `dmg_max1` = 247.8 WHERE entry=19356;

/*  Herald of Woe  */
UPDATE `item_template` SET `BuyPrice` = 830469, `SellPrice` = 166093 WHERE entry=19357;

/*  Draconic Maul  */
UPDATE `item_template` SET `BuyPrice` = 653192, `SellPrice` = 130638 WHERE entry=19358;

/*  Lok'amir il Romathis  */
UPDATE `item_template` SET `BuyPrice` = 900581, `SellPrice` = 180116, `dmg_min1` = 47.9, `dmg_max1` = 127.9 WHERE entry=19360;

/*  Ashjre'thul, Crossbow of Smiting  */
UPDATE `item_template` SET `BuyPrice` = 557734, `SellPrice` = 111546, `dmg_min1` = 124.0, `dmg_max1` = 186.0 WHERE entry=19361;

/*  Doom's Edge  */
UPDATE `item_template` SET `BuyPrice` = 530494, `SellPrice` = 106098 WHERE entry=19362;

/*  Crul'shorukh, Edge of Chaos  */
UPDATE `item_template` SET `BuyPrice` = 910743, `SellPrice` = 182148 WHERE entry=19363;

/*  Ashkandi, Greatsword of the Brotherhood  */
UPDATE `item_template` SET `BuyPrice` = 1142587, `SellPrice` = 228517 WHERE entry=19364;

/*  Claw of the Black Drake  */
UPDATE `item_template` SET `BuyPrice` = 684643, `SellPrice` = 136928 WHERE entry=19365;

/*  Dragon's Touch  */
UPDATE `item_template` SET `BuyPrice` = 517308, `SellPrice` = 103461 WHERE entry=19367;

/*  Dragonbreath Hand Cannon  */
UPDATE `item_template` SET `BuyPrice` = 532872, `SellPrice` = 106574, `dmg_min1` = 86.0, `dmg_max1` = 160.0 WHERE entry=19368;

/*  Gloves of Rapid Evolution  */
UPDATE `item_template` SET `armor` = 70, `BuyPrice` = 129350, `SellPrice` = 25870 WHERE entry=19369;

/*  Mantle of the Blackwing Cabal  */
UPDATE `item_template` SET `armor` = 84, `BuyPrice` = 194720, `SellPrice` = 38944 WHERE entry=19370;

/*  Helm of Endless Rage  */
UPDATE `item_template` SET `armor` = 679, `BuyPrice` = 205894, `SellPrice` = 41178 WHERE entry=19372;

/*  Black Brood Pauldrons  */
UPDATE `item_template` SET `armor` = 357, `BuyPrice` = 326877, `SellPrice` = 65375 WHERE entry=19373;

/*  Bracers of Arcane Accuracy  */
UPDATE `item_template` SET `armor` = 50, `BuyPrice` = 131344, `SellPrice` = 26268 WHERE entry=19374;

/*  Mish'undare, Circlet of the Mind Flayer  */
UPDATE `item_template` SET `armor` = 102, `BuyPrice` = 292214, `SellPrice` = 58442 WHERE entry=19375;

/*  Prestor's Talisman of Connivery  */
UPDATE `item_template` SET `stat_value1` = 30, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=19377;

/*  Cloak of the Brood Lord  */
UPDATE `item_template` SET `armor` = 63, `BuyPrice` = 295575, `SellPrice` = 59115 WHERE entry=19378;

/*  Neltharion's Tear  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0, `spellid_2` = 23729 WHERE entry=19379;

/*  Therazane's Link  */
UPDATE `item_template` SET `armor` = 295, `BuyPrice` = 297806, `SellPrice` = 59561 WHERE entry=19380;

/*  Boots of the Shadow Flame  */
UPDATE `item_template` SET `armor` = 286, `BuyPrice` = 373670, `SellPrice` = 74734 WHERE entry=19381;

/*  Empowered Leggings  */
UPDATE `item_template` SET `armor` = 103, `BuyPrice` = 309954, `SellPrice` = 61990 WHERE entry=19385;

/*  Elementium Threaded Cloak  */
UPDATE `item_template` SET `armor` = 169, `BuyPrice` = 233309, `SellPrice` = 46661 WHERE entry=19386;

/*  Chromatic Boots  */
UPDATE `item_template` SET `armor` = 596, `BuyPrice` = 234130, `SellPrice` = 46826 WHERE entry=19387;

/*  Angelista's Grasp  */
UPDATE `item_template` SET `armor` = 66, `BuyPrice` = 156649, `SellPrice` = 31329 WHERE entry=19388;

/*  Taut Dragonhide Shoulderpads  */
UPDATE `item_template` SET `armor` = 170, `BuyPrice` = 294771, `SellPrice` = 58954 WHERE entry=19389;

/*  Taut Dragonhide Gloves  */
UPDATE `item_template` SET `armor` = 142, `BuyPrice` = 197217, `SellPrice` = 39443 WHERE entry=19390;

/*  Shimmering Geta  */
UPDATE `item_template` SET `armor` = 81, `BuyPrice` = 237481, `SellPrice` = 47496 WHERE entry=19391;

/*  Girdle of the Fallen Crusader  */
UPDATE `item_template` SET `armor` = 488, `BuyPrice` = 158883, `SellPrice` = 31776 WHERE entry=19392;

/*  Primalist's Linked Waistguard  */
UPDATE `item_template` SET `armor` = 275, `BuyPrice` = 239169, `SellPrice` = 47833 WHERE entry=19393;

/*  Drake Talon Pauldrons  */
UPDATE `item_template` SET `armor` = 634, `BuyPrice` = 196975, `SellPrice` = 39395 WHERE entry=19394;

/*  Taut Dragonhide Belt  */
UPDATE `item_template` SET `armor` = 125, `BuyPrice` = 165421, `SellPrice` = 33084 WHERE entry=19396;

/*  Cloak of Firemaw  */
UPDATE `item_template` SET `armor` = 57, `BuyPrice` = 200015, `SellPrice` = 40003 WHERE entry=19398;

/*  Black Ash Robe  */
UPDATE `item_template` SET `armor` = 114, `BuyPrice` = 267707, `SellPrice` = 53541 WHERE entry=19399;

/*  Firemaw's Clutch  */
UPDATE `item_template` SET `armor` = 64, `BuyPrice` = 138017, `SellPrice` = 27603 WHERE entry=19400;

/*  Primalist's Linked Legguards  */
UPDATE `item_template` SET `armor` = 417, `BuyPrice` = 415584, `SellPrice` = 83116 WHERE entry=19401;

/*  Legguards of the Fallen Crusader  */
UPDATE `item_template` SET `armor` = 740, `BuyPrice` = 278048, `SellPrice` = 55609 WHERE entry=19402;

/*  Malfurion's Blessed Bulwark  */
UPDATE `item_template` SET `armor` = 392, `BuyPrice` = 351387, `SellPrice` = 70277 WHERE entry=19405;

/*  Ebony Flame Gloves  */
UPDATE `item_template` SET `armor` = 72, `BuyPrice` = 141561, `SellPrice` = 28312, `spellid_1` = 18020 WHERE entry=19407;

/*  Shroud of Pure Thought  */
UPDATE `item_template` SET `armor` = 57, `BuyPrice` = 214596, `SellPrice` = 42919 WHERE entry=19430;

/*  Emberweave Leggings  */
UPDATE `item_template` SET `armor` = 417, `BuyPrice` = 403299, `SellPrice` = 80659 WHERE entry=19433;

/*  Band of Dark Dominion  */
UPDATE `item_template` SET `spellid_1` = 18013 WHERE entry=19434;

/*  Essence Gatherer  */
UPDATE `item_template` SET `BuyPrice` = 397992, `SellPrice` = 79598 WHERE entry=19435;

/*  Cloak of Draconic Might  */
UPDATE `item_template` SET `armor` = 54, `BuyPrice` = 159780, `SellPrice` = 31956 WHERE entry=19436;

/*  Boots of Pure Thought  */
UPDATE `item_template` SET `armor` = 74, `BuyPrice` = 160379, `SellPrice` = 32075 WHERE entry=19437;

/*  Ringo's Blizzard Boots  */
UPDATE `item_template` SET `armor` = 75, `BuyPrice` = 169028, `SellPrice` = 33805, `spellid_1` = 17900 WHERE entry=19438;

/*  Interlaced Shadow Jerkin  */
UPDATE `item_template` SET `armor` = 212, `BuyPrice` = 282763, `SellPrice` = 56552 WHERE entry=19439;

/*  Warsong Battle Tabard  */
UPDATE `item_template` SET `BuyPrice` = 50000, `SellPrice` = 12500, `RequiredReputationFaction` = 889, `RequiredReputationRank` = 7 WHERE entry=19505;

/*  Silverwing Battle Tabard  */
UPDATE `item_template` SET `BuyPrice` = 50000, `SellPrice` = 12500, `RequiredReputationFaction` = 890, `RequiredReputationRank` = 7 WHERE entry=19506;

/*  Inquisitor's Shawl  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 40, `BuyPrice` = 8507, `SellPrice` = 1701, `MaxDurability` = 45, `stat_value1` = 8, `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 9415 WHERE entry=19507;

/*  Branded Leather Bracers  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 49, `BuyPrice` = 7116, `SellPrice` = 1423, `MaxDurability` = 30, `stat_value1` = 4, `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 9142 WHERE entry=19508;

/*  Dusty Mail Boots  */
UPDATE `item_template` SET `Quality` = 2, `armor` = 221, `BuyPrice` = 12917, `SellPrice` = 2583, `MaxDurability` = 50, `stat_value1` = 9, `DisenchantID` = 7 WHERE entry=19509;

/*  Legionnaire's Band  */
UPDATE `item_template` SET `BuyPrice` = 75000, `SellPrice` = 18750 WHERE entry=19510;

/*  Legionnaire's Band  */
UPDATE `item_template` SET `BuyPrice` = 60000, `SellPrice` = 15000 WHERE entry=19511;

/*  Legionnaire's Band  */
UPDATE `item_template` SET `BuyPrice` = 45000, `SellPrice` = 11250 WHERE entry=19512;

/*  Legionnaire's Band  */
UPDATE `item_template` SET `BuyPrice` = 20000, `SellPrice` = 5000 WHERE entry=19513;

/*  Protector's Band  */
UPDATE `item_template` SET `BuyPrice` = 75000, `SellPrice` = 18750 WHERE entry=19514;

/*  Protector's Band  */
UPDATE `item_template` SET `BuyPrice` = 45000, `SellPrice` = 11250 WHERE entry=19515;

/*  Protector's Band  */
UPDATE `item_template` SET `BuyPrice` = 60000, `SellPrice` = 15000 WHERE entry=19516;

/*  Protector's Band  */
UPDATE `item_template` SET `BuyPrice` = 20000, `SellPrice` = 5000 WHERE entry=19517;

/*  Advisor's Ring  */
UPDATE `item_template` SET `BuyPrice` = 75000, `SellPrice` = 18750 WHERE entry=19518;

/*  Advisor's Ring  */
UPDATE `item_template` SET `BuyPrice` = 60000, `SellPrice` = 15000 WHERE entry=19519;

/*  Advisor's Ring  */
UPDATE `item_template` SET `BuyPrice` = 45000, `SellPrice` = 11250, `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0 WHERE entry=19520;

/*  Advisor's Ring  */
UPDATE `item_template` SET `BuyPrice` = 20000, `SellPrice` = 5000 WHERE entry=19521;

/*  Lorekeeper's Ring  */
UPDATE `item_template` SET `BuyPrice` = 75000, `SellPrice` = 18750 WHERE entry=19522;

/*  Lorekeeper's Ring  */
UPDATE `item_template` SET `BuyPrice` = 60000, `SellPrice` = 15000 WHERE entry=19523;

/*  Lorekeeper's Ring  */
UPDATE `item_template` SET `BuyPrice` = 45000, `SellPrice` = 11250 WHERE entry=19524;

/*  Lorekeeper's Ring  */
UPDATE `item_template` SET `BuyPrice` = 20000, `SellPrice` = 5000 WHERE entry=19525;

/*  Battle Healer's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 90580, `SellPrice` = 18116 WHERE entry=19526;

/*  Battle Healer's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 48159, `SellPrice` = 9631 WHERE entry=19527;

/*  Battle Healer's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 23904, `SellPrice` = 4780 WHERE entry=19528;

/*  Battle Healer's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 10613, `SellPrice` = 2122 WHERE entry=19529;

/*  Caretaker's Cape  */
UPDATE `item_template` SET `BuyPrice` = 85492, `SellPrice` = 17098 WHERE entry=19530;

/*  Caretaker's Cape  */
UPDATE `item_template` SET `BuyPrice` = 50242, `SellPrice` = 10048 WHERE entry=19531;

/*  Caretaker's Cape  */
UPDATE `item_template` SET `BuyPrice` = 24934, `SellPrice` = 4986 WHERE entry=19532;

/*  Caretaker's Cape  */
UPDATE `item_template` SET `BuyPrice` = 10772, `SellPrice` = 2154 WHERE entry=19533;

/*  Scout's Medallion  */
UPDATE `item_template` SET `BuyPrice` = 75000, `SellPrice` = 18750 WHERE entry=19534;

/*  Scout's Medallion  */
UPDATE `item_template` SET `BuyPrice` = 60000, `SellPrice` = 15000 WHERE entry=19535;

/*  Scout's Medallion  */
UPDATE `item_template` SET `BuyPrice` = 45000, `SellPrice` = 11250 WHERE entry=19536;

/*  Scout's Medallion  */
UPDATE `item_template` SET `BuyPrice` = 20000, `SellPrice` = 5000 WHERE entry=19537;

/*  Sentinel's Medallion  */
UPDATE `item_template` SET `BuyPrice` = 75000, `SellPrice` = 18750 WHERE entry=19538;

/*  Sentinel's Medallion  */
UPDATE `item_template` SET `BuyPrice` = 60000, `SellPrice` = 15000 WHERE entry=19539;

/*  Sentinel's Medallion  */
UPDATE `item_template` SET `BuyPrice` = 45000, `SellPrice` = 11250 WHERE entry=19540;

/*  Sentinel's Medallion  */
UPDATE `item_template` SET `BuyPrice` = 20000, `SellPrice` = 5000 WHERE entry=19541;

/*  Scout's Blade  */
UPDATE `item_template` SET `BuyPrice` = 297673, `SellPrice` = 59534 WHERE entry=19542;

/*  Scout's Blade  */
UPDATE `item_template` SET `BuyPrice` = 174910, `SellPrice` = 34982 WHERE entry=19543;

/*  Scout's Blade  */
UPDATE `item_template` SET `BuyPrice` = 86791, `SellPrice` = 17358 WHERE entry=19544;

/*  Scout's Blade  */
UPDATE `item_template` SET `BuyPrice` = 34845, `SellPrice` = 6969 WHERE entry=19545;

/*  Sentinel's Blade  */
UPDATE `item_template` SET `BuyPrice` = 280715, `SellPrice` = 56143 WHERE entry=19546;

/*  Sentinel's Blade  */
UPDATE `item_template` SET `BuyPrice` = 164981, `SellPrice` = 32996 WHERE entry=19547;

/*  Sentinel's Blade  */
UPDATE `item_template` SET `BuyPrice` = 81882, `SellPrice` = 16376 WHERE entry=19548;

/*  Sentinel's Blade  */
UPDATE `item_template` SET `BuyPrice` = 35372, `SellPrice` = 7074 WHERE entry=19549;

/*  Legionnaire's Sword  */
UPDATE `item_template` SET `BuyPrice` = 274611, `SellPrice` = 54922 WHERE entry=19550;

/*  Legionnaire's Sword  */
UPDATE `item_template` SET `BuyPrice` = 160783, `SellPrice` = 32156 WHERE entry=19551;

/*  Legionnaire's Sword  */
UPDATE `item_template` SET `BuyPrice` = 79498, `SellPrice` = 15899 WHERE entry=19552;

/*  Legionnaire's Sword  */
UPDATE `item_template` SET `BuyPrice` = 34217, `SellPrice` = 6843 WHERE entry=19553;

/*  Protector's Sword  */
UPDATE `item_template` SET `BuyPrice` = 274611, `SellPrice` = 54922 WHERE entry=19554;

/*  Protector's Sword  */
UPDATE `item_template` SET `BuyPrice` = 160783, `SellPrice` = 32156 WHERE entry=19555;

/*  Protector's Sword  */
UPDATE `item_template` SET `BuyPrice` = 79498, `SellPrice` = 15899 WHERE entry=19556;

/*  Protector's Sword  */
UPDATE `item_template` SET `BuyPrice` = 36427, `SellPrice` = 7285 WHERE entry=19557;

/*  Outrider's Bow  */
UPDATE `item_template` SET `BuyPrice` = 220059, `SellPrice` = 44011, `dmg_min1` = 54.0, `dmg_max1` = 101.0 WHERE entry=19558;

/*  Outrider's Bow  */
UPDATE `item_template` SET `BuyPrice` = 120587, `SellPrice` = 24117, `dmg_min1` = 46.0, `dmg_max1` = 86.0 WHERE entry=19559;

/*  Outrider's Bow  */
UPDATE `item_template` SET `BuyPrice` = 59624, `SellPrice` = 11924, `dmg_min1` = 38.0, `dmg_max1` = 71.0 WHERE entry=19560;

/*  Outrider's Bow  */
UPDATE `item_template` SET `BuyPrice` = 25663, `SellPrice` = 5132, `dmg_min1` = 28.0, `dmg_max1` = 52.0 WHERE entry=19561;

/*  Outrunner's Bow  */
UPDATE `item_template` SET `BuyPrice` = 205958, `SellPrice` = 41191, `dmg_min1` = 54.0, `dmg_max1` = 101.0 WHERE entry=19562;

/*  Outrunner's Bow  */
UPDATE `item_template` SET `BuyPrice` = 120587, `SellPrice` = 24117, `dmg_min1` = 46.0, `dmg_max1` = 86.0 WHERE entry=19563;

/*  Outrunner's Bow  */
UPDATE `item_template` SET `BuyPrice` = 59624, `SellPrice` = 11924, `dmg_min1` = 38.0, `dmg_max1` = 71.0 WHERE entry=19564;

/*  Outrunner's Bow  */
UPDATE `item_template` SET `BuyPrice` = 25663, `SellPrice` = 5132, `dmg_min1` = 28.0, `dmg_max1` = 52.0 WHERE entry=19565;

/*  Advisor's Gnarled Staff  */
UPDATE `item_template` SET `BuyPrice` = 350857, `SellPrice` = 70171 WHERE entry=19566;

/*  Advisor's Gnarled Staff  */
UPDATE `item_template` SET `BuyPrice` = 200979, `SellPrice` = 40195 WHERE entry=19567;

/*  Advisor's Gnarled Staff  */
UPDATE `item_template` SET `BuyPrice` = 99373, `SellPrice` = 19874 WHERE entry=19568;

/*  Advisor's Gnarled Staff  */
UPDATE `item_template` SET `BuyPrice` = 42771, `SellPrice` = 8554 WHERE entry=19569;

/*  Lorekeeper's Staff  */
UPDATE `item_template` SET `BuyPrice` = 356148, `SellPrice` = 71229 WHERE entry=19570;

/*  Lorekeeper's Staff  */
UPDATE `item_template` SET `BuyPrice` = 209282, `SellPrice` = 41856 WHERE entry=19571;

/*  Lorekeeper's Staff  */
UPDATE `item_template` SET `BuyPrice` = 103864, `SellPrice` = 20772 WHERE entry=19572;

/*  Lorekeeper's Staff  */
UPDATE `item_template` SET `BuyPrice` = 44870, `SellPrice` = 8974 WHERE entry=19573;

/*  Rage of Mugamba  */
UPDATE `item_template` SET `stat_type4` = 0, `stat_value4` = 0, `spellid_2` = 13675 WHERE entry=19577;

/*  Berserker Bracers  */
UPDATE `item_template` SET `armor` = 323, `BuyPrice` = 88497, `SellPrice` = 17699 WHERE entry=19578;

/*  Berserker Bracers  */
UPDATE `item_template` SET `armor` = 275, `BuyPrice` = 48175, `SellPrice` = 9635 WHERE entry=19580;

/*  Berserker Bracers  */
UPDATE `item_template` SET `armor` = 229, `BuyPrice` = 24727, `SellPrice` = 4945 WHERE entry=19581;

/*  Windtalker's Wristguards  */
UPDATE `item_template` SET `armor` = 182, `BuyPrice` = 121103, `SellPrice` = 24220 WHERE entry=19582;

/*  Windtalker's Wristguards  */
UPDATE `item_template` SET `armor` = 156, `BuyPrice` = 72262, `SellPrice` = 14452 WHERE entry=19583;

/*  Windtalker's Wristguards  */
UPDATE `item_template` SET `armor` = 130, `BuyPrice` = 37090, `SellPrice` = 7418 WHERE entry=19584;

/*  Forest Stalker's Bracers  */
UPDATE `item_template` SET `armor` = 86, `BuyPrice` = 100919, `SellPrice` = 20183 WHERE entry=19587;

/*  Forest Stalker's Bracers  */
UPDATE `item_template` SET `armor` = 75, `BuyPrice` = 60218, `SellPrice` = 12043 WHERE entry=19589;

/*  Forest Stalker's Bracers  */
UPDATE `item_template` SET `armor` = 64, `BuyPrice` = 30909, `SellPrice` = 6181 WHERE entry=19590;

/*  Dryad's Wrist Bindings  */
UPDATE `item_template` SET `armor` = 44, `BuyPrice` = 87549, `SellPrice` = 17509 WHERE entry=19595;

/*  Dryad's Wrist Bindings  */
UPDATE `item_template` SET `armor` = 37, `BuyPrice` = 52427, `SellPrice` = 10485 WHERE entry=19596;

/*  Dryad's Wrist Bindings  */
UPDATE `item_template` SET `armor` = 31, `BuyPrice` = 27006, `SellPrice` = 5401 WHERE entry=19597;

/*  Maelstrom's Wrath  */
UPDATE `item_template` SET `stat_value1` = 15, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=19621;

/*  Bloodvine Vest  */
UPDATE `item_template` SET `BuyPrice` = 125179, `SellPrice` = 25035, `DisenchantID` = 49 WHERE entry=19682;

/*  Bloodvine Leggings  */
UPDATE `item_template` SET `BuyPrice` = 125649, `SellPrice` = 25129, `DisenchantID` = 49 WHERE entry=19683;

/*  Bloodvine Boots  */
UPDATE `item_template` SET `BuyPrice` = 94579, `SellPrice` = 18915, `DisenchantID` = 49 WHERE entry=19684;

/*  Primal Batskin Jerkin  */
UPDATE `item_template` SET `BuyPrice` = 158220, `SellPrice` = 31644, `DisenchantID` = 49 WHERE entry=19685;

/*  Primal Batskin Gloves  */
UPDATE `item_template` SET `BuyPrice` = 79403, `SellPrice` = 15880, `DisenchantID` = 49 WHERE entry=19686;

/*  Primal Batskin Bracers  */
UPDATE `item_template` SET `BuyPrice` = 79697, `SellPrice` = 15939, `DisenchantID` = 49 WHERE entry=19687;

/*  Blood Tiger Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 159965, `SellPrice` = 31993, `DisenchantID` = 49 WHERE entry=19688;

/*  Blood Tiger Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 120414, `SellPrice` = 24082, `DisenchantID` = 49 WHERE entry=19689;

/*  Bloodsoul Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 198415, `SellPrice` = 39683, `DisenchantID` = 49 WHERE entry=19690;

/*  Bloodsoul Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 150003, `SellPrice` = 30000, `DisenchantID` = 49 WHERE entry=19691;

/*  Bloodsoul Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 99902, `SellPrice` = 19980, `DisenchantID` = 49 WHERE entry=19692;

/*  Darksoul Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 120963, `SellPrice` = 24192, `DisenchantID` = 49 WHERE entry=19693;

/*  Darksoul Leggings  */
UPDATE `item_template` SET `BuyPrice` = 121433, `SellPrice` = 24286, `DisenchantID` = 49 WHERE entry=19694;

/*  Darksoul Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 91427, `SellPrice` = 18285, `DisenchantID` = 49 WHERE entry=19695;

/*  Rune of the Dawn  */
UPDATE `item_template` SET `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=19812;

/*  Zandalar Vindicator's Breastplate  */
UPDATE `item_template` SET `armor` = 828 WHERE entry=19822;

/*  Zandalar Vindicator's Belt  */
UPDATE `item_template` SET `armor` = 391 WHERE entry=19823;

/*  Zandalar Vindicator's Armguards  */
UPDATE `item_template` SET `armor` = 304 WHERE entry=19824;

/*  Zandalar Freethinker's Breastplate  */
UPDATE `item_template` SET `armor` = 738 WHERE entry=19825;

/*  Zandalar Freethinker's Belt  */
UPDATE `item_template` SET `armor` = 391 WHERE entry=19826;

/*  Zandalar Freethinker's Armguards  */
UPDATE `item_template` SET `armor` = 304 WHERE entry=19827;

/*  Zandalar Augur's Hauberk  */
UPDATE `item_template` SET `armor` = 416 WHERE entry=19828;

/*  Zandalar Augur's Belt  */
UPDATE `item_template` SET `armor` = 221 WHERE entry=19829;

/*  Zandalar Augur's Bracers  */
UPDATE `item_template` SET `armor` = 172 WHERE entry=19830;

/*  Zandalar Predator's Mantle  */
UPDATE `item_template` SET `armor` = 326, `stat_value1` = 22, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=19831;

/*  Zandalar Predator's Belt  */
UPDATE `item_template` SET `armor` = 221, `stat_value2` = 20, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=19832;

/*  Zandalar Predator's Bracers  */
UPDATE `item_template` SET `armor` = 172 WHERE entry=19833;

/*  Zandalar Madcap's Tunic  */
UPDATE `item_template` SET `armor` = 197 WHERE entry=19834;

/*  Zandalar Madcap's Mantle  */
UPDATE `item_template` SET `armor` = 140 WHERE entry=19835;

/*  Zandalar Madcap's Bracers  */
UPDATE `item_template` SET `armor` = 82 WHERE entry=19836;

/*  Test Ranged Slot  */
UPDATE `item_template` SET `spellid_1` = 26647, `spelltrigger_1` = 1 WHERE entry=19837;

/*  Zandalar Haruspex's Tunic  */
UPDATE `item_template` SET `armor` = 287 WHERE entry=19838;

/*  Zandalar Haruspex's Belt  */
UPDATE `item_template` SET `armor` = 165 WHERE entry=19839;

/*  Zandalar Haruspex's Bracers  */
UPDATE `item_template` SET `armor` = 122 WHERE entry=19840;

/*  Zandalar Confessor's Mantle  */
UPDATE `item_template` SET `armor` = 78 WHERE entry=19841;

/*  Zandalar Confessor's Bindings  */
UPDATE `item_template` SET `armor` = 53 WHERE entry=19842;

/*  Zandalar Confessor's Wraps  */
UPDATE `item_template` SET `armor` = 41 WHERE entry=19843;

/*  Zandalar Illusionist's Robe DEPRECATED  */
UPDATE `item_template` SET `spellid_1` = 23729, `spelltrigger_1` = 1, `spellid_2` = 9345, `spelltrigger_2` = 1 WHERE entry=19844;

/*  Zandalar Illusionist's Mantle  */
UPDATE `item_template` SET `armor` = 71 WHERE entry=19845;

/*  Zandalar Illusionist's Wraps  */
UPDATE `item_template` SET `armor` = 41 WHERE entry=19846;

/*  Zandalar Demoniac's Robe DEPRECATED  */
UPDATE `item_template` SET `spellid_1` = 23729, `spelltrigger_1` = 1, `spellid_2` = 9345, `spelltrigger_2` = 1 WHERE entry=19847;

/*  Zandalar Demoniac's Wraps  */
UPDATE `item_template` SET `armor` = 41 WHERE entry=19848;

/*  Zandalar Demoniac's Mantle  */
UPDATE `item_template` SET `armor` = 71 WHERE entry=19849;

/*  Ancient Hakkari Manslayer  */
UPDATE `item_template` SET `BuyPrice` = 490433, `SellPrice` = 98086 WHERE entry=19852;

/*  Gurubashi Dwarf Destroyer  */
UPDATE `item_template` SET `BuyPrice` = 369185, `SellPrice` = 73837, `dmg_min1` = 76.0, `dmg_max1` = 142.0 WHERE entry=19853;

/*  Zin'rokh, Destroyer of Worlds  */
UPDATE `item_template` SET `BuyPrice` = 617513, `SellPrice` = 123502 WHERE entry=19854;

/*  Bloodsoaked Legplates  */
UPDATE `item_template` SET `armor` = 674, `BuyPrice` = 198329, `SellPrice` = 39665 WHERE entry=19855;

/*  Cloak of Consumption  */
UPDATE `item_template` SET `armor` = 52, `BuyPrice` = 149834, `SellPrice` = 29966 WHERE entry=19857;

/*  Fang of the Faceless  */
UPDATE `item_template` SET `BuyPrice` = 503025, `SellPrice` = 100605 WHERE entry=19859;

/*  Touch of Chaos  */
UPDATE `item_template` SET `BuyPrice` = 379951, `SellPrice` = 75990 WHERE entry=19861;

/*  Aegis of the Blood God  */
UPDATE `item_template` SET `armor` = 2575, `BuyPrice` = 325385, `SellPrice` = 65077, `block` = 47 WHERE entry=19862;

/*  Primalist's Seal  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19863;

/*  Bloodcaller  */
UPDATE `item_template` SET `BuyPrice` = 512040, `SellPrice` = 102408, `dmg_min1` = 52.6, `dmg_max1` = 113.6 WHERE entry=19864;

/*  Warblade of the Hakkari  */
UPDATE `item_template` SET `BuyPrice` = 513804, `SellPrice` = 102760 WHERE entry=19865;

/*  Warblade of the Hakkari  */
UPDATE `item_template` SET `BuyPrice` = 434972, `SellPrice` = 86994 WHERE entry=19866;

/*  Bloodlord's Defender  */
UPDATE `item_template` SET `BuyPrice` = 436616, `SellPrice` = 87323 WHERE entry=19867;

/*  Blooddrenched Grips  */
UPDATE `item_template` SET `BuyPrice` = 105259, `SellPrice` = 21051, `DisenchantID` = 49 WHERE entry=19869;

/*  Hakkari Loa Cloak  */
UPDATE `item_template` SET `BuyPrice` = 126784, `SellPrice` = 25356, `DisenchantID` = 49 WHERE entry=19870;

/*  Overlord's Crimson Band  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19873;

/*  Halberd of Smiting  */
UPDATE `item_template` SET `BuyPrice` = 560047, `SellPrice` = 112009 WHERE entry=19874;

/*  Bloodstained Coif  */
UPDATE `item_template` SET `BuyPrice` = 193698, `SellPrice` = 38739, `DisenchantID` = 49 WHERE entry=19875;

/*  Animist's Leggings  */
UPDATE `item_template` SET `BuyPrice` = 216772, `SellPrice` = 43354, `DisenchantID` = 49 WHERE entry=19877;

/*  Bloodsoaked Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 130535, `SellPrice` = 26107, `DisenchantID` = 49 WHERE entry=19878;

/*  Alex's Test Beatdown Staff  */
UPDATE `item_template` SET `spellcooldown_1` = -1, `spellcategorycooldown_1` = -1 WHERE entry=19879;

/*  Jin'do's Judgement  */
UPDATE `item_template` SET `BuyPrice` = 539549, `SellPrice` = 107909, `dmg_min1` = 143.55, `dmg_max1` = 226.55 WHERE entry=19884;

/*  The Hexxer's Cover  */
UPDATE `item_template` SET `BuyPrice` = 124895, `SellPrice` = 24979, `DisenchantID` = 49 WHERE entry=19886;

/*  Bloodstained Legplates  */
UPDATE `item_template` SET `BuyPrice` = 250735, `SellPrice` = 50147, `DisenchantID` = 49 WHERE entry=19887;

/*  Overlord's Embrace  */
UPDATE `item_template` SET `BuyPrice` = 125826, `SellPrice` = 25165, `DisenchantID` = 49 WHERE entry=19888;

/*  Blooddrenched Leggings  */
UPDATE `item_template` SET `BuyPrice` = 210498, `SellPrice` = 42099, `DisenchantID` = 49, `spelltrigger_1` = 0 WHERE entry=19889;

/*  Jin'do's Hexxer  */
UPDATE `item_template` SET `BuyPrice` = 441460, `SellPrice` = 88292, `dmg_min1` = 64.4, `dmg_max1` = 134.4 WHERE entry=19890;

/*  Animist's Boots  */
UPDATE `item_template` SET `BuyPrice` = 159628, `SellPrice` = 31925, `DisenchantID` = 49 WHERE entry=19892;

/*  Zanzil's Seal  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=19893;

/*  Bloodsoaked Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 85764, `SellPrice` = 17152, `DisenchantID` = 49 WHERE entry=19894;

/*  Bloodtinged Kilt  */
UPDATE `item_template` SET `BuyPrice` = 172142, `SellPrice` = 34428, `DisenchantID` = 49 WHERE entry=19895;

/*  Thekal's Grasp  */
UPDATE `item_template` SET `BuyPrice` = 429749, `SellPrice` = 85949 WHERE entry=19896;

/*  Betrayer's Boots  */
UPDATE `item_template` SET `armor` = 69, `BuyPrice` = 129394, `SellPrice` = 25878 WHERE entry=19897;

/*  Seal of Jin  */
UPDATE `item_template` SET `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0 WHERE entry=19898;

/*  Ritualistic Legguards  */
UPDATE `item_template` SET `BuyPrice` = 140045, `SellPrice` = 28009 WHERE entry=19899;

/*  Zulian Stone Axe  */
UPDATE `item_template` SET `BuyPrice` = 439341, `SellPrice` = 87868 WHERE entry=19900;

/*  Fang of Venoxis  */
UPDATE `item_template` SET `BuyPrice` = 409477, `SellPrice` = 81895, `dmg_min1` = 35.2, `dmg_max1` = 72.2 WHERE entry=19903;

/*  Runed Bloodstained Hauberk  */
UPDATE `item_template` SET `armor` = 416, `BuyPrice` = 246625, `SellPrice` = 49325 WHERE entry=19904;

/*  Blooddrenched Footpads  */
UPDATE `item_template` SET `BuyPrice` = 134847, `SellPrice` = 26969 WHERE entry=19906;

/*  Zulian Tigerhide Cloak  */
UPDATE `item_template` SET `BuyPrice` = 108275, `SellPrice` = 21655, `spelltrigger_2` = 0 WHERE entry=19907;

/*  Sceptre of Smiting  */
UPDATE `item_template` SET `BuyPrice` = 312948, `SellPrice` = 62589, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 49, `spellid_1` = 7546 WHERE entry=19908;

/*  Will of Arlokk  */
UPDATE `item_template` SET `BuyPrice` = 523538, `SellPrice` = 104707 WHERE entry=19909;

/*  Arlokk's Grasp  */
UPDATE `item_template` SET `BuyPrice` = 420354, `SellPrice` = 84070, `dmg_min1` = 41.5, `dmg_max1` = 84.5 WHERE entry=19910;

/*  Bloodsoaked Greaves  */
UPDATE `item_template` SET `BuyPrice` = 110711, `SellPrice` = 22142 WHERE entry=19913;

/*  Zulian Defender  */
UPDATE `item_template` SET `BuyPrice` = 244133, `SellPrice` = 48826 WHERE entry=19915;

/*  Jeklik's Crusher  */
UPDATE `item_template` SET `BuyPrice` = 555015, `SellPrice` = 111003 WHERE entry=19918;

/*  Bloodstained Greaves  */
UPDATE `item_template` SET `BuyPrice` = 158234, `SellPrice` = 31646 WHERE entry=19919;

/*  Zulian Hacker  */
UPDATE `item_template` SET `BuyPrice` = 304758, `SellPrice` = 60951, `stat_type1` = 0, `stat_value1` = 0, `DisenchantID` = 49, `spellid_1` = 7540 WHERE entry=19921;

/*  Flowing Ritual Robes DEPRECATED  */
UPDATE `item_template` SET `spellid_1` = 14047, `spelltrigger_1` = 1 WHERE entry=19926;

/*  Mar'li's Touch  */
UPDATE `item_template` SET `BuyPrice` = 311742, `SellPrice` = 62348 WHERE entry=19927;

/*  Animist's Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 135840, `SellPrice` = 27168 WHERE entry=19928;

/*  Bloodtinged Gloves  */
UPDATE `item_template` SET `BuyPrice` = 84173, `SellPrice` = 16834, `DisenchantID` = 49 WHERE entry=19929;

/*  Nat Pagle's Fish Terminator  */
UPDATE `item_template` SET `BuyPrice` = 513645, `SellPrice` = 102729 WHERE entry=19944;

/*  Foror's Eyepatch  */
UPDATE `item_template` SET `armor` = 160, `BuyPrice` = 154680, `SellPrice` = 30936 WHERE entry=19945;

/*  Tigule's Harpoon  */
UPDATE `item_template` SET `BuyPrice` = 449355, `SellPrice` = 89871 WHERE entry=19946;

/*  Gri'lek's Grinder  */
UPDATE `item_template` SET `BuyPrice` = 352686, `SellPrice` = 70537 WHERE entry=19961;

/*  Gri'lek's Carver  */
UPDATE `item_template` SET `BuyPrice` = 442557, `SellPrice` = 88511 WHERE entry=19962;

/*  Pitchfork of Madness  */
UPDATE `item_template` SET `BuyPrice` = 456382, `SellPrice` = 91276 WHERE entry=19963;

/*  Renataki's Soul Conduit  */
UPDATE `item_template` SET `BuyPrice` = 366465, `SellPrice` = 73293, `dmg_min1` = 57.6, `dmg_max1` = 114.6 WHERE entry=19964;

/*  Wushoolay's Poker  */
UPDATE `item_template` SET `BuyPrice` = 367825, `SellPrice` = 73565, `dmg_min1` = 43.6, `dmg_max1` = 87.6 WHERE entry=19965;

/*  Thoughtblighter  */
UPDATE `item_template` SET `BuyPrice` = 277880, `SellPrice` = 55576 WHERE entry=19967;

/*  Fiery Retributer  */
UPDATE `item_template` SET `BuyPrice` = 371867, `SellPrice` = 74373 WHERE entry=19968;

/*  Nat Pagle's Extreme Anglin' Boots  */
UPDATE `item_template` SET `RequiredLevel` = 0 WHERE entry=19969;

/*  Hook of the Master Angler  */
UPDATE `item_template` SET `DisenchantID` = 49, `spellcooldown_1` = 5000 WHERE entry=19979;

/*  Duskbat Drape  */
UPDATE `item_template` SET `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 24350 WHERE entry=19982;

/*  Pirate's Eye Patch  */
UPDATE `item_template` SET `armor` = 122, `BuyPrice` = 56881, `SellPrice` = 11376, `MaxDurability` = 60 WHERE entry=19986;

/*  Tome of Devouring Shadows  */
UPDATE `item_template` SET `spellid_1` = 9327, `spelltrigger_1` = 1 WHERE entry=19989;

/*  Blessed Prayer Beads  */
UPDATE `item_template` SET `BuyPrice` = 0, `SellPrice` = 0, `spellcategorycooldown_1` = 0, `spellcategory_1` = 0 WHERE entry=19990;

/*  Devilsaur Eye  */
UPDATE `item_template` SET `BuyPrice` = 0, `SellPrice` = 0 WHERE entry=19991;

/*  Devilsaur Tooth  */
UPDATE `item_template` SET `BuyPrice` = 0, `SellPrice` = 0, `stat_type1` = 0, `stat_value1` = 0, `spellid_1` = 24353, `spellcategorycooldown_1` = 10000 WHERE entry=19992;

/*  Hoodoo Hunting Bow  */
UPDATE `item_template` SET `BuyPrice` = 283916, `SellPrice` = 56783, `dmg_min1` = 68.0, `dmg_max1` = 128.0 WHERE entry=19993;

/*  Bloodvine Lens  */
UPDATE `item_template` SET `BuyPrice` = 116058, `SellPrice` = 23211, `DisenchantID` = 49 WHERE entry=19998;

/*  Bloodvine Goggles  */
UPDATE `item_template` SET `BuyPrice` = 93198, `SellPrice` = 18639, `DisenchantID` = 49 WHERE entry=19999;

/*  Devilsaur Claws  */
UPDATE `item_template` SET `dmg_min1` = 48.0, `dmg_max1` = 90.0, `MaxDurability` = 65, `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 15464, `spelltrigger_1` = 1, `StatsCount` = 2 WHERE entry=20003;

/*  Devilsaur Claws  */
UPDATE `item_template` SET `dmg_min1` = 48.0, `dmg_max1` = 90.0, `MaxDurability` = 65, `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 24362, `StatsCount` = 2 WHERE entry=20005;

/*  Circle of Hope  */
UPDATE `item_template` SET `BuyPrice` = 0, `SellPrice` = 0, `stat_type1` = 0, `stat_value1` = 0, `spellid_1` = 24426, `spelltrigger_2` = 0 WHERE entry=20006;

/*  Flowing Ritual Robes  */
UPDATE `item_template` SET `armor` = 100, `BuyPrice` = 161285, `SellPrice` = 32257 WHERE entry=20032;

/*  Zandalar Demoniac's Robe  */
UPDATE `item_template` SET `armor` = 100 WHERE entry=20033;

/*  Zandalar Illusionist's Robe  */
UPDATE `item_template` SET `armor` = 100 WHERE entry=20034;

/*  Glacial Spike  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=20035;

/*  Arcane Crystal Pendant  */
UPDATE `item_template` SET `BuyPrice` = 0, `SellPrice` = 0, `spelltrigger_2` = 0 WHERE entry=20037;

/*  Mandokir's Sting  */
UPDATE `item_template` SET `BuyPrice` = 324862, `SellPrice` = 64972, `dmg_min1` = 68.0, `dmg_max1` = 127.0 WHERE entry=20038;

/*  Dark Iron Boots  */
UPDATE `item_template` SET `armor` = 664, `BuyPrice` = 158548, `SellPrice` = 31709 WHERE entry=20039;

/*  Highlander's Plate Girdle  */
UPDATE `item_template` SET `BuyPrice` = 56764, `SellPrice` = 11352, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20041;

/*  Highlander's Lamellar Girdle  */
UPDATE `item_template` SET `BuyPrice` = 56972, `SellPrice` = 11394, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20042;

/*  Highlander's Chain Girdle  */
UPDATE `item_template` SET `BuyPrice` = 88066, `SellPrice` = 17613, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20043;

/*  Highlander's Mail Girdle  */
UPDATE `item_template` SET `BuyPrice` = 88386, `SellPrice` = 17677, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20044;

/*  Highlander's Leather Girdle  */
UPDATE `item_template` SET `BuyPrice` = 73921, `SellPrice` = 14784, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20045;

/*  Highlander's Lizardhide Girdle  */
UPDATE `item_template` SET `BuyPrice` = 74180, `SellPrice` = 14836, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20046;

/*  Highlander's Cloth Girdle  */
UPDATE `item_template` SET `BuyPrice` = 59557, `SellPrice` = 11911, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20047;

/*  Highlander's Plate Greaves  */
UPDATE `item_template` SET `BuyPrice` = 89656, `SellPrice` = 17931, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20048;

/*  Highlander's Lamellar Greaves  */
UPDATE `item_template` SET `BuyPrice` = 89975, `SellPrice` = 17995, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20049;

/*  Highlander's Chain Greaves  */
UPDATE `item_template` SET `BuyPrice` = 136031, `SellPrice` = 27206, `stat_value2` = 15, `spellid_2` = 0, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20050;

/*  Highlander's Mail Greaves  */
UPDATE `item_template` SET `BuyPrice` = 136513, `SellPrice` = 27302, `stat_value2` = 15, `spellid_2` = 0, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20051;

/*  Highlander's Leather Boots  */
UPDATE `item_template` SET `BuyPrice` = 102849, `SellPrice` = 20569, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20052;

/*  Highlander's Lizardhide Boots  */
UPDATE `item_template` SET `BuyPrice` = 103238, `SellPrice` = 20647, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20053;

/*  Highlander's Cloth Boots  */
UPDATE `item_template` SET `BuyPrice` = 82910, `SellPrice` = 16582, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20054;

/*  Highlander's Chain Pauldrons  */
UPDATE `item_template` SET `armor` = 312, `BuyPrice` = 184337, `SellPrice` = 36867, `stat_value1` = 20, `spellid_1` = 0, `spelltrigger_1` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 7 WHERE entry=20055;

/*  Highlander's Mail Pauldrons  */
UPDATE `item_template` SET `armor` = 312, `BuyPrice` = 185045, `SellPrice` = 37009, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 7 WHERE entry=20056;

/*  Highlander's Plate Spaulders  */
UPDATE `item_template` SET `armor` = 553, `BuyPrice` = 123274, `SellPrice` = 24654, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 7 WHERE entry=20057;

/*  Highlander's Lamellar Spaulders  */
UPDATE `item_template` SET `armor` = 553, `BuyPrice` = 123744, `SellPrice` = 24748, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 7 WHERE entry=20058;

/*  Highlander's Leather Shoulders  */
UPDATE `item_template` SET `armor` = 258, `BuyPrice` = 159473, `SellPrice` = 31894, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 7 WHERE entry=20059;

/*  Highlander's Lizardhide Shoulders  */
UPDATE `item_template` SET `armor` = 258, `BuyPrice` = 160061, `SellPrice` = 32012, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 7 WHERE entry=20060;

/*  Highlander's Epaulets  */
UPDATE `item_template` SET `armor` = 185, `BuyPrice` = 128505, `SellPrice` = 25701, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 7 WHERE entry=20061;

/*  Deathguard's Cloak  */
UPDATE `item_template` SET `armor` = 50, `BuyPrice` = 131769, `SellPrice` = 26353, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 7 WHERE entry=20068;

/*  Ironbark Staff  */
UPDATE `item_template` SET `BuyPrice` = 550995, `SellPrice` = 110199, `dmg_min1` = 136.62, `dmg_max1` = 242.62, `spelltrigger_3` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 7 WHERE entry=20069;

/*  Sageclaw  */
UPDATE `item_template` SET `BuyPrice` = 442362, `SellPrice` = 88472, `dmg_min1` = 46.31, `dmg_max1` = 95.31, `spelltrigger_3` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 7 WHERE entry=20070;

/*  Talisman of Arathor  */
UPDATE `item_template` SET `BuyPrice` = 41230, `SellPrice` = 10307, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 4 WHERE entry=20071;

/*  Defiler's Talisman  */
UPDATE `item_template` SET `BuyPrice` = 41230, `SellPrice` = 10307, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 4 WHERE entry=20072;

/*  Cloak of the Honor Guard  */
UPDATE `item_template` SET `armor` = 50, `BuyPrice` = 121395, `SellPrice` = 24279, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 7 WHERE entry=20073;

/*  Woestave  */
UPDATE `item_template` SET `spellid_1` = 9412 WHERE entry=20082;

/*  Highlander's Chain Girdle  */
UPDATE `item_template` SET `BuyPrice` = 52478, `SellPrice` = 10495, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20088;

/*  Highlander's Chain Girdle  */
UPDATE `item_template` SET `BuyPrice` = 26040, `SellPrice` = 5208, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20089;

/*  Highlander's Chain Girdle  */
UPDATE `item_template` SET `BuyPrice` = 9373 , `SellPrice` = 1874, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20090;

/*  Highlander's Chain Greaves  */
UPDATE `item_template` SET `BuyPrice` = 74297, `SellPrice` = 14859, `stat_value2` = 12, `spellid_2` = 0, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20091;

/*  Highlander's Chain Greaves  */
UPDATE `item_template` SET `BuyPrice` = 36875, `SellPrice` = 7375, `stat_value2` = 10, `spellid_2` = 0, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20092;

/*  Highlander's Chain Greaves  */
UPDATE `item_template` SET `BuyPrice` = 13217, `SellPrice` = 2643, `stat_value2` = 8, `spellid_2` = 0, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20093;

/*  Highlander's Cloth Boots  */
UPDATE `item_template` SET `BuyPrice` = 49873, `SellPrice` = 9974, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20094;

/*  Highlander's Cloth Boots  */
UPDATE `item_template` SET `BuyPrice` = 24749, `SellPrice` = 4949, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20095;

/*  Highlander's Cloth Boots  */
UPDATE `item_template` SET `BuyPrice` = 10692, `SellPrice` = 2138, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20096;

/*  Highlander's Cloth Girdle  */
UPDATE `item_template` SET `BuyPrice` = 33619, `SellPrice` = 6723, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20097;

/*  Highlander's Cloth Girdle  */
UPDATE `item_template` SET `BuyPrice` = 16684, `SellPrice` = 3336, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20098;

/*  Highlander's Cloth Girdle  */
UPDATE `item_template` SET `BuyPrice` = 7207, `SellPrice` = 1441, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20099;

/*  Highlander's Lizardhide Boots  */
UPDATE `item_template` SET `BuyPrice` = 63732, `SellPrice` = 12746, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20100;

/*  Highlander's Lizardhide Boots  */
UPDATE `item_template` SET `BuyPrice` = 31628, `SellPrice` = 6325, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20101;

/*  Highlander's Lizardhide Boots  */
UPDATE `item_template` SET `BuyPrice` = 13661, `SellPrice` = 2732, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20102;

/*  Highlander's Lizardhide Girdle  */
UPDATE `item_template` SET `BuyPrice` = 42952, `SellPrice` = 8590, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20103;

/*  Highlander's Lizardhide Girdle  */
UPDATE `item_template` SET `BuyPrice` = 21314, `SellPrice` = 4262, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20104;

/*  Highlander's Lizardhide Girdle  */
UPDATE `item_template` SET `BuyPrice` = 9207, `SellPrice` = 1841, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20105;

/*  Highlander's Lamellar Girdle  */
UPDATE `item_template` SET `BuyPrice` = 34732, `SellPrice` = 6946, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20106;

/*  Highlander's Lamellar Girdle  */
UPDATE `item_template` SET `BuyPrice` = 16008, `SellPrice` = 3201, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20107;

/*  Highlander's Lamellar Girdle  */
UPDATE `item_template` SET `BuyPrice` = 10375, `SellPrice` = 2075, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20108;

/*  Highlander's Lamellar Greaves  */
UPDATE `item_template` SET `BuyPrice` = 48938, `SellPrice` = 9787, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20109;

/*  Highlander's Lamellar Greaves  */
UPDATE `item_template` SET `BuyPrice` = 24287, `SellPrice` = 4857, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20110;

/*  Highlander's Lamellar Greaves  */
UPDATE `item_template` SET `BuyPrice` = 15810, `SellPrice` = 3162, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20111;

/*  Highlander's Leather Boots  */
UPDATE `item_template` SET `BuyPrice` = 61868, `SellPrice` = 12373, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20112;

/*  Highlander's Leather Boots  */
UPDATE `item_template` SET `BuyPrice` = 30705, `SellPrice` = 6141, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20113;

/*  Highlander's Leather Boots  */
UPDATE `item_template` SET `BuyPrice` = 13264, `SellPrice` = 2652, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20114;

/*  Highlander's Leather Girdle  */
UPDATE `item_template` SET `BuyPrice` = 41708, `SellPrice` = 8341, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20115;

/*  Highlander's Leather Girdle  */
UPDATE `item_template` SET `BuyPrice` = 20699, `SellPrice` = 4139, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20116;

/*  Highlander's Leather Girdle  */
UPDATE `item_template` SET `BuyPrice` = 8941, `SellPrice` = 1788, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20117;

/*  Highlander's Mail Girdle  */
UPDATE `item_template` SET `BuyPrice` = 50606, `SellPrice` = 10121, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20118;

/*  Highlander's Mail Girdle  */
UPDATE `item_template` SET `BuyPrice` = 25114, `SellPrice` = 5022, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20119;

/*  Highlander's Mail Girdle  */
UPDATE `item_template` SET `BuyPrice` = 9041, `SellPrice` = 1808, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20120;

/*  Highlander's Mail Greaves  */
UPDATE `item_template` SET `BuyPrice` = 77086, `SellPrice` = 15417, `stat_value2` = 12, `spellid_2` = 0, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20121;

/*  Highlander's Mail Greaves  */
UPDATE `item_template` SET `BuyPrice` = 38254, `SellPrice` = 7650, `stat_value2` = 10, `spellid_2` = 0, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20122;

/*  Highlander's Mail Greaves  */
UPDATE `item_template` SET `BuyPrice` = 13710, `SellPrice` = 2742, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20123;

/*  Highlander's Plate Girdle  */
UPDATE `item_template` SET `BuyPrice` = 35376, `SellPrice` = 7075, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20124;

/*  Highlander's Plate Girdle  */
UPDATE `item_template` SET `BuyPrice` = 15883, `SellPrice` = 3176, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 5 WHERE entry=20125;

/*  Highlander's Plate Greaves  */
UPDATE `item_template` SET `BuyPrice` = 48558, `SellPrice` = 9711, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20127;

/*  Highlander's Plate Greaves  */
UPDATE `item_template` SET `BuyPrice` = 24102, `SellPrice` = 4820, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 6 WHERE entry=20128;

/*  Diamond Flask  */
UPDATE `item_template` SET `BuyPrice` = 0, `SellPrice` = 0 WHERE entry=20130;

/*  Battle Tabard of the Defilers  */
UPDATE `item_template` SET `BuyPrice` = 50000, `SellPrice` = 12500, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 7 WHERE entry=20131;

/*  Arathor Battle Tabard  */
UPDATE `item_template` SET `BuyPrice` = 50000, `SellPrice` = 12500, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 7 WHERE entry=20132;

/*  Skyfury Helm  */
UPDATE `item_template` SET `armor` = 324, `BuyPrice` = 162201, `SellPrice` = 32440, `stat_type4` = 0, `stat_value4` = 0, `spellid_1` = 18382, `spellid_2` = 7597 WHERE entry=20134;

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
UPDATE `item_template` SET `armor` = 566, `BuyPrice` = 298624, `SellPrice` = 59724, `MaxDurability` = 55, `fire_res` = 5, `nature_res` = 6, `frost_res` = 6, `shadow_res` = 6, `arcane_res` = 6, `stat_type3` = 0, `stat_value3` = 0, `stat_type4` = 0, `stat_value4` = 0, `stat_type5` = 0, `stat_value5` = 0, `stat_type6` = 0, `stat_value6` = 0, `stat_type7` = 0, `stat_value7` = 0, `stat_type8` = 0, `stat_value8` = 0, `spelltrigger_1` = 0, `spellid_2` = 14803, `StatsCount` = 8 WHERE entry=20142;

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
UPDATE `item_template` SET `BuyPrice` = 83877, `SellPrice` = 16775, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20150;

/*  Defiler's Chain Girdle  */
UPDATE `item_template` SET `BuyPrice` = 49292, `SellPrice` = 9858, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20151;

/*  Defiler's Chain Girdle  */
UPDATE `item_template` SET `BuyPrice` = 8774, `SellPrice` = 1754, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20152;

/*  Defiler's Chain Girdle  */
UPDATE `item_template` SET `BuyPrice` = 24557, `SellPrice` = 4911, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20153;

/*  Defiler's Chain Greaves  */
UPDATE `item_template` SET `BuyPrice` = 128288, `SellPrice` = 25657, `stat_value2` = 15, `spellid_2` = 0, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20154;

/*  Defiler's Chain Greaves  */
UPDATE `item_template` SET `BuyPrice` = 75386, `SellPrice` = 15077, `stat_value2` = 12, `spellid_2` = 0, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20155;

/*  Defiler's Chain Greaves  */
UPDATE `item_template` SET `BuyPrice` = 38412, `SellPrice` = 7682, `stat_value2` = 10, `spellid_2` = 0, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20156;

/*  Defiler's Chain Greaves  */
UPDATE `item_template` SET `BuyPrice` = 13766, `SellPrice` = 2753, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20157;

/*  Defiler's Chain Pauldrons  */
UPDATE `item_template` SET `armor` = 312, `BuyPrice` = 196466, `SellPrice` = 39293, `stat_value1` = 20, `spellid_1` = 0, `spelltrigger_1` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 7 WHERE entry=20158;

/*  Defiler's Cloth Boots  */
UPDATE `item_template` SET `BuyPrice` = 89016, `SellPrice` = 17803, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20159;

/*  Defiler's Cloth Boots  */
UPDATE `item_template` SET `BuyPrice` = 52306, `SellPrice` = 10461, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20160;

/*  Defiler's Cloth Boots  */
UPDATE `item_template` SET `BuyPrice` = 25955, `SellPrice` = 5191, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20161;

/*  Defiler's Cloth Boots  */
UPDATE `item_template` SET `BuyPrice` = 11211, `SellPrice` = 2242, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20162;

/*  Defiler's Cloth Girdle  */
UPDATE `item_template` SET `BuyPrice` = 60191, `SellPrice` = 12038, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20163;

/*  Defiler's Cloth Girdle  */
UPDATE `item_template` SET `BuyPrice` = 7526, `SellPrice` = 1505, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20164;

/*  Defiler's Cloth Girdle  */
UPDATE `item_template` SET `BuyPrice` = 32116, `SellPrice` = 6423, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20165;

/*  Defiler's Cloth Girdle  */
UPDATE `item_template` SET `BuyPrice` = 15939, `SellPrice` = 3187, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20166;

/*  Defiler's Lizardhide Boots  */
UPDATE `item_template` SET `BuyPrice` = 103637, `SellPrice` = 20727, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20167;

/*  Defiler's Lizardhide Boots  */
UPDATE `item_template` SET `BuyPrice` = 30118, `SellPrice` = 6023, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20168;

/*  Defiler's Lizardhide Boots  */
UPDATE `item_template` SET `BuyPrice` = 13013, `SellPrice` = 2602, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20169;

/*  Defiler's Lizardhide Boots  */
UPDATE `item_template` SET `BuyPrice` = 61374, `SellPrice` = 12274, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20170;

/*  Defiler's Lizardhide Girdle  */
UPDATE `item_template` SET `BuyPrice` = 70149, `SellPrice` = 14029, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20171;

/*  Defiler's Lizardhide Girdle  */
UPDATE `item_template` SET `BuyPrice` = 9011, `SellPrice` = 1802, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20172;

/*  Defiler's Lizardhide Girdle  */
UPDATE `item_template` SET `BuyPrice` = 21014, `SellPrice` = 4202, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20173;

/*  Defiler's Lizardhide Girdle  */
UPDATE `item_template` SET `BuyPrice` = 42652, `SellPrice` = 8530, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20174;

/*  Defiler's Lizardhide Shoulders  */
UPDATE `item_template` SET `armor` = 258, `BuyPrice` = 161219, `SellPrice` = 32243, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 7 WHERE entry=20175;

/*  Defiler's Epaulets  */
UPDATE `item_template` SET `armor` = 185, `BuyPrice` = 129445, `SellPrice` = 25889, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 7 WHERE entry=20176;

/*  Defiler's Lamellar Girdle  */
UPDATE `item_template` SET `BuyPrice` = 58918, `SellPrice` = 11783, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20177;

/*  Defiler's Lamellar Girdle  */
UPDATE `item_template` SET `BuyPrice` = 11050, `SellPrice` = 2210, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20178;

/*  Defiler's Lamellar Girdle  */
UPDATE `item_template` SET `BuyPrice` = 34742, `SellPrice` = 6948, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20179;

/*  Defiler's Lamellar Girdle  */
UPDATE `item_template` SET `BuyPrice` = 17240, `SellPrice` = 3448, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20180;

/*  Defiler's Lamellar Greaves  */
UPDATE `item_template` SET `BuyPrice` = 89638, `SellPrice` = 17927, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20181;

/*  Defiler's Lamellar Greaves  */
UPDATE `item_template` SET `BuyPrice` = 16888, `SellPrice` = 3377, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20182;

/*  Defiler's Lamellar Greaves  */
UPDATE `item_template` SET `BuyPrice` = 26135, `SellPrice` = 5227, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20183;

/*  Defiler's Lamellar Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 133178, `SellPrice` = 26635, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 7 WHERE entry=20184;

/*  Defiler's Lamellar Greaves  */
UPDATE `item_template` SET `BuyPrice` = 48164, `SellPrice` = 9632, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20185;

/*  Defiler's Leather Boots  */
UPDATE `item_template` SET `BuyPrice` = 103227, `SellPrice` = 20645, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20186;

/*  Defiler's Leather Boots  */
UPDATE `item_template` SET `BuyPrice` = 29999, `SellPrice` = 5999, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20187;

/*  Defiler's Leather Boots  */
UPDATE `item_template` SET `BuyPrice` = 13318, `SellPrice` = 2663, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20188;

/*  Defiler's Leather Boots  */
UPDATE `item_template` SET `BuyPrice` = 62809, `SellPrice` = 12561, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20189;

/*  Defiler's Leather Girdle  */
UPDATE `item_template` SET `BuyPrice` = 71783, `SellPrice` = 14356, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20190;

/*  Defiler's Leather Girdle  */
UPDATE `item_template` SET `BuyPrice` = 8977, `SellPrice` = 1795, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20191;

/*  Defiler's Leather Girdle  */
UPDATE `item_template` SET `BuyPrice` = 20935, `SellPrice` = 4187, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20192;

/*  Defiler's Leather Girdle  */
UPDATE `item_template` SET `BuyPrice` = 42492, `SellPrice` = 8498, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20193;

/*  Defiler's Leather Shoulders  */
UPDATE `item_template` SET `armor` = 258, `BuyPrice` = 160616, `SellPrice` = 32123, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 7 WHERE entry=20194;

/*  Defiler's Mail Girdle  */
UPDATE `item_template` SET `BuyPrice` = 87729, `SellPrice` = 17545, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20195;

/*  Defiler's Mail Girdle  */
UPDATE `item_template` SET `BuyPrice` = 51547, `SellPrice` = 10309, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20196;

/*  Defiler's Mail Girdle  */
UPDATE `item_template` SET `BuyPrice` = 9174, `SellPrice` = 1834, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20197;

/*  Defiler's Mail Girdle  */
UPDATE `item_template` SET `BuyPrice` = 25672, `SellPrice` = 5134, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20198;

/*  Defiler's Mail Greaves  */
UPDATE `item_template` SET `BuyPrice` = 134092, `SellPrice` = 26818, `stat_value2` = 15, `spellid_2` = 0, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20199;

/*  Defiler's Mail Greaves  */
UPDATE `item_template` SET `BuyPrice` = 38954, `SellPrice` = 7790, `stat_value2` = 10, `spellid_2` = 0, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20200;

/*  Defiler's Mail Greaves  */
UPDATE `item_template` SET `BuyPrice` = 13960, `SellPrice` = 2792, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20201;

/*  Defiler's Mail Greaves  */
UPDATE `item_template` SET `BuyPrice` = 79348, `SellPrice` = 15869, `stat_value2` = 12, `spellid_2` = 0, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20202;

/*  Defiler's Mail Pauldrons  */
UPDATE `item_template` SET `armor` = 312, `BuyPrice` = 199928, `SellPrice` = 39985, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 7 WHERE entry=20203;

/*  Defiler's Plate Girdle  */
UPDATE `item_template` SET `BuyPrice` = 56148, `SellPrice` = 11229, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20204;

/*  Defiler's Plate Girdle  */
UPDATE `item_template` SET `BuyPrice` = 32999, `SellPrice` = 6599, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20205;

/*  Defiler's Plate Girdle  */
UPDATE `item_template` SET `BuyPrice` = 16378, `SellPrice` = 3275, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 5 WHERE entry=20206;

/*  Defiler's Plate Greaves  */
UPDATE `item_template` SET `BuyPrice` = 85492, `SellPrice` = 17098, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20208;

/*  Defiler's Plate Greaves  */
UPDATE `item_template` SET `BuyPrice` = 24842, `SellPrice` = 4968, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20209;

/*  Defiler's Plate Greaves  */
UPDATE `item_template` SET `BuyPrice` = 50612, `SellPrice` = 10122, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 6 WHERE entry=20211;

/*  Defiler's Plate Spaulders  */
UPDATE `item_template` SET `armor` = 553, `BuyPrice` = 127540, `SellPrice` = 25508, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 7 WHERE entry=20212;

/*  Belt of Shrunken Heads  */
UPDATE `item_template` SET `BuyPrice` = 81688, `SellPrice` = 16337 WHERE entry=20213;

/*  Mindfang  */
UPDATE `item_template` SET `BuyPrice` = 428268, `SellPrice` = 85653, `dmg_min1` = 46.31, `dmg_max1` = 95.31, `spelltrigger_3` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 7 WHERE entry=20214;

/*  Belt of Shriveled Heads  */
UPDATE `item_template` SET `BuyPrice` = 123420, `SellPrice` = 24684 WHERE entry=20215;

/*  Belt of Preserved Heads  */
UPDATE `item_template` SET `BuyPrice` = 103225, `SellPrice` = 20645 WHERE entry=20216;

/*  Belt of Tiny Heads  */
UPDATE `item_template` SET `BuyPrice` = 82879, `SellPrice` = 16575 WHERE entry=20217;

/*  Ironbark Staff  */
UPDATE `item_template` SET `BuyPrice` = 504598, `SellPrice` = 100919, `dmg_min1` = 136.62, `dmg_max1` = 242.62, `spelltrigger_3` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 7 WHERE entry=20220;

/*  Seafury Gauntlets  */
UPDATE `item_template` SET `armor` = 271, `BuyPrice` = 154200, `SellPrice` = 30840, `stat_type4` = 0, `stat_value4` = 0, `spellid_1` = 7597, `spellid_2` = 18384 WHERE entry=20257;

/*  Zulian Ceremonial Staff  */
UPDATE `item_template` SET `BuyPrice` = 378012, `SellPrice` = 75602, `dmg_min1` = 112.4, `dmg_max1` = 171.4, `DisenchantID` = 49 WHERE entry=20258;

/*  Shadow Panther Hide Gloves  */
UPDATE `item_template` SET `BuyPrice` = 75896, `SellPrice` = 15179, `DisenchantID` = 49 WHERE entry=20259;

/*  Seafury Leggings  */
UPDATE `item_template` SET `BuyPrice` = 211655, `SellPrice` = 42331 WHERE entry=20260;

/*  Shadow Panther Hide Belt  */
UPDATE `item_template` SET `BuyPrice` = 76475, `SellPrice` = 15295, `DisenchantID` = 49 WHERE entry=20261;

/*  Seafury Boots  */
UPDATE `item_template` SET `BuyPrice` = 160676, `SellPrice` = 32135 WHERE entry=20262;

/*  Gurubashi Helm  */
UPDATE `item_template` SET `BuyPrice` = 92475, `SellPrice` = 18495, `DisenchantID` = 49 WHERE entry=20263;

/*  Peacekeeper Gauntlets  */
UPDATE `item_template` SET `armor` = 482, `BuyPrice` = 95509, `SellPrice` = 19101, `spelltrigger_3` = 0 WHERE entry=20264;

/*  Peacekeeper Boots  */
UPDATE `item_template` SET `BuyPrice` = 107856, `SellPrice` = 21571 WHERE entry=20265;

/*  Peacekeeper Leggings  */
UPDATE `item_template` SET `BuyPrice` = 144352, `SellPrice` = 28870 WHERE entry=20266;

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
UPDATE `item_template` SET `armor` = 208, `BuyPrice` = 62954, `SellPrice` = 12590, `ItemLevel` = 56, `stat_type1` = 6, `stat_value1` = 18, `stat_type2` = 7, `stat_value2` = 5, `stat_type3` = 0, `stat_value3` = 0, `DisenchantID` = 48, `RequiredLevel` = 51 WHERE entry=20296;

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
UPDATE `item_template` SET `armor` = 118, `BuyPrice` = 584292, `SellPrice` = 116858, `MaxDurability` = 75, `stat_value1` = 15, `stat_type2` = 5, `stat_value2` = 37, `stat_type3` = 7, `stat_value3` = 16, `spellid_1` = 17898, `spellid_2` = 18378, `spelltrigger_2` = 1, `StatsCount` = 3 WHERE entry=20329;

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
UPDATE `item_template` SET `BuyPrice` = 177914, `SellPrice` = 35582, `dmg_min1` = 46.0, `dmg_max1` = 46.0, `MaxDurability` = 75 WHERE entry=20368;

/*  Azurite Fists  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=20369;

/*  Test Staff 90 epic  */
UPDATE `item_template` SET `spellid_1` = 24694, `spelltrigger_1` = 1, `spellid_2` = 13670, `spelltrigger_2` = 1 WHERE entry=20370;

/*  Test Staff 77 epic  */
UPDATE `item_template` SET `spellid_1` = 24697, `spelltrigger_1` = 1, `spellid_2` = 13670, `spelltrigger_2` = 1 WHERE entry=20372;

/*  Dreamscale Breastplate  */
UPDATE `item_template` SET `armor` = 434, `BuyPrice` = 289792, `SellPrice` = 57958 WHERE entry=20380;

/*  Advisor's Gnarled Staff  */
UPDATE `item_template` SET `BuyPrice` = 15211, `SellPrice` = 3042 WHERE entry=20425;

/*  Advisor's Ring  */
UPDATE `item_template` SET `BuyPrice` = 20000, `SellPrice` = 5000 WHERE entry=20426;

/*  Battle Healer's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 3650, `SellPrice` = 730 WHERE entry=20427;

/*  Caretaker's Cape  */
UPDATE `item_template` SET `BuyPrice` = 3650, `SellPrice` = 730 WHERE entry=20428;

/*  Legionnaire's Band  */
UPDATE `item_template` SET `BuyPrice` = 20000, `SellPrice` = 5000 WHERE entry=20429;

/*  Legionnaire's Sword  */
UPDATE `item_template` SET `BuyPrice` = 12169, `SellPrice` = 2433 WHERE entry=20430;

/*  Lorekeeper's Ring  */
UPDATE `item_template` SET `BuyPrice` = 20000, `SellPrice` = 5000 WHERE entry=20431;

/*  Lorekeeper's Staff  */
UPDATE `item_template` SET `BuyPrice` = 15211, `SellPrice` = 3042 WHERE entry=20434;

/*  Outrider's Bow  */
UPDATE `item_template` SET `BuyPrice` = 9126, `SellPrice` = 1825, `dmg_min1` = 19.0, `dmg_max1` = 37.0 WHERE entry=20437;

/*  Outrunner's Bow  */
UPDATE `item_template` SET `BuyPrice` = 9126, `SellPrice` = 1825, `dmg_min1` = 19.0, `dmg_max1` = 37.0 WHERE entry=20438;

/*  Protector's Band  */
UPDATE `item_template` SET `BuyPrice` = 20000, `SellPrice` = 5000 WHERE entry=20439;

/*  Protector's Sword  */
UPDATE `item_template` SET `BuyPrice` = 12910, `SellPrice` = 2582 WHERE entry=20440;

/*  Scout's Blade  */
UPDATE `item_template` SET `BuyPrice` = 12169, `SellPrice` = 2433 WHERE entry=20441;

/*  Scout's Medallion  */
UPDATE `item_template` SET `BuyPrice` = 20000, `SellPrice` = 5000 WHERE entry=20442;

/*  Sentinel's Blade  */
UPDATE `item_template` SET `BuyPrice` = 13050, `SellPrice` = 2610 WHERE entry=20443;

/*  Sentinel's Medallion  */
UPDATE `item_template` SET `BuyPrice` = 20000, `SellPrice` = 5000 WHERE entry=20444;

/*  Test Defense Ring +120  */
UPDATE `item_template` SET `spellid_1` = 24774, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 0 WHERE entry=20445;

/*  Test Defense Ring +80  */
UPDATE `item_template` SET `spellid_1` = 24775, `spelltrigger_1` = 1, `spellcooldown_1` = 0, `spellcategorycooldown_1` = 0 WHERE entry=20446;

/*  Sandstalker Bracers  */
UPDATE `item_template` SET `BuyPrice` = 82005, `SellPrice` = 16401, `DisenchantID` = 49 WHERE entry=20476;

/*  Sandstalker Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 84490, `SellPrice` = 16898, `DisenchantID` = 49 WHERE entry=20477;

/*  Sandstalker Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 169588, `SellPrice` = 33917, `DisenchantID` = 49 WHERE entry=20478;

/*  Spitfire Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 170181, `SellPrice` = 34036, `DisenchantID` = 49 WHERE entry=20479;

/*  Spitfire Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 85394, `SellPrice` = 17078, `DisenchantID` = 49 WHERE entry=20480;

/*  Spitfire Bracers  */
UPDATE `item_template` SET `BuyPrice` = 85699, `SellPrice` = 17139, `DisenchantID` = 49 WHERE entry=20481;

/*  Ironbark Shield  */
UPDATE `item_template` SET `armor` = 1803, `block` = 31, `MaxDurability` = 100, `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 24852, `spelltrigger_1` = 1, `StatsCount` = 2 WHERE entry=20502;

/*  Enamored Water Spirit  */
UPDATE `item_template` SET `BuyPrice` = 0, `SellPrice` = 0 WHERE entry=20503;

/*  Lightforged Blade  */
UPDATE `item_template` SET `spellid_1` = 21509 WHERE entry=20504;

/*  Chivalrous Signet  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=20505;

/*  Sanctified Orb  */
UPDATE `item_template` SET `BuyPrice` = 0, `SellPrice` = 0 WHERE entry=20512;

/*  Razorsteel Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 48987, `SellPrice` = 9797 WHERE entry=20517;

/*  Fury Visor  */
UPDATE `item_template` SET `BuyPrice` = 49688, `SellPrice` = 9937 WHERE entry=20521;

/*  Feral Staff  */
UPDATE `item_template` SET `armor` = 110, `dmg_min1` = 108.0, `dmg_max1` = 162.0, `MaxDurability` = 100, `stat_type3` = 0, `stat_value3` = 0, `spelltrigger_1` = 0, `StatsCount` = 3 WHERE entry=20522;

/*  Shadowhide Leggings  */
UPDATE `item_template` SET `armor` = 132, `MaxDurability` = 75, `shadow_res` = 6, `stat_type3` = 0, `stat_value3` = 0, `stat_type4` = 0, `stat_value4` = 0, `spelltrigger_1` = 0, `StatsCount` = 4 WHERE entry=20524;

/*  Earthen Sigil  */
UPDATE `item_template` SET `spellid_1` = 24884, `spellcooldown_1` = 180000 WHERE entry=20525;

/*  Robes of Servitude  */
UPDATE `item_template` SET `spellid_1` = 17747, `spellid_2` = 14793 WHERE entry=20530;

/*  Abyss Shard  */
UPDATE `item_template` SET `BuyPrice` = 0, `SellPrice` = 0, `stat_type1` = 0, `stat_value1` = 0 WHERE entry=20534;

/*  Soul Harvester  */
UPDATE `item_template` SET `spellid_2` = 14794 WHERE entry=20536;

/*  Runed Stygian Boots  */
UPDATE `item_template` SET `BuyPrice` = 88680, `SellPrice` = 17736, `DisenchantID` = 49 WHERE entry=20537;

/*  Runed Stygian Leggings  */
UPDATE `item_template` SET `BuyPrice` = 118666, `SellPrice` = 23733, `DisenchantID` = 49 WHERE entry=20538;

/*  Runed Stygian Belt  */
UPDATE `item_template` SET `BuyPrice` = 59540, `SellPrice` = 11908, `DisenchantID` = 49 WHERE entry=20539;

/*  Darkrune Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 57421, `SellPrice` = 11484, `DisenchantID` = 49 WHERE entry=20549;

/*  Darkrune Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 115257, `SellPrice` = 23051, `DisenchantID` = 49 WHERE entry=20550;

/*  Darkrune Helm  */
UPDATE `item_template` SET `BuyPrice` = 86762, `SellPrice` = 17352, `DisenchantID` = 49 WHERE entry=20551;

/*  Black Whelp Tunic  */
UPDATE `item_template` SET `stat_type1` = 4 WHERE entry=20575;

/*  Nightmare Blade  */
UPDATE `item_template` SET `BuyPrice` = 540400, `SellPrice` = 108080 WHERE entry=20577;

/*  Emerald Dragonfang  */
UPDATE `item_template` SET `BuyPrice` = 542499, `SellPrice` = 108499 WHERE entry=20578;

/*  Green Dragonskin Cloak  */
UPDATE `item_template` SET `armor` = 54, `BuyPrice` = 163379, `SellPrice` = 32675 WHERE entry=20579;

/*  Hammer of Bestial Fury  */
UPDATE `item_template` SET `BuyPrice` = 546639, `SellPrice` = 109327, `stat_type1` = 4, `stat_value1` = 13, `spellid_1` = 24994 WHERE entry=20580;

/*  Staff of Rampant Growth  */
UPDATE `item_template` SET `BuyPrice` = 685922, `SellPrice` = 137184, `dmg_min1` = 113.4, `dmg_max1` = 184.4 WHERE entry=20581;

/*  Sturdy Male Dwarf Mask  */
UPDATE `item_template` SET `BuyPrice` = 25053, `SellPrice` = 5010, `DisenchantID` = 0 WHERE entry=20591;

/*  Sturdy Male Tauren Mask  */
UPDATE `item_template` SET `BuyPrice` = 25498, `SellPrice` = 5099, `DisenchantID` = 0 WHERE entry=20596;

/*  Polished Ironwood Crossbow  */
UPDATE `item_template` SET `BuyPrice` = 408363, `SellPrice` = 81672, `dmg_min1` = 101.0, `dmg_max1` = 153.0 WHERE entry=20599;

/*  Malfurion's Signet Ring  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=20600;

/*  Dragonspur Wraps  */
UPDATE `item_template` SET `armor` = 93, `BuyPrice` = 148216, `SellPrice` = 29643 WHERE entry=20615;

/*  Dragonbone Wristguards  */
UPDATE `item_template` SET `armor` = 351, `BuyPrice` = 108193, `SellPrice` = 21638 WHERE entry=20616;

/*  Ancient Corroded Leggings  */
UPDATE `item_template` SET `armor` = 401, `BuyPrice` = 340381, `SellPrice` = 68076 WHERE entry=20617;

/*  Gloves of Delusional Power  */
UPDATE `item_template` SET `armor` = 69, `BuyPrice` = 113889, `SellPrice` = 22777 WHERE entry=20618;

/*  Acid Inscribed Greaves  */
UPDATE `item_template` SET `armor` = 559, `BuyPrice` = 171494, `SellPrice` = 34298 WHERE entry=20619;

/*  Boots of the Endless Moor  */
UPDATE `item_template` SET `armor` = 311, `BuyPrice` = 247978, `SellPrice` = 49595 WHERE entry=20621;

/*  Circlet of Restless Dreams  */
UPDATE `item_template` SET `armor` = 175, `BuyPrice` = 223569, `SellPrice` = 44713, `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 15717 WHERE entry=20623;

/*  Belt of the Dark Bog  */
UPDATE `item_template` SET `armor` = 61, `BuyPrice` = 114398, `SellPrice` = 22879 WHERE entry=20625;

/*  Black Bark Wristbands  */
UPDATE `item_template` SET `armor` = 48, `BuyPrice` = 108193, `SellPrice` = 21638 WHERE entry=20626;

/*  Dark Heart Pants  */
UPDATE `item_template` SET `armor` = 296, `BuyPrice` = 288066, `SellPrice` = 57613 WHERE entry=20627;

/*  Deviate Growth Cap  */
UPDATE `item_template` SET `armor` = 175, `BuyPrice` = 227678, `SellPrice` = 45535 WHERE entry=20628;

/*  Malignant Footguards  */
UPDATE `item_template` SET `armor` = 315, `BuyPrice` = 275397, `SellPrice` = 55079 WHERE entry=20629;

/*  Gauntlets of the Shining Light  */
UPDATE `item_template` SET `armor` = 509, `BuyPrice` = 122298, `SellPrice` = 24459 WHERE entry=20630;

/*  Mendicant's Slippers  */
UPDATE `item_template` SET `armor` = 75, `BuyPrice` = 175341, `SellPrice` = 35068 WHERE entry=20631;

/*  Unnatural Leather Spaulders  */
UPDATE `item_template` SET `armor` = 161, `BuyPrice` = 231765, `SellPrice` = 46353 WHERE entry=20633;

/*  Boots of Fright  */
UPDATE `item_template` SET `armor` = 148, `BuyPrice` = 232591, `SellPrice` = 46518 WHERE entry=20634;

/*  Jade Inlaid Vestments  */
UPDATE `item_template` SET `armor` = 109, `BuyPrice` = 237123, `SellPrice` = 47424 WHERE entry=20635;

/*  Hibernation Crystal  */
UPDATE `item_template` SET `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=20636;

/*  Acid Inscribed Pauldrons  */
UPDATE `item_template` SET `armor` = 610, `BuyPrice` = 170154, `SellPrice` = 34030 WHERE entry=20637;

/*  Leggings of the Demented Mind  */
UPDATE `item_template` SET `armor` = 401, `BuyPrice` = 351100, `SellPrice` = 70220 WHERE entry=20638;

/*  Strangely Glyphed Legplates  */
UPDATE `item_template` SET `armor` = 712, `BuyPrice` = 234948, `SellPrice` = 46989 WHERE entry=20639;

/*  Southsea Head Bucket  */
UPDATE `item_template` SET `BuyPrice` = 24061, `SellPrice` = 4812 WHERE entry=20640;

/*  Sandstrider's Mark  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 149818, `SellPrice` = 29963, `dmg_min1` = 44.0, `dmg_max1` = 82.0, `MaxDurability` = 65, `stat_value1` = 8, `DisenchantID` = 30 WHERE entry=20646;

/*  Black Crystal Dagger  */
UPDATE `item_template` SET `Quality` = 2, `BuyPrice` = 200487, `SellPrice` = 40097, `dmg_min1` = 44.0, `dmg_max1` = 83.0, `MaxDurability` = 55, `DisenchantID` = 30, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=20647;

/*  Cold Forged Hammer  */
UPDATE `item_template` SET `BuyPrice` = 293469, `SellPrice` = 58693, `DisenchantID` = 49 WHERE entry=20648;

/*  Desert Wind Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 42558, `SellPrice` = 8511 WHERE entry=20650;

/*  Abyssal Plate Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 43014, `SellPrice` = 8602 WHERE entry=20653;

/*  Amethyst War Staff  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20654;

/*  Crystal Tipped Stiletto  */
UPDATE `item_template` SET `BuyPrice` = 237219, `SellPrice` = 47443, `DisenchantID` = 49 WHERE entry=20657;

/*  Stonecutting Glaive  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20660;

/*  Abyssal Plate Greaves  */
UPDATE `item_template` SET `BuyPrice` = 62003, `SellPrice` = 12400 WHERE entry=20662;

/*  Deep Strike Bow  */
UPDATE `item_template` SET `dmg_min1` = 58.0, `dmg_max1` = 108.0, `DisenchantID` = 49 WHERE entry=20663;

/*  Abyssal Cloth Sash  */
UPDATE `item_template` SET `BuyPrice` = 53142, `SellPrice` = 10628 WHERE entry=20664;

/*  Abyssal Leather Leggings  */
UPDATE `item_template` SET `BuyPrice` = 138225, `SellPrice` = 27645, `DisenchantID` = 49 WHERE entry=20665;

/*  Hardened Steel Warhammer  */
UPDATE `item_template` SET `BuyPrice` = 261534, `SellPrice` = 52306, `DisenchantID` = 49 WHERE entry=20666;

/*  Abyssal Leather Belt  */
UPDATE `item_template` SET `BuyPrice` = 67155, `SellPrice` = 13431 WHERE entry=20667;

/*  Abyssal Mail Legguards  */
UPDATE `item_template` SET `BuyPrice` = 167680, `SellPrice` = 33536, `DisenchantID` = 49 WHERE entry=20668;

/*  Darkstone Claymore  */
UPDATE `item_template` SET `BuyPrice` = 350602, `SellPrice` = 70120, `DisenchantID` = 49 WHERE entry=20669;

/*  Abyssal Mail Clutch  */
UPDATE `item_template` SET `BuyPrice` = 75626, `SellPrice` = 15125 WHERE entry=20670;

/*  Sparkling Crystal Wand  */
UPDATE `item_template` SET `BuyPrice` = 197487, `SellPrice` = 39497, `DisenchantID` = 49 WHERE entry=20672;

/*  Abyssal Plate Girdle  */
UPDATE `item_template` SET `BuyPrice` = 50999, `SellPrice` = 10199 WHERE entry=20673;

/*  Abyssal Cloth Pants  */
UPDATE `item_template` SET `BuyPrice` = 106138, `SellPrice` = 21227, `DisenchantID` = 49 WHERE entry=20674;

/*  Soulrender  */
UPDATE `item_template` SET `BuyPrice` = 261534, `SellPrice` = 52306, `DisenchantID` = 49 WHERE entry=20675;

/*  Abyssal Mail Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 158417, `SellPrice` = 31683 WHERE entry=20680;

/*  Abyssal Leather Bracers  */
UPDATE `item_template` SET `BuyPrice` = 91258, `SellPrice` = 18251 WHERE entry=20681;

/*  Abyssal Plate Epaulets  */
UPDATE `item_template` SET `BuyPrice` = 105144, `SellPrice` = 21028 WHERE entry=20683;

/*  Abyssal Mail Armguards  */
UPDATE `item_template` SET `BuyPrice` = 105144, `SellPrice` = 21028 WHERE entry=20684;

/*  Abyssal Cloth Amice  */
UPDATE `item_template` SET `BuyPrice` = 105144, `SellPrice` = 21028 WHERE entry=20686;

/*  Abyssal Plate Vambraces  */
UPDATE `item_template` SET `BuyPrice` = 70096, `SellPrice` = 14019 WHERE entry=20687;

/*  Earthen Guard  */
UPDATE `item_template` SET `armor` = 2468, `BuyPrice` = 283220, `SellPrice` = 56644, `block` = 44 WHERE entry=20688;

/*  Abyssal Leather Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 131430, `SellPrice` = 26286 WHERE entry=20689;

/*  Abyssal Cloth Wristbands  */
UPDATE `item_template` SET `BuyPrice` = 70022, `SellPrice` = 14004 WHERE entry=20690;

/*  Windshear Cape  */
UPDATE `item_template` SET `armor` = 50, `BuyPrice` = 121446, `SellPrice` = 24289 WHERE entry=20691;

/*  Weighted Cloak  */
UPDATE `item_template` SET `BuyPrice` = 59304, `SellPrice` = 11860 WHERE entry=20693;

/*  Abyssal War Beads  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20695;

/*  Crystal Spiked Maul  */
UPDATE `item_template` SET `BuyPrice` = 350857, `SellPrice` = 70171, `DisenchantID` = 49 WHERE entry=20696;

/*  Crystalline Threaded Cape  */
UPDATE `item_template` SET `BuyPrice` = 84516, `SellPrice` = 16903, `DisenchantID` = 49 WHERE entry=20697;

/*  Elemental Attuned Blade  */
UPDATE `item_template` SET `BuyPrice` = 377050, `SellPrice` = 75410, `dmg_min1` = 58.6, `dmg_max1` = 116.6 WHERE entry=20698;

/*  Cenarion Reservist's Legplates  */
UPDATE `item_template` SET `BuyPrice` = 113541, `SellPrice` = 22708, `DisenchantID` = 49 WHERE entry=20699;

/*  Cenarion Reservist's Legplates  */
UPDATE `item_template` SET `BuyPrice` = 109844, `SellPrice` = 21968, `DisenchantID` = 49 WHERE entry=20700;

/*  Cenarion Reservist's Legguards  */
UPDATE `item_template` SET `BuyPrice` = 171573, `SellPrice` = 34314, `DisenchantID` = 49 WHERE entry=20701;

/*  Cenarion Reservist's Legguards  */
UPDATE `item_template` SET `BuyPrice` = 176790, `SellPrice` = 35358, `DisenchantID` = 49 WHERE entry=20702;

/*  Cenarion Reservist's Leggings  */
UPDATE `item_template` SET `BuyPrice` = 147857, `SellPrice` = 29571, `DisenchantID` = 49 WHERE entry=20703;

/*  Cenarion Reservist's Leggings  */
UPDATE `item_template` SET `BuyPrice` = 137305, `SellPrice` = 27461, `DisenchantID` = 49 WHERE entry=20704;

/*  Cenarion Reservist's Pants  */
UPDATE `item_template` SET `BuyPrice` = 109844, `SellPrice` = 21968, `DisenchantID` = 49 WHERE entry=20705;

/*  Cenarion Reservist's Pants  */
UPDATE `item_template` SET `BuyPrice` = 109844, `SellPrice` = 21968, `DisenchantID` = 49 WHERE entry=20706;

/*  Cenarion Reservist's Pants  */
UPDATE `item_template` SET `BuyPrice` = 109844, `SellPrice` = 21968, `DisenchantID` = 49 WHERE entry=20707;

/*  Crystal Encrusted Greaves  */
UPDATE `item_template` SET `BuyPrice` = 82288, `SellPrice` = 16457, `DisenchantID` = 49 WHERE entry=20710;

/*  Crystal Lined Greaves  */
UPDATE `item_template` SET `BuyPrice` = 82607, `SellPrice` = 16521, `DisenchantID` = 49 WHERE entry=20711;

/*  Wastewalker's Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 82918, `SellPrice` = 16583, `DisenchantID` = 49 WHERE entry=20712;

/*  Desertstalkers's Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 83238, `SellPrice` = 16647, `DisenchantID` = 49 WHERE entry=20713;

/*  Sandstorm Boots  */
UPDATE `item_template` SET `BuyPrice` = 102979, `SellPrice` = 20595, `DisenchantID` = 49 WHERE entry=20714;

/*  Dunestalker's Boots  */
UPDATE `item_template` SET `BuyPrice` = 104847, `SellPrice` = 20969, `DisenchantID` = 49 WHERE entry=20715;

/*  Sandworm Skin Gloves  */
UPDATE `item_template` SET `BuyPrice` = 56125, `SellPrice` = 11225, `DisenchantID` = 49 WHERE entry=20716;

/*  Desert Bloom Gloves  */
UPDATE `item_template` SET `BuyPrice` = 54922, `SellPrice` = 10984, `DisenchantID` = 49, `spelltrigger_2` = 0 WHERE entry=20717;

/*  Dark Whisper Blade  */
UPDATE `item_template` SET `BuyPrice` = 302759, `SellPrice` = 60551, `dmg_min1` = 39.6, `dmg_max1` = 76.6, `DisenchantID` = 49 WHERE entry=20720;

/*  Band of the Cultist  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=20721;

/*  Crystal Slugthrower  */
UPDATE `item_template` SET `BuyPrice` = 227069, `SellPrice` = 45413, `dmg_min1` = 65.0, `dmg_max1` = 122.0, `DisenchantID` = 49 WHERE entry=20722;

/*  Corrupted Blackwood Staff  */
UPDATE `item_template` SET `BuyPrice` = 294368, `SellPrice` = 58873 WHERE entry=20724;

/*  Staff of Spell Penetration - Fire (TEST)  */
UPDATE `item_template` SET `spellid_1` = 25717, `spelltrigger_1` = 1 WHERE entry=21101;

/*  Staff of Spell Penetration - Frost (TEST)  */
UPDATE `item_template` SET `spellid_1` = 25718, `spelltrigger_1` = 1 WHERE entry=21102;

/*  Defiler's Talisman  */
UPDATE `item_template` SET `BuyPrice` = 28230, `SellPrice` = 7057, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 4 WHERE entry=21115;

/*  Defiler's Talisman  */
UPDATE `item_template` SET `BuyPrice` = 15230, `SellPrice` = 3807, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 4 WHERE entry=21116;

/*  Talisman of Arathor  */
UPDATE `item_template` SET `BuyPrice` = 28230, `SellPrice` = 7057, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 4 WHERE entry=21117;

/*  Talisman of Arathor  */
UPDATE `item_template` SET `BuyPrice` = 15230, `SellPrice` = 3807, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 4 WHERE entry=21118;

/*  Talisman of Arathor  */
UPDATE `item_template` SET `BuyPrice` = 7230, `SellPrice` = 1807, `spelltrigger_2` = 0, `RequiredReputationFaction` = 509, `RequiredReputationRank` = 4 WHERE entry=21119;

/*  Defiler's Talisman  */
UPDATE `item_template` SET `BuyPrice` = 7230, `SellPrice` = 1807, `spelltrigger_2` = 0, `RequiredReputationFaction` = 510, `RequiredReputationRank` = 4 WHERE entry=21120;

/*  Death's Sting  */
UPDATE `item_template` SET `BuyPrice` = 1034835, `SellPrice` = 206967, `stat_type2` = 0, `stat_value2` = 0, `spellid_2` = 7574 WHERE entry=21126;

/*  Staff of the Qiraji Prophets  */
UPDATE `item_template` SET `BuyPrice` = 840206, `SellPrice` = 168041, `dmg_min1` = 129.4, `dmg_max1` = 214.4 WHERE entry=21128;

/*  Dark Edge of Insanity  */
UPDATE `item_template` SET `BuyPrice` = 1332847, `SellPrice` = 266569 WHERE entry=21134;

/*  Festival Dress  */
UPDATE `item_template` SET `armor` = 0, `MaxDurability` = 0 WHERE entry=21154;

/*  Festive Green Dress  */
UPDATE `item_template` SET `BuyPrice` = 7, `SellPrice` = 1 WHERE entry=21157;

/*  Gloves of Earthen Power  */
UPDATE `item_template` SET `BuyPrice` = 71155, `SellPrice` = 14231, `DisenchantID` = 49 WHERE entry=21178;

/*  Band of Earthen Wrath  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21179;

/*  Earthpower Vest  */
UPDATE `item_template` SET `BuyPrice` = 127478, `SellPrice` = 25495 WHERE entry=21183;

/*  Deeprock Bracers  */
UPDATE `item_template` SET `armor` = 309, `BuyPrice` = 72126, `SellPrice` = 14425 WHERE entry=21184;

/*  Rockfury Bracers  */
UPDATE `item_template` SET `armor` = 42, `BuyPrice` = 72667, `SellPrice` = 14533 WHERE entry=21186;

/*  Earthweave Cloak  */
UPDATE `item_template` SET `BuyPrice` = 82046, `SellPrice` = 16409, `DisenchantID` = 49 WHERE entry=21187;

/*  Fist of Cenarius  */
UPDATE `item_template` SET `BuyPrice` = 556103, `SellPrice` = 111220 WHERE entry=21188;

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

/*  Blessed Qiraji War Axe  */
UPDATE `item_template` SET `BuyPrice` = 820121, `SellPrice` = 164024 WHERE entry=21242;

/*  Blessed Qiraji Pugio  */
UPDATE `item_template` SET `BuyPrice` = 826238, `SellPrice` = 165247 WHERE entry=21244;

/*  Blessed Qiraji War Hammer  */
UPDATE `item_template` SET `BuyPrice` = 860679, `SellPrice` = 172135, `stat_type2` = 4, `stat_value2` = 10, `spellid_1` = 24697 WHERE entry=21268;

/*  Blessed Qiraji Bulwark  */
UPDATE `item_template` SET `armor` = 2964, `BuyPrice` = 552819, `SellPrice` = 110563, `block` = 55 WHERE entry=21269;

/*  Blessed Qiraji Musket  */
UPDATE `item_template` SET `BuyPrice` = 654748, `SellPrice` = 130949, `dmg_min1` = 86.0, `dmg_max1` = 160.0 WHERE entry=21272;

/*  Blessed Qiraji Acolyte Staff  */
UPDATE `item_template` SET `BuyPrice` = 1095018, `SellPrice` = 219003 WHERE entry=21273;

/*  Blessed Qiraji Augur Staff  */
UPDATE `item_template` SET `BuyPrice` = 997918, `SellPrice` = 199583 WHERE entry=21275;

/*  Stormshroud Gloves  */
UPDATE `item_template` SET `armor` = 109, `BuyPrice` = 66062, `SellPrice` = 13212, `ItemLevel` = 62, `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `DisenchantID` = 49, `spellid_1` = 7597, `spellid_2` = 15464, `RequiredLevel` = 57 WHERE entry=21278;

/*  Leggings of the Ursa  */
UPDATE `item_template` SET `BuyPrice` = 62037, `SellPrice` = 12407 WHERE entry=21316;

/*  Ursa's Embrace  */
UPDATE `item_template` SET `BuyPrice` = 75541, `SellPrice` = 15108 WHERE entry=21322;

/*  Conqueror's Crown  */
UPDATE `item_template` SET `armor` = 739, `BuyPrice` = 265185, `SellPrice` = 53037 WHERE entry=21329;

/*  Conqueror's Spaulders  */
UPDATE `item_template` SET `armor` = 659, `BuyPrice` = 229939, `SellPrice` = 45987 WHERE entry=21330;

/*  Conqueror's Breastplate  */
UPDATE `item_template` SET `armor` = 985, `BuyPrice` = 501319, `SellPrice` = 100263 WHERE entry=21331;

/*  Conqueror's Legguards  */
UPDATE `item_template` SET `armor` = 796, `BuyPrice` = 357645, `SellPrice` = 71529 WHERE entry=21332;

/*  Conqueror's Greaves  */
UPDATE `item_template` SET `armor` = 604, `BuyPrice` = 232596, `SellPrice` = 46519 WHERE entry=21333;

/*  Doomcaller's Robes  */
UPDATE `item_template` SET `armor` = 133, `BuyPrice` = 507039, `SellPrice` = 101407 WHERE entry=21334;

/*  Doomcaller's Mantle  */
UPDATE `item_template` SET `armor` = 89, `BuyPrice` = 234344, `SellPrice` = 46868 WHERE entry=21335;

/*  Doomcaller's Trousers  */
UPDATE `item_template` SET `armor` = 107, `BuyPrice` = 363077, `SellPrice` = 72615 WHERE entry=21336;

/*  Doomcaller's Circlet  */
UPDATE `item_template` SET `armor` = 100, `BuyPrice` = 273306, `SellPrice` = 54661 WHERE entry=21337;

/*  Doomcaller's Footwraps  */
UPDATE `item_template` SET `armor` = 82, `BuyPrice` = 236978, `SellPrice` = 47395 WHERE entry=21338;

/*  Enigma Robes  */
UPDATE `item_template` SET `armor` = 133, `BuyPrice` = 524250, `SellPrice` = 104850 WHERE entry=21343;

/*  Enigma Boots  */
UPDATE `item_template` SET `armor` = 82, `BuyPrice` = 242269, `SellPrice` = 48453 WHERE entry=21344;

/*  Enigma Shoulderpads  */
UPDATE `item_template` SET `armor` = 89, `BuyPrice` = 249475, `SellPrice` = 49895 WHERE entry=21345;

/*  Enigma Leggings  */
UPDATE `item_template` SET `armor` = 107, `BuyPrice` = 386433, `SellPrice` = 77286 WHERE entry=21346;

/*  Enigma Circlet  */
UPDATE `item_template` SET `armor` = 100, `BuyPrice` = 290850, `SellPrice` = 58170 WHERE entry=21347;

/*  Tiara of the Oracle  */
UPDATE `item_template` SET `armor` = 150, `BuyPrice` = 264132, `SellPrice` = 52826 WHERE entry=21348;

/*  Footwraps of the Oracle  */
UPDATE `item_template` SET `armor` = 112, `BuyPrice` = 229029, `SellPrice` = 45805 WHERE entry=21349;

/*  Mantle of the Oracle  */
UPDATE `item_template` SET `armor` = 119, `BuyPrice` = 229915, `SellPrice` = 45983 WHERE entry=21350;

/*  Vestments of the Oracle  */
UPDATE `item_template` SET `armor` = 183, `BuyPrice` = 501267, `SellPrice` = 100253 WHERE entry=21351;

/*  Trousers of the Oracle  */
UPDATE `item_template` SET `armor` = 157, `BuyPrice` = 357571, `SellPrice` = 71514 WHERE entry=21352;

/*  Genesis Helm  */
UPDATE `item_template` SET `armor` = 192, `BuyPrice` = 336505, `SellPrice` = 67301 WHERE entry=21353;

/*  Genesis Shoulderpads  */
UPDATE `item_template` SET `armor` = 172, `BuyPrice` = 291793, `SellPrice` = 58358 WHERE entry=21354;

/*  Genesis Boots  */
UPDATE `item_template` SET `armor` = 158, `BuyPrice` = 292900, `SellPrice` = 58580 WHERE entry=21355;

/*  Genesis Trousers  */
UPDATE `item_template` SET `armor` = 207, `BuyPrice` = 453755, `SellPrice` = 90751 WHERE entry=21356;

/*  Genesis Vest  */
UPDATE `item_template` SET `armor` = 253, `BuyPrice` = 640883, `SellPrice` = 128176 WHERE entry=21357;

/*  Deathdealer's Boots  */
UPDATE `item_template` SET `armor` = 158, `BuyPrice` = 297299, `SellPrice` = 59459 WHERE entry=21359;

/*  Deathdealer's Helm  */
UPDATE `item_template` SET `armor` = 192, `BuyPrice` = 345409, `SellPrice` = 69081 WHERE entry=21360;

/*  Deathdealer's Spaulders  */
UPDATE `item_template` SET `armor` = 172, `BuyPrice` = 307415, `SellPrice` = 61483 WHERE entry=21361;

/*  Deathdealer's Leggings  */
UPDATE `item_template` SET `armor` = 207, `BuyPrice` = 476204, `SellPrice` = 95240 WHERE entry=21362;

/*  Deathdealer's Vest  */
UPDATE `item_template` SET `armor` = 253, `BuyPrice` = 674813, `SellPrice` = 134962 WHERE entry=21364;

/*  Striker's Footguards  */
UPDATE `item_template` SET `armor` = 340, `BuyPrice` = 375840, `SellPrice` = 75168, `stat_value1` = 31, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=21365;

/*  Striker's Diadem  */
UPDATE `item_template` SET `armor` = 416, `BuyPrice` = 434695, `SellPrice` = 86939, `stat_value1` = 29, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=21366;

/*  Striker's Pauldrons  */
UPDATE `item_template` SET `armor` = 384, `BuyPrice` = 438131, `SellPrice` = 87626, `stat_value1` = 26, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=21367;

/*  Striker's Leggings  */
UPDATE `item_template` SET `armor` = 448, `BuyPrice` = 528153, `SellPrice` = 105630, `stat_value1` = 36, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=21368;

/*  Striker's Hauberk  */
UPDATE `item_template` SET `armor` = 553, `BuyPrice` = 748937, `SellPrice` = 149787, `stat_value1` = 39, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=21370;

/*  Stormcaller's Diadem  */
UPDATE `item_template` SET `armor` = 416, `BuyPrice` = 402226, `SellPrice` = 80445 WHERE entry=21372;

/*  Stormcaller's Footguards  */
UPDATE `item_template` SET `armor` = 340, `BuyPrice` = 350337, `SellPrice` = 70067 WHERE entry=21373;

/*  Stormcaller's Hauberk  */
UPDATE `item_template` SET `armor` = 553, `BuyPrice` = 760402, `SellPrice` = 152080 WHERE entry=21374;

/*  Stormcaller's Leggings  */
UPDATE `item_template` SET `armor` = 448, `BuyPrice` = 542399, `SellPrice` = 108479 WHERE entry=21375;

/*  Stormcaller's Pauldrons  */
UPDATE `item_template` SET `armor` = 371, `BuyPrice` = 354305, `SellPrice` = 70861 WHERE entry=21376;

/*  Avenger's Crown  */
UPDATE `item_template` SET `armor` = 739, `BuyPrice` = 290767, `SellPrice` = 58153 WHERE entry=21387;

/*  Avenger's Greaves  */
UPDATE `item_template` SET `armor` = 604, `BuyPrice` = 228095, `SellPrice` = 45619 WHERE entry=21388;

/*  Avenger's Breastplate  */
UPDATE `item_template` SET `armor` = 985, `BuyPrice` = 497315, `SellPrice` = 99463 WHERE entry=21389;

/*  Avenger's Legguards  */
UPDATE `item_template` SET `armor` = 796, `BuyPrice` = 354763, `SellPrice` = 70952 WHERE entry=21390;

/*  Avenger's Pauldrons  */
UPDATE `item_template` SET `armor` = 659, `BuyPrice` = 230729, `SellPrice` = 46145 WHERE entry=21391;

/*  Drape of Unyielding Strength  */
UPDATE `item_template` SET `armor` = 52 WHERE entry=21394;

/*  Cape of Eternal Justice  */
UPDATE `item_template` SET `armor` = 52 WHERE entry=21397;

/*  Cloak of the Gathering Storm  */
UPDATE `item_template` SET `armor` = 52 WHERE entry=21400;

/*  Scythe of the Unseen Path  */
UPDATE `item_template` SET `stat_value1` = 16, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=21401;

/*  Signet of the Unseen Path  */
UPDATE `item_template` SET `stat_value1` = 19, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=21402;

/*  Cloak of the Unseen Path  */
UPDATE `item_template` SET `armor` = 52, `stat_value1` = 17, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=21403;

/*  Cloak of Veiled Shadows  */
UPDATE `item_template` SET `armor` = 52 WHERE entry=21406;

/*  Mace of Unending Life  */
UPDATE `item_template` SET `dmg_min1` = 67.0, `dmg_max1` = 149.0, `MaxDurability` = 105, `stat_type1` = 4, `stat_value1` = 9, `stat_value2` = 7, `stat_value3` = 11, `stat_value4` = 10, `stat_type5` = 0, `stat_value5` = 0, `spellid_1` = 18056, `spelltrigger_1` = 1, `spellid_2` = 26153, `spelltrigger_2` = 1 WHERE entry=21407;

/*  Cloak of Unending Life  */
UPDATE `item_template` SET `armor` = 52 WHERE entry=21409;

/*  Shroud of Infinite Wisdom  */
UPDATE `item_template` SET `armor` = 52 WHERE entry=21412;

/*  Drape of Vaulted Secrets  */
UPDATE `item_template` SET `armor` = 52 WHERE entry=21415;

/*  Shroud of Unspoken Names  */
UPDATE `item_template` SET `armor` = 52 WHERE entry=21418;

/*  Staff of the Ruins  */
UPDATE `item_template` SET `BuyPrice` = 739573, `SellPrice` = 147914, `dmg_min1` = 151.6, `dmg_max1` = 246.6 WHERE entry=21452;

/*  Mantle of the Horusath  */
UPDATE `item_template` SET `armor` = 610, `BuyPrice` = 178158, `SellPrice` = 35631 WHERE entry=21453;

/*  Runic Stone Shoulders  */
UPDATE `item_template` SET `armor` = 344, `BuyPrice` = 269394, `SellPrice` = 53878 WHERE entry=21454;

/*  Southwind Helm  */
UPDATE `item_template` SET `BuyPrice` = 185491, `SellPrice` = 37098, `DisenchantID` = 49 WHERE entry=21455;

/*  Sandstorm Cloak  */
UPDATE `item_template` SET `armor` = 135, `BuyPrice` = 180124, `SellPrice` = 36024 WHERE entry=21456;

/*  Bracers of Brutality  */
UPDATE `item_template` SET `armor` = 356, `BuyPrice` = 120523, `SellPrice` = 24104 WHERE entry=21457;

/*  Gauntlets of New Life  */
UPDATE `item_template` SET `armor` = 134, `BuyPrice` = 155135, `SellPrice` = 31027 WHERE entry=21458;

/*  Crossbow of Imminent Doom  */
UPDATE `item_template` SET `BuyPrice` = 467059, `SellPrice` = 93411, `dmg_min1` = 103.0, `dmg_max1` = 155.0 WHERE entry=21459;

/*  Helm of Domination  */
UPDATE `item_template` SET `armor` = 661, `BuyPrice` = 187484, `SellPrice` = 37496 WHERE entry=21460;

/*  Leggings of the Black Blizzard  */
UPDATE `item_template` SET `armor` = 97, `BuyPrice` = 227016, `SellPrice` = 45403 WHERE entry=21461;

/*  Gloves of Dark Wisdom  */
UPDATE `item_template` SET `armor` = 69, `BuyPrice` = 113936, `SellPrice` = 22787 WHERE entry=21462;

/*  Ossirian's Binding  */
UPDATE `item_template` SET `armor` = 258, `BuyPrice` = 171566, `SellPrice` = 34313 WHERE entry=21463;

/*  Shackles of the Unscarred  */
UPDATE `item_template` SET `armor` = 48, `BuyPrice` = 114818, `SellPrice` = 22963 WHERE entry=21464;

/*  Stinger of Ayamiss  */
UPDATE `item_template` SET `BuyPrice` = 499676, `SellPrice` = 99935, `dmg_min1` = 63.4, `dmg_max1` = 136.4 WHERE entry=21466;

/*  Thick Silithid Chestguard  */
UPDATE `item_template` SET `armor` = 258, `BuyPrice` = 250790, `SellPrice` = 50158 WHERE entry=21467;

/*  Mantle of Maz'Nadir  */
UPDATE `item_template` SET `BuyPrice` = 144582, `SellPrice` = 28916, `DisenchantID` = 49 WHERE entry=21468;

/*  Gauntlets of Southwind  */
UPDATE `item_template` SET `BuyPrice` = 120928, `SellPrice` = 24185, `DisenchantID` = 49 WHERE entry=21469;

/*  Cloak of the Savior  */
UPDATE `item_template` SET `BuyPrice` = 145660, `SellPrice` = 29132, `DisenchantID` = 49 WHERE entry=21470;

/*  Dustwind Turban  */
UPDATE `item_template` SET `armor` = 86, `BuyPrice` = 153313, `SellPrice` = 30662 WHERE entry=21472;

/*  Eye of Moam  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21473;

/*  Chitinous Shoulderguards  */
UPDATE `item_template` SET `BuyPrice` = 189683, `SellPrice` = 37936, `DisenchantID` = 49 WHERE entry=21474;

/*  Legplates of the Destroyer  */
UPDATE `item_template` SET `BuyPrice` = 203057, `SellPrice` = 40611, `DisenchantID` = 49 WHERE entry=21475;

/*  Obsidian Scaled Leggings  */
UPDATE `item_template` SET `BuyPrice` = 305680, `SellPrice` = 61136, `DisenchantID` = 49 WHERE entry=21476;

/*  Ring of Fury  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21477;

/*  Bow of Taut Sinew  */
UPDATE `item_template` SET `BuyPrice` = 382854, `SellPrice` = 76570, `dmg_min1` = 59.0, `dmg_max1` = 111.0 WHERE entry=21478;

/*  Gauntlets of the Immovable  */
UPDATE `item_template` SET `armor` = 482, `BuyPrice` = 102457, `SellPrice` = 20491 WHERE entry=21479;

/*  Scaled Silithid Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 147616, `SellPrice` = 29523, `DisenchantID` = 49 WHERE entry=21480;

/*  Boots of the Desert Protector  */
UPDATE `item_template` SET `BuyPrice` = 134053, `SellPrice` = 26810, `DisenchantID` = 49 WHERE entry=21481;

/*  Boots of the Fiery Sands  */
UPDATE `item_template` SET `BuyPrice` = 202757, `SellPrice` = 40551, `DisenchantID` = 49 WHERE entry=21482;

/*  Ring of the Desert Winds  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21483;

/*  Helm of Regrowth  */
UPDATE `item_template` SET `BuyPrice` = 169501, `SellPrice` = 33900, `DisenchantID` = 49 WHERE entry=21484;

/*  Buru's Skull Fragment  */
UPDATE `item_template` SET `armor` = 2575, `BuyPrice` = 303373, `SellPrice` = 60674, `block` = 47 WHERE entry=21485;

/*  Gloves of the Swarm  */
UPDATE `item_template` SET `armor` = 482, `BuyPrice` = 95166, `SellPrice` = 19033 WHERE entry=21486;

/*  Slimy Scaled Gauntlets  */
UPDATE `item_template` SET `armor` = 271, `BuyPrice` = 143293, `SellPrice` = 28658 WHERE entry=21487;

/*  Fetish of Chitinous Spikes  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21488;

/*  Quicksand Waders  */
UPDATE `item_template` SET `BuyPrice` = 138189, `SellPrice` = 27637, `DisenchantID` = 49 WHERE entry=21489;

/*  Slime Kickers  */
UPDATE `item_template` SET `BuyPrice` = 142438, `SellPrice` = 28487, `DisenchantID` = 49 WHERE entry=21490;

/*  Scaled Bracers of the Gorger  */
UPDATE `item_template` SET `BuyPrice` = 119132, `SellPrice` = 23826, `DisenchantID` = 49 WHERE entry=21491;

/*  Manslayer of the Qiraji  */
UPDATE `item_template` SET `BuyPrice` = 566435, `SellPrice` = 113287 WHERE entry=21492;

/*  Boots of the Vanguard  */
UPDATE `item_template` SET `armor` = 138, `BuyPrice` = 170547, `SellPrice` = 34109 WHERE entry=21493;

/*  Southwind's Grasp  */
UPDATE `item_template` SET `BuyPrice` = 109226, `SellPrice` = 21845, `DisenchantID` = 49 WHERE entry=21494;

/*  Legplates of the Qiraji Command  */
UPDATE `item_template` SET `BuyPrice` = 175375, `SellPrice` = 35075, `DisenchantID` = 49, `spelltrigger_2` = 0 WHERE entry=21495;

/*  Bracers of Qiraji Command  */
UPDATE `item_template` SET `BuyPrice` = 88002, `SellPrice` = 17600, `DisenchantID` = 49 WHERE entry=21496;

/*  Boots of the Qiraji General  */
UPDATE `item_template` SET `BuyPrice` = 199596, `SellPrice` = 39919, `DisenchantID` = 49 WHERE entry=21497;

/*  Qiraji Sacrificial Dagger  */
UPDATE `item_template` SET `BuyPrice` = 462969, `SellPrice` = 92593 WHERE entry=21498;

/*  Vestments of the Shifting Sands  */
UPDATE `item_template` SET `armor` = 102, `BuyPrice` = 185827, `SellPrice` = 37165 WHERE entry=21499;

/*  Belt of the Inquisition  */
UPDATE `item_template` SET `BuyPrice` = 89252, `SellPrice` = 17850, `DisenchantID` = 49 WHERE entry=21500;

/*  Toughened Silithid Hide Gloves  */
UPDATE `item_template` SET `BuyPrice` = 101314, `SellPrice` = 20262, `DisenchantID` = 49 WHERE entry=21501;

/*  Sand Reaver Wristguards  */
UPDATE `item_template` SET `BuyPrice` = 122049, `SellPrice` = 24409, `DisenchantID` = 49 WHERE entry=21502;

/*  Belt of the Sand Reaver  */
UPDATE `item_template` SET `BuyPrice` = 81672, `SellPrice` = 16334, `DisenchantID` = 49 WHERE entry=21503;

/*  Dagger of Spell Penetration - Fire 150 Resist (TEST)  */
UPDATE `item_template` SET `spellid_1` = 26203, `spelltrigger_1` = 1 WHERE entry=21516;

/*  Gnomish Turban of Psychic Might  */
UPDATE `item_template` SET `armor` = 93, `BuyPrice` = 214679, `SellPrice` = 42935, `spellid_2` = 26208 WHERE entry=21517;

/*  Dagger of Spell Penetration - Frost 150 Resist (TEST)  */
UPDATE `item_template` SET `spellid_1` = 26204, `spelltrigger_1` = 1 WHERE entry=21518;

/*  Ravencrest's Legacy  */
UPDATE `item_template` SET `BuyPrice` = 759340, `SellPrice` = 151868 WHERE entry=21520;

/*  Runesword of the Red  */
UPDATE `item_template` SET `BuyPrice` = 689558, `SellPrice` = 137911, `dmg_min1` = 52.8, `dmg_max1` = 128.8 WHERE entry=21521;

/*  Shadowsong's Sorrow  */
UPDATE `item_template` SET `BuyPrice` = 711347, `SellPrice` = 142269 WHERE entry=21522;

/*  Fang of Korialstrasz  */
UPDATE `item_template` SET `BuyPrice` = 714025, `SellPrice` = 142805, `dmg_min1` = 43.2, `dmg_max1` = 106.2 WHERE entry=21523;

/*  Red Winter Hat  */
UPDATE `item_template` SET `armor` = 0, `MaxDurability` = 0 WHERE entry=21524;

/*  Green Winter Hat  */
UPDATE `item_template` SET `armor` = 0, `MaxDurability` = 0 WHERE entry=21525;

/*  Darkwater Robes  */
UPDATE `item_template` SET `armor` = 117, `BuyPrice` = 304360, `SellPrice` = 60872, `spellid_1` = 17899 WHERE entry=21527;

/*  Onyx Embedded Leggings  */
UPDATE `item_template` SET `armor` = 427, `BuyPrice` = 461556, `SellPrice` = 92311 WHERE entry=21530;

/*  Drudge Boots  */
UPDATE `item_template` SET `armor` = 156, `BuyPrice` = 290581, `SellPrice` = 58116 WHERE entry=21532;

/*  Festive Pink Dress  */
UPDATE `item_template` SET `BuyPrice` = 7, `SellPrice` = 1 WHERE entry=21538;

/*  Festive Purple Dress  */
UPDATE `item_template` SET `BuyPrice` = 7, `SellPrice` = 1 WHERE entry=21539;

/*  Festive Black Pant Suit  */
UPDATE `item_template` SET `BuyPrice` = 7, `SellPrice` = 1 WHERE entry=21541;

/*  Festive Teal Pant Suit  */
UPDATE `item_template` SET `BuyPrice` = 7, `SellPrice` = 1 WHERE entry=21543;

/*  Festive Blue Pant Suit  */
UPDATE `item_template` SET `BuyPrice` = 7, `SellPrice` = 1 WHERE entry=21544;

/*  Don Rodrigo's Band  */
UPDATE `item_template` SET `BuyPrice` = 755555, `SellPrice` = 188888, `spelltrigger_3` = 0 WHERE entry=21563;

/*  Rune of Perfection  */
UPDATE `item_template` SET `BuyPrice` = 40000, `SellPrice` = 10000, `spelltrigger_2` = 0 WHERE entry=21565;

/*  Rune of Perfection  */
UPDATE `item_template` SET `BuyPrice` = 20000, `SellPrice` = 5000, `spelltrigger_2` = 0 WHERE entry=21566;

/*  Rune of Duty  */
UPDATE `item_template` SET `BuyPrice` = 40000, `SellPrice` = 10000, `spelltrigger_2` = 0 WHERE entry=21567;

/*  Rune of Duty  */
UPDATE `item_template` SET `BuyPrice` = 20000, `SellPrice` = 5000, `spelltrigger_2` = 0 WHERE entry=21568;

/*  Gauntlets of Annihilation  */
UPDATE `item_template` SET `armor` = 615, `BuyPrice` = 254455, `SellPrice` = 50891 WHERE entry=21581;

/*  Grasp of the Old God  */
UPDATE `item_template` SET `armor` = 75, `BuyPrice` = 255391, `SellPrice` = 51078 WHERE entry=21582;

/*  Cloak of Clarity  */
UPDATE `item_template` SET `armor` = 66, `BuyPrice` = 384530, `SellPrice` = 76906 WHERE entry=21583;

/*  Bracers of Eternal Reckoning  */
UPDATE `item_template` SET `armor` = 242, `BuyPrice` = 385973, `SellPrice` = 77194, `MaxDurability` = 50 WHERE entry=21584;

/*  Dark Storm Gauntlets  */
UPDATE `item_template` SET `armor` = 83, `BuyPrice` = 258277, `SellPrice` = 51655 WHERE entry=21585;

/*  Belt of Never-ending Agony  */
UPDATE `item_template` SET `armor` = 142, `BuyPrice` = 332629, `SellPrice` = 66525 WHERE entry=21586;

/*  Wristguards of Elemental Fury  */
UPDATE `item_template` SET `DisenchantID` = 0 WHERE entry=21588;

/*  Bracers of the Fallen Son  */
UPDATE `item_template` SET `armor` = 111, `BuyPrice` = 309652, `SellPrice` = 61930, `MaxDurability` = 40, `stat_type1` = 5, `stat_value1` = 15, `stat_type2` = 7, `stat_value2` = 10, `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 14054, `spelltrigger_1` = 1, `spellid_2` = 23727, `spelltrigger_2` = 1, `StatsCount` = 3 WHERE entry=21594;

/*  Ring of the Godslayer  */
UPDATE `item_template` SET `stat_value1` = 27, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=21596;

/*  Royal Qiraji Belt  */
UPDATE `item_template` SET `armor` = 512, `BuyPrice` = 178767, `SellPrice` = 35753 WHERE entry=21598;

/*  Vek'lor's Gloves of Devastation  */
UPDATE `item_template` SET `armor` = 320, `BuyPrice` = 269176, `SellPrice` = 53835 WHERE entry=21599;

/*  Boots of Epiphany  */
UPDATE `item_template` SET `armor` = 84, `BuyPrice` = 270202, `SellPrice` = 54040 WHERE entry=21600;

/*  Qiraji Execution Bracers  */
UPDATE `item_template` SET `armor` = 103, `BuyPrice` = 232975, `SellPrice` = 46595 WHERE entry=21602;

/*  Wand of Qiraji Nobility  */
UPDATE `item_template` SET `BuyPrice` = 605972, `SellPrice` = 121194 WHERE entry=21603;

/*  Bracelets of Royal Redemption  */
UPDATE `item_template` SET `armor` = 54, `BuyPrice` = 187747, `SellPrice` = 37549 WHERE entry=21604;

/*  Gloves of the Hidden Temple  */
UPDATE `item_template` SET `armor` = 248, `BuyPrice` = 235515, `SellPrice` = 47103 WHERE entry=21605;

/*  Belt of the Fallen Emperor  */
UPDATE `item_template` SET `armor` = 512, `BuyPrice` = 189096, `SellPrice` = 37819 WHERE entry=21606;

/*  Grasp of the Fallen Emperor  */
UPDATE `item_template` SET `armor` = 288, `BuyPrice` = 284669, `SellPrice` = 56933 WHERE entry=21607;

/*  Regenerating Belt of Vek'nilash  */
UPDATE `item_template` SET `armor` = 133, `BuyPrice` = 238910, `SellPrice` = 47782 WHERE entry=21609;

/*  Wormscale Blocker  */
UPDATE `item_template` SET `armor` = 3035, `BuyPrice` = 613799, `SellPrice` = 122759, `block` = 57 WHERE entry=21610;

/*  Burrower Bracers  */
UPDATE `item_template` SET `armor` = 54, `BuyPrice` = 192495, `SellPrice` = 38499 WHERE entry=21611;

/*  Wormscale Stompers  */
UPDATE `item_template` SET `armor` = 352, `BuyPrice` = 436544, `SellPrice` = 87308, `MaxDurability` = 70, `stat_value2` = 12, `stat_value3` = 12, `stat_type4` = 0, `stat_value4` = 0, `spellid_1` = 9344, `spelltrigger_1` = 1, `spellid_2` = 21620, `spelltrigger_2` = 1, `StatsCount` = 4 WHERE entry=21612;

/*  Wormhide Boots  */
UPDATE `item_template` SET `armor` = 163, `BuyPrice` = 363459, `SellPrice` = 72691, `MaxDurability` = 60, `stat_type2` = 4, `stat_value2` = 18, `stat_type3` = 7, `stat_value3` = 13, `StatsCount` = 3 WHERE entry=21613;

/*  Wormhide Protector  */
UPDATE `item_template` SET `armor` = 192, `BuyPrice` = 330061, `SellPrice` = 66012, `MaxDurability` = 70, `nature_res` = 30, `stat_value1` = 26, `stat_type3` = 4, `stat_value3` = 18, `StatsCount` = 3 WHERE entry=21614;

/*  Don Rigoberto's Lost Hat  */
UPDATE `item_template` SET `armor` = 100, `BuyPrice` = 265074, `SellPrice` = 53014 WHERE entry=21615;

/*  Huhuran's Stinger  */
UPDATE `item_template` SET `BuyPrice` = 574608, `SellPrice` = 114921, `dmg_min1` = 87.0, `dmg_max1` = 163.0 WHERE entry=21616;

/*  Wasphide Gauntlets  */
UPDATE `item_template` SET `armor` = 143, `BuyPrice` = 192274, `SellPrice` = 38454 WHERE entry=21617;

/*  Hive Defiler Wristguards  */
UPDATE `item_template` SET `armor` = 384, `BuyPrice` = 158639, `SellPrice` = 31727 WHERE entry=21618;

/*  Gloves of the Messiah  */
UPDATE `item_template` SET `armor` = 74, `BuyPrice` = 159230, `SellPrice` = 31846 WHERE entry=21619;

/*  Cloak of the Golden Hive  */
UPDATE `item_template` SET `armor` = 59, `BuyPrice` = 240593, `SellPrice` = 48118 WHERE entry=21621;

/*  Sharpened Silithid Femur  */
UPDATE `item_template` SET `BuyPrice` = 804930, `SellPrice` = 160986, `dmg_min1` = 53.6, `dmg_max1` = 136.6 WHERE entry=21622;

/*  Gauntlets of the Righteous Champion  */
UPDATE `item_template` SET `armor` = 549, `BuyPrice` = 161576, `SellPrice` = 32315 WHERE entry=21623;

/*  Gauntlets of Kalimdor  */
UPDATE `item_template` SET `armor` = 309, `BuyPrice` = 243226, `SellPrice` = 48645 WHERE entry=21624;

/*  Slime-coated Leggings  */
UPDATE `item_template` SET `armor` = 432, `BuyPrice` = 489997, `SellPrice` = 97999 WHERE entry=21626;

/*  Cloak of Untold Secrets  */
UPDATE `item_template` SET `armor` = 59, `BuyPrice` = 234152, `SellPrice` = 46830 WHERE entry=21627;

/*  Barb of the Sand Reaver  */
UPDATE `item_template` SET `BuyPrice` = 933643, `SellPrice` = 186728, `stat_value1` = 41, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=21635;

/*  Pauldrons of the Unrelenting  */
UPDATE `item_template` SET `armor` = 650, `BuyPrice` = 227426, `SellPrice` = 45485 WHERE entry=21639;

/*  Hive Tunneler's Boots  */
UPDATE `item_template` SET `armor` = 216, `BuyPrice` = 290581, `SellPrice` = 58116 WHERE entry=21645;

/*  Recomposed Boots  */
UPDATE `item_template` SET `armor` = 80, `BuyPrice` = 223784, `SellPrice` = 44756 WHERE entry=21648;

/*  Ancient Qiraji Ripper  */
UPDATE `item_template` SET `BuyPrice` = 732853, `SellPrice` = 146570 WHERE entry=21650;

/*  Scaled Sand Reaver Leggings  */
UPDATE `item_template` SET `armor` = 427, `BuyPrice` = 441399, `SellPrice` = 88279 WHERE entry=21651;

/*  Silithid Carapace Chestguard  */
UPDATE `item_template` SET `armor` = 867, `BuyPrice` = 295391, `SellPrice` = 59078 WHERE entry=21652;

/*  Robes of the Guardian Saint  */
UPDATE `item_template` SET `armor` = 117, `BuyPrice` = 307673, `SellPrice` = 61534 WHERE entry=21663;

/*  Mantle of Wicked Revenge  */
UPDATE `item_template` SET `armor` = 170, `BuyPrice` = 290524, `SellPrice` = 58104 WHERE entry=21665;

/*  Legplates of Blazing Light  */
UPDATE `item_template` SET `armor` = 749, `BuyPrice` = 275968, `SellPrice` = 55193 WHERE entry=21667;

/*  Scaled Leggings of Qiraji Fury  */
UPDATE `item_template` SET `armor` = 422, `BuyPrice` = 415559, `SellPrice` = 83111 WHERE entry=21668;

/*  Creeping Vine Helm  */
UPDATE `item_template` SET `armor` = 183, `BuyPrice` = 260701, `SellPrice` = 52140 WHERE entry=21669;

/*  Robes of the Battleguard  */
UPDATE `item_template` SET `armor` = 116, `BuyPrice` = 280224, `SellPrice` = 56044 WHERE entry=21671;

/*  Gloves of Enforcement  */
UPDATE `item_template` SET `armor` = 140, `BuyPrice` = 175791, `SellPrice` = 35158 WHERE entry=21672;

/*  Silithid Claw  */
UPDATE `item_template` SET `BuyPrice` = 705846, `SellPrice` = 141169 WHERE entry=21673;

/*  Gauntlets of Steadfast Determination  */
UPDATE `item_template` SET `armor` = 535, `BuyPrice` = 141704, `SellPrice` = 28340 WHERE entry=21674;

/*  Thick Qirajihide Belt  */
UPDATE `item_template` SET `armor` = 186, `BuyPrice` = 177800, `SellPrice` = 35560 WHERE entry=21675;

/*  Leggings of the Festering Swarm  */
UPDATE `item_template` SET `armor` = 101, `BuyPrice` = 285523, `SellPrice` = 57104, `spellid_1` = 26405 WHERE entry=21676;

/*  Kalimdor's Revenge  */
UPDATE `item_template` SET `BuyPrice` = 1151594, `SellPrice` = 230318 WHERE entry=21679;

/*  Vest of Swift Execution  */
UPDATE `item_template` SET `armor` = 229, `BuyPrice` = 399352, `SellPrice` = 79870 WHERE entry=21680;

/*  Bile-Covered Gauntlets  */
UPDATE `item_template` SET `armor` = 203, `BuyPrice` = 201152, `SellPrice` = 40230 WHERE entry=21682;

/*  Mantle of the Desert Crusade  */
UPDATE `item_template` SET `armor` = 642, `BuyPrice` = 225500, `SellPrice` = 45100 WHERE entry=21683;

/*  Mantle of the Desert's Fury  */
UPDATE `item_template` SET `armor` = 362, `BuyPrice` = 340931, `SellPrice` = 68186 WHERE entry=21684;

/*  Mantle of Phrenic Power  */
UPDATE `item_template` SET `armor` = 87, `BuyPrice` = 227888, `SellPrice` = 45577, `spellid_1` = 17871 WHERE entry=21686;

/*  Boots of the Fallen Hero  */
UPDATE `item_template` SET `armor` = 581, `BuyPrice` = 197844, `SellPrice` = 39568 WHERE entry=21688;

/*  Gloves of Ebru  */
UPDATE `item_template` SET `armor` = 139, `BuyPrice` = 165507, `SellPrice` = 33101 WHERE entry=21689;

/*  Ooze-ridden Gauntlets  */
UPDATE `item_template` SET `armor` = 529, `BuyPrice` = 133412, `SellPrice` = 26682 WHERE entry=21691;

/*  Triad Girdle  */
UPDATE `item_template` SET `armor` = 476, `BuyPrice` = 133922, `SellPrice` = 26784 WHERE entry=21692;

/*  Guise of the Devourer  */
UPDATE `item_template` SET `armor` = 250, `BuyPrice` = 252062, `SellPrice` = 50412 WHERE entry=21693;

/*  Ternary Mantle  */
UPDATE `item_template` SET `armor` = 86, `BuyPrice` = 202414, `SellPrice` = 40482 WHERE entry=21694;

/*  Robes of the Triumvirate  */
UPDATE `item_template` SET `armor` = 114, `BuyPrice` = 271899, `SellPrice` = 54379 WHERE entry=21696;

/*  Cape of the Trinity  */
UPDATE `item_template` SET `armor` = 57, `BuyPrice` = 204689, `SellPrice` = 40937 WHERE entry=21697;

/*  Leggings of Immersion  */
UPDATE `item_template` SET `armor` = 190, `BuyPrice` = 310589, `SellPrice` = 62117 WHERE entry=21698;

/*  Barrage Shoulders  */
UPDATE `item_template` SET `armor` = 348, `BuyPrice` = 289280, `SellPrice` = 57856 WHERE entry=21699;

/*  Cloak of Concentrated Hatred  */
UPDATE `item_template` SET `armor` = 56, `BuyPrice` = 193388, `SellPrice` = 38677 WHERE entry=21701;

/*  Hammer of Ji'zhi  */
UPDATE `item_template` SET `BuyPrice` = 811491, `SellPrice` = 162298 WHERE entry=21703;

/*  Boots of the Redeemed Prophecy  */
UPDATE `item_template` SET `armor` = 567, `BuyPrice` = 195452, `SellPrice` = 39090 WHERE entry=21704;

/*  Boots of the Fallen Prophet  */
UPDATE `item_template` SET `armor` = 319, `BuyPrice` = 295526, `SellPrice` = 59105 WHERE entry=21705;

/*  Boots of the Unwavering Will  */
UPDATE `item_template` SET `armor` = 647, `BuyPrice` = 196821, `SellPrice` = 39364 WHERE entry=21706;

/*  Beetle Scaled Wristguards  */
UPDATE `item_template` SET `armor` = 95, `BuyPrice` = 149526, `SellPrice` = 29905 WHERE entry=21708;

/*  Cloak of the Fallen God  */
UPDATE `item_template` SET `armor` = 66, `BuyPrice` = 375872, `SellPrice` = 75174 WHERE entry=21710;

/*  Sand Polished Hammer  */
UPDATE `item_template` SET `BuyPrice` = 600711, `SellPrice` = 120142 WHERE entry=21715;

/*  Silithid Husked Launcher  */
UPDATE `item_template` SET `BuyPrice` = 262613, `SellPrice` = 52522, `dmg_min1` = 68.0, `dmg_max1` = 128.0 WHERE entry=21800;

/*  Antenna of Invigoration  */
UPDATE `item_template` SET `BuyPrice` = 263632, `SellPrice` = 52726 WHERE entry=21801;

/*  The Lost Kris of Zedd  */
UPDATE `item_template` SET `BuyPrice` = 352869, `SellPrice` = 70573, `dmg_min1` = 41.75, `dmg_max1` = 82.75 WHERE entry=21802;

/*  Helm of the Holy Avenger  */
UPDATE `item_template` SET `BuyPrice` = 106268, `SellPrice` = 21253 WHERE entry=21803;

/*  Coif of Elemental Fury  */
UPDATE `item_template` SET `BuyPrice` = 159998, `SellPrice` = 31999 WHERE entry=21804;

/*  Polished Obsidian Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 107073, `SellPrice` = 21414 WHERE entry=21805;

/*  Gavel of Qiraji Authority  */
UPDATE `item_template` SET `BuyPrice` = 518430, `SellPrice` = 103686, `DisenchantID` = 49 WHERE entry=21806;

/*  Fury of the Forgotten Swarm  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=21809;

/*  Treads of the Wandering Nomad  */
UPDATE `item_template` SET `BuyPrice` = 126299, `SellPrice` = 25259, `DisenchantID` = 49 WHERE entry=21810;

/*  Breastplate of Annihilation  */
UPDATE `item_template` SET `armor` = 824, `BuyPrice` = 257851, `SellPrice` = 51570 WHERE entry=21814;

/*  Anubisath Warhammer  */
UPDATE `item_template` SET `BuyPrice` = 590879, `SellPrice` = 118175, `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 15760 WHERE entry=21837;

/*  Garb of Royal Ascension  */
UPDATE `item_template` SET `armor` = 109, `BuyPrice` = 237168, `SellPrice` = 47433 WHERE entry=21838;

/*  Scepter of the False Prophet  */
UPDATE `item_template` SET `BuyPrice` = 1121998, `SellPrice` = 224399, `dmg_min1` = 38.36, `dmg_max1` = 111.36 WHERE entry=21839;

/*  Neretzek, The Blood Drinker  */
UPDATE `item_template` SET `BuyPrice` = 735904, `SellPrice` = 147180 WHERE entry=21856;

/*  Gloves of the Immortal  */
UPDATE `item_template` SET `armor` = 188, `BuyPrice` = 114375, `SellPrice` = 22875 WHERE entry=21888;

/*  Gloves of the Redeemed Prophecy  */
UPDATE `item_template` SET `armor` = 529, `BuyPrice` = 139534, `SellPrice` = 27906 WHERE entry=21889;

/*  Gloves of the Fallen Prophet  */
UPDATE `item_template` SET `armor` = 298, `BuyPrice` = 210067, `SellPrice` = 42013, `DisenchantID` = 0 WHERE entry=21890;

/*  Belt of Heroism  */
UPDATE `item_template` SET `BuyPrice` = 62380, `SellPrice` = 12476, `DisenchantID` = 49 WHERE entry=21994;

/*  Boots of Heroism  */
UPDATE `item_template` SET `armor` = 470, `BuyPrice` = 98121, `SellPrice` = 19624 WHERE entry=21995;

/*  Bracers of Heroism  */
UPDATE `item_template` SET `BuyPrice` = 62843, `SellPrice` = 12568, `DisenchantID` = 49 WHERE entry=21996;

/*  Breastplate of Heroism  */
UPDATE `item_template` SET `armor` = 684, `BuyPrice` = 131796, `SellPrice` = 26359 WHERE entry=21997;

/*  Gauntlets of Heroism  */
UPDATE `item_template` SET `armor` = 393, `BuyPrice` = 50372, `SellPrice` = 10074, `ItemLevel` = 55, `stat_value1` = 18, `stat_value2` = 12, `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 7597 WHERE entry=21998;

/*  Helm of Heroism  */
UPDATE `item_template` SET `armor` = 556, `BuyPrice` = 99583, `SellPrice` = 19916 WHERE entry=21999;

/*  Legplates of Heroism  */
UPDATE `item_template` SET `BuyPrice` = 133931, `SellPrice` = 26786 WHERE entry=22000;

/*  Spaulders of Heroism  */
UPDATE `item_template` SET `BuyPrice` = 96017, `SellPrice` = 19203, `DisenchantID` = 49 WHERE entry=22001;

/*  Darkmantle Belt  */
UPDATE `item_template` SET `BuyPrice` = 80308, `SellPrice` = 16061, `DisenchantID` = 49 WHERE entry=22002;

/*  Darkmantle Boots  */
UPDATE `item_template` SET `armor` = 127 WHERE entry=22003;

/*  Darkmantle Bracers  */
UPDATE `item_template` SET `BuyPrice` = 82990, `SellPrice` = 16598, `DisenchantID` = 49 WHERE entry=22004;

/*  Darkmantle Cap  */
UPDATE `item_template` SET `armor` = 150 WHERE entry=22005;

/*  Darkmantle Gloves  */
UPDATE `item_template` SET `armor` = 108, `BuyPrice` = 60174, `SellPrice` = 12034, `ItemLevel` = 55, `stat_value1` = 22, `stat_value2` = 12, `stat_value3` = 9 WHERE entry=22006;

/*  Darkmantle Pants  */
UPDATE `item_template` SET `BuyPrice` = 159448, `SellPrice` = 31889 WHERE entry=22007;

/*  Darkmantle Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 114320, `SellPrice` = 22864, `DisenchantID` = 49 WHERE entry=22008;

/*  Darkmantle Tunic  */
UPDATE `item_template` SET `armor` = 185 WHERE entry=22009;

/*  Beastmaster's Belt  */
UPDATE `item_template` SET `BuyPrice` = 92160, `SellPrice` = 18432, `stat_value1` = 16, `DisenchantID` = 49, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=22010;

/*  Beastmaster's Bindings  */
UPDATE `item_template` SET `BuyPrice` = 92503, `SellPrice` = 18500, `stat_value1` = 16, `DisenchantID` = 49, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=22011;

/*  Beastmaster's Cap  */
UPDATE `item_template` SET `armor` = 314, `stat_value1` = 22, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=22013;

/*  Beastmaster's Gloves  */
UPDATE `item_template` SET `armor` = 223, `BuyPrice` = 74709, `SellPrice` = 14941, `ItemLevel` = 55, `stat_value1` = 14, `stat_value2` = 12, `stat_value3` = 10, `stat_type4` = 0, `stat_value4` = 0, `spelltrigger_1` = 0 WHERE entry=22015;

/*  Beastmaster's Mantle  */
UPDATE `item_template` SET `BuyPrice` = 142012, `SellPrice` = 28402, `stat_value2` = 12, `DisenchantID` = 49, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=22016;

/*  Beastmaster's Pants  */
UPDATE `item_template` SET `BuyPrice` = 198677, `SellPrice` = 39735, `stat_value1` = 28, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=22017;

/*  Beastmaster's Tunic  */
UPDATE `item_template` SET `armor` = 387, `stat_value1` = 25, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=22060;

/*  Beastmaster's Boots  */
UPDATE `item_template` SET `armor` = 266, `stat_value1` = 24, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=22061;

/*  Sorcerer's Belt  */
UPDATE `item_template` SET `BuyPrice` = 65903, `SellPrice` = 13180, `DisenchantID` = 49 WHERE entry=22062;

/*  Sorcerer's Bindings  */
UPDATE `item_template` SET `BuyPrice` = 66138, `SellPrice` = 13227, `DisenchantID` = 49 WHERE entry=22063;

/*  Sorcerer's Boots  */
UPDATE `item_template` SET `armor` = 64 WHERE entry=22064;

/*  Sorcerer's Crown  */
UPDATE `item_template` SET `armor` = 75 WHERE entry=22065;

/*  Sorcerer's Gloves  */
UPDATE `item_template` SET `armor` = 54, `BuyPrice` = 48119, `SellPrice` = 9623, `ItemLevel` = 55, `stat_value1` = 10, `stat_value2` = 14, `stat_value3` = 12, `stat_type4` = 0, `stat_value4` = 0, `stat_type5` = 0, `stat_value5` = 0, `spellid_1` = 9417, `spellid_2` = 23727 WHERE entry=22066;

/*  Sorcerer's Leggings  */
UPDATE `item_template` SET `BuyPrice` = 127505, `SellPrice` = 25501 WHERE entry=22067;

/*  Sorcerer's Mantle  */
UPDATE `item_template` SET `BuyPrice` = 93941, `SellPrice` = 18788, `DisenchantID` = 49 WHERE entry=22068;

/*  Sorcerer's Robes  */
UPDATE `item_template` SET `armor` = 93 WHERE entry=22069;

/*  Deathmist Belt  */
UPDATE `item_template` SET `BuyPrice` = 63097, `SellPrice` = 12619, `DisenchantID` = 49 WHERE entry=22070;

/*  Deathmist Bracers  */
UPDATE `item_template` SET `BuyPrice` = 63332, `SellPrice` = 12666, `DisenchantID` = 49 WHERE entry=22071;

/*  Deathmist Leggings  */
UPDATE `item_template` SET `BuyPrice` = 133478, `SellPrice` = 26695 WHERE entry=22072;

/*  Deathmist Mantle  */
UPDATE `item_template` SET `BuyPrice` = 95693, `SellPrice` = 19138, `DisenchantID` = 49 WHERE entry=22073;

/*  Deathmist Mask  */
UPDATE `item_template` SET `armor` = 75 WHERE entry=22074;

/*  Deathmist Robe  */
UPDATE `item_template` SET `armor` = 93 WHERE entry=22075;

/*  Deathmist Sandals  */
UPDATE `item_template` SET `armor` = 64 WHERE entry=22076;

/*  Deathmist Wraps  */
UPDATE `item_template` SET `armor` = 54, `BuyPrice` = 51498, `SellPrice` = 10299, `ItemLevel` = 55, `stat_value1` = 16, `stat_value2` = 13, `stat_type3` = 0, `stat_value3` = 0, `stat_type4` = 0, `stat_value4` = 0, `spellid_1` = 9342, `spellid_2` = 23727 WHERE entry=22077;

/*  Virtuous Belt  */
UPDATE `item_template` SET `BuyPrice` = 64964, `SellPrice` = 12992, `DisenchantID` = 49 WHERE entry=22078;

/*  Virtuous Bracers  */
UPDATE `item_template` SET `BuyPrice` = 65192, `SellPrice` = 13038, `DisenchantID` = 49 WHERE entry=22079;

/*  Virtuous Crown  */
UPDATE `item_template` SET `armor` = 75 WHERE entry=22080;

/*  Virtuous Gloves  */
UPDATE `item_template` SET `armor` = 54, `BuyPrice` = 52241, `SellPrice` = 10448, `ItemLevel` = 55, `stat_value1` = 12, `stat_value2` = 15, `stat_value3` = 14, `stat_type4` = 0, `stat_value4` = 0, `spellid_1` = 9416 WHERE entry=22081;

/*  Virtuous Mantle  */
UPDATE `item_template` SET `BuyPrice` = 98845, `SellPrice` = 19769, `DisenchantID` = 49 WHERE entry=22082;

/*  Virtuous Robe  */
UPDATE `item_template` SET `armor` = 93 WHERE entry=22083;

/*  Virtuous Sandals  */
UPDATE `item_template` SET `armor` = 64 WHERE entry=22084;

/*  Virtuous Skirt  */
UPDATE `item_template` SET `BuyPrice` = 130038, `SellPrice` = 26007 WHERE entry=22085;

/*  Soulforge Belt  */
UPDATE `item_template` SET `BuyPrice` = 62157, `SellPrice` = 12431, `DisenchantID` = 49 WHERE entry=22086;

/*  Soulforge Boots  */
UPDATE `item_template` SET `armor` = 470, `BuyPrice` = 97762, `SellPrice` = 19552 WHERE entry=22087;

/*  Soulforge Bracers  */
UPDATE `item_template` SET `BuyPrice` = 62621, `SellPrice` = 12524, `DisenchantID` = 49 WHERE entry=22088;

/*  Soulforge Breastplate  */
UPDATE `item_template` SET `armor` = 684, `BuyPrice` = 131332, `SellPrice` = 26266 WHERE entry=22089;

/*  Soulforge Gauntlets  */
UPDATE `item_template` SET `armor` = 393, `BuyPrice` = 50190, `SellPrice` = 10038, `ItemLevel` = 55, `stat_value1` = 10, `stat_value2` = 9, `stat_value3` = 10, `stat_type4` = 0, `stat_value4` = 0, `stat_type5` = 0, `stat_value5` = 0, `spellid_1` = 9416, `spellid_2` = 7597 WHERE entry=22090;

/*  Soulforge Helm  */
UPDATE `item_template` SET `armor` = 556, `BuyPrice` = 99225, `SellPrice` = 19845 WHERE entry=22091;

/*  Soulforge Legplates  */
UPDATE `item_template` SET `BuyPrice` = 133464, `SellPrice` = 26692 WHERE entry=22092;

/*  Soulforge Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 95684, `SellPrice` = 19136, `DisenchantID` = 49 WHERE entry=22093;

/*  Bindings of The Five Thunders  */
UPDATE `item_template` SET `BuyPrice` = 96379, `SellPrice` = 19275, `DisenchantID` = 49 WHERE entry=22095;

/*  Boots of The Five Thunders  */
UPDATE `item_template` SET `armor` = 266 WHERE entry=22096;

/*  Coif of The Five Thunders  */
UPDATE `item_template` SET `armor` = 314 WHERE entry=22097;

/*  Cord of The Five Thunders  */
UPDATE `item_template` SET `BuyPrice` = 97426, `SellPrice` = 19485, `DisenchantID` = 49 WHERE entry=22098;

/*  Gauntlets of The Five Thunders  */
UPDATE `item_template` SET `armor` = 223, `BuyPrice` = 77793, `SellPrice` = 15558, `ItemLevel` = 55, `stat_value1` = 9, `stat_value2` = 14, `stat_value3` = 12, `stat_type4` = 0, `stat_value4` = 0, `stat_type5` = 0, `stat_value5` = 0, `spellid_1` = 21618, `spellid_2` = 9417 WHERE entry=22099;

/*  Kilt of The Five Thunders  */
UPDATE `item_template` SET `BuyPrice` = 191358, `SellPrice` = 38271 WHERE entry=22100;

/*  Pauldrons of The Five Thunders  */
UPDATE `item_template` SET `BuyPrice` = 137822, `SellPrice` = 27564, `DisenchantID` = 49 WHERE entry=22101;

/*  Vest of The Five Thunders  */
UPDATE `item_template` SET `armor` = 387 WHERE entry=22102;

/*  Feralheart Belt  */
UPDATE `item_template` SET `BuyPrice` = 77681, `SellPrice` = 15536, `DisenchantID` = 49 WHERE entry=22106;

/*  Feralheart Boots  */
UPDATE `item_template` SET `armor` = 127 WHERE entry=22107;

/*  Feralheart Bracers  */
UPDATE `item_template` SET `BuyPrice` = 78268, `SellPrice` = 15653, `DisenchantID` = 49 WHERE entry=22108;

/*  Feralheart Cowl  */
UPDATE `item_template` SET `armor` = 150 WHERE entry=22109;

/*  Feralheart Gloves  */
UPDATE `item_template` SET `armor` = 108, `BuyPrice` = 62731, `SellPrice` = 12546, `ItemLevel` = 55, `stat_value1` = 10, `stat_value2` = 12, `stat_value3` = 9, `stat_value4` = 10, `stat_value5` = 10, `stat_type6` = 0, `stat_value6` = 0, `spellid_1` = 9416 WHERE entry=22110;

/*  Feralheart Kilt  */
UPDATE `item_template` SET `BuyPrice` = 166197, `SellPrice` = 33239 WHERE entry=22111;

/*  Feralheart Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 119153, `SellPrice` = 23830, `DisenchantID` = 49 WHERE entry=22112;

/*  Feralheart Vest  */
UPDATE `item_template` SET `armor` = 185 WHERE entry=22113;

/*  Beads of Ogre Mojo  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22149;

/*  Beads of Ogre Might  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22150;

/*  Obsidian Mail Tunic  */
UPDATE `item_template` SET `armor` = 458, `BuyPrice` = 365643, `SellPrice` = 73128 WHERE entry=22191;

/*  Black Grasp of the Destroyer  */
UPDATE `item_template` SET `armor` = 279, `BuyPrice` = 167607, `SellPrice` = 33521 WHERE entry=22194;

/*  Light Obsidian Belt  */
UPDATE `item_template` SET `BuyPrice` = 114426, `SellPrice` = 22885 WHERE entry=22195;

/*  Thick Obsidian Breastplate  */
UPDATE `item_template` SET `armor` = 814, `BuyPrice` = 248121, `SellPrice` = 49624, `spelltrigger_2` = 0, `spelltrigger_3` = 0 WHERE entry=22196;

/*  Heavy Obsidian Belt  */
UPDATE `item_template` SET `BuyPrice` = 71411, `SellPrice` = 14282 WHERE entry=22197;

/*  Jagged Obsidian Shield  */
UPDATE `item_template` SET `armor` = 2645, `BuyPrice` = 337200, `SellPrice` = 67440, `block` = 48 WHERE entry=22198;

/*  Wristguards of Renown  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22204;

/*  Black Steel Bindings  */
UPDATE `item_template` SET `BuyPrice` = 42610, `SellPrice` = 8522 WHERE entry=22205;

/*  Sash of the Grand Hunt  */
UPDATE `item_template` SET `BuyPrice` = 71165, `SellPrice` = 14233, `stat_type4` = 0, `stat_value4` = 0, `DisenchantID` = 49, `spellid_1` = 7570, `spellid_2` = 7582, `spellid_3` = 22811 WHERE entry=22207;

/*  Lavastone Hammer  */
UPDATE `item_template` SET `stat_type2` = 5, `stat_value2` = 12, `stat_value3` = 10, `spellid_1` = 14799 WHERE entry=22208;

/*  Golem Fitted Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 86556, `SellPrice` = 17311 WHERE entry=22212;

/*  Foreman's Head Protector  */
UPDATE `item_template` SET `BuyPrice` = 56458, `SellPrice` = 11291, `stat_type3` = 5, `stat_value3` = 11, `spellid_1` = 9342 WHERE entry=22223;

/*  Dragonskin Cowl  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22225;

/*  Frightmaw Hide  */
UPDATE `item_template` SET `armor` = 37, `stat_type2` = 0, `stat_value2` = 0, `spelltrigger_1` = 0, `StatsCount` = 2 WHERE entry=22230;

/*  Kayser's Boots of Precision  */
UPDATE `item_template` SET `BuyPrice` = 82221, `SellPrice` = 16444, `DisenchantID` = 49 WHERE entry=22231;

/*  Marksman's Girdle  */
UPDATE `item_template` SET `BuyPrice` = 74669, `SellPrice` = 14933, `DisenchantID` = 49 WHERE entry=22232;

/*  Verek's Leash  */
UPDATE `item_template` SET `BuyPrice` = 57448, `SellPrice` = 11489, `stat_type1` = 4, `stat_type4` = 3, `stat_value4` = 8, `stat_type5` = 6, `stat_value5` = 7, `spellid_1` = 9416, `spellid_2` = 0, `spelltrigger_2` = 0, `StatsCount` = 5 WHERE entry=22242;

/*  Faith Healer's Boots  */
UPDATE `item_template` SET `BuyPrice` = 89371, `SellPrice` = 17874, `DisenchantID` = 49 WHERE entry=22247;

/*  Tome of the Lost  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22253;

/*  Mana Shaping Handwraps  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=22256;

/*  Flarethorn  */
UPDATE `item_template` SET `spellid_1` = 9295 WHERE entry=22266;

/*  Spellweaver's Turban  */
UPDATE `item_template` SET `BuyPrice` = 89353, `SellPrice` = 17870, `DisenchantID` = 49 WHERE entry=22267;

/*  Draconic Infused Emblem  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22268;

/*  Shadow Prowler's Cloak  */
UPDATE `item_template` SET `BuyPrice` = 82383, `SellPrice` = 16476, `DisenchantID` = 49, `spelltrigger_1` = 0 WHERE entry=22269;

/*  Entrenching Boots  */
UPDATE `item_template` SET `BuyPrice` = 59413, `SellPrice` = 11882, `stat_type2` = 3, `stat_value2` = 5, `stat_type3` = 5, `spellid_1` = 9397 WHERE entry=22270;

/*  Moonshadow Hood  */
UPDATE `item_template` SET `armor` = 122, `MaxDurability` = 60, `stat_type1` = 5, `stat_value1` = 15, `stat_type2` = 0, `stat_value2` = 0, `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 9346, `spelltrigger_1` = 1, `spellid_2` = 18384, `spelltrigger_2` = 1, `StatsCount` = 3 WHERE entry=22273;

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
UPDATE `item_template` SET `BuyPrice` = 116570, `SellPrice` = 23314, `DisenchantID` = 49 WHERE entry=22301;

/*  Ironweave Cowl  */
UPDATE `item_template` SET `BuyPrice` = 87747, `SellPrice` = 17549, `DisenchantID` = 49 WHERE entry=22302;

/*  Ironweave Pants  */
UPDATE `item_template` SET `BuyPrice` = 111830, `SellPrice` = 22366, `DisenchantID` = 49 WHERE entry=22303;

/*  Ironweave Gloves  */
UPDATE `item_template` SET `BuyPrice` = 53446, `SellPrice` = 10689, `DisenchantID` = 49 WHERE entry=22304;

/*  Ironweave Mantle  */
UPDATE `item_template` SET `BuyPrice` = 80451, `SellPrice` = 16090, `DisenchantID` = 49 WHERE entry=22305;

/*  Ironweave Belt  */
UPDATE `item_template` SET `BuyPrice` = 49816, `SellPrice` = 9963, `DisenchantID` = 49 WHERE entry=22306;

/*  Ironweave Boots  */
UPDATE `item_template` SET `BuyPrice` = 74724, `SellPrice` = 14944, `DisenchantID` = 49 WHERE entry=22311;

/*  Ironweave Bracers  */
UPDATE `item_template` SET `BuyPrice` = 49816, `SellPrice` = 9963, `DisenchantID` = 49 WHERE entry=22313;

/*  Huntsman's Harpoon  */
UPDATE `item_template` SET `BuyPrice` = 321992, `SellPrice` = 64398, `DisenchantID` = 49 WHERE entry=22314;

/*  Hammer of Revitalization  */
UPDATE `item_template` SET `BuyPrice` = 249080, `SellPrice` = 49816, `DisenchantID` = 49 WHERE entry=22315;

/*  Lefty's Brass Knuckle  */
UPDATE `item_template` SET `BuyPrice` = 260466, `SellPrice` = 52093, `DisenchantID` = 49 WHERE entry=22317;

/*  Malgen's Long Bow  */
UPDATE `item_template` SET `BuyPrice` = 186810, `SellPrice` = 37362, `dmg_min1` = 63.0, `dmg_max1` = 118.0, `DisenchantID` = 49 WHERE entry=22318;

/*  Tome of Divine Right  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22319;

/*  Heart of Wyrmthalak  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22321;

/*  The Jaw Breaker  */
UPDATE `item_template` SET `BuyPrice` = 265271, `SellPrice` = 53054, `DisenchantID` = 49 WHERE entry=22322;

/*  Belt of the Trickster  */
UPDATE `item_template` SET `BuyPrice` = 62230, `SellPrice` = 12446, `DisenchantID` = 49 WHERE entry=22325;

/*  Amalgam's Band  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22326;

/*  Amulet of the Redeemed  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22327;

/*  Legplates of Vigilance  */
UPDATE `item_template` SET `BuyPrice` = 111042, `SellPrice` = 22208, `DisenchantID` = 49 WHERE entry=22328;

/*  Scepter of Interminable Focus  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22329;

/*  Shroud of Arcane Mastery  */
UPDATE `item_template` SET `BuyPrice` = 76118, `SellPrice` = 15223, `DisenchantID` = 49 WHERE entry=22330;

/*  Band of the Steadfast Hero  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22331;

/*  Blade of Necromancy  */
UPDATE `item_template` SET `BuyPrice` = 268417, `SellPrice` = 53683, `DisenchantID` = 49, `spelltrigger_2` = 0 WHERE entry=22332;

/*  Hammer of Divine Might  */
UPDATE `item_template` SET `BuyPrice` = 326918, `SellPrice` = 65383, `DisenchantID` = 49 WHERE entry=22333;

/*  Band of Mending  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22334;

/*  Lord Valthalak's Staff of Command  */
UPDATE `item_template` SET `BuyPrice` = 356256, `SellPrice` = 71251, `DisenchantID` = 49 WHERE entry=22335;

/*  Draconian Aegis of the Legion  */
UPDATE `item_template` SET `BuyPrice` = 175751, `SellPrice` = 35150, `DisenchantID` = 49 WHERE entry=22336;

/*  Shroud of Domination  */
UPDATE `item_template` SET `BuyPrice` = 82383, `SellPrice` = 16476, `DisenchantID` = 49 WHERE entry=22337;

/*  Rune Band of Wizardry  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22339;

/*  Pendant of Celerity  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22340;

/*  Leggings of Torment  */
UPDATE `item_template` SET `BuyPrice` = 109844, `SellPrice` = 21968, `DisenchantID` = 49, `spellid_1` = 18014 WHERE entry=22342;

/*  Handguards of Savagery  */
UPDATE `item_template` SET `BuyPrice` = 82383, `SellPrice` = 16476, `DisenchantID` = 49 WHERE entry=22343;

/*  Totem of Rebirth  */
UPDATE `item_template` SET `BuyPrice` = 78402, `SellPrice` = 15680, `DisenchantID` = 49 WHERE entry=22345;

/*  Fahrad's Reloading Repeater  */
UPDATE `item_template` SET `BuyPrice` = 228640, `SellPrice` = 45728, `dmg_min1` = 85.0, `dmg_max1` = 128.0, `DisenchantID` = 49 WHERE entry=22347;

/*  Doomulus Prime  */
UPDATE `item_template` SET `BuyPrice` = 382535, `SellPrice` = 76507, `DisenchantID` = 49 WHERE entry=22348;

/*  The Thunderwood Poker  */
UPDATE `item_template` SET `BuyPrice` = 324883, `SellPrice` = 64976, `DisenchantID` = 49 WHERE entry=22377;

/*  Ravenholdt Slicer  */
UPDATE `item_template` SET `BuyPrice` = 326057, `SellPrice` = 65211, `DisenchantID` = 49 WHERE entry=22378;

/*  Shivsprocket's Shiv  */
UPDATE `item_template` SET `BuyPrice` = 327232, `SellPrice` = 65446, `dmg_min1` = 42.05, `dmg_max1` = 82.05, `DisenchantID` = 49 WHERE entry=22379;

/*  Simone's Cultivating Hammer  */
UPDATE `item_template` SET `BuyPrice` = 328375, `SellPrice` = 65675, `dmg_min1` = 50.66, `dmg_max1` = 97.66, `DisenchantID` = 49 WHERE entry=22380;

/*  Sageblade  */
UPDATE `item_template` SET `BuyPrice` = 421458, `SellPrice` = 84291 WHERE entry=22383;

/*  Persuader  */
UPDATE `item_template` SET `BuyPrice` = 402771, `SellPrice` = 80554 WHERE entry=22384;

/*  Titanic Leggings  */
UPDATE `item_template` SET `armor` = 598, `BuyPrice` = 126384, `SellPrice` = 25276 WHERE entry=22385;

/*  Staff of Metanoia  */
UPDATE `item_template` SET `BuyPrice` = 347003, `SellPrice` = 69400, `DisenchantID` = 49 WHERE entry=22394;

/*  Totem of Life  */
UPDATE `item_template` SET `BuyPrice` = 244136, `SellPrice` = 48827 WHERE entry=22396;

/*  Idol of Rejuvenation  */
UPDATE `item_template` SET `BuyPrice` = 84490, `SellPrice` = 16898, `DisenchantID` = 49 WHERE entry=22398;

/*  Idol of Health  */
UPDATE `item_template` SET `BuyPrice` = 246770, `SellPrice` = 49354 WHERE entry=22399;

/*  Libram of Hope  */
UPDATE `item_template` SET `BuyPrice` = 85394, `SellPrice` = 17078, `DisenchantID` = 49 WHERE entry=22401;

/*  Libram of Grace  */
UPDATE `item_template` SET `BuyPrice` = 249427, `SellPrice` = 49885 WHERE entry=22402;

/*  Diana's Pearl Necklace  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22403;

/*  Willey's Back Scratcher  */
UPDATE `item_template` SET `BuyPrice` = 273967, `SellPrice` = 54793, `DisenchantID` = 49 WHERE entry=22404;

/*  Mantle of the Scarlet Crusade  */
UPDATE `item_template` SET `BuyPrice` = 74724, `SellPrice` = 14944, `DisenchantID` = 49 WHERE entry=22405;

/*  Redemption  */
UPDATE `item_template` SET `BuyPrice` = 311350, `SellPrice` = 62270, `DisenchantID` = 49 WHERE entry=22406;

/*  Helm of the New Moon  */
UPDATE `item_template` SET `BuyPrice` = 93405, `SellPrice` = 18681, `DisenchantID` = 49 WHERE entry=22407;

/*  Ritssyn's Wand of Bad Mojo  */
UPDATE `item_template` SET `BuyPrice` = 213818, `SellPrice` = 42763, `DisenchantID` = 49 WHERE entry=22408;

/*  Tunic of the Crescent Moon  */
UPDATE `item_template` SET `BuyPrice` = 137305, `SellPrice` = 27461, `DisenchantID` = 49 WHERE entry=22409;

/*  Gauntlets of Deftness  */
UPDATE `item_template` SET `BuyPrice` = 86157, `SellPrice` = 17231, `DisenchantID` = 49 WHERE entry=22410;

/*  Helm of the Executioner  */
UPDATE `item_template` SET `BuyPrice` = 82383, `SellPrice` = 16476, `DisenchantID` = 49 WHERE entry=22411;

/*  Thuzadin Mantle  */
UPDATE `item_template` SET `BuyPrice` = 82383, `SellPrice` = 16476, `DisenchantID` = 49 WHERE entry=22412;

/*  Dreadnaught Breastplate  */
UPDATE `item_template` SET `armor` = 1027, `BuyPrice` = 644435, `SellPrice` = 128887 WHERE entry=22416;

/*  Dreadnaught Legplates  */
UPDATE `item_template` SET `armor` = 861, `BuyPrice` = 532102, `SellPrice` = 106420 WHERE entry=22417;

/*  Dreadnaught Helmet  */
UPDATE `item_template` SET `armor` = 800, `BuyPrice` = 400480, `SellPrice` = 80096 WHERE entry=22418;

/*  Dreadnaught Pauldrons  */
UPDATE `item_template` SET `armor` = 722, `BuyPrice` = 364556, `SellPrice` = 72911 WHERE entry=22419;

/*  Dreadnaught Sabatons  */
UPDATE `item_template` SET `armor` = 662, `BuyPrice` = 365865, `SellPrice` = 73173 WHERE entry=22420;

/*  Dreadnaught Gauntlets  */
UPDATE `item_template` SET `armor` = 615, `BuyPrice` = 269873, `SellPrice` = 53974 WHERE entry=22421;

/*  Dreadnaught Waistguard  */
UPDATE `item_template` SET `armor` = 554, `BuyPrice` = 251673, `SellPrice` = 50334 WHERE entry=22422;

/*  Dreadnaught Bracers  */
UPDATE `item_template` SET `armor` = 431, `BuyPrice` = 252635, `SellPrice` = 50527 WHERE entry=22423;

/*  Redemption Wristguards  */
UPDATE `item_template` SET `armor` = 431, `BuyPrice` = 253597, `SellPrice` = 50719 WHERE entry=22424;

/*  Redemption Tunic  */
UPDATE `item_template` SET `armor` = 1027, `BuyPrice` = 618837, `SellPrice` = 123767 WHERE entry=22425;

/*  Redemption Handguards  */
UPDATE `item_template` SET `armor` = 615, `BuyPrice` = 255495, `SellPrice` = 51099 WHERE entry=22426;

/*  Redemption Legguards  */
UPDATE `item_template` SET `armor` = 861, `BuyPrice` = 512915, `SellPrice` = 102583 WHERE entry=22427;

/*  Redemption Headpiece  */
UPDATE `item_template` SET `armor` = 800, `BuyPrice` = 386129, `SellPrice` = 77225 WHERE entry=22428;

/*  Redemption Spaulders  */
UPDATE `item_template` SET `armor` = 722, `BuyPrice` = 351504, `SellPrice` = 70300 WHERE entry=22429;

/*  Redemption Boots  */
UPDATE `item_template` SET `armor` = 662, `BuyPrice` = 352812, `SellPrice` = 70562 WHERE entry=22430;

/*  Redemption Girdle  */
UPDATE `item_template` SET `armor` = 554, `BuyPrice` = 260279, `SellPrice` = 52055 WHERE entry=22431;

/*  Don Mauricio's Band of Domination  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=22433;

/*  Cryptstalker Tunic  */
UPDATE `item_template` SET `armor` = 576, `BuyPrice` = 966558, `SellPrice` = 193311, `stat_value1` = 45, `spellid_4` = 0, `spelltrigger_4` = 0 WHERE entry=22436;

/*  Cryptstalker Legguards  */
UPDATE `item_template` SET `armor` = 484, `BuyPrice` = 797997, `SellPrice` = 159599, `stat_value1` = 42, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=22437;

/*  Cryptstalker Headpiece  */
UPDATE `item_template` SET `armor` = 449, `BuyPrice` = 557607, `SellPrice` = 111521, `stat_value1` = 31, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=22438;

/*  Cryptstalker Spaulders  */
UPDATE `item_template` SET `armor` = 406, `BuyPrice` = 509986, `SellPrice` = 101997, `stat_value1` = 29, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=22439;

/*  Cryptstalker Boots  */
UPDATE `item_template` SET `armor` = 372, `BuyPrice` = 511958, `SellPrice` = 102391, `stat_value1` = 33, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=22440;

/*  Cryptstalker Handguards  */
UPDATE `item_template` SET `armor` = 346, `BuyPrice` = 376028, `SellPrice` = 75205, `stat_value1` = 24, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=22441;

/*  Cryptstalker Girdle  */
UPDATE `item_template` SET `armor` = 311, `BuyPrice` = 377471, `SellPrice` = 75494, `stat_value1` = 23, `spellid_4` = 0, `spelltrigger_4` = 0 WHERE entry=22442;

/*  Cryptstalker Wristguards  */
UPDATE `item_template` SET `armor` = 242, `BuyPrice` = 378914, `SellPrice` = 75782, `stat_value1` = 26, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=22443;

/*  Earthshatter Tunic  */
UPDATE `item_template` SET `armor` = 576, `BuyPrice` = 924464, `SellPrice` = 184892 WHERE entry=22464;

/*  Earthshatter Legguards  */
UPDATE `item_template` SET `armor` = 484, `BuyPrice` = 763444, `SellPrice` = 152688 WHERE entry=22465;

/*  Earthshatter Headpiece  */
UPDATE `item_template` SET `armor` = 449, `BuyPrice` = 574748, `SellPrice` = 114949 WHERE entry=22466;

/*  Earthshatter Spaulders  */
UPDATE `item_template` SET `armor` = 406, `BuyPrice` = 525549, `SellPrice` = 105109 WHERE entry=22467;

/*  Earthshatter Boots  */
UPDATE `item_template` SET `armor` = 372, `BuyPrice` = 527520, `SellPrice` = 105504 WHERE entry=22468;

/*  Earthshatter Handguards  */
UPDATE `item_template` SET `armor` = 346, `BuyPrice` = 387455, `SellPrice` = 77491 WHERE entry=22469;

/*  Earthshatter Girdle  */
UPDATE `item_template` SET `armor` = 311, `BuyPrice` = 399232, `SellPrice` = 79846 WHERE entry=22470;

/*  Earthshatter Wristguards  */
UPDATE `item_template` SET `armor` = 242, `BuyPrice` = 400636, `SellPrice` = 80127 WHERE entry=22471;

/*  Boots of Ferocity  */
UPDATE `item_template` SET `BuyPrice` = 100965, `SellPrice` = 20193, `DisenchantID` = 49 WHERE entry=22472;

/*  Bonescythe Breastplate  */
UPDATE `item_template` SET `armor` = 262, `BuyPrice` = 826164, `SellPrice` = 165232 WHERE entry=22476;

/*  Bonescythe Legplates  */
UPDATE `item_template` SET `armor` = 221, `BuyPrice` = 682092, `SellPrice` = 136418 WHERE entry=22477;

/*  Bonescythe Helmet  */
UPDATE `item_template` SET `armor` = 205, `BuyPrice` = 464527, `SellPrice` = 92905 WHERE entry=22478;

/*  Bonescythe Pauldrons  */
UPDATE `item_template` SET `armor` = 186, `BuyPrice` = 422975, `SellPrice` = 84595 WHERE entry=22479;

/*  Bonescythe Sabatons  */
UPDATE `item_template` SET `armor` = 171, `BuyPrice` = 424611, `SellPrice` = 84922 WHERE entry=22480;

/*  Bonescythe Gauntlets  */
UPDATE `item_template` SET `armor` = 158, `BuyPrice` = 313292, `SellPrice` = 62658 WHERE entry=22481;

/*  Bonescythe Waistguard  */
UPDATE `item_template` SET `armor` = 142, `BuyPrice` = 314462, `SellPrice` = 62892, `spelltrigger_1` = 0 WHERE entry=22482;

/*  Bonescythe Bracers  */
UPDATE `item_template` SET `armor` = 111, `BuyPrice` = 315664, `SellPrice` = 63132, `spelltrigger_2` = 0 WHERE entry=22483;

/*  Dreamwalker Tunic  */
UPDATE `item_template` SET `armor` = 262, `BuyPrice` = 802858, `SellPrice` = 160571 WHERE entry=22488;

/*  Dreamwalker Legguards  */
UPDATE `item_template` SET `armor` = 221, `BuyPrice` = 662918, `SellPrice` = 132583 WHERE entry=22489;

/*  Dreamwalker Headpiece  */
UPDATE `item_template` SET `armor` = 205, `BuyPrice` = 498943, `SellPrice` = 99788, `spelltrigger_2` = 0 WHERE entry=22490;

/*  Dreamwalker Spaulders  */
UPDATE `item_template` SET `armor` = 186, `BuyPrice` = 454192, `SellPrice` = 90838 WHERE entry=22491;

/*  Dreamwalker Boots  */
UPDATE `item_template` SET `armor` = 171, `BuyPrice` = 455828, `SellPrice` = 91165 WHERE entry=22492;

/*  Dreamwalker Handguards  */
UPDATE `item_template` SET `armor` = 158, `BuyPrice` = 336204, `SellPrice` = 67240 WHERE entry=22493;

/*  Dreamwalker Girdle  */
UPDATE `item_template` SET `armor` = 142, `BuyPrice` = 337406, `SellPrice` = 67481 WHERE entry=22494;

/*  Dreamwalker Wristguards  */
UPDATE `item_template` SET `armor` = 111, `BuyPrice` = 338608, `SellPrice` = 67721 WHERE entry=22495;

/*  Frostfire Robe  */
UPDATE `item_template` SET `armor` = 138, `BuyPrice` = 660868, `SellPrice` = 132173 WHERE entry=22496;

/*  Frostfire Leggings  */
UPDATE `item_template` SET `armor` = 116, `BuyPrice` = 545570, `SellPrice` = 109114 WHERE entry=22497;

/*  Frostfire Circlet  */
UPDATE `item_template` SET `armor` = 108, `BuyPrice` = 371582, `SellPrice` = 74316 WHERE entry=22498;

/*  Frostfire Shoulderpads  */
UPDATE `item_template` SET `armor` = 97, `BuyPrice` = 338345, `SellPrice` = 67669 WHERE entry=22499;

/*  Frostfire Sandals  */
UPDATE `item_template` SET `armor` = 89, `BuyPrice` = 339654, `SellPrice` = 67930 WHERE entry=22500;

/*  Frostfire Gloves  */
UPDATE `item_template` SET `armor` = 83, `BuyPrice` = 250581, `SellPrice` = 50116 WHERE entry=22501;

/*  Frostfire Belt  */
UPDATE `item_template` SET `armor` = 75, `BuyPrice` = 258433, `SellPrice` = 51686 WHERE entry=22502;

/*  Frostfire Bindings  */
UPDATE `item_template` SET `armor` = 58, `BuyPrice` = 259395, `SellPrice` = 51879 WHERE entry=22503;

/*  Plagueheart Robe  */
UPDATE `item_template` SET `armor` = 138, `BuyPrice` = 632932, `SellPrice` = 126586 WHERE entry=22504;

/*  Plagueheart Leggings  */
UPDATE `item_template` SET `armor` = 116, `BuyPrice` = 522586, `SellPrice` = 104517 WHERE entry=22505;

/*  Plagueheart Circlet  */
UPDATE `item_template` SET `armor` = 108, `BuyPrice` = 393383, `SellPrice` = 78676 WHERE entry=22506;

/*  Plagueheart Shoulderpads  */
UPDATE `item_template` SET `armor` = 97, `BuyPrice` = 358118, `SellPrice` = 71623 WHERE entry=22507;

/*  Plagueheart Sandals  */
UPDATE `item_template` SET `armor` = 89, `BuyPrice` = 359392, `SellPrice` = 71878 WHERE entry=22508;

/*  Plagueheart Gloves  */
UPDATE `item_template` SET `armor` = 83, `BuyPrice` = 265115, `SellPrice` = 53023 WHERE entry=22509;

/*  Plagueheart Belt  */
UPDATE `item_template` SET `armor` = 75, `BuyPrice` = 266077, `SellPrice` = 53215 WHERE entry=22510;

/*  Plagueheart Bindings  */
UPDATE `item_template` SET `armor` = 58, `BuyPrice` = 267039, `SellPrice` = 53407 WHERE entry=22511;

/*  Robe of Faith  */
UPDATE `item_template` SET `armor` = 138, `BuyPrice` = 651451, `SellPrice` = 130290 WHERE entry=22512;

/*  Leggings of Faith  */
UPDATE `item_template` SET `armor` = 116, `BuyPrice` = 537874, `SellPrice` = 107574 WHERE entry=22513;

/*  Circlet of Faith  */
UPDATE `item_template` SET `armor` = 108, `BuyPrice` = 404848, `SellPrice` = 80969 WHERE entry=22514;

/*  Shoulderpads of Faith  */
UPDATE `item_template` SET `armor` = 97, `BuyPrice` = 368518, `SellPrice` = 73703 WHERE entry=22515;

/*  Sandals of Faith  */
UPDATE `item_template` SET `armor` = 89, `BuyPrice` = 369792, `SellPrice` = 73958 WHERE entry=22516;

/*  Gloves of Faith  */
UPDATE `item_template` SET `armor` = 83, `BuyPrice` = 272759, `SellPrice` = 54551 WHERE entry=22517;

/*  Belt of Faith  */
UPDATE `item_template` SET `armor` = 75, `BuyPrice` = 254585, `SellPrice` = 50917 WHERE entry=22518;

/*  Bindings of Faith  */
UPDATE `item_template` SET `armor` = 58, `BuyPrice` = 255547, `SellPrice` = 51109 WHERE entry=22519;

/*  Atiesh, Greatstaff of the Guardian  */
UPDATE `item_template` SET `BuyPrice` = 2810084, `SellPrice` = 562016, `spellid_5` = 0, `spelltrigger_5` = 0 WHERE entry=22589;

/*  Atiesh, Greatstaff of the Guardian  */
UPDATE `item_template` SET `BuyPrice` = 2819221, `SellPrice` = 563844, `spellid_5` = 0, `spelltrigger_5` = 0 WHERE entry=22630;

/*  Atiesh, Greatstaff of the Guardian  */
UPDATE `item_template` SET `BuyPrice` = 2631380, `SellPrice` = 526276, `spellid_4` = 0, `spelltrigger_4` = 0 WHERE entry=22631;

/*  Atiesh, Greatstaff of the Guardian  */
UPDATE `item_template` SET `BuyPrice` = 2641323, `SellPrice` = 528264, `dmg_min1` = 130.0, `dmg_max1` = 243.0, `spellid_3` = 28154, `spellid_5` = 0, `spelltrigger_5` = 0 WHERE entry=22632;

/*  Outrider's Plate Legguards  */
UPDATE `item_template` SET `armor` = 646, `BuyPrice` = 165737, `SellPrice` = 33147 WHERE entry=22651;

/*  Glacial Vest  */
UPDATE `item_template` SET `armor` = 121, `BuyPrice` = 345858, `SellPrice` = 69171 WHERE entry=22652;

/*  Glacial Gloves  */
UPDATE `item_template` SET `armor` = 76, `BuyPrice` = 174231, `SellPrice` = 34846 WHERE entry=22654;

/*  Glacial Wrists  */
UPDATE `item_template` SET `armor` = 53, `BuyPrice` = 174865, `SellPrice` = 34973 WHERE entry=22655;

/*  The Purifier  */
UPDATE `item_template` SET `BuyPrice` = 237219, `SellPrice` = 47443, `dmg_min1` = 71.0, `dmg_max1` = 132.0 WHERE entry=22656;

/*  Glacial Cloak  */
UPDATE `item_template` SET `armor` = 61, `BuyPrice` = 265227, `SellPrice` = 53045 WHERE entry=22658;

/*  Gaea's Embrace  */
UPDATE `item_template` SET `BuyPrice` = 123007, `SellPrice` = 24601 WHERE entry=22660;

/*  Polar Tunic  */
UPDATE `item_template` SET `armor` = 234, `BuyPrice` = 446885, `SellPrice` = 89377 WHERE entry=22661;

/*  Polar Gloves  */
UPDATE `item_template` SET `armor` = 146, `BuyPrice` = 224256, `SellPrice` = 44851 WHERE entry=22662;

/*  Polar Bracers  */
UPDATE `item_template` SET `armor` = 102, `BuyPrice` = 230877, `SellPrice` = 46175 WHERE entry=22663;

/*  Icy Scale Breastplate  */
UPDATE `item_template` SET `armor` = 506, `BuyPrice` = 503214, `SellPrice` = 100642 WHERE entry=22664;

/*  Icy Scale Bracers  */
UPDATE `item_template` SET `armor` = 221, `BuyPrice` = 252584, `SellPrice` = 50516 WHERE entry=22665;

/*  Icy Scale Gauntlets  */
UPDATE `item_template` SET `armor` = 316, `BuyPrice` = 253560, `SellPrice` = 50712 WHERE entry=22666;

/*  Bracers of Hope  */
UPDATE `item_template` SET `armor` = 41, `spelltrigger_2` = 0 WHERE entry=22667;

/*  Bracers of Subterfuge  */
UPDATE `item_template` SET `armor` = 81, `spelltrigger_1` = 0, `spelltrigger_2` = 0 WHERE entry=22668;

/*  Icebane Breastplate  */
UPDATE `item_template` SET `armor` = 899, `BuyPrice` = 341952, `SellPrice` = 68390 WHERE entry=22669;

/*  Icebane Gauntlets  */
UPDATE `item_template` SET `armor` = 562, `BuyPrice` = 171609, `SellPrice` = 34321 WHERE entry=22670;

/*  Icebane Bracers  */
UPDATE `item_template` SET `armor` = 393, `BuyPrice` = 172260, `SellPrice` = 34452 WHERE entry=22671;

/*  Sentinel's Plate Legguards  */
UPDATE `item_template` SET `armor` = 646, `BuyPrice` = 166347, `SellPrice` = 33269 WHERE entry=22672;

/*  Outrider's Chain Leggings  */
UPDATE `item_template` SET `armor` = 364, `BuyPrice` = 250460, `SellPrice` = 50092 WHERE entry=22673;

/*  Outrider's Mail Leggings  */
UPDATE `item_template` SET `armor` = 364, `BuyPrice` = 253253, `SellPrice` = 50650, `stat_type4` = 0, `stat_value4` = 0, `spellid_1` = 7597, `spellid_2` = 18384 WHERE entry=22676;

/*  Band of Resolution  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=22680;

/*  Verimonde's Last Resort  */
UPDATE `item_template` SET `BuyPrice` = 322563, `SellPrice` = 64512, `dmg_min1` = 39.48, `dmg_max1` = 76.48 WHERE entry=22688;

/*  Sanctified Leather Helm  */
UPDATE `item_template` SET `BuyPrice` = 121411, `SellPrice` = 24282 WHERE entry=22689;

/*  Leggings of the Plague Hunter  */
UPDATE `item_template` SET `BuyPrice` = 190738, `SellPrice` = 38147 WHERE entry=22690;

/*  Corrupted Ashbringer  */
UPDATE `item_template` SET `BuyPrice` = 1442639, `SellPrice` = 288527 WHERE entry=22691;

/*  Icebane Leggings  */
UPDATE `item_template` SET `armor` = 787, `BuyPrice` = 364160, `SellPrice` = 72832 WHERE entry=22699;

/*  Glacial Leggings  */
UPDATE `item_template` SET `armor` = 106, `BuyPrice` = 365427, `SellPrice` = 73085, `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0 WHERE entry=22700;

/*  Polar Leggings  */
UPDATE `item_template` SET `armor` = 205, `BuyPrice` = 458411, `SellPrice` = 91682 WHERE entry=22701;

/*  Icy Scale Leggings  */
UPDATE `item_template` SET `armor` = 443, `BuyPrice` = 552047, `SellPrice` = 110409 WHERE entry=22702;

/*  Ramaladni's Icy Grasp  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=22707;

/*  Might of the Tribe  */
UPDATE `item_template` SET `BuyPrice` = 111207, `SellPrice` = 22241 WHERE entry=22712;

/*  Zulian Scepter of Rites  */
UPDATE `item_template` SET `BuyPrice` = 372051, `SellPrice` = 74410, `dmg_min1` = 71.9, `dmg_max1` = 142.9 WHERE entry=22713;

/*  Sacrificial Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 74682, `SellPrice` = 14936 WHERE entry=22714;

/*  Gloves of the Tormented  */
UPDATE `item_template` SET `BuyPrice` = 112420, `SellPrice` = 22484 WHERE entry=22715;

/*  Belt of Untapped Power  */
UPDATE `item_template` SET `BuyPrice` = 75218, `SellPrice` = 15043 WHERE entry=22716;

/*  Blooddrenched Mask  */
UPDATE `item_template` SET `BuyPrice` = 142054, `SellPrice` = 28410 WHERE entry=22718;

/*  Zulian Headdress  */
UPDATE `item_template` SET `BuyPrice` = 114448, `SellPrice` = 22889 WHERE entry=22720;

/*  Band of Servitude  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=22721;

/*  Seal of the Gurubashi Berserker  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=22722;

/*  Eyestalk Waist Cord  */
UPDATE `item_template` SET `armor` = 75, `BuyPrice` = 247981, `SellPrice` = 49596 WHERE entry=22730;

/*  Cloak of the Devoured  */
UPDATE `item_template` SET `armor` = 66, `BuyPrice` = 371972, `SellPrice` = 74394 WHERE entry=22731;

/*  Outrider's Leather Pants  */
UPDATE `item_template` SET `armor` = 233, `BuyPrice` = 219678, `SellPrice` = 43935 WHERE entry=22740;

/*  Outrider's Lizardhide Pants  */
UPDATE `item_template` SET `armor` = 263, `BuyPrice` = 220461, `SellPrice` = 44092, `spelltrigger_2` = 0 WHERE entry=22741;

/*  Bloodsail Shirt  */
UPDATE `item_template` SET `armor` = 0, `MaxDurability` = 0 WHERE entry=22742;

/*  Bloodsail Boots  */
UPDATE `item_template` SET `armor` = 0, `MaxDurability` = 0 WHERE entry=22744;

/*  Bloodsail Pants  */
UPDATE `item_template` SET `armor` = 0, `MaxDurability` = 0 WHERE entry=22745;

/*  Outrider's Silk Leggings  */
UPDATE `item_template` SET `armor` = 188, `BuyPrice` = 167633, `SellPrice` = 33526 WHERE entry=22747;

/*  Sentinel's Chain Leggings  */
UPDATE `item_template` SET `armor` = 364, `BuyPrice` = 242207, `SellPrice` = 48441 WHERE entry=22748;

/*  Sentinel's Leather Pants  */
UPDATE `item_template` SET `armor` = 233, `BuyPrice` = 211086, `SellPrice` = 42217 WHERE entry=22749;

/*  Sentinel's Lizardhide Pants  */
UPDATE `item_template` SET `armor` = 263, `BuyPrice` = 211869, `SellPrice` = 42373, `spelltrigger_2` = 0 WHERE entry=22750;

/*  Sentinel's Silk Leggings  */
UPDATE `item_template` SET `armor` = 188, `BuyPrice` = 170748, `SellPrice` = 34149 WHERE entry=22752;

/*  Sentinel's Lamellar Legguards  */
UPDATE `item_template` SET `armor` = 646, `BuyPrice` = 171358, `SellPrice` = 34271 WHERE entry=22753;

/*  Sylvan Vest  */
UPDATE `item_template` SET `BuyPrice` = 165824, `SellPrice` = 33164 WHERE entry=22756;

/*  Sylvan Crown  */
UPDATE `item_template` SET `BuyPrice` = 124806, `SellPrice` = 24961 WHERE entry=22757;

/*  Sylvan Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 125255, `SellPrice` = 25051 WHERE entry=22758;

/*  Bramblewood Helm  */
UPDATE `item_template` SET `BuyPrice` = 145950, `SellPrice` = 29190 WHERE entry=22759;

/*  Bramblewood Boots  */
UPDATE `item_template` SET `BuyPrice` = 146512, `SellPrice` = 29302 WHERE entry=22760;

/*  Bramblewood Belt  */
UPDATE `item_template` SET `BuyPrice` = 98039, `SellPrice` = 19607 WHERE entry=22761;

/*  Ironvine Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 157462, `SellPrice` = 31492 WHERE entry=22762;

/*  Ironvine Gloves  */
UPDATE `item_template` SET `BuyPrice` = 79031, `SellPrice` = 15806 WHERE entry=22763;

/*  Ironvine Belt  */
UPDATE `item_template` SET `BuyPrice` = 79322, `SellPrice` = 15864 WHERE entry=22764;

/*  Might of Menethil  */
UPDATE `item_template` SET `BuyPrice` = 1632328, `SellPrice` = 326465, `spellid_1` = 7598, `spelltrigger_1` = 1, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=22798;

/*  Soulseeker  */
UPDATE `item_template` SET `BuyPrice` = 1638641, `SellPrice` = 327728 WHERE entry=22799;

/*  Brimstone Staff  */
UPDATE `item_template` SET `BuyPrice` = 1227490, `SellPrice` = 245498, `dmg_min1` = 140.0, `dmg_max1` = 250.0 WHERE entry=22800;

/*  Spire of Twilight  */
UPDATE `item_template` SET `BuyPrice` = 1232201, `SellPrice` = 246440, `dmg_min1` = 140.0, `dmg_max1` = 250.0 WHERE entry=22801;

/*  Kingsfall  */
UPDATE `item_template` SET `BuyPrice` = 1325927, `SellPrice` = 265185, `spellid_1` = 7597, `spellid_2` = 15464, `spellid_3` = 0, `spelltrigger_3` = 0 WHERE entry=22802;

/*  Midnight Haze  */
UPDATE `item_template` SET `BuyPrice` = 900858, `SellPrice` = 180171, `dmg_min1` = 51.0, `dmg_max1` = 97.0, `spelltrigger_2` = 0 WHERE entry=22803;

/*  Maexxna's Fang  */
UPDATE `item_template` SET `BuyPrice` = 996964, `SellPrice` = 199392 WHERE entry=22804;

/*  Widow's Remorse  */
UPDATE `item_template` SET `BuyPrice` = 911020, `SellPrice` = 182204, `spelltrigger_2` = 0 WHERE entry=22806;

/*  Wraith Blade  */
UPDATE `item_template` SET `BuyPrice` = 1008169, `SellPrice` = 201633, `dmg_min1` = 38.0, `dmg_max1` = 109.0 WHERE entry=22807;

/*  The Castigator  */
UPDATE `item_template` SET `BuyPrice` = 1038929, `SellPrice` = 207785 WHERE entry=22808;

/*  Maul of the Redeemed Crusader  */
UPDATE `item_template` SET `BuyPrice` = 1303372, `SellPrice` = 260674 WHERE entry=22809;

/*  Toxin Injector  */
UPDATE `item_template` SET `BuyPrice` = 711813, `SellPrice` = 142362, `dmg_min1` = 68.0, `dmg_max1` = 128.0, `spelltrigger_2` = 0 WHERE entry=22810;

/*  Soulstring  */
UPDATE `item_template` SET `BuyPrice` = 787600, `SellPrice` = 157520, `dmg_min1` = 103.0, `dmg_max1` = 192.0 WHERE entry=22811;

/*  Nerubian Slavemaker  */
UPDATE `item_template` SET `BuyPrice` = 1059247, `SellPrice` = 211849, `dmg_min1` = 128.0, `dmg_max1` = 238.0 WHERE entry=22812;

/*  Claymore of Unholy Might  */
UPDATE `item_template` SET `BuyPrice` = 1199058, `SellPrice` = 239811, `spelltrigger_2` = 0 WHERE entry=22813;

/*  Severance  */
UPDATE `item_template` SET `BuyPrice` = 1207603, `SellPrice` = 241520 WHERE entry=22815;

/*  Hatchet of Sundered Bone  */
UPDATE `item_template` SET `BuyPrice` = 1068875, `SellPrice` = 213775 WHERE entry=22816;

/*  The Plague Bearer  */
UPDATE `item_template` SET `armor` = 3106, `BuyPrice` = 623585, `SellPrice` = 124717, `block` = 59, `spelltrigger_2` = 0 WHERE entry=22818;

/*  Shield of Condemnation  */
UPDATE `item_template` SET `armor` = 3425, `BuyPrice` = 971128, `SellPrice` = 194225, `block` = 68 WHERE entry=22819;

/*  Wand of Fates  */
UPDATE `item_template` SET `BuyPrice` = 736417, `SellPrice` = 147283 WHERE entry=22820;

/*  Doomfinger  */
UPDATE `item_template` SET `BuyPrice` = 1146691, `SellPrice` = 229338 WHERE entry=22821;

/*  Blood Guard's Chain Greaves  */
UPDATE `item_template` SET `BuyPrice` = 75422, `SellPrice` = 15084, `stat_value2` = 20, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=22843;

/*  Blood Guard's Dragonhide Treads  */
UPDATE `item_template` SET `BuyPrice` = 59605, `SellPrice` = 11921 WHERE entry=22852;

/*  Blood Guard's Dreadweave Walkers  */
UPDATE `item_template` SET `BuyPrice` = 47684, `SellPrice` = 9536 WHERE entry=22855;

/*  Blood Guard's Leather Walkers  */
UPDATE `item_template` SET `BuyPrice` = 60961, `SellPrice` = 12192 WHERE entry=22856;

/*  Blood Guard's Mail Greaves  */
UPDATE `item_template` SET `BuyPrice` = 73757, `SellPrice` = 14751, `spelltrigger_1` = 0 WHERE entry=22857;

/*  Blood Guard's Plate Greaves  */
UPDATE `item_template` SET `BuyPrice` = 49139, `SellPrice` = 9827 WHERE entry=22858;

/*  Blood Guard's Satin Walkers  */
UPDATE `item_template` SET `BuyPrice` = 47684, `SellPrice` = 9536 WHERE entry=22859;

/*  Blood Guard's Silk Walkers  */
UPDATE `item_template` SET `BuyPrice` = 49504, `SellPrice` = 9900 WHERE entry=22860;

/*  Blood Guard's Chain Vices  */
UPDATE `item_template` SET `BuyPrice` = 49869, `SellPrice` = 9973, `stat_value2` = 18, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=22862;

/*  Blood Guard's Dragonhide Grips  */
UPDATE `item_template` SET `BuyPrice` = 39737, `SellPrice` = 7947 WHERE entry=22863;

/*  Blood Guard's Leather Grips  */
UPDATE `item_template` SET `BuyPrice` = 41866, `SellPrice` = 8373 WHERE entry=22864;

/*  Blood Guard's Dreadweave Handwraps  */
UPDATE `item_template` SET `BuyPrice` = 33616, `SellPrice` = 6723 WHERE entry=22865;

/*  Blood Guard's Mail Vices  */
UPDATE `item_template` SET `BuyPrice` = 50789, `SellPrice` = 10157 WHERE entry=22867;

/*  Blood Guard's Plate Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 31789, `SellPrice` = 6357 WHERE entry=22868;

/*  Blood Guard's Satin Handwraps  */
UPDATE `item_template` SET `BuyPrice` = 34106, `SellPrice` = 6821 WHERE entry=22869;

/*  Blood Guard's Silk Handwraps  */
UPDATE `item_template` SET `BuyPrice` = 34226, `SellPrice` = 6845 WHERE entry=22870;

/*  Legionnaire's Plate Hauberk  */
UPDATE `item_template` SET `BuyPrice` = 70603, `SellPrice` = 14120 WHERE entry=22872;

/*  Legionnaire's Plate Leggings  */
UPDATE `item_template` SET `BuyPrice` = 70875, `SellPrice` = 14175 WHERE entry=22873;

/*  Legionnaire's Chain Hauberk  */
UPDATE `item_template` SET `BuyPrice` = 106709, `SellPrice` = 21341, `stat_value1` = 16, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=22874;

/*  Legionnaire's Chain Legguards  */
UPDATE `item_template` SET `BuyPrice` = 107117, `SellPrice` = 21423, `stat_value1` = 16, `spellid_2` = 0, `spelltrigger_2` = 0, `spelltrigger_3` = 0 WHERE entry=22875;

/*  Legionnaire's Mail Hauberk  */
UPDATE `item_template` SET `BuyPrice` = 107525, `SellPrice` = 21505, `spelltrigger_2` = 0 WHERE entry=22876;

/*  Legionnaire's Dragonhide Chestpiece  */
UPDATE `item_template` SET `BuyPrice` = 89935, `SellPrice` = 17987 WHERE entry=22877;

/*  Legionnaire's Dragonhide Leggings  */
UPDATE `item_template` SET `BuyPrice` = 90275, `SellPrice` = 18055 WHERE entry=22878;

/*  Legionnaire's Leather Chestpiece  */
UPDATE `item_template` SET `BuyPrice` = 90615, `SellPrice` = 18123 WHERE entry=22879;

/*  Legionnaire's Leather Legguards  */
UPDATE `item_template` SET `BuyPrice` = 90955, `SellPrice` = 18191 WHERE entry=22880;

/*  Legionnaire's Dreadweave Legguards  */
UPDATE `item_template` SET `BuyPrice` = 73028, `SellPrice` = 14605 WHERE entry=22881;

/*  Legionnaire's Satin Legguards  */
UPDATE `item_template` SET `BuyPrice` = 73300, `SellPrice` = 14660 WHERE entry=22882;

/*  Legionnaire's Silk Legguards  */
UPDATE `item_template` SET `BuyPrice` = 73572, `SellPrice` = 14714 WHERE entry=22883;

/*  Legionnaire's Dreadweave Tunic  */
UPDATE `item_template` SET `BuyPrice` = 73844, `SellPrice` = 14768 WHERE entry=22884;

/*  Legionnaire's Satin Tunic  */
UPDATE `item_template` SET `BuyPrice` = 74108, `SellPrice` = 14821, `spellid_2` = 21626 WHERE entry=22885;

/*  Legionnaire's Silk Tunic  */
UPDATE `item_template` SET `BuyPrice` = 74380, `SellPrice` = 14876 WHERE entry=22886;

/*  Legionnaire's Mail Legguards  */
UPDATE `item_template` SET `BuyPrice` = 111979, `SellPrice` = 22395, `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0 WHERE entry=22887;

/*  Wristguards of Vengeance  */
UPDATE `item_template` SET `armor` = 407, `BuyPrice` = 204017, `SellPrice` = 40803 WHERE entry=22936;

/*  Gem of Nerubis  */
UPDATE `item_template` SET `spelltrigger_3` = 0 WHERE entry=22937;

/*  Cryptfiend Silk Cloak  */
UPDATE `item_template` SET `armor` = 203, `BuyPrice` = 308256, `SellPrice` = 61651 WHERE entry=22938;

/*  Icebane Pauldrons  */
UPDATE `item_template` SET `armor` = 698, `BuyPrice` = 310517, `SellPrice` = 62103 WHERE entry=22940;

/*  Polar Shoulder Pads  */
UPDATE `item_template` SET `armor` = 181, `BuyPrice` = 389522, `SellPrice` = 77904 WHERE entry=22941;

/*  The Widow's Embrace  */
UPDATE `item_template` SET `BuyPrice` = 945573, `SellPrice` = 189114, `dmg_min1` = 42.53, `dmg_max1` = 115.53, `spelltrigger_2` = 0 WHERE entry=22942;

/*  Kiss of the Spider  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 7597, `spellid_2` = 15464 WHERE entry=22954;

/*  Cloak of Suturing  */
UPDATE `item_template` SET `armor` = 63, `BuyPrice` = 310456, `SellPrice` = 62091 WHERE entry=22960;

/*  Band of Reanimation  */
UPDATE `item_template` SET `stat_value1` = 34, `spellid_1` = 0, `spelltrigger_1` = 0, `spelltrigger_2` = 0 WHERE entry=22961;

/*  Icy Scale Spaulders  */
UPDATE `item_template` SET `armor` = 393, `BuyPrice` = 479632, `SellPrice` = 95926 WHERE entry=22967;

/*  Glacial Mantle  */
UPDATE `item_template` SET `armor` = 94, `BuyPrice` = 296950, `SellPrice` = 59390 WHERE entry=22968;

/*  Gluth's Missing Collar  */
UPDATE `item_template` SET `spelltrigger_3` = 0 WHERE entry=22981;

/*  Rime Covered Mantle  */
UPDATE `item_template` SET `armor` = 94, `BuyPrice` = 313787, `SellPrice` = 62757 WHERE entry=22983;

/*  The End of Dreams  */
UPDATE `item_template` SET `BuyPrice` = 989733, `SellPrice` = 197946, `dmg_min1` = 44.0, `dmg_max1` = 120.0, `spellid_2` = 28717 WHERE entry=22988;

/*  Tabard of the Argent Dawn  */
UPDATE `item_template` SET `BuyPrice` = 10000, `SellPrice` = 2500 WHERE entry=22999;

/*  Plated Abomination Ribcage  */
UPDATE `item_template` SET `armor` = 953, `BuyPrice` = 456281, `SellPrice` = 91256 WHERE entry=23000;

/*  Idol of Longevity  */
UPDATE `item_template` SET `BuyPrice` = 292397, `SellPrice` = 58479 WHERE entry=23004;

/*  Libram of Light  */
UPDATE `item_template` SET `BuyPrice` = 294628, `SellPrice` = 58925 WHERE entry=23006;

/*  Wand of the Whispering Dead  */
UPDATE `item_template` SET `BuyPrice` = 744973, `SellPrice` = 148994, `spelltrigger_2` = 0 WHERE entry=23009;

/*  Iblis, Blade of the Fallen Seraph  */
UPDATE `item_template` SET `BuyPrice` = 917949, `SellPrice` = 183589 WHERE entry=23014;

/*  Veil of Eclipse  */
UPDATE `item_template` SET `armor` = 63, `BuyPrice` = 315070, `SellPrice` = 63014 WHERE entry=23017;

/*  Signet of the Fallen Defender  */
UPDATE `item_template` SET `spelltrigger_1` = 0 WHERE entry=23018;

/*  Icebane Helmet  */
UPDATE `item_template` SET `armor` = 757, `BuyPrice` = 317331, `SellPrice` = 63466 WHERE entry=23019;

/*  Polar Helmet  */
UPDATE `item_template` SET `armor` = 196, `BuyPrice` = 398039, `SellPrice` = 79607 WHERE entry=23020;

/*  The Soul Harvester's Bindings  */
UPDATE `item_template` SET `armor` = 55, `BuyPrice` = 213041, `SellPrice` = 42608 WHERE entry=23021;

/*  Sadist's Collar  */
UPDATE `item_template` SET `spelltrigger_3` = 0 WHERE entry=23023;

/*  Warmth of Forgiveness  */
UPDATE `item_template` SET `spelltrigger_3` = 0 WHERE entry=23027;

/*  Noth's Frigid Heart  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `spelltrigger_3` = 0 WHERE entry=23029;

/*  Cloak of the Scourge  */
UPDATE `item_template` SET `armor` = 63, `BuyPrice` = 299089, `SellPrice` = 59817 WHERE entry=23030;

/*  Glacial Headdress  */
UPDATE `item_template` SET `armor` = 102, `BuyPrice` = 301320, `SellPrice` = 60264, `spellcooldown_3` = 0, `spellcategorycooldown_3` = 0 WHERE entry=23032;

/*  Icy Scale Coif  */
UPDATE `item_template` SET `armor` = 425, `BuyPrice` = 465822, `SellPrice` = 93164 WHERE entry=23033;

/*  Preceptor's Hat  */
UPDATE `item_template` SET `armor` = 102, `BuyPrice` = 312809, `SellPrice` = 62561, `spelltrigger_2` = 0, `spelltrigger_3` = 0 WHERE entry=23035;

/*  The Eye of Nerub  */
UPDATE `item_template` SET `BuyPrice` = 1321961, `SellPrice` = 264392, `stat_value1` = 45, `stat_type3` = 0, `stat_value3` = 0, `spellid_1` = 7569, `spellid_2` = 22188, `spellid_3` = 7581, `spellid_4` = 0, `spelltrigger_4` = 0 WHERE entry=23039;

/*  Glyph of Deflection  */
UPDATE `item_template` SET `spellcooldown_2` = 0, `spellcategorycooldown_2` = 0, `spellcategorycooldown_3` = -1, `spellcategory_3` = 0 WHERE entry=23040;

/*  Slayer's Crest  */
UPDATE `item_template` SET `spelltrigger_3` = 0 WHERE entry=23041;

/*  Loatheb's Reflection  */
UPDATE `item_template` SET `spelltrigger_2` = 0, `spellcooldown_3` = 0 WHERE entry=23042;

/*  The Face of Death  */
UPDATE `item_template` SET `armor` = 3494, `BuyPrice` = 874054, `SellPrice` = 174810, `block` = 66 WHERE entry=23043;

/*  Harbinger of Doom  */
UPDATE `item_template` SET `BuyPrice` = 974353, `SellPrice` = 194870 WHERE entry=23044;

/*  Shroud of Dominion  */
UPDATE `item_template` SET `armor` = 68, `BuyPrice` = 412894, `SellPrice` = 82578 WHERE entry=23045;

/*  The Restrained Essence of Sapphiron  */
UPDATE `item_template` SET `spellcooldown_3` = 0 WHERE entry=23046;

/*  Eye of the Dead  */
UPDATE `item_template` SET `spellcategorycooldown_2` = -1, `spellcategory_2` = 0, `spelltrigger_3` = 0 WHERE entry=23047;

/*  Sapphiron's Right Eye  */
UPDATE `item_template` SET `spelltrigger_3` = 0 WHERE entry=23048;

/*  Cloak of the Necropolis  */
UPDATE `item_template` SET `armor` = 68, `BuyPrice` = 432199, `SellPrice` = 86439 WHERE entry=23050;

/*  Stormrage's Talisman of Seething  */
UPDATE `item_template` SET `spelltrigger_3` = 0 WHERE entry=23053;

/*  Gressil, Dawn of Ruin  */
UPDATE `item_template` SET `BuyPrice` = 1391991, `SellPrice` = 278398, `spelltrigger_2` = 0 WHERE entry=23054;

/*  Hammer of the Twisting Nether  */
UPDATE `item_template` SET `BuyPrice` = 1402092, `SellPrice` = 280418, `dmg_min1` = 36.0, `dmg_max1` = 120.0 WHERE entry=23056;

/*  Gem of Trapped Innocents  */
UPDATE `item_template` SET `spelltrigger_3` = 0 WHERE entry=23057;

/*  Life Channeling Necklace  */
UPDATE `item_template` SET `stat_type1` = 0, `stat_value1` = 0, `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 18043, `spelltrigger_1` = 1, `spellid_2` = 18379, `spelltrigger_2` = 1, `StatsCount` = 2 WHERE entry=23058;

/*  Bonescythe Ring  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=23060;

/*  Ring of Faith  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=23061;

/*  Plagueheart Ring  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=23063;

/*  Ring of the Cryptstalker  */
UPDATE `item_template` SET `stat_value1` = 30, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=23067;

/*  Legplates of Carnage  */
UPDATE `item_template` SET `armor` = 815, `BuyPrice` = 406486, `SellPrice` = 81297, `spelltrigger_2` = 0, `spelltrigger_3` = 0 WHERE entry=23068;

/*  Necro-Knight's Garb  */
UPDATE `item_template` SET `armor` = 448, `BuyPrice` = 449768, `SellPrice` = 89953, `spelltrigger_2` = 0 WHERE entry=23069;

/*  Leggings of Polarity  */
UPDATE `item_template` SET `armor` = 112, `BuyPrice` = 451430, `SellPrice` = 90286 WHERE entry=23070;

/*  Leggings of Apocalypse  */
UPDATE `item_template` SET `armor` = 211, `BuyPrice` = 513709, `SellPrice` = 102741 WHERE entry=23071;

/*  Fists of the Unrelenting  */
UPDATE `item_template` SET `armor` = 629, `BuyPrice` = 290197, `SellPrice` = 58039, `DisenchantID` = 0, `spellid_1` = 7219 WHERE entry=23072;

/*  Boots of Displacement  */
UPDATE `item_template` SET `armor` = 166, `BuyPrice` = 388070, `SellPrice` = 77614 WHERE entry=23073;

/*  Death's Bargain  */
UPDATE `item_template` SET `armor` = 3106, `BuyPrice` = 667131, `SellPrice` = 133426, `block` = 59 WHERE entry=23075;

/*  Gauntlets of Undead Slaying  */
UPDATE `item_template` SET `BuyPrice` = 59563, `SellPrice` = 11912, `DisenchantID` = 49, `spelltrigger_2` = 0, `spelltrigger_3` = 0 WHERE entry=23078;

/*  Handwraps of Undead Slaying  */
UPDATE `item_template` SET `BuyPrice` = 69948, `SellPrice` = 13989, `DisenchantID` = 49 WHERE entry=23081;

/*  Handguards of Undead Slaying  */
UPDATE `item_template` SET `BuyPrice` = 84257, `SellPrice` = 16851, `DisenchantID` = 49, `spelltrigger_2` = 0 WHERE entry=23082;

/*  Gloves of Undead Cleansing  */
UPDATE `item_template` SET `BuyPrice` = 56592, `SellPrice` = 11318, `DisenchantID` = 49 WHERE entry=23084;

/*  Robe of Undead Cleansing  */
UPDATE `item_template` SET `BuyPrice` = 113610, `SellPrice` = 22722, `DisenchantID` = 49 WHERE entry=23085;

/*  Breastplate of Undead Slaying  */
UPDATE `item_template` SET `BuyPrice` = 114462, `SellPrice` = 22892, `DisenchantID` = 49, `spelltrigger_2` = 0, `spelltrigger_3` = 0 WHERE entry=23087;

/*  Chestguard of Undead Slaying  */
UPDATE `item_template` SET `BuyPrice` = 172315, `SellPrice` = 34463, `DisenchantID` = 49, `spelltrigger_2` = 0 WHERE entry=23088;

/*  Tunic of Undead Slaying  */
UPDATE `item_template` SET `BuyPrice` = 144129, `SellPrice` = 28825, `DisenchantID` = 49 WHERE entry=23089;

/*  Bracers of Undead Slaying  */
UPDATE `item_template` SET `BuyPrice` = 57864, `SellPrice` = 11572, `DisenchantID` = 49, `spelltrigger_2` = 0, `spelltrigger_3` = 0 WHERE entry=23090;

/*  Bracers of Undead Cleansing  */
UPDATE `item_template` SET `BuyPrice` = 58077, `SellPrice` = 11615, `DisenchantID` = 49 WHERE entry=23091;

/*  Wristguards of Undead Slaying  */
UPDATE `item_template` SET `BuyPrice` = 82383, `SellPrice` = 16476, `DisenchantID` = 49, `spelltrigger_2` = 0 WHERE entry=23092;

/*  Wristwraps of Undead Slaying  */
UPDATE `item_template` SET `BuyPrice` = 73122, `SellPrice` = 14624, `DisenchantID` = 49 WHERE entry=23093;

/*  Staff of Balzaphon  */
UPDATE `item_template` SET `BuyPrice` = 296524, `SellPrice` = 59304, `DisenchantID` = 49 WHERE entry=23124;

/*  Chains of the Lich  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=23125;

/*  Waistband of Balzaphon  */
UPDATE `item_template` SET `BuyPrice` = 47443, `SellPrice` = 9488, `DisenchantID` = 49, `spellid_1` = 9307 WHERE entry=23126;

/*  Cloak of Revanchion  */
UPDATE `item_template` SET `BuyPrice` = 82383, `SellPrice` = 16476, `DisenchantID` = 49 WHERE entry=23127;

/*  The Shadow's Grasp  */
UPDATE `item_template` SET `BuyPrice` = 52306, `SellPrice` = 10461, `DisenchantID` = 49, `spellid_1` = 9327 WHERE entry=23128;

/*  Bracers of Mending  */
UPDATE `item_template` SET `BuyPrice` = 56348, `SellPrice` = 11269, `DisenchantID` = 49 WHERE entry=23129;

/*  Lord Blackwood's Blade  */
UPDATE `item_template` SET `BuyPrice` = 284759, `SellPrice` = 56951, `DisenchantID` = 49, `spelltrigger_1` = 0 WHERE entry=23132;

/*  Lord Blackwood's Buckler  */
UPDATE `item_template` SET `BuyPrice` = 169189, `SellPrice` = 33837, `DisenchantID` = 49 WHERE entry=23139;

/*  Blackwood's Thigh  */
UPDATE `item_template` SET `DisenchantID` = 49 WHERE entry=23156;

/*  Abomination Skin Leggings  */
UPDATE `item_template` SET `BuyPrice` = 6215, `SellPrice` = 1243 WHERE entry=23173;

/*  Lady Falther'ess' Finger  */
UPDATE `item_template` SET `spellid_1` = 7709 WHERE entry=23177;

/*  Mantle of Lady Falther'ess  */
UPDATE `item_template` SET `BuyPrice` = 20447, `SellPrice` = 4089 WHERE entry=23178;

/*  Tabard of the Scarlet Crusade  */
UPDATE `item_template` SET `Quality` = 1 WHERE entry=23192;

/*  Idol of the Moon  */
UPDATE `item_template` SET `BuyPrice` = 93589, `SellPrice` = 18717, `DisenchantID` = 49 WHERE entry=23197;

/*  Idol of Brutality  */
UPDATE `item_template` SET `BuyPrice` = 90827, `SellPrice` = 18165, `DisenchantID` = 49 WHERE entry=23198;

/*  Libram of Divinity  */
UPDATE `item_template` SET `BuyPrice` = 94989, `SellPrice` = 18997, `DisenchantID` = 49 WHERE entry=23201;

/*  Libram of Fervor  */
UPDATE `item_template` SET `BuyPrice` = 95693, `SellPrice` = 19138, `DisenchantID` = 49, `spellid_1` = 60804 WHERE entry=23203;

/*  Girdle of the Mentor  */
UPDATE `item_template` SET `armor` = 536, `BuyPrice` = 222368, `SellPrice` = 44473 WHERE entry=23219;

/*  Crystal Webbed Robe  */
UPDATE `item_template` SET `armor` = 128, `BuyPrice` = 446354, `SellPrice` = 89270, `spelltrigger_2` = 0 WHERE entry=23220;

/*  Misplaced Servo Arm  */
UPDATE `item_template` SET `BuyPrice` = 1015910, `SellPrice` = 203182 WHERE entry=23221;

/*  Ghoul Skin Tunic  */
UPDATE `item_template` SET `armor` = 411, `BuyPrice` = 485750, `SellPrice` = 97150 WHERE entry=23226;

/*  Ring of the Eternal Flame  */
UPDATE `item_template` SET `spellid_1` = 17872 WHERE entry=23237;

/*  Stygian Buckler  */
UPDATE `item_template` SET `armor` = 3106, `BuyPrice` = 642946, `SellPrice` = 128589, `block` = 59, `spelltrigger_2` = 0, `spelltrigger_3` = 0 WHERE entry=23238;

/*  Claw of the Frost Wyrm  */
UPDATE `item_template` SET `BuyPrice` = 1335716, `SellPrice` = 267143 WHERE entry=23242;

/*  Champion's Plate Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 65791, `SellPrice` = 13158 WHERE entry=23243;

/*  Champion's Plate Helm  */
UPDATE `item_template` SET `BuyPrice` = 66027, `SellPrice` = 13205 WHERE entry=23244;

/*  Champion's Chain Helm  */
UPDATE `item_template` SET `BuyPrice` = 91920, `SellPrice` = 18384, `stat_value1` = 18, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=23251;

/*  Champion's Chain Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 92684, `SellPrice` = 18536, `stat_value1` = 18, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=23252;

/*  Champion's Dragonhide Headguard  */
UPDATE `item_template` SET `BuyPrice` = 77190, `SellPrice` = 15438, `spelltrigger_2` = 0 WHERE entry=23253;

/*  Champion's Dragonhide Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 77477, `SellPrice` = 15495 WHERE entry=23254;

/*  Champion's Dreadweave Cowl  */
UPDATE `item_template` SET `BuyPrice` = 62217, `SellPrice` = 12443 WHERE entry=23255;

/*  Champion's Dreadweave Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 62454, `SellPrice` = 12490 WHERE entry=23256;

/*  Champion's Leather Helm  */
UPDATE `item_template` SET `BuyPrice` = 78362, `SellPrice` = 15672 WHERE entry=23257;

/*  Champion's Leather Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 80763, `SellPrice` = 16152 WHERE entry=23258;

/*  Champion's Mail Headguard  */
UPDATE `item_template` SET `BuyPrice` = 97270, `SellPrice` = 19454, `stat_type4` = 0, `stat_value4` = 0, `spellid_1` = 7597, `spellid_2` = 18384 WHERE entry=23259;

/*  Champion's Mail Pauldrons  */
UPDATE `item_template` SET `BuyPrice` = 98058, `SellPrice` = 19611 WHERE entry=23260;

/*  Champion's Satin Hood  */
UPDATE `item_template` SET `BuyPrice` = 65312, `SellPrice` = 13062 WHERE entry=23261;

/*  Champion's Satin Mantle  */
UPDATE `item_template` SET `BuyPrice` = 65548, `SellPrice` = 13109 WHERE entry=23262;

/*  Champion's Silk Cowl  */
UPDATE `item_template` SET `BuyPrice` = 65784, `SellPrice` = 13156 WHERE entry=23263;

/*  Champion's Silk Mantle  */
UPDATE `item_template` SET `BuyPrice` = 66020, `SellPrice` = 13204 WHERE entry=23264;

/*  Knight-Captain's Lamellar Breastplate  */
UPDATE `item_template` SET `BuyPrice` = 70845, `SellPrice` = 14169 WHERE entry=23272;

/*  Knight-Captain's Lamellar Leggings  */
UPDATE `item_template` SET `BuyPrice` = 71110, `SellPrice` = 14222 WHERE entry=23273;

/*  Knight-Lieutenant's Lamellar Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 33256, `SellPrice` = 6651 WHERE entry=23274;

/*  Knight-Lieutenant's Lamellar Sabatons  */
UPDATE `item_template` SET `BuyPrice` = 50069, `SellPrice` = 10013 WHERE entry=23275;

/*  Lieutenant Commander's Lamellar Headguard  */
UPDATE `item_template` SET `BuyPrice` = 64132, `SellPrice` = 12826 WHERE entry=23276;

/*  Lieutenant Commander's Lamellar Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 64368, `SellPrice` = 12873 WHERE entry=23277;

/*  Knight-Lieutenant's Chain Greaves  */
UPDATE `item_template` SET `BuyPrice` = 76266, `SellPrice` = 15253, `stat_value2` = 20, `spellid_1` = 0, `spelltrigger_1` = 0 WHERE entry=23278;

/*  Knight-Lieutenant's Chain Vices  */
UPDATE `item_template` SET `BuyPrice` = 50804, `SellPrice` = 10160, `stat_value2` = 18, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=23279;

/*  Knight-Lieutenant's Dragonhide Grips  */
UPDATE `item_template` SET `BuyPrice` = 42486, `SellPrice` = 8497 WHERE entry=23280;

/*  Knight-Lieutenant's Dragonhide Treads  */
UPDATE `item_template` SET `BuyPrice` = 63961, `SellPrice` = 12792 WHERE entry=23281;

/*  Knight-Lieutenant's Dreadweave Handwraps  */
UPDATE `item_template` SET `BuyPrice` = 34236, `SellPrice` = 6847 WHERE entry=23282;

/*  Knight-Lieutenant's Dreadweave Walkers  */
UPDATE `item_template` SET `BuyPrice` = 51539, `SellPrice` = 10307 WHERE entry=23283;

/*  Knight-Lieutenant's Leather Grips  */
UPDATE `item_template` SET `BuyPrice` = 43099, `SellPrice` = 8619 WHERE entry=23284;

/*  Knight-Lieutenant's Leather Walkers  */
UPDATE `item_template` SET `BuyPrice` = 64880, `SellPrice` = 12976 WHERE entry=23285;

/*  Knight-Lieutenant's Plate Gauntlets  */
UPDATE `item_template` SET `BuyPrice` = 34726, `SellPrice` = 6945 WHERE entry=23286;

/*  Knight-Lieutenant's Plate Greaves  */
UPDATE `item_template` SET `BuyPrice` = 52274, `SellPrice` = 10454 WHERE entry=23287;

/*  Knight-Lieutenant's Satin Handwraps  */
UPDATE `item_template` SET `BuyPrice` = 34969, `SellPrice` = 6993 WHERE entry=23288;

/*  Knight-Lieutenant's Satin Walkers  */
UPDATE `item_template` SET `BuyPrice` = 47634, `SellPrice` = 9526 WHERE entry=23289;

/*  Knight-Lieutenant's Silk Handwraps  */
UPDATE `item_template` SET `BuyPrice` = 32762, `SellPrice` = 6552 WHERE entry=23290;

/*  Knight-Lieutenant's Silk Walkers  */
UPDATE `item_template` SET `BuyPrice` = 49329, `SellPrice` = 9865 WHERE entry=23291;

/*  Knight-Captain's Chain Hauberk  */
UPDATE `item_template` SET `BuyPrice` = 109168, `SellPrice` = 21833, `stat_value1` = 16, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=23292;

/*  Knight-Captain's Chain Legguards  */
UPDATE `item_template` SET `BuyPrice` = 109575, `SellPrice` = 21915, `stat_value1` = 16, `spellid_2` = 0, `spelltrigger_2` = 0, `spelltrigger_3` = 0 WHERE entry=23293;

/*  Knight-Captain's Dragonhide Chestpiece  */
UPDATE `item_template` SET `BuyPrice` = 91653, `SellPrice` = 18330 WHERE entry=23294;

/*  Knight-Captain's Dragonhide Leggings  */
UPDATE `item_template` SET `BuyPrice` = 91983, `SellPrice` = 18396 WHERE entry=23295;

/*  Knight-Captain's Dreadweave Legguards  */
UPDATE `item_template` SET `BuyPrice` = 73859, `SellPrice` = 14771 WHERE entry=23296;

/*  Knight-Captain's Dreadweave Tunic  */
UPDATE `item_template` SET `BuyPrice` = 74130, `SellPrice` = 14826 WHERE entry=23297;

/*  Knight-Captain's Leather Chestpiece  */
UPDATE `item_template` SET `BuyPrice` = 93003, `SellPrice` = 18600 WHERE entry=23298;

/*  Knight-Captain's Leather Legguards  */
UPDATE `item_template` SET `BuyPrice` = 93334, `SellPrice` = 18666 WHERE entry=23299;

/*  Knight-Captain's Plate Hauberk  */
UPDATE `item_template` SET `BuyPrice` = 74939, `SellPrice` = 14987 WHERE entry=23300;

/*  Knight-Captain's Plate Leggings  */
UPDATE `item_template` SET `BuyPrice` = 75211, `SellPrice` = 15042 WHERE entry=23301;

/*  Knight-Captain's Satin Legguards  */
UPDATE `item_template` SET `BuyPrice` = 75483, `SellPrice` = 15096 WHERE entry=23302;

/*  Knight-Captain's Satin Tunic  */
UPDATE `item_template` SET `BuyPrice` = 75747, `SellPrice` = 15149, `spellid_2` = 21626 WHERE entry=23303;

/*  Knight-Captain's Silk Legguards  */
UPDATE `item_template` SET `BuyPrice` = 76019, `SellPrice` = 15203 WHERE entry=23304;

/*  Knight-Captain's Silk Tunic  */
UPDATE `item_template` SET `BuyPrice` = 76291, `SellPrice` = 15258 WHERE entry=23305;

/*  Lieutenant Commander's Chain Helm  */
UPDATE `item_template` SET `BuyPrice` = 92666, `SellPrice` = 18533, `stat_value1` = 18, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=23306;

/*  Lieutenant Commander's Chain Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 93424, `SellPrice` = 18684, `stat_value1` = 18, `spellid_2` = 0, `spelltrigger_2` = 0 WHERE entry=23307;

/*  Lieutenant Commander's Dragonhide Headguard  */
UPDATE `item_template` SET `BuyPrice` = 77804, `SellPrice` = 15560, `spelltrigger_2` = 0 WHERE entry=23308;

/*  Lieutenant Commander's Dragonhide Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 78099, `SellPrice` = 15619 WHERE entry=23309;

/*  Lieutenant Commander's Dreadweave Cowl  */
UPDATE `item_template` SET `BuyPrice` = 62709, `SellPrice` = 12541 WHERE entry=23310;

/*  Lieutenant Commander's Dreadweave Spaulders  */
UPDATE `item_template` SET `BuyPrice` = 62945, `SellPrice` = 12589 WHERE entry=23311;

/*  Lieutenant Commander's Leather Helm  */
UPDATE `item_template` SET `BuyPrice` = 78976, `SellPrice` = 15795 WHERE entry=23312;

/*  Lieutenant Commander's Leather Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 79271, `SellPrice` = 15854 WHERE entry=23313;

/*  Lieutenant Commander's Plate Shoulders  */
UPDATE `item_template` SET `BuyPrice` = 63883, `SellPrice` = 12776 WHERE entry=23315;

/*  Lieutenant Commander's Satin Hood  */
UPDATE `item_template` SET `BuyPrice` = 64119, `SellPrice` = 12823 WHERE entry=23316;

/*  Lieutenant Commander's Satin Mantle  */
UPDATE `item_template` SET `BuyPrice` = 64355, `SellPrice` = 12871 WHERE entry=23317;

/*  Lieutenant Commander's Silk Cowl  */
UPDATE `item_template` SET `BuyPrice` = 64585, `SellPrice` = 12917 WHERE entry=23318;

/*  Lieutenant Commander's Silk Mantle  */
UPDATE `item_template` SET `BuyPrice` = 64821, `SellPrice` = 12964 WHERE entry=23319;

/*  Mantle of the Fire Festival  */
UPDATE `item_template` SET `BuyPrice` = 5, `SellPrice` = 1, `MaxDurability` = 20 WHERE entry=23324;

/*  Grand Marshal's Mageblade  */
UPDATE `item_template` SET `BuyPrice` = 228358, `SellPrice` = 45671, `dmg_min1` = 59.0, `dmg_max1` = 107.0 WHERE entry=23451;

/*  Grand Marshal's Tome of Power  */
UPDATE `item_template` SET `BuyPrice` = 301810, `SellPrice` = 75452 WHERE entry=23452;

/*  Grand Marshal's Tome of Restoration  */
UPDATE `item_template` SET `BuyPrice` = 301810, `SellPrice` = 75452 WHERE entry=23453;

/*  Grand Marshal's Warhammer  */
UPDATE `item_template` SET `BuyPrice` = 228358, `SellPrice` = 45671, `dmg_min1` = 85.8, `dmg_max1` = 154.8 WHERE entry=23454;

/*  Grand Marshal's Demolisher  */
UPDATE `item_template` SET `BuyPrice` = 285269, `SellPrice` = 57053 WHERE entry=23455;

/*  Grand Marshal's Swiftblade  */
UPDATE `item_template` SET `BuyPrice` = 228358, `SellPrice` = 45671 WHERE entry=23456;

/*  High Warlord's Battle Mace  */
UPDATE `item_template` SET `BuyPrice` = 228358, `SellPrice` = 45671, `dmg_min1` = 85.8, `dmg_max1` = 154.8 WHERE entry=23464;

/*  High Warlord's Destroyer  */
UPDATE `item_template` SET `BuyPrice` = 285448, `SellPrice` = 57089 WHERE entry=23465;

/*  High Warlord's Spellblade  */
UPDATE `item_template` SET `BuyPrice` = 228358, `SellPrice` = 45671, `dmg_min1` = 59.0, `dmg_max1` = 107.0 WHERE entry=23466;

/*  High Warlord's Quickblade  */
UPDATE `item_template` SET `BuyPrice` = 228358, `SellPrice` = 45671 WHERE entry=23467;

/*  High Warlord's Tome of Destruction  */
UPDATE `item_template` SET `BuyPrice` = 301810, `SellPrice` = 75452 WHERE entry=23468;

/*  High Warlord's Tome of Mending  */
UPDATE `item_template` SET `BuyPrice` = 301810, `SellPrice` = 75452 WHERE entry=23469;

/*  Larvae of the Great Worm  */
UPDATE `item_template` SET `BuyPrice` = 660885, `SellPrice` = 132177, `dmg_min1` = 103.0, `dmg_max1` = 192.0 WHERE entry=23557;

/*  The Burrower's Shell  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=23558;

/*  Jom Gabbar  */
UPDATE `item_template` SET `spelltrigger_2` = 0 WHERE entry=23570;

/*  The Hungering Cold  */
UPDATE `item_template` SET `BuyPrice` = 1346265, `SellPrice` = 269253, `stat_type2` = 0, `stat_value2` = 0, `spellid_1` = 15763, `spelltrigger_2` = 0 WHERE entry=23577;

/*  Girdle of Elemental Fury  */
UPDATE `item_template` SET `armor` = 301, `BuyPrice` = 321323, `SellPrice` = 64264 WHERE entry=23663;

/*  Pauldrons of Elemental Fury  */
UPDATE `item_template` SET `armor` = 401, `BuyPrice` = 484128, `SellPrice` = 96825 WHERE entry=23664;

/*  Leggings of Elemental Fury  */
UPDATE `item_template` SET `armor` = 468, `BuyPrice` = 642647, `SellPrice` = 128529, `spelltrigger_3` = 0 WHERE entry=23665;

/*  Belt of the Grand Crusader  */
UPDATE `item_template` SET `armor` = 536, `BuyPrice` = 218236, `SellPrice` = 43647 WHERE entry=23666;

/*  Spaulders of the Grand Crusader  */
UPDATE `item_template` SET `armor` = 714, `BuyPrice` = 328600, `SellPrice` = 65720 WHERE entry=23667;

/*  Leggings of the Grand Crusader  */
UPDATE `item_template` SET `armor` = 833, `BuyPrice` = 439751, `SellPrice` = 87950 WHERE entry=23668;

/*  Tabard of Flame  */
UPDATE `item_template` SET `Quality` = 1, `BuyPrice` = 50000, `SellPrice` = 12500 WHERE entry=23705;

/*  Tabard of Frost  */
UPDATE `item_template` SET `Quality` = 1, `BuyPrice` = 50000, `SellPrice` = 12500 WHERE entry=23709;

/*  Perpetual Purple Firework  */
UPDATE `item_template` SET `Quality` = 1, `spellid_1` = 30161, `spellcharges_1` = 0, `spellcooldown_1` = 600000 WHERE entry=23714;

/*  Carved Ogre Idol  */
UPDATE `item_template` SET `Quality` = 1, `spellid_1` = 30167, `spellcharges_1` = 0, `spellcooldown_1` = 3600000 WHERE entry=23716;

/*  Bland Dagger  */
UPDATE `item_template` SET `BuyPrice` = 393470, `SellPrice` = 78694, `dmg_min1` = 82.0, `dmg_max1` = 82.0, `MaxDurability` = 65 WHERE entry=24071;

/*  QATest +1000 Spell Dmg Ring  */
UPDATE `item_template` SET `spellid_1` = 31750, `spelltrigger_1` = 1 WHERE entry=24358;

/*  Insignia of the Horde  */
UPDATE `item_template` SET `BuyPrice` = 15000, `SellPrice` = 3750, `ItemLevel` = 0, `spellid_1` = 42292, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=29592;

/*  Insignia of the Alliance  */
UPDATE `item_template` SET `BuyPrice` = 15000, `SellPrice` = 3750, `ItemLevel` = 0, `spellid_1` = 42292, `spellcategorycooldown_1` = -1, `spellcategory_1` = 0 WHERE entry=29593;

/* =========== NON-EQUIPMENT ITEMS ================ */

/*  Scroll of Strength  */
UPDATE item_template SET ItemLevel = 20, RequiredLevel = 10 WHERE entry=954;

/*  Scroll of Intellect  */
UPDATE item_template SET ItemLevel = 15, RequiredLevel = 5 WHERE entry=955;

/*  Large Moneybag (old)  */
UPDATE item_template SET ItemLevel = 25, bonding = 1, class = 1 WHERE entry=1014;

/*  Tablet of Serpent Totem  */
UPDATE item_template SET BuyPrice = 80 WHERE entry=1029;

/*  Horn of the Black Wolf  */
UPDATE item_template SET Quality = 3, bonding = 1, BuyPrice = 100000 WHERE entry=1041;

/*  Tablet of Restoration III  */
UPDATE item_template SET BuyPrice = 1800 WHERE entry=1057;

/*  Horn of the Timber Wolf  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=1132;

/*  Horn of the Winter Wolf  */
UPDATE item_template SET Quality = 3, bonding = 1, BuyPrice = 100000 WHERE entry=1133;

/*  Horn of the Gray Wolf  */
UPDATE item_template SET Quality = 3, bonding = 1, BuyPrice = 100000 WHERE entry=1134;

/*  Scroll of Stamina  */
UPDATE item_template SET ItemLevel = 15, RequiredLevel = 5 WHERE entry=1180;

/*  Scroll of Spirit  */
UPDATE item_template SET ItemLevel = 10 WHERE entry=1181;

/*  Linen Bandage  */
UPDATE item_template SET BuyPrice = 40, SellPrice = 10 WHERE entry=1251;

/*  Scroll of Agility II  */
UPDATE item_template SET ItemLevel = 35, RequiredLevel = 25 WHERE entry=1477;

/*  Scroll of Stamina II  */
UPDATE item_template SET ItemLevel = 30, RequiredLevel = 20 WHERE entry=1711;

/*  Scroll of Strength II  */
UPDATE item_template SET ItemLevel = 35, RequiredLevel = 25 WHERE entry=2289;

/*  Scroll of Intellect II  */
UPDATE item_template SET ItemLevel = 30, RequiredLevel = 20 WHERE entry=2290;

/*  Light Leather  */
UPDATE item_template SET BuyPrice = 60 WHERE entry=2318;

/*  Black Stallion Bridle  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=2411;

/*  Palomino  */
UPDATE item_template SET Quality = 3, bonding = 1, BuyPrice = 100000, SellPrice = 0 WHERE entry=2413;

/*  Pinto Bridle  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=2414;

/*  White Stallion  */
UPDATE item_template SET Quality = 3, bonding = 1, BuyPrice = 100000, SellPrice = 0 WHERE entry=2415;

/*  Earthroot  */
UPDATE item_template SET ItemLevel = 5 WHERE entry=2449;

/*  Recipe: Elixir of Tongues  */
UPDATE item_template SET subclass = 6, BuyPrice = 160 WHERE entry=2556;

/*  Hot Spices  */
UPDATE item_template SET Quality = 1 WHERE entry=2692;

/*  Deadly Poison  */
UPDATE item_template SET BuyPrice = 120, SellPrice = 30 WHERE entry=2892;

/*  Deadly Poison II  */
UPDATE item_template SET BuyPrice = 220, SellPrice = 55 WHERE entry=2893;

/*  Dust of Decay  */
UPDATE item_template SET Quality = 1, class = 7 WHERE entry=2928;

/*  Essence of Pain  */
UPDATE item_template SET Quality = 1, class = 7 WHERE entry=2930;

/*  Maiden's Anguish  */
UPDATE item_template SET Quality = 1, ItemLevel = 34, class = 7, BuyPrice = 100, SellPrice = 25 WHERE entry=2931;

/*  Scroll of Agility  */
UPDATE item_template SET ItemLevel = 20, RequiredLevel = 10 WHERE entry=3012;

/*  Scroll of Protection  */
UPDATE item_template SET ItemLevel = 10 WHERE entry=3013;

/*  Grimoire of Burning Spirit II  */
UPDATE item_template SET BuyPrice = 1800 WHERE entry=3144;

/*  Grave Moss  */
UPDATE item_template SET ItemLevel = 24 WHERE entry=3369;

/*  Elixir of Ogre's Strength  */
UPDATE item_template SET BuyPrice = 80, SellPrice = 20 WHERE entry=3391;

/*  Dog Whistle  */
UPDATE item_template SET Quality = 2 WHERE entry=3456;

/*  Wool Bandage  */
UPDATE item_template SET BuyPrice = 115, SellPrice = 28 WHERE entry=3530;

/*  Belamoore's Research Journal  */
UPDATE item_template SET Quality = 1, BuyPrice = 0, SellPrice = 0 WHERE entry=3711;

/*  Soothing Spices  */
UPDATE item_template SET Quality = 1 WHERE entry=3713;

/*  Crippling Poison  */
UPDATE item_template SET BuyPrice = 52, SellPrice = 13 WHERE entry=3775;

/*  Crippling Poison II  */
UPDATE item_template SET Quality = 1, class = 0 WHERE entry=3776;

/*  Lethargy Root  */
UPDATE item_template SET class = 7 WHERE entry=3777;

/*  Carefully Folded Note  */
UPDATE item_template SET ItemLevel = 45, RequiredLevel = 45 WHERE entry=4098;

/*  Tome of Conjure Food II  */
UPDATE item_template SET BuyPrice = 500 WHERE entry=4143;

/*  Codex of Heal  */
UPDATE item_template SET BuyPrice = 1300, SellPrice = 325 WHERE entry=4273;

/*  Mechanical Squirrel Box  */
UPDATE item_template SET bonding = 3 WHERE entry=4401;

/*  Accurate Scope  */
UPDATE item_template SET Quality = 1 WHERE entry=4407;

/*  Scroll of Intellect III  */
UPDATE item_template SET ItemLevel = 45, RequiredLevel = 35 WHERE entry=4419;

/*  Scroll of Stamina III  */
UPDATE item_template SET ItemLevel = 45, RequiredLevel = 35 WHERE entry=4422;

/*  Scroll of Agility III  */
UPDATE item_template SET ItemLevel = 50, RequiredLevel = 40 WHERE entry=4425;

/*  Scroll of Strength III  */
UPDATE item_template SET ItemLevel = 50, RequiredLevel = 40 WHERE entry=4426;

/*  Flint and Tinder  */
UPDATE item_template SET Quality = 1 WHERE entry=4471;

/*  Frost Vial  */
UPDATE item_template SET SellPrice = 10 WHERE entry=5024;

/*  Explosive Shell  */
UPDATE item_template SET SellPrice = 25 WHERE entry=5105;

/*  Long Tail Feather  */
UPDATE item_template SET Quality = 1 WHERE entry=5116;

/*  Flash Powder  */
UPDATE item_template SET Quality = 1, Flags = 0 WHERE entry=5140;

/* Blinding Powder */
UPDATE item_template SET subclass = 1, Quality = 1, description = '' WHERE entry=5530;

/*  Book of Healing Touch III  */
UPDATE item_template SET BuyPrice = 900 WHERE entry=5150;

/*  Deathweed  */
UPDATE item_template SET Quality = 1, class = 7 WHERE entry=5173;

/*  Mind-numbing Poison  */
UPDATE item_template SET BuyPrice = 72, SellPrice = 18 WHERE entry=5237;

/*  Glowing Cat Figurine  */
UPDATE item_template SET ItemLevel = 1 WHERE entry=5332;

/*  Dartol's Rod of Transformation  */
UPDATE item_template SET bonding = 1 WHERE entry=5462;

/*  Cowardly Flight Potion  */
UPDATE item_template SET BuyPrice = 340 WHERE entry=5632;

/*  Chestnut Mare Bridle  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=5655;

/*  Brown Horse Bridle  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=5656;

/*  Recipe: Instant Toxin  */
UPDATE item_template SET BuyPrice = 1000 WHERE entry=5657;

/*  Libram: Seal of Righteousness  */
UPDATE item_template SET BuyPrice = 1300 WHERE entry=5660;

/*  Horn of the Red Wolf  */
UPDATE item_template SET Quality = 4, bonding = 1, BuyPrice = 1000000 WHERE entry=5663;

/*  Horn of the Dire Wolf  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=5665;

/*  Horn of the Brown Wolf  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=5668;

/*  Henrig Lonebrow's Journal  */
UPDATE item_template SET ItemLevel = 29, RequiredLevel = 29 WHERE entry=5791;

/*  Kravel's Scheme  */
UPDATE item_template SET bonding = 0 WHERE entry=5826;

/*  Gray Ram  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=5864;

/*  Brown Ram  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=5872;

/*  White Ram  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=5873;

/*  Harness: Black Ram  */
UPDATE item_template SET Quality = 3, bonding = 1, BuyPrice = 100000 WHERE entry=5874;

/*  Harness: Blue Ram  */
UPDATE item_template SET Quality = 3, bonding = 1, BuyPrice = 100000 WHERE entry=5875;

/*  Vimes's Report  */
UPDATE item_template SET bonding = 5 WHERE entry=6075;

/*  Greater Mana Potion  */
UPDATE item_template SET BuyPrice = 480, SellPrice = 120 WHERE entry=6149;

/*  Mystical Powder  */
UPDATE item_template SET SellPrice = 6 WHERE entry=6216;

/*  Enchanted Powder  */
UPDATE item_template SET SellPrice = 125 WHERE entry=6374;

/*  Snakeskin Bag  */
UPDATE item_template SET Quality = 1, bonding = 0 WHERE entry=6446;

/*  Silk Bandage  */
UPDATE item_template SET BuyPrice = 800, SellPrice = 200 WHERE entry=6450;

/*  Stoneskin Totem Scroll  */
UPDATE item_template SET RequiredLevel = 0 WHERE entry=6648;

/*  Searing Totem Scroll  */
UPDATE item_template SET RequiredLevel = 0 WHERE entry=6649;

/*  Instant Poison  */
UPDATE item_template SET BuyPrice = 22, SellPrice = 5 WHERE entry=6947;

/*  Instant Poison II  */
UPDATE item_template SET BuyPrice = 80, SellPrice = 20 WHERE entry=6949;

/*  Instant Poison III  */
UPDATE item_template SET BuyPrice = 120, SellPrice = 30 WHERE entry=6950;

/*  Mind-numbing Poison II  */
UPDATE item_template SET Quality = 1, class = 0 WHERE entry=6951;

/*  Shadowcat Hide  */
UPDATE item_template SET Quality = 1, class = 7, BuyPrice = 1000, SellPrice = 250 WHERE entry=7428;

/*  Gni'kiv Medallion  */
UPDATE item_template SET Quality = 1 WHERE entry=7740;

/*  The Shaft of Tsol  */
UPDATE item_template SET Quality = 1 WHERE entry=7741;

/*  Plans: Ornate Mithril Breastplate  */
UPDATE item_template SET BuyPrice = 10000, SellPrice = 2500 WHERE entry=7986;

/*  Plans: Ornate Mithril Helm  */
UPDATE item_template SET BuyPrice = 10000, SellPrice = 2500 WHERE entry=7987;

/*  Plans: Ornate Mithril Boots  */
UPDATE item_template SET BuyPrice = 10000, SellPrice = 2500 WHERE entry=7988;

/*  Plans: Orcish War Leggings  */
UPDATE item_template SET BuyPrice = 8000, SellPrice = 2000 WHERE entry=7994;

/*  Wicked Claw  */
UPDATE item_template SET Quality = 1, class = 7 WHERE entry=8146;

/*  Wildvine  */
UPDATE item_template SET Quality = 1 WHERE entry=8153;

/*  Jet Black Feather  */
UPDATE item_template SET Quality = 1 WHERE entry=8168;

/*  Thick Wolfhide  */
UPDATE item_template SET Quality = 1, class = 7 WHERE entry=8368;

/*  Large Ruffled Feather  */
UPDATE item_template SET Quality = 0, BuyPrice = 0, SellPrice = 0 WHERE entry=8426;

/*  Cat Carrier (Bombay)  */
UPDATE item_template SET bonding = 3 WHERE entry=8485;

/*  Cat Carrier (Cornish Rex)  */
UPDATE item_template SET bonding = 3 WHERE entry=8486;

/*  Cat Carrier (Orange Tabby)  */
UPDATE item_template SET bonding = 3 WHERE entry=8487;

/*  Cat Carrier (Silver Tabby)  */
UPDATE item_template SET bonding = 3 WHERE entry=8488;

/*  Cat Carrier (White Kitten)  */
UPDATE item_template SET bonding = 3 WHERE entry=8489;

/*  Cat Carrier (Siamese)  */
UPDATE item_template SET bonding = 3 WHERE entry=8490;

/*  Cat Carrier (Black Tabby)  */
UPDATE item_template SET bonding = 3 WHERE entry=8491;

/*  Parrot Cage (Green Wing Macaw)  */
UPDATE item_template SET bonding = 3 WHERE entry=8492;

/*  Parrot Cage (Hyacinth Macaw)  */
UPDATE item_template SET Quality = 1, bonding = 3 WHERE entry=8494;

/*  Parrot Cage (Senegal)  */
UPDATE item_template SET bonding = 3 WHERE entry=8495;

/*  Parrot Cage (Cockatiel)  */
UPDATE item_template SET bonding = 3 WHERE entry=8496;

/*  Rabbit Crate (Snowshoe)  */
UPDATE item_template SET bonding = 3 WHERE entry=8497;

/*  Tiny Emerald Whelpling  */
UPDATE item_template SET bonding = 3 WHERE entry=8498;

/*  Tiny Crimson Whelpling  */
UPDATE item_template SET bonding = 3 WHERE entry=8499;

/*  Great Horned Owl  */
UPDATE item_template SET bonding = 3 WHERE entry=8500;

/*  Hawk Owl  */
UPDATE item_template SET bonding = 3 WHERE entry=8501;

/*  Mageweave Bandage  */
UPDATE item_template SET BuyPrice = 1600, SellPrice = 400 WHERE entry=8544;

/*  Heavy Mageweave Bandage  */
UPDATE item_template SET BuyPrice = 2400, SellPrice = 600 WHERE entry=8545;

/*  Red Mechanostrider  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=8563;

/*  Horn of the Skeletal Mount  */
UPDATE item_template SET Quality = 3, bonding = 1, BuyPrice = 100000 WHERE entry=8583;

/*  Whistle of the Mottled Red Raptor  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=8586;

/*  Whistle of the Emerald Raptor  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=8588;

/*  Old Whistle of the Ivory Raptor  */
UPDATE item_template SET Quality = 3, bonding = 1, BuyPrice = 100000 WHERE entry=8589;

/*  Old Whistle of the Obsidian Raptor  */
UPDATE item_template SET Quality = 3, bonding = 1, BuyPrice = 100000 WHERE entry=8590;

/*  Whistle of the Turquoise Raptor  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=8591;

/*  Whistle of the Violet Raptor  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=8592;

/*  Blue Mechanostrider  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=8595;

/*  Reins of the Spotted Nightsaber  */
UPDATE item_template SET Quality = 3, bonding = 1, BuyPrice = 100000 WHERE entry=8628;

/*  Reins of the Striped Nightsaber  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=8629;

/*  Reins of the Striped Dawnsaber  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=47100;

/*  Reins of the Bengal Tiger  */
UPDATE item_template SET Quality = 3, bonding = 1, BuyPrice = 100000, SellPrice = 0 WHERE entry=8630;

/*  Reins of the Striped Frostsaber  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=8631;

/*  Reins of the Spotted Frostsaber  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=8632;

/*  Reins of the Leopard  */
UPDATE item_template SET Quality = 3, bonding = 1, BuyPrice = 100000, SellPrice = 0 WHERE entry=8633;

/*  Mithril Insignia  */
UPDATE item_template SET bonding = 4 WHERE entry=8663;

/*  Clara's Fresh Apple  */
UPDATE item_template SET BuyPrice = 4, SellPrice = 1 WHERE entry=8683;

/*  Elixir of Water Walking  */
UPDATE item_template SET ItemLevel = 34, RequiredLevel = 24 WHERE entry=8827;

/*  Essence of Agony  */
UPDATE item_template SET Quality = 1, class = 7 WHERE entry=8923;

/*  Dust of Deterioration  */
UPDATE item_template SET Quality = 1, class = 7 WHERE entry=8924;

/*  Instant Poison IV  */
UPDATE item_template SET BuyPrice = 300, SellPrice = 75 WHERE entry=8926;

/*  Instant Poison V  */
UPDATE item_template SET BuyPrice = 400, SellPrice = 100 WHERE entry=8927;

/*  Instant Poison VI  */
UPDATE item_template SET BuyPrice = 500, SellPrice = 125 WHERE entry=8928;

/*  Codex of Flash Heal  */
UPDATE item_template SET BuyPrice = 2900 WHERE entry=8964;

/*  Deadly Poison III  */
UPDATE item_template SET BuyPrice = 400, SellPrice = 100 WHERE entry=8984;

/*  Deadly Poison IV  */
UPDATE item_template SET BuyPrice = 600, SellPrice = 150 WHERE entry=8985;

/*  Magic Resistance Potion  */
UPDATE item_template SET BuyPrice = 80, SellPrice = 20 WHERE entry=9036;

/*  Mind-numbing Poison III  */
UPDATE item_template SET Quality = 1, class = 0 WHERE entry=9186;

/*  Troll Tribal Necklace  */
UPDATE item_template SET bonding = 0 WHERE entry=9259;

/*  Scroll of Protection IV  */
UPDATE item_template SET ItemLevel = 55, RequiredLevel = 45 WHERE entry=10305;

/*  Scroll of Spirit IV  */
UPDATE item_template SET ItemLevel = 55, RequiredLevel = 45 WHERE entry=10306;

/*  Scroll of Stamina IV  */
UPDATE item_template SET ItemLevel = 60, RequiredLevel = 50 WHERE entry=10307;

/*  Scroll of Intellect IV  */
UPDATE item_template SET ItemLevel = 60, RequiredLevel = 50 WHERE entry=10308;

/*  Scroll of Agility IV  */
UPDATE item_template SET ItemLevel = 65, RequiredLevel = 55 WHERE entry=10309;

/*  Scroll of Strength IV  */
UPDATE item_template SET ItemLevel = 65, RequiredLevel = 55 WHERE entry=10310;

/*  Black Kingsnake  */
UPDATE item_template SET bonding = 3 WHERE entry=10360;

/*  Brown Snake  */
UPDATE item_template SET bonding = 3 WHERE entry=10361;

/*  Crimson Snake  */
UPDATE item_template SET bonding = 3 WHERE entry=10392;

/*  Cockroach  */
UPDATE item_template SET bonding = 3 WHERE entry=10393;

/*  Prairie Dog Whistle  */
UPDATE item_template SET bonding = 3 WHERE entry=10394;

/*  Mechanical Chicken  */
UPDATE item_template SET bonding = 3 WHERE entry=10398;

/*  Undamaged Hippogryph Feather  */
UPDATE item_template SET Quality = 1 WHERE entry=10450;

/*  Explosive Arrow  */
UPDATE item_template SET BuyPrice = 300, SellPrice = 0 WHERE entry=10579;

/*  Goblin Engineer Membership Card  */
UPDATE item_template SET Quality = 1 WHERE entry=10791;

/*  Dark Whelpling  */
UPDATE item_template SET bonding = 3 WHERE entry=10822;

/*  Crystallized Note  */
UPDATE item_template SET Quality = 1 WHERE entry=10839;

/*  Crystallized Note  */
UPDATE item_template SET Quality = 1 WHERE entry=10840;

/*  Wound Poison  */
UPDATE item_template SET BuyPrice = 170, SellPrice = 42 WHERE entry=10918;

/*  Wound Poison II  */
UPDATE item_template SET BuyPrice = 270, SellPrice = 67 WHERE entry=10920;

/*  Wound Poison III  */
UPDATE item_template SET BuyPrice = 500, SellPrice = 125 WHERE entry=10921;

/*  Wound Poison IV  */
UPDATE item_template SET BuyPrice = 700, SellPrice = 175 WHERE entry=10922;

/*  Shadowforge Key  */
UPDATE item_template SET bonding = 4 WHERE entry=11000;

/*  Ancona Chicken  */
UPDATE item_template SET bonding = 3 WHERE entry=11023;

/*  Tree Frog Box  */
UPDATE item_template SET bonding = 3 WHERE entry=11026;

/*  Wood Frog Box  */
UPDATE item_template SET bonding = 3 WHERE entry=11027;

/*  Sprite Darter Egg  */
UPDATE item_template SET BuyPrice = 2000, SellPrice = 500 WHERE entry=11474;

/*  Crystal Pylon User's Manual  */
UPDATE item_template SET Quality = 1, bonding = 4 WHERE entry=11482;

/*  Altered Black Dragonflight Molt  */
UPDATE item_template SET RequiredLevel = 0 WHERE entry=11609;

/*  Lesser Arcanum of Rumination  */
UPDATE item_template SET ItemLevel = 50, bonding = 4, RequiredLevel = 0 WHERE entry=11622;

/*  Lesser Arcanum of Constitution  */
UPDATE item_template SET ItemLevel = 50, bonding = 4, RequiredLevel = 0 WHERE entry=11642;

/*  Lesser Arcanum of Tenacity  */
UPDATE item_template SET ItemLevel = 50, bonding = 4, RequiredLevel = 0 WHERE entry=11643;

/*  Lesser Arcanum of Resilience  */
UPDATE item_template SET ItemLevel = 50, bonding = 4, RequiredLevel = 0 WHERE entry=11644;

/*  Lesser Arcanum of Voracity  */
UPDATE item_template SET ItemLevel = 50, bonding = 4, RequiredLevel = 0 WHERE entry=11645;

/*  Lesser Arcanum of Voracity  */
UPDATE item_template SET ItemLevel = 50, bonding = 4, RequiredLevel = 0 WHERE entry=11646;

/*  Lesser Arcanum of Voracity  */
UPDATE item_template SET ItemLevel = 50, bonding = 4, RequiredLevel = 0 WHERE entry=11647;

/*  Lesser Arcanum of Voracity  */
UPDATE item_template SET ItemLevel = 50, bonding = 4, RequiredLevel = 0 WHERE entry=11648;

/*  Lesser Arcanum of Voracity  */
UPDATE item_template SET ItemLevel = 50, bonding = 4, RequiredLevel = 0 WHERE entry=11649;

/*  Shadowforge Torch  */
UPDATE item_template SET BuyPrice = 2846, SellPrice = 711 WHERE entry=11885;

/*  Cat Carrier (Corrupted Kitten)  */
UPDATE item_template SET bonding = 3 WHERE entry=11903;

/*  Worg Carrier  */
UPDATE item_template SET BuyPrice = 6000, SellPrice = 1500 WHERE entry=12264;

/*  Reins of the Ancient Frostsaber  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=12302;

/*  Reins of the Nightsaber  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=12303;

/*  Reins of the Primal Leopard  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=12325;

/*  Reins of the Tawny Sabercat  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=12326;

/*  Reins of the Golden Sabercat  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=12327;

/*  Horn of the Red Wolf  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=12330;

/*  Horn of the Arctic Wolf  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=12351;

/*  White Stallion Bridle  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=12353;

/*  Palomino Bridle  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=12354;

/*  Smolderweb Carrier  */
UPDATE item_template SET BuyPrice = 6000, SellPrice = 1500 WHERE entry=12529;

/*  Attuned Dampener  */
UPDATE item_template SET description = 'This object has been attuned to work against a specific being.' WHERE entry=12650;

/*  Reins of the Winterspring Frostsaber  */
UPDATE item_template SET SellPrice = 0, RequiredLevel = 60 WHERE entry=13086;

/*  Whistle of the Ivory Raptor  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=13317;

/*  Green Mechanostrider  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=13321;

/*  Unpainted Mechanostrider  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=13322;

/*  Purple Mechanostrider  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=13323;

/*  Red and Blue Mechanostrider  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=13324;

/*  Fluorescent Green Mechanostrider  */
UPDATE item_template SET BuyPrice = 100000, RequiredLevel = 40 WHERE entry=13325;

/*  Icy Blue Mechanostrider Mod A  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=13327;

/*  Black Ram  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=13328;

/*  Frost Ram  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=13329;

/*  Red Skeletal Horse  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=13331;

/*  Blue Skeletal Horse  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=13332;

/*  Brown Skeletal Horse  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=13333;

/*  Green Skeletal Warhorse  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=13334;

/*  Deathcharger's Reins  */
UPDATE item_template SET Quality = 3, BuyPrice = 1000000, SellPrice = 250000, RequiredLevel = 60 WHERE entry=13335;

/*  Crystal of Zin-Malor  */
UPDATE item_template SET Quality = 2 WHERE entry=13347;

/*  Greater Shadow Protection Potion  */
UPDATE item_template SET BuyPrice = 400, SellPrice = 100 WHERE entry=13459;

/*  Recipe: Transmute Water to Air  */
UPDATE item_template SET RequiredReputationRank = 0 WHERE entry=13485;

/*  Flask of the Titans  */
UPDATE item_template SET BuyPrice = 20000, SellPrice = 5000 WHERE entry=13510;

/*  Flask of Distilled Wisdom  */
UPDATE item_template SET BuyPrice = 20000, SellPrice = 5000 WHERE entry=13511;

/*  Flask of Supreme Power  */
UPDATE item_template SET BuyPrice = 20000, SellPrice = 5000 WHERE entry=13512;

/*  Flask of Chromatic Resistance  */
UPDATE item_template SET BuyPrice = 20000, SellPrice = 5000 WHERE entry=13513;

/*  Zergling Leash  */
UPDATE item_template SET Quality = 1 WHERE entry=13582;

/*  Panda Collar  */
UPDATE item_template SET Quality = 1 WHERE entry=13583;

/*  Diablo Stone  */
UPDATE item_template SET Quality = 1 WHERE entry=13584;

/*  Skeleton Key  */
UPDATE item_template SET bonding = 4 WHERE entry=13704;

/*  Runecloth Bandage  */
UPDATE item_template SET BuyPrice = 2000, SellPrice = 500 WHERE entry=14529;

/*  Gray Kodo  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=15277;

/*  Brown Kodo  */
UPDATE item_template SET BuyPrice = 100000, SellPrice = 0, RequiredLevel = 40 WHERE entry=15290;

/*  Green Kodo  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=15292;

/*  Teal Kodo  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=15293;

/*  Ironfeather  */
UPDATE item_template SET Quality = 1, class = 7 WHERE entry=15420;

/*  Frostsaber Leather  */
UPDATE item_template SET Quality = 1, class = 7 WHERE entry=15422;

/*  Chimera Leather  */
UPDATE item_template SET Quality = 1, class = 7 WHERE entry=15423;

/*  Rotten Apple  */
UPDATE item_template SET bonding = 4 WHERE entry=15875;

/*  Lifelike Mechanical Toad  */
UPDATE item_template SET bonding = 3 WHERE entry=15996;

/*  Expert Fishing - The Bass and You  */
UPDATE item_template SET RequiredLevel = 20 WHERE entry=16083;

/*  Artisan First Aid - Heal Thyself  */
UPDATE item_template SET SellPrice = 5000 WHERE entry=16085;

/*  Commander's Steed  */
UPDATE item_template SET Quality = 4, bonding = 1, BuyPrice = 1000000 WHERE entry=16339;

/*  Wild Root  */
UPDATE item_template SET SellPrice = 175 WHERE entry=17024;

/*  Shiny Fish Scales  */
UPDATE item_template SET BuyPrice = 30 WHERE entry=17057;

/*  Fish Oil  */
UPDATE item_template SET BuyPrice = 30 WHERE entry=17058;

/*  Elegant Letter  */
UPDATE item_template SET bonding = 4 WHERE entry=17126;

/*  Blue Sack of Gems  */
UPDATE item_template SET bonding = 0 WHERE entry=17962;

/*  Red Moro'gai Gem  */
UPDATE item_template SET Quality = 2 WHERE entry=18153;

/*  Flame Mantle of the Dawn  */
UPDATE item_template SET RequiredLevel = 0 WHERE entry=18169;

/*  Frost Mantle of the Dawn  */
UPDATE item_template SET RequiredLevel = 0 WHERE entry=18170;

/*  Arcane Mantle of the Dawn  */
UPDATE item_template SET RequiredLevel = 0 WHERE entry=18171;

/*  Nature Mantle of the Dawn  */
UPDATE item_template SET RequiredLevel = 0 WHERE entry=18172;

/*  Shadow Mantle of the Dawn  */
UPDATE item_template SET RequiredLevel = 0 WHERE entry=18173;

/*  Chromatic Mantle of the Dawn  */
UPDATE item_template SET RequiredLevel = 0 WHERE entry=18182;

/*  Black War Steed Bridle  */
UPDATE item_template SET BuyPrice = 100000 WHERE entry=18241;

/*  Reins of the Black War Tiger  */
UPDATE item_template SET BuyPrice = 100000 WHERE entry=18242;

/*  Black Battlestrider  */
UPDATE item_template SET BuyPrice = 100000 WHERE entry=18243;

/*  Black War Ram  */
UPDATE item_template SET BuyPrice = 100000 WHERE entry=18244;

/*  Horn of the Black War Wolf  */
UPDATE item_template SET BuyPrice = 100000 WHERE entry=18245;

/*  Whistle of the Black War Raptor  */
UPDATE item_template SET BuyPrice = 100000 WHERE entry=18246;

/*  Black War Kodo  */
UPDATE item_template SET BuyPrice = 100000 WHERE entry=18247;

/*  Red Skeletal Warhorse  */
UPDATE item_template SET BuyPrice = 100000 WHERE entry=18248;

/*  Major Rejuvenation Potion  */
UPDATE item_template SET BuyPrice = 60, SellPrice = 15 WHERE entry=18253;

/*  Imbued Vial  */
UPDATE item_template SET BuyPrice = 30000, SellPrice = 1500 WHERE entry=18256;

/*  Formula: Enchant Weapon - Healing Power  */
UPDATE item_template SET bonding = 1 WHERE entry=18260;

/*  Arcanum of Rapidity  */
UPDATE item_template SET ItemLevel = 50, RequiredLevel = 0 WHERE entry=18329;

/*  Arcanum of Focus  */
UPDATE item_template SET ItemLevel = 50, RequiredLevel = 0 WHERE entry=18330;

/*  Arcanum of Protection  */
UPDATE item_template SET ItemLevel = 50, RequiredLevel = 0 WHERE entry=18331;

/*  Heated Ancient Blade  */
UPDATE item_template SET Quality = 4 WHERE entry=18488;

/*  Treated Ancient Blade  */
UPDATE item_template SET Quality = 4 WHERE entry=18492;

/*  Vessel of Rebirth DEPRECATED  */
UPDATE item_template SET RequiredLevel = 100 WHERE entry=18565;

/*  Essence of the Firelord DEPRECATED  */
UPDATE item_template SET Quality = 5 WHERE entry=18566;

/*  Alliance Battle Standard  */
UPDATE item_template SET BuyPrice = 50000, SellPrice = 12500 WHERE entry=18606;

/*  Horde Battle Standard  */
UPDATE item_template SET BuyPrice = 50000, SellPrice = 12500 WHERE entry=18607;

/*  Mature Black Dragon Sinew  */
UPDATE item_template SET bonding = 1 WHERE entry=18705;

/*  Reins of the Swift Frostsaber  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=18766;

/*  Reins of the Swift Mistsaber  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=18767;

/*  Reins of the Swift Dawnsaber  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=18768;

/*  Swift Green Mechanostrider  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=18772;

/*  Swift White Mechanostrider  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=18773;

/*  Swift Yellow Mechanostrider  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=18774;

/*  Swift Palomino  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=18776;

/*  Swift Brown Steed  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=18777;

/*  Swift White Steed  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=18778;

/*  Swift White Ram  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=18785;

/*  Swift Brown Ram  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=18786;

/*  Swift Gray Ram  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=18787;

/*  Swift Blue Raptor  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=18788;

/*  Swift Olive Raptor  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=18789;

/*  Swift Orange Raptor  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=18790;

/*  Purple Skeletal Warhorse  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=18791;

/*  Great White Kodo  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=18793;

/*  Great Brown Kodo  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=18794;

/*  Great Gray Kodo  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=18795;

/*  Horn of the Swift Brown Wolf  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=18796;

/*  Horn of the Swift Timber Wolf  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=18797;

/*  Horn of the Swift Gray Wolf  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=18798;

/*  Combat Mana Potion  */
UPDATE item_template SET BuyPrice = 1100, SellPrice = 275 WHERE entry=18841;

/*  Reins of the Swift Stormsaber  */
UPDATE item_template SET BuyPrice = 1000000, SellPrice = 0, RequiredLevel = 60 WHERE entry=18902;

/*  Turtle Egg (Loggerhead)  */
UPDATE item_template SET BuyPrice = 4000 WHERE entry=18964;

/*  Essence of the Firelord  */
UPDATE item_template SET Quality = 5 WHERE entry=19017;

/*  Horn of the Frostwolf Howler  */
UPDATE item_template SET BuyPrice = 100000, RequiredLevel = 60 WHERE entry=19029;

/*  Stormpike Battle Charger  */
UPDATE item_template SET BuyPrice = 100000, RequiredLevel = 60 WHERE entry=19030;

/*  Stormpike Battle Standard  */
UPDATE item_template SET BuyPrice = 50000, SellPrice = 12500 WHERE entry=19045;

/*  Frostwolf Battle Standard  */
UPDATE item_template SET BuyPrice = 50000, SellPrice = 12500 WHERE entry=19046;

/*  Beasts Deck  */
UPDATE item_template SET ItemLevel = 1, BuyPrice = 400000, SellPrice = 100000 WHERE entry=19228;

/*  Warlords Deck  */
UPDATE item_template SET ItemLevel = 1, BuyPrice = 400000, SellPrice = 100000 WHERE entry=19257;

/*  Elementals Deck  */
UPDATE item_template SET ItemLevel = 1, BuyPrice = 400000, SellPrice = 100000 WHERE entry=19267;

/*  Portals Deck  */
UPDATE item_template SET ItemLevel = 1, BuyPrice = 400000, SellPrice = 100000 WHERE entry=19277;

/*  Harpy Hide Quiver  */
UPDATE item_template SET BuyPrice = 350000, SellPrice = 87500 WHERE entry=19319;

/*  Gnoll Skin Bandolier  */
UPDATE item_template SET BuyPrice = 350000, SellPrice = 87500 WHERE entry=19320;

/*  Swift Razzashi Raptor  */
UPDATE item_template SET RequiredLevel = 60 WHERE entry=19872;

/*  Swift Zulian Tiger  */
UPDATE item_template SET RequiredLevel = 60 WHERE entry=19902;

/*  Zandalar Signet of Mojo  */
UPDATE item_template SET RequiredLevel = 0 WHERE entry=20076;

/*  Zandalar Signet of Might  */
UPDATE item_template SET RequiredLevel = 0 WHERE entry=20077;

/*  Zandalar Signet of Serenity  */
UPDATE item_template SET RequiredLevel = 0 WHERE entry=20078;

/*  Foror's Fabled Steed  */
UPDATE item_template SET BuyPrice = 10000000, RequiredLevel = 60 WHERE entry=20221;

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
UPDATE item_template SET Quality = 4, description = 'Only ONE May Rise... (and consequently, only ONE may loot this head)' WHERE entry=20383;

/*  Twilight Lexicon - Chapter 1  */
UPDATE item_template SET bonding = 5 WHERE entry=20394;

/*  Twilight Lexicon - Chapter 2  */
UPDATE item_template SET bonding = 5 WHERE entry=20395;

/*  Twilight Lexicon - Chapter 3  */
UPDATE item_template SET bonding = 5 WHERE entry=20396;

/*  Geologist's Transcription Kit  */
UPDATE item_template SET bonding = 1 WHERE entry=20453;

/*  Orange Murloc Egg  */
UPDATE item_template SET Quality = 1 WHERE entry=20651;

/*  Disgusting Oozeling  */
UPDATE item_template SET bonding = 3 WHERE entry=20769;

/*  Deadly Poison V  */
UPDATE item_template SET BuyPrice = 600, SellPrice = 150 WHERE entry=20844;

/*  Golden Token  */
UPDATE item_template SET RequiredLevel = 58 WHERE entry=20880;

/*  Hive'Zora Scout Report  */
UPDATE item_template SET ItemLevel = 60, RequiredLevel = 58 WHERE entry=21158;

/*  Hive'Regal Scout Report  */
UPDATE item_template SET ItemLevel = 60, RequiredLevel = 58 WHERE entry=21160;

/*  Hive'Ashi Scout Report  */
UPDATE item_template SET ItemLevel = 60, RequiredLevel = 58 WHERE entry=21161;

/*  Baby Shark  */
UPDATE item_template SET bonding = 3, BuyPrice = 6000 WHERE entry=21168;

/*  Black Qiraji Resonating Crystal  */
UPDATE item_template SET RequiredLevel = 60 WHERE entry=21176;

/*  Fresh Holly  */
UPDATE item_template SET RequiredLevel = 40 WHERE entry=21212;

/*  Preserved Holly  */
UPDATE item_template SET RequiredLevel = 40 WHERE entry=21213;

/*  Blue Qiraji Resonating Crystal  */
UPDATE item_template SET RequiredLevel = 60 WHERE entry=21218;

/*  Tranquil Mechanical Yeti  */
UPDATE item_template SET bonding = 3 WHERE entry=21277;

/*  Red Qiraji Resonating Crystal  */
UPDATE item_template SET RequiredLevel = 60 WHERE entry=21321;

/*  Green Qiraji Resonating Crystal  */
UPDATE item_template SET RequiredLevel = 60 WHERE entry=21323;

/*  Yellow Qiraji Resonating Crystal  */
UPDATE item_template SET RequiredLevel = 60 WHERE entry=21324;

/*  Valentine's Day Card  */
UPDATE item_template SET bonding = 0 WHERE entry=22059;

/*  Pink Murloc Egg  */
UPDATE item_template SET Quality = 1 WHERE entry=22114;

/*  Silver Shafted Arrow  */
UPDATE item_template SET bonding = 1 WHERE entry=22200;

/*  Buttermilk Delight  */
UPDATE item_template SET bonding = 1 WHERE entry=22236;

/*  Dark Desire  */
UPDATE item_template SET bonding = 1 WHERE entry=22237;

/*  Very Berry Cream  */
UPDATE item_template SET bonding = 1 WHERE entry=22238;

/*  Sweet Surprise  */
UPDATE item_template SET bonding = 1 WHERE entry=22239;

/*  Crypt Fiend Parts  */
UPDATE item_template SET BuyPrice = 0, SellPrice = 0 WHERE entry=22525;

/*  Bone Fragments  */
UPDATE item_template SET BuyPrice = 0, SellPrice = 0 WHERE entry=22526;

/*  Core of Elements  */
UPDATE item_template SET BuyPrice = 0, SellPrice = 0 WHERE entry=22527;

/*  Dark Iron Scraps  */
UPDATE item_template SET BuyPrice = 0, SellPrice = 0 WHERE entry=22528;

/*  Savage Frond  */
UPDATE item_template SET BuyPrice = 0, SellPrice = 0 WHERE entry=22529;

/*  Steam Tonk Controller  */
UPDATE item_template SET bonding = 0 WHERE entry=22728;

/*  Staff Head of Atiesh  */
UPDATE item_template SET Quality = 5 WHERE entry=22733;

/*  Base of Atiesh  */
UPDATE item_template SET Quality = 5 WHERE entry=22734;

/*  White Murloc Egg  */
UPDATE item_template SET Quality = 1 WHERE entry=22780;

/*  Polar Bear Collar  */
UPDATE item_template SET bonding = 1 WHERE entry=22781;

/*  Captured Flame  */
UPDATE item_template SET Quality = 1 WHERE entry=23083;

/*  Consecrated Sharpening Stone  */
UPDATE item_template SET BuyPrice = 160, SellPrice = 40 WHERE entry=23122;

/*  Blessed Wizard Oil  */
UPDATE item_template SET BuyPrice = 160, SellPrice = 40 WHERE entry=23123;

/*  Foror's Crate of Endless Resist Gear Storage  */
UPDATE item_template SET RequiredLevel = 60 WHERE entry=23162;

/*  Bag of Smorc Ingredients  */
UPDATE item_template SET BuyPrice = 2000, SellPrice = 500 WHERE entry=23215;

/*  iCoke Gift Box Voucher  */
UPDATE item_template SET bonding = 5 WHERE entry=23227;

/*  Fiery Festival Brew  */
UPDATE item_template SET RequiredLevel = 0 WHERE entry=23246;

/*  Burning Blossom  */
UPDATE item_template SET bonding = 0 WHERE entry=23247;

/*  Crystal Flake Throat Lozenge  */
UPDATE item_template SET BuyPrice = 3000 WHERE entry=23683;

/*  Crystal Infused Bandage  */
UPDATE item_template SET BuyPrice = 6000 WHERE entry=23684;

/*  White Tiger Cub  */
UPDATE item_template SET Quality = 1, BuyPrice = 5000, SellPrice = 1250 WHERE entry=23712;

/*  Hippogryph Hatchling  */
UPDATE item_template SET Quality = 1, BuyPrice = 5000, SellPrice = 1250 WHERE entry=23713;

/*  Riding Turtle  */
UPDATE item_template SET Quality = 1, RequiredLevel = 20 WHERE entry=23720;

/* Correct drop rate for Mature Blue Dragon Sinew */
UPDATE `creature_loot_template` SET `chance` = 0.5 WHERE `item` = 18704 AND `entry` IN (7435, 7436, 7437);

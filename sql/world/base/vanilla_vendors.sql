/* NPC Tharynn Bouden - 66 */
/* Remove non-Vanilla item Simple Flour */
DELETE FROM `npc_vendor` WHERE `entry` = 66 AND `item` = 30817;


/* NPC Brog Hamfist - 151 */
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 151 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (151, 4471, 0, 0);


/* NPC Mabel Solaj - 227 */
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 227 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (227, 4471, 0, 0);


/* NPC Avette Fellwood - 228 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 228 AND `item` = 28053;


/* NPC Karm Ironquill - 372 */
/* Remove non-Vanilla item Jeweler's Kit */
DELETE FROM `npc_vendor` WHERE `entry` = 372 AND `item` = 20815;
/* Remove non-Vanilla item Simple Grinder */
DELETE FROM `npc_vendor` WHERE `entry` = 372 AND `item` = 20824;


/* NPC Katie Hunter - 384 */
/* Add Missing Vanilla item White Stallion Bridle */
DELETE FROM `npc_vendor` WHERE `entry` = 384 AND `item` = 12353;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (384, 12353, 0, 0);
/* Add Missing Vanilla item Palomino Bridle */
DELETE FROM `npc_vendor` WHERE `entry` = 384 AND `item` = 12354;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (384, 12354, 0, 0);


/* NPC Elaine Trias - 483 */
/* Remove non-Vanilla item Garadar Sharp */
DELETE FROM `npc_vendor` WHERE `entry` = 483 AND `item` = 27857;
/* Remove non-Vanilla item Sour Goat Cheese */
DELETE FROM `npc_vendor` WHERE `entry` = 483 AND `item` = 33443;
/* Remove non-Vanilla item Briny Hardcheese */
DELETE FROM `npc_vendor` WHERE `entry` = 483 AND `item` = 35952;


/* NPC Quartermaster Lewis - 491 */
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 491 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (491, 4471, 0, 0);


/* NPC Corporal Bluth - 734 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 734 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 734 AND `item` = 28060;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 734 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (734, 4471, 0, 0);


/* NPC Amy Davenport - 777 */
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 777 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (777, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 777 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (777, 2928, 0, 0);


/* NPC Kimberly Hiett - 789 */
/* Remove non-Vanilla item Jagged Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 789 AND `item` = 11285;
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 789 AND `item` = 28053;


/* NPC Karen Taylor - 790 */
/* Remove non-Vanilla item Jeweler's Kit */
DELETE FROM `npc_vendor` WHERE `entry` = 790 AND `item` = 20815;
/* Remove non-Vanilla item Simple Grinder */
DELETE FROM `npc_vendor` WHERE `entry` = 790 AND `item` = 20824;


/* NPC Lindsay Ashlock - 791 */
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 791 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (791, 4471, 0, 0);


/* NPC Gina MacGregor - 843 */
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 843 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (843, 2692, 0, 0);


/* NPC Antonio Perelli - 844 */
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 844 AND `item` = 40411;


/* NPC Dawn Brightstar - 958 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 958 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 958 AND `item` = 22148;
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 958 AND `item` = 40411;
/* Add Missing Vanilla item Arcane Dust */
DELETE FROM `npc_vendor` WHERE `entry` = 958 AND `item` = 17019;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (958, 17019, 0, 0);


/* NPC Gunder Thornbush - 960 */
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 960 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (960, 2692, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 960 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (960, 3713, 0, 0);


/* NPC Thultazor - 983 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 983 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 983 AND `item` = 22148;
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 983 AND `item` = 40411;
/* Add Missing Vanilla item Arcane Dust */
DELETE FROM `npc_vendor` WHERE `entry` = 983 AND `item` = 17019;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (983, 17019, 0, 0);


/* NPC Banalash - 989 */
/* Remove non-Vanilla item Rune Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 989 AND `item` = 14341;
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 989 AND `item` = 18256;
/* Add Missing Vanilla item Bleach */
DELETE FROM `npc_vendor` WHERE `entry` = 989 AND `item` = 2324;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (989, 2324, 0, 0);
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 989 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (989, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 989 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (989, 2928, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 989 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (989, 3713, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 989 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (989, 3777, 0, 0);


/* NPC Nerrist - 1148 */
/* Remove non-Vanilla item Blacksmith Hammer */
DELETE FROM `npc_vendor` WHERE `entry` = 1148 AND `item` = 5956;
/* Remove non-Vanilla item Rune Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 1148 AND `item` = 14341;
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 1148 AND `item` = 18256;
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 1148 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1148, 2928, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 1148 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1148, 3713, 0, 0);
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 1148 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1148, 2692, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 1148 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1148, 3777, 0, 0);


/* NPC Uthok - 1149 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 1149 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 1149 AND `item` = 28060;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 1149 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1149, 4471, 0, 0);


/* NPC Drake Lindgren - 1250 */
/* Remove non-Vanilla item Simple Flour */
DELETE FROM `npc_vendor` WHERE `entry` = 1250 AND `item` = 30817;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 1250 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1250, 4471, 0, 0);


/* NPC Edna Mullby - 1286 */
/* Remove non-Vanilla item Rune Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 1286 AND `item` = 14341;
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 1286 AND `item` = 18256;
/* Add Missing Vanilla item Green Dye */
DELETE FROM `npc_vendor` WHERE `entry` = 1286 AND `item` = 2605;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1286, 2605, 0, 0);
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 1286 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1286, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 1286 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1286, 2928, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 1286 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1286, 3713, 0, 0);
/* Add Missing Vanilla item Blue Dye */
DELETE FROM `npc_vendor` WHERE `entry` = 1286 AND `item` = 6260;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1286, 6260, 0, 0);
/* Add Missing Vanilla item Bleach */
DELETE FROM `npc_vendor` WHERE `entry` = 1286 AND `item` = 2324;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1286, 2324, 0, 0);
/* Add Missing Vanilla item Shiny Bauble */
DELETE FROM `npc_vendor` WHERE `entry` = 1286 AND `item` = 6529;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1286, 6529, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 1286 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1286, 3777, 0, 0);


/* NPC Keldric Boucher - 1257 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 1257 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 1257 AND `item` = 22148;
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 1257 AND `item` = 40411;
/* Add Missing Vanilla item Arcane Dust */
DELETE FROM `npc_vendor` WHERE `entry` = 1257 AND `item` = 17019;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1257, 17019, 0, 0);


/* NPC Veron Amberstill - 1261 */
/* Add Missing Vanilla item Black Ram */
DELETE FROM `npc_vendor` WHERE `entry` = 1261 AND `item` = 13328;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1261, 13328, 0, 0);
/* Add Missing Vanilla item Frost Ram */
DELETE FROM `npc_vendor` WHERE `entry` = 1261 AND `item` = 13329;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1261, 13329, 0, 0);


/* NPC Kyra Boucher - 1275 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 1275 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 1275 AND `item` = 22148;
/* Add Missing Vanilla item Arcane Dust */
DELETE FROM `npc_vendor` WHERE `entry` = 1275 AND `item` = 17019;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1275, 17019, 0, 0);


/* NPC Thurman Mullby - 1285 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 1285 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 1285 AND `item` = 28060;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 1285 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1285, 4471, 0, 0);


/* NPC Frederick Stover - 1298 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 1298 AND `item` = 28053;


/* NPC Charys Yserian - 1307 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 1307 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 1307 AND `item` = 22148;
/* Add Missing Vanilla item Arcane Dust */
DELETE FROM `npc_vendor` WHERE `entry` = 1307 AND `item` = 17019;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1307, 17019, 0, 0);


/* NPC Owen Vaughn - 1308 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 1308 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 1308 AND `item` = 22148;
/* Add Missing Vanilla item Arcane Dust */
DELETE FROM `npc_vendor` WHERE `entry` = 1308 AND `item` = 17019;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1308, 17019, 0, 0);


/* NPC Maria Lumere - 1313 */
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 1313 AND `item` = 40411;


/* NPC Jessara Cordell - 1318 */
/* Add Missing Vanilla item Formula: Enchant Chest - Minor Mana */
DELETE FROM `npc_vendor` WHERE `entry` = 1318 AND `item` = 6342;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1318, 6342, 1, 7200);


/* NPC Jasper Fel - 1325 */
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 1325 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1325, 2928, 0, 0);
/* Add Missing Vanilla item Essence of Pain */
DELETE FROM `npc_vendor` WHERE `entry` = 1325 AND `item` = 2930;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1325, 2930, 0, 0);
/* Add Missing Vanilla item Empty Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 1325 AND `item` = 3371;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1325, 3371, 0, 0);
/* Add Missing Vanilla item Leaded Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 1325 AND `item` = 3372;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1325, 3372, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 1325 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1325, 3777, 0, 0);
/* Add Missing Vanilla item Thieves' Tools */
DELETE FROM `npc_vendor` WHERE `entry` = 1325 AND `item` = 5060;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1325, 5060, 0, 0);
/* Add Missing Vanilla item Flash Powder */
DELETE FROM `npc_vendor` WHERE `entry` = 1325 AND `item` = 5140;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1325, 5140, 0, 0);
/* Add Missing Vanilla item Deathweed */
DELETE FROM `npc_vendor` WHERE `entry` = 1325 AND `item` = 5173;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1325, 5173, 0, 0);
/* Add Missing Vanilla item Essence of Agony */
DELETE FROM `npc_vendor` WHERE `entry` = 1325 AND `item` = 8923;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1325, 8923, 0, 0);
/* Add Missing Vanilla item Dust of Deterioration */
DELETE FROM `npc_vendor` WHERE `entry` = 1325 AND `item` = 8924;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1325, 8924, 0, 0);
/* Add Missing Vanilla item Crystal Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 1325 AND `item` = 8925;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1325, 8925, 0, 0);


/* NPC Sloan McCoy - 1326 */
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 1326 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1326, 2928, 0, 0);
/* Add Missing Vanilla item Essence of Pain */
DELETE FROM `npc_vendor` WHERE `entry` = 1326 AND `item` = 2930;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1326, 2930, 0, 0);
/* Add Missing Vanilla item Empty Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 1326 AND `item` = 3371;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1326, 3371, 0, 0);
/* Add Missing Vanilla item Leaded Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 1326 AND `item` = 3372;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1326, 3372, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 1326 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1326, 3777, 0, 0);
/* Add Missing Vanilla item Thieves' Tools */
DELETE FROM `npc_vendor` WHERE `entry` = 1326 AND `item` = 5060;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1326, 5060, 0, 0);
/* Add Missing Vanilla item Flash Powder */
DELETE FROM `npc_vendor` WHERE `entry` = 1326 AND `item` = 5140;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1326, 5140, 0, 0);
/* Add Missing Vanilla item Deathweed */
DELETE FROM `npc_vendor` WHERE `entry` = 1326 AND `item` = 5173;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1326, 5173, 0, 0);
/* Add Missing Vanilla item Essence of Agony */
DELETE FROM `npc_vendor` WHERE `entry` = 1326 AND `item` = 8923;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1326, 8923, 0, 0);
/* Add Missing Vanilla item Dust of Deterioration */
DELETE FROM `npc_vendor` WHERE `entry` = 1326 AND `item` = 8924;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1326, 8924, 0, 0);
/* Add Missing Vanilla item Crystal Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 1326 AND `item` = 8925;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1326, 8925, 0, 0);


/* NPC Alexandra Bolero - 1347 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 1347 AND `item` = 38426;


/* NPC Brother Cassius - 1351 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 1351 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 1351 AND `item` = 22148;
/* Add Missing Vanilla item Arcane Dust */
DELETE FROM `npc_vendor` WHERE `entry` = 1351 AND `item` = 17019;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1351, 17019, 0, 0);


/* NPC Neal Allen - 1448 */
/* Remove non-Vanilla item Hair Trigger */
DELETE FROM `npc_vendor` WHERE `entry` = 1448 AND `item` = 39684;
/* Remove non-Vanilla item Walnut Stock */
DELETE FROM `npc_vendor` WHERE `entry` = 1448 AND `item` = 40533;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 1448 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1448, 4471, 0, 0);


/* NPC Gruham Rumdnul - 1452 */
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 1452 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1452, 4471, 0, 0);


/* NPC Dewin Shimmerdawn - 1453 */
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 1453 AND `item` = 40411;


/* NPC Jennabink Powerseam - 1454 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 1454 AND `item` = 38426;


/* NPC Kersok Prond - 1456 */
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 1456 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1456, 2692, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 1456 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1456, 3713, 0, 0);


/* NPC Samor Festivus - 1457 */
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 1457 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1457, 2928, 0, 0);
/* Add Missing Vanilla item Essence of Pain */
DELETE FROM `npc_vendor` WHERE `entry` = 1457 AND `item` = 2930;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1457, 2930, 0, 0);
/* Add Missing Vanilla item Empty Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 1457 AND `item` = 3371;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1457, 3371, 0, 0);
/* Add Missing Vanilla item Leaded Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 1457 AND `item` = 3372;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1457, 3372, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 1457 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1457, 3777, 0, 0);
/* Add Missing Vanilla item Thieves' Tools */
DELETE FROM `npc_vendor` WHERE `entry` = 1457 AND `item` = 5060;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1457, 5060, 0, 0);
/* Add Missing Vanilla item Flash Powder */
DELETE FROM `npc_vendor` WHERE `entry` = 1457 AND `item` = 5140;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1457, 5140, 0, 0);
/* Add Missing Vanilla item Deathweed */
DELETE FROM `npc_vendor` WHERE `entry` = 1457 AND `item` = 5173;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1457, 5173, 0, 0);
/* Add Missing Vanilla item Essence of Agony */
DELETE FROM `npc_vendor` WHERE `entry` = 1457 AND `item` = 8923;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1457, 8923, 0, 0);
/* Add Missing Vanilla item Dust of Deterioration */
DELETE FROM `npc_vendor` WHERE `entry` = 1457 AND `item` = 8924;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1457, 8924, 0, 0);
/* Add Missing Vanilla item Crystal Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 1457 AND `item` = 8925;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1457, 8925, 0, 0);


/* NPC Naela Trance - 1459 */
/* Add Missing Vanilla item Light Quiver */
DELETE FROM `npc_vendor` WHERE `entry` = 1459 AND `item` = 2101;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1459, 2101, 0, 0);
/* Add Missing Vanilla item Worn Shortbow */
DELETE FROM `npc_vendor` WHERE `entry` = 1459 AND `item` = 2504;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1459, 2504, 0, 0);
/* Add Missing Vanilla item Polished Shortbow */
DELETE FROM `npc_vendor` WHERE `entry` = 1459 AND `item` = 2505;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1459, 2505, 0, 0);
/* Add Missing Vanilla item Hornwood Recurve Bow */
DELETE FROM `npc_vendor` WHERE `entry` = 1459 AND `item` = 2506;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1459, 2506, 0, 0);
/* Add Missing Vanilla item Heavy Recurve Bow */
DELETE FROM `npc_vendor` WHERE `entry` = 1459 AND `item` = 3027;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1459, 3027, 0, 0);
/* Add Missing Vanilla item Razor Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 1459 AND `item` = 3030;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1459, 3030, 0, 0);


/* NPC Unger Statforth - 1460 */
/* Add Missing Vanilla item Swift Palomino */
DELETE FROM `npc_vendor` WHERE `entry` = 1460 AND `item` = 18776;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1460, 18776, 0, 0);
/* Add Missing Vanilla item Swift Brown Steed */
DELETE FROM `npc_vendor` WHERE `entry` = 1460 AND `item` = 18777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1460, 18777, 0, 0);
/* Add Missing Vanilla item Swift White Steed */
DELETE FROM `npc_vendor` WHERE `entry` = 1460 AND `item` = 18778;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1460, 18778, 0, 0);
/* Add Missing Vanilla item White Stallion Bridle */
DELETE FROM `npc_vendor` WHERE `entry` = 1460 AND `item` = 12353;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1460, 12353, 0, 0);
/* Add Missing Vanilla item Palomino Bridle */
DELETE FROM `npc_vendor` WHERE `entry` = 1460 AND `item` = 12354;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1460, 12354, 0, 0);


/* NPC Edwina Monzor - 1462 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 1462 AND `item` = 28053;


/* NPC Falkan Armonis - 1463 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 1463 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 1463 AND `item` = 22148;
/* Add Missing Vanilla item Arcane Dust */
DELETE FROM `npc_vendor` WHERE `entry` = 1463 AND `item` = 17019;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1463, 17019, 0, 0);


/* NPC Drac Roughcut - 1465 */
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 1465 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1465, 2692, 0, 0);


/* NPC Rann Flamespinner - 1474 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 1474 AND `item` = 38426;


/* NPC Lohgan Eva - 1672 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 1672 AND `item` = 38426;


/* NPC Alyssa Eva - 1673 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 1673 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 1673 AND `item` = 22148;
/* Add Missing Vanilla item Arcane Dust */
DELETE FROM `npc_vendor` WHERE `entry` = 1673 AND `item` = 17019;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1673, 17019, 0, 0);


/* NPC Yanni Stoutheart - 1682 */
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 1682 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1682, 4471, 0, 0);


/* NPC Xandar Goodbeard - 1685 */
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 1685 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1685, 4471, 0, 0);


/* NPC Kreg Bilmn - 1691 */
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 1691 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (1691, 4471, 0, 0);


/* NPC Golorn Frostbeard - 1692 */
/* Remove non-Vanilla item Simple Flour */
DELETE FROM `npc_vendor` WHERE `entry` = 1692 AND `item` = 30817;


/* NPC Loslor Rudge - 1694 */
/* Remove non-Vanilla item Hair Trigger */
DELETE FROM `npc_vendor` WHERE `entry` = 1694 AND `item` = 39684;
/* Remove non-Vanilla item Walnut Stock */
DELETE FROM `npc_vendor` WHERE `entry` = 1694 AND `item` = 40533;


/* NPC Natheril Raincaller - 2084 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 2084 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 2084 AND `item` = 28060;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 2084 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2084, 4471, 0, 0);


/* NPC Abigail Shiel - 2118 */
/* Remove non-Vanilla item Simple Flour */
DELETE FROM `npc_vendor` WHERE `entry` = 2118 AND `item` = 30817;


/* NPC Mrs. Winters - 2134 */
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 2134 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2134, 4471, 0, 0);


/* NPC Edwin Harly - 2140 */
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 2140 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2140, 4471, 0, 0);


/* NPC Merideth Carlson - 2357 */
/* Add Missing Vanilla item White Stallion Bridle */
DELETE FROM `npc_vendor` WHERE `entry` = 2357 AND `item` = 12353;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2357, 12353, 0, 0);
/* Add Missing Vanilla item Palomino Bridle */
DELETE FROM `npc_vendor` WHERE `entry` = 2357 AND `item` = 12354;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2357, 12354, 0, 0);


/* NPC Knaz Blunderflame - 8679 */
/* Remove non-Vanilla item Hair Trigger */
DELETE FROM `npc_vendor` WHERE `entry` = 8679 AND `item` = 39684;
/* Remove non-Vanilla item Walnut Stock */
DELETE FROM `npc_vendor` WHERE `entry` = 8679 AND `item` = 40533;


/* NPC Gnaz Blunderflame - 2687 */
/* Remove non-Vanilla item Hair Trigger */
DELETE FROM `npc_vendor` WHERE `entry` = 2687 AND `item` = 39684;
/* Remove non-Vanilla item Walnut Stock */
DELETE FROM `npc_vendor` WHERE `entry` = 2687 AND `item` = 40533;


/* NPC Qia - 11189 */
/* Remove non-Vanilla item Blacksmith Hammer */
DELETE FROM `npc_vendor` WHERE `entry` = 11189 AND `item` = 5956;
/* Remove non-Vanilla item Rune Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 11189 AND `item` = 14341;
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 11189 AND `item` = 18256;
/* Add Missing Vanilla item Pattern: Runecloth Gloves */
DELETE FROM `npc_vendor` WHERE `entry` = 11189 AND `item` = 14481;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (11189, 14481, 1, 3600);
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 11189 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (11189, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 11189 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (11189, 2928, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 11189 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (11189, 3713, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 11189 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (11189, 3777, 0, 0);


/* NPC Nandar Branson - 2380 */
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 2380 AND `item` = 40411;


/* NPC Micha Yance - 2381 */
/* Remove non-Vanilla item Simple Flour */
DELETE FROM `npc_vendor` WHERE `entry` = 2381 AND `item` = 30817;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 2381 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2381, 2692, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 2381 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2381, 3713, 0, 0);


/* NPC Christoph Jeffcoat - 2393 */
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 2393 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2393, 2692, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 2393 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2393, 3713, 0, 0);


/* NPC Mallen Swain - 2394 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 2394 AND `item` = 38426;


/* NPC Derak Nightfall - 2397 */
/* Remove non-Vanilla item Simple Flour */
DELETE FROM `npc_vendor` WHERE `entry` = 2397 AND `item` = 30817;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 2397 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2397, 2692, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 2397 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2397, 3713, 0, 0);


/* NPC Kayren Soothallow - 2401 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 2401 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 2401 AND `item` = 28060;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 2401 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2401, 4471, 0, 0);


/* NPC Bro'kin - 2480 */
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 2480 AND `item` = 40411;


/* NPC Bliztik - 2481 */
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 2481 AND `item` = 40411;


/* NPC Zarena Cromwind - 2482 */
/* Add Missing Vanilla item Friendship Bread */
DELETE FROM `npc_vendor` WHERE `entry` = 2482 AND `item` = 23160;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2482, 23160, 0, 0);
/* Add Missing Vanilla item Freshly-Squeezed Lemonade */
DELETE FROM `npc_vendor` WHERE `entry` = 2482 AND `item` = 23161;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2482, 23161, 0, 0);


/* NPC Sly Garrett - 2622 */
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 2622 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2622, 2928, 0, 0);
/* Add Missing Vanilla item Essence of Pain */
DELETE FROM `npc_vendor` WHERE `entry` = 2622 AND `item` = 2930;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2622, 2930, 0, 0);
/* Add Missing Vanilla item Empty Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 2622 AND `item` = 3371;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2622, 3371, 0, 0);
/* Add Missing Vanilla item Leaded Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 2622 AND `item` = 3372;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2622, 3372, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 2622 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2622, 3777, 0, 0);
/* Add Missing Vanilla item Thieves' Tools */
DELETE FROM `npc_vendor` WHERE `entry` = 2622 AND `item` = 5060;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2622, 5060, 0, 0);
/* Add Missing Vanilla item Flash Powder */
DELETE FROM `npc_vendor` WHERE `entry` = 2622 AND `item` = 5140;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2622, 5140, 0, 0);
/* Add Missing Vanilla item Deathweed */
DELETE FROM `npc_vendor` WHERE `entry` = 2622 AND `item` = 5173;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2622, 5173, 0, 0);
/* Add Missing Vanilla item Essence of Agony */
DELETE FROM `npc_vendor` WHERE `entry` = 2622 AND `item` = 8923;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2622, 8923, 0, 0);
/* Add Missing Vanilla item Dust of Deterioration */
DELETE FROM `npc_vendor` WHERE `entry` = 2622 AND `item` = 8924;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2622, 8924, 0, 0);
/* Add Missing Vanilla item Crystal Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 2622 AND `item` = 8925;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2622, 8925, 0, 0);


/* NPC Old Man Heming - 2626 */
/* Add Missing Vanilla item Expert Fishing - The Bass and You */
DELETE FROM `npc_vendor` WHERE `entry` = 2626 AND `item` = 16083;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2626, 16083, 0, 0);


/* NPC Kelsey Yance - 2664 */
/* Remove non-Vanilla item Simple Flour */
DELETE FROM `npc_vendor` WHERE `entry` = 2664 AND `item` = 30817;
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 2664 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2664, 3713, 0, 0);
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 2664 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2664, 2692, 0, 0);


/* NPC Danielle Zipstitch - 2668 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 2668 AND `item` = 38426;


/* NPC Sheri Zipstitch - 2669 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 2669 AND `item` = 38426;


/* NPC Xizk Goodstitch - 2670 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 2670 AND `item` = 38426;


/* NPC Cowardly Crosby - 2672 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 2672 AND `item` = 38426;


/* NPC Fradd Swiftgear - 2682 */
/* Remove non-Vanilla item Hair Trigger */
DELETE FROM `npc_vendor` WHERE `entry` = 2682 AND `item` = 39684;
/* Remove non-Vanilla item Walnut Stock */
DELETE FROM `npc_vendor` WHERE `entry` = 2682 AND `item` = 40533;


/* NPC Rizz Loosebolt - 2684 */
/* Remove non-Vanilla item Hair Trigger */
DELETE FROM `npc_vendor` WHERE `entry` = 2684 AND `item` = 39684;
/* Remove non-Vanilla item Walnut Stock */
DELETE FROM `npc_vendor` WHERE `entry` = 2684 AND `item` = 40533;


/* NPC Mazk Snipeshot - 2685 */
/* Remove non-Vanilla item Small Ammo Pouch */
DELETE FROM `npc_vendor` WHERE `entry` = 2685 AND `item` = 2102;
/* Remove non-Vanilla item Light Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 2685 AND `item` = 2516;
/* Remove non-Vanilla item Heavy Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 2685 AND `item` = 2519;
/* Remove non-Vanilla item Solid Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 2685 AND `item` = 3033;
/* Remove non-Vanilla item Accurate Slugs */
DELETE FROM `npc_vendor` WHERE `entry` = 2685 AND `item` = 11284;
/* Remove non-Vanilla item Medium Shot Pouch */
DELETE FROM `npc_vendor` WHERE `entry` = 2685 AND `item` = 11363;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 2685 AND `item` = 28060;
/* Remove non-Vanilla item Hair Trigger */
DELETE FROM `npc_vendor` WHERE `entry` = 2685 AND `item` = 39684;
/* Remove non-Vanilla item Walnut Stock */
DELETE FROM `npc_vendor` WHERE `entry` = 2685 AND `item` = 40533;
/* Add Missing Vanilla item Schematic: Truesilver Transformer */
DELETE FROM `npc_vendor` WHERE `entry` = 2685 AND `item` = 18651;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2685, 18651, 1, 43200);


/* NPC Ruppo Zipcoil - 2688 */
/* Remove non-Vanilla item Hair Trigger */
DELETE FROM `npc_vendor` WHERE `entry` = 2688 AND `item` = 39684;
/* Remove non-Vanilla item Walnut Stock */
DELETE FROM `npc_vendor` WHERE `entry` = 2688 AND `item` = 40533;


/* NPC Clyde Ranthal - 2697 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 2697 AND `item` = 38426;


/* NPC George Candarte - 2698 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 2698 AND `item` = 38426;


/* NPC Rikqiz - 2699 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 2699 AND `item` = 38426;


/* NPC Malygen - 2803 */
/* Remove non-Vanilla item Forest Mushroom Cap */
DELETE FROM `npc_vendor` WHERE `entry` = 2803 AND `item` = 4604;
/* Remove non-Vanilla item Red-speckled Mushroom */
DELETE FROM `npc_vendor` WHERE `entry` = 2803 AND `item` = 4605;
/* Remove non-Vanilla item Spongy Morel */
DELETE FROM `npc_vendor` WHERE `entry` = 2803 AND `item` = 4606;
/* Remove non-Vanilla item Delicious Cave Mold */
DELETE FROM `npc_vendor` WHERE `entry` = 2803 AND `item` = 4607;
/* Remove non-Vanilla item Raw Black Truffle */
DELETE FROM `npc_vendor` WHERE `entry` = 2803 AND `item` = 4608;
/* Remove non-Vanilla item Morning Glory Dew */
DELETE FROM `npc_vendor` WHERE `entry` = 2803 AND `item` = 8766;
/* Remove non-Vanilla item Dried King Bolete */
DELETE FROM `npc_vendor` WHERE `entry` = 2803 AND `item` = 8948;
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 2803 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 2803 AND `item` = 28060;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 2803 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2803, 4471, 0, 0);


/* NPC Deneb Walker - 2805 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 2805 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 2805 AND `item` = 22148;
/* Add Missing Vanilla item Expert First Aid - Under Wraps */
DELETE FROM `npc_vendor` WHERE `entry` = 2805 AND `item` = 16084;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2805, 16084, 0, 0);
/* Add Missing Vanilla item Manual: Heavy Silk Bandage */
DELETE FROM `npc_vendor` WHERE `entry` = 2805 AND `item` = 16112;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2805, 16112, 0, 0);
/* Add Missing Vanilla item Manual: Mageweave Bandage */
DELETE FROM `npc_vendor` WHERE `entry` = 2805 AND `item` = 16113;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2805, 16113, 0, 0);
/* Add Missing Vanilla item Arcane Dust */
DELETE FROM `npc_vendor` WHERE `entry` = 2805 AND `item` = 17019;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2805, 17019, 0, 0);


/* NPC Bale - 2806 */
/* Remove non-Vanilla item Forest Mushroom Cap */
DELETE FROM `npc_vendor` WHERE `entry` = 2806 AND `item` = 4604;
/* Remove non-Vanilla item Red-speckled Mushroom */
DELETE FROM `npc_vendor` WHERE `entry` = 2806 AND `item` = 4605;
/* Remove non-Vanilla item Spongy Morel */
DELETE FROM `npc_vendor` WHERE `entry` = 2806 AND `item` = 4606;
/* Remove non-Vanilla item Delicious Cave Mold */
DELETE FROM `npc_vendor` WHERE `entry` = 2806 AND `item` = 4607;
/* Remove non-Vanilla item Raw Black Truffle */
DELETE FROM `npc_vendor` WHERE `entry` = 2806 AND `item` = 4608;
/* Remove non-Vanilla item Morning Glory Dew */
DELETE FROM `npc_vendor` WHERE `entry` = 2806 AND `item` = 8766;
/* Remove non-Vanilla item Dried King Bolete */
DELETE FROM `npc_vendor` WHERE `entry` = 2806 AND `item` = 8948;
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 2806 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 2806 AND `item` = 28060;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 2806 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2806, 4471, 0, 0);


/* NPC Vikki Lonsav - 2808 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 2808 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 2808 AND `item` = 28060;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 2808 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2808, 4471, 0, 0);


/* NPC Hammon Karwn - 2810 */
/* Remove non-Vanilla item Blacksmith Hammer */
DELETE FROM `npc_vendor` WHERE `entry` = 2810 AND `item` = 5956;
/* Remove non-Vanilla item Rune Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 2810 AND `item` = 14341;
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 2810 AND `item` = 18256;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 2810 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2810, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 2810 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2810, 2928, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 2810 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2810, 3713, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 2810 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2810, 3777, 0, 0);


/* NPC Drovnar Strongbrew - 2812 */
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 2812 AND `item` = 40411;


/* NPC Androd Fadran - 2816 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 2816 AND `item` = 38426;


/* NPC Tunkk - 2819 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 2819 AND `item` = 38426;


/* NPC Graud - 2820 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 2820 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 2820 AND `item` = 28060;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 2820 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2820, 4471, 0, 0);


/* NPC Keena - 2821 */
/* Remove non-Vanilla item Blacksmith Hammer */
DELETE FROM `npc_vendor` WHERE `entry` = 2821 AND `item` = 5956;
/* Remove non-Vanilla item Rune Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 2821 AND `item` = 14341;
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 2821 AND `item` = 18256;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 2821 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2821, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 2821 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2821, 2928, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 2821 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2821, 3713, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 2821 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2821, 3777, 0, 0);


/* NPC Burkrum - 6028 */
/* Remove non-Vanilla item Small Ammo Pouch */
DELETE FROM `npc_vendor` WHERE `entry` = 6028 AND `item` = 2102;
/* Remove non-Vanilla item Rough Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 6028 AND `item` = 2512;
/* Remove non-Vanilla item Sharp Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 6028 AND `item` = 2515;
/* Remove non-Vanilla item Light Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 6028 AND `item` = 2516;
/* Remove non-Vanilla item Heavy Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 6028 AND `item` = 2519;
/* Remove non-Vanilla item Razor Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 6028 AND `item` = 3030;
/* Remove non-Vanilla item Solid Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 6028 AND `item` = 3033;
/* Remove non-Vanilla item Small Quiver */
DELETE FROM `npc_vendor` WHERE `entry` = 6028 AND `item` = 5439;
/* Remove non-Vanilla item Accurate Slugs */
DELETE FROM `npc_vendor` WHERE `entry` = 6028 AND `item` = 11284;
/* Remove non-Vanilla item Jagged Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 6028 AND `item` = 11285;
/* Remove non-Vanilla item Medium Quiver */
DELETE FROM `npc_vendor` WHERE `entry` = 6028 AND `item` = 11362;
/* Remove non-Vanilla item Medium Shot Pouch */
DELETE FROM `npc_vendor` WHERE `entry` = 6028 AND `item` = 11363;
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 6028 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 6028 AND `item` = 28060;
/* Add Missing Vanilla item Augmented Chain Leggings */
DELETE FROM `npc_vendor` WHERE `entry` = 6028 AND `item` = 2418;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6028, 2418, 0, 0);
/* Add Missing Vanilla item Augmented Chain Vest */
DELETE FROM `npc_vendor` WHERE `entry` = 6028 AND `item` = 2417;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6028, 2417, 0, 0);
/* Add Missing Vanilla item Metal Buckler */
DELETE FROM `npc_vendor` WHERE `entry` = 6028 AND `item` = 17189;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6028, 17189, 0, 0);
/* Add Missing Vanilla item Augmented Chain Helm */
DELETE FROM `npc_vendor` WHERE `entry` = 6028 AND `item` = 3891;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6028, 3891, 0, 0);
/* Add Missing Vanilla item Heavy Pavise */
DELETE FROM `npc_vendor` WHERE `entry` = 6028 AND `item` = 2448;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6028, 2448, 0, 0);
/* Add Missing Vanilla item Augmented Chain Gloves */
DELETE FROM `npc_vendor` WHERE `entry` = 6028 AND `item` = 2422;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6028, 2422, 0, 0);
/* Add Missing Vanilla item Augmented Chain Bracers */
DELETE FROM `npc_vendor` WHERE `entry` = 6028 AND `item` = 2421;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6028, 2421, 0, 0);
/* Add Missing Vanilla item Augmented Chain Boots */
DELETE FROM `npc_vendor` WHERE `entry` = 6028 AND `item` = 2420;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6028, 2420, 0, 0);
/* Add Missing Vanilla item Augmented Chain Belt */
DELETE FROM `npc_vendor` WHERE `entry` = 6028 AND `item` = 2419;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6028, 2419, 0, 0);


/* NPC Haren Kanmae - 2839 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 2839 AND `item` = 28053;


/* NPC Blixrez Goodstitch - 2846 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 2846 AND `item` = 38426;


/* NPC Glyx Brewright - 2848 */
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 2848 AND `item` = 40411;


/* NPC Glyx Brewright - 2849 */
/* Remove non-Vanilla item Noble's Elementium Signet */
DELETE FROM `npc_vendor` WHERE `entry` = 2849 AND `item` = 37934;


/* NPC Grawl - 2908 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 2908 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 2908 AND `item` = 28060;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 2908 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2908, 4471, 0, 0);


/* NPC Kurm Stonehoof - 3002 */
/* Remove non-Vanilla item Jeweler's Kit */
DELETE FROM `npc_vendor` WHERE `entry` = 3002 AND `item` = 20815;
/* Remove non-Vanilla item Simple Grinder */
DELETE FROM `npc_vendor` WHERE `entry` = 3002 AND `item` = 20824;


/* NPC Fyr Mistrunner - 3003 */
/* Remove non-Vanilla item Mag'har Grainbread */
DELETE FROM `npc_vendor` WHERE `entry` = 3003 AND `item` = 27855;
/* Remove non-Vanilla item Crusty Flatbread */
DELETE FROM `npc_vendor` WHERE `entry` = 3003 AND `item` = 33449;
/* Remove non-Vanilla item Sweet Potato Bread */
DELETE FROM `npc_vendor` WHERE `entry` = 3003 AND `item` = 35950;


/* NPC Mahu - 3005 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 3005 AND `item` = 38426;


/* NPC Mani Winterhoof - 3010 */
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3010 AND `item` = 40411;


/* NPC Nata Dawnstrider - 3012 */
/* Add Missing Vanilla item Formula: Enchant Chest - Minor Mana */
DELETE FROM `npc_vendor` WHERE `entry` = 3012 AND `item` = 6342;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3012, 6342, 1, 7200);


/* NPC Nardstrum Copperpinch - 13429 */
/* Add Missing Vanilla item Fake Mistletoe */
DELETE FROM `npc_vendor` WHERE `entry` = 13429 AND `item` = 17195;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (13429, 17195, 0, 0);


/* NPC Kuna Thunderhorn - 3015 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 3015 AND `item` = 28053;


/* NPC Nan Mistrunner - 3017 */
/* Remove non-Vanilla item Skethyl Berries */
DELETE FROM `npc_vendor` WHERE `entry` = 3017 AND `item` = 27856;
/* Remove non-Vanilla item Savory Snowplum */
DELETE FROM `npc_vendor` WHERE `entry` = 3017 AND `item` = 35948;
/* Remove non-Vanilla item Tundra Berries */
DELETE FROM `npc_vendor` WHERE `entry` = 3017 AND `item` = 35949;


/* NPC Kaga Mistrunner - 3025 */
/* Remove non-Vanilla item Smoked Talbuk Venison */
DELETE FROM `npc_vendor` WHERE `entry` = 3025 AND `item` = 27854;
/* Remove non-Vanilla item Salted Venison */
DELETE FROM `npc_vendor` WHERE `entry` = 3025 AND `item` = 33454;
/* Remove non-Vanilla item Mead Basted Caribou */
DELETE FROM `npc_vendor` WHERE `entry` = 3025 AND `item` = 35953;


/* NPC Naal Mistrunner - 3027 */
/* Remove non-Vanilla item Simple Flour */
DELETE FROM `npc_vendor` WHERE `entry` = 3027 AND `item` = 30817;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 3027 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3027, 2692, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 3027 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3027, 3713, 0, 0);


/* NPC Moorat Longstride - 3076 */
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 3076 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3076, 4471, 0, 0);


/* NPC Wunna Darkmane - 3081 */
/* Remove non-Vanilla item Simple Flour */
DELETE FROM `npc_vendor` WHERE `entry` = 3081 AND `item` = 30817;


/* NPC Gloria Femmel - 3085 */
/* Remove non-Vanilla item Simple Flour */
DELETE FROM `npc_vendor` WHERE `entry` = 3085 AND `item` = 30817;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 3085 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3085, 2692, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 3085 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3085, 3713, 0, 0);


/* NPC Gerald Crawley - 3090 */
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 3090 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3090, 2928, 0, 0);
/* Add Missing Vanilla item Essence of Pain */
DELETE FROM `npc_vendor` WHERE `entry` = 3090 AND `item` = 2930;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3090, 2930, 0, 0);
/* Add Missing Vanilla item Empty Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3090 AND `item` = 3371;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3090, 3371, 0, 0);
/* Add Missing Vanilla item Leaded Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3090 AND `item` = 3372;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3090, 3372, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 3090 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3090, 3777, 0, 0);
/* Add Missing Vanilla item Thieves' Tools */
DELETE FROM `npc_vendor` WHERE `entry` = 3090 AND `item` = 5060;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3090, 5060, 0, 0);
/* Add Missing Vanilla item Flash Powder */
DELETE FROM `npc_vendor` WHERE `entry` = 3090 AND `item` = 5140;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3090, 5140, 0, 0);
/* Add Missing Vanilla item Deathweed */
DELETE FROM `npc_vendor` WHERE `entry` = 3090 AND `item` = 5173;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3090, 5173, 0, 0);
/* Add Missing Vanilla item Essence of Agony */
DELETE FROM `npc_vendor` WHERE `entry` = 3090 AND `item` = 8923;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3090, 8923, 0, 0);
/* Add Missing Vanilla item Dust of Deterioration */
DELETE FROM `npc_vendor` WHERE `entry` = 3090 AND `item` = 8924;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3090, 8924, 0, 0);
/* Add Missing Vanilla item Crystal Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3090 AND `item` = 8925;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3090, 8925, 0, 0);


/* NPC Franklin Hamar - 3091 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 3091 AND `item` = 38426;


/* NPC Captured Servant of Azora - 3096 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 3096 AND `item` = 38426;


/* NPC Herble Baubbletump - 3133 */
/* Remove non-Vanilla item Jeweler's Kit */
DELETE FROM `npc_vendor` WHERE `entry` = 3133 AND `item` = 20815;
/* Remove non-Vanilla item Simple Grinder */
DELETE FROM `npc_vendor` WHERE `entry` = 3133 AND `item` = 20824;
/* Remove non-Vanilla item Hair Trigger */
DELETE FROM `npc_vendor` WHERE `entry` = 3133 AND `item` = 39684;
/* Remove non-Vanilla item Walnut Stock */
DELETE FROM `npc_vendor` WHERE `entry` = 3133 AND `item` = 40533;


/* NPC Malissa - 3135 */
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 3135 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3135, 2928, 0, 0);
/* Add Missing Vanilla item Essence of Pain */
DELETE FROM `npc_vendor` WHERE `entry` = 3135 AND `item` = 2930;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3135, 2930, 0, 0);
/* Add Missing Vanilla item Empty Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3135 AND `item` = 3371;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3135, 3371, 0, 0);
/* Add Missing Vanilla item Leaded Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3135 AND `item` = 3372;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3135, 3372, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 3135 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3135, 3777, 0, 0);
/* Add Missing Vanilla item Thieves' Tools */
DELETE FROM `npc_vendor` WHERE `entry` = 3135 AND `item` = 5060;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3135, 5060, 0, 0);
/* Add Missing Vanilla item Flash Powder */
DELETE FROM `npc_vendor` WHERE `entry` = 3135 AND `item` = 5140;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3135, 5140, 0, 0);
/* Add Missing Vanilla item Deathweed */
DELETE FROM `npc_vendor` WHERE `entry` = 3135 AND `item` = 5173;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3135, 5173, 0, 0);
/* Add Missing Vanilla item Essence of Agony */
DELETE FROM `npc_vendor` WHERE `entry` = 3135 AND `item` = 8923;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3135, 8923, 0, 0);
/* Add Missing Vanilla item Dust of Deterioration */
DELETE FROM `npc_vendor` WHERE `entry` = 3135 AND `item` = 8924;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3135, 8924, 0, 0);
/* Add Missing Vanilla item Crystal Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3135 AND `item` = 8925;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3135, 8925, 0, 0);


/* NPC Jark - 3164 */
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 3164 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3164, 4471, 0, 0);


/* NPC Wuark - 3167 */
/* Remove non-Vanilla item Jeweler's Kit */
DELETE FROM `npc_vendor` WHERE `entry` = 3167 AND `item` = 20815;
/* Remove non-Vanilla item Simple Grinder */
DELETE FROM `npc_vendor` WHERE `entry` = 3167 AND `item` = 20824;


/* NPC Flakk - 3168 */
/* Remove non-Vanilla item Simple Flour */
DELETE FROM `npc_vendor` WHERE `entry` = 3168 AND `item` = 30817;


/* NPC K'waii - 3186 */
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 3186 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3186, 4471, 0, 0);


/* NPC Tai'tasi - 3187 */
/* Remove non-Vanilla item Simple Flour */
DELETE FROM `npc_vendor` WHERE `entry` = 3187 AND `item` = 30817;


/* NPC Olvia - 3312 */
/* Remove non-Vanilla item Smoked Talbuk Venison */
DELETE FROM `npc_vendor` WHERE `entry` = 3312 AND `item` = 27854;
/* Remove non-Vanilla item Salted Venison */
DELETE FROM `npc_vendor` WHERE `entry` = 3312 AND `item` = 33454;
/* Remove non-Vanilla item Mead Basted Caribou */
DELETE FROM `npc_vendor` WHERE `entry` = 3312 AND `item` = 35953;


/* NPC Trak'gen - 3313 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 3313 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 3313 AND `item` = 28060;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 3313 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3313, 4471, 0, 0);


/* NPC Kaja - 3322 */
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 3322 AND `item` = 28060;


/* NPC Horthus - 3323 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 3323 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 3323 AND `item` = 22148;
/* Remove non-Vanilla item Wild Spineleaf */
DELETE FROM `npc_vendor` WHERE `entry` = 3323 AND `item` = 44605;
/* Remove non-Vanilla item Starleaf Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 3323 AND `item` = 44614;
/* Remove non-Vanilla item Devout Candle */
DELETE FROM `npc_vendor` WHERE `entry` = 3323 AND `item` = 44615;
/* Add Missing Vanilla item Arcane Dust */
DELETE FROM `npc_vendor` WHERE `entry` = 3323 AND `item` = 17019;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3323, 17019, 0, 0);


/* NPC Kor'jus - 3329 */
/* Remove non-Vanilla item Zangar Caps */
DELETE FROM `npc_vendor` WHERE `entry` = 3329 AND `item` = 27859;
/* Remove non-Vanilla item Honey-Spiced Lichen */
DELETE FROM `npc_vendor` WHERE `entry` = 3329 AND `item` = 33452;
/* Remove non-Vanilla item Sparkling Frostcap */
DELETE FROM `npc_vendor` WHERE `entry` = 3329 AND `item` = 35947;


/* NPC Rekkul - 3334 */
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 3334 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3334, 2928, 0, 0);
/* Add Missing Vanilla item Essence of Pain */
DELETE FROM `npc_vendor` WHERE `entry` = 3334 AND `item` = 2930;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3334, 2930, 0, 0);
/* Add Missing Vanilla item Empty Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3334 AND `item` = 3371;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3334, 3371, 0, 0);
/* Add Missing Vanilla item Leaded Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3334 AND `item` = 3372;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3334, 3372, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 3334 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3334, 3777, 0, 0);
/* Add Missing Vanilla item Thieves' Tools */
DELETE FROM `npc_vendor` WHERE `entry` = 3334 AND `item` = 5060;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3334, 5060, 0, 0);
/* Add Missing Vanilla item Flash Powder */
DELETE FROM `npc_vendor` WHERE `entry` = 3334 AND `item` = 5140;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3334, 5140, 0, 0);
/* Add Missing Vanilla item Deathweed */
DELETE FROM `npc_vendor` WHERE `entry` = 3334 AND `item` = 5173;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3334, 5173, 0, 0);
/* Add Missing Vanilla item Essence of Agony */
DELETE FROM `npc_vendor` WHERE `entry` = 3334 AND `item` = 8923;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3334, 8923, 0, 0);
/* Add Missing Vanilla item Dust of Deterioration */
DELETE FROM `npc_vendor` WHERE `entry` = 3334 AND `item` = 8924;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3334, 8924, 0, 0);
/* Add Missing Vanilla item Crystal Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3334 AND `item` = 8925;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3334, 8925, 0, 0);


/* NPC Hagrus - 3335 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 3335 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 3335 AND `item` = 22148;
/* Add Missing Vanilla item Arcane Dust */
DELETE FROM `npc_vendor` WHERE `entry` = 3335 AND `item` = 17019;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3335, 17019, 0, 0);


/* NPC Shan'ti - 3342 */
/* Remove non-Vanilla item Skethyl Berries */
DELETE FROM `npc_vendor` WHERE `entry` = 3342 AND `item` = 27856;
/* Remove non-Vanilla item Savory Snowplum */
DELETE FROM `npc_vendor` WHERE `entry` = 3342 AND `item` = 35948;
/* Remove non-Vanilla item Tundra Berries */
DELETE FROM `npc_vendor` WHERE `entry` = 3342 AND `item` = 35949;


/* NPC Kithas - 3346 */
/* Add Missing Vanilla item Formula: Enchant Chest - Minor Mana */
DELETE FROM `npc_vendor` WHERE `entry` = 3346 AND `item` = 6342;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3346, 6342, 1, 7200);


/* NPC Kor'geld - 3348 */
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3348 AND `item` = 40411;


/* NPC Asoran - 3350 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 3350 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 3350 AND `item` = 28060;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 3350 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3350, 4471, 0, 0);


/* NPC Magenius - 3351 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 3351 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 3351 AND `item` = 22148;
/* Add Missing Vanilla item Arcane Dust */
DELETE FROM `npc_vendor` WHERE `entry` = 3351 AND `item` = 17019;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3351, 17019, 0, 0);


/* NPC Gorina - 3358 */
/* Remove non-Vanilla item Jeweler's Kit */
DELETE FROM `npc_vendor` WHERE `entry` = 3358 AND `item` = 20815;
/* Remove non-Vanilla item Simple Grinder */
DELETE FROM `npc_vendor` WHERE `entry` = 3358 AND `item` = 20824;


/* NPC Ogunaro Wolfrunner - 3362 */
/* Remove non-Vanilla item Horn of the Black Wolf */
DELETE FROM `npc_vendor` WHERE `entry` = 3362 AND `item` = 46099;
/* Add Missing Vanilla item Horn of the Red Wolf */
DELETE FROM `npc_vendor` WHERE `entry` = 3362 AND `item` = 12330;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3362, 12330, 0, 0);
/* Add Missing Vanilla item Horn of the Arctic Wolf */
DELETE FROM `npc_vendor` WHERE `entry` = 3362 AND `item` = 12351;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3362, 12351, 0, 0);


/* NPC Borya - 3364 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 3364 AND `item` = 38426;


/* NPC Tamar - 3366 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 3366 AND `item` = 38426;


/* NPC Felika - 3367 */
/* Remove non-Vanilla item Rune Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 3367 AND `item` = 14341;
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3367 AND `item` = 18256;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 3367 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3367, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 3367 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3367, 2928, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 3367 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3367, 3713, 0, 0);
/* Add Missing Vanilla item Green Dye */
DELETE FROM `npc_vendor` WHERE `entry` = 3367 AND `item` = 2605;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3367, 2605, 0, 0);
/* Add Missing Vanilla item Blue Dye */
DELETE FROM `npc_vendor` WHERE `entry` = 3367 AND `item` = 6260;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3367, 6260, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 3367 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3367, 3777, 0, 0);
/* Add Missing Vanilla item Bleach */
DELETE FROM `npc_vendor` WHERE `entry` = 3367 AND `item` = 2324;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3367, 2324, 0, 0);
/* Add Missing Vanilla item Shiny Bauble */
DELETE FROM `npc_vendor` WHERE `entry` = 3367 AND `item` = 6529;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3367, 6529, 0, 0);


/* NPC Borstan - 3368 */
/* Remove non-Vanilla item Smoked Talbuk Venison */
DELETE FROM `npc_vendor` WHERE `entry` = 3368 AND `item` = 27854;
/* Remove non-Vanilla item Salted Venison */
DELETE FROM `npc_vendor` WHERE `entry` = 3368 AND `item` = 33454;
/* Remove non-Vanilla item Mead Basted Caribou */
DELETE FROM `npc_vendor` WHERE `entry` = 3368 AND `item` = 35953;


/* NPC Xen'to - 3400 */
/* Remove non-Vanilla item Simple Flour */
DELETE FROM `npc_vendor` WHERE `entry` = 3400 AND `item` = 30817;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 3400 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3400, 2692, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 3400 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3400, 3713, 0, 0);


/* NPC Zeal'aya - 3405 */
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3405 AND `item` = 18256;
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3405 AND `item` = 40411;


/* NPC Jin'sora - 3410 */
/* Remove non-Vanilla item Sturdy Recurve */
DELETE FROM `npc_vendor` WHERE `entry` = 3410 AND `item` = 11306;
/* Remove non-Vanilla item Massive Longbow */
DELETE FROM `npc_vendor` WHERE `entry` = 3410 AND `item` = 11307;
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 3410 AND `item` = 28053;


/* NPC Sovik - 3413 */
/* Remove non-Vanilla item Schematic: Steam Tonk Controller */
DELETE FROM `npc_vendor` WHERE `entry` = 3413 AND `item` = 22729;
/* Remove non-Vanilla item Hair Trigger */
DELETE FROM `npc_vendor` WHERE `entry` = 3413 AND `item` = 39684;
/* Remove non-Vanilla item Walnut Stock */
DELETE FROM `npc_vendor` WHERE `entry` = 3413 AND `item` = 40533;
/* Add Missing Vanilla item Schematic: Thorium Grenade */
DELETE FROM `npc_vendor` WHERE `entry` = 3413 AND `item` = 16041;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3413, 16041, 1, 10800);
/* Add Missing Vanilla item Schematic: Thorium Widget */
DELETE FROM `npc_vendor` WHERE `entry` = 3413 AND `item` = 16042;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3413, 16042, 1, 10800);


/* NPC Barg - 3481 */
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 3481 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3481, 4471, 0, 0);


/* NPC Tari'qa - 3482 */
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 3482 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3482, 2692, 0, 0);


/* NPC Wrahk - 3485 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 3485 AND `item` = 38426;


/* NPC Hula'mahi - 3490 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 3490 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 3490 AND `item` = 22148;
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 3490 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3490, 2928, 0, 0);
/* Add Missing Vanilla item Essence of Pain */
DELETE FROM `npc_vendor` WHERE `entry` = 3490 AND `item` = 2930;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3490, 2930, 0, 0);
/* Add Missing Vanilla item Empty Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3490 AND `item` = 3371;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3490, 3371, 0, 0);
/* Add Missing Vanilla item Leaded Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3490 AND `item` = 3372;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3490, 3372, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 3490 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3490, 3777, 0, 0);
/* Add Missing Vanilla item Thieves' Tools */
DELETE FROM `npc_vendor` WHERE `entry` = 3490 AND `item` = 5060;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3490, 5060, 0, 0);
/* Add Missing Vanilla item Flash Powder */
DELETE FROM `npc_vendor` WHERE `entry` = 3490 AND `item` = 5140;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3490, 5140, 0, 0);
/* Add Missing Vanilla item Deathweed */
DELETE FROM `npc_vendor` WHERE `entry` = 3490 AND `item` = 5173;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3490, 5173, 0, 0);
/* Add Missing Vanilla item Essence of Agony */
DELETE FROM `npc_vendor` WHERE `entry` = 3490 AND `item` = 8923;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3490, 8923, 0, 0);
/* Add Missing Vanilla item Dust of Deterioration */
DELETE FROM `npc_vendor` WHERE `entry` = 3490 AND `item` = 8924;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3490, 8924, 0, 0);
/* Add Missing Vanilla item Crystal Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3490 AND `item` = 8925;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3490, 8925, 0, 0);
/* Add Missing Vanilla item Arcane Dust */
DELETE FROM `npc_vendor` WHERE `entry` = 3490 AND `item` = 17019;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3490, 17019, 0, 0);


/* NPC Gagsprocket - 3495 */
/* Remove non-Vanilla item Schematic: Minor Recombobulator */
DELETE FROM `npc_vendor` WHERE `entry` = 3495 AND `item` = 14639;
/* Remove non-Vanilla item Hair Trigger */
DELETE FROM `npc_vendor` WHERE `entry` = 3495 AND `item` = 39684;
/* Remove non-Vanilla item Walnut Stock */
DELETE FROM `npc_vendor` WHERE `entry` = 3495 AND `item` = 40533;


/* NPC Jazzik - 3498 */
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 3498 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3498, 4471, 0, 0);


/* NPC Ranik - 3499 */
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 3499 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3499, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 3499 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3499, 2928, 0, 0);


/* NPC Tarhus - 3500 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 3500 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 3500 AND `item` = 22148;


/* NPC Thomas Miller - 3518 */
/* Remove non-Vanilla item Mag'har Grainbread */
DELETE FROM `npc_vendor` WHERE `entry` = 3518 AND `item` = 27855;
/* Remove non-Vanilla item Crusty Flatbread */
DELETE FROM `npc_vendor` WHERE `entry` = 3518 AND `item` = 33449;
/* Remove non-Vanilla item Sweet Potato Bread */
DELETE FROM `npc_vendor` WHERE `entry` = 3518 AND `item` = 35950;


/* NPC Sarah Raycroft - 3541 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 3541 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 3541 AND `item` = 28060;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 3541 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3541, 4471, 0, 0);


/* NPC Jaysin Lanyda - 3542 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 3542 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 3542 AND `item` = 22148;
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 3542 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3542, 2928, 0, 0);
/* Add Missing Vanilla item Essence of Pain */
DELETE FROM `npc_vendor` WHERE `entry` = 3542 AND `item` = 2930;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3542, 2930, 0, 0);
/* Add Missing Vanilla item Empty Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3542 AND `item` = 3371;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3542, 3371, 0, 0);
/* Add Missing Vanilla item Leaded Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3542 AND `item` = 3372;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3542, 3372, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 3542 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3542, 3777, 0, 0);
/* Add Missing Vanilla item Thieves' Tools */
DELETE FROM `npc_vendor` WHERE `entry` = 3542 AND `item` = 5060;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3542, 5060, 0, 0);
/* Add Missing Vanilla item Flash Powder */
DELETE FROM `npc_vendor` WHERE `entry` = 3542 AND `item` = 5140;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3542, 5140, 0, 0);
/* Add Missing Vanilla item Deathweed */
DELETE FROM `npc_vendor` WHERE `entry` = 3542 AND `item` = 5173;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3542, 5173, 0, 0);
/* Add Missing Vanilla item Essence of Agony */
DELETE FROM `npc_vendor` WHERE `entry` = 3542 AND `item` = 8923;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3542, 8923, 0, 0);
/* Add Missing Vanilla item Dust of Deterioration */
DELETE FROM `npc_vendor` WHERE `entry` = 3542 AND `item` = 8924;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3542, 8924, 0, 0);
/* Add Missing Vanilla item Crystal Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3542 AND `item` = 8925;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3542, 8925, 0, 0);
/* Add Missing Vanilla item Arcane Dust */
DELETE FROM `npc_vendor` WHERE `entry` = 3542 AND `item` = 17019;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3542, 17019, 0, 0);


/* NPC Selina Weston - 3548 */
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3548 AND `item` = 40411;


/* NPC Patrice Dwyer - 3551 */
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 3551 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3551, 2928, 0, 0);
/* Add Missing Vanilla item Essence of Pain */
DELETE FROM `npc_vendor` WHERE `entry` = 3551 AND `item` = 2930;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3551, 2930, 0, 0);
/* Add Missing Vanilla item Empty Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3551 AND `item` = 3371;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3551, 3371, 0, 0);
/* Add Missing Vanilla item Leaded Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3551 AND `item` = 3372;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3551, 3372, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 3551 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3551, 3777, 0, 0);
/* Add Missing Vanilla item Thieves' Tools */
DELETE FROM `npc_vendor` WHERE `entry` = 3551 AND `item` = 5060;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3551, 5060, 0, 0);
/* Add Missing Vanilla item Flash Powder */
DELETE FROM `npc_vendor` WHERE `entry` = 3551 AND `item` = 5140;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3551, 5140, 0, 0);
/* Add Missing Vanilla item Deathweed */
DELETE FROM `npc_vendor` WHERE `entry` = 3551 AND `item` = 5173;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3551, 5173, 0, 0);
/* Add Missing Vanilla item Essence of Agony */
DELETE FROM `npc_vendor` WHERE `entry` = 3551 AND `item` = 8923;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3551, 8923, 0, 0);
/* Add Missing Vanilla item Dust of Deterioration */
DELETE FROM `npc_vendor` WHERE `entry` = 3551 AND `item` = 8924;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3551, 8924, 0, 0);
/* Add Missing Vanilla item Crystal Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3551 AND `item` = 8925;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3551, 8925, 0, 0);
/* Remove non-Vanilla item Instant Poison VIII */
DELETE FROM `npc_vendor` WHERE `entry` = 3551 AND `item` = 43230;
/* Remove non-Vanilla item Instant Poison IX */
DELETE FROM `npc_vendor` WHERE `entry` = 3551 AND `item` = 43231;
/* Remove non-Vanilla item Deadly Poison VIII */
DELETE FROM `npc_vendor` WHERE `entry` = 3551 AND `item` = 43232;
/* Remove non-Vanilla item Deadly Poison IX */
DELETE FROM `npc_vendor` WHERE `entry` = 3551 AND `item` = 43233;
/* Remove non-Vanilla item Wound Poison VI */
DELETE FROM `npc_vendor` WHERE `entry` = 3551 AND `item` = 43234;
/* Remove non-Vanilla item Wound Poison VII */
DELETE FROM `npc_vendor` WHERE `entry` = 3551 AND `item` = 43235;
/* Remove non-Vanilla item Anesthetic Poison II */
DELETE FROM `npc_vendor` WHERE `entry` = 3551 AND `item` = 43237;

/* NPC Andrew Hilbert - 3556 */
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 3556 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3556, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 3556 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3556, 2928, 0, 0);


/* NPC Kyrai - 3561 */
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 3561 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3561, 2928, 0, 0);
/* Add Missing Vanilla item Essence of Pain */
DELETE FROM `npc_vendor` WHERE `entry` = 3561 AND `item` = 2930;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3561, 2930, 0, 0);
/* Add Missing Vanilla item Empty Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3561 AND `item` = 3371;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3561, 3371, 0, 0);
/* Add Missing Vanilla item Leaded Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3561 AND `item` = 3372;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3561, 3372, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 3561 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3561, 3777, 0, 0);
/* Add Missing Vanilla item Thieves' Tools */
DELETE FROM `npc_vendor` WHERE `entry` = 3561 AND `item` = 5060;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3561, 5060, 0, 0);
/* Add Missing Vanilla item Flash Powder */
DELETE FROM `npc_vendor` WHERE `entry` = 3561 AND `item` = 5140;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3561, 5140, 0, 0);
/* Add Missing Vanilla item Deathweed */
DELETE FROM `npc_vendor` WHERE `entry` = 3561 AND `item` = 5173;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3561, 5173, 0, 0);
/* Add Missing Vanilla item Essence of Agony */
DELETE FROM `npc_vendor` WHERE `entry` = 3561 AND `item` = 8923;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3561, 8923, 0, 0);
/* Add Missing Vanilla item Dust of Deterioration */
DELETE FROM `npc_vendor` WHERE `entry` = 3561 AND `item` = 8924;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3561, 8924, 0, 0);
/* Add Missing Vanilla item Crystal Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3561 AND `item` = 8925;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3561, 8925, 0, 0);


/* NPC Alaindia - 3562 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 3562 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 3562 AND `item` = 22148;
/* Add Missing Vanilla item Arcane Dust */
DELETE FROM `npc_vendor` WHERE `entry` = 3562 AND `item` = 17019;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3562, 17019, 0, 0);


/* NPC Dalaran Miner - 3578 */
/* Remove non-Vanilla item Jeweler's Kit */
DELETE FROM `npc_vendor` WHERE `entry` = 3578 AND `item` = 20815;
/* Remove non-Vanilla item Simple Grinder */
DELETE FROM `npc_vendor` WHERE `entry` = 3578 AND `item` = 20824;


/* NPC Aldia - 3608 */
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 3608 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3608, 4471, 0, 0);


/* NPC Narret Shadowgrove - 3614 */
/* Remove non-Vanilla item Simple Flour */
DELETE FROM `npc_vendor` WHERE `entry` = 3614 AND `item` = 30817;


/* NPC Harb Clawhoof - 3685 */
/* Remove non-Vanilla item White Kodo */
DELETE FROM `npc_vendor` WHERE `entry` = 3685 AND `item` = 46100;
/* Add Missing Vanilla item Teal Kodo */
DELETE FROM `npc_vendor` WHERE `entry` = 3685 AND `item` = 15293;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3685, 15293, 0, 0);
/* Add Missing Vanilla item Green Kodo */
DELETE FROM `npc_vendor` WHERE `entry` = 3685 AND `item` = 15292;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3685, 15292, 0, 0);


/* NPC Jadenvis Seawatcher - 3700 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 3700 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 3700 AND `item` = 22148;


/* NPC Syurana - 3779 */
/* Remove non-Vanilla item Blacksmith Hammer */
DELETE FROM `npc_vendor` WHERE `entry` = 3779 AND `item` = 5956;
/* Remove non-Vanilla item Rune Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 3779 AND `item` = 14341;
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3779 AND `item` = 18256;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 3779 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3779, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 3779 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3779, 2928, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 3779 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3779, 3713, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 3779 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3779, 3777, 0, 0);


/* NPC Dalria - 3954 */
/* Remove non-Vanilla item Blacksmith Hammer */
DELETE FROM `npc_vendor` WHERE `entry` = 3954 AND `item` = 5956;
/* Remove non-Vanilla item Rune Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 3954 AND `item` = 14341;
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3954 AND `item` = 18256;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 3954 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3954, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 3954 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3954, 2928, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 3954 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3954, 3713, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 3954 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3954, 3777, 0, 0);


/* NPC Shandrina - 3955 */
/* Remove non-Vanilla item Blacksmith Hammer */
DELETE FROM `npc_vendor` WHERE `entry` = 3955 AND `item` = 5956;
/* Remove non-Vanilla item Rune Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 3955 AND `item` = 14341;
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3955 AND `item` = 18256;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 3955 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3955, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 3955 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3955, 2928, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 3955 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3955, 3713, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 3955 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3955, 3777, 0, 0);
/* Add Missing Vanilla item Expert Cookbook */
DELETE FROM `npc_vendor` WHERE `entry` = 3955 AND `item` = 16072;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3955, 16072, 0, 0);


/* NPC Harklan Moongrove - 3956 */
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3956 AND `item` = 40411;


/* NPC Lardan - 3958 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 3958 AND `item` = 38426;


/* NPC Maliynn - 3961 */
/* Add Missing Vanilla item Shinsollo */
DELETE FROM `npc_vendor` WHERE `entry` = 3961 AND `item` = 16171;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3961, 16171, 0, 0);


/* NPC Haljan Oakheart - 3962 */
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 3962 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3962, 4471, 0, 0);


/* NPC Fahran Silentblade - 3969 */
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 3969 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3969, 2928, 0, 0);
/* Add Missing Vanilla item Essence of Pain */
DELETE FROM `npc_vendor` WHERE `entry` = 3969 AND `item` = 2930;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3969, 2930, 0, 0);
/* Add Missing Vanilla item Empty Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3969 AND `item` = 3371;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3969, 3371, 0, 0);
/* Add Missing Vanilla item Leaded Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3969 AND `item` = 3372;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3969, 3372, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 3969 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3969, 3777, 0, 0);
/* Add Missing Vanilla item Thieves' Tools */
DELETE FROM `npc_vendor` WHERE `entry` = 3969 AND `item` = 5060;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3969, 5060, 0, 0);
/* Add Missing Vanilla item Flash Powder */
DELETE FROM `npc_vendor` WHERE `entry` = 3969 AND `item` = 5140;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3969, 5140, 0, 0);
/* Add Missing Vanilla item Deathweed */
DELETE FROM `npc_vendor` WHERE `entry` = 3969 AND `item` = 5173;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3969, 5173, 0, 0);
/* Add Missing Vanilla item Essence of Agony */
DELETE FROM `npc_vendor` WHERE `entry` = 3969 AND `item` = 8923;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3969, 8923, 0, 0);
/* Add Missing Vanilla item Dust of Deterioration */
DELETE FROM `npc_vendor` WHERE `entry` = 3969 AND `item` = 8924;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3969, 8924, 0, 0);
/* Add Missing Vanilla item Crystal Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 3969 AND `item` = 8925;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3969, 8925, 0, 0);


/* NPC Llana - 3970 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 3970 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 3970 AND `item` = 22148;
/* Add Missing Vanilla item Arcane Dust */
DELETE FROM `npc_vendor` WHERE `entry` = 3970 AND `item` = 17019;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3970, 17019, 0, 0);


/* NPC Grawnal - 4082 */
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 4082 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4082, 4471, 0, 0);


/* NPC Jeeda - 4083 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 4083 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 4083 AND `item` = 22148;
/* Add Missing Vanilla item Arcane Dust */
DELETE FROM `npc_vendor` WHERE `entry` = 4083 AND `item` = 17019;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4083, 17019, 0, 0);


/* NPC Chylina - 4084 */
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 4084 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4084, 4471, 0, 0);


/* NPC Shadi Mistrunner - 8363 */
/* Remove non-Vanilla item Rune Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 8363 AND `item` = 14341;
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 8363 AND `item` = 18256;
/* Add Missing Vanilla item Bleach */
DELETE FROM `npc_vendor` WHERE `entry` = 8363 AND `item` = 2324;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (8363, 2324, 0, 0);
/* Add Missing Vanilla item Green Dye */
DELETE FROM `npc_vendor` WHERE `entry` = 8363 AND `item` = 2605;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (8363, 2605, 0, 0);
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 8363 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (8363, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 8363 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (8363, 2928, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 8363 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (8363, 3713, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 8363 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (8363, 3777, 0, 0);
/* Add Missing Vanilla item Shiny Bauble */
DELETE FROM `npc_vendor` WHERE `entry` = 8363 AND `item` = 6529;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (8363, 6529, 0, 0);
/* Add Missing Vanilla item Blue Dye */
DELETE FROM `npc_vendor` WHERE `entry` = 8363 AND `item` = 6260;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (8363, 6260, 0, 0);


/* NPC Elynna - 4168 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 4168 AND `item` = 38426;


/* NPC Jaeana - 4169 */
/* Remove non-Vanilla item Smoked Talbuk Venison */
DELETE FROM `npc_vendor` WHERE `entry` = 4169 AND `item` = 27854;
/* Remove non-Vanilla item Filtered Draenic Water */
DELETE FROM `npc_vendor` WHERE `entry` = 4169 AND `item` = 28399;
/* Remove non-Vanilla item Pungent Seal Whey */
DELETE FROM `npc_vendor` WHERE `entry` = 4169 AND `item` = 33444;
/* Remove non-Vanilla item Honeymint Tea */
DELETE FROM `npc_vendor` WHERE `entry` = 4169 AND `item` = 33445;
/* Remove non-Vanilla item Salted Venison */
DELETE FROM `npc_vendor` WHERE `entry` = 4169 AND `item` = 33454;
/* Remove non-Vanilla item Mead Basted Caribou */
DELETE FROM `npc_vendor` WHERE `entry` = 4169 AND `item` = 35953;
/* Remove non-Vanilla item Sweetened Goat's Milk */
DELETE FROM `npc_vendor` WHERE `entry` = 4169 AND `item` = 35954;


/* NPC Ellandrieth - 4170 */
/* Remove non-Vanilla item Moonberry Juice */
DELETE FROM `npc_vendor` WHERE `entry` = 4170 AND `item` = 1645;
/* Remove non-Vanilla item Sweet Nectar */
DELETE FROM `npc_vendor` WHERE `entry` = 4170 AND `item` = 1708;
/* Remove non-Vanilla item Accurate Slugs */
DELETE FROM `npc_vendor` WHERE `entry` = 4170 AND `item` = 11284;
/* Remove non-Vanilla item Jagged Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 4170 AND `item` = 11285;
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 4170 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 4170 AND `item` = 28060;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 4170 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4170, 4471, 0, 0);
/* Add Missing Vanilla item Ice Cold Milk */
DELETE FROM `npc_vendor` WHERE `entry` = 4170 AND `item` = 1179;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4170, 1179, 0, 0);
/* Add Missing Vanilla item Blue Ribboned Wrapping Paper */
DELETE FROM `npc_vendor` WHERE `entry` = 4170 AND `item` = 5048;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4170, 5048, 0, 0);


/* NPC Landria - 4173 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 4173 AND `item` = 28053;


/* NPC Dalmond - 4182 */
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 4182 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4182, 4471, 0, 0);


/* NPC Valdaron - 4189 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 4189 AND `item` = 38426;


/* NPC Ullanna - 4194 */
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 4194 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4194, 2692, 0, 0);


/* NPC Chardryn - 4216 */
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 4216 AND `item` = 18256;
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 4216 AND `item` = 40411;


/* NPC Cyroen - 4220 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 4220 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 4220 AND `item` = 22148;
/* Add Missing Vanilla item Arcane Dust */
DELETE FROM `npc_vendor` WHERE `entry` = 4220 AND `item` = 17019;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4220, 17019, 0, 0);


/* NPC Talaelar - 4221 */
/* Remove non-Vanilla item Sunspring Carp */
DELETE FROM `npc_vendor` WHERE `entry` = 4221 AND `item` = 27858;
/* Remove non-Vanilla item Fillet of Icefin */
DELETE FROM `npc_vendor` WHERE `entry` = 4221 AND `item` = 33451;
/* Remove non-Vanilla item Poached Emperor Salmon */
DELETE FROM `npc_vendor` WHERE `entry` = 4221 AND `item` = 35951;


/* NPC Fyldan - 4223 */
/* Remove non-Vanilla item Simple Flour */
DELETE FROM `npc_vendor` WHERE `entry` = 4223 AND `item` = 30817;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 4223 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4223, 2692, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 4223 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4223, 3713, 0, 0);


/* NPC Saenorion - 4225 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 4225 AND `item` = 38426;


/* NPC Mythrin'dir - 4229 */
/* Remove non-Vanilla item Rune Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 4229 AND `item` = 14341;
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 4229 AND `item` = 18256;
/* Add Missing Vanilla item Shiny Bauble */
DELETE FROM `npc_vendor` WHERE `entry` = 4229 AND `item` = 6529;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4229, 6529, 0, 0);
/* Add Missing Vanilla item Bleach */
DELETE FROM `npc_vendor` WHERE `entry` = 4229 AND `item` = 2324;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4229, 2324, 0, 0);
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 4229 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4229, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 4229 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4229, 2928, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 4229 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4229, 3713, 0, 0);
/* Add Missing Vanilla item Blue Dye */
DELETE FROM `npc_vendor` WHERE `entry` = 4229 AND `item` = 6260;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4229, 6260, 0, 0);
/* Add Missing Vanilla item Green Dye */
DELETE FROM `npc_vendor` WHERE `entry` = 4229 AND `item` = 2605;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4229, 2605, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 4229 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4229, 3777, 0, 0);


/* NPC Ulthir - 4226 */
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 4226 AND `item` = 40411;
/* Add Missing Vanilla item Recipe: Superior Mana Potion */
DELETE FROM `npc_vendor` WHERE `entry` = 4226 AND `item` = 13477;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4226, 13477, 1, 7200);


/* NPC Vaean - 4228 */
/* Add Missing Vanilla item Formula: Enchant Chest - Minor Mana */
DELETE FROM `npc_vendor` WHERE `entry` = 4228 AND `item` = 6342;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4228, 6342, 1, 1800);


/* NPC Mydrannul - 4241 */
/* Remove non-Vanilla item Melon Juice */
DELETE FROM `npc_vendor` WHERE `entry` = 4241 AND `item` = 1205;
/* Remove non-Vanilla item Moonberry Juice */
DELETE FROM `npc_vendor` WHERE `entry` = 4241 AND `item` = 1645;
/* Remove non-Vanilla item Sweet Nectar */
DELETE FROM `npc_vendor` WHERE `entry` = 4241 AND `item` = 1708;
/* Remove non-Vanilla item Razor Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 4241 AND `item` = 3030;
/* Remove non-Vanilla item Solid Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 4241 AND `item` = 3033;
/* Remove non-Vanilla item Heavy Brown Bag */
DELETE FROM `npc_vendor` WHERE `entry` = 4241 AND `item` = 4497;
/* Remove non-Vanilla item Accurate Slugs */
DELETE FROM `npc_vendor` WHERE `entry` = 4241 AND `item` = 11284;
/* Remove non-Vanilla item Jagged Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 4241 AND `item` = 11285;
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 4241 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 4241 AND `item` = 28060;
/* Add Missing Vanilla item Ice Cold Milk */
DELETE FROM `npc_vendor` WHERE `entry` = 4241 AND `item` = 1179;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4241, 1179, 0, 0);
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 4241 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4241, 4471, 0, 0);


/* NPC Golnir Bouldertoe - 4256 */
/* Remove non-Vanilla item Jeweler's Kit */
DELETE FROM `npc_vendor` WHERE `entry` = 4256 AND `item` = 20815;
/* Remove non-Vanilla item Simple Grinder */
DELETE FROM `npc_vendor` WHERE `entry` = 4256 AND `item` = 20824;


/* NPC Nyoma - 4265 */
/* Remove non-Vanilla item Simple Flour */
DELETE FROM `npc_vendor` WHERE `entry` = 4265 AND `item` = 30817;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 4265 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4265, 2692, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 4265 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4265, 3713, 0, 0);


/* NPC Ronald Burch - 4553 */
/* Remove non-Vanilla item Simple Flour */
DELETE FROM `npc_vendor` WHERE `entry` = 4553 AND `item` = 30817;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 4553 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4553, 2692, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 4553 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4553, 3713, 0, 0);


/* NPC Tawny Grisette - 4554 */
/* Remove non-Vanilla item Zangar Caps */
DELETE FROM `npc_vendor` WHERE `entry` = 4554 AND `item` = 27859;
/* Remove non-Vanilla item Filtered Draenic Water */
DELETE FROM `npc_vendor` WHERE `entry` = 4554 AND `item` = 28399;
/* Remove non-Vanilla item Pungent Seal Whey */
DELETE FROM `npc_vendor` WHERE `entry` = 4554 AND `item` = 33444;
/* Remove non-Vanilla item Honeymint Tea */
DELETE FROM `npc_vendor` WHERE `entry` = 4554 AND `item` = 33445;
/* Remove non-Vanilla item Honey-Spiced Lichen */
DELETE FROM `npc_vendor` WHERE `entry` = 4554 AND `item` = 33452;
/* Remove non-Vanilla item Sparkling Frostcap */
DELETE FROM `npc_vendor` WHERE `entry` = 4554 AND `item` = 35947;
/* Remove non-Vanilla item Sweetened Goat's Milk */
DELETE FROM `npc_vendor` WHERE `entry` = 4554 AND `item` = 35954;


/* NPC Daniel Bartlett - 4561 */
/* Remove non-Vanilla item Rune Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 4561 AND `item` = 14341;
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 4561 AND `item` = 18256;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 4561 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4561, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 4561 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4561, 2928, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 4561 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4561, 3713, 0, 0);
/* Add Missing Vanilla item Shiny Bauble */
DELETE FROM `npc_vendor` WHERE `entry` = 4561 AND `item` = 6529;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4561, 6529, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 4561 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4561, 3777, 0, 0);
/* Add Missing Vanilla item Bleach */
DELETE FROM `npc_vendor` WHERE `entry` = 4561 AND `item` = 2324;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4561, 2324, 0, 0);
/* Add Missing Vanilla item Green Dye */
DELETE FROM `npc_vendor` WHERE `entry` = 4561 AND `item` = 2605;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4561, 2605, 0, 0);
/* Add Missing Vanilla item Blue Dye */
DELETE FROM `npc_vendor` WHERE `entry` = 4561 AND `item` = 6260;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4561, 6260, 0, 0);


/* NPC Thomas Mordan - 4562 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 4562 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 4562 AND `item` = 22148;
/* Remove non-Vanilla item Wild Spineleaf */
DELETE FROM `npc_vendor` WHERE `entry` = 4562 AND `item` = 44605;
/* Remove non-Vanilla item Starleaf Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 4562 AND `item` = 44614;
/* Remove non-Vanilla item Devout Candle */
DELETE FROM `npc_vendor` WHERE `entry` = 4562 AND `item` = 44615;
/* Add Missing Vanilla item Arcane Dust */
DELETE FROM `npc_vendor` WHERE `entry` = 4562 AND `item` = 17019;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4562, 17019, 0, 0);


/* NPC Morley Bates - 4571 */
/* Remove non-Vanilla item Zangar Caps */
DELETE FROM `npc_vendor` WHERE `entry` = 4571 AND `item` = 27859;
/* Remove non-Vanilla item Filtered Draenic Water */
DELETE FROM `npc_vendor` WHERE `entry` = 4571 AND `item` = 28399;
/* Remove non-Vanilla item Pungent Seal Whey */
DELETE FROM `npc_vendor` WHERE `entry` = 4571 AND `item` = 33444;
/* Remove non-Vanilla item Honeymint Tea */
DELETE FROM `npc_vendor` WHERE `entry` = 4571 AND `item` = 33445;
/* Remove non-Vanilla item Honey-Spiced Lichen */
DELETE FROM `npc_vendor` WHERE `entry` = 4571 AND `item` = 33452;
/* Remove non-Vanilla item Sparkling Frostcap */
DELETE FROM `npc_vendor` WHERE `entry` = 4571 AND `item` = 35947;
/* Remove non-Vanilla item Sweetened Goat's Milk */
DELETE FROM `npc_vendor` WHERE `entry` = 4571 AND `item` = 35954;


/* NPC Hannah Akeley - 4575 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 4575 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 4575 AND `item` = 22148;
/* Add Missing Vanilla item Arcane Dust */
DELETE FROM `npc_vendor` WHERE `entry` = 4575 AND `item` = 17019;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4575, 17019, 0, 0);


/* NPC Millie Gregorian - 4577 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 4577 AND `item` = 38426;


/* NPC Ezekiel Graves - 4585 */
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 4585 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4585, 2928, 0, 0);
/* Add Missing Vanilla item Essence of Pain */
DELETE FROM `npc_vendor` WHERE `entry` = 4585 AND `item` = 2930;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4585, 2930, 0, 0);
/* Add Missing Vanilla item Empty Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 4585 AND `item` = 3371;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4585, 3371, 0, 0);
/* Add Missing Vanilla item Leaded Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 4585 AND `item` = 3372;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4585, 3372, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 4585 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4585, 3777, 0, 0);
/* Add Missing Vanilla item Thieves' Tools */
DELETE FROM `npc_vendor` WHERE `entry` = 4585 AND `item` = 5060;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4585, 5060, 0, 0);
/* Add Missing Vanilla item Flash Powder */
DELETE FROM `npc_vendor` WHERE `entry` = 4585 AND `item` = 5140;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4585, 5140, 0, 0);
/* Add Missing Vanilla item Deathweed */
DELETE FROM `npc_vendor` WHERE `entry` = 4585 AND `item` = 5173;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4585, 5173, 0, 0);
/* Add Missing Vanilla item Essence of Agony */
DELETE FROM `npc_vendor` WHERE `entry` = 4585 AND `item` = 8923;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4585, 8923, 0, 0);
/* Add Missing Vanilla item Dust of Deterioration */
DELETE FROM `npc_vendor` WHERE `entry` = 4585 AND `item` = 8924;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4585, 8924, 0, 0);
/* Add Missing Vanilla item Crystal Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 4585 AND `item` = 8925;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4585, 8925, 0, 0);
/* Remove non-Vanilla item Instant Poison VIII */
DELETE FROM `npc_vendor` WHERE `entry` = 4585 AND `item` = 43230;
/* Remove non-Vanilla item Instant Poison IX */
DELETE FROM `npc_vendor` WHERE `entry` = 4585 AND `item` = 43231;
/* Remove non-Vanilla item Deadly Poison VIII */
DELETE FROM `npc_vendor` WHERE `entry` = 4585 AND `item` = 43232;
/* Remove non-Vanilla item Deadly Poison IX */
DELETE FROM `npc_vendor` WHERE `entry` = 4585 AND `item` = 43233;
/* Remove non-Vanilla item Wound Poison VI */
DELETE FROM `npc_vendor` WHERE `entry` = 4585 AND `item` = 43234;
/* Remove non-Vanilla item Wound Poison VII */
DELETE FROM `npc_vendor` WHERE `entry` = 4585 AND `item` = 43235;
/* Remove non-Vanilla item Anesthetic Poison II */
DELETE FROM `npc_vendor` WHERE `entry` = 4585 AND `item` = 43237;

    

/* NPC Elizabeth Van Talen - 4587 */
/* Remove non-Vanilla item Hair Trigger */
DELETE FROM `npc_vendor` WHERE `entry` = 4587 AND `item` = 39684;
/* Remove non-Vanilla item Walnut Stock */
DELETE FROM `npc_vendor` WHERE `entry` = 4587 AND `item` = 40533;


/* NPC Joseph Moore - 4589 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 4589 AND `item` = 38426;


/* NPC Sarah Killian - 4599 */
/* Remove non-Vanilla item Jeweler's Kit */
DELETE FROM `npc_vendor` WHERE `entry` = 4599 AND `item` = 20815;
/* Remove non-Vanilla item Simple Grinder */
DELETE FROM `npc_vendor` WHERE `entry` = 4599 AND `item` = 20824;


/* NPC Abigail Sawyer - 4604 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 4604 AND `item` = 28053;


/* NPC Algernon - 4610 */
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 4610 AND `item` = 40411;
/* Add Missing Vanilla item Recipe: Superior Mana Potion */
DELETE FROM `npc_vendor` WHERE `entry` = 4610 AND `item` = 13477;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4610, 13477, 1, 2700);


/* NPC Katrina Alliestar - 4615 */
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 4615 AND `item` = 18256;
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 4615 AND `item` = 40411;


/* NPC Thaddeus Webb - 4617 */
/* Add Missing Vanilla item Formula: Enchant Chest - Minor Mana */
DELETE FROM `npc_vendor` WHERE `entry` = 4617 AND `item` = 6342;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4617, 6342, 1, 7200);


/* NPC Lelanai - 4730 */
/* Add Missing Vanilla item Reins of the Ancient Frostsaber */
DELETE FROM `npc_vendor` WHERE `entry` = 4730 AND `item` = 12302;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4730, 12302, 0, 0);
/* Add Missing Vanilla item Reins of the Nightsaber */
DELETE FROM `npc_vendor` WHERE `entry` = 4730 AND `item` = 12303;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4730, 12303, 0, 0);


/* NPC Zachariah Post - 4731 */
/* Remove non-Vanilla item Black Skeletal Horse */
DELETE FROM `npc_vendor` WHERE `entry` = 4731 AND `item` = 46308;
/* Remove non-Vanilla item Ochre Skeletal Warhorse */
DELETE FROM `npc_vendor` WHERE `entry` = 4731 AND `item` = 47101;


/* NPC Felicia Doan - 4775 */
/* Remove non-Vanilla item Black Dye */
DELETE FROM `npc_vendor` WHERE `entry` = 4775 AND `item` = 2325;
/* Remove non-Vanilla item Gray Dye */
DELETE FROM `npc_vendor` WHERE `entry` = 4775 AND `item` = 4340;
/* Remove non-Vanilla item Yellow Dye */
DELETE FROM `npc_vendor` WHERE `entry` = 4775 AND `item` = 4341;
/* Remove non-Vanilla item Purple Dye */
DELETE FROM `npc_vendor` WHERE `entry` = 4775 AND `item` = 4342;
/* Remove non-Vanilla item Heavy Silken Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 4775 AND `item` = 8343;
/* Remove non-Vanilla item Crystal Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 4775 AND `item` = 8925;
/* Remove non-Vanilla item Rune Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 4775 AND `item` = 14341;
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 4775 AND `item` = 18256;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 4775 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4775, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 4775 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4775, 2928, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 4775 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4775, 3713, 0, 0);
/* Add Missing Vanilla item Bleach */
DELETE FROM `npc_vendor` WHERE `entry` = 4775 AND `item` = 2324;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4775, 2324, 0, 0);
/* Add Missing Vanilla item Blue Dye */
DELETE FROM `npc_vendor` WHERE `entry` = 4775 AND `item` = 6260;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4775, 6260, 0, 0);
/* Add Missing Vanilla item Shiny Bauble */
DELETE FROM `npc_vendor` WHERE `entry` = 4775 AND `item` = 6529;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4775, 6529, 0, 0);
/* Add Missing Vanilla item Green Dye */
DELETE FROM `npc_vendor` WHERE `entry` = 4775 AND `item` = 2605;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4775, 2605, 0, 0);


/* NPC Jawn Highmesa - 4876 */
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 4876 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4876, 4471, 0, 0);


/* NPC Jandia - 4877 */
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 4877 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4877, 2692, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 4877 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4877, 3713, 0, 0);


/* NPC Montarr - 4878 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 4878 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 4878 AND `item` = 22148;
/* Add Missing Vanilla item Arcane Dust */
DELETE FROM `npc_vendor` WHERE `entry` = 4878 AND `item` = 17019;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4878, 17019, 0, 0);


/* NPC Gregor MacVince - 4885 */
/* Add Missing Vanilla item White Stallion Bridle */
DELETE FROM `npc_vendor` WHERE `entry` = 4885 AND `item` = 12353;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4885, 12353, 0, 0);
/* Add Missing Vanilla item Palomino Bridle */
DELETE FROM `npc_vendor` WHERE `entry` = 4885 AND `item` = 12354;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4885, 12354, 0, 0);


/* NPC Mishta - 15179 */
/* Remove non-Vanilla item Blacksmith Hammer */
DELETE FROM `npc_vendor` WHERE `entry` = 15179 AND `item` = 5956;
/* Remove non-Vanilla item Rune Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 15179 AND `item` = 14341;
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 15179 AND `item` = 18256;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 15179 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (15179, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 15179 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (15179, 2928, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 15179 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (15179, 3713, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 15179 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (15179, 3777, 0, 0);


/* NPC Piter Verance - 4890 */
/* Remove non-Vanilla item Augmented Chain Boots */
DELETE FROM `npc_vendor` WHERE `entry` = 4890 AND `item` = 2420;
/* Remove non-Vanilla item Brigandine Boots */
DELETE FROM `npc_vendor` WHERE `entry` = 4890 AND `item` = 2426;
/* Remove non-Vanilla item Russet Boots */
DELETE FROM `npc_vendor` WHERE `entry` = 4890 AND `item` = 2432;
/* Remove non-Vanilla item Embroidered Boots */
DELETE FROM `npc_vendor` WHERE `entry` = 4890 AND `item` = 2438;
/* Remove non-Vanilla item Studded Boots */
DELETE FROM `npc_vendor` WHERE `entry` = 4890 AND `item` = 2467;
/* Remove non-Vanilla item Reinforced Leather Boots */
DELETE FROM `npc_vendor` WHERE `entry` = 4890 AND `item` = 2473;
/* Add Missing Vanilla item Glorious Shoulders */
DELETE FROM `npc_vendor` WHERE `entry` = 4890 AND `item` = 4833;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4890, 4833, 1, 43200);
/* Add Missing Vanilla item Elite Shoulders */
DELETE FROM `npc_vendor` WHERE `entry` = 4890 AND `item` = 4835;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4890, 4835, 1, 43200);


/* NPC Jensen Farran - 4892 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 4892 AND `item` = 28053;


/* NPC Charity Mipsy - 4896 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 4896 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 4896 AND `item` = 28060;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 4896 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4896, 4471, 0, 0);


/* NPC Helenia Olden - 4897 */
/* Remove non-Vanilla item Blacksmith Hammer */
DELETE FROM `npc_vendor` WHERE `entry` = 4897 AND `item` = 5956;
/* Remove non-Vanilla item Rune Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 4897 AND `item` = 14341;
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 4897 AND `item` = 18256;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 4897 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4897, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 4897 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4897, 2928, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 4897 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4897, 3713, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 4897 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4897, 3777, 0, 0);


/* NPC Balai Lok'Wein - 13476 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 13476 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 13476 AND `item` = 22148;
/* Add Missing Vanilla item Manual: Mageweave Bandage */
DELETE FROM `npc_vendor` WHERE `entry` = 13476 AND `item` = 16113;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (13476, 16113, 0, 0);
/* Add Missing Vanilla item Manual: Heavy Silk Bandage */
DELETE FROM `npc_vendor` WHERE `entry` = 13476 AND `item` = 16112;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (13476, 16112, 0, 0);
/* Add Missing Vanilla item Expert First Aid - Under Wraps */
DELETE FROM `npc_vendor` WHERE `entry` = 13476 AND `item` = 16084;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (13476, 16084, 0, 0);


/* NPC Uma Bartulm - 4899 */
/* Remove non-Vanilla item Greater Healing Potion */
DELETE FROM `npc_vendor` WHERE `entry` = 4899 AND `item` = 1710;
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 4899 AND `item` = 40411;


/* NPC Namdo Bizzfizzle - 2683 */
/* Remove non-Vanilla item Hair Trigger */
DELETE FROM `npc_vendor` WHERE `entry` = 2683 AND `item` = 39684;
/* Remove non-Vanilla item Walnut Stock */
DELETE FROM `npc_vendor` WHERE `entry` = 2683 AND `item` = 40533;


/* NPC Ben Trias - 4981 */
/* Remove non-Vanilla item Garadar Sharp */
DELETE FROM `npc_vendor` WHERE `entry` = 4981 AND `item` = 27857;
/* Remove non-Vanilla item Filtered Draenic Water */
DELETE FROM `npc_vendor` WHERE `entry` = 4981 AND `item` = 28399;
/* Remove non-Vanilla item Sour Goat Cheese */
DELETE FROM `npc_vendor` WHERE `entry` = 4981 AND `item` = 33443;
/* Remove non-Vanilla item Pungent Seal Whey */
DELETE FROM `npc_vendor` WHERE `entry` = 4981 AND `item` = 33444;
/* Remove non-Vanilla item Honeymint Tea */
DELETE FROM `npc_vendor` WHERE `entry` = 4981 AND `item` = 33445;
/* Remove non-Vanilla item Briny Hardcheese */
DELETE FROM `npc_vendor` WHERE `entry` = 4981 AND `item` = 35952;
/* Remove non-Vanilla item Sweetened Goat's Milk */
DELETE FROM `npc_vendor` WHERE `entry` = 4981 AND `item` = 35954;


/* NPC Fillius Fizzlespinner - 5100 */
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 5100 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5100, 2692, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 5100 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5100, 3713, 0, 0);


/* NPC Bryllia Ironbrand - 5101 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 5101 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 5101 AND `item` = 28060;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 5101 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5101, 4471, 0, 0);


/* NPC Myra Tyrngaarde - 5109 */
/* Remove non-Vanilla item Mag'har Grainbread */
DELETE FROM `npc_vendor` WHERE `entry` = 5109 AND `item` = 27855;
/* Remove non-Vanilla item Crusty Flatbread */
DELETE FROM `npc_vendor` WHERE `entry` = 5109 AND `item` = 33449;
/* Remove non-Vanilla item Sweet Potato Bread */
DELETE FROM `npc_vendor` WHERE `entry` = 5109 AND `item` = 35950;


/* NPC Barim Jurgenstaad - 5110 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 5110 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 5110 AND `item` = 22148;
/* Add Missing Vanilla item Arcane Dust */
DELETE FROM `npc_vendor` WHERE `entry` = 5110 AND `item` = 17019;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5110, 17019, 0, 0);


/* NPC Innkeeper Firebrew - 5111 */
/* Remove non-Vanilla item Smoked Talbuk Venison */
DELETE FROM `npc_vendor` WHERE `entry` = 5111 AND `item` = 27854;
/* Remove non-Vanilla item Filtered Draenic Water */
DELETE FROM `npc_vendor` WHERE `entry` = 5111 AND `item` = 28399;
/* Remove non-Vanilla item Pungent Seal Whey */
DELETE FROM `npc_vendor` WHERE `entry` = 5111 AND `item` = 33444;
/* Remove non-Vanilla item Honeymint Tea */
DELETE FROM `npc_vendor` WHERE `entry` = 5111 AND `item` = 33445;
/* Remove non-Vanilla item Salted Venison */
DELETE FROM `npc_vendor` WHERE `entry` = 5111 AND `item` = 33454;
/* Remove non-Vanilla item Mead Basted Caribou */
DELETE FROM `npc_vendor` WHERE `entry` = 5111 AND `item` = 35953;
/* Remove non-Vanilla item Sweetened Goat's Milk */
DELETE FROM `npc_vendor` WHERE `entry` = 5111 AND `item` = 35954;


/* NPC Skolmin Goldfury - 5122 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 5122 AND `item` = 28053;


/* NPC Sognar Cliffbeard - 5124 */
/* Remove non-Vanilla item Smoked Talbuk Venison */
DELETE FROM `npc_vendor` WHERE `entry` = 5124 AND `item` = 27854;
/* Remove non-Vanilla item Salted Venison */
DELETE FROM `npc_vendor` WHERE `entry` = 5124 AND `item` = 33454;
/* Remove non-Vanilla item Mead Basted Caribou */
DELETE FROM `npc_vendor` WHERE `entry` = 5124 AND `item` = 35953;


/* NPC Bombus Finespindle - 5128 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 5128 AND `item` = 38426;


/* NPC Gwina Stonebranch - 5138 */
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 5138 AND `item` = 18256;
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 5138 AND `item` = 40411;
/* Add Missing Vanilla item Copper Rod */
DELETE FROM `npc_vendor` WHERE `entry` = 5138 AND `item` = 6217;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5138, 6217, 0, 0);


/* NPC Ginny Longberry - 5151 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 5151 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 5151 AND `item` = 22148;
/* Add Missing Vanilla item Arcane Dust */
DELETE FROM `npc_vendor` WHERE `entry` = 5151 AND `item` = 17019;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5151, 17019, 0, 0);


/* NPC Poranna Snowbraid - 5154 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 5154 AND `item` = 38426;


/* NPC Tilli Thistlefuzz - 5158 */
/* Add Missing Vanilla item Formula: Enchant Chest - Minor Mana */
DELETE FROM `npc_vendor` WHERE `entry` = 5158 AND `item` = 6342;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5158, 6342, 1, 7200);


/* NPC Emrul Riknussun - 5160 */
/* Remove non-Vanilla item Simple Flour */
DELETE FROM `npc_vendor` WHERE `entry` = 5160 AND `item` = 30817;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 5160 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5160, 2692, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 5160 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5160, 3713, 0, 0);


/* NPC Burbik Gearspanner - 5163 */
/* Remove non-Vanilla item Black Dye */
DELETE FROM `npc_vendor` WHERE `entry` = 5163 AND `item` = 2325;
/* Remove non-Vanilla item Red Dye */
DELETE FROM `npc_vendor` WHERE `entry` = 5163 AND `item` = 2604;
/* Remove non-Vanilla item Gray Dye */
DELETE FROM `npc_vendor` WHERE `entry` = 5163 AND `item` = 4340;
/* Remove non-Vanilla item Yellow Dye */
DELETE FROM `npc_vendor` WHERE `entry` = 5163 AND `item` = 4341;
/* Remove non-Vanilla item Purple Dye */
DELETE FROM `npc_vendor` WHERE `entry` = 5163 AND `item` = 4342;
/* Remove non-Vanilla item Fishing Pole */
DELETE FROM `npc_vendor` WHERE `entry` = 5163 AND `item` = 6256;
/* Remove non-Vanilla item Skinning Knife */
DELETE FROM `npc_vendor` WHERE `entry` = 5163 AND `item` = 7005;
/* Remove non-Vanilla item Heavy Silken Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 5163 AND `item` = 8343;
/* Remove non-Vanilla item Crystal Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 5163 AND `item` = 8925;
/* Remove non-Vanilla item Rune Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 5163 AND `item` = 14341;
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 5163 AND `item` = 18256;
/* Add Missing Vanilla item Bleach */
DELETE FROM `npc_vendor` WHERE `entry` = 5163 AND `item` = 2324;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5163, 2324, 0, 0);
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 5163 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5163, 2692, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 5163 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5163, 3713, 0, 0);


/* NPC Tynnus Venomsprout - 5169 */
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 5169 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5169, 2928, 0, 0);
/* Add Missing Vanilla item Essence of Pain */
DELETE FROM `npc_vendor` WHERE `entry` = 5169 AND `item` = 2930;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5169, 2930, 0, 0);
/* Add Missing Vanilla item Empty Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 5169 AND `item` = 3371;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5169, 3371, 0, 0);
/* Add Missing Vanilla item Leaded Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 5169 AND `item` = 3372;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5169, 3372, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 5169 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5169, 3777, 0, 0);
/* Add Missing Vanilla item Thieves' Tools */
DELETE FROM `npc_vendor` WHERE `entry` = 5169 AND `item` = 5060;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5169, 5060, 0, 0);
/* Add Missing Vanilla item Flash Powder */
DELETE FROM `npc_vendor` WHERE `entry` = 5169 AND `item` = 5140;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5169, 5140, 0, 0);
/* Add Missing Vanilla item Deathweed */
DELETE FROM `npc_vendor` WHERE `entry` = 5169 AND `item` = 5173;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5169, 5173, 0, 0);
/* Add Missing Vanilla item Essence of Agony */
DELETE FROM `npc_vendor` WHERE `entry` = 5169 AND `item` = 8923;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5169, 8923, 0, 0);
/* Add Missing Vanilla item Dust of Deterioration */
DELETE FROM `npc_vendor` WHERE `entry` = 5169 AND `item` = 8924;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5169, 8924, 0, 0);
/* Add Missing Vanilla item Crystal Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 5169 AND `item` = 8925;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5169, 8925, 0, 0);


/* NPC Gearcutter Cogspinner - 5175 */
/* Remove non-Vanilla item Schematic: Steam Tonk Controller */
DELETE FROM `npc_vendor` WHERE `entry` = 5175 AND `item` = 22729;
/* Remove non-Vanilla item Hair Trigger */
DELETE FROM `npc_vendor` WHERE `entry` = 5175 AND `item` = 39684;
/* Remove non-Vanilla item Walnut Stock */
DELETE FROM `npc_vendor` WHERE `entry` = 5175 AND `item` = 40533;
/* Add Missing Vanilla item Schematic: Thorium Grenade */
DELETE FROM `npc_vendor` WHERE `entry` = 5175 AND `item` = 16041;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5175, 16041, 1, 10800);
/* Add Missing Vanilla item Schematic: Thorium Widget */
DELETE FROM `npc_vendor` WHERE `entry` = 5175 AND `item` = 16042;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5175, 16042, 1, 10800);


/* NPC Soolie Berryfizz - 5178 */
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 5178 AND `item` = 40411;


/* NPC Erika Tate - 5483 */
/* Remove non-Vanilla item Simple Flour */
DELETE FROM `npc_vendor` WHERE `entry` = 5483 AND `item` = 30817;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 5483 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5483, 2692, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 5483 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5483, 3713, 0, 0);


/* NPC Eldraeith - 5503 */
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 5503 AND `item` = 18256;
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 5503 AND `item` = 40411;


/* NPC Brooke Stonebraid - 5514 */
/* Remove non-Vanilla item Jeweler's Kit */
DELETE FROM `npc_vendor` WHERE `entry` = 5514 AND `item` = 20815;
/* Remove non-Vanilla item Simple Grinder */
DELETE FROM `npc_vendor` WHERE `entry` = 5514 AND `item` = 20824;


/* NPC Billibub Cogspinner - 5519 */
/* Remove non-Vanilla item Hair Trigger */
DELETE FROM `npc_vendor` WHERE `entry` = 5519 AND `item` = 39684;
/* Remove non-Vanilla item Walnut Stock */
DELETE FROM `npc_vendor` WHERE `entry` = 5519 AND `item` = 40533;


/* NPC Jillian Tanner - 5565 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 5565 AND `item` = 38426;


/* NPC Alchemist Pestlezugg - 5594 */
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 5594 AND `item` = 40411;


/* NPC Lilly - 5757 */
/* Add Missing Vanilla item Formula: Enchant Chest - Minor Mana */
DELETE FROM `npc_vendor` WHERE `entry` = 5757 AND `item` = 6342;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5757, 6342, 1, 7200);


/* NPC Leo Sarn - 5758 */
/* Add Missing Vanilla item Formula: Enchant Chest - Minor Mana */
DELETE FROM `npc_vendor` WHERE `entry` = 5758 AND `item` = 6342;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5758, 6342, 1, 7200);


/* NPC Kalldan Felmoon - 5783 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 5783 AND `item` = 38426;


/* NPC Innkeeper Thulbek - 5814 */
/* Add Missing Vanilla item Hunter's Boomstick */
DELETE FROM `npc_vendor` WHERE `entry` = 5814 AND `item` = 2511;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5814, 2511, 0, 0);


/* NPC Shimra - 5817 */
/* Remove non-Vanilla item Rune Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 5817 AND `item` = 14341;
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 5817 AND `item` = 18256;
/* Remove non-Vanilla item Simple Flour */
DELETE FROM `npc_vendor` WHERE `entry` = 5817 AND `item` = 30817;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 5817 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5817, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 5817 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5817, 2928, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 5817 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5817, 3713, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 5817 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5817, 3777, 0, 0);


/* NPC Yonada - 5944 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 5944 AND `item` = 38426;


/* NPC Thelgrum Stonehammer - 6298 */
/* Remove non-Vanilla item Jeweler's Kit */
DELETE FROM `npc_vendor` WHERE `entry` = 6298 AND `item` = 20815;
/* Remove non-Vanilla item Simple Grinder */
DELETE FROM `npc_vendor` WHERE `entry` = 6298 AND `item` = 20824;


/* NPC Gorbold Steelhand - 6301 */
/* Remove non-Vanilla item Rune Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 6301 AND `item` = 14341;
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 6301 AND `item` = 18256;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 6301 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6301, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 6301 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6301, 2928, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 6301 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6301, 3713, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 6301 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6301, 3777, 0, 0);


/* NPC Ghok'kah - 6567 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 6567 AND `item` = 38426;


/* NPC Vizzklick - 6568 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 6568 AND `item` = 38426;


/* NPC Jun'ha - 6574 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 6574 AND `item` = 38426;


/* NPC Brienna Starglow - 6576 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 6576 AND `item` = 38426;


/* NPC Jinky Twizzlefixxit - 6730 */
/* Remove non-Vanilla item Hair Trigger */
DELETE FROM `npc_vendor` WHERE `entry` = 6730 AND `item` = 39684;
/* Remove non-Vanilla item Walnut Stock */
DELETE FROM `npc_vendor` WHERE `entry` = 6730 AND `item` = 40533;


/* NPC Harlown Darkweave - 6731 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 6731 AND `item` = 38426;


/* NPC Innkeeper Saelienne - 6735 */
/* Remove non-Vanilla item Skethyl Berries */
DELETE FROM `npc_vendor` WHERE `entry` = 6735 AND `item` = 27856;
/* Remove non-Vanilla item Filtered Draenic Water */
DELETE FROM `npc_vendor` WHERE `entry` = 6735 AND `item` = 28399;
/* Remove non-Vanilla item Pungent Seal Whey */
DELETE FROM `npc_vendor` WHERE `entry` = 6735 AND `item` = 33444;
/* Remove non-Vanilla item Honeymint Tea */
DELETE FROM `npc_vendor` WHERE `entry` = 6735 AND `item` = 33445;
/* Remove non-Vanilla item Savory Snowplum */
DELETE FROM `npc_vendor` WHERE `entry` = 6735 AND `item` = 35948;
/* Remove non-Vanilla item Tundra Berries */
DELETE FROM `npc_vendor` WHERE `entry` = 6735 AND `item` = 35949;
/* Remove non-Vanilla item Sweetened Goat's Milk */
DELETE FROM `npc_vendor` WHERE `entry` = 6735 AND `item` = 35954;


/* NPC Innkeeper Kimlya - 6738 */
/* Remove non-Vanilla item Slitherskin Mackerel */
DELETE FROM `npc_vendor` WHERE `entry` = 6738 AND `item` = 787;
/* Remove non-Vanilla item Longjaw Mud Snapper */
DELETE FROM `npc_vendor` WHERE `entry` = 6738 AND `item` = 4592;
/* Remove non-Vanilla item Bristle Whisker Catfish */
DELETE FROM `npc_vendor` WHERE `entry` = 6738 AND `item` = 4593;
/* Remove non-Vanilla item Rockscale Cod */
DELETE FROM `npc_vendor` WHERE `entry` = 6738 AND `item` = 4594;
/* Remove non-Vanilla item Spinefin Halibut */
DELETE FROM `npc_vendor` WHERE `entry` = 6738 AND `item` = 8957;
/* Remove non-Vanilla item Striped Yellowtail */
DELETE FROM `npc_vendor` WHERE `entry` = 6738 AND `item` = 21552;
/* Add Missing Vanilla item Deep Fried Plantains */
DELETE FROM `npc_vendor` WHERE `entry` = 6738 AND `item` = 8953;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6738, 8953, 0, 0);
/* Add Missing Vanilla item Moon Harvest Pumpkin */
DELETE FROM `npc_vendor` WHERE `entry` = 6738 AND `item` = 4602;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6738, 4602, 0, 0);
/* Add Missing Vanilla item Goldenbark Apple */
DELETE FROM `npc_vendor` WHERE `entry` = 6738 AND `item` = 4539;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6738, 4539, 0, 0);
/* Add Missing Vanilla item Snapvine Watermelon */
DELETE FROM `npc_vendor` WHERE `entry` = 6738 AND `item` = 4538;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6738, 4538, 0, 0);
/* Add Missing Vanilla item Tel'Abim Banana */
DELETE FROM `npc_vendor` WHERE `entry` = 6738 AND `item` = 4537;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6738, 4537, 0, 0);
/* Add Missing Vanilla item Shiny Red Apple */
DELETE FROM `npc_vendor` WHERE `entry` = 6738 AND `item` = 4536;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6738, 4536, 0, 0);


/* NPC Innkeeper Allison - 6740 */
/* Remove non-Vanilla item Shiny Red Apple */
DELETE FROM `npc_vendor` WHERE `entry` = 6740 AND `item` = 4536;
/* Remove non-Vanilla item Tel'Abim Banana */
DELETE FROM `npc_vendor` WHERE `entry` = 6740 AND `item` = 4537;
/* Remove non-Vanilla item Snapvine Watermelon */
DELETE FROM `npc_vendor` WHERE `entry` = 6740 AND `item` = 4538;
/* Remove non-Vanilla item Goldenbark Apple */
DELETE FROM `npc_vendor` WHERE `entry` = 6740 AND `item` = 4539;
/* Remove non-Vanilla item Moon Harvest Pumpkin */
DELETE FROM `npc_vendor` WHERE `entry` = 6740 AND `item` = 4602;
/* Remove non-Vanilla item Deep Fried Plantains */
DELETE FROM `npc_vendor` WHERE `entry` = 6740 AND `item` = 8953;
/* Remove non-Vanilla item Mag'har Grainbread */
DELETE FROM `npc_vendor` WHERE `entry` = 6740 AND `item` = 27855;
/* Remove non-Vanilla item Skethyl Berries */
DELETE FROM `npc_vendor` WHERE `entry` = 6740 AND `item` = 27856;
/* Remove non-Vanilla item Filtered Draenic Water */
DELETE FROM `npc_vendor` WHERE `entry` = 6740 AND `item` = 28399;
/* Remove non-Vanilla item Pungent Seal Whey */
DELETE FROM `npc_vendor` WHERE `entry` = 6740 AND `item` = 33444;
/* Remove non-Vanilla item Honeymint Tea */
DELETE FROM `npc_vendor` WHERE `entry` = 6740 AND `item` = 33445;
/* Remove non-Vanilla item Crusty Flatbread */
DELETE FROM `npc_vendor` WHERE `entry` = 6740 AND `item` = 33449;
/* Remove non-Vanilla item Savory Snowplum */
DELETE FROM `npc_vendor` WHERE `entry` = 6740 AND `item` = 35948;
/* Remove non-Vanilla item Tundra Berries */
DELETE FROM `npc_vendor` WHERE `entry` = 6740 AND `item` = 35949;
/* Remove non-Vanilla item Sweet Potato Bread */
DELETE FROM `npc_vendor` WHERE `entry` = 6740 AND `item` = 35950;
/* Remove non-Vanilla item Sweetened Goat's Milk */
DELETE FROM `npc_vendor` WHERE `entry` = 6740 AND `item` = 35954;


/* NPC Innkeeper Norman - 6741 */
/* Remove non-Vanilla item Zangar Caps */
DELETE FROM `npc_vendor` WHERE `entry` = 6741 AND `item` = 27859;
/* Remove non-Vanilla item Filtered Draenic Water */
DELETE FROM `npc_vendor` WHERE `entry` = 6741 AND `item` = 28399;
/* Remove non-Vanilla item Pungent Seal Whey */
DELETE FROM `npc_vendor` WHERE `entry` = 6741 AND `item` = 33444;
/* Remove non-Vanilla item Honeymint Tea */
DELETE FROM `npc_vendor` WHERE `entry` = 6741 AND `item` = 33445;
/* Remove non-Vanilla item Honey-Spiced Lichen */
DELETE FROM `npc_vendor` WHERE `entry` = 6741 AND `item` = 33452;
/* Remove non-Vanilla item Sparkling Frostcap */
DELETE FROM `npc_vendor` WHERE `entry` = 6741 AND `item` = 35947;
/* Remove non-Vanilla item Sweetened Goat's Milk */
DELETE FROM `npc_vendor` WHERE `entry` = 6741 AND `item` = 35954;


/* NPC Innkeeper Pala - 6746 */
/* Remove non-Vanilla item Garadar Sharp */
DELETE FROM `npc_vendor` WHERE `entry` = 6746 AND `item` = 27857;
/* Remove non-Vanilla item Filtered Draenic Water */
DELETE FROM `npc_vendor` WHERE `entry` = 6746 AND `item` = 28399;
/* Remove non-Vanilla item Sour Goat Cheese */
DELETE FROM `npc_vendor` WHERE `entry` = 6746 AND `item` = 33443;
/* Remove non-Vanilla item Pungent Seal Whey */
DELETE FROM `npc_vendor` WHERE `entry` = 6746 AND `item` = 33444;
/* Remove non-Vanilla item Honeymint Tea */
DELETE FROM `npc_vendor` WHERE `entry` = 6746 AND `item` = 33445;
/* Remove non-Vanilla item Briny Hardcheese */
DELETE FROM `npc_vendor` WHERE `entry` = 6746 AND `item` = 35952;
/* Remove non-Vanilla item Sweetened Goat's Milk */
DELETE FROM `npc_vendor` WHERE `entry` = 6746 AND `item` = 35954;


/* NPC Zan Shivsproket - 6777 */
/* Remove non-Vanilla item Hair Trigger */
DELETE FROM `npc_vendor` WHERE `entry` = 6777 AND `item` = 39684;
/* Remove non-Vanilla item Walnut Stock */
DELETE FROM `npc_vendor` WHERE `entry` = 6777 AND `item` = 40533;


/* NPC Smudge Thunderwood - 6779 */
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 6779 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6779, 2928, 0, 0);
/* Add Missing Vanilla item Essence of Pain */
DELETE FROM `npc_vendor` WHERE `entry` = 6779 AND `item` = 2930;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6779, 2930, 0, 0);
/* Add Missing Vanilla item Empty Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 6779 AND `item` = 3371;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6779, 3371, 0, 0);
/* Add Missing Vanilla item Leaded Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 6779 AND `item` = 3372;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6779, 3372, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 6779 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6779, 3777, 0, 0);
/* Add Missing Vanilla item Thieves' Tools */
DELETE FROM `npc_vendor` WHERE `entry` = 6779 AND `item` = 5060;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6779, 5060, 0, 0);
/* Add Missing Vanilla item Flash Powder */
DELETE FROM `npc_vendor` WHERE `entry` = 6779 AND `item` = 5140;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6779, 5140, 0, 0);
/* Add Missing Vanilla item Deathweed */
DELETE FROM `npc_vendor` WHERE `entry` = 6779 AND `item` = 5173;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6779, 5173, 0, 0);
/* Add Missing Vanilla item Essence of Agony */
DELETE FROM `npc_vendor` WHERE `entry` = 6779 AND `item` = 8923;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6779, 8923, 0, 0);
/* Add Missing Vanilla item Dust of Deterioration */
DELETE FROM `npc_vendor` WHERE `entry` = 6779 AND `item` = 8924;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6779, 8924, 0, 0);
/* Add Missing Vanilla item Crystal Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 6779 AND `item` = 8925;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (6779, 8925, 0, 0);


/* NPC Innkeeper Gryshka - 6929 */
/* Remove non-Vanilla item Smoked Talbuk Venison */
DELETE FROM `npc_vendor` WHERE `entry` = 6929 AND `item` = 27854;
/* Remove non-Vanilla item Filtered Draenic Water */
DELETE FROM `npc_vendor` WHERE `entry` = 6929 AND `item` = 28399;
/* Remove non-Vanilla item Pungent Seal Whey */
DELETE FROM `npc_vendor` WHERE `entry` = 6929 AND `item` = 33444;
/* Remove non-Vanilla item Honeymint Tea */
DELETE FROM `npc_vendor` WHERE `entry` = 6929 AND `item` = 33445;
/* Remove non-Vanilla item Salted Venison */
DELETE FROM `npc_vendor` WHERE `entry` = 6929 AND `item` = 33454;
/* Remove non-Vanilla item Mead Basted Caribou */
DELETE FROM `npc_vendor` WHERE `entry` = 6929 AND `item` = 35953;
/* Remove non-Vanilla item Sweetened Goat's Milk */
DELETE FROM `npc_vendor` WHERE `entry` = 6929 AND `item` = 35954;


/* NPC Caretaker Alen - 11038 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 11038 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 11038 AND `item` = 28060;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 11038 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (11038, 4471, 0, 0);


/* NPC Yuka Screwspigot - 9544 */
/* Remove non-Vanilla item Hair Trigger */
DELETE FROM `npc_vendor` WHERE `entry` = 9544 AND `item` = 39684;
/* Remove non-Vanilla item Walnut Stock */
DELETE FROM `npc_vendor` WHERE `entry` = 9544 AND `item` = 40533;


/* NPC Master Smith Burninate - 14624 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 14624 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 14624 AND `item` = 28060;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 14624 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (14624, 4471, 0, 0);


/* NPC Pratt McGrubben - 7852 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 7852 AND `item` = 38426;


/* NPC Jangdor Swiftstrider - 7854 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 7854 AND `item` = 38426;


/* NPC Darnall - 7940 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 7940 AND `item` = 38426;
/* Add Missing Vanilla item Pattern: Runecloth Boots */
DELETE FROM `npc_vendor` WHERE `entry` = 7940 AND `item` = 14488;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (7940, 14488, 1, 3600);


/* NPC Faralorn - 7942 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 7942 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 7942 AND `item` = 28060;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 7942 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (7942, 4471, 0, 0);


/* NPC Vivianna - 7947 */
/* Remove non-Vanilla item Rune Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 7947 AND `item` = 14341;
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 7947 AND `item` = 18256;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 7947 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (7947, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 7947 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (7947, 2928, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 7947 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (7947, 3713, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 7947 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (7947, 3777, 0, 0);


/* NPC Zjolnir - 7952 */
/* Add Missing Vanilla item Whistle of the Mottled Red Raptor */
DELETE FROM `npc_vendor` WHERE `entry` = 7952 AND `item` = 8586;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (7952, 8586, 0, 0);
/* Add Missing Vanilla item Whistle of the Ivory Raptor */
DELETE FROM `npc_vendor` WHERE `entry` = 7952 AND `item` = 13317;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (7952, 13317, 0, 0);


/* NPC Milli Featherwhistle - 7955 */
/* Add Missing Vanilla item White Mechanostrider Mod B */
DELETE FROM `npc_vendor` WHERE `entry` = 7955 AND `item` = 13326;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (7955, 13326, 0, 0);
/* Add Missing Vanilla item Icy Blue Mechanostrider Mod A */
DELETE FROM `npc_vendor` WHERE `entry` = 7955 AND `item` = 13327;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (7955, 13327, 0, 0);


/* NPC Bimble Longberry - 7978 */
/* Remove non-Vanilla item Skethyl Berries */
DELETE FROM `npc_vendor` WHERE `entry` = 7978 AND `item` = 27856;
/* Remove non-Vanilla item Savory Snowplum */
DELETE FROM `npc_vendor` WHERE `entry` = 7978 AND `item` = 35948;
/* Remove non-Vanilla item Tundra Berries */
DELETE FROM `npc_vendor` WHERE `entry` = 7978 AND `item` = 35949;


/* NPC Blizrik Buckshot - 8131 */
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 8131 AND `item` = 28060;


/* NPC Jabbey - 8139 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 8139 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 8139 AND `item` = 28060;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 8139 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (8139, 4471, 0, 0);


/* NPC Sheendra Tallgrass - 8145 */
/* Remove non-Vanilla item Rune Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 8145 AND `item` = 14341;
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 8145 AND `item` = 18256;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 8145 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (8145, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 8145 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (8145, 2928, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 8145 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (8145, 3713, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 8145 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (8145, 3777, 0, 0);


/* NPC Calandrath - 15174 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 15174 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 15174 AND `item` = 28060;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 15174 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (15174, 4471, 0, 0);


/* NPC Logannas - 8157 */
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 8157 AND `item` = 40411;


/* NPC Bronk - 8158 */
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 8158 AND `item` = 40411;


/* NPC Nioma - 8160 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 8160 AND `item` = 38426;


/* NPC Rartar - 8177 */
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 8177 AND `item` = 40411;


/* NPC Nina Lightbrew - 8178 */
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 8178 AND `item` = 40411;


/* NPC Kixxle - 8305 */
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 8305 AND `item` = 40411;


/* NPC Tarban Hearthgrain - 8307 */
/* Remove non-Vanilla item Simple Flour */
DELETE FROM `npc_vendor` WHERE `entry` = 8307 AND `item` = 30817;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 8307 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (8307, 2692, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 8307 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (8307, 3713, 0, 0);


/* NPC Chepi - 8361 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 8361 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 8361 AND `item` = 22148;
/* Remove non-Vanilla item Wild Spineleaf */
DELETE FROM `npc_vendor` WHERE `entry` = 8361 AND `item` = 44605;
/* Remove non-Vanilla item Starleaf Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 8361 AND `item` = 44614;
/* Remove non-Vanilla item Devout Candle */
DELETE FROM `npc_vendor` WHERE `entry` = 8361 AND `item` = 44615;
/* Add Missing Vanilla item Arcane Dust */
DELETE FROM `npc_vendor` WHERE `entry` = 8361 AND `item` = 17019;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (8361, 17019, 0, 0);


/* NPC Kuruk - 8362 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 8362 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 8362 AND `item` = 28060;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 8362 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (8362, 4471, 0, 0);


/* NPC Jubie Gadgetspring - 8678 */
/* Remove non-Vanilla item Hair Trigger */
DELETE FROM `npc_vendor` WHERE `entry` = 8678 AND `item` = 39684;
/* Remove non-Vanilla item Walnut Stock */
DELETE FROM `npc_vendor` WHERE `entry` = 8678 AND `item` = 40533;


/* NPC Outfitter Eric - 8681 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 8681 AND `item` = 38426;


/* NPC Christopher Hewen - 8934 */
/* Remove non-Vanilla item Rune Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 8934 AND `item` = 14341;
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 8934 AND `item` = 18256;
/* Remove non-Vanilla item Simple Flour */
DELETE FROM `npc_vendor` WHERE `entry` = 8934 AND `item` = 30817;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 8934 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (8934, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 8934 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (8934, 2928, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 8934 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (8934, 3713, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 8934 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (8934, 3777, 0, 0);


/* NPC Cawind Trueaim - 9548 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 9548 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 9548 AND `item` = 28060;


/* NPC Starn - 9551 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 9551 AND `item` = 28053;


/* NPC Zanara - 9552 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 9552 AND `item` = 28053;


/* NPC Mu'uta - 9555 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 9555 AND `item` = 28053;


/* NPC Kireena - 9636 */
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 9636 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (9636, 2692, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 9636 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (9636, 3713, 0, 0);
/* Add Missing Vanilla item Skinning Knife */
DELETE FROM `npc_vendor` WHERE `entry` = 9636 AND `item` = 7005;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (9636, 7005, 0, 0);
/* Add Missing Vanilla item Shiny Bauble */
DELETE FROM `npc_vendor` WHERE `entry` = 9636 AND `item` = 6529;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (9636, 6529, 0, 0);
/* Add Missing Vanilla item Gray Dye */
DELETE FROM `npc_vendor` WHERE `entry` = 9636 AND `item` = 4340;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (9636, 4340, 0, 0);
/* Add Missing Vanilla item Heavy Silken Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 9636 AND `item` = 8343;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (9636, 8343, 0, 0);
/* Add Missing Vanilla item Crystal Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 9636 AND `item` = 8925;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (9636, 8925, 0, 0);
/* Add Missing Vanilla item Yellow Dye */
DELETE FROM `npc_vendor` WHERE `entry` = 9636 AND `item` = 4341;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (9636, 4341, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 9636 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (9636, 3777, 0, 0);
/* Add Missing Vanilla item Red Dye */
DELETE FROM `npc_vendor` WHERE `entry` = 9636 AND `item` = 2604;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (9636, 2604, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 9636 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (9636, 2928, 0, 0);
/* Add Missing Vanilla item Fishing Pole */
DELETE FROM `npc_vendor` WHERE `entry` = 9636 AND `item` = 6256;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (9636, 6256, 0, 0);
/* Add Missing Vanilla item Black Dye */
DELETE FROM `npc_vendor` WHERE `entry` = 9636 AND `item` = 2325;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (9636, 2325, 0, 0);
/* Add Missing Vanilla item Purple Dye */
DELETE FROM `npc_vendor` WHERE `entry` = 9636 AND `item` = 4342;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (9636, 4342, 0, 0);


/* NPC Tink Sprocketwhistle - 9676 */
/* Remove non-Vanilla item Copper Tube */
DELETE FROM `npc_vendor` WHERE `entry` = 9676 AND `item` = 4361;
/* Remove non-Vanilla item Copper Modulator */
DELETE FROM `npc_vendor` WHERE `entry` = 9676 AND `item` = 4363;
/* Remove non-Vanilla item Bronze Tube */
DELETE FROM `npc_vendor` WHERE `entry` = 9676 AND `item` = 4371;
/* Remove non-Vanilla item Gyrochronatom */
DELETE FROM `npc_vendor` WHERE `entry` = 9676 AND `item` = 4389;
/* Remove non-Vanilla item Silver Contact */
DELETE FROM `npc_vendor` WHERE `entry` = 9676 AND `item` = 4404;
/* Remove non-Vanilla item Hair Trigger */
DELETE FROM `npc_vendor` WHERE `entry` = 9676 AND `item` = 39684;
/* Remove non-Vanilla item Walnut Stock */
DELETE FROM `npc_vendor` WHERE `entry` = 9676 AND `item` = 40533;


/* NPC Wixxrak - 11184 */
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 11184 AND `item` = 28060;


/* NPC Xizzer Fizzbolt - 11185 */
/* Remove non-Vanilla item Hair Trigger */
DELETE FROM `npc_vendor` WHERE `entry` = 11185 AND `item` = 39684;
/* Remove non-Vanilla item Walnut Stock */
DELETE FROM `npc_vendor` WHERE `entry` = 11185 AND `item` = 40533;
/* Add Missing Vanilla item Schematic: Thorium Tube */
DELETE FROM `npc_vendor` WHERE `entry` = 11185 AND `item` = 16047;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (11185, 16047, 1, 10800);


/* NPC Lunnix Sprocketslip - 11186 */
/* Remove non-Vanilla item Jeweler's Kit */
DELETE FROM `npc_vendor` WHERE `entry` = 11186 AND `item` = 20815;
/* Remove non-Vanilla item Simple Grinder */
DELETE FROM `npc_vendor` WHERE `entry` = 11186 AND `item` = 20824;


/* NPC Evie Whirlbrew - 11188 */
/* Remove non-Vanilla item Enchanted Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 11188 AND `item` = 40411;
/* Add Missing Vanilla item Recipe: Major Healing Potion */
DELETE FROM `npc_vendor` WHERE `entry` = 11188 AND `item` = 13480;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (11188, 13480, 1, 7200);


/* NPC Gorn One Eye - 11555 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 11555 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 11555 AND `item` = 28060;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 11555 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (11555, 4471, 0, 0);


/* NPC Masat T'andr - 11874 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 11874 AND `item` = 38426;


/* NPC Daeolyn Summerleaf - 12021 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 12021 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 12021 AND `item` = 28060;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 12021 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12021, 4471, 0, 0);


/* NPC Lorelae Wintersong - 12022 */
/* Remove non-Vanilla item Rune Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 12022 AND `item` = 14341;
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 12022 AND `item` = 18256;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 12022 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12022, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 12022 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12022, 2928, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 12022 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12022, 3713, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 12022 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12022, 3777, 0, 0);


/* NPC Tukk - 12027 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 12027 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 12027 AND `item` = 28060;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 12027 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12027, 4471, 0, 0);


/* NPC Lah'Mawhani - 12028 */
/* Remove non-Vanilla item Rune Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 12028 AND `item` = 14341;
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 12028 AND `item` = 18256;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 12028 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12028, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 12028 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12028, 2928, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 12028 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12028, 3713, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 12028 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12028, 3777, 0, 0);


/* NPC Wulan - 12033 */
/* Remove non-Vanilla item Simple Flour */
DELETE FROM `npc_vendor` WHERE `entry` = 12033 AND `item` = 30817;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 12033 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12033, 2692, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 12033 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12033, 3713, 0, 0);
/* Add Missing Vanilla item Expert Cookbook */
DELETE FROM `npc_vendor` WHERE `entry` = 12033 AND `item` = 16072;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12033, 16072, 0, 0);


/* NPC Kulwia - 12043 */
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 12043 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12043, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 12043 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12043, 2928, 0, 0);


/* NPC Vendor-Tron 1000 - 12245 */
/* Remove non-Vanilla item Blacksmith Hammer */
DELETE FROM `npc_vendor` WHERE `entry` = 12245 AND `item` = 5956;
/* Remove non-Vanilla item Rune Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 12245 AND `item` = 14341;
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 12245 AND `item` = 18256;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 12245 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12245, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 12245 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12245, 2928, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 12245 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12245, 3713, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 12245 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12245, 3777, 0, 0);


/* NPC Super-Seller 680 - 12246 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 12246 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 12246 AND `item` = 28060;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 12246 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12246, 4471, 0, 0);


/* NPC Master Sergeant Biggins - 12781 */
/* Remove non-Vanilla item Sergeant's Cape */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 16342;
/* Remove non-Vanilla item Sergeant's Cape */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 18440;
/* Remove non-Vanilla item Sergeant's Cape */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 18441;
/* Remove non-Vanilla item Master Sergeant's Insignia */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 18442;
/* Remove non-Vanilla item Master Sergeant's Insignia */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 18443;
/* Remove non-Vanilla item Master Sergeant's Insignia */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 18444;
/* Remove non-Vanilla item Sergeant Major's Plate Wristguards */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 18445;
/* Remove non-Vanilla item Sergeant Major's Plate Wristguards */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 18447;
/* Remove non-Vanilla item Sergeant Major's Chain Armguards */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 18448;
/* Remove non-Vanilla item Sergeant Major's Chain Armguards */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 18449;
/* Remove non-Vanilla item Sergeant Major's Leather Armsplints */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 18452;
/* Remove non-Vanilla item Sergeant Major's Leather Armsplints */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 18453;
/* Remove non-Vanilla item Sergeant Major's Dragonhide Armsplints */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 18454;
/* Remove non-Vanilla item Sergeant Major's Dragonhide Armsplints */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 18455;
/* Remove non-Vanilla item Sergeant Major's Silk Cuffs */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 18456;
/* Remove non-Vanilla item Sergeant Major's Silk Cuffs */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 18457;
/* Remove non-Vanilla item Insignia of the Alliance */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 18854;
/* Remove non-Vanilla item Insignia of the Alliance */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 18856;
/* Remove non-Vanilla item Insignia of the Alliance */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 18857;
/* Remove non-Vanilla item Insignia of the Alliance */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 18858;
/* Remove non-Vanilla item Insignia of the Alliance */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 18859;
/* Remove non-Vanilla item Insignia of the Alliance */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 18862;
/* Remove non-Vanilla item Insignia of the Alliance */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 18863;
/* Remove non-Vanilla item Insignia of the Alliance */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 18864;
/* Remove non-Vanilla item Talisman of the Alliance */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 25829;
/* Remove non-Vanilla item Runed Ornate Ruby */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 28118;
/* Remove non-Vanilla item Smooth Ornate Dawnstone */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 28119;
/* Remove non-Vanilla item Gleaming Ornate Dawnstone */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 28120;
/* Remove non-Vanilla item Potent Ornate Topaz */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 28123;
/* Remove non-Vanilla item Medallion of the Alliance */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 28234;
/* Remove non-Vanilla item Medallion of the Alliance */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 28235;
/* Remove non-Vanilla item Medallion of the Alliance */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 28236;
/* Remove non-Vanilla item Medallion of the Alliance */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 28237;
/* Remove non-Vanilla item Medallion of the Alliance */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 28238;
/* Remove non-Vanilla item Band of Triumph */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 28246;
/* Remove non-Vanilla item Band of Dominance */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 28247;
/* Remove non-Vanilla item Bold Ornate Ruby */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 28362;
/* Remove non-Vanilla item Inscribed Ornate Topaz */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 28363;
/* Remove non-Vanilla item Sergeant's Heavy Cape */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 28379;
/* Remove non-Vanilla item Sergeant's Heavy Cloak */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 28380;
/* Remove non-Vanilla item Insignia of the Alliance */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 29593;
/* Remove non-Vanilla item Medallion of the Alliance */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 30348;
/* Remove non-Vanilla item Medallion of the Alliance */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 30349;
/* Remove non-Vanilla item Medallion of the Alliance */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 30350;
/* Remove non-Vanilla item Medallion of the Alliance */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 30351;
/* Remove non-Vanilla item Major Combat Healing Potion */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 31838;
/* Remove non-Vanilla item Major Combat Healing Potion */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 31839;
/* Remove non-Vanilla item Major Combat Mana Potion */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 31840;
/* Remove non-Vanilla item Major Combat Mana Potion */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 31841;
/* Remove non-Vanilla item Major Combat Healing Potion */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 31852;
/* Remove non-Vanilla item Major Combat Healing Potion */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 31853;
/* Remove non-Vanilla item Major Combat Mana Potion */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 31854;
/* Remove non-Vanilla item Major Combat Mana Potion */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 31855;
/* Remove non-Vanilla item Star's Tears */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 32453;
/* Remove non-Vanilla item Star's Lament */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 32455;
/* Remove non-Vanilla item Medallion of the Alliance */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 37864;
/* Remove non-Vanilla item Medallion of the Alliance */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 38589;
/* Remove non-Vanilla item Greater Inscription of the Gladiator */
DELETE FROM `npc_vendor` WHERE `entry` = 12781 AND `item` = 44957;


/* NPC Brave Stonehide - 12793 */
/* Remove non-Vanilla item Senior Sergeant's Insignia */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 15200;
/* Remove non-Vanilla item Senior Sergeant's Insignia */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 16335;
/* Remove non-Vanilla item Sergeant's Cloak */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 16341;
/* Remove non-Vanilla item First Sergeant's Silk Cuffs */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 16486;
/* Remove non-Vanilla item First Sergeant's Leather Armguards */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 16497;
/* Remove non-Vanilla item First Sergeant's Mail Wristguards */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 16532;
/* Remove non-Vanilla item Sergeant's Cloak */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 18427;
/* Remove non-Vanilla item Senior Sergeant's Insignia */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 18428;
/* Remove non-Vanilla item First Sergeant's Plate Bracers */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 18429;
/* Remove non-Vanilla item First Sergeant's Plate Bracers */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 18430;
/* Remove non-Vanilla item First Sergeant's Mail Wristguards */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 18432;
/* Remove non-Vanilla item First Sergeant's Dragonhide Armguards */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 18434;
/* Remove non-Vanilla item First Sergeant's Leather Armguards */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 18435;
/* Remove non-Vanilla item First Sergeant's Dragonhide Armguards */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 18436;
/* Remove non-Vanilla item First Sergeant's Silk Cuffs */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 18437;
/* Remove non-Vanilla item Sergeant's Cloak */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 18461;
/* Remove non-Vanilla item Insignia of the Horde */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 18834;
/* Remove non-Vanilla item Insignia of the Horde */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 18845;
/* Remove non-Vanilla item Insignia of the Horde */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 18846;
/* Remove non-Vanilla item Insignia of the Horde */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 18849;
/* Remove non-Vanilla item Insignia of the Horde */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 18850;
/* Remove non-Vanilla item Insignia of the Horde */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 18851;
/* Remove non-Vanilla item Insignia of the Horde */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 18852;
/* Remove non-Vanilla item Insignia of the Horde */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 18853;
/* Remove non-Vanilla item Talisman of the Horde */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 24551;
/* Remove non-Vanilla item Runed Ornate Ruby */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 28118;
/* Remove non-Vanilla item Smooth Ornate Dawnstone */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 28119;
/* Remove non-Vanilla item Gleaming Ornate Dawnstone */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 28120;
/* Remove non-Vanilla item Potent Ornate Topaz */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 28123;
/* Remove non-Vanilla item Medallion of the Horde */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 28239;
/* Remove non-Vanilla item Medallion of the Horde */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 28240;
/* Remove non-Vanilla item Medallion of the Horde */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 28241;
/* Remove non-Vanilla item Medallion of the Horde */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 28242;
/* Remove non-Vanilla item Medallion of the Horde */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 28243;
/* Remove non-Vanilla item Band of Triumph */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 28246;
/* Remove non-Vanilla item Band of Dominance */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 28247;
/* Remove non-Vanilla item Bold Ornate Ruby */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 28362;
/* Remove non-Vanilla item Inscribed Ornate Topaz */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 28363;
/* Remove non-Vanilla item Sergeant's Heavy Cloak */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 28377;
/* Remove non-Vanilla item Sergeant's Heavy Cape */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 28378;
/* Remove non-Vanilla item Insignia of the Horde */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 29592;
/* Remove non-Vanilla item Medallion of the Horde */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 30343;
/* Remove non-Vanilla item Medallion of the Horde */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 30344;
/* Remove non-Vanilla item Medallion of the Horde */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 30345;
/* Remove non-Vanilla item Medallion of the Horde */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 30346;
/* Remove non-Vanilla item Major Combat Healing Potion */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 31838;
/* Remove non-Vanilla item Major Combat Healing Potion */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 31839;
/* Remove non-Vanilla item Major Combat Mana Potion */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 31840;
/* Remove non-Vanilla item Major Combat Mana Potion */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 31841;
/* Remove non-Vanilla item Major Combat Healing Potion */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 31852;
/* Remove non-Vanilla item Major Combat Healing Potion */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 31853;
/* Remove non-Vanilla item Major Combat Mana Potion */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 31854;
/* Remove non-Vanilla item Major Combat Mana Potion */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 31855;
/* Remove non-Vanilla item Star's Tears */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 32453;
/* Remove non-Vanilla item Star's Lament */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 32455;
/* Remove non-Vanilla item Medallion of the Horde */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 37865;
/* Remove non-Vanilla item Medallion of the Horde */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 38588;
/* Remove non-Vanilla item Greater Inscription of the Gladiator */
DELETE FROM `npc_vendor` WHERE `entry` = 12793 AND `item` = 44957;


/* NPC Jase Farlane - 12941 */
/* Remove non-Vanilla item Blacksmith Hammer */
DELETE FROM `npc_vendor` WHERE `entry` = 12941 AND `item` = 5956;
/* Remove non-Vanilla item Rune Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 12941 AND `item` = 14341;
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 12941 AND `item` = 18256;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 12941 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12941, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 12941 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12941, 2928, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 12941 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12941, 3713, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 12941 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12941, 3777, 0, 0);
/* Add Missing Vanilla item Pattern: Runic Leather Headband */
DELETE FROM `npc_vendor` WHERE `entry` = 12941 AND `item` = 15756;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12941, 15756, 1, 3600);


/* NPC Leonard Porter - 12942 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 12942 AND `item` = 38426;


/* NPC Werg Thickblade - 12943 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 12943 AND `item` = 38426;


/* NPC Zannok Hidepiercer - 12956 */
/* Remove non-Vanilla item Eternium Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 12956 AND `item` = 38426;


/* NPC Blimo Gadgetspring - 12957 */
/* Remove non-Vanilla item Blacksmith Hammer */
DELETE FROM `npc_vendor` WHERE `entry` = 12957 AND `item` = 5956;
/* Remove non-Vanilla item Rune Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 12957 AND `item` = 14341;
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 12957 AND `item` = 18256;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 12957 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12957, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 12957 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12957, 2928, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 12957 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12957, 3713, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 12957 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12957, 3777, 0, 0);


/* NPC Gigget Zipcoil - 12958 */
/* Remove non-Vanilla item Blacksmith Hammer */
DELETE FROM `npc_vendor` WHERE `entry` = 12958 AND `item` = 5956;
/* Remove non-Vanilla item Rune Thread */
DELETE FROM `npc_vendor` WHERE `entry` = 12958 AND `item` = 14341;
/* Remove non-Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 12958 AND `item` = 18256;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 12958 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12958, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 12958 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12958, 2928, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 12958 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12958, 3713, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 12958 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12958, 3777, 0, 0);


/* NPC Nergal - 12959 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 12959 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 12959 AND `item` = 28060;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 12959 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12959, 4471, 0, 0);


/* NPC Christi Galvanis - 12960 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 12960 AND `item` = 28053;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 12960 AND `item` = 28060;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 12960 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (12960, 4471, 0, 0);


/* NPC Thanthaldis Snowgleam - 13217 */
/* Add Missing Vanilla item The Frostwolf Artichoke */
DELETE FROM `npc_vendor` WHERE `entry` = 13217 AND `item` = 19484;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (13217, 19484, 0, 0);


/* NPC Jekyll Flandring - 13219 */
/* Add Missing Vanilla item Peeling the Onion */
DELETE FROM `npc_vendor` WHERE `entry` = 13219 AND `item` = 19483;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (13219, 19483, 0, 0);


/* NPC Penney Copperpinch - 13420 */
/* Add Missing Vanilla item Fake Mistletoe */
DELETE FROM `npc_vendor` WHERE `entry` = 13420 AND `item` = 17195;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (13420, 17195, 0, 0);


/* NPC Wulmort Jinglepocket - 13433 */
/* Add Missing Vanilla item Fake Mistletoe */
DELETE FROM `npc_vendor` WHERE `entry` = 13433 AND `item` = 17195;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (13433, 17195, 0, 0);


/* NPC Khole Jinglepocket - 13435 */
/* Add Missing Vanilla item Fake Mistletoe */
DELETE FROM `npc_vendor` WHERE `entry` = 13435 AND `item` = 17195;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (13435, 17195, 0, 0);


/* NPC Brinna Valanaar - 14301 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 14301 AND `item` = 28053;


/* NPC Field Repair Bot 74A - 14337 */
/* Remove non-Vanilla item Hair Trigger */
DELETE FROM `npc_vendor` WHERE `entry` = 14337 AND `item` = 39684;
/* Remove non-Vanilla item Walnut Stock */
DELETE FROM `npc_vendor` WHERE `entry` = 14337 AND `item` = 40533;


/* NPC Zorbin Fandazzle - 14637 */
/* Remove non-Vanilla item Hair Trigger */
DELETE FROM `npc_vendor` WHERE `entry` = 14637 AND `item` = 39684;
/* Remove non-Vanilla item Walnut Stock */
DELETE FROM `npc_vendor` WHERE `entry` = 14637 AND `item` = 40533;


/* NPC Otho Moji'ko - 14738 */
/* Remove non-Vanilla item Simple Flour */
DELETE FROM `npc_vendor` WHERE `entry` = 14738 AND `item` = 30817;
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 14738 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (14738, 2692, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 14738 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (14738, 3713, 0, 0);


/* NPC Mystic Yayo'jin - 14739 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 14739 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 14739 AND `item` = 22148;
/* Add Missing Vanilla item Arcane Dust */
DELETE FROM `npc_vendor` WHERE `entry` = 14739 AND `item` = 17019;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (14739, 17019, 0, 0);


/* NPC Kelm Hargunth - 14754 */
/* Remove non-Vanilla item Outrider's Lamellar Legguards */
DELETE FROM `npc_vendor` WHERE `entry` = 14754 AND `item` = 30498;

/* Kelm Hargunth refuses to show his vendor inventory */
/* This will create a clone of Kelm Kargunth (14754) */

SET @Kelm := 114754;

DELETE FROM `creature_template` WHERE `entry` = @Kelm;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, 
`minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, 
`DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, 
`trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, 
`mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, 
`RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@Kelm, 0, 0, 0, 0, 0, 'Kelm Hargunth', 'Warsong Supply Officer', NULL, 0, 55, 55, 0, 1515, 4226, 1, 1.14286, 1, 1, 20, 1, 1, 0, 3.15, 
2000, 2000, 1, 1, 1, 4096, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 20, 1, 1.4, 1, 0, 0, 1, 0, 0, 0, '', 12340);

DELETE FROM `creature_template_locale` WHERE `entry` = @Kelm;
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES
(@Kelm, 'deDE', 'Kelm Hargunth', 'Versorgungsoffizier des Kriegshymnenklans', 18019),
(@Kelm, 'esES', 'Kelm Hargunth', 'Oficial de suministros Grito de Guerra', 18019),
(@Kelm, 'esMX', 'Kelm Hargunth', 'Oficial de suministros Grito de Guerra', 18019),
(@Kelm, 'frFR', 'Kelm Hargunth', 'Officier de ravitaillement Chanteguerre', 18019),
(@Kelm, 'koKR', '켈름 하건스', '전쟁노래 병참장교', 18019),
(@Kelm, 'ruRU', 'Кельм Харгюнт', 'Снабженец Песни Войны', 18019),
(@Kelm, 'zhCN', '凯尔姆·哈古斯', '战歌军需官', 18019),
(@Kelm, 'zhTW', '戰歌補給員哈古斯', '戰歌物資官', 18019);

DELETE FROM `creature_template_model` WHERE `CreatureID` = @Kelm;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (@Kelm, 0, 14785, 1, 1, 12340);

DELETE FROM `creature` WHERE `id1` = @Kelm;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, 
`spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(614754, @Kelm, 0, 0, 1, 0, 0, 1, 1, 1, 1046.54, -2104.31, 123.065, 3.94444, 600, 0, 0, 52280, 0, 0, 0, 4226, 0, '', 0, 0, NULL);

DELETE FROM `creature_equip_template` WHERE `CreatureID` = @Kelm;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES (@Kelm, 1, 14870, 0, 0, 18019);

DELETE FROM `npc_vendor` WHERE `entry` = @Kelm;

/* Add Warsong Gulch Healing and Mana Potions */
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES 
(@Kelm, 17348, 1564), (@Kelm, 17349, 2354), (@Kelm, 17351, 2354),  (@Kelm, 17352, 1564);

/* Add Warsong Gulch Rations and Bandages */
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES 
(@Kelm, 19060), (@Kelm, 19061), (@Kelm, 19062), (@Kelm, 19066), (@Kelm, 19067), (@Kelm, 19068);

/* Add Warsong Gulch Equipment */
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES 
(@Kelm, 19505, 2969), (@Kelm, 19510, 491), (@Kelm, 19511, 930), (@Kelm, 19512, 884), (@Kelm, 19513, 838), (@Kelm, 19518, 491), (@Kelm, 19519, 930), (@Kelm, 19520, 884), (@Kelm, 19521, 838), 
(@Kelm, 19526, 492), (@Kelm, 19527, 931), (@Kelm, 19528, 885), (@Kelm, 19529, 839), (@Kelm, 19534, 491), (@Kelm, 19535, 930), (@Kelm, 19536, 884), (@Kelm, 19537, 838), (@Kelm, 19542, 747), 
(@Kelm, 19543, 968), (@Kelm, 19544, 917), (@Kelm, 19545, 871), (@Kelm, 19550, 701), (@Kelm, 19551, 968), (@Kelm, 19552, 917), (@Kelm, 19553, 871), (@Kelm, 19558, 747), (@Kelm, 19559, 968), 
(@Kelm, 19560, 917), (@Kelm, 19561, 871), (@Kelm, 19566, 490), (@Kelm, 19567, 929), (@Kelm, 19568, 883), (@Kelm, 19569, 837), (@Kelm, 19578, 488), (@Kelm, 19580, 990), (@Kelm, 19581, 989), 
(@Kelm, 19582, 488), (@Kelm, 19583, 990), (@Kelm, 19584, 989), (@Kelm, 19587, 488), (@Kelm, 19589, 990), (@Kelm, 19590, 989), (@Kelm, 19595, 488), (@Kelm, 19596, 990), (@Kelm, 19597, 989),
(@Kelm, 20425, 821), (@Kelm, 20426, 822), (@Kelm, 20427, 823), (@Kelm, 20429, 822), (@Kelm, 20430, 826), (@Kelm, 20437, 826), (@Kelm, 20441, 826), (@Kelm, 20442, 822), (@Kelm, 21565, 1054), 
(@Kelm, 21566, 1055), (@Kelm, 21567, 1054), (@Kelm, 21568, 1055), (@Kelm, 22651, 748), (@Kelm, 22673, 748), (@Kelm, 22676, 748), (@Kelm, 22740, 748), (@Kelm, 22741, 748), (@Kelm, 22747, 748);

/* Disable the spawn of the original Kelm */
UPDATE `creature` SET `spawnMask` = 0 WHERE `id1` = 14754;

/* Link related quests to clone of Kelm */
UPDATE `creature_queststarter` SET `id` = @Kelm WHERE `quest` IN (7866, 7867, 7868);
UPDATE `creature_questender` SET `id` = @Kelm WHERE `quest` IN (7866, 7867, 7868);


/* NPC Lhara - 14846 */
/* Remove non-Vanilla item Mountain Silversage */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 13465;
/* Remove non-Vanilla item Black Lotus */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 13468;
/* Remove non-Vanilla item Knothide Leather */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 21887;
/* Remove non-Vanilla item Mote of Air */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 22572;
/* Remove non-Vanilla item Mote of Earth */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 22573;
/* Remove non-Vanilla item Mote of Fire */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 22574;
/* Remove non-Vanilla item Mote of Life */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 22575;
/* Remove non-Vanilla item Mote of Mana */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 22576;
/* Remove non-Vanilla item Mote of Shadow */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 22577;
/* Remove non-Vanilla item Mote of Water */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 22578;
/* Remove non-Vanilla item Ragveil */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 22787;
/* Remove non-Vanilla item Terocone */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 22789;
/* Remove non-Vanilla item Ancient Lichen */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 22790;
/* Remove non-Vanilla item Netherbloom */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 22791;
/* Remove non-Vanilla item Nightmare Vine */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 22792;
/* Remove non-Vanilla item Mana Thistle */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 22793;
/* Remove non-Vanilla item Fel Lotus */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 22794;
/* Remove non-Vanilla item Living Ruby */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 23436;
/* Remove non-Vanilla item Talasite */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 23437;
/* Remove non-Vanilla item Star of Elune */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 23438;
/* Remove non-Vanilla item Noble Topaz */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 23439;
/* Remove non-Vanilla item Dawnstone */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 23440;
/* Remove non-Vanilla item Nightseye */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 23441;
/* Remove non-Vanilla item Heavy Knothide Leather */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 23793;
/* Remove non-Vanilla item Fel Hide */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 25707;
/* Remove non-Vanilla item Thick Clefthoof Leather */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 25708;
/* Remove non-Vanilla item Borean Leather */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 33568;
/* Remove non-Vanilla item Goldclover */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 36901;
/* Remove non-Vanilla item Adder's Tongue */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 36903;
/* Remove non-Vanilla item Tiger Lily */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 36904;
/* Remove non-Vanilla item Lichbloom */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 36905;
/* Remove non-Vanilla item Icethorn */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 36906;
/* Remove non-Vanilla item Talandra's Rose */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 36907;
/* Remove non-Vanilla item Frost Lotus */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 36908;
/* Remove non-Vanilla item Crystallized Air */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 37700;
/* Remove non-Vanilla item Crystallized Earth */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 37701;
/* Remove non-Vanilla item Crystallized Fire */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 37702;
/* Remove non-Vanilla item Crystallized Shadow */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 37703;
/* Remove non-Vanilla item Crystallized Life */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 37704;
/* Remove non-Vanilla item Crystallized Water */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 37705;
/* Remove non-Vanilla item Deadnettle */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 37921;
/* Remove non-Vanilla item Heavy Borean Leather */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 38425;
/* Remove non-Vanilla item Arctic Fur */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 44128;
/* Remove non-Vanilla item Northrend Mystery Gem Pouch */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 46812;
/* Add Missing Vanilla item Sylvan Shortbow */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 11308;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (14846, 11308, 1, 43200);
/* Add Missing Vanilla item Dense Shortbow */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 11305;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (14846, 11305, 1, 43200);
/* Add Missing Vanilla item Sturdy Recurve */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 11306;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (14846, 11306, 1, 43200);
/* Add Missing Vanilla item Fine Shortbow */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 11303;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (14846, 11303, 1, 43200);
/* Add Missing Vanilla item Salt */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 4289;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (14846, 4289, 0, 0);
/* Add Missing Vanilla item Daring Dirk */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 12248;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (14846, 12248, 1, 3600);
/* Add Missing Vanilla item Big Stick */
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` = 12251;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (14846, 12251, 1, 3600);


/* NPC Professor Thaddeus Paleo - 14847 */
/* Remove non-Vanilla item Super Healing Potion */
DELETE FROM `npc_vendor` WHERE `entry` = 14847 AND `item` = 22829;
/* Remove non-Vanilla item Super Mana Potion */
DELETE FROM `npc_vendor` WHERE `entry` = 14847 AND `item` = 22832;
/* Remove non-Vanilla item Scroll of Agility V */
DELETE FROM `npc_vendor` WHERE `entry` = 14847 AND `item` = 27498;
/* Remove non-Vanilla item Scroll of Intellect V */
DELETE FROM `npc_vendor` WHERE `entry` = 14847 AND `item` = 27499;
/* Remove non-Vanilla item Scroll of Protection V */
DELETE FROM `npc_vendor` WHERE `entry` = 14847 AND `item` = 27500;
/* Remove non-Vanilla item Scroll of Spirit V */
DELETE FROM `npc_vendor` WHERE `entry` = 14847 AND `item` = 27501;
/* Remove non-Vanilla item Scroll of Stamina V */
DELETE FROM `npc_vendor` WHERE `entry` = 14847 AND `item` = 27502;
/* Remove non-Vanilla item Scroll of Strength V */
DELETE FROM `npc_vendor` WHERE `entry` = 14847 AND `item` = 27503;
/* Remove non-Vanilla item Runic Healing Potion */
DELETE FROM `npc_vendor` WHERE `entry` = 14847 AND `item` = 33447;
/* Remove non-Vanilla item Scroll of Agility VI */
DELETE FROM `npc_vendor` WHERE `entry` = 14847 AND `item` = 33457;
/* Remove non-Vanilla item Scroll of Intellect VI */
DELETE FROM `npc_vendor` WHERE `entry` = 14847 AND `item` = 33458;
/* Remove non-Vanilla item Scroll of Protection VI */
DELETE FROM `npc_vendor` WHERE `entry` = 14847 AND `item` = 33459;
/* Remove non-Vanilla item Scroll of Spirit VI */
DELETE FROM `npc_vendor` WHERE `entry` = 14847 AND `item` = 33460;
/* Remove non-Vanilla item Scroll of Stamina VI */
DELETE FROM `npc_vendor` WHERE `entry` = 14847 AND `item` = 33461;
/* Remove non-Vanilla item Scroll of Strength VI */
DELETE FROM `npc_vendor` WHERE `entry` = 14847 AND `item` = 33462;
/* Remove non-Vanilla item Scroll of Intellect VII */
DELETE FROM `npc_vendor` WHERE `entry` = 14847 AND `item` = 37091;
/* Remove non-Vanilla item Scroll of Stamina VII */
DELETE FROM `npc_vendor` WHERE `entry` = 14847 AND `item` = 37093;
/* Remove non-Vanilla item Scroll of Spirit VII */
DELETE FROM `npc_vendor` WHERE `entry` = 14847 AND `item` = 37097;
/* Remove non-Vanilla item Scroll of Agility VII */
DELETE FROM `npc_vendor` WHERE `entry` = 14847 AND `item` = 43463;
/* Remove non-Vanilla item Scroll of Strength VII */
DELETE FROM `npc_vendor` WHERE `entry` = 14847 AND `item` = 43465;
/* Remove non-Vanilla item Scroll of Protection VII */
DELETE FROM `npc_vendor` WHERE `entry` = 14847 AND `item` = 43467;
/* Add Missing Vanilla item Crystal Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 14847 AND `item` = 8925;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (14847, 8925, 0, 0);
/* Add Missing Vanilla item Leaded Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 14847 AND `item` = 3372;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (14847, 3372, 0, 0);
/* Add Missing Vanilla item Empty Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 14847 AND `item` = 3371;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (14847, 3371, 0, 0);
/* Add Missing Vanilla item Imbued Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 14847 AND `item` = 18256;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (14847, 18256, 0, 0);


/* NPC Khur Hornstriker - 15175 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 15175 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 15175 AND `item` = 22148;
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 15175 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (15175, 2928, 0, 0);
/* Add Missing Vanilla item Essence of Pain */
DELETE FROM `npc_vendor` WHERE `entry` = 15175 AND `item` = 2930;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (15175, 2930, 0, 0);
/* Add Missing Vanilla item Empty Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 15175 AND `item` = 3371;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (15175, 3371, 0, 0);
/* Add Missing Vanilla item Leaded Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 15175 AND `item` = 3372;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (15175, 3372, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 15175 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (15175, 3777, 0, 0);
/* Add Missing Vanilla item Thieves' Tools */
DELETE FROM `npc_vendor` WHERE `entry` = 15175 AND `item` = 5060;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (15175, 5060, 0, 0);
/* Add Missing Vanilla item Flash Powder */
DELETE FROM `npc_vendor` WHERE `entry` = 15175 AND `item` = 5140;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (15175, 5140, 0, 0);
/* Add Missing Vanilla item Deathweed */
DELETE FROM `npc_vendor` WHERE `entry` = 15175 AND `item` = 5173;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (15175, 5173, 0, 0);
/* Add Missing Vanilla item Essence of Agony */
DELETE FROM `npc_vendor` WHERE `entry` = 15175 AND `item` = 8923;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (15175, 8923, 0, 0);
/* Add Missing Vanilla item Dust of Deterioration */
DELETE FROM `npc_vendor` WHERE `entry` = 15175 AND `item` = 8924;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (15175, 8924, 0, 0);
/* Add Missing Vanilla item Crystal Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 15175 AND `item` = 8925;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (15175, 8925, 0, 0);


/* NPC Kania - 15419 */
/* Add Missing Vanilla item Formula: Enchant Chest - Minor Mana */
DELETE FROM `npc_vendor` WHERE `entry` = 15419 AND `item` = 6342;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (15419, 6342, 1, 7200);


/* NPC Vi'el - 16015 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 16015 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 16015 AND `item` = 22148;


/* NPC Renn'az - 17598 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 17598 AND `item` = 28053;


/* NPC Engineer Torquespindle - 25082 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 25082 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 25082 AND `item` = 22148;


/* NPC Kurdrum Barleybeard - 5139 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 5139 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 5139 AND `item` = 22148;
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 5139 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5139, 2928, 0, 0);
/* Add Missing Vanilla item Empty Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 5139 AND `item` = 3371;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5139, 3371, 0, 0);
/* Add Missing Vanilla item Leaded Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 5139 AND `item` = 3372;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5139, 3372, 0, 0);
/* Add Missing Vanilla item Thieves' Tools */
DELETE FROM `npc_vendor` WHERE `entry` = 5139 AND `item` = 5060;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5139, 5060, 0, 0);
/* Add Missing Vanilla item Crystal Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 5139 AND `item` = 8925;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5139, 8925, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 5139 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5139, 3777, 0, 0);
/* Add Missing Vanilla item Essence of Pain */
DELETE FROM `npc_vendor` WHERE `entry` = 5139 AND `item` = 2930;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5139, 2930, 0, 0);
/* Add Missing Vanilla item Flash Powder */
DELETE FROM `npc_vendor` WHERE `entry` = 5139 AND `item` = 5140;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5139, 5140, 0, 0);
/* Add Missing Vanilla item Deathweed */
DELETE FROM `npc_vendor` WHERE `entry` = 5139 AND `item` = 5173;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5139, 5173, 0, 0);
/* Add Missing Vanilla item Essence of Agony */
DELETE FROM `npc_vendor` WHERE `entry` = 5139 AND `item` = 8923;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5139, 8923, 0, 0);
/* Add Missing Vanilla item Dust of Deterioration */
DELETE FROM `npc_vendor` WHERE `entry` = 5139 AND `item` = 8924;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5139, 8924, 0, 0);


/* NPC Svalbrad Farmountain - 5135 */
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 5135 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5135, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 5135 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5135, 2928, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 5135 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5135, 3713, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 5135 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5135, 3777, 0, 0);


/* NPC Jonivera Farmountain - 5134 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 5134 AND `item` = 28053;
/* Remove non-Vanilla item Blackflight Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 5134 AND `item` = 28056;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 5134 AND `item` = 28060;
/* Remove non-Vanilla item Ironbite Shell */
DELETE FROM `npc_vendor` WHERE `entry` = 5134 AND `item` = 28061;
/* Remove non-Vanilla item Frostbite Bullets */
DELETE FROM `npc_vendor` WHERE `entry` = 5134 AND `item` = 41584;
/* Remove non-Vanilla item Terrorshaft Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 5134 AND `item` = 41586;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 5134 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (5134, 4471, 0, 0);


/* NPC Brogus Thunderbrew - 4255 */
/* Remove non-Vanilla item Smoked Talbuk Venison */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 27854;
/* Remove non-Vanilla item Mag'har Grainbread */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 27855;
/* Remove non-Vanilla item Skethyl Berries */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 27856;
/* Remove non-Vanilla item Garadar Sharp */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 27857;
/* Remove non-Vanilla item Sunspring Carp */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 27858;
/* Remove non-Vanilla item Purified Draenic Water */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 27860;
/* Remove non-Vanilla item Filtered Draenic Water */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 28399;
/* Remove non-Vanilla item Mag'har Mild Cheese */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 29448;
/* Remove non-Vanilla item Bladespire Bagel */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 29449;
/* Remove non-Vanilla item Telaari Grapes */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 29450;
/* Remove non-Vanilla item Clefthoof Ribs */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 29451;
/* Remove non-Vanilla item Zangar Trout */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 29452;
/* Remove non-Vanilla item Sour Goat Cheese */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 33443;
/* Remove non-Vanilla item Pungent Seal Whey */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 33444;
/* Remove non-Vanilla item Honeymint Tea */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 33445;
/* Remove non-Vanilla item Crusty Flatbread */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 33449;
/* Remove non-Vanilla item Fillet of Icefin */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 33451;
/* Remove non-Vanilla item Salted Venison */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 33454;
/* Remove non-Vanilla item Savory Snowplum */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 35948;
/* Remove non-Vanilla item Tundra Berries */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 35949;
/* Remove non-Vanilla item Sweet Potato Bread */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 35950;
/* Remove non-Vanilla item Poached Emperor Salmon */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 35951;
/* Remove non-Vanilla item Briny Hardcheese */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 35952;
/* Remove non-Vanilla item Mead Basted Caribou */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 35953;
/* Remove non-Vanilla item Sweetened Goat's Milk */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 35954;
/* Add Missing Vanilla item Tough Jerky */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 117;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 117, 0, 0);
/* Add Missing Vanilla item Refreshing Spring Water */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 159;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 159, 0, 0);
/* Add Missing Vanilla item Dalaran Sharp */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 414;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 414, 0, 0);
/* Add Missing Vanilla item Dwarven Mild */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 422;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 422, 0, 0);
/* Add Missing Vanilla item Slitherskin Mackerel */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 787;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 787, 0, 0);
/* Add Missing Vanilla item Ice Cold Milk */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 1179;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 1179, 0, 0);
/* Add Missing Vanilla item Melon Juice */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 1205;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 1205, 0, 0);
/* Add Missing Vanilla item Moonberry Juice */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 1645;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 1645, 0, 0);
/* Add Missing Vanilla item Stormwind Brie */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 1707;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 1707, 0, 0);
/* Add Missing Vanilla item Sweet Nectar */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 1708;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 1708, 0, 0);
/* Add Missing Vanilla item Darnassian Bleu */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 2070;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 2070, 0, 0);
/* Add Missing Vanilla item Haunch of Meat */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 2287;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 2287, 0, 0);
/* Add Missing Vanilla item Mutton Chop */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 3770;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 3770, 0, 0);
/* Add Missing Vanilla item Wild Hog Shank */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 3771;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 3771, 0, 0);
/* Add Missing Vanilla item Fine Aged Cheddar */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 3927;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 3927, 0, 0);
/* Add Missing Vanilla item Shiny Red Apple */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 4536;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 4536, 0, 0);
/* Add Missing Vanilla item Tel'Abim Banana */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 4537;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 4537, 0, 0);
/* Add Missing Vanilla item Snapvine Watermelon */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 4538;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 4538, 0, 0);
/* Add Missing Vanilla item Goldenbark Apple */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 4539;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 4539, 0, 0);
/* Add Missing Vanilla item Tough Hunk of Bread */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 4540;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 4540, 0, 0);
/* Add Missing Vanilla item Freshly Baked Bread */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 4541;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 4541, 0, 0);
/* Add Missing Vanilla item Moist Cornbread */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 4542;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 4542, 0, 0);
/* Add Missing Vanilla item Mulgore Spice Bread */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 4544;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 4544, 0, 0);
/* Add Missing Vanilla item Longjaw Mud Snapper */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 4592;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 4592, 0, 0);
/* Add Missing Vanilla item Bristle Whisker Catfish */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 4593;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 4593, 0, 0);
/* Add Missing Vanilla item Rockscale Cod */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 4594;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 4594, 0, 0);
/* Add Missing Vanilla item Cured Ham Steak */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 4599;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 4599, 0, 0);
/* Add Missing Vanilla item Soft Banana Bread */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 4601;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 4601, 0, 0);
/* Add Missing Vanilla item Moon Harvest Pumpkin */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 4602;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 4602, 0, 0);
/* Add Missing Vanilla item Striped Yellowtail */
DELETE FROM `npc_vendor` WHERE `entry` = 4255 AND `item` = 21552;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (4255, 21552, 0, 0);


/* NPC Gaelden Hammersmith - 13216 */
/* Add Missing Vanilla item The Frostwolf Artichoke */
DELETE FROM `npc_vendor` WHERE `entry` = 13216 AND `item` = 19484;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (13216, 19484, 0, 0);


/* NPC Zora Guthrek - 2225 */
/* Add Missing Vanilla item Hot Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 2225 AND `item` = 2692;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2225, 2692, 0, 0);
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 2225 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2225, 2928, 0, 0);
/* Add Missing Vanilla item Soothing Spices */
DELETE FROM `npc_vendor` WHERE `entry` = 2225 AND `item` = 3713;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2225, 3713, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 2225 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (2225, 3777, 0, 0);


/* NPC Rarck - 3625 */
/* Remove non-Vanilla item Wicked Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 3625 AND `item` = 28053;
/* Remove non-Vanilla item Blackflight Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 3625 AND `item` = 28056;
/* Remove non-Vanilla item Impact Shot */
DELETE FROM `npc_vendor` WHERE `entry` = 3625 AND `item` = 28060;
/* Remove non-Vanilla item Ironbite Shell */
DELETE FROM `npc_vendor` WHERE `entry` = 3625 AND `item` = 28061;
/* Remove non-Vanilla item Frostbite Bullets */
DELETE FROM `npc_vendor` WHERE `entry` = 3625 AND `item` = 41584;
/* Remove non-Vanilla item Terrorshaft Arrow */
DELETE FROM `npc_vendor` WHERE `entry` = 3625 AND `item` = 41586;
/* Add Missing Vanilla item Flint and Tinder */
DELETE FROM `npc_vendor` WHERE `entry` = 3625 AND `item` = 4471;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3625, 4471, 0, 0);


/* NPC Shrye Ragefist - 10367 */
/* Remove non-Vanilla item Smoked Talbuk Venison */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 27854;
/* Remove non-Vanilla item Mag'har Grainbread */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 27855;
/* Remove non-Vanilla item Garadar Sharp */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 27857;
/* Remove non-Vanilla item Sunspring Carp */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 27858;
/* Remove non-Vanilla item Zangar Caps */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 27859;
/* Remove non-Vanilla item Purified Draenic Water */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 27860;
/* Remove non-Vanilla item Filtered Draenic Water */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 28399;
/* Remove non-Vanilla item Mag'har Mild Cheese */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 29448;
/* Remove non-Vanilla item Bladespire Bagel */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 29449;
/* Remove non-Vanilla item Clefthoof Ribs */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 29451;
/* Remove non-Vanilla item Zangar Trout */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 29452;
/* Remove non-Vanilla item Sporeggar Mushroom */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 29453;
/* Remove non-Vanilla item Sour Goat Cheese */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 33443;
/* Remove non-Vanilla item Pungent Seal Whey */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 33444;
/* Remove non-Vanilla item Honeymint Tea */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 33445;
/* Remove non-Vanilla item Crusty Flatbread */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 33449;
/* Remove non-Vanilla item Fillet of Icefin */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 33451;
/* Remove non-Vanilla item Honey-Spiced Lichen */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 33452;
/* Remove non-Vanilla item Salted Venison */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 33454;
/* Remove non-Vanilla item Sparkling Frostcap */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 35947;
/* Remove non-Vanilla item Sweet Potato Bread */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 35950;
/* Remove non-Vanilla item Poached Emperor Salmon */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 35951;
/* Remove non-Vanilla item Briny Hardcheese */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 35952;
/* Remove non-Vanilla item Mead Basted Caribou */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 35953;
/* Remove non-Vanilla item Sweetened Goat's Milk */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 35954;
/* Add Missing Vanilla item Tough Jerky */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 117;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 117, 0, 0);
/* Add Missing Vanilla item Refreshing Spring Water */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 159;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 159, 0, 0);
/* Add Missing Vanilla item Dalaran Sharp */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 414;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 414, 0, 0);
/* Add Missing Vanilla item Dwarven Mild */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 422;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 422, 0, 0);
/* Add Missing Vanilla item Slitherskin Mackerel */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 787;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 787, 0, 0);
/* Add Missing Vanilla item Ice Cold Milk */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 1179;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 1179, 0, 0);
/* Add Missing Vanilla item Melon Juice */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 1205;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 1205, 0, 0);
/* Add Missing Vanilla item Moonberry Juice */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 1645;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 1645, 0, 0);
/* Add Missing Vanilla item Stormwind Brie */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 1707;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 1707, 0, 0);
/* Add Missing Vanilla item Sweet Nectar */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 1708;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 1708, 0, 0);
/* Add Missing Vanilla item Darnassian Bleu */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 2070;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 2070, 0, 0);
/* Add Missing Vanilla item Haunch of Meat */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 2287;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 2287, 0, 0);
/* Add Missing Vanilla item Mutton Chop */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 3770;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 3770, 0, 0);
/* Add Missing Vanilla item Wild Hog Shank */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 3771;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 3771, 0, 0);
/* Add Missing Vanilla item Fine Aged Cheddar */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 3927;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 3927, 0, 0);
/* Add Missing Vanilla item Tough Hunk of Bread */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 4540;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 4540, 0, 0);
/* Add Missing Vanilla item Freshly Baked Bread */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 4541;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 4541, 0, 0);
/* Add Missing Vanilla item Moist Cornbread */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 4542;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 4542, 0, 0);
/* Add Missing Vanilla item Mulgore Spice Bread */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 4544;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 4544, 0, 0);
/* Add Missing Vanilla item Longjaw Mud Snapper */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 4592;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 4592, 0, 0);
/* Add Missing Vanilla item Bristle Whisker Catfish */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 4593;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 4593, 0, 0);
/* Add Missing Vanilla item Rockscale Cod */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 4594;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 4594, 0, 0);
/* Add Missing Vanilla item Cured Ham Steak */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 4599;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 4599, 0, 0);
/* Add Missing Vanilla item Soft Banana Bread */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 4601;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 4601, 0, 0);
/* Add Missing Vanilla item Forest Mushroom Cap */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 4604;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 4604, 0, 0);
/* Add Missing Vanilla item Red-speckled Mushroom */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 4605;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 4605, 0, 0);
/* Add Missing Vanilla item Spongy Morel */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 4606;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 4606, 0, 0);
/* Add Missing Vanilla item Delicious Cave Mold */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 4607;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 4607, 0, 0);
/* Add Missing Vanilla item Raw Black Truffle */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 4608;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 4608, 0, 0);
/* Add Missing Vanilla item Striped Yellowtail */
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` = 21552;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10367, 21552, 0, 0);


/* NPC Yaelika Farclaw - 10364 */
/* Remove non-Vanilla item Flintweed Seed */
DELETE FROM `npc_vendor` WHERE `entry` = 10364 AND `item` = 22147;
/* Remove non-Vanilla item Wild Quillvine */
DELETE FROM `npc_vendor` WHERE `entry` = 10364 AND `item` = 22148;
/* Add Missing Vanilla item Dust of Decay */
DELETE FROM `npc_vendor` WHERE `entry` = 10364 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10364, 2928, 0, 0);
/* Add Missing Vanilla item Empty Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 10364 AND `item` = 3371;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10364, 3371, 0, 0);
/* Add Missing Vanilla item Leaded Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 10364 AND `item` = 3372;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10364, 3372, 0, 0);
/* Add Missing Vanilla item Thieves' Tools */
DELETE FROM `npc_vendor` WHERE `entry` = 10364 AND `item` = 5060;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10364, 5060, 0, 0);
/* Add Missing Vanilla item Crystal Vial */
DELETE FROM `npc_vendor` WHERE `entry` = 10364 AND `item` = 8925;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10364, 8925, 0, 0);
/* Add Missing Vanilla item Lethargy Root */
DELETE FROM `npc_vendor` WHERE `entry` = 10364 AND `item` = 3777;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (10364, 3777, 0, 0);


/* NPC Seersa Copperpinch - 13432 */
/* Add Missing Vanilla item Fake Mistletoe */
DELETE FROM `npc_vendor` WHERE `entry` = 13432 AND `item` = 17195;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (13432, 17195, 0, 0);

/* Delete Simple Flour from TBC pre-60 vendors - they should technically have it but it is a catch-up mechanic so wait until TBC areas for it to be available */
DELETE FROM `npc_vendor` WHERE `entry` IN (17246, 16253, 16262, 16261, 16677, 17490, 16718) AND `item` = 30817;

/* Remove Wicked Arrow and Impact Shot from vendors - these skip all end-game vanilla ammo progression */
DELETE FROM `npc_vendor` WHERE `item` IN (28060, 28053);

/* PvP Gear Vendor Rep Requirements */
REPLACE INTO conditions (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `comment`) VALUES
(23, 13219, 17349, 5, 729, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 17352, 5, 729, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19031, 5, 729, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19307, 5, 729, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19318, 5, 729, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 17348, 5, 729, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 17351, 5, 729, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19301, 5, 729, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19083, 5, 729, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19085, 5, 729, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19095, 5, 729, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19096, 5, 729, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19090, 5, 729, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19089, 5, 729, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19088, 5, 729, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19087, 5, 729, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19316, 5, 729, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19317, 5, 729, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19046, 5, 729, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19099, 5, 729, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19101, 5, 729, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19103, 5, 729, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19320, 5, 729, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19319, 5, 729, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19029, 5, 729, 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19312, 5, 729, 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19315, 5, 729, 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19308, 5, 729, 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19311, 5, 729, 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19309, 5, 729, 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19310, 5, 729, 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19323, 5, 729, 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19321, 5, 729, 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19325, 5, 729, 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 21563, 5, 729, 128, 'Vanilla PvP Gear Conditions'),
(23, 13219, 19324, 5, 729, 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 17349, 5, 729, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 17352, 5, 729, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19031, 5, 729, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19307, 5, 729, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19318, 5, 729, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 17348, 5, 729, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 17351, 5, 729, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19301, 5, 729, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19083, 5, 729, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19085, 5, 729, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19095, 5, 729, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19096, 5, 729, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19090, 5, 729, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19089, 5, 729, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19088, 5, 729, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19087, 5, 729, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19316, 5, 729, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19317, 5, 729, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19046, 5, 729, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19099, 5, 729, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19101, 5, 729, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19103, 5, 729, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19320, 5, 729, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19319, 5, 729, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19029, 5, 729, 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19312, 5, 729, 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19315, 5, 729, 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19308, 5, 729, 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19311, 5, 729, 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19309, 5, 729, 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19310, 5, 729, 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19323, 5, 729, 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19321, 5, 729, 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19325, 5, 729, 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 21563, 5, 729, 128, 'Vanilla PvP Gear Conditions'),
(23, 13218, 19324, 5, 729, 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 17349, 5, 730, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 17352, 5, 730, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19032, 5, 730, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19307, 5, 730, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19318, 5, 730, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 17348, 5, 730, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 17351, 5, 730, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19301, 5, 730, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19084, 5, 730, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19086, 5, 730, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19097, 5, 730, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19098, 5, 730, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19094, 5, 730, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19093, 5, 730, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19092, 5, 730, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19091, 5, 730, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19316, 5, 730, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19317, 5, 730, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19045, 5, 730, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19100, 5, 730, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19102, 5, 730, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19104, 5, 730, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19320, 5, 730, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19319, 5, 730, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19030, 5, 730, 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19312, 5, 730, 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19315, 5, 730, 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19308, 5, 730, 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19311, 5, 730, 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19309, 5, 730, 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19310, 5, 730, 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19323, 5, 730, 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19321, 5, 730, 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19325, 5, 730, 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 21563, 5, 730, 128, 'Vanilla PvP Gear Conditions'),
(23, 13217, 19324, 5, 730, 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 17349, 5, 730, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 17352, 5, 730, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19032, 5, 730, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19307, 5, 730, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19318, 5, 730, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 17348, 5, 730, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 17351, 5, 730, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19301, 5, 730, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19084, 5, 730, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19086, 5, 730, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19097, 5, 730, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19098, 5, 730, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19094, 5, 730, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19093, 5, 730, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19092, 5, 730, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19091, 5, 730, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19316, 5, 730, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19317, 5, 730, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19045, 5, 730, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19100, 5, 730, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19102, 5, 730, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19104, 5, 730, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19320, 5, 730, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19319, 5, 730, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19030, 5, 730, 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19312, 5, 730, 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19315, 5, 730, 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19308, 5, 730, 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19311, 5, 730, 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19309, 5, 730, 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19310, 5, 730, 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19323, 5, 730, 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19321, 5, 730, 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19325, 5, 730, 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 21563, 5, 730, 128, 'Vanilla PvP Gear Conditions'),
(23, 13216, 19324, 5, 730, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 21565, 5, 890, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 21566, 5, 890, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 21567, 5, 890, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 21568, 5, 890, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19062, 5, 890, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19061, 5, 890, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19060, 5, 890, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19068, 5, 890, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19067, 5, 890, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19066, 5, 890, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 17349, 5, 890, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 17352, 5, 890, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19530, 5, 890, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19531, 5, 890, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19532, 5, 890, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19533, 5, 890, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 20428, 5, 890, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19522, 5, 890, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19523, 5, 890, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19524, 5, 890, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19525, 5, 890, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 20431, 5, 890, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19538, 5, 890, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19539, 5, 890, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19540, 5, 890, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19541, 5, 890, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 20444, 5, 890, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19514, 5, 890, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19515, 5, 890, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19516, 5, 890, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19517, 5, 890, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 20439, 5, 890, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 17348, 5, 890, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 17351, 5, 890, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19570, 5, 890, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19571, 5, 890, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19572, 5, 890, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19573, 5, 890, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 20434, 5, 890, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19562, 5, 890, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19563, 5, 890, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19564, 5, 890, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19565, 5, 890, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 20438, 5, 890, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19554, 5, 890, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19555, 5, 890, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19556, 5, 890, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19557, 5, 890, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 20440, 5, 890, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19546, 5, 890, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19547, 5, 890, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19548, 5, 890, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19549, 5, 890, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 20443, 5, 890, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19506, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19578, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19580, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19581, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19595, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19596, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19597, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19587, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19589, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19590, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19582, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19583, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19584, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 22752, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 22749, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 22750, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 22748, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 22672, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 22753, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 30497, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 21565, 5, 889, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 21566, 5, 889, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 21567, 5, 889, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 21568, 5, 889, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19062, 5, 889, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19061, 5, 889, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19060, 5, 889, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19068, 5, 889, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19067, 5, 889, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19066, 5, 889, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 17349, 5, 889, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 17352, 5, 889, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19526, 5, 889, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19527, 5, 889, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19528, 5, 889, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19529, 5, 889, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 20427, 5, 889, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19518, 5, 889, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19519, 5, 889, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19520, 5, 889, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19521, 5, 889, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 20426, 5, 889, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19534, 5, 889, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19535, 5, 889, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19536, 5, 889, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19537, 5, 889, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 20442, 5, 889, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19510, 5, 889, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19511, 5, 889, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19512, 5, 889, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19513, 5, 889, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 20429, 5, 889, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 17348, 5, 889, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 17351, 5, 889, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19566, 5, 889, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19567, 5, 889, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19568, 5, 889, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19569, 5, 889, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 20425, 5, 889, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19558, 5, 889, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19559, 5, 889, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19560, 5, 889, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19561, 5, 889, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 20437, 5, 889, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19550, 5, 889, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19551, 5, 889, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19552, 5, 889, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19553, 5, 889, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 20430, 5, 889, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19542, 5, 889, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19543, 5, 889, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19544, 5, 889, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19545, 5, 889, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 20441, 5, 889, 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19505, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19578, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19580, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19581, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19595, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19596, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19597, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19587, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19589, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19590, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19582, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19583, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19584, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 22747, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 22740, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 22741, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 22673, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 22676, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 22651, 5, 889, 128, 'Vanilla PvP Gear Conditions');

/* Add PvP Level 60 gear sets for Horde Paladins and Alliance Shamans - thanks StraysFromPath! */
DELETE FROM npc_vendor WHERE `entry` = 12792 AND `item` IN (29612, 29613, 29614, 29615, 29616, 29617,
                                                           29600, 29601, 29602, 29603, 29604, 29605);
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost, VerifiedBuild) VALUES
    (12792, 0, 29612, 0, 0, 465, 0),
    (12792, 0, 29613, 0, 0, 465, 0),
    (12792, 0, 29614, 0, 0, 465, 0),
    (12792, 0, 29615, 0, 0, 463, 0),
    (12792, 0, 29616, 0, 0, 463, 0),
    (12792, 0, 29617, 0, 0, 463, 0),
    (12792, 0, 29600, 0, 0, 428, 0),
    (12792, 0, 29601, 0, 0, 428, 0),
    (12792, 0, 29602, 0, 0, 652, 0),
    (12792, 0, 29603, 0, 0, 652, 0),
    (12792, 0, 29604, 0, 0, 444, 0),
    (12792, 0, 29605, 0, 0, 444, 0);

DELETE FROM npc_vendor WHERE `entry` = 12777 AND `item` IN (29608, 29606, 29611, 29609, 29607,
                                                           29610, 29595, 29599, 29597, 29596,
                                                           29598, 29594);
INSERT INTO npc_vendor (entry, slot, item, maxcount, incrtime, ExtendedCost, VerifiedBuild) VALUES
    (12777, 0, 29608, 0, 0, 465, 0),
    (12777, 0, 29606, 0, 0, 465, 0),
    (12777, 0, 29611, 0, 0, 465, 0),
    (12777, 0, 29609, 0, 0, 463, 0),
    (12777, 0, 29607, 0, 0, 463, 0),
    (12777, 0, 29610, 0, 0, 463, 0),
    (12777, 0, 29595, 0, 0, 428, 0),
    (12777, 0, 29599, 0, 0, 428, 0),
    (12777, 0, 29597, 0, 0, 652, 0),
    (12777, 0, 29596, 0, 0, 652, 0),
    (12777, 0, 29598, 0, 0, 444, 0),
    (12777, 0, 29594, 0, 0, 444, 0);

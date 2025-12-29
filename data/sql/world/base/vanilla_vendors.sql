/*  Hide vendor items until the player has completed the progression level for them */
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 23 AND `SourceGroup` IN 
(66, 372, 483, 789, 790, 843, 844, 958, 983, 989, 1148, 1250, 1257, 1275, 1286, 1307, 1308, 1313, 1325, 1326, 1347, 1351, 1448, 1453, 1454, 1463, 1474, 1672, 1673, 1692, 1694, 
2118, 2380, 2381, 2394, 2397, 2480, 2481, 2664, 2668, 2669, 2670, 2672, 2682, 2683, 2684, 2685, 2687, 2688, 2697, 2698, 2699, 2803, 2805, 2806, 2810, 2812, 2816, 2819, 2821, 2846, 2848, 2849, 
3002, 3003, 3005, 3010, 3014, 3017, 3025, 3027, 3081, 3085, 3091, 3096, 3133, 3167, 3168, 3187, 3312, 3313, 3323, 3329, 3334, 3335, 3342, 3348, 3351, 3358, 3364, 3366, 3367, 3368, 
3400, 3405, 3410, 3413, 3482, 3485, 3490, 3495, 3499, 3500, 3518, 3542, 3548, 3551, 3562, 3578, 3614, 3625, 3700, 3779, 3954, 3955, 3956, 3958, 3970, 4083, 4168, 4169, 4170, 4189, 
4216, 4220, 4221, 4223, 4225, 4229, 4226, 4241, 4256, 4265, 4553, 4554, 4255, 4561, 4562, 4571, 4575, 4577, 4585, 4587, 4589, 4599, 4610, 4615, 4775, 4878, 4890, 4897, 4899, 4981, 
5109, 5110, 5111, 5124, 5128, 5134, 5138, 5139, 5151, 5154, 5160, 5163, 5175, 5178, 5483, 5503, 5514, 5519, 5565, 5594, 5783, 5817, 5944, 6028, 6298, 6301, 6567, 6568, 6574, 6576, 
6730, 6731, 6735, 6738, 6740, 6741, 6746, 6777, 6929, 7852, 7854, 7940, 7947, 7978, 8145, 8157, 8158, 8160, 8177, 8178, 8305, 8307, 8361, 8363, 8678, 8681, 8679, 8934, 9544, 9676, 
10364, 10367, 11186, 11188, 11189, 11874, 12022, 12028, 12033, 12245, 12941, 12942, 12943, 12956, 12957, 12958, 13476, 
14337, 14637, 14738, 14739, 14846, 14847, 15175, 15179, 16015, 16253, 16261, 16262, 16677, 16718, 17246, 17490, 25082);

INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
--
(23, 66,    30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Tharynn Bouden - Simple Flour'),
(23, 372,   20815, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Karm Ironquill - Jeweler\'s Kit'),
(23, 372,   20824, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Karm Ironquill - Simple Grinder'),
(23, 483,   27857, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Elaine Trias - Garadar Sharp'),
(23, 483,   33443, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Elaine Trias - Sour Goat Cheese'),
(23, 483,   35952, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Elaine Trias - Briny Hardcheese'),
(23, 789,   11285, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Kimberly Hiett - Jagged Arrow'),
(23, 790,   20815, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Karen Taylor - Jeweler\'s Kit'),
(23, 790,   20824, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Karen Taylor - Simple Grinder'),
(23, 843,   39354, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Gina MacGregor - Light Parchment'),
(23, 844,   40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Antonio Perelli - Enchanted Vial'),
(23, 958,   22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Dawn Brightstar - Flintweed Seed'),
(23, 958,   22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Dawn Brightstar - Wild Quillvine'),
(23, 958,   37201, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Dawn Brightstar - Corpse Dust'),
(23, 958,   40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Dawn Brightstar - Enchanted Vial'),
(23, 983,   22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Thultazor - Flintweed Seed'),
(23, 983,   22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Thultazor - Wild Quillvine'),
(23, 983,   40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Thultazor - Enchanted Vial'),
(23, 989,   14341, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Banalash - Rune Thread'),
(23, 989,   18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Banalash - Imbued Vial'),
(23, 1148,  5956,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Nerrist - Blacksmith Hammer'),
(23, 1148,  14341, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Nerrist - Rune Thread'),
(23, 1148,  18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Nerrist - Imbued Vial'),
(23, 1250,  30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Drake Lindgren - Simple Flour'),
(23, 1257,  22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Keldric Boucher - Flintweed Seed'),
(23, 1257,  22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Keldric Boucher - Wild Quillvine'),
(23, 1257,  40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Keldric Boucher - Enchanted Vial'),
(23, 1257,  37201, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Keldric Boucher - Corpse Dust'),
(23, 1275,  22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Kyra Boucher - Flintweed Seed'),
(23, 1275,  22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Kyra Boucher - Wild Quillvine'),
(23, 1275,  37201, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Kyra Boucher - Corpse Dust'),
(23, 1286,  14341, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Edna Mullby - Rune Thread'),
(23, 1286,  18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Edna Mullby - Imbued Vial'),
(23, 1307,  22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Charys Yserian - Flintweed Seed'),
(23, 1307,  22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Charys Yserian - Wild Quillvine'),
(23, 1307,  37201, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Charys Yserian - Corpse Dust'),
(23, 1308,  22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Owen Vaughn - Flintweed Seed'),
(23, 1308,  22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Owen Vaughn - Wild Quillvine'),
(23, 1308,  37201, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Owen Vaughn - Corpse Dust'),
(23, 1313,  40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Maria Lumere - Enchanted Vial'),
(23, 1325,  21835, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Jasper Fel - Anesthetic Poison'),
(23, 1325,  21927, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Jasper Fel - Instant Poison VII'),
(23, 1325,  22053, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Jasper Fel - Deadly Poison VI'),
(23, 1325,  22054, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Jasper Fel - Deadly Poison VII'),
(23, 1325,  22055, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Jasper Fel - Wound Poison V'),
(23, 1325,  43230, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Jasper Fel - Instant Poison VIII'),
(23, 1325,  43231, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Jasper Fel - Instant Poison IX'),
(23, 1325,  43232, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Jasper Fel - Deadly Poison VIII'),
(23, 1325,  43233, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Jasper Fel - Deadly Poison IX'),
(23, 1325,  43234, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Jasper Fel - Wound Poison VI'),
(23, 1325,  43235, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Jasper Fel - Wound Poison VII'),
(23, 1325,  43237, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Jasper Fel - Anesthetic Poison II'),
(23, 1326,  21835, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Sloan McCoy - Anesthetic Poison'),
(23, 1326,  21927, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Sloan McCoy - Instant Poison VII'),
(23, 1326,  22053, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Sloan McCoy - Deadly Poison VI'),
(23, 1326,  22054, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Sloan McCoy - Deadly Poison VII'),
(23, 1326,  22055, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Sloan McCoy - Wound Poison V'),
(23, 1326,  43230, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Sloan McCoy - Instant Poison VIII'),
(23, 1326,  43231, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Sloan McCoy - Instant Poison IX'),
(23, 1326,  43232, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Sloan McCoy - Deadly Poison VIII'),
(23, 1326,  43233, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Sloan McCoy - Deadly Poison IX'),
(23, 1326,  43234, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Sloan McCoy - Wound Poison VI'),
(23, 1326,  43235, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Sloan McCoy - Wound Poison VII'),
(23, 1326,  43237, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Sloan McCoy - Anesthetic Poison II'),
(23, 1347,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Alexandra Bolero - Eternium Thread'),
(23, 1351,  22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Brother Cassius - Flintweed Seed'),
(23, 1351,  22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Brother Cassius - Wild Quillvine'),
(23, 1351,  37201, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Brother Cassius - Corpse Dust'),
(23, 1448,  39684, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Neal Allen - Hair Trigger'),
(23, 1448,  40533, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Neal Allen - Walnut Stock'),
(23, 1453,  40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Dewin Shimmerdawn - Enchanted Vial'),
(23, 1454,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Jennabink Powerseam - Eternium Thread'),
(23, 1463,  22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Falkan Armonis - Flintweed Seed'),
(23, 1463,  22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Falkan Armonis - Wild Quillvine'),
(23, 1474,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Rann Flamespinner - Eternium Thread'),
(23, 1672,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Lohgan Eva - Eternium Thread'),
(23, 1673,  22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Alyssa Eva - Flintweed Seed'),
(23, 1673,  22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Alyssa Eva - Wild Quillvine'),
(23, 1692,  30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Golorn Frostbeard - Simple Flour'),
(23, 1694,  39684, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Loslor Rudge - Hair Trigger'),
(23, 1694,  40533, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Loslor Rudge - Walnut Stock'),
(23, 2118,  10648, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Abigail Shiel - Common Parchment'),
(23, 2118,  30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Abigail Shiel - Simple Flour'),
(23, 2118,  39354, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Abigail Shiel - Light Parchment'),
(23, 2380,  40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Nandar Branson - Enchanted Vial'),
(23, 2381,  30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Micha Yance - Simple Flour'),
(23, 2394,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Mallen Swain - Eternium Thread'),
(23, 2397,  30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Derak Nightfall - Simple Flour'),
(23, 2480,  40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Bro\'kin - Enchanted Vial'),
(23, 2481,  40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Bliztik - Enchanted Vial'),
(23, 2664,  30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Kelsey Yance - Simple Flour'),
(23, 2668,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Danielle Zipstitch - Eternium Thread'),
(23, 2669,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Sheri Zipstitch - Eternium Thread'),
(23, 2670,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Xizk Goodstitch - Eternium Thread'),
(23, 2672,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Cowardly Crosby - Eternium Thread'),
(23, 2682,  39684, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Fradd Swiftgear - Hair Trigger'),
(23, 2682,  40533, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Fradd Swiftgear - Walnut Stock'),
(23, 2683,  39684, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Namdo Bizzfizzle - Hair Trigger'),
(23, 2683,  40533, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Namdo Bizzfizzle - Walnut Stock'),
(23, 2684,  39684, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Rizz Loosebolt - Hair Trigger'),
(23, 2684,  40533, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Rizz Loosebolt - Walnut Stock'),
(23, 2685,  2102,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Mazk Snipeshot - Small Ammo Pouch'),
(23, 2685,  2516,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Mazk Snipeshot - Light Shot'),
(23, 2685,  2519,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Mazk Snipeshot - Heavy Shot'),
(23, 2685,  3033,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Mazk Snipeshot - Solid Shot'),
(23, 2685,  11284, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Mazk Snipeshot - Accurate Slugs'),
(23, 2685,  11363, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Mazk Snipeshot - Medium Shot Pouch'),
(23, 2685,  39684, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Mazk Snipeshot - Hair Trigger'),
(23, 2685,  40533, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Mazk Snipeshot - Walnut Stock'),
(23, 2687,  39684, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Gnaz Blunderflame - Hair Trigger'),
(23, 2687,  40533, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Gnaz Blunderflame - Walnut Stock'),
(23, 2688,  39684, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Ruppo Zipcoil - Hair Trigger'),
(23, 2688,  40533, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Ruppo Zipcoil - Walnut Stock'),
(23, 2697,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Clyde Ranthal - Eternium Thread'),
(23, 2698,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'George Candarte - Eternium Thread'),
(23, 2699,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Rikqiz - Eternium Thread'),
(23, 2803,  4604,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Malygen - Forest Mushroom Cap'),
(23, 2803,  4605,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Malygen - Red-speckled Mushroom'),
(23, 2803,  4606,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Malygen - Spongy Morel'),
(23, 2803,  4607,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Malygen - Delicious Cave Mold'),
(23, 2803,  4608,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Malygen - Raw Black Truffle'),
(23, 2803,  8766,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Malygen - Morning Glory Dew'),
(23, 2803,  8948,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Malygen - Dried King Bolete'),
(23, 2803,  35564, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Malygen - Recipe: Charred Bear Kabobs'),
(23, 2803,  35566, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Malygen - Recipe: Juicy Bear Burger'),
(23, 2805,  22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Deneb Walker - Flintweed Seed'),
(23, 2805,  22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Deneb Walker - Wild Quillvine'),
(23, 2806,  4604,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Bale - Forest Mushroom Cap'),
(23, 2806,  4605,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Bale - Red-speckled Mushroom'),
(23, 2806,  4606,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Bale - Spongy Morel'),
(23, 2806,  4607,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Bale - Delicious Cave Mold'),
(23, 2806,  4608,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Bale - Raw Black Truffle'),
(23, 2806,  8766,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Bale - Morning Glory Dew'),
(23, 2806,  8948,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Bale - Dried King Bolete'),
(23, 2806,  35564, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Bale - Recipe: Charred Bear Kabobs'),
(23, 2806,  35566, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Bale - Recipe: Juicy Bear Burger'),
(23, 2810,  5956,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Hammon Karwn - Blacksmith Hammer'),
(23, 2810,  14341, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Hammon Karwn - Rune Thread'),
(23, 2810,  18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Hammon Karwn - Imbued Vial'),
(23, 2812,  40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Drovnar Strongbrew - Enchanted Vial'),
(23, 2816,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Androd Fadran - Eternium Thread'),
(23, 2819,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Tunkk - Eternium Thread'),
(23, 2821,  5956,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Keena - Blacksmith Hammer'),
(23, 2821,  14341, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Keena - Rune Thread'),
(23, 2821,  18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Keena - Imbued Vial'),
(23, 2846,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Blixrez Goodstitch - Eternium Thread'),
(23, 2848,  40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Glyx Brewright - Enchanted Vial'),
(23, 2849,  37934, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Qixdi Goodstitch - Nobles Elementium Signet'),
(23, 3002,  20815, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Kurm Stonehoof - Jeweler\'s Kit'),
(23, 3002,  20824, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Kurm Stonehoof - Simple Grinder'),
(23, 3003,  27855, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Fyr Mistrunner - Mag\'har Grainbread'),
(23, 3003,  33449, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Fyr Mistrunner - Crusty Flatbread'),
(23, 3003,  35950, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Fyr Mistrunner - Sweet Potato Bread'),
(23, 3005,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Mahu - Eternium Thread'),
(23, 3010,  40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Mani Winterhoof - Enchanted Vial'),
(23, 3014,  40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Nida Winterhoof - Enchanted Vial'),
(23, 3017,  27856, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Nan Mistrunner - Skethyl Berries'),
(23, 3017,  35948, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Nan Mistrunner - Savory Snowplum'),
(23, 3017,  35949, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Nan Mistrunner - Tundra Berries'),
(23, 3025,  27854, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Kaga Mistrunner - Smoked Talbuk Venison'),
(23, 3025,  33454, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Kaga Mistrunner - Salted Venison'),
(23, 3025,  35953, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Kaga Mistrunner - Mead Basted Caribou'),
(23, 3027,  30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Naal Mistrunner - Simple Flour'),
(23, 3081,  30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Wunna Darkmane - Simple Flour'),
(23, 3085,  30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Gloria Femmel - Simple Flour'),
(23, 3091,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Franklin Hamar - Eternium Thread'),
(23, 3096,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Captured Servant of Azora - Eternium Thread'),
(23, 3133,  20815, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Herble Baubbletump - Jeweler\'s Kit'),
(23, 3133,  20824, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Herble Baubbletump - Simple Grinder'),
(23, 3133,  39684, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Herble Baubbletump - Hair Trigger'),
(23, 3133,  40533, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Herble Baubbletump - Walnut Stock'),
(23, 3167,  20815, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Wuark - Jeweler\'s Kit'),
(23, 3167,  20824, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Wuark - Simple Grinder'),
(23, 3168,  30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Flakk - Simple Flour'),
(23, 3187,  30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Tai\'tasi - Simple Flour'),
(23, 3312,  27854, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Olvia - Smoked Talbuk Venison'),
(23, 3312,  33454, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Olvia - Salted Venison'),
(23, 3312,  35953, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Olvia - Mead Basted Caribou'),
(23, 3313,  25861, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Trak\'gen - Crude Throwing Axe'),
(23, 3313,  25872, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Trak\'gen - Balanced Throwing Dagger'),
(23, 3313,  25873, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Trak\'gen - Keen Throwing Knife'),
(23, 3313,  25875, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Trak\'gen - Deadly Throwing Axe'),
(23, 3313,  25876, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Trak\'gen - Gleaming Throwing Axe'),
(23, 3313,  28979, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Trak\'gen - Light Throwing Knife'),
(23, 3313,  29007, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Trak\'gen - Weighted Throwing Axe'),
(23, 3313,  29008, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Trak\'gen - Sharp Throwing Axe'),
(23, 3313,  29009, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Trak\'gen - Heavy Throwing Dagger'),
(23, 3313,  29010, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Trak\'gen - Wicked Throwing Dagger'),
(23, 3313,  29013, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Trak\'gen - Jagged Throwing Axe'),
(23, 3313,  29014, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Trak\'gen - Blacksteel Throwing Dagger'),
(23, 3323,  22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Horthus - Flintweed Seed'),
(23, 3323,  22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Horthus - Wild Quillvine'),
(23, 3323,  37201, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Horthus - Corpse Dust'),
(23, 3323,  44605, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Horthus - Wild Spineleaf'),
(23, 3323,  44614, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Horthus - Starleaf Seed'),
(23, 3323,  44615, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Horthus - Devout Candle'),
(23, 3329,  27859, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Kor\'jus - Zangar Caps'),
(23, 3329,  33452, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Kor\'jus - Honey-Spiced Lichen'),
(23, 3329,  35947, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Kor\'jus - Sparkling Frostcap'),
(23, 3334,  21835, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Rekkul - Anesthetic Poison'),
(23, 3334,  21927, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Rekkul - Instant Poison VII'),
(23, 3334,  22053, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Rekkul - Deadly Poison VI'),
(23, 3334,  22054, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Rekkul - Deadly Poison VII'),
(23, 3334,  22055, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Rekkul - Wound Poison V'),
(23, 3334,  43230, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Rekkul - Instant Poison VIII'),
(23, 3334,  43231, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Rekkul - Instant Poison IX'),
(23, 3334,  43232, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Rekkul - Deadly Poison VIII'),
(23, 3334,  43233, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Rekkul - Deadly Poison IX'),
(23, 3334,  43234, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Rekkul - Wound Poison VI'),
(23, 3334,  43235, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Rekkul - Wound Poison VII'),
(23, 3334,  43237, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Rekkul - Anesthetic Poison II'),
(23, 3335,  22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Hagrus - Flintweed Seed'),
(23, 3335,  22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Hagrus - Wild Quillvine'),
(23, 3335,  37201, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Hagrus - Corpse Dust'),
(23, 3342,  27856, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Shan\'ti - Skethyl Berries'),
(23, 3342,  35948, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Shan\'ti - Savory Snowplum'),
(23, 3342,  35949, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Shan\'ti - Tundra Berries'),
(23, 3348,  40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Kor\'geld - Enchanted Vial'),
(23, 3351,  22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Magenius - Flintweed Seed'),
(23, 3351,  22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Magenius - Wild Quillvine'),
(23, 3351,  37201, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Magenius - Corpse Dust'),
(23, 3358,  20815, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Gorina - Jeweler\'s Kit'),
(23, 3358,  20824, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Gorina - Simple Grinder'),
(23, 3364,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Borya - Eternium Thread'),
(23, 3366,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Tamar - Eternium Thread'),
(23, 3367,  14341, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Felika - Rune Thread'),
(23, 3367,  18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Felika - Imbued Vial'),
(23, 3368,  27854, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Borstan - Smoked Talbuk Venison'),
(23, 3368,  33454, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Borstan - Salted Venison'),
(23, 3368,  35953, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Borstan - Mead Basted Caribou'),
(23, 3400,  30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Xen\'to - Simple Flour'),
(23, 3405,  18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Zeal\'aya - Imbued Vial'),
(23, 3405,  40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Zeal\'aya - Enchanted Vial'),
(23, 3410,  11306, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Jin\'sora - Sturdy Recurve'),
(23, 3410,  11307, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Jin\'sora - Massive Longbow'),
(23, 3413,  22729, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Sovik - Schematic: Steam Tonk Controller'),
(23, 3413,  39684, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Sovik - Hair Trigger'),
(23, 3413,  40533, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Sovik - Walnut Stock'),
(23, 3482,  39354, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Tari\'qa - Light Parchment'),
(23, 3485,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Wrahk - Eternium Thread'),
(23, 3490,  22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Hula\'mahi - Flintweed Seed'),
(23, 3490,  22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Hula\'mahi - Wild Quillvine'),
(23, 3490,  21835, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Hula\'mahi - Anesthetic Poison'),
(23, 3490,  21927, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Hula\'mahi - Instant Poison VII'),
(23, 3490,  22053, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Hula\'mahi - Deadly Poison VI'),
(23, 3490,  22054, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Hula\'mahi - Deadly Poison VII'),
(23, 3490,  22055, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Hula\'mahi - Wound Poison V'),
(23, 3490,  43230, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Hula\'mahi - Instant Poison VIII'),
(23, 3490,  43231, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Hula\'mahi - Instant Poison IX'),
(23, 3490,  43232, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Hula\'mahi - Deadly Poison VIII'),
(23, 3490,  43233, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Hula\'mahi - Deadly Poison IX'),
(23, 3490,  43234, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Hula\'mahi - Wound Poison VI'),
(23, 3490,  43235, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Hula\'mahi - Wound Poison VII'),
(23, 3490,  43237, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Hula\'mahi - Anesthetic Poison II'),
(23, 3495,  14639, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Gagsprocket - Schematic: Minor Recombobulator'),
(23, 3495,  39684, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Gagsprocket - Hair Trigger'),
(23, 3495,  40533, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Gagsprocket - Walnut Stock'),
(23, 3499,  39354, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Ranik - Light Parchment'),
(23, 3500,  22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Tarhus - Flintweed Seed'),
(23, 3500,  22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Tarhus - Wild Quillvine'),
(23, 3518,  27855, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Thomas Miller - Mag\'har Grainbread'),
(23, 3518,  33449, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Thomas Miller - Crusty Flatbread'),
(23, 3518,  35950, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Thomas Miller - Sweet Potato Bread'),
(23, 3542,  22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Jaysin Lanyda - Flintweed Seed'),
(23, 3542,  22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Jaysin Lanyda - Wild Quillvine'),
(23, 3548,  40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Selina Weston - Enchanted Vial'),
(23, 3551,  43230, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Patrice Dwyer - Instant Poison VIII'),
(23, 3551,  43231, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Patrice Dwyer - Instant Poison IX '),
(23, 3551,  43232, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Patrice Dwyer - Deadly Poison VIII'),
(23, 3551,  43233, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Patrice Dwyer - Deadly Poison IX'),
(23, 3551,  43234, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Patrice Dwyer - Wound Poison VI'),
(23, 3551,  43235, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Patrice Dwyer - Wound Poison VII'),
(23, 3551,  43237, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Patrice Dwyer - Anesthetic Poison II'),
(23, 3562,  22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Alaindia - Flintweed Seed'),
(23, 3562,  22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Alaindia - Wild Quillvine'),
(23, 3578,  20815, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Dalaran Miner - Jeweler\'s Kit'),
(23, 3578,  20824, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Dalaran Miner - Simple Grinder'),
(23, 3614,  30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Narret Shadowgrove - Simple Flour'),
(23, 3625,  28056, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Rarck - Blackflight Arrow'),
(23, 3625,  28061, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Rarck - Ironbite Shell'),
(23, 3625,  41584, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Rarck - Frostbite Bullets'),
(23, 3625,  41586, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Rarck - Terrorshaft Arrow'),
(23, 3700,  22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Jadenvis Seawatcher - Flintweed Seed'),
(23, 3700,  22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Jadenvis Seawatcher - Wild Quillvine'),
(23, 3779,  5956,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Syurana - Blacksmith Hammer'),
(23, 3779,  14341, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Syurana - Rune Thread'),
(23, 3779,  18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Syurana - Imbued Vial'),
(23, 3954,  5956,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Dalria - Blacksmith Hammer'),
(23, 3954,  14341, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Dalria - Rune Thread'),
(23, 3954,  18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Dalria - Imbued Vial'),
(23, 3955,  5956,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Shandrina - Blacksmith Hammer'),
(23, 3955,  14341, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Shandrina - Rune Thread'),
(23, 3955,  18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Shandrina - Imbued Vial'),
(23, 3956,  40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Harklan Moongrove - Enchanted Vial'),
(23, 3958,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Lardan - Eternium Thread'),
(23, 3970,  22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Llana - Flintweed Seed'),
(23, 3970,  22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Llana - Wild Quillvine'),
(23, 4083,  22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Jeeda - Flintweed Seed'),
(23, 4083,  22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Jeeda - Wild Quillvine'),
(23, 4168,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Elynna - Eternium Thread'),
(23, 4169,  27854, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Jaeana - Smoked Talbuk Venison'),
(23, 4169,  28399, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Jaeana - Draenic Water'),
(23, 4169,  33444, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Jaeana - Seal Whey'),
(23, 4169,  33445, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Jaeana - Honeymint Tea'),
(23, 4169,  33454, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Jaeana - Salted Venison'),
(23, 4169,  35953, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Jaeana - Mead Basted Caribou'),
(23, 4169,  35954, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Jaeana - Sweetened Goat\'s Milk'),
(23, 4170,  1645,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Ellandrieth - Moonberry Juice'),
(23, 4170,  1708,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Ellandrieth - Sweet Nectar'),
(23, 4170,  11284, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Ellandrieth - Accurate Slugs'),
(23, 4170,  11285, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Ellandrieth - Jagged Arrow'),
(23, 4189,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Valdaron - Eternium Thread'),
(23, 4216,  18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Chardryn - Imbued Vial'),
(23, 4216,  40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Chardryn - Enchanted Vial'),
(23, 4220,  22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Cyroen - Flintweed Seed'),
(23, 4220,  22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Cyroen - Wild Quillvine'),
(23, 4221,  27858, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Talaelar - Sunspring Carp'),
(23, 4221,  33451, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Talaelar - Fillet of Icefin'),
(23, 4221,  35951, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Talaelar - Poached Emperor Salmon'),
(23, 4223,  30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Fyldan - Simple Flour'),
(23, 4225,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Saenorion - Eternium Thread'),
(23, 4229,  14341, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Mythrin\'dir - Rune Thread'),
(23, 4229,  18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Mythrin\'dir - Imbued Vial'),
(23, 4226,  40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Ulthir - Enchanted Vial'),
(23, 4241,  1205,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Mydrannul - Melon Juice'),
(23, 4241,  1645,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Mydrannul - Moonberry Juice'),
(23, 4241,  1708,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Mydrannul - Sweet Nectar'),
(23, 4241,  3030,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Mydrannul - Razor Arrow'),
(23, 4241,  3033,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Mydrannul - Solid Shot'),
(23, 4241,  4497,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Mydrannul - Heavy Brown Bag'),
(23, 4241,  11284, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Mydrannul - Accurate Slugs'),
(23, 4241,  11285, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Mydrannul - Jagged Arrow'),
(23, 4255,  27854, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Brogus Thunderbrew - Smoked Talbuk Venison'),
(23, 4255,  27855, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Brogus Thunderbrew - Mag\'har Grainbread'),
(23, 4255,  27856, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Brogus Thunderbrew - Skethyl Berries'),
(23, 4255,  27857, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Brogus Thunderbrew - Garadar Sharp'),
(23, 4255,  27858, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Brogus Thunderbrew - Sunspring Carp'),
(23, 4255,  27860, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Brogus Thunderbrew - Purified Draenic Water'),
(23, 4255,  28399, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Brogus Thunderbrew - Filtered Draenic Water'),
(23, 4255,  29448, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Brogus Thunderbrew - Mag\'har Mild Cheese'),
(23, 4255,  29449, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Brogus Thunderbrew - Bladespire Bagel'),
(23, 4255,  29450, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Brogus Thunderbrew - Telaari Grapes'),
(23, 4255,  29451, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Brogus Thunderbrew - Clefthoof Ribs'),
(23, 4255,  29452, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Brogus Thunderbrew - Zangar Trout'),
(23, 4255,  33443, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Brogus Thunderbrew - Sour Goat Cheese'),
(23, 4255,  33444, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Brogus Thunderbrew - Pungent Seal Whey'),
(23, 4255,  33445, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Brogus Thunderbrew - Honeymint Tea'),
(23, 4255,  33449, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Brogus Thunderbrew - Crusty Flatbread'),
(23, 4255,  33451, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Brogus Thunderbrew - Fillet of Icefin'),
(23, 4255,  33454, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Brogus Thunderbrew - Salted Venison'),
(23, 4255,  35948, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Brogus Thunderbrew - Savory Snowplum'),
(23, 4255,  35949, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Brogus Thunderbrew - Tundra Berries'),
(23, 4255,  35950, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Brogus Thunderbrew - Sweet Potato Bread'),
(23, 4255,  35951, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Brogus Thunderbrew - Poached Emperor Salmon'),
(23, 4255,  35952, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Brogus Thunderbrew - Briny Hardcheese'),
(23, 4255,  35953, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Brogus Thunderbrew - Mead Basted Caribou'),
(23, 4255,  35954, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Brogus Thunderbrew - Sweetened Goat\'s Milk'),
(23, 4256,  20815, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Golnir Bouldertoe - Jeweler\'s Kit'),
(23, 4256,  20824, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Golnir Bouldertoe - Simple Grinder'),
(23, 4265,  30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Nyoma - Simple Flour'),
(23, 4553,  30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Ronald Burch - Simple Flour'),
(23, 4554,  27859, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Tawny Grisette - Zangar Caps'),
(23, 4554,  28399, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Tawny Grisette - Filtered Draenic Water'),
(23, 4554,  33444, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Tawny Grisette - Pungent Seal Whey'),
(23, 4554,  33445, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Tawny Grisette - Honeymint Tea'),
(23, 4554,  33452, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Tawny Grisette - Honey-Spiced Lichen'),
(23, 4554,  35947, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Tawny Grisette - Sparkling Frostcap'),
(23, 4554,  35954, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Tawny Grisette - Sweetened Goat\'s Milk'),
(23, 4561,  14341, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Daniel Bartlett - Rune Thread'),
(23, 4561,  18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Daniel Bartlett - Imbued Vial'),
(23, 4562,  22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Thomas Mordan - Flintweed Seed'),
(23, 4562,  22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Thomas Mordan - Wild Quillvine'),
(23, 4562,  44605, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Thomas Mordan - Wild Spineleaf'),
(23, 4562,  44614, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Thomas Mordan - Starleaf Seed'),
(23, 4562,  44615, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Thomas Mordan - Devout Candle'),
(23, 4571,  27859, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Morley Bates - Zangar Caps'),
(23, 4571,  28399, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Morley Bates - Filtered Draenic Water'),
(23, 4571,  33444, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Morley Bates - Pungent Seal Whey'),
(23, 4571,  33445, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Morley Bates - Honeymint Tea'),
(23, 4571,  33452, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Morley Bates - Honey-Spiced Lichen'),
(23, 4571,  35947, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Morley Bates - Sparkling Frostcap'),
(23, 4571,  35954, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Morley Bates - Sweetened Goat\'s Milk'),
(23, 4575,  22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Hannah Akeley - Flintweed Seed'),
(23, 4575,  22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Hannah Akeley - Wild Quillvine'),
(23, 4577,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Millie Gregorian - Eternium Thread'),
(23, 4585,  43230, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Ezekiel Graves - Instant Poison VIII'),
(23, 4585,  43231, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Ezekiel Graves - Instant Poison IX '),
(23, 4585,  43232, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Ezekiel Graves - Deadly Poison VIII'),
(23, 4585,  43233, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Ezekiel Graves - Deadly Poison IX'),
(23, 4585,  43234, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Ezekiel Graves - Wound Poison VI'),
(23, 4585,  43235, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Ezekiel Graves - Wound Poison VII'),
(23, 4585,  43237, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Ezekiel Graves - Anesthetic Poison II'),
(23, 4587,  39684, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Elizabeth Van Talen - Hair Trigger'),
(23, 4587,  40533, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Elizabeth Van Talen - Walnut Stock'),
(23, 4589,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Joseph Moore - Eternium Thread'),
(23, 4599,  20815, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Sarah Killian - Jeweler\'s Kit'),
(23, 4599,  20824, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Sarah Killian - Simple Grinder'),
(23, 4610,  40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Algernon - Enchanted Vial'),
(23, 4615,  18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Katrina Alliestar - Imbued Vial'),
(23, 4615,  40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Katrina Alliestar - Enchanted Vial'),
(23, 4775,  2325,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Felicia Doan - Black Dye'),
(23, 4775,  4340,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Felicia Doan - Gray Dye'),
(23, 4775,  4341,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Felicia Doan - Yellow Dye'),
(23, 4775,  4342,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Felicia Doan - Purple Dye'),
(23, 4775,  8343,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Felicia Doan - Heavy Silken Thread'),
(23, 4775,  8925,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Felicia Doan - Crystal Vial'),
(23, 4775,  14341, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Felicia Doan - Rune Thread'),
(23, 4775,  18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Felicia Doan - Imbued Vial'),
(23, 4878,  22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Montarr - Flintweed Seed'),
(23, 4878,  22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Montarr - Wild Quillvine'),
(23, 4890,  2420,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Piter Verance - Augmented Chain Boots'),
(23, 4890,  2426,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Piter Verance - Brigandine Boots'),
(23, 4890,  2432,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Piter Verance - Russet Boots'),
(23, 4890,  2438,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Piter Verance - Embroidered Boots'),
(23, 4890,  2467,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Piter Verance - Studded Boots'),
(23, 4890,  2473,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Piter Verance - Reinforced Leather Boots'),
(23, 4897,  5956,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Helenia Olden - Blacksmith Hammer'),
(23, 4897,  14341, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Helenia Olden - Rune Thread'),
(23, 4897,  18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Helenia Olden - Imbued Vial'),
(23, 4899,  1710,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Uma Bartulm - Greater Healing Potion'),
(23, 4899,  40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Uma Bartulm - Enchanted Vial'),
(23, 4981,  27857, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Ben Trias - Garadar Sharp'),
(23, 4981,  28399, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Ben Trias - Filtered Draenic Water'),
(23, 4981,  33443, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Ben Trias - Sour Goat Cheese'),
(23, 4981,  33444, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Ben Trias - Pungent Seal Whey'),
(23, 4981,  33445, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Ben Trias - Honeymint Tea'),
(23, 4981,  35952, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Ben Trias - Briny Hardcheese'),
(23, 4981,  35954, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Ben Trias - Sweetened Goat\'s Milk'),
(23, 5109,  27855, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Myra Tyrngaarde - Mag\'har Grainbread'),
(23, 5109,  33449, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Myra Tyrngaarde - Crusty Flatbread'),
(23, 5109,  35950, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Myra Tyrngaarde - Sweet Potato Bread'),
(23, 5110,  22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Barim Jurgenstaad - Flintweed Seed'),
(23, 5110,  22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Barim Jurgenstaad - Wild Quillvine'),
(23, 5111,  27854, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Innkeeper Firebrew - Smoked Talbuk Venison'),
(23, 5111,  28399, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Innkeeper Firebrew - Draenic Water'),
(23, 5111,  33444, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Firebrew - Seal Whey'),
(23, 5111,  33445, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Firebrew - Honeymint Tea'),
(23, 5111,  33454, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Firebrew - Salted Venison'),
(23, 5111,  35953, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Firebrew - Mead Basted Caribou'),
(23, 5111,  35954, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Firebrew - Sweetened Goat\'s Milk'),
(23, 5124,  27854, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Sognar Cliffbeard - Smoked Talbuk Venison'),
(23, 5124,  33454, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Sognar Cliffbeard - Salted Venison'),
(23, 5124,  35953, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Sognar Cliffbeard - Mead Basted Caribou'),
(23, 5128,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Bombus Finespindle - Eternium Thread'),
(23, 5134,  28056, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Jonivera Farmountain - Blackflight Arrow'),
(23, 5134,  28061, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Jonivera Farmountain - Ironbite Shell'),
(23, 5134,  41584, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Jonivera Farmountain - Frostbite Bullets'),
(23, 5134,  41586, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Jonivera Farmountain - Terrorshaft Arrow'),
(23, 5138,  18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Gwina Stonebranch - Imbued Vial'),
(23, 5138,  40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Gwina Stonebranch - Enchanted Vial'),
(23, 5139,  22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Kurdrum Barleybeard - Flintweed Seed'),
(23, 5139,  22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Kurdrum Barleybeard - Wild Quillvine'),
(23, 5151,  22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Ginny Longberry - Flintweed Seed'),
(23, 5151,  22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Ginny Longberry - Wild Quillvine'),
(23, 5154,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Poranna Snowbraid - Eternium Thread'),
(23, 5160,  30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Emrul Riknussun - Simple Flour'),
(23, 5163,  2325,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Burbik Gearspanner - Black Dye'),
(23, 5163,  2604,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Burbik Gearspanner - Red Dye'),
(23, 5163,  4340,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Burbik Gearspanner - Gray Dye'),
(23, 5163,  4341,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Burbik Gearspanner - Yellow Dye'),
(23, 5163,  4342,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Burbik Gearspanner - Purple Dye'),
(23, 5163,  6256,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Burbik Gearspanner - Fishing Pole'),
(23, 5163,  7005,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Burbik Gearspanner - Skinning Knife'),
(23, 5163,  8343,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Burbik Gearspanner - Heavy Silken Thread'),
(23, 5163,  8925,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Burbik Gearspanner - Crystal Vial'),
(23, 5163,  14341, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Burbik Gearspanner - Rune Thread'),
(23, 5163,  18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Burbik Gearspanner - Imbued Vial'),
(23, 5175,  22729, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Gearcutter Cogspinner - Schematic: Steam Tonk Controller'),
(23, 5175,  39684, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Gearcutter Cogspinner - Hair Trigger'),
(23, 5175,  40533, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Gearcutter Cogspinner - Walnut Stock'),
(23, 5178,  40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Soolie Berryfizz - Enchanted Vial'),
(23, 5483,  30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Erika Tate - Simple Flour'),
(23, 5503,  18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Eldraeith - Imbued Vial'),
(23, 5503,  40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Eldraeith - Enchanted Vial'),
(23, 5514,  20815, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Brooke Stonebraid - Jeweler\'s Kit'),
(23, 5514,  20824, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Brooke Stonebraid - Simple Grinder'),
(23, 5519,  39684, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Billibub Cogspinner - Hair Trigger'),
(23, 5519,  40533, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Billibub Cogspinner - Walnut Stock'),
(23, 5565,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Jillian Tanner - Eternium Thread'),
(23, 5594,  40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Alchemist Pestlezugg - Enchanted Vial'),
(23, 5783,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Kalldan Felmoon - Eternium Thread'),
(23, 5817,  10648, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Shimra - Common Parchment'),
(23, 5817,  14341, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Shimra - Rune Thread'),
(23, 5817,  18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Shimra - Imbued Vial'),
(23, 5817,  30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Shimra - Simple Flour'),
(23, 5817,  39354, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Shimra - Light Parchment'),
(23, 5944,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Yonada - Eternium Thread'),
(23, 6028,  2102,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Burkrum - Small Ammo Pouch'),
(23, 6028,  2512,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Burkrum - Rough Arrow'),
(23, 6028,  2515,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Burkrum - Sharp Arrow'),
(23, 6028,  2516,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Burkrum - Light Shot'),
(23, 6028,  2519,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Burkrum - Heavy Shot'),
(23, 6028,  3030,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Burkrum - Razor Arrow'),
(23, 6028,  3033,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Burkrum - Solid Shot'),
(23, 6028,  5439,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Burkrum - Small Quiver'),
(23, 6028,  11284, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Burkrum - Accurate Slugs'),
(23, 6028,  11285, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Burkrum - Jagged Arrow'),
(23, 6028,  11362, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Burkrum - Medium Quiver'),
(23, 6028,  11363, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Burkrum - Medium Shot Pouch'),
(23, 6298,  20815, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Thelgrum Stonehammer - Jeweler\'s Kit'),
(23, 6298,  20824, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Thelgrum Stonehammer - Simple Grinder'),
(23, 6301,  14341, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Gorbold Steelhand - Rune Thread'),
(23, 6301,  18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Gorbold Steelhand - Imbued Vial'),
(23, 6567,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Ghok\'kah - Eternium Thread'),
(23, 6568,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Vizzklick - Eternium Thread'),
(23, 6574,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Jun\'ha - Eternium Thread'),
(23, 6576,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Brienna Starglow - Eternium Thread'),
(23, 6730,  39684, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Jinky Twizzlefixxit - Hair Trigger'),
(23, 6730,  40533, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Jinky Twizzlefixxit - Walnut Stock'),
(23, 6731,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Harlown Darkweave - Eternium Thread'),
(23, 6735,  27856, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Innkeeper Saelienne - Skethyl Berries'),
(23, 6735,  28399, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Innkeeper Saelienne - Filtered Draenic Water'),
(23, 6735,  33444, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Saelienne - Pungent Seal Whey'),
(23, 6735,  33445, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Saelienne - Honeymint Tea'),
(23, 6735,  35948, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Saelienne - Savory Snowplum'),
(23, 6735,  35949, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Saelienne - Tundra Berries'),
(23, 6735,  35954, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Saelienne - Sweetened Goat\'s Milk'),
(23, 6738,  787,   0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Innkeeper Kimlya - Slitherskin Mackerel'),
(23, 6738,  4592,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Innkeeper Kimlya - Longjaw Mud Snapper'),
(23, 6738,  4593,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Innkeeper Kimlya - Bristle Whisker Catfish'),
(23, 6738,  4594,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Innkeeper Kimlya - Rockscale Cod'),
(23, 6738,  8957,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Innkeeper Kimlya - Spinefin Halibut'),
(23, 6738,  21552, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Innkeeper Kimlya - Striped Yellowtail'),
(23, 6740,  4536,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Innkeeper Allison - Shiny Red Apple'),
(23, 6740,  4537,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Innkeeper Allison - Tel\'Abim Banana'),
(23, 6740,  4538,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Innkeeper Allison - Snapvine Watermelon'),
(23, 6740,  4539,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Innkeeper Allison - Goldenbark Apple'),
(23, 6740,  4602,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Innkeeper Allison - Moon Harvest Pumpkin'),
(23, 6740,  8953,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Innkeeper Allison - Deep Fried Plantains'),
(23, 6740,  27855, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Innkeeper Allison - Mag\'har Grainbread'),
(23, 6740,  27856, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Innkeeper Allison - Skethyl Berries'),
(23, 6740,  28399, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Innkeeper Allison - Filtered Draenic Water'),
(23, 6740,  33444, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Allison - Pungent Seal Whey'),
(23, 6740,  33445, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Allison - Honeymint Tea'),
(23, 6740,  33449, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Allison - Crusty Flatbread'),
(23, 6740,  35948, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Allison - Savory Snowplum'),
(23, 6740,  35949, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Allison - Tundra Berries'),
(23, 6740,  35950, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Allison - Sweet Potato Bread'),
(23, 6740,  35954, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Allison - Sweetened Goat\'s Milk'),
(23, 6741,  27859, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Innkeeper Norman - Zangar Caps'),
(23, 6741,  28399, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Innkeeper Norman - Filtered Draenic Water'),
(23, 6741,  33444, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Norman - Pungent Seal Whey'),
(23, 6741,  33445, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Norman - Honeymint Tea'),
(23, 6741,  33452, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Norman - Honey-Spiced Lichen'),
(23, 6741,  35947, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Norman - Sparkling Frostcap'),
(23, 6741,  35954, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Norman - Sweetened Goat\'s Milk'),
(23, 6746,  27859, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Innkeeper Pala - Zangar Caps'),
(23, 6746,  28399, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Innkeeper Pala - Filtered Draenic Water'),
(23, 6746,  33444, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Pala - Pungent Seal Whey'),
(23, 6746,  33445, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Pala - Honeymint Tea'),
(23, 6746,  33452, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Pala - Honey-Spiced Lichen'),
(23, 6746,  35947, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Pala - Sparkling Frostcap'),
(23, 6746,  35954, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Pala - Sweetened Goat\'s Milk'),
(23, 6777,  39684, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Zan Shivsproket - Hair Trigger'),
(23, 6777,  40533, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Zan Shivsproket - Walnut Stock'),
(23, 6929,  27854, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Innkeeper Gryshka - Smoked Talbuk Venison'),
(23, 6929,  28399, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Innkeeper Gryshka - Draenic Water'),
(23, 6929,  33444, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Gryshka - Seal Whey'),
(23, 6929,  33445, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Gryshka - Honeymint Tea'),
(23, 6929,  33454, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Gryshka - Salted Venison'),
(23, 6929,  35953, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Gryshka - Mead Basted Caribou'),
(23, 6929,  35954, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Innkeeper Gryshka - Sweetened Goat\'s Milk'),
(23, 7852,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Pratt McGrubben - Eternium Thread'),
(23, 7854,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Jangdor Swiftstrider - Eternium Thread'),
(23, 7940,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Darnall - Eternium Thread'),
(23, 7947,  14341, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Vivianna - Rune Thread'),
(23, 7947,  18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Vivianna - Imbued Vial'),
(23, 7978,  27856, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Bimble Longberry - Skethyl Berries'),
(23, 7978,  35948, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Bimble Longberry - Savory Snowplum'),
(23, 7978,  35949, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Bimble Longberry - Tundra Berries'),
(23, 8145,  14341, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Sheendra Tallgrass - Rune Thread'),
(23, 8145,  18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Sheendra Tallgrass - Imbued Vial'),
(23, 8157,  40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Logannas - Enchanted Vial'),
(23, 8158,  40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Bronk - Enchanted Vial'),
(23, 8160,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Nioma - Eternium Thread'),
(23, 8177,  40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Rartar - Enchanted Vial'),
(23, 8178,  40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Nina Lightbrew - Enchanted Vial'),
(23, 8305,  40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Kixxle - Enchanted Vial'),
(23, 8307,  30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Tarban Hearthgrain - Simple Flour'),
(23, 8361,  22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Chepi - Flintweed Seed'),
(23, 8361,  22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Chepi - Wild Quillvine'),
(23, 8361,  37201, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Chepi - Corpse Dust'),
(23, 8361,  44605, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Chepi - Wild Spineleaf'),
(23, 8361,  44614, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Chepi - Starleaf Seed'),
(23, 8361,  44615, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Chepi - Devout Candle'),
(23, 8363,  14341, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Shadi Mistrunner - Rune Thread'),
(23, 8363,  18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Shadi Mistrunner - Imbued Vial'),
(23, 8678,  39684, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Jubie Gadgetspring - Hair Trigger'),
(23, 8678,  40533, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Jubie Gadgetspring - Walnut Stock'),
(23, 8679,  39684, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Knaz Blunderflame - Hair Trigger'),
(23, 8679,  40533, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Knaz Blunderflame - Walnut Stock'),
(23, 8681,  38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Outfitter Eric - Eternium Thread'),
(23, 8934,  10648, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Christopher Hewen - Common Parchment'),
(23, 8934,  14341, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Christopher Hewen - Rune Thread'),
(23, 8934,  18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Christopher Hewen - Imbued Vial'),
(23, 8934,  30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Christopher Hewen - Simple Flour'),
(23, 8934,  39354, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Christopher Hewen - Light Parchment'),
(23, 9544,  39684, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Yuka Screwspigot - Hair Trigger'),
(23, 9544,  40533, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Yuka Screwspigot - Walnut Stock'),
(23, 9676,  4361,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Tink Sprocketwhistle - Copper Tube'),
(23, 9676,  4363,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Tink Sprocketwhistle - Copper Modulator'),
(23, 9676,  4371,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Tink Sprocketwhistle - Bronze Tube'),
(23, 9676,  4389,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Tink Sprocketwhistle - Gyrochronatom'),
(23, 9676,  4404,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Tink Sprocketwhistle - Silver Contact'),
(23, 9676,  39684, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Tink Sprocketwhistle - Hair Trigger'),
(23, 9676,  40533, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Tink Sprocketwhistle - Walnut Stock'),
(23, 10364, 22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Yaelika Farclaw - Flintweed Seed'),
(23, 10364, 22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Yaelika Farclaw - Wild Quillvine'),
(23, 10367, 27854, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Shrye Ragefist - Smoked Talbuk Venison'),
(23, 10367, 27855, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Shrye Ragefist - Mag\'har Grainbread'),
(23, 10367, 27857, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Shrye Ragefist - Garadar Sharp'),
(23, 10367, 27858, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Shrye Ragefist - Sunspring Carp'),
(23, 10367, 27859, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Shrye Ragefist - Zangar Caps'),
(23, 10367, 27860, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Shrye Ragefist - Purified Draenic Water'),
(23, 10367, 28399, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Shrye Ragefist - Filtered Draenic Water'),
(23, 10367, 29448, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Shrye Ragefist - Mag\'har Mild Cheese'),
(23, 10367, 29449, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Shrye Ragefist - Bladespire Bagel'),
(23, 10367, 29450, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Shrye Ragefist - Telaari Grapes'),
(23, 10367, 29451, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Shrye Ragefist - Clefthoof Ribs'),
(23, 10367, 29452, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Shrye Ragefist - Zangar Trout'),
(23, 10367, 29453, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Shrye Ragefist - Sporeggar Mushroom'),
(23, 10367, 33443, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Shrye Ragefist - Sour Goat Cheese'),
(23, 10367, 33444, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Shrye Ragefist - Pungent Seal Whey'),
(23, 10367, 33445, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Shrye Ragefist - Honeymint Tea'),
(23, 10367, 33449, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Shrye Ragefist - Crusty Flatbread'),
(23, 10367, 33451, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Shrye Ragefist - Fillet of Icefin'),
(23, 10367, 33452, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Shrye Ragefist - Honey-Spiced Lichen'),
(23, 10367, 33454, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Shrye Ragefist - Salted Venison'),
(23, 10367, 35947, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Shrye Ragefist - Sparkling Frostcap'),
(23, 10367, 35948, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Shrye Ragefist - Savory Snowplum'),
(23, 10367, 35949, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Shrye Ragefist - Tundra Berries'),
(23, 10367, 35950, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Shrye Ragefist - Sweet Potato Bread'),
(23, 10367, 35951, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Shrye Ragefist - Poached Emperor Salmon'),
(23, 10367, 35952, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Shrye Ragefist - Briny Hardcheese'),
(23, 10367, 35953, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Shrye Ragefist - Mead Basted Caribou'),
(23, 10367, 35954, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Shrye Ragefist - Sweetened Goat\'s Milk'),
(23, 11186, 20815, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lunnix Sprocketslip - Jeweler\'s Kit'),
(23, 11186, 20824, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lunnix Sprocketslip - Simple Grinder'),
(23, 11188, 40411, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Evie Whirlbrew - Enchanted Vial'),
(23, 11189, 5956,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Qia - Blacksmith Hammer'),
(23, 11189, 14341, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Qia - Rune Thread'),
(23, 11189, 18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Qia - Imbued Vial'),
(23, 11874, 38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Masat T\'andr - Eternium Thread'),
(23, 12022, 14341, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lorelae Wintersong - Rune Thread'),
(23, 12022, 18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lorelae Wintersong - Imbued Vial'),
(23, 12028, 14341, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lah\'Mawhani - Rune Thread'),
(23, 12028, 18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lah\'Mawhani - Imbued Vial'),
(23, 12033, 30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Wulan - Simple Flour'),
(23, 12245, 5956,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Vendor-Tron 1000 - Blacksmith Hammer'),
(23, 12245, 14341, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Vendor-Tron 1000 - Rune Thread'),
(23, 12245, 18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Vendor-Tron 1000 - Imbued Vial'),
(23, 12941, 5956,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Jase Farlane - Blacksmith Hammer'),
(23, 12941, 14341, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Jase Farlane - Rune Thread'),
(23, 12941, 18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Jase Farlane - Imbued Vial'),
(23, 12942, 38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Leonard Porter - Eternium Thread'),
(23, 12943, 38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Werg Thickblade - Eternium Thread'),
(23, 12956, 38426, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Zannok Hidepiercer - Eternium Thread'),
(23, 12957, 5956,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Blimo Gadgetspring - Blacksmith Hammer'),
(23, 12957, 14341, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Blimo Gadgetspring - Rune Thread'),
(23, 12957, 18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Blimo Gadgetspring - Imbued Vial'),
(23, 12958, 5956,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Gigget Zipcoil - Blacksmith Hammer'),
(23, 12958, 14341, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Gigget Zipcoil - Rune Thread'),
(23, 12958, 18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Gigget Zipcoil - Imbued Vial'),
(23, 13476, 22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Balai Lok\'Wein - Flintweed Seed'),
(23, 13476, 22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Balai Lok\'Wein - Wild Quillvine'),
(23, 14337, 39684, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Field Repair Bot 74A - Hair Trigger'),
(23, 14337, 40533, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Field Repair Bot 74A - Walnut Stock'),
(23, 14637, 39684, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Zorbin Fandazzle - Hair Trigger'),
(23, 14637, 40533, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Zorbin Fandazzle - Walnut Stock'),
(23, 14738, 30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Otho Moji\'ko - Simple Flour'),
(23, 14739, 22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Mystic Yayo\'jin - Flintweed Seed'),
(23, 14739, 22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Mystic Yayo\'jin - Wild Quillvine'),
(23, 14846, 13465, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lhara - Mountain Silversage'),
(23, 14846, 13468, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lhara - Black Lotus'),
(23, 14846, 21887, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lhara - Knothide Leather'),
(23, 14846, 22572, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lhara - Mote of Air'),
(23, 14846, 22573, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lhara - Mote of Earth'),
(23, 14846, 22574, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lhara - Mote of Fire'),
(23, 14846, 22575, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lhara - Mote of Life'),
(23, 14846, 22576, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lhara - Mote of Mana'),
(23, 14846, 22577, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lhara - Mote of Shadow'),
(23, 14846, 22578, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lhara - Mote of Water'),
(23, 14846, 22787, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lhara - Ragveil'),
(23, 14846, 22789, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lhara - Terocone'),
(23, 14846, 22790, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lhara - Ancient Lichen'),
(23, 14846, 22791, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lhara - Netherbloom'),
(23, 14846, 22792, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lhara - Nightmare Vine'),
(23, 14846, 22793, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lhara - Mana Thistle'),
(23, 14846, 22794, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lhara - Fel Lotus'),
(23, 14846, 23436, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lhara - Living Ruby'),
(23, 14846, 23437, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lhara - Talasite'),
(23, 14846, 23438, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lhara - Star of Elune'),
(23, 14846, 23439, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lhara - Noble Topaz'),
(23, 14846, 23440, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lhara - Dawnstone'),
(23, 14846, 23441, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lhara - Nightseye'),
(23, 14846, 23793, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lhara - Heavy Knothide Leather'),
(23, 14846, 25707, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lhara - Fel Hide'),
(23, 14846, 25708, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lhara - Thick Clefthoof Leather'),
(23, 14846, 33568, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Lhara - Borean Leather'),
(23, 14846, 36901, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Lhara - Goldclover'),
(23, 14846, 36903, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Lhara - Adder\'s Tongue'),
(23, 14846, 36904, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Lhara - Tiger Lily '),
(23, 14846, 36905, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Lhara - Lichbloom'),
(23, 14846, 36906, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Lhara - Icethorn'),
(23, 14846, 36907, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Lhara - Talandra\'s Rose'),
(23, 14846, 36908, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Lhara - Frost Lotus'),
(23, 14846, 37700, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Lhara - Crystallized Air'),
(23, 14846, 37701, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Lhara - Crystallized Earth'),
(23, 14846, 37702, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Lhara - Crystallized Fire'),
(23, 14846, 37703, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Lhara - Crystallized Shadow'),
(23, 14846, 37704, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Lhara - Crystallized Life'),
(23, 14846, 37705, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Lhara - Crystallized Water'),
(23, 14846, 37921, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Lhara - Deadnettle'),
(23, 14846, 38425, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Lhara - Heavy Borean Leather'),
(23, 14846, 44128, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Lhara - Arctic Fur'),
(23, 14846, 46812, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Lhara - Northrend Mystery Gem Pouch'),
(23, 14847, 22829, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Thaddeus Paleo - Super Healing Potion'),
(23, 14847, 22832, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Thaddeus Paleo - Super Mana Potion'),
(23, 14847, 27498, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Thaddeus Paleo - Scroll of Agility V'),
(23, 14847, 27499, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Thaddeus Paleo - Scroll of Intellect V'),
(23, 14847, 27500, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Thaddeus Paleo - Scroll of Protection V'),
(23, 14847, 27501, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Thaddeus Paleo - Scroll of Spirit V'),
(23, 14847, 27502, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Thaddeus Paleo - Scroll of Stamina V'),
(23, 14847, 27503, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Thaddeus Paleo - Scroll of Strength V'),
(23, 14847, 33447, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Thaddeus Paleo - Runic Healing Potion'),
(23, 14847, 33457, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Thaddeus Paleo - Scroll of Agility VI'),
(23, 14847, 33458, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Thaddeus Paleo - Scroll of Intellect VI'),
(23, 14847, 33459, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Thaddeus Paleo - Scroll of Protection VI'),
(23, 14847, 33460, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Thaddeus Paleo - Scroll of Spirit VI'),
(23, 14847, 33461, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Thaddeus Paleo - Scroll of Strength VI'),
(23, 14847, 33462, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Thaddeus Paleo - Scroll of Stamina VI'),
(23, 14847, 37091, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Thaddeus Paleo - Scroll of Intellect VII'),
(23, 14847, 37093, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Thaddeus Paleo - Scroll of Stamina VII'),
(23, 14847, 37097, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Thaddeus Paleo - Scroll of Spirit VII'),
(23, 14847, 43463, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Thaddeus Paleo - Scroll of Agility VII'),
(23, 14847, 43465, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Thaddeus Paleo - Scroll of Strength VII'),
(23, 14847, 43467, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Thaddeus Paleo - Scroll of Protection VII'),
(23, 15175, 22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Khur Hornstriker - Flintweed Seed'),
(23, 15175, 22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Khur Hornstriker - Wild Quillvine'),
(23, 15179, 5956,  0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Mishta - Blacksmith Hammer'),
(23, 15179, 14341, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Mishta - Rune Thread'),
(23, 15179, 18256, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Mishta - Imbued Vial'),
(23, 16015, 22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Vi\'el - Flintweed Seed'),
(23, 16015, 22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Vi\'el - Wild Quillvine'),
(23, 16253, 30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Master Chef Mouldier - Simple Flour'),
(23, 16261, 30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Sathiel - Simple Flour'),
(23, 16262, 30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Landraelanis - Simple Flour'),
(23, 16677, 30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Quelis - Simple Flour'),
(23, 16718, 30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Phea - Simple Flour'),
(23, 17246, 30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Cookie McWeaksauce - Simple Flour'),
(23, 17490, 30817, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Ergh of the Stillpine - Simple Flour'),
(23, 25082, 22147, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Engineer Torquespindle - Flintweed Seed'),
(23, 25082, 22148, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Engineer Torquespindle - Wild Quillvine');


/* Remove Wicked Arrow and Impact Shot from vendors - these skip all end-game vanilla ammo progression */
DELETE FROM `npc_vendor` WHERE `item` IN (28060, 28053);



/* Add missing vendor items  */

DELETE FROM `npc_vendor` WHERE `item` = 1179  AND `entry` IN (4170, 4241);
DELETE FROM `npc_vendor` WHERE `item` = 2324  AND `entry` IN (989, 1286, 3367, 4229, 4561, 4775, 5163, 8363);
DELETE FROM `npc_vendor` WHERE `item` = 2511  AND `entry` IN (5814);
DELETE FROM `npc_vendor` WHERE `item` = 2605  AND `entry` IN (1286, 3367, 4229, 4561, 4775, 8363);
DELETE FROM `npc_vendor` WHERE `item` = 2692  AND `entry` IN (777, 843, 960, 989, 1148, 1286, 1456, 1465, 2225, 2381, 2393, 2397, 2664, 2810, 2821, 3027, 3085, 3367, 3400, 3482, 3499, 3556, 3779, 
                                                              3954, 3955, 4194, 4223, 4229, 4265, 4553, 4561, 4775, 4877, 4897, 5100, 5135, 5160, 5163, 5483, 5817, 6301, 7947, 8145, 8307, 8363, 8934, 
															  11189, 12022, 12028, 12033, 12043, 12245, 12941, 12957, 12958, 14738, 15179);
DELETE FROM `npc_vendor` WHERE `item` = 2928  AND `entry` IN (777, 989, 1148, 1286, 1325, 1326, 1457, 2225, 2622, 2810, 2821, 3090, 3135, 3334, 3367, 3490, 3499, 3542, 3551, 3556, 3561, 
                                                              3779, 3954, 3955, 3969, 4229, 4561, 4585, 4775, 4897, 5135, 5139, 5169, 5817, 6301, 6779, 7947, 8145, 8363, 8934,  
															  10364, 11189, 12022, 12028, 12043, 12245, 12941, 12957, 12958, 15175, 15179);
DELETE FROM `npc_vendor` WHERE `item` = 2930  AND `entry` IN (1325, 1326, 1457, 2622, 3090, 3135, 3334, 3490, 3542, 3551, 3561, 3969, 4585, 5139, 5169, 6779, 15175);
DELETE FROM `npc_vendor` WHERE `item` = 3371  AND `entry` IN (1325, 1326, 1457, 2622, 3090, 3135, 3334, 3490, 3542, 3551, 3561, 3969, 4585, 5139, 5169, 6779, 10364, 14847, 15175);
DELETE FROM `npc_vendor` WHERE `item` = 3372  AND `entry` IN (1325, 1326, 1457, 2622, 3090, 3135, 3334, 3490, 3542, 3551, 3561, 3969, 4585, 5139, 5169, 6779, 10364, 14847, 15175);
DELETE FROM `npc_vendor` WHERE `item` = 3713  AND `entry` IN (960, 989, 1148, 1286, 1456, 2225, 2381, 2393, 2397, 2664, 2810, 2821, 3027, 3085, 3367, 3400, 3779, 3954, 3955, 
                                                              4223, 4229, 4265, 4553, 4561, 4775, 4877, 4897, 5100, 5135, 5160, 5163, 5483, 5817, 6301, 7947, 8145, 8307, 8363, 8934,  
															  11189, 12022, 12028, 12033, 12245, 12941, 12957, 12958, 14738, 15179);
DELETE FROM `npc_vendor` WHERE `item` = 3777  AND `entry` IN (989, 1148, 1286, 1325, 1326, 1457, 2225, 2622, 2810, 2821, 3090, 3135, 3334, 3367, 3490, 3542, 3551, 3561, 
                                                              3779, 3954, 3955, 3969, 4229, 4561, 4585, 4897, 5135, 5139, 5169, 5817, 6301, 6779, 7947, 8145, 8363, 8934,  
															  10364, 11189, 12022, 12028, 12245, 12941, 12957, 12958, 15175, 15179);
DELETE FROM `npc_vendor` WHERE `item` = 4471  AND `entry` IN (151, 227, 491, 734, 791, 1149, 1250, 1285, 1448, 1452, 1682, 1685, 1691, 2084, 2134, 2140, 2401, 2803, 2806, 2808, 2820, 2908, 
                                                              3076, 3164, 3186, 3313, 3350, 3481, 3498, 3541, 3608, 3625, 3962, 4082, 4084, 4170, 4182, 4241, 4555, 4876, 4896, 5101, 5134, 
															  7942, 8139, 8362, 11038, 11555, 12021, 12027, 12246, 12959, 12960, 14624, 15174);
DELETE FROM `npc_vendor` WHERE `item` = 4833  AND `entry` IN (4890);
DELETE FROM `npc_vendor` WHERE `item` = 4835  AND `entry` IN (4890);
DELETE FROM `npc_vendor` WHERE `item` = 5048  AND `entry` IN (4170);
DELETE FROM `npc_vendor` WHERE `item` = 5060  AND `entry` IN (1325, 1326, 1457, 2622, 3090, 3135, 3334, 3490, 3542, 3551, 3561, 3969, 4585, 5139, 5169, 6779, 10364, 15175);
DELETE FROM `npc_vendor` WHERE `item` = 5140  AND `entry` IN (1325, 1326, 1457, 2622, 3090, 3135, 3334, 3490, 3542, 3551, 3561, 3969, 4585, 5139, 5169, 6779, 15175);
DELETE FROM `npc_vendor` WHERE `item` = 5173  AND `entry` IN (1325, 1326, 1457, 2622, 3090, 3135, 3334, 3490, 3542, 3551, 3561, 3969, 4585, 5139, 5169, 6779, 15175);
DELETE FROM `npc_vendor` WHERE `item` = 6217  AND `entry` IN (5138);
DELETE FROM `npc_vendor` WHERE `item` = 6260  AND `entry` IN (1286, 3367, 4229, 4561, 4775, 8363);
DELETE FROM `npc_vendor` WHERE `item` = 6342  AND `entry` IN (1318, 3012, 3346, 4228, 4617, 5158, 5757, 5758, 15419);
DELETE FROM `npc_vendor` WHERE `item` = 6529  AND `entry` IN (1286, 3367, 4229, 4561, 4775, 8363);
DELETE FROM `npc_vendor` WHERE `item` = 8923  AND `entry` IN (1325, 1326, 1457, 2622, 3090, 3135, 3334, 3490, 3542, 3551, 3561, 3969, 4585, 5139, 5169, 6779, 15175);
DELETE FROM `npc_vendor` WHERE `item` = 8924  AND `entry` IN (1325, 1326, 1457, 2622, 3090, 3135, 3334, 3490, 3542, 3551, 3561, 3969, 4585, 5139, 5169, 6779, 15175);
DELETE FROM `npc_vendor` WHERE `item` = 8925  AND `entry` IN (1325, 1326, 1457, 2622, 3090, 3135, 3334, 3490, 3542, 3551, 3561, 3969, 4585, 5139, 5169, 6779, 10364, 14847, 15175);
DELETE FROM `npc_vendor` WHERE `item` = 13477 AND `entry` IN (4226, 4610);
DELETE FROM `npc_vendor` WHERE `item` = 13480 AND `entry` IN (11188);
DELETE FROM `npc_vendor` WHERE `item` = 14481 AND `entry` IN (11189);
DELETE FROM `npc_vendor` WHERE `item` = 14488 AND `entry` IN (7940);
DELETE FROM `npc_vendor` WHERE `item` = 15756 AND `entry` IN (12941); 
DELETE FROM `npc_vendor` WHERE `item` = 16072 AND `entry` IN (3955);
DELETE FROM `npc_vendor` WHERE `item` = 16041 AND `entry` IN (3413, 5175);
DELETE FROM `npc_vendor` WHERE `item` = 16042 AND `entry` IN (3413, 5175);
DELETE FROM `npc_vendor` WHERE `item` = 16047 AND `entry` IN (11185);
DELETE FROM `npc_vendor` WHERE `item` = 16072 AND `entry` IN (12033);
DELETE FROM `npc_vendor` WHERE `item` = 16083 AND `entry` IN (2626);
DELETE FROM `npc_vendor` WHERE `item` = 16084 AND `entry` IN (2805, 13476);
DELETE FROM `npc_vendor` WHERE `item` = 16112 AND `entry` IN (2805, 13476);
DELETE FROM `npc_vendor` WHERE `item` = 16113 AND `entry` IN (2805, 13476);
DELETE FROM `npc_vendor` WHERE `item` = 16171 AND `entry` IN (3961);
DELETE FROM `npc_vendor` WHERE `item` = 17019 AND `entry` IN (958, 983, 1257, 1275, 1307, 1308, 1351, 1463, 1673, 2805, 3323, 3335, 3351, 3490, 3542, 3562, 3970, 4083, 4220, 4562, 4575, 4878, 5110, 5151, 8361, 14739);
DELETE FROM `npc_vendor` WHERE `item` = 17195 AND `entry` IN (13420, 13429, 13432, 13433, 13435);
DELETE FROM `npc_vendor` WHERE `item` = 18256 AND `entry` IN (14847);
DELETE FROM `npc_vendor` WHERE `item` = 18651 AND `entry` IN (2685);
DELETE FROM `npc_vendor` WHERE `item` = 19483 AND `entry` IN (13219);
DELETE FROM `npc_vendor` WHERE `item` = 19484 AND `entry` IN (13216, 13217);

DELETE FROM `npc_vendor` WHERE `entry` = 1459  AND `item` IN (2101, 2504, 2505, 2506, 3027, 3030);
DELETE FROM `npc_vendor` WHERE `entry` = 6028  AND `item` IN (2417, 2418, 2419, 2420, 2421, 2422, 2448, 3891, 17189);
DELETE FROM `npc_vendor` WHERE `entry` = 6738  AND `item` IN (4536, 4537, 4538, 4539, 4602, 8953);
DELETE FROM `npc_vendor` WHERE `entry` = 9636  AND `item` IN (2325, 2604, 2692, 2928, 3713, 3777, 4340, 4341, 4342, 6256, 6529, 7005, 8343, 8925);

-- Alterac Valley
DELETE FROM `npc_vendor` WHERE `entry` = 4255  AND `item` IN 
(117, 159, 414, 422, 787, 1179, 1205, 1645, 1707, 1708, 2070, 2287, 3770, 3771, 3927, 4536, 4537, 4538, 4539, 4540, 4541, 4542, 4544, 4592, 4593, 4594, 4599, 4601, 4602, 21552);
DELETE FROM `npc_vendor` WHERE `entry` = 10367 AND `item` IN 
(117, 159, 414, 422, 787, 1179, 1205, 1645, 1707, 1708, 2070, 2287, 3770, 3771, 3927, 4540, 4541, 4542, 4544, 4592, 4593, 4594, 4599, 4601, 4604, 4605, 4606, 4607, 4608, 21552);															  
															  
-- Darkmoon Faire							  
DELETE FROM `npc_vendor` WHERE `entry` = 14846 AND `item` IN (4289, 11303, 11305, 11306, 11308, 12248, 12251);


INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
--
(151, 4471, 0, 0),        -- Brog Hamfist, Flint and Tinder
(227, 4471, 0, 0),        -- Mabel Solaj, Flint and Tinder
(491, 4471, 0, 0),        -- Quartermaster Lewis, Flint and Tinder
(734, 4471, 0, 0),        -- Corporal Bluth, Flint and Tinder
(777, 2692, 0, 0),        -- Amy Davenport, Hot Spices
(777, 2928, 0, 0),        -- Amy Davenport, Dust of Decay
(791, 4471, 0, 0),        -- Lindsay Ashlock, Flint and Tinder
(843, 2692, 0, 0),        -- Gina MacGregor, Hot Spices
(958, 17019, 0, 0),       -- Dawn Brightstar, Arcane Dust
(960, 2692, 0, 0),        -- Gunder Thornbush, Hot Spices
(960, 3713, 0, 0),        -- Gunder Thornbush, Soothing Spices
(983, 17019, 0, 0),       -- Thultazor, Arcane Dust
(989, 2324, 0, 0),        -- Banalash, Bleach
(989, 2692, 0, 0),        -- Banalash, Hot Spices
(989, 2928, 0, 0),        -- Banalash, Dust of Decay
(989, 3713, 0, 0),        -- Banalash, Soothing Spices
(989, 3777, 0, 0),        -- Banalash, Lethargy Root
(1148, 2692, 0, 0),       -- Nerrist, Hot Spices
(1148, 2928, 0, 0),       -- Nerrist, Dust of Decay
(1148, 3713, 0, 0),       -- Nerrist, Soothing Spices
(1148, 3777, 0, 0),       -- Nerrist, Lethargy Root
(1149, 4471, 0, 0),       -- Uthok, Flint and Tinder
(1250, 4471, 0, 0),       -- Drake Lindgren, Flint and Tinder
(1257, 17019, 0, 0),      -- Keldric Boucher, Arcane Dust
(1275, 17019, 0, 0),      -- Kyra Boucher, Arcane Dust
(1285, 4471, 0, 0),       -- Thurman Mullby, Flint and Tinder
(1286, 2324, 0, 0),       -- Edna Mullby, Bleach
(1286, 2605, 0, 0),       -- Edna Mullby, Green Dye
(1286, 2692, 0, 0),       -- Edna Mullby, Hot Spices
(1286, 2928, 0, 0),       -- Edna Mullby, Dust of Decay
(1286, 3713, 0, 0),       -- Edna Mullby, Soothing Spices
(1286, 3777, 0, 0),       -- Edna Mullby, Lethargy Root
(1286, 6260, 0, 0),       -- Edna Mullby, Blue Dye
(1286, 6529, 0, 0),       -- Edna Mullby, Shiny Bauble
(1307, 17019, 0, 0),      -- Charys Yserian, Arcane Dust
(1308, 17019, 0, 0),      -- Owen Vaughn, Arcane Dust
(1318, 6342, 1, 7200),    -- Jessara Cordell, Formula: Enchant Chest - Minor Mana
(1325, 2928, 0, 0),       -- Jasper Fel, Dust of Decay
(1325, 2930, 0, 0),       -- Jasper Fel, Essence of Pain
(1325, 3371, 0, 0),       -- Jasper Fel, Empty Vial
(1325, 3372, 0, 0),       -- Jasper Fel, Leaded Vial
(1325, 3777, 0, 0),       -- Jasper Fel, Lethargy Root
(1325, 5060, 0, 0),       -- Jasper Fel, Thieves' Tools
(1325, 5140, 0, 0),       -- Jasper Fel, Flash Powder
(1325, 5173, 0, 0),       -- Jasper Fel, Deathweed
(1325, 8923, 0, 0),       -- Jasper Fel, Essence of Agony
(1325, 8924, 0, 0),       -- Jasper Fel, Dust of Deterioration
(1325, 8925, 0, 0),       -- Jasper Fel, Crystal Vial
(1326, 2928, 0, 0),       -- Sloan McCoy, Dust of Decay
(1326, 2930, 0, 0),       -- Sloan McCoy, Essence of Pain
(1326, 3371, 0, 0),       -- Sloan McCoy, Empty Vial
(1326, 3372, 0, 0),       -- Sloan McCoy, Leaded Vial
(1326, 3777, 0, 0),       -- Sloan McCoy, Lethargy Root
(1326, 5060, 0, 0),       -- Sloan McCoy, Thieves' Tools
(1326, 5140, 0, 0),       -- Sloan McCoy, Flash Powder
(1326, 5173, 0, 0),       -- Sloan McCoy, Deathweed
(1326, 8923, 0, 0),       -- Sloan McCoy, Essence of Agony
(1326, 8924, 0, 0),       -- Sloan McCoy, Dust of Deterioration
(1326, 8925, 0, 0),       -- Sloan McCoy, Crystal Vial
(1351, 17019, 0, 0),      -- Brother Cassius, Arcane Dust
(1448, 4471, 0, 0),       -- Neal Allen, Flint and Tinder
(1452, 4471, 0, 0),       -- Gruham Rumdnul, Flint and Tinder
(1456, 2692, 0, 0),       -- Kersok Prond, Hot Spices
(1456, 3713, 0, 0),       -- Kersok Prond, Soothing Spices
(1457, 2928, 0, 0),       -- Samor Festivus, Dust of Decay
(1457, 2930, 0, 0),       -- Samor Festivus, Essence of Pain
(1457, 3371, 0, 0),       -- Samor Festivus, Empty Vial
(1457, 3372, 0, 0),       -- Samor Festivus, Leaded Vial
(1457, 3777, 0, 0),       -- Samor Festivus, Lethargy Root
(1457, 5060, 0, 0),       -- Samor Festivus, Thieves' Tools
(1457, 5140, 0, 0),       -- Samor Festivus, Flash Powder
(1457, 5173, 0, 0),       -- Samor Festivus, Deathweed
(1457, 8923, 0, 0),       -- Samor Festivus, Essence of Agony
(1457, 8924, 0, 0),       -- Samor Festivus, Dust of Deterioration
(1457, 8925, 0, 0),       -- Samor Festivus, Crystal Vial
(1459, 2101, 0, 0),       -- Naela Trance, Light Quiver
(1459, 2504, 0, 0),       -- Naela Trance, Worn Shortbow
(1459, 2505, 0, 0),       -- Naela Trance, Polished Shortbow
(1459, 2506, 0, 0),       -- Naela Trance, Hornwood Recurve Bow
(1459, 3027, 0, 0),       -- Naela Trance, Heavy Recurve Bow
(1459, 3030, 0, 0),       -- Naela Trance, Razor Arrow
(1463, 17019, 0, 0),      -- Falkan Armonis, Arcane Dust
(1465, 2692, 0, 0),       -- Drac Roughcut, Hot Spices
(1673, 17019, 0, 0),      -- Alyssa Eva, Arcane Dust
(1682, 4471, 0, 0),       -- Yanni Stoutheart, Flint and Tinder
(1685, 4471, 0, 0),       -- Xandar Goodbeard, Flint and Tinder
(1691, 4471, 0, 0),       -- Kreg Bilmn, Flint and Tinder
(2084, 4471, 0, 0),       -- Natheril Raincaller, Flint and Tinder
(2134, 4471, 0, 0),       -- Mrs. Winters, Flint and Tinder
(2140, 4471, 0, 0),       -- Edwin Harly, Flint and Tinder
(2225, 2692, 0, 0),       -- Zora Guthrek, Hot Spices
(2225, 2928, 0, 0),       -- Zora Guthrek, Dust of Decay
(2225, 3713, 0, 0),       -- Zora Guthrek, Soothing Spices
(2225, 3777, 0, 0),       -- Zora Guthrek, Lethargy Root
(2381, 2692, 0, 0),       -- Micha Yance, Hot Spices
(2381, 3713, 0, 0),       -- Micha Yance, Soothing Spices
(2393, 2692, 0, 0),       -- Christoph Jeffcoat, Hot Spices
(2393, 3713, 0, 0),       -- Christoph Jeffcoat, Soothing Spices
(2397, 2692, 0, 0),       -- Derak Nightfall, Hot Spices
(2397, 3713, 0, 0),       -- Derak Nightfall, Soothing Spices
(2401, 4471, 0, 0),       -- Kayren Soothallow, Flint and Tinder
(2622, 2928, 0, 0),       -- Sly Garrett, Dust of Decay
(2622, 2930, 0, 0),       -- Sly Garrett, Essence of Pain
(2622, 3371, 0, 0),       -- Sly Garrett, Empty Vial
(2622, 3372, 0, 0),       -- Sly Garrett, Leaded Vial
(2622, 3777, 0, 0),       -- Sly Garrett, Lethargy Root
(2622, 5060, 0, 0),       -- Sly Garrett, Thieves' Tools
(2622, 5140, 0, 0),       -- Sly Garrett, Flash Powder
(2622, 5173, 0, 0),       -- Sly Garrett, Deathweed
(2622, 8923, 0, 0),       -- Sly Garrett, Essence of Agony
(2622, 8924, 0, 0),       -- Sly Garrett, Dust of Deterioration
(2622, 8925, 0, 0),       -- Sly Garrett, Crystal Vial
(2626, 16083, 0, 0),      -- Old Man Heming, Expert Fishing - The Bass and You
(2664, 2692, 0, 0),       -- Kelsey Yance, Hot Spices
(2664, 3713, 0, 0),       -- Kelsey Yance, Soothing Spices
(2685, 18651, 1, 43200),  -- Mazk Snipeshot, Schematic: Truesilver Transformer
(2803, 4471, 0, 0),       -- Malygen, Flint and Tinder
(2805, 16084, 0, 0),      -- Deneb Walker, Expert First Aid - Under Wraps
(2805, 16112, 0, 0),      -- Deneb Walker, Manual: Heavy Silk Bandage
(2805, 16113, 0, 0),      -- Deneb Walker, Manual: Mageweave Bandage
(2805, 17019, 0, 0),      -- Deneb Walker, Arcane Dust
(2806, 4471, 0, 0),       -- Bale, Flint and Tinder
(2808, 4471, 0, 0),       -- Vikki Lonsav, Flint and Tinder
(2810, 2692, 0, 0),       -- Hammon Karwn, Hot Spices
(2810, 2928, 0, 0),       -- Hammon Karwn, Dust of Decay
(2810, 3713, 0, 0),       -- Hammon Karwn, Soothing Spices
(2810, 3777, 0, 0),       -- Hammon Karwn, Lethargy Root
(2820, 4471, 0, 0),       -- Graud, Flint and Tinder
(2821, 2692, 0, 0),       -- Keena, Hot Spices
(2821, 2928, 0, 0),       -- Keena, Dust of Decay
(2821, 3713, 0, 0),       -- Keena, Soothing Spices
(2821, 3777, 0, 0),       -- Keena, Lethargy Root
(2908, 4471, 0, 0),       -- Grawl, Flint and Tinder
(3012, 6342, 1, 7200),    -- Nata Dawnstrider, Formula: Enchant Chest - Minor Mana
(3027, 2692, 0, 0),       -- Naal Mistrunner, Hot Spices
(3027, 3713, 0, 0),       -- Naal Mistrunner, Soothing Spices
(3076, 4471, 0, 0),       -- Moorat Longstride, Flint and Tinder
(3085, 2692, 0, 0),       -- Gloria Femmel, Hot Spices
(3085, 3713, 0, 0),       -- Gloria Femmel, Soothing Spices
(3090, 2928, 0, 0),       -- Gerald Crawley, Dust of Decay
(3090, 2930, 0, 0),       -- Gerald Crawley, Essence of Pain
(3090, 3371, 0, 0),       -- Gerald Crawley, Empty Vial
(3090, 3372, 0, 0),       -- Gerald Crawley, Leaded Vial
(3090, 3777, 0, 0),       -- Gerald Crawley, Lethargy Root
(3090, 5060, 0, 0),       -- Gerald Crawley, Thieves' Tools
(3090, 5140, 0, 0),       -- Gerald Crawley, Flash Powder
(3090, 5173, 0, 0),       -- Gerald Crawley, Deathweed
(3090, 8923, 0, 0),       -- Gerald Crawley, Essence of Agony
(3090, 8924, 0, 0),       -- Gerald Crawley, Dust of Deterioration
(3090, 8925, 0, 0),       -- Gerald Crawley, Crystal Vial
(3135, 2928, 0, 0),       -- Malissa, Dust of Decay
(3135, 2930, 0, 0),       -- Malissa, Essence of Pain
(3135, 3371, 0, 0),       -- Malissa, Empty Vial
(3135, 3372, 0, 0),       -- Malissa, Leaded Vial
(3135, 3777, 0, 0),       -- Malissa, Lethargy Root
(3135, 5060, 0, 0),       -- Malissa, Thieves' Tools
(3135, 5140, 0, 0),       -- Malissa, Flash Powder
(3135, 5173, 0, 0),       -- Malissa, Deathweed
(3135, 8923, 0, 0),       -- Malissa, Essence of Agony
(3135, 8924, 0, 0),       -- Malissa, Dust of Deterioration
(3135, 8925, 0, 0),       -- Malissa, Crystal Vial
(3164, 4471, 0, 0),       -- Jark, Flint and Tinder
(3186, 4471, 0, 0),       -- K'waii, Flint and Tinder
(3313, 4471, 0, 0),       -- Trak'gen, Flint and Tinder
(3323, 17019, 0, 0),      -- Horthus, Arcane Dust
(3334, 2928, 0, 0),       -- Rekkul, Dust of Decay
(3334, 2930, 0, 0),       -- Rekkul, Essence of Pain
(3334, 3371, 0, 0),       -- Rekkul, Empty Vial
(3334, 3372, 0, 0),       -- Rekkul, Leaded Vial
(3334, 3777, 0, 0),       -- Rekkul, Lethargy Root
(3334, 5060, 0, 0),       -- Rekkul, Thieves' Tools
(3334, 5140, 0, 0),       -- Rekkul, Flash Powder
(3334, 5173, 0, 0),       -- Rekkul, Deathweed
(3334, 8923, 0, 0),       -- Rekkul, Essence of Agony
(3334, 8924, 0, 0),       -- Rekkul, Dust of Deterioration
(3334, 8925, 0, 0),       -- Rekkul, Crystal Vial
(3335, 17019, 0, 0),      -- Hagrus, Arcane Dust
(3346, 6342, 1, 7200),    -- Kithas, Formula: Enchant Chest - Minor Mana
(3350, 4471, 0, 0),       -- Asoran, Flint and Tinder
(3351, 17019, 0, 0),      -- Magenius, Arcane Dust
(3367, 2324, 0, 0),       -- Felika, Bleach
(3367, 2605, 0, 0),       -- Felika, Green Dye
(3367, 2692, 0, 0),       -- Felika, Hot Spices
(3367, 2928, 0, 0),       -- Felika, Dust of Decay
(3367, 3713, 0, 0),       -- Felika, Soothing Spices
(3367, 3777, 0, 0),       -- Felika, Lethargy Root
(3367, 6260, 0, 0),       -- Felika, Blue Dye
(3367, 6529, 0, 0),       -- Felika, Shiny Bauble
(3400, 2692, 0, 0),       -- Xen'to, Hot Spices
(3400, 3713, 0, 0),       -- Xen'to, Soothing Spices
(3413, 16041, 1, 10800),  -- Sovik, Schematic: Thorium Grenade
(3413, 16042, 1, 10800),  -- Sovik, Schematic: Thorium Widget
(3481, 4471, 0, 0),       -- Barg, Flint and Tinder
(3482, 2692, 0, 0),       -- Tari'qa, Hot Spices
(3490, 2928, 0, 0),       -- Hula'mahi, Dust of Decay
(3490, 2930, 0, 0),       -- Hula'mahi, Essence of Pain
(3490, 3371, 0, 0),       -- Hula'mahi, Empty Vial
(3490, 3372, 0, 0),       -- Hula'mahi, Leaded Vial
(3490, 3777, 0, 0),       -- Hula'mahi, Lethargy Root
(3490, 5060, 0, 0),       -- Hula'mahi, Thieves' Tools
(3490, 5140, 0, 0),       -- Hula'mahi, Flash Powder
(3490, 5173, 0, 0),       -- Hula'mahi, Deathweed
(3490, 8923, 0, 0),       -- Hula'mahi, Essence of Agony
(3490, 8924, 0, 0),       -- Hula'mahi, Dust of Deterioration
(3490, 8925, 0, 0),       -- Hula'mahi, Crystal Vial
(3490, 17019, 0, 0),      -- Hula'mahi, Arcane Dust
(3498, 4471, 0, 0),       -- Jazzik, Flint and Tinder
(3499, 2692, 0, 0),       -- Ranik, Hot Spices
(3499, 2928, 0, 0),       -- Ranik, Dust of Decay
(3541, 4471, 0, 0),       -- Sarah Raycroft, Flint and Tinder
(3542, 2928, 0, 0),       -- Jaysin Lanyda, Dust of Decay
(3542, 2930, 0, 0),       -- Jaysin Lanyda, Essence of Pain
(3542, 3371, 0, 0),       -- Jaysin Lanyda, Empty Vial
(3542, 3372, 0, 0),       -- Jaysin Lanyda, Leaded Vial
(3542, 3777, 0, 0),       -- Jaysin Lanyda, Lethargy Root
(3542, 5060, 0, 0),       -- Jaysin Lanyda, Thieves' Tools
(3542, 5140, 0, 0),       -- Jaysin Lanyda, Flash Powder
(3542, 5173, 0, 0),       -- Jaysin Lanyda, Deathweed
(3542, 8923, 0, 0),       -- Jaysin Lanyda, Essence of Agony
(3542, 8924, 0, 0),       -- Jaysin Lanyda, Dust of Deterioration
(3542, 8925, 0, 0),       -- Jaysin Lanyda, Crystal Vial
(3542, 17019, 0, 0),      -- Jaysin Lanyda, Arcane Dust
(3551, 2928, 0, 0),       -- Patrice Dwyer, Dust of Decay
(3551, 2930, 0, 0),       -- Patrice Dwyer, Essence of Pain
(3551, 3371, 0, 0),       -- Patrice Dwyer, Empty Vial
(3551, 3372, 0, 0),       -- Patrice Dwyer, Leaded Vial
(3551, 3777, 0, 0),       -- Patrice Dwyer, Lethargy Root
(3551, 5060, 0, 0),       -- Patrice Dwyer, Thieves' Tools
(3551, 5140, 0, 0),       -- Patrice Dwyer, Flash Powder
(3551, 5173, 0, 0),       -- Patrice Dwyer, Deathweed
(3551, 8923, 0, 0),       -- Patrice Dwyer, Essence of Agony
(3551, 8924, 0, 0),       -- Patrice Dwyer, Dust of Deterioration
(3551, 8925, 0, 0),       -- Patrice Dwyer, Crystal Vial
(3556, 2692, 0, 0),       -- Andrew Hilbert, Hot Spices
(3556, 2928, 0, 0),       -- Andrew Hilbert, Dust of Decay
(3561, 2928, 0, 0),       -- Kyrai, Dust of Decay
(3561, 2930, 0, 0),       -- Kyrai, Essence of Pain
(3561, 3371, 0, 0),       -- Kyrai, Empty Vial
(3561, 3372, 0, 0),       -- Kyrai, Leaded Vial
(3561, 3777, 0, 0),       -- Kyrai, Lethargy Root
(3561, 5060, 0, 0),       -- Kyrai, Thieves' Tools
(3561, 5140, 0, 0),       -- Kyrai, Flash Powder
(3561, 5173, 0, 0),       -- Kyrai, Deathweed
(3561, 8923, 0, 0),       -- Kyrai, Essence of Agony
(3561, 8924, 0, 0),       -- Kyrai, Dust of Deterioration
(3561, 8925, 0, 0),       -- Kyrai, Crystal Vial
(3562, 17019, 0, 0),      -- Alaindia, Arcane Dust
(3608, 4471, 0, 0),       -- Aldia, Flint and Tinder
(3625, 4471, 0, 0),       -- Rarck, Flint and Tinder
(3779, 2692, 0, 0),       -- Syurana, Hot Spices
(3779, 2928, 0, 0),       -- Syurana, Dust of Decay
(3779, 3713, 0, 0),       -- Syurana, Soothing Spices
(3779, 3777, 0, 0),       -- Syurana, Lethargy Root
(3954, 2692, 0, 0),       -- Dalria, Hot Spices
(3954, 2928, 0, 0),       -- Dalria, Dust of Decay
(3954, 3713, 0, 0),       -- Dalria, Soothing Spices
(3954, 3777, 0, 0),       -- Dalria, Lethargy Root
(3955, 2692, 0, 0),       -- Shandrina, Hot Spices
(3955, 2928, 0, 0),       -- Shandrina, Dust of Decay
(3955, 3713, 0, 0),       -- Shandrina, Soothing Spices
(3955, 3777, 0, 0),       -- Shandrina, Lethargy Root
(3955, 16072, 0, 0),      -- Shandrina, Expert Cookbook
(3961, 16171, 0, 0),      -- Maliynn, Shinsollo
(3962, 4471, 0, 0),       -- Haljan Oakheart, Flint and Tinder
(3969, 2928, 0, 0),       -- Fahran Silentblade, Dust of Decay
(3969, 2930, 0, 0),       -- Fahran Silentblade, Essence of Pain
(3969, 3371, 0, 0),       -- Fahran Silentblade, Empty Vial
(3969, 3372, 0, 0),       -- Fahran Silentblade, Leaded Vial
(3969, 3777, 0, 0),       -- Fahran Silentblade, Lethargy Root
(3969, 5060, 0, 0),       -- Fahran Silentblade, Thieves' Tools
(3969, 5140, 0, 0),       -- Fahran Silentblade, Flash Powder
(3969, 5173, 0, 0),       -- Fahran Silentblade, Deathweed
(3969, 8923, 0, 0),       -- Fahran Silentblade, Essence of Agony
(3969, 8924, 0, 0),       -- Fahran Silentblade, Dust of Deterioration
(3969, 8925, 0, 0),       -- Fahran Silentblade, Crystal Vial
(3970, 17019, 0, 0),      -- Llana, Arcane Dust
(4082, 4471, 0, 0),       -- Grawnal, Flint and Tinder
(4083, 17019, 0, 0),      -- Jeeda, Arcane Dust
(4084, 4471, 0, 0),       -- Chylina, Flint and Tinder
(4170, 4471, 0, 0),       -- Ellandrieth, Flint and Tinder
(4170, 1179, 0, 0),       -- Ellandrieth, Ice Cold Milk
(4170, 5048, 0, 0),       -- Ellandrieth, Blue Ribboned Wrapping Paper
(4182, 4471, 0, 0),       -- Dalmond, Flint and Tinder
(4194, 2692, 0, 0),       -- Ullanna, Hot Spices
(4220, 17019, 0, 0),      -- Cyroen, Arcane Dust
(4223, 2692, 0, 0),       -- Fyldan, Hot Spices
(4223, 3713, 0, 0),       -- Fyldan, Soothing Spices
(4229, 6529, 0, 0),       -- Mythrin'dir, Shiny Bauble
(4229, 2324, 0, 0),       -- Mythrin'dir, Bleach
(4229, 2605, 0, 0),       -- Mythrin'dir, Green Dye
(4229, 2692, 0, 0),       -- Mythrin'dir, Hot Spices
(4229, 2928, 0, 0),       -- Mythrin'dir, Dust of Decay
(4229, 3713, 0, 0),       -- Mythrin'dir, Soothing Spices
(4229, 3777, 0, 0),       -- Mythrin'dir, Lethargy Root
(4229, 6260, 0, 0),       -- Mythrin'dir, Blue Dye
(4226, 13477, 1, 7200),   -- Ulthir, Recipe: Superior Mana Potion
(4228, 6342, 1, 1800),    -- Vaean, Formula: Enchant Chest - Minor Mana
(4241, 1179, 0, 0),       -- Mydrannul, Ice Cold Milk
(4241, 4471, 0, 0),       -- Mydrannul, Flint and Tinder
(4255, 117, 0, 0),        -- Brogus Thunderbrew, Tough Jerky
(4255, 159, 0, 0),        -- Brogus Thunderbrew, Refreshing Spring Water
(4255, 414, 0, 0),        -- Brogus Thunderbrew, Dalaran Sharp
(4255, 422, 0, 0),        -- Brogus Thunderbrew, Dwarven Mild
(4255, 787, 0, 0),        -- Brogus Thunderbrew, Slitherskin Mackerel
(4255, 1179, 0, 0),       -- Brogus Thunderbrew, Ice Cold Milk
(4255, 1205, 0, 0),       -- Brogus Thunderbrew, Melon Juice
(4255, 1645, 0, 0),       -- Brogus Thunderbrew, Moonberry Juice
(4255, 1707, 0, 0),       -- Brogus Thunderbrew, Stormwind Brie
(4255, 1708, 0, 0),       -- Brogus Thunderbrew, Sweet Nectar
(4255, 2070, 0, 0),       -- Brogus Thunderbrew, Darnassian Bleu
(4255, 2287, 0, 0),       -- Brogus Thunderbrew, Haunch of Meat
(4255, 3770, 0, 0),       -- Brogus Thunderbrew, Mutton Chop
(4255, 3771, 0, 0),       -- Brogus Thunderbrew, Wild Hog Shank
(4255, 3927, 0, 0),       -- Brogus Thunderbrew, Fine Aged Cheddar
(4255, 4536, 0, 0),       -- Brogus Thunderbrew, Shiny Red Apple
(4255, 4537, 0, 0),       -- Brogus Thunderbrew, Tel'Abim Banana
(4255, 4538, 0, 0),       -- Brogus Thunderbrew, Snapvine Watermelon
(4255, 4539, 0, 0),       -- Brogus Thunderbrew, Goldenbark Apple
(4255, 4540, 0, 0),       -- Brogus Thunderbrew, Tough Hunk of Bread
(4255, 4541, 0, 0),       -- Brogus Thunderbrew, Freshly Baked Bread
(4255, 4542, 0, 0),       -- Brogus Thunderbrew, Moist Cornbread
(4255, 4544, 0, 0),       -- Brogus Thunderbrew, Mulgore Spice Bread
(4255, 4592, 0, 0),       -- Brogus Thunderbrew, Longjaw Mud Snapper
(4255, 4593, 0, 0),       -- Brogus Thunderbrew, Bristle Whisker Catfish
(4255, 4594, 0, 0),       -- Brogus Thunderbrew, Rockscale Cod
(4255, 4599, 0, 0),       -- Brogus Thunderbrew, Cured Ham Steak
(4255, 4601, 0, 0),       -- Brogus Thunderbrew, Soft Banana Bread
(4255, 4602, 0, 0),       -- Brogus Thunderbrew, Moon Harvest Pumpkin
(4255, 21552, 0, 0),       -- Brogus Thunderbrew, Striped Yellowtail
(4265, 2692, 0, 0),       -- Nyoma, Hot Spices
(4265, 3713, 0, 0),       -- Nyoma, Soothing Spices
(4553, 2692, 0, 0),       -- Ronald Burch, Hot Spices
(4553, 3713, 0, 0),       -- Ronald Burch, Soothing Spices
(4555, 4471, 0, 0),       -- Eleanor Rusk, Flint and Tinder
(4561, 2324, 0, 0),       -- Daniel Bartlett, Bleach
(4561, 2605, 0, 0),       -- Daniel Bartlett, Green Dye
(4561, 2692, 0, 0),       -- Daniel Bartlett, Hot Spices
(4561, 2928, 0, 0),       -- Daniel Bartlett, Dust of Decay
(4561, 3713, 0, 0),       -- Daniel Bartlett, Soothing Spices
(4561, 3777, 0, 0),       -- Daniel Bartlett, Lethargy Root
(4561, 6260, 0, 0),       -- Daniel Bartlett, Blue Dye
(4561, 6529, 0, 0),       -- Daniel Bartlett, Shiny Bauble
(4562, 17019, 0, 0),      -- Thomas Mordan, Arcane Dust
(4575, 17019, 0, 0),      -- Hannah Akeley, Arcane Dust
(4585, 2928, 0, 0),       -- Ezekiel Graves, Dust of Decay
(4585, 2930, 0, 0),       -- Ezekiel Graves, Essence of Pain
(4585, 3371, 0, 0),       -- Ezekiel Graves, Empty Vial
(4585, 3372, 0, 0),       -- Ezekiel Graves, Leaded Vial
(4585, 3777, 0, 0),       -- Ezekiel Graves, Lethargy Root
(4585, 5060, 0, 0),       -- Ezekiel Graves, Thieves' Tools
(4585, 5140, 0, 0),       -- Ezekiel Graves, Flash Powder
(4585, 5173, 0, 0),       -- Ezekiel Graves, Deathweed
(4585, 8923, 0, 0),       -- Ezekiel Graves, Essence of Agony
(4585, 8924, 0, 0),       -- Ezekiel Graves, Dust of Deterioration
(4585, 8925, 0, 0),       -- Ezekiel Graves, Crystal Vial
(4610, 13477, 1, 2700),   -- Algernon, Recipe: Superior Mana Potion
(4617, 6342, 1, 7200),    -- Thaddeus Webb, Formula: Enchant Chest - Minor Mana
(4775, 2324, 0, 0),       -- Felicia Doan, Bleach
(4775, 2605, 0, 0),       -- Felicia Doan, Green Dye
(4775, 2692, 0, 0),       -- Felicia Doan, Hot Spices
(4775, 2928, 0, 0),       -- Felicia Doan, Dust of Decay
(4775, 3713, 0, 0),       -- Felicia Doan, Soothing Spices
(4775, 6260, 0, 0),       -- Felicia Doan, Blue Dye
(4775, 6529, 0, 0),       -- Felicia Doan, Shiny Bauble
(4876, 4471, 0, 0),       -- Jawn Highmesa, Flint and Tinder
(4877, 2692, 0, 0),       -- Jandia, Hot Spices
(4877, 3713, 0, 0),       -- Jandia, Soothing Spices
(4878, 17019, 0, 0),      -- Montarr, Arcane Dust
(4890, 4833, 1, 43200),   -- Piter Verance, Glorious Shoulders
(4890, 4835, 1, 43200),   -- Piter Verance, Elite Shoulders
(4896, 4471, 0, 0),       -- Charity Mipsy, Flint and Tinder
(4897, 2692, 0, 0),       -- Helenia Olden, Hot Spices
(4897, 2928, 0, 0),       -- Helenia Olden, Dust of Decay
(4897, 3713, 0, 0),       -- Helenia Olden, Soothing Spices
(4897, 3777, 0, 0),       -- Helenia Olden, Lethargy Root
(5100, 2692, 0, 0),       -- Fillius Fizzlespinner, Hot Spices
(5100, 3713, 0, 0),       -- Fillius Fizzlespinner, Soothing Spices
(5101, 4471, 0, 0),       -- Bryllia Ironbrand, Flint and Tinder
(5110, 17019, 0, 0),      -- Barim Jurgenstaad, Arcane Dust
(5134, 4471, 0, 0),       -- Jonivera Farmountain, Flint and Tinder
(5135, 2692, 0, 0),       -- Svalbrad Farmountain, Hot Spices
(5135, 2928, 0, 0),       -- Svalbrad Farmountain, Dust of Decay
(5135, 3713, 0, 0),       -- Svalbrad Farmountain, Soothing Spices
(5135, 3777, 0, 0),       -- Svalbrad Farmountain, Lethargy Root
(5138, 6217, 0, 0),       -- Gwina Stonebranch, Copper Rod
(5139, 2928, 0, 0),       -- Kurdrum Barleybeard, Dust of Decay
(5139, 3371, 0, 0),       -- Kurdrum Barleybeard, Empty Vial
(5139, 3372, 0, 0),       -- Kurdrum Barleybeard, Leaded Vial
(5139, 5060, 0, 0),       -- Kurdrum Barleybeard, Thieves' Tools
(5139, 8925, 0, 0),       -- Kurdrum Barleybeard, Crystal Vial
(5139, 3777, 0, 0),       -- Kurdrum Barleybeard, Lethargy Root
(5139, 2930, 0, 0),       -- Kurdrum Barleybeard, Essence of Pain
(5139, 5140, 0, 0),       -- Kurdrum Barleybeard, Flash Powder
(5139, 5173, 0, 0),       -- Kurdrum Barleybeard, Deathweed
(5139, 8923, 0, 0),       -- Kurdrum Barleybeard, Essence of Agony
(5139, 8924, 0, 0),       -- Kurdrum Barleybeard, Dust of Deterioration
(5151, 17019, 0, 0),      -- Ginny Longberry, Arcane Dust
(5158, 6342, 1, 7200),    -- Tilli Thistlefuzz, Formula: Enchant Chest - Minor Mana
(5160, 2692, 0, 0),       -- Emrul Riknussun, Hot Spices
(5160, 3713, 0, 0),       -- Emrul Riknussun, Soothing Spices
(5163, 2324, 0, 0),       -- Burbik Gearspanner, Bleach
(5163, 2692, 0, 0),       -- Burbik Gearspanner, Hot Spices
(5163, 3713, 0, 0),       -- Burbik Gearspanner, Soothing Spices
(5169, 2928, 0, 0),       -- Tynnus Venomsprout, Dust of Decay
(5169, 2930, 0, 0),       -- Tynnus Venomsprout, Essence of Pain
(5169, 3371, 0, 0),       -- Tynnus Venomsprout, Empty Vial
(5169, 3372, 0, 0),       -- Tynnus Venomsprout, Leaded Vial
(5169, 3777, 0, 0),       -- Tynnus Venomsprout, Lethargy Root
(5169, 5060, 0, 0),       -- Tynnus Venomsprout, Thieves' Tools
(5169, 5140, 0, 0),       -- Tynnus Venomsprout, Flash Powder
(5169, 5173, 0, 0),       -- Tynnus Venomsprout, Deathweed
(5169, 8923, 0, 0),       -- Tynnus Venomsprout, Essence of Agony
(5169, 8924, 0, 0),       -- Tynnus Venomsprout, Dust of Deterioration
(5169, 8925, 0, 0),       -- Tynnus Venomsprout, Crystal Vial
(5175, 16041, 1, 10800),  -- Gearcutter Cogspinner, Schematic: Thorium Grenade
(5175, 16042, 1, 10800),  -- Gearcutter Cogspinner, Schematic: Thorium Widget
(5483, 2692, 0, 0),       -- Erika Tate, Hot Spices
(5483, 3713, 0, 0),       -- Erika Tate, Soothing Spices
(5757, 6342, 1, 7200),    -- Lilly, Formula: Enchant Chest - Minor Mana
(5758, 6342, 1, 7200),    -- Leo Sarn, Formula: Enchant Chest - Minor Mana
(5814, 2511, 0, 0),       -- Innkeeper Thulbek, Hunter's Boomstick
(5817, 2692, 0, 0),       -- Shimra, Hot Spices
(5817, 2928, 0, 0),       -- Shimra, Dust of Decay
(5817, 3713, 0, 0),       -- Shimra, Soothing Spices
(5817, 3777, 0, 0),       -- Shimra, Lethargy Root
(6028, 2417, 0, 0),       -- Burkrum, Augmented Chain Vest
(6028, 2418, 0, 0),       -- Burkrum, Augmented Chain Leggings
(6028, 2419, 0, 0),       -- Burkrum, Augmented Chain Belt
(6028, 2420, 0, 0),       -- Burkrum, Augmented Chain Boots
(6028, 2421, 0, 0),       -- Burkrum, Augmented Chain Bracers
(6028, 2422, 0, 0),       -- Burkrum, Augmented Chain Gloves
(6028, 2448, 0, 0),       -- Burkrum, Heavy Pavise
(6028, 3891, 0, 0),       -- Burkrum, Augmented Chain Helm
(6028, 17189, 0, 0),      -- Burkrum, Metal Buckler
(6301, 2692, 0, 0),       -- Gorbold Steelhand, Hot Spices
(6301, 2928, 0, 0),       -- Gorbold Steelhand, Dust of Decay
(6301, 3713, 0, 0),       -- Gorbold Steelhand, Soothing Spices
(6301, 3777, 0, 0),       -- Gorbold Steelhand, Lethargy Root
(6738, 4536, 0, 0),       -- Innkeeper Kimlya, Shiny Red Apple
(6738, 4537, 0, 0),       -- Innkeeper Kimlya, Tel'Abim Banana
(6738, 4538, 0, 0),       -- Innkeeper Kimlya, Snapvine Watermelon
(6738, 4539, 0, 0),       -- Innkeeper Kimlya, Goldenbark Apple
(6738, 4602, 0, 0),       -- Innkeeper Kimlya, Moon Harvest Pumpkin
(6738, 8953, 0, 0),       -- Innkeeper Kimlya, Deep Fried Plantains
(6779, 2928, 0, 0),       -- Smudge Thunderwood, Dust of Decay
(6779, 2930, 0, 0),       -- Smudge Thunderwood, Essence of Pain
(6779, 3371, 0, 0),       -- Smudge Thunderwood, Empty Vial
(6779, 3372, 0, 0),       -- Smudge Thunderwood, Leaded Vial
(6779, 3777, 0, 0),       -- Smudge Thunderwood, Lethargy Root
(6779, 5060, 0, 0),       -- Smudge Thunderwood, Thieves' Tools
(6779, 5140, 0, 0),       -- Smudge Thunderwood, Flash Powder
(6779, 5173, 0, 0),       -- Smudge Thunderwood, Deathweed
(6779, 8923, 0, 0),       -- Smudge Thunderwood, Essence of Agony
(6779, 8924, 0, 0),       -- Smudge Thunderwood, Dust of Deterioration
(6779, 8925, 0, 0),       -- Smudge Thunderwood, Crystal Vial
(7940, 14488, 1, 3600),   -- Darnall, Pattern: Runecloth Boots
(7942, 4471, 0, 0),       -- Faralorn, Flint and Tinder
(7947, 2692, 0, 0),       -- Vivianna, Hot Spices
(7947, 2928, 0, 0),       -- Vivianna, Dust of Decay
(7947, 3713, 0, 0),       -- Vivianna, Soothing Spices
(7947, 3777, 0, 0),       -- Vivianna, Lethargy Root
(8139, 4471, 0, 0),       -- Jabbey, Flint and Tinder
(8145, 2692, 0, 0),       -- Sheendra Tallgrass, Hot Spices
(8145, 2928, 0, 0),       -- Sheendra Tallgrass, Dust of Decay
(8145, 3713, 0, 0),       -- Sheendra Tallgrass, Soothing Spices
(8145, 3777, 0, 0),       -- Sheendra Tallgrass, Lethargy Root
(8307, 2692, 0, 0),       -- Tarban Hearthgrain, Hot Spices
(8307, 3713, 0, 0),       -- Tarban Hearthgrain, Soothing Spices
(8361, 17019, 0, 0),      -- Chepi, Arcane Dust
(8362, 4471, 0, 0),       -- Kuruk, Flint and Tinder
(8363, 2324, 0, 0),       -- Shadi Mistrunner, Bleach
(8363, 2605, 0, 0),       -- Shadi Mistrunner, Green Dye
(8363, 2692, 0, 0),       -- Shadi Mistrunner, Hot Spices
(8363, 2928, 0, 0),       -- Shadi Mistrunner, Dust of Decay
(8363, 3713, 0, 0),       -- Shadi Mistrunner, Soothing Spices
(8363, 3777, 0, 0),       -- Shadi Mistrunner, Lethargy Root
(8363, 6260, 0, 0),       -- Shadi Mistrunner, Blue Dye
(8363, 6529, 0, 0),       -- Shadi Mistrunner, Shiny Bauble
(8934, 2692, 0, 0),       -- Christopher Hewen, Hot Spices
(8934, 2928, 0, 0),       -- Christopher Hewen, Dust of Decay
(8934, 3713, 0, 0),       -- Christopher Hewen, Soothing Spices
(8934, 3777, 0, 0),       -- Christopher Hewen, Lethargy Root
(9636, 2325, 0, 0),       -- Kireena, Black Dye
(9636, 2604, 0, 0),       -- Kireena, Red Dye
(9636, 2692, 0, 0),       -- Kireena, Hot Spices
(9636, 2928, 0, 0),       -- Kireena, Dust of Decay
(9636, 3713, 0, 0),       -- Kireena, Soothing Spices
(9636, 3777, 0, 0),       -- Kireena, Lethargy Root
(9636, 4340, 0, 0),       -- Kireena, Gray Dye
(9636, 4341, 0, 0),       -- Kireena, Yellow Dye
(9636, 4342, 0, 0),       -- Kireena, Purple Dye
(9636, 6256, 0, 0),       -- Kireena, Fishing Pole
(9636, 6529, 0, 0),       -- Kireena, Shiny Bauble
(9636, 7005, 0, 0),       -- Kireena, Skinning Knife
(9636, 8343, 0, 0),       -- Kireena, Heavy Silken Thread
(9636, 8925, 0, 0),       -- Kireena, Crystal Vial
(10364, 2928, 0, 0),      -- Yaelika Farclaw, Dust of Decay
(10364, 3371, 0, 0),      -- Yaelika Farclaw, Empty Vial
(10364, 3372, 0, 0),      -- Yaelika Farclaw, Leaded Vial
(10364, 3777, 0, 0),      -- Yaelika Farclaw, Lethargy Root
(10364, 5060, 0, 0),      -- Yaelika Farclaw, Thieves' Tools
(10364, 8925, 0, 0),      -- Yaelika Farclaw, Crystal Vial
(10367, 117, 0, 0),       -- Shrye Ragefist, Tough Jerky
(10367, 159, 0, 0),       -- Shrye Ragefist, Refreshing Spring Water
(10367, 414, 0, 0),       -- Shrye Ragefist, Dalaran Sharp
(10367, 422, 0, 0),       -- Shrye Ragefist, Dwarven Mild
(10367, 787, 0, 0),       -- Shrye Ragefist, Slitherskin Mackerel
(10367, 1179, 0, 0),      -- Shrye Ragefist, Ice Cold Milk
(10367, 1205, 0, 0),      -- Shrye Ragefist, Melon Juice
(10367, 1645, 0, 0),      -- Shrye Ragefist, Moonberry Juice
(10367, 1707, 0, 0),      -- Shrye Ragefist, Stormwind Brie
(10367, 1708, 0, 0),      -- Shrye Ragefist, Sweet Nectar
(10367, 2070, 0, 0),      -- Shrye Ragefist, Darnassian Bleu
(10367, 2287, 0, 0),      -- Shrye Ragefist, Haunch of Meat
(10367, 3770, 0, 0),      -- Shrye Ragefist, Mutton Chop 
(10367, 3771, 0, 0),      -- Shrye Ragefist, Wild Hog Shank
(10367, 3927, 0, 0),      -- Shrye Ragefist, Fine Aged Cheddar
(10367, 4540, 0, 0),      -- Shrye Ragefist, Tough Hunk of Bread
(10367, 4541, 0, 0),      -- Shrye Ragefist, Freshly Baked Bread
(10367, 4542, 0, 0),      -- Shrye Ragefist, Moist Cornbread
(10367, 4544, 0, 0),      -- Shrye Ragefist, Mulgore Spice Bread
(10367, 4592, 0, 0),      -- Shrye Ragefist, Longjaw Mud Snapper
(10367, 4593, 0, 0),      -- Shrye Ragefist, Bristle Whisker Catfish
(10367, 4594, 0, 0),      -- Shrye Ragefist, Rockscale Cod
(10367, 4599, 0, 0),      -- Shrye Ragefist, Cured Ham Steak
(10367, 4601, 0, 0),      -- Shrye Ragefist, Soft Banana Bread
(10367, 4604, 0, 0),      -- Shrye Ragefist, Forest Mushroom Cap
(10367, 4605, 0, 0),      -- Shrye Ragefist, Red-speckled Mushroom
(10367, 4606, 0, 0),      -- Shrye Ragefist, Spongy Morel
(10367, 4607, 0, 0),      -- Shrye Ragefist, Delicious Cave Mold
(10367, 4608, 0, 0),      -- Shrye Ragefist, Raw Black Truffle
(10367, 21552, 0, 0),     -- Shrye Ragefist, Striped Yellowtail
(11038, 4471, 0, 0),      -- Caretaker Alen, Flint and Tinder
(11185, 16047, 1, 10800), -- Xizzer Fizzbolt, Schematic: Thorium Tube
(11188, 13480, 1, 7200),  -- Evie Whirlbrew, Recipe: Major Healing Potion
(11189, 14481, 1, 3600),  -- Qia, Pattern: Runecloth Gloves
(11189, 2692, 0, 0),      -- Qia, Hot Spices
(11189, 2928, 0, 0),      -- Qia, Dust of Decay 
(11189, 3713, 0, 0),      -- Qia, Soothing Spices
(11189, 3777, 0, 0),      -- Qia, Lethargy Root
(11555, 4471, 0, 0),      -- Gorn One Eye, Flint and Tinder
(12021, 4471, 0, 0),      -- Daeolyn Summerleaf, Flint and Tinder
(12022, 2692, 0, 0),      -- Lorelae Wintersong, Hot Spices
(12022, 2928, 0, 0),      -- Lorelae Wintersong, Dust of Decay
(12022, 3713, 0, 0),      -- Lorelae Wintersong, Soothing Spices
(12022, 3777, 0, 0),      -- Lorelae Wintersong, Lethargy Root
(12027, 4471, 0, 0),      -- Tukk, Flint and Tinder
(12028, 2692, 0, 0),      -- Lah'Mawhani, Hot Spices
(12028, 2928, 0, 0),      -- Lah'Mawhani, Dust of Decay
(12028, 3713, 0, 0),      -- Lah'Mawhani, Soothing Spices
(12028, 3777, 0, 0),      -- Lah'Mawhani, Lethargy Root
(12033, 2692, 0, 0),      -- Wulan, Hot Spices
(12033, 3713, 0, 0),      -- Wulan, Soothing Spices
(12033, 16072, 0, 0),     -- Wulan, Expert Cookbook
(12043, 2692, 0, 0),      -- Kulwia, Hot Spices
(12043, 2928, 0, 0),      -- Kulwia, Dust of Decay
(12245, 2692, 0, 0),      -- Vendor-Tron 1000, Hot Spices
(12245, 2928, 0, 0),      -- Vendor-Tron 1000, Dust of Decay
(12245, 3713, 0, 0),      -- Vendor-Tron 1000, Soothing Spices
(12245, 3777, 0, 0),      -- Vendor-Tron 1000, Lethargy Root
(12246, 4471, 0, 0),      -- Super-Seller 680, Flint and Tinder
(12941, 2692, 0, 0),      -- Jase Farlane, Hot Spices
(12941, 2928, 0, 0),      -- Jase Farlane, Dust of Decay
(12941, 3713, 0, 0),      -- Jase Farlane, Soothing Spices
(12941, 3777, 0, 0),      -- Jase Farlane, Lethargy Root
(12941, 15756, 1, 3600),  -- Jase Farlane, Pattern: Runic Leather Headband
(12957, 2692, 0, 0),      -- Blimo Gadgetspring, Hot Spices
(12957, 2928, 0, 0),      -- Blimo Gadgetspring, Dust of Decay
(12957, 3713, 0, 0),      -- Blimo Gadgetspring, Soothing Spices
(12957, 3777, 0, 0),      -- Blimo Gadgetspring, Lethargy Root
(12958, 2692, 0, 0),      -- Gigget Zipcoil, Hot Spices
(12958, 2928, 0, 0),      -- Gigget Zipcoil, Dust of Decay
(12958, 3713, 0, 0),      -- Gigget Zipcoil, Soothing Spices
(12958, 3777, 0, 0),      -- Gigget Zipcoil, Lethargy Root
(12959, 4471, 0, 0),      -- Nergal, Flint and Tinder
(12960, 4471, 0, 0),      -- Christi Galvanis, Flint and Tinder
(13216, 19484, 0, 0),     -- Gaelden Hammersmith, The Frostwolf Artichoke
(13217, 19484, 0, 0),     -- Thanthaldis Snowgleam, The Frostwolf Artichoke
(13219, 19483, 0, 0),     -- Jekyll Flandring, Peeling the Onion
(13420, 17195, 0, 0),     -- Penney Copperpinch, Fake Mistletoe
(13429, 17195, 0, 0),     -- Nardstrum Copperpinch, Fake Mistletoe
(13432, 17195, 0, 0),     -- Seersa Copperpinch, Fake Mistletoe
(13433, 17195, 0, 0),     -- Wulmort Jinglepocket, Fake Mistletoe
(13435, 17195, 0, 0),     -- Khole Jinglepocket, Fake Mistletoe
(13476, 16084, 0, 0),     -- Balai Lok'Wein, Expert First Aid - Under Wraps
(13476, 16112, 0, 0),     -- Balai Lok'Wein, Manual: Heavy Silk Bandage
(13476, 16113, 0, 0),     -- Balai Lok'Wein, Manual: Mageweave Bandage
(14624, 4471, 0, 0),      -- Master Smith Burninate, Flint and Tinder
(14738, 2692, 0, 0),      -- Otho Moji'ko, Hot Spices
(14738, 3713, 0, 0),      -- Otho Moji'ko, Soothing Spices
(14739, 17019, 0, 0),     -- Mystic Yayo'jin, Arcane Dust
(14846, 4289, 0, 0),      -- Lhara, Salt
(14846, 11303, 1, 43200), -- Lhara, Fine Shortbow
(14846, 11305, 1, 43200), -- Lhara, Dense Shortbow
(14846, 11306, 1, 43200), -- Lhara, Sturdy Recurve
(14846, 11308, 1, 43200), -- Lhara, Sylvan Shortbow
(14846, 12248, 1, 3600),  -- Lhara, Daring Dirk
(14846, 12251, 1, 3600),  -- Lhara, Big Stick
(14847, 3371, 0, 0),      -- Professor Thaddeus Paleo, Empty Vial
(14847, 3372, 0, 0),      -- Professor Thaddeus Paleo, Leaded Vial
(14847, 8925, 0, 0),      -- Professor Thaddeus Paleo, Crystal Vial
(14847, 18256, 0, 0),     -- Professor Thaddeus Paleo, Imbued Vial
(15174, 4471, 0, 0),      -- Calandrath, Flint and Tinder
(15175, 2928, 0, 0),      -- Khur Hornstriker, Dust of Decay
(15175, 2930, 0, 0),      -- Khur Hornstriker, Essence of Pain
(15175, 3371, 0, 0),      -- Khur Hornstriker, Empty Vial
(15175, 3372, 0, 0),      -- Khur Hornstriker, Leaded Vial
(15175, 3777, 0, 0),      -- Khur Hornstriker, Lethargy Root
(15175, 5060, 0, 0),      -- Khur Hornstriker, Thieves' Tools
(15175, 5140, 0, 0),      -- Khur Hornstriker, Flash Powder
(15175, 5173, 0, 0),      -- Khur Hornstriker, Deathweed
(15175, 8923, 0, 0),      -- Khur Hornstriker, Essence of Agony
(15175, 8924, 0, 0),      -- Khur Hornstriker, Dust of Deterioration
(15175, 8925, 0, 0),      -- Khur Hornstriker, Crystal Vial
(15179, 2692, 0, 0),      -- Mishta, Hot Spices
(15179, 2928, 0, 0),      -- Mishta, Dust of Decay
(15179, 3713, 0, 0),      -- Mishta, Soothing Spices
(15179, 3777, 0, 0),      -- Mishta, Lethargy Root
(15419, 6342, 1, 7200);   -- Kania, Formula: Enchant Chest - Minor Mana



/* PvP Gear Vendor Rep Requirements */

-- Illiyana Moonblaze <Silverwing Supply Officer>
UPDATE `item_template` SET `RequiredReputationFaction` = 890, `RequiredReputationRank` = 5 WHERE `entry` IN
(19514, 19515, 19516, 19517, 19522, 19523, 19524, 19525, 19530, 19531, 19532, 19533, 19538, 19539, 19540, 19541, 20428, 20431, 20439, 20444);
UPDATE `item_template` SET `RequiredReputationFaction` = 890, `RequiredReputationRank` = 6 WHERE `entry` IN
(19546, 19547, 19548, 19549, 19554, 19555, 19556, 19557, 19562, 19563, 19564, 19565, 19570, 19571, 19572, 19573, 20434, 20438, 20440, 20443);
UPDATE `item_template` SET `RequiredReputationFaction` = 890, `RequiredReputationRank` = 7 WHERE `entry` IN
(19506, 22672, 22748, 22749, 22750, 22752, 22753);

-- Kelm Hargunth <Warsong Supply Officer>
UPDATE `item_template` SET `RequiredReputationFaction` = 889, `RequiredReputationRank` = 5 WHERE `entry` IN
(19510, 19511, 19512, 19513, 19518, 19519, 19520, 19521, 19526, 19527, 19528, 19529, 19534, 19535, 19536, 19537, 20426, 20427, 20429, 20442);
UPDATE `item_template` SET `RequiredReputationFaction` = 889, `RequiredReputationRank` = 6 WHERE `entry` IN
(19542, 19543, 19544, 19545, 19550, 19551, 19552, 19553, 19558, 19559, 19560, 19561, 19566, 19567, 19568, 19569, 20425, 20430, 20437, 20441);
UPDATE `item_template` SET `RequiredReputationFaction` = 889, `RequiredReputationRank` = 7 WHERE `entry` IN
(19505, 22651, 22673, 22676, 22740, 22741, 22747);


-- these need to be hidden. they cannot get a reputation requirement, because some of these items have the same ID for both alliance and horde.
-- you can only set 1 reputation requirement for an item.
-- AB is an exception. all AB items are unique to either faction

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 23 AND `SourceGroup` IN (13216, 13217, 13218, 13219, 14753, 14754);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES 
-- Gaelden Hammersmith <Stormpike Supply Officer>
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
-- Thanthaldis Snowgleam <Stormpike Supply Officer>
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
-- Grunnda Wolfheart <Frostwolf Supply Officer>
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
-- Jekyll Flandring <Frostwolf Supply Officer>
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

-- Illiyana Moonblaze <Silverwing Supply Officer>
(23, 14753, 17349, 5, 890, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 17352, 5, 890, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19060, 5, 890, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19061, 5, 890, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19062, 5, 890, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19066, 5, 890, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19067, 5, 890, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19068, 5, 890, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 21565, 5, 890, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 21566, 5, 890, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 21567, 5, 890, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 21568, 5, 890, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
--
(23, 14753, 17348, 5, 890, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 17351, 5, 890, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
--
(23, 14753, 19578, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19580, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19581, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19582, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19583, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19584, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19587, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19589, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19590, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19595, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19596, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
(23, 14753, 19597, 5, 890, 128, 'Vanilla PvP Gear Conditions'),
--
(23, 14753, 30497, 8, 66008, 0, 'Illiyana Moonblaze - Sentinel\'s Mail Leggings'), -- not available during vanilla

-- Kelm Hargunth <Warsong Supply Officer>
(23, 14754, 17349, 5, 889, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 17352, 5, 889, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19060, 5, 889, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19061, 5, 889, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19062, 5, 889, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19066, 5, 889, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19067, 5, 889, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19068, 5, 889, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 21565, 5, 889, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 21566, 5, 889, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 21567, 5, 889, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 21568, 5, 889, 16 + 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
--
(23, 14754, 17348, 5, 889, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 17351, 5, 889, 32 + 64 + 128, 'Vanilla PvP Gear Conditions'),
--
(23, 14754, 19578, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19580, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19581, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19582, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19583, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19584, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19587, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19589, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19590, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19595, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19596, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
(23, 14754, 19597, 5, 889, 128, 'Vanilla PvP Gear Conditions'),
--
(23, 14754, 30498, 8, 66008, 0, 'Kelm Hargunth - Outrider\'s Lamellar Legguards'); -- not available during vanilla

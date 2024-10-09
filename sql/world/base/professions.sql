-- Lhara in Darkmmon Faire - TBC Items
DELETE FROM `npc_vendor` WHERE (`entry` = 14846) AND (`item` IN (21887, 22572, 22573, 22574, 22575, 22576, 22577, 22578, 22787, 22789, 22790, 22791, 22792, 22793, 22794, 23436, 23437, 23438, 23439, 23440, 23441, 23793, 25707, 25708));

-- Lhara WotLK Items
DELETE FROM `npc_vendor` WHERE (`entry` = 14846) AND (`item` IN (33568, 36901, 36903, 36904, 36905, 36906, 36907, 36908, 37700, 37701, 37702, 37703, 37704, 37705, 37921, 38425, 44128, 46812));

-- Enchant formulas dropped as items
DELETE FROM npc_trainer WHERE SpellID IN (20008, 20012, 20013, 20014, 20016, 20023, 20028, 32667);

-- Blacksmithing Plans dropped as items
DELETE FROM npc_trainer WHERE SpellID IN (16642, 16643, 16644, 16652, 16653, 16662, 16969, 16971);

-- Alchemy recipes dropped as items
DELETE FROM npc_trainer WHERE SpellID IN (2795, 17552, 17553, 17555, 17556, 17557, 17572, 17573);

-- Engineering Schematics dropped as items
DELETE FROM npc_trainer WHERE SpellID IN (12615, 19790, 19791, 19792, 19794, 19795, 19800, 19825, 23071);

-- Tailoring Recipes dropped as items
DELETE FROM npc_trainer WHERE SpellID IN (18450, 18453, 18444, 18406, 18409, 18417, 18423);

-- First Aid Recipes dropped as items
DELETE FROM npc_trainer WHERE SpellID IN (7929, 10840, 27032, 27033);

-- First Aid Skills should be from books or quests
DELETE FROM npc_trainer WHERE SpellID IN (54254, 10847, 54255);
UPDATE quest_template SET RewardItem3 = 16085, RewardAmount3 = 1 WHERE ID IN (6624, 6622);

-- TBC First Aid vendors
UPDATE `creature_template` SET `npcflag` = 128 WHERE `entry` IN (18990, 18991);
DELETE FROM `npc_trainer` WHERE `ID` IN (18990, 18991);

-- Make Brilliant Glass craft only available once WotLK is reached, to avoid early access to epic TBC gems
UPDATE `npc_trainer` SET `ReqLevel` = 71 WHERE `SpellID` = 47280;

-- Cooking Skills learned from Books and Quests, not trainers
DELETE FROM npc_trainer WHERE SpellID IN (18261, 19886, 54257, 54256);
UPDATE quest_template SET RewardItem1=16073, RewardAmount1=1 WHERE id = 6610;
UPDATE item_template SET spellid_1 = 19887 WHERE entry = 16073;

-- Make Spice Bread learnable for completion's sake, but only after reaching a level when it will no longer allow skipping early cooking
UPDATE npc_trainer SET ReqSkillRank = 200 WHERE SpellID = 37836;

-- Fishing needs to be learned from Quests and Books, remove from trainers
DELETE FROM npc_trainer WHERE SpellID IN (18249, 54083, 54084);
UPDATE quest_template SET RewardItem2 = 16082, RewardAmount2 = 1 WHERE ID = 6607;

-- Leatherworking Recipes
DELETE
FROM npc_trainer
WHERE SpellID IN
      (19052, 19055, 19065, 19071, 19072, 19083, 19091, 19092, 19098, 19102, 19103, 18403, 18407, 18410, 18411, 18413,
       18414, 18415, 18416, 18420, 18421, 18424, 18437, 18438, 18441, 18442, 18446, 18449, 18451, 19082, 32455);


-- Black Sack of Gems was added in late TBC to make it easy to get gems
DELETE FROM `creature_loot_template` WHERE `Entry`=17257 AND `Item`=34846 AND `Reference`=0 AND `GroupId`=0;


-- Restore Vendor Formulas
DELETE FROM npc_vendor WHERE entry = 11188 AND item = 13480;
DELETE FROM npc_vendor WHERE entry = 11189 AND item = 14481;
DELETE FROM npc_vendor WHERE entry = 4610 AND item = 13477;
DELETE FROM npc_vendor WHERE entry = 4226 AND item = 13477;
DELETE FROM npc_vendor WHERE entry = 12941 AND item = 15756;
DELETE FROM npc_vendor WHERE entry = 7940 AND item = 14488;

DELETE FROM npc_vendor WHERE entry = 18991 AND item = 21992;
DELETE FROM npc_vendor WHERE entry = 18990 AND item = 21992;
DELETE FROM npc_vendor WHERE entry = 18991 AND item = 21993;
DELETE FROM npc_vendor WHERE entry = 18990 AND item = 21993;

DELETE FROM npc_vendor WHERE entry = 3413 AND item = 16041;
DELETE FROM npc_vendor WHERE entry = 5175 AND item = 16041;
DELETE FROM npc_vendor WHERE entry = 3413 AND item = 16042;
DELETE FROM npc_vendor WHERE entry = 5175 AND item = 16042;
DELETE FROM npc_vendor WHERE entry = 11185 AND item = 16047;
DELETE FROM npc_vendor WHERE entry = 2685 AND item = 18651;


INSERT INTO npc_vendor (entry, slot, item) VALUES 
(2685, 0, 18651), 
(3413, 0, 16041),
(3413, 0, 16042),
(4610, 0, 13477),
(4226, 0, 13477),
(5175, 0, 16041),
(5175, 0, 16042),
(7940, 0, 14488),
(11185, 0, 16047),
(11188, 0, 13480),
(11189, 0, 14481),
(12941, 0, 15756),
(18990, 0, 21992),
(18990, 0, 21993),
(18991, 0, 21992),
(18991, 0, 21993);

-- Apprentice Alchemist
DELETE FROM `npc_trainer` WHERE `ID`=300000;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES 
(300000, 2275, 10, 0, 0, 5),
(300000, 3170, 50, 171, 15, 0),
(300000, 2331, 100, 171, 25, 0),
(300000, 2332, 150, 171, 40, 0),
(300000, 2334, 250, 171, 50, 0),
(300000, 2337, 250, 171, 55, 0);

-- Journeyman Alchemist
DELETE FROM `npc_trainer` WHERE `ID`=300001;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(300001, 2280, 500, 171, 50, 10),
(300001, 7836, 250, 171, 80, 0),
(300001, 3171, 500, 171, 90, 0),
(300001, 7179, 450, 171, 90, 0),
(300001, 7841, 1000, 171, 100, 0),
(300001, 3447, 4000, 171, 110, 0),
(300001, 3173, 1500, 171, 120, 0),
(300001, 3176, 1500, 171, 125, 0),
(300001, 3177, 2000, 171, 130, 0),
(300001, 7837, 1000, 171, 130, 0),
(300001, 7845, 3000, 171, 140, 0);

-- Expert Alchemist
DELETE FROM `npc_trainer` WHERE `ID`=300002;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`) VALUES
(300002, 3448, 5000, 171, 165, 0, 0),
(300002, 3450, 6000, 171, 175, 0, 0),
(300002, 3452, 5000, 171, 160, 0, 0),
(300002, 3465, 5000, 171, 125, 20, 0),
(300002, 7181, 5000, 171, 155, 0, 0),
(300002, 11449, 6500, 171, 185, 0, 0),
(300002, 11450, 7500, 171, 195, 0, 0),
(300002, 53042, 10000, 171, 50, 0, 0),
(300002, 63732, 2000, 171, 135, 0, 0);

-- Apprentice Blacksmith
DELETE FROM `npc_trainer` WHERE `ID`=310000;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES 
(310000, 2020, 10, 0, 0, 5),
(310000, 2662, 50, 164, 1, 0),
(310000, 2737, 50, 164, 15, 0),
(310000, 2738, 50, 164, 20, 0),
(310000, 3319, 50, 164, 20, 0),
(310000, 2739, 50, 164, 25, 0),
(310000, 3320, 100, 164, 25, 0),
(310000, 8880, 100, 164, 30, 0),
(310000, 9983, 100, 164, 30, 0),
(310000, 2661, 100, 164, 35, 0),
(310000, 3293, 250, 164, 35, 0),
(310000, 3323, 100, 164, 40, 0),
(310000, 3324, 200, 164, 45, 0),
(310000, 2665, 100, 164, 65, 0),
(310000, 3116, 100, 164, 65, 0),
(310000, 7408, 300, 164, 65, 0),
(310000, 2666, 200, 164, 70, 0),
(310000, 3294, 500, 164, 70, 0),
(310000, 3326, 250, 164, 75, 0);

-- Journeyman Blacksmith
DELETE FROM `npc_trainer` WHERE `ID`=310001;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(310001, 2021, 500, 164, 50, 10),
(310001, 2664, 500, 164, 90, 0),
(310001, 3292, 500, 164, 90, 0),
(310001, 7817, 200, 164, 95, 0),
(310001, 3491, 600, 164, 100, 0),
(310001, 7818, 100, 164, 100, 0),
(310001, 19666, 600, 164, 100, 0),
(310001, 2668, 300, 164, 105, 0),
(310001, 2670, 500, 164, 105, 0),
(310001, 2740, 200, 164, 110, 0),
(310001, 3328, 1000, 164, 110, 0),
(310001, 6517, 800, 164, 110, 0),
(310001, 2741, 200, 164, 115, 0),
(310001, 2672, 500, 164, 120, 0),
(310001, 2742, 200, 164, 120, 0),
(310001, 2674, 1000, 164, 125, 0),
(310001, 3117, 1000, 164, 125, 0),
(310001, 3337, 1000, 164, 125, 0),
(310001, 9985, 250, 164, 125, 0),
(310001, 3296, 1000, 164, 130, 0),
(310001, 3331, 500, 164, 130, 0),
(310001, 9986, 500, 164, 130, 0),
(310001, 3333, 1000, 164, 135, 0),
(310001, 9987, 500, 164, 135, 0),
(310001, 2675, 1000, 164, 145, 0),
(310001, 8768, 250, 164, 150, 0),
(310001, 14379, 250, 164, 150, 0),
(310001, 19667, 250, 164, 150, 0);

-- Expert Blacksmith
DELETE FROM `npc_trainer` WHERE `ID`=310002;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES 
(310002, 3539, 4500, 164, 125, 20),
(310002, 3506, 900, 164, 155, 0),
(310002, 3501, 900, 164, 165, 0),
(310002, 3502, 1150, 164, 170, 0),
(310002, 15972, 7000, 164, 180, 0),
(310002, 3508, 7000, 164, 180, 0),
(310002, 7223, 900, 164, 185, 0),
(310002, 9920, 2300, 164, 200, 0),
(310002, 9918, 2300, 164, 200, 0),
(310002, 9921, 2300, 164, 200, 0),
(310002, 9916, 2300, 164, 200, 0),
(310002, 14380, 2300, 164, 200, 0),
(310002, 19668, 2300, 164, 200, 0),
(310002, 9928, 4500, 164, 205, 0),
(310002, 9926, 4500, 164, 205, 0),
(310002, 9931, 4500, 164, 205, 0),
(310002, 9993, 9000, 164, 210, 0),
(310002, 9935, 4500, 164, 215, 0);

-- Cooking
DELETE FROM `npc_trainer` WHERE `ID`=320000;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(320000, 2551, 100, 0, 0, 5),
(320000, 2539, 50, 185, 10, 0),
(320000, 2541, 100, 185, 50, 0),
(320000, 3412, 500, 185, 50, 10),
(320000, 6499, 100, 185, 50, 0),
(320000, 2544, 200, 185, 75, 0),
(320000, 2546, 150, 185, 80, 0),
(320000, 6500, 300, 185, 125, 0),
(320000, 21175, 4000, 185, 200, 0);

-- Apprentice Enchanter
DELETE FROM `npc_trainer` WHERE `ID`=330000;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES 
(330000, 7414, 10, 0, 0, 5),
(330000, 14293, 50, 333, 10, 0),
(330000, 7420, 50, 333, 15, 0),
(330000, 7426, 100, 333, 40, 0),
(330000, 7454, 100, 333, 45, 0),
(330000, 7457, 250, 333, 50, 0),
(330000, 7748, 250, 333, 60, 0),
(330000, 7771, 200, 333, 70, 0),
(330000, 14807, 200, 333, 70, 0);

-- Journeyman Enchanter
DELETE FROM `npc_trainer` WHERE `ID`=330001;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(330001, 7415, 500, 333, 50, 10),
(330001, 7779, 400, 333, 80, 0),
(330001, 7788, 500, 333, 90, 0),
(330001, 7745, 500, 333, 100, 0),
(330001, 7795, 1000, 333, 100, 0),
(330001, 13378, 600, 333, 105, 0),
(330001, 13421, 800, 333, 115, 0),
(330001, 7857, 1000, 333, 120, 0),
(330001, 7861, 1250, 333, 125, 0),
(330001, 7863, 1400, 333, 125, 0),
(330001, 13485, 1500, 333, 130, 0),
(330001, 13501, 1500, 333, 130, 0),
(330001, 13503, 2000, 333, 140, 0),
(330001, 13538, 2500, 333, 140, 0),
(330001, 13529, 2400, 333, 145, 0),
(330001, 13607, 2400, 333, 145, 0),
(330001, 13622, 2500, 333, 150, 0),
(330001, 13626, 2500, 333, 150, 0),
(330001, 13628, 2500, 333, 150, 0);

-- Expert Enchanter
DELETE FROM `npc_trainer` WHERE `ID`=330002;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(330002, 7416, 5000, 333, 125, 20),
(330002, 13635, 2600, 333, 155, 0),
(330002, 13631, 2600, 333, 155, 0),
(330002, 14809, 2600, 333, 155, 0),
(330002, 13637, 2800, 333, 160, 0),
(330002, 13640, 2800, 333, 160, 0),
(330002, 13642, 2600, 333, 165, 0),
(330002, 13644, 2800, 333, 170, 0),
(330002, 13648, 2600, 333, 170, 0),
(330002, 13657, 2700, 333, 175, 0),
(330002, 14810, 2700, 333, 175, 0),
(330002, 13661, 3300, 333, 180, 0),
(330002, 13659, 2900, 333, 180, 0),
(330002, 13663, 3500, 333, 185, 0),
(330002, 13693, 3600, 333, 195, 0),
(330002, 13695, 3600, 333, 200, 0),
(330002, 13700, 3600, 333, 200, 0),
(330002, 13702, 3600, 333, 200, 0),
(330002, 13746, 3800, 333, 205, 0),
(330002, 13794, 3800, 333, 205, 0),
(330002, 13822, 4000, 333, 210, 0),
(330002, 13815, 4000, 333, 210, 0),
(330002, 13836, 4200, 333, 215, 0),
(330002, 13858, 4400, 333, 220, 0),
(330002, 13890, 4500, 333, 225, 0),
(330002, 13887, 4500, 333, 225, 0);

-- Apprentice Engineer
DELETE FROM `npc_trainer` WHERE `ID`=340000;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES 
(340000, 4039, 10, 0, 0, 5),
(340000, 3922, 115, 202, 30, 0),
(340000, 3923, 130, 202, 30, 0),
(340000, 7430, 150, 202, 50, 0),
(340000, 3924, 150, 202, 50, 0),
(340000, 3925, 150, 202, 50, 0),
(340000, 3977, 200, 202, 60, 0),
(340000, 3926, 225, 202, 65, 0),
(340000, 3929, 250, 202, 75, 0),
(340000, 3931, 250, 202, 75, 0),
(340000, 3930, 250, 202, 75, 0);

-- Journeyman Engineer
DELETE FROM `npc_trainer` WHERE `ID`=340001;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(340001, 4040, 500, 202, 50, 10),
(340001, 3932, 300, 202, 85, 0),
(340001, 3973, 300, 202, 90, 0),
(340001, 3934, 400, 202, 100, 0),
(340001, 8334, 300, 202, 100, 0),
(340001, 3938, 450, 202, 105, 0),
(340001, 3936, 400, 202, 105, 0),
(340001, 3937, 420, 202, 105, 0),
(340001, 3978, 450, 202, 110, 0),
(340001, 3941, 475, 202, 120, 0),
(340001, 3947, 300, 202, 125, 0),
(340001, 3945, 480, 202, 125, 0),
(340001, 3946, 480, 202, 125, 0),
(340001, 3942, 480, 202, 125, 0),
(340001, 3949, 500, 202, 130, 0),
(340001, 6458, 370, 202, 135, 0),
(340001, 3950, 550, 202, 140, 0),
(340001, 3953, 550, 202, 145, 0),
(340001, 9271, 470, 202, 150, 0),
(340001, 3955, 700, 202, 150, 0),
(340001, 12584, 1000, 202, 150, 0),
(340001, 3956, 700, 202, 150, 0);

-- Expert Engineer
DELETE FROM `npc_trainer` WHERE `ID`=340002;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(340002, 4041, 4500, 202, 125, 20),
(340002, 3958, 800, 202, 160, 0),
(340002, 3961, 850, 202, 170, 0),
(340002, 3963, 900, 202, 175, 0),
(340002, 12590, 900, 202, 175, 0),
(340002, 3962, 900, 202, 175, 0),
(340002, 12585, 900, 202, 175, 0),
(340002, 12586, 900, 202, 175, 0),
(340002, 3965, 1100, 202, 185, 0),
(340002, 3967, 1250, 202, 190, 0),
(340002, 12589, 1250, 202, 195, 0),
(340002, 15255, 1400, 202, 200, 0),
(340002, 12591, 1400, 202, 200, 0),
(340002, 12594, 1500, 202, 205, 0),
(340002, 12595, 1500, 202, 205, 0),
(340002, 12596, 1600, 202, 210, 0),
(340002, 12599, 1650, 202, 215, 0),
(340002, 12603, 1700, 202, 215, 0);

-- First Aid
DELETE FROM `npc_trainer` WHERE `ID`=350000;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(350000, 3279, 100, 0, 0, 1),
(350000, 3276, 100, 129, 40, 0),
(350000, 3280, 500, 129, 50, 0),
(350000, 3277, 250, 129, 80, 0),
(350000, 7934, 250, 129, 80, 0),
(350000, 3278, 1000, 129, 115, 0),
(350000, 7928, 5000, 129, 150, 0);

UPDATE `creature_template` SET `npcflag` = `npcflag` | 16 | 64, `trainer_type` = 2 WHERE `entry` = 12939;
DELETE FROM `npc_trainer` WHERE `ID`=12939;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`) VALUES
(12939, 10843, 0, 129, 240, 0, 0),
(12939, 18631, 0, 129, 260, 35, 0),
(12939, 18632, 0, 129, 290, 35, 0);

UPDATE `creature_template` SET `npcflag` = `npcflag` | 16 | 64, `trainer_type` = 2 WHERE `entry` = 12920;
DELETE FROM `npc_trainer` WHERE `ID`=12920;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`) VALUES
(12920, 10843, 0, 129, 240, 0, 0),
(12920, 18631, 0, 129, 260, 35, 0),
(12920, 18632, 0, 129, 290, 35, 0);

-- Fishing
DELETE FROM `npc_trainer` WHERE `ID`=360000;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(360000, 7733, 100, 0, 0, 5),
(360000, 7734, 500, 356, 50, 10);

-- Herbalism
DELETE FROM `npc_trainer` WHERE `ID`=370000;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(370000, 2372, 10, 0, 0, 1),
(370000, 2373, 500, 182, 50, 1),
(370000, 3571, 5000, 182, 125, 10),
(370000, 11994, 50000, 182, 200, 25);

-- Apprentice Leatherworker
DELETE FROM `npc_trainer` WHERE `ID`=380000;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(380000, 2155, 10, 0, 0, 5),
(380000, 2153, 50, 165, 15, 0),
(380000, 3753, 75, 165, 25, 0),
(380000, 9060, 100, 165, 30, 0),
(380000, 9062, 100, 165, 30, 0),
(380000, 3816, 50, 165, 35, 0),
(380000, 2160, 100, 165, 40, 0),
(380000, 2161, 100, 165, 55, 0),
(380000, 3756, 150, 165, 55, 0),
(380000, 2162, 100, 165, 60, 0),
(380000, 9065, 450, 165, 70, 0),
(380000, 3759, 2000, 165, 75, 0);

-- Journeyman Leatherworker
DELETE FROM `npc_trainer` WHERE `ID`=380001;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(380001, 2154, 500, 165, 50, 10),
(380001, 3763, 500, 165, 80, 0),
(380001, 2159, 550, 165, 85, 0),
(380001, 3761, 550, 165, 85, 0),
(380001, 9068, 600, 165, 95, 0),
(380001, 2165, 650, 165, 100, 0),
(380001, 2167, 650, 165, 100, 0),
(380001, 3817, 650, 165, 100, 0),
(380001, 20648, 500, 165, 100, 0),
(380001, 2168, 1000, 165, 110, 0),
(380001, 7135, 1000, 165, 115, 0),
(380001, 2166, 1400, 165, 120, 0),
(380001, 9074, 1400, 165, 120, 0),
(380001, 3766, 1500, 165, 125, 0),
(380001, 9145, 1500, 165, 125, 0),
(380001, 3768, 1200, 165, 130, 0),
(380001, 3770, 1500, 165, 135, 0),
(380001, 3764, 1800, 165, 145, 0),
(380001, 3760, 2000, 165, 150, 0),
(380001, 3780, 2000, 165, 150, 0),
(380001, 3818, 1800, 165, 150, 0),
(380001, 9193, 2000, 165, 150, 0),
(380001, 9194, 2000, 165, 150, 0),
(380001, 20649, 1800, 165, 150, 0);

-- Expert Leatherworker
DELETE FROM `npc_trainer` WHERE `ID`=380002;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(380002, 3812, 5000, 165, 125, 20),
(380002, 3774, 2500, 165, 160, 0),
(380002, 7147, 2500, 165, 160, 0),
(380002, 7151, 2500, 165, 175, 0),
(380002, 9196, 2500, 165, 175, 0),
(380002, 10482, 2800, 165, 180, 0),
(380002, 9201, 2800, 165, 180, 0),
(380002, 9198, 2800, 165, 180, 0),
(380002, 3776, 2800, 165, 180, 0),
(380002, 20650, 2800, 165, 180, 0),
(380002, 6661, 2800, 165, 190, 0),
(380002, 7156, 2800, 165, 190, 0),
(380002, 9206, 2800, 165, 195, 0),
(380002, 10487, 3500, 165, 200, 0),
(380002, 10507, 3500, 165, 205, 0),
(380002, 10499, 3500, 165, 205, 0),
(380002, 10518, 4000, 165, 210, 0),
(380002, 10511, 4000, 165, 210, 0),
(380002, 14930, 4000, 165, 225, 0),
(380002, 14932, 4000, 165, 225, 0);

-- Mining
DELETE FROM `npc_trainer` WHERE `ID`=390000;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(390000, 2581, 10, 186, 0, 1),
(390000, 2582, 500, 186, 50, 1),
(390000, 2658, 200, 186, 75, 0),
(390000, 2659, 200, 186, 65, 0),
(390000, 3304, 50, 186, 65, 0),
(390000, 3307, 500, 186, 125, 0),
(390000, 3308, 2500, 186, 155, 0),
(390000, 3568, 5000, 186, 125, 10),
(390000, 3569, 2500, 186, 165, 0),
(390000, 10097, 5000, 186, 175, 0),
(390000, 10249, 50000, 186, 200, 25),
(390000, 10098, 10000, 186, 230, 0),
(390000, 16153, 20000, 186, 250, 0);

-- Skinning
DELETE FROM `npc_trainer` WHERE `ID`=400000;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(400000, 8615, 10, 0, 0, 1),
(400000, 8619, 500, 393, 50, 1),
(400000, 8620, 5000, 393, 125, 10),
(400000, 10769, 50000, 393, 200, 25);

-- Apprentice Tailor
DELETE FROM `npc_trainer` WHERE `ID`=410000;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(410000, 3911, 10, 0, 0, 5),
(410000, 2393, 25, 197, 1, 0),
(410000, 3915, 25, 197, 1, 0),
(410000, 12044, 30, 197, 1, 0),
(410000, 2385, 50, 197, 10, 0),
(410000, 8776, 50, 197, 10, 0),
(410000, 12045, 50, 197, 20, 0),
(410000, 7623, 50, 197, 30, 0),
(410000, 7624, 50, 197, 30, 0),
(410000, 3914, 50, 197, 30, 0),
(410000, 3840, 100, 197, 35, 0),
(410000, 2392, 50, 197, 40, 0),
(410000, 2394, 50, 197, 40, 0),
(410000, 8465, 50, 197, 40, 0),
(410000, 3755, 100, 197, 45, 0),
(410000, 2397, 200, 197, 60, 0),
(410000, 3841, 200, 197, 60, 0),
(410000, 2386, 200, 197, 65, 0),
(410000, 2395, 300, 197, 70, 0),
(410000, 2396, 200, 197, 70, 0),
(410000, 3842, 300, 197, 70, 0),
(410000, 2402, 250, 197, 75, 0),
(410000, 2964, 100, 197, 75, 0),
(410000, 12046, 300, 197, 75, 0);

-- Journeyman Tailor
DELETE FROM `npc_trainer` WHERE `ID`=410001;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(410001, 3912, 500, 197, 50, 10),
(410001, 3757, 200, 197, 80, 0),
(410001, 3845, 300, 197, 80, 0),
(410001, 2399, 300, 197, 85, 0),
(410001, 3843, 400, 197, 85, 0),
(410001, 6521, 400, 197, 90, 0),
(410001, 2401, 300, 197, 95, 0),
(410001, 2406, 200, 197, 100, 0),
(410001, 3848, 500, 197, 110, 0),
(410001, 3850, 500, 197, 110, 0),
(410001, 3866, 250, 197, 110, 0),
(410001, 8467, 250, 197, 110, 0),
(410001, 3839, 500, 197, 125, 0),
(410001, 3855, 700, 197, 125, 0),
(410001, 3852, 700, 197, 130, 0),
(410001, 6690, 1000, 197, 135, 0),
(410001, 8758, 600, 197, 140, 0),
(410001, 8760, 600, 197, 145, 0),
(410001, 3813, 750, 197, 150, 0),
(410001, 3859, 700, 197, 150, 0);

-- Expert Tailor
DELETE FROM `npc_trainer` WHERE `ID`=410002;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(410002, 3913, 5000, 197, 125, 20),
(410002, 8483, 500, 197, 160, 0),
(410002, 8762, 700, 197, 160, 0),
(410002, 3871, 500, 197, 170, 0),
(410002, 8764, 850, 197, 170, 0),
(410002, 8489, 700, 197, 175, 0),
(410002, 8766, 950, 197, 175, 0),
(410002, 8772, 950, 197, 175, 0),
(410002, 3865, 950, 197, 175, 0),
(410002, 8774, 950, 197, 180, 0),
(410002, 3861, 950, 197, 185, 0),
(410002, 8791, 23000, 197, 185, 0),
(410002, 8770, 950, 197, 190, 0),
(410002, 8799, 3000, 197, 195, 0),
(410002, 12048, 4000, 197, 205, 0),
(410002, 12049, 4000, 197, 205, 0),
(410002, 8804, 5000, 197, 210, 0),
(410002, 12050, 4000, 197, 210, 0),
(410002, 12053, 5000, 197, 215, 0),
(410002, 12061, 2500, 197, 215, 0),
(410002, 12065, 5000, 197, 225, 0),
(410002, 12067, 5000, 197, 225, 0),
(410002, 12069, 5000, 197, 225, 0),
(410002, 12070, 5000, 197, 225, 0);

-- Riding
DELETE FROM `npc_trainer` WHERE `ID`=450000;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(450000, 33388, 900000, 762, 0, 40),
(450000, 33391, 9000000, 762, 75, 60);


-- Blacksmith Trainers
DELETE FROM `npc_trainer` WHERE `ID` IN (1241, 3136, 3557, 6299, 55356, 4596, 4258, 16583, 16669, 16724, 16823, 17245, 19341, 26564, 26904, 26952, 26981, 26988, 27034, 28694, 29924, 33591, 33609, 33631, 33675);

-- Journeyman Blacksmith
UPDATE `creature_template` SET `subname` = 'Journeyman Blacksmith' WHERE `entry`=16583;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(1241, -310000, 0, 0, 0, 0),
(3557, -310000, 0, 0, 0, 0),
(6299, -310000, 0, 0, 0, 0),
(16583, -310000, 0, 0, 0, 0),
(17245, -310000, 0, 0, 0, 0);

-- Expert Blacksmith
UPDATE `creature_template` SET `subname` = 'Expert Blacksmith' WHERE `entry`=16669;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(3136, -310000, 0, 0, 0, 0),
(3136, -310001, 0, 0, 0, 0),
(4596, -310000, 0, 0, 0, 0),
(4596, -310001, 0, 0, 0, 0),
(16669, -310000, 0, 0, 0, 0),
(16669, -310001, 0, 0, 0, 0),
(16724, -310000, 0, 0, 0, 0),
(16724, -310001, 0, 0, 0, 0);

-- Artisan Blacksmith
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(4258, -310000, 0, 0, 0, 0),
(4258, -310001, 0, 0, 0, 0),
(4258, -310002, 0, 0, 0, 0);

-- Master Blacksmithing Trainer
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`) VALUES
(16583, -201005, 0, 0, 0, 0, 0),
(16823, -201005, 0, 0, 0, 0, 0),
(19341, -201005, 0, 0, 0, 0, 0),
(33609, -201005, 0, 0, 0, 0, 0),
(33631, -201005, 0, 0, 0, 0, 0),
(33675, -201005, 0, 0, 0, 0, 0);

-- Grandmaster Blacksmithing Trainer
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`) VALUES
(26564, -201006, 0, 0, 0, 0, 0),
(26904, -201006, 0, 0, 0, 0, 0),
(26952, -201006, 0, 0, 0, 0, 0),
(26981, -201006, 0, 0, 0, 0, 0),
(26988, -201006, 0, 0, 0, 0, 0),
(27034, -201006, 0, 0, 0, 0, 0),
(28694, -201006, 0, 0, 0, 0, 0),
(29924, -201006, 0, 0, 0, 0, 0),
(33591, -201006, 0, 0, 0, 0, 0);


-- Alchemy Trainers
DELETE FROM `npc_trainer` WHERE `ID` IN (1470, 2391, 2837, 3603, 3964, 4160, 4611, 4900, 5177, 16161, 16588, 16642, 16723, 18802, 19052, 27023, 27029, 33608, 33630, 33674);

-- Journeyman Alchemy
UPDATE `creature_template` SET `subname` = 'Journeyman Alchemist' WHERE `entry`=16161;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(1470, -300000, 0, 0, 0, 0),
(3603, -300000, 0, 0, 0, 0),
(16161, -300000, 0, 0, 0, 0);

-- Expert Alchemy
UPDATE `creature_template` SET `subname` = 'Expert Alchemist' WHERE `entry` IN (16642, 16723);
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(2391, -300000, 0, 0, 0, 0);
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(2391, -300001, 0, 0, 0, 0),
(2837, -300000, 0, 0, 0, 0),
(2837, -300001, 0, 0, 0, 0),
(3964, -300000, 0, 0, 0, 0),
(3964, -300001, 0, 0, 0, 0),
(4900, -300000, 0, 0, 0, 0),
(4900, -300001, 0, 0, 0, 0),
(5177, -300000, 0, 0, 0, 0),
(5177, -300001, 0, 0, 0, 0),
(16642, -300000, 0, 0, 0, 0),
(16642, -300001, 0, 0, 0, 0),
(16723, -300000, 0, 0, 0, 0),
(16723, -300001, 0, 0, 0, 0);

-- Artisan Alchemy
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(4160, -300000, 0, 0, 0, 0),
(4160, -300001, 0, 0, 0, 0),
(4160, -300002, 0, 0, 0, 0),
(4611, -300000, 0, 0, 0, 0),
(4611, -300001, 0, 0, 0, 0),
(4611, -300002, 0, 0, 0, 0);

-- Master Alchemy Trainer
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`) VALUES
(16588, -201002, 0, 0, 0, 0, 0),
(18802, -201002, 0, 0, 0, 0, 0),
(19052, -201002, 0, 0, 0, 0, 0),
(27023, -201002, 0, 0, 0, 0, 0),
(27029, -201002, 0, 0, 0, 0, 0),
(33608, -201002, 0, 0, 0, 0, 0),
(33630, -201002, 0, 0, 0, 0, 0),
(33674, -201002, 0, 0, 0, 0, 0);

-- Grandmaster Alchemy Trainer
-- Grandmaster Alchemy Trainers already have their own unique template


-- Enchanting Trainers
DELETE FROM `npc_trainer` WHERE `ID` IN (3606, 4213, 4616, 5157, 7949, 11074, 16160, 16633, 16725, 18753, 18773, 19251, 19252, 19540, 33610, 33633, 33676);

-- Journeyman Enchanting
UPDATE `creature_template` SET `subname` = 'Journeyman Enchanter' WHERE `entry`=16160;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(3606, -330000, 0, 0, 0, 0),
(16160, -330000, 0, 0, 0, 0),
(19251, -330000, 0, 0, 0, 0);

-- Expert Enchanting
UPDATE `creature_template` SET `subname` = 'Expert Enchanter' WHERE `entry`=16633;
UPDATE `creature_template` SET `subname` = 'Expert Enchanter' WHERE `entry`=16725;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(4213, -330000, 0, 0, 0, 0),
(4213, -330001, 0, 0, 0, 0),
(4616, -330000, 0, 0, 0, 0),
(4616, -330001, 0, 0, 0, 0),
(5157, -330000, 0, 0, 0, 0),
(5157, -330001, 0, 0, 0, 0),
(7949, -330000, 0, 0, 0, 0),
(7949, -330001, 0, 0, 0, 0),
(16633, -330000, 0, 0, 0, 0),
(16633, -330001, 0, 0, 0, 0),
(16725, -330000, 0, 0, 0, 0),
(16725, -330001, 0, 0, 0, 0);

-- Artisan Enchanting
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(11074, -330000, 0, 0, 0, 0),
(11074, -330001, 0, 0, 0, 0),
(11074, -330002, 0, 0, 0, 0);

-- Master Enchanting Trainer
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`) VALUES
(18753, -201010, 0, 0, 0, 0, 0),
(18773, -201010, 0, 0, 0, 0, 0),
(19252, -201010, 0, 0, 0, 0, 0),
(19540, -201010, 0, 0, 0, 0, 0),
(33610, -201010, 0, 0, 0, 0, 0),
(33633, -201010, 0, 0, 0, 0, 0),
(33676, -201010, 0, 0, 0, 0, 0);

-- Grandmaster Enchanting Trainer
-- Grandmaster Enchanting Trainers already have their own unique template


-- Engineering Trainers
DELETE FROM `npc_trainer` WHERE `ID` IN (1676, 1702, 3290, 5174, 11031, 11037, 16667, 16726, 17222, 25277, 26907, 26955, 26991, 28697, 33586, 33611, 33634, 33677);

-- Journeyman Engineering
UPDATE `creature_template` SET `subname` = 'Journeyman Engineer' WHERE `entry`=17222;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(1702, -340000, 0, 0, 0, 0),
(3290, -340000, 0, 0, 0, 0),
(11037, -340000, 0, 0, 0, 0),
(17222, -340000, 0, 0, 0, 0);

-- Expert Engineering
UPDATE `creature_template` SET `subname` = 'Expert Engineer' WHERE `entry`=1676;
UPDATE `creature_template` SET `subname` = 'Expert Engineer' WHERE `entry`=16667;
UPDATE `creature_template` SET `subname` = 'Expert Engineer' WHERE `entry`=16726;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(1676, -340000, 0, 0, 0, 0),
(1676, -340001, 0, 0, 0, 0),
(11031, -340000, 0, 0, 0, 0),
(11031, -340001, 0, 0, 0, 0),
(16667, -340000, 0, 0, 0, 0),
(16667, -340001, 0, 0, 0, 0),
(16726, -340000, 0, 0, 0, 0),
(16726, -340001, 0, 0, 0, 0);

-- Artisan Engineering
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(5174, -340000, 0, 0, 0, 0),
(5174, -340001, 0, 0, 0, 0),
(5174, -340002, 0, 0, 0, 0);

-- Master Engineering Trainer
DELETE FROM `npc_trainer` WHERE `ID`=17634 AND `SpellID`=-201012;
DELETE FROM `npc_trainer` WHERE `ID`=17637 AND `SpellID`=-201012;
DELETE FROM `npc_trainer` WHERE `ID`=18752 AND `SpellID`=-201012;
DELETE FROM `npc_trainer` WHERE `ID`=18775 AND `SpellID`=-201012;
DELETE FROM `npc_trainer` WHERE `ID`=19576 AND `SpellID`=-201012;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(33611, -201013, 0, 0, 0, 0),
(33634, -201013, 0, 0, 0, 0),
(33677, -201013, 0, 0, 0, 0);

-- Grandmaster Engineering Trainer
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(25277, -201014, 0, 0, 0, 0),
(26907, -201014, 0, 0, 0, 0),
(26955, -201014, 0, 0, 0, 0),
(26991, -201014, 0, 0, 0, 0),
(28697, -201014, 0, 0, 0, 0),
(33586, -201014, 0, 0, 0, 0);


-- Tailoring Trainers
DELETE FROM `npc_trainer` WHERE `ID` IN (2627, 3523, 4159, 4193, 4576, 5153, 16366, 16640, 16729, 17487, 18749, 18772, 26914, 26964, 26969, 27001, 28699, 33580, 33613, 33636, 33684);

-- Journeyman Tailoring
UPDATE `creature_template` SET `subname` = 'Journeyman Tailor' WHERE `entry`=16366;
UPDATE `creature_template` SET `subname` = 'Journeyman Tailor' WHERE `entry`=17487;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(3523, -410000, 0, 0, 0, 0),
(4193, -410000, 0, 0, 0, 0),
(16366, -410000, 0, 0, 0, 0),
(17487, -410000, 0, 0, 0, 0);

-- Expert Tailoring
UPDATE `creature_template` SET `subname` = 'Expert Tailor' WHERE `entry`=16640;
UPDATE `creature_template` SET `subname` = 'Expert Tailor' WHERE `entry`=16729;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(2627, -410000, 0, 0, 0, 0),
(2627, -410001, 0, 0, 0, 0),
(4159, -410000, 0, 0, 0, 0),
(4159, -410001, 0, 0, 0, 0),
(5153, -410000, 0, 0, 0, 0),
(5153, -410001, 0, 0, 0, 0),
(16640, -410000, 0, 0, 0, 0),
(16640, -410001, 0, 0, 0, 0),
(16729, -410000, 0, 0, 0, 0),
(16729, -410001, 0, 0, 0, 0);

-- Artisan Tailoring
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(4576, -410000, 0, 0, 0, 0),
(4576, -410001, 0, 0, 0, 0),
(4576, -410002, 0, 0, 0, 0);

-- Master Tailoring Trainer
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(18749, -201040, 0, 0, 0, 0),
(18772, -201040, 0, 0, 0, 0),
(33613, -201040, 0, 0, 0, 0),
(33636, -201040, 0, 0, 0, 0),
(33684, -201040, 0, 0, 0, 0);

-- Grandmaster Tailoring Trainer
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(26914, -201041, 0, 0, 0, 0),
(26964, -201041, 0, 0, 0, 0),
(26969, -201041, 0, 0, 0, 0),
(27001, -201041, 0, 0, 0, 0),
(28699, -201041, 0, 0, 0, 0),
(33580, -201041, 0, 0, 0, 0);


-- Leatherworking Trainers
DELETE FROM `npc_trainer` WHERE `ID` IN (1385, 3605, 3967, 4212, 4588, 5127, 8153, 16278, 16688, 16728, 17442, 18754, 18771, 19187, 21087, 26996, 33612, 33635, 33681);

-- Journeyman Leatherworking
UPDATE `creature_template` SET `subname` = 'Journeyman Leatherworker' WHERE `entry`=16278;
UPDATE `creature_template` SET `subname` = 'Journeyman Leatherworker' WHERE `entry`=17442;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(3605, -380000, 0, 0, 0, 0),
(16278, -380000, 0, 0, 0, 0),
(17442, -380000, 0, 0, 0, 0);

-- Expert Leatherworking
UPDATE `creature_template` SET `subname` = 'Expert Leatherworker' WHERE `entry`=16688;
UPDATE `creature_template` SET `subname` = 'Expert Leatherworker' WHERE `entry`=16728;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(1385, -380000, 0, 0, 0, 0),
(1385, -380001, 0, 0, 0, 0),
(3967, -380000, 0, 0, 0, 0),
(3967, -380001, 0, 0, 0, 0),
(4588, -380000, 0, 0, 0, 0),
(4588, -380001, 0, 0, 0, 0),
(5127, -380000, 0, 0, 0, 0),
(5127, -380001, 0, 0, 0, 0),
(8153, -380000, 0, 0, 0, 0),
(8153, -380001, 0, 0, 0, 0),
(16688, -380000, 0, 0, 0, 0),
(16688, -380001, 0, 0, 0, 0),
(16728, -380000, 0, 0, 0, 0),
(16728, -380001, 0, 0, 0, 0);

-- Artisan Leatherworking
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(4212, -380000, 0, 0, 0, 0),
(4212, -380001, 0, 0, 0, 0),
(4212, -380002, 0, 0, 0, 0);

-- Master Leatherworking Trainer
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES 
(18754, -201028, 0, 0, 0, 0),
(18771, -201028, 0, 0, 0, 0),
(19187, -201028, 0, 0, 0, 0),
(21087, -201028, 0, 0, 0, 0),
(33612, -201028, 0, 0, 0, 0),
(33635, -201028, 0, 0, 0, 0),
(33681, -201028, 0, 0, 0, 0);

-- Grandmaster Leatherworking Trainer
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES (26996, -201029, 0, 0, 0, 0);




-- Optional - delete TBC trainers added in WotLK 3.1
DELETE FROM creature WHERE `id1` IN (33676,
                                     33680,
                                     33682,
                                     33674,
                                     33678,
                                     33675,
                                     33677,
                                     33683,
                                     33684,
                                     33681,
                                     33640,
                                     33637,
                                     33633,
                                     33631,
                                     33634,
                                     33635,
                                     33636,
                                     33641,
                                     33608,
                                     33609,
                                     33610,
                                     33611,
                                     33612,
                                     33613,
                                     33614,
                                     33615,
                                     33616,
                                     33617,
                                     33618,
                                     33619,
                                     33621,
                                     33623,
                                     33630,
                                     33639,
                                     35099,
                                     35101);

-- TBC Recipes moved to trainers in 2.4.0
DELETE FROM `npc_trainer` WHERE `SpellID` IN (28905, 34590, 28903, 28914, 28925, 28910, 28917, 28916, 28950, 28903);
DELETE FROM npc_vendor WHERE item IN (23131, 28596, 23148, 23137, 23144, 23135, 23141, 23140, 23152, 23130);
INSERT INTO npc_vendor (entry, slot, item) VALUES
(18751, 0, 23131),
(18774, 0, 23131),
(18751, 0, 28596),
(18774, 0, 28596),
(18751, 0, 23148),
(18774, 0, 23148),
(18751, 0, 23137),
(18774, 0, 23137),
(18751, 0, 23144),
(18774, 0, 23144),
(18751, 0, 23135),
(18774, 0, 23135),
(18751, 0, 23141),
(18774, 0, 23141),
(18751, 0, 23140),
(18774, 0, 23140),
(18751, 0, 23152),
(18774, 0, 23152),
(18751, 0, 23130),
(18774, 0, 23130);


-- Delete added riding trainers
DELETE FROM creature WHERE `id1` IN (35093, 35100);
DELETE FROM creature_addon WHERE `guid` IN (88165, 88166);

-- Remove TBC Gems from Prospecting Vanilla ore
DELETE FROM `prospecting_loot_template` WHERE `Entry`=10620 AND `Item`=1;


/* Create new pre T4 Leatherworking Trainer */
SET @lw_trainer_pre_t4 := 201050;

DELETE FROM `npc_trainer` WHERE `ID` = @lw_trainer_pre_t4;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`) VALUES 
(@lw_trainer_pre_t4, 32454, 10000, 165, 300, 0, 0),
(@lw_trainer_pre_t4, 32456, 15000, 165, 300, 0, 0),
(@lw_trainer_pre_t4, 32462, 15000, 165, 300, 0, 0),
(@lw_trainer_pre_t4, 32463, 20000, 165, 310, 0, 0),
(@lw_trainer_pre_t4, 32464, 20000, 165, 320, 0, 0),
(@lw_trainer_pre_t4, 32465, 25000, 165, 335, 0, 0),
(@lw_trainer_pre_t4, 32466, 15000, 165, 300, 0, 0),
(@lw_trainer_pre_t4, 32467, 20000, 165, 310, 0, 0),
(@lw_trainer_pre_t4, 32468, 20000, 165, 325, 0, 0),
(@lw_trainer_pre_t4, 32469, 25000, 165, 335, 0, 0),
(@lw_trainer_pre_t4, 32470, 15000, 165, 300, 0, 0),
(@lw_trainer_pre_t4, 32471, 20000, 165, 315, 0, 0),
(@lw_trainer_pre_t4, 32472, 20000, 165, 320, 0, 0),
(@lw_trainer_pre_t4, 32473, 25000, 165, 330, 0, 0),
(@lw_trainer_pre_t4, 32478, 15000, 165, 300, 0, 0),
(@lw_trainer_pre_t4, 32479, 20000, 165, 310, 0, 0),
(@lw_trainer_pre_t4, 32480, 20000, 165, 320, 0, 0),
(@lw_trainer_pre_t4, 32481, 25000, 165, 330, 0, 0),
(@lw_trainer_pre_t4, 32550, 100000, 165, 275, 50, 0),
(@lw_trainer_pre_t4, 35540, 20000, 165, 340, 0, 0),
(@lw_trainer_pre_t4, 44970, 50000, 165, 350, 0, 0);


/* Darmari shouldn't train certain leatherworking recipes until progression tier 10 */
/* to solve this a copy of her is created that only sells recipes that were available before progression tier 10 */
/* the original Darmari will replace her copy at progression tier 10 */
SET @Darmari := 119187;

/* Add copy of Darmari to creature_template with script npc_ipp_tbc_pre_t4 */
DELETE FROM `creature_template` WHERE `entry` = @Darmari;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) 
VALUES (@Darmari, 0, 0, 0, 0, 0, 'Darmari', 'Master Leatherworking Trainer', NULL, 7816, 63, 63, 0, 1818, 81, 1, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 33024, 2048, 0, 0, 2, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1.05, 1, 1, 1, 0, 0, 1, 0, 0, 2, 'npc_ipp_tbc_pre_t4', 12340);

/* Add copy of Darmari to creature_template_addon */
DELETE FROM `creature_template_addon` WHERE `entry` = @Darmari;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES (@Darmari, 0, 0, 0, 1, 0, 0, NULL);

/* Add copy of Darmari to creature_locale */
DELETE FROM `creature_template_locale` WHERE `entry` = @Darmari;
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES
(@Darmari, 'deDE', 'Darmari', 'Lederverarbeitungslehrerin', 18019),
(@Darmari, 'esES', 'Darmari', 'Instructora de peletería', 18019),
(@Darmari, 'esMX', 'Darmari', 'Instructora de peletería', 18019),
(@Darmari, 'frFR', 'Darmari', 'Maître des travailleurs du cuir', 18019),
(@Darmari, 'koKR', '다마리', '전문 가죽세공인', 18019),
(@Darmari, 'ruRU', 'Дармари', 'Учитель кожевничества', 18019),
(@Darmari, 'zhCN', '达尔玛里', '制皮训练师', 18019),
(@Darmari, 'zhTW', '達瑪莉', '製皮訓練師', 18019);

/* Add copy of Darmari to creature_template_model */
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Darmari;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (@Darmari, 0, 18630, 1, 1, 12340);

/* Add copy of Darmari to creature */
DELETE FROM `creature` WHERE `id1` = @Darmari;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) 
VALUES (619187, @Darmari, 0, 0, 530, 0, 0, 1, 1, 1, -2060.92, 5256.68, -38.3819, 0.767945, 300, 0, 0, 3498, 0, 0, 0, 0, 0, '', 0, 0, NULL);

/* Add copy of Darmari to creature_equip_template */
DELETE FROM `creature_equip_template` WHERE `CreatureID` = @Darmari;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES (@Darmari, 1, 2184, 0, 0, 18019);

/* Add correct leatherworking recipes to copy of Darmari */
DELETE FROM `npc_trainer` WHERE `ID` = @Darmari;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`) VALUES (@Darmari, -201050, 0, 0, 0, 0, 0);


/* Barim Spilthoof shouldn't train certain leatherworking recipes until progression tier 10 */
/* to solve this a copy of him is created that only sells recipes that were available before progression tier 10 */
/* the original Barim Spilthoof will replace his copy at progression tier 10 */
SET @Barim := 118754;

/* Add copy of Barim to creature_template with script npc_ipp_tbc_pre_t4 */
DELETE FROM `creature_template` WHERE `entry` = @Barim;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) 
VALUES (@Barim, 0, 0, 0, 0, 0, 'Barim Spilthoof', 'Master Leatherworking Trainer', NULL, 7816, 60, 60, 0, 29, 209, 1, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 2, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1.02, 1, 1, 1, 0, 0, 1, 0, 0, 2, 'npc_ipp_tbc_pre_t4', 12340);

/* Add copy of Barim to creature_template_addon */
DELETE FROM `creature_template_addon` WHERE `entry` = @Barim;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES (@Barim, 0, 0, 0, 1, 0, 0, NULL);

/* Add copy of Barim to creature_template_locale */
DELETE FROM `creature_template_locale` WHERE `entry` = @Barim;
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES
(@Barim, 'deDE', 'Barim Spalthuf', 'Lederverarbeitungslehrer', 18019),
(@Barim, 'esES', 'Barim Pezuña Partida', 'Instructor de peletería', 18019),
(@Barim, 'esMX', 'Barim Pezuña Partida', 'Instructor de peletería', 18019),
(@Barim, 'frFR', 'Barim Sabot-Fendu', 'Maître des travailleurs du cuir', 18019),
(@Barim, 'koKR', '바림 스필트후프', '전문 가죽세공인', 18019),
(@Barim, 'ruRU', 'Барим Треснувшее Копыто', 'Учитель кожевничества', 18019),
(@Barim, 'zhCN', '巴里姆·裂蹄', '制皮训练师', 18019),
(@Barim, 'zhTW', '巴瑞姆·裂蹄', '製皮訓練師', 18019);

/* Add copy of Barim to creature_template_model */
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Barim;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (@Barim, 0, 18176, 1, 1, 12340);

/* Add copy of Barim to creature */
DELETE FROM `creature` WHERE `id1` = @Barim;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) 
VALUES (618754, @Barim, 0, 0, 530, 0, 0, 1, 1, 1, 148.588, 2636.02, 86.018, 1.27409, 300, 0, 0, 3113, 0, 0, 0, 0, 0, '', 0, 0, NULL);

/* Add copy of Barim to creature_equip_template */
DELETE FROM `creature_equip_template` WHERE `CreatureID` = @Barim;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES (@Barim, 1, 10616, 0, 0, 18019);

/* Add correct leatherworking recipes to copy of Barim */
DELETE FROM `npc_trainer` WHERE `ID` = @Barim;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`) VALUES (@Barim, -201050, 0, 0, 0, 0, 0);

/* Add vendor items to copy of Barim */
DELETE FROM `npc_vendor` WHERE `entry` = @Barim;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES 
(@Barim, 0, 2320, 0, 0, 0, 0), (@Barim, 0, 2321, 0, 0, 0, 0), (@Barim, 0, 2325, 0, 0, 0, 0), (@Barim, 0, 2604, 0, 0, 0, 0), (@Barim, 0, 2605, 0, 0, 0, 0), 
(@Barim, 0, 4289, 0, 0, 0, 0), (@Barim, 0, 4291, 0, 0, 0, 0), (@Barim, 0, 4340, 0, 0, 0, 0), (@Barim, 0, 4341, 0, 0, 0, 0), (@Barim, 0, 4342, 0, 0, 0, 0),
(@Barim, 0, 6260, 0, 0, 0, 0), (@Barim, 0, 6261, 0, 0, 0, 0), (@Barim, 0, 7005, 0, 0, 0, 0), (@Barim, 0, 8343, 0, 0, 0, 0), (@Barim, 0, 10290, 0, 0, 0, 0),
(@Barim, 0, 14341, 0, 0, 0, 0), (@Barim, 0, 38426, 0, 0, 0, 0);


/* Brumman shouldn't train certain leatherworking recipes until progression tier 10 */
/* to solve this a copy of him is created that only sells recipes that were available before progression tier 10 */
/* the original Brumman will replace his copy at progression tier 10 */
SET @Brumman := 118771;

/* Add copy of Brumman to creature_template with script npc_ipp_tbc_pre_t4 */
DELETE FROM `creature_template` WHERE `entry` = @Brumman;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) 
VALUES (@Brumman, 0, 0, 0, 0, 0, 'Brumman', 'Master Leatherworking Trainer', NULL, 0, 60, 60, 0, 1737, 209, 1, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 2, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1.02, 1, 1, 1, 0, 0, 1, 0, 0, 2, 'npc_ipp_tbc_pre_t4', 12340);

/* Add copy of Brumman to creature_template_addon */
DELETE FROM `creature_template_addon` WHERE `entry` = @Brumman;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES (@Brumman, 0, 0, 1, 1, 0, 0, NULL);

/* Add copy of Brumman to creature_template_locale */
DELETE FROM `creature_template_locale` WHERE `entry` = @Brumman;
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES
(@Brumman, 'deDE', 'Brumman', 'Lederverarbeitungslehrer', 18019),
(@Brumman, 'esES', 'Brumman', 'Instructor de peletería', 18019),
(@Brumman, 'esMX', 'Brumman', 'Instructor de peletería', 18019),
(@Brumman, 'frFR', 'Brumman', 'Maître des travailleurs du cuir', 18019),
(@Brumman, 'koKR', '브룸만', '전문 가죽세공인', 18019),
(@Brumman, 'ruRU', 'Брумман', 'Учитель кожевничества', 18019),
(@Brumman, 'zhCN', '布鲁曼', '制皮训练师', 18019),
(@Brumman, 'zhTW', '布魯曼恩', '製皮訓練師', 18019);

/* Add copy of Brumman to creature_template_model */
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Brumman;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (@Brumman, 0, 18177, 1, 1, 12340);

/* Add copy of Brumman to creature */
DELETE FROM `creature` WHERE `id1` = @Brumman;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) 
VALUES (618771, @Brumman, 0, 0, 530, 0, 0, 1, 1, 1, -721.657, 2745.26, 94.0548, 3.45575, 300, 0, 0, 3113, 0, 0, 0, 0, 0, '', 0, 0, NULL);

/* Add copy of Brumman to creature_equip_template */
DELETE FROM `creature_equip_template` WHERE `CreatureID` = @Brumman;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES (@Brumman, 1, 10616, 0, 0, 18019);

/* Add correct leatherworking recipes to copy of Brumman */
DELETE FROM `npc_trainer` WHERE `ID` = @Brumman;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`) VALUES (@Brumman, -201050, 0, 0, 0, 0, 0);

/* Add vendor items to copy of Brumman */
DELETE FROM `npc_vendor` WHERE `entry` = @Brumman;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES 
(@Brumman, 0, 2320, 0, 0, 0, 0), (@Brumman, 0, 2321, 0, 0, 0, 0), (@Brumman, 0, 2325, 0, 0, 0, 0), (@Brumman, 0, 2604, 0, 0, 0, 0), (@Brumman, 0, 2605, 0, 0, 0, 0),
(@Brumman, 0, 4289, 0, 0, 0, 0), (@Brumman, 0, 4291, 0, 0, 0, 0), (@Brumman, 0, 4340, 0, 0, 0, 0), (@Brumman, 0, 4341, 0, 0, 0, 0), (@Brumman, 0, 4342, 0, 0, 0, 0),
(@Brumman, 0, 6260, 0, 0, 0, 0), (@Brumman, 0, 6261, 0, 0, 0, 0), (@Brumman, 0, 7005, 0, 0, 0, 0), (@Brumman, 0, 8343, 0, 0, 0, 0), (@Brumman, 0, 10290, 0, 0, 0, 0),
(@Brumman, 0, 14341, 0, 0, 0, 0), (@Brumman, 0, 38426, 0, 0, 0, 0);


/* Grikka shouldn't train certain leatherworking recipes until progression tier 10 */
/* to solve this a copy of her is created that only sells recipes that were available before progression tier 10 */
/* the original Grikka will replace her copy at progression tier 10 */
SET @Grikka := 121087;

/* Add copy of Grikka to creature_template with script npc_ipp_tbc_pre_t4 */
DELETE FROM `creature_template` WHERE `entry` = @Grikka;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) 
VALUES (@Grikka, 0, 0, 0, 0, 0, 'Grikka', 'Master Leatherworking Trainer', NULL, 0, 60, 60, 0, 1735, 80, 1.125, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 4608, 2048, 0, 0, 2, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1.25, 1, 1, 1, 0, 0, 1, 0, 0, 2, 'npc_ipp_tbc_pre_t4', 12340);

/* Add copy of Grikka to creature_template_addon */
DELETE FROM `creature_template_addon` WHERE `entry` = @Grikka;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES (@Grikka, 0, 0, 0, 1, 0, 0, NULL);

/* Add copy of Grikka to creature_template_locale */
DELETE FROM `creature_template_locale` WHERE `entry` = @Grikka;
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES 
(@Grikka, 'deDE', 'Grikka', 'Lederverarbeitungslehrerin', 18019),
(@Grikka, 'esES', 'Grikka', 'Instructora de peletería', 18019),
(@Grikka, 'esMX', 'Grikka', 'Instructora de peletería', 18019),
(@Grikka, 'frFR', 'Grikka', 'Maître des travailleurs du cuir', 18019),
(@Grikka, 'koKR', '그리카', '전문 가죽세공인', 18019),
(@Grikka, 'ruRU', 'Грикка', 'Учитель кожевничества', 18019),
(@Grikka, 'zhCN', '格里卡', '制皮训练师', 18019),
(@Grikka, 'zhTW', '葛利卡', '製皮訓練師', 18019);

/* Add copy of Grikka to creature_template_model */
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Grikka;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (@Grikka, 0, 20059, 1, 1, 12340);

/* Add copy of Grikka to creature */
DELETE FROM `creature` WHERE `id1` = @Grikka;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) 
VALUES (621087, @Grikka, 0, 0, 530, 0, 0, 1, 1, 0, 2039.82, 4675.43, 150.074, 0.977384, 300, 0, 0, 3815, 0, 0, 0, 0, 0, '', 0, 0, NULL);

/* Add correct leatherworking recipes to copy of Grikka */
DELETE FROM `npc_trainer` WHERE `ID` = @Grikka;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `ReqSpell`) VALUES (@Grikka, -201050, 0, 0, 0, 0, 0);

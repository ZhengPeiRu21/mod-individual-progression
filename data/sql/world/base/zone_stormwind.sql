UPDATE `creature_template` SET `subname` = 'Journeyman Blacksmith'    WHERE `entry` = 957;   -- Dane Lindgren <Apprentice Blacksmith>
UPDATE `creature_template` SET `subname` = 'Journeyman Tailor'        WHERE `entry` = 1300;  -- Lawrence Schneider <Apprentice Tailor>
UPDATE `creature_template` SET `subname` = 'Expert Enchanter'         WHERE `entry` = 1317;  -- Lucan Cordell <Enchanting Trainer>
UPDATE `creature_template` SET `subname` = 'Artisan Tailor'           WHERE `entry` = 1346;  -- Georgio Bolero <Artisan Tailor>
UPDATE `creature_template` SET `subname` = 'Journeyman Engineer'      WHERE `entry` = 11026; -- Sprite Jumpsprocket <Apprentice Engineer>
UPDATE `creature_template` SET `subname` = 'Journeyman Enchanter'     WHERE `entry` = 11068; -- Betty Quin <Apprentice Enchanter>
UPDATE `creature_template` SET `subname` = 'Journeyman Leatherworker' WHERE `entry` = 11096; -- Randal Worth <Apprentice Leatherworker>

UPDATE `creature_template` SET `npcflag` = 81 WHERE `entry` IN (957, 1300, 11026, 11068, 11096); -- `trainer_type` = 2
UPDATE `creature_template` SET `type_flags` = 134217728 WHERE `entry` = 5567; -- Sellandus <Expert Tailor>

SET @TRAINER_ID   := 600;

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (957, 1300, 1317, 1346, 1430, 2327, 5482, 5493, 5499, 5500, 5511, 5513, 5518, 5564, 5567, 11026, 11068, 11096);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
(957,   @TRAINER_ID+16), -- Dane Lindgren <Journeyman Blacksmith>
(1300,  @TRAINER_ID+36), -- Lawrence Schneider <Journeyman Tailor>
(1317,  @TRAINER_ID+22), -- Lucan Cordell <Expert Enchanter>
(1346,  @TRAINER_ID+38), -- Georgio Bolero <Artisan Tailor>
(1430,  @TRAINER_ID+44), -- Tomas <Cook>
(2327,  @TRAINER_ID+45), -- Shaina Fuller <First Aid Trainer>
(5482,  @TRAINER_ID+44), -- Stephen Ryback <Cooking Trainer>
(5493,  @TRAINER_ID+47), -- Arnold Leland <Fishing Trainer>
(5499,  @TRAINER_ID+12), -- Lilyssia Nightbreeze <Expert Alchemist>
(5500,  @TRAINER_ID+11), -- Tel'Athir <Journeyman Alchemist>
(5511,  @TRAINER_ID+17), -- Therum Deepforge <Expert Blacksmith>
(5513,  @TRAINER_ID+42), -- Gelman Stonehand <Mining Trainer>
(5518,  @TRAINER_ID+27), -- Lilliam Sparkspindle <Expert Engineer>
(5564,  @TRAINER_ID+32), -- Simon Tanner <Expert Leatherworker>
(5567,  @TRAINER_ID+37), -- Sellandus <Expert Tailor>
(11026, @TRAINER_ID+26), -- Sprite Jumpsprocket <Journeyman Engineer>
(11068, @TRAINER_ID+21), -- Betty Quin <Journeyman Enchanter>
(11096, @TRAINER_ID+31); -- Randal Worth <Journeyman Leatherworker>

DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (2745, 4112, 4139, 4153, 4161, 4173, 4262, 4344);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`) VALUES
(2745, 0, 3, 'Train me.', 3266, 5, 16), -- Dane Lindgren <Journeyman Blacksmith>
(4112, 0, 3, 'Train me.', 3266, 5, 16), -- Tel'Athir <Journeyman Alchemist>
(4139, 0, 3, 'Train me.', 3266, 5, 16), -- Sprite Jumpsprocket <Journeyman Engineer>
(4153, 0, 3, 'Train me.', 3266, 5, 16), -- Betty Quin <Journeyman Enchanter>
(4161, 0, 3, 'Train me.', 3266, 5, 16), -- Lucan Cordell <Expert Enchanter>
(4173, 0, 3, 'Train me.', 3266, 5, 16), -- Randal Worth <Journeyman Leatherworker>
(4262, 0, 3, 'Train me.', 3266, 5, 16), -- Lawrence Schneider <Journeyman Tailor>
(4344, 0, 3, 'Train me.', 3266, 5, 16); -- Sellandus <Expert Tailor>

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceEntry` = 0 AND `ConditionTypeOrReference` = 7 AND `SourceGroup` IN (581, 4146, 4161, 4201, 4203, 4344, 4353); 
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES 
(15, 581,  0, 7, 164, 50,  'Show menu if blacksmithing is 50 or higher'),  -- Therum Deepforge <Expert Blacksmith>
(15, 4146, 0, 7, 202, 50,  'Show menu if engineering is 50 or higher'),    -- Lilliam Sparkspindle <Expert Engineer>
(15, 4161, 0, 7, 333, 50,  'Show menu if enchanting is 50 or higher'),     -- Lucan Cordell <Expert Enchanter>
(15, 4201, 0, 7, 171, 50,  'Show menu if alchemy is 50 or higher'),        -- Lilyssia Nightbreeze <Expert Alchemist>
(15, 4203, 0, 7, 165, 50,  'Show menu if leatherworking is 50 or higher'), -- Simon Tanner <Expert Leatherworker>
(15, 4344, 0, 7, 197, 50,  'Show menu if tailoring is 50 or higher'),      -- Sellandus <Expert Tailor>
(15, 4353, 0, 7, 197, 125, 'Show menu if tailoring is 125 or higher');     -- Georgio Bolero <Artisan Tailor>

UPDATE `creature_template` SET `minlevel` = 63, `maxlevel` = 63, `ScriptName` = 'npc_king_varian_wrynn' WHERE `entry` = 29611; -- King Varian Wrynn
UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_pre_wotlk' WHERE `entry` = 1747; -- Anduin Wrynn

UPDATE `creature_template` SET `subname` = 'Arcane Goods Vendor' WHERE `entry` = 1257; -- Keldric Boucher <Alchemy Supplies & Reagents>
UPDATE `creature_template` SET `subname` = 'Reagent Vendor'      WHERE `entry` = 1275; -- Kyra Boucher <Reagents>
UPDATE `creature_template` SET `subname` = 'Trade Supplier'      WHERE `entry` = 1286; -- Edna Mullby <Trade Supplies>
UPDATE `creature_template` SET `subname` = 'Reagent Vendor'      WHERE `entry` = 1308; -- Owen Vaughn <Reagents>
UPDATE `creature_template` SET `subname` = 'Poison Supplier'     WHERE `entry` = 1326; -- Sloan McCoy <Poison Supplier>
UPDATE `creature_template` SET `subname` = 'Reagent Vendor'      WHERE `entry` = 1351; -- Brother Cassius <Reagents>
UPDATE `creature_template` SET `subname` = 'Weapon Crafter'      WHERE `entry` = 7232; -- Borgus Steelhand <Weapon Crafter>

SET @Rachel     := 112778; -- Lieutenant Rachel Vaccar
SET @Biggins    := 112781; -- Master Sergeant Biggins <Officer Accessories Quartermaster>, Vanilla
SET @Karter     := 112783; -- Lieutenant Karter, <Mount Vendor>, Vanilla
SET @Clate      := 112785; -- Stone Guard Zarg <Food and Drink>, Vanilla
SET @Vixton     := 120278; -- Vixton Pinchwhistle - Season 2
SET @Krixel     := 123396; -- Krixel Pinchwhistle - Season 3
SET @Leeni      := 124392; -- Leeni "Smiley" Smalls - Season 4

SET @CGUID      := 659000;

UPDATE `creature_template` SET `subname` = 'Mount Vendor' WHERE `entry` = 12783;
UPDATE `creature_template` SET `subname` = 'Weapons Quartermaster' WHERE `entry` = 12784; 
UPDATE `creature_template` SET `subname` = 'Armor Quartermaster' WHERE `entry` = 12785;
UPDATE `creature_template` SET `npcflag` = 4224 WHERE `entry` IN (24671, 24672);

UPDATE `creature_template_addon` SET `mount` = 0 WHERE `entry` = 12783;

DELETE FROM `creature` WHERE `guid` IN (133928, 133926, 133929, 612781, 133927, 612783, 612785, 623446, 624671, 624672, 612777, 626394);
DELETE FROM `creature` WHERE `id1`  IN (7410, 7798, 112778, 12779, 12780, 12805, 14981, 15008, 32380, 32381, 34073, 34074, 34075, 34076, 34077, 34078, 40607);
DELETE FROM `creature` WHERE `guid` IN (720278, 723396); -- 00_cleanup
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+21 AND @CGUID+38;

INSERT INTO `creature` (`guid`, `id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES 
--
(612781, @Biggins, 0, -8777.4, 417.124, 103.921, 6.23553, 180),      -- Master Sergeant Biggins <Officer Accessories Quartermaster>, Vanilla
(133926, 12781, 0, -8777.4, 417.124, 103.921, 6.23553, 180),         -- Master Sergeant Biggins <Officer Accessories Quartermaster>, TBC
(612785, @Clate, 0, -8771.31, 401.973, 109.665, 0.659191, 180),      -- Sergeant Major Clate <Food and Drink>, Vanilla
(133929, 12785, 0, -8771.31, 401.973, 109.665, 0.659191, 180),       -- Sergeant Major Clate <Armor Quartermaster>, TBC 
(626394, 26394, 0, -8778.3, 432.142, 105.309, 4.17386, 180),         -- Captain O'Neal <Weapons Quartermaster>, Vanilla
(624671, 24671, 0, -8778.3, 432.142, 105.309, 4.17386, 180),         -- Captain O'Neal <Weapons Quartermaster>, TBC
(612777, 12777, 0, -8768.77, 401.647, 109.665, 2.22999, 180),        -- Captain Dirgehammer <Armor Quartermaster>, Vanilla
(624672, 24672, 0, -8773.33, 427.279, 105.233, 3.84677, 180),        -- Captain Dirgehammer <Armor Quartermaster>, TBC
(133928, 12784, 0, -8764.6, 413.632, 103.922, 0.693375, 180),        -- Lieutenant Jackspring <Weapons Quartermaster>, TBC 
(623446, 23446, 0, -8785.74, 420.484, 105.233, 0.701937, 180),       -- Lieutenant Tristia <Armor Quartermaster>, TBC
(133927, 12783, 0, -8779.7, 432.158, 105.233, 5.36374, 180),         -- Lieutenant Karter <Mount Vendor>, TBC
(612783, @Karter, 0, -8779.7, 432.158, 105.233, 5.36374, 180),       -- Lieutenant Karter <Mount Vendor>, Vanilla

(607410, 7410,   0, -8424.43, 342.967, 120.886, 3.82018,  300),      -- Thelman Slatefist <Alterac Valley Battlemaster>
(607798, 7798,   0, -8422.17, 630.877, 95.8402, 5.044,    430),      -- Hank the Hammer <The Mitrhil Order>
(612778, @Rachel, 0, -8783.7,  423.749, 105.276, 0.651345, 300),     -- Lieutenant Rachel Vaccar
(612779, 12779,  0, -8783.33, 426.686, 105.276, 5.37159,  300),      -- Archmage Gaiman
(612780, 12780,  0, -8779.46, 427.206, 105.275, 3.80473,  300),      -- Sergeant Major Skyshadow
(612805, 12805,  0, -8759.18, 389.112, 101.056, 0.648394, 430),      -- Officer Areyn <Accessories Quartermaster>
(614981, 14981,  0, -8454.62, 318.853, 120.969, 0.698132, 180),      -- Elfarran <Warsong Gulch Battlemaster>
(615008, 15008,  0, -8420.48, 328.711, 120.886, 3.06638,  180),      -- Lady Hoteshem <Arathi Basin Battlemaster>

(@CGUID+21, 20278, 0, -8789.08, 425.681, 105.233, 5.68294, 180),     -- Vixton Pinchwhistle <Arena Vendor>, TBC, Season 1
(@CGUID+22, @Vixton, 0, -8789.08, 425.681, 105.233, 5.68294, 180),   -- Vixton Pinchwhistle <Arena Vendor>, TBC, Season 2
(@CGUID+23, 23396, 0, -8786.12, 428.386, 105.233, 5.5871, 180),      -- Krixel Pinchwhistle <Arena Vendor>, TBC, Season 2
(@CGUID+24, 24392, 0, -8789.08, 425.681, 105.233, 5.68294, 180),     -- Leeni "Smiley" Smalls <Arena Vendor>, TBC, Season 3
(@CGUID+25, @Krixel, 0, -8786.12, 428.386, 105.233, 5.5871, 180),    -- Krixel Pinchwhistle <Arena Vendor>, TBC, Season 3
(@CGUID+26, @Leeni, 0, -8789.08, 425.681, 105.233, 5.68294, 180),    -- Leeni "Smiley" Smalls <Arena Vendor>, TBC, Season 4
(@CGUID+27, 26352, 0, -8786.12, 428.386, 105.233, 5.5871, 180),      -- Big Zokk Torquewrench <Arena Vendor>, TBC, Season 4

(@CGUID+31, 32381, 0, -8781.18, 419.883, 105.233, 6.18459, 180),     -- Captain Dirgehammer, WotLK Season 5
(@CGUID+32, 34073, 0, -8781.18, 419.883, 105.233, 6.18459, 180),     -- Captain Dirgehammer, WotLK Season 6
(@CGUID+33, 34074, 0, -8781.18, 419.883, 105.233, 6.18459, 180),     -- Captain Dirgehammer, WotLK Season 7
(@CGUID+34, 34075, 0, -8781.18, 419.883, 105.233, 6.18459, 180),     -- Captain Dirgehammer, WotLK Season 8
(@CGUID+35, 32380, 0, -8773.78, 425.804, 105.233, 4.80621, 180),     -- Lieutenant Tristia, WotLK Season 5
(@CGUID+36, 34076, 0, -8773.78, 425.804, 105.233, 4.80621, 180),     -- Lieutenant Tristia, WotLK Season 6
(@CGUID+37, 34077, 0, -8773.78, 425.804, 105.233, 4.80621, 180),     -- Lieutenant Tristia, WotLK Season 7
(@CGUID+38, 34078, 0, -8773.78, 425.804, 105.233, 4.80621, 180);     -- Lieutenant Tristia, WotLK Season 8

UPDATE `creature` SET `ScriptName` = 'npc_ipp_pre_tbc'   WHERE `guid` IN (612777, 612781, 612783, 612785, 612805, 626394); -- only visible during vanilla
UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc_pvp'   WHERE `guid` IN (623446, 624672, 720278, 723396);                 -- only visible during tbc
UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc'       WHERE `guid` IN (133921, 133926, 133927, 133928, 133929, 624671); -- visible during tbc & wotlk
UPDATE `creature` SET `ScriptName` = 'npc_ipp_pre_wotlk' WHERE `guid` IN (612778);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk'     WHERE `guid` IN (133922);

UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc_S1'    WHERE `guid` IN (@CGUID+21);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc_S2'    WHERE `guid` IN (@CGUID+22, @CGUID+23);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc_S3'    WHERE `guid` IN (@CGUID+24, @CGUID+25);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc_S4'    WHERE `guid` IN (@CGUID+26, @CGUID+27);

UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S5'  WHERE `guid` IN (@CGUID+31, @CGUID+35);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S6'  WHERE `guid` IN (@CGUID+32, @CGUID+36);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S7'  WHERE `guid` IN (@CGUID+33, @CGUID+37);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S8'  WHERE `guid` IN (@CGUID+34, @CGUID+38);

UPDATE `creature` SET `equipment_id` = 1 WHERE `id1` = 12805; -- Officer Areyn <Accessories Quartermaster>

/* Hide certain vendor items until the player has reached the progression tier for them */
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 23 AND `SourceGroup` IN (12777, 12782, 12783, 26394) AND `ConditionValue1` IN (66002, 66006, 66008);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
--
(23, 12777, 16369, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Silk Boots if the player has NOT completed PROGRESSION_AQ'), -- mage
(23, 12777, 16391, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Silk Gloves if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16413, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Silk Raiment if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16414, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Silk Leggings if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16416, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Crown if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16415, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Silk Spaulders if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16423, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Dragonhide Epaulets if the player has NOT completed PROGRESSION_AQ'), -- druid
(23, 12777, 16424, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Dragonhide Shroud if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16422, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Dragonhide Leggings if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16421, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Dragonhide Tunic if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16393, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Dragonhide Footwraps if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16397, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Dragonhide Gloves if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16392, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Leather Boots if the player has NOT completed PROGRESSION_AQ'), -- rogue
(23, 12777, 16396, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Leather Gauntlets if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16417, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Leather Armor if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16419, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Leather Legguards if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16420, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Leather Spaulders if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16418, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Leather Veil if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16405, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Plate Boots if the player has NOT completed PROGRESSION_AQ'), -- warrior
(23, 12777, 16406, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Plate Gauntlets if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16430, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Plate Chestguard if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16431, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Plate Leggings if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16429, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Plate Helm if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16432, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Plate Pauldrons if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16410, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Lamellar Gauntlets if the player has NOT completed PROGRESSION_AQ'), -- paladin
(23, 12777, 16409, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Lamellar Sabatons if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16433, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Lamellar Breastplate if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16435, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Lamellar Leggings if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16434, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Lamellar Headguard if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16436, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Lamellar Shoulders if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16425, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Chain Hauberk if the player has NOT completed PROGRESSION_AQ'), -- hunter
(23, 12777, 16426, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Chain Leggings if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16401, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Chain Boots if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16403, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Chain Gauntlets if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16428, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Chain Helmet if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 16427, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Chain Pauldrons if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 17562, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Dreadweave Boots if the player has NOT completed PROGRESSION_AQ'), -- warlock
(23, 12777, 17564, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Dreadweave Gloves if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 17568, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Dreadweave Robe if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 17567, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Dreadweave Leggings if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 17569, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Dreadweave Mantle if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 17566, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Headguard if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 17594, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Satin Boots if the player has NOT completed PROGRESSION_AQ'), -- priest
(23, 12777, 17596, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Satin Gloves if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 17600, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Satin Robes if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 17599, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Satin Leggings if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 17598, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Diadem if the player has NOT completed PROGRESSION_AQ'),
(23, 12777, 17601, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Satin Amice if the player has NOT completed PROGRESSION_AQ'),
--
(23, 12777, 23304, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Silk Legguards if the player has completed PROGRESSION_AQ'), -- mage
(23, 12777, 23305, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Silk Tunic if the player has completed PROGRESSION_AQ'),
(23, 12777, 23290, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Silk Handwraps if the player has completed PROGRESSION_AQ'),
(23, 12777, 23291, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Silk Walkers if the player has completed PROGRESSION_AQ'),
(23, 12777, 23318, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Silk Cowl if the player has completed PROGRESSION_AQ'),
(23, 12777, 23319, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Silk Mantle if the player has completed PROGRESSION_AQ'),
(23, 12777, 23294, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Dragonhide Chestpiece if the player has completed PROGRESSION_AQ'), -- druid
(23, 12777, 23295, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Dragonhide Leggings if the player has completed PROGRESSION_AQ'),
(23, 12777, 23280, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Dragonhide Grips if the player has completed PROGRESSION_AQ'),
(23, 12777, 23281, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Dragonhide Treads if the player has completed PROGRESSION_AQ'),
(23, 12777, 23308, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Dragonhide Headguard if the player has completed PROGRESSION_AQ'),
(23, 12777, 23309, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Dragonhide Shoulders if the player has completed PROGRESSION_AQ'),
(23, 12777, 23298, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Leather Chestpiece if the player has completed PROGRESSION_AQ'), -- rogue
(23, 12777, 23299, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Leather Legguards if the player has completed PROGRESSION_AQ'),
(23, 12777, 23284, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Leather Grips if the player has completed PROGRESSION_AQ'),
(23, 12777, 23285, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Leather Walkers if the player has completed PROGRESSION_AQ'),
(23, 12777, 23312, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Leather Helm if the player has completed PROGRESSION_AQ'),
(23, 12777, 23313, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Leather Shoulders if the player has completed PROGRESSION_AQ'),
(23, 12777, 23300, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Plate Hauberk if the player has completed PROGRESSION_AQ'), -- warrior
(23, 12777, 23301, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Plate Leggings if the player has completed PROGRESSION_AQ'),
(23, 12777, 23286, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Plate Gauntlets if the player has completed PROGRESSION_AQ'),
(23, 12777, 23287, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Plate Greaves if the player has completed PROGRESSION_AQ'),
(23, 12777, 23314, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Plate Helm if the player has completed PROGRESSION_AQ'),
(23, 12777, 23315, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Plate Shoulders if the player has completed PROGRESSION_AQ'),
(23, 12777, 23272, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Lamellar Breastplate if the player has completed PROGRESSION_AQ'), -- paladin
(23, 12777, 23273, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Lamellar Leggings if the player has completed PROGRESSION_AQ'),
(23, 12777, 23274, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Lamellar Gauntlets if the player has completed PROGRESSION_AQ'),
(23, 12777, 23275, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Lamellar Sabatons if the player has completed PROGRESSION_AQ'),
(23, 12777, 23276, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Lamellar Headguard if the player has completed PROGRESSION_AQ'),
(23, 12777, 23277, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Lamellar Shoulders if the player has completed PROGRESSION_AQ'),
(23, 12777, 23292, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Chain Hauberk if the player has completed PROGRESSION_AQ'), -- hunter
(23, 12777, 23293, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Chain Legguards if the player has completed PROGRESSION_AQ'),
(23, 12777, 23278, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Chain Greaves if the player has completed PROGRESSION_AQ'),
(23, 12777, 23279, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Chain Vices if the player has completed PROGRESSION_AQ'),
(23, 12777, 23306, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Chain Helm if the player has completed PROGRESSION_AQ'),
(23, 12777, 23307, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Chain Shoulders if the player has completed PROGRESSION_AQ'),
(23, 12777, 23296, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Dreadweave Legguards if the player has completed PROGRESSION_AQ'), -- warlock
(23, 12777, 23297, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Dreadweave Tunic if the player has completed PROGRESSION_AQ'),
(23, 12777, 23282, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Dreadweave Handwraps if the player has completed PROGRESSION_AQ'),
(23, 12777, 23283, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Dreadweave Walkers if the player has completed PROGRESSION_AQ'),
(23, 12777, 23310, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Dreadweave Cowl if the player has completed PROGRESSION_AQ'),
(23, 12777, 23311, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Dreadweave Spaulders if the player has completed PROGRESSION_AQ'),
(23, 12777, 23302, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Satin Legguards if the player has completed PROGRESSION_AQ'), -- priest
(23, 12777, 23303, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Captains Satin Tunic if the player has completed PROGRESSION_AQ'),
(23, 12777, 23288, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Satin Handwraps if the player has completed PROGRESSION_AQ'),
(23, 12777, 23289, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Knight-Lieutenants Satin Walkers if the player has completed PROGRESSION_AQ'),
(23, 12777, 23316, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Satin Hood if the player has completed PROGRESSION_AQ'),
(23, 12777, 23317, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will only sell Lieutenant Commanders Satin Mantle if the player has completed PROGRESSION_AQ'),
--
(23, 12777, 16437, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Silk Footwraps until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16440, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Silk Gloves until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16441, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Coronet until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16442, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Silk Leggings until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16443, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Silk Vestments until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16444, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Silk Spaulders until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16446, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Leather Footguards until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16448, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Dragonhide Gauntlets until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16449, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Dragonhide Spaulders until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16450, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Dragonhide Legguards until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16451, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Dragonhide Helmet until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16452, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Dragonhide Breastplate until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16453, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Leather Chestpiece until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16454, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Leather Handgrips until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16455, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Leather Mask until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16456, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Leather Leggings until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16457, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Leather Epaulets until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16459, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Dragonhide Boots until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16462, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Chain Boots until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16463, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Chain Grips until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16465, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Chain Helm until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16466, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Chain Breastplate until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16467, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Chain Legguards until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16468, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Chain Spaulders until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16471, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Lamellar Gloves until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16472, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Lamellar Boots until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16473, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Lamellar Chestplate until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16474, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Lamellar Faceguard until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16475, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Lamellar Legplates until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16476, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Lamellar Pauldrons until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16477, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Plate Armor until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16478, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Plate Helm until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16479, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Plate Legguards until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16480, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Plate Shoulderguards until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16483, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Plate Boots until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 16484, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Plate Gauntlets until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 17578, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Coronal until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 17579, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Dreadweave Leggings until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 17580, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Dreadweave Shoulders until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 17581, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Dreadweave Robe until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 17583, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Dreadweave Boots until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 17584, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Dreadweave Gloves until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 17602, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Headdress until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 17603, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Satin Pants until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 17604, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Satin Mantle until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 17605, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Field Marshals Satin Vestments until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 17607, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Satin Sandals until the player has completed PROGRESSION_ONYXIA'),
(23, 12777, 17608, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain Dirgehammer will not sell Marshals Satin Gloves until the player has completed PROGRESSION_ONYXIA'),
--
(23, 26394, 12584, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Longsword until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 18825, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Aegis until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 18827, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Handaxe until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 18830, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Sunderer until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 18833, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Bullseye until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 18836, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Repeater until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 18838, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Dirk until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 18843, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Right Hand Blade until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 18847, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Left Hand Blade until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 18855, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Hand Cannon until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 18865, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Punisher until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 18867, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Battle Hammer until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 18869, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Glaive until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 18873, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Stave until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 18876, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Claymore until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 23451, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Mageblade until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 23452, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Tome of Power until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 23453, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Tome of Restoration until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 23454, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Warhammer until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 23455, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Demolisher until the player has completed PROGRESSION_ONYXIA'),
(23, 26394, 23456, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Captain O\'Neal will not sell Grand Marshal\'s Swiftblade until the player has completed PROGRESSION_ONYXIA'),
--
(23, 12783, 35906, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Lieutenant Karter will not sell Reins of the Black War Elekk until the player has completed PROGRESSION_PRE_TBC');

UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_pre_tbc' WHERE `guid` IN (61936, 61940, 61942, 61944, 61945, 61946, 61947, 61949, 61951);

-- WotLK pvp vendors
DELETE FROM `creature` WHERE `id1` IN 
(12782,  -- Captain O'Neal <Weapons Quartermaster>
 26393,  -- Captain Dirgehammer <Armor Quartermaster>
 34081); -- Captain O'Neal <Jewelcrafting Quartermaster>

/* NPC Rebecca Laughlin - Remove non-Vanilla Tabards */
DELETE FROM `npc_vendor` WHERE `entry`= 5193 AND `item` IN (15197, 15199, 19031, 19505, 24004, 31773, 31775, 31776, 31777, 31778, 31779, 31780, 31781, 31804, 32445, 32828, 35221);

-- Summon Felsteed (Warlock)
DELETE FROM `quest_offer_reward` WHERE `ID` = 4488;
INSERT INTO `quest_offer_reward` (`ID`, `RewardText`) VALUES 
(4488, 'So, you\'ve decided to grace my presence again. How kind of you.$b$bMy acolytes wondered if you\'d ever show up. I told them there was no doubt. When power is concerned, you are drawn in like a moth to the flame.');

-- A Meal Served Cold
UPDATE `quest_template` SET `Flags` = 9, 
`LogDescription` = 'Kill a Cold Eye Basilisk, get a Chilled Basilisk Haunch, and return it to Angus Stern in the Blue Recluse.$B$B<You must not release your spirit to succeed in this quest.>' 
WHERE `ID` = 212;

-- Chillwind Camp
UPDATE `quest_template` SET `LogTitle` = 'Chillwind Point' WHERE `ID` = 8415;

-- Devourer of Souls (Warlock)
UPDATE `quest_template_addon` SET `PrevQuestID` = 0 WHERE `ID` = 1716;

DELETE FROM `creature_text` WHERE `CreatureID` IN (12739);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(12739, 0, 0, '$s becomes enraged!', 16, 0, 100, 0, 0, 0, 10677, 0, 'Onyxias Elite Guard enrage at 30%');

-- smart scripts
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (1284, 12739);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (1284, 12739);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(1284, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, 0, 4, 5883, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Archbishop Benedictus - On Aggro - Play Sound (No Repeat)'),
(1284, 0, 1, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 20697, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Archbishop Benedictus - On Aggro - Cast Power word Shield'),
(1284, 0, 2, 0, 9, 0, 100, 0, 2000, 3500, 2000, 3500, 0, 40, 11, 20695, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Archbishop Benedictus - Within 0-40 Range - Cast Holy Smite'),
(1284, 0, 3, 0, 9, 0, 100, 0, 3400, 4800, 3400, 4800, 0, 10, 11, 23858, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Archbishop Benedictus - Within 0-10 Range - Cast Holy Nova'),
(1284, 0, 4, 0, 0, 0, 100, 0, 12000, 18000, 12000, 18000, 0, 0, 11, 20697, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Archbishop Benedictus - In Combat - Cast Power Word: Shield'),
--
(12739, 0, 0, 1, 2, 0, 100, 0, 0, 30, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Onyxias Elite Guard - Between 0-30% Health - Cast Enrage'),
(12739, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Onyxias Elite Guard - On Enrage - Say Line 0');

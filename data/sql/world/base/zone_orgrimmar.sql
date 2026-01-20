UPDATE `creature_template` SET `subname` = 'Expert Blacksmith'        WHERE `entry` = 1383;  -- Snarl <Expert Blacksmith>
UPDATE `creature_template` SET `subname` = 'Journeyman Tailor'        WHERE `entry` = 2855;  -- Snang <Journeyman Tailor>
UPDATE `creature_template` SET `subname` = 'Journeyman Engineer'      WHERE `entry` = 2857;  -- Thund <Journeyman Engineer>
UPDATE `creature_template` SET `subname` = 'Expert Enchanter'         WHERE `entry` = 3345;  -- Godan <Expert Enchanter>
UPDATE `creature_template` SET `subname` = 'Expert Alchemist'         WHERE `entry` = 3347;  -- Yelmak <Expert Alchemist>
UPDATE `creature_template` SET `subname` = 'Artisan Blacksmith'       WHERE `entry` = 3355;  -- Saru Steelfury <Artisan Blacksmith>
UPDATE `creature_template` SET `subname` = 'Expert Tailor'            WHERE `entry` = 3363;  -- Magar <Expert Tailor>
UPDATE `creature_template` SET `subname` = 'Expert Leatherworker'     WHERE `entry` = 3365;  -- Karolek <Expert Leatherworker>
UPDATE `creature_template` SET `subname` = 'Expert Engineer'          WHERE `entry` = 3412;  -- Nogg <Expert Engineer>
UPDATE `creature_template` SET `subname` = 'Journeyman Leatherworker' WHERE `entry` = 5811;  -- Kamari <Journeyman Leatherworker>
UPDATE `creature_template` SET `subname` = 'Armor Crafter'            WHERE `entry` = 7230;  -- Shayis Steelfury <Armor Crafter>
UPDATE `creature_template` SET `subname` = 'Weapon Crafter'           WHERE `entry` = 7231;  -- Kelgruk Bloodaxe <Weapon Crafter>
UPDATE `creature_template` SET `subname` = 'Journeyman Blacksmith'    WHERE `entry` = 10266; -- Ug'thok <Journeyman Blacksmith>
UPDATE `creature_template` SET `subname` = 'Artisan Engineer'         WHERE `entry` = 11017; -- Roxxik <Artisan Engineer>
UPDATE `creature_template` SET `subname` = 'Journeyman Alchemist'     WHERE `entry` = 11046; -- Whuut <Journeyman Alchemist>
UPDATE `creature_template` SET `subname` = 'Journeyman Enchanter'     WHERE `entry` = 11066; -- Jhag <Journeyman Enchanter>

UPDATE `creature_template` SET `npcflag` = 81 WHERE `entry` IN (1383, 2855, 2857, 3412, 5811, 10266, 11017, 11046, 11066); -- `trainer_type` = 2
UPDATE `creature_template` SET `type_flags` = 134217728 WHERE `entry` IN (1383, 3412, 11017);

SET @TRAINER_ID   := 600;

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (1383, 2855, 2857, 3332, 3345, 3347, 3355, 3357, 3363, 3365, 3373, 3399, 3412, 4752, 5811, 7088, 10266, 11017, 11046, 11066);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
(1383,  @TRAINER_ID+17), -- Snarl <Expert Blacksmith>
(2855,  @TRAINER_ID+36), -- Snang <Journeyman Tailor>
(2857,  @TRAINER_ID+26), -- Thund <Journeyman Engineer>
(3332,  @TRAINER_ID+47), -- Lumak <Fishing Trainer>
(3345,  @TRAINER_ID+22), -- Godan <Expert Enchanter>
(3347,  @TRAINER_ID+12), -- Yelmak <Expert Alchemist>
(3355,  @TRAINER_ID+18), -- Saru Steelfury <Artisan Blacksmith>
(3357,  @TRAINER_ID+42), -- Makaru <Mining Trainer>
(3363,  @TRAINER_ID+37), -- Magar <Expert Tailor>
(3365,  @TRAINER_ID+32), -- Karolek <Expert Leatherworker>
(3373,  @TRAINER_ID+45), -- Arnok <First Aid Trainer>
(3399,  @TRAINER_ID+44), -- Zamja <Cooking Trainer>
(3412,  @TRAINER_ID+27), -- Nogg <Expert Engineer>
(4752,  @TRAINER_ID+48), -- Kildar <Riding Trainer>
(5811,  @TRAINER_ID+31), -- Kamari <Journeyman Leatherworker>
(7088,  @TRAINER_ID+43), -- Thuwd <Skinning Trainer>
(10266, @TRAINER_ID+16), -- Ug'thok <Journeyman Blacksmith>
(11017, @TRAINER_ID+28), -- Roxxik <Artisan Engineer>
(11046, @TRAINER_ID+11), -- Whuut <Journeyman Alchemist>
(11066, @TRAINER_ID+21); -- Jhag <Journeyman Enchanter>

DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (2747, 2782, 4118, 4143, 4148, 4151, 4159, 4183, 4265);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`) VALUES
(2747, 0, 3, 'Train me.', 3266, 5, 16), -- Ug'thok <Journeyman Blacksmith>
(2782, 0, 3, 'Train me.', 3266, 5, 16), -- Snarl <Expert Blacksmith>
(4118, 0, 3, 'Train me.', 3266, 5, 16), -- Whuut <Journeyman Alchemist>
(4143, 0, 3, 'Train me.', 3266, 5, 16), -- Thund <Journeyman Engineer>
(4148, 0, 3, 'Train me.', 3266, 5, 16), -- Nogg <Expert Engineer>
(4151, 0, 3, 'Train me.', 3266, 5, 16), -- Roxxik <Artisan Engineer>
(4159, 0, 3, 'Train me.', 3266, 5, 16), -- Jhag <Journeyman Enchanter>
(4183, 0, 3, 'Train me.', 3266, 5, 16), -- Kamari <Journeyman Leatherworker>
(4265, 0, 3, 'Train me.', 3266, 5, 16); -- Snang <Journeyman Tailor>

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceEntry` = 0 AND `ConditionTypeOrReference` = 7 AND `SourceGroup` IN (1012, 2782, 4126, 4148, 4151, 4168, 4209, 4347);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 1012, 0, 7, 164, 125, 'Show menu if blacksmithing is 125 or higher'), -- Saru Steelfury <Artisan Blacksmith>
(15, 2782, 0, 7, 164, 50,  'Show menu if blacksmithing is 50 or higher'),  -- Snarl <Expert Blacksmith>
(15, 4126, 0, 7, 171, 50,  'Show menu if alchemy is 50 or higher'),        -- Yelmak <Expert Alchemist>
(15, 4148, 0, 7, 202, 50,  'Show menu if engineering is 50 or higher'),    -- Nogg <Expert Engineer>
(15, 4151, 0, 7, 202, 125, 'Show menu if engineering is 125 or higher'),   -- Roxxik <Artisan Engineer>
(15, 4168, 0, 7, 333, 50,  'Show menu if enchanting is 50 or higher'),     -- Godan <Expert Enchanter>
(15, 4209, 0, 7, 165, 50,  'Show menu if leatherworking is 50 or higher'), -- Karolek <Expert Leatherworker>
(15, 4347, 0, 7, 197, 50,  'Show menu if tailoring is 50 or higher');      -- Magar <Expert Tailor>

DELETE FROM `creature` WHERE `id1` = 3230 AND `map`= 1;
DELETE FROM `creature` WHERE `guid` IN (10299, 203492, 203493, 203494, 203495);
DELETE FROM `creature` WHERE `id1` IN (3890, 12788, 14720, 14942, 15006);
INSERT INTO `creature` (`guid`, `id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES 
(603230, 3230,  1, 1938.55, -4133.22, 41.1424, 4.07636, 300), -- Nazgrel <Advisor to Thrall>
(10299,  3296,  1, 1620.45, -4252.84, 47.5273, 3.7001,  300), -- Orgrimmar Grunt
(603890, 3890,  1, 1991.89, -4793.95, 56.0462, 3.27581, 300), -- Brakgul Deathbringer <Warsong Gulch Battlemaster>
(612788, 12788, 1, 1650.95, -4212.82, 55.439, 0.182965, 300), -- Legionnaire Teena
(614720, 14720, 1, 1565.79, -4395.27, 6.9866, 3.35103,  600), -- High Overlord Saurfang
(614942, 14942, 1, 1980.9, -4787.78, 55.8796, 5.13127,  600), -- Kartra Bloodsnarl <Alterac Valley Battlemaster>
(615006, 15006, 1, 2002.26, -4796.74, 56.8471, 3.00197, 600); -- Deze Snowbane <Arathis Basin Battlemaster>

-- hide wotlk battlemasters
UPDATE `creature_template` SET `flags_extra` = 2, `ScriptName` = 'npc_ipp_wotlk' WHERE `entry` IN (34955, 35008, 35017, 35602);
UPDATE `creature_template` SET `flags_extra` = 2, `ScriptName` = 'npc_ipp_pre_wotlk' WHERE `entry` IN (14942);

-- Master Pyreanor <Paladin Trainer>
UPDATE `creature` SET `position_x`= 1940.23, `position_y`= -4135.53, `position_z`= 41.1522, `orientation`= 3.12425  WHERE `id1` = 23128;

-- Knowledge of the Orb of Orahil (Warlock)
DELETE FROM `creature_queststarter` WHERE `id` = 3326 AND `quest` = 4967;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (3326, 4967);

-- An Imp's Request (Warlock)
DELETE FROM `creature_queststarter` WHERE `id` IN (3324, 3325, 3326, 4564, 5495, 5496) AND `quest`= 8419;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (3326, 8419);

UPDATE `creature_template` SET `subname` = 'General Goods Merchant'       WHERE `entry` = 3313;  -- Trak'gen <General Goods Merchant>
UPDATE `creature_template` SET `subname` = 'Guns and Ammo Merchant'       WHERE `entry` = 3322;  -- Kaja <Guns and Ammo Merchant>
UPDATE `creature_template` SET `subname` = 'Reagents Vendor'              WHERE `entry` = 3323;  -- Horthus <Reagents Vendor>
UPDATE `creature_template` SET `subname` = 'Poison Vendor'                WHERE `entry` = 3334;  -- Rekkul <Poison Vendor>
UPDATE `creature_template` SET `subname` = 'Reagents Vendor'              WHERE `entry` = 3335;  -- Hagrus <Reagents Vendor>
UPDATE `creature_template` SET `subname` = 'General Goods Vendor'         WHERE `entry` = 3350;  -- Asoran <General Goods Vendor>
UPDATE `creature_template` SET `subname` = 'Reagents Vendor'              WHERE `entry` = 3351;  -- Magenius <Reagents Vendor>
UPDATE `creature_template` SET `subname` = 'Blacksmithing Supplier'       WHERE `entry` = 3356;  -- Sumi <Blacksmithing Supplier>
UPDATE `creature_template` SET `subname` = 'Mining Supplier'              WHERE `entry` = 3358;  -- Gorina <Mining Supplier>
UPDATE `creature_template` SET `subname` = 'General Trade Goods Merchant' WHERE `entry` = 3367;  -- Felika <General Trade Goods Merchant>
UPDATE `creature_template` SET `subname` = 'Cooking Supplier'             WHERE `entry` = 3400;  -- Xen'to <Cooking Supplier>
UPDATE `creature_template` SET `subname` = 'General Trade Goods Merchant' WHERE `entry` = 5817;  -- Shimra <General Trade Goods Merchant>
UPDATE `creature_template` SET `subname` = 'King of Darkspear Trolls'     WHERE `entry` = 10540; -- Vol'jin <King of Darkspear Trolls>
UPDATE `creature_template` SET `subname` = 'Zeppelin Master'              WHERE `entry` = 12136; -- Snurk Bucksquick <Zeppelin Master>

-- Legionnaire Teena
UPDATE `creature_template` SET `subname`= NULL, `npcflag` = 0, `faction` = 85 WHERE `entry` = 12788;
UPDATE `creature_template_locale` SET `Title` = NULL WHERE `entry` = 12788;
DELETE FROM `npc_vendor` WHERE `entry`= 12788; -- was placed in battlegrounds during Vanilla and TBC. needs to be hidden until wotlk

-- Nazgrel <Advisor to Thrall>
UPDATE `creature_template` SET `scale`=0.7, `npcflag`=2, `faction`=29, `gossip_menu_id`=0 WHERE `entry`=3230;

-- remove civilian flag
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` IN (14392, 14720); -- Overlord Runthak / High Overlord Saurfang

SET @Stonehide  := 112793; -- Brave Stonehide <Officer Accessories Quartermaster>, Vanilla
SET @Zarg       := 112794; -- Stone Guard Zarg <Food and Drink>, Vanilla
SET @Hola       := 112795; -- First Sergeant Hola'mahi, Vanilla
SET @Bork       := 112796; -- Raider Bork <Mount Quartermaster>, Vanilla
SET @Vixton     := 120278; -- Vixton Pinchwhistle - Season 2
SET @Krixel     := 123396; -- Krixel Pinchwhistle - Season 3
SET @Leeni      := 124392; -- Leeni "Smiley" Smalls - Season 4

SET @CGUID      := 659000;

UPDATE `creature_template` SET `subname` = 'Officer Accessories Quartermaster' WHERE `entry` = 12793;
UPDATE `creature_template` SET `subname` = 'Weapons Quartermaster'             WHERE `entry` = 12794;
UPDATE `creature_template` SET `subname` = 'Armor Quartermaster'               WHERE `entry` = 12795;
UPDATE `creature_template` SET `subname` = 'Mount Quartermaster'               WHERE `entry` = 12796;
UPDATE `creature_template` SET `subname` = 'Arena Vendor'                      WHERE `entry` = 20278;

UPDATE `creature_template_addon` SET `mount` = 0 WHERE `entry` = 12796;

DELETE FROM `creature` WHERE `guid` IN (125688, 125690, 125694, 125695, 612792, 612793, 612794, 612795, 612796, 612799, 614581, 623396, 623447, 626397);
DELETE FROM `creature` WHERE `id1`  IN (32383, 32385, 34036, 34037, 34038, 34058, 34059, 34060);
DELETE FROM `creature` WHERE `guid` IN (620278, 626396); -- 00_cleanup
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+1 AND @CGUID+18;

INSERT INTO `creature` (`guid`, `id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES 
--
(612799, 12799, 1, 1632.21, -4262.19, 49.027, 3.63029, 430),        -- Sergeant Ba'sha <Accessories Quartermaster>, Vanilla
(612792, 12792, 1, 1669.78, -4200.1, 56.3815, 3.61023, 180),        -- Lady Palanseer <Armor Quartermaster>, Vanilla
(626397, 26397, 1, 1669.78, -4200.1, 56.3815, 3.61023, 180),        -- Lady Palanseer <Armor Quartermaster>, TBC
(612793, @Stonehide, 1, 1657.6, -4191.97, 56.383, 4.52365, 180),    -- Brave Stonehide <Officer Accessories Quartermaster>, Vanilla
(125690, 12793, 1, 1672.24, -4206.81, 56.3827, 3.30568, 180),       -- Brave Stonehide <Officer Accessories Quartermaster>, TBC
(612794, @Zarg, 1, 1641.65, -4197.52, 56.3823, 5.41219, 180),       -- Stone Guard Zarg <Food and Drink>, Vanilla
(125688, 12794, 1, 1641.65, -4197.52, 56.3823, 5.41219, 180),       -- Stone Guard Zarg <Weapons Quartermaster>, TBC
(612795, @Hola, 1, 1673.9, -4216, 56.3826, 2.93578, 180),           -- First Sergeant Hola'mahi <Reagent Vendor>, Vanilla
(125695, 12795, 1, 1673.9, -4216, 56.3826, 2.93578, 180),           -- First Sergeant Hola'mahi <Armor Quartermaster>, TBC
(614581, 14581, 1, 1644.52, -4195.26, 56.3826, 5.43078, 180),       -- Sergeant Thunderhorn <Weapons Quartermaster>, Vanilla
(626396, 26396, 1, 1669.09, -4196.78, 56.4831, 4.10416, 180),       -- Sergeant Thunderhorn <Weapons Quartermaster>, TBC

(125694, 12796, 1, 1674.43, -4212.55, 56.3829, 3.00254, 180),       -- Raider Bork <Mount Quartermaster>, TBC
(612796, @Bork, 1, 1674.43, -4212.55, 56.3829, 3.00254, 180),       -- Raider Bork <Mount Quartermaster>, Vanilla
(623447, 23447, 1, 1644.52, -4195.26, 56.3826, 5.43078, 180),       -- Sergeant Kien <Armor Quartermaster>, TBC

(@CGUID+1, 20278, 1, 1654.25, -4189.82, 56.3825, 4.71787, 180),     -- Vixton Pinchwhistle <Arena Vendor>, TBC, Season 1
(@CGUID+2, @Vixton, 1, 1654.25, -4189.82, 56.3825, 4.71787, 180),   -- Vixton Pinchwhistle <Arena Vendor>, TBC, Season 2
(@CGUID+3, 23396, 1, 1660.37, -4190.74, 56.3817, 4.54116, 180),     -- Krixel Pinchwhistle <Arena Vendor>, TBC, Season 2
(@CGUID+4, 24392, 1, 1654.25, -4189.82, 56.3825, 4.71787, 180),     -- Leeni "Smiley" Smalls <Arena Vendor>, TBC, Season 3
(@CGUID+5, @Krixel, 1, 1660.37, -4190.74, 56.3817, 4.54116, 180),   -- Krixel Pinchwhistle <Arena Vendor>, TBC, Season 3
(@CGUID+6, @Leeni, 1, 1654.25, -4189.82, 56.3825, 4.71787, 180),    -- Leeni "Smiley" Smalls <Arena Vendor>, TBC, Season 4
(@CGUID+7, 26352, 1, 1660.37, -4190.74, 56.3817, 4.54116, 180),     -- Big Zokk Torquewrench <Arena Vendor>, TBC, Season 4

(@CGUID+11, 32383, 1, 1669.09, -4196.78, 56.3827, 4.10416, 180),    -- Sergeant Thunderhorn, WotLK Season 5
(@CGUID+12, 34036, 1, 1669.09, -4196.78, 56.3827, 4.10416, 180),    -- Sergeant Thunderhorn, WotLK Season 6
(@CGUID+13, 34037, 1, 1669.09, -4196.78, 56.3827, 4.10416, 180),    -- Sergeant Thunderhorn, WotLK Season 7
(@CGUID+14, 34038, 1, 1669.09, -4196.78, 56.3827, 4.10416, 180),    -- Sergeant Thunderhorn, WotLK Season 8
(@CGUID+15, 32385, 1, 1673.07, -4201.89, 56.3826, 3.62927, 180),    -- Doris Volanthius, WotLK Season 5
(@CGUID+16, 34058, 1, 1673.07, -4201.89, 56.3826, 3.62927, 180),    -- Doris Volanthius, WotLK Season 6
(@CGUID+17, 34059, 1, 1673.07, -4201.89, 56.3826, 3.62927, 180),    -- Doris Volanthius, WotLK Season 7
(@CGUID+18, 34060, 1, 1673.07, -4201.89, 56.3826, 3.62927, 180);    -- Doris Volanthius, WotLK Season 8

UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc_pvp'  WHERE `guid` IN (626396); -- only visible during tbc
UPDATE `creature` SET `ScriptName` = 'npc_ipp_pre_tbc'  WHERE `guid` IN (612792, 612799, 614581); -- only visible during vanilla
UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc'      WHERE `guid` IN (125685, 125688, 125690, 125694, 125695, 612788, 623447, 626397); -- visible during tbc & wotlk

UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc_S1'   WHERE `guid` IN (@CGUID+1);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc_S2'   WHERE `guid` IN (@CGUID+2, @CGUID+3);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc_S3'   WHERE `guid` IN (@CGUID+4, @CGUID+5);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc_S4'   WHERE `guid` IN (@CGUID+6, @CGUID+7);

UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S5' WHERE `guid` IN (@CGUID+11, @CGUID+15);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S6' WHERE `guid` IN (@CGUID+12, @CGUID+16);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S7' WHERE `guid` IN (@CGUID+13, @CGUID+17);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S8' WHERE `guid` IN (@CGUID+14, @CGUID+18);

/* Hide certain vendor items until the player has reached the progression tier for them */
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 23 AND `SourceGroup` IN (12796, 12792, 26397, 14581, 26396) AND `ConditionValue1` IN (66002, 66006, 66008);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
--
(23, 12792, 16485, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Silk Footwraps if the player has NOT completed PROGRESSION_AQ'), -- mage
(23, 12792, 16487, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Silk Gloves if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 16489, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Silk Hood if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 16490, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Silk Pants if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 16491, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Silk Robes if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 16492, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Silk Shoulderpads if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 16494, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Dragonhide Boots if the player has NOT completed PROGRESSION_AQ'), -- druid
(23, 12792, 16496, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Dragonhide Gauntlets if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 16501, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Dragonhide Spaulders if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 16502, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Dragonhide Trousers if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 16503, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Dragonhide Helm if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 16504, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Dragonhide Helm if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 16498, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Leather Treads if the player has NOT completed PROGRESSION_AQ'), -- rogue
(23, 12792, 16499, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Leather Vices if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 16505, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Leather Hauberk if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 16506, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Leather Headguard if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 16507, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Leather Mantle if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 16508, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Leather Leggings if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 16509, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Plate Boots if the player has NOT completed PROGRESSION_AQ'), -- warrior
(23, 12792, 16510, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Plate Gloves if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 16513, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Plate Armor if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 16514, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Plate Headguard if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 16515, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Plate Legguards if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 16516, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Plate Pauldrons if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 16518, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Mail Walkers if the player has NOT completed PROGRESSION_AQ'), -- shaman
(23, 12792, 16519, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Mail Grips if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 16521, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Mail Helm if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 16522, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Mail Chestpiece if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 16523, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Mail Leggings if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 16524, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Mail Shoulders if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 16525, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Chain Breastplate if the player has NOT completed PROGRESSION_AQ'), -- hunter
(23, 12792, 16526, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Chain Headguard if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 16527, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Chain Leggings if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 16528, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Chain Pauldrons if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 16530, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Chain Gauntlets if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 16531, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Chain Boots if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 17570, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Dreadweave Hood if the player has NOT completed PROGRESSION_AQ'), -- warlock
(23, 12792, 17571, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Dreadweave Leggings if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 17572, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Dreadweave Robe if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 17573, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Dreadweave Shoulders if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 17576, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Dreadweave Boots if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 17577, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Dreadweave Gloves if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 17610, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Satin Cowl if the player has NOT completed PROGRESSION_AQ'), -- priest
(23, 12792, 17611, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Satin Trousers if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 17612, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Satin Vestments if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 17613, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Satin Shoulderpads if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 17616, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Satin Boots if the player has NOT completed PROGRESSION_AQ'),
(23, 12792, 17617, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Satin Gloves if the player has NOT completed PROGRESSION_AQ'),
--
(23, 12792, 22860, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Silk Walkers if the player has completed PROGRESSION_AQ'),
(23, 12792, 22870, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Silk Handwraps if the player has completed PROGRESSION_AQ'),
(23, 12792, 22883, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Silk Legguards if the player has completed PROGRESSION_AQ'),
(23, 12792, 22886, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Silk Tunic if the player has completed PROGRESSION_AQ'),
(23, 12792, 23263, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Silk Cowl if the player has completed PROGRESSION_AQ'),
(23, 12792, 23264, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Silk Mantle if the player has completed PROGRESSION_AQ'),
(23, 12792, 22843, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Chain Greaves if the player has completed PROGRESSION_AQ'),
(23, 12792, 22862, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Chain Vices if the player has completed PROGRESSION_AQ'),
(23, 12792, 22874, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Chain Hauberk if the player has completed PROGRESSION_AQ'),
(23, 12792, 22875, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Chain Legguards if the player has completed PROGRESSION_AQ'),
(23, 12792, 23251, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Chain Helm if the player has completed PROGRESSION_AQ'),
(23, 12792, 23252, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Chain Shoulders if the player has completed PROGRESSION_AQ'),
(23, 12792, 22852, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Dragonhide Treads if the player has completed PROGRESSION_AQ'),
(23, 12792, 22863, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Dragonhide Grips if the player has completed PROGRESSION_AQ'),
(23, 12792, 22877, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Dragonhide Chestpiece if the player has completed PROGRESSION_AQ'),
(23, 12792, 22878, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Dragonhide Leggings if the player has completed PROGRESSION_AQ'),
(23, 12792, 23253, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Dragonhide Headguard if the player has completed PROGRESSION_AQ'),
(23, 12792, 23254, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Dragonhide Shoulders if the player has completed PROGRESSION_AQ'),
(23, 12792, 22855, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Dreadweave Walkers if the player has completed PROGRESSION_AQ'),
(23, 12792, 22865, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Dreadweave Handwraps if the player has completed PROGRESSION_AQ'),
(23, 12792, 22881, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Dreadweave Legguards if the player has completed PROGRESSION_AQ'),
(23, 12792, 22884, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Dreadweave Tunic if the player has completed PROGRESSION_AQ'),
(23, 12792, 23255, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Dreadweave Cowl if the player has completed PROGRESSION_AQ'),
(23, 12792, 23256, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Dreadweave Spaulders if the player has completed PROGRESSION_AQ'),
(23, 12792, 22856, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Leather Walkers if the player has completed PROGRESSION_AQ'),
(23, 12792, 22864, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Leather Grips if the player has completed PROGRESSION_AQ'),
(23, 12792, 22879, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Leather Chestpiece if the player has completed PROGRESSION_AQ'),
(23, 12792, 22880, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Leather Legguards if the player has completed PROGRESSION_AQ'),
(23, 12792, 23257, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Leather Helm if the player has completed PROGRESSION_AQ'),
(23, 12792, 23258, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Leather Shoulders if the player has completed PROGRESSION_AQ'),
(23, 12792, 22857, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Mail Greaves if the player has completed PROGRESSION_AQ'),
(23, 12792, 22867, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Mail Vices if the player has completed PROGRESSION_AQ'),
(23, 12792, 22876, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Mail Hauberk if the player has completed PROGRESSION_AQ'),
(23, 12792, 22887, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Mail Legguards if the player has completed PROGRESSION_AQ'),
(23, 12792, 23259, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Mail Headguard if the player has completed PROGRESSION_AQ'),
(23, 12792, 23260, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Mail Pauldrons if the player has completed PROGRESSION_AQ'),
(23, 12792, 22858, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Plate Greaves if the player has completed PROGRESSION_AQ'),
(23, 12792, 22868, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Plate Gauntlets if the player has completed PROGRESSION_AQ'),
(23, 12792, 22872, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Plate Hauberk if the player has completed PROGRESSION_AQ'),
(23, 12792, 22873, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Plate Leggings if the player has completed PROGRESSION_AQ'),
(23, 12792, 23243, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Plate Shoulders if the player has completed PROGRESSION_AQ'),
(23, 12792, 23244, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Plate Helm if the player has completed PROGRESSION_AQ'),
(23, 12792, 22859, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Satin Walkers if the player has completed PROGRESSION_AQ'),
(23, 12792, 22869, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Satin Handwraps if the player has completed PROGRESSION_AQ'),
(23, 12792, 22882, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Satin Legguards if the player has completed PROGRESSION_AQ'),
(23, 12792, 22885, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Satin Tunic if the player has completed PROGRESSION_AQ'),
(23, 12792, 23261, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Satin Hood if the player has completed PROGRESSION_AQ'),
(23, 12792, 23262, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Satin Mantle if the player has completed PROGRESSION_AQ'),
--
(23, 12792, 16533, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Silk Cowl until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16534, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Silk Trousers until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16535, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Silk Raiment until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16536, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Silk Amice until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16539, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Silk Boots until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16540, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Silk Handguards until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16541, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Plate Armor until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16542, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Plate Headpiece until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16543, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Plate Leggings until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16544, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Plate Shoulders until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16545, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Plate Boots until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16548, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Plate Gauntlets until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16549, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Dragonhide Hauberk until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16550, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Dragonhide Helmet until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16551, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Dragonhide Epaulets until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16552, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Dragonhide Leggings until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16554, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Dragonhide Boots until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16555, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Dragonshide Gloves until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16558, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Leather Treads until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16560, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Leather Mitts until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16561, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Leather Helm until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16562, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Leather Spaulders until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16563, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Leather Breastplate until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16564, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Leather Legguards until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16565, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Chain Chestpiece until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16566, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Chain Helmet until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16567, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Chain Legguards until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16568, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Chain Shoulders until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16569, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Chain Sabatons until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16571, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Chain Gloves until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16573, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Mail Boots until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16574, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Mail Gauntlets until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16577, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Mail Armor until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16578, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Mail Helm until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16579, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Mail Leggings until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 16580, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Mail Spaulders until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 17586, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Dreadweave Boots until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 17588, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Dreadweave Gloves until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 17590, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Dreadweave Mantle until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 17591, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Dreadweave Hood until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 17592, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Dreadweave Robe until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 17593, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Dreadweave Pants until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 17618, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Satin Boots until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 17620, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Satin Gloves until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 17622, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Satin Mantle until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 17623, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Satin Cowl until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 17624, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Satin Robes until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 17625, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Satin Leggings until the player has completed PROGRESSION_ONYXIA'),    
(23, 12792, 29612, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Lamellar Boots until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 29613, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Lamellar Gloves until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 29614, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Lamellar Legplates until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 29615, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Lamellar Chestplate until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 29616, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Lamellar Faceguard until the player has completed PROGRESSION_ONYXIA'),
(23, 12792, 29617, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Lamellar Pauldrons until the player has completed PROGRESSION_ONYXIA'),    
--
(23, 14581, 16345, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Blade until the player has completed PROGRESSION_ONYXIA'),
(23, 14581, 18826, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Shield Wall until the player has completed PROGRESSION_ONYXIA'),
(23, 14581, 18828, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Cleaver until the player has completed PROGRESSION_ONYXIA'),
(23, 14581, 18831, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Battle Axe until the player has completed PROGRESSION_ONYXIA'),
(23, 14581, 18835, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Recurve until the player has completed PROGRESSION_ONYXIA'),
(23, 14581, 18837, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Crossbow until the player has completed PROGRESSION_ONYXIA'),
(23, 14581, 18840, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Razor until the player has completed PROGRESSION_ONYXIA'),
(23, 14581, 18844, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Right Claw until the player has completed PROGRESSION_ONYXIA'),
(23, 14581, 18848, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Left Claw until the player has completed PROGRESSION_ONYXIA'),
(23, 14581, 18860, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Street Sweeper until the player has completed PROGRESSION_ONYXIA'),
(23, 14581, 18866, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Bludgeon until the player has completed PROGRESSION_ONYXIA'),
(23, 14581, 18868, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Pulverizer until the player has completed PROGRESSION_ONYXIA'),
(23, 14581, 18871, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Pig Sticker until the player has completed PROGRESSION_ONYXIA'),
(23, 14581, 18874, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords War Staff until the player has completed PROGRESSION_ONYXIA'),
(23, 14581, 18877, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Greatsword until the player has completed PROGRESSION_ONYXIA'),
(23, 14581, 23464, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Battle Mace until the player has completed PROGRESSION_ONYXIA'),
(23, 14581, 23465, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Destroyer until the player has completed PROGRESSION_ONYXIA'),
(23, 14581, 23466, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Spellblade until the player has completed PROGRESSION_ONYXIA'),
(23, 14581, 23467, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Quickblade until the player has completed PROGRESSION_ONYXIA'),
(23, 14581, 23468, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Tome of Destruction until the player has completed PROGRESSION_ONYXIA'),
(23, 14581, 23469, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Tome of Mending until the player has completed PROGRESSION_ONYXIA'),
--
(23, 12796, 34129, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Raider Bork will not sell Swift Warstrider until the player has completed PROGRESSION_PRE_TBC');


-- WotLK pvp vendors
DELETE FROM `creature` WHERE `id1` IN 
(34043,  -- Lady Palanseer <Armor Quartermaster>
 34063); -- Blood Guard Zar'shi <Northrend Armor Quartermaster>

/* NPC Garyl - Remove non-Vanilla Tabards */
DELETE FROM `npc_vendor` WHERE `entry`= 5188 AND `item` IN (15197, 15199, 19031, 19505, 24004, 31773, 31775, 31776, 31777, 31778, 31779, 31780, 31781, 31804, 32445, 32828, 35221);

-- Nogg Quest Flags fix
UPDATE `creature_template` SET `npcflag` = `npcflag` | 2 WHERE `entry` = 3412;

-- Quest: Return to Witch Doctor Uzer'i
UPDATE `quest_template` SET `LogDescription`   = "Deliver Neeru's Herb Pouch to Witch Doctor Uzer'i in Feralas." WHERE `ID` = 3122;
UPDATE `creature_queststarter` SET `id` = 3216 WHERE `quest` = 3122;

-- Quest: A Strange Request to use Vanilla NPCs
UPDATE `quest_template` SET 
`LogDescription`   = "Take the Shrunken Head to Neeru Fireblade in Orgrimmar.", 
`QuestDescription` = "Neeru Fireblade in Orgrimmar has what I need to get started here! He has mixed up a concoction that I need for my... well, you'll see.$B$B
                      Off with you now -- to Orgrimmar. Here, take this with you. It's a shrunken head that I promised Neeru in exchange for the herbs. 
                      It's the head of some poor dwarf I ventured across in the forest. I'm sure Neeru will be pleased.$B$B
                      You'll find Neeru in the Cleft of Shadow." WHERE `ID` = 3121;

UPDATE `creature_questender`   SET `id` = 3216 WHERE `quest` = 3121;

-- smart scripts
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (10540, 14720);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (10540, 14720);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(10540, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, 0, 4, 5881, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Vol jin - On Aggro - Play Sound (No Repeat)'),
--
(14720, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 9347, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Saurfang - On Aggro - Cast Mortal Strike trigger'),
(14720, 0, 1, 2, 32, 0, 100, 0, 2000, 9999, 0, 0, 0, 0, 11, 26339, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,   'Saurfang - On receiving high damage - Cast Saurfang Rage'), -- should be critical damage
(14720, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Saurfang - On Cast Power Saurfang Rage - Say Line 0'),
(14720, 0, 3, 0, 9, 0, 100, 0, 0, 0, 25000, 25000, 8, 25, 11, 15749, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Saurfang - Within 8-25 Range - Cast Shield Charge'),
(14720, 0, 4, 0, 12, 0, 100, 0, 0, 20, 2500, 3500, 0, 0, 11, 7160, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,   'Saurfang - Target Between 0-20% Health - Cast Execute'),
(14720, 0, 5, 0, 5, 0, 100, 0, 5000, 5000, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Saurfang - On Kill - Say Line 1');

DELETE FROM `creature_text` WHERE `CreatureID` IN (14720);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(14720, 0, 0, '%s\'s eyes glow red for a brief moment.', 16, 0, 100, 0, 0, 0, 11563, 0, 'Saurfang Rage'),
(14720, 1, 0, 'Is that the best you can do?',            16, 0, 100, 0, 0, 0, 11564, 0, 'Saurfang on Kill'); 

UPDATE `creature_template` SET `subname` = 'Journeyman Alchemist'     WHERE `entry` = 1246;  -- Vosur Brakthel <Journeyman Alchemist>
UPDATE `creature_template` SET `subname` = 'Journeyman Leatherworker' WHERE `entry` = 1466;  -- Gretta Finespindle <Journeyman Leatherworker>
UPDATE `creature_template` SET `subname` = 'Journeyman Tailor'        WHERE `entry` = 1703;  -- Uthrar Threx <Journeyman Tailor>
UPDATE `creature_template` SET `subname` = 'Expert Blacksmith'        WHERE `entry` = 10276; -- Rotgath Stonebeard <Expert Blacksmith>
UPDATE `creature_template` SET `subname` = 'Journeyman Blacksmith'    WHERE `entry` = 10277; -- Groum Stonebeard <Journeyman Blacksmith>
UPDATE `creature_template` SET `subname` = 'Journeyman Engineer'      WHERE `entry` = 11028; -- Jemma Quikswitch <Journeyman Engineer>
UPDATE `creature_template` SET `subname` = 'Expert Engineer'          WHERE `entry` = 11029; -- Trixie Quikswitch <Expert Engineer>
UPDATE `creature_template` SET `subname` = 'Journeyman Enchanter'     WHERE `entry` = 11065; -- Thonys Pillarstone <Journeyman Enchanter>

UPDATE `creature_template` SET `npcflag` = 81 WHERE `entry` IN (1246, 1466, 1703, 10276, 10277, 11028, 11029, 11065); -- `trainer_type` = 2
UPDATE `creature_template` SET `type_flags` = 134217728 WHERE `entry` IN (5157, 10276, 11029);

SET @TRAINER_ID   := 600;

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (1246, 1466, 1703, 5150, 10276, 10277, 11028, 11029, 11065);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
(1246,  @TRAINER_ID+11), -- Vosur Brakthel <Journeyman Alchemist>
(1466,  @TRAINER_ID+31), -- Gretta Finespindle <Journeyman Leatherworker>
(1703,  @TRAINER_ID+36), -- Uthrar Threx <Journeyman Tailor>
(5150,  @TRAINER_ID+45), -- Nissa Firestone <First Aid Trainer> 
(10277, @TRAINER_ID+16), -- Groum Stonebeard <Journeyman Blacksmith>
(10276, @TRAINER_ID+17), -- Rotgath Stonebeard <Expert Blacksmith>
(11028, @TRAINER_ID+26), -- Jemma Quikswitch <Journeyman Engineer>
(11029, @TRAINER_ID+27), -- Trixie Quikswitch <Expert Engineer>
(11065, @TRAINER_ID+21); -- Thonys Pillarstone <Journeyman Enchanter>

DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (2742, 2761, 4116, 4137, 4147, 4154, 4160, 4182, 4264);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`) VALUES 
(2742, 0, 3, 'Train me.', 3266, 5, 16), -- Groum Stonebeard <Journeyman Blacksmith>
(2761, 0, 3, 'Train me.', 3266, 5, 16), -- Rotgath Stonebeard <Expert Blacksmith>
(4116, 0, 3, 'Train me.', 3266, 5, 16), -- Vosur Brakthel <Journeyman Alchemist>
(4137, 0, 3, 'Train me.', 3266, 5, 16), -- Jemma Quikswitch <Journeyman Engineer>
(4147, 0, 3, 'Train me.', 3266, 5, 16), -- Trixie Quikswitch <Expert Engineer>
(4154, 0, 3, 'Train me.', 3266, 5, 16), -- Thonys Pillarstone <Journeyman Enchanter>
(4160, 0, 3, 'Train me.', 3266, 5, 16), -- Gimble Thistlefuzz <Expert Enchanter>
(4182, 0, 3, 'Train me.', 3266, 5, 16), -- Gretta Finespindle <Journeyman Leatherworker>
(4264, 0, 3, 'Train me.', 3266, 5, 16); -- Uthrar Threx <Journeyman Tailor>

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceEntry` = 0 AND `ConditionTypeOrReference` = 7 AND `SourceGroup` IN (593, 2761, 4123, 4147, 4150, 4160, 4205, 4345);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 593,  0, 7, 164, 125, 'Show menu if blacksmithing is 125 or higher'), -- Bengus Deepforge <Artisan Blacksmith>
(15, 2761, 0, 7, 164, 50,  'Show menu if blacksmithing is 50 or higher'),  -- Rotgath Stonebeard <Expert Blacksmith>
(15, 4123, 0, 7, 171, 50,  'Show menu if alchemy is 50 or higher'),        -- Tally Berryfizz <Expert Alchemist>
(15, 4147, 0, 7, 202, 50,  'Show menu if engineering is 50 or higher'),    -- Trixie Quikswitch <Expert Engineer>
(15, 4150, 0, 7, 202, 125, 'Show menu if engineering is 125 or higher'),   -- Springspindle Fizzlegear <Artisan Engineer>
(15, 4160, 0, 7, 333, 50,  'Show menu if enchanting is 50 or higher'),     -- Gimble Thistlefuzz <Expert Enchanter>
(15, 4205, 0, 7, 165, 50,  'Show menu if leatherworking is 50 or higher'), -- Fimble Finespindle <Expert Leatherworker>
(15, 4345, 0, 7, 197, 50,  'Show menu if tailoring is 50 or higher');      -- Jormund Stonebrow <Expert Tailor>

-- battlemasters
DELETE FROM `creature` WHERE `id1` IN (857, 5113, 5115, 6114, 12197, 14982, 19915, 34991, 35007, 35600) OR `guid` = 86263;
INSERT INTO `creature` (`guid`, `id1`, `map`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `curhealth`, `curmana`) VALUES 
(600857, 857,   0, 1, -5039.19, -1266.88, 510.326, 3.92579,  120, 1, 0), -- Donal Osgood <Arathi Basin Battlemaster>
(2019,   5113,  0, 1, -5047.54, -1269.69, 510.408, 6.24828,  540, 1, 0), -- Kelv Sternhammer <Warrior Trainer>
(2020,   5115,  0, 1, -5043.84, -1274.68, 510.324, 1.33007,  490, 1, 0), -- Daera Brightspear <Hunter Trainer>
(2018,   6114,  0, 1, -5046.48, -1273,    510.324, 0.693899, 430, 1, 0), -- Muren Stormpike
(612197, 12197, 0, 1, -5046.1,  -1266.04, 510.325, 5.48483,  120, 1, 0), -- Glordrum Steelbeard <Alterac Valley Battlemaster>
(614982, 14982, 0, 1, -5039.09, -1272.92, 510.324, 2.46114,  120, 1, 0), -- Lylandris <Warsong Gulch Battlemaster>
(86263,  15351, 0, 0, -5042.4,  -1265.32, 510.325, 4.62873,  300, 1, 0), -- Alliance Brigadier General
(81,     19915, 0, 0, -5045.42, -1276.81, 510.325, 1.43228,  300, 1, 0), -- Max Xim <Arena Battlemaster>
(88250,  34991, 0, 1, -5038.09, -1269.94, 510.325, 3.16003,  120, 1, 0), -- Borim Goldhammer <Battlemaster>
(88249,  35007, 0, 1, -5040.18, -1263.17, 510.325, 4.46067,  120, 1, 1), -- Lixa Felflinger <Battlemaster>
(88248,  35600, 0, 1, -5035.64, -1267.93, 510.324, 3.29044,  300, 1, 1); -- Arcanist Laniria <Wintergrasp Battle-Mage>

UPDATE `creature_template` SET `flags_extra` = 2, `ScriptName` = 'npc_ipp_wotlk' WHERE `entry` IN (34991, 35007, 35600);

UPDATE `creature_template` SET `subname` = 'Journeyman Alchemist'     WHERE `entry` = 11041; -- Milla Fairancora <Journeyman Alchemist>
UPDATE `creature_template` SET `subname` = 'Expert Alchemist'         WHERE `entry` = 11042; -- Sylvanna Forestmoon <Expert Alchemist>
UPDATE `creature_template` SET `subname` = 'Journeyman Tailor'        WHERE `entry` = 11050; -- Trianna <Journeyman Tailor>
UPDATE `creature_template` SET `subname` = 'Journeyman Enchanter'     WHERE `entry` = 11070; -- Lalina Summermoon <Journeyman Enchanter>
UPDATE `creature_template` SET `subname` = 'Journeyman Leatherworker' WHERE `entry` = 11083; -- Darianna <Journeyman Leatherworker>
UPDATE `creature_template` SET `subname` = 'Expert Leatherworker'     WHERE `entry` = 11081; -- Faldron <Expert Leatherworker>

UPDATE `creature_template` SET `npcflag` = 81 WHERE `entry` IN (11041, 11042, 11050, 11070, 11081, 11083); -- `trainer_type` = 2
UPDATE `creature_template` SET `type_flags` = 134217728 WHERE `entry` IN (4212, 11042, 11081);

SET @TRAINER_ID   := 600;

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (11041, 11042, 11050, 11070, 11081, 11083);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
(11041, @TRAINER_ID+11), -- Milla Fairancora <Journeyman Alchemist>
(11042, @TRAINER_ID+12), -- Sylvanna Forestmoon <Expert Alchemist>
(11050, @TRAINER_ID+36), -- Trianna <Journeyman Tailor>
(11070, @TRAINER_ID+21), -- Lalina Summermoon <Journeyman Enchanter>
(11081, @TRAINER_ID+32), -- Faldron <Expert Leatherworker>
(11083, @TRAINER_ID+31); -- Darianna <Journeyman Leatherworker>

DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (4114, 4125, 4155, 4181, 4204, 4241, 4269);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`) VALUES
(4114, 0, 3, 'Train me.', 3266, 5, 16), -- Milla Fairancora <Journeyman Alchemist>
(4125, 0, 3, 'Train me.', 3266, 5, 16), -- Sylvanna Forestmoon <Expert Alchemist>
(4155, 0, 3, 'Train me.', 3266, 5, 16), -- Lalina Summermoon <Journeyman Enchanter>
(4181, 0, 3, 'Train me.', 3266, 5, 16), -- Darianna <Journeyman Leatherworker>
(4204, 0, 3, 'Train me.', 3266, 5, 16), -- Faldron <Expert Leatherworker>
(4241, 0, 3, 'Train me.', 3266, 5, 16), -- Telonis <Artisan Leatherworker>
(4269, 0, 3, 'Train me.', 3266, 5, 16); -- Trianna <Journeyman Tailor>

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceEntry` = 0 AND `ConditionTypeOrReference` = 7 AND `SourceGroup` IN (4125, 4131, 4163, 4204, 4241, 4349);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 4125, 0, 7, 171, 50,  'Show menu if alchemy is 50 or higher'),         -- Sylvanna Forestmoon <Expert Alchemist>
(15, 4131, 0, 7, 171, 125, 'Show menu if alchemy is 125 or higher'),        -- Ainethil <Artisan Alchemist>
(15, 4163, 0, 7, 333, 50,  'Show menu if enchanting is 50 or higher'),      -- Taladan <Expert Enchanter>
(15, 4204, 0, 7, 165, 50,  'Show menu if leatherworking is 50 or higher'),  -- Faldron <Expert Leatherworker>
(15, 4241, 0, 7, 165, 125, 'Show menu if leatherworking is 125 or higher'), -- Telonis <Artisan Leatherworker>
(15, 4349, 0, 7, 197, 50,  'Show menu if tailoring is 50 or higher');       -- Me'lynn <Expert Tailor>

-- Dannelor <First Aid Trainer>
DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (4211);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES (4211, @TRAINER_ID+45);

-- Batllemasters
DELETE FROM `creature` WHERE `id1` IN (907, 2302, 5118);
INSERT INTO `creature` (`guid`, `id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES
(600907, 907,  1, 9975.14, 2324.34, 1330.87, 0.0698132, 600), -- Keras Wolfheart <Arathi Basin Battlemaster>
(602302, 2302, 1, 9977.6, 2313.53, 1330.87, 0.698132, 600),   -- Aethalas <Warsong Gulch Battlemaster>
(605118, 5118, 1, 9923.77, 2323.84, 1330.87, 1.6057, 600);    -- Brogun Stoneshield <Alterac Valley Battlemaster>

UPDATE `creature_template` SET `flags_extra` = 2, `ScriptName` = 'npc_ipp_wotlk' WHERE `entry` IN (34988, 35023, 35599);

-- smart scripts
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (3516, 7999, 14378, 14379, 14380);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (3516, 7999, 14378, 14379, 14380);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(3516, 0, 0, 0, 0, 0, 100, 0, 25000, 25000, 30000, 30000, 0, 0, 11, 20699, 0, 0, 0, 0, 0, 24, 30, 0, 0, 0, 0, 0, 0, 0, 'Arch Druid Fandral Staghelm - Within 0-30 Range - Cast Entangling Roots'),
(3516, 0, 1, 0, 14, 0, 100, 0, 5000, 40, 15000, 15000, 0, 0, 11, 20701, 32, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,     'Arch Druid Fandral Staghelm - Friendly Missing Health - Cast Rejuvenation'),
(3516, 0, 2, 0, 0, 0, 100, 0, 15000, 15000, 25000, 25000, 0, 0, 11, 20702, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Arch Druid Fandral Staghelm - In Combat - Cast Summon Treant Allies'),
(3516, 0, 3, 0, 0, 0, 100, 0, 27000, 27000, 30000, 30000, 0, 0, 11, 27530, 0, 0, 0, 0, 0, 24, 30, 0, 0, 0, 0, 0, 0, 0, 'Arch Druid Fandral Staghelm - Within 0-30 Range - Cast Hurricane'),
(3516, 0, 4, 0, 0, 0, 100, 0, 5000, 10000, 5000, 10000, 0, 0, 11, 20698, 0, 0, 0, 0, 0, 24, 45, 0, 0, 0, 0, 0, 0, 0,   'Arch Druid Fandral Staghelm - Within 0-45 Range - Cast Wrath'),
--
(7999, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, 0, 4, 5885, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Tyrande Whisperwind - On Aggro - Play Sound (No Repeat)'),
--
(14378, 0, 0, 0, 9, 0, 100, 0, 3000, 4000, 12000, 13000, 0, 5, 11, 15572, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Huntress Skymane - Within 0-5 Range - Cast Sunder Armor'),
(14379, 0, 0, 0, 9, 0, 100, 0, 3000, 4000, 12000, 13000, 0, 5, 11, 15572, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Huntress Ravenoak - Within 0-5 Range - Cast Sunder Armor'),
(14380, 0, 0, 0, 9, 0, 100, 0, 3000, 4000, 12000, 13000, 0, 5, 11, 15572, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Huntress Leafrunner - Within 0-5 Range - Cast Sunder Armor');

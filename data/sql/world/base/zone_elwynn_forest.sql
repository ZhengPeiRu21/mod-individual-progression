/* smart scripts */
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (118, 285, 525, 735);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(6, 30, 38, 40, 43, 46, 61, 79, 80, 94, 97, 99, 100, 103, 113, 116, 257, 327, 330, 448, 473, 474, 475, 476, 478, 524, 732, 881);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(6, 30, 38, 40, 43, 46, 61, 79, 80, 94, 97, 99, 100, 103, 113, 116, 118, 257, 285, 327, 330, 448, 473, 474, 475, 476, 478, 524, 525, 732, 735, 881);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(6, 0, 0, 0, 4, 0, 30, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                            'Kobold Vermin - On Aggro - Say Line 0'),
(30, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 11959, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Forest Spider - In Combat - Cast Poison Proc'),
(38, 0, 0, 0, 4, 0, 30, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                           'Defias Thug - On Aggro - Say Line 0'),
(40, 0, 0, 0, 4, 0, 30, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                           'Kobold Miner - On Aggro - Say Line 0'),
(40, 0, 1, 0, 0, 0, 100, 0, 4000, 14000, 38000, 42000, 0, 0, 11, 6016, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Kobold Miner - Within 0-5 Range - Cast Pierce Armor'),
(43, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 11959, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Mine Spider - On Respawn - Cast Poison Proc'),
(46, 0, 0, 0, 2, 0, 100, 1, 0, 40, 0, 0, 0, 0, 11, 3368, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Murloc Forager - Between 0-40% Health - Cast Drink Minor Potion'),
(61, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                          'Thuros Lightfingers - On Aggro - Say Line 0)'),
(79, 0, 0, 0, 4, 0, 40, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                           'Narg the Taskmaster - On Aggro - Say Line 0)'), 
(79, 0, 1, 0, 0, 0, 100, 0, 2000, 2000, 18000, 18000, 0, 0, 11, 9128, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Narg the Taskmaster - In Combat - Cast Battle Shout'),
(80, 0, 0, 0, 4, 0, 30, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                           'Kobold Laborer - On Aggro - Say Line 0'),
(94, 0, 0, 0, 67, 0, 100, 0, 1000, 1000, 2000, 7000, 0, 5, 11, 53, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Defias Cutpurse - Behind Target - Cast Backstab'),
(97, 0, 0, 0, 4, 0, 30, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                           'Riverpaw Runt - On Aggro - Say Line 0'),
(97, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                        'Riverpaw Runt - Between 0-15% Health - Flee For Assist (No Repeat)'),
(99, 0, 0, 0, 9, 0, 100, 0, 0, 0, 10000, 10000, 0, 5, 11, 1776, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Morgaine the Sly - Within 0-5 Range - Cast Gouge'),
(99, 0, 1, 0, 0, 0, 100, 0, 8000, 8000, 30000, 40000, 0, 0, 11, 11918, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Morgaine the Sly - In Combat - Cast Poison'),
(99, 0, 2, 0, 67, 0, 100, 0, 1000, 1000, 10000, 10000, 0, 5, 11, 7159, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Morgaine the Sly - Behind Target - Cast Backstab'),
(100, 0, 1, 0, 0, 0, 100, 0, 8000, 12000, 15000, 20000, 0, 0, 11, 3391, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Gruff Swiftbite - In Combat - Cast Thrash'),
(103, 0, 0, 1, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7164, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Garrick Padfoot - On Aggro - Cast Defensive Stance'),
(103, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Garrick Padfoot - On Aggro - Say Line 0'),
(113, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Stonetusk Boar - On Aggro - Cast Rushing Charge'),
(116, 0, 0, 0, 4, 0, 25, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                          'Defias Bandit - On Aggro - Say Line 0'),
(116, 0, 1, 0, 0, 0, 65, 0, 4000, 4000, 5000, 9000, 0, 0, 11, 8646, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,         'Defias Bandit - Within 0-5 Range - Cast Snap Kick'),
(257, 0, 0, 0, 4, 0, 30, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                          'Kobold Worker - On Aggro - Say Line 0'),
(327, 0, 0, 0, 4, 0, 40, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                          'Goldtooth - On Aggro - Say Line 0'),
(327, 0, 1, 0, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                       'Goldtooth - Between 0-20% Health - Flee For Assist (No Repeat)'),
(330, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Princess - On Aggro - Cast Rushing Charge'),
(448, 0, 0, 1, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Hogger - On Aggro - Cast Rushing Charge'),
(448, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Hogger - On Aggro - Say Line 0'),
(448, 0, 2, 0, 0, 0, 100, 0, 1000, 3000, 20000, 29000, 0, 0, 11, 6730, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Hogger - Within 0-5 Range - Cast Head Butt'),
(448, 0, 3, 0, 0, 0, 100, 0, 4000, 6000, 46000, 48000, 0, 0, 11, 6016, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Hogger - Within 0-5 Range - Cast Pierce Armor'),
(473, 0, 0, 0, 0, 0, 100, 0, 1000, 1000, 11000, 13000, 0, 0, 11, 1776, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Morgan the Collector - Within 0-5 Range - Cast Gouge'),
(474, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 1800000, 1800000, 0, 0, 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Defias Rogue Wizard - Out of Combat - Cast Frost Armor'),
(474, 0, 1, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                          'Defias Rogue Wizard - On Aggro - Say Line 0'),
(474, 0, 2, 0, 0, 0, 100, 0, 0, 0, 1000, 1000, 0, 0, 11, 13322, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Defias Rogue Wizard - In Combat - Cast Frostbolt'),
(475, 0, 0, 0, 4, 0, 25, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                          'Kobold Tunneler - On Aggro - Say Line 0'),
(476, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 1800000, 1800000, 0, 0, 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Kobold Geomancer - Out of Combat - Cast Frost Armor'),
(476, 0, 1, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                          'Kobold Geomancer - On Aggro - Say Line 0'),
(476, 0, 2, 0, 0, 0, 100, 0, 0, 0, 1000, 1000, 0, 0, 11, 20793, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Kobold Geomancer - In Combat - Cast Fireball'),
(478, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                          'Riverpaw Outrunner - On Aggro - Say Line 0'),
(478, 0, 1, 0, 0, 0, 100, 0, 8000, 12000, 15000, 20000, 0, 0, 11, 3391, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Riverpaw Outrunner - In Combat - Cast Thrash'),
(524, 0, 0, 0, 4, 0, 10, 1, 0, 0, 0, 0, 0, 0, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Rockhide Boar - On Aggro - Cast Rushing Charge'),
(732, 0, 0, 0, 67, 0, 100, 0, 3000, 6000, 3000, 6000, 0, 5, 11, 7159, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Murloc Lurker - On Behind Target - Cast Backstab'),
(881, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 1800000, 1800000, 0, 0, 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Surena Caledon - Out of Combat - Cast Frost Armor'),
(881, 0, 1, 0, 4, 0, 40, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                          'Surena Caledon - On Aggro - Say Line 0'),
(881, 0, 2, 0, 0, 0, 100, 0, 0, 0, 1000, 1000, 0, 0, 11, 20793, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Surena Caledon - In Combat - Cast Fireball');

DELETE FROM `creature_text` WHERE `CreatureID` = 79;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(79, 0, 0, 'You no take candle!', 12, 0, 100, 0, 0, 0, 16658, 0,    'Narg the Taskmaster'),
(79, 0, 1, 'Yiieeeee! Me run!', 12, 7, 100, 0, 0, 0, 1864, 0,       'Narg the Taskmaster'),
(79, 0, 2, 'No kill me! No kill me!', 12, 0, 100, 0, 0, 0, 1863, 0, 'Narg the Taskmaster');

-- Hogger, fix missing waypoints and spawn points, entry 448, guid 80531
DELETE FROM `creature` WHERE `id1` = 448;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, 
`spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(80531, 448, 0, 0, 0, 0, 0, 1, 1, 1, -9946, 604.266, 38.2862, 0.297245, 180, 0, 1, 666, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(695022, 448, 0, 0, 0, 0, 0, 1, 1, 1, -9947.88, 594.773, 39.608, 5.19393, 180, 15, 0, 666, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(695023, 448, 0, 0, 0, 0, 0, 1, 1, 1, -10107.2, 618.213, 38.2045, 3.78528, 180, 15, 0, 666, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(695024, 448, 0, 0, 0, 0, 0, 1, 1, 1, -10085.4, 585.657, 39.2759, 1.30395, 180, 15, 0, 666, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(695025, 448, 0, 0, 0, 0, 0, 1, 1, 1, -10018.6, 640.629, 39.0636, 1.3324, 180, 15, 0, 666, 0, 1, 0, 0, 0, '', 0, 0, NULL);

DELETE FROM `creature_addon` WHERE `guid` = 80531;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(80531, 805310, 0, 0, 0, 0, 0, NULL);

DELETE FROM `waypoint_data` WHERE `id` = 805310;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
(805310, 1, -9946, 604.266, 38.2862, NULL, 10000, 0, 0, 100, 0),
(805310, 2, -9969.58, 625.799, 38.4956, NULL, 0, 0, 0, 100, 0),
(805310, 3, -9996.3, 638.969, 39.1481, NULL, 0, 0, 0, 100, 0),
(805310, 4, -10010.6, 646.303, 37.7379, NULL, 10000, 0, 0, 100, 0),
(805310, 5, -10056.1, 659.915, 39.1032, NULL, 0, 0, 0, 100, 0),
(805310, 6, -10084.5, 663.626, 35.179, NULL, 0, 0, 0, 100, 0),
(805310, 7, -10104.2, 683.092, 31.897, NULL, 10000, 0, 0, 100, 0),
(805310, 8, -10115.9, 648.876, 35.9839, NULL, 0, 0, 0, 100, 0),
(805310, 9, -10101.4, 613.373, 38.9122, NULL, 0, 0, 0, 100, 0),
(805310, 10, -10068.6, 623.025, 39.2644, NULL, 10000, 0, 0, 100, 0),
(805310, 11, -10053.6, 612.915, 39.6109, NULL, 0, 0, 0, 100, 0),
(805310, 12, -9982.26, 628.856, 38.2322, NULL, 0, 0, 0, 100, 0);

DELETE FROM `pool_creature` WHERE `pool_entry` = 601013;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
(80531,  601013, 0, 'Hogger'),
(695022, 601013, 0, 'Hogger'),
(695023, 601013, 0, 'Hogger'),
(695024, 601013, 0, 'Hogger'),
(695025, 601013, 0, 'Hogger');

DELETE FROM `pool_template` WHERE `entry` = 601013;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES 
(601013, 1, '');

-- Kitta Firewind <Enchanting Trainer>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 4169 AND `SourceEntry` = 0 AND `ConditionTypeOrReference` = 7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 4169, 0, 7, 333, 125, 'Show menu if enchanting is 125 or higher');

-- The Stolen Tome (Warlock)
DELETE FROM `creature_questender` WHERE `id` = 459 AND `quest` = 1598;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (459, 1598);

-- The Stolen Tome (Warlock)
DELETE FROM `creature_queststarter` WHERE `id` = 459 AND `quest` = 1598;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (459, 1598);

-- update creature models
UPDATE `creature_template_model` SET `CreatureDisplayID` = 604   WHERE `CreatureID` = 69;  -- Diseased Timber Wolf
UPDATE `creature_template_model` SET `CreatureDisplayID` = 10912 WHERE `CreatureID` = 257; -- Kobold Worker
UPDATE `creature_template_model` SET `CreatureDisplayID` = 447   WHERE `CreatureID` = 299; -- Diseased Young Wolf

-- update creature names
UPDATE `creature_template` SET `name`    = 'Timber Wolf'              WHERE `entry` = 69;   -- Diseased Timber Wolf
UPDATE `creature_template` SET `name`    = 'Young Wolf'               WHERE `entry` = 299;  -- Diseased Young Wolf
UPDATE `creature_template` SET `subname` = 'Journeyman Blacksmith'    WHERE `entry` = 514;  -- Smith Argus
UPDATE `creature_template` SET `subname` = 'Journeyman Tailor'        WHERE `entry` = 1103; -- Eldrin <Journeyman Tailor>
UPDATE `creature_template` SET `subname` = 'Journeyman Alchemist'     WHERE `entry` = 1215; -- Alchemist Mallory <Journeyman Alchemist>
UPDATE `creature_template` SET `subname` = 'Journeyman Leatherworker' WHERE `entry` = 1632; -- Adele Fielder <Journeyman Leatherworker>
UPDATE `creature_template` SET `subname` = 'Fisherman'                WHERE `entry` = 1651; -- Lee Brown <Fisherman>
UPDATE `creature_template` SET `subname` = 'Tabard Vendor'            WHERE `entry` = 5193; -- Rebecca Laughlin <Tabard Designer>
UPDATE `creature_template` SET `subname` = 'Expert Alchemist'         WHERE `entry` = 5499; -- Lilyssia Nightbreeze <Alchemy Trainer>
UPDATE `creature_template` SET `subname` = 'Herbalism Supplier'       WHERE `entry` = 5503; -- Eldraeith <Herbalism Supplies>
UPDATE `creature_template` SET `subname` = 'Expert Blacksmith'        WHERE `entry` = 5511; -- Therum Deepforge <Blacksmithing Trainer>
UPDATE `creature_template` SET `subname` = 'Expert Engineer'          WHERE `entry` = 5518; -- Lilliam Sparkspindle <Engineering Trainer>
UPDATE `creature_template` SET `subname` = 'Expert Leatherworker'     WHERE `entry` = 5564; -- Simon Tanner <Leatherworking Trainer>
UPDATE `creature_template` SET `subname` = 'Skinner'                  WHERE `entry` = 6306; -- Helene Peltskinner <Skinner>
UPDATE `creature_template` SET `subname` = 'Journeyman Alchemist'     WHERE `entry` = 5500; -- Tel'Athir <Apprentice Alchemist> -- `trainer_type` = 2
UPDATE `creature_template` SET `subname` = 'Expert Tailor'            WHERE `entry` = 5567; -- Sellandus <Apprentice Tailor> -- `trainer_type` = 2

UPDATE `creature_template` SET `npcflag` = 81 WHERE `entry` IN (5500, 5567);

DELETE FROM `creature_template_addon` WHERE `entry` = 69;  -- Diseased Timber Wolf
DELETE FROM `creature_template_addon` WHERE `entry` = 299; -- Diseased Young Wolf

SET @TRAINER_ID   := 600;

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (514, 1103, 1215, 1632, 1651, 2329, 4732, 5500, 5567, 11072);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
(514,   @TRAINER_ID+16), -- Smith Argus <Journeyman Blacksmith>
(1103,  @TRAINER_ID+36), -- Eldrin <Journeyman Tailor>
(1215,  @TRAINER_ID+11), -- Alchemist Mallory <Journeyman Alchemist>
(1632,  @TRAINER_ID+31), -- Adele Fielder <Journeyman Leatherworker>
(1651,  @TRAINER_ID+47), -- Lee Brown <Fisherman>
(2329,  @TRAINER_ID+45), -- Michelle Belle <Physician>
(4732,  @TRAINER_ID+48), -- Randal Hunter <Riding Trainer>
(5500,  @TRAINER_ID+11), -- Tel'Athir <Journeyman Alchemist>
(5567,  @TRAINER_ID+37), -- Sellandus <Expert Tailor>
(11072, @TRAINER_ID+23); -- Kitta Firewind <Enchanting Trainer>

DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (4110, 4112, 4169);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`) VALUES
(4110, 0, 3, 'Train me.', 3266, 5, 16), -- Alchemist Mallory <Journeyman Alchemist>
(4112, 0, 3, 'Train me.', 3266, 5, 16), -- Tel'Athir <Journeyman Alchemist>
(4169, 0, 3, 'Train me.', 3266, 5, 16); -- Kitta Firewind <Enchanting Trainer>

-- Wolves Across the Border
DELETE FROM `quest_offer_reward` WHERE `ID` = 33;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `RewardText`) VALUES (33, 1, 'You\'ve been busy! I can\'t wait to cook up that wolf meat...$b$bI have some things here you might want - take your pick!');

-- Wolves Across the Border
DELETE FROM `quest_request_items` WHERE `ID` = 33;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`) VALUES (33, 6, 6, 'Hey $N. I\'m getting hungry...did you get that tough wolf meat?');

-- Bounty on Garrick Padfoot
UPDATE `quest_template` SET `Flags` = 8 WHERE `ID` = 6;

-- Kobold Camp Cleanup
UPDATE `quest_template` SET `Flags`=8, `LogDescription`='Kill 10 Kobold Vermin, then return to Marshal McBride.', `RequiredNpcOrGoCount1` = 10 WHERE `ID` = 7;

-- Investigate Echo Ridge
UPDATE `quest_template` SET `Flags` = 8, 
`LogDescription` = 'Kill 10 Kobold Workers, then report back to Marshal McBride.', 
`QuestDescription`='$N, my scouts tell me that the kobold infestation is larger than we had thought.  A group of kobold workers has camped near the Echo Ridge Mine to the north.$B$B
Go to the mine and remove them.  We know there are at least 10.  Kill them, see if there are more, then report back to me.', `RequiredNpcOrGoCount1` = 10 WHERE `ID` = 15;

-- Brotherhood of Thieves
UPDATE `quest_template` SET `Flags` = 8, `LogDescription` = 'Bring 12 Red Burlap Bandanas to Deputy Willem outside the Northshire Abbey.', `RequiredItemCount1` = 12 WHERE `ID` = 18;

-- Skirmish at Echo Ridge
UPDATE `quest_template` SET `Flags` = 8, `LogDescription` = 'Kill 12 Kobold Laborers, then return to Marshal McBride at Northshire Abbey.', `RequiredNpcOrGoCount1` = 12 WHERE `ID` = 21;

-- Wolves Across the Border
UPDATE `quest_template` SET `Flags` = 8, 
`LogDescription`   = 'Bring 8 pieces of Tough Wolf Meat to Eagan Peltskinner outside Northshire Abbey.', 
`QuestDescription` = 'I hate those nasty timber wolves!  But I sure like eating wolf steaks...  Bring me tough wolf meat and I will exchange it for something you\'ll find useful.$B$B
Tough wolf meat is gathered from hunting the timber wolves and young wolves wandering the Northshire countryside.', `RequiredItemId1` = 750 WHERE `ID` = 33;

UPDATE `quest_template` SET `Flags`=0 WHERE `ID`=54; -- Report to Goldshire
UPDATE `quest_template` SET `Flags`=8 WHERE `ID`=783; -- A Threat Within
UPDATE `quest_template` SET `Flags`=8 WHERE `ID`=2158; -- Rest and Relaxation
UPDATE `quest_template` SET `Flags`=0 WHERE `ID`=3102; -- Encrypted Letter
UPDATE `quest_template` SET `Flags`=8 WHERE `ID`=3903; -- Milly Osworth
UPDATE `quest_template` SET `Flags`=8 WHERE `ID`=3904; -- Milly's Harvest
UPDATE `quest_template` SET `Flags`=0 WHERE `ID`=3905; -- Grape Manifest

-- Eagan Peltskinner
UPDATE `quest_template` SET `QuestDescription` = 
'Eagan Peltskinner is looking for someone to hunt wolves for him. That\'s good news, because we\'re seeing a lot more wolves in Northshire Valley lately.$B$B
If you\'re interested then speak with Eagan. He\'s around the side of the abbey, to the left.' WHERE `ID`=5261;

UPDATE `quest_template_addon` SET `SpecialFlags` = 0 WHERE `ID` IN (
6,    -- Bounty on Garrick Padfoot
7,    -- Kobold Camp Cleanup
15,   -- Investigate Echo Ridge
18,   -- Brotherhood of Thieves
21,   -- Skirmish at Echo Ridge
33,   -- Wolves Across the Border
54,   -- Report to Goldshire
783,  -- A Threat Within
2158, -- Rest and Relaxation
3100, -- Simple Letter
3101, -- Consecrated Letter
3102, -- Encrypted Letter
3103, -- Hallowed Letter
3104, -- Glyphic Letter
3105, -- Tainted Letter
3903, -- Milly Osworth
3904, -- Milly's Harvest
3905, -- Grape Manifest
5261  -- Eagan Peltskinner
);

DELETE FROM `creature_loot_template` WHERE `Item` = 750 AND `Entry` IN (69, 299);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Chance`, `QuestRequired`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(69, 750, 80, 1, 1, 1, 'Timber Wolf - Tough Wolf Meat'),
(299, 750, 80, 1, 1, 1, 'Young Wolf - Tough Wolf Meat');

DELETE FROM `creature_questitem` WHERE `CreatureEntry` IN (69, 299);
INSERT INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(69, 0, 750, 0),
(299, 0, 750, 0);

-- Restore Mirror Lake Orchard creatures removed in WotLK
DELETE FROM `creature` WHERE `guid` IN (80391, 80392, 80393, 80394, 80396, 80397, 80399, 80400, 80401, 80402, 80403, 80404, 80405) AND `id1` IN (116, 94);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, 
`spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(80391, 116, 0, 0, 0, 0, 0, 1, 1, 1, -9441.48, 469.81, 53.2758, 4.26422, 180, 5, 0, 156, 0, 1, 0, 0, 0, '', 0),
(80392, 116, 0, 0, 0, 0, 0, 1, 1, 1, -9444.94, 473.775, 52.3257, 4.03171, 180, 5, 0, 156, 0, 1, 0, 0, 0, '', 0),
(80393, 116, 0, 0, 0, 0, 0, 1, 1, 1, -9437.72, 486.039, 53.3307, 5.58505, 180, 5, 0, 156, 0, 1, 0, 0, 0, '', 0),
(80394, 116, 0, 0, 0, 0, 0, 1, 1, 1, -9433.15, 482.528, 53.2474, 2.53073, 180, 5, 0, 156, 0, 1, 0, 0, 0, '', 0),
(80396, 94, 0, 0, 0, 0, 0, 1, 1, 1, -9464.65, 480.308, 53.0385, 3.48143, 180, 5, 0, 102, 0, 1, 0, 0, 0, '', 0),
(80397, 94, 0, 0, 0, 0, 0, 1, 1, 1, -9453.23, 512.811, 56.3243, 6.18203, 180, 5, 0, 102, 0, 1, 0, 0, 0, '', 0),
(80399, 116, 0, 0, 0, 0, 0, 1, 1, 1, -9447.86, 462.158, 52.2864, 4.2586, 180, 5, 0, 156, 0, 1, 0, 0, 0, '', 0),
(80400, 94, 0, 0, 0, 0, 0, 1, 1, 1, -9495.64, 457.065, 52.3032, 2.96413, 180, 5, 0, 102, 0, 1, 0, 0, 0, '', 0),
(80401, 94, 0, 0, 0, 0, 0, 1, 1, 1, -9479.78, 470.421, 51.6672, 5.18983, 180, 5, 0, 102, 0, 1, 0, 0, 0, '', 0),
(80402, 94, 0, 0, 0, 0, 0, 1, 1, 1, -9459.9, 426.179, 52.6221, 3.6223, 180, 5, 0, 102, 0, 1, 0, 0, 0, '', 0),
(80403, 116, 0, 0, 0, 0, 0, 1, 1, 1, -9441.33, 447.532, 52.5032, 3.9619, 180, 5, 0, 156, 0, 1, 0, 0, 0, '', 0),
(80404, 116, 0, 0, 0, 0, 0, 1, 1, 1, -9445.96, 451.56, 52.6251, 1.93731, 180, 5, 0, 156, 0, 1, 0, 0, 0, '', 0),
(80405, 94, 0, 0, 0, 0, 0, 1, 1, 1, -9517.96, 494.378, 52.2181, 5.29769, 180, 5, 0, 102, 0, 1, 0, 0, 0, '', 0);

-- fix Defias Thug worldserver errors
UPDATE `creature` SET `MovementType` = 0  WHERE `guid` = 80149;
UPDATE `creature` SET `MovementType` = 0  WHERE `guid` = 80251;

UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` = 80149;
UPDATE `creature_addon` SET `path_id` = 0 WHERE `guid` = 80251;

DELETE FROM smart_scripts WHERE `entryorguid` IN (-80251,-80149) and `source_type` = 0;
DELETE FROM smart_scripts WHERE `entryorguid` IN (3800) and `source_type` = 9;

INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,
`event_param1`,`event_param2`,`event_param3`,`event_param4`,`event_param5`,`event_param6`,
`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,
`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_param4`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES 
--
(-80149,0,0,0,11,0,100,512,0,0,0,0,0,0,53,1,8014900,1,0,0,1,1,0,0,0,0,0,0,0,0,     'Defias Thug - On Respawn - Start WayPoint'),
(-80149,0,1,0,40,0,100,512,1,8014900,0,0,0,0,54,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,  'Defias Thug - On Waypoint 1 Reached - Pause WayPoint'),
(-80149,0,2,0,40,0,100,512,10,8014900,0,0,0,0,80,3800,0,1,0,0,0,1,0,0,0,0,0,0,0,0, 'Defias Thug - On Waypoint 10 Reached - Run Script'),
--
(-80251,0,0,0,11,0,100,512,0,0,0,0,0,0,53,1,8025100,1,0,0,1,1,0,0,0,0,0,0,0,0,     'Defias Thug - On Respawn - Start WayPoint'),
(-80251,0,1,0,40,0,100,512,1,8025100,0,0,0,0,54,1000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,  'Defias Thug - On Waypoint 1 Reached - Pause WayPoint'),
(-80251,0,2,0,40,0,100,512,11,8025100,0,0,0,0,80,3800,0,1,0,0,0,1,0,0,0,0,0,0,0,0, 'Defias Thug - On Waypoint 11 Reached - Run Script'),
--
(3800,9,0,0,0,0,100,0,0,0,0,0,0,0,54,26000,0,0,0,0,0,1,0,0,0,0,0,0,0,0,            'Defias Thug - On Script - Pause Waypoint'),
(3800,9,1,0,0,0,100,0,0,0,0,0,0,0,89,5,0,0,0,0,0,1,0,0,0,0,0,0,0,0,                'Defias Thug - On Script - Random Movement'),
(3800,9,2,0,0,0,100,0,25000,25000,0,0,0,0,65,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,        'Defias Thug - On Script - Resume Waypoint');

-- Remove Waypoint Scripts
DELETE FROM `waypoint_scripts` where id IN (8025100, 8014900);
DELETE FROM `waypoint_data`    where id IN (802510, 801490);

DELETE FROM `waypoints` WHERE `entry` IN (8014900, 8025100);
INSERT INTO `waypoints` (`entry`, `pointid`, `position_x`, `position_y`, `position_z`, `point_comment`) VALUES
(8014900,1,  -9008.89, -320.603, 75.8279, 'Defias Thug'), -- 1 sec delay
(8014900,2,  -8981.22, -335.138, 73.3474, 'Defias Thug'),
(8014900,3,  -8946.51, -338.891, 71.1134, 'Defias Thug'),
(8014900,4,  -8912.77, -352.085, 72.5823, 'Defias Thug'),
(8014900,5,  -8881.49, -355.84,  73.1462, 'Defias Thug'),
(8014900,6,  -8910.65, -346.602, 71.1023, 'Defias Thug'),
(8014900,7,  -8883.13, -352.739, 72.9499, 'Defias Thug'),
(8014900,8,  -8911.38, -347.166, 71.3269, 'Defias Thug'),
(8014900,9,  -8947.63, -337.566, 70.9275, 'Defias Thug'),
(8014900,10, -9008.89, -320.603, 75.8279, 'Defias Thug'), -- 25 sec delay and random movement
(8025100,1,  -8878.29, -410.994, 65.6802, 'Defias Thug'), -- 1 sec delay
(8025100,2,  -8880.02, -399.363, 66.0983, 'Defias Thug'),
(8025100,3,  -8898.18, -391.582, 68.6285, 'Defias Thug'),
(8025100,4,  -8914.49, -391.059, 69.3006, 'Defias Thug'),
(8025100,5,  -8928.27, -375.636, 71.218,  'Defias Thug'),
(8025100,6,  -8958.87, -373.826, 72.3354, 'Defias Thug'),
(8025100,7,  -8921.43, -376.858, 71.1848, 'Defias Thug'),
(8025100,8,  -8909.08, -366.763, 72.135,  'Defias Thug'),
(8025100,9,  -8870.04, -371.407, 71.997,  'Defias Thug'),
(8025100,10, -8878.29, -410.994, 65.6802, 'Defias Thug'),
(8025100,11, -8878.29, -410.994, 65.6802, 'Defias Thug'); -- 25 sec delay and random movement

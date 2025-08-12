/* smart scripts */
-- UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN ();
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(5452, 5465, 5615, 5616, 5617, 5618, 5623, 7847, 7855, 7856, 7857, 7858, 7883, 9397);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(5452, 5465, 5615, 5616, 5617, 5618, 5623, 7847, 7855, 7856, 7857, 7858, 7883, 9397);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(5452, 0, 0, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Hazzali Worker - Between 0-30% Health - Flee For Assist (No Repeat)'),
(5452, 0, 1, 0, 6, 0, 100, 513, 0, 0, 0, 0, 0, 0, 11, 11023, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Hazzali Worker - On Just Died - Cast Summon Hazzali Parasites'),
(5465, 0, 0, 1, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Land Rager - Between 0-50% Health - Cast Enrage (No Repeat)'),
(5465, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Land Rager - On Enrage - Say Line 0'),
--
(5615, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 8218, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Wastewander Rogue - Out of Combat - Cast Sneak'),
(5615, 0, 1, 0, 67, 0, 100, 0, 3000, 6000, 6000, 10000, 0, 5, 11, 8721, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Wastewander Rogue - On Behind Target - Cast Backstab'),
(5615, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Wastewander Rogue - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5616, 0, 0, 0, 0, 0, 100, 0, 6000, 9000, 7000, 12000, 0, 0, 11, 6713, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Wastewander Thief - Within 0-5 Range - Cast Disarm'),
(5616, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Wastewander Thief - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5617, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 12746, 64, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Wastewander Shadow Mage - Out of Combat - Cast Summon Voidwalker (No Repeat)'),
(5617, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2400, 3800, 0, 0, 11, 20825, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Wastewander Shadow Mage - In Combat - Cast Shadow Bolt'),
(5617, 0, 2, 0, 0, 0, 100, 0, 6000, 9000, 19000, 26000, 0, 0, 11, 20826, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Wastewander Shadow Mage - In Combat - Cast Immolate'),
(5617, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Wastewander Shadow Mage - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5618, 0, 0, 0, 0, 0, 100, 0, 4000, 8000, 7000, 12000, 0, 0, 11, 8629, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Wastewander Bandit - In Combat - Cast Gouge'),
(5618, 0, 1, 0, 67, 0, 100, 0, 3000, 6000, 6000, 10000, 0, 5, 11, 8721, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Wastewander Bandit - On Behind Target - Cast Backstab'),
(5618, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Wastewander Bandit - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5623, 0, 0, 0, 12, 0, 100, 0, 0, 20, 32000, 36100, 0, 0, 11, 7160, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,       'Wastewander Assassin - Target Between 0-20% Health - Cast Execute'),
(5623, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Wastewander Assassin - Between 0-15% Health - Flee For Assist (No Repeat)'),
(7847, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Caliph Scorpidsting - Between 0-15% Health - Flee For Assist (No Repeat)'),
(7855, 0, 0, 0, 9, 0, 100, 0, 2000, 4000, 4000, 7000, 0, 5, 11, 11976, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Southsea Pirate - In Combat - Cast Strike'),
(7855, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Southsea Pirate - Between 0-15% Health - Flee For Assist (No Repeat)'),
(7856, 0, 0, 0, 110, 0, 100, 1, 0, 0, 0, 0, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Southsea Freebooter - Outside 30 Range - Start Combat Movement'),
(7856, 0, 1, 0, 110, 0, 100, 1, 0, 0, 0, 0, 0, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Southsea Freebooter - Within 0-30 Range - Stop Combat Movement'),
(7856, 0, 2, 0, 9, 0, 100, 0, 0, 0, 2200, 3800, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Southsea Freebooter - Within 5-30 Range - Shoot'),
(7856, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Southsea Freebooter - Between 0-15% Health - Flee For Assist (No Repeat)'),
(7857, 0, 0, 0, 0, 0, 100, 0, 3000, 5000, 20000, 30000, 0, 0, 11, 3148, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Southsea Dock Worker - Within 0-5 Range - Cast Head Crack'),
(7857, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Southsea Dock Worker - Between 0-15% Health - Flee For Assist (No Repeat)'),
(7858, 0, 0, 0, 0, 0, 100, 0, 6000, 9000, 9000, 14000, 0, 0, 11, 6713, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Southsea Swashbuckler - Within 0-5 Range - Cast Disarm'),
(7858, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Southsea Swashbuckler - Between 0-15% Health - Flee For Assist (No Repeat)'),
(7883, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Andre Firebeard - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(9397, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 12550, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Living Storm - On Aggro - Cast Lightning Shield (No Repeat)');


/* Caverns of Time Door */
DELETE FROM `gameobject` WHERE `guid`=2993000;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`) VALUES
(2993000, 176996, 1, 0, 0, 1, 1, -8173.02, -4747.2, 34.2107, 1.80084, -0, -0, -0.783588, -0.621281, 0, 0, 0, '', 0);

UPDATE `gameobject_template` SET `ScriptName` = "go_cavernsoftimedoor" WHERE `entry` = 176996;

UPDATE `creature` SET `position_x` = -8175.67, `position_y` = -4718.28, `position_z` = 26.3489, `orientation` = 1.88496 WHERE `id1` = 15192;

-- update Laden Dew Gland drop rate, was 100%
UPDATE `creature_loot_template` SET `Chance` = 10 WHERE `Item` = 8428;


DELETE FROM `creature_text` WHERE `CreatureID` IN (5465);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(5465, 0, 0, '$s becomes enraged!', 16, 0, 100, 0, 0, 0, 10677, 0, 'Land Rager enrage at 30%');

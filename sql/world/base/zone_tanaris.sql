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

-- smart scripts
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (5452, 5465, 9397);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (5452, 5465, 9397);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(5452, 0, 0, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,      'Hazzali Worker - Between 0-30% Health - Flee For Assist (No Repeat)'),
(5452, 0, 1, 0, 6, 0, 100, 513, 0, 0, 0, 0, 0, 0, 11, 11023, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Hazzali Worker - On Just Died - Cast Summon Hazzali Parasites'),
--
(5465, 0, 0, 1, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Land Rager - Between 0-50% Health - Cast Enrage (No Repeat)'),
(5465, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Land Rager - On Enrage - Say Line 0'),
(9397, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 12550, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Living Storm - On Aggro - Cast Lightning Shield (No Repeat)');

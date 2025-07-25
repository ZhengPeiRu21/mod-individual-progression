DELETE FROM `creature_text` WHERE `CreatureID` IN (5399);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(5399, 0, 0, '$s becomes enraged!', 16, 0, 100, 0, 0, 0, 10677, 0, 'Veyzhak the Cannibal enrage at 30%');

-- smart scripts
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (5399, 14445);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (5399, 14445);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(5399, 0, 0, 1, 2, 0, 100, 0, 0, 30, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Veyzhak the Cannibal - Between 0-30% Health - Cast Enrage'),
(5399, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Veyzhak the Cannibal - On Enrage - Say Line 0'),
(5399, 0, 2, 0, 9, 0, 100, 0, 9000, 12000, 21000, 26000, 0, 5, 11, 12054, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Veyzhak the Cannibal - Within 0-5 Range - Cast Rend'),
--
(14445, 0, 4, 0, 9, 0, 100, 0, 5000, 8000, 5000, 8000, 0, 5, 11, 15496, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Lord Captain Wyrmak  - Within 0-5 Range - Cast Cleave');

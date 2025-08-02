-- smart scripts
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (3989);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (3989);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 

(3989, 0, 0, 0, 9, 0, 100, 0, 0, 0, 2200, 3900, 5, 30, 11, 10277, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Venture Co. Logger - In Combat - Cast Throw');


-- Vengeful Ancient, entry 4030
UPDATE `creature` SET `MovementType` = 1, `Wander_distance` = 5 WHERE `guid` = 51889;

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (5937, 10882);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (5937, 10882);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(5937, 0, 0, 0, 9, 0, 100, 0, 1000, 11000, 16000, 24000, 0, 5, 11, 8257, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Vile Sting - Within 0-5 Range - Cast Venom Sting'),
(10882, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 17213, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,            'Arikara - On Spawn - Cast Curse of Vengeance');

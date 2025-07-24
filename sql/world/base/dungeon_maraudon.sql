-- Legends of Maraudon
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Celebras the Redeemed.' WHERE `ID` = 7044;

-- The Pariah's Instructions
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Centaur Pariah in Desolace.' WHERE `ID` = 7067;

-- smart scripts
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (13696);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (13696);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(13696, 0, 0, 0, 0, 0, 100, 0, 4000, 11000, 10000, 29000, 0, 5, 11, 5413, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,  'Noxxious Scion - Within 0-5 Range - Cast Noxious Catalyst'),
(13696, 0, 1, 0, 0, 0, 100, 0, 1000, 2000, 2500, 3500, 0, 0, 11, 21068, 96, 1, 0, 0, 0, 24, 30, 0, 0, 0, 0, 0, 0, 0, 'Noxxious Scion - In Combat - Cast Corruption');

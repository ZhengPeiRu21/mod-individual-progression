/* Drop chance for Humbert's Sword was incorrectly set to 100 - updated to 25 - value copied from VMangos */
UPDATE `creature_loot_template` SET `Chance` = 25 WHERE `Item` = 3693;

-- smart scripts
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (7073);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (7073);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 

(7073, 0, 0, 0, 14, 0, 100, 0, 3000, 30, 10000, 12000, 0, 0, 11, 15493, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Arados the Damned - Friendly Missing Health - Cast Holy Light'),
(7073, 0, 1, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 13874, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Arados the Damned - Between 0-30% Health - Cast Divine Shield');

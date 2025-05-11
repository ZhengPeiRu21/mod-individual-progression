/* Highborne undead in Winterspring missing smart AI */
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (7523, 7524, 10684);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
/* Suffering Highborne (7523) */
(7523, 0, 2, 0, 38, 0, 100, 512, 1, 1, 0, 0, 0, 0, 2, 124, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Suffering Highborne - On Data Set 1 1 - Set Faction 124'),
(7523, 0, 3, 0, 38, 0, 100, 512, 2, 2, 0, 0, 0, 0, 2, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Suffering Highborne - On Data Set 2 2 - Set Faction 21'),
(7523, 0, 4, 0, 0, 0, 100, 0, 3000, 6000, 13000, 19000, 0, 0, 11, 14868, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 'Suffering Highborne - In Combat - Cast Curse of Agony'),
/* Anguished Highborne (7524) */
(7524, 0, 2, 0, 38, 0, 100, 512, 1, 1, 0, 0, 0, 0, 2, 124, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Anguished Highborne - On Data Set 1 1 - Set Faction 124'),
(7524, 0, 3, 0, 38, 0, 100, 512, 2, 2, 0, 0, 0, 0, 2, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Anguished Highborne - On Data Set 2 2 - Set Faction 21'),
(7524, 0, 4, 0, 0, 0, 100, 0, 2200, 3400, 9800, 12700, 0, 0, 11, 13860, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Anguished Highborne - In Combat - Cast \'13860\''),
/* Remorseful Highborne (10684) */
(10684, 0, 0, 0, 20, 0, 100, 0, 5248, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Remorseful Highborne - On Quest \'Tormented by the Past\' Finished - Say Line 0'),
(10684, 0, 1, 0, 0, 0, 100, 0, 2200, 3400, 9800, 12700, 0, 0, 11, 13860, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Remorseful Highborne - In Combat - Cast \'13860\'');

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

/* Shy-Rotam summons Sian-Rotam too soon. Should be at 50% health */
DELETE FROM `smart_scripts` WHERE `entryorguid` = 10737;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 

(10737, 0, 0, 0, 0, 0, 100, 0, 5000, 5000, 5000, 10000, 0, 0, 11, 14100, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Shy-Rotam - In Combat - Cast Terrifying Roar '),
(10737, 0, 1, 0, 0, 0, 100, 0, 7000, 9000, 22000, 27000, 0, 0, 11, 13443, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Shy-Rotam - In Combat - Cast Rend'),
(10737, 0, 2, 0, 0, 0, 100, 0, 2000, 3000, 15000, 20000, 0, 0, 11, 3604, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Shy-Rotam - In Combat - Cast Tendon Rip'),
(10737, 0, 3, 0, 2, 0, 100, 1, 25, 50, 0, 0, 0, 0, 12, 10741, 1, 180000, 0, 0, 0, 8, 0, 0, 0, 0, 8074.84, -3840, 690.061, 4.6, 'Shy-Rotam - Between 25-50% health - Summon Creature Sian-Rotam (No Repeat)');

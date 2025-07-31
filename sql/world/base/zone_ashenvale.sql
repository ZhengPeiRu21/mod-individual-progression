-- smart scripts
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (3924, 3925, 3926, 12818);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (3924, 3925, 3926, 12818);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 

(3924, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6813, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Thistlefur Shaman - On Reset - Cast \'Coat of Thistlefur\''),
(3924, 0, 1, 0, 0, 0, 100, 0, 3000, 8000, 30000, 45000, 0, 0, 11, 6742, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Thistlefur Shaman - In Combat - Cast \'Bloodlust\''),
(3924, 0, 2, 0, 74, 0, 100, 0, 5000, 10000, 20000, 25000, 40, 40, 11, 11986, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Thistlefur Shaman - On Friendly Between 0-40% Health - Cast \'Healing Wave\''),
(3924, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Thistlefur Shaman - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3924, 0, 4, 5, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 86, 8602, 2, 9, 3925, 0, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Thistlefur Shaman - On Death - Cross Cast \'Vengeance\''),
(3924, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 9, 3925, 0, 30, 1, 0, 0, 0, 0,                   'Thistlefur Shaman - On Death - Thistlefur Avenger Say Line 0'),
--
(3925, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6813, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Thistlefur Avenger - On Reset - Cast \'Coat of Thistlefur\''),
(3925, 0, 1, 2, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 86, 8602, 2, 9, 3925, 0, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Thistlefur Avenger - On Death - Cross Cast \'Vengeance\''),
(3925, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 9, 3925, 0, 30, 1, 0, 0, 0, 0,                   'Thistlefur Avenger - On Death - Thistlefur Avenger Say Line 0'),
--
(3926, 0, 0, 0, 25, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 6813, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Thistlefur Pathfinder - On Reset - Cast \'Coat of Thistlefur\' (No Repeat)'),
(3926, 0, 1, 0, 9, 0, 100, 0, 0, 0, 2300, 2800, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Thistlefur Pathfinder - Within 5-30 Range - Cast \'Shoot\''),
(3926, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Thistlefur Pathfinder - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3926, 0, 3, 4, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 86, 8602, 2, 9, 3925, 0, 30, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Thistlefur Pathfinder - On Death - Cross Cast \'Vengeance\''),
(3926, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 9, 3925, 0, 30, 1, 0, 0, 0, 0,                   'Thistlefur Pathfinder - On Death - Thistlefur Avenger Say Line 0'),

-- Freedom to Ruul
(12818, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Ruul Snowhoof - On Respawn - Set Reactstate Passive'),
(12818, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 3, 12819, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Ruul Snowhoof - On Respawn - Morph To Creature Ruul Snowhoof Bear Form'),
--
(12818, 0, 2, 3, 19, 0, 100, 0, 6482, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Ruul Snowhoof - On Quest \'Freedom to Ruul Taken\' - Set Reactstate Aggressive'),
(12818, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Ruul Snowhoof - On Quest \'Freedom to Ruul Taken\' - Set Event Phase 1'),
(12818, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 59, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Ruul Snowhoof - On Quest \'Freedom to Ruul Taken\' - Set Run Off'),
--
(12818, 0, 5, 0, 1, 1, 100, 1, 100, 100, 0, 0, 0, 0, 53, 0, 12818, 0, 6482, 10000, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0,       'Ruul Snowhoof - Out of Combat - Start Waypoint (Phase 1) (No Repeat)'),
(12818, 0, 6, 0, 1, 1, 100, 1, 3100, 3100, 0, 0, 0, 0, 54, 3000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Ruul Snowhoof - Out of Combat - Pause Waypoint (Phase 1) (No Repeat)'),
(12818, 0, 7, 0, 1, 1, 100, 1, 3150, 3150, 0, 0, 0, 0, 1, 0, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,              'Ruul Snowhoof - Out of Combat - Say Line 0 (Phase 1) (No Repeat)'),
(12818, 0, 8, 0, 1, 1, 100, 513, 5000, 5000, 0, 0, 0, 0, 3, 0, 29421, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Ruul Snowhoof - Out of Combat - Morph To Model 29421 (Phase 1) (No Repeat)'),
(12818, 0, 9, 0, 1, 1, 100, 513, 5000, 5000, 0, 0, 0, 0, 3, 12819, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Ruul Snowhoof - Out of Combat - Morph To Creature Ruul Snowhoof Bear Form (Phase 1) (No Repeat)'),
--
(12818, 0, 10, 0, 60, 1, 100, 1, 50000, 50000, 0, 0, 0, 0, 12, 3921, 7, 60000, 1, 1, 0, 8, 0, 0, 0, 0, 3439.62, -616.591, 171.968, 4.30965, 'Ruul Snowhoof - On Update - Summon Creature \'Thistlefur Ursa\' (Phase 1) (No Repeat)'),
(12818, 0, 11, 0, 60, 1, 100, 1, 54000, 54000, 0, 0, 0, 0, 12, 3922, 7, 60000, 1, 1, 0, 8, 0, 0, 0, 0, 3439.62, -616.591, 171.968, 4.30965, 'Ruul Snowhoof - On Update - Summon Creature \'Thistlefur Totemic\' (Phase 1) (No Repeat)'),
(12818, 0, 12, 0, 60, 1, 100, 1, 58000, 58000, 0, 0, 0, 0, 12, 3926, 7, 60000, 1, 1, 0, 8, 0, 0, 0, 0, 3439.62, -616.591, 171.968, 4.30965, 'Ruul Snowhoof - On Update - Summon Creature \'Thistlefur Pathfinder\' (Phase 1) (No Repeat)'),
(12818, 0, 13, 0, 60, 1, 100, 1, 120000, 120000, 0, 0, 0, 0, 12, 3921, 7, 60000, 1, 1, 0, 8, 0, 0, 0, 0, 3495.9, -526.57, 188.322, 4.62782, 'Ruul Snowhoof - On Update - Summon Creature \'Thistlefur Ursa\' (Phase 1) (No Repeat)'),
(12818, 0, 14, 0, 60, 1, 100, 1, 124000, 124000, 0, 0, 0, 0, 12, 3922, 7, 60000, 1, 1, 0, 8, 0, 0, 0, 0, 3495.9, -526.57, 188.322, 4.62782, 'Ruul Snowhoof - On Update - Summon Creature \'Thistlefur Totemic\' (Phase 1) (No Repeat)'),
(12818, 0, 15, 0, 60, 1, 100, 1, 128000, 128000, 0, 0, 0, 0, 12, 3926, 7, 60000, 1, 1, 0, 8, 0, 0, 0, 0, 3495.9, -526.57, 188.322, 4.62782, 'Ruul Snowhoof - On Update - Summon Creature \'Thistlefur Pathfinder\' (Phase 1) (No Repeat)'),
--
(12818, 0, 16, 17, 58, 1, 100, 1, 15, 0, 0, 0, 0, 0, 1, 1, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                'Ruul Snowhoof - On Waypoint Finished - Say Line 1 (Phase 1) (No Repeat)'),
(12818, 0, 17, 18, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Ruul Snowhoof - On Waypoint Finished - Demorph (Phase 1) (No Repeat)'),
(12818, 0, 18, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 26, 6482, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,               'Ruul Snowhoof - On Waypoint Finished - Quest Complete');

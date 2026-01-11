/* smart scripts */
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (5857, 8279);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(5833, 5839, 5840, 5844, 5846, 5852, 5854, 5855, 5856, 5858, 5860, 5861, 5862, 8280, 8282, 8283, 8400, 8637, 9318, 14621);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(5833, 5839, 5840, 5844, 5846, 5852, 5854, 5855, 5856, 5857, 5858, 5860, 5861, 5862, 8279, 8280, 8282, 8283, 8400, 8637, 9318, 14621);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(5833, 0, 0, 0, 0, 0, 100, 0, 5000, 8000, 8000, 14000, 0, 0, 11, 15549, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Margol the Rager - In Combat - Cast Chained Bolt'),
(5833, 0, 1, 0, 9, 0, 100, 0, 0, 0, 16000, 20000, 0, 8, 11, 8147, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Margol the Rager - Within 0-8 Range - Cast Thunderclap (No Repeat)'),
(5839, 0, 0, 0, 9, 0, 100, 0, 0, 0, 5000, 5000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Dark Iron Geologist - Outside 30 Range - Start Combat Movement'),
(5839, 0, 1, 0, 9, 0, 100, 0, 0, 0, 5000, 5000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Dark Iron Geologist - Within 5-30 Range - Stop Combat Movement'),
(5839, 0, 2, 0, 9, 0, 100, 0, 0, 0, 5000, 5000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Dark Iron Geologist - Within 0-5 Range - Start Combat Movement'),
(5839, 0, 3, 0, 9, 0, 100, 0, 0, 0, 5000, 12000, 5, 30, 11, 8858, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Dark Iron Geologist - Within 5-30 Range - Cast Bomb'),
(5839, 0, 4, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20823, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Dark Iron Geologist - In Combat - Cast Fireball'),
(5839, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Dark Iron Geologist - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5840, 0, 0, 0, 9, 0, 100, 0, 0, 0, 12000, 15000, 0, 5, 11, 11983, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Dark Iron Steamsmith - In Combat - Cast Steam Jet'),
(5844, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 39, 20, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Dark Iron Slaver - On Aggro - Call For Help'),
(5844, 0, 1, 0, 9, 0, 100, 0, 0, 0, 15500, 25300, 0, 15, 11, 6533, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Dark Iron Slaver - Within 0-15 Range - Cast Net'),
(5844, 0, 2, 0, 9, 0, 100, 0, 0, 0, 18000, 21000, 0, 5, 11, 11977, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Dark Iron Slaver - Within 0-5 Range - Cast Rend'),
(5846, 0, 0, 0, 0, 0, 100, 0, 1000, 3000, 10000, 15000, 0, 0, 11, 5115, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Dark Iron Taskmaster - In Combat - Cast Battle Command'),
(5846, 0, 1, 0, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 12613, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Dark Iron Taskmaster - On Just Died - Cast Dark Iron Taskmaster Death'),
--
(5852, 0, 0, 0, 9, 0, 100, 9, 0, 0, 7000, 11000, 0, 5, 11, 10733, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Inferno Elemental - Within 0-5 Range - Cast Flame Spray'),
(5854, 0, 0, 0, 0, 0, 100, 0, 2900, 3700, 9700, 11900, 0, 0, 11, 5568, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Heavy War Golem - In Combat - Cast Trample'),
(5854, 0, 1, 0, 9, 0, 100, 9, 0, 0, 8000, 13000, 0, 5, 11, 12612, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Heavy War Golem - Within 0-5 Range - Cast Stomp'),
(5855, 0, 0, 0, 106, 0, 100, 0, 0, 0, 12000, 16000, 0, 8, 11, 11970, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Magma Elemental - Between 20-80% Health - Cast Fire Nova'),
(5856, 0, 0, 0, 9, 0, 100, 0, 0, 0, 8000, 11000, 0, 25, 11, 745, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Glassweb Spider - Within 0-25 Range - Cast Web'),
(5856, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3616, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Glassweb Spider - On Spawn - Cast Poison Proc'),
(5858, 0, 0, 0, 0, 0, 80, 0, 0, 0, 10000, 20000, 0, 0, 11, 11985, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Greater Lava Spider - In Combat - Cast Fireball'),
--
(5860, 0, 0, 0, 9, 0, 100, 0, 0, 0, 9000, 13000, 0, 20, 11, 15500, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Twilight Dark Shaman - Within 0-20 Range - Cast Shock'),
(5860, 0, 1, 0, 0, 0, 100, 0, 7000, 9000, 15000, 25000, 0, 0, 11, 7289, 32, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 0,   'Twilight Dark Shaman - In Combat - Cast Shrink'),
(5860, 0, 2, 0, 74, 0, 100, 0, 0, 0, 16000, 20000, 50, 40, 11, 12491, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Twilight Dark Shaman - Friendly Between 0-50% Health - Cast Healing Wave'),
(5861, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 90000, 90000, 0, 0, 11, 18968, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Twilight Fire Guard - Out of Combat - Cast Fire Shield'),
(5861, 0, 1, 0, 0, 0, 100, 0, 4000, 9000, 18000, 26000, 0, 0, 11, 15243, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Twilight Fire Guard - In Combat - Cast Fireball Volley'),
(5862, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 14034, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Twilight Geomancer - In Combat - Cast Fireball'),
(5862, 0, 1, 0, 0, 0, 100, 0, 7000, 13000, 12000, 15000, 0, 0, 11, 11436, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Twilight Geomancer - In Combat - Cast Slow'),
(5862, 0, 2, 0, 0, 0, 100, 0, 0, 6000, 14000, 21000, 0, 0, 11, 11990, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Twilight Geomancer - Between 30-60% Health - Cast Rain of Fire'),
(5862, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Twilight Geomancer - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(8280, 0, 0, 0, 9, 0, 100, 0, 3000, 9000, 9000, 15000, 0, 30, 11, 13321, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Shleipnarr - In Combat - Cast Mana Burn'), -- https://www.youtube.com/watch?v=ALcxDbNcgFE
(8282, 0, 0, 0, 0, 0, 100, 0, 20000, 25000, 20000, 25000, 0, 0, 11, 11974, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Highlord Mastrogonde - In Combat - Cast Power Word: Shield'), 
(8282, 0, 1, 0, 0, 0, 100, 0, 6000, 18000, 15000, 18000, 0, 0, 11, 13323, 32, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,  'Highlord Mastrogonde - In Combat - Cast Polymorph'), -- https://www.youtube.com/watch?v=KgZKdJeVfeQ
(8282, 0, 2, 0, 0, 0, 100, 0, 8000, 14000, 21000, 25000, 0, 0, 11, 11639, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Highlord Mastrogonde - In Combat - Cast Shadow Word: Pain'),
(8282, 0, 3, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9613, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Highlord Mastrogonde - In Combat - Cast Shadow Bolt'),
(8282, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Highlord Mastrogonde - Between 0-15% Health - Flee For Assist (No Repeat)'),
(8283, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Slave Master Blackheart - Outside 30 Range - Start Combat Movement'),
(8283, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Slave Master Blackheart - Within 5-30 Range - Stop Combat Movement'),
(8283, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Slave Master Blackheart - Within 0-5 Range - Start Combat Movement'),
(8283, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Slave Master Blackheart - Within 5-30 Range - Cast Shoot'),
(8283, 0, 4, 0, 0, 0, 100, 0, 0, 5000, 15000, 25000, 0, 0, 11, 6533, 32, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 0,      'Slave Master Blackheart - Within 0-20 Range - Cast Net'),
(8283, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 39, 20, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Slave Master Blackheart - Between 0-15% Health - Call For Help'),
(8400, 0, 0, 1, 38, 0, 100, 512, 1, 1, 0, 0, 0, 0, 19, 256, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0,                  'Obsidion - On Data Set - Remove Unattackable Flags'),
(8400, 0, 1, 2, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 91, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Obsidion - Linked with Previous Event - Set Bytes_1'),
(8400, 0, 2, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 100, 0, 0, 0, 0, 0, 0, 0,                 'Obsidion - Linked with Previous Event - Attack'),
(8400, 0, 3, 0, 7, 0, 100, 512, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Obsidion - On Evade - Despawn'),
(8400, 0, 4, 0, 0, 0, 100, 512, 7000, 11000, 12000, 16000, 0, 0, 11, 12734, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Obsidion - In Combat - Cast Ground Smash'),
(8400, 0, 5, 0, 9, 0, 100, 512, 0, 0, 15000, 21000, 0, 5, 11, 10101, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Obsidion - Within 0-5 Range - Cast Knock Away'),
--
(8637, 0, 0, 0, 9, 0, 100, 0, 0, 0, 5000, 8000, 0, 5, 11, 11976, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Dark Iron Watchman - Within 0-5 Range - Cast Strike'),
(9318, 0, 0, 0, 0, 0, 100, 0, 0, 0, 6000, 9000, 0, 0, 11, 11985, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Incendosaur - In Combat - Cast Fireball'),
--
(14621, 0, 0, 0, 0, 0, 100, 0, 0, 0, 21000, 28000, 0, 0, 11, 15654, 33, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Overseer Maltorius - In Combat - Cast Shadow Word: Pain'),
(14621, 0, 1, 0, 0, 0, 100, 0, 14000, 19000, 48000, 60000, 0, 0, 11, 11974, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Overseer Maltorius - In Combat - Cast Power Word: Shield'),
(14621, 0, 2, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 12739, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Overseer Maltorius - In Combat - Cast Shadow Bolt'),
(14621, 0, 3, 0, 0, 0, 100, 0, 9000, 13000, 13000, 16000, 0, 0, 11, 13323, 33, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0, 'Overseer Maltorius - Between 5-30% Health - Cast Polymorph'),
(14621, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Overseer Maltorius - Between 0-15% Health - Flee For Assist (No Repeat)');


/* Anvilrage Overseers and Anvilrage Wardens were replaced with new non-elite mobs in 2.3 - restore the originals */
UPDATE `creature` SET `id1` = 8889 WHERE `id1` = 24818;
UPDATE `creature` SET `id1` = 8890 WHERE `id1` = 24819;

/* 3 Dark Iron Sentries in the towers were replaced with non-elite dark iron lookouts in 2.3 - restore the originals */
UPDATE `creature` SET `id1` = 8504 WHERE `guid` = 6830;
UPDATE `creature` SET `id1` = 8504 WHERE `guid` = 6831;
UPDATE `creature` SET `id1` = 8504 WHERE `guid` = 6832;

/* Maltorius had 2 elite Dark Iron Sentries next to him that were replaced by a single non-elite dark iron lookout in 2.3 - restore the originals */
UPDATE `creature` SET `id1` = 8504 WHERE `guid` = 5846;

DELETE FROM `creature` WHERE `guid` IN (608504, 608505);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, 
`wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
(608504, 8504, 0, 0, 0, 0, 0, 1, 1, 1, -6630.98, -1233.1, 209.809, 1.29509, 300, 0, 0, 4950, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(608505, 8504, 0, 0, 0, 0, 0, 1, 1, 1, -7023.45, -1283.97, 258.302, 4.8895, 300, 0, 0, 4950, 0, 0, 0, 0, 0, '', NULL, 0, NULL); -- 4th tower Dark Iron Sentry

/* Group Maltorius together with the 2 sentries */
DELETE FROM `creature_formations` WHERE `leaderGUID` = 5845;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
(5845, 5845, 0, 0, 3, 0, 0),
(5845, 5846, 0, 0, 3, 0, 0),
(5845, 608504, 0, 0, 3, 0, 0);

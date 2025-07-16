/*
    This file adds missing, or adjusts, smart_scripts for vanilla creatures.
    The information for this mostly comes from VMangos.
*/

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(232, 1892, 1893, 1896, 1934, 1935, 2006, 2007, 2010, 2160, 2956, 2979, 3058, 3068, 3244, 3245, 3246, 3279, 3284, 3285, 3634, 5785, 5807, 7523, 7524, 10684, 10737);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN 
(232, 1892, 1893, 1896, 1934, 1935, 2006, 2007, 2010, 2160, 2956, 2979, 3058, 3068, 3244, 3245, 3246, 3279, 3284, 3285, 3634, 5785, 5807, 7523, 7524, 10684, 10737);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 

-- Hillsbrad Foothills
(232,  0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Farmer Ray - Between 0-15% Health - Flee For Assist (No Repeat)'),

-- Silverpine Forest
(1892, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Moonrage Watcher - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1893, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Moonrage Sentry - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1896, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Moonrage Elder - Between 0-15% Health - Flee For Assist (No Repeat)'),

-- Tirisfall Glades
(1934, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Tirisfal Farmer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1935, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Tirisfal Farmhand - Between 0-15% Health - Flee For Assist (No Repeat)'),

-- Teldrassil
(2006, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Gnarlpine Ursa - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2007, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Gnarlpine Gardener - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2010, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Gnarlpine Defender - Between 0-15% Health - Flee For Assist (No Repeat)'),

-- Darkshore
(2160, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Gravelflint Geomancer - On Spawn - Cast Frost Armor'),
(2160, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Gravelflint Geomancer - Between 0-15% Health - Flee For Assist (No Repeat)'),

 -- Mulgore   
(2956, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Greater Plainstrider - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2979, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Venture Co. Supervisor - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3058, 0, 0, 0, 0, 0, 100, 0, 11000, 15000, 0, 0, 0, 0, 11, 6730, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Arra chea - In Combat - Cast Head Butt'),
(3068, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3583, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Mazzranache - On Spawn - Cast Deadly Poison'),
(3068, 0, 1, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Mazzranache - On Aggro - Cast Rushing Charge'),
(5785, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Sister Hatelash - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5807, 0, 0, 0, 0, 0, 100, 0, 8000, 12000, 0, 0, 0, 0, 11, 12166, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'The Rake - In Combat - Cast Muscle Tear'),
    
-- The Barrens
(3244, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Greater Plainstrider - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3245, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Ornery Plainstrider - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3246, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Fleeting Plainstrider - Between 0-15% Health - Flee For Assist (No Repeat)');
(3279, 0, 0, 0, 4, 0, 20, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,              'Witchwing Ambusher - On Aggro - Say Line 0'),
(3279, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Witchwing Ambusher - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3284, 0, 0, 0, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Venture Co. Drudger - Between 0-20% Health - Flee For Assist (No Repeat)'),
(3285, 0, 0, 0, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Venture Co. Peon - Between 0-20% Health - Flee For Assist (No Repeat)'),
(3634, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Deviate Stalker - Out of Combat - Cast Sneak');
    
-- Winterspring
(7523, 0, 2, 0, 38, 0, 100, 512, 1, 1, 0, 0, 0, 0, 2, 124, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                          'Suffering Highborne - On Data Set 1 1 - Set Faction 124'),
(7523, 0, 3, 0, 38, 0, 100, 512, 2, 2, 0, 0, 0, 0, 2, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                           'Suffering Highborne - On Data Set 2 2 - Set Faction 21'),
(7523, 0, 4, 0, 0, 0, 100, 0, 3000, 6000, 13000, 19000, 0, 0, 11, 14868, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0,            'Suffering Highborne - In Combat - Cast Curse of Agony'),
(7524, 0, 2, 0, 38, 0, 100, 512, 1, 1, 0, 0, 0, 0, 2, 124, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                          'Anguished Highborne - On Data Set 1 1 - Set Faction 124'),
(7524, 0, 3, 0, 38, 0, 100, 512, 2, 2, 0, 0, 0, 0, 2, 21, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                           'Anguished Highborne - On Data Set 2 2 - Set Faction 21'),
(7524, 0, 4, 0, 0, 0, 100, 0, 2200, 3400, 9800, 12700, 0, 0, 11, 13860, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Anguished Highborne - In Combat - Cast Mind Blast'),
(10684, 0, 0, 0, 20, 0, 100, 0, 5248, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                          'Remorseful Highborne - On Quest Tormented by the Past Finished - Say Line 0'),
(10684, 0, 1, 0, 0, 0, 100, 0, 2200, 3400, 9800, 12700, 0, 0, 11, 13860, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Remorseful Highborne - In Combat - Cast Mind Blast'),
(10737, 0, 0, 0, 0, 0, 100, 0, 5000, 5000, 5000, 10000, 0, 0, 11, 14100, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Shy-Rotam - In Combat - Cast Terrifying Roar '),
(10737, 0, 1, 0, 0, 0, 100, 0, 7000, 9000, 22000, 27000, 0, 0, 11, 13443, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Shy-Rotam - In Combat - Cast Rend'),
(10737, 0, 2, 0, 0, 0, 100, 0, 2000, 3000, 15000, 20000, 0, 0, 11, 3604, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Shy-Rotam - In Combat - Cast Tendon Rip'),
(10737, 0, 3, 0, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 12, 10741, 1, 180000, 0, 0, 0, 8, 0, 0, 0, 0, 8074.84, -3840, 690.061, 4.6, 'Shy-Rotam - Between 0-50% health - Summon Creature Sian-Rotam (No Repeat)');


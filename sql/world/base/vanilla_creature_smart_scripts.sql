/*
    This file adds missing, or adjusts, smart_scripts for vanilla creatures.
    The information for this mostly comes from VMangos.
*/

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(232, 1892, 1893, 1896, 1934, 1935, 2006, 2007, 2010, 2160, 2956, 2979, 3058, 3068, 3279, 3284, 3285, 5785, 5807);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN 
(232, 1892, 1893, 1896, 1934, 1935, 2006, 2007, 2010, 2160, 2956, 2979, 3058, 3068, 3279, 3284, 3285, 5785, 5807);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 

(232,  0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Farmer Ray - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1892, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Moonrage Watcher - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1893, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Moonrage Sentry - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1896, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Moonrage Elder - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1934, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Tirisfal Farmer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1935, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Tirisfal Farmhand - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2006, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Gnarlpine Ursa - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2007, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Gnarlpine Gardener - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2010, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Gnarlpine Defender - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2160, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Gravelflint Geomancer - On Spawn - Cast Frost Armor'),
(2160, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Gravelflint Geomancer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2956, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Greater Plainstrider - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2979, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Venture Co. Supervisor - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3058, 0, 0, 0, 0, 0, 100, 0, 11000, 15000, 0, 0, 0, 0, 11, 6730, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Arra\'chea - In Combat - Cast Head Butt'),
(3068, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3583, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Mazzranache - On Spawn - Cast Deadly Poison'),
(3068, 0, 1, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Mazzranache - On Aggro - Cast Rushing Charge'),
(3279, 0, 0, 0, 4, 0, 20, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,              'Witchwing Ambusher - On Aggro - Say Line 0'),
(3279, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Witchwing Ambusher - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3284, 0, 0, 0, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Venture Co. Drudger - Between 0-20% Health - Flee For Assist (No Repeat)'),
(3285, 0, 0, 0, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Venture Co. Peon - Between 0-20% Health - Flee For Assist (No Repeat)'),
(5785, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,           'Sister Hatelash - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5807, 0, 0, 0, 0, 0, 100, 0, 8000, 12000, 0, 0, 0, 0, 11, 12166, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'The Rake - In Combat - Cast Muscle Tear');


DELETE FROM `creature_text` WHERE `CreatureID` = 2983;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(3279, 0, 0, 'A fine trophy your head will make, $R.',  12, 0, 100, 0, 0, 0, 2229, 0, 'Witchwing Ambusher'),
(3279, 0, 1, 'My talons will shred your puny body, $R', 12, 0, 100, 0, 0, 0, 2230, 0, 'Witchwing Ambusher'),
(3279, 0, 2, 'You will be easy prey, $C.',              12, 0, 100, 0, 0, 0, 2231, 0, 'Witchwing Ambusher');

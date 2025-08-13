/* smart scripts */
-- UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN ();
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(2892, 2932, 4844, 4845, 4846, 4851, 4856, 7057, 7078, 7405);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(2892, 2932, 4844, 4845, 4846, 4851, 4856, 7057, 7078, 7405);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(2892, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3600, 4800, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Stonevault Seer - In Combat - Cast Lightning Bolt'),
(2892, 0, 1, 0, 74, 0, 80, 0, 0, 0, 30000, 30000, 40, 40, 11, 11986, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Stonevault Seer - On Friendly Between 0-40% Health - Cast Healing Wave'),
(2892, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Stonevault Seer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2932, 0, 0, 0, 9, 0, 100, 0, 7000, 18000, 22000, 32000, 0, 5, 11, 17207, 66, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Magregan Deepshadow - In Combat - Cast Whirlwind'),
(2932, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Magregan Deepshadow - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(4844, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Shadowforge Surveyor - Out of Combat - Cast Frost Armor (No Repeat)'),
(4844, 0, 1, 0, 0, 0, 100, 0, 0, 0, 3400, 5000, 0, 0, 11, 9053, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Shadowforge Surveyor - In Combat - Cast Fireball'),
(4844, 0, 2, 0, 106, 0, 100, 0, 10000, 21000, 20000, 22000, 0, 10, 11, 865, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadowforge Surveyor - In Combat - Cast Frost Nova'),
(4844, 0, 3, 0, 2, 0, 100, 3, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Shadowforge Surveyor - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4845, 0, 0, 0, 105, 0, 100, 0, 5000, 10000, 5000, 16000, 0, 5, 11, 1767, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,   'Shadowforge Ruffian - Within 0-5 Range - Cast Kick'),
(4845, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Shadowforge Ruffian - Between 0-15% Health - Flee For Assist'),
(4846, 0, 0, 0, 9, 0, 100, 0, 0, 0, 5900, 11200, 0, 5, 11, 8380, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Shadowforge Digger - Within 0-5 Range - Cast Sunder Armor'),
(4846, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Shadowforge Digger - Between 0-15% Health - Flee For Assist'),
(4851, 0, 0, 1, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Stonevault Rockchewer - Between 0-50% Health - Cast Enrage'),
(4851, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Stonevault Rockchewer - On Enrage - Say Line 0'),
(4856, 0, 0, 0, 110, 0, 100, 1, 0, 0, 0, 0, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Stonevault Cave Hunter - Outside 30 Range - Start Combat Movement'),
(4856, 0, 1, 0, 110, 0, 100, 1, 0, 0, 0, 0, 0, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Stonevault Cave Hunter - Within 0-30 Range - Stop Combat Movement'),
(4856, 0, 2, 0, 9, 0, 100, 0, 0, 0, 2800, 4700, 5, 30, 11, 10277, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Stonevault Cave Hunter - Within 5-30 Range - Cast Throw'),
(4856, 0, 3, 0, 0, 0, 100, 0, 5900, 13200, 20300, 26700, 0, 0, 11, 6533, 64, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 0, 'Stonevault Cave Hunter - Within 0-20 Range - Cast Net'),
(4856, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Stonevault Cave Hunter - Between 0-15% Health - Flee For Assist (No Repeat)'),
(7057, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7164, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Digmaster Shovelphlange - On Aggro - Cast Defensive Stance'),
(7057, 0, 1, 0, 9, 0, 100, 0, 2700, 3100, 8600, 9400, 0, 5, 11, 8380, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Digmaster Shovelphlange - Within 0-5 Range - Cast Sunder Armor'),
(7078, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3616, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Cleft Scorpid - On Reset - Cast Poison Proc'),
(7405, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3616, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Deadly Cleft Scorpid - On Reset - Cast Poison Proc');

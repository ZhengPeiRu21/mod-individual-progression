-- Kirtonos the Herald
UPDATE `creature_template` SET `minlevel`=60, `maxlevel`=60 WHERE `entry`=10506;

-- Frail Skeleton
UPDATE `creature_template` SET `minlevel`=1, `maxlevel`=1, `faction`=233 WHERE `entry`=11258;

-- Shadowed Spirit, missing Shadow Bolt Volley
REPLACE INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(14511, 0, 0, 0, 0, 0, 100, 0, 0, 1000, 3000, 4500, 0, 0, 11, 12739, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Shadowed Spirit - In Combat - Cast Shadow Bolt'),
(14511, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 15000, 17000, 0, 0, 11, 15245, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Shadowed Spirit - In Combat - Cast Shadow Bolt Volley'),
(14511, 0, 2, 0, 0, 0, 100, 0, 1000, 6000, 8000, 12000, 0, 0, 11, 22575, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Shadowed Spirit - In Combat - Cast Shadow Shock'),
(14511, 0, 3, 0, 0, 0, 100, 0, 5000, 15000, 30000, 30000, 0, 0, 11, 22417, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadowed Spirit - In Combat - Cast Shadow Shield'),
(14511, 0, 4, 0, 1, 0, 100, 0, 0, 0, 5000, 5000, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 0,            'Shadowed Spirit - Out of Combat - Attack Start'),
(14511, 0, 5, 0, 8, 0, 100, 0, 20271, 0, 15000, 15000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Shadowed Spirit - On Spell Hit - Say Line 0');

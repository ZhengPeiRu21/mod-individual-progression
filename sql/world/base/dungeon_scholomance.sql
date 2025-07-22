UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60                 WHERE `entry` = 10506; -- Kirtonos the Herald
UPDATE `creature_template` SET `minlevel` = 1,  `maxlevel` = 1, `faction` = 233 WHERE `entry` = 11258; -- Frail Skeleton

-- Darkmaster Gandling - fix his shout message not displaying
UPDATE `creature_text` SET `TextRange` = 1 WHERE `CreatureID` = 1853;

DELETE FROM `creature_text` WHERE `CreatureID` IN (11636, 11637);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(11636, 0, 0, 'I don\'t get paid enough for this!', 12, 0, 100, 0, 0, 0, 7150, 0,    'Servant of Weldon Barov'),
(11636, 0, 1, 'Time to take out the trash!', 12, 0, 100, 0, 0, 0, 7151,  0,          'Servant of Weldon Barov'),
(11636, 0, 2, 'I\'m going to dust you into oblivion!', 12, 0, 100, 0, 0, 0, 7152, 0, 'Servant of Weldon Barov'),
(11636, 0, 3, 'How dare you?!', 12, 0, 100, 0, 0, 0, 7153,  0,                       'Servant of Weldon Barov'),
(11636, 0, 4, 'Spot of tea, gov\'na?', 12, 0, 100, 0, 0, 0, 7154, 0,                 'Servant of Weldon Barov'),
--
(11637, 0, 0, 'I don\'t get paid enough for this!', 12, 0, 100, 0, 0, 0, 7150, 0,    'Servant of Alexi Barov'),
(11637, 0, 1, 'Time to take out the trash!', 12, 0, 100, 0, 0, 0, 7151,  0,          'Servant of Alexi Barov'),
(11637, 0, 2, 'I\'m going to dust you into oblivion!', 12, 0, 100, 0, 0, 0, 7152, 0, 'Servant of Alexi Barov'),
(11637, 0, 3, 'How dare you?!', 12, 0, 100, 0, 0, 0, 7153,  0,                       'Servant of Alexi Barov'),
(11637, 0, 4, 'Spot of tea, gov\'na?', 12, 0, 100, 0, 0, 0, 7154, 0,                 'Servant of Alexi Barov');

-- smart scripts
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (10477, 11636, 11637, 14511);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (10477, 11636, 11637, 14511);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
-- fix Scholomance Necromancer, not moving, casting out of range
(10477, 0, 0, 0, 0, 0, 100, 0, 0, 3000, 5000, 9000, 11000, 0, 11, 14887, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Scholomance Necromancer - In Combat - Cast Shadow Bolt Volley'),
(10477, 0, 1, 0, 0, 0, 100, 0, 1000, 25000, 60000, 60000, 0, 0, 11, 12020, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Scholomance Necromancer - In Combat - Cast Call of the Graves'),
(10477, 0, 2, 0, 0, 0, 100, 0, 5000, 10000, 11000, 15000, 0, 0, 11, 17616, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Scholomance Necromancer - In Combat - Cast Corpse Explosion'),
(10477, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Scholomance Necromancer - Between 0-15% Health - Flee For Assist'),
--
(11636, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Servant of Weldon Barov - On Aggro - Say Line 0'),
(11637, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Servant of Alexi Barov  - On Aggro - Say Line 0'),
-- fix Shadowed Spirit, missing Shadow Bolt Volley
(14511, 0, 0, 0, 0, 0, 100, 0, 0, 1000, 3000, 4500, 0, 0, 11, 12739, 64, 0, 0, 0, 0, 5, 40, 0, 0, 0, 0, 0, 0, 0,     'Shadowed Spirit - In Combat - Cast Shadow Bolt'),
(14511, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 15000, 17000, 0, 0, 11, 15245, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Shadowed Spirit - In Combat - Cast Shadow Bolt Volley'),
(14511, 0, 2, 0, 0, 0, 100, 0, 1000, 6000, 8000, 12000, 0, 0, 11, 22575, 0, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,  'Shadowed Spirit - In Combat - Cast Shadow Shock'),
(14511, 0, 3, 0, 0, 0, 100, 0, 5000, 15000, 30000, 30000, 0, 0, 11, 22417, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadowed Spirit - In Combat - Cast Shadow Shield'),
(14511, 0, 4, 0, 1, 0, 100, 0, 0, 0, 5000, 5000, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 0,            'Shadowed Spirit - Out of Combat - Attack Start'),
(14511, 0, 5, 0, 8, 0, 100, 0, 20271, 0, 15000, 15000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Shadowed Spirit - On Spell Hit - Say Line 0');

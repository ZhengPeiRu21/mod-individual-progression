/* smart scripts */
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN  (19948, 19952, 19957, 19993, 19994, 19998, 22160, 22384, 24039);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (19948, 19952, 19957, 19993, 19994, 19998, 22160, 22384, 24039);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(19948, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Bloodmaul Skirmisher - On Just Died - Say text 1'),
(19948, 0, 1, 2, 4, 0, 35, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 21, 40, 0, 0, 0, 0, 0, 0, 0,                        'Bloodmaul Skirmisher - On Aggro - Say text 0'),
(19948, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 34932, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Bloodmaul Skirmisher - On Aggro - Cast Bloodmaul Buzz'),
(19948, 0, 3, 0, 2, 0, 100, 1, 20, 80, 0, 0, 0, 0, 11, 34802, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                 'Bloodmaul Skirmisher - Between 20-80% Health - Cast Kick (No Repeat)'),
(19948, 0, 4, 0, 2, 0, 100, 1, 5, 30, 0, 0, 0, 0, 11, 37786, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Bloodmaul Skirmisher - Between 5-30% Health - Cast Bloodmaul Rage (No Repeat)'),
(19952, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Bloodmaul Geomancer - On Just Died - Say Line 1'),
(19952, 0, 1, 0, 4, 0, 35, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 21, 40, 0, 0, 0, 0, 0, 0, 0,                        'Bloodmaul Geomancer - On Aggro - Say Line 0'),
(19952, 0, 2, 0, 1, 0, 100, 0, 0, 0, 1800000, 1800000, 0, 0, 11, 12544, 33, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Bloodmaul Geomancer - Out of Combat - Keep up Frost Armor'),
(19952, 0, 3, 0, 0, 0, 100, 0, 0, 0, 2400, 3800, 0, 0, 11, 9053, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Bloodmaul Geomancer - In Combat - Cast Fireball'),
(19957, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Bloodmaul Brewmaster - On Just Died - Say text 1'),
(19957, 0, 1, 0, 4, 0, 35, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 21, 40, 0, 0, 0, 0, 0, 0, 0,                        'Bloodmaul Brewmaster - On Aggro - Say text 0'),
(19957, 0, 2, 0, 0, 0, 85, 0, 6000, 6000, 30000, 35000, 0, 0, 11, 37591, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Bloodmaul Brewmaster - In Combat - Cast Drunken Haze'),
(19993, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                         'Bloodmaul Mauler - On Death - Say text 1'),
(19993, 0, 1, 0, 4, 0, 35, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 21, 40, 0, 0, 0, 0, 0, 0, 0,                        'Bloodmaul Mauler - On Aggro - Say text 0'),
(19993, 0, 2, 0, 2, 0, 100, 0, 10000, 12000, 10000, 12000, 0, 0, 11, 37786, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Bloodmaul Mauler - In Combat - Cast Bloodmaul Rage'),
(19993, 0, 4, 0, 0, 0, 100, 0, 15000, 30000, 30000, 60000, 0, 0, 11, 37592, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Bloodmaul Mauler - In Combat - Cast Knockdown'),
(19994, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                         'Bloodmaul Warlock - On Death - Say text 1'),
(19994, 0, 1, 0, 1, 0, 100, 0, 1000, 1000, 1800000, 1800000, 0, 0, 11, 13787, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Bloodmaul Warlock - Out of Combat - Cast Demon Armor'),
(19994, 0, 2, 0, 1, 0, 100, 1, 3000, 3000, 0, 0, 0, 0, 11, 11939, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Bloodmaul Warlock - Out of Combat - Cast Summon Imp'),
(19994, 0, 3, 0, 4, 0, 35, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 21, 40, 0, 0, 0, 0, 0, 0, 0,                        'Bloodmaul Warlock - On Aggro - Say text 0'),
(19994, 0, 4, 0, 0, 0, 100, 0, 0, 0, 2400, 3800, 0, 0, 11, 20825, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Bloodmaul Warlock - In Combat - Cast Shadow Bolt'),
(19994, 0, 5, 0, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                       'Bloodmaul Warlock - Between 0-20% Health - Flee for assist'),
(19998, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Bladespire Shaman - On Death - Say text 1'),
(19998, 0, 1, 0, 1, 0, 100, 0, 0, 0, 60000, 60000, 0, 0, 11, 12550, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Bladespire Shaman - Out Of Combat - Cast Lightning Shield'),
(19998, 0, 2, 0, 4, 0, 35, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 21, 40, 0, 0, 0, 0, 0, 0, 0,                        'Bladespire Shaman - On Aggro - Say text 0'),
(19998, 0, 3, 0, 0, 0, 100, 0, 2000, 4000, 8000, 12000, 0, 0, 11, 26098, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Bladespire Shaman - In Combat - Cast Lightning Bolt'),
(22160, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Bloodmaul Taskmaster - On Death - Say text 1'),
(22160, 0, 1, 0, 4, 0, 35, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 21, 40, 0, 0, 0, 0, 0, 0, 0,                        'Bloodmaul Taskmaster - On Aggro - Say Text 0'),
(22160, 0, 2, 3, 0, 0, 100, 0, 10000, 12000, 10000, 12000, 0, 0, 11, 37786, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Bloodmaul Taskmaster - In Combat - Cast Bloodmaul Rage'),
(22160, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                        'Bloodmaul Taskmaster - On Enrage - Say text 2'),
(22160, 0, 4, 0, 1, 0, 100, 0, 5000, 5000, 3000, 5000, 0, 0, 10, 1, 11, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Bloodmaul Taskmaster - Out of Combat - play random emotes'),
(22160, 0, 5, 0, 9, 0, 50, 0, 0, 0, 60000, 90000, 0, 5, 11, 37592, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Bloodmaul Taskmaster - Within 5 Range - Cast Knockdown'),
(22384, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                         'Bloodmaul Soothsayer - On Death - Say text 1'),
(22384, 0, 1, 0, 1, 0, 100, 0, 1000, 1000, 1800000, 1800000, 0, 0, 11, 13787, 1, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Bloodmaul Soothsayer - Out Of Combat - Cast Demon Armor'),
(22384, 0, 2, 0, 1, 0, 100, 1, 3000, 3000, 0, 0, 0, 0, 11, 11939, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Bloodmaul Soothsayer - Out Of Combat - Cast Summon Imp'),
(22384, 0, 3, 0, 4, 0, 35, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 21, 40, 0, 0, 0, 0, 0, 0, 0,                        'Bloodmaul Soothsayer - On Aggro - Say text 0'),
(22384, 0, 4, 0, 0, 0, 100, 0, 0, 0, 2400, 3800, 0, 0, 11, 20825, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Bloodmaul Soothsayer - In Combat - Cast Shadow Bolt'),
(22384, 0, 5, 0, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                       'Bloodmaul Soothsayer - Between 0-20% Health - Flee for assist'),
(22384, 0, 6, 0, 1, 0, 100, 0, 5000, 5000, 3000, 5000, 0, 0, 10, 1, 11, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Bloodmaul Soothsayer - Out of Combat - play random emotes'),
(24039, 0, 0, 1, 60, 0, 100, 257, 0, 0, 0, 0, 0, 0, 11, 39916, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Sundered Ghost - On Update - Cast Soulgrinder Ghost Transform'),
(24039, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 17321, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Sundered Ghost - On Update - Cast Spirit Spawn-in'),
(24039, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 21, 50, 0, 0, 0, 0, 0, 0, 0,                     'Sundered Ghost - On Update - Attack Start');

-- fix movement for Dreadwing
UPDATE `creature` SET `MovementType` = 2, `currentwaypoint` = 1, `position_x` = 1582.5800, `position_y` = 5299.3701, `position_z` = 267.8560 WHERE `id1` = 21032;

DELETE FROM `creature_addon` WHERE `guid` IN (73837);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(73837, 738370, 0, 0, 0, 0, 0, '');

DELETE FROM `waypoint_data` WHERE `id` IN (738370);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
--
(738370, 1, 1582.58, 5299.37, 267.856, 5.8294, 0, 0, 0, 100, 0), -- Cast Intangible Presence, 90 seconds delay
(738370, 2, 1598.22, 5292.21, 265.504, 5.52629, 0, 0, 0, 100, 0),
(738370, 3, 1609.67, 5276.61, 266.878, 5.30362, 0, 0, 0, 100, 0),
(738370, 4, 1621.22, 5252.64, 265.239, 5.63348, 0, 0, 0, 100, 0),
(738370, 5, 1634.24, 5250.57, 265.396, 0.229416, 0, 0, 0, 100, 0),
(738370, 6, 1651.42, 5251.9, 265.727, 0.537326, 0, 0, 0, 100, 0),
(738370, 7, 1663.37, 5266.92, 265.516, 1.19706, 0, 0, 0, 100, 0),
(738370, 8, 1668.87, 5291.42, 265.403, 1.62903, 0, 0, 0, 100, 0),
(738370, 9, 1664.24, 5314.84, 265.217, 1.89607, 0, 0, 0, 100, 0),
(738370, 10, 1658.88, 5331.29, 265.834, 1.8568, 0, 0, 0, 100, 0),
(738370, 11, 1651.16, 5359.24, 265.307, 1.81753, 0, 0, 0, 100, 0),
(738370, 12, 1643.33, 5392.01, 265.322, 2.03744, 0, 0, 0, 100, 0),
(738370, 13, 1633.68, 5411.22, 265.414, 2.09241, 0, 0, 0, 100, 0),
(738370, 14, 1619.73, 5442.28, 265.735, 2.05707, 0, 0, 0, 100, 0), --  Cast Netherbreath, 3 seconds delay
(738370, 15, 1609.42, 5440.83, 265.894, 4.83817, 0, 0, 0, 100, 0),
(738370, 16, 1627.09, 5413.53, 265.376, 5.08871, 0, 0, 0, 100, 0),
(738370, 17, 1631.99, 5392.28, 266.246, 4.49574, 0, 0, 0, 100, 0),
(738370, 18, 1624.47, 5368.18, 266.712, 4.59391, 0, 0, 0, 100, 0),
(738370, 19, 1619.7, 5350.2, 265.715, 4.27583, 0, 0, 0, 100, 0),
(738370, 20, 1605.97, 5329.37, 265.692, 4.08734, 0, 0, 0, 100, 0),
(738370, 21, 1594.46, 5314.34, 265.356, 4.02844, 0, 0, 0, 100, 0);

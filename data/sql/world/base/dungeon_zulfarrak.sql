/* smart scripts */
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(5645, 5646, 5647, 5648, 5649, 5650, 7246, 7247, 7267, 7274, 7795, 7797, 10081, 10082);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(5645, 5646, 5647, 5648, 5649, 5650, 7246, 7247, 7267, 7274, 7795, 7797, 10081, 10082);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(5645, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3616, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Sandfury Hideskinner - On Reset - Cast Poison Proc'),
(5645, 0, 1, 0, 67, 0, 100, 0, 3000, 6000, 6000, 10000, 0, 5, 11, 7159, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Sandfury Hideskinner - In Combat - Cast Backstab'),
(5645, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Sandfury Hideskinner - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5646, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Sandfury Axe Thrower - Outside 30 Range - Start Combat Movement'),
(5646, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Sandfury Axe Thrower - Within 5-30 Range - Stop Combat Movement'),
(5646, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Sandfury Axe Thrower - Within 0-5 Range - Start Combat Movement'),
(5646, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2200, 3900, 5, 30, 11, 10277, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Sandfury Axe Thrower - Within 5-30 Range - Cast Throw'),
(5646, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Sandfury Axe Thrower - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5647, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2400, 3800, 0, 0, 11, 14034, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Sandfury Firecaller - In Combat - Cast Fireball'),
(5647, 0, 1, 0, 0, 0, 85, 0, 8000, 14000, 20000, 26000, 0, 0, 11, 11990, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,   'Sandfury Firecaller - Within 0-30 Range - Cast Rain of Fire'),
(5647, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Sandfury Firecaller - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5648, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 90000, 90000, 0, 0, 11, 20798, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Sandfury Shadowcaster - Out of Combat - Cast Demon Skin'),
(5648, 0, 1, 0, 0, 0, 100, 0, 0, 1000, 3000, 4000, 0, 0, 11, 12471, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Sandfury Shadowcaster - In Combat - Cast Shadow Bolt'),
(5648, 0, 2, 0, 0, 0, 100, 0, 5000, 10000, 20000, 30000, 0, 0, 11, 14032, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,  'Sandfury Shadowcaster - In Combat - Cast Shadow Word: Pain'),
(5648, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Sandfury Shadowcaster - Between 0-15% Health - Flee For Assist'),
(5649, 0, 0, 0, 0, 0, 100, 0, 8000, 18000, 7000, 22000, 0, 0, 11, 11898, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Sandfury Blood Drinker - In Combat - Cast Blood Leech'),
(5649, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Sandfury Blood Drinker - Between 0-15% Health - Flee For Assist'),
(5650, 0, 0, 0, 0, 0, 100, 0, 7000, 26000, 31000, 36000, 0, 0, 11, 11899, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Sandfury Witch Doctor - In Combat - Cast Healing Ward'),
(5650, 0, 1, 0, 0, 0, 100, 0, 10000, 15000, 30000, 30000, 0, 0, 11, 8264, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Sandfury Witch Doctor - In Combat - Cast Lava Spout Totem'),
(5650, 0, 2, 0, 74, 0, 100, 0, 0, 0, 18000, 24000, 50, 40, 11, 17843, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,       'Sandfury Witch Doctor - Friendly 50% Health - Cast Flash Heal'),
(5650, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Sandfury Witch Doctor - Between 0-15% Health - Flee For Assist'),
-- (7246, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Sandfury Shadowhunter - Outside 30 Range - Start Combat Movement'),
-- (7246, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Sandfury Shadowhunter - Within 5-30 Range - Stop Combat Movement'),
-- (7246, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Sandfury Shadowhunter - Within 0-5 Range - Start Combat Movement'),
(7246, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 15547, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Sandfury Shadowhunter - Within 5-30 Range - Cast Shoot'),
(7246, 0, 4, 0, 0, 0, 100, 0, 7000, 12000, 18000, 25000, 0, 0, 11, 11641, 0, 0, 0, 0, 0, 6, 20, 0, 0, 0, 0, 0, 0, 0,  'Sandfury Shadowhunter - In Combat - Cast Hex'),
(7246, 0, 5, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 18396, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Sandfury Shadowhunter - On Aggro - Cast Dismounting Blast'),
(7246, 0, 6, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Sandfury Shadowhunter - Between 0-15% Health - Flee For Assist'),
(7247, 0, 0, 0, 0, 0, 100, 0, 8000, 20000, 18000, 37000, 0, 0, 11, 11016, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,   'Sandfury Soul Eater -  Within 0-5 Range - Cast Soul Bite'),
(7247, 0, 1, 0, 14, 0, 100, 0, 2100, 10, 10900, 15700, 0, 0, 11, 7154, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,      'Sandfury Soul Eater - Friendly Missing Health - Cast Dark Offering'),
(7247, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Sandfury Soul Eater - Between 0-15% Health - Flee For Assist'),
(7267, 0, 0, 1, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Chief Ukorz Sandscalp - On Aggro - Say line 0'),
(7267, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7366, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Chief Ukorz Sandscalp - On Aggro - Cast Berserker Stance'),
(7267, 0, 2, 0, 0, 0, 100, 0, 6000, 20000, 8000, 19000, 0, 0, 11, 15496, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Chief Ukorz Sandscalp - Within 0-5 Range - Cast Cleave'),
(7267, 0, 3, 0, 0, 0, 100, 0, 12000, 16000, 7000, 24000, 0, 0, 11, 11837, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Chief Ukorz Sandscalp - Within 0-5 Range - Cast Wide Slash'),
(7267, 0, 4, 5, 2, 0, 100, 1, 0, 60, 0, 0, 0, 0, 11, 8269, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Chief Ukorz Sandscalp - Between Health 0-60% - Cast Frenzy'),
(7267, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Chief Ukorz Sandscalp - On Frenzy - Say Line 1'),
(7267, 0, 6, 7, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8269, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Chief Ukorz Sandscalp - Between Health 0-30% - Cast Frenzy'),
(7267, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Chief Ukorz Sandscalp - On Frenzy - Say Line 2'),
(7267, 0, 8, 0, 5, 0, 100, 0, 5000, 5000, 0, 0, 0, 0, 1, 3, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Chief Ukorz Sandscalp - On Kill - Say line 3'),
(7274, 0, 0, 1, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Sandfury Executioner - On Aggro - Say line 0'),
(7274, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7366, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Sandfury Executioner - On Aggro - Cast Berserker Stance'),
(7274, 0, 2, 0, 0, 0, 100, 0, 7000, 13000, 7000, 23000, 0, 0, 11, 15496, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Sandfury Executioner - In Combat - Cast Cleave'),
(7274, 0, 3, 0, 12, 0, 100, 0, 0, 20, 30000, 30000, 0, 0, 11, 7160, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Sandfury Executioner - In Combat - Cast Execute'),
(7274, 0, 4, 0, 5, 0, 100, 0, 5000, 5000, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Sandfury Executioner - On Kill - Say line 1'),
(7795, 0, 0, 0, 0, 0, 100, 0, 0, 1000, 3000, 4000, 0, 0, 11, 10180, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Hydromancer Velratha - In Combat - Cast Frostbolt'),
(7795, 0, 1, 0, 14, 0, 100, 0, 1000, 30, 9000, 22000, 0, 0, 11, 12491, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,      'Hydromancer Velratha - Friendly Missing Health - Cast Healing Wave'),
(7797, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7366, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Ruuzlu - On Aggro - Cast Berserker Stance'),
(7797, 0, 1, 0, 0, 0, 100, 0, 7000, 12000, 7000, 18000, 0, 0, 11, 15496, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Ruuzlu - Within 0-5 Range - Cast Cleave'),
(7797, 0, 2, 0, 12, 0, 100, 0, 0, 20, 30000, 30000, 0, 0, 11, 7160, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Ruuzlu - Target Between Health 0-20% - Cast Execute'),
(10081, 0, 0, 0, 37, 0, 90, 512, 0, 0, 0, 0, 0, 0, 41, 500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Dustwraith - On Initialize - Despawn In 500 ms'),
(10081, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 12254, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Dustwraith - In Combat - Cast Virulent Poison'),
(10081, 0, 2, 0, 9, 0, 100, 0, 0, 0, 3600, 7300, 0, 5, 11, 14873, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Dustwraith - Within 0-5 Range - Cast Sinister Strike'),
(10082, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Zerillis - Outside 30 Range - Start Combat Movement'),
(10082, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Zerillis - Within 5-30 Range - Stop Combat Movement'),
(10082, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Zerillis - Within 0-5 Range - Start Combat Movement'),
(10082, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 15547, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Zerillis - Within 5-30 Range - Cast Shoot'),
(10082, 0, 4, 0, 0, 0, 100, 0, 6000, 11000, 5000, 18000, 0, 0, 11, 12551, 0, 0, 0, 0, 0, 28, 30, 1, 1, 5, 0, 0, 0, 0, 'Zerillis - Within 5-30 Range - Cast Frost Shot'),
(10082, 0, 5, 0, 9, 0, 100, 0, 0, 0, 12000, 25000, 0, 20, 11, 6533, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Zerillis - Within 0-20 Range - Cast Net'),
(10082, 0, 6, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Zerillis - Between 0-15% Health - Flee For Assist (No Repeat)'),
(10082, 0, 7, 0, 37, 0, 90, 512, 0, 0, 0, 0, 0, 0, 41, 500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Zerillis - On Initialize - Despawn In 500 ms');

-- create patrol with formation and add way points 
DELETE FROM `creature` WHERE `guid` IN (81530, 81531, 81532);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, 
`spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(81530, 7246, 0, 0, 209, 0, 0, 1, 1, 1, 1865.24, 1118.27, 10.8681, 4.69151, 86400, 0, 0, 4119, 2864, 0, 0, 0, 0, '', 0, 0, NULL),
(81531, 8095, 0, 0, 209, 0, 0, 1, 1, 0, 1867.35, 1117.43, 9.80891, 4.69091, 86400, 0, 1, 5757, 0,    2, 0, 0, 0, '', 0, 0, NULL),
(81532, 7246, 0, 0, 209, 0, 0, 1, 1, 1, 1869.56, 1120.73, 10.4645, 4.68603, 86400, 0, 0, 4119, 2864, 0, 0, 0, 0, '', 0, 0, NULL);

DELETE FROM `creature_formations` WHERE `leaderGUID` = 81531;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
(81531, 81531, 0, 0, 515, 0, 0),
(81531, 81530, 4, 160, 515, 0, 0),
(81531, 81532, 4, 200, 515, 0, 0);

DELETE FROM `creature_addon` WHERE `guid` = 81531;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(81531, 815310, 0, 0, 0, 0, 0, NULL);

DELETE FROM `waypoint_data` WHERE `id` = 815310;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
(815310, 1, 1867.72, 1117.63, 9.67427, 5.25511, 0, 0, 0, 100, 0),
(815310, 2, 1874.56, 1106.29, 8.91544, 5.25511, 0, 0, 0, 100, 0),
(815310, 3, 1867.78, 1088.92, 8.8768, 4.34012, 0, 0, 0, 100, 0),
(815310, 4, 1852.9, 1058.97, 8.87697, 4.31656, 0, 0, 0, 100, 0),
(815310, 5, 1856.97, 1035.76, 8.87697, 4.88597, 0, 0, 0, 100, 0),
(815310, 6, 1875.22, 1025.96, 8.87697, 5.73028, 0, 0, 0, 100, 0),
(815310, 7, 1857.31, 1036.28, 8.87706, 1.94073, 0, 0, 0, 100, 0),
(815310, 8, 1852.3, 1057.99, 8.87706, 1.80328, 0, 0, 0, 100, 0),
(815310, 9, 1858.01, 1071.58, 8.87706, 1.06108, 0, 0, 0, 100, 0),
(815310, 10, 1875.04, 1102.94, 8.87917, 1.10035, 0, 0, 0, 100, 0);

/* Restore Mallet requirement to Gong of Zul'Farrak */
UPDATE `gameobject_template` SET `data0` = 459 WHERE `entry` = 141832;

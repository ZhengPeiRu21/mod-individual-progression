/* smart scripts */
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (2351, 2354, 2356, 2385, 14280);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(2240, 2241, 2244, 2249, 2260, 2261, 2264, 2265, 2266, 2267, 2268, 2269, 2270, 2304, 2305, 2319, 2335, 2344, 2345, 2346, 2348, 2349, 2350, 2360, 2368, 2369, 
2370, 2371, 2372, 2373, 2374, 2375, 2376, 2377, 2387, 2403, 2404, 2427, 2428, 2448, 2449, 2450, 2451, 2503, 7068, 7069, 7070, 7071, 7072, 7073, 7075, 607068, 607069, 607070, 607071, 607072, 607075, 14278);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(2240, 2241, 2244, 2249, 2260, 2261, 2264, 2265, 2266, 2267, 2268, 2269, 2270, 2304, 2305, 2319, 2335, 2344, 2345, 2346, 2348, 2349, 2350, 2351, 2354, 2356, 2360, 2368, 2369, 
2370, 2371, 2372, 2373, 2374, 2375, 2376, 2377, 2385, 2387, 2403, 2404, 2427, 2428, 2448, 2449, 2450, 2451, 2503, 7068, 7069, 7070, 7071, 7072, 7073, 7075, 607068, 607069, 607070, 607071, 607072, 607075, 14278, 14280);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(2240, 0, 0, 0, 67, 0, 100, 0, 0, 0, 2000, 10000, 0, 5, 11, 7159, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Syndicate Footpad - Behind Target - Cast Backstab'),
(2240, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Syndicate Footpad - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2241, 0, 0, 0, 0, 0, 100, 0, 2000, 12000, 36000, 46000, 0, 0, 11, 6713, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,     'Syndicate Thief - Within 0-5 Range - Cast Disarm'),
(2241, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3616, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Syndicate Thief - On Respawn - Cast Poison Proc'),
(2241, 0, 2, 0, 67, 0, 100, 0, 0, 0, 2000, 10000, 0, 5, 11, 7159, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Syndicate Thief - Behind Target - Cast Backstab'),
(2241, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Syndicate Thief - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2244, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 13787, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Syndicate Shadow Mage - Out of Cobmat - Cast Demon Armor'),
(2244, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20791, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Syndicate Shadow Mage - In Combat - Cast Shadow Bolt'),
(2244, 0, 2, 0, 0, 0, 100, 0, 2000, 2000, 30000, 30000, 0, 0, 11, 16247, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Syndicate Shadow Mage - In Combat - Cast Curse of Thorns'),
(2244, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Syndicate Shadow Mage - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2249, 0, 0, 1, 2, 0, 100, 0, 0, 20, 0, 0, 0, 0, 11, 8599, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Ferocious Yeti - Between 0-20% Health - Cast Enrage'),
(2249, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Ferocious Yeti - On Enrage - Say Line 0'),
(2260, 0, 0, 0, 67, 0, 100, 0, 0, 0, 8000, 12000, 0, 5, 11, 37685, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Syndicate Rogue - Behind Target - Cast Backstab'),
(2260, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Syndicate Rogue - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2261, 0, 0, 0, 9, 0, 100, 0, 0, 0, 15000, 30000, 0, 5, 11, 3602, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Syndicate Watchman - Within 0-5 Range - Cast Torch Burst'),
(2261, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Syndicate Watchman - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(2264, 0, 0, 0, 67, 0, 100, 0, 0, 0, 7000, 9000, 0, 5, 11, 2590, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Hillsbrad Tailor - Behind Target - Cast Backstab'),
(2264, 0, 1, 0, 9, 0, 100, 0, 0, 0, 7000, 11000, 0, 5, 11, 101, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Hillsbrad Tailor - Within 0-5 Range - Cast Trip'),
(2264, 0, 2, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Hillsbrad Tailor - Between 0-30% Health - Flee For Assist'),
(2265, 0, 0, 0, 9, 0, 100, 0, 0, 0, 25000, 30000, 0, 5, 11, 3148, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Hillsbrad Apprentice Blacksmith - Within 0-5 Range - Cast Head Crack'),
(2265, 0, 1, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Hillsbrad Apprentice Blacksmith - Between 0-30% Health - Flee For Assist (No Repeat)'),
(2266, 0, 0, 0, 0, 0, 100, 0, 8000, 18000, 20000, 40000, 0, 0, 11, 6713, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,     'Hillsbrad Farmer - Within 0-5 Range - Cast Disarm'),
(2266, 0, 1, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Hillsbrad Farmer - Between 0-30% Health - Flee For Assist (No Repeat)'),
(2267, 0, 0, 0, 9, 0, 100, 0, 0, 0, 45000, 45000, 0, 5, 11, 6016, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Hillsbrad Peasant - Within 0-5 Range - Cast Pierce Armor'),
(2267, 0, 1, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Hillsbrad Peasant - Between 0-30% Health - Flee For Assist (No Repeat)'),
(2268, 0, 0, 0, 0, 0, 100, 0, 1000, 1000, 180000, 180000, 0, 0, 11, 7164, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Hillsbrad Footman - In Combat - Cast Defensive Stance'),
(2268, 0, 1, 0, 105, 0, 100, 0, 0, 0, 12000, 15000, 0, 5, 11, 1671, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,          'Hillsbrad Footman - Target Casting - Cast Shield Bash'),
(2268, 0, 2, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Hillsbrad Footman - Between 0-30% Health - Flee For Assist (No Repeat)'),
(2269, 0, 0, 0, 0, 0, 100, 0, 1000, 1000, 180000, 180000, 0, 0, 11, 7164, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Hillsbrad Miner - In Combat - Cast Defensive Stance'),
(2269, 0, 1, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 7405, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Hillsbrad Miner - Within 0-5 Range - Cast Sunder Armor'),
(2269, 0, 2, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Hillsbrad Miner - Between 0-30% Health - Flee For Assist (No Repeat)'),
(2270, 0, 0, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Hillsbrad Sentry - Between 0-30% Health - Flee For Assist (No Repeat)'),
--
(2304, 0, 0, 0, 0, 0, 100, 0, 1000, 3000, 23000, 30000, 0, 0, 11, 7020, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Captain Ironhill - In Combat - Cast Stoneform'),
(2304, 0, 1, 0, 105, 0, 100, 0, 0, 0, 10000, 14000, 0, 5, 11, 12555, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Captain Ironhill - Target Casting - Cast Pummel'),
(2304, 0, 2, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Captain Ironhill - Between 0-30% Health - Flee For Assist (No Repeat)'),
(2305, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 643, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Foreman Bonds - On Respawn - Cast Devotion Aura'),
(2305, 0, 1, 0, 9, 0, 100, 0, 0, 0, 60000, 60000, 0, 5, 11, 5588, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Foreman Bonds - Within 0-5 Range - Cast Hammer of Justice'),
(2305, 0, 2, 3, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 12, 7360, 1, 300000, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Foreman Bonds - Between 0-30% Health - Summon Creature \'Dun Garok Soldier\' (No Repeat)'),
(2305, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 12, 7360, 1, 300000, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Foreman Bonds - Between 0-30% Health - Summon Creature \'Dun Garok Soldier\' (No Repeat)'),
(2319, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Syndicate Wizard - Out of Combat - Cast Frost Armor'),
(2319, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20815, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Syndicate Wizard - In Combat - Cast Fireball'),
(2319, 0, 2, 0, 0, 0, 100, 0, 5000, 9000, 25000, 35000, 0, 0, 11, 12824, 1, 0, 0, 0, 0, 6, 30, 0, 0, 0, 0, 0, 0, 0,    'Syndicate Wizard - Within 0-30 Range - Cast Polymorph'),
(2335, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20811, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Magistrate Burnside - In Combat - Cast Fireball'),
(2335, 0, 1, 0, 106, 0, 100, 0, 0, 0, 12000, 15000, 0, 8, 11, 11969, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Magistrate Burnside - Within 0-8 Range - Cast Fire Nova'),
(2335, 0, 2, 0, 0, 0, 100, 0, 5000, 7000, 16000, 20000, 0, 0, 11, 7739, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Magistrate Burnside - In Combat - Cast Inferno Shell'),
(2335, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Magistrate Burnside - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(2344, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 643, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Dun Garok Mountaineer - On Respawn - Cast Devotion Aura'),
(2344, 0, 1, 0, 9, 0, 100, 0, 0, 0, 9000, 15000, 0, 5, 11, 13953, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Dun Garok Mountaineer - Within 0-5 Range - Cast Holy Strike'),
(2344, 0, 2, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Dun Garok Mountaineer - Between 0-30% Health - Flee For Assist (No Repeat)'),
(2345, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Dun Garok Rifleman - Outside 30 Range - Start Combat Movement'),
(2345, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Dun Garok Rifleman - Within 5-30 Range - Stop Combat Movement'),
(2345, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Dun Garok Rifleman - Within 0-5 Range - Start Combat Movement'),
(2345, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Dun Garok Rifleman - Within 5-30 Range - Cast Shoot'),
(2345, 0, 4, 0, 0, 0, 100, 0, 12000, 18000, 30000, 30000, 0, 0, 11, 6685, 1, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,   'Dun Garok Rifleman - Within 0-30 Range - Cast Piercing Shot'),
(2345, 0, 5, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Dun Garok Rifleman - Between 0-30% Health - Flee For Assist (No Repeat)'),
(2346, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 3000, 0, 0, 11, 9734, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Dun Garok Priest - In Combat - Cast Holy Smite'),
(2346, 0, 1, 0, 74, 0, 100, 0, 0, 0, 15000, 25000, 40, 40, 11, 11642, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Dun Garok Priest - Friendly Between 0-40% Health - Cast Heal'),
(2346, 0, 2, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Dun Garok Priest - Between 0-30% Health - Flee For Assist (No Repeat)'),
--
(2348, 0, 0, 0, 0, 0, 100, 0, 3000, 5000, 31000, 36000, 0, 0, 11, 3396, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Elder Moss Creeper - In Combat - Cast Corrosive Poison'),
(2349, 0, 0, 0, 0, 0, 100, 0, 5000, 16000, 30000, 36000, 0, 0, 11, 3396, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Giant Moss Creeper - In Combat - Cast Corrosive Poison'),
(2350, 0, 0, 0, 0, 0, 100, 0, 3000, 5000, 31000, 36000, 0, 0, 11, 3396, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Forest Moss Creeper - In Combat - Cast Corrosive Poison'),
(2360, 0, 0, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Hillsbrad Farmhand - Between 0-30% Health - Flee For Assist (No Repeat)'),
--
(2368, 0, 0, 0, 0, 0, 100, 0, 1000, 1000, 180000, 180000, 0, 0, 11, 7164, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Daggerspine Shorestalker - In Combat - Cast Defensive Stance'),
(2368, 0, 1, 0, 105, 0, 100, 0, 0, 0, 9000, 13000, 0, 5, 11, 12555, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,          'Daggerspine Shorestalker - Target Casting - Cast Pummel'),
(2368, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Daggerspine Shorestalker - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2369, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Daggerspine Shorehunter - Outside 30 Range - Start Combat Movement'),
(2369, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Daggerspine Shorehunter - Within 5-30 Range - Stop Combat Movement'),
(2369, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Daggerspine Shorehunter - Within 0-5 Range - Start Combat Movement'),
(2369, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 10277, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Daggerspine Shorehunter - Within 5-30 Range - Cast Throw'),
(2369, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Daggerspine Shorehunter - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2370, 0, 0, 0, 0, 0, 100, 0, 5000, 9000, 12000, 16000, 0, 0, 11, 3589, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Daggerspine Screamer - Within 0-5 Range - Cast Deafening Screech'),
(2370, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Daggerspine Screamer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2371, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Daggerspine Siren - In Combat - Cast Lightning Bolt'),
(2371, 0, 1, 0, 0, 0, 100, 0, 6000, 8000, 19000, 24000, 0, 0, 11, 992, 33, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,     'Daggerspine Siren - In Combat - Cast Shadow Word: Pain'),
(2371, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Daggerspine Siren - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(2372, 0, 0, 0, 9, 0, 100, 0, 0, 0, 30000, 30000, 0, 5, 11, 3650, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Mudsnout Gnoll - Within 0-5 Range - Cast Sling Mud'),
(2372, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Mudsnout Gnoll - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2373, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3400, 4800, 0, 0, 11, 20805, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Mudsnout Shaman - In Combat CMC - Cast \'Lightning Bolt\''),
(2373, 0, 1, 0, 74, 0, 100, 0, 0, 0, 15000, 20000, 40, 40, 11, 939, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,          'Mudsnout Shaman - Friendly Between 0-40% Health - Cast Healing Wave'),
(2373, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Mudsnout Shaman - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(2374, 0, 0, 0, 9, 0, 100, 0, 0, 0, 8000, 12000, 0, 5, 11, 3427, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Torn Fin Muckdweller - Within 0-5 Range - Cast Infected Wound'),
(2374, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Torn Fin Muckdweller - Between 0-15% Health - Flee For Assist'),
(2375, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Torn Fin Coastrunner - Outside 30 Range - Start Combat Movement'),
(2375, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Torn Fin Coastrunner - Within 5-30 Range - Stop Combat Movement'),
(2375, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Torn Fin Coastrunner - Within 0-5 Range - Start Combat Movement'),
(2375, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 10277, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Torn Fin Coastrunner - Within 5-30 Range - Cast Throw'),
(2375, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Torn Fin Coastrunner - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2376, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Torn Fin Oracle - In Combat - Cast Lightning Bolt'),
(2376, 0, 1, 0, 2, 0, 100, 0, 0, 25, 25000, 35000, 0, 0, 11, 939, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Torn Fin Oracle - Between 0-25% Health - Cast Healing Wave'),
(2376, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Torn Fin Oracle - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2377, 0, 0, 0, 106, 0, 100, 0, 0, 0, 12000, 15000, 0, 8, 11, 865, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Torn Fin Tidehunter - Within 0-8 Range - Cast Frost Nova'),
(2377, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Torn Fin Tidehunter - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(2387, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Hillsbrad Councilman - Out of Combat - Cast Frost Armor'),
(2387, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20806, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Hillsbrad Councilman - In Combat - Cast Frostbolt'),
(2387, 0, 2, 0, 106, 0, 100, 0, 0, 0, 25000, 25000, 0, 8, 11, 122, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Hillsbrad Councilman - Within 0-8 Range - Cast Frost Nova'),
(2387, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Hillsbrad Councilman - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(2403, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Farmer Getz - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2404, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Blacksmith Verringtan - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2427, 0, 0, 0, 0, 0, 100, 0, 7000, 11000, 21000, 25000, 0, 0, 11, 3442, 0, 0, 0, 0, 0, 6, 15, 0, 0, 0, 0, 0, 0, 0,    'Jailor Eston - Within 0-15 Range - Cast Enslave'),
(2427, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Jailor Eston - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2428, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Jailor Marlgen - On Aggro - Say Line 0'),
(2428, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Jailor Marlgen - Outside 30 Range - Start Combat Movement'),
(2428, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Jailor Marlgen - Within 5-30 Range - Stop Combat Movement'),
(2428, 0, 3, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Jailor Marlgen - Within 0-5 Range - Start Combat Movement'),
(2428, 0, 4, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Jailor Marlgen - Within 5-30 Range - Cast Shoot'),
(2428, 0, 5, 0, 9, 0, 100, 0, 0, 0, 5000, 15000, 0, 20, 11, 6533, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Jailor Marlgen - Within 0-20 Range - Cast Net'),
(2428, 0, 6, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Jailor Marlgen - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2448, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Clerk Horrace Whitesteed - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2449, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Citizen Wilkes - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2450, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Miner Hackett - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2451, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Farmer Kalaba - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2503, 0, 0, 0, 0, 0, 100, 0, 1000, 3000, 11000, 15000, 0, 0, 11, 5115, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Hillsbrad Foreman - In Combat - Cast Battle Command'),
(2503, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Hillsbrad Foreman - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(7068, 0, 0, 0, 0, 0, 100, 0, 0, 0, 21000, 25000, 0, 0, 11, 15654, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Condemned Acolyte - In Combat - Cast Shadow Word: Pain'),
(7068, 0, 1, 0, 74, 0, 100, 0, 0, 0, 18000, 25000, 40, 40, 11, 25058, 32, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,       'Condemned Acolyte - Friendly Between 0-40% Health - Cast Renew'),
(7069, 0, 0, 0, 105, 0, 100, 0, 0, 0, 15000, 21000, 0, 5, 11, 15614, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Condemned Monk - Target Casting - Cast Kick'),
(7069, 0, 1, 0, 105, 0, 100, 0, 0, 0, 9000, 13000, 0, 5, 11, 12555, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,          'Condemned Monk - Target Casting - Cast Pummel'),
(7070, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 25054, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Condemned Cleric - In Combat - Cast Holy Smite'),
(7070, 0, 1, 0, 74, 0, 100, 0, 0, 0, 18000, 21000, 40, 40, 11, 15586, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Condemned Cleric - Friendly Between 0-40% Health - Cast Heal'),
(7071, 0, 0, 0, 9, 0, 100, 0, 0, 0, 14000, 18000, 0, 8, 11, 13005, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Cursed Paladin - Within 0-8 Range - Cast Hammer of Justice'),
(7072, 0, 0, 0, 9, 0, 100, 0, 0, 0, 5000, 8000, 0, 5, 11, 15580, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Cursed Justicar - Within 0-5 Range - Cast Strike'),   
(7073, 0, 0, 0, 14, 0, 100, 0, 3000, 30, 3000, 6000, 0, 0, 11, 15493, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Arados the Damned - Friendly Missing 3000 Health - Cast Holy Light'),
(7073, 0, 1, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 13874, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Arados the Damned - Between 0-30% Health - Cast Divine Shield (No Repeat)'),
(7075, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 12675, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Writhing Mage - In Combat - Cast Frostbolt'),
(7075, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Writhing Mage - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(607068, 0, 0, 0, 0, 0, 100, 0, 0, 0, 21000, 25000, 0, 0, 11, 15654, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Condemned Acolyte - In Combat - Cast Shadow Word: Pain'),
(607068, 0, 1, 0, 74, 0, 100, 0, 0, 0, 18000, 25000, 40, 40, 11, 11640, 32, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,     'Condemned Acolyte - Friendly Between 0-40% Health - Cast Renew'),
(607069, 0, 0, 0, 105, 0, 100, 0, 0, 0, 15000, 21000, 0, 5, 11, 15614, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,       'Condemned Monk - Target Casting - Cast Kick'),
(607069, 0, 1, 0, 105, 0, 100, 0, 0, 0, 9000, 13000, 0, 5, 11, 12555, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Condemned Monk - Target Casting - Cast Pummel'),
(607070, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9734, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Condemned Cleric - In Combat - Cast Holy Smite'),
(607070, 0, 1, 0, 74, 0, 100, 0, 0, 0, 18000, 21000, 40, 40, 11, 15586, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,      'Condemned Cleric - Friendly Between 0-40% Health - Cast Heal'),
(607071, 0, 0, 0, 9, 0, 100, 0, 0, 0, 14000, 18000, 0, 8, 11, 13005, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Cursed Paladin - Within 0-8 Range - Cast Hammer of Justice'),
(607072, 0, 0, 0, 9, 0, 100, 0, 0, 0, 5000, 8000, 0, 5, 11, 15580, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Cursed Justicar - Within 0-5 Range - Cast Strike'),
(607075, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 12675, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Writhing Mage - In Combat - Cast Frostbolt'),
(607075, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Writhing Mage - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(14278, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Ro\'Bark - Between 0-15% Health - Flee For Assist (No Repeat)');


-- Drop chance for Humbert's Sword was incorrectly set to 100 - updated to 25 - value copied from VMangos
UPDATE `creature_loot_template` SET `Chance` = 25 WHERE `Item` = 3693;

-- Drop chance for Mountain Lion Blood was incorrectly set to 100%
DELETE FROM `creature_loot_template` WHERE `Item` = 3496;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(2384, 3496, 0, 40, 1, 1, 0, 1, 1, 'Starving Mountain Lion - Mountain Lion Blood'),
(2385, 3496, 0, 80, 1, 1, 0, 1, 1, 'Feral Mountain Lion - Mountain Lion Blood'),
(2406, 3496, 0, 80, 1, 1, 0, 1, 1, 'Mountain Lion - Mountain Lion Blood'),
(2407, 3496, 0, 80, 1, 1, 0, 1, 1, 'Hulking Mountain Lion - Mountain Lion Blood');

-- Souvenirs of Death - this quests was missing a pre quest
UPDATE `quest_template_addon` SET `PrevQuestID` = 527 WHERE `ID` = 546;

-- fix creature movement and spawn locations
DELETE FROM `creature` WHERE `id1` IN (232, 2403, 2427, 2428, 2450, 14275, 14276, 14277, 14280);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, 
`spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
--
(16520,  232, 0, 0, 0, 0, 0, 1, 1, 1, -341.604, 3.60308, 60.3681, 2.21657,        300, 0, 0, 617, 0, 0, 0, 0, 0, '', 0, 0, NULL),    -- Farmer Ray
(695081, 232, 0, 0, 0, 0, 0, 1, 1, 1, -348.713, 10.4609, 55.5201, 2.45648,        300, 0, 0, 617, 0, 0, 0, 0, 0, '', 0, 0, NULL),    -- https://www.youtube.com/watch?v=RrKUsnh0eUI&t=146s
(695082, 232, 0, 0, 0, 0, 0, 1, 1, 1, -357.796, -12.7334, 55.0301, 2.45255,       300, 0, 0, 617, 0, 0, 0, 0, 0, '', 0, 0, NULL),    -- https://www.youtube.com/watch?v=U0RFwLk8fXI&t=56s
(16033,  2403, 0, 0, 0, 0, 0, 1, 1, 1, -441.325, -108.685, 55.0466, 4.54965,      300, 3, 0, 664, 0, 1, 0, 0, 0, '', 0, 0, NULL),    -- Farmer Getz
(695083, 2403, 0, 0, 0, 0, 0, 1, 1, 1, -404.693, -63.9941, 54.4383, 0.838548,     300, 3, 0, 664, 0, 1, 0, 0, 0, '', 0, 0, NULL),    -- https://www.youtube.com/watch?v=RrKUsnh0eUI&t=84s
(695084, 2403, 0, 0, 0, 0, 0, 1, 1, 1, -461.805, -75.588, 54.9525, 5.90828,       300, 5, 0, 664, 0, 1, 0, 0, 0, '', 0, 0, NULL),
--
(16100,  2427, 0, 0, 0, 0, 0, 1, 1, 1, -492.277, -1480.43, 88.0715, 4.87372,      300, 0, 0, 664, 0, 0, 0, 0, 0, '', 0, 0, NULL),    -- Jailor Eston
(695089, 2427, 0, 0, 0, 0, 0, 1, 1, 1, -489.347, -1341.93, 53.6018, 3.77872,      300, 3, 0, 665, 0, 1, 0, 0, 0, '', 0, 0, NULL),    -- https://www.youtube.com/watch?v=oU9G9Ormowc
(16063,  2428, 0, 0, 0, 0, 0, 1, 1, 1, -465.482, -1476.91, 90.2819, 5.11627,      300, 0, 0, 664, 0, 0, 0, 0, 0, '', 0, 0, NULL),    -- Jailor Marlgen
(695090, 2428, 0, 0, 0, 0, 0, 1, 1, 1, -456.353, -1429.64, 90.9867, 2.87945,      300, 0, 0, 665, 0, 0, 0, 0, 0, '', 0, 0, NULL),    -- https://www.youtube.com/watch?v=CpMW6hAvVaM
--
(16017,  2450, 0, 0, 0, 0, 0, 1, 1, 0, -850.691, 70.7417, 3.18556, 5.24437,       300, 3, 0, 950, 0, 1, 0, 0, 0, '', 0, 0, NULL),    -- Miner Hackett
(695085, 2450, 0, 0, 0, 0, 0, 1, 1, 0, -806.764, 72.9448, 5.48975, 1.47675,       300, 3, 0, 950, 0, 1, 0, 0, 0, '', 0, 0, NULL),    -- https://www.youtube.com/watch?v=U0fVBiMcKw4&t=46s
(695086, 2450, 0, 0, 0, 0, 0, 1, 1, 0, -726.056, 46.5942, 11.0874, 1.98333,       300, 3, 0, 950, 0, 1, 0, 0, 0, '', 0, 0, NULL),    -- https://www.youtube.com/watch?v=q0Z73-tUy30&t=46s
--
(90783,  14275, 0, 0, 0, 0, 0, 1, 1, 1, -1265.12, -1195.08, 40.0486, 3.39339,   23400, 0, 0, 2196, 756, 0, 0, 0, 0, '', 0, 0, NULL), -- Tamra Stormpike
(695087, 14275, 0, 0, 0, 0, 0, 1, 1, 1, -1329.94, -1277.46, 49.9856, 2.30129,   23400, 0, 0, 2196, 756, 0, 0, 0, 0, '', 0, 0, NULL),
(695088, 14275, 0, 0, 0, 0, 0, 1, 1, 1, -1356.64, -1247.21, 49.9871, 3.44652,   23400, 0, 0, 2196, 756, 0, 0, 0, 0, '', 0, 0, NULL),
--
(15970,  14276, 0, 0, 0, 0, 0, 1, 1, 0, -1169.36, 136.213, 0.331683, 4.57671,   23400, 5, 0, 1003, 0, 1, 0, 0, 0, '', 0, 0, NULL),   -- Scargil
(16047,  14277, 0, 0, 0, 0, 0, 1, 1, 1, -1473.69, -1099.37, -4.31768, 0.553209, 23400, 0, 1, 918, 2457, 2, 0, 0, 0, '', 0, 0, NULL), -- Lady Zephris
(15839,  14280, 0, 0, 0, 0, 0, 1, 1, 0, -451.793, -1686.39, 85.5209, 1.55137,   43200, 5, 0, 1080, 0, 1, 0, 0, 0, '', 0, 0, NULL);   -- Big Samras

DELETE FROM `pool_creature` WHERE `pool_entry` IN (601041, 601042, 601043, 601044, 601045, 601046);
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
(232,    601041, 0, 'Farmer Ray'),
(695081, 601041, 0, 'Farmer Ray'),
(695082, 601041, 0, 'Farmer Ray'),
(2403,   601042, 0, 'Farmer Getz'),
(695083, 601042, 0, 'Farmer Getz'),
(695084, 601042, 0, 'Farmer Getz'),
(16017,  601043, 0, 'Miner Hackett'),
(695085, 601043, 0, 'Miner Hackett'),
(695086, 601043, 0, 'Miner Hackett'),
(90783,  601044, 0, 'Tamra Stormpike'),
(695087, 601044, 0, 'Tamra Stormpike'),
(695088, 601044, 0, 'Tamra Stormpike'),
(16100,  601045, 0, 'Jailor Eston'),
(695089, 601045, 0, 'Jailor Eston'),
(16063,  601046, 0, 'Jailor Marlgen'),
(695090, 601046, 0, 'Jailor Marlgen');

DELETE FROM `pool_template` WHERE `entry` IN (601041, 601042, 601043, 601044, 601045, 601046);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES 
(601041, 1, 'Farmer Ray - Hillsbrad Foothills'),
(601042, 1, 'Farmer Getz - Hillsbrad Foothills'),
(601043, 1, 'Miner Hackett - Hillsbrad Foothills'),
(601044, 1, 'Tamra Stormpike - Hillsbrad Foothills'),
(601045, 1, 'Jailor Eston - Hillsbrad Foothills'),
(601046, 1, 'Jailor Marlgen - Hillsbrad Foothills');

DELETE FROM `creature_addon` WHERE `guid` IN (16047);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(16047, 160470, 0, 0, 1, 0, 0, NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (160470);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
--
(160470, 1, -1473.69, -1099.37, -4.31768, NULL, 0, 0, 0, 100, 0), -- Lady Zephris
(160470, 2, -1478.49, -1077.97, -6.02324, NULL, 0, 0, 0, 100, 0),
(160470, 3, -1460.67, -1051.92, -7.36767, NULL, 0, 0, 0, 100, 0),
(160470, 4, -1427.72, -1040.4, -2.07805, NULL, 0, 0, 0, 100, 0),
(160470, 5, -1397.57, -1032.1, -1.50463, NULL, 0, 0, 0, 100, 0),
(160470, 6, -1359.55, -1021.62, -1.10811, NULL, 0, 0, 0, 100, 0),
(160470, 7, -1318.34, -1009.28, -1.73937, NULL, 0, 0, 0, 100, 0),
(160470, 8, -1293.97, -994.243, -0.915345, NULL, 0, 0, 0, 100, 0),
(160470, 9, -1279.48, -972.204, -1.01276, NULL, 0, 0, 0, 100, 0),
(160470, 10, -1259.86, -943.912, 0.434515, NULL, 0, 0, 0, 100, 0),
(160470, 11, -1245.77, -916.386, 0.210853, NULL, 0, 0, 0, 100, 0),
(160470, 12, -1230.9, -889.932, -0.299061, NULL, 0, 0, 0, 100, 0),
(160470, 13, -1202.36, -861.052, 0.127409, NULL, 0, 0, 0, 100, 0),
(160470, 14, -1181.99, -838.14, -0.0714753, NULL, 0, 0, 0, 100, 0),
(160470, 15, -1155.67, -812.214, 0.00438118, NULL, 0, 0, 0, 100, 0),
(160470, 16, -1135.05, -793.822, 0.73909, NULL, 0, 0, 0, 100, 0),
(160470, 17, -1101.64, -791.881, -0.240455, NULL, 0, 0, 0, 100, 0),
(160470, 18, -1135.05, -793.822, 0.73909, NULL, 0, 0, 0, 100, 0),
(160470, 19, -1155.67, -812.214, 0.00438118, NULL, 0, 0, 0, 100, 0),
(160470, 20, -1181.99, -838.14, -0.0714753, NULL, 0, 0, 0, 100, 0),
(160470, 21, -1202.36, -861.052, 0.127409, NULL, 0, 0, 0, 100, 0),
(160470, 22, -1230.9, -889.932, -0.299061, NULL, 0, 0, 0, 100, 0),
(160470, 23, -1245.77, -916.386, 0.210853, NULL, 0, 0, 0, 100, 0),
(160470, 24, -1259.86, -943.912, 0.434515, NULL, 0, 0, 0, 100, 0),
(160470, 25, -1279.48, -972.204, -1.01276, NULL, 0, 0, 0, 100, 0),
(160470, 26, -1293.97, -994.243, -0.915345, NULL, 0, 0, 0, 100, 0),
(160470, 27, -1318.34, -1009.28, -1.73937, NULL, 0, 0, 0, 100, 0),
(160470, 28, -1359.55, -1021.62, -1.10811, NULL, 0, 0, 0, 100, 0),
(160470, 29, -1397.57, -1032.1, -1.50463, NULL, 0, 0, 0, 100, 0),
(160470, 30, -1427.72, -1040.4, -2.07805, NULL, 0, 0, 0, 100, 0),
(160470, 31, -1460.67, -1051.92, -7.36767, NULL, 0, 0, 0, 100, 0),
(160470, 32, -1478.49, -1077.97, -6.02324, NULL, 0, 0, 0, 100, 0);


/* ---- Purgation Isle (896) ---- */

DELETE FROM `creature_template` WHERE `entry` IN (607068, 607069, 607070, 607071, 607072, 607075);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, 
`minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, 
`BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, 
`PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, 
`RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
--
(607068, 0, 0, 0, 0, 0, 'Condemned Acolyte', NULL, NULL, 0, 30, 31, 0, 16, 0, 1, 1.14286, 1, 1, 20, 1, 0, 0, 2.3, 2000, 2000, 1, 1, 2, 32768, 2048, 0, 0, 6, 0, 7074, 0, 0, 0, 0, 421, 555, 'SmartAI', 0, 1, 1.1, 1, 0.25, 1, 0, 0, 1, 8413718, 0, 0, '', 12340),
(607069, 0, 0, 0, 0, 0, 'Condemned Monk', NULL, NULL, 0, 31, 32, 0, 16, 0, 1, 1.14286, 1, 1, 20, 1, 0, 0, 2.55, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 6, 0, 7073, 0, 0, 0, 0, 474, 624, 'SmartAI', 0, 1, 1, 1, 0.25, 1, 0, 0, 1, 8413702, 0, 0, '', 12340),
(607070, 0, 0, 0, 0, 0, 'Condemned Cleric', NULL, NULL, 0, 32, 33, 0, 16, 0, 1, 1.14286, 1, 1, 20, 1, 0, 0, 2.25, 2000, 2000, 1, 1, 2, 32768, 2048, 0, 0, 6, 0, 7074, 0, 0, 0, 0, 454, 598, 'SmartAI', 0, 1, 1.1, 1, 0.25, 1, 0, 0, 1, 8413718, 0, 0, '', 12340),
(607071, 0, 0, 0, 0, 0, 'Cursed Paladin', NULL, NULL, 0, 30, 31, 0, 16, 0, 1, 1.14286, 1, 1, 20, 1, 0, 0, 0.8, 2000, 2000, 1, 1, 2, 32768, 2048, 0, 0, 6, 0, 7073, 0, 0, 0, 0, 413, 544, 'SmartAI', 0, 1, 1.1, 1, 0.25, 1, 0, 0, 1, 8413718, 0, 0, '', 12340),
(607072, 0, 0, 0, 0, 0, 'Cursed Justicar', NULL, NULL, 0, 32, 32, 0, 16, 0, 1, 1.14286, 1, 1, 20, 1, 0, 0, 0.7, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 6, 0, 7073, 0, 0, 0, 0, 527, 693, 'SmartAI', 0, 1, 1.1, 1, 0.2, 1, 0, 0, 1, 8413718, 0, 0, '', 12340),
(607075, 0, 0, 0, 0, 0, 'Writhing Mage', NULL, NULL, 0, 31, 32, 0, 16, 0, 1, 1.14286, 1, 1, 20, 1, 0, 0, 0.75, 2000, 2000, 1, 1, 2, 32768, 2048, 0, 0, 6, 0, 7074, 0, 0, 0, 0, 397, 524, 'SmartAI', 0, 1, 1, 1, 0.2, 1, 0, 0, 1, 8413718, 0, 0, '', 12340);

DELETE FROM `creature_template_addon` WHERE `entry` IN (607068, 607070);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
(607068, 0, 0, 0, 1, 0, 0, ''),
(607070, 0, 0, 0, 1, 0, 0, '');

DELETE FROM `creature_template_locale` WHERE `entry` BETWEEN 607068 AND 607075;
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES 
(607068, 'deDE', 'Verurteilter Akolyth', '', 18019),
(607068, 'esES', 'Acólito condenado', '', 18019),
(607068, 'esMX', 'Acólito condenado', '', 18019),
(607068, 'frFR', 'Acolyte condamné', '', 18019),
(607068, 'koKR', '이승을 떠도는 수행사제', '', 18019),
(607068, 'ruRU', 'Обреченный послушник', '', 18019),
(607068, 'zhCN', '有罪的侍僧', '', 18019),
(607068, 'zhTW', '有罪的侍僧', '', 18019),
(607069, 'deDE', 'Verurteilter Mönch', '', 18019),
(607069, 'esES', 'Monje condenado', '', 18019),
(607069, 'esMX', 'Monje condenado', '', 18019),
(607069, 'frFR', 'Moine condamné', '', 18019),
(607069, 'koKR', '이승을 떠도는 수도사', '', 18019),
(607069, 'ruRU', 'Обреченный монах', '', 18019),
(607069, 'zhCN', '有罪的僧侣', '', 18019),
(607069, 'zhTW', '有罪的僧侶', '', 18019),
(607070, 'deDE', 'Verurteilter Kleriker', '', 18019),
(607070, 'esES', 'Clérigo condenado', '', 18019),
(607070, 'esMX', 'Clérigo condenado', '', 18019),
(607070, 'frFR', 'Clerc condamné', '', 18019),
(607070, 'koKR', '이승을 떠도는 성직자', '', 18019),
(607070, 'ruRU', 'Обреченный священник', '', 18019),
(607070, 'zhCN', '有罪的牧师', '', 18019),
(607070, 'zhTW', '有罪的教士', '', 18019),
(607071, 'deDE', 'Verfluchter Paladin', '', 18019),
(607071, 'esES', 'Paladín maldito', '', 18019),
(607071, 'esMX', 'Paladín maldito', '', 18019),
(607071, 'frFR', 'Paladin maudit', '', 18019),
(607071, 'koKR', '저주받은 성기사', '', 18019),
(607071, 'ruRU', 'Проклятый паладин', '', 18019),
(607071, 'zhCN', '被诅咒的圣骑士', '', 18019),
(607071, 'zhTW', '被詛咒的聖騎士', '', 18019),
(607072, 'deDE', 'Verfluchter Justiziar', '', 18019),
(607072, 'esES', 'Justicar maldito', '', 18019),
(607072, 'esMX', 'Justicar maldito', '', 18019),
(607072, 'frFR', 'Justicier maudit', '', 18019),
(607072, 'koKR', '저주받은 심판관', '', 18019),
(607072, 'ruRU', 'Проклятый вершитель правосудия', '', 18019),
(607072, 'zhCN', '被诅咒的审判者', '', 18019),
(607072, 'zhTW', '被詛咒的審判者', '', 18019),
(607073, 'deDE', 'Arados der Verdammte', '', 18019),
(607073, 'esES', 'Arados el Maldito', '', 18019),
(607073, 'esMX', 'Arados el Maldito', '', 18019),
(607073, 'frFR', 'Arados le Maudit', '', 18019),
(607073, 'koKR', '저주받은 아라도스', '', 18019),
(607073, 'ruRU', 'Арадос Проклятый', '', 18019),
(607073, 'zhCN', '可憎的阿拉杜斯', '', 18019),
(607073, 'zhTW', '被詛咒的阿拉杜斯', '', 18019),
(607074, 'deDE', 'Richter Thelgram', '', 18019),
(607074, 'esES', 'Juez Thelgram', '', 18019),
(607074, 'esMX', 'Juez Thelgram', '', 18019),
(607074, 'frFR', 'Juge Thelgram', '', 18019),
(607074, 'koKR', '대법관 텔그램', '', 18019),
(607074, 'ruRU', 'Судья Телграм', '', 18019),
(607074, 'zhCN', '审判者塞尔格拉姆', '', 18019),
(607074, 'zhTW', '審判者塞爾格拉姆', '', 18019),
(607075, 'deDE', 'Verdammter Magier', '', 18019),
(607075, 'esES', 'Mago en pena', '', 18019),
(607075, 'esMX', 'Mago en pena', '', 18019),
(607075, 'frFR', 'Mage frémissant', '', 18019),
(607075, 'koKR', '고통받는 마법사', '', 18019),
(607075, 'ruRU', 'Неупокоенный маг', '', 18019),
(607075, 'zhCN', '痛苦的法师', '', 18019),
(607075, 'zhTW', '痛苦的法師', '', 18019);

DELETE FROM `creature_template_model` WHERE `CreatureID` BETWEEN 607068 AND 607075;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES 
(607068, 0, 5828, 1, 1, 12340),
(607068, 1, 5829, 1, 1, 12340),
(607069, 0, 5822, 1, 1, 12340),
(607069, 1, 5823, 1, 1, 12340),
(607070, 0, 5824, 1, 1, 12340),
(607070, 1, 5825, 1, 1, 12340),
(607070, 2, 5826, 1, 1, 12340),
(607070, 3, 5827, 1, 1, 12340),
(607071, 0, 5816, 1, 1, 12340),
(607071, 1, 5817, 1, 1, 12340),
(607071, 2, 5818, 1, 1, 12340),
(607071, 3, 5819, 1, 1, 12340),
(607072, 0, 5820, 1, 1, 12340),
(607072, 1, 5821, 1, 1, 12340),
(607075, 0, 5814, 1, 1, 12340),
(607075, 1, 5815, 1, 1, 12340);

DELETE FROM `creature_template_spell` WHERE `CreatureID` BETWEEN 607068 AND 607075;
INSERT INTO `creature_template_spell` (`CreatureID`, `Index`, `Spell`, `VerifiedBuild`) VALUES 
(607068, 0, 25058, 12340),
(607068, 1, 15654, 12340),
(607069, 0, 11978, 12340),
(607069, 1, 15615, 12340),
(607070, 0, 25054, 12340),
(607070, 1, 15586, 12340),
(607075, 0, 8401, 12340),
(607075, 1, 7322, 12340);

DELETE FROM `creature_equip_template`  WHERE `CreatureID` BETWEEN 607068 AND 607075;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES 
(607068, 1, 5281, 0, 0, 18019),
(607069, 1, 5303, 0, 0, 18019),
(607070, 1, 2182, 0, 0, 18019),
(607071, 1, 3361, 2052, 0, 18019),
(607072, 1, 1983, 0, 0, 18019),
(607075, 1, 2177, 0, 0, 18019);


SET @CGUID    := 655000;

DELETE FROM `creature_addon` WHERE `guid` IN (@CGUID+16, @CGUID+31, @CGUID+39, @CGUID+40);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(@CGUID+16, 148370, 0, 0, 1, 0, 0, NULL),
(@CGUID+31, 148230, 0, 0, 1, 0, 0, NULL),
(@CGUID+39, 148340, 0, 0, 1, 0, 0, NULL),
(@CGUID+40, 148400, 0, 0, 1, 0, 0, NULL);

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+10 AND @CGUID+42;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, 
`spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
--
(@CGUID+10, 607068, 0, 0, 0, 0, 0, 1, 1, 1, -1262.56, 479.974, 10.5137, 5.06174,  600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL), -- Condemned Acolyte
(@CGUID+11, 607068, 0, 0, 0, 0, 0, 1, 1, 1, -1267.31, 436.379, 16.4786, 0.916549, 600, 5, 0, 1, 1, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+12, 607068, 0, 0, 0, 0, 0, 1, 1, 1, -1232.49, 480.7, 13.6295, 5.2709,     600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+13, 607068, 0, 0, 0, 0, 0, 1, 1, 1, -1240.95, 434.424, 3.14377, 1.66122,  600, 5, 0, 1, 1, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+14, 607069, 0, 0, 0, 0, 0, 1, 1, 1, -1379.81, 632.899, 51.5099, 0.826559, 600, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL), -- Condemned Monk
(@CGUID+15, 607069, 0, 0, 0, 0, 0, 1, 1, 1, -1307.52, 637.362, 47.8771, 2.00713,  600, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+16, 607069, 0, 0, 0, 0, 0, 1, 1, 1, -1256.24, 553.844, 27.4701, 4.55558,  600, 0, 0, 1, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+17, 607069, 0, 0, 0, 0, 0, 1, 1, 1, -1246.71, 566.755, 28.5484, 3.83972,  600, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+18, 607070, 0, 0, 0, 0, 0, 1, 1, 1, -1326.72, 546.228, 100.942, 5.60251,  600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL), -- Condemned Cleric
(@CGUID+19, 607070, 0, 0, 0, 0, 0, 1, 1, 1, -1315.18, 512.496, 100.148, 1.41913,  600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+20, 607070, 0, 0, 0, 0, 0, 1, 1, 1, -1367.22, 648.284, 50.3003, 3.80482,  600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+21, 607070, 0, 0, 0, 0, 0, 1, 1, 1, -1317.12, 531.126, 99.7401, 3.61283,  600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+22, 607071, 0, 0, 0, 0, 0, 1, 1, 1, -1319.1, 457.083, 37.618, 3.90954,    600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL), -- Cursed Paladin
(@CGUID+23, 607071, 0, 0, 0, 0, 0, 1, 1, 1, -1233.07, 560.679, 33.5691, 0.872665, 600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+24, 607071, 0, 0, 0, 0, 0, 1, 1, 1, -1265.33, 476.39, 10.6086, 5.77704,   600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+25, 607071, 0, 0, 0, 0, 0, 1, 1, 1, -1377.69, 644.3, 50.7874, 2.53073,    600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+26, 607071, 0, 0, 0, 0, 0, 1, 1, 1, -1220.88, 416.147, 3.81308, 4.31096,  600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+27, 607071, 0, 0, 0, 0, 0, 1, 1, 1, -1232.39, 479.16, 13.6295, 5.67232,   600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+28, 607071, 0, 0, 0, 0, 0, 1, 1, 1, -1233.45, 434.88, 3.64377, 4.4855,    600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+29, 607071, 0, 0, 0, 0, 0, 1, 1, 1, -1234.14, 512.85, 14.1555, 2.72271,   600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+30, 607072, 0, 0, 0, 0, 0, 1, 1, 1, -1345.56, 575.438, 103.609, 5.32325,  600, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL), -- Cursed Justicar
(@CGUID+31, 607072, 0, 0, 0, 0, 0, 1, 1, 1, -1390.78, 616.502, 54.3849, 0.978326, 600, 0, 0, 1, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+32, 607072, 0, 0, 0, 0, 0, 1, 1, 1, -1312.72, 566.287, 106.176, 2.46091,  600, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+33, 607072, 0, 0, 0, 0, 0, 1, 1, 1, -1387.68, 526.302, 80.425, 1.15192,   600, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+34, 607075, 0, 0, 0, 0, 0, 1, 1, 1, -1251.87, 571.952, 30.2319, 1.81913,  600, 3, 0, 1, 1, 1, 0, 0, 0, '', 0, 0, NULL), -- Writhing Mage
(@CGUID+35, 607075, 0, 0, 0, 0, 0, 1, 1, 1, -1321.62, 519.507, 99.2873, 3.25392,  600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+36, 607075, 0, 0, 0, 0, 0, 1, 1, 1, -1353.38, 543.865, 101.984, 3.76991,  600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+37, 607075, 0, 0, 0, 0, 0, 1, 1, 1, -1412.1, 548.535, 80.6403, 4.18879,   600, 0, 0, 1, 1, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+38, 607075, 0, 0, 0, 0, 0, 1, 1, 1, -1393.76, 619.646, 53.6349, 5.05238,  600, 5, 0, 1, 1, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+39, 607075, 0, 0, 0, 0, 0, 1, 1, 1, -1349.32, 597.778, 103.529, 0.547157, 600, 0, 0, 1, 1, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+40, 607075, 0, 0, 0, 0, 0, 1, 1, 1, -1326.6, 639.302, 50.5369, 2.27374,   600, 0, 0, 1, 1, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+41, 7073,   0, 0, 0, 0, 0, 1, 1, 1, -1329.91, 554.068, 101.125, 5.417,    300, 0, 0, 1, 1, 0, 0, 0, 0, '', NULL, 0, NULL), -- Arados the Damned
(@CGUID+42, 7074,   0, 0, 0, 0, 0, 1, 1, 1, -1319.54, 554.931, 101.501, 4.222,    300, 0, 0, 1, 1, 0, 0, 0, 0, '', NULL, 0, NULL); -- Judge Thelgram

SET @IPPPHASE    := 65536; 
SET @IPPPHASE_II := 131072;

UPDATE `creature` SET `phaseMask` = @IPPPHASE_II WHERE `id1` IN (7068, 7069, 7070, 7071, 7072, 7075);
UPDATE `creature` SET `phaseMask` = @IPPPHASE    WHERE `id1` IN (607068, 607069, 607070, 607071, 607072, 7073, 7074, 607075);

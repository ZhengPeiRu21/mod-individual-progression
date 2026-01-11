-- smart scripts
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(4422, 4424, 4428, 4436, 4442, 4515, 4516, 4523, 4539, 4623, 6035);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(4422, 4424, 4428, 4436, 4442, 4515, 4516, 4523, 4539, 4623, 6035);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(4422, 0, 0, 0, 38, 0, 100, 0, 1, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 2070.26, 2003.44, 64, 0,        'Agathelos the Raging - On Data Set - Move Point'),
(4422, 0, 1, 0, 0, 0, 100, 0, 8000, 14000, 25000, 31000, 0, 0, 11, 8285, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Agathelos the Raging - In Combat - Cast Rampage'),
(4422, 0, 2, 0, 0, 0, 100, 0, 2000, 8000, 21000, 35000, 0, 5, 11, 8555, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Agathelos the Raging - Within 0-5 Range - Cast Left For Dead'),
(4422, 0, 3, 4, 2, 0, 100, 1, 0, 60, 0, 0, 0, 0, 11, 8269, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Agathelos the Raging - Between 0-25% Health - Cast Enrage'),
(4422, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Agathelos the Raging - On Enrage - Say Line 0'),
(4422, 0, 5, 6, 2, 0, 100, 1, 0, 40, 0, 0, 0, 0, 11, 8269, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Agathelos the Raging - Between 0-25% Health - Cast Enrage'),
(4422, 0, 6, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Agathelos the Raging - On Enrage - Say Line 0'),
--
(4424, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6192, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Aggem Thorncurse - On Aggro - Cast Battle Shout'),
(4424, 0, 1, 0, 0, 0, 100, 0, 1000, 4000, 30000, 45000, 0, 0, 11, 8286, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Aggem Thorncurse - In Combat - Cast Summon Boar Spirit'),
(4424, 0, 2, 0, 74, 0, 100, 0, 0, 0, 13000, 18000, 75, 40, 11, 14900, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,       'Aggem Thorncurse - Friendly at 75% HP - Cast Chain Heal'),
(4428, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3000, 3500, 0, 0, 11, 9613, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Death Speaker Jargba - In Combat - Cast Shadow Bolt'),
(4428, 0, 1, 0, 0, 0, 100, 0, 7000, 10000, 10000, 15000, 0, 0, 11, 14515, 0, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,  'Death Speaker Jargba - Within 0-20 Range - Cast Dominate Mind'),
--
(4436, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7165, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Razorfen Quilguard - On Aggro - Cast Battle Stance'),
(4436, 0, 1, 0, 9, 0, 100, 0, 0, 0, 8000, 14000, 0, 8, 11, 15548, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Razorfen Quilguard - Within 0-8 Range - Cast Thunderclap'),
(4436, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Razorfen Quilguard - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4442, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7164, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Razorfen Defender - On Aggro - Cast Defensive Stance'),
(4442, 0, 1, 0, 0, 0, 100, 0, 6000, 14000, 10000, 30000, 0, 0, 11, 3248, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Razorfen Defender - Within 0-5 Range - Cast Improved Blocking'),
(4442, 0, 2, 0, 105, 0, 100, 0, 2000, 16000, 10000, 20000, 0, 5, 11, 11972, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Razorfen Defender - Victim Casting - Cast Shield Bash'),
(4442, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Razorfen Defender - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(4515, 0, 0, 0, 14, 0, 100, 0, 1000, 40, 14000, 19000, 0, 0, 11, 8362, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,      'Death\'s Head Acolyte - Friendly Missing Health - Cast Renew'),
(4515, 0, 1, 0, 0, 0, 100, 0, 5000, 9000, 11000, 15000, 0, 0, 11, 15785, 256, 0, 0, 0, 0, 5, 30, 0, 1, 0, 0, 0, 0, 0, 'Death\'s Head Acolyte - In Combat - Cast Mana Burn'),
(4515, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Death\'s Head Acolyte - Between 0-15% Health - Flee For Assist'),
(4516, 0, 0, 0, 0, 0, 100, 0, 1000, 1000, 3000, 3500, 0, 0, 11, 9672, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Death\'s Head Adept - In Combat - Cast Frostbolt'),
(4516, 0, 1, 0, 0, 0, 100, 0, 3000, 6000, 10000, 15000, 0, 0, 11, 113, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,     'Death\'s Head Adept - In Combat - Cast Chains of Ice'),
(4516, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Death\'s Head Adept - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(4523, 0, 0, 0, 0, 0, 100, 0, 6000, 10000, 9000, 12000, 0, 0, 11, 6524, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Razorfen Groundshaker - In Combat - Cast Ground Tremor'),
(4523, 0, 1, 0, 0, 0, 100, 0, 2000, 6000, 13000, 18000, 0, 0, 11, 8046, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Razorfen Groundshaker - In Combat - Cast Earth Shock'),
(4523, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Razorfen Groundshaker - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4539, 0, 0, 0, 9, 0, 100, 0, 0, 0, 8000, 13000, 0, 8, 11, 8281, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Greater Kraul Bat - Within 0-8 Range - Cast Sonic Burst'),
(4623, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7164, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Quilguard Champion - On Aggro - Cast Defensive Stance'),
(4623, 0, 1, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 8258, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Quilguard Champion - In Combat - Cast Devotion Aura (No Repeat)'),
(4623, 0, 2, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 15572, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Quilguard Champion - Within 0-5 Range - Cast Sunder Armor'),
(4623, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Quilguard Champion - Between 0-15% Health - Flee For Assist'),
(6035, 0, 0, 0, 67, 0, 100, 0, 0, 0, 5000, 7000, 0, 5, 11, 7159, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Razorfen Stalker - On Behind Target - Cast Backstab'),
(6035, 0, 1, 0, 1, 0, 100, 0, 1000, 1000, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Razorfen Stalker - Out of Combat - Cast Sneak'),
(6035, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Razorfen Stalker - Between 0-15% Health - Flee For Assist');

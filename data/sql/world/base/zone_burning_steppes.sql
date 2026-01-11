/* smart scripts */
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (7055);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(7025, 7026, 7027, 7028, 7029, 7033, 7034, 7035, 7036, 7037, 7038, 7039, 7040, 7041, 7042, 7043, 7044, 7045, 7046, 
8977, 8978, 8979, 8981, 9176, 9690, 9695, 9697, 9698, 9779, 10077, 10078, 10119, 16043);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(7025, 7026, 7027, 7028, 7029, 7033, 7034, 7035, 7036, 7037, 7038, 7039, 7040, 7041, 7042, 7043, 7044, 7045, 7046, 7055, 
8977, 8978, 8979, 8981, 9176, 9690, 9695, 9697, 9698, 9779, 10077, 10078, 10119, 16043);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(7025, 0, 0, 0, 0, 0, 100, 0, 6000, 12000, 6000, 11000, 0, 0, 11, 12170, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Blackrock Soldier - Within 0-5 Range - Cast Revenge'),
(7025, 0, 1, 0, 0, 0, 100, 0, 5000, 13000, 12000, 26000, 0, 0, 11, 3248, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Blackrock Soldier - In Combat - Cast Improved Blocking'),
(7026, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3000, 4000, 0, 0, 11, 20823, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Blackrock Sorcerer - In Combat - Cast Fireball'),
(7026, 0, 1, 0, 0, 0, 100, 0, 8000, 20000, 14000, 20000, 0, 0, 11, 20827, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Blackrock Sorcerer - In Combat - Cast Flamestrike'),
(7027, 0, 0, 0, 0, 0, 100, 0, 4000, 11000, 9000, 14000, 0, 0, 11, 9080, 32, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,     'Blackrock Slayer - Within 0-5 Range - Cast Hamstring'),
(7027, 0, 1, 0, 12, 0, 100, 0, 0, 20, 35000, 43400, 0, 0, 11, 7160, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,          'Blackrock Slayer - Target Between 0-20% Health - Cast Execute'),
(7028, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20825, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Blackrock Warlock - In Combat - Cast Shadow Bolt'),
(7028, 0, 1, 0, 0, 0, 100, 0, 2000, 7000, 29000, 31000, 0, 0, 11, 13338, 33, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,   'Blackrock Warlock - In Combat - Cast Curse of Tongues'),
(7028, 0, 2, 0, 0, 0, 100, 0, 6000, 8000, 5000, 11000, 0, 0, 11, 20826, 33, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Blackrock Warlock - In Combat - Cast Immolate'),
(7029, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7165, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Blackrock Battlemaster - On Respawn - Cast Battle Stance'),
--
(7033, 0, 0, 0, 4, 0, 10, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                         'Firegut Ogre - On Aggro - Say Line 0'),
(7033, 0, 1, 0, 0, 0, 100, 0, 10000, 21000, 16000, 31000, 0, 0, 11, 13382, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Firegut Ogre - In Combat - Cast Torch'),
(7034, 0, 0, 0, 4, 0, 10, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                         'Firegut Ogre Mage - On Aggro - Say Line 0'),
(7034, 0, 1, 0, 0, 0, 100, 0, 10000, 21000, 16000, 31000, 0, 0, 11, 13382, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Firegut Ogre Mage - In Combat - Cast Torch'),
(7034, 0, 2, 0, 0, 0, 100, 0, 8000, 18000, 22000, 39000, 0, 0, 11, 6742, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Firegut Ogre Mage - In Combat - Cast Bloodlust'),
(7035, 0, 0, 0, 4, 0, 10, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                         'Firegut Brute - On Aggro - Say Line 0'),
(7035, 0, 1, 0, 0, 0, 100, 0, 9000, 14000, 10000, 21000, 0, 0, 11, 10101, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 0,  'Firegut Brute - Within 0-10 Range - Cast Knock Away'),
(7035, 0, 2, 0, 0, 0, 100, 0, 10000, 21000, 16000, 31000, 0, 0, 11, 13382, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Firegut Brute - In Combat - Cast Torch'),
--
(7036, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3616, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Thaurissan Spy - On Respawn - Cast Poison Proc'),
(7036, 0, 1, 0, 67, 0, 100, 0, 0, 0, 4800, 6100, 0, 5, 11, 7159, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Thaurissan Spy - Behind Target - Cast Backstab'),
(7037, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3000, 4000, 0, 0, 11, 10452, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Thaurissan Firewalker - In Combat - Cast Flame Buffet'),
(7037, 0, 1, 0, 0, 0, 100, 0, 9000, 13000, 12000, 16000, 0, 0, 11, 10733, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Thaurissan Firewalker - Within 0-5 Range - Cast Flame Spray'),
(7038, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Thaurissan Agent - Outside 30 Range - Start Combat Movement'),
(7038, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Thaurissan Agent - Within 5-30 Range - Stop Combat Movement'),
(7038, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Thaurissan Agent - Within 0-5 Range - Start Combat Movement'),
(7038, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Thaurissan Agent - Within 5-30 Range - Cast Shoot'),
(7038, 0, 4, 0, 9, 0, 100, 0, 0, 0, 36300, 50000, 5, 30, 11, 6685, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Thaurissan Agent - Within 5-30 Range - Cast Piercing Shot'),
(7038, 0, 5, 0, 9, 0, 100, 0, 0, 0, 13300, 24100, 0, 5, 11, 12540, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Thaurissan Agent - Within 0-5 Range - Cast Gouge'),
(7039, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'War Reaver - On Respawn - Cast Thrash Proc'),
(7039, 0, 1, 0, 0, 0, 100, 0, 11000, 25000, 18000, 30000, 0, 0, 11, 10966, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 0, 'War Reaver - Within 0-10 Range - Cast Uppercut'),
--
(7040, 0, 0, 0, 0, 0, 100, 0, 8000, 12000, 18000, 34000, 0, 0, 11, 12054, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Black Dragonspawn - Within 0-5 Range - Cast Rend'),
(7040, 0, 1, 0, 0, 0, 100, 0, 11000, 11000, 8000, 17000, 0, 0, 11, 15284, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Black Dragonspawn - Within 0-5 Range - Cast Cleave'),
(7041, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3000, 4000, 0, 0, 11, 14034, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Black Wyrmkin - In Combat - Cast Fireball'),
(7041, 0, 1, 0, 2, 0, 100, 0, 0, 50, 30400, 45900, 0, 0, 11, 11969, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Black Wyrmkin - Between 0-50% Health - Cast Fire Nova'),
(7042, 0, 0, 0, 0, 0, 100, 0, 2000, 8000, 7000, 16000, 0, 0, 11, 13340, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Flamescale Dragonspawn - In Combat - Cast Fire Blast'),
(7042, 0, 1, 0, 0, 0, 100, 0, 12000, 21000, 35000, 47000, 0, 0, 11, 9080, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,    'Flamescale Dragonspawn - Within 0-5 Range - Cast Hamstring'),
(7043, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9574, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Flamescale Wyrmkin - In Combat - Cast Flame Buffet'),
(7043, 0, 1, 0, 0, 0, 100, 0, 1000, 5000, 10000, 15000, 0, 0, 11, 13341, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Flamescale Wyrmkin - In Combat - Cast Fire Blast'),
(7044, 0, 0, 0, 0, 0, 100, 0, 6000, 12000, 7000, 15000, 0, 0, 11, 9573, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Black Drake - Within 0-5 Range - Cast Flame Breath'),
(7045, 0, 0, 0, 0, 0, 100, 0, 1000, 5000, 8000, 17000, 0, 0, 11, 9573, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Scalding Drake - Within 0-5 Range - Cast Flame Breath'),
(7046, 0, 0, 0, 0, 0, 100, 0, 10000, 17000, 8000, 18000, 0, 0, 11, 9573, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Searscale Drake - Within 0-5 Range - Cast Flame Breath'),
--
(8977, 0, 0, 0, 4, 0, 10, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                         'Krom\'Grul - On Aggro - Say Line 0'),
(8977, 0, 1, 0, 0, 0, 100, 0, 2000, 2000, 16000, 41000, 0, 0, 11, 6742, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Krom\'Grul - In Combat - Cast Bloodlust'),
(8977, 0, 2, 0, 0, 0, 100, 0, 10000, 21000, 16000, 31000, 0, 0, 11, 13381, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Krom\'Grul - In Combat - Cast Torch'),
(8978, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Thauris Balgarr - Outside 30 Range - Start Combat Movement'),
(8978, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Thauris Balgarr - Within 5-30 Range - Stop Combat Movement'),
(8978, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Thauris Balgarr - Within 0-5 Range - Start Combat Movement'),
(8978, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Thauris Balgarr - Within 5-30 Range - Cast Shoot'),
(8978, 0, 4, 0, 0, 0, 100, 0, 7000, 11000, 21000, 36000, 0, 0, 11, 6533, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Thauris Balgarr - In Combat - Cast Net'),
(8978, 0, 5, 0, 0, 0, 100, 0, 1000, 3000, 19200, 32700, 0, 0, 11, 11802, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Thauris Balgarr - In Combat - Cast Dark Iron Land Mine'), -- test!
(8979, 0, 0, 0, 0, 0, 100, 0, 6000, 12000, 10000, 17000, 0, 0, 11, 6253, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Gruklash - Within 0-5 Range - Cast Backhand'),
(8979, 0, 1, 0, 105, 0, 100, 0, 0, 0, 11000, 15000, 0, 5, 11, 12555, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Gruklash - Target Casting - Cast Pummel'),
(8979, 0, 2, 3, 2, 0, 100, 0, 0, 50, 120000, 120000, 0, 0, 11, 8269, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Gruklash - Between 0-50% Health - Cast Frenzy'),
(8979, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Gruklash - On Frenzy - Say Line 0'),
(8981, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Malfunctioning Reaver - On Respawn - Cast Thrash Proc'),
(8981, 0, 1, 0, 0, 0, 100, 0, 11000, 25000, 18000, 30000, 0, 0, 11, 10966, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 0, 'Malfunctioning Reaver - Within 0-10 Range - Cast Uppercut'),
(9176, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Gor\'tesh - On Respawn - Cast Thrash Proc'),
(9176, 0, 1, 0, 0, 0, 100, 0, 10000, 12000, 18000, 23000, 0, 0, 11, 12734, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Gor\'tesh - In Combat - Cast Ground Smash'),
(9176, 0, 2, 0, 0, 0, 100, 0, 17000, 20000, 38000, 44000, 0, 0, 11, 10101, 0, 0, 0, 0, 0, 5, 10, 0, 0, 0, 0, 0, 0, 0,  'Gor\'tesh - Within 0-10 Range - Cast Knock Away'),
--
(9690, 0, 0, 0, 0, 0, 100, 0, 13000, 28000, 22000, 48000, 0, 0, 11, 7367, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Ember Worg - Within 0-5 Range - Cast Infected Bite'),
(9695, 0, 0, 0, 0, 0, 100, 0, 11000, 12000, 12000, 18000, 0, 0, 11, 5416, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Deathlash Scorpid - Within 0-5 Range - Cast Venom Sting'),
(9697, 0, 0, 0, 0, 0, 100, 0, 13000, 15000, 15000, 20000, 0, 0, 11, 13443, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0, 'Giant Ember Worg - Within 0-5 Range - Cast Rend'),
(9698, 0, 0, 0, 0, 0, 100, 0, 6000, 14000, 12000, 21000, 0, 0, 11, 5416, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Firetail Scorpid - Within 0-5 Range - Cast Venom Sting'),
(9698, 0, 1, 0, 0, 0, 100, 0, 12000, 21000, 11000, 21000, 0, 0, 11, 15661, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Firetail Scorpid - In Combat - Cast Immolate'),
(9779, 0, 0, 1, 2, 0, 100, 0, 0, 30, 120000, 120000, 0, 0, 11, 15716, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Flamekin Rager - Between 0-30% Health - Cast Enrage'),
(9779, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Flamekin Rager - On Enrage - Say Line 0'),
--
(10077, 0, 0, 0, 0, 0, 100, 0, 10000, 19000, 25000, 46000, 0, 0, 11, 3604, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Deathmaw - Within 0-5 Range - Cast Tendon Rip'),
(10078, 0, 1, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 11968, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Terrorspark - On Aggro - Cast Fire Shield'),
(10078, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3000, 4000, 0, 0, 11, 9053, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Terrorspark - In Combat - Cast Fireball'),
(10078, 0, 2, 3, 0, 0, 100, 0, 10900, 23300, 33000, 53400, 0, 0, 11, 15710, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Terrorspark - In Combat - Cast Summon Flamekin Torcher'),
(10078, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 15711, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Terrorspark - In Combat - Cast Summon Flamekin Rager'),
(10119, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 13376, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Volchan - On Respawn - Cast Fire Shield'),
(10119, 0, 1, 0, 0, 0, 100, 0, 6000, 8000, 13000, 29000, 0, 0, 11, 15743, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Volchan - In Combat - Cast Flamecrack'),
(10119, 0, 2, 0, 0, 0, 100, 0, 10000, 13000, 9000, 24000, 0, 0, 11, 12470, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Volchan - In Combat - Cast Fire Nova'),
(16043, 0, 0, 0, 0, 0, 100, 0, 1000, 1000, 6000, 16000, 0, 0, 11, 23114, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Magma Lord Bokk - In Combat - Cast Earth Shock'),
(16043, 0, 1, 0, 0, 0, 100, 0, 12000, 14000, 10000, 17000, 0, 0, 11, 10101, 0, 0, 0, 0, 0, 5, 10, 0, 0, 0, 0, 0, 0, 0, 'Magma Lord Bokk - Within 0-10 Range - Cast Knock Away'),
(16043, 0, 2, 0, 0, 0, 100, 0, 6000, 14000, 9000, 22000, 0, 0, 11, 6524, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Magma Lord Bokk - In Combat - Cast Ground Tremor');


-- fix spawn locations
DELETE FROM `creature` WHERE `id1` IN (8977);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, 
`spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
--
(4596,   8977, 0, 0, 0, 0, 0, 1, 1, 1, -7958.56, -2603.77, 173.694, 5.76038, 500, 0, 0, 2634, 2041, 0, 0, 0, 0, '', 0, 0, NULL), -- Krom'Grul
(695091, 8977, 0, 0, 0, 0, 0, 1, 1, 1, -7836.08, -2565.46, 125.553, 1.8295,  500, 0, 0, 2634, 2041, 0, 0, 0, 0, '', 0, 0, NULL), -- https://www.youtube.com/watch?v=7ia3WaeLCbs&t=400s
(695092, 8977, 0, 0, 0, 0, 0, 1, 1, 1, -7928.66, -2670.63, 158.508, 4.53516, 500, 0, 0, 2634, 2041, 0, 0, 0, 0, '', 0, 0, NULL), -- https://www.youtube.com/watch?v=d40q6NJAzBY&t=600s
(695093, 8977, 0, 0, 0, 0, 0, 1, 1, 1, -7962.19, -2659.41, 168.874, 2.29284, 500, 0, 0, 2634, 2041, 0, 0, 0, 0, '', 0, 0, NULL);

DELETE FROM `pool_creature` WHERE `pool_entry` IN (601050);
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
(8977,   601050, 0, 'Krom\'Grul'),
(695091, 601050, 0, 'Krom\'Grul'),
(695092, 601050, 0, 'Krom\'Grul'),
(695093, 601050, 0, 'Krom\'Grul');

DELETE FROM `pool_template` WHERE `entry` IN (601050);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES 
(601050, 1, 'Krom\'Grul - Burning Steppes');

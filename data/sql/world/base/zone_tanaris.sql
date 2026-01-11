/* smart scripts */
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (5490);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(5421, 5427, 5441, 5450, 5451, 5452, 5453, 5454, 5455, 5456, 5457, 5465, 5471, 5472, 5473, 5474, 5475, 5481, 5485, 5615, 5616, 5617, 5618, 5623, 
7847, 7855, 7856, 7857, 7858, 7883, 8201, 8202, 8205, 9397, 12046);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(5421, 5427, 5441, 5450, 5451, 5452, 5453, 5454, 5455, 5456, 5457, 5465, 5490, 5471, 5472, 5473, 5474, 5475, 5481, 5485, 5615, 5616, 5617, 5618, 5623, 
7847, 7855, 7856, 7857, 7858, 7883, 8201, 8202, 8205, 9397, 12046);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(5421, 0, 0, 0, 0, 0, 100, 0, 6000, 20000, 20000, 36000, 0, 0, 11, 11020, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,   'Glasshide Petrifier - Within 0-5 Range - Cast Petrify'),
(5427, 0, 0, 0, 0, 0, 100, 0, 33000, 44000,34000, 46000, 0, 0, 11, 3150, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Rabid Blisterpaw - In Combat - Cast Rabies'),
(5441, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3616, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Hazzali Wasp - On Spawn - Cast Poison Proc'),
(5450, 0, 0, 0, 0, 0, 75, 0, 2000, 6000, 7000, 12000, 0, 0, 11, 5416, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Hazzali Stinger - Within 0-5 Range - Cast Venom Sting'),
(5450, 0, 1, 0, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 11023, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Hazzali Stinger - On Just Died - Cast Summon Hazzali Parasites'),
(5451, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 6589, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Hazzali Swarmer - Out of Combat - Cast Silithid Swarm (No Repeat)'),
(5451, 0, 1, 0, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 11023, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Hazzali Swarmer - On Just Died - Cast Summon Hazzali Parasites'),
(5452, 0, 0, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Hazzali Worker - Between 0-30% Health - Flee For Assist (No Repeat)'),
(5452, 0, 1, 0, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 11023, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Hazzali Worker - On Just Died - Cast Summon Hazzali Parasites'),
(5453, 0, 0, 0, 0, 0, 100, 0, 8000, 14000, 48000, 50000, 0, 5, 11, 6016, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Hazzali Tunneler - Within 0-5 Range - Cast Pierce Armor'),
(5453, 0, 1, 0, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 11023, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Hazzali Tunneler - On Just Died - Cast Summon Hazzali Parasites'),
(5454, 0, 0, 0, 0, 0, 100, 0, 13000, 18000, 8000, 22000, 0, 0, 11, 8374, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Hazzali Sandreaver - Within 0-5 Range - Cast Arcing Smash'),
(5454, 0, 1, 0, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 11023, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Hazzali Sandreaver - On Just Died - Cast Summon Hazzali Parasites'),
(5455, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3616, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Centipaar Wasp - On Reset - Cast Poison Proc'),
(5455, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Centipaar Wasp - On Reset - Cast Thrash'),
(5456, 0, 0, 0, 0, 0, 100, 0, 7000, 21000, 14000, 34000, 0, 0, 11, 5416, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Centipaar Stinger - Within 0-5 Range - Cast Venom Sting'),
(5456, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Centipaar Stinger - On Reset - Cast Thrash'),
(5457, 0, 0, 0, 0, 0, 100, 0, 6000, 6000, 1000, 8000, 0, 0, 11, 6589, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Centipaar Swarmer - In Combat - Cast Silithid Swarm'),
(5457, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Centipaar Swarmer - On Reset - Cast Thrash'),
(5465, 0, 0, 1, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Land Rager - Between 0-50% Health - Cast Enrage (No Repeat)'),
(5465, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Land Rager - On Enrage - Say Line 0'),
(5471, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                        'Dunemaul Ogre - On Aggro - Say Line 0'),
(5471, 0, 1, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 7165, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Dunemaul Ogre - Out of Combat - Cast Battle Stance (No Repeat)'),
(5471, 0, 2, 0, 9, 0, 100, 0, 3000, 6000, 6000, 9000, 0, 5, 11, 25710, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Dunemaul Ogre - Within 0-5 Range - Cast Heroic Strike'),
(5472, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                        'Dunemaul Enforcer - On Aggro - Say Line 0'),
(5472, 0, 1, 0, 9, 0, 100, 0, 0, 0, 19000, 38000, 0, 5, 11, 13730, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Dunemaul Enforcer - Within 0-5 Range - Cast Demoralizing Shout'),
(5473, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                        'Dunemaul Ogre Mage - On Aggro - Say Line 0'),
(5473, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2400, 3800, 0, 0, 11, 9053, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Dunemaul Ogre Mage - In Combat - Cast Fireball'),
(5473, 0, 2, 0, 0, 0, 100, 0, 4000, 9000, 10000, 10000, 0, 0, 11, 11436, 32, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 0, 'Dunemaul Ogre Mage - In Combat - Cast Slow'),
(5473, 0, 3, 0, 2, 0, 100, 1, 0, 70, 0, 0, 0, 0, 11, 6742, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Dunemaul Ogre Mage - Between 0-70% Health - Cast Bloodlust (No Repeat)'),
(5474, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                        'Dunemaul Brute - On Aggro - Say Line 0'),
(5474, 0, 1, 0, 0, 0, 100, 0, 7000, 19000, 16000, 32000, 0, 0, 11, 10966, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 0, 'Dunemaul Brute - In Combat - Cast Uppercut'),
(5475, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                        'Dunemaul Warlock - On Aggro - Say Line 0'),
(5475, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2400, 3800, 0, 0, 11, 9613, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Dunemaul Warlock - In Combat - Cast Shadow Bolt'),
(5475, 0, 2, 0, 0, 0, 100, 0, 7000, 11000, 21000, 26000, 0, 0, 11, 2941, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Dunemaul Warlock - In Combat - Cast Immolate'),
(5475, 0, 3, 0, 0, 0, 100, 0, 3000, 5000, 180000, 190000, 0, 0, 11, 6909, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0, 'Dunemaul Warlock - Within 0-5 Range - Cast Curse of Thorns'),
(5481, 0, 0, 0, 0, 0, 100, 0, 9000, 28000, 26000, 43000, 0, 0, 11, 11922, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Thistleshrub Dew Collector - In Combat - Cast Entangling Roots'),
(5485, 0, 0, 0, 0, 0, 100, 0, 6000, 28000, 13000, 29000, 0, 0, 11, 8376, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Thistleshrub Rootshaper - In Combat - Cast Earthgrab Totem'),
--
(5615, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 8218, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Wastewander Rogue - Out of Combat - Cast Sneak'),
(5615, 0, 1, 0, 67, 0, 100, 0, 3000, 6000, 6000, 10000, 0, 5, 11, 8721, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Wastewander Rogue - On Behind Target - Cast Backstab'),
(5615, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Wastewander Rogue - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5616, 0, 0, 0, 0, 0, 100, 0, 6000, 9000, 7000, 12000, 0, 0, 11, 6713, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Wastewander Thief - Within 0-5 Range - Cast Disarm'),
(5616, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Wastewander Thief - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5617, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 12746, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Wastewander Shadow Mage - Out of Combat - Cast Summon Voidwalker (No Repeat)'),
(5617, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2400, 3800, 0, 0, 11, 20825, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Wastewander Shadow Mage - In Combat - Cast Shadow Bolt'),
(5617, 0, 2, 0, 0, 0, 100, 0, 6000, 9000, 19000, 26000, 0, 0, 11, 20826, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Wastewander Shadow Mage - In Combat - Cast Immolate'),
(5617, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Wastewander Shadow Mage - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5618, 0, 0, 0, 0, 0, 100, 0, 4000, 8000, 7000, 12000, 0, 0, 11, 8629, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Wastewander Bandit - In Combat - Cast Gouge'),
(5618, 0, 1, 0, 67, 0, 100, 0, 3000, 6000, 6000, 10000, 0, 5, 11, 8721, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Wastewander Bandit - On Behind Target - Cast Backstab'),
(5618, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Wastewander Bandit - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5623, 0, 0, 0, 12, 0, 100, 0, 0, 20, 32000, 36100, 0, 0, 11, 7160, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,         'Wastewander Assassin - Target Between 0-20% Health - Cast Execute'),
(5623, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Wastewander Assassin - Between 0-15% Health - Flee For Assist (No Repeat)'),
(7847, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Caliph Scorpidsting - Between 0-15% Health - Flee For Assist (No Repeat)'),
(7855, 0, 0, 0, 9, 0, 100, 0, 2000, 4000, 4000, 7000, 0, 5, 11, 11976, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Southsea Pirate - In Combat - Cast Strike'),
(7855, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Southsea Pirate - Between 0-15% Health - Flee For Assist (No Repeat)'),
(7856, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Southsea Freebooter - Outside 30 Range - Start Combat Movement'),
(7856, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Southsea Freebooter - Within 5-30 Range - Stop Combat Movement'),
(7856, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Southsea Freebooter - Within 0-5 Range - Start Combat Movement'),   
(7856, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2200, 3800, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Southsea Freebooter - Within 5-30 Range - Shoot'),
(7856, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Southsea Freebooter - Between 0-15% Health - Flee For Assist (No Repeat)'),
(7857, 0, 0, 0, 0, 0, 100, 0, 3000, 5000, 20000, 30000, 0, 0, 11, 3148, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Southsea Dock Worker - Within 0-5 Range - Cast Head Crack'),
(7857, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Southsea Dock Worker - Between 0-15% Health - Flee For Assist (No Repeat)'),
(7858, 0, 0, 0, 0, 0, 100, 0, 6000, 9000, 9000, 14000, 0, 0, 11, 6713, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Southsea Swashbuckler - Within 0-5 Range - Cast Disarm'),
(7858, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Southsea Swashbuckler - Between 0-15% Health - Flee For Assist (No Repeat)'),
(7883, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Andre Firebeard - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(8201, 0, 0, 0, 9, 0, 100, 0, 3000, 5000, 7000, 13000, 0, 5, 11, 16856, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Omgorn the Lost - Within 0-5 Range - Cast Mortal Strike'),
(8201, 0, 1, 2, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Omgorn the Lost - Between 0-50% Health - Cast Enrage (No Repeat)'),
(8201, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Omgorn the Lost - On Enrage - Say Line 0'),
(8202, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2400, 3800, 0, 0, 11, 20829, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Cyclok the Mad - In Combat - Cast Arcane Bolt'),
(8202, 0, 1, 0, 106, 0, 100, 0, 7000, 11000, 15000, 19000, 0, 5, 11, 11975, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Cyclok the Mad - Within 0-5 Range - Cast Arcane Explosion'),
(8202, 0, 2, 0, 2, 0, 100, 0, 0, 70, 120000, 120000, 0, 0, 11, 6742, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Cyclok the Mad - Between 0-70% Health - Cast Bloodlust'),
(8205, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Haarka the Ravenous - On Reset - Cast Thrash'),
(8205, 0, 1, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 21081, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Haarka the Ravenous - Within 0-5 Range - Cast Sunder Armor'),
--
(9397, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 12550, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Living Storm - On Aggro - Cast Lightning Shield (No Repeat)'),
(12046, 0, 0, 0, 0, 0, 100, 0, 9000, 16000, 8000, 20000, 0, 0, 11, 15496, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Gor\'marok the Ravager - Within 0-5 Range - Cast Cleave'),
(12046, 0, 1, 0, 0, 0, 100, 0, 12000, 17000, 7000, 21000, 0, 0, 11, 16856, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0, 'Gor\'marok the Ravager - Within 0-5 Range - Cast Mortal Strike'),
(12046, 0, 2, 3, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Gor\'marok the Ravager - Between 0-50% Health - Cast Enrage (No Repeat)'),
(12046, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Gor\'marok the Ravager - On Enrage - Say Line 0');


/* Caverns of Time Door */
DELETE FROM `gameobject` WHERE `guid` = 2993000;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, 
`orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`) VALUES
(2993000, 176996, 1, 0, 0, 1, 1, -8173.02, -4747.2, 34.2107, 1.80084, -0, -0, -0.783588, -0.621281, 0, 0, 0, '', 0);

UPDATE `gameobject_template` SET `ScriptName` = "go_cavernsoftimedoor" WHERE `entry` = 176996;

UPDATE `creature` SET `position_x` = -8175.67, `position_y` = -4718.28, `position_z` = 26.3489, `orientation` = 1.88496 WHERE `id1` = 15192;

-- update Laden Dew Gland drop rate, was 100%
UPDATE `creature_loot_template` SET `Chance` = 10 WHERE `Item` = 8428;

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 19 AND `ConditionTypeOrReference` = 8 AND `SourceEntry` IN (5065, 10445);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(19, 0, 5065, 0, 0, 8, 0, 66003, 0, 0, 0, 0, 0, '', 'Prospector Ironboot - Hide \'The Lost Tablets of Mosh\'aru\' until the player reaches Pre-AQ'),
(19, 0, 10445, 0, 0, 8, 0, 66009, 0, 0, 0, 0, 0, '', 'Soridormi - Hide \'The Vials of Eternity\' until the player reaches TBC T2');
    
DELETE FROM `creature_text` WHERE `CreatureID` IN (5465, 5471, 5472, 5473, 5474, 5475);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
--
(5465, 0, 0, '$s becomes enraged!',                               16, 0, 100, 0, 0, 0, 10677, 0, 'Land Rager'),
(5471, 0, 0, 'I\'ll crush you!',                                  12, 0, 100, 0, 0, 0, 1925, 0, 'Dunemaul Ogre'),
(5471, 0, 1, 'Me smash! You die!',                                12, 0, 100, 0, 0, 0, 1926, 0, 'Dunemaul Ogre'),
(5471, 0, 2, 'Raaaaaaaaaaaaaaaaaaaaaaaaaaaaaar!!! Me smash $R!',  12, 0, 100, 0, 0, 0, 1927, 0, 'Dunemaul Ogre'),
(5472, 0, 0, 'I\'ll crush you!',                                  12, 0, 100, 0, 0, 0, 1925, 0, 'Dunemaul Enforcer'),
(5472, 0, 1, 'Me smash! You die!',                                12, 0, 100, 0, 0, 0, 1926, 0, 'Dunemaul Enforcer'),
(5472, 0, 2, 'Raaaaaaaaaaaaaaaaaaaaaaaaaaaaaar!!! Me smash $R!',  12, 0, 100, 0, 0, 0, 1927, 0, 'Dunemaul Enforcer'),
(5473, 0, 0, 'I\'ll crush you!',                                  12, 0, 100, 0, 0, 0, 1925, 0, 'Dunemaul Ogre Mage'),
(5473, 0, 1, 'Me smash! You die!',                                12, 0, 100, 0, 0, 0, 1926, 0, 'Dunemaul Ogre Mage'),
(5473, 0, 2, 'Raaaaaaaaaaaaaaaaaaaaaaaaaaaaaar!!! Me smash $R!',  12, 0, 100, 0, 0, 0, 1927, 0, 'Dunemaul Ogre Mage'),
(5474, 0, 0, 'I\'ll crush you!',                                  12, 0, 100, 0, 0, 0, 1925, 0, 'Dunemaul Brute'),
(5474, 0, 1, 'Me smash! You die!',                                12, 0, 100, 0, 0, 0, 1926, 0, 'Dunemaul Brute'),
(5474, 0, 2, 'Raaaaaaaaaaaaaaaaaaaaaaaaaaaaaar!!! Me smash $R!',  12, 0, 100, 0, 0, 0, 1927, 0, 'Dunemaul Brute'),
(5475, 0, 0, 'I\'ll crush you!',                                  12, 0, 100, 0, 0, 0, 1925, 0, 'Dunemaul Warlock'),
(5475, 0, 1, 'Me smash! You die!',                                12, 0, 100, 0, 0, 0, 1926, 0, 'Dunemaul Warlock'),
(5475, 0, 2, 'Raaaaaaaaaaaaaaaaaaaaaaaaaaaaaar!!! Me smash $R!',  12, 0, 100, 0, 0, 0, 1927, 0, 'Dunemaul Warlock');


SET @CGUID     := 659000;

SET @Vixton    := 120278;
SET @Evee      := 125177;
SET @Ecton     := 125178;

DELETE FROM `creature` WHERE `guid` IN (@CGUID+41, @CGUID+42);
DELETE FROM `creature` WHERE `id1` IN (25177, 25178, 26378, @Evee, @Ecton);
DELETE FROM `creature` WHERE `id1` IN (32359, 32360, 32362, 32407, 33915, 33917, 33920, 33924, 33928, 33929, 33934, 33935, 33939, 34088, 34090, 34093);

INSERT INTO `creature` (`guid`, `id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES 
--
(@CGUID+41, 20278,   1, -7119.02, -3779.06, 8.78404, 0, 180),     -- Vixton Pinchwhistle, WotLK Season 1
(@CGUID+42, @Vixton, 1, -7119.02, -3779.06, 8.78404, 0, 180),     -- Vixton Pinchwhistle, WotLK Season 2
--
(@CGUID+43, @Evee, 1, -7120.75, -3774.16, 9.0363, 0.767945, 180), -- Evee Copperspring, WotLK Season 2
(@CGUID+44, 25177, 1, -7120.75, -3774.16, 9.0363, 0.767945, 180), -- Evee Copperspring, WotLK Season 3
(@CGUID+45, 26378, 1, -7120.75, -3774.16, 9.0363, 0.767945, 180), -- Evee Copperspring, WotLK Season 4
(@CGUID+46, 32362, 1, -7120.75, -3774.16, 9.0363, 0.767945, 180), -- Evee Copperspring, WotLK Season 5
(@CGUID+47, 33920, 1, -7120.75, -3774.16, 9.0363, 0.767945, 180), -- Evee Copperspring, WotLK Season 6
(@CGUID+48, 33928, 1, -7120.75, -3774.16, 9.0363, 0.767945, 180), -- Evee Copperspring, WotLK Season 7
(@CGUID+49, 33935, 1, -7120.75, -3774.16, 9.0363, 0.767945, 180), -- Evee Copperspring, WotLK Season 8
--
(@CGUID+50, @Ecton, 1, -7122.35, -3770.56, 9.35682, 0, 180),      -- Ecton Brasstumbler, WotLK Season 3
(@CGUID+51, 25178,  1, -7122.35, -3770.56, 9.35682, 0, 180),      -- Ecton Brasstumbler, WotLK Season 4
(@CGUID+52, 32360,  1, -7122.35, -3770.56, 9.35682, 0, 180),      -- Ecton Brasstumbler, WotLK Season 5
(@CGUID+53, 33917,  1, -7122.35, -3770.56, 9.35682, 0, 180),      -- Ecton Brasstumbler, WotLK Season 6
(@CGUID+54, 33929,  1, -7122.35, -3770.56, 9.35682, 0, 180),      -- Ecton Brasstumbler, WotLK Season 7
(@CGUID+55, 33934,  1, -7122.35, -3770.56, 9.35682, 0, 180),      -- Ecton Brasstumbler, WotLK Season 8
--
(@CGUID+56, 32359, 1, -7123.33, -3766.68, 9.40339, 0, 180),       -- Argex Irongut, WotLK Season 5
(@CGUID+57, 33915, 1, -7123.33, -3766.68, 9.40339, 0, 180),       -- Argex Irongut, WotLK Season 6
(@CGUID+58, 33924, 1, -7123.33, -3766.68, 9.40339, 0, 180),       -- Argex Irongut, WotLK Season 7
(@CGUID+59, 33939, 1, -7123.33, -3766.68, 9.40339, 0, 180),       -- Argex Irongut, WotLK Season 8
--
(@CGUID+60, 34088, 1, -7126.8, -3761.97, 9.49471, 0.820305, 180), -- Blazzek the Biter, WotLK Season 6
(@CGUID+61, 34090, 1, -7126.8, -3761.97, 9.49471, 0.820305, 180), -- Blazzek the Biter, WotLK Season 7
(@CGUID+62, 34093, 1, -7126.8, -3761.97, 9.49471, 0.820305, 180); -- Blazzek the Biter, WotLK Season 8


UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc_S1'   WHERE `guid` IN (@CGUID+41);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc_S2'   WHERE `guid` IN (@CGUID+42, @CGUID+43);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc_S3'   WHERE `guid` IN (@CGUID+44, @CGUID+50);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc_S4'   WHERE `guid` IN (@CGUID+45, @CGUID+51);

UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S5' WHERE `guid` IN (@CGUID+46, @CGUID+52, @CGUID+56);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S6' WHERE `guid` IN (@CGUID+47, @CGUID+53, @CGUID+57, @CGUID+60);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S7' WHERE `guid` IN (@CGUID+48, @CGUID+54, @CGUID+58, @CGUID+61);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S8' WHERE `guid` IN (@CGUID+49, @CGUID+55, @CGUID+59, @CGUID+62);

DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+41 AND @CGUID+62;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(@CGUID+41, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+42, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+43, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+44, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+45, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+46, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+47, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+48, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+49, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+50, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+51, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+52, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+53, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+54, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+55, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+56, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+57, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+58, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+59, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+60, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+61, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+62, 0, 0, 0, 1, 0, 0, NULL);

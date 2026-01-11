/* smart scripts */
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (5229, 5268);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(5232, 5234, 5236, 5238, 5239, 5240, 5241, 5245, 5246, 5247, 5249, 5251, 5254, 5255, 5258, 5262, 5274, 5278, 5286, 5287, 5288, 5295, 5296, 5297, 5299, 
5304, 5305, 5307, 5308, 5312, 5317, 5319, 5320, 5331, 5332, 5333, 5334, 5335, 5336, 5337, 5343, 5346, 5347, 5349, 5356, 5357, 5358, 5362, 5363, 5364, 5366, 5462, 
7725, 7726, 7727, 8075, 8136, 11447, 11497, 11498, 12497, 14661);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(5229, 5232, 5234, 5236, 5238, 5239, 5240, 5241, 5245, 5246, 5247, 5249, 5251, 5254, 5255, 5258, 5262, 5268, 5274, 5278, 5286, 5287, 5288, 5295, 5296, 5297, 5299, 
5304, 5305, 5307, 5308, 5312, 5317, 5319, 5320, 5331, 5332, 5333, 5334, 5335, 5336, 5337, 5343, 5346, 5347, 5349, 5356, 5357, 5358, 5362, 5363, 5364, 5366, 5462, 
7725, 7726, 7727, 8075, 8136, 11447, 11497, 11498, 12497, 14661);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(5232, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                           'Gordunni Brute - On Aggro - Say Line 0'),
(5232, 0, 1, 0, 0, 0, 100, 0, 3000, 5000, 12000, 17000, 0, 0, 11, 10966, 2, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 0,     'Gordunni Brute -  Within 0-10 Range - Cast Uppercut'),
(5234, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                           'Gordunni Mauler - On Aggro - Say Line 0'),
(5234, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Gordunni Mauler - On Reset - Cast Thrash'),
(5236, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                           'Gordunni Shaman - On Aggro - Say Line 0'),
(5236, 0, 1, 0, 1, 0, 100, 0, 1000, 1000, 600000, 600000, 0, 0, 11, 19514, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Gordunni Shaman - Out of Combat - Cast Lightning Shield'),
(5236, 0, 2, 0, 16, 0, 100, 0, 19514, 30, 15000, 30000, 0, 0, 11, 19514, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,       'Gordunni Shaman - On Friendly Unit Missing Buff - Cast Lightning Shield'),
(5236, 0, 3, 0, 14, 0, 100, 0, 1200, 40, 14000, 18000, 0, 0, 11, 8005, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Gordunni Shaman - On Friendly missing 1200 health - Cast Healing Wave'),
(5238, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                           'Gordunni Battlemaster - On Aggro - Say Line 0'),
(5238, 0, 1, 0, 0, 0, 100, 0, 3000, 5000, 12000, 17000, 0, 0, 11, 13730, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Gordunni Battlemaster - Within 0-5 Range - Cast Demoralizing Shout'),
(5239, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                           'Gordunni Mage-Lord - On Aggro - Say Line 0'),
(5239, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20823, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Gordunni Mage-Lord - In Combat - Cast Fireball'),
(5239, 0, 2, 0, 0, 0, 100, 0, 5000, 9000, 20000, 26000, 0, 0, 11, 20827, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,      'Gordunni Mage-Lord - In Combat - Cast Flamestrike'),
(5239, 0, 3, 0, 2, 0, 100, 0, 0, 70, 120000, 120000, 0, 0, 11, 6742, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Gordunni Mage-Lord - Between 0-70% Health - Cast Bloodlust'),
(5240, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                          'Gordunni Warlock - On Aggro - Say Line 0'),
(5240, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20298, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,               'Gordunni Warlock - In Combat - Cast Shadow Bolt'),
(5240, 0, 2, 0, 0, 0, 100, 0, 6000, 11000, 14000, 21000, 0, 0, 11, 7289, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Gordunni Warlock - In Combat - Cast Shrink'),
(5241, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                          'Gordunni Warlord - On Aggro - Say Line 0'),
(5241, 0, 1, 0, 0, 0, 100, 0, 3000, 8000, 20000, 26000, 0, 0, 11, 10967, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Gordunni Warlord - In Combat - Cast Echoing Roar'),
(5245, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3616, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Zukk ash Wasp - On Spawn - Cast Poison Proc'),
(5246, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                        'Zukk ash Worker - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5247, 0, 0, 0, 9, 0, 100, 0, 1500, 2500, 45000, 46000, 0, 5, 11, 6016, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Zukk ash Tunneler - Within 0-5 Range - Cast Pierce Armor'),
(5249, 0, 0, 0, 9, 0, 100, 0, 0, 0, 120000, 120000, 0, 5, 11, 7102, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Woodpaw Mongrel - Within 0-5 Range - Cast Contagion of Rot'),
(5249, 0, 1, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                           'Woodpaw Mongrel - On Aggro - Say Line 0'),
(5251, 0, 0, 0, 9, 0, 100, 0, 0, 0, 3000, 3000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Woodpaw Trapper - Outside 30 Range - Start Combat Movement'),
(5251, 0, 1, 0, 9, 0, 100, 0, 0, 0, 3000, 3000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Woodpaw Trapper - Within 5-30 Range - Stop Combat Movement'),
(5251, 0, 2, 0, 9, 0, 100, 0, 0, 0, 3000, 3000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Woodpaw Trapper - Within 0-5 Range - Start Combat Movement'),
(5251, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 3000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Woodpaw Trapper - Within 5-30 Range - Cast Shoot'),
(5251, 0, 4, 0, 9, 0, 100, 0, 0, 0, 18000, 29000, 10, 20, 11, 6533, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Woodpaw Trapper - Within 10-20 Range - Cast Net'),
(5251, 0, 5, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                           'Woodpaw Trapper - On Aggro - Say Line 0'),
(5251, 0, 6, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                        'Woodpaw Trapper - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5254, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2400, 3800, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,               'Woodpaw Mystic - In Combat - Cast Lightning Bolt'),
(5254, 0, 1, 0, 14, 0, 100, 0, 800, 30, 25000, 45000, 0, 0, 11, 8005, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,          'Woodpaw Mystic - Friendly missing 800 Health - Cast Healing Wave'),
(5254, 0, 2, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                           'Woodpaw Mystic - On Aggro - Say Line 0'),
(5254, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                        'Woodpaw Mystic - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5255, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7366, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Woodpaw Reaver - On Aggro - Cast Berserker Stance'),
(5255, 0, 1, 0, 9, 0, 100, 0, 2700, 3800, 9900, 11600, 0, 5, 11, 7369, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Woodpaw Reaver - Within 0-5 Range - Cast Cleave'),
(5255, 0, 2, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                           'Woodpaw Reaver - On Aggro - Say Line 0'),
(5255, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                        'Woodpaw Reaver - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5258, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Woodpaw Alpha - Between 0-30% Health - Cast Enrage (No Repeat)'),
(5258, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Woodpaw Alpha - On Enrage - Say Line 1'),
(5258, 0, 2, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                           'Woodpaw Alpha - On Aggro - Say Line 0'),
(5258, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                        'Woodpaw Alpha - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(5262, 0, 0, 0, 9, 0, 100, 0, 0, 0, 13000, 19000, 0, 8, 11, 8078, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Groddoc Thunderer - Within 0-8 Range - Cast Thunderclap'),
(5274, 0, 0, 0, 9, 0, 100, 0, 0, 0, 12000, 21000, 0, 8, 11, 10968, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Ironfur Patriarch - Within 0-8 Range - Cast Demoralizing Roar'),
(5278, 0, 0, 0, 0, 0, 100, 0, 3400, 7000, 7000, 11000, 0, 0, 11, 11981, 256, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Sprite Darter - In Combat - Cast Mana Burn'),
(5286, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3149, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Longtooth Runner - On Aggro - Cast Furious Howl'),
(5287, 0, 0, 0, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 39, 20, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Longtooth Howler - Between 0-20% Health - Call For Help (No Repeat)'),
(5288, 0, 0, 0, 9, 0, 100, 0, 0, 0, 30000, 35000, 0, 5, 11, 3150, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Rabid Longtooth - Within 0-5 Range - Cast Rabies'),
(5295, 0, 0, 1, 2, 0, 100, 0, 0, 30, 120000, 120000, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Enraged Feral Scar - Between 0-30% Health - Cast Enrage'),
(5295, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Enraged Feral Scar - On Enrage - Say Line 0'),
(5296, 0, 0, 1, 2, 0, 100, 0, 0, 30, 120000, 120000, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Rage Scar Yeti - Between 0-30% Health - Cast Enrage'),
(5296, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Rage Scar Yeti - On Enrage - Say Line 0'),
(5297, 0, 0, 0, 0, 0, 100, 0, 5000, 8000, 12000, 21000, 0, 0, 11, 6507, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Elder Rage Scar - In Combat - Cast Battle Roar'),
(5299, 0, 0, 0, 9, 0, 100, 0, 0, 0, 17000, 21000, 0, 5, 11, 3147, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Ferocious Rage Scar - Within 0-5 Range - Cast Rend Flesh'),
(5304, 0, 0, 0, 9, 0, 100, 0, 0, 0, 9000, 12000, 0, 5, 11, 5708, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,               'Frayfeather Stagwing - Within 0-5 Range - Cast Swoop'),
(5305, 0, 0, 0, 0, 0, 100, 0, 6000, 11000, 40000, 45000, 0, 0, 11, 6535, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,      'Frayfeather Skystormer - In Combat - Cast Lightning Cloud'),
(5307, 0, 0, 0, 9, 0, 100, 0, 0, 0, 11000, 15000, 0, 8, 11, 8281, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Vale Screecher - Within 0-8 Range - Cast Sonic Burst'),
(5308, 0, 0, 0, 9, 0, 100, 0, 0, 0, 11000, 15000, 0, 8, 11, 8281, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Rogue Vale Screecher - Within 0-8 Range - Cast Sonic Burst'),
--
(5312, 0, 0, 0, 9, 0, 100, 0, 0, 0, 6000, 9000, 0, 5, 11, 20667, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,               'Lethlas - In Combat - Cast Corrosive Acid Breath'),
(5312, 0, 1, 0, 0, 0, 100, 0, 9000, 12000, 10000, 14000, 0, 0, 11, 12882, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Lethlas - In Combat - Cast Wing Flap'),
(5317, 0, 0, 0, 14, 0, 100, 0, 20000, 40, 8000, 12000, 0, 0, 11, 20664, 32, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,       'Jademir Oracle - Friendly Missing 20k Health - Cast Rejuvenation'),
(5317, 0, 1, 0, 14, 0, 100, 0, 30000, 40, 10000, 15000, 0, 0, 11, 20665, 32, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,      'Jademir Oracle - Friendly Missing 30k Health - Cast Regrowth'),
(5319, 0, 0, 0, 0, 0, 100, 0, 0, 0, 5000, 9000, 0, 0, 11, 20656, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Jademir Tree Warder - In Combat - Cast Faerie Fire'),
(5319, 0, 1, 0, 0, 0, 100, 0, 2000, 6000, 19000, 23000, 0, 0, 11, 20654, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Jademir Tree Warder - In Combat - Cast Entangling Roots'),
(5320, 0, 0, 0, 9, 0, 100, 0, 0, 0, 7000, 11000, 0, 5, 11, 20666, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Jademir Boughguard - Within 0-5 Range - Cast Cleave'),
(5320, 0, 1, 0, 0, 0, 100, 0, 9000, 12000, 12000, 15000, 0, 0, 11, 15708, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,      'Jademir Boughguard - Within 0-5 Range - Cast Mortal Strike'),
--
(5331, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7164, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Hatecrest Warrior - On Aggro - Cast Defensive Stance'),
(5331, 0, 1, 0, 0, 0, 100, 0, 6000, 16000, 20000, 36000, 0, 0, 11, 6713, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,       'Hatecrest Warrior - Within 0-5 Range - Cast Disarm'),
(5331, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                        'Hatecrest Warrior - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5332, 0, 0, 0, 0, 0, 100, 0, 7000, 11000, 11000, 16000, 0, 0, 11, 10987, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Hatecrest Wave Rider - In Combat - Cast Geyser'),
(5332, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                        'Hatecrest Wave Rider - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5333, 0, 0, 0, 9, 0, 100, 0, 0, 0, 10000, 13000, 0, 25, 11, 8058, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Hatecrest Serpent Guard - Within 0-25 Range - Cast Frost Shock'),
(5333, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                        'Hatecrest Serpent Guard - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5334, 0, 0, 0, 9, 0, 100, 0, 0, 0, 20500, 36900, 0, 20, 11, 6533, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Hatecrest Myrmidon - Within 0-20 Range - Cast Net'),
(5334, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                        'Hatecrest Myrmidon - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5335, 0, 0, 0, 14, 0, 100, 0, 800, 40, 13000, 16000, 0, 0, 11, 6078, 32, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Hatecrest Screamer - Friendly Missing 800 Health - Cast Renew'),
(5335, 0, 1, 0, 9, 0, 100, 0, 0, 0, 10000, 14000, 0, 8, 11, 8281, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Hatecrest Screamer - Within 0-8 Range - Cast Sonic Burst'),
(5335, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                        'Hatecrest Screamer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5336, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20822, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Hatecrest Sorceress - In Combat - Cast Frostbolt'),
(5336, 0, 1, 0, 0, 0, 100, 0, 15000, 21000, 18000, 24000, 0, 0, 11, 10185, 1, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,    'Hatecrest Sorceress - In Combat - Cast Blizzard'),
(5336, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                        'Hatecrest Sorceress - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5337, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,               'Hatecrest Siren - In Combat - Cast Lightning Bolt'),
(5337, 0, 1, 0, 0, 0, 100, 0, 8000, 14000, 19000, 24000, 0, 0, 11, 7645, 33, 0, 0, 0, 0, 6, 20, 0, 0, 0, 0, 0, 0, 0,     'Hatecrest Siren - In Combat - Cast Dominate Mind'),
(5337, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                        'Hatecrest Siren - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(5343, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 4000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,               'Lady Szallah - In Combat - Cast Lightning Bolt'),
(5343, 0, 1, 0, 0, 0, 100, 0, 8000, 11000, 12000, 15000, 0, 0, 11, 8435, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,      'Lady Szallah - In Combat - Cast Forked Lightning'),
(5343, 0, 2, 0, 0, 0, 100, 0, 12000, 15000, 17000, 21000, 0, 0, 11, 6728, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Lady Szallah - In Combat - Cast Enveloping Winds'),
(5343, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                        'Lady Szallah - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5346, 0, 0, 0, 9, 0, 100, 0, 0, 0, 17000, 22000, 0, 8, 11, 3264, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Bloodroar the Stalker - Within 0-8 Range - Cast Blood Howl'),
(5346, 0, 1, 2, 2, 0, 100, 0, 0, 30, 120000, 120000, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Bloodroar the Stalker - Between 0-30% Health - Cast Enrage'),
(5346, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Bloodroar the Stalker - On Enrage - Say Line 0'),
(5347, 0, 0, 0, 9, 0, 100, 0, 0, 0, 17000, 21000, 0, 5, 11, 13445, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Antilus the Soarer - Within 0-5 Range - Cast Rend'),
(5349, 0, 0, 0, 9, 0, 100, 0, 0, 0, 6000, 6000, 0, 30, 11, 15117, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Arash-ethis - In Combat - Cast Chain Lightning'),
(5349, 0, 1, 0, 0, 0, 100, 0, 5000, 5000, 6000, 11000, 0, 0, 11, 12553, 0, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,       'Arash-ethis - In Combat - Cast Shock'),
(5356, 0, 0, 0, 0, 0, 100, 0, 2500, 5000, 10000, 15000, 0, 0, 11, 5543, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Snarler - In Combat - Cast Fade Out'),
--
(5357, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Land Walker - Outside 30 Range - Start Combat Movement'),
(5357, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Land Walker - Within 5-30 Range - Stop Combat Movement'),
(5357, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Land Walker - Within 0-5 Range - Start Combat Movement'),
(5357, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 23391, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Land Walker - Within 5-30 Range - Cast Boulder'),
(5357, 0, 4, 0, 8, 0, 100, 512, 23359, 0, 0, 0, 0, 0, 36, 14604, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Land Walker - On Spellhit \'Transmogrify!\' - Update Template To Zapped Land Walker'),
(5357, 0, 5, 0, 8, 0, 100, 0, 23359, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                     'Land Walker - On Spellhit \'Transmogrify!\' - Starts an attack'),
(5358, 0, 0, 0, 8, 0, 100, 512, 23359, 0, 0, 0, 0, 0, 36, 14640, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Cliff Giant - On Spellhit \'Transmogrify!\' - Update Template To \'Zapped Cliff Giant\''),
(5358, 0, 1, 0, 8, 0, 100, 0, 23359, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                     'Cliff Giant - On Spellhit \'Transmogrify!\' - Starts an attack'),
(5358, 0, 2, 0, 9, 0, 100, 0, 0, 0, 9000, 13000, 0, 5, 11, 45, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Cliff Giant - Within 0-5 Range - Cast War Stomp'),
--
(5362, 0, 0, 0, 14, 0, 100, 0, 1000, 40, 15000, 20000, 0, 0, 11, 11014, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Northspring Harpy - Friendly Missing 1000 Health - Cast Flow of the Northspring'),
(5362, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                        'Northspring Harpy - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5363, 0, 0, 0, 9, 0, 100, 0, 0, 0, 10000, 13000, 0, 5, 11, 6595, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Northspring Roguefeather - Within 0-5 Range - Cast Exploit Weakness'),
(5363, 0, 1, 0, 14, 0, 100, 0, 1000, 40, 15000, 20000, 0, 0, 11, 11014, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Northspring Roguefeather - Friendly Missing 1000 Health - Cast Flow of the Northspring'),
(5363, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                        'Northspring Roguefeather - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5364, 0, 0, 0, 12, 0, 100, 1, 0, 20, 0, 0, 0, 0, 11, 7160, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                    'Northspring Slayer - Target Between 0-20% Health - Cast Execute (No Repeat)'),
(5364, 0, 1, 0, 14, 0, 100, 0, 1000, 40, 15000, 20000, 0, 0, 11, 11014, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Northspring Slayer - Friendly Missing 1000 Health - Cast Flow of the Northspring'),
(5364, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                        'Northspring Slayer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5366, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,               'Northspring Windcaller - In Combat - Cast Lightning Bolt'),
(5366, 0, 1, 0, 0, 0, 100, 0, 8000, 11000, 17000, 21000, 0, 0, 11, 6728, 32, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,     'Northspring Windcaller - In Combat - Cast Enveloping Winds'),
(5366, 0, 2, 0, 14, 0, 100, 0, 1000, 40, 15000, 20000, 0, 0, 11, 11014, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Northspring Windcaller - Friendly Missing 1000 Health - Cast Flow of the Northspring'),
(5366, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                        'Northspring Windcaller - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(5462, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 4000, 0, 0, 11, 11538, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Sea Spray - In Combat - Cast Frostbolt'),
(5462, 0, 1, 0, 9, 0, 100, 0, 0, 0, 11000, 15000, 0, 8, 11, 10987, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Sea Spray - Within 0-8 Range - Cast Geyser'),
--
(7725, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7366, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Grimtotem Raider - On Aggro - Cast Berserker Stance'),
(7725, 0, 1, 0, 0, 0, 100, 0, 2000, 5000, 5000, 8000, 0, 0, 11, 6533, 32, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 0,       'Grimtotem Raider - In Combat - Cast Net'),
(7725, 0, 2, 0, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                        'Grimtotem Raider - Between 0-20% Health - Flee For Assist (No Repeat)'),
(7726, 0, 0, 0, 4, 0, 100, 512, 0, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Grimtotem Naturalist - On aggro - Set Phase to 1'),
(7726, 0, 1, 0, 0, 1, 100, 0, 0, 0, 3400, 4700, 0, 0, 11, 9739, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                'Grimtotem Naturalist - In Combat - Cast Wrath'),
(7726, 0, 2, 0, 2, 0, 100, 513, 0, 50, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Grimtotem Naturalist - Between 0-30% Health - Set Phase to 2'),
(7726, 0, 3, 0, 0, 2, 100, 1, 0, 0, 0, 0, 0, 0, 11, 19030, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Grimtotem Naturalist - In Combat - Cast Bear Form (No Repeat) (Phase 2)'),
(7726, 0, 4, 0, 0, 2, 100, 512, 5000, 7000, 11000, 13000, 0, 0, 11, 12161, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Grimtotem Naturalist - In Combat - Cast Maul (Phase 2)'),
(7726, 0, 5, 0, 9, 2, 100, 512, 8000, 10000, 24000, 28000, 0, 5, 11, 15727, 34, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Grimtotem Naturalist - Within 0-5 Range - Cast Demoralizing Roar (Phase 2)'),
(7726, 0, 6, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                        'Grimtotem Naturalist - Between 0-15% Health - Flee For Assist (No Repeat)'),
(7726, 0, 7, 0, 25, 0, 100, 512, 0, 0, 0, 0, 0, 0, 28, 19030, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Grimtotem Naturalist - On reset - Remove Bear Form'),
(7726, 0, 8, 0, 25, 0, 100, 512, 0, 0, 0, 0, 0, 0, 3, 7726, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Grimtotem Naturalist - On reset - Set Model Grimtotem Naturalist'),
(7727, 0, 0, 0, 0, 0, 100, 0, 2000, 4000, 6000, 8000, 0, 0, 11, 930, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Grimtotem Shaman - In Combat - Cast Chain Lightning'),
(7727, 0, 1, 0, 14, 0, 100, 0, 800, 30, 25000, 45000, 0, 0, 11, 8005, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,          'Grimtotem Shaman - Friendly missing 800 Health - Cast Healing Wave'),
(7727, 0, 2, 0, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                        'Grimtotem Shaman - Between 0-20% Health - Flee For Assist (No Repeat)'),
--
(8075, 0, 0, 0, 54, 0, 100, 0, 0, 0, 0, 0, 0, 0, 46, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Edana Hatetalon - on Just summoned - move forward'),
(8075, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 12167, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Edana Hatetalon - In Combat  - Lightning Bolt'),
(8075, 0, 2, 0, 0, 0, 100, 0, 12000, 15000, 19000, 24000, 0, 0, 11, 8293, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Edana Hatetalon - In Combat - Cast Lightning Cloud'),
(8075, 0, 3, 0, 0, 0, 100, 0, 9000, 13000, 9000, 12000, 0, 0, 11, 12058, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Edana Hatetalon - In Combat - Cast Chain Lightning'),
(8136, 0, 0, 0, 9, 0, 100, 0, 0, 0, 16000, 21000, 0, 25, 11, 8058, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Lord Shalzaru - In Combat - Cast Frost Shock'),
(8136, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                        'Lord Shalzaru - Between 0-15% Health - Flee For Assist (No Repeat)'),
(11447, 0, 0, 0, 9, 0, 100, 0, 2000, 3000, 13000, 15000, 0, 30, 11, 22127, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Mushgog - Within 0-30 Range - Cast Entangling Roots'),
(11447, 0, 1, 0, 6, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 22948, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Mushgog - On Just Died - Cast Spore Cloud'),
(11447, 0, 2, 0, 0, 0, 100, 0, 7000, 10000, 8000, 12000, 0, 0, 11, 21749, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Mushgog - In Combat - Cast Thorn Volley'),
(11447, 0, 3, 0, 0, 0, 100, 0, 12000, 16000, 14000, 17000, 0, 0, 11, 22951, 0, 0, 0, 0, 0, 17, 10, 40, 1, 0, 0, 0, 0, 0, 'Mushgog - In Combat - Cast Summon Player'),
(11447, 0, 4, 0, 5, 0, 50, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                          'Mushgog - On Player Kill - Say Line 0'),
(11497, 0, 0, 0, 0, 0, 100, 0, 5000, 9000, 5000, 9000, 0, 5, 11, 22937, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,       'The Razza - In Combat - Cast Poison Bolt'),
(11497, 0, 1, 0, 0, 0, 100, 0, 8000, 12000, 9000, 15000, 0, 0, 11, 16033, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,     'The Razza - In Combat - Cast Chain Lightning'),
(11497, 0, 2, 0, 0, 0, 100, 0, 12000, 16000, 14000, 17000, 0, 0, 11, 22951, 0, 0, 0, 0, 0, 17, 10, 40, 1, 0, 0, 0, 0, 0, 'The Razza - In Combat - Cast Summon Player'),
(11498, 0, 0, 0, 9, 0, 100, 0, 7000, 10000, 7000, 10000, 0, 5, 11, 15496, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Skarr the Unbreakable - Within 0-5 Range - Cast Cleave'),
(11498, 0, 1, 0, 9, 0, 100, 0, 5000, 7000, 13000, 16000, 0, 5, 11, 11428, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Skarr the Unbreakable - Within 0-5 Range - Cast Knockdown'),
(11498, 0, 2, 0, 9, 0, 100, 0, 8000, 12000, 9000, 15000, 0, 5, 11, 15708, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Skarr the Unbreakable - Within 0-5 Range - Cast Mortal Strike'),
(11498, 0, 3, 0, 0, 0, 100, 0, 12000, 16000, 14000, 17000, 0, 0, 11, 22951, 0, 0, 0, 0, 0, 17, 10, 40, 1, 0, 0, 0, 0, 0, 'Skarr the Unbreakable - In Combat - Cast Summon Player'),
(12497, 0, 0, 0, 0, 0, 100, 0, 6000, 9000, 6000, 11000, 0, 0, 11, 20667, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,       'Dreamroarer - Within 0-5 Range - Cast Corrosive Acid Breath'),
(12497, 0, 1, 0, 9, 0, 100, 0, 0, 0, 12000, 16000, 0, 30, 11, 20668, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Dreamroarer - In Combat - Cast Sleepwalk'),
(14661, 0, 0, 0, 9, 0, 100, 0, 0, 0, 12000, 17000, 0, 5, 11, 5416, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Stinglasher - Within 0-5 Range - cast Venom Sting'),
(14661, 0, 1, 0, 0, 0, 100, 0, 6000, 8000, 7000, 10000, 0, 0, 11, 6607, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,        'Stinglasher - Within 0-5 Range - cast Lash');


UPDATE `creature` SET `spawntimesecs` = 23400 WHERE `id1` = 5343; -- Lady Szallah
UPDATE `creature` SET `spawntimesecs` = 54000 WHERE `id1` = 5347; -- Antilus the Soarer
UPDATE `creature` SET `spawntimesecs` = 23400 WHERE `id1` = 5349; -- Arash-ethis

DELETE FROM `creature` WHERE `id1` IN (5356, 11447, 11497, 11498);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, 
`spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(51683, 5356,  0, 0, 1, 0, 0, 1, 1, 0, -4142.19, -423.252, 24.9747, 4.12439, 21000,  0, 1, 1981,  0,     2, 0, 0, 0, '', 0, 0, NULL), -- Snarler
(45758, 11447, 0, 0, 1, 0, 0, 1, 1, 0, -3758.47, 1096.15, 131.97, 3.34614,   25200, 10, 0, 60000, 0,     1, 0, 0, 0, '', 0, 0, NULL), -- Mushgog
(45759, 11497, 0, 0, 1, 0, 0, 1, 1, 0, -3753.2, 1097.89, 131.97, 3.46003,    25200, 10, 0, 73000, 24340, 1, 0, 0, 0, '', 0, 0, NULL), -- The Razza
(45760, 11498, 0, 0, 1, 0, 0, 1, 1, 1, -3758.51, 1093.64, 132.094, 0.425866, 25200, 10, 0, 57000, 0,     1, 0, 0, 0, '', 0, 0, NULL); -- Skarr the Unbreakable


-- Snarler fix missing waypoints
DELETE FROM `creature_addon` WHERE `guid` = 51683;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(51683, 516830, 0, 0, 0, 0, 0, NULL);

DELETE FROM `waypoint_data` WHERE `id` = 516830;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
(516830, 1, -4142.19, -423.252, 24.9747, NULL, 0, 0, 0, 100, 0),
(516830, 2, -4145.7, -393.472, 35.8493, NULL, 0, 0, 0, 100, 0),
(516830, 3, -4153.35, -369.855, 47.826, NULL, 0, 0, 0, 100, 0),
(516830, 4, -4158.44, -355.944, 54.0496, NULL, 0, 0, 0, 100, 0),
(516830, 5, -4168.28, -319.475, 58.0327, NULL, 0, 0, 0, 100, 0),
(516830, 6, -4175, -292.348, 55.67, NULL, 0, 0, 0, 100, 0),
(516830, 7, -4193.54, -274.789, 52.0208, NULL, 0, 0, 0, 100, 0),
(516830, 8, -4214.44, -279.072, 43.9941, NULL, 0, 0, 0, 100, 0),
(516830, 9, -4212.99, -263.449, 48.2295, NULL, 0, 0, 0, 100, 0),
(516830, 10, -4197.5, -232.024, 54.9398, NULL, 0, 0, 0, 100, 0),
(516830, 11, -4175.88, -203.194, 58.7209, NULL, 0, 0, 0, 100, 0),
(516830, 12, -4182.99, -182.133, 57.8489, NULL, 0, 0, 0, 100, 0),
(516830, 13, -4203.5, -147.809, 58.4159, NULL, 0, 0, 0, 100, 0),
(516830, 14, -4185.34, -111.887, 59.8366, NULL, 0, 0, 0, 100, 0),
(516830, 15, -4163.75, -83.3017, 56.5057, NULL, 0, 0, 0, 100, 0),
(516830, 16, -4142.89, -54.1321, 58.8099, NULL, 0, 0, 0, 100, 0),
(516830, 17, -4139.57, -22.6688, 57.1284, NULL, 0, 0, 0, 100, 0),
(516830, 18, -4146.48, 24.9606, 58.4542, NULL, 0, 0, 0, 100, 0),
(516830, 19, -4166.3, 72.8927, 57.1682, NULL, 0, 0, 0, 100, 0),
(516830, 20, -4170.52, 112.552, 56.1258, NULL, 0, 0, 0, 100, 0),
(516830, 21, -4158.12, 162.799, 58.5915, NULL, 0, 0, 0, 100, 0),
(516830, 22, -4114.6, 181.278, 60.4693, NULL, 0, 0, 0, 100, 0),
(516830, 23, -4069.28, 195.043, 58.6779, NULL, 0, 0, 0, 100, 0),
(516830, 24, -4026.31, 228.288, 58.0024, NULL, 0, 0, 0, 100, 0),
(516830, 25, -4060.11, 199.915, 57.3903, NULL, 0, 0, 0, 100, 0),
(516830, 26, -4108.47, 183.286, 61.3805, NULL, 0, 0, 0, 100, 0),
(516830, 27, -4153.34, 167.014, 58.6702, NULL, 0, 0, 0, 100, 0),
(516830, 28, -4170.25, 119.481, 55.5661, NULL, 0, 0, 0, 100, 0),
(516830, 29, -4167.58, 79.606, 57.6089, NULL, 0, 0, 0, 100, 0),
(516830, 30, -4148.05, 31.6435, 58.4097, NULL, 0, 0, 0, 100, 0),
(516830, 31, -4140.12, -15.9016, 56.5497, NULL, 0, 0, 0, 100, 0),
(516830, 32, -4141.41, -47.7954, 59.2948, NULL, 0, 0, 0, 100, 0),
(516830, 33, -4159.77, -78.0076, 56.2936, NULL, 0, 0, 0, 100, 0),
(516830, 34, -4181.53, -106.443, 59.9593, NULL, 0, 0, 0, 100, 0),
(516830, 35, -4203.33, -138.827, 57.9872, NULL, 0, 0, 0, 100, 0),
(516830, 36, -4186.04, -176.073, 57.5805, NULL, 0, 0, 0, 100, 0),
(516830, 37, -4176.17, -197.377, 57.0343, NULL, 0, 0, 0, 100, 0),
(516830, 38, -4193.49, -226.107, 56.4164, NULL, 0, 0, 0, 100, 0),
(516830, 39, -4209.16, -253.483, 51.3743, NULL, 0, 0, 0, 100, 0),
(516830, 40, -4215.93, -275.508, 44.8289, NULL, 0, 0, 0, 100, 0),
(516830, 41, -4199.4, -274.222, 49.4723, NULL, 0, 0, 0, 100, 0),
(516830, 42, -4178.59, -287.217, 54.1218, NULL, 0, 0, 0, 100, 0),
(516830, 43, -4168.96, -316.811, 58.0481, NULL, 0, 0, 0, 100, 0),
(516830, 44, -4160.9, -347.617, 54.9743, NULL, 0, 0, 0, 100, 0),
(516830, 45, -4147.27, -386.461, 40.1627, NULL, 0, 0, 0, 100, 0),
(516830, 46, -4142.74, -418.413, 25.628, NULL, 0, 0, 0, 100, 0),
(516830, 47, -4118.48, -447.891, 19.8953, NULL, 0, 0, 0, 100, 0),
(516830, 48, -4106.68, -482.678, 12.4655, NULL, 0, 0, 0, 100, 0),
(516830, 49, -4113.46, -456.848, 19.0156, NULL, 0, 0, 0, 100, 0);


DELETE FROM `creature_text` WHERE `CreatureID` IN (11447);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(11447, 0, 0, 'That will teach you to lay off the herb, $r.', 12, 0, 100, 0, 0, 0, 9500, 0, 'Mushgog');

/* fix Gordunni Orb drop rate. Was set to 100 */
UPDATE `creature_loot_template` SET `Chance` = 15 WHERE `Item` = 9371;

/* Quest - A Strange Request  - fix spaces in Quest Description */
UPDATE `quest_template` SET `QuestDescription` = 
'Neeru Fireblade in Orgrimmar has what I need to get started here! He has mixed up a concoction that I need for my... well, you\'ll see.$B$B
Off with you now -- to Orgrimmar. Here, take this with you. It\'s a shrunken head that I promised Neeru in exchange for the herbs.\n
It\'s the head of some poor dwarf I ventured across in the forest. I\'m sure Neeru will be pleased.$B$BYou\'ll find Neeru in the Cleft of Shadow.'
WHERE `ID` = 3121;

/* Quest - Testing the Vessel - now asks for Wildkin Muisek instead of Beast Muisek */
UPDATE `item_template` SET `name` = 'Wildkin Muisek', `displayid` = 18094 WHERE `entry` = 9594;
UPDATE `item_template` SET `name` = 'Wildkin Muisek Vessel' WHERE `entry` = 9618;

-- update target creatures, was 5268 and 5286
DELETE FROM `conditions` WHERE `SourceEntry` = 11886;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, 
`ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(17, 0, 11886, 0, 0, 31, 1, 3, 2927, 0, 0, 0, 0, '', 'Wildkin Muisek Vessel target - Vicious Owlbeast'),
(17, 0, 11886, 0, 0, 36, 1, 0, 0, 0, 1, 0, 0, '', 'Target must be dead'),
(17, 0, 11886, 0, 1, 31, 1, 3, 2928, 0, 0, 0, 0, '', 'Wildkin Muisek Vessel target - Primitive Owlbeast'),
(17, 0, 11886, 0, 1, 36, 1, 0, 0, 0, 1, 0, 0, '', 'Target must be dead'),
(17, 0, 11886, 0, 2, 31, 1, 3, 2929, 0, 0, 0, 0, '', 'Wildkin Muisek Vessel target - Savage Owlbeast'),
(17, 0, 11886, 0, 2, 36, 1, 0, 0, 0, 1, 0, 0, '', 'Target must be dead');

-- update quest text
UPDATE `quest_template` SET `LogDescription` = 
'This will be a test; both of the ritual I performed, and of your abilities. Take this vessel, $N. With it, you will have the power to shrink and capture a creature inside of it.$B$BTravel to the Hinterlands and look for creatures known as Wildkin that were once pets of the night elf goddess Elune. The vicious, primitive, or savage owlbeasts are your targets, $N. Kill 10, and use the muisek vessel to shrink and capture them before their spirits can escape.',
`QuestDescription` = 
'Travel to the Hinterlands, and locate the Wildkin. Kill 10, and use the Muisek Vessel to shrink and capture the fallen Wildkin.$B$BBring 10 Wildkin Muiseks and the Muisek Vessel to Witch Doctor Uzer\'i in Feralas.' WHERE `ID` = 3123;

UPDATE `quest_request_items` SET `CompletionText` = 
'Were you able to capture the wildkin?$B$BIf you succeed, we will be ready to shrink and capture the muisek of creatures of Feralas.' WHERE `ID` = 3123;

-- update item display id
DELETE FROM `item_dbc` WHERE `ID` = 9594;
INSERT INTO `item_dbc` (`ID`, `ClassID`, `SubclassID`, `Sound_Override_Subclassid`, `Material`, `DisplayInfoID`, `InventoryType`, `SheatheType`) VALUES
(9594, 12, 0, -1, 1, 18094, 0, 0);

-- update quest poi map markers
DELETE FROM `quest_poi` WHERE `QuestID` = 3123;
INSERT INTO `quest_poi` (`QuestID`, `id`, `ObjectiveIndex`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `VerifiedBuild`) VALUES
(3123, 0, -1, 1, 121, 0, 0, 1, 0),
(3123, 1, 4, 0, 26, 0, 0, 1, 0),
(3123, 2, 4, 0, 26, 0, 0, 1, 0);

DELETE FROM `quest_poi_points` WHERE `QuestID` = 3123;
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES 
(3123, 0, 0, -4376, 270, 0),
(3123, 1, 1, 218, -4582, 0),
(3123, 1, 2, 314, -4217, 0),
(3123, 1, 3, 217, -4117, 0),
(3123, 1, 4, 16, -4117, 0),
(3123, 1, 5, -83, -4149, 0),
(3123, 2, 0, -150, -3551, 0),
(3123, 2, 1, -81, -3551, 0),
(3123, 2, 2, -17, -3550, 0),
(3123, 2, 3, 249, -3415, 0),
(3123, 2, 4, 382, -3152, 0),
(3123, 2, 5, 351, -3056, 0),
(3123, 2, 6, -50, -2983, 0),
(3123, 2, 7, -85, -3015, 0),
(3123, 2, 8, -250, -3183, 0);

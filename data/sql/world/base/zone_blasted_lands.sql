/* smart scripts */
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (5984, 6011);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(5974, 5975, 5976, 5979, 5982, 5983, 5988, 5992, 5993, 5996, 5997, 5998, 5999, 6004, 6005, 6006, 6007, 6008, 6009, 6010, 
7665, 7667, 8297, 8298, 8299, 8300, 8301, 8302, 8303, 8304, 8675, 8716, 8717, 8718, 12396);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(5974, 5975, 5976, 5979, 5982, 5983, 5984, 5988, 5992, 5993, 5996, 5997, 5998, 5999, 6004, 6005, 6006, 6007, 6008, 6009, 6010, 6011, 
7665, 7667, 8297, 8298, 8299, 8300, 8301, 8302, 8303, 8304, 8675, 8716, 8717, 8718, 12396);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(5974, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                          'Dreadmaul Ogre - On Aggro - Say Line 0'),
(5974, 0, 1, 0, 0, 0, 100, 0, 13000, 26000, 13000, 56000, 0, 0, 11, 11960, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Dreadmaul Ogre - Within 0-5 Range - Cast Curse of the Dreadmaul'),
(5975, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20823, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Dreadmaul Ogre Mage - In Combat - Cast Fireball'),
(5975, 0, 1, 0, 2, 0, 100, 0, 0, 30, 34000, 38000, 0, 0, 11, 6742, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Dreadmaul Ogre Mage - Between 0-30% Health - Cast Bloodlust'),
(5976, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                          'Dreadmaul Brute - On Aggro - Say Line 0'),
(5976, 0, 1, 0, 0, 0, 100, 0, 13000, 26000, 13000, 56000, 0, 0, 11, 11960, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Dreadmaul Brute - Within 0-5 Range - Cast Curse of the Dreadmaul'),
--
(5979, 0, 0, 0, 0, 0, 100, 0, 5000, 10000, 10000, 24000, 0, 0, 11, 11962, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Wretched Lost One - In Combat - Cast Immolate'),
(5979, 0, 1, 0, 0, 0, 100, 0, 17000, 39000, 29000, 39000, 0, 0, 11, 11963, 32, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,  'Wretched Lost One - In Combat - Cast Enfeeble'),
(5982, 0, 0, 0, 12, 0, 100, 0, 0, 20, 30000, 35000, 0, 0, 11, 7160, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,           'Black Slayer - Target Between 0-20% Health - Cast Execute'),
(5983, 0, 0, 0, 12, 0, 100, 0, 0, 20, 6000, 12000, 0, 0, 11, 8139, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Bonepicker - Target Between 0-20% Health - Cast Fevered Fatigue'),
(5988, 0, 0, 0, 0, 0, 100, 0, 7000, 18000, 7000, 17000, 0, 0, 11, 5416, 32, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,      'Scorpok Stinger - Within 0-5 Range - Cast Venom Sting'),
(5992, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 12898, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Ashmane Boar - Out of Combat - Cast Smoke Aura Visual  (No Repeat)'),
(5992, 0, 1, 0, 9, 0, 50, 1, 0, 0, 0, 0, 5, 20, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Ashmane Boar - Within 5-20 Range - Cast Rushing Charge (No Repeat)'),
(5993, 0, 0, 0, 4, 0, 50, 0, 0, 0, 0, 0, 0, 0, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Helboar - On Aggro - Cast Rushing Charge'),
(5993, 0, 1, 0, 0, 0, 100, 0, 11000, 16000, 17000, 32000, 0, 0, 11, 11970, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Helboar - In Combat - Cast Fire Nova'),
--
(5996, 0, 0, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 11971, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Nethergarde Miner - In Combat - Cast Sunder Armor'),
(5996, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                       'Nethergarde Miner - Between 0-15% Health - Flee For Assist'),
(5997, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Nethergarde Engineer - Outside 30 Range - Start Combat Movement'),
(5997, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Nethergarde Engineer - Within 5-30 Range - Stop Combat Movement'),
(5997, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Nethergarde Engineer - Within 0-5 Range - Start Combat Movement'),
(5997, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Nethergarde Engineer - Within 5-30 Range - Cast Shoot'),
(5997, 0, 4, 0, 0, 0, 100, 0, 8000, 11000, 12000, 16000, 5, 30, 11, 8858, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Nethergarde Engineer - In Combat - Cast Bomb'),
(5997, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                       'Nethergarde Engineer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5998, 0, 0, 0, 0, 0, 100, 0, 1000, 3000, 12000, 16000, 0, 0, 11, 5115, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Nethergarde Foreman - In Combat - Cast Battle Command'),
(5998, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                       'Nethergarde Foreman - Between 0-15% Health - Flee For Assist'),
(5999, 0, 0, 0, 0, 0, 100, 0, 2000, 5000, 12000, 15000, 0, 0, 11, 3248, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Nethergarde Soldier - In Combat - Cast Improved Blocking'),
(5999, 0, 1, 0, 105, 0, 100, 0, 0, 0, 13000, 16000, 0, 5, 11, 11972, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,          'Nethergarde Soldier - Target Casting - Cast Shield Bash'),
--
(6004, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Shadowsworn Cultist - Outside 30 Range - Start Combat Movement'),
(6004, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Shadowsworn Cultist - Within 5-30 Range - Stop Combat Movement'),
(6004, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Shadowsworn Cultist - Within 0-5 Range - Start Combat Movement'),
(6004, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 10277, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Shadowsworn Cultist - Within 5-30 Range - Cast Throw'),
(6004, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                       'Shadowsworn Cultist - Between 0-15% Health - Flee For Assist (No Repeat)'),
(6005, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Shadowsworn Thug - On Respawn - Cast Thrash Proc'),
(6005, 0, 1, 0, 105, 0, 100, 0, 0, 0, 8400, 16100, 0, 5, 11, 11978, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,           'Shadowsworn Thug - Target Casting - Cast Kick'),
(6005, 0, 2, 0, 0, 0, 100, 0, 8000, 24000, 13000, 24000, 0, 0, 11, 8646, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Shadowsworn Thug - Within 0-5 Range - Cast Snap Kick'),
(6006, 0, 0, 0, 0, 0, 100, 0, 7000, 9000, 8000, 15000, 0, 0, 11, 11015, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Shadowsworn Adept - Within 0-5 Range - Cast Blood Leech'),
(6006, 0, 1, 0, 14, 0, 100, 1, 1200, 10, 0, 0, 0, 0, 11, 7154, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                'Shadowsworn Adept - Friendly Missing 1200 Health - Cast Dark Offering'),
(6007, 0, 0, 0, 0, 0, 100, 0, 3000, 5000, 5000, 8000, 0, 0, 11, 15496, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,       'Shadowsworn Enforcer - Within 0-5 Range - Cast Cleave'),
(6008, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 5108, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Shadowsworn Warlock - Out of Combat - Cast Voidwalker (No Repeat)'),
(6008, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20825, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Shadowsworn Warlock - In Combat - Cast Shadow Bolt'),
(6008, 0, 2, 0, 0, 0, 100, 0, 5000, 8000, 30000, 45000, 0, 0, 11, 11980, 33, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Shadowsworn Warlock - In Combat - Cast Curse of Weakness'),
(6008, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                       'Shadowsworn Warlock - Between 0-15% Health - Flee For Assist (No Repeat)'),
(6009, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20825, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Shadowsworn Dreadweaver - In Combat - Cast Shadow Bolt'),
(6009, 0, 1, 0, 0, 0, 100, 0, 8000, 11000, 19000, 24000, 0, 0, 11, 8994, 1, 0, 0, 0, 0, 6, 30, 0, 0, 0, 0, 0, 0, 0,     'Shadowsworn Dreadweaver - In Combat - Cast Banish'),
(6009, 0, 2, 0, 0, 0, 100, 0, 12000, 16000, 30000, 45000, 0, 0, 11, 7098, 33, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Shadowsworn Dreadweaver - In Combat - Cast Curse of Mending'),
(6010, 0, 0, 0, 0, 0, 100, 0, 3000, 5000, 7000, 9000, 0, 0, 11, 13321, 320, 0, 0, 0, 0, 5, 30, 0, 1, 0, 0, 0, 0, 0,     'Felhound - In Combat - Cast Mana Burn'),
--
(7665, 0, 0, 0, 0, 0, 100, 0, 8000, 11000, 18000, 24000, 0, 0, 11, 12734, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Grol the Destroyer - In Combat - Cast Ground Smash'),
(7665, 0, 1, 0, 0, 0, 100, 0, 20000, 25000, 40000, 45000, 0, 0, 11, 10101, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 0,  'Grol the Destroyer - Within 0-10 Range - Cast Knock Away'),
(7665, 0, 3, 0, 8, 0, 100, 512, 12938, 0, 0, 0, 0, 0, 11, 12943, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Grol the Destroyer - On Spellhit Fel Curse - Cast Fel Curse Effect'),
(7665, 0, 4, 0, 25, 0, 100, 512, 0, 0, 0, 0, 0, 0, 42, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Grol the Destroyer - On Reset - Set HP Invincibility'),
(7665, 0, 5, 0, 8, 0, 100, 512, 12938, 0, 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Grol the Destroyer - On Spellhit Fel Curse - Remove Invincibility'),
(7667, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 12544, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Lady Sevine - Out of Combat - Cast Frost Armor'),
(7667, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 12739, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Lady Sevine - In Combat - Cast Shadow Bolt'),
(7667, 0, 2, 0, 0, 0, 100, 0, 9000, 12000, 24000, 27000, 0, 0, 11, 12742, 33, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,   'Lady Sevine - In Combat - Cast Immolate'),
(7667, 0, 3, 0, 0, 0, 100, 0, 2000, 5000, 30000, 45000, 0, 0, 11, 12741, 33, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Lady Sevine - In Combat - Cast Curse of Weakness'),
(7667, 0, 4, 0, 0, 0, 100, 0, 7000, 9000, 15000, 25000, 0, 0, 11, 12740, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Lady Sevine - In Combat - Cast Summon Infernal Servant'),
(7667, 0, 5, 0, 8, 0, 100, 512, 12938, 0, 0, 0, 0, 0, 11, 12943, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Lady Sevine - On Spellhit Fel Curse - Cast Fel Curse Effect'),
(7667, 0, 6, 0, 25, 0, 100, 512, 0, 0, 0, 0, 0, 0, 42, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Lady Sevine - On Reset - Set HP Invincibility'),
(7667, 0, 7, 0, 8, 0, 100, 512, 12938, 0, 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Lady Sevine - On Spellhit Fel Curse - Remove Invincibility'),
(8297, 0, 0, 0, 0, 0, 100, 0, 3000, 5000, 5000, 8000, 0, 0, 11, 15284, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,       'Magronos the Unyielding - Within 0-5 Range - Cast Cleave'),
(8297, 0, 1, 0, 9, 0, 100, 0, 0, 0, 12000, 14000, 0, 5, 11, 9080, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Magronos the Unyielding - Within 0-5 Range - Cast Hamstring'),
(8297, 0, 2, 3, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Magronos the Unyielding - Between 0-30% Health - Cast Enrage (No Repeat)'),
(8297, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Magronos the Unyielding - On Enrage - Say Line 0'),
(8298, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20824, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Akubar the Seer - In Combat - Cast Lightning Bolt'),
(8298, 0, 1, 0, 9, 0, 100, 0, 0, 0, 12000, 16000, 0, 30, 11, 20831, 1, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,          'Akubar the Seer - Within 0-30 Range - Cast Chain Lightning'),
(8298, 0, 2, 0, 0, 0, 100, 0, 3000, 5000, 12000, 14000, 0, 0, 11, 11436, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,     'Akubar the Seer - In Combat - Cast Slow'),
--
(8299, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Spiteflayer - On Respawn - Cast Thrash Proc'),
(8299, 0, 1, 0, 0, 0, 100, 0, 6000, 9000, 16000, 24000, 0, 0, 11, 15042, 32, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,    'Spiteflayer - In Combat - Cast Curse of Blood'),
(8300, 0, 0, 0, 9, 0, 100, 0, 0, 0, 7000, 11000, 0, 5, 11, 19448, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Ravage - Within 0-5 Range - Cast Poison'),
(8300, 0, 1, 0, 0, 0, 100, 0, 6000, 9000, 16000, 24000, 0, 0, 11, 7367, 33, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Ravage - Within 0-5 Range - Cast Infected Bite'),
(8301, 0, 0, 0, 0, 0, 100, 0, 4000, 7000, 9000, 17000, 0, 0, 11, 5416, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Clack the Reaver - Within 0-5 Range - Cast Venom Sting'),
(8301, 0, 1, 0, 0, 0, 100, 0, 2000, 4000, 12000, 15000, 0, 0, 11, 16790, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Clack the Reaver - Within 0-5 Range - Cast Knockdown'),
(8302, 0, 0, 0, 0, 0, 100, 0, 10000, 15000, 18000, 25000, 0, 0, 11, 3635, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,     'Deatheye - Within 0-5 Range - Cast Crystal Gaze'),
(8302, 0, 1, 0, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 11, 12020, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                   'Deatheye - Between 0-50% Health - Cast Call of the Grave'),
(8303, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8260, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Grunter - On Aggro - Cast Rushing Charge'),
(8303, 0, 1, 0, 0, 0, 100, 0, 9000, 12000, 9000, 12000, 0, 0, 11, 19471, 0, 0, 0, 0, 0, 5, 40, 0, 0, 0, 0, 0, 0, 0,     'Grunter - In Combat - Cast Berserker Charge'),
(8303, 0, 2, 0, 0, 0, 100, 0, 4000, 6000, 9000, 12000, 0, 0, 11, 3604, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,       'Grunter - Within 0-5 Range - Cast Tendon Rip'),
(8304, 0, 0, 0, 0, 0, 100, 0, 3000, 6000, 5000, 8000, 0, 0, 11, 12057, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,       'Dreadscorn - Within 0-5 Range - Cast Strike'),
(8304, 0, 1, 0, 0, 0, 100, 0, 9000, 12000, 9000, 12000, 0, 0, 11, 6253, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Dreadscorn - Within 0-5 Range - Cast Backhand'),
(8304, 0, 2, 0, 2, 0, 100, 0, 0, 30, 30000, 35000, 0, 0, 11, 21049, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Dreadscorn - Between 0-30% Health - Cast Bloodlust'),
--
(8675, 0, 0, 0, 0, 0, 100, 0, 10000, 16000, 16000, 24000, 0, 0, 11, 13321, 256, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Felbeast - In Combat - Cast Mana Burn'),
(8716, 0, 0, 0, 0, 0, 100, 0, 3000, 6000, 5000, 8000, 0, 0, 11, 17287, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Dreadlord - In Combat - Cast Mind Blast'),
(8716, 0, 1, 0, 0, 0, 100, 0, 9000, 12000, 18000, 23000, 0, 0, 11, 13704, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Dreadlord - In Combat - Cast Psychic Scream'),
(8716, 0, 2, 0, 0, 0, 100, 0, 7000, 9000, 30000, 35000, 0, 0, 11, 12098, 1, 0, 0, 0, 0, 6, 30, 0, 0, 0, 0, 0, 0, 0,     'Dreadlord - In Combat - Cast Sleep'),
(8717, 0, 0, 0, 0, 0, 100, 0, 3000, 5000, 8000, 21000, 0, 0, 11, 15284, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Felguard Elite - Within 0-5 Range - Cast Cleave'),
(8717, 0, 1, 0, 0, 0, 100, 0, 4000, 20000, 8000, 24000, 0, 0, 11, 13737, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Felguard Elite - Within 0-5 Range - Cast Mortal Strike'),
(8717, 0, 2, 0, 0, 0, 100, 0, 8000, 15000, 10000, 29000, 0, 0, 11, 16046, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Felguard Elite - In Combat - Cast Blast Wave'),
(8718, 0, 0, 0, 0, 0, 100, 0, 2000, 13000, 6000, 18000, 0, 0, 11, 20817, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Manahound - In Combat - Cast Mana Burn'),
(8718, 0, 1, 0, 0, 0, 100, 0, 8000, 13000, 21000, 33000, 0, 0, 11, 3604, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Manahound - Within 0-5 Range - Cast Tendon Rip'),
(8718, 0, 2, 0, 0, 0, 100, 0, 3000, 8000, 6000, 20000, 0, 0, 11, 14331, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Manahound - Within 0-5 Range - Cast Vicious Rend'),
(12396, 0, 0, 0, 0, 0, 100, 0, 5000, 8000, 18000, 24000, 0, 0, 11, 16005, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,    'Doomguard Commander - In Combat - Cast Rain of Fire'),
(12396, 0, 1, 0, 0, 0, 100, 0, 12000, 15000, 20000, 25000, 0, 0, 11, 16727, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Doomguard Commander - In Combat - Cast War Stomp'),
(12396, 0, 2, 0, 0, 0, 100, 0, 2000, 4000, 25000, 32000, 0, 0, 11, 20812, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Doomguard Commander - In Combat - Cast Cripple'),
(12396, 0, 3, 0, 0, 0, 100, 0, 7000, 14000, 17000, 22000, 0, 0, 11, 15090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Doomguard Commander - In Combat - Cast Dispel Magic'),
(12396, 0, 4, 5, 8, 0, 100, 0, 23019, 0, 0, 0, 0, 0, 50, 179644, 180, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Doomguard Commander - On Spellhit \'Crystal Prison Dummy DND\' - Summon Gameobject \'Imprisoned Doomguard\''),
(12396, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Doomguard Commander - On Spellhit \'Crystal Prison Dummy DND\' - Despawn Instant');


-- Portal Seeker missing waypoints
DELETE FROM `creature` WHERE `guid` = 605981;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, 
`spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
(605981, 5981, 0, 0, 0, 0, 0, 1, 1, 1, -11384.5, -2998.08, -0.819786, 2.103, 430, 0, 1, 2158, 4650, 2, 0, 0, 0, '', NULL, 0, NULL);

DELETE FROM `creature_addon` WHERE `guid` = 605981;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(605981, 6059810, 0, 0, 0, 0, 0, NULL);

DELETE FROM `waypoint_data` WHERE `id` = 6059810;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
(6059810, 1, -11351.9, -2754.5, 7.95043, NULL, 0, 0, 0, 100, 0),
(6059810, 2, -11358.7, -2797.01, 5.45784, NULL, 0, 0, 0, 100, 0),
(6059810, 3, -11370.9, -2855.73, 4.67282,NULL, 0, 0, 0, 100, 0),
(6059810, 4, -11396.7, -2926.03, 3.05246, NULL, 0, 0, 0, 100, 0),
(6059810, 5, -11330.8, -2986.01, 3.24732, NULL, 0, 0, 0, 100, 0),    
(6059810, 6, -11380.8, -3013.05, -4.29948, NULL, 0, 0, 0, 100, 0),
(6059810, 7, -11444, -3037.98, 1.11936, NULL, 0, 0, 0, 100, 0),
(6059810, 8, -11500.1, -3041.02, -0.783425, NULL, 0, 0, 0, 100, 0),   
(6059810, 9, -11444.1, -3037.88, 1.11443, NULL, 0, 0, 0, 100, 0),
(6059810, 10, -11380.8, -3012.74, -4.27558, NULL, 0, 0, 0, 100, 0),
(6059810, 11, -11331, -2986.1, 3.21401, NULL, 0, 0, 0, 100, 0),
(6059810, 12, -11396.9, -2926.05, 3.04129, NULL, 0, 0, 0, 100, 0),
(6059810, 13, -11370.7, -2855.8, 4.71995, NULL, 0, 0, 0, 100, 0),
(6059810, 14, -11358.6, -2796.98, 5.47431, NULL, 0, 0, 0, 100, 0);


-- Quest: Into the Breach
SET @CGUID       := 656000;
SET @WPID        := 6560000;
SET @IPPPHASE_II := 131072;


DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID AND @CGUID+212;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, 
`spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 

(@CGUID,   19287, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11871, -3218.74, -14.8771, 0.159796, 120, 0, 0, 3297, 2434, 0, 0, 0, 0, '', NULL, 0, NULL),        -- Invading Voidwalker
(@CGUID+1, 19287, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11874.4, -3190.96, -14.9067, 6.21522, 120, 0, 0, 3297, 2434, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+2, 19287, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11863.4, -3193.57, -23.0898, 0.113359, 120, 0, 0, 3297, 2434, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+3, 19287, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11861.4, -3213.53, -22.4019, 0.108753, 120, 0, 0, 3297, 2434, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+4, 19287, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11903.3, -3210.05, -14.8145, 0.126833, 30, 0, 1, 3297, 2434, 2, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+5, 19287, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11903.8, -3206.12, -14.8229, 0.134687, 30, 0, 1, 3297, 2434, 2, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+6, 19288, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11891.6, -3206.74, -14.7911, 0.133866, 1800, 0, 1, 88440, 13100, 2, 0, 0, 0, '', NULL, 0, NULL),   -- Dreadknight, Melgromm
(@CGUID+7, 19288, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11897.1, -3211.45, -14.6568, 0.0835547, 1200, 0, 1, 88440, 13100, 2, 0, 0, 0, '', NULL, 0, NULL),  -- Dreadknight, Raynor
(@CGUID+8, 19288, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11897.6, -3202.01, -14.651, 0.0796277, 900, 0, 1, 88440, 13100, 2, 0, 0, 0, '', NULL, 0, NULL),    -- Dreadknight, Justinius
--
(@CGUID+9, 19391, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11902.3, -3207.61, -14.7973, 0.122027, 180, 0, 1, 15260, 0, 2, 0, 0, 0, '', NULL, 0, NULL),        -- Felguard Lieutenant
--
(@CGUID+10, 19284, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11904.2, -3206.61, -14.8357, 0.157618, 30, 0, 1, 4121, 0, 2, 0, 0, 0, '', NULL, 0, NULL),         -- Invading Felguard
(@CGUID+11, 19284, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11903.9, -3209.76, -14.8296, 0.14191, 30, 0, 1, 4121, 0, 2, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+12, 19284, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11902.3, -3212.55, -14.7525, 0.137533, 30, 0, 1, 4121, 0, 2, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+13, 19284, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11903.4, -3202.8, -14.3541, 0.184657, 30, 0, 1, 4121, 0, 2, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+14, 19284, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11902.3, -3207.49, -14.7963, 0.121825, 30, 0, 1, 4121, 0, 2, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+15, 19284, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11887.9, -3210.06, -15.0765, 0.137536, 30, 0, 1, 4121, 0, 2, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+16, 19284, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11888.8, -3202.12, -14.901, 0.0833477, 30, 0, 1, 4121, 0, 2, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+17, 19284, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11888, -3205.81, -15.2381, 0.0990557, 30, 0, 1, 4121, 0, 2, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+18, 19284, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11904.6, -3203.73, -14.8507, 0.126202, 30, 0, 1, 4121, 0, 2, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+19, 19284, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11903.5, -3212.87, -14.748, 0.149764, 30, 0, 1, 4121, 0, 2, 0, 0, 0, '', NULL, 0, NULL),
--
(@CGUID+20, 19286, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11902.9, -3211.64, -14.7827, 0.134731, 30, 0, 1, 4121, 0, 2, 0, 0, 0, '', NULL, 0, NULL),         -- Invading Fel Stalker
(@CGUID+21, 19286, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11902.9, -3208.03, -14.8118, 0.103315, 30, 0, 1, 4121, 0, 2, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+22, 19286, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11903.5, -3204.3, -14.819, 0.115096, 30, 0, 1, 4121, 0, 2, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+23, 19311, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11895.1, -3203.58, -14.592, 0.0885828, 1800, 0, 0, 4594, 0, 0, 0, 0, 0, '', NULL, 0, NULL),       -- Portal Hound
(@CGUID+24, 19311, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11894.5, -3209.87, -14.6023, 0.119999, 1800, 0, 0, 4594, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+25, 19311, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11900.6, -3208.54, -14.7589, 0.116072, 1200, 0, 0, 4455, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+26, 19311, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11900.4, -3213.68, -14.2425, 0.139634, 1200, 0, 0, 4455, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+27, 19311, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11901.7, -3199.99, -14.2882, 0.0964368, 900, 0, 0, 4594, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+28, 19311, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11901.2, -3205.42, -14.7608, 0.152985, 900, 0, 0, 4594, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+29, 19285, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11888.2, -3215.89, -14.2359, 0.17849, 300, 0, 0, 3237, 0, 0, 0, 0, 0, '', NULL, 0, NULL),         -- Invading Infernal
(@CGUID+30, 19285, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11891.2, -3196.54, -14.2259, 0.0363392, 300, 0, 0, 3237, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+31, 19290, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11869, -3225.79, -14.9308, 0.144756, 120, 0, 0, 2515, 2486, 0, 0, 0, 0, '', NULL, 0, NULL),       -- Invading Anguisher
(@CGUID+32, 19290, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11875, -3180.81, -14.9425, 0.168318, 120, 0, 0, 2515, 2486, 0, 0, 0, 0, '', NULL, 0, NULL),
--
(@CGUID+100, 19006, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 0, -11793.4, -3185.31, -28.8352, 2.69812, 300, 0, 0, 55890, 31550, 0, 0, 0, 0, '', NULL, 0, NULL),   -- Silvermoon Magister
(@CGUID+101, 19007, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11799.3, -3228.41, -27.2092, 2.12007, 300, 0, 0, 55890, 31550, 0, 0, 0, 0, '', NULL, 0, NULL),   -- Gnomeregan Conjuror
--
(@CGUID+102, 19320, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11818.3, -3228.96, -30.4358, 1.59057, 60, 0, 1, 4979, 0, 2, 0, 0, 0, '', NULL, 0, NULL),         -- Argent Protector
(@CGUID+103, 19320, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11796.4, -3195.61, -28.1723, 3.86363, 60, 0, 0, 4979, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+104, 19320, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11842.8, -3176.78, -28.9028, 4.34478, 60, 3, 0, 4979, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+105, 19320, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11840.7, -3217.56, -29.6506, 2.10609, 60, 3, 0, 4979, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+106, 19320, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11848.4, -3222.04, -28.4381, 2.09824, 60, 3, 0, 4979, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+107, 19320, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11835.8, -3190.32, -29.9569, 3.80256, 60, 3, 0, 4979, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+108, 19322, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11794.1, -3190.4, -28.794, 2.05722, 60, 0, 0, 4979, 0, 0, 0, 0, 0, '', NULL, 0, NULL),           -- Argent Guardian
(@CGUID+109, 19322, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11838.3, -3174.86, -29.5202, 4.26624, 60, 3, 0, 4979, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+110, 19322, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11837.2, -3208.95, -30.2396, 2.54984, 60, 3, 0, 4979, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+111, 19322, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11839.5, -3187.33, -29.4911, 4.12849, 60, 3, 0, 4979, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+112, 19365, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11818.6, -3168.31, -28.35, 3.66258, 60, 0, 0, 4979, 0, 0, 0, 0, 0, '', NULL, 0, NULL),           -- Argent Bowman
(@CGUID+113, 19365, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11829.5, -3219.82, -30.5772, 2.47023, 60, 0, 0, 4979, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+114, 19365, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11830.4, -3216.54, -30.7041, 2.43705, 60, 0, 0, 4979, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+115, 19365, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11835.1, -3182.6, -29.9996, 4.00275, 60, 0, 0, 4979, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+116, 19365, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11825.3, -3208.96, -29.6347, 3.2149, 60, 0, 0, 4979, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+117, 19365, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11822.7, -3182.43, -29.0161, 3.74751, 60, 0, 0, 4979, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+118, 19366, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11831.3, -3160.67, -30.0144, 4.12282, 60, 0, 0, 4979, 0, 0, 0, 0, 0, '', NULL, 0, NULL),         -- Argent Hunter
(@CGUID+119, 19366, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11846, -3171.25, -28.5187, 4.27488, 60, 3, 0, 4979, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+120, 19366, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11844.1, -3234, -25.5526, 1.70452, 60, 3, 0, 4979, 0, 1, 0, 0, 0, '', NULL, 0, NULL),
--
(@CGUID+200, 19385, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11804.1, -3221.13, -30.622, 2.75383, 1200, 0, 1, 69860, 0, 2, 0, 0, 0, '', NULL, 0, NULL),       -- Lord Marshal Raynor
(@CGUID+201, 19386, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11802.5, -3223.36, -30.4378, 2.63601, 1200, 0, 0, 5914, 0, 0, 0, 0, 0, '', NULL, 0, NULL),       -- Stormwind Marshal
(@CGUID+202, 19386, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11801.4, -3219.95, -30.5844, 2.78131, 1200, 0, 0, 5914, 0, 0, 0, 0, 0, '', NULL, 0, NULL),       -- Stormwind Marshal
--
(@CGUID+203, 18966, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11800, -3179.14, -30.4951, 3.5574, 900, 0, 1, 111780, 47325, 2, 0, 0, 0, '', NULL, 0, NULL),     -- Justinius the Harbinger
(@CGUID+204, 19407, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11797.3, -3180.99, -30.3303, 3.42781, 900, 0, 0, 5914, 0, 0, 0, 0, 0, '', NULL, 0, NULL),        -- Azuremyst Vindicator
(@CGUID+205, 19407, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11800, -3175.74, -30.4326, 3.73019, 900, 0, 0, 5914, 0, 0, 0, 0, 0, '', NULL, 0, NULL),          -- Azuremyst Vindicator
--
(@CGUID+206, 18969, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11792.7, -3175.95, -30.0411, 3.55114, 1800, 0, 1, 111780, 47325, 2, 0, 0, 0, '', NULL, 0, NULL), -- Melgromm Highmountain
(@CGUID+207, 19406, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11790.8, -3178.18, -29.9874, 3.55507, 1800, 0, 0, 5914, 0, 0, 0, 0, 0, '', NULL, 0, NULL),       -- Thunder Bluff Huntsman
(@CGUID+208, 19406, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11793.4, -3172.56, -29.8954, 3.65324, 1800, 0, 0, 5914, 0, 0, 0, 0, 0, '', NULL, 0, NULL),       -- Thunder Bluff Huntsman
--
(@CGUID+209, 19566, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11797.3, -3207.71, -30.2781, 1.91272, 300, 0, 0, 5385, 0, 0, 0, 0, 0, '', NULL, 0, NULL),        -- Nethergarde Advisor
(@CGUID+210, 19566, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11800, -3208.97, -30.3819, 2.36362, 300, 0, 0, 5186, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+211, 19567, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11798.8, -3208.15, -30.3542, 2.06588, 300, 0, 0, 5975, 0, 0, 0, 0, 0, '', NULL, 0, NULL),        -- Watcher Theronus
(@CGUID+212, 19942, 0, 0, 0, 0, 0, 1, @IPPPHASE_II, 1, -11796, -3192.45, -28.6508, 3.2903, 300, 0, 0, 5228, 0, 0, 0, 0, 0, '', NULL, 0, NULL);           -- Agent Proudwell


DELETE FROM `creature_formations` WHERE `leaderGUID` IN (@CGUID+6, @CGUID+7, @CGUID+8, @CGUID+200, @CGUID+203, @CGUID+206);
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
(@CGUID+6, @CGUID+6, 0, 0, 2, 0, 0),
(@CGUID+6, @CGUID+23, 4, 110, 516, 0, 0),
(@CGUID+6, @CGUID+24, 4, 250, 516, 0, 0),
(@CGUID+7, @CGUID+7, 0, 0, 2, 0, 0),
(@CGUID+7, @CGUID+25, 4, 110, 516, 0, 0),
(@CGUID+7, @CGUID+26, 4, 250, 516, 0, 0),
(@CGUID+8, @CGUID+8, 0, 0, 2, 0, 0),
(@CGUID+8, @CGUID+27, 4, 110, 516, 0, 0),
(@CGUID+8, @CGUID+28, 4, 250, 516, 0, 0),
--
(@CGUID+200, @CGUID+200, 0, 0, 2, 0, 0),
(@CGUID+200, @CGUID+201, 3, 90, 516, 0, 0),
(@CGUID+200, @CGUID+202, 3, 270, 516, 0, 0),
(@CGUID+203, @CGUID+203, 0, 0, 2, 0, 0),
(@CGUID+203, @CGUID+204, 3, 90, 516, 0, 0),
(@CGUID+203, @CGUID+205, 3, 270, 516, 0, 0),
(@CGUID+206, @CGUID+206, 0, 0, 2, 0, 0),
(@CGUID+206, @CGUID+207, 3, 90, 516, 0, 0),
(@CGUID+206, @CGUID+208, 3, 270, 516, 0, 0);


UPDATE `creature_template` SET `faction` = 1767 WHERE `entry` = 19567;
UPDATE `creature_template` SET `DamageModifier` = 2.6, `unit_flags` = 33040 WHERE `entry` = 19385;
UPDATE `creature_template` SET `unit_class` = 8 WHERE `entry` IN (19566, 19567);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (19385, 19566, 19567);
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 19006;

UPDATE `creature_template` SET `flags_extra` = 134217728 WHERE `entry` IN (19288); -- DONT_OVERRIDE_SAI_ENTRY (134217728) - Dreadknight

UPDATE `creature_template` SET `detection_range` = 40 WHERE `entry` IN (19287, 19566, 19567);
UPDATE `creature_template` SET `detection_range` = 30 WHERE `entry` IN (19285, 19290, 19365, 19366);


DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-656006, -656007, -656008);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (18966, 18969, 19288, 19287, 19365, 19385, 19391, 19566, 19567);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, 
`event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
--
(-656006, 0, 0, 1,  6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+206, 0, 0, 0, 0, 0, 0, 0,         'Dreadknight - On Death - Despawn Melgromm Highmountain'),
(-656006, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+207, 0, 0, 0, 0, 0, 0, 0,         'Dreadknight - On Death - Despawn Thunder Bluff Huntsman'),
(-656006, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+208, 0, 0, 0, 0, 0, 0, 0,         'Dreadknight - On Death - Despawn Thunder Bluff Huntsman'),
(-656006, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Dreadknight - On Death - Despawn Self'),
(-656006, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+23, 0, 0, 0, 0, 0, 0, 0,          'Dreadknight - On Death - Despawn Portal Hound'),
(-656006, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+24, 0, 0, 0, 0, 0, 0, 0,          'Dreadknight - On Death - Despawn Portal Hound'),
--
(-656007, 0, 0, 1,  6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+200, 0, 0, 0, 0, 0, 0, 0,         'Dreadknight - On Death - Despawn Marshal Raynor'),
(-656007, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+201, 0, 0, 0, 0, 0, 0, 0,         'Dreadknight - On Death - Despawn Stormwind Marshal'),
(-656007, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+202, 0, 0, 0, 0, 0, 0, 0,         'Dreadknight - On Death - Despawn Stormwind Marshal'),
(-656007, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Dreadknight - On Death - Despawn Self'),
(-656007, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+25, 0, 0, 0, 0, 0, 0, 0,          'Dreadknight - On Death - Despawn Portal Hound'),
(-656007, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+26, 0, 0, 0, 0, 0, 0, 0,          'Dreadknight - On Death - Despawn Portal Hound'),
--
(-656008, 0, 0, 1,  6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+203, 0, 0, 0, 0, 0, 0, 0,         'Dreadknight - On Death - Despawn Justinius the Harbinger'),
(-656008, 0, 1, 2, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+204, 0, 0, 0, 0, 0, 0, 0,         'Dreadknight - On Death - Despawn Azuremyst Vindicator'),
(-656008, 0, 2, 3, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+205, 0, 0, 0, 0, 0, 0, 0,         'Dreadknight - On Death - Despawn Azuremyst Vindicator'),
(-656008, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Dreadknight - On Death - Despawn Self'),
(-656008, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+27, 0, 0, 0, 0, 0, 0, 0,          'Dreadknight - On Death - Despawn Portal Hound'),
(-656008, 0, 5, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 10, @CGUID+28, 0, 0, 0, 0, 0, 0, 0,          'Dreadknight - On Death - Despawn Portal Hound'),
--
(19288, 0, 0, 0, 0, 0, 100, 0, 0, 0, 5000, 10000, 0, 0, 11, 20825, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Dreadknight - In Combat - Cast Shadow Bolt'),
(19288, 0, 1, 0, 0, 0, 100, 0, 12000, 16000, 10000, 13000, 0, 0, 11, 16583, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Dreadknight - In Combat - Cast Shadow Shock'),
(19288, 0, 2, 0, 0, 0, 100, 0, 9000, 14000, 11000, 15000, 0, 0, 11, 9081, 65, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Dreadknight - In Combat - Cast Shadow Bolt Volley'),
--
(19365, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Argent Bowman - Outside 30 Range - Start Combat Movement'),
(19365, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Argent Bowman - Within 5-30 Range - Stop Combat Movement'),
(19365, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Argent Bowman - Within 0-5 Range - Start Combat Movement'),   
(19365, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Argent Bowman - Within 5-30 Range - Cast Shoot'),
--
(18966, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Justinius the Harbinger - On Aggro - Say Line 0'),
(18966, 0, 1, 0, 0, 0, 100, 0, 5000, 10000, 10000, 20000, 0, 0, 11, 33554, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Justinius the Harbinger - In Combat - Cast Judgement of Command'),
(18966, 0, 2, 0, 14, 0, 100, 0, 2500, 40, 18000, 21000, 0, 0, 11, 33641, 64, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,    'Justinius the Harbinger - Friendly Missing 2500 Health - Cast Flash of Light'),
--
(18969, 0, 0, 0, 0, 0, 100, 0, 5000, 10000, 10000, 20000, 0, 0, 11, 33643, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Melgromm Highmountain - Within 0-30 Range - Cast Chain Lightning'),
(18969, 0, 1, 0, 0, 0, 100, 0, 5000, 10000, 10000, 20000, 0, 0, 11, 22885, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Melgromm Highmountain - Within 0-20 Range - Cast Earth Shock'),
--
(19385, 0, 0, 0, 0, 0, 100, 0, 4850, 18250, 4850, 18250, 0, 0, 11, 40504, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Lord Marshal Raynor - Within 0-5 Range - Cast Cleave'),
--
(19287, 0, 0, 0, 0, 0, 100, 0, 3000, 6000, 12000, 24000, 0, 0, 11, 11829, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Invading Voidwalker - Within 0-30 Range - Cast Flamestrike'),
(19287, 0, 1, 0, 0, 0, 100, 0, 0, 0, 5000, 10000, 0, 0, 11, 20825, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Invading Voidwalker - In Combat - Cast Shadow Bolt'),
--
(19391, 0, 0, 0, 0, 0, 100, 0, 3000, 6000, 10000, 15000, 0, 0, 11, 3551, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Felguard Lieutenant - Within 0-5 Range - Cast Skull Crack'),
--
(19566, 0, 0, 0, 106, 0, 100, 0, 0, 0, 2800, 5200, 0, 8, 11, 15453, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Nethergarde Advisor - Within 0-8 Range - Cast Arcane Explosion'),
(19566, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20823, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Nethergarde Advisor - In Combat - Cast Fireball'),
(19567, 0, 0, 0, 106, 0, 100, 0, 0, 0, 2800, 5200, 0, 8, 11, 15453, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Watcher Theronus - Within 0-8 Range - Cast Arcane Explosion'),
(19567, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 16799, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Watcher Theronus - In Combat - Cast Frostbolt');


DELETE FROM `creature_addon` WHERE `guid` IN 
(@CGUID+4, @CGUID+5, @CGUID+6, @CGUID+7, @CGUID+8, @CGUID+9, @CGUID+10, @CGUID+11, @CGUID+12, @CGUID+13, @CGUID+14, @CGUID+15, 
@CGUID+16, @CGUID+17, @CGUID+18, @CGUID+19, @CGUID+20, @CGUID+21, @CGUID+22, @CGUID+102, @CGUID+200, @CGUID+203, @CGUID+206);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
--
(@CGUID+4,   @WPID+40,   0, 0, 0, 0, 0, NULL),
(@CGUID+5,   @WPID+50,   0, 0, 0, 0, 0, NULL),
(@CGUID+6,   @WPID+60,   0, 0, 0, 0, 0, NULL),
(@CGUID+7,   @WPID+70,   0, 0, 0, 0, 0, NULL),
(@CGUID+8,   @WPID+80,   0, 0, 0, 0, 0, NULL),
(@CGUID+9,   @WPID+90,   0, 0, 0, 0, 0, NULL),
(@CGUID+10,  @WPID+100,  0, 0, 0, 0, 0, NULL),
(@CGUID+11,  @WPID+110,  0, 0, 0, 0, 0, NULL),
(@CGUID+12,  @WPID+120,  0, 0, 0, 0, 0, NULL),
(@CGUID+13,  @WPID+130,  0, 0, 0, 0, 0, NULL),
(@CGUID+14,  @WPID+140,  0, 0, 0, 0, 0, NULL),
(@CGUID+15,  @WPID+150,  0, 0, 0, 0, 0, NULL),
(@CGUID+16,  @WPID+160,  0, 0, 0, 0, 0, NULL),
(@CGUID+17,  @WPID+170,  0, 0, 0, 0, 0, NULL),
(@CGUID+18,  @WPID+180,  0, 0, 0, 0, 0, NULL),
(@CGUID+19,  @WPID+190,  0, 0, 0, 0, 0, NULL),
(@CGUID+20,  @WPID+200,  0, 0, 0, 0, 0, NULL),
(@CGUID+21,  @WPID+210,  0, 0, 0, 0, 0, NULL),
(@CGUID+22,  @WPID+220,  0, 0, 0, 0, 0, NULL),
(@CGUID+102, @WPID+1020, 0, 0, 0, 0, 0, NULL),
(@CGUID+200, @WPID+2000, 0, 0, 0, 0, 0, NULL),
(@CGUID+203, @WPID+2030, 0, 0, 0, 0, 0, NULL),
(@CGUID+206, @WPID+2060, 0, 0, 0, 0, 0, NULL);


DELETE FROM `waypoint_data` WHERE `id` IN 
(@WPID+40, @WPID+50, @WPID+60, @WPID+70, @WPID+80, @WPID+90, @WPID+100, @WPID+110, @WPID+120, @WPID+130, @WPID+140, @WPID+150, 
@WPID+160, @WPID+170, @WPID+180, @WPID+190, @WPID+200, @WPID+0210, @WPID+0220, @WPID+1020, @WPID+2000, @WPID+2030, @WPID+2060);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
--
(@WPID+2000, 1, -11824.2, -3225.97, -30.3699, NULL, 0, 0, 0, 100, 0),     -- Lord Marshal Raynor
(@WPID+2000, 2, -11839, -3211.73, -30.043, NULL, 0, 0, 0, 100, 0),
(@WPID+2030, 1, -11823.1, -3192.1, -30.7322, NULL, 0, 0, 0, 100, 0),      -- Justinius the Harbinger
(@WPID+2030, 2, -11837.2, -3195.41, -29.8546, NULL, 0, 0, 0, 100, 0),
(@WPID+2060, 1, -11812.5, -3186.91, -30.6074, NULL, 0, 0, 0, 100, 0),     -- Melgromm Highmountain
(@WPID+2060, 2, -11821.2, -3208.73, -29.7076, NULL, 0, 0, 0, 100, 0),
(@WPID+2060, 3, -11836, -3204.49, -30.2795, NULL, 0, 0, 0, 100, 0),
--
(@WPID+40, 1, -11889.6, -3208.69, -14.963, NULL, 0, 0, 0, 100, 0),        -- Invading Voidwalker
(@WPID+40, 2, -11855.6, -3204.76, -26.665, NULL, 30000, 0, 0, 100, 0),
(@WPID+50, 1, -11890.4, -3204.01, -14.7968, NULL, 0, 0, 0, 100, 0),
(@WPID+50, 2, -11855.8, -3199.2, -26.909, NULL, 30000, 0, 0, 100, 0),
--
(@WPID+60, 1, -11845.1, -3200.56, -29.3595, NULL, 0, 0, 0, 100, 0),       -- Dreadknight, Melgromm
(@WPID+70, 1, -11891.3, -3206.46, -14.8065, NULL, 0, 0, 0, 100, 0),       -- Dreadknight, Raynor
(@WPID+70, 2, -11850.2, -3201.36, -28.6679, NULL, 0, 0, 0, 100, 0),
(@WPID+70, 3, -11843.8, -3206.54, -29.5158, NULL, 0, 0, 0, 100, 0),
(@WPID+80, 1, -11889.9, -3206.58, -14.9646, NULL, 0, 0, 0, 100, 0),       -- Dreadknight, Justinius
(@WPID+80, 2, -11851.1, -3201.08, -28.5624, NULL, 0, 0, 0, 100, 0),
(@WPID+80, 3, -11843.6, -3196.09, -29.3421, NULL, 0, 0, 0, 100, 0),
(@WPID+90, 1, -11837.4, -3199.97, -29.9665, NULL, 30000, 0, 0, 100, 0),   -- Felguard Lieutenant
--
(@WPID+200, 1, -11889.4, -3210.32, -14.9459, NULL, 0, 0, 0, 100, 0),      -- Invading Fel Stalker
(@WPID+200, 2, -11845.4, -3204.67, -29.4112, NULL, 0, 1, 0, 100, 0),
(@WPID+200, 3, -11832.9, -3215.73, -30.5512, NULL, 30000, 1, 0, 100, 0),
(@WPID+210, 1, -11889, -3206.14, -15.0842, NULL, 0, 0, 0, 100, 0),
(@WPID+210, 2, -11843.2, -3200.21, -29.5037, NULL, 0, 1, 0, 100, 0),
(@WPID+210, 3, -11826.9, -3207.13, -30.0613, NULL, 30000, 1, 0, 100, 0),
(@WPID+220, 1, -11890.1, -3202.46, -14.781, NULL, 0, 0, 0, 100, 0),
(@WPID+220, 2, -11841.1, -3195.8, -29.4767, NULL, 0, 1, 0, 100, 0),
(@WPID+220, 3, -11833.8, -3179.55, -30.1652, NULL, 30000, 1, 0, 100, 0),
--
(@WPID+1020, 1, -11818.4, -3210.99, -30.1687, NULL, 0, 1, 0, 100, 0),     -- Argent Protector
(@WPID+1020, 2, -11846.5, -3200.56, -29.201, NULL, 30000, 1, 0, 100, 0),
--
(@WPID+100, 1, -11893.4, -3204.94, -14.6618, NULL, 0, 0, 0, 100, 0),      -- Invading Felguard
(@WPID+100, 2, -11850, -3200.02, -28.7504, NULL, 0, 1, 0, 100, 0),
(@WPID+100, 3, -11837.2, -3192.87, -29.8202, NULL, 30000, 1, 0, 100, 0),
(@WPID+110, 1, -11892.3, -3208.3, -14.7235, NULL, 0, 0, 0, 100, 0),
(@WPID+110, 2, -11847.9, -3202.94, -29.0108, NULL, 0, 1, 0, 100, 0),
(@WPID+110, 3, -11834.2, -3205.21, -30.4318, NULL, 30000, 1, 0, 100, 0),
(@WPID+120, 1, -11888.2, -3210.41, -15.0273, NULL, 0, 1, 0, 100, 0),
(@WPID+120, 2, -11846.8, -3206.71, -29.0062, NULL, 30000, 1, 0, 100, 0),
(@WPID+130, 1, -11889.1, -3202.02, -14.8334, NULL, 0, 1, 0, 100, 0),
(@WPID+130, 2, -11847.9, -3196.42, -28.9539, NULL, 30000, 1, 0, 100, 0),
(@WPID+140, 1, -11889.6, -3206.22, -14.994, NULL, 0, 1, 0, 100, 0),
(@WPID+140, 2, -11842.7, -3200.9, -29.5849, NULL, 30000, 1, 0, 100, 0),
(@WPID+150, 1, -11848, -3206.28, -28.8014, NULL, 0, 1, 0, 100, 0),
(@WPID+150, 2, -11837.3, -3213.55, -30.1827, NULL, 30000, 1, 0, 100, 0),
(@WPID+160, 1, -11849.9, -3196.86, -28.6516, NULL, 0, 1, 0, 100, 0),
(@WPID+160, 2, -11837.5, -3191.1, -29.7639, NULL, 30000, 1, 0, 100, 0),
(@WPID+170, 1, -11850.5, -3201.05, -28.6364, NULL, 0, 1, 0, 100, 0),
(@WPID+170, 2, -11834.5, -3199.66, -30.1119, NULL, 30000, 1, 0, 100, 0),
(@WPID+180, 1, -11893, -3202.07, -14.6551, NULL, 0, 0, 0, 100, 0),
(@WPID+180, 2, -11849.6, -3196.98, -28.7049, NULL, 0, 1, 0, 100, 0),
(@WPID+180, 3, -11852.3, -3184.09, -28.1065, NULL, 30000, 1, 0, 100, 0),
(@WPID+190, 1, -11891.9, -3211.69, -14.6478, NULL, 0, 0, 0, 100, 0),
(@WPID+190, 2, -11847.1, -3205.97, -28.9958, NULL, 0, 1, 0, 100, 0),
(@WPID+190, 3, -11842.5, -3223.27, -28.9624, NULL, 30000, 1, 0, 100, 0);

/* Outland map outside Dark Portal */
UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_tbc' WHERE `guid` = 42457;

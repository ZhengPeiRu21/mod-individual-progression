/* smart scripts */
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (4067, 11910);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(3988, 3989, 3991, 3992, 3993, 3999, 4003, 4004, 4005, 4006, 4007, 4009, 4012, 4016, 4017, 4018, 4019, 4020, 4021, 4022, 4023, 4024, 4027, 4028, 4030, 4031, 4036, 4037, 4038, 4041, 4042, 4044, 
4050, 4051, 4052, 4053, 4057, 4061, 4070, 4202, 4409, 5916, 5928, 5931, 5932, 8518, 11911, 11912, 11913, 11914, 11915, 11917, 11918, 11920, 11921, 12579);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(3988, 3989, 3991, 3992, 3993, 3999, 4003, 4004, 4005, 4006, 4007, 4009, 4012, 4016, 4017, 4018, 4019, 4020, 4021, 4022, 4023, 4024, 4027, 4028, 4030, 4031, 4036, 4037, 4038, 4041, 4042, 4044, 
4050, 4051, 4052, 4053, 4057, 4061, 4067, 4070, 4202, 4409, 5916, 5928, 5931, 5932, 8518, 11910, 11911, 11912, 11913, 11914, 11915, 11917, 11918, 11920, 11921, 12579);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(3988, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Venture Co. Operator - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3989, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Venture Co. Logger - Outside 30 Range - Start Combat Movement'),
(3989, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Venture Co. Logger - Within 5-30 Range - Stop Combat Movement'),
(3989, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Venture Co. Logger - Within 0-5 Range - Start Combat Movement'),
(3989, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2200, 3900, 5, 30, 11, 10277, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Venture Co. Logger - In Combat - Cast Throw'),
(3989, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Venture Co. Logger - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3991, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20793, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Venture Co. Deforester - In Combat - Cast Fireball'),
(3991, 0, 1, 0, 0, 0, 100, 0, 9000, 16000, 18000, 24000, 0, 0, 11, 5740, 1, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,    'Venture Co. Deforester - Within 0-30 Range - Cast Rain of Fire'),
(3991, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Venture Co. Deforester - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3992, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Venture Co. Engineer - Outside 30 Range - Start Combat Movement'),
(3992, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Venture Co. Engineer - Within 5-30 Range - Stop Combat Movement'),
(3992, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Venture Co. Engineer - Within 0-5 Range - Start Combat Movement'),
(3992, 0, 3, 0, 9, 0, 100, 0, 0, 0, 3000, 5000, 5, 30, 11, 7978, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Venture Co. Engineer - Within 5-30 Range - Cast Throw Dynamite'),
(3992, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Venture Co. Engineer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3993, 0, 0, 0, 0, 0, 100, 0, 5000, 9000, 70000, 85000, 0, 0, 11, 7979, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Venture Co. Machine Smith - In Combat - Cast Compact Harvest Reaper'),
(3993, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Venture Co. Machine Smith - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(3999, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Windshear Digger - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4003, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20792, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Windshear Geomancer - In Combat - Cast Frostbolt'),
(4003, 0, 1, 0, 0, 0, 100, 0, 4000, 11000, 7000, 15000, 0, 0, 11, 8139, 33, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Windshear Geomancer - In Combat - Cast Fevered Fatigue'),
(4003, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Windshear Geomancer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4004, 0, 0, 0, 0, 0, 100, 0, 1000, 3000, 30000, 45000, 0, 0, 11, 3631, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Windshear Overlord - In Combat - Cast Battle Fury'),
(4004, 0, 1, 0, 0, 0, 100, 0, 4000, 11000, 7000, 15000, 0, 0, 11, 8139, 33, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Windshear Overlord - In Combat - Cast Fevered Fatigue'),
(4004, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Windshear Overlord - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(4005, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3616, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Deepmoss Creeper - On Respawn - Cast Poison Proc'),
(4006, 0, 0, 0, 9, 0, 100, 0, 0, 0, 8000, 12000, 0, 30, 11, 745, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Deepmoss Webspinner - Within 0-30 Range - Cast Web'),
(4007, 0, 0, 0, 0, 0, 80, 0, 0, 0, 1000, 4000, 0, 0, 11, 7951, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,               'Deepmoss Venomspitter - In Combat - Cast Toxic Spit'),
(4009, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Raging Cliff Stormer - On Aggro - Cast Rushing Charge'),
(4009, 0, 1, 0, 9, 0, 100, 0, 0, 0, 12000, 15000, 0, 8, 11, 8078, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Raging Cliff Stormer - Within 0-8 Range - Cast Thunderclap'),
(4012, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3616, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Pridewing Wyvern - On Respawn - Cast Poison Proc'),
(4016, 0, 0, 0, 9, 0, 100, 1, 0, 0, 0, 0, 0, 30, 11, 7994, 256, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                 'Fey Dragon - Within 0-30 Range - Cast Nullify Mana (No Repeat)'),
(4017, 0, 0, 0, 9, 0, 100, 0, 0, 0, 8000, 11000, 0, 30, 11, 11981, 256, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Wily Fey Dragon - Within 0-30 Range - Cast Mana Burn'),
(4018, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Antlered Courser - On Aggro - Cast Rushing Charge'),
(4019, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Great Courser - On Aggro - Cast Rushing Charge'),
(4020, 0, 0, 0, 9, 0, 100, 0, 0, 0, 7000, 16000, 0, 5, 11, 7997, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Sap Beast - Within 0-5 Range - Cast Sap Might'),
(4021, 0, 0, 0, 9, 0, 100, 0, 0, 0, 5000, 11000, 0, 30, 11, 3396, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Corrosive Sap Beast - Within 0-30 Range - Cast Corrosive Poison'),
--
(4022, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bloodfury Harpy - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4023, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bloodfury Roguefeather - On Respawn - Cast Thrash Proc'),
(4023, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bloodfury Roguefeather - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4024, 0, 0, 0, 12, 0, 100, 0, 0, 20, 30000, 35000, 0, 0, 11, 7160, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,          'Bloodfury Slayer - Target Between 0-20% Health - Cast Execute'),
(4024, 0, 1, 0, 0, 0, 100, 0, 9000, 18000, 120000, 130000, 0, 0, 11, 16231, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodfury Slayer - In Combat - Cast Curse of Recklessness'),
(4024, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bloodfury Slayer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4027, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 4000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Bloodfury Storm Witch - In Combat - Cast Lightning Bolt'),
(4027, 0, 1, 0, 0, 0, 100, 0, 6000, 10000, 40000, 45000, 0, 0, 11, 6535, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Bloodfury Storm Witch - In Combat - Cast Lightning Cloud'),
(4027, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bloodfury Storm Witch - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(4028, 0, 0, 0, 9, 0, 100, 0, 0, 0, 14000, 20000, 0, 30, 11, 12747, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Charred Ancient - Within 0-30 Range - Cast Entangling Roots'),
(4030, 0, 0, 0, 9, 0, 100, 0, 0, 0, 17000, 25000, 0, 5, 11, 6909, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Vengeful Ancient - Within 0-5 Range - Cast Curse of Thorns'),
(4031, 0, 0, 0, 9, 0, 100, 0, 0, 0, 8000, 16000, 0, 30, 11, 3396, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Fledgling Chimaera - In Combat - Cast Corrosive Poison'),
(4036, 0, 0, 0, 9, 0, 100, 0, 0, 0, 120000, 125000, 0, 30, 11, 6205, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Rogue Flame Spirit - Within 0-30 Range - Cast Curse of Weakness'),
(4036, 0, 1, 0, 0, 0, 100, 0, 5000, 9000, 18000, 22000, 0, 0, 11, 1094, 32, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,    'Rogue Flame Spirit - Within 0-30 Range - Cast Immolate'),
(4037, 0, 0, 0, 0, 0, 100, 0, 1000, 3000, 60000, 65000, 0, 0, 11, 184, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Burning Ravager - In Combat - Cast Fire Shield II'),
(4038, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9053, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Burning Destroyer - In Combat - Cast Fireball'),
(4038, 0, 1, 0, 0, 0, 100, 0, 5000, 11000, 13000, 16000, 0, 0, 11, 8000, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,    'Burning Destroyer - In Combat - Cast Area Burn'),
(4041, 0, 0, 0, 9, 0, 100, 0, 0, 0, 21000, 26000, 0, 5, 11, 3636, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Scorched Basilisk - Within 0-5 Range - Cast Crystalline Slumber'),
(4042, 0, 0, 0, 9, 0, 100, 0, 0, 0, 21000, 26000, 0, 5, 11, 3636, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Singed Basilisk - Within 0-5 Range - Cast Crystalline Slumber'),
(4044, 0, 0, 0, 9, 0, 100, 0, 0, 0, 21000, 26000, 0, 5, 11, 3636, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Blackened Basilisk - Within 0-5 Range - Cast Crystalline Slumber'),
--
(4050, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 782, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Cenarion Caretaker - On Aggro - Cast Thorns'),
(4050, 0, 1, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 7090, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Cenarion Caretaker - In Combat - Cast Bear Form (No Repeat)'),
(4050, 0, 2, 0, 9, 0, 100, 0, 0, 0, 7000, 10000, 0, 5, 11, 12161, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Cenarion Caretaker - Within 0-5 Range - Cast Maul'),
(4051, 0, 0, 0, 74, 0, 100, 0, 0, 0, 16000, 18000, 90, 40, 11, 1430, 32, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Cenarion Botanist - Friendly Between 0-90% Health - Cast Rejuvenation'),
(4051, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9739, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Cenarion Botanist - In Combat - Cast Wrath'),
(4051, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Cenarion Botanist - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4052, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Cenarion Druid - On Aggro - Set phase to 1'),
(4052, 0, 1, 0, 0, 1, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9739, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Cenarion Druid - In Combat - Cast Wrath (Phase 1)'),
(4052, 0, 2, 3, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 11, 5759, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Cenarion Druid - Between 0-50% Health - Cast Cat Form (No Repeat)'),
(4052, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Cenarion Druid - On Cast Cat Form - Set phase to 2'),
(4052, 0, 4, 0, 0, 0, 100, 0, 12000, 16000, 30000, 35000, 0, 0, 11, 5217, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Cenarion Druid - In Combat - Cast Tigers Fury (Phase 2)'),
--
(4053, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Daughter of Cenarius - Outside 30 Range - Start Combat Movement'),
(4053, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Daughter of Cenarius - Within 5-30 Range - Stop Combat Movement'),
(4053, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Daughter of Cenarius - Within 0-5 Range - Start Combat Movement'),
(4053, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 10277, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Daughter of Cenarius - Within 5-30 Range - Cast Throw'),
(4053, 0, 4, 0, 0, 0, 100, 0, 6000, 6000, 10000, 12000, 0, 0, 11, 527, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Daughter of Cenarius - In Combat - Cast Dispel Magic'),
(4053, 0, 5, 0, 0, 0, 100, 0, 4000, 5000, 6000, 10000, 0, 0, 11, 527, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Daughter of Cenarius - In Combat - Cast Dispel Magic'),
(4053, 0, 6, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Daughter of Cenarius - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4057, 0, 0, 0, 11, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 7993, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Son of Cenarius - On Respawn - Cast Summon Treant Ally'),
(4057, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Son of Cenarius - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4061, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Mirkfallon Dryad - Outside 30 Range - Start Combat Movement'),
(4061, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Mirkfallon Dryad - Within 5-30 Range - Stop Combat Movement'),
(4061, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Mirkfallon Dryad - Within 0-5 Range - Start Combat Movement'),
(4061, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 10277, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Mirkfallon Dryad - Within 5-30 Range - Cast Throw'),
(4061, 0, 4, 0, 0, 0, 100, 0, 0, 0, 10000, 16000, 0, 0, 11, 7992, 33, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,          'Mirkfallon Dryad - Within 0-30 Range - Cast Slowing Poison'),
(4061, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Mirkfallon Dryad - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(4070, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Venture Co. Builder - Outside 30 Range - Start Combat Movement'),
(4070, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Venture Co. Builder - Within 5-30 Range - Stop Combat Movement'),
(4070, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Venture Co. Builder - Within 0-5 Range - Start Combat Movement'),
(4070, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Venture Co. Builder - Within 5-30 Range - Cast Shoot'),
(4070, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Venture Co. Builder - Between 0-15% Health - Flee For Assist (No Repeat)'),

(4202, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Gerenzo Wrenchwhistle - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4409, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Gatekeeper Kordurus - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5916, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Sentinel Amarassan - On Aggro - Set phase to 1'),
(5916, 0, 1, 0, 0, 1, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9739, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Sentinel Amarassan - In Combat - Cast Wrath (Phase 1)'),
(5916, 0, 2, 3, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 11, 5759, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Sentinel Amarassan - Between 0-50% Health - Cast Cat Form (No Repeat)'),
(5916, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 22, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Sentinel Amarassan - On Cast Cat Form - Set phase to 2'),
(5916, 0, 4, 0, 0, 0, 100, 0, 12000, 16000, 30000, 35000, 0, 0, 11, 5217, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Sentinel Amarassan - In Combat - Cast Tigers Fury (Phase 2)'),
(5928, 0, 0, 0, 0, 0, 100, 0, 11000, 18000, 12000, 15000, 0, 0, 11, 3405, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,    'Sorrow Wing - Within 0-5 Range - Cast Soul Rend'),
(5928, 0, 1, 0, 9, 0, 100, 9, 0, 0, 6000, 12000, 0, 5, 11, 3388, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Sorrow Wing - Within 0-5 Range - Cast Deadly Leech Poison'),
(5931, 0, 0, 0, 9, 0, 100, 0, 0, 0, 15500, 25300, 0, 20, 11, 6533, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Foreman Rigger - Within 0-20 Range - Cast Net'),
(5931, 0, 1, 0, 9, 0, 100, 0, 0, 0, 45000, 45000, 0, 5, 11, 6016, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Foreman Rigger - Within 0-5 Range - Cast Pierce Armor'),
(5932, 0, 0, 0, 9, 0, 100, 0, 0, 0, 15000, 19000, 0, 8, 11, 16508, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Taskmaster Whipfang - Within 0-8 Range - Cast Intimidating Roar'),
(5932, 0, 1, 0, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Taskmaster Whipfang - Between 0-20% Health - Flee For Assist (No Repeat)'),
(8518, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Rynthariel the Keymaster - Outside 30 Range - Start Combat Movement'),
(8518, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Rynthariel the Keymaster - Within 5-30 Range - Stop Combat Movement'),
(8518, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Rynthariel the Keymaster - Within 0-5 Range - Start Combat Movement'),
(8518, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 0, 0, 11, 10277, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Rynthariel the Keymaster - Within 5-30 Range - Cast Throw'),
(8518, 0, 4, 0, 0, 0, 100, 0, 3000, 6000, 10000, 16000, 0, 0, 11, 7992, 97, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Rynthariel the Keymaster - In Combat - Cast Slowing Poison'),
(8518, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Rynthariel the Keymaster - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(11911, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Grimtotem Mercenary - Outside 30 Range - Start Combat Movement'),
(11911, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Grimtotem Mercenary - Within 5-30 Range - Stop Combat Movement'),
(11911, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Grimtotem Mercenary - Within 0-5 Range - Start Combat Movement'),
(11911, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 10277, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Grimtotem Mercenary - Within 5-30 Range - Cast Throw'),
(11911, 0, 4, 0, 9, 0, 100, 0, 0, 0, 7000, 11000, 0, 5, 11, 12555, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,           'Grimtotem Mercenary - Within 0-5 Range - Cast Pummel'),
(11911, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Grimtotem Mercenary - Between 0-15% Health - Flee For Assist (No Repeat)'),
(11912, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Grimtotem Brute - On Aggro - Cast Rushing Charge'),
(11912, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Grimtotem Brute - Between 0-15% Health - Flee For Assist (No Repeat)'),
(11913, 0, 0, 0, 74, 0, 100, 0, 0, 0, 18000, 21000, 90, 40, 11, 12160, 32, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,      'Grimtotem Sorcerer - Friendly Between 0-90% Health - Cast Rejuvenation'),
(11913, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20802, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Grimtotem Sorcerer - In Combat - Cast Lightning Bolt'),
(11913, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Grimtotem Sorcerer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(11914, 0, 0, 0, 9, 0, 100, 0, 0, 0, 9000, 15000, 0, 5, 11, 45, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Gorehoof the Black - Within 0-5 Range - Cast War Stomp'),
(11914, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Gorehoof the Black - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(11915, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Gogger Rock Keeper - On Aggro - Say Line 0'),
(11915, 0, 1, 0, 9, 0, 100, 0, 0, 0, 9000, 15000, 0, 20, 11, 13281, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Gogger Rock Keeper - Within 0-20 Range - Cast Earth Shock'),
(11915, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Gogger Rock Keeper - Between 0-15% Health - Flee For Assist (No Repeat)'),
(11917, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Gogger Geomancer - On Aggro - Say Line 0'),
(11917, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 4000, 0, 0, 11, 20793, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Gogger Geomancer - In Combat - Cast Fireball'),
(11917, 0, 2, 0, 0, 0, 100, 0, 11000, 17000, 12000, 18000, 0, 0, 11, 11990, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0, 'Gogger Geomancer - In Combat - Cast Rain of Fire'),
(11918, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Gogger Stonepounder - On Aggro - Say Line 0'),
(11918, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Gogger Stonepounder - Between 0-15% Health - Flee For Assist (No Repeat)'),
(11920, 0, 0, 0, 9, 0, 100, 0, 0, 0, 9000, 13000, 0, 5, 11, 8646, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Goggeroc - Within 0-5 Range - Cast Snap Kick'),
(11921, 0, 0, 0, 9, 0, 100, 0, 0, 0, 9000, 12000, 0, 30, 11, 745, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Besseleth - Within 0-30 Range - Cast Web'),
(11921, 0, 2, 0, 9, 0, 100, 0, 0, 0, 12000, 17000, 0, 5, 11, 5416, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Besseleth - Within 0-5 Range - Cast Venom Sting'),
(12579, 0, 0, 0, 9, 0, 100, 0, 0, 0, 21000, 25000, 0, 5, 11, 13443, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Bloodfury Ripper - Within 0-5 Range - Cast Rend'),
(12579, 0, 1, 2, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Bloodfury Ripper - Between 0-30% Health - Cast Enrage (No Repeat)'),
(12579, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bloodfury Ripper - On Enrage - Say Line 0');


-- Vengeful Ancient, entry 4030
UPDATE `creature` SET `MovementType` = 1, `Wander_distance` = 5 WHERE `guid` = 51889;

-- fix waypoints, spawn locations and respawn times
DELETE FROM `creature` WHERE `id1` IN (4202, 5916, 11921);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, 
`spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
--
(29254,  4202, 0, 0, 1, 0, 0, 1, 1, 1, 1605.99, 96.7067, 98.6662, 0.191986, 300, 0, 0, 840, 0, 0, 0, 0, 0, '', 0, 0, NULL),     -- Gerenzo Wrenchwhistle
(695116, 4202, 0, 0, 1, 0, 0, 1, 1, 1, 1608.36, 185.02, 104.705, 3.56047,   300, 0, 0, 840, 0, 0, 0, 0, 0, '', 0, 0, NULL),
--
(51888,  5916, 0, 0, 1, 0, 0, 1, 1, 1, 2413.89, 1675.03, 316.675, 5.08935, 38000, 0, 1, 2070, 732, 2, 0, 0, 0, '', 0, 0, NULL), -- Amarassan
--
(29447,  11921, 0, 0, 1, 0, 0, 1, 1, 0, 511.902, 708.578, 80.1161, 3.54302, 300, 3, 0, 1563, 0, 1, 0, 0, 0, '', 0, 0, NULL),    -- Besseleth
(695112, 11921, 0, 0, 1, 0, 0, 1, 1, 0, 511.902, 708.578, 80.1161, 3.54302, 300, 3, 0, 1563, 0, 1, 0, 0, 0, '', 0, 0, NULL),    -- more likely to spawn here
(695113, 11921, 0, 0, 1, 0, 0, 1, 1, 0, 573.739, 571.18, 79.9735, 4.17277,  300, 0, 0, 1563, 0, 0, 0, 0, 0, '', NULL, 0, NULL), -- https://www.youtube.com/watch?v=vn-4B5U1v1E
(695114, 11921, 0, 0, 1, 0, 0, 1, 1, 0, 581.379, 681.811, 78.715, 0.571724, 300, 3, 0, 1563, 0, 1, 0, 0, 0, '', NULL, 0, NULL); -- https://www.youtube.com/watch?v=B3FH62CEvW8


DELETE FROM `pool_creature` WHERE `pool_entry` IN (601029, 601030);
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
(29254,  601029, 0, 'Gerenzo Wrenchwhistle'),
(695116, 601029, 0, 'Gerenzo Wrenchwhistle'),
(29447,  601030, 0, 'Besseleth'),
(695112, 601030, 0, 'Besseleth'),
(695113, 601030, 0, 'Besseleth'),
(695114, 601030, 0, 'Besseleth');

DELETE FROM `pool_template` WHERE `entry` IN (601029, 601030);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES 
(601029, 1, 'Gerenzo Wrenchwhistle - Stonetalon Mountains'),
(601030, 1, 'Besseleth - Stonetalon Mountains');

DELETE FROM `creature_addon` WHERE `guid` = 51888;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(51888, 518880, 0, 0, 0, 0, 0, NULL);

DELETE FROM `waypoint_data` WHERE `id` = 518880;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
--
(518880, 1, 2413.89, 1675.03, 316.675, NULL, 0, 0, 0, 100, 0),
(518880, 2, 2421.39, 1677.82, 315.579, NULL, 0, 0, 0, 100, 0),
(518880, 3, 2432.04, 1689.19, 316.338, NULL, 0, 0, 0, 100, 0),
(518880, 4, 2442.65, 1705.27, 321.744, NULL, 0, 0, 0, 100, 0),
(518880, 5, 2443.22, 1724.82, 335.125, NULL, 0, 0, 0, 100, 0),
(518880, 6, 2440.24, 1736.66, 344.848, NULL, 0, 0, 0, 100, 0),
(518880, 7, 2438.24, 1751.78, 357.654, NULL, 0, 0, 0, 100, 0),
(518880, 8, 2438.29, 1763.59, 368.378, NULL, 0, 0, 0, 100, 0),
(518880, 9, 2426.11, 1778.25, 383.437, NULL, 0, 0, 0, 100, 0),
(518880, 10, 2437.21, 1767.02, 371.244, NULL, 0, 0, 0, 100, 0),
(518880, 11, 2438.15, 1755.77, 360.951, NULL, 0, 0, 0, 100, 0),
(518880, 12, 2438.74, 1743.72, 350.708, NULL, 0, 0, 0, 100, 0),
(518880, 13, 2441.64, 1732.33, 340.48, NULL, 0, 0, 0, 100, 0),
(518880, 14, 2443.99, 1709.96, 323.978, NULL, 0, 0, 0, 100, 0),
(518880, 15, 2442.65, 1705.27, 321.744, NULL, 0, 0, 0, 100, 0),
(518880, 16, 2432.04, 1689.19, 316.338, NULL, 0, 0, 0, 100, 0),
(518880, 17, 2421.39, 1677.82, 315.579, NULL, 0, 0, 0, 100, 0),
(518880, 18, 2413.89, 1675.03, 316.675, NULL, 0, 0, 0, 100, 0),
(518880, 19, 2409.46, 1672.53, 316.767, NULL, 0, 0, 0, 100, 0),
(518880, 20, 2388.61, 1660.39, 316.765, NULL, 0, 0, 0, 100, 0),
(518880, 21, 2378.54, 1654.27, 314.059, NULL, 0, 0, 0, 100, 0),
(518880, 22, 2368.4, 1648.76, 310.542, NULL, 0, 0, 0, 100, 0),
(518880, 23, 2358.37, 1643.31, 307.307, NULL, 0, 0, 0, 100, 0),
(518880, 24, 2345.91, 1635.96, 301.219, NULL, 0, 0, 0, 100, 0),
(518880, 25, 2339.18, 1628.05, 295.862, NULL, 0, 0, 0, 100, 0),
(518880, 26, 2334.99, 1613.84, 290.247, NULL, 0, 0, 0, 100, 0),
(518880, 27, 2333.4, 1606.09, 288.732, NULL, 0, 0, 0, 100, 0),
(518880, 28, 2328.57, 1593.41, 286.436, NULL, 0, 0, 0, 100, 0),
(518880, 29, 2324.94, 1586.21, 285.475, NULL, 0, 0, 0, 100, 0),
(518880, 30, 2324.99, 1570.78, 282.693, NULL, 0, 0, 0, 100, 0),
(518880, 31, 2331.96, 1551.97, 283.218, NULL, 0, 0, 0, 100, 0),
(518880, 32, 2338.28, 1537.03, 283.134, NULL, 0, 0, 0, 100, 0),
(518880, 33, 2342.41, 1525.88, 281.24, NULL, 0, 0, 0, 100, 0),
(518880, 34, 2358.65, 1516.22, 279.813, NULL, 0, 0, 0, 100, 0),
(518880, 35, 2365.36, 1512.02, 278.8, NULL, 0, 0, 0, 100, 0),
(518880, 36, 2371.55, 1502.26, 278.186, NULL, 0, 0, 0, 100, 0),
(518880, 37, 2378.09, 1487.72, 275.72, NULL, 0, 0, 0, 100, 0),
(518880, 38, 2384.01, 1477.21, 274.993, NULL, 0, 0, 0, 100, 0),
(518880, 39, 2388.68, 1470.63, 274.126, NULL, 0, 0, 0, 100, 0),
(518880, 40, 2393.78, 1464.66, 272.488, NULL, 0, 0, 0, 100, 0),
(518880, 41, 2398.67, 1458.31, 271.582, NULL, 0, 0, 0, 100, 0),
(518880, 42, 2407.53, 1450.92, 269.655, NULL, 0, 0, 0, 100, 0),
(518880, 43, 2415.25, 1449.29, 268.023, NULL, 0, 0, 0, 100, 0),
(518880, 44, 2419.21, 1449.14, 267.466, NULL, 0, 0, 0, 100, 0),
(518880, 45, 2431.17, 1451.44, 266.68, NULL, 0, 0, 0, 100, 0),
(518880, 46, 2439.02, 1453.41, 266.085, NULL, 0, 0, 0, 100, 0),
(518880, 47, 2449.45, 1452.83, 265.977, NULL, 0, 0, 0, 100, 0),
(518880, 48, 2445.52, 1453.77, 265.982, NULL, 0, 0, 0, 100, 0),
(518880, 49, 2437.63, 1453.05, 266.203, NULL, 0, 0, 0, 100, 0),
(518880, 50, 2429.81, 1451.12, 266.797, NULL, 0, 0, 0, 100, 0),
(518880, 51, 2421.91, 1449.49, 267.17, NULL, 0, 0, 0, 100, 0),
(518880, 52, 2413.92, 1449.47, 268.248, NULL, 0, 0, 0, 100, 0),
(518880, 53, 2406.32, 1451.48, 269.845, NULL, 0, 0, 0, 100, 0),
(518880, 54, 2397.97, 1459.4, 271.756, NULL, 0, 0, 0, 100, 0),
(518880, 55, 2392.92, 1465.63, 272.857, NULL, 0, 0, 0, 100, 0),
(518880, 56, 2387.88, 1471.65, 274.382, NULL, 0, 0, 0, 100, 0),
(518880, 57, 2381.37, 1481.86, 275.451, NULL, 0, 0, 0, 100, 0),
(518880, 58, 2375.49, 1492.51, 276.274, NULL, 0, 0, 0, 100, 0),
(518880, 59, 2371.15, 1503.58, 278.426, NULL, 0, 0, 0, 100, 0),
(518880, 60, 2364.25, 1512.91, 278.906, NULL, 0, 0, 0, 100, 0),
(518880, 61, 2345.98, 1521, 281.162, NULL, 0, 0, 0, 100, 0),
(518880, 62, 2340.55, 1531.06, 281.768, NULL, 0, 0, 0, 100, 0),
(518880, 63, 2336.11, 1542.18, 283.631, NULL, 0, 0, 0, 100, 0),
(518880, 64, 2326.62, 1564.51, 282.14, NULL, 0, 0, 0, 100, 0),
(518880, 65, 2323.76, 1580.12, 284.677, NULL, 0, 0, 0, 100, 0),
(518880, 66, 2327.46, 1591.21, 286.184, NULL, 0, 0, 0, 100, 0),
(518880, 67, 2333.4, 1606.09, 288.732, NULL, 0, 0, 0, 100, 0),
(518880, 68, 2334.99, 1613.84, 290.247, NULL, 0, 0, 0, 100, 0),
(518880, 69, 2339.18, 1628.05, 295.862, NULL, 0, 0, 0, 100, 0),
(518880, 70, 2345.91, 1635.96, 301.219, NULL, 0, 0, 0, 100, 0),
(518880, 71, 2358.37, 1643.31, 307.307, NULL, 0, 0, 0, 100, 0),
(518880, 72, 2368.4, 1648.76, 310.542, NULL, 0, 0, 0, 100, 0),
(518880, 73, 2378.54, 1654.27, 314.059, NULL, 0, 0, 0, 100, 0),
(518880, 74, 2388.61, 1660.39, 316.765, NULL, 0, 0, 0, 100, 0),
(518880, 75, 2409.46, 1672.53, 316.767, NULL, 0, 0, 0, 100, 0);

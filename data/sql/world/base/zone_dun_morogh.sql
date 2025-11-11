/* smart scripts */
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(706, 808, 1115, 1116, 1117, 1118, 1119, 1120, 1121, 1122, 1123, 1124, 1125, 1126, 1127, 1130, 1134, 1135, 1137, 1196, 1211, 1260, 1271, 1397, 1689, 1961, 6123, 6124, 6221, 7843, 8503);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(706, 808, 1115, 1116, 1117, 1118, 1119, 1120, 1121, 1122, 1123, 1124, 1125, 1126, 1127, 1130, 1134, 1135, 1137, 1196, 1211, 1260, 1271, 1397, 1689, 1961, 6123, 6124, 6221, 7843, 8503);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(706, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                          'Frostmane Troll Whelp - On Aggro - Say Line 0'),
(808, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6957, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Grik\'nir the Cold - On Aggro - Cast Frostmane Strength'),
(808, 0, 1, 0, 0, 0, 100, 0, 1000, 3000, 9000, 12000, 0, 0, 11, 21030, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Grik\'nir the Cold - In Combat - Cast Frost Shock'),
(1115, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Rockjaw Skullthumper - On Aggro - Say Line 0'),
(1115, 0, 1, 0, 0, 0, 100, 0, 3000, 6000, 8000, 11000, 0, 0, 11, 3148, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Rockjaw Skullthumper - Within 0-5 Range - Cast Head Crack'),
(1115, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Rockjaw Skullthumper - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1116, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Rockjaw Ambusher - On Aggro - Say Line 0'),
(1116, 0, 1, 0, 67, 0, 100, 0, 0, 0, 2000, 5000, 0, 5, 11, 7159, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Rockjaw Ambusher - Behind Target - Cast Backstab'),
(1116, 0, 2, 0, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Rockjaw Ambusher - Between 0-20% Health - Flee For Assist (No Repeat)'),
(1117, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Rockjaw Bonesnapper - On Aggro - Say Line 0'),
(1117, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7095, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Rockjaw Bonesnapper - On Respawn - Cast Knockdown Proc'),
(1117, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Rockjaw Bonesnapper - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1118, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Rockjaw Backbreaker - On Aggro - Say Line 1'),
(1118, 0, 1, 1, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 11, 3019, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Rockjaw Backbreaker - Between 0-20% Health - Cast Frenzy (No Repeat)'),
(1118, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Rockjaw Backbreaker - On Frenzy - Say Line 0'),
(1119, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Hammerspine - On Aggro - Say Line 0'),
(1119, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Hammerspine - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1120, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Frostmane Troll - On Aggro - Say Line 0'),
(1121, 0, 0, 1, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Frostmane Snowstrider - On Aggro - Say Line 0'),
(1121, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 467, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Frostmane Snowstrider - On Aggro - Cast Thorns'),
(1121, 0, 2, 0, 0, 0, 100, 0, 3000, 3000, 60000, 60000, 0, 0, 11, 6950, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Frostmane Snowstrider - In Combat - Cast Faerie Fire'),
(1121, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Frostmane Snowstrider - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1122, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Frostmane Hideskinner - On Aggro - Say Line 0'),
(1122, 0, 1, 0, 67, 0, 100, 0, 0, 0, 2000, 4000, 0, 5, 11, 7159, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Frostmane Hideskinner - In Combat - Cast Backstab'),
(1122, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Frostmane Hideskinner - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1123, 0, 0, 0, 4, 0, 10, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Frostmane Headhunter - On Aggro - Say Line 0'),
(1123, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Frostmane Headhunter - Outside 30 Range - Start Combat Movement'),
(1123, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Frostmane Headhunter - Within 5-30 Range - Stop Combat Movement'),
(1123, 0, 3, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Frostmane Headhunter - Within 0-5 Range - Start Combat Movement'),
(1123, 0, 4, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 10277, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Frostmane Headhunter - Within 5-30 Range - Cast Throw'),
(1123, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Frostmane Headhunter - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1124, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 20798, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Frostmane Shadowcaster - Out of Combat - Cast Demon Skin'),
(1124, 0, 1, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Frostmane Shadowcaster - On Aggro - Say Line 0'),
(1124, 0, 2, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20791, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Frostmane Shadowcaster - In Combat - Cast Shadow Bolt'),
(1124, 0, 3, 0, 0, 0, 100, 0, 3000, 3000, 180000, 180000, 0, 0, 11, 11980, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Frostmane Shadowcaster - In Combat - Cast Curse of Weakness'),
(1124, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Frostmane Shadowcaster - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(1125, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Crag Boar - On Aggro - Cast Rushing Charge'),
(1126, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Large Crag Boar - On Aggro - Cast Rushing Charge'),
(1127, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Elder Crag Boar - On Aggro - Cast Rushing Charge'),
(1130, 0, 0, 0, 0, 0, 100, 0, 4000, 4000, 50000, 50000, 0, 0, 11, 3130, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Bjarn - Within 0-5 Range - Cast Ice Claw'),
(1130, 0, 1, 0, 0, 0, 100, 0, 2000, 2000, 15000, 24000, 0, 0, 11, 3147, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Bjarn - Within 0-5 Range - Cast Rend Flesh'),
(1134, 0, 0, 0, 0, 0, 100, 0, 7000, 12000, 10000, 15000, 0, 0, 11, 3131, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Young Wendigo - Within 0-5 Range - Cast Frost Breath'),
(1135, 0, 0, 0, 0, 0, 100, 0, 6000, 11000, 10000, 11000, 0, 0, 11, 3131, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Wendigo - Within 0-5 Range - Cast Frost Breath'),
(1137, 0, 0, 0, 0, 0, 100, 0, 7000, 14000, 7000, 14000, 0, 0, 11, 3129, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Edan the Howler - Within 0-5 Range - Cast Frost Breath'),
--
(1196, 0, 0, 0, 0, 0, 100, 0, 2000, 4000, 42000, 46000, 0, 0, 11, 3130, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Ice Claw Bear - Within 0-5 Range - Cast Ice Claw'),
(1211, 0, 0, 0, 4, 0, 10, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Leper Gnome - On Aggro - Say Line 0'),
(1211, 0, 1, 0, 0, 0, 100, 0, 2000, 5000, 14000, 17000, 0, 0, 11, 6951, 96, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Leper Gnome - In Combat - Cast Decayed Strength'),
(1211, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Leper Gnome - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1260, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 465, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Great Father Arctikus - Out of Combat - Cast Devotion Aura (No Repeat)'),
(1260, 0, 1, 0, 4, 0, 80, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Great Father Arctikus - On Aggro - Say Line 0'),
(1260, 0, 2, 0, 2, 0, 100, 1, 0, 75, 0, 0, 0, 0, 11, 139, 64, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Great Father Arctikus - Between 0-75% Health - Cast Renew (No Repeat)'),
(1260, 0, 3, 0, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 11, 2053, 64, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Great Father Arctikus - Between 0-20% Health - Cast Lesser Heal (No Repeat)'),
(1271, 0, 0, 0, 0, 0, 100, 0, 2000, 4000, 17000, 23000, 0, 0, 11, 3145, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Old Icebeard - Within 0-5 Range - Cast Icy Grasp'), 
(1271, 0, 1, 0, 0, 0, 100, 0, 6000, 12000, 30000, 44000, 0, 0, 11, 3146, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Old Icebeard - Within 0-5 Range - Cast Daunting Growl'), -- https://www.youtube.com/watch?v=jaYpr0YlBmQ
(1397, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Frostmane Seer - On Aggro - Say Line 0'),
(1397, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Frostmane Seer - In Combat - Cast Lightning Bolt'),
(1397, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Frostmane Seer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1689, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Scarred Crag Boar - On Aggro - Cast Rushing Charge'),
(1961, 0, 0, 0, 0, 0, 100, 0, 9000, 13000, 34000, 46000, 0, 0, 11, 3242, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Mangeclaw - Within 0-5 Range - Cast Ravage'),
(6123, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Dark Iron Spy - Between 0-15% Health - Flee For Assist (No Repeat)'),
(6124, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Captain Beld - On Aggro - Say Line 0'),
(6124, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Captain Beld - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(6221, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 7165, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Addled Leper - Out of Combat - Cast Battle Stance (No Repeat)'),
(6221, 0, 1, 0, 4, 0, 40, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Addled Leper - On Aggro - Say Line 0'),
(6221, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Addled Leper - Outside 30 Range - Start Combat Movement'),
(6221, 0, 3, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Addled Leper - Within 5-30 Range - Stop Combat Movement'),
(6221, 0, 4, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Addled Leper - Within 0-5 Range - Start Combat Movement'),
(6221, 0, 5, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Addled Leper - Within 5-30 Range - Cast Shoot'),
(6221, 0, 6, 0, 9, 0, 100, 0, 0, 0, 17000, 23000, 0, 5, 11, 9080, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Addled Leper - Within 0-5 Range - Cast Hamstring'),
(6221, 0, 7, 0, 0, 0, 100, 0, 7000, 9000, 13000, 16000, 0, 0, 11, 25712, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Addled Leper - Within 0-5 Range - Cast Heroic Strike'),
(6221, 0, 8, 0, 2, 0, 100, 0, 0, 30, 30000, 45000, 0, 0, 11, 2055, 65, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Addled Leper - Between 0-30% Health - Cast Heal'),
(6221, 0, 9, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Addled Leper - Between 0-15% Health - Flee For Assist (No Repeat)'),
(7843, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 7165, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Gnomeregan Evacuee - Out of Combat - Cast Battle Stance (No Repeat)'),
(7843, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Gnomeregan Evacuee - Outside 30 Range - Start Combat Movement'),
(7843, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Gnomeregan Evacuee - Within 5-30 Range - Stop Combat Movement'),
(7843, 0, 3, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Gnomeregan Evacuee - Within 0-5 Range - Start Combat Movement'),
(7843, 0, 4, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Gnomeregan Evacuee - Within 5-30 Range - Cast Shoot'),
(7843, 0, 5, 0, 9, 0, 100, 0, 0, 0, 17000, 23000, 0, 5, 11, 9080, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Gnomeregan Evacuee - Within 0-5 Range - Cast Hamstring'),
(7843, 0, 6, 0, 0, 0, 100, 0, 7000, 9000, 13000, 16000, 0, 0, 11, 25712, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Gnomeregan Evacuee - Within 0-5 Range - Cast Heroic Strike'),
(7843, 0, 7, 0, 2, 0, 100, 0, 0, 30, 30000, 45000, 0, 0, 11, 2055, 65, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Gnomeregan Evacuee - Between 0-30% Health - Cast Heal'),
(7843, 0, 8, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Gnomeregan Evacuee - Between 0-15% Health - Flee For Assist (No Repeat)'),
(7843, 0, 9, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Gnomeregan Evacuee - On Just Died - Say Line 0'),
--
(8503, 0, 0, 0, 4, 0, 80, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Gibblewilt - On Aggro - Say Line 0'),
(8503, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20793, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Gibblewilt - In Combat - Cast Fireball'),
(8503, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Gibblewilt - Between 0-15% Health - Flee For Assist (No Repeat)');


-- fix respawn times
UPDATE `creature` SET `spawntimesecs` = 270  WHERE `id1` = 808;  -- Grik'nir the Cold
UPDATE `creature` SET `spawntimesecs` = 5400 WHERE `id1` = 1119; -- Hammerspine
UPDATE `creature` SET `spawntimesecs` = 5400 WHERE `id1` = 1137; -- Edan the Howler
UPDATE `creature` SET `spawntimesecs` = 270  WHERE `id1` = 1961; -- Mangeclaw
UPDATE `creature` SET `spawntimesecs` = 270  WHERE `id1` = 6124; -- Captain Beld

-- Beginnings (Warlock)
DELETE FROM `creature_questender` WHERE `id` = 460 AND `quest` = 1599;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (460, 1599);

-- Beginnings (Warlock)
DELETE FROM `creature_queststarter` WHERE `id` = 460 AND `quest` = 1599;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (460, 1599);

-- Beginnings (Warlock)
UPDATE `quest_template` SET `Flags` = 8 WHERE `ID` = 1599;

-- Beginnings (Warlock)
UPDATE `quest_template_addon` SET `SpecialFlags` = 0 WHERE `ID` = 1599;

-- Thamner Pol <Physician> 
DELETE FROM `npc_trainer` WHERE `ID` = 2326;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (2326, -350000);

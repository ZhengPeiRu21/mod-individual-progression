/* smart scripts */
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (3121, 3195);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(3099, 3100, 3101, 3103, 3104, 3105, 3106, 3107, 3110, 3111, 3112, 3113, 3114, 3115, 3116, 3117, 3118, 3119, 3120, 3122, 3123, 3124, 3125, 3127, 3128, 3129, 3130, 3131, 
3183, 3192, 3196, 3197, 3198, 3199, 3203, 3204, 3205, 3206, 3207, 3226, 3227, 3281, 5808, 5809, 5822, 5823, 5824, 5826);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(3099, 3100, 3101, 3103, 3104, 3105, 3106, 3107, 3110, 3111, 3112, 3113, 3114, 3115, 3116, 3117, 3118, 3119, 3120, 3121, 3122, 3123, 3124, 3125, 3127, 3128, 3129, 3130, 3131, 
3183, 3192, 3195, 3196, 3197, 3198, 3199, 3203, 3204, 3205, 3206, 3207, 3226, 3227, 3281, 5808, 5809, 5822, 5823, 5824, 5826);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(3099, 0, 0, 0, 9, 0, 100, 1, 0, 0, 0, 0, 0, 20, 11, 3385, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Dire Mottled Boar - Within 0-20 Range - Cast Boar Charge (No Repeat)'),
(3100, 0, 0, 0, 9, 0, 100, 1, 0, 0, 0, 0, 0, 20, 11, 3385, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Elder Mottled Boar - Within 0-20 Range - Cast Boar Charge (No Repeat)'),
(3101, 0, 0, 0, 0, 0, 100, 0, 0, 0, 5000, 15000, 0, 0, 11, 11921, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Vile Familiar - In Combat - Cast Fireball'), -- https://www.youtube.com/watch?v=_NrDScU8JBM
--
(3103, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Makrura Clacker - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3104, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Makrura Shellhide - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3105, 0, 0, 0, 9, 0, 100, 0, 0, 0, 15000, 21000, 0, 5, 11, 5424, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Makrura Snapclaw - Within 0-5 Range - Cast Claw Grasp'),
(3105, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Makrura Snapclaw - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3106, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Pygmy Surf Crawler - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3107, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Surf Crawler - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3110, 0, 0, 0, 9, 0, 100, 0, 0, 0, 12000, 16000, 0, 5, 11, 12166, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Dreadmaw Crocolisk - Within 0-5 Range - Cast Muscle Tear'),
--
(3111, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 5280, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Razormane Quilboar - On Aggro - Cast Razor Mane'),
(3111, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Razormane Quilboar - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3112, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Razormane Scout - Outside 30 Range - Start Combat Movement'),
(3112, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Razormane Scout - Within 5-30 Range - Stop Combat Movement'),
(3112, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Razormane Scout - Within 0-5 Range - Start Combat Movement'),
(3112, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Razormane Scout - Within 5-30 Range - Cast Shoot'),
(3112, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Razormane Scout - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3113, 0, 0, 0, 9, 0, 100, 0, 0, 0, 30000, 35000, 0, 30, 11, 6950, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Razormane Dustrunner - In Combat - Cast Faerie Fire'),
(3113, 0, 1, 0, 14, 0, 100, 0, 100, 40, 14000, 21000, 0, 0, 11, 774, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Razormane Dustrunner - Friendly Missing 100 Health - Cast Rejuvenation'),
(3113, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Razormane Dustrunner - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3114, 0, 0, 0, 0, 0, 100, 0, 1000, 3000, 11000, 19000, 0, 0, 11, 3248, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Razormane Battleguard - In Combat - Cast Improved Blocking'),
(3114, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Razormane Battleguard - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(3115, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Dustwind Harpy - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3116, 0, 0, 0, 0, 0, 100, 0, 5000, 11000, 18000, 24000, 0, 0, 11, 3147, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Dustwind Pillager - Within 0-5 Range - Cast Rend Flesh'),
(3116, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Dustwind Pillager - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3117, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Dustwind Savage - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3118, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Dustwind Storm Witch - In Combat - Cast Lightning Bolt'),
(3118, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Dustwind Storm Witch - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(3119, 0, 0, 0, 0, 0, 100, 0, 6000, 11000, 21000, 29000, 0, 0, 11, 7272, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Kolkar Drudge - In Combat - Cast Dust Cloud'),
(3119, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Kolkar Drudge - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3120, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Kolkar Outrunner - Outside 30 Range - Start Combat Movement'),
(3120, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Kolkar Outrunner - Within 5-30 Range - Stop Combat Movement'),
(3120, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Kolkar Outrunner - Within 0-5 Range - Start Combat Movement'),
(3120, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Kolkar Outrunner - Within 5-30 Range - Cast Shoot'),
(3120, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Kolkar Outrunner - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(3122, 0, 0, 0, 9, 0, 100, 1, 0, 0, 0, 0, 0, 15, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bloodtalon Taillasher - Within 0-15 Range - Cast Rushing Charge (No Repeat)'),
(3123, 0, 0, 0, 9, 0, 100, 1, 0, 0, 0, 0, 0, 15, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bloodtalon Scythemaw - Within 0-15 Range - Cast Rushing Charge (No Repeat)'),
(3124, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6751, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Scorpid Worker - On Respawn - Cast Weak Poison Proc'),
(3125, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6751, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Clattering Scorpid - On Respawn - Cast Weak Poison Proc'),
(3127, 0, 0, 0, 9, 0, 100, 0, 0, 0, 5000, 14000, 0, 5, 11, 5416, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Venomtail Scorpid - Within 0-5 Range - Cast Venom Sting'),
--
(3128, 0, 0, 0, 9, 0, 100, 1, 0, 0, 0, 0, 5, 30, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Kul Tiras Sailor - Between 5-30 Range - Cast Rushing Charge (No Repeat)'),
(3128, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Kul Tiras Sailor - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3129, 0, 0, 0, 105, 0, 100, 0, 0, 0, 16000, 32000, 0, 5, 11, 11972, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Kul Tiras Marine - Target Casting - Cast Shield Bash'),
(3129, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Kul Tiras Marine - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(3130, 0, 0, 0, 0, 0, 100, 0, 4000, 9000, 6000, 11000, 0, 0, 11, 5401, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Thunder Lizard - In Combat - Cast Lizard Bolt'),
(3131, 0, 0, 0, 0, 0, 100, 0, 4000, 9000, 6000, 11000, 0, 0, 11, 5401, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Lightning Hide - In Combat - Cast Lizard Bolt'),
--
(3183, 0, 0, 0, 9, 0, 100, 0, 0, 0, 19000, 25000, 0, 30, 11, 172, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Yarrog Baneshadow - Within 0-30 Range - Cast Corruption'),
(3183, 0, 1, 0, 0, 0, 100, 0, 8000, 12000, 22000, 29000, 0, 0, 11, 348, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Yarrog Baneshadow - In Combat - Cast Immolate'),
(3192, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 200000, 200000, 0, 0, 11, 7164, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Lieutenant Benedict - Out of Combat - Cast Defensive Stance'),
(3192, 0, 1, 0, 105, 0, 100, 0, 0, 0, 20000, 30000, 0, 5, 11, 72, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,            'Lieutenant Benedict - Target Casting - Cast Shield Bash'),
(3192, 0, 2, 0, 9, 0, 100, 0, 0, 0, 15000, 21000, 0, 5, 11, 3248, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Lieutenant Benedict - Within 0-5 Range - Cast Improved Blocking'),
(3192, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Lieutenant Benedict - Between 0-15% Health - Flee For Assist'),
--
(3196, 0, 0, 0, 9, 0, 100, 0, 0, 0, 21000, 25000, 0, 30, 11, 348, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Burning Blade Neophyte - Within 0-30 Range - Cast Immolate'),
(3197, 0, 0, 0, 0, 0, 100, 0, 1000, 11000, 16000, 22000, 0, 0, 11, 5262, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Burning Blade Fanatic - In Combat - Cast Fanatic Blade'),
(3198, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 12746, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Burning Blade Apprentice - Out of Combat - Cast Summon Voidwalker (No Repeat)'),
(3198, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20791, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Burning Blade Apprentice - In Combat - Cast Shadow Bolt'),
(3199, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 11939, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Burning Blade Cultist - Out of Combat - Cast Summon Imp (No Repeat)'),
(3199, 0, 1, 0, 0, 0, 100, 0, 6000, 13000, 18000, 23000, 0, 0, 11, 11962, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Burning Blade Cultist - In Combat - Cast Immolate'),
--
(3203, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 11939, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Fizzle Darkstorm - Out of Combat - Cast Summon Imp (No Repeat)'),
(3203, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20791, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Fizzle Darkstorm - In Comba - Cast Shadow Bolt'),
(3203, 0, 2, 0, 2, 0, 100, 0, 0, 50, 20000, 30000, 0, 0, 11, 7290, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Fizzle Darkstorm - Between 0-50% Health - Cast Soul Siphon'),
(3203, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Fizzle Darkstorm - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3204, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 20798, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Gazz uz - Out of Combat - Cast Demon Skin'),
(3204, 0, 1, 0, 1, 0, 100, 1, 3000, 3000, 0, 0, 0, 0, 11, 12746, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Gazz uz - Out of Combat - Cast Summon Voidwalker (No Repeat)'),
(3204, 0, 2, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20791, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Gazz uz - In Combat - Cast Shadow Bolt'),
(3204, 0, 3, 0, 0, 0, 100, 0, 5000, 8000, 30000, 45000, 0, 0, 11, 172, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Gazz uz - In Combat - Cast Corruption'),
(3204, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Gazz uz - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(3205, 0, 0, 0, 2, 0, 100, 0, 0, 50, 16000, 21000, 0, 0, 11, 332, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Zalazane - Between 0-50% Health - Cast Healing Wave'),
(3205, 0, 1, 0, 0, 0, 100, 0, 6000, 11000, 12000, 21000, 0, 0, 11, 7289, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Zalazane - In Combat - Cast Shrink'),
(3206, 0, 0, 0, 16, 0, 100, 0, 324, 1, 15000, 30000, 0, 0, 11, 324, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Voodoo Troll - Missing Buff - Cast Lightning Shield'),
(3206, 0, 1, 0, 2, 0, 100, 0, 0, 50, 16000, 21000, 0, 0, 11, 332, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Voodoo Troll - Between 0-50% Health - Cast Healing Wave'),
(3206, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Voodoo Troll - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3207, 0, 0, 0, 0, 0, 100, 0, 3000, 8000, 19000, 24000, 0, 0, 11, 11962, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Hexed Troll - In Combat - Cast Immolate'),
(3207, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Hexed Troll - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(3226, 0, 0, 0, 9, 0, 100, 0, 0, 0, 30000, 35000, 0, 5, 11, 5413, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Corrupted Scorpid - Within 0-5 Range - Cast Noxious Catalyst'),
(3227, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Corrupted Bloodtalon Scythemaw - On Aggro - Cast Rushing Charge'),
(3281, 0, 0, 0, 0, 0, 60, 0, 1000, 5000, 1000, 8000, 0, 0, 11, 11918, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Sarkoth - Within 0-5 Range - Cast Poison'),
(5808, 0, 0, 0, 0, 0, 100, 0, 8000, 25000, 21000, 44000, 0, 0, 11, 8078, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Warlord Kolkanis - In Combat - Cast Thunderclap'),
(5808, 0, 1, 0, 105, 0, 100, 0, 5000, 20000, 40000, 40000, 0, 5, 11, 12555, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,  'Warlord Kolkanis - Target Casting - Cast Pummel'),
(5809, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 90000, 90000, 0, 0, 11, 7164, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Watch Commander Zalaphil - Out of Combat - Cast Defensive Stance'),
(5809, 0, 1, 0, 105, 0, 100, 0, 0, 0, 8000, 20000, 0, 5, 11, 11972, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,          'Watch Commander Zalaphil - Target Casting - Cast Shield Bash'),
(5809, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Watch Commander Zalaphil - Between 0-15% Health - Flee For Assist'),
(5822, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9613, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Felweaver Scornn - In Combat - Cast Shadow Bolt'),
(5822, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Felweaver Scornn - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5823, 0, 0, 0, 9, 0, 100, 0, 0, 0, 9000, 18000, 0, 5, 11, 5416, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Death Flayer - Within 0-5 Range - Cast Venom Sting'),
(5824, 0, 0, 0, 11, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 7165, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Captain Flat Tusk - Out of Combat - Cast Battle Stance (No Repeat)'),
(5824, 0, 1, 0, 9, 0, 100, 0, 0, 0, 7000, 12000, 0, 5, 11, 25710, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Captain Flat Tusk - In Combat - Cast Heroic Strike'),
(5824, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Captain Flat Tusk - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5826, 0, 0, 0, 16, 0, 100, 0, 324, 1, 15000, 30000, 0, 0, 11, 324, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Geolord Mottle - On Missing Buff - Cast Lightning Shield'),
(5826, 0, 1, 0, 2, 0, 100, 0, 0, 75, 16000, 21000, 0, 0, 11, 547, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Geolord Mottle - Between 0-75% Health - Cast Healing Wave'),
(5826, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Geolord Mottle - Between 0-15% Health - Flee For Assist (No Repeat)');


-- fix multiple spawn locations and respawn times
DELETE FROM `creature` WHERE `id1` IN (3204, 5809, 5822, 5824, 5826);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, 
`spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
--
(695041, 3204, 0, 0, 1, 0, 0, 1, 1, 1, 1454.2, -4701.82, -2.62193, 4.57276, 300, 0, 0, 178, 382, 0, 0, 0, 0, '', 0, 0, NULL),   -- Gazz'uz
(695042, 3204, 0, 0, 1, 0, 0, 1, 1, 1, 1470.49, -4706.11, 2.22037, 0.820305, 300, 0, 0, 178, 382, 0, 0, 0, 0, '', 0, 0, NULL),
(695043, 3204, 0, 0, 1, 0, 0, 1, 1, 1, 1465.78, -4683.74, 6.62599, 5.71567, 300, 0, 0, 178, 382, 0, 0, 0, 0, '', 0, 0, NULL),
--
(695045, 5809, 0, 0, 1, 0, 0, 1, 1, 1, -254.436, -5094.49, 41.2355, 6.23083, 3600, 5, 0, 176, 0, 1, 0, 0, 0, '', 0, 0, NULL),   -- Watch Commander Zalaphi
(695046, 5809, 0, 0, 1, 0, 0, 1, 1, 1, -272.183, -5131.39, 24.23, 1.02974, 3600, 0, 0, 176, 0, 0, 0, 0, 0, '', 0, 0, NULL),
--
(695048, 5822, 0, 0, 1, 0, 0, 1, 1, 1, 1492.44, -4753.37, 21.1028, 4.04916, 19800, 0, 0, 624, 308, 0, 0, 0, 0, '', 0, 0, NULL), -- Felweaver Scornn
(695049, 5822, 0, 0, 1, 0, 0, 1, 1, 1, 1470.19, -4695.29, 6.53009, 4.15388, 19800, 0, 0, 624, 308, 0, 0, 0, 0, '', 0, 0, NULL),
(695050, 5822, 0, 0, 1, 0, 0, 1, 1, 1, 1552.74, -4767.29, 12.937, 3.75246, 19800, 0, 0, 624, 308, 0, 0, 0, 0, '', 0, 0, NULL),
--
(695051, 5824, 0, 0, 1, 0, 0, 1, 1, 1, 432.488, -4213.4, 24.5885, 5.28835, 5400, 0, 0, 666, 0, 0, 0, 0, 0, '', 0, 0, NULL),     -- Captain Flat Tusk
(695052, 5824, 0, 0, 1, 0, 0, 1, 1, 1, -94.3403, -4010.99, 62.5894, 0.418879, 5400, 0, 0, 666, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(695053, 5824, 0, 0, 1, 0, 0, 1, 1, 1, -94.3403, -4010.99, 62.5894, 0.418879, 5400, 0, 0, 666, 0, 0, 0, 0, 0, '', 0, 0, NULL),
--
(695055, 5826, 0, 0, 1, 0, 0, 1, 1, 1, 50.8229, -4457.19, 48.4233, 5.58505, 3600, 0, 0, 166, 178, 0, 0, 0, 0, '', 0, 0, NULL),  -- Geolord Mottle
(695056, 5826, 0, 0, 1, 0, 0, 1, 1, 1, 424.321, -4245.13, 26.3462, 1.74533, 3600, 5, 0, 166, 178, 1, 0, 0, 0, '', 0, 0, NULL),
(695057, 5826, 0, 0, 1, 0, 0, 1, 1, 1, 29.7214, -4278.99, 69.91, 0.785398, 3600, 0, 0, 166, 178, 0, 0, 0, 0, '', 0, 0, NULL);

DELETE FROM `creature_addon` WHERE `guid` IN (6456, 12209, 12218, 12384); -- using custom guids now
DELETE FROM `creature_addon` WHERE `guid` BETWEEN 695041 AND 695057;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
(695041, 0, 0, 0, 1, 0, 0, NULL),
(695042, 0, 0, 0, 1, 0, 0, NULL),
(695043, 0, 0, 0, 1, 0, 0, NULL),
(695048, 0, 0, 0, 1, 0, 0, NULL),
(695049, 0, 0, 0, 1, 0, 0, NULL),
(695050, 0, 0, 0, 1, 0, 0, NULL),
(695051, 0, 0, 1114112, 1, 0, 0, ''), -- no idea what this does:
(695052, 0, 0, 1114112, 1, 0, 0, ''), -- https://www.azerothcore.org/wiki/creature_addon#bytes1
(695053, 0, 0, 1114112, 1, 0, 0, ''),
(695055, 0, 0, 0, 1, 0, 0, NULL),
(695056, 0, 0, 0, 1, 0, 0, NULL),
(695057, 0, 0, 0, 1, 0, 0, NULL);

DELETE FROM `pool_creature` WHERE `pool_entry` IN (601031, 601032, 601033, 601034, 601035);
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
--
(695041, 601031, 0, 'Gazz uz'),
(695042, 601031, 0, 'Gazz uz'),
(695043, 601031, 0, 'Gazz uz'),
--
(695045, 601032, 0, 'Watch Commander Zalaphi'),
(695046, 601032, 0, 'Watch Commander Zalaphi'),
--
(695048, 601033, 0, 'Felweaver Scornn'),
(695049, 601033, 0, 'Felweaver Scornn'),
(695050, 601033, 0, 'Felweaver Scornn'),
--
(695051, 601034, 0, 'Captain Flat Tusk'),
(695052, 601034, 0, 'Captain Flat Tusk'),
(695053, 601034, 0, 'Captain Flat Tusk'),
--
(695055, 601035, 0, 'Geolord Mottle'),
(695056, 601035, 0, 'Geolord Mottle'),
(695057, 601035, 0, 'Geolord Mottle');

DELETE FROM `pool_template` WHERE `entry` IN (601031, 601032, 601033, 601034, 601035);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES 
(601031, 1, 'Gazz uz - Durotar'),
(601032, 1, 'Watch Commander Zalaphi - Durotar'),
(601033, 1, 'Felweaver Scornn - Durotar'),
(601034, 1, 'Captain Flat Tusk - Durotar'),
(601035, 1, 'Geolord Mottle - Durotar');

-- Warlord Kolkanis(5808), fix movement and respawn time
UPDATE `creature` SET `spawntimesecs` = 3600, `MovementType` = 1, `Wander_distance` = 5 WHERE `guid` = 12260;

-- Death Flayer, fix waypoints and respawn time
DELETE FROM `creature` WHERE `id1` = 5823;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, 
`spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
(12322, 5823, 0, 0, 1, 0, 0, 1, 1, 0, 57.4579, -3894.15, 42.8933, 0.345736, 5400, 0, 1, 222, 0, 2, 0, 0, 0, '', 0, 0, NULL);

DELETE FROM `creature_addon` WHERE `guid` = 12322;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(12322, 123220, 0, 0, 0, 0, 0, NULL);

DELETE FROM `waypoint_data` WHERE `id` = 123220;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
--
(123220, 1, 65.0755, -3891.4, 42.9449, NULL, 0, 0, 0, 100, 0),
(123220, 2, 81.1732, -3871.89, 40.6949, NULL, 0, 0, 0, 100, 0),
(123220, 3, 80.5673, -3856.36, 38.2577, NULL, 0, 0, 0, 100, 0),
(123220, 4, 72.9199, -3843.47, 36.5567, NULL, 0, 0, 0, 100, 0),
(123220, 5, 62.252, -3826.64, 34.1118, NULL, 0, 0, 0, 100, 0),
(123220, 6, 46.3394, -3820.66, 33.5518, NULL, 0, 0, 0, 100, 0),
(123220, 7, 11.5731, -3824.48, 36.6694, NULL, 0, 0, 0, 100, 0),
(123220, 8, -3.29514, -3833.02, 37.6529, NULL, 0, 0, 0, 100, 0),
(123220, 9, -17.3023, -3845.18, 38.6958, NULL, 0, 0, 0, 100, 0),
(123220, 10, -38.3168, -3860.21, 41.1418, NULL, 0, 0, 0, 100, 0),
(123220, 11, -61.2309, -3872.46, 44.7209, NULL, 0, 0, 0, 100, 0),
(123220, 12, -71.5894, -3888.75, 48.0972, NULL, 0, 0, 0, 100, 0),
(123220, 13, -80.8197, -3902.58, 49.211, NULL, 0, 0, 0, 100, 0),
(123220, 14, -93.3524, -3915.01, 49.5645, NULL, 0, 0, 0, 100, 0),
(123220, 15, -111.531, -3923.6, 50.0194, NULL, 0, 0, 0, 100, 0),
(123220, 16, -128.017, -3926.95, 50.5721, NULL, 0, 0, 0, 100, 0),
(123220, 17, -143.026, -3926.32, 50.1671, NULL, 0, 0, 0, 100, 0),
(123220, 18, -158.365, -3912, 46.6012, NULL, 0, 0, 0, 100, 0),
(123220, 19, -148.283, -3875.65, 38.4424, NULL, 0, 0, 0, 100, 0),
(123220, 20, -142.801, -3867.94, 37.0176, NULL, 0, 0, 0, 100, 0),
(123220, 21, -121.655, -3861.71, 36.427, NULL, 0, 0, 0, 100, 0),
(123220, 22, -88.5653, -3867.88, 41.7086, NULL, 0, 0, 0, 100, 0),
(123220, 23, -55.9653, -3874.69, 45.4089, NULL, 0, 0, 0, 100, 0),
(123220, 24, -35.9069, -3881.75, 46.0981, NULL, 0, 0, 0, 100, 0),
(123220, 25, -19.0145, -3890.51, 46.8976, NULL, 0, 0, 0, 100, 0),
(123220, 26, 4.02648, -3907.16, 47.0248, NULL, 0, 0, 0, 100, 0),
(123220, 27, 12.8264, -3916.49, 48.043, NULL, 0, 0, 0, 100, 0),
(123220, 28, 27.3142, -3935.14, 46.5789, NULL, 0, 0, 0, 100, 0),
(123220, 29, 47.084, -3965.3, 46.4278, NULL, 0, 0, 0, 100, 0),
(123220, 30, 63.2329, -3977.25, 46.1559, NULL, 0, 0, 0, 100, 0),
(123220, 31, 84.3205, -3994.96, 46.1625, NULL, 0, 0, 0, 100, 0),
(123220, 32, 97.1628, -3997.66, 45.9555, NULL, 0, 0, 0, 100, 0),
(123220, 33, 116.311, -3998.28, 46.7055, NULL, 0, 0, 0, 100, 0),
(123220, 34, 123.423, -3990.48, 47.3305, NULL, 0, 0, 0, 100, 0),
(123220, 35, 129.77, -3978.22, 47.8305, NULL, 0, 0, 0, 100, 0),
(123220, 36, 137.765, -3958.59, 47.6785, NULL, 0, 0, 0, 100, 0),
(123220, 37, 142.347, -3939.54, 46.8611, NULL, 0, 0, 0, 100, 0),
(123220, 38, 134.912, -3920.85, 45.5247, NULL, 0, 0, 0, 100, 0),
(123220, 39, 114.207, -3909.07, 44.8599, NULL, 0, 0, 0, 100, 0),
(123220, 40, 96.3006, -3902.33, 44.9489, NULL, 0, 0, 0, 100, 0),
(123220, 41, 73.8626, -3897.34, 44.0498, NULL, 0, 0, 0, 100, 0),
(123220, 42, 58.6096, -3901.33, 43.2971, NULL, 0, 0, 0, 100, 0),
(123220, 43, 33.1469, -3929.22, 45.8132, NULL, 0, 0, 0, 100, 0),
(123220, 44, 25.3641, -3944.03, 47.0631, NULL, 0, 0, 0, 100, 0),
(123220, 45, 19.2552, -3958.15, 48.461, NULL, 0, 0, 0, 100, 0),
(123220, 46, 4.47613, -3982.07, 52.7196, NULL, 0, 0, 0, 100, 0),
(123220, 47, 4.3342, -4003.91, 54.2451, NULL, 0, 0, 0, 100, 0),
(123220, 48, 10.594, -4028.3, 54.6714, NULL, 0, 0, 0, 100, 0),
(123220, 49, 48.1098, -4034.24, 50.7997, NULL, 0, 0, 0, 100, 0),
(123220, 50, 53.4861, -4012.5, 49.4287, NULL, 0, 0, 0, 100, 0),
(123220, 51, 54.2385, -3987.21, 47.9023, NULL, 0, 0, 0, 100, 0),
(123220, 52, 46.3192, -3965.17, 46.5042, NULL, 0, 0, 0, 100, 0),
(123220, 53, 29.3296, -3937.64, 46.337, NULL, 0, 0, 0, 100, 0),
(123220, 54, 26.0642, -3909.04, 45.5605, NULL, 0, 0, 0, 100, 0),
(123220, 55, 40.7949, -3898.71, 43.2894, NULL, 0, 0, 0, 100, 0),
(123220, 56, 52.673, -3894.57, 42.6995, NULL, 0, 0, 0, 100, 0);

SET @TRAINER_ID   := 600;

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (3174, 3175, 3184, 3185, 5943, 7953, 11025);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES 
(3174,  @TRAINER_ID+16), -- Dwukk <Journeyman Blacksmith>
(3175,  @TRAINER_ID+42), -- Krunn <Miner>
(3184,  @TRAINER_ID+11), -- Miao'zan <Journeyman Alchemist>
(3185,  @TRAINER_ID+41), -- Mishiki <Herbalist>
(5943,  @TRAINER_ID+45), -- Rawrk <First Aid Trainer>
(7953,  @TRAINER_ID+48), -- Xar'Ti <Riding Trainer>
(11025, @TRAINER_ID+26); -- Mukdrak <Journeyman Engineer>


/* Quests */

-- Cutting Teeth
UPDATE `quest_template` SET `Flags` = 8, 
`LogDescription` = 'Kill 10 Mottled Boars then return to Gornek at the Den.', `RequiredNpcOrGoCount1` = 10 WHERE `ID` = 788;

-- Sting of the Scorpid
UPDATE `quest_template` SET `Flags` = 8, 
`LogDescription` = 'Get 10 Scorpid Worker Tails for Gornek in the Den.', `RequiredItemCount1` = 10 WHERE `ID` = 789;

-- Vile Familiars
UPDATE `quest_template` SET `Flags` = 8, 
`LogDescription` = 'Kill 12 Vile Familiars.$b$bReturn to Zureetha Fargaze outside the Den.', `RequiredNpcOrGoCount1` = 12 WHERE `ID` = 792;

UPDATE `quest_template_addon` SET `AllowableClasses` = 1279 WHERE `ID` = 792;
UPDATE `quest_template_addon` SET `NextQuestID` = 1499 WHERE `ID` = 1485;

DELETE FROM `creature_queststarter` WHERE `id` = 5765 AND `quest` = 1485;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (5765, 1485);

DELETE FROM `creature_questender` WHERE `id` = 5765 AND `quest` = 1485;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (5765, 1485);


-- Galgar's Cactus Apple Surprise
UPDATE `quest_template` SET `Flags` = 8, 
`LogDescription` = 'Bring Galgar 10 Cactus Apples. You remember him saying that they could be found near cactuses.', `RequiredItemCount1` = 10 WHERE `ID` = 4402;

UPDATE `quest_template` SET `Flags` = 8 WHERE `ID` = 790; -- Sarkoth
UPDATE `quest_template` SET `Flags` = 8 WHERE `ID` = 794; -- Burning Blade Medallion
UPDATE `quest_template` SET `Flags` = 0 WHERE `ID` = 804; -- Sarkoth
UPDATE `quest_template` SET `Flags` = 8 WHERE `ID` = 805; -- Report to Sen'jin Village
UPDATE `quest_template` SET `Flags` = 8 WHERE `ID` = 1516; -- Call of Earth (Shaman)
UPDATE `quest_template` SET `Flags` = 0 WHERE `ID` = 1517; -- Call of Earth (Shaman)
UPDATE `quest_template` SET `Flags` = 0 WHERE `ID` = 2161; -- A Peon's Burden
UPDATE `quest_template` SET `Flags` = 8 WHERE `ID` = 4641; -- Your Place In The World
UPDATE `quest_template` SET `Flags` = 0 WHERE `ID` = 5441; -- Lazy Peons
UPDATE `quest_template` SET `Flags` = 8 WHERE `ID` = 6394; -- Thazz'ril's Pick

UPDATE `quest_template_addon` SET `AllowableClasses` = 1279 WHERE `ID` = 792;

UPDATE `quest_template_addon` SET `SpecialFlags` = 0 WHERE `ID` IN (
788,  -- Cutting Teeth
789,  -- Sting of the Scorpid
790,  -- Sarkoth
792,  -- Vile Familiars
794,  -- Burning Blade Medallion
804,  -- Sarkoth
805,  -- Report to Sen'jin Village
1516, -- Call of Earth (Shaman)
1517, -- Call of Earth (Shaman)
2161, -- A Peon's Burden
2383, -- Simple Parchment
4402, -- Galgar's Cactus Apple Surprise
4641, -- Your Place In The World
5441, -- Lazy Peons
6394  -- Thazz'ril's Pick
);

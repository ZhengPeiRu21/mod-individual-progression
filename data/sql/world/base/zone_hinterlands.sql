/* smart scripts */
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (2925, 2929);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(2639, 2640, 2641, 2642, 2643, 2644, 2645, 2646, 2647, 2648, 2651, 2652, 2653, 2658, 2659, 2681, 2686, 2691, 2692, 2693, 2694, 2707, 2926, 2928, 
4465, 4466, 4467, 4468, 4469, 7995, 8214, 8215, 8218, 10802);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(2639, 2640, 2641, 2642, 2643, 2644, 2645, 2646, 2647, 2648, 2651, 2652, 2653, 2658, 2659, 2681, 2686, 2691, 2692, 2693, 2694, 2707, 2925, 2926, 2928, 2929, 
4465, 4466, 4467, 4468, 4469, 7995, 8214, 8215, 8218, 10802);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(2639, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Vilebranch Axe Thrower - Outside 30 Range - Start Combat Movement'),
(2639, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Vilebranch Axe Thrower - Within 5-30 Range - Stop Combat Movement'),
(2639, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Vilebranch Axe Thrower - Within 0-5 Range - Start Combat Movement'),
(2639, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 10277, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Vilebranch Axe Thrower - Within 5-30 Range - Cast Throw'),
(2639, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Vilebranch Axe Thrower - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2640, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3000, 4000, 0, 0, 11, 9613, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Vilebranch Witch Doctor - In Combat - Cast Shadow Bolt'),
(2640, 0, 1, 0, 14, 0, 100, 0, 1200, 40, 13000, 17000, 0, 0, 11, 8005, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,      'Vilebranch Witch Doctor - Friendly at 1200 Health - Cast Healing Wave'),
(2640, 0, 2, 0, 0, 0, 100, 0, 5000, 5000, 15000, 18000, 0, 0, 11, 18503, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Vilebranch Witch Doctor - In Combat - Cast Hex'),
(2640, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Vilebranch Witch Doctor - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2641, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Vilebranch Headhunter - Outside 30 Range - Start Combat Movement'),
(2641, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Vilebranch Headhunter - Within 5-30 Range - Stop Combat Movement'),
(2641, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Vilebranch Headhunter - Within 0-5 Range - Start Combat Movement'),
(2641, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2300, 3900, 5, 30, 11, 15607, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Vilebranch Headhunter - In Combat - Cast Throw'),
(2641, 0, 4, 0, 9, 0, 100, 0, 0, 0, 15000, 18000, 0, 5, 11, 15656, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Vilebranch Headhunter - Within 0-5 Range - Cast Poisonous Stab'),
(2641, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Vilebranch Headhunter - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2642, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3400, 4800, 0, 0, 11, 9613, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Vilebranch Shadowcaster - In Combat - Cast Shadow Bolt'),
(2642, 0, 1, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 12746, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Vilebranch Shadowcaster - Out of Combat - Cast Summon Voidwalker'),
(2642, 0, 2, 0, 0, 0, 100, 0, 0, 0, 15000, 25000, 0, 0, 11, 7289, 33, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Vilebranch Shadowcaster - In Combat - Cast Shrink'),
(2642, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Vilebranch Shadowcaster - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2643, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8599, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Vilebranch Berserker - Between 0-30% Health - Cast Enrage (No Repeat)'),
(2643, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Vilebranch Berserker - On Enrage - Say Line 0'),
(2643, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Vilebranch Berserker - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2644, 0, 0, 0, 67, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 15657, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Vilebranch Hideskinner - On Behind Target - Cast Backstab'),
(2644, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Vilebranch Hideskinner - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2645, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Vilebranch Shadow Hunter - Outside 30 Range - Start Combat Movement'),
(2645, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Vilebranch Shadow Hunter - Within 5-30 Range - Stop Combat Movement'),
(2645, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Vilebranch Shadow Hunter - Within 0-5 Range - Start Combat Movement'),
(2645, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2300, 3900, 5, 30, 11, 15547, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Vilebranch Shadow Hunter - Within 5-30 Range - Cast Shoot'),
(2645, 0, 4, 0, 9, 0, 100, 0, 0, 0, 21000, 26000, 0, 30, 11, 14032, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Vilebranch Shadow Hunter - Within 0-30 Range - Cast Shadow Word: Pain'),
(2645, 0, 5, 0, 0, 0, 100, 0, 4000, 9000, 15000, 21000, 0, 0, 11, 9657, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Vilebranch Shadow Hunter - In Combat - Cast Shadow Shell'),
(2645, 0, 6, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Vilebranch Shadow Hunter - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2646, 0, 0, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 11015, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Vilebranch Blood Drinker - Within 0-5 Range - Cast Blood Leech'),
(2646, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Vilebranch Blood Drinker - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2647, 0, 0, 0, 9, 0, 100, 0, 0, 0, 8000, 12000, 0, 5, 11, 11016, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Vilebranch Soul Eater - Within 0-5 Range - Cast Soul Bite'),
(2647, 0, 1, 0, 14, 0, 100, 0, 600, 10, 12000, 15000, 0, 0, 11, 7154, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,       'Vilebranch Soul Eater - On Friendly at 600 Health - Cast Dark Offering'),
(2647, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Vilebranch Soul Eater - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2648, 0, 0, 0, 9, 0, 100, 0, 0, 0, 7000, 11000, 0, 5, 11, 8242, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Vilebranch Aman\'zasi Guard - In Combat - Cast Shield Slam'),
(2648, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Vilebranch Aman\'zasi Guard - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(2651, 0, 0, 0, 67, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 8721, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Witherbark Hideskinner - In Combat - Cast Backstab'),
(2651, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Witherbark Hideskinner - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2652, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Witherbark Venomblood - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2653, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7165, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Witherbark Sadist - On Reset - Cast Battle Stance'),
(2653, 0, 1, 0, 9, 0, 100, 0, 0, 0, 6000, 9000, 0, 5, 11, 25710, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Witherbark Sadist - Within 0-5 Range - Cast Heroic Strike'),
(2653, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Witherbark Sadist - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2658, 0, 0, 0, 9, 0, 100, 0, 0, 0, 15000, 19000, 0, 5, 11, 3147, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Razorbeak Gryphon - Within 0-5 Range - Cast Rend Flesh'),
(2659, 0, 0, 0, 9, 0, 100, 0, 0, 0, 15000, 19000, 0, 5, 11, 3147, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Razorbeak Skylord - Within 0-5 Range - Cast Rend Flesh'),
(2659, 0, 1, 0, 0, 0, 100, 0, 8000, 12000, 12000, 16000, 0, 0, 11, 11019, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Razorbeak Skylord - In Combat - Cast Wing Flap'),
(2681, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 12787, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Vilebranch Raiding Wolf  - On Reset - Cast Thrash Proc'),
(2686, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 11018, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Witherbark Broodguard - On Death - Summon Witherbark Bloodlings'),
--
(2691, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Highvale Outrunner - Outside 30 Range - Start Combat Movement'),
(2691, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Highvale Outrunner - Within 5-30 Range - Stop Combat Movement'),
(2691, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Highvale Outrunner - Within 0-5 Range - Start Combat Movement'),
(2691, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2300, 3900, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Highvale Outrunner - Within 5-30 Range - Cast Shoot'),
(2691, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Highvale Outrunner - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2692, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Highvale Scout - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2693, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Highvale Marksman - Outside 30 Range - Start Combat Movement'),
(2693, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Highvale Marksman - Within 5-30 Range - Stop Combat Movement'),
(2693, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Highvale Marksman - Within 0-5 Range - Start Combat Movement'),
(2693, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2300, 3900, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Highvale Marksman - Within 5-30 Range - Cast Shoot'),
(2693, 0, 4, 0, 9, 0, 100, 0, 0, 0, 9000, 13000, 5, 30, 11, 14443, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Highvale Marksman - Within 5-30 Range - Cast Multi-Shot'),
(2693, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Highvale Marksman - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2694, 0, 0, 0, 9, 0, 100, 0, 0, 0, 30000, 35000, 0, 30, 11, 6950, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Highvale Ranger - Within 0-30 Range - Cast Faerie Fire'),
(2694, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Highvale Ranger - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(2707, 0, 0, 0, 0, 0, 100, 0, 0, 0, 15000, 25000, 0, 0, 11, 7992, 32, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 0,        'Shadra - Within 0-30 Range - Cast Slowing Poison'),
(2707, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 13299, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Shadra - On Reset - Cast Poison Proc'),
(2926, 0, 0, 0, 9, 0, 100, 0, 0, 0, 12000, 21000, 0, 5, 11, 7367, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Silvermane Stalker - Within 0-5 Range - Cast Infected Bite'),
(2926, 0, 1, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Silvermane Stalker - Out of Combat - Cast Sneak'),
(2928, 0, 0, 0, 9, 0, 100, 0, 0, 0, 13000, 16000, 0, 5, 11, 3252, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Primitive Owlbeast - Within 0-5 Range - Cast Shred'),
(4465, 0, 0, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 11976, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Vilebranch Warrior - Within 0-5 Range - Cast Strike'),
(4465, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Vilebranch Warrior - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4466, 0, 0, 0, 12, 0, 100, 0, 0, 20, 18000, 26000, 0, 0, 11, 7160, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Vilebranch Scalper - Target Between 0-20% Health - Cast Execute'),
(4466, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Vilebranch Scalper - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4467, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20824, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Vilebranch Soothsayer - In Combat - Cast Lightning Bolt'),
(4467, 0, 1, 0, 2, 0, 100, 0, 0, 40, 13000, 16000, 0, 0, 11, 10395, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Vilebranch Soothsayer - Between 0-40% Health - Cast Healing Wave'),
(4467, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Vilebranch Soothsayer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4468, 0, 0, 0, 9, 0, 100, 0, 0, 0, 15000, 29000, 0, 10, 11, 6814, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Jade Sludge - Within 0-10 Range - Cast Sludge Toxin'),
(4469, 0, 0, 0, 0, 0, 100, 0, 0, 0, 12000, 19000, 0, 0, 11, 8245, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 0,         'Emerald Ooze - Within 0-30 Range - Cast Corrosive Acid'),
--
(7995, 0, 0, 0, 9, 0, 100, 0, 0, 0, 9000, 12000, 0, 30, 11, 11639, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Vile Priestess Hexx - Within 0-30 Range - Cast Shadow Word: Pain'),
(7995, 0, 1, 0, 0, 0, 100, 0, 5000, 9000, 15000, 19000, 0, 0, 11, 11641, 0, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,   'Vile Priestess Hexx - Within 0-20 Range - Cast Hex'),
(7995, 0, 2, 0, 14, 0, 100, 0, 1200, 40, 12000, 15000, 0, 0, 11, 15586, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,     'Vile Priestess Hexx - Friendly At 1200 Health - Cast Heal'),
(7995, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Vile Priestess Hexx - Between 0-15% Health - Flee For Assist (No Repeat)'),
(8214, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Jalinde Summerdrake - Outside 30 Range - Start Combat Movement'),
(8214, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Jalinde Summerdrake - Within 5-30 Range - Stop Combat Movement'),
(8214, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Jalinde Summerdrake - Within 0-5 Range - Start Combat Movement'),
(8214, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2300, 3900, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Jalinde Summerdrake - Within 5-30 Range - Cast Shoot'),
(8214, 0, 4, 0, 9, 0, 100, 0, 0, 0, 15000, 21000, 5, 30, 11, 8806, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Jalinde Summerdrake - Within 5-30 Range - Cast Poisoned Shot'),
(8214, 0, 5, 0, 0, 0, 100, 0, 5000, 10000, 9000, 13000, 0, 0, 11, 15495, 0, 0, 0, 0, 0, 28, 30, 1, 1, 5, 0, 0, 0, 0,  'Jalinde Summerdrake - Within 5-30 Range - Cast Explosive Shot'),
(8214, 0, 6, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Jalinde Summerdrake - Between 0-15% Health - Flee For Assist (No Repeat)'),
(8215, 0, 0, 0, 0, 0, 100, 0, 6000, 9000, 9000, 14000, 0, 0, 11, 5568, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Grimungous - In Combat - Cast Trample'),
(8215, 0, 1, 0, 9, 0, 100, 0, 0, 0, 14000, 20000, 0, 5, 11, 11876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Grimungous - Within 0-5 Range - Cast War Stomp'),
(8218, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Witherheart the Stalker - On Reset - Cast Sneak'),
(8218, 0, 1, 0, 67, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 7159, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Witherheart the Stalker - On Behind Target - Cast Backstab'),
(10802, 0, 0, 0, 9, 0, 100, 0, 0, 0, 21000, 25000, 0, 30, 11, 11639, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Hitah\'ya the Keeper - Within 0-30 Range - Cast Shadow Word: Pain'),
(10802, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20825, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Hitah\'ya the Keeper - In Combat - Cast Shadow Bolt'),
(10802, 0, 2, 0, 74, 0, 100, 0, 0, 0, 12000, 18000, 20, 40, 11, 11640, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,      'Hitah\'ya the Keeper - Friendly Between 0-20% Health - Cast Renew'),
(10802, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Hitah\'ya the Keeper - Between 0-15% Health - Flee For Assist (No Repeat)');


-- Ironback, fix spawn time and movement
UPDATE `creature` SET `spawntimesecs` = 37800, `MovementType` = 1, `wander_distance` = 5 WHERE `guid` = 69119;

-- Grimungous, fix spawn and waypoints
DELETE FROM `creature` WHERE `guid` = 77480;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, 
`wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
(77480, 8215, 0, 0, 0, 0, 0, 1, 1, 0, 45.1769, -4277.32, 122.17, 4.22167, 115200, 0, 1, 6645, 0, 2, 0, 0, 0, '', 0, 0, NULL);

DELETE FROM `creature_addon` WHERE `guid` = 77480;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(77480, 774800, 0, 0, 0, 0, 0, NULL);

DELETE FROM `waypoint_data` WHERE `id` = 774800;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
(774800, 1, 33.8661, -4294.99, 119.191, 4.13916, 0, 0, 0, 100, 0),
(774800, 2, 15.5674, -4323.33, 126.081, 4.13916, 0, 0, 0, 100, 0),
(774800, 3, 9.06412, -4344.8, 133.54, 4.41641, 0, 0, 0, 100, 0),
(774800, 4, 0.553117, -4372.71, 136.9, 4.41641, 0, 0, 0, 100, 0),
(774800, 5, 22.9217, -4394.53, 143.976, 5.52068, 0, 0, 0, 100, 0),
(774800, 6, 37.5527, -4406.87, 144.066, 5.61728, 0, 0, 0, 100, 0),
(774800, 7, 60.69, -4429.96, 140.529, 5.49948, 0, 0, 0, 100, 0),
(774800, 8, 78.9304, -4454.81, 145.817, 5.34554, 0, 0, 0, 100, 0),
(774800, 9, 111.077, -4453.16, 138.105, 6.22597, 0, 0, 0, 100, 0),
(774800, 10, 141.263, -4477.85, 129.127, 5.59765, 0, 0, 0, 100, 0),
(774800, 11, 161.148, -4508.8, 127.28, 5.28349, 0, 0, 0, 100, 0),
(774800, 12, 163.808, -4536, 120.421, 4.8099, 0, 0, 0, 100, 0),
(774800, 13, 179.213, -4547.36, 117.619, 5.64949, 0, 0, 0, 100, 0),
(774800, 14, 199.62, -4546.38, 117.673, 0.048026, 0, 0, 0, 100, 0),
(774800, 15, 213.777, -4558.57, 116.667, 5.57173, 0, 0, 0, 100, 0),
(774800, 16, 188.652, -4569.09, 121.403, 3.55561, 0, 0, 0, 100, 0),
(774800, 17, 174.894, -4582.74, 119.059, 3.92318, 0, 0, 0, 100, 0),
(774800, 18, 153.454, -4584.03, 119.235, 3.2014, 0, 0, 0, 100, 0),
(774800, 19, 145, -4569.63, 121.162, 2.10184, 0, 0, 0, 100, 0),
(774800, 20, 144.711, -4539.3, 120.639, 1.58034, 0, 0, 0, 100, 0),
(774800, 21, 129.324, -4526.81, 124.315, 2.51182, 0, 0, 0, 100, 0),
(774800, 22, 121.709, -4507.72, 130.58, 1.95026, 0, 0, 0, 100, 0),
(774800, 23, 123.078, -4482.62, 134.363, 1.49002, 0, 0, 0, 100, 0),
(774800, 24, 121.647, -4466.59, 136.556, 1.63296, 0, 0, 0, 100, 0),
(774800, 25, 105.532, -4447.25, 139.4, 2.18195, 0, 0, 0, 100, 0),
(774800, 26, 84.7668, -4452.12, 144.857, 3.38754, 0, 0, 0, 100, 0),
(774800, 27, 64.0455, -4464.07, 144.132, 3.65065, 0, 0, 0, 100, 0),
(774800, 28, 43.3888, -4457, 145.749, 2.81184, 0, 0, 0, 100, 0),
(774800, 29, 47.3105, -4428.68, 141.603, 1.42561, 0, 0, 0, 100, 0),
(774800, 30, 36.6585, -4409.87, 144.795, 2.01545, 0, 0, 0, 100, 0),
(774800, 31, 15.0537, -4387.95, 142.858, 2.35867, 0, 0, 0, 100, 0),
(774800, 32, -7.9163, -4389.17, 142.119, 3.19433, 0, 0, 0, 100, 0),
(774800, 33, -29.7051, -4388.02, 145.253, 3.07652, 0, 0, 0, 100, 0),
(774800, 34, -50.6882, -4367.26, 136.515, 2.34453, 0, 0, 0, 100, 0),
(774800, 35, -71.5837, -4348.97, 125.171, 2.42228, 0, 0, 0, 100, 0),
(774800, 36, -91.2632, -4340.75, 130.592, 2.72545, 0, 0, 0, 100, 0),
(774800, 37, -108.353, -4305.35, 129.603, 2.00681, 0, 0, 0, 100, 0),
(774800, 38, -121.583, -4282, 121.64, 2.08456, 0, 0, 0, 100, 0),
(774800, 39, -100.578, -4263.8, 120.193, 0.737603, 0, 0, 0, 100, 0),
(774800, 40, -73.6297, -4257.04, 120.254, 0.238875, 0, 0, 0, 100, 0),
(774800, 41, -35.7623, -4248.27, 118.93, 0.359041, 0, 0, 0, 100, 0),
(774800, 42, 5.70428, -4236.78, 117.241, 0.39674, 0, 0, 0, 100, 0),
(774800, 43, 24.2909, -4240.63, 117.688, 6.03668, 0, 0, 0, 100, 0),
(774800, 44, 40.6797, -4257.42, 118.51, 5.80106, 0, 0, 0, 100, 0),
(774800, 45, 42.9907, -4278.39, 122.562, 4.67323, 0, 0, 0, 100, 0);


-- Troll Necklace Bounty quest should be for Alliance only
UPDATE `quest_template` SET `AllowableRaces` = 1101 WHERE `ID` = 2880;

-- Shadra incorrect display scale and missing smart AI
UPDATE `creature_template_model` SET `DisplayScale` = 5  WHERE `CreatureID` = 2707;

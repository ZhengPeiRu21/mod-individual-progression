/* smart scripts */
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (3243, 3383, 3414, 3470, 3472, 3476, 4127, 4128, 4129);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(3234, 3236, 3237, 3238, 3239, 3240, 3241, 3242, 3244, 3245, 3246, 3247, 3248, 3249, 3250, 3252, 3253, 3254, 3255, 3256, 3258, 3260, 3261, 3263, 3265, 3266, 3267, 3268, 3269, 3270, 3271, 3272, 3273, 3274, 3275, 
3397, 3276, 3277, 3278, 3279, 3280, 3281, 3282, 3283, 3284, 3285, 3286, 3295, 3374, 3375, 3376, 3377, 3378, 3379, 3380, 3381, 3382, 3384, 3385, 3386, 3392, 3393, 3394, 3398, 
3416, 3424, 3425, 3426, 3434, 3435, 3436, 3438, 3452, 3454, 3455, 3456, 3457, 3458, 3459, 3461, 3463, 3466, 3471, 3473, 
5828, 5829, 5830, 5831, 5834, 5835, 5836, 5838, 5841, 5842, 5847, 5848, 5849, 5851, 5859, 5863, 5865, 6494, 7872, 7873, 7874, 9336, 12865);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(3234, 3236, 3237, 3238, 3239, 3240, 3241, 3242, 3244, 3245, 3246, 3247, 3248, 3249, 3250, 3252, 3253, 3254, 3255, 3256, 3258, 3260, 3261, 3263, 3265, 3266, 3267, 3268, 3269, 3270, 3271, 3272, 3273, 3274, 3275, 
3397, 3276, 3277, 3278, 3279, 3280, 3281, 3282, 3283, 3284, 3285, 3286, 3295, 3374, 3375, 3376, 3377, 3378, 3379, 3380, 3381, 3382, 3383, 3384, 3385, 3386, 3392, 3393, 3394, 3398, 
3414, 3416, 3424, 3425, 3426, 3434, 3435, 3436, 3438, 3452, 3454, 3455, 3456, 3457, 3458, 3459, 3461, 3463, 3466, 3470, 3471, 3472, 3473, 3476, 4127, 4128, 4129, 
5828, 5829, 5830, 5831, 5834, 5835, 5836, 5838, 5841, 5842, 5847, 5848, 5849, 5851, 5859, 5863, 5865, 6494, 7872, 7873, 7874, 9336, 12865);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(3234, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Lost Barrens Kodo - On Aggro - Cast Rushing Charge'),
(3234, 0, 1, 0, 0, 0, 100, 0, 7000, 16000, 9000, 17000, 0, 0, 11, 6266, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Lost Barrens Kodo - In Combat - Cast Kodo Stomp'),
(3236, 0, 0, 0, 0, 0, 100, 0, 7000, 16000, 9000, 17000, 0, 0, 11, 6266, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Barrens Kodo - In Combat - Cast Kodo Stomp'),
(3237, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Wooly Kodo - On Aggro - Cast Rushing Charge'),
(3238, 0, 0, 0, 9, 0, 100, 0, 0, 0, 6000, 12000, 0, 30, 11, 5401, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Stormhide   - Within 0-30 Range - Cast Lizard Bolt'),
(3238, 0, 1, 0, 9, 0, 100, 0, 0, 0, 9000, 15000, 0, 5, 11, 6730, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Stormhide   - Within 0-5 Range  - Cast Head Butt'),
(3239, 0, 0, 0, 9, 0, 100, 0, 0, 0, 6000, 12000, 0, 30, 11, 5401, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Thunderhead - Within 0-30 Range - Cast Lizard Bolt'),
(3240, 0, 0, 0, 9, 0, 100, 0, 0, 0, 6000, 12000, 0, 30, 11, 5401, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Stormsnout  - Within 0-30 Range - Cast Lizard Bolt'),
(3241, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 17498, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Savannah Patriarch - On Respawn - Cast Speed'),
(3242, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 17498, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Zhevra Runner - On Respawn - Cast Speed'),
(3244, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Greater Plainstrider  - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3245, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Ornery Plainstrider   - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3246, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Fleeting Plainstrider - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3247, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 600000, 600000, 0, 0, 11, 325, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Thunderhawk Hatchling - Out of Combat - Cast Lightning Shield'),
(3247, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Thunderhawk Hatchling - In Combat - Cast Lightning Bolt'),
(3248, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 17498, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Barrens Giraffe - On Respawn  - Cast Speed'),
(3249, 0, 0, 0, 9, 0, 100, 0, 0, 0, 15000, 15000, 0, 10, 11, 8078, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Greater Thunderhawk - Within 0-10 Range - Cast Thunderclap'),
(3250, 0, 0, 0, 0, 0, 100, 0, 5000, 5000, 5000, 55000, 0, 0, 11, 6587, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Silithid Creeper - In Combat - Cast Silithid Creeper Egg'),
(3252, 0, 0, 0, 1, 0, 100, 1, 5000, 5000, 0, 0, 0, 0, 11, 6589, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Silithid Swarmer - Out of Combat - Cast Silithid Swarm (No Repeat)'),
(3253, 0, 0, 0, 0, 0, 100, 0, 12000, 18000, 25000, 35000, 0, 0, 11, 7278, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Silithid Harvester - In Combat - Cast Summon Harvester Swarm'),
(3254, 0, 0, 0, 0, 0, 100, 0, 11000, 21000, 13000, 19000, 0, 0, 11, 6607, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Sunscale Lashtail - Within 0-5 Range - Cast Lash'),
(3255, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 17498, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Sunscale Screecher - On Respawn - Cast Speed'),
(3255, 0, 1, 2, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 39, 40, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Sunscale Screecher - Between 0-30% Health - Call For Help (No Repeat)'),
(3255, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Sunscale Screecher - On Call For Help - Say Line 0'),
(3256, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Sunscale Scytheclaw - On Respawn - Cast Thrash Proc'),
--
(3258, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Bristleback Hunter - Outside 30 Range - Start Combat Movement'),
(3258, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Bristleback Hunter - Within 5-30 Range - Stop Combat Movement'),
(3258, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Bristleback Hunter - Within 0-5 Range - Start Combat Movement'),
(3258, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Bristleback Hunter - Within 5-30 Range - Cast Shoot'),
(3258, 0, 4, 0, 0, 0, 100, 0, 9000, 14000, 9000, 14000, 0, 0, 11, 8806, 96, 0, 0, 0, 0, 28, 30, 1, 1, 5, 0, 0, 0, 0,   'Bristleback Hunter - Within 5-30 Range - Cast Poisoned Shot'),
(3258, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bristleback Hunter - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3260, 0, 0, 0, 9, 0, 100, 0, 0, 0, 10000, 16000, 0, 8, 11, 12748, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Bristleback Water Seeker - Within 0-8 Range - Cast Frost Nova'),
(3260, 0, 1, 0, 2, 0, 100, 0, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bristleback Water Seeker - Between 0-15% Health - Flee For Assist'),
(3261, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 60000, 60000, 0, 0, 11, 782, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Bristleback Thornweaver - Out of Combat - Cast Thorns'),
(3261, 0, 1, 0, 0, 0, 100, 0, 5000, 11000, 12000, 18000, 0, 0, 11, 12747, 96, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,  'Bristleback Thornweaver - In Combat - Cast Entangling Roots'),
(3261, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bristleback Thornweaver - Between 0-15% Health - Flee For Assist'),
(3263, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20793, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Bristleback Geomancer - In Combat - Cast Fireball'),
(3263, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 17000, 22000, 0, 0, 11, 4979, 64, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Bristleback Geomancer - In Combat - Cast Quick Flame Ward'),
(3263, 0, 2, 0, 0, 0, 100, 0, 8000, 13000, 18000, 25000, 0, 0, 11, 20794, 65, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Bristleback Geomancer - In Combat - Cast Flamestrike'),
(3263, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bristleback Geomancer - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(3265, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Razormane Hunter - Outside 30 Range - Start Combat Movement'),
(3265, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Razormane Hunter - Within 5-30 Range - Stop Combat Movement'),
(3265, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Razormane Hunter - Within 0-5 Range - Start Combat Movement'),
(3265, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Razormane Hunter - Within 5-30 Range - Cast Shoot'),
(3265, 0, 4, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 6479, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Razormane Hunter - Out of Combat - Cast Summon Razormane Wolf'),
(3265, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Razormane Hunter - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3266, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7165, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Razormane Defender - On Aggro - Cast Battle Stance'),
(3266, 0, 1, 0, 0, 0, 100, 0, 10000, 10000, 35000, 35000, 0, 0, 11, 13730, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Razormane Defender - In Combat - Cast Demoralizing Shout'), -- https://www.youtube.com/watch?v=7L9B25m566E&t=435s
(3266, 0, 2, 0, 0, 0, 100, 0, 4000, 4000, 11000, 11000, 0, 0, 11, 25710, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Razormane Defender - Within 0-5 Range - Cast Heroic Strike'),
(3266, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Razormane Defender - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3267, 0, 0, 0, 0, 0, 80, 0, 7000, 13000, 30000, 40000, 0, 0, 11, 6278, 96, 0, 0, 0, 0, 5, 15, 0, 0, 0, 0, 0, 0, 0,    'Razormane Water Seeker - Within 0-15 Range - Cast Creeping Mold'),
(3267, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Razormane Water Seeker - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3268, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 467, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Razormane Thornweaver - On Aggro - Cast Thorns'),
(3268, 0, 1, 0, 0, 0, 100, 0, 7000, 12000, 15000, 21000, 0, 0, 11, 6950, 32, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,   'Razormane Thornweaver - Within 0-30 Range - Cast Faerie Fire'),
(3268, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Razormane Thornweaver - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3269, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 900000, 900000, 0, 0, 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Razormane Geomancer - Out of Combat - Cast Frost Armor'),
(3269, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20793, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Razormane Geomancer - In Combat - Cast Fireball'),
(3269, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Razormane Geomancer - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(3270, 0, 0, 0, 2, 0, 100, 0, 0, 50, 24200, 38600, 0, 0, 11, 547, 65, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Elder Mystic Razorsnout - Between 0-50% Health - Cast Healing Wave'),
(3270, 0, 1, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 2484, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Elder Mystic Razorsnout - Between 0-30% Health - Cast Earthbind Totem (No Repeat)'),
(3270, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Elder Mystic Razorsnout - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3271, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 600000, 600000, 0, 0, 11, 324, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Razormane Mystic - Out of Combat - Cast Lightning Shield'),
(3271, 0, 1, 0, 0, 0, 100, 0, 0, 0, 15000, 30000, 0, 0, 11, 324, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Razormane Mystic - In Combat - Cast Lightning Shield'),
(3271, 0, 2, 0, 74, 0, 100, 0, 6000, 10000, 12000, 20000, 50, 40, 11, 547, 65, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,  'Razormane Mystic - Friendly Between 0-50% Health - Cast Healing Wave'),
(3271, 0, 3, 0, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Razormane Mystic - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(3272, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Kolkar Wrangler - Outside 30 Range - Start Combat Movement'),
(3272, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Kolkar Wrangler - Within 5-30 Range - Stop Combat Movement'),
(3272, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Kolkar Wrangler - Within 0-5 Range - Start Combat Movement'),
(3272, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Kolkar Wrangler - Within 5-30 Range - Cast Shoot'),
(3272, 0, 4, 0, 0, 0, 100, 0, 4000, 6000, 25000, 35000, 0, 0, 11, 12024, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Kolkar Wrangler - In Combat - Cast Net'),
(3272, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Kolkar Wrangler - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3273, 0, 0, 0, 9, 0, 100, 1, 0, 0, 0, 0, 0, 30, 11, 6535, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                  'Kolkar Stormer - Within 0-30 Range - Cast Lightning Cloud (No Repeat)'),
(3273, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Kolkar Stormer - In Combat - Cast Lightning Bolt'),
(3273, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Kolkar Stormer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3274, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 9128, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Kolkar Pack Runner - On Aggro - Cast Battle Shout'),
(3274, 0, 1, 2, 6, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                          'Kolkar Pack Runner - On Just Died - Say Line 0'),
(3274, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 12, 3395, 4, 300000, 0, 0, 0, 8, 0, 0, 0, 0, -1210.59, -2725.84, 106.783, 4.95674, 'Kolkar Pack Runner - On Just Died - Summon Creature \'Verog the Dervish\''),
(3275, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Kolkar Marauder - On Aggro - Cast Charge'),
(3275, 0, 1, 0, 9, 0, 100, 0, 0, 0, 7000, 12000, 0, 5, 11, 11976, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Kolkar Marauder - Within 0-5 Range - Cast Strike'),
(3275, 0, 2, 0, 0, 0, 100, 0, 7000, 15000, 9000, 14000, 0, 0, 11, 11976, 32, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,    'Kolkar Marauder - Within 0-5 Range - Cast Tetanus'),
(3275, 0, 3, 4, 6, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                          'Kolkar Marauder - On Just Died - Say Line 0'),
(3275, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 12, 3395, 4, 300000, 0, 0, 0, 8, 0, 0, 0, 0, -1210.59, -2725.84, 106.783, 4.95674, 'Kolkar Marauder - On Just Died - Summon Creature \'Verog the Dervish\''),
(3397, 0, 0, 0, 0, 0, 100, 0, 10000, 10000, 35000, 35000, 0, 0, 11, 6742, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Kolkar Bloodcharger - In Combat - Cast Bloodlust'),
(3397, 0, 1, 0, 0, 0, 100, 0, 5000, 5000, 20000, 20000, 0, 0, 11, 172, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Kolkar Bloodcharger - In Combat - Cast Corruption'),
(3397, 0, 2, 3, 6, 0, 3, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                          'Kolkar Bloodcharger - On Just Died - Say Line 0'),
(3397, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 12, 3395, 4, 300000, 0, 0, 0, 8, 0, 0, 0, 0, -1210.59, -2725.84, 106.783, 4.95674, 'Kolkar Bloodcharger - On Just Died - Summon Creature \'Verog the Dervish\''),
--
(3276, 0, 0, 0, 0, 0, 100, 0, 4000, 9000, 18000, 25000, 0, 0, 11, 7098, 96, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Witchwing Harpy - In Combat - Cast Curse of Mending'),
(3276, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Witchwing Harpy - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3277, 0, 0, 0, 4, 0, 75, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                         'Witchwing Roguefeather - On Aggro - Say Line 0'),
(3277, 0, 1, 0, 0, 0, 100, 0, 4000, 8000, 12000, 16000, 0, 0, 11, 7992, 96, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Witchwing Roguefeather - In Combat - Cast Slowing Poison'),
(3277, 0, 2, 0, 67, 0, 100, 0, 0, 0, 9000, 12000, 0, 5, 11, 6595, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Witchwing Roguefeather - Behind Target - Cast Exploit Weakness'),
(3278, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                         'Witchwing Slayer - On Aggro - Say Line 0'),
(3278, 0, 1, 0, 9, 0, 100, 0, 0, 0, 5000, 10000, 0, 8, 11, 13730, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Witchwing Slayer - Within 0-8 Range - Cast Demoralizing Shout'),
(3278, 0, 2, 0, 12, 0, 100, 0, 0, 20, 5000, 10000, 0, 0, 11, 7160, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Witchwing Slayer - Target Between 0-20% Health - Cast Execute'),
(3278, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Witchwing Slayer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3279, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                         'Witchwing Ambusher - On Aggro - Say Line 0'),
(3279, 0, 1, 0, 67, 0, 100, 0, 0, 0, 9000, 12000, 0, 5, 11, 6595, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Witchwing Ambusher - Behind Target - Cast Exploit Weakness'),
(3279, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Witchwing Ambusher - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3280, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                         'Witchwing Windcaller - On Aggro - Say Line 0'),
(3280, 0, 1, 0, 0, 0, 100, 0, 4000, 7000, 12000, 15000, 0, 0, 11, 6728, 96, 0, 0, 0, 0, 6, 30, 0, 0, 0, 0, 0, 0, 0,    'Witchwing Windcaller - Within 0-30 Range - Cast Enveloping Winds'),
(3280, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Witchwing Windcaller - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(3281, 0, 0, 0, 0, 0, 100, 0, 7000, 14000, 10000, 16000, 0, 0, 11, 6253, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,     'Southsea Brigand - Within 0-5 Range  - Cast Backhand'),
(3281, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Southsea Brigand - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3282, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Venture Co. Mercenary - Outside 30 Range - Start Combat Movement'),
(3282, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Venture Co. Mercenary - Within 5-30 Range - Stop Combat Movement'),
(3282, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Venture Co. Mercenary - Within 0-5 Range - Start Combat Movement'),
(3282, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Venture Co. Mercenary - Within 5-30 Range - Cast Shoot'),
(3282, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Venture Co. Mercenary - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3283, 0, 0, 0, 0, 0, 100, 0, 7000, 12000, 20000, 35000, 0, 0, 11, 9128, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Venture Co. Enforcer - In Combat - Cast Battle Shout'),
(3283, 0, 1, 0, 0, 0, 100, 0, 12000, 22000, 20000, 33000, 0, 0, 11, 6713, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Venture Co. Enforcer - Within 0-5 Range - Cast Disarm'),
(3283, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Venture Co. Enforcer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3284, 0, 0, 0, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Venture Co. Drudger - Between 0-20% Health - Flee For Assist (No Repeat)'),
(3285, 0, 0, 0, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Venture Co. Peon - Between 0-20% Health - Flee For Assist (No Repeat)'),
(3286, 0, 0, 0, 9, 0, 100, 0, 0, 0, 10000, 12000, 0, 5, 11, 9080, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Venture Co. Overseer - In Combat - Cast Hamstring'),
(3295, 0, 0, 0, 9, 0, 100, 9, 0, 0, 9000, 16000, 0, 5, 11, 7279, 96, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Sludge Beast - Within 0-5 Range - Cast Black Sludge'),
--
(3374, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7164, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Bael\'dun Excavator - On Aggro - Cast Defensive Stance'),
(3374, 0, 1, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 7386, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Bael\'dun Excavator - Within 0-5 Range - Cast Sunder Armor'),
(3374, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bael\'dun Excavator - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3375, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6257, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                    'Bael\'dun Foreman - On Aggro - Cast Torch Toss'),
(3375, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bael\'dun Foreman - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3376, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bael\'dun Soldier - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3377, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Bael\'dun Rifleman - Outside 30 Range - Start Combat Movement'),
(3377, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Bael\'dun Rifleman - Within 5-30 Range - Stop Combat Movement'),
(3377, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Bael\'dun Rifleman - Within 0-5 Range - Start Combat Movement'),
(3377, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Bael\'dun Rifleman - Within 5-30 Range - Cast Shoot'),
(3377, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bael\'dun Rifleman - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3378, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3391, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bael\'dun Officer - On Respawn - Cast Thrash Proc'),
(3378, 0, 1, 0, 0, 0, 100, 0, 1000, 1000, 15000, 23000, 0, 0, 11, 6264, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Bael\'dun Officer - In Combat - Cast Nimble Reflexes'),
(3378, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bael\'dun Officer - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(3379, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 4133, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Burning Blade Bruiser - On Aggro - Cast Bruise'),
(3380, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 696, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Burning Blade Acolyte - On Aggro - Cast Demon Skin'),
(3380, 0, 1, 0, 0, 0, 70, 0, 5000, 5000, 20000, 20000, 0, 0, 11, 707, 96, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Burning Blade Acolyte - In Combat - Cast Immolate'),
(3380, 0, 2, 0, 0, 0, 70, 1, 0, 0, 15000, 15000, 0, 0, 11, 980, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Burning Blade Acolyte - In Combat - Cast Curse of Agony'),
(3380, 0, 3, 0, 2, 0, 80, 0, 0, 50, 13000, 13000, 0, 0, 11, 689, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Burning Blade Acolyte - Between 0-50% Health - Cast Drain Life'),
(3381, 0, 0, 0, 0, 0, 100, 0, 7000, 14000, 10000, 16000, 0, 0, 11, 6253, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,     'Southsea Brigand - Within 0-5 Range  - Cast Backhand'),
(3381, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Southsea Brigand - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3382, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Southsea Cannoneer - Outside 30 Range - Start Combat Movement'),
(3382, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Southsea Cannoneer - Within 5-30 Range - Stop Combat Movement'),
(3382, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Southsea Cannoneer - Within 0-5 Range - Start Combat Movement'),
(3382, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Southsea Cannoneer - Within 5-30 Range - Cast Shoot'),
(3382, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Southsea Cannoneer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3384, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Southsea Privateer - Outside 30 Range - Start Combat Movement'),
(3384, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Southsea Privateer - Within 5-30 Range - Stop Combat Movement'),
(3384, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Southsea Privateer - Within 0-5 Range - Start Combat Movement'),
(3384, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Southsea Privateer - Within 5-30 Range - Cast Shoot'),
(3384, 0, 4, 0, 0, 0, 100, 0, 4000, 6000, 9000, 13000, 0, 0, 11, 3011, 0, 0, 0, 0, 0, 28, 30, 1, 1, 5, 0, 0, 0, 0,     'Southsea Privateer - Within 5-30 Range - Cast Fire Shot'),
(3384, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Southsea Privateer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3385, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7164, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Theramore Marine - On Aggro - Cast Defensive Stance'),
(3385, 0, 1, 0, 105, 0, 100, 0, 3000, 5000, 15000, 21000, 0, 5, 11, 72, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,      'Theramore Marine - Target Casting - Cast Shield Bash'),
(3385, 0, 2, 0, 0, 0, 100, 0, 12000, 18000, 20000, 33000, 0, 0, 11, 6713, 32, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,   'Theramore Marine - Within 0-5 Range - Cast Disarm'),
(3385, 0, 3, 0, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Theramore Marine - Between 0-20% Health - Flee For Assist (No Repeat)'),
(3386, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9734, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Theramore Preserver - In Combat - Cast Holy Smite'),
(3386, 0, 1, 0, 74, 0, 100, 0, 0, 0, 12000, 18000, 80, 40, 11, 2052, 64, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Theramore Preserver - Friendly Between 0-80% Health - Cast Lesser Heal'),
(3386, 0, 2, 0, 74, 0, 100, 0, 0, 0, 15000, 21000, 20, 40, 11, 6074, 96, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Theramore Preserver - Friendly Between 0-20% Health - Cast Renew'),
(3386, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Theramore Preserver - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(3392, 0, 0, 0, 0, 0, 100, 0, 7000, 14000, 10000, 16000, 0, 0, 11, 6253, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,     'Prospector Khazgorm - Within 0-5 Range - Cast Backhand'),
(3393, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 9128, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Captain Fairmount - On Aggro - Cast Battle Shout'),
(3393, 0, 1, 0, 2, 0, 100, 0, 0, 30, 27500, 27500, 0, 0, 11, 19134, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Captain Fairmount - Between 0-30% Health - Cast Frightening Shout'),
(3393, 0, 2, 0, 105, 0, 100, 0, 0, 0, 40000, 40000, 0, 5, 11, 12555, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Captain Fairmount - Target Casting - Cast Pummel'),
(3394, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Barak Kodobane - Outside 30 Range - Start Combat Movement'),
(3394, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Barak Kodobane - Within 5-30 Range - Stop Combat Movement'),
(3394, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Barak Kodobane - Within 0-5 Range - Start Combat Movement'),
(3394, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Barak Kodobane - Within 5-30 Range - Cast Shoot'),
(3394, 0, 4, 0, 0, 0, 100, 0, 2000, 5000, 25000, 35000, 0, 0, 11, 6533, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Barak Kodobane - In Combat - Cast Net'),
(3394, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Barak Kodobane - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3398, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 10022, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Gesharahan - On Respawn - Cast Deadly Poison Proc'),
--
(3416, 0, 0, 0, 0, 0, 60, 1, 0, 0, 14000, 14000, 0, 0, 11, 6598, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Savannah Matriarch - In Combat - Cast Savannah Cub'),
(3424, 0, 0, 0, 9, 0, 80, 0, 0, 0, 15000, 15000, 0, 8, 11, 8078, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Thunderhawk Cloudscraper - Within 0-8 Range - Cast Thunderclap'),
(3425, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 17498, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Savannah Prowler - On Respawn - Cast Speed'),
(3426, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 17498, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Zhevra Charger - On Respawn - Cast Speed'),
--
(3434, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Nak - In Combat - Cast Lightning Bolt'),
(3434, 0, 1, 0, 2, 0, 100, 0, 0, 50, 17000, 23000, 0, 0, 11, 8004, 64, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Nak - Between 0-50% Health - Cast Lesser Healing Wave'),
(3434, 0, 2, 0, 0, 0, 100, 1, 6000, 12000, 0, 0, 0, 0, 11, 8154, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Nak - In Combat - Cast Stoneskin Totem (No Repeat)'),
(3434, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Nak - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3435, 0, 0, 0, 0, 0, 100, 0, 7000, 7000, 15000, 15000, 0, 0, 11, 9080, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,      'Lok Orcbane - Within 0-5 Range - Cast Hamstring'),
(3435, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Lok Orcbane - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3436, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20792, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Kuz - In Combat - Cast Frostbolt'),
(3436, 0, 1, 0, 0, 0, 100, 0, 5000, 9000, 9000, 12000, 0, 0, 11, 20795, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Kuz - In Combat - Cast Fire Blast'),
(3436, 0, 2, 0, 106, 0, 100, 0, 0, 0, 12000, 16000, 0, 8, 11, 11831, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Kuz - Within 0-8 Range - Cast Frost Nova'),
(3438, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Kreenig Snarlsnout - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3452, 0, 0, 0, 0, 0, 100, 0, 3000, 7000, 19000, 19000, 0, 0, 11, 3264, 64, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Serena Bloodfeather - In Combat - Cast Blood Howl'),
(3452, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Serena Bloodfeather - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3454, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Cannoneer Smythe - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3455, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Cannoneer Whessan - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(3456, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Razormane Pathfinder - Outside 30 Range - Start Combat Movement'),
(3456, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Razormane Pathfinder - Within 5-30 Range - Stop Combat Movement'),
(3456, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Razormane Pathfinder - Within 0-5 Range - Start Combat Movement'),
(3456, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Razormane Pathfinder - Within 5-30 Range - Cast Shoot'),
(3456, 0, 4, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Razormane Pathfinder - On Respawn - Cast Thrash Proc'),
(3456, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Razormane Pathfinder - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3457, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Razormane Stalker - Out of Combat - Cast Sneak  (No Repeat)'),
(3457, 0, 1, 0, 9, 0, 100, 0, 0, 0, 30000, 40000, 0, 5, 11, 1758, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Razormane Stalker - Within 0-5 Range - Cast Sinister Strike'),
(3457, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Razormane Stalker - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3458, 0, 0, 0, 0, 0, 100, 0, 5000, 11000, 16000, 24000, 0, 0, 11, 6363, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Razormane Seer - In Combat - Cast Searing Totem'),
(3458, 0, 1, 0, 2, 0, 100, 0, 0, 50, 25000, 35000, 0, 0, 11, 6274, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Razormane Seer - Between 0-50% Health - Cast Healing Ward'),
(3458, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Razormane Seer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3459, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Razormane Warfrenzy - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(3461, 0, 0, 0, 0, 0, 100, 0, 9000, 18000, 17000, 24000, 0, 0, 11, 6530, 96, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Oasis Snapjaw - In Combat - Cast Sling Dirt'),
(3463, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 17498, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Wandering Barrens Giraffe - On Respawn - Cast Speed'),
(3466, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 17498, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Zhevra Courser - On Respawn - Cast Speed'),
(3471, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Tinkerer Sniggles - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3473, 0, 0, 0, 0, 0, 100, 0, 7000, 15000, 10000, 18000, 0, 0, 11, 6254, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Owatanka - In Combat - Cast Chained Bolt'),
(5828, 0, 0, 0, 9, 0, 100, 0, 0, 0, 6000, 14000, 0, 5, 11, 3247, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Humar the Pridelord - Within 0-5 Range - Cast Agonizing Pain'),
(5828, 0, 1, 2, 2, 0, 100, 1, 0, 25, 0, 0, 0, 0, 39, 75, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Humar the Pridelord - Between 0-25% Health - Call For Help'), -- https://www.youtube.com/watch?v=ofv1U_gRhEY
(5828, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Humar the Pridelord - On Call For Help - Say Line 0'),
(5829, 0, 0, 0, 0, 0, 100, 0, 3000, 5000, 7000, 11000, 0, 0, 11, 7951, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Snort the Heckler - In Combat - Cast Toxic Spit'),
(5829, 0, 1, 0, 9, 0, 100, 0, 0, 0, 15000, 21000, 0, 5, 11, 3604, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Snort the Heckler - Within 0-5 Range - Cast Tendon Rip'),
(5830, 0, 0, 0, 0, 0, 100, 0, 1000, 3000, 14000, 21000, 0, 0, 11, 6728, 64, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,    'Sister Rathtalon - Within 0-30 Range - Cast Enveloping Winds'),
(5830, 0, 1, 0, 9, 0, 100, 0, 0, 0, 9000, 15000, 0, 5, 11, 6982, 64, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Sister Rathtalon - Within 0-5 Range - Cast Gust of Wind'),
(5830, 0, 2, 0, 0, 0, 100, 0, 11000, 16000, 25000, 35000, 0, 0, 11, 6535, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Sister Rathtalon - In Combat - Cast Lightning Cloud'),
(5830, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Sister Rathtalon - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5831, 0, 0, 0, 0, 0, 100, 0, 3000, 7000, 7000, 15000, 0, 0, 11, 6016, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Swiftmane - Within 0-5 Range - Cast Pierce Armor'),
(5831, 0, 1, 0, 25, 0, 100, 512, 0, 0, 0, 0, 0, 0, 53, 1, 5831, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Swiftmane - On Reset - Start Patrol Path 5831'),
(5831, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Swiftmane - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5834, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 13375, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Azzere the Skyblade - In Combat - Cast Fireball'),
(5834, 0, 1, 0, 0, 0, 80, 0, 4000, 9000, 22000, 29000, 0, 0, 11, 6725, 65, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Azzere the Skyblade - In Combat - Cast Flame Spike'),
(5835, 0, 0, 0, 9, 0, 100, 0, 0, 0, 7000, 11000, 0, 5, 11, 9080, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Foreman Grills - Within 0-5 Range - Cast Hamstring'),
(5836, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7979, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Engineer Whirleygig - On Aggro - Cast Compact Harvest Reaper'),
(5836, 0, 1, 0, 0, 0, 100, 0, 5000, 16000, 25000, 31000, 0, 0, 11, 8209, 64, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Engineer Whirleygig - In Combat - Cast Explosive Sheep'),
(5838, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Brokespear - Outside 30 Range - Start Combat Movement'),
(5838, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Brokespear - Within 5-30 Range - Stop Combat Movement'),
(5838, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Brokespear - Within 0-5 Range - Start Combat Movement'),
(5838, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 10277, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Brokespear - Within 5-30 Range - Cast Throw'),
(5838, 0, 4, 0, 0, 0, 100, 0, 6000, 12000, 9000, 15000, 0, 0, 11, 7992, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Brokespear - In Combat - Cast Slowing Poison'),
(5838, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Brokespear - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5841, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7164, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Rocklance - On Aggro - Cast Defensive Stance'),
(5841, 0, 1, 0, 9, 0, 100, 0, 0, 0, 12000, 17000, 0, 5, 11, 15496, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Rocklance - Within 0-5 Range - Cast Cleave'),
(5841, 0, 2, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 11971, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Rocklance - Within 0-5 Range - Cast Sunder Armor'),
(5841, 0, 3, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 70, 500, 0, 0, 0, 0, 0, 10, 14007, 0, 0, 0, 0, 0, 0, 0,               'Rocklance - On Respawn - Respawn Formation Member 14007'),
(5841, 0, 4, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 70, 500, 0, 0, 0, 0, 0, 10, 20588, 0, 0, 0, 0, 0, 0, 0,               'Rocklance - On Respawn - Respawn Formation Member 20588'),
(5842, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Takk the Leaper - On Aggro - Cast Rushing Charge'),
(5847, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Heggin Stonewhisker - Outside 30 Range - Start Combat Movement'),
(5847, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Heggin Stonewhisker - Within 5-30 Range - Stop Combat Movement'),
(5847, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Heggin Stonewhisker - Within 0-5 Range - Start Combat Movement'),
(5847, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Heggin Stonewhisker - Within 5-30 Range - Cast Shoot'),
(5847, 0, 4, 0, 0, 0, 100, 0, 6000, 12000, 9000, 14000, 0, 0, 11, 6979, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Heggin Stonewhisker - Within 0-30 Range - Cast Fire Shot'),
(5847, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Heggin Stonewhisker - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5848, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 5242, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Malgin Barleybrew - On Aggro - Cast Battle Shout'),
(5849, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Digger Flameforge - Outside 30 Range - Start Combat Movement'),
(5849, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Digger Flameforge - Within 5-30 Range - Stop Combat Movement'),
(5849, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Digger Flameforge - Within 0-5 Range - Start Combat Movement'),
(5849, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 7978, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Digger Flameforge - Within 5-30 Range - Cast Throw Dynamite'),
(5849, 0, 4, 0, 0, 0, 100, 0, 0, 0, 9000, 14000, 0, 5, 11, 6253, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Digger Flameforge - Within 0-5 Range - Cast Backhand'),
(5849, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Digger Flameforge - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5851, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7164, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Captain Gerogg Hammertoe - On Aggro - Cast Defensive Stance'),
(5851, 0, 1, 0, 105, 0, 100, 0, 0, 0, 11000, 13000, 0, 5, 11, 11972, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Captain Gerogg Hammertoe - Target Casting - Cast Shield Bash'),
(5851, 0, 2, 0, 2, 0, 100, 1, 0, 30, 30000, 40000, 0, 0, 11, 15062, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Captain Gerogg Hammertoe - Between 0-30% Health - Cast Shield Wall'),
(5851, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Captain Gerogg Hammertoe - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5859, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7165, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Hagg Taurenbane - On Respawn - Cast Battle Stance'),
(5859, 0, 1, 0, 9, 0, 100, 0, 0, 0, 9000, 15000, 0, 5, 11, 9080, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Hagg Taurenbane - Within 0-5 Range - Cast Hamstring'),
(5863, 0, 0, 0, 2, 0, 70, 0, 0, 60, 12500, 12500, 0, 0, 11, 600, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Geopriest Gukk\'rok - Between 0-60% Health - Cast Power Word: Shield'),
(5863, 0, 1, 0, 2, 0, 70, 0, 0, 45, 7500, 7500, 0, 0, 11, 6075, 64, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Geopriest Gukk\'rok - Between 0-45% Health - Cast Renew'),
(5863, 0, 2, 0, 2, 0, 70, 0, 0, 20, 27500, 27500, 0, 0, 11, 2054, 64, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Geopriest Gukk\'rok - Between 0-20% Health - Cast Heal'),
(5863, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Geopriest Gukk\'rok - Between 0-15% Health - Flee For Assist (No Repeat)'),
(5865, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8210, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Dishu - On Aggro - Cast Savannah Cubs'),
(6494, 0, 0, 0, 9, 0, 100, 0, 0, 0, 6000, 10000, 0, 5, 11, 6253, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Tazan - Within 0-5 Range - Cast Backhand'),
(6494, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Tazan - Between 0-15% Health - Flee For Assist (No Repeat)'),
(7872, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9613, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Deaths Head Cultist - In Combat - Cast Shadow Bolt'),
(7872, 0, 1, 0, 0, 0, 100, 0, 9000, 13000, 8000, 13000, 0, 0, 11, 11433, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Deaths Head Cultist - In Combat - Cast Death & Decay'),
(7872, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Deaths Head Cultist - Between 0-15% Health - Flee For Assist (No Repeat)'),
(7873, 0, 0, 0, 0, 0, 100, 0, 7000, 12000, 9000, 15000, 0, 0, 11, 11430, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Razorfen Battleguard - Within 0-5 Range - Cast Slam'),
(7873, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Razorfen Battleguard - Between 0-15% Health - Flee For Assist (No Repeat)'),
(7874, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7966, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Razorfen Thornweaver - On Aggro - Cast Thorns Aura'),
(7874, 0, 1, 0, 2, 0, 100, 1, 0, 25, 0, 0, 0, 0, 11, 11431, 65, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Razorfen Thornweaver - Between 0-25% Health - Cast Healing Touch (No Repeat)'),
(7874, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Razorfen Thornweaver - Between 0-15% Health - Flee For Assist (No Repeat)'),
(9336, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Boss Copperplug - Outside 30 Range - Start Combat Movement'),
(9336, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Boss Copperplug - Within 5-30 Range - Stop Combat Movement'),
(9336, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Boss Copperplug - Within 0-5 Range - Start Combat Movement'),
(9336, 0, 3, 0, 9, 0, 100, 0, 0, 0, 1000, 3000, 5, 30, 11, 9143, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Boss Copperplug - In Combat - Cast Bomb'),
(9336, 0, 4, 0, 0, 0, 100, 0, 5000, 10000, 15000, 35000, 0, 0, 11, 6533, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Boss Copperplug - In Combat - Cast Net'),
(9336, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Boss Copperplug - Between 0-15% Health - Flee For Assist (No Repeat)'),
(12865, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9613, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Ambassador Malcin - Combat - Cast Shadow Bolt'),
(12865, 0, 1, 0, 0, 0, 100, 0, 5000, 9000, 15000, 25000, 0, 0, 11, 8282, 96, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Ambassador Malcin - Combat - Cast Curse of Blood');

DELETE FROM `creature_text` WHERE `CreatureID` IN (3279, 5828);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(3279, 0, 0, 'A fine trophy your head will make, $R.',                   12, 0, 100, 0, 0, 0, 2229, 0, 'Witchwing Ambusher'),
(3279, 0, 1, 'My talons will shred your puny body, $R',                  12, 0, 100, 0, 0, 0, 2230, 0, 'Witchwing Ambusher'),
(3279, 0, 2, 'You will be easy prey, $C.',                               12, 0, 100, 0, 0, 0, 2231, 0, 'Witchwing Ambusher'),
(5828, 0, 0, '%s lets out a tremendous roar, alterting nearby enemies!', 16, 0, 100, 0, 0, 0, 2107, 0, 'Humar the Pridelord');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceEntry` = 0 AND `ConditionTypeOrReference` = 7 AND `SourceGroup` IN (2783, 4206, 4350);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES 
(15, 2783, 0, 7, 164, 50, 'Show menu if blacksmithing is 50 or higher'),  -- Traugh <Expert Blacksmith>
(15, 4206, 0, 7, 165, 50, 'Show menu if leatherworking is 50 or higher'), -- Krulmoo Fullmoon <Expert Leatherworker>
(15, 4350, 0, 7, 197, 50, 'Show menu if tailoring is 50 or higher');      -- Mahani <Expert Tailor>


-- Vile Familiars (Warlock)
DELETE FROM `creature_questender` WHERE `id` = 5765 AND `quest` = 1485;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (5765, 1485);


UPDATE `creature_template` SET `subname` = 'Blacksmithing Supplier'   WHERE `entry` = 3477;-- Hraq <Blacksmithing Supplier>
UPDATE `creature_template` SET `subname` = 'Expert Blacksmith'        WHERE `entry` = 3478; -- Traugh <Expert Blacksmith>
UPDATE `creature_template` SET `subname` = 'Journeyman Tailor'        WHERE `entry` = 3484; -- Kil'hala <Journeyman Tailor>
UPDATE `creature_template` SET `subname` = 'Reagents and Herbs'       WHERE `entry` = 3490; -- Hula'mahi <Reagents and Herbs>
UPDATE `creature_template` SET `subname` = 'Journeyman Engineer'      WHERE `entry` = 3494;-- Tinkerwiz <Journeyman Engineer>
UPDATE `creature_template` SET `subname` = 'Engineering Goods'        WHERE `entry` = 3495;-- Gagsprocket <Engineering Goods>
UPDATE `creature_template` SET `subname` = 'Expert Leatherworker'     WHERE `entry` = 3703;-- Krulmoo Fullmoon <Expert Leatherworker>
UPDATE `creature_template` SET `subname` = 'Expert Tailor'            WHERE `entry` = 3704;-- Mahani <Expert Tailor>
UPDATE `creature_template` SET `subname` = 'Journeyman Leatherworker' WHERE `entry` = 5784;-- Waldor <Journeyman Leatherworker>
UPDATE `creature_template` SET `subname` = 'Skinner'                  WHERE `entry` = 6387;-- Dranh <Skinner>
UPDATE `creature_template` SET `subname` = 'Master Goblin Engineer'   WHERE `entry` = 8738;-- Vazario Linkgrease <Master Goblin Engineer>

UPDATE `creature_template` SET `minlevel` = 15, `maxlevel` = 17 WHERE `entry` = 3634;  -- Deviate Stalker
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` = 3615;  -- Devrak <Wind Rider Master>
UPDATE `creature_template` SET `minlevel` = 19, `maxlevel` = 19 WHERE `entry` = 3652;  -- Trigore the Lasher
UPDATE `creature_template` SET `minlevel` = 20, `maxlevel` = 20 WHERE `entry` = 3672;  -- Boahn <Druid of the Fang>
UPDATE `creature_template` SET `minlevel` = 40, `maxlevel` = 40 WHERE `entry` = 4380;  -- Darkmist Widow
UPDATE `creature_template` SET `minlevel` = 25, `maxlevel` = 25 WHERE `entry` = 5797;  -- Aean Swiftriver <Alliance Outrunner>
UPDATE `creature_template` SET `minlevel` = 24, `maxlevel` = 24 WHERE `entry` = 5800;  -- Marcus Bel <Alliance Outrunner>
UPDATE `creature_template` SET `minlevel` = 19, `maxlevel` = 19 WHERE `entry` = 5835;  -- Foreman Grills
UPDATE `creature_template` SET `minlevel` = 15, `maxlevel` = 15 WHERE `entry` = 8236;  -- Muck Frenzy
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` = 10378; -- Omusa Thunderhorn <Wind Rider Master>
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` = 14717; -- Horde Elite
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` = 16227; -- Bragok <Flight Master>

UPDATE `creature_template` SET `rank` = 1 WHERE `entry` IN (
3630,   -- Deviate Coiler
3631,   -- Deviate Stinglash
3632,   -- Deviate Creeper
3633,   -- Deviate Slayer
3634,   -- Deviate Stalker
3638,   -- Devouring Ectoplasm
3641,   -- Deviate Lurker
6132,   -- Razorfen Servitor
7872,   -- Death's Head Cultist
7873,   -- Razorfen Battleguard
7874,   -- Razorfen Thornweaver
12865   -- Ambassador Malcin
); 

UPDATE `creature_template` SET `rank` = 2 WHERE `entry` IN (
3652, -- Trigore the Lasher
3672, -- Boahn <Druid of the Fang>
7895  -- Ambassador Bloodrage
);

UPDATE `creature_template` SET `rank` = 4      WHERE `entry` = 4380; -- Darkmist Widow
UPDATE `creature_template` SET `faction` = 16  WHERE `entry` = 3503; -- Silithid Protector
UPDATE `creature_template` SET `gossip_menu_id` = 0, `npcflag` = 2 WHERE `entry` = 3443; -- Grub
UPDATE `creature_template_model` SET `CreatureDisplayID` = 4244    WHERE `CreatureID` = 3465;-- Gilthares Firebough

DELETE FROM `npc_trainer` WHERE `ID` IN (3478, 3484, 3494, 3703, 3704, 5784, 6387, 8306, 8738);
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES 
(3478, -310000), -- Traugh <Expert Blacksmith>
(3478, -310001), -- Traugh <Expert Blacksmith>
(3484, -410000), -- Kil'hala <Journeyman Tailor>
(3494, -340000), -- Tinkerwiz <Journeyman Engineer>
(3703, -380000), -- Krulmoo Fullmoon <Expert Leatherworker>
(3703, -380001), -- Krulmoo Fullmoon <Expert Leatherworker>
(3704, -410000), -- Mahani <Expert Tailor>
(3704, -410001), -- Mahani <Expert Tailor>
(5784, -380000), -- Waldor <Journeyman Leatherworker>
(6387, -400000), -- Dranh <Skinner>
(8306, -320000); -- Duhng <Cook>


-- this should go to vanilla_vendors
DELETE FROM `npc_vendor` WHERE `entry` = 3443;                                     -- Grub
DELETE FROM `npc_vendor` WHERE `entry` = 3482 AND `item` = 39354;                  -- Tari'qa <Trade Supplies>
DELETE FROM `npc_vendor` WHERE `entry` = 3485 AND `item` = 38426;                  -- Wrahk <Tailoring Supplies>
DELETE FROM `npc_vendor` WHERE `entry` = 3495 AND `item` IN (14639, 39684, 40533); -- Gagsprocket <Engineering Goods>
DELETE FROM `npc_vendor` WHERE `entry` = 3499 AND `item` IN (20855, 39354);        -- Ranik <Trade Supplies>
DELETE FROM `npc_vendor` WHERE `entry` = 5783 AND `item` = 38426;                  -- Kalldan Felmoon <Specialist Leatherworking Supplies>
DELETE FROM `npc_vendor` WHERE `entry` = 5944 AND `item` = 38426;                  -- Yonada <Tailoring & Leatherworking Supplies>
DELETE FROM `npc_vendor` WHERE `entry` = 8307 AND `item` = 30817;                  -- Tarban Hearthgrain <Baker>
DELETE FROM `npc_vendor` WHERE `entry` = 14754 AND `item` = 30498;                 -- Kelm Hargunth <Warsong Supply Officer>

-- Hula'mahi <Reagents and Herbs>
DELETE FROM `npc_vendor` WHERE `entry`=3490 AND `item` IN (21835, 21927, 22053, 22054, 22055, 22147, 22148, 37201, 43230, 43231, 43232, 43233, 43234, 43235, 43237);
DELETE FROM `npc_vendor` WHERE `entry`=3490 AND `item`=8925;
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES (3490, 8925);

-- The Angry Scytheclaws
DELETE FROM `quest_offer_reward` WHERE `ID` = 905;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `RewardText`) VALUES 
(905, 1, 'So you\'ve been to the nests and placed the feathers of your prey within them. That took a fair portion of courage, no doubt about it.$B$B
 Do you feel a little tougher, $N? Because you look tougher now then when you first came here. I guess the Barrens is doing its job.');

-- Miner's Fortune quest
UPDATE `quest_template_locale` SET `Details` = 'Als Werftmeister eines so geschäftigen Hafens wie Ratchet habe ich mein Ohr immer am Puls der Zeit. Ich weiß alles über den Verkehr von Waren und Geld zwischen hier und Booty Bay. Die jüngste Neuigkeit, die ich erfahren habe, betrifft die Felsadermine der Venture Company nordöstlich des Schlickermoores. Einer der Minenarbeiter hat dort einen faustgroßen Smaragd gefunden. Ich kenne ein paar Käufer, die sich die Finger nach so etwas ablecken würden... und ich würde bei einem Verkauf Halbe-Halbe machen.', `CompletedText` = 'Bringt Katzenaugensmaragd zu Werftmeister Dizzywig.', `Objectives` = 'Beschafft Euch von einem der Vorarbeiter oder Vollstrecker der Venture Company den Katzenaugensmaragd und bringt ihn zu Dizzywig.' WHERE `ID` = 896 AND `locale` = 'deDE';
UPDATE `quest_template_locale` SET `Details` = 'Como maestro de los muelles de un puerto tan activo como Trinquete, estoy al tanto de cualquier información. Lo sé todo del intercambio de mercancía y dinero entre este lugar y Bahía del Botín. Lo último que he oído es sobre Mina Pedrusco de Ventura y Cía. al noreste de El Fangal. Uno de los mineros descubrió una esmeralda del tamaño de tu puño. Sé de unos cuantos compradores que estarían interesados en ponerle las manos encima y no me importaría ir a medias en la venta.', `CompletedText` = 'Llévale la esmeralda el maestro de muelle.', `Objectives` = 'Recupera la esmeralda de ojo felino de un vigía de Ventura y Cía. o de uno de sus gorilas para Vertipeluca, el maestro de muelles, en Trinquete.' WHERE `ID` = 896 AND `locale` = 'esES';
UPDATE `quest_template_locale` SET `Details` = 'Como maestro de los muelles de un puerto tan activo como Trinquete, estoy al tanto de cualquier información. Lo sé todo del intercambio de mercancía y dinero entre este lugar y Bahía del Botín. Lo último que he oído es sobre Mina Pedrusco de Ventura y Cía. al noreste de El Fangal. Uno de los mineros descubrió una esmeralda del tamaño de tu puño. Sé de unos cuantos compradores que estarían interesados en ponerle las manos encima y no me importaría ir a medias en la venta.', `CompletedText` = 'Llévale la esmeralda el maestro de muelle.', `Objectives` = 'Recupera la esmeralda de ojo felino de un vigía de Ventura y Cía. o de uno de sus gorilas para Vertipeluca, el maestro de muelles, en Trinquete.' WHERE `ID` = 896 AND `locale` = 'esMX';
UPDATE `quest_template_locale` SET `Details` = 'Etant Maître des quais d''un port plein d''activité comme Ratchet, je prends toujours le pouls de l''information. Je sais tout des échanges de biens et d''argent entre ici et Baie-du-Butin. La dernière nouvelle que j''ai entendue concerne la mine des Pierriers de la KapitalRisk, au nord-est de la Videfange. L''un des mineurs y a découvert une émeraude aussi grosse que votre poing. Je connais quelques acheteurs qui voudraient mettre la main sur un tel joyau, et je suis prêt à faire 50-50.', `CompletedText` = 'Apportez l''Emeraude au Maître des quais Dizzywig.', `Objectives` = 'Prendre l''Emeraude oeil-de-chat à l''un des Surveillants ou l''un des Massacreurs de la KapitalRisk pour le Maître des quais Dizzywig.' WHERE `ID` = 896 AND `locale` = 'frFR';
    
-- Call of Water (Shaman)
DELETE FROM `quest_request_items` WHERE `ID` = 63;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `CompletionText`) VALUES 
(63, 1, 'The brazier still reflects the ambient light from the area, and the flame shifts slightly as you move closer.$B$B
 The corruption along the hills seems to have kept its distance, and besides the missing components, the brazier looks prepared for the ritual to summon a cleansed manifestation of water.');

-- Hamuul Runetotem
DELETE FROM `quest_request_items` WHERE `ID` = 1489;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `CompletionText`) VALUES (1489, 1, NULL);

UPDATE `quest_template` SET `LogDescription` = 'Bring the Shard of Water to Islen Waterseer in the Barrens.'       WHERE `ID` = 96;   -- Call of Water (Shaman)
UPDATE `quest_template` SET `LogDescription` = 'Bring the Vial of Purest Water to Islen Waterseer in the Barrens.' WHERE `ID` = 220;  -- Call of Water (Shaman)
UPDATE `quest_template` SET `LogDescription` = 'Speak with Ziz Fizziks in Windshear Crag.'                         WHERE `ID` = 1483; -- Ziz Fizziks
UPDATE `quest_template` SET `LogDescription` = 'Find Brine in Southern Barrens.'                                   WHERE `ID` = 1530; -- Call of Water (Shaman)
UPDATE `quest_template` SET `LogDescription` = 'Speak with Mura Runetotem in the Sepulcher.'                       WHERE `ID` = 3301; -- Mura Runetotem

UPDATE `quest_template_addon` SET `PrevQuestID` = 882  WHERE `ID` = 1130; -- Melor Sends Word
UPDATE `quest_template_addon` SET `PrevQuestID` = 1799 WHERE `ID` = 4962; -- Shard of a Felhound (Warlock)
UPDATE `quest_template_addon` SET `PrevQuestID` = 1799 WHERE `ID` = 4963; -- Shard of an Infernal (Warlock)
UPDATE `quest_template_addon` SET `PrevQuestID` = 4962 WHERE `ID` = 4964; -- The Completed Orb of Dar Orahil (Warlock)
UPDATE `quest_template_addon` SET `PrevQuestID` = 4963 WHERE `ID` = 4975; -- The Completed Orb of Noh Orahil (Warlock)
UPDATE `quest_template_addon` SET `PrevQuestID` = 871  WHERE `ID` = 5041; -- Supplies for the Crossroads


/* fix waypoints, respawn times and spawn locations */

UPDATE `creature` SET `MovementType` = 2, `currentwaypoint` = 1 WHERE `guid` = 15085; -- Isha Iwak, waypoints

DELETE FROM `creature` WHERE `id1` IN (3392, 3434, 3435, 3436, 3472, 3474, 5830, 5834, 5835);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, 
`spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
--
(13984,  3392, 0, 0, 1, 0, 0, 1, 1, 1, -4181.31, -2184.33, 50.2665, 0.292325, 240, 5, 0, 600, 618, 1, 0, 0, 0, '', 0, 0, NULL),  -- Prospector Khazgorm
(695061, 3392, 0, 0, 1, 0, 0, 1, 1, 1, -4212.91, -2274.4, 50.3081, 3.14864, 240, 5, 0, 600, 618, 1, 0, 0, 0, '', 0, 0, NULL),
(695062, 3392, 0, 0, 1, 0, 0, 1, 1, 1, -4212.91, -2274.4, 50.3081, 3.14864, 240, 5, 0, 600, 618, 1, 0, 0, 0, '', 0, 0, NULL),
(695063, 3392, 0, 0, 1, 0, 0, 1, 1, 1, -4212.91, -2274.4, 50.3081, 3.14864, 240, 5, 0, 600, 618, 1, 0, 0, 0, '', 0, 0, NULL),
--
(14365, 3434, 0, 0, 1, 0, 0, 1, 1, 1, -4001.8, -1816.72, 92.5149, 6.09076, 413, 0, 1, 544, 581, 2, 0, 0, 0, '', 0, 0, NULL),     -- Nak
(14367, 3435, 0, 0, 1, 0, 0, 1, 1, 1, -3829.2, -1445.56, 134.164, 5.78225, 413, 0, 0, 713, 0, 0, 0, 0, 0, '', 0, 0, NULL),       -- Lok Orcbane
(14383, 3436, 0, 0, 1, 0, 0, 1, 1, 1, -3814.72, -1955.13, 94.3856, 1.31559, 413, 0, 1, 864, 1272, 2, 0, 0, 0, '', 0, 0, NULL),   -- Kuz
--
(15081,  3472, 0, 0, 1, 0, 0, 1, 1, 0, -3849.84, -1749.75, 93.9752, 3.5057, 413, 25, 0, 713, 0, 1, 0, 0, 0, '', 0, 0, NULL),     -- Washte Pawne
(695064, 3472, 0, 0, 1, 0, 0, 1, 1, 0, -3716.85, -1917.62, 91.7601, 5.45846, 413, 40, 0, 713, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(695065, 3472, 0, 0, 1, 0, 0, 1, 1, 0, -3449.93, -1917.6, 95.3047, 1.55917, 413, 40, 0, 713, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(695066, 3472, 0, 0, 1, 0, 0, 1, 1, 0, -3783.51, -2184.35, 93.8253, 0.88517, 413, 40, 0, 713, 0, 1, 0, 0, 0, '', 0, 0, NULL),
--
(15083,  3474, 0, 0, 1, 0, 0, 1, 1, 0, -1837.25, -2188.44, 94.937, 0.149199, 413, 0, 1, 573, 0, 2, 0, 0, 0, '', 0, 0, NULL),     -- Lakota'Mani
(695067, 3474, 0, 0, 1, 0, 0, 1, 1, 0, -1950.41, -1950, 92.8021, 5.44543, 413, 5, 0, 573, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(695068, 3474, 0, 0, 1, 0, 0, 1, 1, 0, -1981.59, -2452.46, 93.3982, 3.92699, 413, 5, 0, 573, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(695069, 3474, 0, 0, 1, 0, 0, 1, 1, 0, -1716.92, -2051.57, 91.8555, 0.872665, 413, 5, 0, 573, 0, 1, 0, 0, 0, '', 0, 0, NULL),
--
(20429, 5830, 0, 0, 1, 0, 0, 1, 1, 0, 460.698, -1444.19, 91.7917, 1.27938, 19800, 0, 1, 1212, 1368, 2, 0, 0, 0, '', 0, 0, NULL), -- Sister Rathtalon
(51813, 5834, 0, 0, 1, 0, 0, 1, 1, 0, -2718.01, -1919.48, 92.3914, 5.83035, 14400, 0, 1, 622, 982, 2, 0, 0, 0, '', 0, 0, NULL),  -- Azzere the Skyblade
(51808, 5835, 0, 0, 1, 0, 0, 1, 1, 1, 1058.87, -3079.53, 91.7453, 4.64184, 14400, 0, 1, 314, 0, 2, 0, 0, 0, '', 0, 0, NULL);     -- Foreman Grills

DELETE FROM `pool_creature` WHERE `pool_entry` IN (601036, 601037, 601038);
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
--
(13984,  601036, 0, 'Prospector Khazgorm'),
(695061, 601036, 0, 'Prospector Khazgorm'),
(695062, 601036, 0, 'Prospector Khazgorm'),
(695063, 601036, 0, 'Prospector Khazgorm'),
--
(15081,  601037, 0, 'Washte Pawne'),
(695064, 601037, 0, 'Washte Pawne'),
(695065, 601037, 0, 'Washte Pawne'),
(695066, 601037, 0, 'Washte Pawne'),
--
(15083,  601038, 0, 'Lakota\'Mani'),
(695067, 601038, 0, 'Lakota\'Mani'),
(695068, 601038, 0, 'Lakota\'Mani'),
(695069, 601038, 0, 'Lakota\'Mani');

DELETE FROM `pool_template` WHERE `entry` IN (601036, 601037, 601038);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES 
(601036, 1, 'Prospector Khazgorm - Barrens'),
(601037, 1, 'Washte Pawne - Barrens'),
(601038, 1, 'Lakota Mani - Barrens');

DELETE FROM `creature_addon` WHERE `guid` IN (14365, 14383, 15085, 20429, 51808, 51813);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(14365, 143650, 0, 0, 1, 0, 0, NULL),
(14383, 143830, 0, 0, 1, 0, 0, NULL),
(15085, 150850, 0, 0, 0, 0, 0, NULL),
(20429, 204290, 0, 0, 1, 0, 0, NULL),
(51808, 518080, 0, 0, 1, 0, 0, NULL),
(51813, 518130, 0, 0, 1, 0, 0, NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (143650, 143830, 150850, 204290, 518080, 518130);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
--
(143650, 1, -4012.59, -1810.81, 92.8317, NULL, 0, 0, 0, 100, 0),
(143650, 2, -4025.43, -1808.82, 94.3014, NULL, 0, 0, 0, 100, 0),
(143650, 3, -4036.67, -1809.31, 95.5717, NULL, 0, 0, 0, 100, 0),
(143650, 4, -4049.4, -1816.42, 94.7017, NULL, 0, 0, 0, 100, 0),
(143650, 5, -4061.57, -1827.58, 94.3175, NULL, 0, 0, 0, 100, 0),
(143650, 6, -4074.88, -1840.71, 93.8161, NULL, 0, 0, 0, 100, 0),
(143650, 7, -4081.24, -1848.95, 92.5623, NULL, 0, 0, 0, 100, 0),
(143650, 8, -4090.88, -1868.94, 92.18, NULL, 0, 0, 0, 100, 0),
(143650, 9, -4088.95, -1888.37, 92.9908, NULL, 0, 0, 0, 100, 0),
(143650, 10, -4079.68, -1900.12, 93.6059, NULL, 0, 0, 0, 100, 0),
(143650, 11, -4062.4, -1899.76, 91.8249, NULL, 0, 0, 0, 100, 0),
(143650, 12, -4046.45, -1889.04, 91.668, NULL, 0, 0, 0, 100, 0),
(143650, 13, -4032.81, -1878.88, 91.668, NULL, 0, 0, 0, 100, 0),
(143650, 14, -4017.37, -1867.06, 91.6675, NULL, 0, 0, 0, 100, 0),
(143650, 15, -4003.21, -1853.48, 91.9056, NULL, 0, 0, 0, 100, 0),
(143650, 16, -3997.67, -1842.26, 93.5669, NULL, 0, 0, 0, 100, 0),
(143650, 17, -3996.54, -1825.76, 93.1474, NULL, 0, 0, 0, 100, 0),
(143650, 18, -4004.03, -1814.4, 92.3789, NULL, 0, 0, 0, 100, 0),
--
(143830, 1, -3797.26, -1949.7, 94.8798, NULL, 0, 0, 0, 100, 0),
(143830, 2, -3774.34, -1943.45, 95.1557, NULL, 0, 0, 0, 100, 0),
(143830, 3, -3756.12, -1920.93, 92.6261, NULL, 0, 0, 0, 100, 0),
(143830, 4, -3749.41, -1900.69, 93.1372, NULL, 0, 0, 0, 100, 0),
(143830, 5, -3744.69, -1878.51, 92.1236, NULL, 0, 0, 0, 100, 0),
(143830, 6, -3738.33, -1856.9, 92.7672, NULL, 0, 0, 0, 100, 0),
(143830, 7, -3734.98, -1843.2, 94.2309, NULL, 0, 0, 0, 100, 0),
(143830, 8, -3730.26, -1821.5, 92.9794, NULL, 0, 0, 0, 100, 0),
(143830, 9, -3725.62, -1799.58, 91.6704, NULL, 0, 0, 0, 100, 0),
(143830, 10, -3731.18, -1782.6, 91.8254, NULL, 0, 0, 0, 100, 0),
(143830, 11, -3750.42, -1770.73, 93.039, NULL, 0, 0, 0, 100, 0),
(143830, 12, -3765.38, -1765.41, 94.6422, NULL, 0, 0, 0, 100, 0),
(143830, 13, -3783.77, -1763.73, 93.0782, NULL, 0, 0, 0, 100, 0),
(143830, 14, -3802.32, -1764.79, 91.8298, NULL, 0, 0, 0, 100, 0),
(143830, 15, -3816.88, -1768.73, 93.2129, NULL, 0, 0, 0, 100, 0),
(143830, 16, -3833.85, -1772.97, 94.0804, NULL, 0, 0, 0, 100, 0),
(143830, 17, -3848.28, -1777.73, 92.9392, NULL, 0, 0, 0, 100, 0),
(143830, 18, -3864.28, -1785.3, 91.667, NULL, 0, 0, 0, 100, 0),
(143830, 19, -3884.5, -1797.42, 91.9055, NULL, 0, 0, 0, 100, 0),
(143830, 20, -3896.05, -1815.8, 91.6671, NULL, 0, 0, 0, 100, 0),
(143830, 21, -3895.56, -1835.22, 91.7628, NULL, 0, 0, 0, 100, 0),
(143830, 22, -3891.44, -1848.93, 93.5678, NULL, 0, 0, 0, 100, 0),
(143830, 23, -3886.81, -1857.38, 94.3543, NULL, 0, 0, 0, 100, 0),
(143830, 24, -3883.24, -1866.03, 94.0712, NULL, 0, 0, 0, 100, 0),
(143830, 25, -3873.34, -1880.98, 93.5397, NULL, 0, 0, 0, 100, 0),
(143830, 26, -3863.73, -1897.22, 93.0921, NULL, 0, 0, 0, 100, 0),
(143830, 27, -3859.57, -1918.04, 93.1066, NULL, 0, 0, 0, 100, 0),
(143830, 28, -3852.57, -1943.15, 91.7095, NULL, 0, 0, 0, 100, 0),
(143830, 29, -3848.26, -1961.1, 92.2413, NULL, 0, 0, 0, 100, 0),
(143830, 30, -3834.72, -1967.38, 92.9835, NULL, 0, 0, 0, 100, 0),
(143830, 31, -3815.43, -1961.57, 94.2241, NULL, 0, 0, 0, 100, 0),
(143830, 32, -3804.81, -1954.99, 95.0912, NULL, 0, 0, 0, 100, 0),
--
(150850, 1, -2095.51, -3839.77, -8.44877, 3.89162, 0, 0, 0, 100, 0),
(150850, 2, -2124.57, -3884.88, -8.93047, 3.95838, 0, 0, 0, 100, 0),
(150850, 3, -2143.06, -3905.65, -5.59513, 3.73061, 0, 0, 0, 100, 0),
(150850, 4, -2098.32, -3843.23, -8.3569, 0.420159, 0, 0, 0, 100, 0),
(150850, 5, -2031.07, -3816.66, -7.61196, 0.176686, 0, 0, 0, 100, 0),
(150850, 6, -1983.99, -3817.63, -6.51678, 6.26352, 0, 0, 0, 100, 0),
(150850, 7, -1927.65, -3820.4, -7.03604, 6.00827, 0, 0, 0, 100, 0),
(150850, 8, -1841.68, -3853.46, -8.76674, 5.56845, 0, 0, 0, 100, 0),
(150850, 9, -1769.55, -3916.58, -3.45852, 5.54881, 0, 0, 0, 100, 0),
(150850, 10, -1706.63, -3984.47, -11.0261, 5.49383, 0, 0, 0, 100, 0),
(150850, 11, -1689.02, -4004.74, -11.9683, 0.34163, 0, 0, 0, 100, 0),
(150850, 12, -1706.23, -3985.33, -11.0817, 2.23836, 0, 0, 0, 100, 0),
(150850, 13, -1770.32, -3915.41, -3.42027, 2.20302, 0, 0, 0, 100, 0),
(150850, 14, -1842.09, -3852.96, -8.75947, 2.38759, 0, 0, 0, 100, 0),
(150850, 15, -1927.05, -3820.15, -6.89651, 3.0002, 0, 0, 0, 100, 0),
(150850, 16, -1983.51, -3817.7, -6.48647, 3.0434, 0, 0, 0, 100, 0),
(150850, 17, -1988.69, -3806.41, -6.63219, 0.209271, 0, 0, 0, 100, 0),
(150850, 18, -1957.92, -3802.99, -7.52336, 0.012921, 0, 0, 0, 100, 0),
(150850, 19, -1939.34, -3805.68, -8.62174, 6.14295, 0, 0, 0, 100, 0),
(150850, 20, -1921.93, -3811.41, -9.28382, 5.56962, 0, 0, 0, 100, 0),
(150850, 21, -1906.15, -3830.63, -13.0489, 5.6835, 0, 0, 0, 100, 0),
(150850, 22, -1888.56, -3838.84, -12.2911, 6.09583, 0, 0, 0, 100, 0),
(150850, 23, -1868.58, -3844.4, -10.2373, 5.98588, 0, 0, 0, 100, 0),
(150850, 24, -1845.02, -3855.67, -9.19782, 5.69528, 0, 0, 0, 100, 0),
(150850, 25, -1831, -3868.09, -8.70919, 5.56177, 0, 0, 0, 100, 0),
(150850, 26, -1809.97, -3888.14, -7.13697, 5.67565, 0, 0, 0, 100, 0),
(150850, 27, -1797.16, -3897.53, -5.66095, 5.63638, 0, 0, 0, 100, 0),
(150850, 28, -1776.29, -3912.29, -4.08113, 5.79739, 0, 0, 0, 100, 0),
(150850, 29, -1762.23, -3925.4, -4.12622, 5.35757, 0, 0, 0, 100, 0),
(150850, 30, -1752.5, -3938.4, -6.53609, 5.49501, 0, 0, 0, 100, 0),
(150850, 31, -1736.71, -3954.1, -8.31746, 5.54606, 0, 0, 0, 100, 0),
(150850, 32, -1716.86, -3973.18, -9.53567, 5.64816, 0, 0, 0, 100, 0),
(150850, 33, -1699.86, -3987.3, -10.1186, 5.65994, 0, 0, 0, 100, 0),
(150850, 34, -1680.99, -3996.29, -9.15326, 6.2804, 0, 0, 0, 100, 0),
(150850, 35, -1664.48, -3995.32, -5.35163, 0.358501, 0, 0, 0, 100, 0),
(150850, 36, -1648.15, -3991.01, -2.5677, 6.27648, 0, 0, 0, 100, 0),
(150850, 37, -1629.88, -3993.46, -0.54796, 5.872, 0, 0, 0, 100, 0),
(150850, 38, -1612.31, -4000.69, -1.71012, 5.95446, 0, 0, 0, 100, 0),
(150850, 39, -1590.87, -4004.68, -4.61104, 0.264251, 0, 0, 0, 100, 0),
(150850, 40, -1567.53, -4005.89, -5.74705, 6.09191, 0, 0, 0, 100, 0),
(150850, 41, -1550.19, -4008.35, -6.64515, 6.1783, 0, 0, 0, 100, 0),
(150850, 42, -1533.02, -4012.82, -9.08394, 6.08405, 0, 0, 0, 100, 0),
(150850, 43, -1515.92, -4019.65, -9.619, 5.45181, 0, 0, 0, 100, 0),
(150850, 44, -1501.34, -4032.98, -14.5417, 5.98588, 0, 0, 0, 100, 0),
(150850, 45, -1492.53, -4035.17, -14.5213, 0.115023, 0, 0, 0, 100, 0),
(150850, 46, -1474.78, -4034.21, -12.5431, 6.15081, 0, 0, 0, 100, 0),
(150850, 47, -1457.58, -4037.82, -11.7392, 0.244615, 0, 0, 0, 100, 0),
(150850, 48, -1445.84, -4033.53, -9.8652, 0.586263, 0, 0, 0, 100, 0),
(150850, 49, -1429.26, -4030.82, -8.81005, 5.77774, 0, 0, 0, 100, 0),
(150850, 50, -1415.6, -4031.97, -8.77204, 0.633386, 0, 0, 0, 100, 0),
(150850, 51, -1416.64, -4022.04, -7.71688, 2.65186, 0, 0, 0, 100, 0),
(150850, 52, -1428.36, -4019.95, -7.68141, 3.42548, 0, 0, 0, 100, 0),
(150850, 53, -1443.32, -4027.76, -8.84914, 3.63754, 0, 0, 0, 100, 0),
(150850, 54, -1456.44, -4033.64, -10.7559, 3.29589, 0, 0, 0, 100, 0),
(150850, 55, -1475.76, -4033.27, -12.8238, 2.56547, 0, 0, 0, 100, 0),
(150850, 56, -1479.02, -4028.51, -12.2142, 1.70938, 0, 0, 0, 100, 0),
(150850, 57, -1484.58, -4013.1, -8.62078, 2.28272, 0, 0, 0, 100, 0),
(150850, 58, -1492.42, -4008.65, -7.82732, 3.28803, 0, 0, 0, 100, 0),
(150850, 59, -1501.62, -4010.71, -7.58155, 3.42155, 0, 0, 0, 100, 0),
(150850, 60, -1516.8, -4015.76, -9.06612, 3.08383, 0, 0, 0, 100, 0),
(150850, 61, -1525.3, -4015.12, -9.02112, 2.86784, 0, 0, 0, 100, 0),
(150850, 62, -1535.88, -4012.24, -8.91662, 2.76967, 0, 0, 0, 100, 0),
(150850, 63, -1545.5, -4009.04, -7.35983, 2.71862, 0, 0, 0, 100, 0),
(150850, 64, -1560.37, -4004.73, -5.79875, 2.94638, 0, 0, 0, 100, 0),
(150850, 65, -1571.98, -4004.15, -5.39911, 3.15452, 0, 0, 0, 100, 0),
(150850, 66, -1582.35, -4004.64, -5.27648, 3.05241, 0, 0, 0, 100, 0),
(150850, 67, -1598.4, -4004.99, -3.7378, 3.58256, 0, 0, 0, 100, 0),
(150850, 68, -1604.08, -4008.17, -3.62498, 3.78676, 0, 0, 0, 100, 0),
(150850, 69, -1616.65, -4019.06, -3.01547, 3.57078, 0, 0, 0, 100, 0),
(150850, 70, -1668.96, -4034.45, -5.39624, 2.9346, 0, 0, 0, 100, 0),
(150850, 71, -1674.82, -4022.51, -8.60031, 2.31021, 0, 0, 0, 100, 0),
(150850, 72, -1680.27, -4012.14, -6.43822, 2.24345, 0, 0, 0, 100, 0),
(150850, 73, -1688.55, -4001.91, -11.1724, 2.25523, 0, 0, 0, 100, 0),
(150850, 74, -1695.87, -3994.98, -10.9748, 2.24345, 0, 0, 0, 100, 0),
(150850, 75, -1703.37, -3987.48, -10.8121, 2.23167, 0, 0, 0, 100, 0),
(150850, 76, -1710.59, -3979.31, -10.7182, 2.1924, 0, 0, 0, 100, 0),
(150850, 77, -1716.95, -3971.52, -9.1143, 2.18847, 0, 0, 0, 100, 0),
(150850, 78, -1727.51, -3961.53, -7.93517, 2.51442, 0, 0, 0, 100, 0),
(150850, 79, -1741.19, -3952.66, -8.68873, 2.53405, 0, 0, 0, 100, 0),
(150850, 80, -1749.94, -3945.65, -8.27237, 2.20026, 0, 0, 0, 100, 0),
(150850, 81, -1755.59, -3938.61, -6.49431, 2.09423, 0, 0, 0, 100, 0),
(150850, 82, -1760.89, -3930.35, -4.84141, 2.08245, 0, 0, 0, 100, 0),
(150850, 83, -1765.26, -3923.79, -3.93848, 2.1924, 0, 0, 0, 100, 0),
(150850, 84, -1772.33, -3915.05, -3.82365, 2.44766, 0, 0, 0, 100, 0),
(150850, 85, -1788.19, -3903.41, -4.84894, 2.3809, 0, 0, 0, 100, 0),
(150850, 86, -1796.29, -3895.8, -5.52288, 2.32985, 0, 0, 0, 100, 0),
(150850, 87, -1804.33, -3888.08, -6.31431, 2.32985, 0, 0, 0, 100, 0),
(150850, 88, -1812.36, -3880.36, -7.085, 2.32592, 0, 0, 0, 100, 0),
(150850, 89, -1812.36, -3880.36, -7.085, 2.32592, 0, 0, 0, 100, 0),
(150850, 90, -1828.22, -3864.83, -8.29894, 2.32592, 0, 0, 0, 100, 0),
(150850, 91, -1837.33, -3857.71, -8.70937, 2.53405, 0, 0, 0, 100, 0),
(150850, 92, -1840.31, -3855.98, -8.82793, 2.63615, 0, 0, 0, 100, 0),
(150850, 93, -1850.4, -3851.44, -9.33667, 2.69506, 0, 0, 0, 100, 0),
(150850, 94, -1860.6, -3847.19, -9.8448, 2.70684, 0, 0, 0, 100, 0),
(150850, 95, -1870.52, -3843.34, -10.2919, 2.7304, 0, 0, 0, 100, 0),
(150850, 96, -1880.69, -3840.2, -10.9911, 2.77752, 0, 0, 0, 100, 0),
(150850, 97, -1895.76, -3835.22, -13.09, 2.66757, 0, 0, 0, 100, 0),
(150850, 98, -1908.48, -3827.99, -12.6724, 2.12564, 0, 0, 0, 100, 0),
(150850, 99, -1913.88, -3821.25, -11.6992, 1.76436, 0, 0, 0, 100, 0),
(150850, 100, -1916.8, -3813.05, -10.2679, 1.97642, 0, 0, 0, 100, 0),
(150850, 101, -1924.3, -3802.87, -8.4678, 2.69898, 0, 0, 0, 100, 0),
(150850, 102, -1936.64, -3799.71, -7.68608, 3.01314, 0, 0, 0, 100, 0),
(150850, 103, -1948.94, -3799.91, -7.29064, 3.22127, 0, 0, 0, 100, 0),
(150850, 104, -1959.75, -3801.94, -7.26259, 3.28411, 0, 0, 0, 100, 0),
(150850, 105, -1970.41, -3804.35, -7.21816, 3.29196, 0, 0, 0, 100, 0),
(150850, 106, -1980.97, -3806.71, -7.01286, 3.28803, 0, 0, 0, 100, 0),
(150850, 107, -1991.48, -3808.49, -6.56038, 3.28411, 0, 0, 0, 100, 0),
(150850, 108, -2002.16, -3810.73, -7.105, 3.31159, 0, 0, 0, 100, 0),
(150850, 109, -2023.04, -3816.41, -7.78386, 3.26447, 0, 0, 0, 100, 0),
--
(204290, 1, 465.713, -1428.07, 91.7917, NULL, 0, 0, 0, 100, 0),
(204290, 2, 469.242, -1417.33, 91.7917, NULL, 0, 0, 0, 100, 0),
(204290, 3, 478.677, -1403.56, 91.7917, NULL, 0, 0, 0, 100, 0),
(204290, 4, 498.794, -1383.92, 91.7917, NULL, 0, 0, 0, 100, 0),
(204290, 5, 525.774, -1363.72, 91.7917, NULL, 0, 0, 0, 100, 0),
(204290, 6, 538.398, -1352.59, 91.7917, NULL, 0, 0, 0, 100, 0),
(204290, 7, 558.408, -1342.96, 91.8626, NULL, 0, 0, 0, 100, 0),
(204290, 8, 574.23, -1337.21, 92.9072, NULL, 0, 0, 0, 100, 0),
(204290, 9, 588.529, -1328.4, 92.374, NULL, 0, 0, 0, 100, 0),
(204290, 10, 598.79, -1324.08, 91.7916, NULL, 0, 0, 0, 100, 0),
(204290, 11, 620.453, -1317.82, 91.7916, NULL, 0, 0, 0, 100, 0),
(204290, 12, 641.094, -1308.88, 91.7916, NULL, 0, 0, 0, 100, 0),
(204290, 13, 662.557, -1302.55, 91.7916, NULL, 0, 0, 0, 100, 0),
(204290, 14, 684.783, -1302.54, 92.0172, NULL, 0, 0, 0, 100, 0),
(204290, 15, 711.77, -1309.03, 91.8397, NULL, 0, 0, 0, 100, 0),
(204290, 16, 737.839, -1319.77, 92.6553, NULL, 0, 0, 0, 100, 0),
(204290, 17, 747.805, -1325.03, 92.2649, NULL, 0, 0, 0, 100, 0),
(204290, 18, 759.627, -1342.39, 91.7288, NULL, 0, 0, 0, 100, 0),
(204290, 19, 759.171, -1358.64, 91.7288, NULL, 0, 0, 0, 100, 0),
(204290, 20, 749.284, -1371.92, 91.775, NULL, 0, 0, 0, 100, 0),
(204290, 21, 729.837, -1382.45, 91.7916, NULL, 0, 0, 0, 100, 0),
(204290, 22, 702.467, -1382.85, 91.7916, NULL, 0, 0, 0, 100, 0),
(204290, 23, 689.535, -1372.94, 91.7916, NULL, 0, 0, 0, 100, 0),
(204290, 24, 680.935, -1365.72, 91.7916, NULL, 0, 0, 0, 100, 0),
(204290, 25, 671.685, -1359.32, 91.7916, NULL, 0, 0, 0, 100, 0),
(204290, 26, 658.027, -1349.36, 91.7916, NULL, 0, 0, 0, 100, 0),
(204290, 27, 639.407, -1336.61, 91.7916, NULL, 0, 0, 0, 100, 0),
(204290, 28, 632.091, -1328.38, 91.7916, NULL, 0, 0, 0, 100, 0),
(204290, 29, 626.192, -1318.8, 91.7916, NULL, 0, 0, 0, 100, 0),
(204290, 30, 618.241, -1303.92, 91.7917, NULL, 0, 0, 0, 100, 0),
(204290, 31, 608.706, -1289.95, 91.7917, NULL, 0, 0, 0, 100, 0),
(204290, 32, 593.049, -1273.82, 92.0271, NULL, 0, 0, 0, 100, 0),
(204290, 33, 580.057, -1263.05, 91.7916, NULL, 0, 0, 0, 100, 0),
(204290, 34, 563.193, -1257.17, 92.0107, NULL, 0, 0, 0, 100, 0),
(204290, 35, 552.012, -1255.82, 92.1687, NULL, 0, 0, 0, 100, 0),
(204290, 36, 540.931, -1254.41, 91.8372, NULL, 0, 0, 0, 100, 0),
(204290, 37, 531.054, -1256.71, 91.7916, NULL, 0, 0, 0, 100, 0),
(204290, 38, 514.352, -1279.21, 91.7916, NULL, 0, 0, 0, 100, 0),
(204290, 39, 510.394, -1300.55, 91.7916, NULL, 0, 0, 0, 100, 0),
(204290, 40, 513.578, -1316.91, 91.7916, NULL, 0, 0, 0, 100, 0),
(204290, 41, 519.969, -1332.6, 91.7917, NULL, 0, 0, 0, 100, 0),
(204290, 42, 526.829, -1341.17, 91.7917, NULL, 0, 0, 0, 100, 0),
(204290, 43, 551.46, -1354.38, 91.7917, NULL, 0, 0, 0, 100, 0),
(204290, 44, 563.934, -1365.28, 91.7917, NULL, 0, 0, 0, 100, 0),
(204290, 45, 572.809, -1379.56, 91.7916, NULL, 0, 0, 0, 100, 0),
(204290, 46, 577.456, -1395.62, 92.9226, NULL, 0, 0, 0, 100, 0),
(204290, 47, 583.428, -1417.09, 91.8472, NULL, 0, 0, 0, 100, 0),
(204290, 48, 587.2, -1433.55, 91.7917, NULL, 0, 0, 0, 100, 0),
(204290, 49, 581.506, -1454.13, 92.2603, NULL, 0, 0, 0, 100, 0),
(204290, 50, 572.012, -1467.97, 92.8018, NULL, 0, 0, 0, 100, 0),
(204290, 51, 557.542, -1485.26, 91.8251, NULL, 0, 0, 0, 100, 0),
(204290, 52, 544.116, -1495.33, 92.3912, NULL, 0, 0, 0, 100, 0),
(204290, 53, 522.156, -1500.64, 94.362, NULL, 0, 0, 0, 100, 0),
(204290, 54, 494.491, -1496.82, 94.3223, NULL, 0, 0, 0, 100, 0),
(204290, 55, 477.172, -1482.98, 93.4401, NULL, 0, 0, 0, 100, 0),
(204290, 56, 468.193, -1468.93, 91.8209, NULL, 0, 0, 0, 100, 0),
(204290, 57, 461.437, -1447.66, 91.7917, NULL, 0, 0, 0, 100, 0),
--
(518080, 1, 1061.99, -3086.34, 105.125, NULL, 0, 0, 0, 100, 0),
(518080, 2, 1061.63, -3082.63, 105.125, NULL, 0, 0, 0, 100, 0),
(518080, 3, 1060.18, -3079.97, 105.125, NULL, 0, 0, 0, 100, 0),
(518080, 4, 1058.07, -3075.87, 105.501, NULL, 0, 0, 0, 100, 0),
(518080, 5, 1054.89, -3071.72, 105.125, NULL, 0, 0, 0, 100, 0),
(518080, 6, 1051.25, -3069.85, 105.125, NULL, 0, 0, 0, 100, 0),
(518080, 7, 1047.29, -3069.88, 105.289, NULL, 0, 0, 0, 100, 0),
(518080, 8, 1043.63, -3072.36, 105.72, NULL, 0, 0, 0, 100, 0),
(518080, 9, 1038.3, -3076.43, 105.328, NULL, 0, 0, 0, 100, 0),
(518080, 10, 1033.59, -3075.67, 105.125, NULL, 0, 0, 0, 100, 0),
(518080, 11, 1031.4, -3070.74, 105.125, NULL, 0, 0, 0, 100, 0),
(518080, 12, 1030.16, -3066.55, 105.089, NULL, 0, 0, 0, 100, 0),
(518080, 13, 1031.58, -3060.08, 102.155, NULL, 0, 0, 0, 100, 0),
(518080, 14, 1032.79, -3056.73, 100.41, NULL, 0, 0, 0, 100, 0),
(518080, 15, 1035.06, -3054.11, 98.9656, NULL, 0, 0, 0, 100, 0),
(518080, 16, 1039.28, -3052.89, 98.4566, NULL, 0, 0, 0, 100, 0),
(518080, 17, 1043.78, -3054.49, 96.88, NULL, 0, 0, 0, 100, 0),
(518080, 18, 1049.61, -3058.21, 93.9174, NULL, 0, 0, 0, 100, 0),
(518080, 19, 1053.44, -3062.93, 91.8125, NULL, 0, 0, 0, 100, 0),
(518080, 20, 1055.31, -3067.91, 91.7175, NULL, 0, 0, 0, 100, 0),
(518080, 21, 1057.02, -3073.87, 91.7479, NULL, 0, 0, 0, 100, 0),
(518080, 22, 1058.28, -3077.77, 91.7453, NULL, 0, 0, 0, 100, 0),
(518080, 23, 1059.49, -3082.52, 91.7453, NULL, 0, 0, 0, 100, 0),
(518080, 24, 1059.71, -3086.14, 91.7453, NULL, 0, 0, 0, 100, 0),
(518080, 25, 1054.99, -3091.56, 89.7105, NULL, 0, 0, 0, 100, 0),
(518080, 26, 1051.96, -3093.6, 87.6199, NULL, 0, 0, 0, 100, 0),
(518080, 27, 1047.68, -3095.38, 84.8705, NULL, 0, 0, 0, 100, 0),
(518080, 28, 1043.32, -3097.01, 82.0536, NULL, 0, 0, 0, 100, 0),
(518080, 29, 1039.55, -3097.98, 80.947, NULL, 0, 0, 0, 100, 0),
(518080, 30, 1032.46, -3100.74, 80.947, NULL, 0, 0, 0, 100, 0),
(518080, 31, 1028.6, -3104.47, 80.9988, NULL, 0, 0, 0, 100, 0),
(518080, 32, 1025.1, -3106.79, 80.9988, NULL, 0, 0, 0, 100, 0),
(518080, 33, 1021.45, -3109.21, 80.9988, NULL, 0, 0, 0, 100, 0),
(518080, 34, 1017.71, -3109.38, 80.8207, NULL, 0, 0, 0, 100, 0),
(518080, 35, 1017.25, -3113.85, 80.9386, NULL, 0, 0, 0, 100, 0),
(518080, 36, 1015.24, -3116.81, 81.2594, NULL, 0, 0, 0, 100, 0),
(518080, 37, 1013.11, -3118.45, 81.7116, NULL, 0, 0, 0, 100, 0),
(518080, 38, 1010.26, -3117.7, 81.9643, NULL, 0, 0, 0, 100, 0),
(518080, 39, 1009.36, -3115.54, 81.937, NULL, 0, 0, 0, 100, 0),
(518080, 40, 1009.97, -3111.18, 81.4586, NULL, 0, 0, 0, 100, 0),
(518080, 41, 1012.35, -3109.55, 80.8596, NULL, 0, 0, 0, 100, 0),
(518080, 42, 1013.99, -3110.13, 80.9735, NULL, 0, 0, 0, 100, 0),
(518080, 43, 1019.78, -3109.27, 81.4185, NULL, 0, 0, 0, 100, 0),
(518080, 44, 1023.76, -3107.68, 80.9988, NULL, 0, 0, 0, 100, 0),
(518080, 45, 1026.93, -3105.58, 80.9988, NULL, 0, 0, 0, 100, 0),
(518080, 46, 1036.32, -3099.22, 80.947, NULL, 0, 0, 0, 100, 0),
(518080, 47, 1043.88, -3096.5, 82.475, NULL, 0, 0, 0, 100, 0),
(518080, 48, 1048.61, -3095.18, 85.4422, NULL, 0, 0, 0, 100, 0),
(518080, 49, 1054.6, -3092.41, 89.3336, NULL, 0, 0, 0, 100, 0),
(518080, 50, 1058.68, -3089.17, 91.7453, NULL, 0, 0, 0, 100, 0),
(518080, 51, 1060.6, -3083.75, 91.7453, NULL, 0, 0, 0, 100, 0),
(518080, 52, 1059.44, -3080.28, 91.7453, NULL, 0, 0, 0, 100, 0),
(518080, 53, 1058.01, -3076.83, 91.7453, NULL, 0, 0, 0, 100, 0),
(518080, 54, 1055.77, -3074.57, 91.7423, NULL, 0, 0, 0, 100, 0),
(518080, 55, 1053.49, -3072.35, 91.7432, NULL, 0, 0, 0, 100, 0),
(518080, 56, 1048.93, -3072.95, 91.7355, NULL, 0, 0, 0, 100, 0),
(518080, 57, 1041.48, -3075.29, 91.7333, NULL, 0, 0, 0, 100, 0),
(518080, 58, 1037.06, -3077.86, 91.772, NULL, 0, 0, 0, 100, 0),
(518080, 59, 1030.98, -3080.97, 91.754, NULL, 0, 0, 0, 100, 0),
(518080, 60, 1023.38, -3082.19, 91.7347, NULL, 0, 0, 0, 100, 0),
(518080, 61, 1015.59, -3080.34, 91.7187, NULL, 0, 0, 0, 100, 0),
(518080, 62, 1016.86, -3076.98, 91.7257, NULL, 0, 0, 0, 100, 0),
(518080, 63, 1019.51, -3077.52, 91.7313, NULL, 0, 0, 0, 100, 0),
(518080, 64, 1020.74, -3079.89, 91.7313, NULL, 0, 0, 0, 100, 0),
(518080, 65, 1023.99, -3081.43, 91.7371, NULL, 0, 0, 0, 100, 0),
(518080, 66, 1030.16, -3080.52, 91.7526, NULL, 0, 0, 0, 100, 0),
(518080, 67, 1035.14, -3078.67, 91.7665, NULL, 0, 0, 0, 100, 0),
(518080, 68, 1039.21, -3076.15, 91.7333, NULL, 0, 0, 0, 100, 0),
(518080, 69, 1044.73, -3073.75, 91.7319, NULL, 0, 0, 0, 100, 0),
(518080, 70, 1048.53, -3072.01, 91.7309, NULL, 0, 0, 0, 100, 0),
(518080, 71, 1052.28, -3069.47, 91.7492, NULL, 0, 0, 0, 100, 0),
(518080, 72, 1053.24, -3067.04, 91.762, NULL, 0, 0, 0, 100, 0),
(518080, 73, 1052.29, -3063.9, 91.6417, NULL, 0, 0, 0, 100, 0),
(518080, 74, 1051.01, -3060.32, 93.14, NULL, 0, 0, 0, 100, 0),
(518080, 75, 1046.46, -3055.47, 95.4885, NULL, 0, 0, 0, 100, 0),
(518080, 76, 1043.44, -3054.26, 97.0918, NULL, 0, 0, 0, 100, 0),
(518080, 77, 1039.26, -3053.32, 98.4449, NULL, 0, 0, 0, 100, 0),
(518080, 78, 1035.71, -3054.8, 98.9815, NULL, 0, 0, 0, 100, 0),
(518080, 79, 1033.22, -3056.35, 100.144, NULL, 0, 0, 0, 100, 0),
(518080, 80, 1030.55, -3058.91, 101.872, NULL, 0, 0, 0, 100, 0),
(518080, 81, 1029.75, -3062.89, 103.991, NULL, 0, 0, 0, 100, 0),
(518080, 82, 1028.89, -3066.46, 105.069, NULL, 0, 0, 0, 100, 0),
(518080, 83, 1027.57, -3071.8, 105.125, NULL, 0, 0, 0, 100, 0),
(518080, 84, 1026.92, -3074.34, 105.162, NULL, 0, 0, 0, 100, 0),
(518080, 85, 1029.29, -3078.58, 105.125, NULL, 0, 0, 0, 100, 0),
(518080, 86, 1031.8, -3080.06, 105.125, NULL, 0, 0, 0, 100, 0),
(518080, 87, 1034.15, -3084.09, 105.125, NULL, 0, 0, 0, 100, 0),
(518080, 88, 1035.67, -3087.39, 104.984, NULL, 0, 0, 0, 100, 0),
(518080, 89, 1037.77, -3091.23, 104.72, NULL, 0, 0, 0, 100, 0),
(518080, 90, 1040.77, -3093.77, 105.026, NULL, 0, 0, 0, 100, 0),
(518080, 91, 1044.16, -3096.44, 105.432, NULL, 0, 0, 0, 100, 0),
(518080, 92, 1048.07, -3097.35, 105.649, NULL, 0, 0, 0, 100, 0),
(518080, 93, 1055.78, -3094.85, 105.575, NULL, 0, 0, 0, 100, 0),
(518080, 94, 1059.14, -3093.44, 105.497, NULL, 0, 0, 0, 100, 0),
(518080, 95, 1060.82, -3089.71, 105.229, NULL, 0, 0, 0, 100, 0),
--
(518130, 1, -2706.95, -1928.89, 94.9242, NULL, 0, 0, 0, 100, 0),
(518130, 2, -2695.74, -1940.88, 97.3742, NULL, 0, 0, 0, 100, 0),
(518130, 3, -2682.96, -1955.54, 98.4577, NULL, 0, 0, 0, 100, 0),
(518130, 4, -2665.51, -1979.73, 98.1057, NULL, 0, 0, 0, 100, 0),
(518130, 5, -2663.7, -2002.63, 98.0086, NULL, 0, 0, 0, 100, 0),
(518130, 6, -2664.87, -2023.63, 98.4654, NULL, 0, 0, 0, 100, 0),
(518130, 7, -2665.7, -2038.9, 98.3715, NULL, 0, 0, 0, 100, 0),
(518130, 8, -2666.36, -2061.75, 98.2721, NULL, 0, 0, 0, 100, 0),
(518130, 9, -2657.22, -2080.01, 96.6535, NULL, 0, 0, 0, 100, 0),
(518130, 10, -2649.55, -2090.15, 94.9927, NULL, 0, 0, 0, 100, 0),
(518130, 11, -2637.51, -2096.94, 93.3594, NULL, 0, 0, 0, 100, 0),
(518130, 12, -2629.79, -2089.1, 92.4081, NULL, 0, 0, 0, 100, 0),
(518130, 13, -2613.6, -2073.96, 92.2917, NULL, 0, 0, 0, 100, 0),
(518130, 14, -2608.22, -2063.14, 91.5075, NULL, 0, 0, 0, 100, 0),
(518130, 15, -2605.24, -2042.76, 91.7917, NULL, 0, 0, 0, 100, 0),
(518130, 16, -2608.84, -2014.68, 91.7917, NULL, 0, 0, 0, 100, 0),
(518130, 17, -2607.89, -2002.01, 91.7917, NULL, 0, 0, 0, 100, 0),
(518130, 18, -2607.27, -1982.88, 91.7917, NULL, 0, 0, 0, 100, 0),
(518130, 19, -2604.78, -1970.36, 91.8034, NULL, 0, 0, 0, 100, 0),
(518130, 20, -2604.74, -1952.14, 93.6047, NULL, 0, 0, 0, 100, 0),
(518130, 21, -2605.6, -1942.95, 94.4209, NULL, 0, 0, 0, 100, 0),
(518130, 22, -2620.94, -1924.15, 97.3622, NULL, 0, 0, 0, 100, 0),
(518130, 23, -2633.03, -1911.15, 96.9115, NULL, 0, 0, 0, 100, 0),
(518130, 24, -2640.48, -1902.71, 96.146, NULL, 0, 0, 0, 100, 0),
(518130, 25, -2638.76, -1882.86, 92.9399, NULL, 0, 0, 0, 100, 0),
(518130, 26, -2636.47, -1869.08, 91.8037, NULL, 0, 0, 0, 100, 0),
(518130, 27, -2633.19, -1855.01, 91.7917, NULL, 0, 0, 0, 100, 0),
(518130, 28, -2628.38, -1841.22, 91.7917, NULL, 0, 0, 0, 100, 0),
(518130, 29, -2614.17, -1825.88, 92.6105, NULL, 0, 0, 0, 100, 0),
(518130, 30, -2593.4, -1820.45, 94.2716, NULL, 0, 0, 0, 100, 0),
(518130, 31, -2570.38, -1824.26, 94.6667, NULL, 0, 0, 0, 100, 0),
(518130, 32, -2547.2, -1824.15, 93.4726, NULL, 0, 0, 0, 100, 0),
(518130, 33, -2543.99, -1831.75, 93.7714, NULL, 0, 0, 0, 100, 0),
(518130, 34, -2541.14, -1847.86, 92.6115, NULL, 0, 0, 0, 100, 0),
(518130, 35, -2541.81, -1853.76, 91.9027, NULL, 0, 0, 0, 100, 0),
(518130, 36, -2550.61, -1869.85, 91.7916, NULL, 0, 0, 0, 100, 0),
(518130, 37, -2563.02, -1877.87, 92.3244, NULL, 0, 0, 0, 100, 0),
(518130, 38, -2573.29, -1883.79, 92.5416, NULL, 0, 0, 0, 100, 0),
(518130, 39, -2588.38, -1888.6, 94.5841, NULL, 0, 0, 0, 100, 0),
(518130, 40, -2605.79, -1890.03, 95.5708, NULL, 0, 0, 0, 100, 0),
(518130, 41, -2626.33, -1882.89, 93.875, NULL, 0, 0, 0, 100, 0),
(518130, 42, -2635.58, -1880.73, 92.5537, NULL, 0, 0, 0, 100, 0),
(518130, 43, -2646.37, -1875.38, 91.9121, NULL, 0, 0, 0, 100, 0),
(518130, 44, -2667.35, -1868.88, 93.4948, NULL, 0, 0, 0, 100, 0),
(518130, 45, -2689.16, -1876.95, 93.0304, NULL, 0, 0, 0, 100, 0),
(518130, 46, -2712.69, -1893.89, 91.7917, NULL, 0, 0, 0, 100, 0),
(518130, 47, -2721.41, -1909.02, 91.7917, NULL, 0, 0, 0, 100, 0),
(518130, 48, -2717.09, -1919.93, 92.5082, NULL, 0, 0, 0, 100, 0);

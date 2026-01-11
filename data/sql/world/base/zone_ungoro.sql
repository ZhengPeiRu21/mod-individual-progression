/* smart scripts */
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (6506, 6560);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(6498, 6500, 6501, 6502, 6503, 6504, 6505, 6507, 6508, 6509, 6510, 6511, 6512, 6513, 6514, 6516, 6517, 6518, 6519, 
6520, 6521, 6527, 6551, 6552, 6553, 6554, 6555, 6581, 6582, 6583, 6584, 6585, 9162, 9163, 9164, 9165, 9166, 9167, 9376, 9622);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(-24081, 6498, 6500, 6501, 6502, 6503, 6504, 6505, 6506, 6507, 6508, 6509, 6510, 6511, 6512, 6513, 6514, 6516, 6517, 6518, 6519, 
6520, 6521, 6527, 6551, 6552, 6553, 6554, 6555, 6560, 6581, 6582, 6583, 6584, 6585, 9162, 9163, 9164, 9165, 9166, 9167, 9376, 9622);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(6498, 0, 0, 0, 0, 0, 100, 0, 8000, 8000, 20000, 30000, 0, 0, 11, 14099, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 0,    'Devilsaur - Within 0-10 Range - Cast Mighty Blow'),
(6498, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 48, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Devilsaur - On Respawn - Set Active On'),
(6500, 0, 0, 0, 0, 0, 100, 0, 10000, 10000, 8000, 8008, 0, 0, 11, 14100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Tyrant Devilsaur - In Combat - Cast Terrifying Roar'),
(6500, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 48, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Tyrant Devilsaur - On Respawn - Set Active On'),
(6501, 0, 0, 0, 9, 0, 100, 0, 0, 0, 6000, 6000, 6, 15, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Stegodon - Within 6-15 Range - Cast Rushing Charge'),
(6501, 0, 1, 0, 0, 0, 100, 0, 5000, 5000, 8000, 14000, 0, 0, 11, 15652, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Stegodon - Within 0-5 Range - Cast Head Smash'),
(6502, 0, 0, 0, 0, 0, 100, 0, 5000, 5000, 8000, 14000, 0, 0, 11, 15652, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Plated Stegodon - Within 0-5 Range - Cast Head Smash'),
(6503, 0, 0, 0, 0, 0, 100, 0, 5000, 5000, 8000, 14000, 0, 0, 11, 15652, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Spiked Stegodon - Within 0-5 Range - Cast Head Smash'),
(6504, 0, 0, 0, 0, 0, 100, 0, 5000, 5000, 8000, 14000, 0, 0, 11, 14102, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Thunderstomp Stegodon - Within 0-5 Range - Cast Head Smash'),
(6504, 0, 1, 0, 0, 0, 100, 0, 4000, 4000, 14000, 14000, 0, 0, 11, 15548, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Thunderstomp Stegodon - In Combat - Cast Thunderclap'),
(6505, 0, 0, 0, 0, 0, 100, 0, 8000, 8000, 20000, 20000, 0, 0, 11, 13443, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Ravasaur - Within 0-5 Range - Cast Rend'),
(6507, 0, 0, 0, 0, 0, 100, 0, 8000, 8000, 20000, 20000, 0, 0, 11, 13443, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Ravasaur Hunter - Within 0-5 Range - Cast Rend'),
(6507, 0, 1, 0, 0, 0, 100, 0, 4000, 4000, 20000, 20000, 0, 0, 11, 3604, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Ravasaur Hunter - Within 0-5 Range - Cast Tendon Rip'),
(6508, 0, 0, 0, 0, 0, 100, 0, 2000, 3000, 8000, 9000, 0, 0, 11, 14792, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Venomhide Ravasaur - Within 0-5 Range - Cast Venomhide Poison'),
--
(6509, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 14111, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bloodpetal Lasher - On Respawn - Cast Bloodpetal Poison Proc'),
(6509, 0, 1, 0, 0, 0, 100, 0, 8000, 8000, 20000, 20000, 0, 0, 11, 6607, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Bloodpetal Lasher - Within 0-5 Range - Cast Lash'),
(6510, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 14111, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bloodpetal Flayer - On Respawn - Cast Bloodpetal Poison Proc'),
(6510, 0, 1, 0, 0, 0, 100, 0, 6000, 6000, 6000, 9000, 0, 0, 11, 14112, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,       'Bloodpetal Flayer - Within 0-5 Range - Cast Flaying Vine'),
(6511, 0, 0, 0, 11, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 14111, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bloodpetal Thresher - On Respawn - Cast Bloodpetal Poison Proc'),
(6512, 0, 0, 0, 11, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 14111, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bloodpetal Trapper - On Respawn - Cast Bloodpetal Poison Proc'),
(6512, 0, 1, 0, 0, 0, 100, 0, 6000, 6000, 18000, 23000, 0, 0, 11, 11922, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Bloodpetal Trapper - In Combat - Cast Entangling Roots'),
--
(6513, 0, 0, 1, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Un\'Goro Stomper - Between 0-20% Health - Cast Enrage (No Repeat)'),
(6513, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Un\'Goro Stomper - On Enrage - Say Line 0'),
(6514, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 39, 30, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Un\'Goro Gorilla - Between 0-30% Health - Call for Help (No Repeat)'), -- https://www.youtube.com/watch?v=hHdDNPSDmCI
(6514, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Un\'Goro Gorilla - On Call for Help - Say Line 0'),
(6516, 0, 0, 0, 0, 0, 100, 0, 5000, 5000, 9000, 15000, 0, 0, 11, 12553, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Un\'Goro Thunderer - In Combat - Cast Shock'),
(-24081, 0, 1, 0, 1, 0, 100, 0, 0, 0, 60000, 180000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Un\'Goro Thunderer - Out of Combat - Say Line 0'), -- only the one next to A-Me 01
--
(6517, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 14178, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Tar Beast - On Respawn - Cast Sticky Tar'),
(6518, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 14178, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Tar Lurker - On Respawn - Cast Sticky Tar'),
(6518, 0, 1, 0, 0, 0, 100, 0, 10000, 10000, 18000, 23000, 0, 0, 11, 7279, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Tar Lurker - In Combat - Cast Black Sludge'),
(6519, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 14178, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Tar Lord - On Respawn - Cast Sticky Tar'),
(6519, 0, 1, 0, 0, 0, 100, 0, 5000, 5000, 12000, 17000, 0, 0, 11, 12747, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Tar Lord - In Combat - Cast Entangling Roots'),
(6519, 0, 2, 0, 74, 0, 100, 0, 5000, 10000, 15000, 30000, 40, 40, 11, 11640, 32, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Tar Lord - Friendly Between 0-40% Health - Cast Renew'),
(6520, 0, 0, 0, 0, 0, 100, 0, 5000, 5000, 3000, 6000, 0, 0, 11, 13878, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Scorching Elemental - In Combat - Cast Scorch'),
(6521, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 11350, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Living Blaze - On Aggro - Cast Fire Shield'),
(6527, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 14178, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Tar Creeper - On Respawn - Cast Sticky Tar'),
(6527, 0, 1, 0, 0, 0, 100, 0, 8000, 8000, 14000, 19000, 0, 0, 11, 5568, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Tar Creeper - In Combat - Cast Trample'),
--
(6551, 0, 0, 0, 0, 0, 100, 0, 12000, 12000, 24000, 24000, 0, 0, 11, 8137, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Gorishi Wasp - Within 0-5 Range - Cast Silithid Pox'),
(6552, 0, 0, 0, 0, 0, 100, 0, 12000, 12000, 24000, 24000, 0, 0, 11, 8137, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Gorishi Worker - Within 0-5 Range - Cast Silithid Pox'),
(6553, 0, 0, 0, 0, 0, 100, 0, 6000, 6000, 8000, 12000, 0, 0, 11, 40504, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Gorishi Reaver - Within 0-5 Range - Cast Cleave'),
(6554, 0, 0, 0, 0, 0, 100, 0, 12000, 12000, 24000, 24000, 0, 0, 11, 8137, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Gorishi Stinger - Within 0-5 Range - Cast Silithid Pox'),
(6555, 0, 0, 0, 0, 0, 100, 0, 8000, 8000, 8000, 12000, 0, 0, 11, 14120, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Gorishi Tunneler - Within 0-5 Range - Cast Tunneler Acid'),
--
(6581, 0, 0, 0, 0, 0, 100, 0, 8000, 8000, 20000, 20000, 0, 0, 11, 13445, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Ravasaur Matriarch - Within 0-5 Range - Cast Rend'),

(6582, 0, 0, 0, 0, 0, 100, 0, 6000, 6000, 8000, 18000, 0, 0, 11, 40504, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Clutchmother Zavas - Within 0-5 Range - Cast Cleave'),
(6582, 0, 1, 0, 0, 0, 100, 0, 4000, 4000, 20000, 24000, 0, 0, 11, 12097, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Clutchmother Zavas - Within 0-5 Range - Cast Pierce Armor'),
(6582, 0, 2, 0, 0, 0, 100, 0, 12000, 12000, 10000, 15000, 0, 0, 11, 14205, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Clutchmother Zavas - In Combat - Cast Gorishi Egg'),
(6583, 0, 0, 0, 0, 0, 100, 0, 10000, 10000, 12000, 12000, 0, 0, 11, 15549, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Gruff - In Combat - Cast Chained Bolt'),
(6583, 0, 1, 0, 0, 0, 100, 0, 4000, 4000, 14000, 14000, 0, 0, 11, 15548, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Gruff - In Combat - Cast Thunderclap'),
(6584, 0, 0, 0, 0, 0, 100, 0, 10000, 10000, 12000, 20000, 0, 0, 11, 14100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'King Mosh - In Combat - Cast Terrifying Roar'),
(6584, 0, 1, 0, 0, 0, 100, 0, 8000, 8000, 14000, 19000, 0, 0, 11, 15550, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'King Mosh - In Combat - Cast Trample'),
(6584, 0, 2, 0, 0, 0, 100, 0, 4000, 4000, 13000, 13000, 0, 0, 11, 14331, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'King Mosh - Within 0-5 Range - Cast Vicious Rend'),
(6584, 0, 3, 0, 11, 0, 100, 512, 0, 0, 0, 0, 0, 0, 48, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'King Mosh - On Respawn - Set Active On'),
(6585, 0, 0, 0, 5, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 9128, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Uhk\'loc - On Killed Unit - Cast Battle Shout'),
(6585, 0, 1, 0, 0, 0, 100, 0, 6000, 6000, 8000, 12000, 0, 0, 11, 10966, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 0,     'Uhk\'loc - Within 0-10 Range - Cast Uppercut'),
--
(9162, 0, 0, 0, 0, 0, 100, 0, 6000, 6000, 20000, 20000, 0, 0, 11, 3604, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Young Diemetradon - Within 0-5 Range - Cast Tendon Rip'),
(9163, 0, 0, 0, 0, 0, 100, 0, 8000, 8000, 15000, 15000, 0, 0, 11, 13692, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Diemetradon - Within 0-5 Range - Cast Dire Growl'),
(9164, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Elder Diemetradon - On Respawn - Cast Thrash Proc'),
(9164, 0, 1, 0, 105, 0, 100, 0, 0, 0, 7000, 9000, 0, 5, 11, 12555, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,            'Elder Diemetradon - Target Casting - Cast Pummel'),
--
(9165, 0, 0, 0, 0, 0, 100, 0, 8000, 8000, 15000, 15000, 0, 0, 11, 5708, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Fledgling Pterrordax - Within 0-5 Range - Cast Swoop'),
(9166, 0, 0, 0, 0, 0, 100, 0, 8000, 8000, 10000, 14000, 0, 0, 11, 6605, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Pterrordax - In Combat - Cast Terrifying Screech'),
(9167, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Frenzied Pterrordax - On Respawn - Cast Thrash Proc'),
(9167, 0, 1, 0, 0, 0, 100, 0, 6000, 6000, 10000, 14000, 0, 0, 11, 7399, 0, 0, 0, 0, 0, 21, 6, 0, 0, 0, 0, 0, 0, 0,      'Frenzied Pterrordax - Within 0-5 Range - Cast Terrify'),
(9376, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 13913, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Blazerunner - On Reset - Cast Blazerunner\'s Aura'),
(9376, 0, 1, 0, 0, 0, 100, 0, 5000, 5000, 10000, 20000, 0, 0, 11, 17277, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Blazerunner - In Combat - Cast Blast Wave'),
(9376, 0, 2, 0, 8, 0, 100, 0, 14247, 0, 0, 0, 0, 0, 28, 13913, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Blazerunner - On Spellhit - Remove Aura Blazerunner\'s Aura'),
(9622, 0, 0, 0, 0, 0, 100, 0, 4000, 4000, 8000, 12000, 0, 0, 11, 8374, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,       'U\'cha - Within 0-5 Range - Cast Arcing Smash'),
(9622, 0, 1, 0, 0, 0, 100, 0, 7000, 7000, 10000, 50000, 0, 0, 11, 11428, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'U\'cha - Within 0-5 Range - Cast Knockdown');


UPDATE `creature` SET `spawntimesecs` = 54000  WHERE `id1` = 6581; -- Ravasaur Matriarch
UPDATE `creature` SET `spawntimesecs` = 47000  WHERE `id1` = 6582; -- Clutchmother Zavas
UPDATE `creature` SET `spawntimesecs` = 108000 WHERE `id1` = 6583; -- Gruff
UPDATE `creature` SET `spawntimesecs` = 108000 WHERE `id1` = 6584; -- King Mosh
UPDATE `creature` SET `spawntimesecs` = 23400  WHERE `id1` = 6585; -- Uhk'loc

UPDATE `creature` SET`MovementType` = 1, `wander_distance` = 5 WHERE `id1` IN (6581, 6582, 6583, 6585);

-- U'cha, waypoints
-- https://www.youtube.com/watch?v=UYj7pj7Jqf4&t=10s
-- https://www.youtube.com/watch?v=Ee2KVKJuINw&t=200s
-- https://www.youtube.com/watch?v=_YKpLAzQaX8&t=150s

UPDATE `creature` SET `MovementType` = 2, `currentwaypoint` = 1 WHERE `id1` = 9622; -- U'cha

DELETE FROM `creature_addon` WHERE `guid` IN (24254);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(24254, 242540, 0, 0, 1, 0, 0, NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (242540);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
(242540, 1,  -6281.77, -2001.47, -263.794, NULL, 0, 0, 0, 100, 0),
(242540, 2,  -6272.69, -2002.04, -264.302, NULL, 0, 0, 0, 100, 0),
(242540, 3,  -6263.53, -1994.65, -264.302, NULL, 0, 0, 0, 100, 0),
(242540, 4,  -6254.65, -1999.77, -264.302, NULL, 0, 0, 0, 100, 0),
(242540, 5,  -6256.4,  -2006.85, -264.302, NULL, 0, 0, 0, 100, 0),
(242540, 6,  -6263.92, -2009.34, -264.302, NULL, 0, 0, 0, 100, 0),
(242540, 7,  -6274,    -2008.62, -264.303, NULL, 30000, 0, 0, 100, 0),
(242540, 8,  -6268.84, -1996.72, -264.302, NULL, 0, 0, 0, 100, 0),
(242540, 9,  -6256.94, -1996.96, -264.302, NULL, 0, 0, 0, 100, 0),
(242540, 10, -6255.38, -2005.8,  -264.302, NULL, 0, 0, 0, 100, 0),
(242540, 11, -6263.07, -2010.88, -264.302, NULL, 0, 0, 0, 100, 0),
(242540, 12, -6282.18, -1998.39, -263.888, NULL, 0, 0, 0, 100, 0),
(242540, 13, -6276.26, -1987.49, -261.782, NULL, 60000, 0, 0, 100, 0);

-- Quest: The Apes of Un'Goro - drop chance was incorrectly set to 100%
UPDATE `creature_loot_template` SET `Chance` = 50 WHERE `Item` IN (11478, 11479, 11480); -- imo 50 is still too high, but that's the value VMangos uses.

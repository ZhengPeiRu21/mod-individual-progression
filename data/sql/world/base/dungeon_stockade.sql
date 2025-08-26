/* smart scripts */
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(1663, 1666, 1696, 1706, 1707, 1708, 1711, 1715, 1716, 1717, 1720);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(1663, 1666, 1696, 1706, 1707, 1708, 1711, 1715, 1716, 1717, 1720);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(1663, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 7165, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Dextren Ward - Out of Combat - Cast Battle Stance (No Repeat)'),
(1663, 0, 1, 0, 0, 0, 100, 0, 7000, 9000, 14000, 22000, 0, 0, 11, 19134, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 0,   'Dextren Ward - Within 0-10 Range - Cast Frightening Shout'),
(1663, 0, 2, 0, 9, 0, 100, 0, 0, 0, 9000, 21000, 0, 5, 11, 11976, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Dextren Ward - Within 0-5 Range - Cast Strike'),
(1663, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Dextren Ward - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1666, 0, 0, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 7164, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Kam Deepfury - Out of Combat - Cast Defensive Stance (No Repeat)'),
(1666, 0, 1, 0, 9, 0, 100, 0, 0, 0, 9300, 24600, 0, 5, 11, 8242, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Kam Deepfury - Within 0-5 Range - Cast Shield Slam'),
(1666, 0, 2, 0, 0, 0, 100, 0, 5000, 12000, 15000, 25000, 0, 0, 11, 3419, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Kam Deepfury - In Combat - Cast Improved Blocking'),
(1666, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Kam Deepfury - Between 0-15% Health - Flee For Assist (No Repeat)'),
(1696, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 674, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Targorr the Dread - On Respawn - Cast Dual Wield'),
(1696, 0, 1, 0, 0, 0, 100, 0, 8000, 12000, 15000, 20000, 0, 0, 11, 3391, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Targorr the Dread - In Combat - Cast Thrash'),
(1696, 0, 2, 2, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Targorr the Dread - Between 0-30% Health - Cast Enrage (No Repeat)'),
(1696, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Targorr the Dread - On Enrage - Say Line 0'),
--
(1706, 0, 0, 0, 105, 0, 100, 0, 0, 0, 10000, 15000, 0, 5, 11, 1766, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,          'Defias Prisoner - Victim Casting - Cast Kick'),
(1706, 0, 1, 0, 0, 0, 100, 0, 5000, 12000, 20000, 33000, 0, 0, 11, 6713, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Defias Prisoner - Within 0-5 Range - Cast Disarm'),
(1706, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Defias Prisoner - Between 0-15% Health - Flee For Assist'),
(1706, 0, 3, 0, 11, 0, 100, 513, 1, 34, 0, 0, 0, 0, 2, 17, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Defias Prisoner - On Respawn - Set Faction 17'),
(1706, 0, 4, 0, 11, 0, 100, 513, 1, 0, 0, 0, 0, 0, 80, 170600, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Defias Prisoner - On Respawn - Run Script'),
(1706, 0, 5, 6, 40, 0, 100, 512, 103, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 11, 37063, 20, 0, 0, 0, 0, 0, 0,            'Defias Prisoner - On WP Reached - Despawn Target'),
(1706, 0, 6, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Defias Prisoner - On WP Reached - Despawn'),
(1706, 0, 7, 8, 17, 0, 100, 512, 0, 0, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                    'Defias Prisoner - Just Summoned - Store Target'),
(1706, 0, 8, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 100, 2, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                   'Defias Prisoner - Just Summoned - Send Target to Target'),
(1706, 0, 9, 0, 37, 0, 100, 512, 0, 0, 0, 0, 0, 0, 64, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Defias Prisoner - On AI Init - Store Target'),
(1707, 0, 0, 0, 67, 0, 100, 0, 2000, 4000, 2000, 7000, 0, 5, 11, 7159, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Defias Captive - Behind Target - Cast Backstab'),
(1707, 0, 1, 0, 9, 0, 100, 0, 0, 0, 1000, 9000, 0, 5, 11, 3427, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Defias Captive - Within 0-5 Range - Cast Infected Wound'),
(1707, 0, 2, 0, 9, 0, 100, 0, 0, 0, 14000, 36000, 0, 5, 11, 11977, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Defias Captive - Within 0-5 Range - Cast Rend'),
(1707, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Defias Captive - Between 0-15% Health - Flee For Assist'),
(1708, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 7165, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Defias Inmate - Out of Combat - Cast Battle Stance (No Repeat)'),
(1708, 0, 1, 0, 9, 0, 100, 0, 0, 0, 14000, 36000, 0, 5, 11, 11977, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Defias Inmate - Within 0-5 Range - Cast Rend'),
(1708, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Defias Inmate - Between 0-15% Health - Flee For Assist'),
(1711, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 674, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Defias Convict - On Respawn - Cast Dual Wield'),
(1711, 0, 1, 0, 9, 0, 100, 0, 0, 0, 10000, 13000, 0, 5, 11, 6253, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Defias Convict - Within 0-5 Range - Cast Backhand'),
(1711, 0, 2, 0, 9, 0, 100, 0, 0, 0, 14000, 36000, 0, 5, 11, 11977, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Defias Convict - Within 0-5 Range - Cast Rend'),
(1711, 0, 3, 0, 9, 0, 100, 0, 0, 0, 14000, 36000, 0, 5, 11, 13730, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Defias Convict - Within 0-5 Range - Cast Demoralizing Shout'),
(1711, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Defias Convict - Between 0-15% Health - Flee For Assist'),
(1715, 0, 0, 0, 0, 0, 100, 0, 1000, 5000, 20000, 39000, 0, 0, 11, 9128, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Defias Insurgent - In Combat - Cast Battle Shout'),
(1715, 0, 1, 0, 9, 0, 100, 0, 0, 0, 19000, 24000, 0, 5, 11, 13730, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Defias Insurgent - Within 0-5 Range - Cast Demoralizing Shout'),
(1715, 0, 2, 0, 9, 0, 100, 0, 0, 0, 14000, 36000, 0, 5, 11, 6253, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Defias Insurgent - Within 0-5 Range - Cast Backhand'),
(1715, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Defias Insurgent - Between 0-15% Health - Flee For Assist'),
--
(1716, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Bazil Thredd - On Aggro - Say Line 0'),
(1716, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 674, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Bazil Thredd - On Respawn - Cast Dual Wield'),
(1716, 0, 2, 0, 0, 0, 100, 0, 8000, 10000, 15000, 25000, 0, 0, 11, 7964, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Bazil Thredd - In Combat - Cast Smoke Bomb'),
(1716, 0, 3, 0, 0, 0, 100, 0, 1000, 3000, 26000, 30000, 0, 0, 11, 9128, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Bazil Thredd - In Combat - Cast Battle Shout'),
(1716, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bazil Thredd - Between 0-15% Health - Flee For Assist'),
(1717, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Hamhock - On Aggro - Say Line 0'),
(1717, 0, 1, 0, 0, 0, 100, 0, 5000, 8000, 12000, 19000, 0, 0, 11, 421, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Hamhock - In Combat - Cast Chain Lightning'), -- https://www.youtube.com/watch?v=Sf0brO6J4e0
(1717, 0, 2, 0, 0, 0, 100, 0, 5000, 9000, 10000, 10000, 0, 0, 11, 6742, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Hamhock - In Combat - Cast Bloodlust'),
(1720, 0, 0, 0, 37, 0, 70, 512, 0, 0, 0, 0, 0, 0, 41, 500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Bruegal Ironknuckle - On AI Init - Despawn'),
(1720, 0, 1, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Bruegal Ironknuckle - On Aggro - Say Line 0'),
(1720, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bruegal Ironknuckle - Between 0-15% Health - Flee For Assist');


DELETE FROM `creature_text` WHERE `CreatureID` IN (1720);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(1720, 0, 0, 'Eh? What have we here?',                      12, 7, 100, 0, 0, 0, 1386, 0, 'Bruegal Ironknuckle'),
(1720, 0, 1, 'Welcome to the Stockade!',                    12, 7, 100, 0, 0, 0, 1387, 0, 'Bruegal Ironknuckle'),
(1720, 0, 2, 'Outsiders! Kill em all!',                     12, 7, 100, 0, 0, 0, 1388, 0, 'Bruegal Ironknuckle'),
(1720, 0, 3, 'More of the Warden\'s errand boys!',          12, 7, 100, 0, 0, 0, 1390, 0, 'Bruegal Ironknuckle'),
(1720, 0, 4, 'Tell the Warden this prison is ours now!',    12, 7, 100, 0, 0, 0, 1391, 0, 'Bruegal Ironknuckle'),
(1720, 0, 5, 'It\'ll be quick, but it won\'t be painless!', 12, 7, 100, 0, 0, 0, 1392, 0, 'Bruegal Ironknuckle'),
(1720, 0, 6, 'Fresh meat!',                                 12, 7, 100, 0, 0, 0, 1393, 0, 'Bruegal Ironknuckle'),
(1720, 0, 7, 'I\'ll crush your skull beneath my boot!',     12, 7, 100, 0, 0, 0, 1394, 0, 'Bruegal Ironknuckle'),
(1720, 0, 8, 'Death to the Warden\'s men!',                 12, 7, 100, 0, 0, 0, 1395, 0, 'Bruegal Ironknuckle');


-- Bazil Thredd, multiple spawn locations?

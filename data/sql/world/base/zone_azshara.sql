/* smart scripts */
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (193, 6125);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(6116, 6117, 6118, 6126, 6127, 6131, 6140, 6146, 6147, 6148, 6187, 6188, 6189, 6190, 6193, 6194, 6195, 6196, 6198, 6199, 6200, 6201, 6202, 6350, 6372, 6377, 6378, 6379, 6380, 6647, 6648, 7885, 7886, 8408, 8578, 8660, 8761, 8762);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(193, 6116, 6117, 6118, 6125, 6126, 6127, 6131, 6140, 6146, 6147, 6148, 6187, 6188, 6189, 6190, 6193, 6194, 6195, 6196, 6198, 6199, 6200, 6201, 6202, 6350, 6372, 6377, 6378, 6379, 6380, 6647, 6648, 7885, 7886, 8408, 8578, 8660, 8761, 8762);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(6116, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 11, 12542, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                  'Highborne Apparition - Between 0-15% Health - Cast Fear (No Repeat)'),
(6117, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 90000, 90000, 0, 0, 11, 12544, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Highborne Lichling - Out of Combat - Cast Frost Armor'),
(6117, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20822, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Highborne Lichling - In Combat - Cast Frostbolt'),
(6118, 0, 0, 0, 0, 0, 100, 0, 3000, 6000, 120000, 120000, 0, 0, 11, 21007, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Varo\'then\'s Ghost - In Combat - Cast Curse of Weakness'),
(6126, 0, 0, 0, 9, 0, 100, 0, 0, 0, 20000, 45000, 0, 10, 11, 7098, 96, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Haldarr Trickster - In Combat - Cast Curse of Mending'),
(6127, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 11939, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Haldarr Felsworn - Out of Combat - Cast Summon Imp'),
(6127, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20825, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Haldarr Felsworn - In Combat - Cast Shadow Bolt'),
(6131, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9672, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Draconic Mageweaver - In Combat - Cast Frostbolt'),
(6131, 0, 1, 0, 9, 0, 100, 0, 0, 0, 15000, 18000, 0, 8, 11, 12557, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Draconic Mageweaver - In Combat - Cast Cone of Cold'),
(6140, 0, 0, 0, 9, 0, 100, 0, 0, 0, 11000, 15000, 0, 5, 11, 7367, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Hetaera - Within 0-5 Range - Cast Infected Bite'),
(6140, 0, 1, 0, 0, 0, 100, 0, 8000, 12000, 15000, 20000, 0, 0, 11, 3391, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Hetaera - In Combat - Cast Thrash'),
(6146, 0, 0, 0, 0, 0, 100, 0, 7000, 11000, 21000, 24000, 0, 0, 11, 11443, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Cliff Breaker - In Combat - Cast Cripple'),
(6147, 0, 0, 0, 0, 0, 100, 0, 7000, 10000, 11000, 14000, 0, 0, 11, 8147, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Cliff Thunderer - In Combat - Cast Thunderclap'),
(6148, 0, 0, 0, 9, 0, 100, 0, 0, 0, 13000, 17000, 0, 5, 11, 11876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Cliff Walker - Within 0-5 Range - Cast War Stomp'),
(6187, 0, 0, 0, 0, 0, 100, 0, 2000, 5000, 13000, 18000, 0, 0, 11, 9128, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Timbermaw Den Watcher - In Combat - Cast Battle Shout'),
(6187, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Timbermaw Den Watcher - Between 0-15% Health - Flee For Assist (No Repeat)'),
(6188, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20295, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Timbermaw Shaman - In Combat - Cast Lightning Bolt'),
(6188, 0, 1, 0, 0, 0, 100, 0, 8000, 14000, 40000, 45000, 0, 0, 11, 6535, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Timbermaw Shaman - In Combat - Cast Lightning Cloud'),
(6188, 0, 2, 0, 74, 0, 100, 0, 0, 0, 15000, 18000, 30, 40, 11, 11986, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Timbermaw Shaman - Friendly Between 0-30% Health - Cast Healing Wave'),
(6188, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Timbermaw Shaman - Between 0-15% Health - Flee For Assist (No Repeat)'),
(6189, 0, 0, 0, 106, 0, 100, 0, 9000, 14000, 16000, 21000, 0, 5, 11, 8078, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Timbermaw Ursa - Within 0-5 Range - Cast Thunderclap'),
(6189, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Timbermaw Ursa - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(6190, 0, 0, 0, 8, 0, 100, 1, 118, 0, 0, 0, 0, 0, 80, 619300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Spitelash Warrior - On Spellhit \'Polymorph\' - Run Script'), -- smart script
(6190, 0, 1, 0, 8, 0, 100, 1, 12824, 0, 0, 0, 0, 0, 80, 619300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Spitelash Warrior - On Spellhit \'Polymorph\' - Run Script'),
(6190, 0, 2, 0, 8, 0, 100, 1, 12825, 0, 0, 0, 0, 0, 80, 619300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Spitelash Warrior - On Spellhit \'Polymorph\' - Run Script'),
(6190, 0, 3, 0, 8, 0, 100, 1, 12826, 0, 0, 0, 0, 0, 80, 619300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Spitelash Warrior - On Spellhit \'Polymorph\' - Run Script'),
(6190, 0, 4, 0, 0, 0, 100, 0, 6000, 9000, 11000, 15000, 0, 0, 11, 6713, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Spitelash Warrior - Within 0-5 Range - Cast Disarm'),
(6193, 0, 0, 0, 8, 0, 100, 1, 118, 0, 0, 0, 0, 0, 80, 619300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Spitelash Screamer - On Spellhit \'Polymorph\' - Run Script'),
(6193, 0, 1, 0, 8, 0, 100, 1, 12824, 0, 0, 0, 0, 0, 80, 619300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Spitelash Screamer - On Spellhit \'Polymorph\' - Run Script'),
(6193, 0, 2, 0, 8, 0, 100, 1, 12825, 0, 0, 0, 0, 0, 80, 619300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Spitelash Screamer - On Spellhit \'Polymorph\' - Run Script'),
(6193, 0, 3, 0, 8, 0, 100, 1, 12826, 0, 0, 0, 0, 0, 80, 619300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Spitelash Screamer - On Spellhit \'Polymorph\' - Run Script'),
(6193, 0, 4, 0, 0, 0, 100, 0, 7000, 9000, 12000, 15000, 0, 0, 11, 3589, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Spitelash Screamer - In Combat - Cast Deafening Screech'),
(6193, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Spitelash Screamer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(6194, 0, 0, 0, 8, 0, 100, 1, 118, 0, 0, 0, 0, 0, 80, 619300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Spitelash Serpent Guard - On Spellhit \'Polymorph\' - Run Script'),
(6194, 0, 1, 0, 8, 0, 100, 1, 12824, 0, 0, 0, 0, 0, 80, 619300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Spitelash Serpent Guard - On Spellhit \'Polymorph\' - Run Script'),
(6194, 0, 2, 0, 8, 0, 100, 1, 12825, 0, 0, 0, 0, 0, 80, 619300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Spitelash Serpent Guard - On Spellhit \'Polymorph\' - Run Script'),
(6194, 0, 3, 0, 8, 0, 100, 1, 12826, 0, 0, 0, 0, 0, 80, 619300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Spitelash Serpent Guard - On Spellhit \'Polymorph\' - Run Script'),
(6194, 0, 4, 0, 0, 0, 100, 0, 6000, 8000, 9000, 13000, 0, 0, 11, 25710, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Spitelash Serpent Guard - Within 0-5 Range - Cast Heroic Strike'),
(6195, 0, 0, 0, 8, 0, 100, 1, 118, 0, 0, 0, 0, 0, 80, 619300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Spitelash Siren - On Spellhit \'Polymorph\' - Run Script'),
(6195, 0, 1, 0, 8, 0, 100, 1, 12824, 0, 0, 0, 0, 0, 80, 619300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Spitelash Siren - On Spellhit \'Polymorph\' - Run Script'),
(6195, 0, 2, 0, 8, 0, 100, 1, 12825, 0, 0, 0, 0, 0, 80, 619300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Spitelash Siren - On Spellhit \'Polymorph\' - Run Script'),
(6195, 0, 3, 0, 8, 0, 100, 1, 12826, 0, 0, 0, 0, 0, 80, 619300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Spitelash Siren - On Spellhit \'Polymorph\' - Run Script'),
(6195, 0, 4, 0, 9, 0, 100, 0, 0, 0, 3000, 3000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Spitelash Siren - Outside 30 Range - Start Combat Movement'),
(6195, 0, 5, 0, 9, 0, 100, 0, 0, 0, 3000, 3000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Spitelash Siren - Within 5-30 Range - Stop Combat Movement'),
(6195, 0, 6, 0, 9, 0, 100, 0, 0, 0, 3000, 3000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Spitelash Siren - Within 0-5 Range - Start Combat Movement'),
(6195, 0, 7, 0, 9, 0, 100, 0, 0, 0, 2000, 3000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Spitelash Siren - Within 5-30 Range - Cast Shoot'),
(6195, 0, 8, 0, 0, 0, 100, 0, 3000, 5000, 12000, 16000, 0, 0, 11, 12551, 0, 0, 0, 0, 0, 28, 30, 1, 1, 5, 0, 0, 0, 0,   'Spitelash Siren - Within 5-30 Range - Cast Frost Shot'),
(6195, 0, 9, 0, 106, 0, 100, 0, 4000, 8000, 13000, 15000, 0, 8, 11, 11831, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Spitelash Siren - Within 0-8 Range - Cast Frost Nova'),
(6195, 0, 10, 0, 74, 0, 100, 0, 0, 0, 12000, 17000, 50, 40, 11, 11640, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,       'Spitelash Siren - Friendly Between 0-50% Health - Cast Renew'),
(6195, 0, 11, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Spitelash Siren - Between 0-15% Health - Flee For Assist (No Repeat)'),
(6196, 0, 0, 0, 8, 0, 100, 1, 118, 0, 0, 0, 0, 0, 80, 619300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Spitelash Myrmidon - On Spellhit \'Polymorph\' - Run Script'),
(6196, 0, 1, 0, 8, 0, 100, 1, 12824, 0, 0, 0, 0, 0, 80, 619300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Spitelash Myrmidon - On Spellhit \'Polymorph\' - Run Script'),
(6196, 0, 2, 0, 8, 0, 100, 1, 12825, 0, 0, 0, 0, 0, 80, 619300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Spitelash Myrmidon - On Spellhit \'Polymorph\' - Run Script'),
(6196, 0, 3, 0, 8, 0, 100, 1, 12826, 0, 0, 0, 0, 0, 80, 619300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Spitelash Myrmidon - On Spellhit \'Polymorph\' - Run Script'),
(6196, 0, 4, 0, 0, 0, 100, 0, 5000, 7000, 6000, 9000, 0, 0, 11, 11976, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Spitelash Myrmidon - In Combat - Cast Strike'),
--
(6198, 0, 0, 0, 106, 0, 100, 0, 5000, 8000, 8000, 10000, 0, 8, 11, 11969, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Blood Elf Surveyor - Within 0-8 Range - Cast Fire Nova'),
(6199, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20823, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Blood Elf Reclaimer - In Combat - Cast Fireball'),
(6199, 0, 1, 0, 74, 0, 100, 0, 0, 0, 12000, 15000, 90, 40, 11, 11640, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Blood Elf Reclaimer - Friendly Between 0-90% Health - Cast Renew'),
(6199, 0, 2, 0, 74, 0, 100, 0, 0, 0, 10000, 12000, 60, 40, 11, 11642, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Blood Elf Reclaimer - Friendly Between 0-60% Health - Cast Heal'),
(6200, 0, 0, 0, 0, 0, 100, 0, 5000, 8000, 8000, 13000, 0, 0, 11, 11981, 320, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Legashi Satyr - In Combat - Cast Mana Burn'),
(6201, 0, 0, 0, 67, 0, 100, 0, 5000, 8000, 6000, 9000, 0, 5, 11, 7159, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Legashi Rogue - On Behind Target - Cast Backstab'),
(6201, 0, 1, 0, 9, 0, 100, 0, 0, 0, 9000, 12000, 0, 5, 11, 12540, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Legashi Rogue - In Combat - Cast Gouge'),
(6202, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20823, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Legashi Hellcaller - In Combat - Cast Fireball'),
(6202, 0, 1, 0, 0, 0, 100, 0, 9000, 13000, 18000, 25000, 0, 0, 11, 11990, 65, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Legashi Hellcaller - In Combat - Cast Rain of Fire'),
--
(6350, 0, 0, 0, 0, 0, 100, 0, 3000, 4000, 12000, 13000, 0, 0, 11, 13444, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Makrinni Razorclaw - Within 0-5 Range - Cast Sunder Armor'),
(6372, 0, 0, 0, 0, 0, 100, 0, 10000, 19100, 25300, 46800, 0, 0, 11, 3604, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Makrinni Snapclaw  - Within 0-5 Range - Cast Tendon Rip'),
(6377, 0, 0, 0, 9, 0, 100, 0, 0, 0, 8000, 12000, 0, 20, 11, 12553, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Thunderhead Stagwing - Within 0-20 Range - Cast Shock'),
(6377, 0, 1, 0, 106, 0, 100, 0, 7000, 10000, 12000, 17000, 0, 8, 11, 11019, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Thunderhead Stagwing - Within 0-8 Range - Cast Wing Flap'),
(6378, 0, 0, 0, 9, 0, 100, 0, 0, 0, 8000, 12000, 0, 20, 11, 12553, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Thunderhead Skystormer - Within 0-20 Range - Cast Shock'),
(6378, 0, 1, 0, 0, 0, 100, 0, 9000, 16000, 40000, 45000, 0, 0, 11, 6535, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Thunderhead Skystormer - In Combat - Cast Lightning Cloud'),
(6379, 0, 0, 0, 9, 0, 100, 1, 0, 0, 0, 0, 5, 20, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Thunderhead Patriarch - Within 5-20 Range - Cast Rushing Charge'),
(6380, 0, 0, 0, 9, 0, 100, 0, 0, 0, 8000, 12000, 0, 20, 11, 12553, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Thunderhead Consort - Within 0-20 Range - Cast Shock'),
(6380, 0, 1, 0, 0, 0, 100, 0, 3000, 9000, 9000, 13000, 0, 0, 11, 17157, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Thunderhead Consort - In Combat - Cast Lightning Breath'),
--
(6647, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Magister Hawkhelm - Outside 30 Range - Start Combat Movement'),
(6647, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Magister Hawkhelm - Within 5-30 Range - Stop Combat Movement'),
(6647, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Magister Hawkhelm - Within 0-5 Range - Start Combat Movement'),
(6647, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Magister Hawkhelm - Within 5-30 Range - Cast Shoot'),
(6647, 0, 4, 0, 9, 0, 100, 0, 0, 0, 9000, 13000, 5, 30, 11, 18651, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Magister Hawkhelm - Within 5-30 Range - Cast Multi-Shot'),
(6648, 0, 0, 0, 0, 0, 100, 0, 7000, 12000, 19000, 23000, 0, 0, 11, 13445, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Antilos - Within 0-5 Range - Cast Rend'),
(6648, 0, 1, 0, 9, 0, 100, 0, 0, 0, 11000, 15000, 0, 5, 11, 40504, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Antilos - Within 0-5 Range - Cast Cleave'),
(6648, 0, 2, 0, 0, 0, 100, 0, 11000, 15000, 12000, 15000, 0, 0, 11, 5708, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Antilos - Within 0-5 Range - Cast Swoop'),
--
(7885, 0, 0, 0, 8, 0, 100, 1, 118, 0, 0, 0, 0, 0, 80, 619300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Spitelash Battlemaster - On Spellhit \'Polymorph\' - Run Script'),
(7885, 0, 1, 0, 8, 0, 100, 1, 12824, 0, 0, 0, 0, 0, 80, 619300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Spitelash Battlemaster - On Spellhit \'Polymorph\' - Run Script'),
(7885, 0, 2, 0, 8, 0, 100, 1, 12825, 0, 0, 0, 0, 0, 80, 619300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Spitelash Battlemaster - On Spellhit \'Polymorph\' - Run Script'),
(7885, 0, 3, 0, 8, 0, 100, 1, 12826, 0, 0, 0, 0, 0, 80, 619300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Spitelash Battlemaster - On Spellhit \'Polymorph\' - Run Script'),
(7885, 0, 4, 0, 9, 0, 100, 0, 0, 0, 20000, 30000, 5, 30, 11, 22120, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Spitelash Battlemaster - Within 5-30 Range - Cast Charge'),
(7886, 0, 0, 0, 8, 0, 100, 1, 118, 0, 0, 0, 0, 0, 80, 619300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Spitelash Enchantress - On Spellhit \'Polymorph\' - Run Script'),
(7886, 0, 1, 0, 8, 0, 100, 1, 12824, 0, 0, 0, 0, 0, 80, 619300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Spitelash Enchantress - On Spellhit \'Polymorph\' - Run Script'),
(7886, 0, 2, 0, 8, 0, 100, 1, 12825, 0, 0, 0, 0, 0, 80, 619300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Spitelash Enchantress - On Spellhit \'Polymorph\' - Run Script'),
(7886, 0, 3, 0, 8, 0, 100, 1, 12826, 0, 0, 0, 0, 0, 80, 619300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Spitelash Enchantress - On Spellhit \'Polymorph\' - Run Script'),
(7886, 0, 4, 0, 0, 0, 100, 0, 0, 0, 2000, 5000, 0, 0, 11, 15790, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Spitelash Enchantress - In Combat - Cast Arcane Missiles'),
(7886, 0, 5, 0, 0, 0, 100, 0, 5000, 9000, 18000, 24000, 0, 0, 11, 3443, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Spitelash Enchantress - In Combat - Cast Enchanted Quickness'),
(7886, 0, 6, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Spitelash Enchantress - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(8408, 0, 0, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 11976, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Warlord Krellian - In Combat - Cast Strike'),
(8408, 0, 1, 0, 106, 0, 100, 0, 4000, 8000, 12000, 17000, 0, 8, 11, 10968, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Warlord Krellian - Within 0-8 Range - Cast Demoralizing Roar'),
(8578, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20823, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Magus Rimtori - In Combat - Cast Fireball'),
(8578, 0, 1, 0, 106, 0, 100, 0, 0, 0, 13000, 16000, 0, 8, 11, 11831, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Magus Rimtori - Within 0-8 Range - Cast Frost Nova'),
(8578, 0, 2, 0, 54, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 51347, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Magus Rimtori - On Just Summoned - Cast \'Teleport Visual Only\''),
(8578, 0, 3, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Magus Rimtori - On Aggro - Say Line 0'),
(8660, 0, 0, 0, 0, 0, 100, 0, 0, 0, 4000, 6000, 0, 0, 11, 20793, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'The Evalcharr - In Combat - Cast Fireball'),
(8660, 0, 1, 0, 0, 0, 100, 0, 8000, 13000, 12000, 15000, 0, 0, 11, 15797, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'The Evalcharr - In Combat - Cast Lightning Breath'),
--
(8761, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Mosshoof Courser - Between 0-30% Health - Cast Enrage (No Repeat)'),
(8761, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Mosshoof Courser - On Enrage - Say Line 0'),
(8762, 0, 0, 0, 9, 0, 100, 0, 0, 0, 9000, 14000, 0, 20, 11, 745, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Timberweb Recluse - Within 0-20 Range - Cast Web'),
(8762, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3616, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Timberweb Recluse - On Reset - Cast Poison Proc');


-- Antilos, fix spawn time and movement
UPDATE `creature` SET `spawntimesecs` = 115200, `MovementType` = 1, `wander_distance` = 5 WHERE `id1` = 6648;

-- Quest: Kim'jael's "Missing" Equipment, fix drop rate 'Some Rune', was 100%
UPDATE `creature_loot_template` SET `Chance` = 15 WHERE `Item` = 13815;

-- Quest: Encoded Fragments, description was using tbc version (changed in ~2.1)
DELETE FROM `creature_loot_template` WHERE `item`= 20023 AND `entry` IN (6377, 6378, 6379, 6380, 8762); -- remove quest drops TBC version

UPDATE `quest_template` SET 
`QuestDescription` = 'Lord Ravenholdt has asked a favor of us both. He wishes to remove the enchantment from this bag.$b$b
Unfortunately, some of my books on the subject of dispelling were taken recently, only to be destroyed by savages.  The remains of my books are still valuable to me.$b$b
If you can bring me enough of the encoded fragments, I can piece them back together.  Your best chance is to kill forest oozes, since they have a tendency to pick up just about anything.  
You\'ll find them in northeast Azshara.' WHERE `ID` = 8235;

/* smart scripts */
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2018, 2020, 2021, 2030, 2038, 2039, 2152, 7234, 7235, 14428, 14429, 14431, 14432);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2018, 2020, 2021, 2030, 2038, 2039, 2152, 7234, 7235, 14428, 14429, 14431, 14432);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(2002, 0, 0, 0, 0, 0, 100, 0, 5000, 12000, 30000, 40000, 0, 0, 11, 6950, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Rascal Sprite - In Combat - Cast Faerie Fire'),
(2002, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Rascal Sprite - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2003, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9613, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Shadow Sprite - In Combat - Cast Shadow Bolt'),
(2003, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Shadow Sprite - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2004, 0, 0, 0, 0, 0, 70, 0, 1500, 1500, 15000, 15000, 0, 0, 11, 5514, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Dark Sprite - In Combat - Cast Darken Vision'),
(2004, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Dark Sprite - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2005, 0, 0, 0, 0, 0, 80, 0, 1000, 1000, 10000, 10000, 0, 0, 11, 5515, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Vicious Grell - In Combat - Cast Savagery'),
(2005, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Vicious Grell - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(2006, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Gnarlpine Ursa - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2007, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Gnarlpine Gardener - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2008, 0, 0, 0, 9, 0, 100, 0, 0, 0, 7000, 12000, 0, 5, 11, 11976, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Gnarlpine Warrior - Within 0-5 Range - Cast Strike'),
(2008, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Gnarlpine Warrior - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2009, 0, 0, 0, 14, 0, 100, 0, 70, 40, 15000, 21000, 0, 0, 11, 332, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,          'Gnarlpine Shaman - Friendly Missing 70 Health - Cast Healing Wave'),
(2009, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Gnarlpine Shaman - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2010, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Gnarlpine Defender - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2011, 0, 0, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 5628, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Gnarlpine Augur - Between 0-30% Health - Cast Gnarlpine Vengeance (No Repeat)'),
(2012, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9739, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Gnarlpine Pathfinder - In Combat - Cast Wrath'),
(2012, 0, 1, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 5628, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Gnarlpine Pathfinder - Between 0-30% Health - Cast Gnarlpine Vengeance (No Repeat)'),
(2013, 0, 0, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 5628, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Gnarlpine Avenger - Between 0-30% Health - Cast Gnarlpine Vengeance (No Repeat)'),
(2014, 0, 0, 0, 2, 0, 100, 0, 0, 30, 0, 0, 0, 0, 11, 5628, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Gnarlpine Totemic - In Combat - Cast Gnarlpine Vengeance (No Repeat)'),
(2014, 0, 1, 0, 2, 0, 100, 0, 0, 60, 32000, 32000, 0, 0, 11, 5605, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Gnarlpine Totemic - Between 0-60% Health - Cast Healing Ward'),
--
(2015, 0, 0, 0, 4, 0, 70, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                         'Bloodfeather Harpy - On Aggro - Say Line 0'),
(2015, 0, 1, 0, 0, 0, 100, 0, 0, 0, 6000, 10000, 0, 0, 11, 20793, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Bloodfeather Harpy - In Combat - Cast Blood Leech'),
(2015, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bloodfeather Harpy - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2018, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                         'Bloodfeather Sorceress - On Aggro - Say Line 0'),
(2018, 0, 1, 0, 1, 0, 100, 0, 1000, 1000, 1800000, 1800000, 0, 0, 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodfeather Sorceress - Out of Combat - Cast Frost Armor'),
(2018, 0, 2, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20793, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Bloodfeather Sorceress - In Combat - Cast Fireball'),
(2018, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bloodfeather Sorceress - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2020, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                         'Bloodfeather Wind Witch - On Aggro - Say Line 0'),
(2020, 0, 1, 0, 9, 0, 100, 0, 0, 0, 11000, 16000, 0, 5, 11, 6982, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Bloodfeather Wind Witch - Within 0-5 Range - Cast Gust of Wind'),
(2020, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bloodfeather Wind Witch - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2021, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Bloodfeather Matriarch - In Combat - Cast Lightning Bolt'),
(2021, 0, 1, 0, 2, 0, 100, 0, 0, 50, 18000, 24000, 0, 0, 11, 332, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Bloodfeather Matriarch - Between 0-50% Health - Cast Healing Wave'),
(2021, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bloodfeather Matriarch - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(2030, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 600000, 600000, 0, 0, 11, 324, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Elder Timberling - Out of Combat - Cast Lightning Shield'),
(2030, 0, 1, 0, 16, 0, 100, 0, 26364, 30, 15000, 30000, 0, 0, 11, 26364, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,     'Elder Timberling - Friendly Missing Buff - Cast Lightning Shield'), -- test!
(2030, 0, 2, 0, 2, 0, 100, 0, 0, 50, 9000, 15000, 0, 0, 11, 332, 64, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Elder Timberling - Between 0-50% Health - Cast Healing Wave'),
--
(2038, 0, 0, 0, 2, 0, 40, 0, 0, 70, 17000, 17000, 0, 0, 11, 774, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Lord Melenas - Between 0-70% Health - Cast Rejuvenation'),
(2038, 0, 1, 0, 2, 0, 80, 0, 0, 40, 15000, 15000, 0, 0, 11, 774, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Lord Melenas - Between 0-40% Health - Cast Rejuvenation'),
(2038, 0, 2, 3, 0, 0, 100, 1, 8000, 8000, 0, 0, 0, 0, 11, 5759, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Lord Melenas - In Combat - Cast Cat Form (No Repeat'),
(2038, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Lord Melenas - In Combat - Set Event Phase 1'),
(2038, 0, 4, 0, 9, 1, 90, 0, 0, 0, 13000, 13000, 0, 0, 11, 1822, 34, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Lord Melenas - Within 0-5 Range - Cast Rake (Phase 1)'),
(2038, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Lord Melenas - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(2039, 0, 0, 0, 9, 0, 100, 0, 0, 0, 5000, 8000, 0, 5, 11, 15793, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Ursal the Mauler - Within 0-5 Range - Cast Maul'),
(2152, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Gnarlpine Ambusher - Between 0-15% Health - Flee For Assist (No Repeat)'),
(7234, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Ferocitas the Dream Eater - On Respawn - Cast Thrash Proc'),
(7235, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9739, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Gnarlpine Mystic - In Combat - Cast Wrath'),
(14428, 0, 0, 0, 0, 0, 60, 0, 4000, 4000, 33000, 33000, 0, 0, 11, 15971, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Uruson - In Combat - Cast Demoralizing Roar'),
(14429, 0, 0, 0, 9, 0, 100, 0, 0, 4000, 8000, 12000, 0, 5, 11, 19319, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Grimmaw - Within 0-5 Range - Cast Vicious Bite'),
(14431, 0, 0, 0, 0, 0, 70, 0, 2000, 2000, 13000, 13000, 0, 0, 11, 3589, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Fury Shelda - In Combat - Cast Deafening Screech'),
(14431, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Fury Shelda - Between 0-15% Health - Flee For Assist (No Repeat)'),
(14432, 0, 0, 0, 0, 0, 80, 0, 2000, 2000, 5000, 5000, 0, 0, 11, 11976, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Threggil - Within 0-5 Range - Cast Strike'),
(14432, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Threggil - Between 0-15% Health - Flee For Assist (No Repeat)');


-- Byancie <First Aid Trainer> 
SET @TRAINER_ID   := 600;
DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (6094);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES (6094, @TRAINER_ID+45);

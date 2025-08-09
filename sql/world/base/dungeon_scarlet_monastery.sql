UPDATE `creature_template` SET `minlevel` = 40, `maxlevel` = 40 WHERE `entry` = 3975; -- Herod <The Scarlet Champion>
UPDATE `creature_template` SET `minlevel` = 42, `maxlevel` = 42 WHERE `entry` = 3976; -- Scarlet Commander Mograine
UPDATE `creature_template` SET `minlevel` = 42, `maxlevel` = 42 WHERE `entry` = 3977; -- High Inquisitor Whitemane
UPDATE `creature_template` SET `rank` = 1                       WHERE `entry` = 4283; -- Scarlet Sentry
UPDATE `creature_template` SET `maxlevel` = 36                  WHERE `entry` = 4286; -- Scarlet Soldier
UPDATE `creature_template` SET `minlevel` = 34, `maxlevel` = 35 WHERE `entry` = 4288; -- Scarlet Beastmaster
UPDATE `creature_template` SET `minlevel` = 36, `maxlevel` = 37 WHERE `entry` = 4289; -- Scarlet Evoker
UPDATE `creature_template` SET `minlevel` = 36, `maxlevel` = 37 WHERE `entry` = 4290; -- Scarlet Guardsman
UPDATE `creature_template` SET `maxlevel` = 35                  WHERE `entry` = 4291; -- Scarlet Diviner
UPDATE `creature_template` SET `minlevel` = 36, `maxlevel` = 37 WHERE `entry` = 4292; -- Scarlet Protector
UPDATE `creature_template` SET `minlevel` = 37, `maxlevel` = 38 WHERE `entry` = 4295; -- Scarlet Myrmidon
UPDATE `creature_template` SET `maxlevel` = 36                  WHERE `entry` = 4297; -- Scarlet Conjuror
UPDATE `creature_template` SET `minlevel` = 37, `maxlevel` = 38 WHERE `entry` = 4298; -- Scarlet Defender
UPDATE `creature_template` SET `maxlevel` = 36                  WHERE `entry` = 4299; -- Scarlet Chaplain
UPDATE `creature_template` SET `maxlevel` = 40                  WHERE `entry` = 4302; -- Scarlet Champion
UPDATE `creature_template` SET `maxlevel` = 40                  WHERE `entry` = 4303; -- Scarlet Abbot
UPDATE `creature_template` SET `maxlevel` = 34                  WHERE `entry` = 4304; -- Scarlet Tracking Hound
UPDATE `creature_template` SET `minlevel` = 31, `maxlevel` = 32 WHERE `entry` = 4308; -- Unfettered Spirit
UPDATE `creature_template` SET `minlevel` = 35, `maxlevel` = 36 WHERE `entry` = 4540; -- Scarlet Monk
UPDATE `creature_template` SET `minlevel` = 34, `maxlevel` = 34 WHERE `entry` = 4543; -- Bloodmage Thalnos
UPDATE `creature_template` SET `maxlevel` = 33                  WHERE `entry` = 6426; -- Anguished Dead
UPDATE `creature_template` SET `minlevel` = 32, `maxlevel` = 33 WHERE `entry` = 6427; -- Haunting Phantasm
UPDATE `creature_template` SET `minlevel` = 37, `maxlevel` = 37 WHERE `entry` = 6487; -- Arcanist Doan
UPDATE `creature_template` SET `minlevel` = 33, `maxlevel` = 33 WHERE `entry` = 6488; -- Fallen Champion
UPDATE `creature_template` SET `minlevel` = 33, `maxlevel` = 33 WHERE `entry` = 6489; -- Ironspine
UPDATE `creature_template` SET `minlevel` = 33, `maxlevel` = 33 WHERE `entry` = 6490; -- Azshir the Sleepless

UPDATE `gameobject_template_addon` SET `flags` = 34 WHERE `entry` = 104591; -- Chapel Door


-- smart scripts
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(4280, 4281, 4282, 4283, 4284, 4285, 4286, 4287, 4288, 4289, 4290, 4291, 4292, 4295, 4296, 4297, 4298, 4540, 4543, 6426, 6490);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(4280, 4281, 4282, 4283, 4284, 4285, 4286, 4287, 4288, 4289, 4290, 4291, 4292, 4295, 4296, 4297, 4298, 4540, 4543, 6426, 6490);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(4280, 0, 0, 0, 9, 0, 100, 0, 3000, 5000, 7000, 12000, 0, 5, 11, 13953, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Scarlet Preserver - Within 0-5 Range - Cast Holy Strike'),
(4280, 0, 1, 0, 14, 0, 100, 0, 500, 40, 12000, 18000, 0, 0, 11, 13952, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,     'Scarlet Preserver - Friendly Missing Health - Cast Holy Light'),
(4280, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Preserver - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4280, 0, 3, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Scarlet Preserver - On Aggro - Say Line 0'),
(4281, 0, 0, 0, 0, 0, 100, 0, 8000, 12000, 9000, 13000, 0, 0, 11, 6979, 64, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,  'Scarlet Scout - Within 0-30 Range - Cast Fire Shot'),
(4281, 0, 1, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Scarlet Scout - Within 5-30 Range - Cast Shoot'),
(4281, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Scout - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4281, 0, 3, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Scarlet Scout - On Aggro - Say Line 0'),
(4282, 0, 0, 0, 0, 0, 50, 0, 0, 6000, 30000, 35000, 0, 0, 11, 8457, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Scarlet Magician - In Combat - Cast Fire Ward'),
(4282, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2100, 3300, 0, 0, 11, 9053, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Scarlet Magician - In Combat - Cast Fireball'),
(4282, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Magician - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4282, 0, 3, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Scarlet Magician - On Aggro - Say Line 0'),
(4283, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Sentry - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4283, 0, 1, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Scarlet Sentry - On Aggro - Say Line 0'),
(4284, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2100, 3200, 0, 0, 11, 9613, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Scarlet Augur - In Combat - Cast Shadow Bolt'),
(4284, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Augur - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4284, 0, 2, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Scarlet Augur - On Aggro - Say Line 0'),
(4285, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2100, 3200, 0, 0, 11, 9734, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Scarlet Disciple - In Combat - Cast Holy Smite'),
(4285, 0, 1, 0, 74, 0, 100, 0, 0, 0, 18000, 21000, 30, 40, 11, 8362, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Scarlet Disciple - Friendly 30% HP - Cast Renew'),
(4285, 0, 2, 0, 14, 0, 100, 0, 600, 40, 11000, 15000, 0, 0, 11, 6063, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Scarlet Disciple - Friendly Missing Health - Cast Heal'),
(4285, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Disciple - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4285, 0, 4, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Scarlet Disciple - On Aggro - Say Line 0'),
--
(4286, 0, 0, 0, 0, 0, 100, 0, 3000, 7000, 10000, 21000, 0, 0, 11, 3639, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Scarlet Soldier - In Combat - Cast Improved Blocking'),
(4286, 0, 1, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Scarlet Soldier - On Aggro - Say Line 0'),
(4286, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Soldier - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4287, 0, 0, 0, 1, 0, 100, 0, 1000, 20000, 20000, 40000, 0, 0, 5, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Scarlet Gallant - Out of Combat - Play Emote'),
(4287, 0, 1, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Scarlet Gallant - On Aggro - Say Line 0'),
(4287, 0, 2, 0, 9, 0, 100, 0, 2000, 10000, 4800, 10900, 0, 5, 11, 14517, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Scarlet Gallant - Within 0-5 Range - Cast Crusader Strike'),
(4287, 0, 3, 0, 0, 0, 100, 0, 4000, 9000, 13000, 22000, 0, 0, 11, 5589, 0, 0, 0, 0, 0, 5, 10, 0, 0, 0, 0, 0, 0, 0,   'Scarlet Gallant - Within 0-10 - Cast Hammer of Justice'),
(4287, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Gallant - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4288, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Scarlet Beastmaster - On Aggro - Say Line 0'),
(4288, 0, 1, 0, 9, 0, 100, 0, 0, 0, 2000, 2000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Scarlet Beastmaster - Within 5-30 Range - Cast Shoot'),
(4288, 0, 2, 0, 9, 0, 100, 0, 9000, 12000, 10000, 13000, 5, 30, 11, 7896, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Scarlet Beastmaster - Within 5-30 Range - Cast Exploding Shot'),
(4288, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Beastmaster - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4289, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Scarlet Evoker - On Aggro - Say Line 0'),
(4289, 0, 1, 0, 0, 0, 100, 0, 0, 1000, 60000, 60000, 0, 0, 11, 2601, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Scarlet Evoker - In Combat - Cast Fire Shield III'),
(4289, 0, 2, 0, 0, 0, 100, 0, 0, 1000, 3000, 3500, 0, 0, 11, 9053, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Scarlet Evoker - In Combat - Cast Fireball'),
(4289, 0, 3, 0, 0, 0, 100, 0, 6000, 8000, 14000, 29000, 0, 0, 11, 8422, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,   'Scarlet Evoker - In Combat - Cast Flamestrike'),
(4289, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Evoker - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4290, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Scarlet Guardsman - On Aggro - Say Line 0'),
(4290, 0, 1, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 7164, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Scarlet Guardsman - In Combat - Cast Defensive Stance (No Repeat)'),
(4290, 0, 2, 0, 0, 0, 100, 0, 8000, 14000, 14000, 34000, 0, 0, 11, 676, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,    'Scarlet Guardsman - Within 0-5 Range - Cast Disarm'),
(4290, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Guardsman - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4291, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Scarlet Diviner - On Aggro - Say Line 0'),
(4291, 0, 1, 0, 0, 0, 100, 0, 0, 0, 3000, 3500, 0, 0, 11, 9053, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Scarlet Diviner - In Combat - Cast Fireball'),
(4291, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Diviner - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4292, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Scarlet Protector - On Aggro - Say Line 0'),
(4292, 0, 1, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 8258, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Scarlet Protector - In Combat - Cast Devotion Aura (No Repeat)'),
(4292, 0, 2, 0, 14, 0, 100, 0, 1600, 20, 13000, 22000, 0, 0, 11, 15493, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,    'Scarlet Protector - Friendly Missing Health - Cast Holy Light'),
(4292, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Protector - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4295, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Scarlet Myrmidon - On Aggro - Say Line 1'),
(4295, 0, 1, 2, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8269, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Scarlet Myrmidon - Between 0-30% Health - Cast Frenzy'),
(4295, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Scarlet Myrmidon - On Frenzy - Say Line 2'),
(4295, 0, 3, 0, 8, 0, 100, 769, 28441, 0, 0, 0, 0, 0, 80, 429400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Scarlet Myrmidon - spellhit_target - AshbringerEvent'),
(4296, 0, 0, 0, 1, 0, 100, 0, 1000, 20000, 20000, 40000, 0, 0, 5, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Scarlet Adept - Out of Combat - Play Emote'),
(4296, 0, 1, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Scarlet Adept - On Aggro - Say Line 0'),
(4296, 0, 2, 0, 0, 0, 100, 0, 0, 0, 2500, 3500, 0, 0, 11, 9734, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Scarlet Adept - In Combat - Cast Holy Smite'),
(4296, 0, 3, 0, 14, 0, 100, 0, 600, 40, 14000, 22000, 0, 0, 11, 6063, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,      'Scarlet Adept - Friendly Missing Health - Cast Heal'),
(4296, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Adept - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4297, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 8985, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Scarlet Conjuror - Out of Combat - Cast Summon Fire Elemental'),
(4297, 0, 1, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Scarlet Conjuror - On Aggro - Say Line 0'),
(4297, 0, 2, 0, 0, 0, 100, 0, 0, 1000, 3000, 3500, 0, 0, 11, 9053, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Scarlet Conjuror - In Combat - Cast Fireball'),
(4297, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Conjuror - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4298, 0, 0, 0, 0, 0, 100, 0, 8000, 13000, 8000, 19000, 0, 0, 11, 3639, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Scarlet Defender - In Combat - Cast Improved Blocking'),
(4298, 0, 1, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Scarlet Defender - On Aggro - Say Line 1'),
(4298, 0, 2, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 7164, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Scarlet Defender - In Combat - Cast Defensive Stance (No Repeat)'),
(4298, 0, 3, 0, 105, 0, 100, 0, 4000, 14000, 9000, 18000, 0, 5, 11, 11972, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Scarlet Defender - Victim Casting - Cast Shield Bash'),
(4298, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Defender - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4298, 0, 5, 0, 8, 0, 100, 769, 28441, 0, 0, 0, 0, 0, 80, 429400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Scarlet Defender - spellhit_target - AshbringerEvent'),
(4540, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3391, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Scarlet Monk - On Reset - Cast Thrash'),
(4540, 0, 1, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Scarlet Monk - On Aggro - Say Line 1'),
(4540, 0, 2, 0, 13, 0, 100, 0, 7000, 7000, 0, 0, 0, 0, 11, 11978, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,          'Scarlet Monk - Victim Casting - Cast Kick'),
(4540, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Monk - Between 0-15% Health - Flee For Assist'),
(4540, 0, 4, 0, 8, 0, 100, 769, 28441, 0, 0, 0, 0, 0, 80, 429400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Scarlet Monk - spellhit_target - AshbringerEvent'),
--
(4543, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Bloodmage Thalnos - On Aggro - Say Line 0'),
(4543, 0, 1, 0, 5, 0, 100, 0, 5000, 5000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Bloodmage Thalnos - On Kill - Say Line 2'),
(4543, 0, 2, 0, 2, 0, 100, 1, 0, 40, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Bloodmage Thalnos - Between Health 0-40% - Say Line 1'),
(4543, 0, 3, 0, 0, 0, 100, 0, 0, 3000, 3000, 5000, 0, 0, 11, 9613, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Bloodmage Thalnos - In Combat - Cast Shadow Bolt'),
(4543, 0, 4, 0, 0, 0, 100, 0, 0, 8000, 8000, 16000, 0, 0, 11, 8814, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,       'Bloodmage Thalnos - Within 0-30 Range - Cast Flame Spike'),
(4543, 0, 5, 0, 0, 0, 100, 0, 0, 16000, 16000, 60000, 0, 0, 11, 8053, 0, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,     'Bloodmage Thalnos - Within 0-20 Range - Cast Flame Shock'),
(4543, 0, 6, 0, 106, 0, 100, 0, 0, 9000, 9000, 12000, 0, 10, 11, 12470, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Bloodmage Thalnos - In Combat - Cast Fire Nova'),
(6426, 0, 0, 0, 9, 0, 100, 0, 3000, 9000, 10000, 20000, 0, 20, 11, 7068, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Anguished Dead - Within 0-20 Range - Cast Veil of Shadows'),
(6490, 0, 0, 0, 37, 0, 90, 0, 0, 0, 0, 0, 0, 0, 41, 500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Azshir the Sleepless - On AI Init - Despawn'),
(6490, 0, 1, 0, 0, 0, 100, 0, 7000, 11000, 70000, 70000, 0, 0, 11, 5137, 32, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,  'Azshir the Sleepless - Within 0-5 Range - Cast Call of the Grave'),
(6490, 0, 2, 0, 0, 0, 100, 0, 6000, 8000, 20000, 20000, 0, 0, 11, 7399, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,    'Azshir the Sleepless - Within 0-5 Range - Cast Terrify'),
(6490, 0, 3, 0, 2, 0, 100, 0, 0, 50, 20000, 20000, 0, 0, 11, 9373, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Azshir the Sleepless - Between 0-50% Health - Cast Soul Siphon'),
(6490, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Azshir the Sleepless - Between 0-15% Health - Flee For Assist (No Repeat)');


DELETE FROM `creature_text` WHERE `CreatureID` IN (4280, 4281, 4282, 4284, 4285);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
--
(4280, 0, 0, 'You carry the taint of the Scourge. Prepare to enter the Twisting Nether.', 12, 7, 100, 0, 0, 0, 2625, 0,                 'Scarlet Preserver'),
(4280, 0, 1, 'There is no escape for you. The Crusade shall destroy all who carry the Scourge\'s taint.', 12, 7, 100, 0, 0, 0, 2626, 0, 'Scarlet Preserver'),
(4280, 0, 2, 'The Light condemns all who harbor evil. Now you will die!', 12, 7, 100, 0, 0, 0, 2627, 0,                                 'Scarlet Preserver'),
(4280, 0, 3, 'The Scarlet Crusade shall smite the wicked and drive evil from these lands!', 12, 7, 100, 0, 0, 0, 2628, 0,               'Scarlet Preserver'),
(4281, 0, 0, 'You carry the taint of the Scourge. Prepare to enter the Twisting Nether.', 12, 7, 100, 0, 0, 0, 2625, 0,                 'Scarlet Scout'),
(4281, 0, 1, 'There is no escape for you. The Crusade shall destroy all who carry the Scourge\'s taint.', 12, 7, 100, 0, 0, 0, 2626, 0, 'Scarlet Scout'),
(4281, 0, 2, 'The Light condemns all who harbor evil. Now you will die!', 12, 7, 100, 0, 0, 0, 2627, 0,                                 'Scarlet Scout'),
(4281, 0, 3, 'The Scarlet Crusade shall smite the wicked and drive evil from these lands!', 12, 7, 100, 0, 0, 0, 2628, 0,               'Scarlet Scout'),
(4282, 0, 0, 'You carry the taint of the Scourge. Prepare to enter the Twisting Nether.', 12, 7, 100, 0, 0, 0, 2625, 0,                 'Scarlet Magician'),
(4282, 0, 1, 'There is no escape for you. The Crusade shall destroy all who carry the Scourge\'s taint.', 12, 7, 100, 0, 0, 0, 2626, 0, 'Scarlet Magician'),
(4282, 0, 2, 'The Light condemns all who harbor evil. Now you will die!', 12, 7, 100, 0, 0, 0, 2627, 0,                                 'Scarlet Magician'),
(4282, 0, 3, 'The Scarlet Crusade shall smite the wicked and drive evil from these lands!', 12, 7, 100, 0, 0, 0, 2628, 0,               'Scarlet Magician'),
(4284, 0, 0, 'You carry the taint of the Scourge. Prepare to enter the Twisting Nether.', 12, 7, 100, 0, 0, 0, 2625, 0,                 'Scarlet Augur'),
(4284, 0, 1, 'There is no escape for you. The Crusade shall destroy all who carry the Scourge\'s taint.', 12, 7, 100, 0, 0, 0, 2626, 0, 'Scarlet Augur'),
(4284, 0, 2, 'The Light condemns all who harbor evil. Now you will die!', 12, 7, 100, 0, 0, 0, 2627, 0,                                 'Scarlet Augur'),
(4284, 0, 3, 'The Scarlet Crusade shall smite the wicked and drive evil from these lands!', 12, 7, 100, 0, 0, 0, 2628, 0,               'Scarlet Augur'),
(4285, 0, 0, 'You carry the taint of the Scourge. Prepare to enter the Twisting Nether.', 12, 7, 100, 0, 0, 0, 2625, 0,                 'Scarlet Disciple'),
(4285, 0, 1, 'There is no escape for you. The Crusade shall destroy all who carry the Scourge\'s taint.', 12, 7, 100, 0, 0, 0, 2626, 0, 'Scarlet Disciple'),
(4285, 0, 2, 'The Light condemns all who harbor evil. Now you will die!', 12, 7, 100, 0, 0, 0, 2627, 0,                                 'Scarlet Disciple'),
(4285, 0, 3, 'The Scarlet Crusade shall smite the wicked and drive evil from these lands!', 12, 7, 100, 0, 0, 0, 2628, 0,               'Scarlet Disciple');

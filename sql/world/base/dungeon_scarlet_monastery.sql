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
(4280, 4281, 4282, 4283, 4284, 4285, 4543, 6426, 6490);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(4280, 4281, 4282, 4283, 4284, 4285, 4543, 6426, 6490);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(4280, 0, 0, 0, 9, 0, 100, 0, 3000, 5000, 7000, 12000, 0, 5, 11, 13953, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Scarlet Preserver - Within 0-5 Range - Cast Holy Strike'),
(4280, 0, 1, 0, 14, 0, 100, 0, 500, 40, 12000, 18000, 0, 0, 11, 13952, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,    'Scarlet Preserver - Friendly Missing Health - Cast Holy Light'),
(4280, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Scarlet Preserver - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4280, 0, 3, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Scarlet Preserver - On Aggro - Say Line 0'),
(4281, 0, 0, 0, 9, 0, 100, 0, 8000, 12000, 9000, 13000, 0, 30, 11, 6979, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Scarlet Scout - Within 0-30 Range - Cast Fire Shot'),
(4281, 0, 1, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Scarlet Scout - Within 5-30 Range - Cast Shoot'),
(4281, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Scarlet Scout - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4281, 0, 3, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Scarlet Scout - On Aggro - Say Line 0'),
(4282, 0, 0, 0, 0, 0, 50, 0, 0, 6000, 30000, 35000, 0, 0, 11, 8457, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Scarlet Magician - In Combat - Cast Fire Ward'),
(4282, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2100, 3300, 0, 0, 11, 9053, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Scarlet Magician - In Combat - Cast Fireball'),
(4282, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Scarlet Magician - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4282, 0, 3, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Scarlet Magician - On Aggro - Say Line 0'),
(4283, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Scarlet Sentry - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4283, 0, 1, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Scarlet Sentry - On Aggro - Say Line 0'),
(4284, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2100, 3200, 0, 0, 11, 9613, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Scarlet Augur - In Combat - Cast Shadow Bolt'),
(4284, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Scarlet Augur - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4284, 0, 2, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Scarlet Augur - On Aggro - Say Line 0'),
(4285, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2100, 3200, 0, 0, 11, 9734, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Scarlet Disciple - In Combat - Cast Holy Smite'),
(4285, 0, 1, 0, 74, 0, 100, 0, 0, 0, 18000, 21000, 30, 40, 11, 8362, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Scarlet Disciple - Friendly 30% HP - Cast Renew'),
(4285, 0, 2, 0, 14, 0, 100, 0, 600, 40, 11000, 15000, 0, 0, 11, 6063, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Scarlet Disciple - Friendly Missing Health - Cast Heal'),
(4285, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Scarlet Disciple - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4285, 0, 4, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Scarlet Disciple - On Aggro - Say Line 0'),
--
(4543, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Bloodmage Thalnos - On Aggro - Say Line 0'),
(4543, 0, 1, 0, 5, 0, 100, 0, 5000, 5000, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Bloodmage Thalnos - On Kill - Say Line 2'),
(4543, 0, 2, 0, 2, 0, 100, 1, 0, 40, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Bloodmage Thalnos - Between Health 0-40% - Say Line 1'),
(4543, 0, 3, 0, 0, 0, 100, 0, 0, 3000, 3000, 5000, 0, 0, 11, 9613, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Bloodmage Thalnos - In Combat - Cast Shadow Bolt'),
(4543, 0, 4, 0, 0, 0, 100, 0, 0, 8000, 8000, 16000, 0, 0, 11, 8814, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,      'Bloodmage Thalnos - Within 0-30 Range - Cast Flame Spike'),
(4543, 0, 5, 0, 0, 0, 100, 0, 0, 16000, 16000, 60000, 0, 0, 11, 8053, 0, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,    'Bloodmage Thalnos - Within 0-20 Range - Cast Flame Shock'),
(4543, 0, 6, 0, 106, 0, 100, 0, 0, 9000, 9000, 12000, 0, 10, 11, 12470, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Bloodmage Thalnos - In Combat - Cast Fire Nova'),
(6426, 0, 0, 0, 9, 0, 100, 0, 3000, 9000, 10000, 20000, 0, 20, 11, 7068, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Anguished Dead - Within 0-20 Range - Cast Veil of Shadows'),
(6490, 0, 0, 0, 37, 0, 90, 0, 0, 0, 0, 0, 0, 0, 41, 500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Azshir the Sleepless - On AI Init - Despawn'),
(6490, 0, 1, 0, 0, 0, 100, 0, 7000, 11000, 70000, 70000, 0, 0, 11, 5137, 32, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0, 'Azshir the Sleepless - Within 0-5 Range - Cast Call of the Grave'),
(6490, 0, 2, 0, 0, 0, 100, 0, 6000, 8000, 20000, 20000, 0, 0, 11, 7399, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,   'Azshir the Sleepless - Within 0-5 Range - Cast Terrify'),
(6490, 0, 3, 0, 2, 0, 100, 0, 0, 50, 20000, 20000, 0, 0, 11, 9373, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Azshir the Sleepless - Between 0-50% Health - Cast Soul Siphon'),
(6490, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                   'Azshir the Sleepless - Between 0-15% Health - Flee For Assist (No Repeat)');


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

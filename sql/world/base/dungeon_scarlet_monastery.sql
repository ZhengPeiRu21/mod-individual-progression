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
(3976, 4280, 4281, 4282, 4283, 4284, 4285, 4286, 4287, 4288, 4289, 4290, 4291, 4292, 4293, 4294, 4295, 4296, 4297, 4298, 4299, 4300, 4301, 4302, 4303, 4306, 4540, 4543, 6426, 6488, 6489, 6490);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(3976, 4280, 4281, 4282, 4283, 4284, 4285, 4286, 4287, 4288, 4289, 4290, 4291, 4292, 4293, 4294, 4295, 4296, 4297, 4298, 4299, 4300, 4301, 4302, 4303, 4306, 4540, 4543, 6426, 6488, 6489, 6490);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(3976, 0, 0, 0, 38, 0, 100, 0, 0, 1, 0, 0, 0, 0, 1, 6, 0, 1, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Commander Mograine - On Data Set 0 1 - Say Line 6'),
(3976, 0, 1, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 8990, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Scarlet Commander Mograine - In Combat - Cast Retribution Aura (No Repeat)'),
(3976, 0, 2, 0, 0, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 34, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,               'Scarlet Commander Mograine - In Combat - Set Instance Data 1 to 1 (No Repeat)'),
(3976, 0, 3, 0, 9, 0, 100, 0, 6000, 12000, 6000, 18000, 0, 5, 11, 14518, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Scarlet Commander Mograine - In Combat - Cast Crusader Strike'),
(3976, 0, 4, 0, 0, 0, 100, 0, 7000, 16000, 60000, 80000, 0, 0, 11, 5589, 0, 0, 0, 0, 0, 5, 10, 0, 0, 0, 0, 0, 0, 0,  'Scarlet Commander Mograine - In Combat - Cast Hammer of Justice'),
(3976, 0, 5, 6, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 48, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Commander Mograine - On Respawn - Set Active Off'),
(3976, 0, 6, 7, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 19, 33554432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Scarlet Commander Mograine - On Respawn - Remove Flags Not Selectable'),
(3976, 0, 7, 8, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Scarlet Commander Mograine - On Respawn - Set Reactstate Aggressive'),
(3976, 0, 8, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 91, 7, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Commander Mograine - On Respawn - Remove FlagStandstate Dead'),
(3976, 0, 9, 10, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 42, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Commander Mograine - On Aggro - Set Invincibility Hp 1'),
(3976, 0, 10, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Commander Mograine - On Aggro - Say Line 0'),
(3976, 0, 11, 12, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 212, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Scarlet Commander Mograine - On Evade - Stop motion (StopMoving: 0, MovementExpired: 0)'),
(3976, 0, 12, 13, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 96, 32, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Scarlet Commander Mograine - On Evade - Remove Dynamic Flags Dead'),
(3976, 0, 13, 14, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 34, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                  'Scarlet Commander Mograine - On Evade - Set Instance Data 1 to 2'),
(3976, 0, 14, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 19, 33554432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Scarlet Commander Mograine - On Evade - Remove Flags Not Selectable'),
(3976, 0, 15, 0, 5, 0, 100, 0, 0, 0, 1, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                     'Scarlet Commander Mograine - On Killed Unit - Say Line 1'),
(3976, 0, 16, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 34, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Commander Mograine - On Just Died - Set Instance Data 1 to 3'),
(3976, 0, 17, 0, 2, 0, 100, 1, 0, 1, 0, 0, 0, 0, 80, 397600, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Scarlet Commander Mograine - Between 0-1% Health - Run Script (No Repeat)'),
(3976, 0, 18, 0, 8, 1, 100, 512, 9232, 0, 0, 0, 0, 0, 80, 397601, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Scarlet Commander Mograine - On Spellhit \'Scarlet Resurrection\' - Run Script (Phase 1)'),
(3976, 0, 19, 20, 34, 0, 100, 0, 8, 1, 0, 0, 0, 0, 42, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Scarlet Commander Mograine - On Reached Point 1 - Reset Invincibility Hp'),
(3976, 0, 20, 21, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 19, 33554432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Scarlet Commander Mograine - On Reached Point 1 - Remove Flags Not Selectable'),
(3976, 0, 21, 22, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 8, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Scarlet Commander Mograine - On Reached Point 1 - Set Reactstate Aggressive'),
(3976, 0, 22, 23, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8990, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Scarlet Commander Mograine - On Reached Point 1 - Cast \'Retribution Aura\''),
(3976, 0, 23, 24, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 20, 1, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                  'Scarlet Commander Mograine - On Reached Point 1 - Start Attacking'),
(3976, 0, 24, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                   'Scarlet Commander Mograine - On Reached Point 1 - Start Attacking'),
(3976, 0, 25, 0, 8, 0, 100, 1, 28441, 0, 0, 0, 0, 0, 80, 397602, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Scarlet Commander Mograine - On Spellhit \'AB Effect 000\' - Run Script (No Repeat)'),
(3976, 0, 26, 0, 8, 0, 100, 1, 28441, 0, 0, 0, 0, 0, 67, 1, 20, 20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,              'Scarlet Commander Mograine - On Spellhit \'AB Effect 000\' - Create Timed Event (No Repeat)'),
(3976, 0, 27, 0, 59, 0, 100, 0, 1, 0, 0, 0, 0, 0, 12, 16062, 8, 0, 0, 0, 0, 8, 0, 0, 0, 0, 1033.46, 1399.1, 27.3374, 6.25796, 'Scarlet Commander Mograine - On Timed Event 1 Triggered - Summon Creature \'Highlord Mograine\''),
(3976, 0, 28, 0, 8, 0, 100, 0, 28697, 0, 0, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Scarlet Commander Mograine - On Spellhit \'Forgiveness\' - Kill Self'),
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
(4293, 0, 0, 0, 1, 0, 100, 0, 60000, 180000, 180000, 360000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Scarlet Scryer - Out of Combat - Say Line 0'),
(4293, 0, 1, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Scarlet Scryer - On Aggro - Say Line 1'),
(4293, 0, 2, 0, 0, 0, 100, 0, 0, 0, 2100, 3200, 0, 0, 11, 9613, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Scarlet Scryer - In Combat - Cast Shadow Bolt'),
(4293, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Scryer - Between 0-15% Health - Flee For Assist'),
(4294, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Scarlet Sorcerer - On Aggro - Say Line 1'),
(4294, 0, 1, 0, 0, 0, 100, 0, 6000, 8000, 18000, 21000, 0, 0, 11, 6146, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,   'Scarlet Sorcerer - In Combat - Cast Slow'),
(4294, 0, 2, 0, 0, 0, 100, 0, 0, 1000, 3000, 3500, 0, 0, 11, 9672, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Scarlet Sorcerer - In Combat - Cast Frostbolt'),
(4294, 0, 3, 0, 0, 0, 100, 0, 6000, 12000, 20000, 30000, 0, 0, 11, 8364, 64, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0, 'Scarlet Sorcerer - In Combat - Cast Blizzard'),
(4294, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Sorcerer - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4294, 0, 5, 0, 8, 0, 100, 769, 28441, 0, 0, 0, 0, 0, 80, 429400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Scarlet Sorcerer - spellhit_target - AshbringerEvent'),
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
(4299, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 1006, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Scarlet Chaplain - On Reset - Cast Inner Fire'),
(4299, 0, 1, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Scarlet Chaplain - On Aggro - Say Line 1'),
(4299, 0, 2, 0, 16, 0, 100, 0, 6066, 40, 9000, 16000, 0, 0, 11, 6066, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,      'Scarlet Chaplain - Friendly Missing Buff - Cast Power Word: Shield'),
(4299, 0, 3, 0, 14, 0, 100, 0, 1200, 40, 22000, 28000, 0, 0, 11, 8362, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,     'Scarlet Chaplain - Friendly Missing Health - Cast Renew'),
(4299, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Chaplain - Between 0-15% Health - Flee For Assist'),
(4299, 0, 5, 0, 8, 0, 100, 769, 28441, 0, 0, 0, 0, 0, 80, 429400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Scarlet Chaplain - spellhit_target - AshbringerEvent'),
(4300, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Scarlet Wizard - On Aggro - Say Line 1'),
(4300, 0, 1, 0, 106, 0, 100, 0, 2000, 6000, 3600, 12000, 0, 10, 11, 8439, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Scarlet Wizard - In Combat - Cast Arcane Explosion'),
(4300, 0, 2, 0, 0, 0, 100, 0, 1000, 5000, 16000, 27000, 0, 0, 11, 2601, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Scarlet Wizard - In Combat - Cast Fire Shield III'),
(4300, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Wizard - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4300, 0, 4, 0, 8, 0, 100, 769, 28441, 0, 0, 0, 0, 0, 80, 429400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Scarlet Wizard - spellhit_target - AshbringerEvent'),
(4301, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Scarlet Centurion - On Aggro - Say Line 1'),
(4301, 0, 1, 0, 0, 0, 100, 0, 4000, 13000, 12000, 24000, 0, 0, 11, 6192, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Scarlet Centurion - In Combat - Cast Battle Shout'),
(4301, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Centurion - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4301, 0, 3, 0, 8, 0, 100, 769, 28441, 0, 0, 0, 0, 0, 80, 429400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Scarlet Centurion - spellhit_target - AshbringerEvent'),
(4302, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Scarlet Champion - On Aggro - Say Line 1'),
(4302, 0, 1, 0, 9, 0, 100, 0, 1000, 5000, 18000, 27000, 0, 5, 11, 17143, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Scarlet Champion - In Combat - Cast Holy Strike'),
(4302, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Champion - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4302, 0, 3, 0, 8, 0, 100, 769, 28441, 0, 0, 0, 0, 0, 80, 429400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Scarlet Champion - spellhit_target - AshbringerEvent'),
(4303, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Scarlet Abbot - On Aggro - Say Line 1'),
(4303, 0, 1, 0, 74, 0, 100, 0, 0, 0, 24000, 30000, 50, 40, 11, 8362, 64, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,      'Scarlet Abbot - Friendly Between 0-50% Health - Cast Renew'),
(4303, 0, 2, 0, 14, 0, 100, 0, 1800, 40, 13000, 19000, 0, 0, 11, 6064, 64, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,    'Scarlet Abbot - Friendly Missing Health - Cast Heal'),
(4303, 0, 3, 4, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8269, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Scarlet Abbot - Between 0-30% Health - Cast Frenzy (No Repeat)'),
(4303, 0, 4, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Scarlet Abbot - On Frenzy - Say Line 2'),
(4303, 0, 5, 0, 8, 0, 100, 769, 28441, 0, 0, 0, 0, 0, 80, 429400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Scarlet Abbot - spellhit_target - AshbringerEvent'),
(4306, 0, 0, 0, 1, 0, 100, 0, 60000, 180000, 180000, 360000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Scarlet Torturer - Out of Combat - Say Line 0'),
(4306, 0, 1, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Scarlet Torturer - On Aggro - Say Line 1'),
(4306, 0, 2, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 9276, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Scarlet Torturer - On Reset - Cast Immolate'),
(4306, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Torturer - Between 0-15% Health - Flee For Assist'),
(4540, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3391, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Scarlet Monk - On Reset - Cast Thrash'),
(4540, 0, 1, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Scarlet Monk - On Aggro - Say Line 1'),
(4540, 0, 2, 0, 105, 0, 100, 0, 3600, 12800, 3600, 12800, 0, 5, 11, 11978, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Scarlet Monk - Victim Casting - Cast Kick'),
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
(6488, 0, 0, 0, 37, 0, 90, 512, 0, 0, 0, 0, 0, 0, 41, 500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Fallen Champion - On AI Init - Despawn'),
(6488, 0, 1, 0, 9, 0, 100, 0, 5000, 8000, 6000, 14000, 0, 5, 11, 15496, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Fallen Champion - Within 0-5 Range - Cast Cleave'),
(6488, 0, 2, 0, 12, 0, 100, 1, 0, 20, 0, 0, 0, 0, 11, 7160, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,                'Fallen Champion - Target Between 0-20% Health - Cast Execute (No Repeat)'),
(6489, 0, 0, 0, 37, 0, 90, 512, 0, 0, 0, 0, 0, 0, 41, 500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Ironspine - On AI Init - Despawn'),
(6489, 0, 1, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 21007, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Ironspine - On Aggro - Cast Curse of Weakness'),
(6489, 0, 2, 0, 9, 0, 100, 0, 2000, 3000, 25000, 25000, 0, 8, 11, 3815, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Ironspine - Within 0-8 Range - Cast Poison Cloud'),
(6490, 0, 0, 0, 37, 0, 90, 0, 0, 0, 0, 0, 0, 0, 41, 500, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Azshir the Sleepless - On AI Init - Despawn'),
(6490, 0, 1, 0, 0, 0, 100, 0, 7000, 11000, 70000, 70000, 0, 0, 11, 5137, 32, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,  'Azshir the Sleepless - Within 0-5 Range - Cast Call of the Grave'),
(6490, 0, 2, 0, 0, 0, 100, 0, 6000, 8000, 20000, 20000, 0, 0, 11, 7399, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,    'Azshir the Sleepless - Within 0-5 Range - Cast Terrify'),
(6490, 0, 3, 0, 2, 0, 100, 0, 0, 50, 20000, 20000, 0, 0, 11, 9373, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Azshir the Sleepless - Between 0-50% Health - Cast Soul Siphon'),
(6490, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Azshir the Sleepless - Between 0-15% Health - Flee For Assist (No Repeat)');


-- Scarlet Scryer (4293) missing in SM graveyard. they share spawns with Scarlet Torturer (4306)

DELETE FROM `creature` WHERE `guid` BETWEEN 695001 AND 695007;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, 
`wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
(695001, 4293, 0, 0, 189, 0, 0, 1, 1, 1, 1759.54, 1121.24, 7.49103, 4.75209, 86400, 0, 1, 2865, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(695002, 4293, 0, 0, 189, 0, 0, 1, 1, 1, 1784.03, 1118.32, 7.57362, 2.87979, 86400, 0, 0, 2865, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(695003, 4293, 0, 0, 189, 0, 0, 1, 1, 1, 1755.47, 1146.65, 7.57362, 0,       86400, 0, 0, 2865, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(695004, 4293, 0, 0, 189, 0, 0, 1, 1, 1, 1759.29, 1144.24, 7.57362, 3.14159, 86400, 0, 0, 2865, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(695005, 4293, 0, 0, 189, 0, 0, 1, 1, 1, 1793.07, 1146.38, 7.57362, 5.37561, 86400, 0, 0, 2865, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(695006, 4293, 0, 0, 189, 0, 0, 1, 1, 1, 1807.48, 1170.39, 6.90373, 4.95674, 86400, 0, 0, 2865, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(695007, 4293, 0, 0, 189, 0, 0, 1, 1, 1, 1807.84, 1165.98, 6.90374, 1.51844, 86400, 0, 0, 2865, 0, 0, 0, 0, 0, '', 0, 0, NULL);

DELETE FROM `pool_template` WHERE `entry` BETWEEN 601001 AND 601007;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES 
(601001, 1, ''),
(601002, 1, ''),
(601003, 1, ''),
(601004, 1, ''),
(601005, 1, ''),
(601006, 1, ''),
(601007, 1, '');

DELETE FROM `pool_creature` WHERE `pool_entry` BETWEEN 601001 AND 601007;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
(27440,  601001, 0, 'Scarlet Torturer'),
(695001, 601001, 0, 'Scarlet Scryer'),
(27446,  601002, 0, 'Scarlet Torturer'),
(695002, 601002, 0, 'Scarlet Scryer'),
(27447,  601003, 0, 'Scarlet Torturer'),
(695003, 601003, 0, 'Scarlet Scryer'),
(27448,  601004, 0, 'Scarlet Torturer'),
(695004, 601004, 0, 'Scarlet Scryer'),
(39854,  601005, 0, 'Scarlet Torturer'),
(695005, 601005, 0, 'Scarlet Scryer'),
(39855,  601006, 0, 'Scarlet Torturer'),
(695006, 601006, 0, 'Scarlet Scryer'),
(39857,  601007, 0, 'Scarlet Torturer'),
(695007, 601007, 0, 'Scarlet Scryer');

DELETE FROM `creature_addon` WHERE `guid` = 695001;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(695001, 6950010, 0, 0, 0, 0, 0, NULL);

DELETE FROM `waypoint_data` WHERE `id` = 6950010;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
(6950010, 1, 1759.54, 1121.24, 7.49103, NULL, 0, 0, 0, 100, 0),
(6950010, 2, 1781.73, 1122.83, 7.49103, NULL, 0, 0, 0, 100, 0),
(6950010, 3, 1782.84, 1160.14, 7.49103, NULL, 0, 0, 0, 100, 0),
(6950010, 4, 1782.85, 1168.46, 6.82053, NULL, 0, 0, 0, 100, 0),
(6950010, 5, 1800.01, 1168.24, 6.82053, NULL, 0, 0, 0, 100, 0),
(6950010, 6, 1782.85, 1168.46, 6.82053, NULL, 0, 0, 0, 100, 0),
(6950010, 7, 1782.84, 1160.14, 7.49102, NULL, 0, 0, 0, 100, 0),
(6950010, 8, 1784.13, 1145.13, 7.49073, NULL, 0, 0, 0, 100, 0),
(6950010, 9, 1760.54, 1141.73, 7.49073, NULL, 0, 0, 0, 100, 0);


DELETE FROM `creature_text` WHERE `CreatureID` IN (4280, 4281, 4282, 4284, 4285, 4293, 4306);
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
(4285, 0, 3, 'The Scarlet Crusade shall smite the wicked and drive evil from these lands!', 12, 7, 100, 0, 0, 0, 2628, 0,               'Scarlet Disciple'),
(4293, 0, 0, 'Confess and we shall set you free.', 12, 7, 100, 0, 0, 0, 2570, 0,                                                        'Scarlet Scryer'),
(4293, 0, 1, 'You will talk eventually.  You might as well spill it now.', 12, 7, 100, 0, 0, 0, 2569, 0,                                'Scarlet Scryer'),
(4293, 0, 2, 'What?  Oh no, I don\'t care what you have to say.  I just enjoy inflicting pain.', 14, 7, 100, 0, 0, 0, 2571, 0,          'Scarlet Scryer'),
(4293, 0, 3, 'The Scarlet Crusade shall smite the wicked and drive evil from these lands!', 12, 7, 100, 0, 0, 0, 2628, 0,               'Scarlet Scryer'),
(4293, 1, 1, 'The light condemns all who harbor evil. Now you will die!', 12, 7, 100, 0, 0, 0, 2570, 0,                                 'Scarlet Scryer'),
(4293, 1, 2, 'There is no escape for you. The Crusade shall destroy all who carry the scourge\'s taint.', 12, 7, 100, 0, 0, 0, 0, 0,    'Scarlet Scryer'),
(4293, 1, 3, 'You carry the taint of the scourge. Prepare to enter the twisting nether.', 12, 7, 100, 0, 0, 0, 0, 0,                    'Scarlet Scryer'),
(4306, 0, 0, 'Confess and we shall set you free.', 12, 7, 100, 0, 0, 0, 2570, 0,                                                        'Scarlet Torturer'),
(4306, 0, 1, 'You will talk eventually.  You might as well spill it now.', 12, 7, 100, 0, 0, 0, 2569, 0,                                'Scarlet Torturer'),
(4306, 0, 2, 'What?  Oh no, I don\'t care what you have to say.  I just enjoy inflicting pain.', 14, 7, 100, 0, 0, 0, 2571, 0,          'Scarlet Torturer'),
(4306, 0, 3, 'The Scarlet Crusade shall smite the wicked and drive evil from these lands!', 12, 7, 100, 0, 0, 0, 2628, 0,               'Scarlet Torturer'),
(4306, 1, 1, 'The light condemns all who harbor evil. Now you will die!', 12, 7, 100, 0, 0, 0, 2570, 0,                                 'Scarlet Torturer'),
(4306, 1, 2, 'There is no escape for you. The Crusade shall destroy all who carry the scourge\'s taint.', 12, 7, 100, 0, 0, 0, 0, 0,    'Scarlet Torturer'),
(4306, 1, 3, 'You carry the taint of the scourge. Prepare to enter the twisting nether.', 12, 7, 100, 0, 0, 0, 0, 0,                    'Scarlet Torturer');


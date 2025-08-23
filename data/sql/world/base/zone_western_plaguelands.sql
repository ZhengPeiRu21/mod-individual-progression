UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (1839, 1845, 1846, 1885, 10836, 10943);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (1839, 1845, 1846, 1885, 10836, 10943);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(1839, 0, 0, 0, 9, 0, 100, 0, 1000, 3000, 14000, 19000, 0, 30, 11, 17141, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Scarlet High Clerist - In Combat - Cast Holy Fire'),
(1839, 0, 1, 0, 2, 0, 100, 0, 0, 50, 15000, 21000, 0, 0, 11, 15586, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,        'Scarlet High Clerist - Between 0-50% Health - Cast Heal'),
(1839, 0, 2, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 17139, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Scarlet High Clerist - Between 0-30% Health - Cast Power Word: Shield (No Repeat)'),
(1839, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet High Clerist - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(1845, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8258, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'High Protector Tarsen - On Aggro - Cast Devotion Aura'),
(1845, 0, 1, 0, 9, 0, 100, 0, 4000, 12000, 11000, 15000, 0, 5, 11, 10833, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'High Protector Tarsen - Within 0-5 Range - Cast Arcane Blast'),
(1845, 0, 2, 0, 9, 0, 100, 0, 1000, 11000, 10000, 20000, 0, 5, 11, 8242, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'High Protector Tarsen - Within 0-5 Range - Cast Shield Slam'),
(1845, 0, 3, 0, 9, 0, 100, 0, 2300, 3100, 8900, 9600, 0, 5, 11, 13953, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'High Protector Tarsen - Within 0-5 Range - Cast Holy Strike'),
--
(1846, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8990, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'High Protector Lorik - On Aggro - Cast Retribution Aura'),
(1846, 0, 1, 0, 9, 0, 100, 0, 4000, 12000, 11000, 15000, 0, 5, 11, 10833, 0, 1, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'High Protector Lorik - Within 0-5 Range - Cast Arcane Blast'),
(1846, 0, 2, 0, 9, 0, 100, 0, 1000, 11000, 10000, 20000, 0, 5, 11, 15655, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'High Protector Lorik - Within 0-5 Range - Cast Shield Slam'),
(1846, 0, 3, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 13874, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'High Protector Lorik - Between 0-30% Health - Cast Divine Shield (No Repeat)'),
(1846, 0, 4, 0, 14, 0, 100, 0, 3000, 30, 10000, 12000, 0, 0, 11, 15493, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,    'High Protector Lorik - Friendly Missing Health - Cast Holy Light'),
--
(1885, 0, 0, 0, 9, 0, 100, 0, 4000, 7000, 11000, 14000, 0, 5, 11, 11428, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Scarlet Smith - Within 0-5 Range - Cast Knockdown'),
(1885, 0, 1, 0, 9, 0, 100, 0, 3000, 6000, 5000, 8000, 0, 5, 11, 12057, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Scarlet Smith - Within 0-5 Range - Cast Strike'),
(1885, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Scarlet Smith - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(10836, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 8599, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Farmer Dalson - On Aggro - Cast Enrage (No Repeat)'),
(10836, 0, 1, 0, 9, 0, 100, 0, 7000, 12000, 7000, 12000, 0, 5, 11, 16128, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Farmer Dalson - Within 0-5 Range - Cast Infected Bite'),
(10943, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Decrepit Guardian - On Aggro - Say Line 0');


DELETE FROM `creature_text` WHERE `CreatureID` IN (10943);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(10943, 0, 0, 'You cannot save him!', 12, 0, 100, 0, 0, 0, 6282,  0, 'Decrepit Guardian');

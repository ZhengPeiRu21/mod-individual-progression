/* smart scripts */
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(3630, 3631, 3632, 3633, 3634, 3636, 3637, 3655, 3669, 3670, 3671, 3672, 3673, 3674, 3840, 5048, 5053, 5055, 5056, 5755, 5756, 5761, 5775);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(3630, 3631, 3632, 3633, 3634, 3636, 3637, 3655, 3669, 3670, 3671, 3672, 3673, 3674, 3840, 5048, 5053, 5055, 5056, 5755, 5756, 5761, 5775);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(3630, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Deviate Coiler - Between 0-15% Health - Flee For Assist (No Repeat)'),
(3631, 0, 0, 0, 0, 0, 100, 0, 5000, 7000, 12000, 18000, 0, 0, 11, 6607, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Deviate Stinglash - Within 0-5 Range - Cast Lash'), -- maybe shouldn't have this
(3632, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Deviate Creeper - Out of Combat - Cast Sneak'),
(3632, 0, 1, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Deviate Creeper - On Evade - Cast Sneak'),
(3632, 0, 2, 0, 0, 0, 80, 0, 3000, 5000, 6000, 10000, 0, 0, 11, 3427, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Deviate Creeper - Within 0-5 Range - Cast Infected Wound'),
(3633, 0, 0, 0, 2, 0, 100, 0, 0, 40, 9000, 14000, 0, 0, 11, 7938, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,           'Deviate Slayer - Between 0-40% Health - Cast Fatal Bite'),
(3634, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Deviate Stalker - Out of Combat - Cast Sneak'),
(3634, 0, 1, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Deviate Stalker - On Evade - Cast Sneak'),
(3636, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Deviate Ravager - On Respawn - Cast Thrash Proc'),
(3636, 0, 1, 0, 54, 0, 100, 769, 0, 0, 0, 0, 0, 0, 38, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Deviate Ravager - Just Summoned - Set In Combat With Zone'),
(3637, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 39, 40, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Deviate Guardian - Between 0-30% Health - Call for Help'),
(3637, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Deviate Guardian - On Call for Help - Say Line 0'),
--
(3655, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Mad Magglish - Out of Combat - Cast Sneak'),
(3655, 0, 1, 0, 7, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Mad Magglish - On Evade - Cast Sneak'),
(3655, 0, 2, 0, 9, 0, 100, 0, 0, 0, 9000, 14000, 0, 5, 11, 7964, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Mad Magglish - Within 0-5 Range - Cast Smoke Bomb'),
--
(3669, 0, 0, 1, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Lord Cobrahn - On Aggro - Say Line 0'),
(3669, 0, 1, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 22, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Lord Cobrahn - On Aggro - Set Event Phase 1'),
(3669, 0, 2, 0, 0, 1, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Lord Cobrahn - In Combat - Cast Lightning Bolt'),
(3669, 0, 3, 0, 0, 1, 100, 0, 10000, 10000, 13000, 20000, 0, 0, 11, 8040, 32, 0, 0, 0, 0, 6, 30, 0, 0, 0, 0, 0, 0, 0,  'Lord Cobrahn - In Combat - Cast Druids Slumber'),
(3669, 0, 4, 0, 14, 1, 100, 0, 400, 40, 12000, 18000, 0, 0, 11, 5187, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Lord Cobrahn - Friendly Missing Health - Cast Healing Touch'),
(3669, 0, 5, 6, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 7965, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Lord Cobrahn - Health Between 0-30% - Cast Cobrahn Serpent Form'),
(3669, 0, 6, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 3616, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Lord Cobrahn - Between 0-30% Health - Cast Poison Proc'),
(3669, 0, 7, 0, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 34, 0, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Lord Cobrahn - On Just Died - Set Instance Data 0 to 3'),
--
(3670, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Lord Pythas - On Aggro - Say Line 0'),
(3670, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Lord Pythas - In Combat - Cast Lightning Bolt'),
(3670, 0, 2, 0, 0, 0, 100, 0, 6000, 8000, 6000, 11000, 0, 0, 11, 8147, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Lord Pythas - In Combat - Cast Thunderclap'),
(3670, 0, 3, 0, 0, 0, 100, 0, 8000, 12000, 12000, 20000, 0, 0, 11, 700, 32, 0, 0, 0, 0, 6, 30, 0, 0, 0, 0, 0, 0, 0,    'Lord Pythas - In Combat - Cast Druids Slumber'),
(3670, 0, 4, 0, 14, 0, 100, 0, 400, 40, 20000, 25000, 0, 0, 11, 5187, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Lord Pythas - Friendly Missing Health - Cast Healing Touch'),
(3670, 0, 5, 0, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 34, 1, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Lord Pythas - On Just Died - Set Instance Data 1 to 3'),
--
(3671, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Lady Anacondra - On Aggro - Say Line 0'),
(3671, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Lady Anacondra - In Combat - Cast Lightning Bolt'),
(3671, 0, 2, 0, 0, 0, 100, 0, 8000, 12000, 12000, 25000, 0, 0, 11, 700, 32, 0, 0, 0, 0, 6, 30, 0, 0, 0, 0, 0, 0, 0,    'Lady Anacondra - In Combat - Cast Druids Slumber'),
(3671, 0, 3, 0, 14, 0, 100, 0, 400, 40, 15000, 26000, 0, 0, 11, 5187, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Lady Anacondra - Friendly Missing Health - Cast Healing Touch'),
(3671, 0, 4, 0, 0, 0, 100, 0, 1000, 3000, 50000, 50000, 0, 0, 11, 8148, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Lady Anacondra - In Combat - Cast Thorns'),
(3671, 0, 5, 0, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 34, 2, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Lady Anacondra - On Just Died - Set Instance Data 2 to 3'),
--
(3672, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Boahn - In Combat - Cast Lightning Bolt'),
(3672, 0, 1, 0, 74, 0, 100, 0, 0, 0, 20000, 30000, 60, 40, 11, 5187, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Boahn - Friendly Between 0-60% Health - Cast Healing Touch'),
(3672, 0, 2, 0, 2, 0, 100, 1, 0, 50, 0, 0, 0, 0, 11, 8041, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Boahn - Between 0-50% Health - Cast Snake Form'),
(3672, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Boahn - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(3673, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Lord Serpentis - On Aggro - Say Line 1'),
(3673, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Lord Serpentis - In Combat - Cast Lightning Bolt'),
(3673, 0, 2, 0, 0, 0, 100, 0, 3000, 6000, 10000, 20000, 0, 0, 11, 700, 32, 0, 0, 0, 0, 6, 30, 0, 0, 0, 0, 0, 0, 0,     'Lord Serpentis - In Combat - Cast Druids Slumber'),
(3673, 0, 3, 0, 14, 0, 100, 0, 600, 40, 12000, 18000, 0, 0, 11, 6778, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Lord Serpentis - Friendly Missing Health - Cast Healing Touch'),
(3673, 0, 4, 0, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 34, 3, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Lord Serpentis - On Just Died - Set Instance Data 3 to 3'),
--
(3674, 0, 0, 0, 0, 0, 100, 0, 1000, 2000, 4000, 8000, 0, 0, 11, 6254, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Skum - In Combat - Cast Chained Bolt'),
(3674, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Skum - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(3840, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Druid of the Fang - In Combat - Cast Lightning Bolt'),
(3840, 0, 1, 0, 0, 0, 100, 0, 8000, 9000, 10000, 20000, 0, 0, 11, 8040, 32, 0, 0, 0, 0, 6, 30, 0, 0, 0, 0, 0, 0, 0,    'Druid of the Fang - In Combat - Cast Druids Slumber'),
(3840, 0, 2, 0, 14, 0, 100, 0, 400, 40, 12000, 18000, 0, 0, 11, 5187, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Druid of the Fang - Friendly Missing Health - Cast Healing Touch'),
(3840, 0, 3, 0, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8041, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Druid of the Fang - Between 0-30% Health - Cast Serpent Form'),
(3840, 0, 4, 5, 1, 0, 100, 0, 5000, 60000, 60000, 90000, 0, 0, 11, 13236, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Druid of the Fang - Out of Combat - Cast Nature Channeling'),
(3840, 0, 5, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 67, 1, 6000, 30000, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Druid of the Fang - Out of Combat - Create Timed Event'),
(3840, 0, 6, 0, 59, 0, 100, 512, 1, 0, 0, 0, 0, 0, 28, 13236, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Druid of the Fang - Timed Event - Remove Aura Nature Channeling'),
(3840, 0, 7, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Druid of the Fang - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(5048, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3616, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Deviate Adder - On Respawn - Cast Poison Proc'),
(5048, 0, 1, 0, 54, 0, 100, 769, 0, 0, 0, 0, 0, 0, 38, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Deviate Adder - Just Summoned - Set In Combat With Zone'),
(5053, 0, 0, 0, 9, 0, 100, 0, 0, 0, 9000, 12000, 0, 5, 11, 3604, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Deviate Crocolisk - Within 0-5 Range - Cast Tendon Rip'),
(5055, 0, 0, 0, 9, 0, 100, 0, 0, 0, 7000, 10000, 0, 8, 11, 7342, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Deviate Lasher - Within 0-8 Range - Cast Wide Slash'),
(5056, 0, 0, 0, 9, 0, 100, 0, 0, 0, 9000, 15000, 0, 5, 11, 7399, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Deviate Dreadfang - Within 0-5 Range - Cast Terrify'),
(5755, 0, 0, 0, 0, 0, 100, 0, 5000, 8000, 10000, 16000, 0, 0, 11, 7947, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Deviate Viper - Within 0-5 Range - Cast Localized Toxin'),
(5755, 0, 1, 0, 54, 0, 100, 512, 0, 0, 0, 0, 0, 0, 38, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Deviate Viper - Is Summoned - Set In Combat With Zone'),
(5756, 0, 0, 0, 9, 0, 50, 0, 0, 0, 3000, 5000, 0, 30, 11, 7951, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Deviate Venomwing - Within 0-30 Range - Cast Toxic Spit'),
(5761, 0, 0, 0, 2, 0, 100, 0, 0, 50, 18000, 21000, 0, 0, 11, 7948, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Deviate Shambler - Between 0-50% Health - Cast Wild Regeneration'),
(5775, 0, 0, 0, 9, 0, 100, 0, 0, 0, 13000, 16000, 0, 8, 11, 8142, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Verdan the Everliving - Within 0-8 Range - Cast Grasping Vines');


-- fix Respawn and Movement
UPDATE `creature` SET `spawntimesecs` = 172800, `MovementType` = 1, `wander_distance` = 2 WHERE `id1` = 3652; -- Trigore the Lasher
UPDATE `creature` SET `spawntimesecs` = 54000,  `MovementType` = 1, `wander_distance` = 5 WHERE `id1` = 3672; -- Boahn

DELETE FROM `creature` WHERE `id1` IN (3655, 3671);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, 
`spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
--
(14055,  3655, 0, 0, 1, 0, 0, 1, 1, 1, -658.948, -2006.91, 61.816, 3.46793,     275, 0, 0, 386, 0, 0, 0, 0, 0, '', 0, 0, NULL),   -- Mad Magglish
(695071, 3655, 0, 0, 1, 0, 0, 1, 1, 1, -729.461, -2123.53, 67.0995, 0.57721,    275, 0, 0, 386, 0, 0, 0, 0, 0, '', 0, 0, NULL),   -- https://www.youtube.com/watch?v=LyWBLEYizL4
(695072, 3655, 0, 0, 1, 0, 0, 1, 1, 1, -786.0494, -2086.528, 74.86207, 0.48296, 275, 0, 0, 386, 0, 0, 0, 0, 0, '', 0, 0, NULL),   -- https://www.youtube.com/watch?v=xNqTbW-WECk
--
(27366,  3671, 0, 0, 43, 0, 0, 1, 1, 1, 15.3449, 297.176, -87.7016, 2.80998, 36000, 0, 0, 2165, 490, 0, 0, 0, 0, '', 0, 0, NULL), -- Lady Anacondra
(695073, 3671, 0, 0, 43, 0, 0, 1, 1, 1, -53.984, 271.39, -92.844, 2.41,      36000, 0, 0, 2165, 490, 0, 0, 0, 0, '', 0, 0, NULL),
(695074, 3671, 0, 0, 43, 0, 0, 1, 1, 1, -67.783, 122.6, -89.94, 3.09,        36000, 0, 0, 2165, 490, 0, 0, 0, 0, '', 0, 0, NULL),
(695075, 3671, 0, 0, 43, 0, 0, 1, 1, 1, 46.4727, 183.984, -89.1516, 4.01967, 36000, 0, 0, 2165, 490, 0, 0, 0, 0, '', 0, 0, NULL);

DELETE FROM `pool_creature` WHERE `pool_entry` IN (601039, 601040);
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
--
(14055,  601039, 0, 'Mad Magglish'),
(695071, 601039, 0, 'Mad Magglish'),
(695072, 601039, 0, 'Mad Magglish'),
--
(27366,  601040, 0, 'Lady Anacondra'),
(695073, 601040, 0, 'Lady Anacondra'),
(695074, 601040, 0, 'Lady Anacondra'),
(695075, 601040, 0, 'Lady Anacondra');

DELETE FROM `pool_template` WHERE `entry` IN (601039, 601040);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES 
(601039, 1, 'Mad Magglish - Wailing Caverns'),
(601040, 1, 'Lady Anacondra - Wailing Caverns');

DELETE FROM `creature_addon` WHERE `guid` IN (14055, 695071, 695072);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
(14055,  0, 0, 131072, 1, 0, 0, ''),
(695071, 0, 0, 131072, 1, 0, 0, ''),
(695072, 0, 0, 131072, 1, 0, 0, '');

/* smart scripts */
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(6206, 6211, 6212, 6218, 6219, 6220, 6225, 6226, 6227, 6229, 6230, 6234, 6235, 6391, 6392, 7079);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(6206, 6211, 6212, 6218, 6219, 6220, 6225, 6226, 6227, 6229, 6230, 6234, 6235, 6391, 6392, 7079);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(6206, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 7164, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Caverndeep Burrower - In Combat - Cast Defensive Stance (No Repeat)'),
(6206, 0, 1, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 16145, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Caverndeep Burrower - Within 0-5 Range - Cast Sunder Armor'),
(6206, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Caverndeep Burrower - Between 0-15% Health - Flee For Assist (No Repeat)'),
(6206, 0, 3, 0, 8, 0, 100, 0, 9798, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Caverndeep Burrower - On Spell Hit - Say Line 0'),
(6211, 0, 0, 0, 0, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 7366, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Caverndeep Reaver - In Combat - Cast Berserker Stance (No Repeat)'),
(6211, 0, 1, 0, 0, 0, 100, 0, 1000, 8000, 6000, 12000, 0, 0, 11, 8374, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Caverndeep Reaver - Within 0-5 Range - Cast Arcing Smash'),
(6211, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Caverndeep Reaver - Between 0-15% Health - Flee For Assist (No Repeat)'),
(6211, 0, 3, 0, 8, 0, 100, 0, 9798, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Caverndeep Reaver - On Spell Hit - Say Line 0'),
(6212, 0, 0, 0, 9, 0, 100, 0, 0, 0, 15000, 15000, 0, 5, 11, 11802, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Dark Iron Agent - Within 0-5 Range - Cast Dark Iron Land Mine'),
(6212, 0, 1, 0, 4, 0, 40, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Dark Iron Agent - On Aggro - Say Line 1'),
(6212, 0, 2, 0, 8, 0, 100, 0, 9798, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Dark Iron Agent - On Spellhit Radiation - Say Line 0'),
--
(6218, 0, 0, 0, 0, 0, 100, 0, 2000, 10000, 14000, 21000, 0, 0, 11, 10341, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Irradiated Slime - In Combat - Cast Radiation Cloud'),
(6218, 0, 1, 0, 0, 0, 100, 0, 2000, 9000, 11000, 14000, 0, 0, 11, 9459, 0, 0, 0, 0, 0, 17, 0, 5, 0, 0, 0, 0, 0, 0,     'Irradiated Slime - Within 0-5 Range - Cast Corrosive Ooze'),
(6219, 0, 0, 0, 0, 0, 100, 0, 2000, 10000, 14000, 21000, 0, 0, 11, 10341, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Corrosive Lurker - In Combat - Cast Radiation Cloud'),
(6219, 0, 1, 0, 0, 0, 100, 0, 2000, 9000, 11000, 14000, 0, 0, 11, 9459, 0, 0, 0, 0, 0, 17, 0, 5, 0, 0, 0, 0, 0, 0,     'Corrosive Lurker - Within 0-5 Range - Cast Corrosive Ooze'),
(6220, 0, 0, 0, 0, 0, 100, 0, 2000, 10000, 14000, 21000, 0, 0, 11, 8211, 256, 0, 0, 0, 0, 5, 30, 0, 1, 0, 0, 0, 0, 0,  'Irradiated Horror - In Combat - Cast Chain Burn'),
(6220, 0, 1, 0, 0, 0, 100, 513, 1000, 2000, 0, 0, 0, 0, 75, 10341, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Irradiated Horror - In Combat - Add Aura Radiation Cloud (No Repeat)'),
(6220, 0, 2, 0, 0, 0, 100, 0, 2000, 9000, 11000, 14000, 0, 0, 11, 9459, 0, 0, 0, 0, 0, 17, 0, 5, 0, 0, 0, 0, 0, 0,     'Irradiated Horror - Within 0-5 Range - Cast Corrosive Ooze'),
--
(6225, 0, 0, 0, 0, 0, 100, 0, 5000, 6000, 8000, 9000, 5, 30, 11, 10346, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0,      'Mechano-Tank - Within 5-30 Range - Cast Machine Gun'),
(6226, 0, 0, 0, 9, 0, 100, 0, 0, 0, 8000, 14000, 0, 8, 11, 11306, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Mechano-Flamewalker - Within 0-8 Range - Cast Fire Nova'),
(6226, 0, 1, 0, 0, 0, 100, 0, 9000, 9000, 10900, 20400, 0, 0, 11, 10733, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Mechano-Flamewalker - Within 0-5 Range - Cast Flame Spray'),
(6227, 0, 0, 1, 106, 0, 100, 0, 0, 0, 26700, 30700, 0, 8, 11, 11264, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Mechano-Frostwalker - Within 0-8 Range - Cast Ice Blast'),
(6227, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 10737, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Mechano-Frostwalker - In Combat - Cast Hail Storm'),
(6229, 0, 1, 0, 0, 0, 100, 0, 11000, 11000, 17200, 33400, 0, 0, 11, 10887, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Crowd Pummeler 9-60 - Within 0-5 Range - Cast Crowd Pummel'),
(6229, 0, 2, 0, 9, 0, 100, 0, 0, 0, 15000, 15000, 0, 8, 11, 5568, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Crowd Pummeler 9-60 - Within 0-8 Range - Cast Trample'),
(6229, 0, 3, 0, 0, 0, 100, 0, 3000, 5000, 8000, 12000, 0, 0, 11, 8374, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Crowd Pummeler 9-60 - Within 0-5 Range - Cast Arcing Smash'),
(6230, 0, 0, 0, 0, 0, 100, 0, 5000, 6000, 6000, 8000, 0, 0, 11, 6533, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Peacekeeper Security Suit - In Combat - Cast Net'),
(6230, 0, 1, 0, 0, 0, 50, 0, 5000, 6000, 14000, 16000, 0, 0, 11, 10730, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,      'Peacekeeper Security Suit - Within 0-5 Range - Cast Pacify'),
(6234, 0, 0, 0, 0, 0, 100, 0, 3000, 5000, 14500, 19300, 0, 0, 11, 11825, 0, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,    'Mechanized Guardian - In Combat - Cast Electrified Net'),
(6235, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Electrocutioner 6000 - On Aggro - Say Line 0'),
(6235, 0, 1, 0, 0, 0, 100, 0, 17000, 17000, 21000, 21000, 0, 0, 11, 11084, 0, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,  'Electrocutioner 6000 - Within 0-20 Range - Cast Shock'),
(6235, 0, 2, 0, 0, 0, 100, 0, 10000, 10000, 14500, 27400, 0, 0, 11, 11082, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Electrocutioner 6000 - In Combat - Cast Megavolt'),
(6235, 0, 3, 0, 0, 0, 100, 0, 3000, 3000, 21000, 21000, 0, 0, 11, 11085, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Electrocutioner 6000 - In Combat - Cast Chain Bolt'),
--
(6391, 0, 0, 0, 9, 0, 100, 0, 0, 0, 7000, 10000, 0, 5, 11, 11976, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Holdout Warrior - Within 0-5 Range - Cast Strike'),
(6391, 0, 1, 0, 105, 0, 100, 0, 0, 0, 10000, 12000, 0, 5, 11, 12555, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Holdout Warrior - Victim Casting - Cast Pummel'),
(6391, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Holdout Warrior - Between 0-15% Health - Flee For Assist (No Repeat)'),
(6391, 0, 3, 0, 8, 0, 100, 0, 9798, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Holdout Warrior - On Spellhit Radiation - Say Line 0'),
(6392, 0, 0, 0, 14, 0, 100, 0, 1500, 40, 14000, 21000, 0, 0, 11, 22167, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,      'Holdout Medic - Friendly Missing Health - Cast Heal'),
(6392, 0, 1, 0, 14, 0, 100, 0, 1000, 40, 12000, 16000, 0, 0, 11, 22168, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,      'Holdout Medic - Friendly Missing Health - Cast Renew'),
(6392, 0, 2, 0, 1, 0, 100, 0, 5000, 5000, 8000, 10000, 0, 0, 11, 22167, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Holdout Medic - Out of Combat - Cast Heal'),
(6392, 0, 3, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 13864, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Holdout Medic - On Reset - Cast Power Word: Fortitude'),
(6392, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Holdout Medic - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(7079, 0, 0, 0, 0, 0, 100, 0, 4000, 12000, 16000, 21000, 0, 0, 11, 21687, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Viscous Fallout - In Combat - Cast Toxic Volley'),
(7079, 0, 1, 0, 0, 0, 100, 513, 1000, 2000, 0, 0, 0, 0, 75, 10341, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Viscous Fallout - In Combat - Add Aura Radiation Cloud'),
(7079, 0, 2, 0, 0, 0, 100, 0, 2000, 9000, 11000, 14000, 0, 0, 11, 9459, 0, 0, 0, 0, 0, 17, 0, 5, 0, 0, 0, 0, 0, 0,     'Viscous Fallout - Within 0-5 Range - Cast Corrosive Ooze');


-- fix two wounded gnomes that don't stand up on aggro
UPDATE `creature_addon` SET `bytes1` = 0 WHERE `guid` IN (30321, 30322);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-30321, -30322);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(-30321, 0, 0, 0, 1, 0, 100, 1, 3000, 6000, 0, 0, 0, 0, 11, 29266, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Holdout Warrior - Out of Combat - Cast Permanent Feign Death (No Repeat)'),
(-30321, 0, 1, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 28, 29266, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Holdout Warrior - On Aggro - Remove Permanent Feign Death'),
(-30322, 0, 0, 0, 1, 0, 100, 1, 3000, 6000, 0, 0, 0, 0, 11, 29266, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Holdout Warrior - Out of Combat - Cast Permanent Feign Death (No Repeat)'),
(-30322, 0, 1, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 28, 29266, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Holdout Warrior - On Aggro - Remove Permanent Feign Death');

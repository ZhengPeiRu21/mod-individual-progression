/* smart scripts */
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (4382, 4397);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(4323, 4328, 4329, 4331, 4334, 4344, 4345, 4346, 4347, 4348, 4351, 4352, 4356, 4359, 4360, 4361, 4362, 4363, 4364, 4366, 4368, 4370, 4371, 4374, 4376, 4378, 4379, 
4380, 4385, 4387, 4389, 4390, 4392, 4393, 4394, 4401, 4404, 4412, 4414, 4834, 14230, 14232, 14236, 15552, 23592, 23593, 23594, 23595, 23714, 23786, 23841, 23873);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(4323, 4328, 4329, 4331, 4334, 4344, 4345, 4346, 4347, 4348, 4351, 4352, 4356, 4359, 4360, 4361, 4362, 4363, 4364, 4366, 4368, 4370, 4371, 4374, 4376, 4378, 4379, 
4380, 4382, 4385, 4387, 4389, 4390, 4392, 4393, 4394, 4397, 4401, 4404, 4412, 4414, 4834, 14230, 14232, 14236, 15552, 23592, 23593, 23594, 23595, 23714, 23786, 23841, 23873);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(4323, 0, 0, 0, 0, 0, 100, 0, 2400, 2700, 9400, 9700, 0, 0, 11, 11985, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Searing Hatchling - In Combat - Cast Fireball'),
(4328, 0, 1, 0, 0, 0, 100, 0, 0, 0, 15000, 30000, 0, 0, 11, 18968, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Firemane Scalebane - In Combat - Cast Fire Shield'),
(4328, 0, 2, 0, 105, 0, 100, 0, 0, 0, 12000, 17000, 0, 5, 11, 11972, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Firemane Scalebane - Within 0-5 Range - Cast Shield Bash'),
(4328, 0, 3, 0, 9, 0, 100, 0, 3000, 3000, 5000, 9000, 0, 5, 11, 11971, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Firemane Scalebane - Within 0-5 Range - Cast Sunder Armor'),
(4328, 0, 4, 0, 8, 0, 100, 512, 42411, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Firemane Scalebane - On spell hit  - Despawn'), -- Brogg's Totem
(4329, 0, 0, 0, 0, 0, 100, 0, 0, 0, 15000, 30000, 0, 0, 11, 18968, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Firemane Scout - In Combat - Cast Fire Shield'),
(4329, 0, 1, 0, 8, 0, 100, 512, 42411, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Firemane Scout - On spell hit  - Despawn'), -- Brogg's Totem
(4331, 0, 0, 0, 0, 0, 100, 0, 0, 0, 15000, 30000, 0, 0, 11, 18968, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Firemane Ash Tail - In Combat - Cast Fire Shield'),
(4331, 0, 1, 0, 106, 0, 100, 0, 4000, 6000, 12000, 16000, 0, 5, 11, 11969, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Firemane Ash Tail - Within 0-5 Range - Cast Fire Nova'),
(4331, 0, 2, 0, 8, 0, 100, 512, 42411, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Firemane Ash Tail - On spell hit  - Despawn'), -- Brogg's Totem
(4334, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 18968, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                  'Firemane Flamecaller - On Aggro - Cast Fireball'),
(4334, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2400, 3400, 0, 0, 11, 9053, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Firemane Flamecaller - In Combat - Cast Fireball'),
(4334, 0, 2, 0, 0, 0, 100, 0, 9000, 16000, 30000, 45000, 0, 0, 11, 11990, 64, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,  'Firemane Flamecaller - In Combat - Cast Rain of Fire'),
--
(4344, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 42455, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                   'Mottled Drywallow Crocolisk - On Death - Cast Captured Totem Test Credit'),
(4345, 0, 0, 0, 6, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 42455, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                   'Drywallow Daggermaw - On Death - Cast Captured Totem Test Credit'),
(4345, 0, 1, 0, 9, 0, 100, 0, 3000, 3000, 45000, 45000, 0, 5, 11, 11971, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Drywallow Daggermaw - Within 0-5 Range - Cast Pierce Armor'),
(4346, 0, 0, 0, 9, 0, 100, 0, 0, 0, 6000, 11000, 0, 5, 11, 744, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Noxious Flayer - Within 0-5 Range - Cast Poison'),
(4347, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3616, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Noxious Reaver - On Respawn - Cast Poison Proc'),
(4347, 0, 1, 0, 0, 0, 100, 0, 7000, 9000, 12000, 15000, 0, 0, 11, 5708, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Noxious Reaver - Within 0-5 Range - Cast Swoop'),
(4348, 0, 0, 1, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3616, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Noxious Shredder - On Respawn - Cast Poison Proc'),
(4348, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3391, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Noxious Shredder - On Respawn - Cast Thrash Proc'),
(4351, 0, 0, 0, 8, 0, 100, 0, 42325, 0, 0, 0, 0, 0, 11, 42337, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,               'Bloodfen Raptor - On Spellhit \'Capture Raptor\' - Cast Raptor Capture Credit'),
(4351, 0, 1, 0, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Bloodfen Raptor - Between 0-20% Health - Say Line 0 (No Repeat)'),
(4352, 0, 0, 0, 8, 0, 100, 0, 42325, 0, 0, 0, 0, 0, 11, 42337, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,               'Bloodfen Screecher - On Spellhit \'Capture Raptor\' - Cast Raptor Capture Credit'),
(4352, 0, 1, 0, 2, 0, 100, 1, 0, 20, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Bloodfen Screecher - Between 0-20% Health - Say Line 0 (No Repeat)'),
(4356, 0, 0, 0, 9, 0, 100, 0, 2300, 2600, 8000, 14000, 0, 5, 11, 3427, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Bloodfen Razormaw - Within 0-5 Range - Cast Infected Wound'),
--
(4359, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 9463, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Mirefin Murloc - On Respawn - Cast Mirefin Fungus Proc'),
(4359, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Mirefin Murloc - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4360, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 9463, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Mirefin Warrior - On Respawn - Cast Mirefin Fungus Proc'),
(4360, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Mirefin Warrior - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4361, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 9463, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Mirefin Muckdweller - On Respawn - Cast Mirefin Fungus Proc'),
(4361, 0, 1, 0, 0, 0, 100, 0, 4000, 9000, 30000, 35000, 0, 0, 11, 6278, 96, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Mirefin Muckdweller - In Combat - Cast Creeping Mold'),
(4361, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Mirefin Muckdweller - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4362, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 9463, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Mirefin Coastrunner - On Respawn - Cast Mirefin Fungus Proc'),
(4362, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Mirefin Coastrunner - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4363, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 9463, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Mirefin Oracle - On Respawn - Cast Mirefin Fungus Proc'),
(4363, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Mirefin Oracle - In Combat - Cast Lightning Bolt'),
(4363, 0, 2, 0, 74, 0, 100, 0, 0, 0, 14000, 19000, 50, 40, 11, 959, 65, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Mirefin Oracle - Friendly Between 0-50% Health - Cast Healing Wave'),
(4363, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Mirefin Oracle - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(4364, 0, 0, 0, 9, 0, 100, 0, 0, 0, 12000, 15000, 0, 5, 11, 9080, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Strashaz Warrior - Within 0-5 Range - Cast Hamstring'),
(4364, 0, 1, 0, 0, 0, 100, 0, 4000, 9000, 8000, 12000, 0, 0, 11, 16856, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Strashaz Warrior - Within 0-5 Range - Cast Mortal Strike'),
(4364, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Strashaz Warrior - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4366, 0, 0, 0, 0, 0, 100, 0, 7000, 12000, 21000, 25000, 0, 0, 11, 16509, 32, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,   'Strashaz Serpent Guard - Within 0-5 Range - Cast Rend'),
(4366, 0, 1, 0, 9, 0, 100, 0, 0, 0, 7000, 11000, 0, 5, 11, 12057, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Strashaz Serpent Guard - Within 0-5 Range - Cast Strike'),
(4366, 0, 2, 0, 0, 0, 100, 0, 4000, 9000, 18000, 34000, 0, 0, 11, 6713, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Strashaz Serpent Guard - Within 0-5 Range - Cast Disarm'),
(4366, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Strashaz Serpent Guard - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4368, 0, 1, 0, 0, 0, 100, 0, 7000, 11000, 9000, 13000, 0, 0, 11, 18812, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,     'Strashaz Myrmidon - Within 0-5 Range - Cast Knockdown'),
(4368, 0, 2, 0, 9, 0, 100, 0, 0, 0, 11000, 14000, 0, 5, 11, 40504, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Strashaz Myrmidon - Within 0-5 Range - Cast Cleave'),
(4368, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Strashaz Myrmidon - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4370, 0, 0, 0, 0, 0, 100, 0, 12000, 16000, 16000, 21000, 0, 0, 11, 15499, 1, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,  'Strashaz Sorceress - In Combat - Cast Frost Shock'),
(4370, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 12737, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Strashaz Sorceress - In Combat - Cast Frostbolt'),
(4370, 0, 2, 0, 9, 0, 100, 0, 0, 0, 12000, 15000, 0, 8, 11, 15532, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Strashaz Sorceress - Within 0-8 Range - Cast Frost Nova'),
(4371, 0, 0, 0, 0, 0, 100, 0, 15000, 18000, 21000, 26000, 0, 0, 11, 15654, 33, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Strashaz Siren - In Combat - Cast Shadow Word: Pain'),
(4371, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 15587, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Strashaz Siren - In Combat - Cast Mind Blast'),
(4371, 0, 2, 0, 0, 0, 100, 0, 8, 12, 16, 22, 0, 0, 11, 7645, 97, 0, 0, 0, 0, 6, 20, 0, 0, 0, 0, 0, 0, 0,               'Strashaz Siren - In Combat - Cast Dominate Mind'),
(4371, 0, 3, 0, 0, 0, 50, 0, 3000, 6000, 30000, 30000, 0, 0, 11, 15785, 321, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Strashaz Siren - In Combat - Cast Mana Burn'),
(4371, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Strashaz Siren - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4374, 0, 0, 0, 9, 0, 100, 0, 0, 0, 12000, 21000, 0, 5, 11, 16128, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Strashaz Hydra - In Combat - Cast Infected Bite'),
(4374, 0, 1, 0, 0, 0, 100, 0, 8000, 12000, 15000, 20000, 0, 0, 11, 3391, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Strashaz Hydra - In Combat - Cast Thrash'),
--
(4376, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3616, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Darkmist Spider - On Respawn - Cast Poison Proc'),
(4378, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3616, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Darkmist Recluse - On Respawn - Cast Poison Proc'),
(4379, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3616, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Darkmist Silkspinner - On Respawn - Cast Poison Proc'),
(4379, 0, 1, 0, 9, 0, 100, 0, 0, 0, 9000, 14000, 0, 30, 11, 745, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Darkmist Silkspinner - Within 0-30 Range - Cast Web'),
(4380, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3616, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Darkmist Widow - On Respawn - Cast Poison Proc'),
(4380, 0, 1, 0, 0, 0, 100, 0, 7000, 7500, 15000, 15500, 0, 0, 11, 43134, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Darkmist Widow - In Combat - Cast Hatch Spiderlings'),
--
(4385, 0, 0, 1, 2, 0, 100, 1, 0, 30, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Withervine Rager - Between 0-30% Health - Cast Enrage (No Repeat)'),
(4385, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Withervine Rager - On Enrage - Say Line 0'),
(4387, 0, 0, 0, 9, 0, 100, 0, 0, 0, 11000, 15000, 0, 5, 11, 5337, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Withervine Mire Beast - Within 0-5 Range - Cast Wither Strike'),
(4389, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Murk Thresher - On Respawn - Cast Thrash Proc'),
(4390, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Elder Murk Thresher - On Respawn - Cast Thrash Proc'),
(4392, 0, 0, 0, 9, 0, 100, 0, 0, 0, 5000, 11000, 0, 5, 11, 9459, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Corrosive Swamp Ooze - Within 0-5 Range - Cast Corrosive Ooze'),
(4393, 0, 0, 0, 9, 0, 100, 0, 0, 0, 5000, 11000, 0, 5, 11, 9459, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Acidic Swamp Ooze - Within 0-5 Range - Cast Corrosive Ooze'),
(4393, 0, 1, 0, 8, 0, 100, 0, 42485, 0, 0, 0, 0, 0, 11, 42486, 3, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,               'Acidic Swamp Ooze - On Spellhit \'End of Ooze Channel\' - Cast Ooze Channel Credit'),
(4394, 0, 0, 0, 8, 0, 100, 512, 42485, 0, 0, 0, 0, 0, 11, 42486, 3, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,             'Bubbling Swamp Ooze - On Spellhit \'End of Ooze Channel\' - Cast Ooze Channel Credit'),
--
(4401, 0, 0, 0, 9, 0, 100, 0, 0, 0, 20000, 25000, 0, 5, 11, 3604, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Muckshell Clacker - Within 0-5 Range - Cast Tendon Rip'),
(4401, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Muckshell Clacker - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4404, 0, 0, 0, 0, 0, 60, 0, 0, 0, 2000, 2000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,              'Muckshell Scrabbler - In Combat - Cast Lightning Bolt'),
(4404, 0, 1, 0, 74, 0, 100, 0, 0, 0, 16000, 21000, 50, 40, 11, 8005, 65, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Muckshell Scrabbler - Friendly Between 0-50% Health - Cast Healing Wave'),
(4412, 0, 0, 0, 9, 0, 100, 0, 0, 0, 10000, 13000, 0, 30, 11, 7992, 96, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Darkfang Creeper - In Combat - Cast Slowing Poison'),
(4414, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 4000, 0, 0, 11, 7951, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Darkfang Venomspitter - In Combat - Cast Toxic Spit'),
(4834, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 22766, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Theramore Infiltrator - On Reset - Cast Sneak'),
--
(14230, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Burgle Eye - Between 0-15% Health - Flee For Assist (No Repeat)'),
(14232, 0, 0, 0, 0, 0, 100, 0, 7000, 11000, 15000, 18000, 0, 0, 11, 3147, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Dart - Within 0-5 Range - Cast Rend Flesh'),
(14236, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Lord Angler - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(15552, 0, 0, 1, 11, 0, 100, 1, 0, 0, 0, 0, 0, 0, 69, 1, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 5086.29, -5108.8, 929.24, 0,    'Dr Weavil - On Respawn - Move Point'),
(15552, 0, 1, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Dr Weavil - On Respawn - Set Faction'),
(15552, 0, 2, 0, 34, 0, 100, 513, 8, 1, 0, 0, 0, 0, 80, 1555200, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Dr Weavil - MovementInform - Start Script'),
(15552, 0, 3, 4, 34, 0, 100, 513, 8, 2, 0, 0, 0, 0, 45, 1, 1, 0, 0, 0, 0, 19, 15553, 30, 0, 0, 0, 0, 0, 0,             'Dr Weavil - MovementInform - Set Data'),
(15552, 0, 4, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Dr Weavil - MovementInform - Despawn'),
(15552, 0, 5, 0, 0, 0, 100, 0, 5000, 8000, 55000, 60000, 0, 0, 11, 25772, 32, 1, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0,   'Dr Weavil - In Combat - Cast Mental Domination'),
(15552, 0, 6, 0, 0, 0, 100, 0, 4000, 7000, 14000, 16500, 0, 0, 11, 25774, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Dr Weavil - In Combat - Cast Mind Shatter'),
--
(23592, 0, 0, 0, 0, 0, 100, 0, 3400, 4000, 10800, 12400, 0, 0, 11, 43108, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 0,  'Grimtotem Breaker - Within 0-10 Range - Cast Bone Breaker'),
(23593, 0, 0, 0, 0, 0, 100, 0, 0, 0, 30000, 45000, 0, 0, 11, 43110, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Grimtotem Spirit-Shifter - In Combat - Cast Summon Spirit Wolf'), -- test!
(23593, 0, 1, 0, 0, 0, 100, 0, 2000, 3000, 12000, 13000, 0, 0, 11, 11824, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Grimtotem Spirit-Shifter - In Combat - Cast Shock'),
(23594, 0, 0, 0, 9, 0, 100, 0, 0, 0, 9000, 13000, 0, 5, 11, 11876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Grimtotem Destroyer - Within 0-5 Range - Cast War Stomp'),
(23595, 0, 0, 0, 0, 0, 100, 0, 3000, 3000, 60000, 70000, 0, 0, 11, 15786, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Grimtotem Earthbinder - In Combat - Cast Earthbind Totem'),
(23714, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 4000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Grimtotem Elder - In Combat - Cast Lightning Bolt'),
(23714, 0, 1, 0, 74, 0, 100, 0, 0, 0, 16000, 21000, 50, 40, 11, 11986, 65, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,      'Grimtotem Elder - Friendly Between 0-50% Health - Cast Healing Wave'),
--
(23786, 0, 0, 0, 11, 0, 100, 512, 0, 0, 0, 0, 0, 0, 80, 2378600, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Stonemaul Spirit - On Spawn - Run Script'), -- say line 0, start attack
(23786, 0, 1, 0, 0, 0, 15, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Stonemaul Spirit - In Combat - Say Line 1 (No Repeat)'),
(23841, 0, 0, 0, 9, 0, 100, 0, 0, 0, 17100, 17400, 0, 5, 11, 12054, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Razorspine - Within 0-5 Range - Cast Rend'),
(23873, 0, 0, 0, 0, 0, 100, 0, 4000, 6000, 20000, 22000, 0, 0, 11, 6607, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Goreclaw the Ravenous - In Combat - Cast Lash'),
(23873, 0, 1, 0, 9, 0, 100, 0, 0, 0, 17600, 17900, 0, 5, 11, 32019, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Goreclaw the Ravenous - Within 0-5 Range - Cast Gore');


UPDATE `creature` SET `spawntimesecs` = 18000, `MovementType` = 1, `wander_distance` = 5 WHERE `id1` = 14230; -- Burgle Eye

DELETE FROM `creature`       WHERE `id1` = 23589;  -- Defias Rummager
DELETE FROM `creature`       WHERE `id1` = 23841;  -- Razorspine
DELETE FROM `creature_addon` WHERE `guid` = 39309; -- Razorspine

/* Fiora Longears - restore her location to Theramore and restore quests that involve her */
DELETE FROM `creature` WHERE `id1` = 4456;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`,
`spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES
(37087, 4456, 0, 0, 1, 0, 0, 1, 1, 1, -3613.47, -4464.02, 13.7054, 2.61799, 275, 0, 0, 787, 0, 0, 0, 0, 0, '', 0, NULL);

DELETE FROM `creature_queststarter` WHERE `id` = 4455 AND `quest` IN (1132);
DELETE FROM `creature_queststarter` WHERE `id` = 4456 AND `quest` IN (1133, 1135);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (4455, 1132), (4456, 1133), (4456, 1135);

DELETE FROM `creature_questender` WHERE `id` = 3845 AND `quest` IN (1133);
DELETE FROM `creature_questender` WHERE `id` = 4456 AND `quest` IN (1132, 1135);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (3845, 1133), (4456, 1132), (4456, 1135);

UPDATE `quest_template` SET `LogDescription` = "Speak with Fiora Longears in Theramore." WHERE `ID` = 1132;


/* Old Vanilla Varian Wrynn Npc in Alcaz during Vanilla phases */
DELETE FROM `creature` WHERE `id1` = 11699 AND `map` = 1;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`,
`spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES
(611699, 11699, 0, 0, 1, 0, 0, 1, 1, 1, -2744.03, -4994.2, 8.26564, 0.0392587, 300, 0, 0, 4121, 0, 0, 0, 0, 0, 'npc_ipp_pre_naxx40', 0, 'Varian Wrynn in Alcaz (Vanilla)');

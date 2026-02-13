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
(4323, 0, 0, 0, 0, 0, 100, 0, 2400, 2700, 9400, 9700, 0, 0, 11, 11985, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Searing Hatchling - In Combat - Cast Fireball'),
(4328, 0, 1, 0, 0, 0, 100, 0, 0, 0, 15000, 30000, 0, 0, 11, 18968, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Firemane Scalebane - In Combat - Cast Fire Shield'),
(4328, 0, 2, 0, 105, 0, 100, 0, 0, 0, 12000, 17000, 0, 5, 11, 11972, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Firemane Scalebane - Within 0-5 Range - Cast Shield Bash'),
(4328, 0, 3, 0, 9, 0, 100, 0, 3000, 3000, 5000, 9000, 0, 5, 11, 11971, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Firemane Scalebane - Within 0-5 Range - Cast Sunder Armor'),
(4328, 0, 4, 0, 8, 0, 100, 512, 42411, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Firemane Scalebane - On spell hit  - Despawn'), -- Brogg's Totem
(4329, 0, 0, 0, 0, 0, 100, 0, 0, 0, 15000, 30000, 0, 0, 11, 18968, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Firemane Scout - In Combat - Cast Fire Shield'),
(4329, 0, 1, 0, 8, 0, 100, 512, 42411, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Firemane Scout - On spell hit  - Despawn'), -- Brogg's Totem
(4331, 0, 0, 0, 0, 0, 100, 0, 0, 0, 15000, 30000, 0, 0, 11, 18968, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Firemane Ash Tail - In Combat - Cast Fire Shield'),
(4331, 0, 1, 0, 106, 0, 100, 0, 4000, 6000, 12000, 16000, 0, 5, 11, 11969, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Firemane Ash Tail - Within 0-5 Range - Cast Fire Nova'),
(4331, 0, 2, 0, 8, 0, 100, 512, 42411, 0, 0, 0, 0, 0, 41, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Firemane Ash Tail - On spell hit  - Despawn'), -- Brogg's Totem
(4334, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2400, 3400, 0, 0, 11, 9053, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Firemane Flamecaller - In Combat - Cast Fireball'),
(4334, 0, 1, 0, 0, 0, 100, 0, 9000, 16000, 30000, 45000, 0, 0, 11, 11990, 64, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,  'Firemane Flamecaller - In Combat - Cast Rain of Fire'),
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
(4361, 0, 1, 0, 0, 0, 100, 0, 4000, 9000, 30000, 35000, 0, 0, 11, 6278, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Mirefin Muckdweller - In Combat - Cast Creeping Mold'),
(4361, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Mirefin Muckdweller - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4362, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 9463, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Mirefin Coastrunner - On Respawn - Cast Mirefin Fungus Proc'),
(4362, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Mirefin Coastrunner - Between 0-15% Health - Flee For Assist (No Repeat)'),
(4363, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 9463, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Mirefin Oracle - On Respawn - Cast Mirefin Fungus Proc'),
(4363, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Mirefin Oracle - In Combat - Cast Lightning Bolt'),
(4363, 0, 2, 0, 74, 0, 100, 0, 0, 0, 14000, 19000, 50, 40, 11, 959, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,          'Mirefin Oracle - Friendly Between 0-50% Health - Cast Healing Wave'),
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
(4371, 0, 3, 0, 0, 0, 50, 0, 3000, 6000, 30000, 30000, 0, 0, 11, 15785, 256, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Strashaz Siren - In Combat - Cast Mana Burn'),
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
(4404, 0, 1, 0, 74, 0, 100, 0, 0, 0, 16000, 21000, 50, 40, 11, 8005, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Muckshell Scrabbler - Friendly Between 0-50% Health - Cast Healing Wave'),
(4412, 0, 0, 0, 9, 0, 100, 0, 0, 0, 10000, 13000, 0, 30, 11, 7992, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Darkfang Creeper - In Combat - Cast Slowing Poison'),
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
(23714, 0, 1, 0, 74, 0, 100, 0, 0, 0, 16000, 21000, 50, 40, 11, 11986, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,       'Grimtotem Elder - Friendly Between 0-50% Health - Cast Healing Wave'),
--
(23786, 0, 0, 0, 11, 0, 100, 512, 0, 0, 0, 0, 0, 0, 80, 2378600, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Stonemaul Spirit - On Spawn - Run Script'), -- say line 0, start attack
(23786, 0, 1, 0, 0, 0, 15, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                        'Stonemaul Spirit - In Combat - Say Line 1 (No Repeat)'),
(23841, 0, 0, 0, 9, 0, 100, 0, 0, 0, 17100, 17400, 0, 5, 11, 12054, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Razorspine - Within 0-5 Range - Cast Rend'),
(23873, 0, 0, 0, 0, 0, 100, 0, 4000, 6000, 20000, 22000, 0, 0, 11, 6607, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Goreclaw the Ravenous - In Combat - Cast Lash'),
(23873, 0, 1, 0, 9, 0, 100, 0, 0, 0, 17600, 17900, 0, 5, 11, 32019, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Goreclaw the Ravenous - Within 0-5 Range - Cast Gore');

-- quest: Stinky's Escape, fix worldserver error
UPDATE `smart_scripts` SET `link` = 0 WHERE `entryorguid` = 4880 AND `source_type` = 0 AND `id` IN (0, 1);

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

-- fix Deadmire waypoints
UPDATE `creature_template` SET `MovementType` = 0 WHERE `entry` = 4841;
UPDATE `creature` SET `position_x` = -4019.49, `position_y` = -3537.49, `position_z` = 29.8848, `orientation` = 0.719014, `MovementType` = 2, `currentwaypoint` = 1 WHERE `id1` = 4841;

DELETE FROM `creature_addon` WHERE `guid` = 33909;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(33909, 339090, 0, 0, 0, 0, 0, NULL);

DELETE FROM `waypoint_data` WHERE `id` = 339090;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
--
(339090, 1, -4019.49, -3537.49, 30.6543, NULL, 0, 0, 0, 0, 0),
(339090, 2, -4026.45, -3546.94, 28.8119, NULL, 0, 0, 0, 0, 0),
(339090, 3, -4029.32, -3560.23, 30.2231, NULL, 0, 0, 0, 0, 0),
(339090, 4, -4027.89, -3571.99, 28.748, NULL, 0, 0, 0, 0, 0),
(339090, 5, -4021.43, -3578.86, 30.2024, NULL, 0, 0, 0, 0, 0),
(339090, 6, -4011.94, -3586.36, 29.2547, NULL, 0, 0, 0, 0, 0),
(339090, 7, -4000.73, -3597.63, 29.5216, NULL, 0, 0, 0, 0, 0),
(339090, 8, -3986.14, -3610.44, 30.4252, NULL, 0, 0, 0, 0, 0),
(339090, 9, -3965.75, -3626.17, 30.4233, NULL, 0, 0, 0, 0, 0),
(339090, 10, -3943.86, -3645.24, 29.3109, NULL, 0, 0, 0, 0, 0),
(339090, 11, -3926.3, -3650.95, 28.9808, NULL, 0, 0, 0, 0, 0),
(339090, 12, -3907.05, -3651.02, 29.83, NULL, 0, 0, 0, 0, 0),
(339090, 13, -3902.1, -3648.65, 29.3645, NULL, 0, 0, 0, 0, 0),
(339090, 14, -3894.46, -3638, 29.293, NULL, 0, 0, 0, 0, 0),
(339090, 15, -3885.16, -3611.39, 28.8119, NULL, 0, 0, 0, 0, 0),
(339090, 16, -3875.25, -3598.46, 28.8118, NULL, 0, 0, 0, 0, 0),
(339090, 17, -3882.66, -3612.55, 28.7173, NULL, 0, 0, 0, 0, 0),
(339090, 18, -3887.42, -3625.38, 28.6856, NULL, 0, 0, 0, 0, 0),
(339090, 19, -3893.3, -3639.18, 28.7826, NULL, 0, 0, 0, 0, 0),
(339090, 20, -3900.76, -3650.4, 28.6593, NULL, 0, 0, 0, 0, 0),
(339090, 21, -3909.3, -3652.17, 29.2402, NULL, 0, 0, 0, 0, 0),
(339090, 22, -3926.1, -3650.57, 29.1225, NULL, 0, 0, 0, 0, 0),
(339090, 23, -3943.39, -3643.92, 28.8119, NULL, 0, 0, 0, 0, 0),
(339090, 24, -3966.95, -3624.4, 30.7343, NULL, 0, 0, 0, 0, 0),
(339090, 25, -3980.98, -3613.55, 30.9707, NULL, 0, 0, 0, 0, 0),
(339090, 26, -3995.17, -3603.35, 30.6991, NULL, 0, 0, 0, 0, 0),
(339090, 27, -4001.31, -3597.21, 29.4717, NULL, 0, 0, 0, 0, 0),
(339090, 28, -4012.23, -3585.77, 29.2964, NULL, 0, 0, 0, 0, 0),
(339090, 29, -4020.47, -3579.26, 30.3131, NULL, 0, 0, 0, 0, 0),
(339090, 30, -4029.16, -3560.56, 30.3112, NULL, 0, 0, 0, 0, 0),
(339090, 31, -4027.95, -3547.7, 28.8119, NULL, 0, 0, 0, 0, 0),
(339090, 32, -4019.49, -3537.49, 30.6542, NULL, 0, 0, 0, 0, 0),
(339090, 33, -4002.9, -3522.07, 29.8185, NULL, 0, 0, 0, 0, 0),
(339090, 34, -3988, -3507.51, 29.9619, NULL, 0, 0, 0, 0, 0),
(339090, 35, -3982.36, -3498.33, 28.7301, NULL, 0, 0, 0, 0, 0),
(339090, 36, -3985.9, -3490.54, 29.4429, NULL, 0, 0, 0, 0, 0),
(339090, 37, -3991.93, -3480.23, 29.3652, NULL, 0, 0, 0, 0, 0),
(339090, 38, -4003.02, -3471.92, 30.9944, NULL, 0, 0, 0, 0, 0),
(339090, 39, -4025.37, -3469.98, 30.2586, NULL, 0, 0, 0, 0, 0),
(339090, 40, -4035.29, -3458.72, 29.9625, NULL, 0, 0, 0, 0, 0),
(339090, 41, -4038.07, -3453.1, 28.8119, NULL, 0, 0, 0, 0, 0),
(339090, 42, -4049.02, -3447.84, 28.6428, NULL, 0, 0, 0, 0, 0),
(339090, 43, -4063.27, -3453.55, 29.0414, NULL, 0, 0, 0, 0, 0),
(339090, 44, -4081.31, -3439.71, 28.9894, NULL, 0, 0, 0, 0, 0),
(339090, 45, -4090.55, -3438.13, 30.1739, NULL, 0, 0, 0, 0, 0),
(339090, 46, -4103.52, -3431.82, 29.8122, NULL, 0, 0, 0, 0, 0),
(339090, 47, -4116.86, -3415.46, 28.6427, NULL, 0, 0, 0, 0, 0),
(339090, 48, -4134.14, -3409.68, 28.8119, NULL, 0, 0, 0, 0, 0),
(339090, 49, -4154.64, -3403.82, 29.7551, NULL, 0, 0, 0, 0, 0),
(339090, 50, -4167.12, -3400.64, 28.9319, NULL, 0, 0, 0, 0, 0),
(339090, 51, -4182.22, -3382.56, 29.3504, NULL, 0, 0, 0, 0, 0),
(339090, 52, -4196.99, -3368.25, 28.5229, NULL, 0, 0, 0, 0, 0),
(339090, 53, -4204.12, -3361.27, 28.8119, NULL, 0, 0, 0, 0, 0),
(339090, 54, -4211.54, -3320.9, 28.8119, NULL, 0, 0, 0, 0, 0),
(339090, 55, -4211.28, -3339.54, 28.6513, NULL, 0, 0, 0, 0, 0),
(339090, 56, -4204.47, -3360.93, 28.615, NULL, 0, 0, 0, 0, 0),
(339090, 57, -4201.2, -3372.05, 28.5229, NULL, 0, 0, 0, 0, 0),
(339090, 58, -4190.45, -3394.45, 29.6527, NULL, 0, 0, 0, 0, 0),
(339090, 59, -4168.52, -3401.51, 29.2096, NULL, 0, 0, 0, 0, 0),
(339090, 60, -4150.21, -3408.94, 29.5912, NULL, 0, 0, 0, 0, 0),
(339090, 61, -4133.37, -3418.32, 29.6806, NULL, 0, 0, 0, 0, 0),
(339090, 62, -4108.94, -3431.07, 29.4517, NULL, 0, 0, 0, 0, 0),
(339090, 63, -4098.01, -3436.82, 28.8116, NULL, 0, 0, 0, 0, 0),
(339090, 64, -4086.37, -3439.18, 30.2567, NULL, 0, 0, 0, 0, 0),
(339090, 65, -4063.45, -3444.23, 30.4352, NULL, 0, 0, 0, 0, 0),
(339090, 66, -4047.78, -3448.04, 28.8119, NULL, 0, 0, 0, 0, 0),
(339090, 67, -4029.69, -3457, 31.082, NULL, 0, 0, 0, 0, 0),
(339090, 68, -4016.08, -3461.78, 30.0466, NULL, 0, 0, 0, 0, 0),
(339090, 69, -4002.27, -3467.43, 29.4625, NULL, 0, 0, 0, 0, 0),
(339090, 70, -3987.57, -3475.79, 30.5922, NULL, 0, 0, 0, 0, 0),
(339090, 71, -3975.55, -3481.89, 28.6465, NULL, 0, 0, 0, 0, 0),
(339090, 72, -3965.29, -3480.34, 29.4416, NULL, 0, 0, 0, 0, 0),
(339090, 73, -3952.48, -3469.96, 29.582, NULL, 0, 0, 0, 0, 0),
(339090, 74, -3944.3, -3456.83, 28.8119, NULL, 0, 0, 0, 0, 0),
(339090, 75, -3940.98, -3443.28, 30.8285, NULL, 0, 0, 0, 0, 0),
(339090, 76, -3940.7, -3437.27, 29.8428, NULL, 0, 0, 0, 0, 0),
(339090, 77, -3937.53, -3412.36, 30.2931, NULL, 0, 0, 0, 0, 0),
(339090, 78, -3934.78, -3394.63, 28.7673, NULL, 0, 0, 0, 0, 0),
(339090, 79, -3925.48, -3388.15, 31.6195, NULL, 0, 0, 0, 0, 0),
(339090, 80, -3902.42, -3377.27, 30.3333, NULL, 0, 0, 0, 0, 0),
(339090, 81, -3898.16, -3378.59, 30.6868, NULL, 0, 0, 0, 0, 0),
(339090, 82, -3891.8, -3371.59, 28.7397, NULL, 0, 0, 0, 0, 0),
(339090, 83, -3906.86, -3386.72, 28.5314, NULL, 0, 0, 0, 0, 0),
(339090, 84, -3924.66, -3388.43, 31.7293, NULL, 0, 0, 0, 0, 0),
(339090, 85, -3934.31, -3394.96, 28.5347, NULL, 0, 0, 0, 0, 0),
(339090, 86, -3937.13, -3413.47, 30.4146, NULL, 0, 0, 0, 0, 0),
(339090, 87, -3940.1, -3438.05, 29.8447, NULL, 0, 0, 0, 0, 0),
(339090, 88, -3940.92, -3445.24, 30.5269, NULL, 0, 0, 0, 0, 0),
(339090, 89, -3944.06, -3456.62, 28.6203, NULL, 0, 0, 0, 0, 0),
(339090, 90, -3952.48, -3471.09, 29.3195, NULL, 0, 0, 0, 0, 0),
(339090, 91, -3967.49, -3480.83, 29.4517, NULL, 0, 0, 0, 0, 0),
(339090, 92, -3982.22, -3495.9, 28.7444, NULL, 0, 0, 0, 0, 0),
(339090, 93, -3989.36, -3509.15, 29.8055, NULL, 0, 0, 0, 0, 0),
(339090, 94, -4002.43, -3522.28, 29.7144, NULL, 0, 0, 0, 0, 0);


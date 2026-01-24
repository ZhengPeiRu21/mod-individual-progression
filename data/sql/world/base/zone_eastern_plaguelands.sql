/* smart scripts */
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (8596, 11290);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(8521, 8522, 8523, 8524, 8525, 8527, 8528, 8529, 8531, 8540, 8541, 8542, 8543, 8546, 8547, 8548, 8550, 8553, 8556, 8558, 8560, 8561, 8562, 8563, 8564, 8565, 8597, 8600, 8601, 8602, 8603, 8605, 8606, 8607,
9447, 9448, 9449, 9450, 9451, 9452, 10817, 10821, 10822, 10823, 10824, 10825, 10826, 10827, 11878, 11885, 11896, 11897, 12248, 12250, 12322, 12337, 13118, 16184);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(8521, 8522, 8523, 8524, 8525, 8527, 8528, 8529, 8531, 8540, 8541, 8542, 8543, 8546, 8547, 8548, 8550, 8553, 8556, 8558, 8560, 8561, 8562, 8563, 8564, 8565, 8596, 8597, 8600, 8601, 8602, 8603, 8605, 8606, 8607,
9447, 9448, 9449, 9450, 9451, 9452, 10817, 10821, 10822, 10823, 10824, 10825, 10826, 10827, 11290, 11878, 11885, 11896, 11897, 12248, 12250, 12322, 12337, 13118, 16184);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(8521, 0, 0, 0, 0, 0, 100, 0, 3000, 8000, 15000, 25000, 0, 0, 11, 16555, 32, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,    'Blighted Horror - Within 0-5 Range - Cast Drowning Death'),
(8521, 0, 1, 0, 0, 0, 100, 0, 9000, 14000, 23000, 35000, 0, 0, 11, 12542, 0, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,   'Blighted Horror - In Combat - Cast Fear'),
(8521, 0, 2, 0, 8, 0, 100, 512, 21332, 0, 0, 0, 0, 0, 36, 13279, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Blighted Horror - On Spellhit \'Aspect of Neptulon\' - Update Template To \'Discordant Surge\''),
(8522, 0, 0, 0, 0, 0, 100, 0, 5000, 9000, 8000, 13000, 0, 0, 11, 14099, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 0,    'Plague Monstrosity - Within 0-10 Range - Cast Mighty Blow'),
(8522, 0, 1, 0, 8, 0, 100, 512, 21332, 0, 0, 0, 0, 0, 36, 13279, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Plague Monstrosity - On Spellhit \'Aspect of Neptulon\' - Update Template To \'Discordant Surge\''),
(8523, 0, 0, 0, 0, 0, 100, 0, 4000, 7000, 5000, 9000, 0, 0, 11, 11976, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Scourge Soldier - Within 0-5 Range - Cast Strike'),
(8524, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3000, 5000, 0, 0, 11, 20829, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Cursed Mage - In Combat - Cast Arcane Bolt'),
(8524, 0, 1, 0, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 16567, 2, 7, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Cursed Mage - On Just Died - Cast Tainted Mind'),
(8525, 0, 0, 0, 0, 0, 100, 0, 4000, 7000, 8000, 11000, 0, 0, 11, 12169, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Scourge Warder - In Combat - Cast Shield Block'),
(8525, 0, 1, 0, 0, 0, 100, 0, 11000, 17000, 45000, 60000, 0, 0, 11, 12040, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Scourge Warder - In Combat - Cast Shadow Shield'),
(8527, 0, 0, 0, 9, 0, 100, 0, 0, 0, 7000, 11000, 0, 5, 11, 8242, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Scourge Guard - Within 0-5 Range - Cast Shield Slam'),
(8527, 0, 1, 0, 0, 0, 100, 0, 2000, 5000, 15000, 34000, 0, 0, 11, 6713, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Scourge Guard - Within 0-5 Range - Cast Disarm'),
(8528, 0, 0, 0, 0, 0, 100, 0, 4000, 7000, 9000, 12000, 0, 0, 11, 16568, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Dread Weaver - In Combat - Cast Mind Flay'),
(8528, 0, 1, 0, 0, 0, 100, 0, 2000, 5000, 12000, 15000, 0, 0, 11, 12542, 1, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0,     'Dread Weaver - In Combat - Cast Fear'),
(8529, 0, 0, 0, 0, 0, 100, 0, 4000, 8000, 9000, 13000, 0, 0, 11, 13737, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Scourge Champion - Within 0-5 Range - Cast Mortal Strike'),
(8531, 0, 0, 0, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 17310, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Gibbering Ghoul - On Death - Cast Summon Darrowshire Spirit'),
(8531, 0, 1, 0, 0, 0, 100, 0, 6000, 12000, 22000, 28000, 0, 0, 11, 12889, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Gibbering Ghoul - In Combat - Cast Curse of Tongues'),
(8540, 0, 0, 0, 0, 0, 100, 0, 2000, 5000, 12000, 15000, 0, 0, 11, 5884, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Torn Screamer - In Combat - Cast Banshee Curse'),
(8541, 0, 0, 0, 0, 0, 100, 0, 2000, 5000, 12000, 15000, 0, 0, 11, 5884, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Hate Shrieker - In Combat - Cast Banshee Curse'),
(8541, 0, 1, 0, 0, 0, 100, 0, 7000, 9000, 12000, 15000, 0, 0, 11, 3589, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,      'Hate Shrieker - Within 0-5 Range - Cast Deafening Screech'),
(8542, 0, 0, 0, 0, 0, 100, 0, 2000, 5000, 12000, 15000, 0, 0, 11, 5884, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Death Singer - In Combat - Cast Banshee Curse'),
(8542, 0, 1, 0, 0, 0, 100, 0, 12000, 16000, 20000, 25000, 0, 0, 11, 6605, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Death Singer - In Combat - Cast Terrifying Screech'),
(8543, 0, 0, 0, 0, 0, 100, 0, 5000, 8000, 9000, 15000, 0, 0, 11, 14099, 0, 0, 0, 0, 0, 21, 10, 0, 0, 0, 0, 0, 0, 0,    'Stitched Horror - Within 0-10 Range - Cast Mighty Blow'),
(8546, 0, 0, 0, 0, 0, 100, 0, 3000, 6000, 9000, 14000, 0, 0, 11, 8646, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,      'Dark Adept - Within 0-5 Range - Cast Snap Kick'),
(8547, 0, 0, 0, 0, 0, 100, 0, 1000, 3000, 5000, 7000, 0, 0, 11, 16583, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Death Cultist - In Combat - Cast Shadow Shock'),
(8548, 0, 0, 0, 0, 0, 100, 0, 11000, 17000, 45000, 60000, 0, 0, 11, 12040, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Vile Tutor - In Combat - Cast Shadow Shield'),
(8550, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 16592, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Shadowmage - Out of Combat - Cast Shadowform'),
(8550, 0, 1, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 20825, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Shadowmage - In Combat - Cast Shadow Bolt'),
(8550, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Shadowmage - Between 0-15% Health - Flee For Assist (No Repeat)'),
(8553, 0, 0, 0, 1, 0, 100, 1, 1000, 1000, 0, 0, 0, 0, 11, 16592, 32, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Necromancer - Out of Combat - Cast Shadowform'),
(8553, 0, 1, 0, 1, 0, 100, 1, 3000, 3000, 0, 0, 0, 0, 11, 12420, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Necromancer - Out of Combat - Cast Summon Skeletal Servant'),
(8553, 0, 2, 0, 0, 0, 100, 0, 4000, 7000, 20000, 24000, 0, 0, 11, 11443, 32, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,   'Necromancer - In Combat - Cast Cripple'),
(8556, 0, 0, 0, 0, 0, 100, 0, 1000, 3000, 10000, 15000, 0, 0, 11, 745, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 0,     'Crypt Walker - In Combat - Cast Web'),
(8558, 0, 0, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 11, 17170, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,                 'Crypt Slayer - Between 0-15% Health - Cast Fatal Sting'),
(8560, 0, 0, 0, 0, 0, 100, 0, 1000, 3000, 18000, 22000, 0, 0, 11, 9080, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Mossflayer Scout - Within 0-5 Range - Cast Hamstring'),
(8560, 0, 1, 0, 0, 0, 100, 1, 4000, 4000, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                 'Mossflayer Scout - In Combat - Flee For Assist'),
(8561, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Mossflayer Shadowhunter - Outside 30 Range - Start Combat Movement'),
(8561, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Mossflayer Shadowhunter - Within 5-30 Range - Stop Combat Movement'),
(8561, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Mossflayer Shadowhunter - Within 0-5 Range - Start Combat Movement'),
(8561, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Mossflayer Shadowhunter - In Combat - Cast Shoot'),
(8561, 0, 4, 0, 9, 0, 100, 0, 0, 0, 6000, 9000, 5, 30, 11, 17171, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Mossflayer Shadowhunter - Within 5-30 Range - Cast Shadow Shot'),
(8561, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Mossflayer Shadowhunter - Between 0-15% Health - Flee For Assist'),
(8562, 0, 0, 0, 0, 0, 100, 0, 5000, 8000, 22000, 25000, 0, 0, 11, 17172, 0, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,    'Mossflayer Cannibal - In Combat - Cast Hex'),
(8562, 0, 1, 0, 0, 0, 100, 0, 7000, 10000, 22000, 25000, 0, 0, 11, 17173, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 0,  'Mossflayer Cannibal - In Combat - Cast Drain Life'),
(8563, 0, 0, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 11971, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,             'Woodsman - Within 0-5 Range - Cast Sunder Armor'),
(8564, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Ranger - Outside 30 Range - Start Combat Movement'),
(8564, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Ranger - Within 5-30 Range - Stop Combat Movement'),
(8564, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Ranger - Within 0-5 Range - Start Combat Movement'),
(8564, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 6660, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Ranger - Within 5-30 Range - Cast Shoot'),
(8564, 0, 4, 0, 0, 0, 100, 0, 5000, 5000, 7000, 9000, 0, 0, 11, 14443, 0, 0, 0, 0, 0, 28, 30, 1, 1, 5, 0, 0, 0, 0,     'Ranger - Within 5-30 Range - Cast Multi-Shot'),
(8564, 0, 5, 0, 9, 0, 100, 0, 0, 0, 9000, 11000, 5, 30, 11, 17174, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Ranger - Within 5-30 Range - Cast Concussive Shot'),
(8564, 0, 6, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Ranger - Between 0-15% Health - Flee For Assist'),
(8565, 0, 0, 0, 0, 0, 100, 0, 2000, 5000, 9000, 14000, 0, 0, 11, 16498, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Pathstrider - In Combat - Cast Faerie Fire'),
(8597, 0, 0, 0, 0, 0, 100, 0, 2000, 5000, 9000, 14000, 0, 0, 11, 3427, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Plaguehound - Within 0-5 Range - Cast Infected Wound'),
(8600, 0, 0, 0, 0, 0, 100, 0, 7000, 10000, 14000, 16000, 0, 0, 11, 6605, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Plaguebat - In Combat - Cast Terrifying Screech'),
(8601, 0, 0, 0, 0, 0, 100, 0, 2000, 6000, 9000, 12000, 0, 0, 11, 7992, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Noxious Plaguebat - In Combat - Cast Slowing Poison'),
(8602, 0, 0, 0, 0, 0, 100, 0, 4000, 7000, 16000, 19000, 0, 0, 11, 8281, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Monstrous Plaguebat - In Combat - Cast Sonic Burst'),
(8603, 0, 0, 0, 0, 0, 100, 0, 4000, 7000, 8000, 12000, 0, 0, 11, 16449, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Carrion Grub - Within 0-5 Range - Cast Maggot Slime'),
(8605, 0, 0, 0, 0, 0, 100, 0, 4000, 7000, 8000, 12000, 0, 0, 11, 16449, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Carrion Devourer - Within 0-5 Range - Cast Maggot Slime'),
(8605, 0, 1, 0, 6, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 17197, 2, 7, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Carrion Devourer - On Just Died - Cast Maggot Goo'),
(8606, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 12947, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Living Decay - On Respawn - Cast Withered Touch Proc'),
(8607, 0, 0, 0, 0, 0, 100, 0, 4000, 7000, 8000, 12000, 0, 0, 11, 7279, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Rotting Sludge - Within 0-5 Range - Cast Black Sludge'),
--
(9447, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Scarlet Warder - On Aggro - Say Line 0'),
(9447, 0, 1, 0, 0, 0, 100, 0, 4000, 7000, 7000, 11000, 0, 0, 11, 14518, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Scarlet Warder - Within 0-5 Range - Cast Crusader Strike'),
(9447, 0, 2, 0, 2, 0, 100, 0, 0, 50, 15000, 22000, 0, 0, 11, 15493, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Scarlet Warder - Between 0-50% Health - Cast Holy Light'),
(9447, 0, 3, 0, 14, 0, 100, 0, 3000, 40, 10000, 18000, 0, 0, 11, 15493, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,      'Scarlet Warder - Friendly Missing 3000 Health - Cast Holy Light'),
(9448, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Scarlet Praetorian - On Aggro - Say Line 0'),
(9448, 0, 1, 0, 0, 0, 100, 0, 6000, 9000, 13000, 18000, 0, 0, 11, 17143, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Scarlet Praetorian - In Combat - Cast Holy Strike'),
(9448, 0, 2, 0, 0, 0, 100, 0, 4000, 7000, 9000, 11000, 0, 0, 11, 17149, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Scarlet Praetorian - In Combat - Cast Exorcism'),
(9449, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Scarlet Cleric - On Aggro - Say Line 0'),
(9449, 0, 1, 0, 0, 0, 100, 0, 7000, 11000, 7000, 11000, 0, 0, 11, 15587, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Scarlet Cleric - In Combat - Cast Mind Blast'),
(9449, 0, 2, 0, 74, 0, 100, 0, 0, 0, 20000, 30000, 40, 40, 11, 15586, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Scarlet Cleric - On Friendly Between 0-40% Health - Cast Heal'),
(9449, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Scarlet Cleric - Between 0-15% Health - Flee For Assist (No Repeat)'),
(9450, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Scarlet Curate - On Aggro - Say Line 0'),
(9450, 0, 1, 0, 0, 0, 100, 0, 3000, 4000, 6000, 8000, 0, 0, 11, 9734, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Scarlet Curate - In Combat - Cast Holy Smite'),
(9450, 0, 2, 0, 15, 0, 100, 0, 30, 1000, 2500, 0, 0, 0, 11, 17201, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,           'Scarlet Curate - On Friendly Crowd Controlled - Cast Dispel Magic'),
(9450, 0, 3, 0, 74, 0, 100, 0, 0, 0, 5000, 15000, 40, 40, 11, 11640, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Scarlet Curate - On Friendly Between 0-40% Health - Cast Renew'),
(9450, 0, 4, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Scarlet Curate - Between 0-15% Health - Flee For Assist (No Repeat)'),
(9451, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Scarlet Archmage - On Aggro - Say Line 0'),
(9451, 0, 1, 0, 1, 0, 100, 0, 1000, 1000, 1800000, 1800000, 0, 0, 11, 18100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Scarlet Archmage - Out of Combat - Cast Frost Armor'),
(9451, 0, 2, 0, 9, 0, 100, 0, 0, 0, 2000, 3000, 0, 40, 11, 15242, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Scarlet Archmage - In Combat - Cast Fireball'),
(9451, 0, 3, 0, 0, 0, 100, 0, 8000, 12000, 5000, 9000, 0, 0, 11, 15244, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Scarlet Archmage - In Combat - Cast Cone of Cold'),
(9451, 0, 4, 0, 105, 0, 75, 0, 0, 0, 10000, 15000, 0, 30, 11, 15122, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Scarlet Archmage - Target Casting - Cast Counterspell'),
(9451, 0, 5, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                      'Scarlet Archmage - Between 0-15% Health - Flee For Assist (No Repeat)'),
(9452, 0, 0, 0, 4, 0, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                         'Scarlet Enchanter - On Aggro - Say Line 0'),
(9452, 0, 1, 0, 0, 0, 100, 0, 3000, 4000, 6000, 8000, 0, 0, 11, 15230, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,       'Scarlet Enchanter - In Combat - Cast Arcane Bolt'),
(9452, 0, 2, 0, 0, 0, 100, 0, 7000, 10000, 12000, 18000, 0, 0, 11, 15970, 1, 0, 0, 0, 0, 6, 30, 0, 0, 0, 0, 0, 0, 0,   'Scarlet Enchanter - In Combat - Cast Sleep'),
--
(10817, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Duggan Wildhammer - Outside 30 Range - Start Combat Movement'),
(10817, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Duggan Wildhammer - Within 5-30 Range - Stop Combat Movement'),
(10817, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Duggan Wildhammer - Within 0-5 Range - Start Combat Movement'),
(10817, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2300, 3900, 5, 30, 11, 15547, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Duggan Wildhammer - Within 5-30 Range - Cast Shoot'),
(10817, 0, 4, 0, 9, 0, 100, 0, 0, 0, 6000, 9000, 0, 5, 11, 15284, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Duggan Wildhammer - 0-5 Range - Cast Cleave'),
(10817, 0, 5, 0, 2, 0, 100, 0, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Duggan Wildhammer - 0-15% Health - Flee For Assist'),
(10817, 0, 6, 0, 0, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 9, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                       'Duggan Wildhammer - In Combat - Say Line 9'),
(10817, 0, 7, 0, 1, 0, 100, 0, 3000, 3000, 180000, 180000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,       'Duggan Wildhammer - Out of Combat - Say Line 0'),
(10817, 0, 8, 0, 1, 0, 100, 0, 15000, 15000, 180000, 180000, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,     'Duggan Wildhammer - Out of Combat - Say Line 1'),
(10817, 0, 9, 0, 1, 0, 100, 0, 25000, 25000, 80000, 80000, 0, 0, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,       'Duggan Wildhammer - Out of Combat - Say Line 2'),
(10817, 0, 10, 0, 1, 0, 100, 0, 40000, 40000, 180000, 180000, 0, 0, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,    'Duggan Wildhammer - Out of Combat - Say Line 3'),
(10817, 0, 11, 0, 1, 0, 100, 0, 50000, 50000, 180000, 180000, 0, 0, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,    'Duggan Wildhammer - Out of Combat - Say Line 4'),
(10817, 0, 12, 0, 1, 0, 100, 0, 70000, 70000, 120000, 120000, 0, 0, 1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,    'Duggan Wildhammer - Out of Combat - Say Line 5'),
(10817, 0, 13, 0, 1, 0, 100, 0, 90000, 90000, 180000, 180000, 0, 0, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,    'Duggan Wildhammer - Out of Combat - Say Line 6'),
(10817, 0, 14, 0, 1, 0, 100, 0, 100000, 100000, 120000, 120000, 0, 0, 1, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  'Duggan Wildhammer - Out of Combat - Say Line 7'),
(10817, 0, 15, 0, 1, 0, 100, 0, 120000, 120000, 120000, 120000, 0, 0, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,  'Duggan Wildhammer - Out of Combat - Say Line 8'),
--
(10821, 0, 0, 0, 0, 0, 100, 0, 6000, 9000, 13000, 18000, 0, 0, 11, 14099, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Hed\'mush the Rotting - Within 0-5 Range - Cast Mighty Blow'),
(10822, 0, 0, 0, 9, 0, 100, 0, 0, 0, 14000, 17000, 0, 5, 11, 9080, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Warlord Thresh\'jin - Within 0-5 Range - Cast Hamstring'),
(10822, 0, 1, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 11971, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Warlord Thresh\'jin - Within 0-5 Range - Cast Sunder Armor'),
(10822, 0, 2, 0, 0, 0, 100, 0, 6000, 9000, 8000, 10000, 0, 0, 11, 17207, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Warlord Thresh\'jin - In Combat - Cast Whirlwind'),
(10823, 0, 0, 0, 9, 0, 100, 0, 0, 0, 8000, 11000, 0, 30, 11, 20831, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Zul\'Brin Warpbranch - Within 0-30 Range - Cast Chain Lightning'),
(10823, 0, 1, 0, 9, 0, 100, 0, 0, 0, 12000, 15000, 0, 20, 11, 15039, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Zul\'Brin Warpbranch - Within 0-20 Range - Cast Flame Shock'),
(10823, 0, 2, 0, 0, 0, 100, 0, 6000, 9000, 11000, 14000, 0, 0, 11, 17172, 1, 0, 0, 0, 0, 6, 20, 0, 0, 0, 0, 0, 0, 0,   'Zul\'Brin Warpbranch - Within 0-20 Range - Cast Hex'),
(10823, 0, 3, 0, 74, 0, 100, 0, 0, 0, 10000, 15000, 40, 40, 11, 12491, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,       'Zul\'Brin Warpbranch - On Friendly Between 0-40% Health - Cast Healing Wave'),
(10824, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Ranger Lord Hawkspear - Outside 30 Range - Start Combat Movement'),
(10824, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Ranger Lord Hawkspear - Within 5-30 Range - Stop Combat Movement'),
(10824, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Ranger Lord Hawkspear - Within 0-5 Range - Start Combat Movement'),
(10824, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 15547, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Ranger Lord Hawkspear - Within 5-30 Range - Cast Shoot'),
(10824, 0, 4, 0, 9, 0, 100, 0, 0, 0, 4000, 7000, 0, 5, 11, 12057, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Ranger Lord Hawkspear - 0-5 Range - Cast Strike'),
(10824, 0, 5, 0, 105, 0, 100, 0, 0, 0, 7000, 9000, 0, 5, 11, 11978, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,          'Ranger Lord Hawkspear - Target Casting - Cast Kick'),
(10824, 0, 6, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Ranger Lord Hawkspear - Between 0-15% Health - Flee For Assist'),
(10825, 0, 0, 0, 0, 0, 100, 0, 3000, 5000, 5000, 7000, 0, 0, 11, 16564, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Gish the Unmoving - In Combat - Cast Gargoyle Strike'),
(10825, 0, 1, 0, 0, 0, 100, 0, 6000, 9000, 18000, 21000, 0, 0, 11, 13445, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Gish the Unmoving - Within 0-5 Range - Cast Rend'),
(10826, 0, 0, 0, 0, 0, 100, 0, 3000, 5000, 6000, 8000, 0, 0, 11, 15284, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Lord Darkscythe - In Combat - Cast Cleave'),
(10826, 0, 1, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 5, 11, 11971, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Lord Darkscythe - Within 0-5 Range - Cast Sunder Armor'),
(10827, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2000, 2000, 0, 0, 11, 12471, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Deathspeaker Selendre - Combat - Cast Shadow Bolt'),
(10827, 0, 1, 0, 0, 0, 100, 0, 3000, 5000, 15000, 18000, 0, 0, 11, 12889, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Deathspeaker Selendre - Combat - Cast Curse of Tongues'),
(10827, 0, 2, 0, 2, 0, 100, 0, 0, 30, 12000, 19000, 0, 0, 11, 17238, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Deathspeaker Selendre - 0-30% Health - Cast Drain Life'),
--
(11878, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Nathanos Blightcaller - Outside 30 Range - Start Combat Movement'),
(11878, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Nathanos Blightcaller - Within 5-30 Range - Stop Combat Movement'),
(11878, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Nathanos Blightcaller - Within 0-5 Range - Start Combat Movement'),
(11878, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 16100, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Nathanos Blightcaller - Within 5-30 Range - Cast Shoot'),
(11878, 0, 4, 0, 0, 0, 90, 0, 6000, 7000, 8000, 15000, 0, 0, 11, 18649, 0, 0, 0, 0, 0, 28, 30, 1, 1, 5, 0, 0, 0, 0,    'Nathanos Blightcaller - Within 5-30 Range - Cast Shadow Shot'),
(11878, 0, 5, 0, 0, 0, 90, 0, 10000, 10000, 8000, 15000, 0, 0, 11, 18651, 0, 0, 0, 0, 0, 28, 30, 1, 1, 5, 0, 0, 0, 0,  'Nathanos Blightcaller - Within 5-30 Range - Cast Multi-Shot'),
(11878, 0, 6, 0, 0, 0, 100, 0, 7000, 9000, 8000, 12000, 0, 0, 11, 6253, 1, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Nathanos Blightcaller - Within 0-5 Range - Cast Backhand'),
(11878, 0, 7, 0, 0, 0, 100, 0, 12000, 15000, 10000, 20000, 0, 0, 11, 13704, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Nathanos Blightcaller - In Combat - Cast Psychic Scream'),
(11878, 0, 8, 0, 0, 0, 50, 0, 5000, 10000, 5000, 10000, 0, 0, 11, 19096, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Nathanos Blightcaller - In Combat - Cast Summon Conquered Soul'),
(11878, 0, 9, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                       'Nathanos Blightcaller - On Aggro - Say Line 0'),
(11878, 0, 10, 0, 5, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                      'Nathanos Blightcaller - On Killed Unit - Say Line 1'),
(11878, 0, 11, 12, 19, 0, 100, 512, 6148, 0, 0, 0, 0, 0, 112, 87, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Nathanos Blightcaller - On Quest \'The Scarlet Oracle, Demetria\' Taken - Start game event 0'),
(11878, 0, 12, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 48, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                  'Nathanos Blightcaller - On Quest \'The Scarlet Oracle, Demetria\' Taken - Set Active On'),
(11878, 0, 13, 0, 38, 0, 100, 512, 1, 1, 0, 0, 0, 0, 80, 1187800, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Nathanos Blightcaller - On Data Set 1 1 - Run Script'),
(11885, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 16577, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Blighthound - On Respawn - Cast Disease Cloud'),
(11885, 0, 1, 0, 9, 0, 100, 0, 0, 0, 12000, 17000, 0, 5, 11, 13445, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Blighthound - Within 0-5 Range - Cast Rend'),
--
(11896, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 21645, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Borelgore - On Respawn - Cast Virulent Poison Proc'),
(11896, 0, 1, 0, 0, 0, 100, 0, 5000, 5000, 5000, 15000, 0, 0, 11, 16866, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Borelgore - Within 0-30 Range - Cast Venom Spit'),
(11896, 0, 2, 0, 0, 0, 100, 0, 6000, 8000, 8000, 11000, 0, 0, 11, 5568, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Borelgore - In Combat - Cast Trample'), -- https://www.youtube.com/watch?v=0pmoJ2pj4pE
(11897, 0, 0, 0, 9, 0, 100, 0, 0, 0, 8000, 11000, 0, 5, 11, 14516, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Duskwing - Within 0-5 Range - Cast Strike'),
(11897, 0, 1, 0, 0, 0, 100, 0, 6000, 10000, 12000, 16000, 0, 0, 11, 8281, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Duskwing - In Combat - Cast Sonic Burst'),
(11897, 0, 2, 0, 0, 0, 100, 0, 2000, 4000, 8000, 11000, 0, 0, 11, 18663, 0, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 0,   'Duskwing - Within 0-20 Range - Cast Shadow Shock'), -- https://www.youtube.com/watch?v=PBjDQYARWfA
--
(12248, 0, 0, 0, 9, 0, 100, 0, 0, 0, 5000, 9000, 0, 30, 11, 18270, 32, 0, 0, 0, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0,          'Infiltrator Hameya - Within 0-30 Range - Cast Dark Plague'),
(12248, 0, 1, 0, 0, 0, 100, 0, 6000, 8000, 15000, 17000, 0, 0, 11, 11977, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Infiltrator Hameya - Within 0-5 Range - Cast Rend'),
(12250, 0, 0, 0, 0, 0, 100, 0, 4000, 6000, 6000, 8000, 0, 0, 11, 40504, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Zaeldarr the Outcast - Within 0-5 Range - Cast Cleave'),
(12250, 0, 1, 0, 9, 0, 100, 0, 0, 0, 8000, 14000, 0, 5, 11, 19128, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Zaeldarr the Outcast - Within 0-5 Range - Cast Knockdown'),
(12322, 0, 0, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Quel Lithien Protector - Outside 30 Range - Start Combat Movement'),
(12322, 0, 1, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Quel Lithien Protector - Within 5-30 Range - Stop Combat Movement'),
(12322, 0, 2, 0, 9, 0, 100, 0, 0, 0, 4000, 4000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Quel Lithien Protector - Within 0-5 Range - Start Combat Movement'),
(12322, 0, 3, 0, 0, 0, 100, 0, 0, 0, 2000, 4000, 0, 0, 11, 15547, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Quel Lithien Protector - Combat - Cast Shoot'),
(12322, 0, 4, 0, 9, 0, 100, 0, 0, 0, 5000, 7000, 0, 5, 11, 12057, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Quel Lithien Protector - 0-5 Range - Cast Strike'),
(12322, 0, 5, 0, 105, 0, 100, 0, 0, 0, 8000, 13000, 0, 5, 11, 11978, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Quel Lithien Protector - 0-5 Range - Cast Kick'),
(12322, 0, 6, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Quel Lithien Protector - 0-15% Health - Flee For Assist (No Repeat)'),
--
(12337, 0, 0, 0, 1, 0, 100, 0, 30000, 60000, 120000, 180000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Crimson Courier - Out of Combat - Say Line 0'),
(12337, 0, 1, 2, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 39, 20, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                     'Crimson Courier - On Aggro - Call For Help'),
(12337, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 19726, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Crimson Courier - On Aggro - Cast Resistance Aura'),
(12337, 0, 3, 0, 0, 0, 100, 0, 5000, 7000, 6000, 8000, 0, 0, 11, 17143, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,     'Crimson Courier - Within 0-5 Range - Cast Holy Strike'),
(12337, 0, 4, 0, 0, 0, 100, 0, 4000, 11000, 15000, 20000, 0, 0, 11, 13005, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Crimson Courier - Within 0-5 Range - Cast Hammer of Justice'),
(12337, 0, 5, 0, 0, 0, 100, 0, 9000, 13000, 10000, 14000, 0, 0, 11, 17149, 0, 0, 0, 0, 0, 21, 30, 0, 0, 0, 0, 0, 0, 0, 'Crimson Courier - In Combat - Cast Exorcism'),
(12337, 0, 6, 0, 0, 0, 100, 0, 2000, 4000, 20000, 26000, 0, 0, 11, 19725, 1, 0, 0, 0, 0, 6, 20, 0, 0, 0, 0, 0, 0, 0,   'Crimson Courier - Within 0-20 Range - Cast Turn Undead'),
(12337, 0, 7, 0, 14, 0, 100, 0, 4000, 40, 14000, 18000, 0, 0, 11, 15493, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,     'Crimson Courier - Friendly Missing 4000 Health - Cast Holy Light'),
(13118, 0, 0, 0, 9, 0, 100, 0, 0, 0, 15000, 25000, 8, 25, 11, 15749, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Crimson Bodyguard - Within 8-25 Range - Cast Shield Charge'),
(13118, 0, 1, 0, 9, 0, 100, 0, 0, 0, 17000, 20000, 0, 5, 11, 11972, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,          'Crimson Bodyguard - Within 0-5 Range - Cast Shield Bash'),
(13118, 0, 2, 0, 0, 0, 100, 0, 7000, 12000, 12000, 25000, 0, 0, 11, 6713, 32, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Crimson Bodyguard - Within 0-5 Range - Cast Disarm'),
(13118, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Crimson Bodyguard - Between 0-15% Health - Flee For Assist (No Repeat)'),
(16184, 0, 0, 0, 9, 0, 100, 0, 0, 0, 10000, 13000, 0, 20, 11, 15471, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Nerubian Overseer - Within 0-20 Range - Cast Enveloping Web'),
(16184, 0, 1, 0, 0, 0, 100, 0, 6000, 10000, 15000, 20000, 0, 0, 11, 31601, 0, 7, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Nerubian Overseer - In Combat - Cast Crypt Scarabs');


-- fix spawn locations, respawn and movement
DELETE FROM `creature` WHERE `id1` IN (10822, 10823, 10827);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, 
`wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
(86607,  10822, 0, 0, 0, 0, 0, 1, 1, 1, 3314, -4855.85, 167.322, 2.50322, 18000, 5, 0, 3876, 0, 1, 0, 0, 0, '', 0, 0,        'Warlord Thresh\'jin'),
(695028, 10822, 0, 0, 0, 0, 0, 1, 1, 1, 3221.36, -4710.45, 158.034, 5.60277, 18000, 0, 0, 3876, 0, 0, 0, 0, 0, '', 0, 0,     'Warlord Thresh\'jin'), -- https://www.youtube.com/watch?v=1fU3H5dqXZI
--
(86625,  10823, 0, 0, 0, 0, 0, 1, 1, 1, 3363.57, -4979.87, 159.273, 3.51245, 37000, 5, 0, 2799, 5598, 1, 0, 0, 0, '', 0, 0,  'Zul\'Brin Warpbranch'), -- https://www.youtube.com/watch?v=0IpkbS4kNoQ
(695030, 10823, 0, 0, 0, 0, 0, 1, 1, 1, 3405.73, -4899.5, 159.417, 5.77662, 37000, 0, 0, 2799, 5598, 0, 0, 0, 0, '', 0, 0,   'Zul\'Brin Warpbranch'), -- https://www.youtube.com/watch?v=nHQPuMWENsc
--
(86755,  10827, 0, 0, 0, 0, 0, 1, 1, 1, 2606.22, -5504.18, 158.046, 0.176863, 18000, 0, 0, 2550, 5206, 0, 0, 0, 0, '', 0, 0, 'Deathspeaker Selendre'); -- https://www.youtube.com/watch?v=qFI1e0g6Rwg

DELETE FROM `pool_creature` WHERE `pool_entry` IN (601014, 601015);
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES 
(86607,  601014, 0, 'Warlord Thresh\'jin - EPL'),
(695028, 601014, 0, 'Warlord Thresh\'jin - EPL'),
(86625,  601015, 0, 'Zul\'Brin Warpbranch - EPL'),
(695030, 601015, 0, 'Zul\'Brin Warpbranch - EPL');

DELETE FROM `pool_template` WHERE `entry` IN (601014, 601015);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES 
(601014, 1, 'Warlord Thresh\'jin - EPL'),
(601015, 1, 'Zul\'Brin Warpbranch - EPL');
    
-- Marris, not Morris.
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Nathanos Blightcaller at Marris Stead in Eastern Plaguelands.' WHERE `ID` IN (6022, 6042, 6133, 6135, 6145, 6148, 6163, 14350);

-- Hide Argent Dawn token quests until Naxx40
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 3461 AND `ConditionValue1` = 66006;
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 19 AND `SourceGroup` = 0 AND `ConditionValue1` = 66006 AND `SourceEntry` BETWEEN 9221 AND 9228;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
--
(15, 3461, 2, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Miranda Breechlock - only show Gossip Menu Insignia Cost after player reaches Naxx40'),
(15, 3461, 2, 0, 1, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Miranda Breechlock - only show Gossip Menu Insignia Cost after player reaches Naxx40'),
(15, 3461, 2, 0, 2, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Miranda Breechlock - only show Gossip Menu Insignia Cost after player reaches Naxx40'),
--
(19, 0, 9221, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Hide \'Superior Armaments of Battle - Friend of the Dawn\' until Naxx40'),
(19, 0, 9223, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Hide \'Superior Armaments of Battle - Honored Amongst the Dawn\' until Naxx40'),
(19, 0, 9226, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Hide \'Superior Armaments of Battle - Revered Amongst the Dawn\' until Naxx40'),
(19, 0, 9227, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Hide \'Superior Armaments of Battle - Exalted Amongst the Dawn\' until Naxx40'),
--
(19, 0, 9222, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Hide \'Epic Armaments of Battle - Friend of the Dawn\' until Naxx40'),
(19, 0, 9224, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Hide \'Epic Armaments of Battle - Honored Amongst the Dawn\' until Naxx40'),
(19, 0, 9225, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Hide \'Epic Armaments of Battle - Revered Amongst the Dawn\' until Naxx40'),
(19, 0, 9228, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Hide \'Epic Armaments of Battle - Exalted Amongst the Dawn\' until Naxx40');

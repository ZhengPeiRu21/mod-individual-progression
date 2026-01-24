/* smart scripts */
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` IN (2753, 2754);
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(2716, 2717, 2718, 2719, 2720, 2739, 2740, 2742, 2743, 2893, 2894, 2907);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(2716, 2717, 2718, 2719, 2720, 2739, 2740, 2742, 2743, 2753, 2754, 2893, 2894, 2907);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(2716, 0, 0, 0, 9, 0, 100, 0, 0, 0, 3000, 3000, 30, 60, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Dustbelcher Wyrmhunter - Outside 30 Range - Start Combat Movement'),
(2716, 0, 1, 0, 9, 0, 100, 0, 0, 0, 3000, 3000, 5, 30, 21, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Dustbelcher Wyrmhunter - Within 5-30 Range - Stop Combat Movement'),
(2716, 0, 2, 0, 9, 0, 100, 0, 0, 0, 3000, 3000, 0, 5, 21, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Dustbelcher Wyrmhunter - Within 0-5 Range - Start Combat Movement'),
(2716, 0, 3, 0, 9, 0, 100, 0, 0, 0, 2000, 3000, 5, 30, 11, 9483, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Dustbelcher Wyrmhunter - Within 5-30 Range - Cast Boulder'),
(2716, 0, 4, 0, 0, 0, 100, 0, 8000, 24000, 21000, 30000, 0, 0, 11, 6533, 1, 0, 0, 0, 0, 21, 20, 0, 0, 0, 0, 0, 0, 0,  'Dustbelcher Wyrmhunter - In Combat - Cast Net'),
(2716, 0, 5, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                        'Dustbelcher Wyrmhunter - On Aggro - Say Line 0'),
(2717, 0, 0, 0, 4, 0, 10, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                        'Dustbelcher Mauler - On Aggro - Say Line 0'),
(2717, 0, 1, 0, 0, 0, 100, 0, 8000, 12000, 15000, 20000, 0, 0, 11, 3391, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Dustbelcher Mauler - In Combat - Cast Thrash'),
(2718, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                        'Dustbelcher Shaman - On Aggro - Say Line 0'),
(2718, 0, 1, 0, 0, 0, 100, 0, 0, 0, 3600, 5200, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Dustbelcher Shaman - In Combat - Cast Lightning Bolt'),
(2718, 0, 2, 0, 74, 0, 50, 0, 0, 0, 18000, 25000, 40, 40, 11, 8005, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,         'Dustbelcher Shaman - On Friendly Between 0-40% Health - Cast Healing Wave'),
(2719, 0, 0, 0, 4, 0, 10, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                        'Dustbelcher Lord - On Aggro - Say Line 0'),
(2719, 0, 1, 0, 0, 0, 100, 0, 7800, 12100, 11200, 30000, 0, 0, 11, 9128, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Dustbelcher Lord - In Combat - Cast Battle Shout'),
(2719, 0, 2, 0, 9, 0, 100, 0, 6600, 18700, 30800, 32400, 0, 5, 11, 13730, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Dustbelcher Lord - Within 0-5 Range - Cast Demoralizing Shout'),
(2719, 0, 3, 0, 2, 0, 100, 0, 0, 50, 0, 0, 0, 0, 39, 20, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Dustbelcher Lord - Between 0-50% Health - Call For Help'),
(2720, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                        'Dustbelcher Ogre Mage - On Aggro - Say Line 0'),
(2720, 0, 1, 0, 0, 0, 100, 0, 0, 0, 3600, 5100, 0, 0, 11, 20822, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Dustbelcher Ogre Mage - In Combat - Cast Frostbolt'),
(2720, 0, 2, 0, 0, 0, 100, 0, 3000, 8000, 30000, 45000, 0, 0, 11, 6742, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Dustbelcher Ogre Mage - In Combat - Cast Bloodlust'),
(2739, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 7164, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Shadowforge Tunneler - On Aggro - Cast Defensive Stance'),
(2739, 0, 1, 0, 9, 0, 100, 0, 0, 0, 7600, 13700, 0, 5, 11, 8380, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Shadowforge Tunneler - In Combat - Cast Sunder Armor'),
(2739, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Shadowforge Tunneler - Between 0-15% Health - Flee For Assist'),
(2740, 0, 0, 0, 0, 0, 100, 0, 0, 0, 3500, 4000, 0, 0, 11, 20825, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,           'Shadowforge Darkweaver - In Combat - Cast Shadow Bolt'),
(2740, 0, 1, 0, 0, 0, 100, 0, 14900, 23100, 14900, 31200, 0, 0, 11, 9482, 33, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Shadowforge Darkweaver - In Combat - Cast Amplify Flames'),
(2740, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Shadowforge Darkweaver - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2742, 0, 0, 0, 0, 0, 100, 0, 8800, 11900, 16400, 35800, 0, 0, 11, 6066, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Shadowforge Chanter - In Combat - Cast Power Word: Shield'),
(2742, 0, 1, 0, 74, 0, 100, 0, 0, 0, 18800, 36600, 40, 40, 11, 6077, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,        'Shadowforge Chanter - On Friendly Between 0-40% Health - Cast Renew'),
(2742, 0, 2, 0, 0, 0, 100, 0, 8000, 10000, 18000, 24000, 0, 0, 11, 15970, 1, 0, 0, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0,  'Shadowforge Chanter - In Combat - Cast Sleep'),
(2742, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Shadowforge Chanter - Between 0-15% Health - Flee For Assist'),
(2743, 0, 0, 0, 0, 0, 100, 0, 7000, 18000, 22000, 23000, 0, 0, 11, 17207, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Shadowforge Warrior - In Combat - Cast Whirlwind'),
(2743, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Shadowforge Warrior - Between 0-15% Health - Flee For Assist'),
(2893, 0, 0, 0, 0, 0, 100, 0, 4000, 15900, 15700, 26100, 0, 0, 11, 11976, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,  'Stonevault Bonesnapper - Within 0-5 Range - Cast Strike'),
(2893, 0, 1, 0, 105, 0, 100, 0, 9000, 19000, 15000, 25000, 0, 5, 11, 12555, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Stonevault Bonesnapper - Within 0-5 Range - Cast Pummel'),
(2893, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Stonevault Bonesnapper - Between 0-15% Health - Flee For Assist'),
(2894, 0, 0, 0, 2, 0, 60, 1, 0, 80, 0, 0, 0, 0, 11, 5605, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Stonevault Shaman - Between 0-80% Health - Cast Healing Ward'),
(2894, 0, 1, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                     'Stonevault Shaman - Between 0-15% Health - Flee For Assist'),
(2907, 0, 0, 0, 4, 0, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                        'Dustbelcher Mystic - On Aggro - Say Line 0'),
(2907, 0, 1, 0, 0, 0, 100, 0, 0, 0, 3000, 4000, 0, 0, 11, 9532, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Dustbelcher Mystic - In Combat - Cast Lightning Bolt'),
(2907, 0, 2, 0, 0, 0, 100, 0, 0, 15000, 30000, 30000, 0, 0, 11, 13281, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Dustbelcher Mystic - In Combat - Cast Earth Shock');


-- fix drop rate Small Stone Shard, quest 710
UPDATE `creature_loot_template` SET `Chance` = 20 WHERE `Item` = 4626;

-- fix drop rate of Indurium Flake from non elites, quest 1108
UPDATE `creature_loot_template` SET `Chance` = 20 WHERE `Item` = 5797 AND `Entry` IN (2893, 2894);

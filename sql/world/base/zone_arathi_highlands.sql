-- smart scripts
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(2554, 2555, 2556, 2562, 2563, 2564);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(2554, 2555, 2556, 2562, 2563, 2564);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(2554, 0, 0, 0, 9, 0, 100, 0, 0, 0, 2000, 4000, 5, 30, 11, 10277, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,         'Witherbark Axe Thrower - Within 5-30 Range - Cast Throw'),
(2554, 0, 1, 0, 9, 0, 100, 0, 10200, 26000, 2500, 6700, 0, 5, 11, 4974, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Witherbark Axe Thrower - Within 0-5 Range - Cast Wither Touch'),
(2554, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Witherbark Axe Thrower - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2555, 0, 0, 0, 9, 0, 100, 0, 6500, 15300, 80900, 93900, 0, 5, 11, 5605, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,   'Witherbark Witch Doctor - Within 0-5 Range - Cast Healing Ward'),
(2555, 0, 1, 0, 9, 0, 100, 0, 0, 16000, 11100, 23400, 0, 8, 11, 8190, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,      'Witherbark Witch Doctor - Within 0-8 Range - Cast Magma Totem'),
(2555, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Witherbark Witch Doctor - Between 0-15% Health - Flee For Assist (No Repeat)'),
(2556, 0, 0, 0, 9, 0, 100, 0, 9000, 24000, 18500, 39800, 0, 20, 11, 6533, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Witherbark Headhunter - Within 0-20 Range - Cast Net'),
(2556, 0, 1, 0, 9, 0, 100, 0, 20200, 31400, 38500, 47500, 0, 5, 11, 4974, 32, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Witherbark Headhunter - Within 0-5 Range - Cast Wither Touch'),
(2556, 0, 2, 0, 12, 0, 100, 1, 0, 20, 0, 0, 0, 0, 11, 7160, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,                'Witherbark Headhunter - Target Between 0-20% Health - Cast Execute (No Repeat)'),
(2556, 0, 3, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Witherbark Headhunter - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(2562, 0, 0, 0, 4, 0, 5, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                        'Boulderfist Ogre - On Aggro - Say Line 0 (No Repeat)'),
(2562, 0, 1, 0, 2, 0, 100, 0, 0, 30, 15300, 42700, 0, 0, 11, 4955, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Boulderfist Ogre - Between 0-30% Health - Cast Fist of Stone'),
(2563, 0, 0, 0, 9, 0, 100, 0, 9000, 34000, 19000, 38000, 0, 20, 11, 4962, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Plains Creeper - Within 0-20 Range - Cast Encasing Webs'),
(2563, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 3616, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Plains Creeper - On Respawn - Cast Poison Proc'),
(2564, 0, 0, 0, 4, 0, 5, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                        'Boulderfist Enforcer - On Aggro - Say Line 0 (No Repeat)'),
(2564, 0, 1, 0, 9, 0, 100, 0, 4000, 13000, 30000, 40000, 0, 10, 11, 13730, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Boulderfist Enforcer - Within 0-10 Range - Cast Demoralizing Shout'),
(2564, 0, 2, 0, 2, 0, 100, 0, 0, 30, 27200, 46600, 0, 0, 11, 4955, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Boulderfist Enforcer - Between 0-30% Health - Cast Fist of Stone');


-- remove non elite Syndicate thief from Stromgarde
DELETE FROM `creature` WHERE `id1` = 24477;

-- delete all guids for id1 24477 from creature_addon
DELETE FROM `creature_addon` WHERE `guid` IN 
(11650, 11699, 11700, 14522, 14538, 14539, 14540, 
14548, 14553, 14554, 14555, 14567, 14569, 14580, 
14584, 14635, 14640, 14641, 14648, 14649, 14651);

-- set drop rate of sigil of strom to 5%, was 100%
UPDATE `creature_loot_template` SET `Chance` = 5 WHERE `Item` = 4440;

-- summoning the princess, quest 656, remove suggested player 2
UPDATE `quest_template` SET `SuggestedGroupNum` = 0 WHERE `ID` = 656;

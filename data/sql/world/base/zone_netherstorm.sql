-- fix quest 10182, 10305, 10306, 10307
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (19543, 19544, 19545, 19546);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(19543, 0, 0, 1, 54, 0, 100, 512, 0, 0, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                 'Battle-Mage Dathric - On Just Summoned - Store Targetlist'),
(19543, 0, 1, 2, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 71, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Battle-Mage Dathric - On Just Summoned - Remove Weapon'),
(19543, 0, 2, 3, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Battle-Mage Dathric - On Just Summoned - Set Faction 35'),
(19543, 0, 3, 4, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 18, 131840, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Battle-Mage Dathric - On Just Summoned - Set Flags Immune to NPC/PC'),
(19543, 0, 4, 5, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Battle-Mage Dathric - On Just Summoned - Combat Stop'),
(19543, 0, 5, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 53, 1, 19543, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Battle-Mage Dathric - On Just Summoned - Start WP'),
(19543, 0, 6, 0, 40, 0, 100, 512, 5, 19543, 0, 0, 0, 0, 80, 1954300, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Battle-Mage Dathric - On Reached WP5 - Run Script'),
(19543, 0, 7, 0, 0, 0, 100, 0, 0, 3000, 3000, 8000, 0, 0, 11, 36104, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Battle-Mage Dathric - In Combat - Cast \'Torrent of Flames\''),
(19543, 0, 8, 0, 0, 0, 100, 0, 0, 2500, 8500, 12000, 0, 0, 11, 17273, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Battle-Mage Dathric - In Combat - Cast \'Pyroblast\''),
--
(19544, 0, 0, 1, 54, 0, 100, 512, 0, 0, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                 'Conjurer Luminrath - On Just Summoned - Store Targetlist'),
(19544, 0, 1, 2, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Conjurer Luminrath - On Just Summoned - Set Faction 35'),
(19544, 0, 2, 3, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 18, 131840, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Conjurer Luminrath - On Just Summoned - Set Flags Immune to NPC/PC'),
(19544, 0, 3, 4, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Conjurer Luminrath - On Just Summoned - Combat Stop'),
(19544, 0, 4, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 53, 1, 19544, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Conjurer Luminrath - On Just Summoned - Start WP'),
(19544, 0, 5, 0, 40, 0, 100, 512, 3, 19544, 0, 0, 0, 0, 80, 1954400, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Conjurer Luminrath - On Reached WP3 - Run Script'),
(19544, 0, 6, 0, 0, 0, 100, 0, 0, 2500, 1000, 7500, 0, 0, 11, 9532, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,        'Conjurer Luminrath - In Combat - Cast \'Lightning Bolt\''),
(19544, 0, 7, 0, 0, 0, 100, 0, 0, 5000, 15000, 30000, 0, 0, 11, 36110, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Conjurer Luminrath - In Combat - Cast \'Summon Dancing Sword\''),
(19544, 0, 8, 0, 0, 0, 100, 0, 0, 10000, 5000, 15000, 0, 0, 11, 36109, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Conjurer Luminrath - In Combat - Cast \'Blink\''),
--
(19545, 0, 0, 1, 54, 0, 100, 512, 0, 0, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                 'Cohlien Frostweaver - On Just Summoned - Store Targetlist'),
(19545, 0, 1, 2, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Cohlien Frostweaver - On Just Summoned - Set Faction 35'),
(19545, 0, 2, 3, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 18, 131840, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Cohlien Frostweaver - On Just Summoned - Set Flags Immune to NPC/PC'),
(19545, 0, 3, 4, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Cohlien Frostweaver - On Just Summoned - Combat Stop'),
(19545, 0, 4, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 53, 1, 19545, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Cohlien Frostweaver - On Just Summoned - Start WP'),
(19545, 0, 5, 0, 40, 0, 100, 512, 6, 19545, 0, 0, 0, 0, 80, 1954500, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Cohlien Frostweaver - On Reached WP6 - Run Script'),
(19545, 0, 6, 0, 0, 0, 100, 0, 0, 1000, 25000, 30000, 0, 0, 11, 33245, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,     'Cohlien Frostweaver - In Combat - Cast \'Ice Barrier\''),
(19545, 0, 7, 0, 106, 0, 100, 0, 0, 10000, 2500, 9500, 0, 10, 11, 11831, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Cohlien Frostweaver - In Combat - Cast \'Frost Nova\''),
(19545, 0, 8, 0, 0, 0, 100, 0, 0, 2500, 2500, 11000, 0, 0, 11, 9672, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Cohlien Frostweaver - In Combat - Cast \'Frostbolt\''),
--
(19546, 0, 0, 1, 54, 0, 100, 512, 0, 0, 0, 0, 0, 0, 64, 1, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,                 'Abjurist Belmara - On Just Summoned - Store Targetlist'),
(19546, 0, 1, 2, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 2, 35, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Abjurist Belmara - On Just Summoned - Set Faction 35'),
(19546, 0, 2, 3, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 18, 131840, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Abjurist Belmara - On Just Summoned - Set Flags Immune to NPC/PC'),
(19546, 0, 3, 4, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 27, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Abjurist Belmara - On Just Summoned - Combat Stop'),
(19546, 0, 4, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 53, 1, 19546, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Abjurist Belmara - On Just Summoned - Start WP'),
(19546, 0, 5, 0, 40, 0, 100, 512, 5, 19546, 0, 0, 0, 0, 80, 1954600, 2, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Abjurist Belmara - On Reached WP5 - Run Script'),
(19546, 0, 6, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Abjurist Belmara - On Aggro - Cast \'Frost Armor\''),
(19546, 0, 7, 0, 0, 0, 100, 0, 2000, 5000, 12000, 22000, 0, 0, 11, 17740, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Abjurist Belmara - In Combat - Cast \'Mana Shield\''),
(19546, 0, 8, 0, 0, 0, 100, 0, 0, 6000, 2500, 8000, 0, 0, 11, 34447, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,      'Abjurist Belmara - In Combat - Cast \'Arcane Missiles\''),
(19546, 0, 9, 0, 25, 0, 100, 512, 0, 0, 0, 0, 0, 0, 28, 12544, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Abjurist Belmara - On Reset - Remove Aura \'Frost Armor\'');

-- fix Escape from the Staging Grounds (didn't complete)
UPDATE `smart_scripts` SET `link` = 14 WHERE `entryorguid` = 20763 AND `id` = 13;

-- fix creature placed under ground
UPDATE `creature` SET `position_x` = 2246.56, `position_y` = 2294.01, `position_z` = 86.2593 WHERE `guid` = 67476;

SET @CGUID      := 659000;

SET @Vixton     := 120278;
SET @Krixel     := 123396;
SET @Leeni      := 124392;

DELETE FROM `creature` WHERE `guid` IN (@CGUID+71, @CGUID+72);
DELETE FROM `creature` WHERE `id1` IN (23396, 24392, 26352, @Leeni, @Krixel);
DELETE FROM `creature` WHERE `id1` IN (32354, 33919, 33930, 33941, 32355, 33916, 33932, 33933, 32356, 33918, 33931, 33940, 34089, 34091, 34094);
INSERT INTO `creature` (`guid`, `id1`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES 
--
(@CGUID+71, 20278,   530, 1, 1, 3070.16, 3635.11, 143.864, 0.750492, 180), -- Vixton Pinchwhistle, WotLK Season 1
(@CGUID+72, @Vixton, 530, 1, 1, 3070.16, 3635.11, 143.864, 0.750492, 180), -- Vixton Pinchwhistle, WotLK Season 2
(@CGUID+73, 24392, 530, 1, 1, 3070.16, 3635.11, 143.864, 0.750492, 180),   -- Leeni Smalls, WotLK Season 3
(@CGUID+74, @Leeni, 530, 1, 1, 3070.16, 3635.11, 143.864, 0.750492, 180),  -- Leeni Smalls, WotLK Season 4
(@CGUID+75, 32354, 530, 1, 1, 3070.16, 3635.11, 143.864, 0.750492, 180),   -- Leeni Smalls, WotLK Season 5
(@CGUID+76, 33919, 530, 1, 1, 3070.16, 3635.11, 143.864, 0.750492, 180),   -- Leeni Smalls, WotLK Season 6
(@CGUID+77, 33930, 530, 1, 1, 3070.16, 3635.11, 143.864, 0.750492, 180),   -- Leeni Smalls, WotLK Season 7
(@CGUID+78, 33941, 530, 1, 1, 3070.16, 3635.11, 143.864, 0.750492, 180),   -- Leeni Smalls, WotLK Season 8
--
(@CGUID+79, 23396,   530, 1, 1, 3073.99, 3633.34, 143.881, 2.09012, 180),  -- Krixel Pinchwhistle, WotLK Season 2
(@CGUID+80, @Krixel, 530, 1, 1, 3073.99, 3633.34, 143.881, 2.09012, 180),  -- Krixel Pinchwhistle, WotLK Season 3
(@CGUID+81, 26352, 530, 1, 1, 3073.99, 3633.34, 143.881, 2.09012, 180),    -- Big Zokk Torquewrench, WotLK Season 4
(@CGUID+82, 32355, 530, 1, 1, 3073.99, 3633.34, 143.881, 2.09012, 180),    -- Big Zokk Torquewrench, WotLK Season 5
(@CGUID+83, 33916, 530, 1, 1, 3073.99, 3633.34, 143.881, 2.09012, 180),    -- Big Zokk Torquewrench, WotLK Season 6
(@CGUID+84, 33932, 530, 1, 1, 3073.99, 3633.34, 143.881, 2.09012, 180),    -- Big Zokk Torquewrench, WotLK Season 7
(@CGUID+85, 33933, 530, 1, 1, 3073.99, 3633.34, 143.881, 2.09012, 180),    -- Big Zokk Torquewrench, WotLK Season 8
--
(@CGUID+86, 32356, 530, 1, 1, 3066.45, 3638.87, 145.218, 0.875901, 180),   -- Kezzik the Striker, WotLK Season 5
(@CGUID+87, 33918, 530, 1, 1, 3066.45, 3638.87, 145.218, 0.875901, 180),   -- Kezzik the Striker, WotLK Season 6
(@CGUID+88, 33931, 530, 1, 1, 3066.45, 3638.87, 145.218, 0.875901, 180),   -- Kezzik the Striker, WotLK Season 7
(@CGUID+89, 33940, 530, 1, 1, 3066.45, 3638.87, 145.218, 0.875901, 180),   -- Kezzik the Striker, WotLK Season 8
--
(@CGUID+90, 34089, 530, 1, 1, 3078.46, 3636.98, 145.385, 3.12999, 180),    -- Grez Brainboiler, WotLK Season 6
(@CGUID+91, 34091, 530, 1, 1, 3078.46, 3636.98, 145.385, 3.12999, 180),    -- Grez Brainboiler, WotLK Season 7
(@CGUID+92, 34094, 530, 1, 1, 3078.46, 3636.98, 145.385, 3.12999, 180);    -- Grez Brainboiler, WotLK Season 8


UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc_S1'   WHERE `guid` IN (@CGUID+71);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc_S2'   WHERE `guid` IN (@CGUID+72, @CGUID+79);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc_S3'   WHERE `guid` IN (@CGUID+73, @CGUID+80);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc_S4'   WHERE `guid` IN (@CGUID+74, @CGUID+81);

UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S5' WHERE `guid` IN (@CGUID+75, @CGUID+82, @CGUID+86);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S6' WHERE `guid` IN (@CGUID+76, @CGUID+83, @CGUID+87, @CGUID+90);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S7' WHERE `guid` IN (@CGUID+77, @CGUID+84, @CGUID+88, @CGUID+91);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S8' WHERE `guid` IN (@CGUID+78, @CGUID+85, @CGUID+89, @CGUID+92);

DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+71 AND @CGUID+92;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(@CGUID+71, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+72, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+73, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+74, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+75, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+76, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+77, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+78, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+79, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+80, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+81, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+82, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+83, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+84, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+85, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+86, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+87, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+88, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+89, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+90, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+91, 0, 0, 0, 1, 0, 0, NULL),
(@CGUID+92, 0, 0, 0, 1, 0, 0, NULL);

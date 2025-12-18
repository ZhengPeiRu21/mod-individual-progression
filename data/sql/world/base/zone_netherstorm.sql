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

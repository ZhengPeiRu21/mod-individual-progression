DELETE FROM `creature` WHERE `id1` IN (32354, 33919, 33930, 33941, 32355, 33916, 33932, 33933, 32356, 33918, 33931, 33940, 34089, 34091, 34094);
INSERT INTO `creature` (`guid`, `id1`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES 
--
(632354, 32354, 530, 1, 1, 3070.16, 3635.11, 143.864, 0.750492, 180), -- Leeni Smalls, WotLK Season 5
(633919, 33919, 530, 1, 1, 3070.16, 3635.11, 143.864, 0.750492, 180), -- Leeni Smalls, WotLK Season 6
(633930, 33930, 530, 1, 1, 3070.16, 3635.11, 143.864, 0.750492, 180), -- Leeni Smalls, WotLK Season 7
(633941, 33941, 530, 1, 1, 3070.16, 3635.11, 143.864, 0.750492, 180), -- Leeni Smalls, WotLK Season 8
--
(632355, 32355, 530, 1, 1, 3073.99, 3633.34, 143.881, 2.09012, 180),  -- Big Zokk Torquewrench, WotLK Season 5
(633916, 33916, 530, 1, 1, 3073.99, 3633.34, 143.881, 2.09012, 180),  -- Big Zokk Torquewrench, WotLK Season 6
(633932, 33932, 530, 1, 1, 3073.99, 3633.34, 143.881, 2.09012, 180),  -- Big Zokk Torquewrench, WotLK Season 7
(633933, 33933, 530, 1, 1, 3073.99, 3633.34, 143.881, 2.09012, 180),  -- Big Zokk Torquewrench, WotLK Season 8
--
(632356, 32356, 530, 1, 1, 3066.45, 3638.87, 145.218, 0.875901, 180), -- Kezzik the Striker, WotLK Season 5
(633918, 33918, 530, 1, 1, 3066.45, 3638.87, 145.218, 0.875901, 180), -- Kezzik the Striker, WotLK Season 6
(633931, 33931, 530, 1, 1, 3066.45, 3638.87, 145.218, 0.875901, 180), -- Kezzik the Striker, WotLK Season 7
(633940, 33940, 530, 1, 1, 3066.45, 3638.87, 145.218, 0.875901, 180), -- Kezzik the Striker, WotLK Season 8
--
(634089, 34089, 530, 1, 1, 3078.46, 3636.98, 145.385, 3.12999, 180),  -- Grez Brainboiler, WotLK Season 6
(634091, 34091, 530, 1, 1, 3078.46, 3636.98, 145.385, 3.12999, 180),  -- Grez Brainboiler, WotLK Season 7
(634094, 34094, 530, 1, 1, 3078.46, 3636.98, 145.385, 3.12999, 180);  -- Grez Brainboiler, WotLK Season 8


UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S5' WHERE `guid` IN (632354, 632355, 632356);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S6' WHERE `guid` IN (633916, 633918, 633919, 634089);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S7' WHERE `guid` IN (633930, 633931, 633932, 634091);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S8' WHERE `guid` IN (633933, 633940, 633941, 634094);

DELETE FROM `creature_addon` WHERE `guid` IN (632354, 633919, 633930, 633941, 632355, 633916, 633932, 633933, 632356, 633918, 633931, 633940, 634089, 634091, 634094);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(632354, 0, 0, 0, 1, 0, 0, NULL),
(633919, 0, 0, 0, 1, 0, 0, NULL),
(633930, 0, 0, 0, 1, 0, 0, NULL),
(633941, 0, 0, 0, 1, 0, 0, NULL),
(632355, 0, 0, 0, 1, 0, 0, NULL),
(633916, 0, 0, 0, 1, 0, 0, NULL),
(633932, 0, 0, 0, 1, 0, 0, NULL),
(633933, 0, 0, 0, 1, 0, 0, NULL),
(632356, 0, 0, 0, 1, 0, 0, NULL),
(633918, 0, 0, 0, 1, 0, 0, NULL),
(633931, 0, 0, 0, 1, 0, 0, NULL),
(633940, 0, 0, 0, 1, 0, 0, NULL),
(634089, 0, 0, 0, 1, 0, 0, NULL),
(634091, 0, 0, 0, 1, 0, 0, NULL),
(634094, 0, 0, 0, 1, 0, 0, NULL);

DELETE FROM `creature` WHERE `id1` IN (31863, 31864, 31865, 33921, 33922, 33923, 33925, 33926, 33927, 33936, 33937, 33938, 34087, 34092, 34095);
INSERT INTO `creature` (`guid`, `id1`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES 
--
(631863, 31863, 571, 1, 1, 5753.74, 585.413, 615.052, 0, 180),       -- Nargle Lashcord, WotLK Season 5
(633921, 33921, 571, 1, 1, 5753.74, 585.413, 615.052, 0, 180),       -- Nargle Lashcord, WotLK Season 6
(633927, 33927, 571, 1, 1, 5753.74, 585.413, 615.052, 0, 180),       -- Nargle Lashcord, WotLK Season 7
(633936, 33936, 571, 1, 1, 5753.74, 585.413, 615.052, 0, 180),       -- Nargle Lashcord, WotLK Season 8

(631864, 31864, 571, 1, 1, 5751.54, 584.66, 615.052, 0, 180),        -- Xazi Smolderpipe, WotLK Season 5
(633922, 33922, 571, 1, 1, 5751.54, 584.66, 615.052, 0, 180),        -- Xazi Smolderpipe, WotLK Season 6
(633926, 33926, 571, 1, 1, 5751.54, 584.66, 615.052, 0, 180),        -- Xazi Smolderpipe, WotLK Season 7
(633937, 33937, 571, 1, 1, 5751.54, 584.66, 615.052, 0, 180),        -- Xazi Smolderpipe, WotLK Season 8

(631865, 31865, 571, 1, 1, 5751.73, 582.943, 615.052, 0, 180),       -- Zom Bocom, WotLK Season 5
(633923, 33923, 571, 1, 1, 5751.73, 582.943, 615.052, 0, 180),       -- Zom Bocom, WotLK Season 6
(633925, 33925, 571, 1, 1, 5751.73, 582.943, 615.052, 0, 180),       -- Zom Bocom, WotLK Season 7
(633938, 33938, 571, 1, 1, 5751.73, 582.943, 615.052, 0, 180),       -- Zom Bocom, WotLK Season 8

(634087, 34087, 571, 1, 1, 5761.32, 578.753, 615.052, 2.09439, 180), -- Trapjaw Rix, WotLK Season 6
(634092, 34092, 571, 1, 1, 5761.32, 578.753, 615.052, 2.09439, 180), -- Trapjaw Rix, WotLK Season 7
(634095, 34095, 571, 1, 1, 5761.32, 578.753, 615.052, 2.09439, 180); -- Trapjaw Rix, WotLK Season 8

UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S5' WHERE `guid` IN (631863, 631864, 631865);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S6' WHERE `guid` IN (633921, 633922, 633923, 634087);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S7' WHERE `guid` IN (633925, 633926, 633927, 634092);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S8' WHERE `guid` IN (633936, 633937, 633938, 634095);

DELETE FROM `creature_addon` WHERE `guid` IN (631863, 631864, 631865, 633921, 633922, 633923, 633925, 633926, 633927, 633936, 633937, 633938, 634087, 634092, 634095);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(631863, 0, 0, 0, 1, 0, 0, NULL),
(633921, 0, 0, 0, 1, 0, 0, NULL),
(633927, 0, 0, 0, 1, 0, 0, NULL),
(633936, 0, 0, 0, 1, 0, 0, NULL),
(631864, 0, 0, 0, 1, 0, 0, NULL),
(633922, 0, 0, 0, 1, 0, 0, NULL),
(633926, 0, 0, 0, 1, 0, 0, NULL),
(633937, 0, 0, 0, 1, 0, 0, NULL),
(631865, 0, 0, 0, 1, 0, 0, NULL),
(633923, 0, 0, 0, 1, 0, 0, NULL),
(633925, 0, 0, 0, 1, 0, 0, NULL),
(633938, 0, 0, 0, 1, 0, 0, NULL),
(634087, 0, 0, 0, 1, 0, 0, NULL),
(634092, 0, 0, 0, 1, 0, 0, NULL),
(634095, 0, 0, 0, 1, 0, 0, NULL);

-- remove event entries added by AC
DELETE FROM `creature_addon` WHERE `guid` IN (85064, 85208, 85209, 85210);
DELETE FROM `game_event_creature` WHERE `guid` IN (85064, 85208, 85209, 85210, 152021, 152024, 152025, 208485, 208490, 208493, 208495, 208497, 208502, 208505, 208507);

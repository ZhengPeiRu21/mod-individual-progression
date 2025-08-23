-- Custom GUIDs
-- creature 352042
-- creature_template 351097
-- Add MapDifficulty DBC Override
-- https://wow.tools/dbc/?dbc=mapdifficulty&build=10.0.0.44895#page=1&search=533
DELETE FROM `mapdifficulty_dbc` WHERE `ID` = 754;
INSERT INTO `mapdifficulty_dbc` (`ID`, `MapID`, `Difficulty`, `Message_Lang_enUS`, `Message_Lang_Mask`, `RaidDuration`, `MaxPlayers`, `Difficultystring`) VALUES
(754, 533, 2, 'You must be level 60 and in a raid group to enter.', 16712190, 604800, 40, 'RAID_DIFFICULTY_40PLAYER');

-- Remove exit teleport and replace with script
DELETE FROM `areatrigger_teleport` WHERE `ID` IN (5196, 5197, 5198, 5199, 4156);

DELETE FROM `areatrigger_scripts` WHERE `entry` IN (5196, 5197, 5198, 5199);
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(5196, 'naxx_exit_trigger'),
(5197, 'naxx_exit_trigger'),
(5198, 'naxx_exit_trigger'),
(5199, 'naxx_exit_trigger');

DELETE FROM `areatrigger_scripts` WHERE `entry` IN (5191, 5192, 5193, 5194);
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES
(5191, 'naxx_northrend_entrance'),
(5192, 'naxx_northrend_entrance'),
(5193, 'naxx_northrend_entrance'),
(5194, 'naxx_northrend_entrance');

-- Update spawnMask of all creatures to 10man + 25man
UPDATE `creature` SET `spawnMask` = 3 WHERE `spawnMask` = 7 AND `map` = 533;
-- Update spawnMask of all gameobjects to all
UPDATE `gameobject` SET `spawnMask` = 7 WHERE `spawnMask` = 3 AND `map` = 533;
-- Lich King uses same entry in Naxx WotLK and Naxx40 - Allow spawning in all versions
UPDATE `creature` SET `spawnMask` = `spawnMask` | 4 WHERE `id1` = 16980;
-- Naxxramas Trigger (frogger) should also spawn in Naxx40
UPDATE `creature` SET `spawnMask` = `spawnMask`| 4 WHERE `id1` = 16082;
-- Orb of Naxxramas does not exist in classic
UPDATE `gameobject` SET `spawnMask` = 3 WHERE `id` IN (202278, 202277);

DELETE FROM `dungeon_access_template` WHERE `id`=122;
INSERT INTO `dungeon_access_template` (`id`, `map_id`, `difficulty`, `min_level`, `max_level`, `min_avg_item_level`, `comment`) VALUES (122, 533, 2, 60, 0, 0, 'Naxxramas - 40man');

-- Naxx40 Dungeon DBC entries (helps Autobalance work correctly)
DELETE FROM `lfgdungeons_dbc` WHERE `ID` = 1001;
INSERT INTO `lfgdungeons_dbc` VALUES
(1001,"Naxxramas (Vanilla)","","","","","","","","","","","","","","","",16712190,60,83,60,60,83,533,2,0,2,-1,"",2,0,9,"","","","","","","","","","","","","","","","",16712188);

DELETE FROM `dungeonencounter_dbc` WHERE `ID` BETWEEN 1001 AND 1015;
INSERT INTO `dungeonencounter_dbc` (`ID`, `MapID`, `Difficulty`, `OrderIndex`, `Bit`, `Name_Lang_enUS`, `Name_Lang_enGB`, `Name_Lang_koKR`, `Name_Lang_frFR`, `Name_Lang_deDE`, `Name_Lang_enCN`, `Name_Lang_zhCN`, `Name_Lang_enTW`, `Name_Lang_zhTW`, `Name_Lang_esES`, `Name_Lang_esMX`, `Name_Lang_ruRU`, `Name_Lang_ptPT`, `Name_Lang_ptBR`, `Name_Lang_itIT`, `Name_Lang_Unk`, `Name_Lang_Mask`, `SpellIconID`) VALUES
(1001, 533, 2, 0, 0, 'Anub''Rekhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16712190, 0),
(1002, 533, 2, 1000, 1, 'Grand Widow Faerlina', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16712190, 0),
(1003, 533, 2, 2000, 2, 'Maexxna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16712190, 0),
(1004, 533, 2, 3000, 3, 'Noth the Plaguebringer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16712190, 0),
(1005, 533, 2, 4000, 4, 'Heigan the Unclean', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16712190, 0),
(1006, 533, 2, 5000, 5, 'Loatheb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16712190, 0),
(1007, 533, 2, 6000, 6, 'Instructor Razuvious', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16712190, 0),
(1008, 533, 2, 7000, 7, 'Gothik the Harvester', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16712190, 0),
(1009, 533, 2, 8000, 8, 'The Four Horsemen', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16712190, 0),
(1010, 533, 2, 9000, 9, 'Patchwerk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16712190, 0),
(1011, 533, 2, 10000, 10, 'Grobbulus', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16712190, 0),
(1012, 533, 2, 11000, 11, 'Gluth', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16712190, 0),
(1013, 533, 2, 12000, 12, 'Thaddius', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16712190, 0),
(1014, 533, 2, 13000, 13, 'Sapphiron', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16712190, 0),
(1015, 533, 2, 14000, 14, 'Kel''Thuzad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16712190, 0);

DELETE FROM `instance_encounters` WHERE `entry` BETWEEN 1001 AND 1015;
INSERT INTO `instance_encounters` (`entry`, `creditType`, `creditEntry`, `lastEncounterDungeon`, `comment`) VALUES
(1001, 0, 351009, 0, 'Anub''Rekhan'),
(1002, 0, 351007, 0, 'Grand Widow Faerlina'),
(1003, 0, 351006, 0, 'Maexxna'),
(1004, 0, 351008, 0, 'Noth the Plaguebringer'),
(1005, 0, 351005, 0, 'Heigan the Unclean'),
(1006, 0, 351020, 0, 'Loatheb'),
(1007, 0, 351036, 0, 'Instructor Razuvious'),
(1008, 0, 351035, 0, 'Gothik the Harvester'),
(1009, 1, 59450, 0, 'The Four Horsemen'),
(1010, 0, 351028, 0, 'Patchwerk'),
(1011, 0, 351003, 0, 'Grobbulus'),
(1012, 0, 351004, 0, 'Gluth'),
(1013, 0, 351000, 0, 'Thaddius'),
(1014, 0, 351018, 0, 'Sapphiron'),
(1015, 0, 351019, 0, 'Kel''Thuzad');

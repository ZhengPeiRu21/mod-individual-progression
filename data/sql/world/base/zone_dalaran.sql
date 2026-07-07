DELETE FROM `creature` WHERE `id` IN (31863, 31864, 31865, 33921, 33922, 33923, 33925, 33926, 33927, 33936, 33937, 33938, 34087, 34092, 34095);
INSERT INTO `creature` (`guid`, `id`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES 
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

-- smart scripts, fix worldconsole errors
DELETE FROM `smart_scripts` WHERE `event_type` = 10 AND `target_type` = 7 AND `entryorguid` IN (28715, 28997, 29491);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(28715, 0, 0, 0, 10, 0, 100, 0, 1, 20, 30000, 120000, 1, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Endora Moorehead - OOC LOS - Say Line'),
(28997, 0, 0, 0, 10, 0, 100, 0, 1, 20, 30000, 120000, 1, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Griselda Hunderland - OOC LOS - Say Line'),
(29491, 0, 0, 0, 10, 0, 100, 0, 1, 20, 30000, 120000, 1, 0, 1, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Karandonna - OOC LOS - Say Line');

-- Archmage Timear
UPDATE `creature_template` SET `ScriptName` = 'npc_archmage_timear' WHERE `entry` = 31439;

DELETE FROM `creature_queststarter` WHERE `id` = 31439;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES 
(31439, 13245),
(31439, 13246),
(31439, 13247),
(31439, 13248),
(31439, 13249),
(31439, 13250),
(31439, 13251),
(31439, 13252),
(31439, 13253),
(31439, 13254),
(31439, 13255),
(31439, 13256);

DELETE FROM `creature_questender` WHERE `id` = 31439;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES 
(31439, 13245),
(31439, 13246),
(31439, 13247),
(31439, 13248),
(31439, 13249),
(31439, 13250),
(31439, 13251),
(31439, 13252),
(31439, 13253),
(31439, 13254),
(31439, 13255),
(31439, 13256);

-- Archmage Lan'dalock: between patch 3.3 - patch 3.4 now handles the daily quests. from 3.4 onwards he gives weekly quests.
DELETE FROM `creature_template` WHERE `entry` = 120735;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, 
`minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `rank`, `dmgschool`, `DamageModifier`, 
`BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, 
`PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, 
`RegenHealth`, `CreatureImmunitiesId`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
--
(120735,0,0,0,0,0,'Archmage Lan\'dalock',NULL,NULL,10061,80,80,2,2007,3,1,1.14286,1,1,20,1,0,4.6,2000,2000,1,1,8,33536,2048,0,0,7,0,0,0,0,0,0,0,0,'',1,1,10,10,1,1,0,0,1,0,2,'',0);

UPDATE `creature_template` SET `ScriptName` = 'npc_archmage_landalock_3_3' WHERE `entry` = 120735;
UPDATE `creature_template` SET `ScriptName` = 'npc_archmage_landalock' WHERE `entry` = 20735;

DELETE FROM `creature` WHERE `guid` = 620553;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, 
`wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(620553, 120735, 571, 0, 0, 1, 1, 1, 5697.56, 576.957, 653.806, 4.24115, 300, 0, 0, 1, 88140, 0, 0, 0, 0, '', 0, 0, NULL);

DELETE FROM `creature_template_locale` WHERE `entry` = 120735;
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES
(120735, 'deDE', 'Erzmagier Lan\'dalock', '', 18019),
(120735, 'esES', 'Archimago Lan\'dalock', '', 18019),
(120735, 'esMX', 'Archimago Lan\'dalock', '', 18019),
(120735, 'frFR', 'Archimage Lan\'dalock', '', 18019),
(120735, 'koKR', '대마법사 랜달록', '', 18019),
(120735, 'ruRU', 'Верховный маг Лан\'далок', '', 18019),
(120735, 'zhCN', '大法师兰达洛克', '', 18019),
(120735, 'zhTW', '大法師朗達拉克', '', 18019);

DELETE FROM `creature_template_model` WHERE `CreatureID` = 120735;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(120735, 0, 19744, 1, 1, 51831);

DELETE FROM `creature_equip_template` WHERE `CreatureID` = 120735;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES 
(120735, 1, 34884, 0, 0, 18019);

DELETE FROM `creature_queststarter` WHERE `id` = 120735;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(120735, 13245),
(120735, 13246),
(120735, 13247),
(120735, 13248),
(120735, 13249),
(120735, 13250),
(120735, 13251),
(120735, 13252),
(120735, 13253),
(120735, 13254),
(120735, 13255),
(120735, 13256),
(120735, 14199);

DELETE FROM `creature_questender` WHERE `id` = 120735;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(120735, 13245),
(120735, 13246),
(120735, 13247),
(120735, 13248),
(120735, 13249),
(120735, 13250),
(120735, 13251),
(120735, 13252),
(120735, 13253),
(120735, 13254),
(120735, 13255),
(120735, 13256),
(120735, 14199);

UPDATE `quest_template` SET `Flags` = 4232 WHERE `ID` IN (13245, 13246, 13247, 13248, 13249, 13250, 13251, 13252, 13253, 13254, 13255, 13256, 14199); -- set daily quest

UPDATE `quest_template` SET
`LogDescription` = 'Archmage Timear in Dalaran wants you to return with the Axe of the Plunderer.$B$BThis quest may only be completed on Heroic difficulty.',
`QuestCompletionLog` = 'Return to Archmage Timear in Dalaran.'
WHERE `ID` = 13245;

UPDATE `quest_template` SET
`LogDescription` = 'Archmage Timear in Dalaran wants you to return with Keristrasza\'s Broken Heart.$B$BThis quest may only be completed on Heroic difficulty.',
`QuestCompletionLog` = 'Return to Archmage Timear in Dalaran.'
WHERE `ID` = 13246;

UPDATE `quest_template` SET
`LogDescription` = 'Archmage Timear in Dalaran wants you to return with a Ley Line Tuner.$B$BThis quest may only be completed on Heroic difficulty.',
`QuestCompletionLog` = 'Return to Archmage Timear in Dalaran.'
WHERE `ID` = 13247;

UPDATE `quest_template` SET
`LogDescription` = 'Archmage Timear in Dalaran wants you to return with the Locket of the Deceased Queen.$B$BThis quest may only be completed on Heroic difficulty.',
`QuestCompletionLog` = 'Return to Archmage Timear in Dalaran.'
WHERE `ID` = 13248;

UPDATE `quest_template` SET
`LogDescription` = 'Archmage Timear in Dalaran wants you to return with the Prophet\'s Enchanted Tiki.$B$BThis quest may only be completed on Heroic difficulty.',
`QuestCompletionLog` = 'Return to Archmage Timear in Dalaran.'
WHERE `ID` = 13249;

UPDATE `quest_template` SET
`LogDescription` = 'Archmage Timear in Dalaran wants you to return with the Mojo Remnant of Akali.$B$BThis quest may only be completed on Heroic difficulty.',
`QuestCompletionLog` = 'Return to Archmage Timear in Dalaran.'
WHERE `ID` = 13250;

UPDATE `quest_template` SET
`LogDescription` = 'Archmage Timear in Dalaran wants you to return with the Artifact from the Nathrezim Homeworld.$B$BThis quest may only be completed on Heroic difficulty.',
`QuestCompletionLog` = 'Return to Archmage Timear in Dalaran.'
WHERE `ID` = 13251;

UPDATE `quest_template` SET
`LogDescription` = 'Archmage Timear in Dalaran wants you to return with the Curse of Flesh Disc.$B$BThis quest may only be completed on Heroic difficulty.',
`QuestCompletionLog` = 'Return to Archmage Timear in Dalaran.'
WHERE `ID` = 13252;

UPDATE `quest_template` SET
`LogDescription` = 'Archmage Timear in Dalaran wants you to return with the Celestial Ruby Ring.$B$BThis quest may only be completed on Heroic difficulty.',
`QuestCompletionLog` = 'Return to Archmage Timear in Dalaran.'
WHERE `ID` = 13253;

UPDATE `quest_template` SET
`LogDescription` = 'Archmage Timear in Dalaran wants you to return with the Idle Crown of Anub\'arak.$B$BThis quest may only be completed on Heroic difficulty.',
`QuestCompletionLog` = 'Return to Archmage Timear in Dalaran.'
WHERE `ID` = 13254;

UPDATE `quest_template` SET
`LogDescription` = 'Archmage Timear in Dalaran wants you to return with the Faceless One\'s Withered Brain.$B$BThis quest may only be completed on Heroic difficulty.',
`QuestCompletionLog` = 'Return to Archmage Timear in Dalaran.'
WHERE `ID` = 13255;

UPDATE `quest_template` SET
`LogDescription` = 'Archmage Timear in Dalaran wants you to return with the Head of Cyanigosa.$B$BThis quest may only be completed on Heroic difficulty.',
`QuestCompletionLog` = 'Return to Archmage Timear in Dalaran.'
WHERE `ID` = 13256;

UPDATE `quest_template` SET
`LogDescription` = 'Archmage Lan\'dalock in Dalaran wants you to return with a Fragment of the Black Knight\'s Soul.$B$BThis quest may only be completed on Heroic difficulty.',
`QuestDescription` = 'My counterpart, Archmage Timear, has asked me to warn you of something dire. Soon, you will be participating in the Trial of the Champions at the Argent Coliseum in Icecrown. You must beware of interference from one known only as the Black Knight.$B$BBring me a fragment of his soul that the Kirin Tor will know he is dealt with. I am told that failing to do so will be your own undoing.',
`QuestCompletionLog` = 'Return to Archmage Lan\'dalock in Dalaran.'
WHERE `ID` = 14199;

-- 00_cleanup, revert changes made to quest: Proof of Demise: The Black Knight, this quest can't be completed until WotLK TotC
UPDATE `quest_offer_reward` SET `RewardText` = '<Archmage Lan\'dalock breathes a sigh of relief.>$b$bTo be honest, I feared the worst had befallen you. It\'s difficult to stand idly by while others, such as yourself, deal with the matters of life and death which confront our world seemingly on a daily basis.$b$bNow what are we going to do with that gigantic ring?' WHERE `ID` = 13253;
UPDATE `quest_offer_reward` SET `RewardText` = 'What horrors you must have faced while traversing the Upper City.$b$b<Lan\'dalock glances down at the tarnished crown clutched in your fist.>$b$bPerhaps we should put that aside for their new king whenever the nerubians decide to coronate one?' WHERE `ID` = 13254;
UPDATE `quest_request_items` SET `CompletionText` = 'Did the Black Knight appear unexpectedly as Timear foresaw?' WHERE `ID` = 14199;
UPDATE `quest_template_addon` SET `ExclusiveGroup` = 24579 WHERE `ID` = 14199;

DELETE FROM `pool_template` WHERE `entry` = 90000;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(90000, 1, 'Heroic Dungeon Dailies');

DELETE FROM `pool_quest` WHERE `entry` = 14199 AND `pool_entry` = 5678; -- 00_cleanup
DELETE FROM `pool_quest` WHERE `pool_entry` = 90000;
INSERT INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES
(13245, 90000, 'Proof of Demise: Ingvar the Plunderer'),
(13246, 90000, 'Proof of Demise: Keristrasza'),
(13247, 90000, 'Proof of Demise: Ley-Guardian Eregos'),
(13248, 90000, 'Proof of Demise: King Ymiron'),
(13249, 90000, 'Proof of Demise: The Prophet Tharon\'ja'),
(13250, 90000, 'Proof of Demise: Gal\'darah'),
(13251, 90000, 'Proof of Demise: Mal\'Ganis'),
(13252, 90000, 'Proof of Demise: Sjonnir The Ironshaper'),
(13253, 90000, 'Proof of Demise: Loken'),
(13254, 90000, 'Proof of Demise: Anub\'arak'),
(13255, 90000, 'Proof of Demise: Herald Volazj'),
(13256, 90000, 'Proof of Demise: Cyanigosa'),
(14199, 90000, 'Proof of Demise: The Black Knight');

DELETE FROM `creature_template_addon` WHERE `entry` = 31618; -- Keristrasza Image
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
(31618, 0, 0, 50331648, 0, 0, 0, ''); -- Hover mode 2

DELETE FROM `creature_template_addon` WHERE `entry` = 31629; -- Cyanigosa Image
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
(31629, 0, 0, 50331648, 0, 0, 0, ''); -- Hover mode 2

UPDATE `quest_template` SET `RewardItem1` = 40752 WHERE id IN (13245, 13246, 13247, 13248, 13249, 13250, 13251, 13252, 13253, 13254, 13255, 13256, 14199); -- Emblem of Heroism

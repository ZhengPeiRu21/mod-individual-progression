
SET @IPPPHASE := 65536;


/*-- REMOVE EVENT 17 --*/
DELETE FROM `game_event_creature` WHERE `eventEntry` = 17;
DELETE FROM `game_event_gameobject` WHERE `eventEntry` = 17;
DELETE FROM `game_event_npcflag` WHERE `eventEntry` = 17;
DELETE FROM `game_event_npc_vendor` WHERE `eventEntry` = 17;
DELETE FROM `game_event` WHERE `eventEntry` = 17;

/* Friendship Bread and Freshly-Squeezed Lemonade */
-- Making these NPCs vendors, they will appear after the Naxx phase started.
-- Before Naxx they will be replaced with copies that do not sell these items.

DELETE FROM `npc_vendor` WHERE `entry` IN (2482, 3044, 4165, 5173, 5698, 15006) AND `item` IN (23160, 23161);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(2482, 0, 23160, 0, 0, 0, 0),  -- Zarena Cromwind
(2482, 0, 23161, 0, 0, 0, 0),
(3044, 0, 23160, 0, 0, 0, 0),  -- Miles Welsh
(3044, 0, 23161, 0, 0, 0, 0),
(4165, 0, 23160, 0, 0, 0, 0),  -- Elissa Dumas
(4165, 0, 23161, 0, 0, 0, 0),
(5173, 0, 23160, 0, 0, 0, 0),  -- Alexander Calder
(5173, 0, 23161, 0, 0, 0, 0),
(5698, 0, 23160, 0, 0, 0, 0),  -- Joanna Whitehall
(5698, 0, 23161, 0, 0, 0, 0),
(15006, 0, 23160, 0, 0, 0, 0), -- Deze Snowbane
(15006, 0, 23161, 0, 0, 0, 0);

UPDATE `creature` SET `npcflag` = 179 WHERE `guid` = 1803;
UPDATE `creature` SET `npcflag` = 179 WHERE `guid` = 26771;
UPDATE `creature` SET `npcflag` = 129 WHERE `guid` = 38112;
UPDATE `creature` SET `npcflag` = 177 WHERE `guid` = 46320;
UPDATE `creature` SET `npcflag` = 1048705 WHERE `guid` = 208240;

UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_naxx40' WHERE `entry` IN (2482, 3044, 4165, 5173, 5698, 15006);

SET @Zarena    := 102482;
SET @Miles     := 103044;
SET @Elissa    := 104165;
SET @Alexander := 105173;
SET @Joanna    := 105698;
SET @Deze      := 115006;

-- Create copies with script npc_ipp_pre_naxx40
DELETE FROM `creature_template` WHERE `entry` IN (@Zarena, @Miles, @Elissa, @Alexander, @Joanna, @Deze);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(@Zarena, 0, 0, 0, 0, 0, 'Zarena Cromwind', 'Superior Weaponsmith', NULL, 0, 43, 43, 0, 120, 4224, 1, 1.14286, 1, 1, 18, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.2, 1, 1, 1, 0, 0, 1, 0, 0, 2, 'npc_ipp_pre_naxx40', 12340),
(@Miles, 0, 0, 0, 0, 0, 'Miles Welsh', 'Priest Trainer', NULL, 4533, 40, 40, 0, 68, 51, 1, 1.14286, 1, 1, 18, 1, 0, 0, 1.1, 2000, 2000, 1, 1, 1, 33280, 2048, 0, 0, 0, 0, 5, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.15, 1, 1, 1, 0, 0, 1, 0, 0, 2, 'npc_ipp_pre_naxx40', 12340),
(@Elissa, 0, 0, 0, 0, 0, 'Elissa Dumas', 'Portal Trainer', NULL, 4821, 35, 35, 0, 80, 49, 1, 1.14286, 1, 1, 18, 1, 0, 0, 1.45, 2000, 2000, 1, 1, 8, 512, 2048, 0, 0, 0, 0, 8, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.1, 1, 1.6, 1, 0, 0, 1, 0, 0, 2, 'npc_ipp_pre_naxx40', 12340),
(@Alexander, 0, 0, 0, 0, 0, 'Alexander Calder', 'Warlock Trainer', NULL, 4566, 60, 60, 0, 55, 51, 1, 1.14286, 1, 1, 18, 1, 0, 0, 1.05, 2000, 2000, 1, 1, 1, 512, 2048, 0, 0, 0, 0, 9, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.35, 1, 2.4, 1, 0, 0, 1, 0, 0, 2, 'npc_ipp_pre_naxx40', 12340),
(@Joanna, 0, 0, 0, 0, 0, 'Joanna Whitehall', NULL, NULL, 8730, 40, 40, 0, 68, 1, 1, 1.14286, 1, 1, 18, 1, 0, 0, 1.1, 2000, 2000, 1, 1, 1, 37376, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.15, 1, 1, 1, 0, 0, 1, 0, 0, 2, 'npc_ipp_pre_naxx40', 12340),
(@Deze, 0, 0, 0, 0, 0, 'Deze Snowbane', 'Arathi Basin Battlemaster', NULL, 6470, 61, 61, 0, 412, 1048577, 1, 1.14286, 1, 1, 20, 1, 1, 0, 5.1, 2000, 2000, 1, 1, 1, 832, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 50, 1, 1.15, 1, 0, 0, 1, 0, 0, 2, 'npc_ipp_pre_naxx40', 12340);

DELETE FROM `creature_template_addon` WHERE `entry` IN (@Elissa, @Alexander);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
(@Elissa, 0, 0, 0, 1, 0, 0, NULL),
(@Alexander, 0, 0, 0, 1, 0, 0, NULL);

DELETE FROM `creature_template_locale` WHERE `entry` IN (@Zarena, @Miles, @Elissa, @Alexander, @Joanna, @Deze);
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES
(@Zarena, 'deDE', 'Zarena Stahlwind', 'šberragende Waffenschmiedin', 18019),
(@Zarena, 'esES', 'Zarena Cromvento', 'Forjadora de armas superior', 18019),
(@Zarena, 'esMX', 'Zarena Cromvento', 'Forjadora de armas superior', 18019),
(@Zarena, 'frFR', 'Zarena Cromwind', 'Excellente fabricante d\'armes', 18019),
(@Zarena, 'koKR', '자레나 크롬윈드', '고급 무기제작자', 18019),
(@Zarena, 'ruRU', 'Зарена Кромвинд', 'Опытная оружейница', 18019),
(@Zarena, 'zhCN', '萨瑞娜·克罗姆温德', '高级铸剑师', 18019),
(@Zarena, 'zhTW', '薩瑞娜·克羅姆溫德', '高級武器鍛造師', 18019),
(@Miles, 'deDE', 'Miles Welsch', 'Priesterlehrer', 18019),
(@Miles, 'esES', 'Miles Welsh', 'Instructor de sacerdotes', 18019),
(@Miles, 'esMX', 'Miles Welsh', 'Instructor de sacerdotes', 18019),
(@Miles, 'frFR', 'Miles Welsh', 'MaŒtre des prˆtres', 18019),
(@Miles, 'koKR', '마일스 웰시', '상급 사제', 18019),
(@Miles, 'ruRU', 'Майлз Уэльш', 'Наставник жрецов', 18019),
(@Miles, 'zhCN', '麦尔斯·威尔什', '牧师训练师', 18019),
(@Miles, 'zhTW', '麥爾斯·威爾許', '牧師訓練師', 18019),
(@Elissa, 'deDE', 'Elissa Dumas', 'Portallehrerin', 18019),
(@Elissa, 'esES', 'Elissa Dumas', 'Instructora de portal', 18019),
(@Elissa, 'esMX', 'Elissa Dumas', 'Instructora de portal', 18019),
(@Elissa, 'frFR', 'Elissa Dumas', 'MaŒtre des portails', 18019),
(@Elissa, 'koKR', '엘리사 뒤마', '순간이동 전문 마법사', 18019),
(@Elissa, 'ruRU', 'Элисса Дюма', 'Изучение порталов', 18019),
(@Elissa, 'zhCN', '埃莉萨·杜马斯', '传送门训练师', 18019),
(@Elissa, 'zhTW', '埃麗莎·仲馬', '傳送門訓練師', 18019),
(@Alexander, 'deDE', 'Alexander Calder', 'Hexenmeisterlehrer', 18019),
(@Alexander, 'esES', 'Alexander Calder', 'Instructor de brujos', 18019),
(@Alexander, 'esMX', 'Alexander Calder', 'Instructor de brujos', 18019),
(@Alexander, 'frFR', 'Alexander Calder', 'MaŒtre des d‚monistes', 18019),
(@Alexander, 'koKR', '알렉산더 칼더', '상급 흑마법사', 18019),
(@Alexander, 'ruRU', 'Александр Кальдер', 'Наставник чернокнижников', 18019),
(@Alexander, 'zhCN', '亚历山大·考德尔', '术士训练师', 18019),
(@Alexander, 'zhTW', '亞歷山大·考德爾', '術士訓練師', 18019),
(@Joanna, 'deDE', 'Joanna Weiáhall', '', 18019),
(@Joanna, 'esES', 'Joanna Whitehall', '', 18019),
(@Joanna, 'esMX', 'Joanna Whitehall', '', 18019),
(@Joanna, 'frFR', 'Joanna Blancmanoir', '', 18019),
(@Joanna, 'koKR', '조안나 화이트홀', '', 18019),
(@Joanna, 'ruRU', 'Джоанна Вайтхолл', '', 18019),
(@Joanna, 'zhCN', '乔安娜·怀特豪尔', '', 18019),
(@Joanna, 'zhTW', '瓊安娜·懷特豪爾', '', 18019),
(@Deze, 'deDE', 'Deze Schneefluch', 'Kampfmeisterin des Arathibeckens', 18019),
(@Deze, 'esES', 'Deze Delirion¡veo', 'Maestra de batalla de la Cuenca de Arathi', 18019),
(@Deze, 'esMX', 'Deze Delirion¡veo', 'Maestra de batalla de la Cuenca de Arathi', 18019),
(@Deze, 'frFR', 'Deze Plaie-des-neiges', 'MaŒtre de guerre du bassin Arathi', 18019),
(@Deze, 'koKR', '데제 스노우베인', '아라시 분지 전투모병관', 18019),
(@Deze, 'ruRU', 'Дези Холодная', 'Военачальник Низины Арати', 18019),
(@Deze, 'zhCN', '迪兹·斯诺班', '阿拉希盆地军官', 18019),
(@Deze, 'zhTW', '迪茲·斯諾班', '阿拉希盆地戰場軍官', 18019);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (@Zarena, @Miles, @Elissa, @Alexander, @Joanna, @Deze);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES 
(@Zarena, 0, 4490, 1, 1, 12340),
(@Miles, 0, 2139, 1, 1, 12340),
(@Elissa, 0, 7669, 1, 1, 12340),
(@Alexander, 0, 3122, 1, 1, 12340),
(@Joanna, 0, 4052, 1, 1, 12340),
(@Deze, 0, 15112, 1, 1, 12340);

DELETE FROM `creature` WHERE `id1` IN (@Zarena, @Miles, @Elissa, @Alexander, @Joanna, @Deze);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES
(602482, @Zarena, 0, 0, 0, 0, 0, 1, 1, 0, -14379.1, 412.672, 6.8203, 5.70723, 300, 0, 0, 2059, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(603044, @Miles, 0, 0, 1, 0, 0, 1, 1, 1, -956.24, 252.418, 97.8755, 4.2237, 250, 0, 0, 1753, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(604165, @Elissa, 0, 0, 1, 0, 0, 1, 1, 1, 9658.69, 2508.7, 1331.7, 2.25148, 300, 0, 0, 992, 2680, 0, 0, 0, 0, '', 0, 0, NULL),
(605173, @Alexander, 0, 0, 0, 0, 0, 1, 1, 1, -4608.55, -1109.55, 511.691, 1.69297, 490, 0, 0, 4120, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(605698, @Joanna, 0, 0, 0, 0, 0, 1, 1, 1, 1653.56, 365.232, -60.6772, 0.977384, 300, 0, 0, 1753, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(615006, @Deze, 0, 0, 1, 0, 0, 1, 1, 0, 2002.26, -4796.74, 56.8471, 3.00197, 600, 0, 0, 1, 0, 0, 0, 0, 0, '', NULL, 0, NULL);

DELETE FROM `creature_equip_template` WHERE `CreatureID` IN (@Miles, @Elissa, @Alexander, @Joanna, @Deze);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES
(@Miles, 1, 12786, 0, 0, 18019),
(@Elissa, 1, 2177, 0, 0, 18019),
(@Alexander, 1, 2559, 0, 0, 18019),
(@Joanna, 1, 2809, 0, 0, 18019),
(@Deze, 1, 10616, 19053, 0, 18019);

DELETE FROM `npc_vendor` WHERE `entry` IN (@Zarena);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(@Zarena, 0, 2520, 0, 0, 0, 0),
(@Zarena, 0, 2521, 0, 0, 0, 0),
(@Zarena, 0, 2522, 0, 0, 0, 0),
(@Zarena, 0, 2523, 0, 0, 0, 0),
(@Zarena, 0, 2524, 0, 0, 0, 0),
(@Zarena, 0, 2525, 0, 0, 0, 0),
(@Zarena, 0, 2526, 0, 0, 0, 0),
(@Zarena, 0, 2527, 0, 0, 0, 0),
(@Zarena, 0, 12163, 1, 7200, 0, 0),
(@Zarena, 0, 12251, 1, 3600, 0, 0),
(@Zarena, 0, 12252, 1, 43200, 0, 0);

DELETE FROM `battlemaster_entry` WHERE `entry` = @Deze;
INSERT INTO `battlemaster_entry` (`entry`, `bg_template`) VALUES (@Deze, 3);


/*-- Smart AI --*/

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (14697, 16136, 16141, 16230, 16298, 16299, 16379, 16380, 16422, 16423, 16437, 16438);

DELETE FROM `smart_scripts` WHERE `entryorguid` IN (16136, 16141, 14697, 16230, 16298, 16299, 16379, 16380, 16422, 16423, 16437, 16438);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, 
`event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES

(16230, 0, 0, 0, 11, 0, 100, 512, 0, 0, 0, 0, 0, 0, 2, 190, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Cultist Engineer - On Respawn - Set Faction 190'),
(16230, 0, 1, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 47850, 3, 6, 0, 0, 0, 9, 16136, 0, 15, 1, 0, 0, 0, 0, 'Cultist Engineer - On Death - Cast Scourge Beam'), -- doesn't work
(16230, 0, 2, 3, 62, 0, 100, 0, 66000, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Cultist Engineer - On Gossip Option 0 Selected - Say Line 1'),
(16230, 0, 3, 4, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 57, 22484, 8, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Cultist Engineer - On Gossip Option 0 Selected - Remove 8 Necrotic Runes'),
(16230, 0, 4, 5, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 36, 16143, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Cultist Engineer - On Gossip Option 0 Selected - Summon Shadow of Doom'),
(16230, 0, 5, 6, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 142, 100, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Cultist Engineer - On Gossip Option 0 Selected - Set Health 100%'),
(16230, 0, 6, 7, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 2, 14, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Cultist Engineer - On Gossip Option 0 Selected - Set Faction 14'),
(16230, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 49, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Cultist Engineer - On Gossip Option 0 Selected - Start Attacking'),
(16230, 0, 8, 0, 0, 0, 100, 0, 4000, 7000, 9000, 12000, 0, 0, 11, 16568, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadow of Doom - In Combat - Cast Mind Flay'),
(16230, 0, 9, 0, 0, 0, 100, 0, 2000, 5000, 12000, 15000, 0, 0, 11, 12542, 1, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'Shadow of Doom - In Combat - Cast Fear'),
--
(14697, 0, 0, 0, 0, 0, 100, 0, 2000, 4000, 12000, 15000, 0, 0, 11, 16790, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Lumbering Horror - In Combat - Cast Knockdown'),
(14697, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Lumbering Horror - In Combat - Cast Scourge Strike'),
(14697, 0, 2, 0, 0, 0, 100, 0, 3200, 11900, 11500, 16100, 0, 0, 11, 5568, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Lumbering Horror - In Combat - Cast Trample'),
(16379, 0, 0, 0, 0, 0, 100, 0, 2000, 5000, 12000, 15000, 0, 0, 11, 16243, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Spirit of the Damned - In Combat - Cast Ribbon of Souls'),
(16379, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Spirit of the Damned - In Combat - Cast Scourge Strike'),
(16380, 0, 0, 0, 11, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 32900, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bone Witch - On Respawn - - Cast Bone Shards'),
(16380, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Bone Witch - In Combat - Cast Scourge Strike'),
--
(16422, 0, 0, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Skeletal Soldier - In Combat - Cast Scourge Strike'),
(16423, 0, 0, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Apparition - In Combat - Cast Scourge Strike'),
(16437, 0, 0, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Spirit - In Combat - Cast Scourge Strike'), 
(16438, 0, 0, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Skeletal Trooper - In Combat - Cast Scourge Strike'),
--
(16141, 0, 0, 0, 0, 0, 100, 0, 6000, 9000, 16000, 24000, 0, 0, 11, 7367, 33, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Ghoul Berserker - In Combat - Cast Infected Bite'),
(16141, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Ghoul Berserker - In Combat - Cast Scourge Strike'),
(16298, 0, 0, 0, 0, 0, 100, 0, 2000, 10000, 10000, 20000, 0, 0, 11, 13444, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Soldier - In Combat - Cast Sunder Armor'),
(16298, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Spectral Soldier - In Combat - Cast Scourge Strike'),
(16299, 0, 0, 0, 11, 0, 100, 1, 0, 0, 0, 0, 0, 0, 11, 32900, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Skeletal Shocktrooper - On Respawn - Cast Bone Shards'),
(16299, 0, 1, 0, 0, 0, 100, 0, 5000, 7000, 10000, 12000, 0, 0, 11, 55090, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Skeletal Shocktrooper - In Combat - Cast Scourge Strike'),
--
(16136, 0, 0, 0, 12, 0, 100, 0, 0, 0, 0, 0, 0, 40, 11, 28032, 0, 39, 0, 0, 0, 9, 16141, 0, 40, 2, 0, 0, 0, 0, 'Necrotic Shard - Ghoul Berserker - Cast Zap Crystal'), -- doesn't work yet
(16136, 0, 1, 0, 12, 0, 100, 0, 0, 0, 0, 0, 0, 40, 11, 28032, 0, 39, 0, 0, 0, 9, 16298, 0, 40, 2, 0, 0, 0, 0, 'Necrotic Shard - Spectral Soldier - Cast Zap Crystal'),
(16136, 0, 2, 0, 12, 0, 100, 0, 0, 0, 0, 0, 0, 40, 11, 28032, 0, 39, 0, 0, 0, 9, 16299, 0, 40, 2, 0, 0, 0, 0, 'Necrotic Shard - Skeletal Shocktrooper - Cast Zap Crystal'); 


/*-- Object and NPC Updates --*/

UPDATE `creature_template` SET `name` = 'Mouth of Kel\'Thuzad' WHERE `entry` = 16995;

-- Necrotic Shards 256+4
UPDATE `creature_template` SET `unit_flags` = 260 WHERE `entry` = 16136;

-- Cultist Engineer
UPDATE `creature_template` SET `gossip_menu_id` = 66000, `npcflag` = 1, `unit_flags` = 512, `flags_extra` = 4194304 WHERE `entry` = 16230;

-- Lumbering Horror, fix movement
UPDATE `creature_template` SET `unit_flags` = 0, `HealthModifier` = 5.4 WHERE `entry` = 14697;

-- Spirit of the Damned, Bone Witch
UPDATE `creature_template` SET `HealthModifier` = 5 WHERE `entry` IN (16379, 16380);

-- Update Health
UPDATE `creature_template` SET `HealthModifier` = 2.7 WHERE `entry` IN (16141, 16298, 16299);

-- Necropolis Not selectable
UPDATE `gameobject_template_addon` SET `flags` = 16 WHERE `entry` IN (181154, 181215, 181223, 181373, 181374);

-- Shadow of Doom, fix Necrotic runes drop
UPDATE `creature_loot_template` SET `MinCount` = 30, `MaxCount` = 30 WHERE `Item` = 22484 AND `entry` = 16143;


/*-- Quests --*/

-- Lieutenants, Investigate the Scourge
UPDATE `quest_template` SET `AllowableRaces` = 1101 WHERE `ID` IN (9260, 9261, 9262); -- Stormwind, Ironforge, Darnassus, Exodar(12817)
UPDATE `quest_template` SET `AllowableRaces` = 690 WHERE `ID` IN (9263, 9264, 9265);  -- Orgrimmar, Thunder Bluff, Undercity, Silvermoon(12816)

UPDATE `creature_template` SET `npcflag` = 2 WHERE `entry` IN (16478, 16484, 16490, 16493, 16494, 16495);
UPDATE `creature_template` SET `npcflag` = 0 WHERE `entry` IN (29441, 29442); -- there are no scourge outside Exodar and Silvermoon.

DELETE FROM `creature_queststarter` WHERE `quest` IN (9260, 9261, 9262, 9263, 9264, 9265); -- 12816, 12817
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(16478, 9260),  -- Orrin
(16484, 9261),  -- Nevell
(16490, 9264),  -- Lisande
(16493, 9263),  -- Dagel
(16494, 9265),  -- Rukag
(16495, 9262);  -- Beitha
-- (29441, 12816), -- Julek
-- (29442, 12817); -- Kregor

DELETE FROM `creature_questender` WHERE `quest` IN (9260, 9261, 9262, 9263, 9264, 9265); -- 12816, 12817
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(16478, 9260),
(16484, 9261),
(16490, 9264),
(16493, 9263),
(16494, 9265),
(16495, 9262);
-- (29441, 12816),
-- (29442, 12817); 

-- Necrotic Crystal item quests
DELETE FROM `creature_questender` WHERE `quest` IN (9292, 9310);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(16478, 9292),
-- (16484, ),
-- (16490, ),
-- (16493, ),
(16494, 9310);
-- (16495, ),
-- (29441, ),
-- (29442, ); 

-- Argent Scout and Recruiter, Light's Hope Chapel
UPDATE `creature_template` SET `npcflag` = 2 WHERE `entry` IN (16241, 16255);

DELETE FROM `creature_queststarter` WHERE `quest` = 9154;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(16241, 9154),
(16255, 9154);

DELETE FROM `creature_questender` WHERE `quest` = 9154;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(16281, 9154);

-- Argent Quartermaster and Outfitter
UPDATE `creature_template` SET `npcflag` = 2 WHERE `entry` IN (16786, 16787);
DELETE FROM `npc_vendor` WHERE `entry` IN (16786, 16787); -- they aren't vendors in vanilla

DELETE FROM `creature_queststarter` WHERE `quest` IN
(9094, 9317, 9318, 9321, 9337, 9341,  -- Alliance
 9333, 9334, 9335, 9336, 9320, 9343); -- Horde
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(16786, 9094), (16786, 9317), (16786, 9318), (16786, 9321), (16786, 9337), (16786, 9341),
(16787, 9333), (16787, 9334), (16787, 9335), (16787, 9336), (16787, 9320), (16787, 9343);

DELETE FROM `creature_questender` WHERE `quest` IN 
(9094, 9317, 9318, 9321, 9337, 9341,  -- Alliance
 9320, 9333, 9334, 9335, 9336, 9343); -- Horde
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(16786, 9094), (16786, 9317), (16786, 9318), (16786, 9321), (16786, 9337), (16786, 9341),
(16787, 9333), (16787, 9334), (16787, 9335), (16787, 9336), (16787, 9320), (16787, 9343);

UPDATE `quest_template` SET `AllowableRaces` = 1101 WHERE `ID` IN (9094, 9317, 9318, 9321, 9337, 9341);
UPDATE `quest_template` SET `AllowableRaces` = 690  WHERE `ID` IN (9333, 9334, 9335, 9336, 9320, 9343);


/**-- Text Updates --**/

UPDATE `quest_request_items` SET `CompletionText` = 'Have you investigated the invasion yet? There\'s no time for dawdling!' WHERE `ID` IN 
(9260, 9261, 9262, 9263, 9264, 9265);

UPDATE `quest_request_items` SET `CompletionText` = 'You\'ve come to join our order, have you not?' WHERE `ID` = 9154;

-- Alliance Quartermaster and Horde Outfitter Quests
UPDATE `quest_template` SET `QuestDescription` = 'If you bring me thirty necrotic runes, I will give you your choice of hand protection in return. These should prove valuable in our fight against the undead Scourge.' WHERE `ID` IN (9094, 9333);
UPDATE `quest_template` SET `QuestDescription` = 'If you bring me eight necrotic runes from the Scourge invaders, I can give you a consecrated sharpening stone. It should be of great help in your battle against the minions of the Lich King.' WHERE `ID` IN (9317, 9335);
UPDATE `quest_template` SET `QuestDescription` = 'In exchange for the necrotic runes of the Scourge invaders, the Argent Dawn will give you one vial of blessed wizard oil.' WHERE `ID` IN (9318, 9334);
UPDATE `quest_template` SET `QuestDescription` = 'In addition to our other supplies, we also have a number of major healing potions you may find useful. I will give you one in exchange for fifteen necrotic runes.' WHERE `ID` IN (9321, 9336);
UPDATE `quest_template` SET `QuestDescription` = 'In addition to our other supplies, we also have a number of major mana potions you may find useful. I will give you one in exchange for fifteen necrotic runes.' WHERE `ID` IN (9320, 9337);
UPDATE `quest_template` SET `QuestDescription` = 'You have aided our cause greatly, $N. If you wish, I can make available the tabard of the Argent Dawn. We are proud to have you among our allies.' WHERE `ID` IN (9341, 9343);

DELETE FROM `quest_offer_reward` WHERE `ID` IN
(9094, 9317, 9318, 9321, 9337, 9341,  -- Alliance
 9320, 9333, 9334, 9335, 9336, 9343); -- Horde
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES 
(9094, 0, 0, 0, 0, 0, 0, 0, 0, 'You\'ve done well, $N. Take your pick of hand protection in thanks for your efforts.', NULL),
(9317, 0, 0, 0, 0, 0, 0, 0, 0, 'Thank you, $N. Here are your consecrated sharpening stones. Use them prudently.', NULL),
(9318, 0, 0, 0, 0, 0, 0, 0, 0, 'I hope that you will find these items useful in future battles.', NULL),
(9320, 0, 0, 0, 0, 0, 0, 0, 0, 'Here you are, $N. Be careful out there. Our numbers are not so large we can afford many battlefield casualties.', NULL),
(9321, 0, 0, 0, 0, 0, 0, 0, 0, 'Here you are, $N. Be careful out there. Our numbers are not so large we can afford many battlefield casualties.', NULL),
(9333, 0, 0, 0, 0, 0, 0, 0, 0, 'You\'ve done well, $N. Take your pick of hand protection in thanks for your efforts.', NULL),
(9334, 0, 0, 0, 0, 0, 0, 0, 0, 'I hope that you will find these items useful in future battles.', NULL),
(9335, 0, 0, 0, 0, 0, 0, 0, 0, 'Thank you, $N. Here are your consecrated sharpening stones. Use them prudently.', NULL),
(9336, 0, 0, 0, 0, 0, 0, 0, 0, 'Here you are, $N. Be careful out there. Our numbers are not so large we can afford many battlefield casualties.', NULL),
(9337, 0, 0, 0, 0, 0, 0, 0, 0, 'Here you are, $N. Be careful out there. Our numbers are not so large we can afford many battlefield casualties.', NULL),
(9341, 0, 0, 0, 0, 0, 0, 0, 0, 'Take this tabard and wear it proudly. Perhaps your deeds might inspire others to take up arms in support of our fight against the Scourge.', NULL),
(9343, 0, 0, 0, 0, 0, 0, 0, 0, 'Take this tabard and wear it proudly. Perhaps your deeds might inspire others to take up arms in support of our fight against the Scourge.', NULL);


DELETE FROM `npc_text` WHERE `ID` = 66000;
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`) VALUES 
(66000, 'The cultist is in a deep trance...', 'The cultist is in a deep trance...');

DELETE FROM `gossip_menu` WHERE `MenuID` = 66000;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES (66000, 66000);

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 66000;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, 
`ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(66000, 0, 0, 'Use 8 necrotic runes and disrupt his ritual.', 0, 1, 1, 0, 0, 0, 0, NULL, 0, 0); 

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 66000;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 66000, 0, 0, 0, 2, 0, 22484, 8, 0, 0, 0, 0, '', 'Cultist Engineer - Show gossip only if the player has 8 Necrotic Runes');

DELETE FROM `creature_text` WHERE `CreatureID` = 16230 AND `GroupID` = 1;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(16230, 1, 0, 'These heroics mean nothing, $c.  Your future is sealed and your soul is doomed to servitude!', 12, 0, 100, 0, 0, 0, 12421, 0, 'Cultist Engineer');

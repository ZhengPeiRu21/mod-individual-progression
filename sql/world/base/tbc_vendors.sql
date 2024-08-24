/* Nakodu shouldn't sell certain recipes until progression tier 10 */
/* to solve this a copy of him is created that only sells recipes that were available before progression tier 10 */
/* the original Nakodu will replace his copy at progression tier 10 */
SET @Nakodu := 121655;

/* Add copy of Nakodu to creature_template with script npc_ipp_tbc_pre_t4 */
DELETE FROM `creature_template` WHERE `entry` = @Nakodu;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) 
VALUES (@Nakodu, 0, 0, 0, 0, 0, 'Nakodu', 'Lower City Quartermaster', NULL, 0, 70, 70, 1, 1818, 128, 1, 1, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 33024, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, 'npc_ipp_tbc_pre_t4', 12340);

/* Add copy of Nakodu to creature_template_addon */
DELETE FROM `creature_template_addon` WHERE `entry` = @Nakodu;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES (@Nakodu, 0, 0, 0, 1, 0, 0, NULL);

/* Add copy of Nakodu to creature_template_locale */
DELETE FROM `creature_template_locale` WHERE `entry` = @Nakodu;
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES 
(@Nakodu, 'deDE', 'Nakodu', 'Rüstmeister des Unteren Viertels', 18019),
(@Nakodu, 'esES', 'Nakodu', 'Intendente del Bajo Arrabal', 18019),
(@Nakodu, 'esMX', 'Nakodu', 'Intendente del Bajo Arrabal', 18019),
(@Nakodu, 'frFR', 'Nakodu', 'Intendant de la Ville basse', 18019),
(@Nakodu, 'koKR', '나코두', '고난의 거리 병참장교', 18019),
(@Nakodu, 'ruRU', 'Накоду', 'Начальник снабжения Нижнего Города', 18019),
(@Nakodu, 'zhCN', '纳克杜', '贫民窟军需官', 18019),
(@Nakodu, 'zhTW', '納克杜', '陰鬱城軍需官', 18019);

/* Add copy of Nakodu to creature_template_model */
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Nakodu;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (@Nakodu, 0, 20388, 1, 1, 12340);

/* Add copy of Nakodu to creature */
DELETE FROM `creature` WHERE `id1` = @Nakodu;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) 
VALUES (621655, @Nakodu, 0, 0, 530, 0, 0, 1, 1, 0, -2073.21, 5325.57, -37.2402, 3.75246, 300, 0, 0, 6986, 0, 0, 0, 0, 0, '', 0, 0, NULL);

/* Add correct items to copy of Nakodu - removed Pattern: Quiver of a Thousand Feathers (34200) */
DELETE FROM `npc_vendor` WHERE `entry` = @Nakodu;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES 
(@Nakodu, 0, 22538, 0, 0, 0, 0), (@Nakodu, 0, 22910, 0, 0, 0, 0), (@Nakodu, 0, 23138, 0, 0, 0, 0), (@Nakodu, 0, 24175, 0, 0, 0, 0), 
(@Nakodu, 0, 24179, 0, 0, 0, 0), (@Nakodu, 0, 29199, 0, 0, 0, 0), (@Nakodu, 0, 30633, 0, 0, 0, 0), (@Nakodu, 0, 30830, 0, 0, 0, 0),
(@Nakodu, 0, 30832, 0, 0, 0, 0), (@Nakodu, 0, 30833, 0, 0, 0, 0), (@Nakodu, 0, 30834, 0, 0, 0, 0), (@Nakodu, 0, 30835, 0, 0, 0, 0),
(@Nakodu, 0, 30836, 0, 0, 0, 0), (@Nakodu, 0, 30841, 0, 0, 0, 0), (@Nakodu, 0, 30846, 0, 0, 0, 0), (@Nakodu, 0, 31357, 0, 0, 0, 0),
(@Nakodu, 0, 31778, 0, 0, 0, 0), (@Nakodu, 0, 33148, 0, 0, 0, 0), (@Nakodu, 0, 33157, 0, 0, 0, 0), (@Nakodu, 0, 35331, 0, 0, 0, 0),
(@Nakodu, 0, 35335, 0, 0, 0, 0), (@Nakodu, 0, 35340, 0, 0, 0, 0), (@Nakodu, 0, 35344, 0, 0, 0, 0), (@Nakodu, 0, 35357, 0, 0, 0, 0),
(@Nakodu, 0, 35361, 0, 0, 0, 0), (@Nakodu, 0, 35370, 0, 0, 0, 0), (@Nakodu, 0, 35373, 0, 0, 0, 0), (@Nakodu, 0, 35378, 0, 0, 0, 0),
(@Nakodu, 0, 35382, 0, 0, 0, 0), (@Nakodu, 0, 35389, 0, 0, 0, 0), (@Nakodu, 0, 35391, 0, 0, 0, 0), (@Nakodu, 0, 35405, 0, 0, 0, 0),
(@Nakodu, 0, 35411, 0, 0, 0, 0), (@Nakodu, 0, 35412, 0, 0, 0, 0);


/* Quartermaster Urgronn shouldn't sell certain recipes until progression tier 10 */
/* to solve this a copy of him is created that only sells recipes that were available before progression tier 10 */
/* the original Urgronn will replace his copy at progression tier 10 */
SET @Urgronn := 117585;

/* Add copy of Urgronn to creature_template with script npc_ipp_tbc_pre_t4 */
DELETE FROM `creature_template` WHERE `entry` = @Urgronn;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) 
VALUES (@Urgronn, 0, 0, 0, 0, 0, 'Quartermaster Urgronn', 'Thrallmar Quartermaster', NULL, 7450, 62, 62, 1, 1669, 129, 1, 1.14286, 1, 1, 20, 1, 1, 0, 1, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 134217728, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 3, 1, 1, 1, 0, 0, 1, 0, 0, 0, 'npc_ipp_tbc_pre_t4', 12340);

/* Add copy of Urgronn to creature_template_addon */
DELETE FROM `creature_template_addon` WHERE `entry` = @Urgronn;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES (@Urgronn, 0, 0, 0, 1, 0, 0, NULL);

/* Add copy of Urgronn to creature_template_locale */
DELETE FROM `creature_template_locale` WHERE `entry` = @Urgronn;
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES
(@Urgronn, 'deDE', 'Rüstmeister Urgronn', 'Rüstmeister von Thrallmar', 18019),
(@Urgronn, 'esES', 'Intendente Urgronn', 'Intendente de Thrallmar', 18019),
(@Urgronn, 'esMX', 'Intendente Urgronn', 'Intendente de Thrallmar', 18019),
(@Urgronn, 'frFR', 'Intendant Urgronn', 'Intendant de Thrallmar', 18019),
(@Urgronn, 'koKR', '병참장교 울그론', '스랄마 병참장교', 18019),
(@Urgronn, 'ruRU', 'Интендант Ургронн', 'Начальник снабжения Траллмара', 18019),
(@Urgronn, 'zhCN', '军需官乌尔格隆', '萨尔玛军需官', 18019),
(@Urgronn, 'zhTW', '軍需官優爾古隆', '索爾瑪軍需官', 18019);

/* Add copy of Urgronn to creature_template_model */
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Urgronn;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (@Urgronn, 0, 17111, 1, 1, 12340);

/* Add copy of Urgronn to creature */
DELETE FROM `creature` WHERE `id1` = @Urgronn;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) 
VALUES (617585, @Urgronn, 0, 0, 530, 0, 0, 1, 1, 0, 179.435, 2704.33, 89.1009, 3.38594, 300, 0, 0, 16023, 0, 0, 0, 0, 0, '', 0, 0, NULL);

/* Add correct items to copy of Urgronn - removed Pattern: Netherscale Ammo Pouch (34201) */
DELETE FROM `npc_vendor` WHERE `entry` = @Urgronn;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES 
(@Urgronn, 0, 24000, 0, 0, 0, 0), (@Urgronn, 0, 24001, 0, 0, 0, 0), (@Urgronn, 0, 24002, 0, 0, 0, 0), (@Urgronn, 0, 24003, 0, 0, 0, 0),
(@Urgronn, 0, 24004, 0, 0, 0, 0), (@Urgronn, 0, 24006, 0, 0, 0, 0), (@Urgronn, 0, 24009, 0, 0, 0, 0), (@Urgronn, 0, 25738, 0, 0, 0, 0),
(@Urgronn, 0, 25739, 0, 0, 0, 0), (@Urgronn, 0, 25740, 0, 0, 0, 0), (@Urgronn, 0, 25823, 0, 0, 0, 0), (@Urgronn, 0, 25824, 0, 0, 0, 0),
(@Urgronn, 0, 29152, 0, 0, 0, 0), (@Urgronn, 0, 29155, 0, 0, 0, 0), (@Urgronn, 0, 29165, 0, 0, 0, 0), (@Urgronn, 0, 29167, 0, 0, 0, 0),
(@Urgronn, 0, 29168, 0, 0, 0, 0), (@Urgronn, 0, 29190, 0, 0, 0, 0), (@Urgronn, 0, 29197, 0, 0, 0, 0), (@Urgronn, 0, 29232, 0, 0, 0, 0),
(@Urgronn, 0, 30637, 0, 0, 0, 0), (@Urgronn, 0, 31358, 0, 0, 0, 0), (@Urgronn, 0, 31359, 0, 0, 0, 0), (@Urgronn, 0, 31361, 0, 0, 0, 0),
(@Urgronn, 0, 31362, 0, 0, 0, 0), (@Urgronn, 0, 32882, 0, 0, 0, 0), (@Urgronn, 0, 33151, 0, 0, 0, 0), (@Urgronn, 0, 35332, 0, 0, 0, 0),
(@Urgronn, 0, 35337, 0, 0, 0, 0), (@Urgronn, 0, 35339, 0, 0, 0, 0), (@Urgronn, 0, 35343, 0, 0, 0, 0), (@Urgronn, 0, 35360, 0, 0, 0, 0),
(@Urgronn, 0, 35364, 0, 0, 0, 0), (@Urgronn, 0, 35366, 0, 0, 0, 0), (@Urgronn, 0, 35371, 0, 0, 0, 0), (@Urgronn, 0, 35377, 0, 0, 0, 0),
(@Urgronn, 0, 35383, 0, 0, 0, 0), (@Urgronn, 0, 35386, 0, 0, 0, 0), (@Urgronn, 0, 35392, 0, 0, 0, 0), (@Urgronn, 0, 35406, 0, 0, 0, 0),
(@Urgronn, 0, 35409, 0, 0, 0, 0), (@Urgronn, 0, 35413, 0, 0, 0, 0);


/* Logistics Officer Ulrike shouldn't sell certain recipes until progression tier 10 */
/* to solve this a copy of her is created that only sells recipes that were available before progression tier 10 */
/* the original Ulrike will replace her copy at progression tier 10 */
SET @Ulrike := 117657;

/* Add copy of Ulrike to creature_template with script npc_ipp_tbc_pre_t4 */
DELETE FROM `creature_template` WHERE `entry` = @Ulrike;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) 
VALUES (@Ulrike, 0, 0, 0, 0, 0, 'Logistics Officer Ulrike', 'Honor Hold Quartermaster', NULL, 7448, 62, 62, 0, 1667, 129, 1, 1.14286, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 32768, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 3, 1, 1, 1, 0, 0, 1, 0, 0, 0, 'npc_ipp_tbc_pre_t4', 12340);

/* Add copy of Ulrike to creature_template_addon */
DELETE FROM `creature_template_addon` WHERE `entry` = @Ulrike;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES (@Ulrike, 0, 0, 0, 1, 0, 0, NULL);

/* Add copy of Ulrike to creature_template_locale */
DELETE FROM `creature_template_locale` WHERE `entry` = @Ulrike;
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES 
(@Ulrike, 'deDE', 'Nachschuboffizier Ulrike', 'Rüstmeisterin der Ehrenfeste', 18019),
(@Ulrike, 'esES', 'Oficial de logística Ulrike', 'Intendente del Bastión del Honor', 18019),
(@Ulrike, 'esMX', 'Oficial de logística Ulrike', 'Intendente del Bastión del Honor', 18019),
(@Ulrike, 'frFR', 'Officier de logistique Ulrike', 'Intendante du bastion de l\'Honneur', 18019),
(@Ulrike, 'koKR', '병참장교 울리케', '명예의 요새 병참장교', 18019),
(@Ulrike, 'ruRU', 'Офицер-логистик Ульрика', 'Начальник снабжения Оплота Чести', 18019),
(@Ulrike, 'zhCN', '后勤军需官乌瑞卡', '荣耀堡军需官', 18019),
(@Ulrike, 'zhTW', '物流官烏賴克', '榮譽堡軍需官', 18019);

/* Add copy of Ulrike to creature_template_model */
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Ulrike;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (@Ulrike, 0, 17160, 1, 1, 12340);

/* Add copy of Ulrike to creature */
DELETE FROM `creature` WHERE `id1` = @Ulrike;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) 
VALUES (617657, @Ulrike, 0, 0, 530, 0, 0, 1, 1, 1, -676.087, 2611.44, 86.6955, 6.10865, 300, 0, 0, 9711, 0, 0, 0, 0, 0, '', 0, 0, NULL);

/* Add copy of Ulrike to creature_equip_template */
DELETE FROM `creature_equip_template` WHERE `CreatureID` = @Ulrike;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES (@Ulrike, 1, 5305, 0, 0, 18019);

/* Add correct items to copy of Ulrike - removed Pattern: Netherscale Ammo Pouch (34218) */
DELETE FROM `npc_vendor` WHERE `entry` = @Ulrike;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES 
(@Ulrike, 0, 22531, 0, 0, 0, 0), (@Ulrike, 0, 22547, 0, 0, 0, 0), (@Ulrike, 0, 22905, 0, 0, 0, 0), (@Ulrike, 0, 23142, 0, 0, 0, 0),
(@Ulrike, 0, 23619, 0, 0, 0, 0), (@Ulrike, 0, 23999, 0, 0, 0, 0), (@Ulrike, 0, 24007, 0, 0, 0, 0), (@Ulrike, 0, 24008, 0, 0, 0, 0),
(@Ulrike, 0, 24180, 0, 0, 0, 0), (@Ulrike, 0, 25825, 0, 0, 0, 0), (@Ulrike, 0, 25826, 0, 0, 0, 0), (@Ulrike, 0, 25870, 0, 0, 0, 0),
(@Ulrike, 0, 29151, 0, 0, 0, 0), (@Ulrike, 0, 29153, 0, 0, 0, 0), (@Ulrike, 0, 29156, 0, 0, 0, 0), (@Ulrike, 0, 29166, 0, 0, 0, 0),
(@Ulrike, 0, 29169, 0, 0, 0, 0), (@Ulrike, 0, 29189, 0, 0, 0, 0), (@Ulrike, 0, 29196, 0, 0, 0, 0), (@Ulrike, 0, 29213, 0, 0, 0, 0),
(@Ulrike, 0, 29214, 0, 0, 0, 0), (@Ulrike, 0, 29215, 0, 0, 0, 0), (@Ulrike, 0, 29719, 0, 0, 0, 0), (@Ulrike, 0, 29722, 0, 0, 0, 0),
(@Ulrike, 0, 30622, 0, 0, 0, 0), (@Ulrike, 0, 32883, 0, 0, 0, 0), (@Ulrike, 0, 33150, 0, 0, 0, 0), (@Ulrike, 0, 35464, 0, 0, 0, 0),
(@Ulrike, 0, 35465, 0, 0, 0, 0), (@Ulrike, 0, 35466, 0, 0, 0, 0), (@Ulrike, 0, 35467, 0, 0, 0, 0), (@Ulrike, 0, 35468, 0, 0, 0, 0),
(@Ulrike, 0, 35469, 0, 0, 0, 0), (@Ulrike, 0, 35470, 0, 0, 0, 0), (@Ulrike, 0, 35471, 0, 0, 0, 0), (@Ulrike, 0, 35472, 0, 0, 0, 0),
(@Ulrike, 0, 35473, 0, 0, 0, 0), (@Ulrike, 0, 35474, 0, 0, 0, 0), (@Ulrike, 0, 35475, 0, 0, 0, 0), (@Ulrike, 0, 35476, 0, 0, 0, 0),
(@Ulrike, 0, 35477, 0, 0, 0, 0), (@Ulrike, 0, 35478, 0, 0, 0, 0);

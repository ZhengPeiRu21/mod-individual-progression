/* Nakodu shouldn't sell certain recipes until progression tier 10 */
/* to solve this a copy of him is created that only sells recipes that were available before progression tier 10 */
/* the original Nakodu will replace his copy at progression tier 10 */
SET @Nakodu := 121655;

/* Add copy of Nakodu to creature_template with script npc_ipp_tbc_pre_t4 */
DELETE FROM `creature_template` WHERE `entry` = @Nakodu;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) 
VALUES (@Nakodu, 0, 0, 0, 0, 0, 'Nakodu', 'Lower City Quartermaster', NULL, 0, 70, 70, 1, 1818, 128, 1, 1, 1, 1, 20, 1, 0, 0, 1, 2000, 2000, 1, 1, 1, 33024, 2048, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 2, '', 12340);

/* Add copy of Nakodu to creature_template_addon */
DELETE FROM `creature_template_addon` WHERE `entry` = @Nakodu;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES (@Nakodu, 0, 0, 0, 1, 0, 0, NULL);

/* Add copy of Nakodu to creature_template_locale */
DELETE FROM `creature_template_locale` WHERE `entry` = @Nakodu;
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@Nakodu, 'deDE', 'Nakodu', 'Rüstmeister des Unteren Viertels', 18019);
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@Nakodu, 'esES', 'Nakodu', 'Intendente del Bajo Arrabal', 18019);
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@Nakodu, 'esMX', 'Nakodu', 'Intendente del Bajo Arrabal', 18019);
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@Nakodu, 'frFR', 'Nakodu', 'Intendant de la Ville basse', 18019);
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@Nakodu, 'koKR', '나코두', '고난의 거리 병참장교', 18019);
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@Nakodu, 'ruRU', 'Накоду', 'Начальник снабжения Нижнего Города', 18019);
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@Nakodu, 'zhCN', '纳克杜', '贫民窟军需官', 18019);
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (@Nakodu, 'zhTW', '納克杜', '陰鬱城軍需官', 18019);

/* Add copy of Nakodu to creature_template_model */
DELETE FROM `creature_template_model` WHERE `CreatureID` = @Nakodu;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (@Nakodu, 0, 20388, 1, 1, 12340);

/* Add copy of Nakodu to creature */
DELETE FROM `creature` WHERE `id1` = @Nakodu;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES (321002, @Nakodu, 0, 0, 530, 0, 0, 1, 1, 0, -2073.21, 5325.57, -37.2402, 3.75246, 300, 0, 0, 6986, 0, 0, 0, 0, 0, '', 0, 0, NULL);


/* Add correct items to copy of Darmari - removed Pattern: Quiver of a Thousand Feathers (34200) */
DELETE FROM `npc_vendor` WHERE `entry` = @Nakodu;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 22538, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 22910, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 23138, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 24175, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 24179, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 29199, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 30633, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 30830, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 30832, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 30833, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 30834, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 30835, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 30836, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 30841, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 30846, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 31357, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 31778, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 33148, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 33157, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 35331, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 35335, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 35340, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 35344, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 35357, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 35361, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 35370, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 35373, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 35378, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 35382, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 35389, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 35391, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 35405, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 35411, 0, 0, 0, 0);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES (@Nakodu, 0, 35412, 0, 0, 0, 0);

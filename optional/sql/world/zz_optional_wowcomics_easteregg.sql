/*
    Easter eggs from world of warcraft comics
*/

/* Lo'Gosh (Id: 104250 - Legion) */
DELETE FROM `creature_template` WHERE `entry` = 104250;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(104250, 0, 0, 0, 0, 0, 'Varian "Lo''Gosh" Wrynn', '', '', 0, 73, 73, 2, 84, 0, 1, 1, 1, 1, 20, 1, 3, 0, 3, 2200, 2000, 1, 1, 1, 393986, 2060, 0, 0, 0, 0, 0, 0, 7, 92, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 4, 2, 2, 1, 0, 144, 1, 617299839, 0, 0, 'npc_ipp_tbc_pre_wotlk', 0);
DELETE FROM `creature_template_model` WHERE `CreatureID` = 104250;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (104250, 0, 11656, 1, 1, 0);
DELETE FROM `creature_equip_template` WHERE `CreatureID` = 104250;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES (104250, 1, 2244, 10823, 0, 0);

/* Broll (Id: 105931 - Legion) */
DELETE FROM `creature_template` WHERE `entry` = 105931;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(105931, 0, 0, 0, 0, 0, 'Broll Bearmantle', '', '', 0, 73, 73, 2, 84, 0, 1, 1, 1, 1, 20, 1, 3, 3, 2.5, 2500, 2000, 1, 1, 8, 393986, 2060, 0, 0, 0, 0, 0, 0, 7, 92, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 6, 2, 1.2, 1, 0, 144, 1, 617299839, 8, 0, 'npc_ipp_tbc_pre_wotlk', 0);
DELETE FROM `creature_template_model` WHERE `CreatureID` = 105931;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (105931, 0, 26364, 1, 1, 0);
DELETE FROM `creature_equip_template` WHERE `CreatureID` = 105931;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES (105931, 1, 5600, 11505, 0, 0);
DELETE FROM `creature_template_locale` WHERE `entry` = 105931;
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (105931, 'frFR', 'Broll Mantelours', '', 0);

/* Valeera (Id: 98102 - Legion) */
DELETE FROM `creature_template` WHERE `entry` = 98102;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(98102, 0, 0, 0, 0, 0, 'Valeera Sanguinar', '', '', 0, 73, 73, 2, 0, 0, 1, 1, 1, 1, 20, 1, 3, 0, 3, 1600, 2000, 1, 1, 4, 393986, 2060, 0, 0, 0, 0, 0, 0, 7, 4, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 3, 2, 1, 1, 0, 144, 1, 617299839, 0, 0, 'npc_ipp_tbc_pre_wotlk', 0);
DELETE FROM `creature_template_model` WHERE `CreatureID` = 98102;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (98102, 0, 26365, 1, 1, 0);
DELETE FROM `creature_equip_template` WHERE `CreatureID` = 98102;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES (98102, 1, 10878, 10878, 0, 0);

/* Rehgar (Id: 96541 - Legion) */
DELETE FROM `creature_template` WHERE `entry` = 96541;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(96541, 0, 0, 0, 0, 0, 'Rehgar Earthfury', '', '', 0, 73, 73, 2, 83, 0, 1, 1, 1, 1, 20, 1, 3, 0, 1.2, 2200, 2000, 1, 1, 8, 393986, 2056, 0, 0, 0, 0, 0, 0, 7, 4, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 1.8, 3, 0.8, 1, 0, 144, 1, 617299839, 12, 0, 'npc_ipp_tbc_pre_wotlk', 0);
DELETE FROM `creature_template_model` WHERE `CreatureID` = 96541;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (96541, 0, 17731, 1, 1, 0);
DELETE FROM `creature_template_locale` WHERE `entry` = 96541;
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (96541, 'frFR', 'Rehgar Rageterre', '', 0);

/* Thargas (Id: 96217 - Legion) */
DELETE FROM `creature_template` WHERE `entry` = 96217;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(96217, 0, 0, 0, 0, 0, 'Thargas Anvilmar', '', '', 0, 73, 73, 2, 84, 1, 1, 1, 1, 1, 20, 1, 3, 0, 2.5, 3500, 2000, 1, 1, 1, 1074135810, 2056, 0, 0, 0, 0, 0, 0, 7, 4, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 2.5, 1, 2, 1, 0, 144, 1, 617299839, 0, 0, 'npc_ipp_tbc_pre_wotlk', 0);
DELETE FROM `creature_template_model` WHERE `CreatureID` = 96217;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (96217, 0, 3431, 1, 1, 0);
DELETE FROM `creature_equip_template` WHERE `CreatureID` = 96217;
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES (96217, 1, 7723, 0, 0, 0);
DELETE FROM `creature_template_locale` WHERE `entry` = 96217;
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (96217, 'frFR', 'Thargas Courbenclume', '', 0);

/* Aegwynn (Id: 119723 - Legion) */
DELETE FROM `creature_template` WHERE `entry` = 119723;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(119723, 0, 0, 0, 0, 0, 'Aegwynn', '', '', 0, 73, 73, 2, 84, 1, 1, 1, 1, 1, 20, 1, 3, 6, 4, 3800, 2500, 1, 1, 8, 393986, 2056, 0, 0, 0, 0, 0, 0, 7, 12, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 16, 13, 0.5, 1, 0, 144, 1, 617299839, 68, 0, 'npc_ipp_tbc_pre_wotlk', 0);
DELETE FROM `creature_template_model` WHERE `CreatureID` = 119723;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (119723, 0, 3292, 1, 1, 0);

/* Meryl Felstorm (Id: 98667 - Legion) */
DELETE FROM `creature_template` WHERE `entry` = 98667;
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
(98667, 0, 0, 0, 0, 0, 'Meryl Felstorm', '', '', 0, 73, 73, 2, 0, 1, 1, 1, 1, 1, 20, 1, 3, 6, 2, 3500, 3500, 1, 1, 8, 393986, 2060, 0, 0, 0, 0, 0, 0, 7, 4, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 12, 12, 0.75, 1, 0, 144, 1, 617299839, 64, 4, 'npc_ipp_tbc_pre_wotlk', 0);
DELETE FROM `creature_template_model` WHERE `CreatureID` = 98667;
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES (98667, 0, 4050, 1, 1, 0);
DELETE FROM `creature_template_locale` WHERE `entry` = 98667;
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES (98667, 'frFR', 'Meryl Gangrorage', '', 0);

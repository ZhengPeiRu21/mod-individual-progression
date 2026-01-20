UPDATE `creature_template` SET `npcflag`=81, `subname`='Journeyman Leatherworker'     WHERE `entry` = 223;   -- Dan Golthas <Journeyman Leatherworker> -- `trainer_type` = 2
UPDATE `creature_template` SET `npcflag`=83, `subname`='Journeyman Engineer'          WHERE `entry` = 4586;  -- Graham Van Talen <Journeyman Engineer>  -- `trainer_type` = 2
UPDATE `creature_template` SET `npcflag`=81, `subname`='Journeyman Blacksmith'        WHERE `entry` = 4605;  -- Basil Frye <Journeyman Blacksmith> -- `trainer_type` = 2
UPDATE `creature_template` SET `npcflag`=81, `subname`='Expert Alchemist'             WHERE `entry` = 4609;  -- Doctor Marsh <Expert Alchemist> -- `trainer_type` = 2
UPDATE `creature_template` SET `npcflag`=81, `subname`='Journeyman Alchemist Trainer' WHERE `entry` = 11044; -- Doctor Martin Felben <Journeyman Alchemist Trainer> -- `trainer_type` = 2
UPDATE `creature_template` SET `npcflag`=81, `subname`='Journeyman Tailor'            WHERE `entry` = 11048; -- Victor Ward <Journeyman Tailor> -- `trainer_type` = 2
UPDATE `creature_template` SET `npcflag`=81, `subname`='Expert Tailor'                WHERE `entry` = 11049; -- Rhiannon Davis <Expert Tailor> -- `trainer_type` = 2
UPDATE `creature_template` SET `npcflag`=81, `subname`='Journeyman Enchanter'         WHERE `entry` = 11067; -- Malcomb Wynn <Journeyman Enchanter> -- `trainer_type` = 2

UPDATE `creature_template` SET `type_flags` = 134217728 WHERE `entry` IN (4609, 11049);

SET @TRAINER_ID   := 600;

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (223, 4586, 4591, 4605, 4609, 11044, 11048, 11049, 11067);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
(223,   @TRAINER_ID+31), -- Dan Golthas <Journeyman Leatherworker>
(4586,  @TRAINER_ID+26), -- Graham Van Talen <Journeyman Engineer>
(4591,  @TRAINER_ID+45), -- Mary Edras <First Aid Trainer> 
(4605,  @TRAINER_ID+16), -- Basil Frye <Journeyman Blacksmith>
(4609,  @TRAINER_ID+12), -- Doctor Marsh <Expert Alchemist>
(11044, @TRAINER_ID+11), -- Doctor Martin Felben <Journeyman Alchemist Trainer>
(11048, @TRAINER_ID+36), -- Victor Ward <Journeyman Tailor>
(11049, @TRAINER_ID+37), -- Rhiannon Davis <Expert Tailor>
(11067, @TRAINER_ID+21); -- Malcomb Wynn <Journeyman Enchanter>

DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (2750, 4121, 4130, 4144, 4157, 4188, 4268, 4352);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`) VALUES
(2750, 0, 3, 'Train me.', 3266, 5, 16), -- Basil Frye <Journeyman Blacksmith>
(4121, 0, 3, 'Train me.', 3266, 5, 16), -- Doctor Martin Felben <Journeyman Alchemist Trainer>
(4130, 0, 3, 'Train me.', 3266, 5, 16), -- Doctor Marsh <Expert Alchemist>
(4144, 0, 3, 'Train me.', 3266, 5, 16), -- Graham Van Talen <Journeyman Engineer>
(4157, 0, 3, 'Train me.', 3266, 5, 16), -- Malcomb Wynn <Journeyman Enchanter>
(4188, 0, 3, 'Train me.', 3266, 5, 16), -- Dan Golthas <Journeyman Leatherworker>
(4268, 0, 3, 'Train me.', 3266, 5, 16), -- Victor Ward <Journeyman Tailor>
(4352, 0, 3, 'Train me.', 3266, 5, 16); -- Rhiannon Davis <Expert Tailor>

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7 AND `SourceGroup` IN (1022, 4130, 4132, 4166, 4210, 4352, 4354);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 4130, 0, 7, 171, 50,  'Show menu if alchemy is 50 or higher'),        -- Doctor Marsh <Expert Alchemist>
(15, 4132, 0, 7, 171, 125, 'Show menu if alchemy is 125 or higher'),       -- Doctor Herbert Halsey <Artisan Alchemist>
(15, 1022, 0, 7, 164, 50,  'Show menu if blacksmithing is 50 or higher'),  -- James Van Brunt <Expert Blacksmith>
(15, 4166, 0, 7, 333, 50,  'Show menu if enchanting is 50 or higher'),     -- Lavinia Crowe <Expert Enchanter>
(15, 4210, 0, 7, 165, 50,  'Show menu if leatherworking is 50 or higher'), -- Arthur Moore <Expert Leatherworker>
(15, 4352, 0, 7, 197, 50,  'Show menu if tailoring is 50 or higher'),      -- Rhiannon Davis <Expert Tailor>
(15, 4354, 0, 7, 197, 125, 'Show menu if tailoring is 125 or higher');     -- Josef Gregorian <Artisan Tailor>

DELETE FROM `gossip_menu_option` WHERE (`MenuID`) IN (2847, 2848, 2849);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, 
            `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(2847, 0, 0, 'Alchemy', 3460, 1, 1, 2834, 336, 0, 0, NULL, 0, 0),
(2847, 1, 0, 'Blacksmithing', 3461, 1, 1, 2835, 337, 0, 0, NULL, 0, 0),
(2847, 2, 0, 'Cooking', 3462, 1, 1, 2836, 338, 0, 0, NULL, 0, 0),
(2847, 3, 0, 'Enchanting', 3463, 1, 1, 2837, 339, 0, 0, NULL, 0, 0),
(2847, 4, 0, 'Engineering', 4976, 1, 1, 2838, 340, 0, 0, NULL, 0, 0),
(2847, 5, 0, 'First Aid', 3464, 1, 1, 2839, 341, 0, 0, NULL, 0, 0),
(2847, 6, 0, 'Fishing', 3465, 1, 1, 2840, 342, 0, 0, NULL, 0, 0),
(2847, 7, 0, 'Herbalism', 3466, 1, 1, 2841, 343, 0, 0, NULL, 0, 0),
(2847, 8, 0, 'Inscription', 48811, 1, 1, 10019, 344, 0, 0, NULL, 0, 0),
(2847, 9, 0, 'Leatherworking', 3467, 1, 1, 2842, 345, 0, 0, NULL, 0, 0),
(2847, 10, 0, 'Mining', 3468, 1, 1, 2843, 347, 0, 0, NULL, 0, 0),
(2847, 11, 0, 'Skinning', 3471, 1, 1, 2844, 346, 0, 0, NULL, 0, 0),
(2847, 12, 0, 'Tailoring', 3469, 1, 1, 2845, 348, 0, 0, NULL, 0, 0),
(2848, 0, 0, 'Mage', 3448, 1, 1, 2821, 331, 0, 0, NULL, 0, 0),
(2848, 2, 0, 'Priest', 3449, 1, 1, 2829, 332, 0, 0, NULL, 0, 0),
(2848, 3, 0, 'Rogue', 4885, 1, 1, 2830, 333, 0, 0, NULL, 0, 0),
(2848, 4, 0, 'Warlock', 4886, 1, 1, 2832, 334, 0, 0, NULL, 0, 0),
(2848, 5, 0, 'Warrior', 2910, 1, 1, 2833, 335, 0, 0, NULL, 0, 0),
(2849, 0, 0, 'The bank', 4888, 1, 1, 2822, 319, 0, 0, NULL, 0, 0),
(2849, 1, 0, 'The bat handler', 6790, 1, 1, 2823, 321, 0, 0, NULL, 0, 0),
(2849, 2, 0, 'The guild master', 3428, 1, 1, 2824, 323, 0, 0, NULL, 0, 0),
(2849, 3, 0, 'The inn', 5090, 1, 1, 2825, 324, 0, 0, NULL, 0, 0),
(2849, 4, 0, 'The mailbox', 5514, 1, 1, 2826, 326, 0, 0, NULL, 0, 0),
(2849, 5, 0, 'The auction house', 5515, 1, 1, 2827, 318, 0, 0, NULL, 0, 0),
(2849, 6, 0, 'The zeppelin master', 5518, 1, 1, 2828, 451, 0, 0, NULL, 0, 0),
(2849, 7, 0, 'The weapon master', 7253, 1, 1, 3726, 328, 0, 0, NULL, 0, 0),
(2849, 8, 0, 'The stable master', 8508, 1, 1, 4906, 327, 0, 0, NULL, 0, 0),
(2849, 9, 0, 'The battlemaster', 10359, 1, 1, 6334, 322, 0, 0, NULL, 0, 0),
(2849, 10, 0, 'A class trainer', 5338, 1, 1, 2848, 0, 0, 0, NULL, 0, 0),
(2849, 11, 0, 'A profession trainer', 6635, 1, 1, 2847, 0, 0, 0, NULL, 0, 0);

-- Batllemasters
DELETE FROM `creature` WHERE `id1` IN (347, 2804, 15007, 20386);
INSERT INTO `creature` (`guid`, `id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES
(600347, 347, 0, 1331.94, 334.713, -63.6249, 3.40339, 900),
(602804, 2804, 0, 1262.97, 353.389, -63.6165, 5.46288, 900),
(615007, 15007, 0, 1282.43, 284.592, -63.6281, 1.27409, 900),
(620386, 20386, 0, 1252.89, 314.549, -63.6294, 0.31416, 900);

-- remove vanilla battlemasters placed by AC from game events
DELETE FROM `game_event_creature` WHERE `guid` IN (208429, 208473, 280484);

-- hide battlemasters
UPDATE `creature_template` SET `flags_extra` = 2, `ScriptName` = 'npc_ipp_tbc'       WHERE `entry` IN (20386);
UPDATE `creature_template` SET `flags_extra` = 2, `ScriptName` = 'npc_ipp_pre_wotlk' WHERE `entry` IN (347, 2804, 15007);
UPDATE `creature_template` SET `flags_extra` = 2, `ScriptName` = 'npc_ipp_wotlk'     WHERE `entry` IN (35021, 35611);

-- remove vanilla battlemasters placed by AC from game events
DELETE FROM `game_event_creature` WHERE `guid` IN (208451, 208484);


/* Battle for the Undercity - Wrathgate NPCs  */

SET @IPPPHASE       := 65536;
SET @IPPPHASE_II    := 131072;
SET @IPPPHASE_III   := 262144;

SET @Faranell_entry := 102055;
SET @Faranell_guid  := 602055;
SET @Varimathras    := 602425;

SET @CGUID          := 658000;
SET @WPID           := 6580000;

DELETE FROM `creature_template` WHERE `entry` IN (@Faranell_entry);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, 
`minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, 
`BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, 
`PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, 
`RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
--
(@Faranell_entry,0,0,0,0,0,'Master Apothecary Faranell','Royal Apothecary Society',NULL,10775,50,50,0,68,3,1,1.14286,1,1,18,1,0,0,1.1,2000,2000,1,1,2,37376,2048,0,0,7,0,0,0,0,0,0,0,0,'',0,1,1.25,1,1,1,0,0,1,0,0,2,'',12340);

DELETE FROM `creature_template_locale` WHERE `entry` IN (@Faranell_entry);
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES 
(@Faranell_entry, 'deDE', 'Apothekermeister Faranell', 'Königliche Apothekervereinigung', 18019),
(@Faranell_entry, 'esES', 'Maestro boticario Faranell', 'Sociedad Real de Boticarios', 18019),
(@Faranell_entry, 'esMX', 'Maestro boticario Faranell', 'Sociedad Real de Boticarios', 18019),
(@Faranell_entry, 'frFR', 'Maître apothicaire Faranell', 'Société royale des apothicaires', 18019),
(@Faranell_entry, 'koKR', '수석 연금술사 파라넬', '왕립 연금술 학회', 18019),
(@Faranell_entry, 'ruRU', 'Опытный аптекарь Фаранелл', 'Королевское фармацевтическое общество', 18019),
(@Faranell_entry, 'zhCN', '大药剂师法拉尼尔', '皇家药剂师协会', 18019),
(@Faranell_entry, 'zhTW', '藥劑大師法拉尼爾', '皇家藥劑師學會', 18019);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (@Faranell_entry);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES 
(@Faranell_entry, 0, 1680, 1, 1, 12340);

DELETE FROM `creature_equip_template` WHERE `CreatureID` IN (@Faranell_entry);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES 
(@Faranell_entry, 1, 2199, 3695, 0, 18019);

DELETE FROM `creature_queststarter` WHERE `id` IN (@Faranell_entry);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES 
(@Faranell_entry, 450),
(@Faranell_entry, 515),
(@Faranell_entry, 1109),
(@Faranell_entry, 1113);

DELETE FROM `creature_questender` WHERE `id` IN (@Faranell_entry);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES 
(@Faranell_entry, 447),
(@Faranell_entry, 451),
(@Faranell_entry, 513),
(@Faranell_entry, 1109),
(@Faranell_entry, 1113),
(@Faranell_entry, 2938),
(@Faranell_entry, 12787);

DELETE FROM `creature` WHERE `guid` IN (@Faranell_guid, @Varimathras, 31901, 43466, 79263);
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+1 AND @CGUID+44;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, 
`wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
--
(@Faranell_guid,@Faranell_entry, 0, 0, 0, 0, 0, 1, 1, 1, 1434.48, 404.854, -85.1753, 2.26893, 300, 0, 0, 2215, 1807, 0, 0, 0, 0, '', 0, 0, NULL), -- Master Apothecary Faranell
(@Varimathras, 2425, 0, 0, 0, 0, 0, 1, 1, 0, 1287.7, 333.589, -59.9998, 4.86748, 120, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),                    -- Varimathras
(31901, 36273, 0, 0, 0, 0, 0, 1, 1, 1, 1287.7, 333.589, -59.9998, 4.86748, 120, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),                          -- Bragor Bloodfist
(43466, 36517, 0, 0, 0, 0, 0, 1, 1, 1, 1283, 338.917, -59.9998, 0.244346, 120, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),                           -- Aleric Hawkins
(79263, 36217, 0, 0, 0, 0, 0, 1, 1, 0, 1438.03, 403.83, -85.1626, 3.12414, 120, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL),                          -- Overseer Kraggosh
-- guards
(@CGUID+1, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1440.41, 350.383, -62.1024, 4.13643, 275, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+2, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1612.13, 189.217, -43.0189, 0.471239, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+3, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1423.53, 323.279, -62.1024, 1.02974, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+4, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1466.46, 97.3513, -61.3621, 2.35619, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+5, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1756.48, 348.171, -62.1424, 5.044, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+6, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1579.34, 291.169, -43.0189, 3.52556, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+7, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1591.16, 203.881, 55.3257, 0.10472, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+8, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1572.02, 287.895, -43.0191, 0.453786, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+9, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1485.13, 83.6795, -62.2117, 5.79449, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+10, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1722.7, 96.7601, -61.1554, 0.750492, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+11, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1591.86, 276.605, 55.3256, 0.017453, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+12, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1774.37, 216.364, -62.0757, 1.32631, 300, 0, 0, 15952, 0, 2, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+13, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1527.94, 73.1943, -62.0989, 2.85779, 300, 0, 0, 15952, 0, 2, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+14, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1600.24, 276.667, 55.3257, 3.12414, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+15, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1703.69, 80.5655, -62.2086, 3.57792, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+16, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1619.36, 192.508, -43.0191, 3.63029, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+17, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1427.76, 176.943, -62.053, 4.98419, 300, 0, 0, 15952, 0, 2, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+18, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1512.26, 68.1908, -62.2185, 2.51327, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+19, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1543.83, 222.605, -42.9843, 4.97419, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+20, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1559.28, 244.735, 55.3256, 4.83456, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+21, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1452.27, 113.711, -61.0702, 5.42797, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+22, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1691.67, 428.218, 0.338584, 5.79449, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+23, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1737.21, 110.932, -61.1708, 3.82227, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+24, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1559.61, 236.575, 55.3256, 1.64061, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+25, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1635.1, 421.806, -62.0939, 4.45059, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+26, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1768.21, 156.172, -62.2184, 4.17134, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+27, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1437.55, 132.92, -62.2087, 2.02458, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+28, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1545.49, 214.664, -42.9842, 2.02458, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+29, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1421.48, 160.056, -62.2018, 5.2709, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+30, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1763.17, 328.739, -62.1422, 3.21141, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+31, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1599.45, 203.725, 55.3256, 3.14159, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+32, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1558.44, 421.562, -62.0937, 4.95674, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+33, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1515.46, 413.822, -62.1024, 3.7001, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+34, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1679.78, 413.498, -62.2157, 5.81195, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+35, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1705.98, 396.834, -62.209, 2.56563, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+36, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1751.47, 130.047, -62.2117, 0.994838, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+37, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1664.33, 475.199, -11.807, 1.5708, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+38, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1675.57, 66.9335, -62.2018, 0.453786, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+39, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1494.32, 401.674, -62.1024, 0.541052, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+40, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1714.91, 415.04, 0.33849, 2.61799, 300, 0, 0, 15952, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+41, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1388.43, 421.595, -77.1538, 6.0912, 120, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+42, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1446.22, 415.606, -84.9055, 3.85718, 120, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+43, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1414.68, 448.16, -77.1543, 4.67748, 120, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, NULL), 
(@CGUID+44, 5624, 0, 0, 0, 0, 0, 1, 1, 0, 1419.08, 389.021, -84.9804, 0.698132, 120, 0, 0, 1, 0, 0, 0, 0, 0, '', 0, 0, 'SAI Target');

UPDATE `creature` SET `phaseMask` = @IPPPHASE_II  WHERE `guid` IN (@Faranell_guid, @Varimathras); -- pre Wrathgate
UPDATE `creature` SET `phaseMask` = @IPPPHASE_III WHERE `guid` IN (31900, 31901, 43466, 79263, 203395, 203420);   -- post Wrathgate

UPDATE `creature` SET `phaseMask` = @IPPPHASE_II  WHERE `id1` = 5624;  -- pre Wrathgate
UPDATE `creature` SET `phaseMask` = @IPPPHASE_III WHERE `id1` = 36213; -- post Wrathgate

-- guard waypoints, can use existing ones
DELETE FROM `creature_addon` WHERE `guid` IN (@CGUID+12, @CGUID+13, @CGUID+17);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(@CGUID+12, 341030, 0, 0, 0, 0, 0, NULL),
(@CGUID+13, 341040, 0, 0, 0, 0, 0, NULL),
(@CGUID+17, 382970, 0, 0, 0, 0, 0, NULL);

-- Restore quests series The Deathstalkers
DELETE FROM `creature_questender` WHERE `id` = 36517 AND `quest` = 14418;
DELETE FROM `creature_questender` WHERE `id` = 6522  AND `quest` = 14419;
DELETE FROM `creature_questender` WHERE `id` = 6467  AND `quest` = 14420;
DELETE FROM `creature_questender` WHERE `id` = 6467  AND `quest` = 14421;
--
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES (6467, 1886);
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES (6467, 1899);
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES (6522, 1898);
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES (36517, 1978);
--
DELETE FROM `creature_queststarter` WHERE `id` = 6467 AND `quest` = 14418;
DELETE FROM `creature_queststarter` WHERE `id` = 6467 AND `quest` = 14419;
DELETE FROM `creature_queststarter` WHERE `id` = 6467 AND `quest` = 14420;
DELETE FROM `creature_queststarter` WHERE `id` = 6522 AND `quest` = 14421;
--
REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES (6467, 1886);
REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES (6467, 1898);
REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES (6522, 1899);

UPDATE `quest_template` SET `RewardNextQuest` = 1898 WHERE `ID` = 1886;
UPDATE `quest_template` SET `RewardNextQuest` = 1899 WHERE `ID` = 1898;
UPDATE `quest_template` SET `RewardNextQuest` = 1978 WHERE `ID` = 1899;

UPDATE `conditions` SET `ConditionValue1`= 1886,  `comment` = 'Astor Hadren - Show gossip if quest 1886 is taken' WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 126;


/* Restore quests for Varimathras */
DELETE FROM `disables` WHERE `sourceType` = 1 AND `entry` IN (550, 6522, 6521, 1048, 5725);

REPLACE INTO `creature_questender` (`id`, `quest`) VALUES 
(2425, 550), (2425, 6144), (2425, 14351), (2425, 14352), (2425, 14353), (2425, 14355), (2425, 14356),
(36273, 550), (36273, 6144), (36273, 14351), (36273, 14352), (36273, 14353), (36273, 14355), (36273, 14356);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES (2215, 550);
REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES (2215, 14351);

UPDATE `quest_template` SET `RewardNextQuest` = 550 WHERE `ID` = 541;


-- Quest: An Unholy Alliance
DELETE FROM `creature_loot_template` WHERE `Entry` = 4421 AND `Item` = 49205 AND `Reference` = 0 AND `GroupId` = 0;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(4421, 17008, 0, 100, 0, 1, 0, 1, 1, 'Charlga Razorflank - Small Scroll');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 1 AND `SourceGroup` = 4421 AND `SourceEntry` = 49205;
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
                           `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(1, 4421, 17008, 0, 0, 6, 0, 67, 0, 0, 0, 0, 0, '', NULL);

UPDATE `item_template` SET `flags` = 2048 WHERE `entry` = 17008;
UPDATE `item_template` SET `description` = 'To be opened by Lord Varimathras.' WHERE `entry` = 3701;

-- Quest: An Unholy Alliance
UPDATE `quest_template`
SET `LogDescription`  = "Bring Ambassador Malcin's Head to Varimathras in the Undercity.",
    `QuestCompletionLog` = "Return to Varimathras at the Royal Quarter in the Undercity."
WHERE `ID` = 6521;
UPDATE `quest_template_locale` SET `Objectives` = 'Apporter la Tête de l''Ambassadeur Malcin à Varimathras, à Fossoyeuse.', `CompletedText` = 'Retournez voir Varimathras au Quartier royal, à Fossoyeuse.'
WHERE `ID` = 6521 AND `locale` = 'frFR';

UPDATE `quest_template`
SET `LogDescription`  = "Take the Small Scroll to Varimathras in the Undercity.",
    `QuestDescription` = "My Lady,$B$BYou know very well what it is we are offering. The opportunity for you to take the Barrens and the lands beyond is a great one. We simply want your aid in return. By aid we mean nothing more than your giving us the freedom to take action in the area.$B$BPlease, allow us to discuss this further. We have great power and are willing to share with those wise enough to join us. I will remain outside Razorfen Downs for the time being.$B$BBest Regards,$BAmbassador Malcin",
    `QuestCompletionLog` = "Return to Varimathras at the Royal Quarter in the Undercity."
WHERE `ID` = 14352;

UPDATE `quest_template`
SET `LogDescription`  = "Bring Ambassador Malcin's Head to Varimathras in the Undercity.",
    `QuestDescription` = "Supposedly this Malcin is outside Razorfen Downs. There's no question - he has to die.$b$bMy contacts in Orgrimmar tell me their scouts have found signs of the Plague down there. The quilboar are showing signs of being plagued, too; they're much more powerful. Whatever the Scourge are doing down there needs to end. Now.$b$bFind this Malcin and kill him. Report back here when he's dead.",
    `QuestCompletionLog` = "Return to Varimathras at the Royal Quarter in the Undercity."
WHERE `ID` = 14353;

-- Quest: The Power to Destroy...
UPDATE `quest_template`
SET `QuestCompletionLog` = "Return to Varimathras at the Royal Quarter in the Undercity."
WHERE `ID` = 5725;

UPDATE `quest_template`
SET `LogDescription`  = "Bring the books Spells of Shadow and Incantations from the Nether to Varimathras in Undercity.",
    `QuestDescription` = "Listen up, $c.$b$bYou may not know this, but Orgrimmar's got a problem. Deep in Ragefire Chasm, a sect of the Shadow Council called the Searing Blade performs their sinister work. They're mainly orcs, and I can't trust sensitive information in the hands of the grunts there. That's where you come in.$b$bThey should have two books in their possession. I want them kept out of the hands of the Searing Blade and the Forsaken alike. Bring them to me directly.",
    `QuestCompletionLog` = "Return to Varimathras at the Royal Quarter in the Undercity."
WHERE `ID` = 14356;

-- Quest: Battle of Hillsbrad
UPDATE `quest_template`
SET `LogDescription`  = "Take Darthalia's Sealed Commendation to Varimathras in the Undercity.",
    `QuestDescription` = "Because you fought with such valor and perseverance in the Battle of Hillsbrad, I have written this commendation, extolling your heroics in combat for the high command to recognize.$b$bTake this sealed commendation to Varimathras in the Undercity.  Go with pride, $c.",
    `QuestCompletionLog` = "Return to Varimathras at the Royal Quarter in the Undercity."
WHERE `ID` = 14351;

-- Quest: Into The Scarlet Monastery
UPDATE `quest_template`
SET `LogDescription`  = "Kill High Inquisitor Whitemane, Scarlet Commander Mograine, Herod, the Scarlet Champion and Houndmaster Loksey and then report back to Varimathras in the Undercity.",
    `QuestDescription` = "One of my duties while I'm stationed here is to help the Forsaken take care of their borders, and that, $c, is exactly what you're going to do for me.$b$bI might live and breathe, but the Scarlet Crusade will cut down my people as quickly as they will one of the undead. They're a problem here, a big one, and you're going to do something about it.$b$bGo to the Monastery and slay High Inquisitor Whitemane and her lieutenants.",
    `QuestCompletionLog` = "Return to Varimathras at the Royal Quarter in the Undercity."
WHERE `ID` = 14355;

-- smart scripts
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (36273);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (36273);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(36273, 0, 0, 0, 54, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 7741, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Varimathras - On Just Summoned - Cast Summoned Demon'),
(36273, 0, 1, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, 0, 4, 5887, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Varimathras - On Aggro - Play Sound (No Repeat)'),
(36273, 0, 2, 0, 9, 0, 100, 0, 25000, 25000, 20000, 20000, 0, 30, 11, 20741, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Varimathras - Within 0-30 Range - Cast Shadow Bolt Volley'),
(36273, 0, 3, 0, 2, 0, 100, 0, 0, 30, 20000, 20000, 0, 0, 11, 20743, 1, 0, 0, 0, 0, 5, 20, 0, 0, 0, 0, 0, 0, 0,        'Varimathras - Between 0-30% Health - Cast Drain Life'),
(36273, 0, 4, 0, 9, 0, 100, 0, 20000, 20000, 15000, 25000, 0, 20, 11, 20740, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 'Varimathras - Within 0-20 Range - Cast Dominate Mind');

-- Enchant formulas dropped as items
DELETE FROM `trainer_spell` WHERE `SpellID` IN (20008, 20012, 20013, 20014, 20016, 20023, 20028, 32667);

-- Blacksmithing Plans dropped as items
DELETE FROM `trainer_spell` WHERE `SpellID` IN (16642, 16643, 16644, 16652, 16653, 16662, 16969, 16971);

-- Alchemy recipes dropped as items
DELETE FROM `trainer_spell` WHERE `SpellID` IN (2795, 17552, 17553, 17555, 17556, 17557, 17572, 17573);

-- Engineering Schematics dropped as items
DELETE FROM `trainer_spell` WHERE `SpellID` IN (12615, 19790, 19791, 19792, 19794, 19795, 19800, 19825, 23071);

-- Tailoring Recipes dropped as items
DELETE FROM `trainer_spell` WHERE `SpellID` IN (18450, 18453, 18444, 18406, 18409, 18417, 18423);

-- First Aid Recipes dropped as items
DELETE FROM `trainer_spell` WHERE `SpellID` IN (7929, 10840, 27032, 27033);

-- First Aid Skills should be from books or quests
DELETE FROM `trainer_spell` WHERE `SpellID` IN (54254, 10847, 54255);
UPDATE `quest_template` SET `RewardItem3` = 16085, `RewardAmount3` = 1 WHERE `ID` IN (6624, 6622);
UPDATE `item_template` SET `description` = 'Teaches you advanced first aid, allowing a maximum of 300 first aid skill.' WHERE `entry` = 16085;
INSERT IGNORE INTO `item_template_locale` (`ID`, `locale`, `Name`, `Description`, `VerifiedBuild`) VALUES 
(16085, 'frFR', 'Artisan en premiers soins - Se soigner seul', 'Vous apprend des techniques avancées en Premiers soins et vous permet d''augmenter votre compétence jusqu''à un maximum de 300.', 0);

-- TBC First Aid vendors
UPDATE `creature_template` SET `npcflag` = 128 WHERE `entry` IN (18990, 18991); -- set to vendors, no longer trainers

-- remove Poisons skill reward from alliance quest Klaven's Tower
UPDATE `quest_template` SET `RewardSpell` = 0 WHERE `ID` IN (2480, 2359);

-- lockpicking
UPDATE `gameobject` SET `spawntimesecs` = 900 WHERE `id` IN (179488, 179486); -- change respawn time of footlockers from 2 hours to 15 minutes

-- Make Brilliant Glass craft only available once WotLK is reached, to avoid early access to epic TBC gems
UPDATE `trainer_spell` SET `ReqLevel` = 71 WHERE `SpellID` = 47280;

-- Cooking Skills learned from Books and Quests, not trainers
DELETE FROM `trainer_spell` WHERE `SpellID` IN (18261, 19886, 54257, 54256);
UPDATE `quest_template` SET `RewardItem1` = 16073, `RewardAmount1` = 1 WHERE id = 6610;
UPDATE `item_template` SET `spellid_1` = 19887, `spellcharges_1` = -1, `spellppmRate_1` = -1 WHERE `entry` = 16073;
INSERT IGNORE INTO `item_template_locale` (`ID`, `locale`, `Name`, `Description`, `VerifiedBuild`) VALUES 
(16073, 'frFR', 'Livre de cuisine pour artisan', '', 0);

-- Fishing needs to be learned from Quests and Books, remove from trainers
DELETE FROM `trainer_spell` WHERE `SpellID` IN (18249, 54083, 54084);
UPDATE `quest_template` SET `RewardItem2` = 16082, `RewardAmount2` = 1 WHERE `ID` = 6607;

-- Leatherworking Recipes, dropped from creatures
DELETE FROM `trainer_spell` WHERE `SpellID` IN
(19052, 19055, 19065, 19071, 19072, 19083, 19091, 19092, 19098, 19102, 19103, 18403, 18407, 18410, 18411, 18413,
 18414, 18415, 18416, 18420, 18421, 18424, 18437, 18438, 18441, 18442, 18446, 18449, 18451, 19082, 32455);
 
-- Black Sack of Gems was added in late TBC to make it easy to get gems
DELETE FROM `creature_loot_template` WHERE `Entry` = 17257 AND `Item` = 34846 AND `Reference` = 0 AND `GroupId` = 0;

-- Remove TBC Gems from Prospecting Vanilla ore
DELETE FROM `prospecting_loot_template` WHERE `Entry` = 10620 AND `Item` = 1;

-- Restore Vendor Formulas
DELETE FROM npc_vendor WHERE entry = 11188 AND item = 13480;
DELETE FROM npc_vendor WHERE entry = 11189 AND item = 14481;
DELETE FROM npc_vendor WHERE entry = 4610  AND item = 13477;
DELETE FROM npc_vendor WHERE entry = 4226  AND item = 13477;
DELETE FROM npc_vendor WHERE entry = 12941 AND item = 15756;
DELETE FROM npc_vendor WHERE entry = 7940  AND item = 14488;

DELETE FROM npc_vendor WHERE entry = 18991 AND item = 21992;
DELETE FROM npc_vendor WHERE entry = 18990 AND item = 21992;
DELETE FROM npc_vendor WHERE entry = 18991 AND item = 21993;
DELETE FROM npc_vendor WHERE entry = 18990 AND item = 21993;

DELETE FROM npc_vendor WHERE entry = 3413  AND item = 16041;
DELETE FROM npc_vendor WHERE entry = 5175  AND item = 16041;
DELETE FROM npc_vendor WHERE entry = 3413  AND item = 16042;
DELETE FROM npc_vendor WHERE entry = 5175  AND item = 16042;
DELETE FROM npc_vendor WHERE entry = 11185 AND item = 16047;
DELETE FROM npc_vendor WHERE entry = 2685  AND item = 18651;

INSERT INTO npc_vendor (entry, slot, item) VALUES 
(2685, 0, 18651), 
(3413, 0, 16041),
(3413, 0, 16042),
(4610, 0, 13477),
(4226, 0, 13477),
(5175, 0, 16041),
(5175, 0, 16042),
(7940, 0, 14488),
(11185, 0, 16047),
(11188, 0, 13480),
(11189, 0, 14481),
(12941, 0, 15756),
(18990, 0, 21992),
(18990, 0, 21993),
(18991, 0, 21992),
(18991, 0, 21993);

UPDATE `creature_template` SET `subname` = 'Journeyman Alchemist'     WHERE `entry` IN (16161);
UPDATE `creature_template` SET `subname` = 'Expert Alchemist'         WHERE `entry` IN (16642, 16723);
UPDATE `creature_template` SET `subname` = 'Journeyman Blacksmith'    WHERE `entry` IN (15400);
UPDATE `creature_template` SET `subname` = 'Expert Blacksmith'        WHERE `entry` IN (16669);
UPDATE `creature_template` SET `subname` = 'Journeyman Enchanter'     WHERE `entry` IN (16160);
UPDATE `creature_template` SET `subname` = 'Expert Enchanter'         WHERE `entry` IN (16633, 16725);
UPDATE `creature_template` SET `subname` = 'Journeyman Engineer'      WHERE `entry` IN (17222);
UPDATE `creature_template` SET `subname` = 'Expert Engineer'          WHERE `entry` IN (1676, 16667, 16726);
UPDATE `creature_template` SET `subname` = 'Journeyman Leatherworker' WHERE `entry` IN (16278, 17442);
UPDATE `creature_template` SET `subname` = 'Expert Leatherworker'     WHERE `entry` IN (16688, 16728);
UPDATE `creature_template` SET `subname` = 'Journeyman Tailor'        WHERE `entry` IN (16366, 17487);
UPDATE `creature_template` SET `subname` = 'Expert Tailor'            WHERE `entry` IN (16640, 16729);

-- Delete added riding trainers
DELETE FROM creature WHERE `id1` IN (35093, 35100);
DELETE FROM creature_addon WHERE `guid` IN (88165, 88166);

-- Optional - delete TBC trainers added in WotLK 3.1
DELETE FROM creature WHERE `id1` IN 
(33608, 33609, 33610, 33611, 33612, 33613, 33614, 33615, 33616, 33617, 33618, 33619, 
33621, 33623, 33630, 33631, 33633, 33634, 33635, 33636, 33637, 33639, 33640, 33641, 
33674, 33675, 33676, 33677, 33678, 33680, 33681, 33682, 33683, 33684, 35099, 35101);

-- TBC Recipes moved to trainers in 2.4.0
DELETE FROM `trainer_spell` WHERE `SpellID` IN (28905, 34590, 28903, 28914, 28925, 28910, 28917, 28916, 28950, 28903);

DELETE FROM npc_vendor WHERE item IN (23131, 28596, 23148, 23137, 23144, 23135, 23141, 23140, 23152, 23130);
INSERT INTO npc_vendor (entry, slot, item) VALUES
(18751, 0, 23131),
(18774, 0, 23131),
(18751, 0, 28596),
(18774, 0, 28596),
(18751, 0, 23148),
(18774, 0, 23148),
(18751, 0, 23137),
(18774, 0, 23137),
(18751, 0, 23144),
(18774, 0, 23144),
(18751, 0, 23135),
(18774, 0, 23135),
(18751, 0, 23141),
(18774, 0, 23141),
(18751, 0, 23140),
(18774, 0, 23140),
(18751, 0, 23152),
(18774, 0, 23152),
(18751, 0, 23130),
(18774, 0, 23130);

/* These NPCs shouldn't train certain spells until progression tier 10
   to solve this copies are created that only train or sell what was available before progression tier 10
   the originals replace their copies at progression tier 10 */

SET @Darmari := 119187;
SET @Barim   := 118754;
SET @Brumman := 118771;
SET @Grikka  := 121087;

/* Add copies with script npc_ipp_tbc_pre_t4 */
DELETE FROM `creature_template` WHERE `entry` IN (@Darmari, @Barim, @Brumman, @Grikka);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, 
`minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, 
`BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, 
`PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, 
`RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES
--
(@Darmari,0,0,0,0,0,'Darmari','Master Leatherworking Trainer',NULL,7816,63,63,0,1818,81,1,1.14286,1,1,20,1,0,0,1,2000,2000,1,1,1,33024,2048,0,0,7,0,0,0,0,0,0,0,0,'',1,1,1.05,1,1,1,0,0,1,0,0,2,'npc_ipp_tbc_pre_t4',0),
(@Barim,0,0,0,0,0,'Barim Spilthoof','Master Leatherworking Trainer',NULL,7816,60,60,0,29,209,1,1.14286,1,1,20,1,0,0,1,2000,2000,1,1,1,512,2048,0,0,7,0,0,0,0,0,0,0,0,'',1,1,1.02,1,1,1,0,0,1,0,0,2,'npc_ipp_tbc_pre_t4',0),
(@Brumman,0,0,0,0,0,'Brumman','Master Leatherworking Trainer',NULL,0,60,60,0,1737,209,1,1.14286,1,1,20,1,0,0,1,2000,2000,1,1,1,512,2048,0,0,7,0,0,0,0,0,0,0,0,'',1,1,1.02,1,1,1,0,0,1,0,0,2,'npc_ipp_tbc_pre_t4',0),
(@Grikka,0,0,0,0,0,'Grikka','Master Leatherworking Trainer',NULL,0,60,60,0,1735,80,1.125,1.14286,1,1,20,1,0,0,1,2000,2000,1,1,1,4608,2048,0,0,7,0,0,0,0,0,0,0,0,'',1,1,1.25,1,1,1,0,0,1,0,0,2,'npc_ipp_tbc_pre_t4',0);

DELETE FROM `creature_template_addon` WHERE `entry` IN (@Darmari, @Barim, @Brumman, @Grikka);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(@Darmari, 0, 0, 0, 1, 0, 0, NULL),
(@Barim, 0, 0, 0, 1, 0, 0, NULL),
(@Brumman, 0, 0, 1, 1, 0, 0, NULL),
(@Grikka, 0, 0, 0, 1, 0, 0, NULL);

DELETE FROM `creature_template_locale` WHERE `entry` IN (@Darmari, @Barim, @Brumman, @Grikka);
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES
(@Darmari, 'deDE', 'Darmari', 'Lederverarbeitungslehrerin', 18019),
(@Darmari, 'esES', 'Darmari', 'Instructora de peletería', 18019),
(@Darmari, 'esMX', 'Darmari', 'Instructora de peletería', 18019),
(@Darmari, 'frFR', 'Darmari', 'Maître des travailleurs du cuir', 18019),
(@Darmari, 'koKR', '다마리', '전문 가죽세공인', 18019),
(@Darmari, 'ruRU', 'Дармари', 'Учитель кожевничества', 18019),
(@Darmari, 'zhCN', '达尔玛里', '制皮训练师', 18019),
(@Darmari, 'zhTW', '達瑪莉', '製皮訓練師', 18019),
(@Barim, 'deDE', 'Barim Spalthuf', 'Lederverarbeitungslehrer', 18019),
(@Barim, 'esES', 'Barim Pezuña Partida', 'Instructor de peletería', 18019),
(@Barim, 'esMX', 'Barim Pezuña Partida', 'Instructor de peletería', 18019),
(@Barim, 'frFR', 'Barim Sabot-Fendu', 'Maître des travailleurs du cuir', 18019),
(@Barim, 'koKR', '바림 스필트후프', '전문 가죽세공인', 18019),
(@Barim, 'ruRU', 'Барим Треснувшее Копыто', 'Учитель кожевничества', 18019),
(@Barim, 'zhCN', '巴里姆·裂蹄', '制皮训练师', 18019),
(@Barim, 'zhTW', '巴瑞姆·裂蹄', '製皮訓練師', 18019),
(@Brumman, 'deDE', 'Brumman', 'Lederverarbeitungslehrer', 18019),
(@Brumman, 'esES', 'Brumman', 'Instructor de peletería', 18019),
(@Brumman, 'esMX', 'Brumman', 'Instructor de peletería', 18019),
(@Brumman, 'frFR', 'Brumman', 'Maître des travailleurs du cuir', 18019),
(@Brumman, 'koKR', '브룸만', '전문 가죽세공인', 18019),
(@Brumman, 'ruRU', 'Брумман', 'Учитель кожевничества', 18019),
(@Brumman, 'zhCN', '布鲁曼', '制皮训练师', 18019),
(@Brumman, 'zhTW', '布魯曼恩', '製皮訓練師', 18019),
(@Grikka, 'deDE', 'Grikka', 'Lederverarbeitungslehrerin', 18019),
(@Grikka, 'esES', 'Grikka', 'Instructora de peletería', 18019),
(@Grikka, 'esMX', 'Grikka', 'Instructora de peletería', 18019),
(@Grikka, 'frFR', 'Grikka', 'Maître des travailleurs du cuir', 18019),
(@Grikka, 'koKR', '그리카', '전문 가죽세공인', 18019),
(@Grikka, 'ruRU', 'Грикка', 'Учитель кожевничества', 18019),
(@Grikka, 'zhCN', '格里卡', '制皮训练师', 18019),
(@Grikka, 'zhTW', '葛利卡', '製皮訓練師', 18019);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (@Darmari, @Barim, @Brumman, @Grikka);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES 
(@Darmari, 0, 18630, 1, 1, 12340),
(@Barim, 0, 18176, 1, 1, 12340),
(@Brumman, 0, 18177, 1, 1, 12340),
(@Grikka, 0, 20059, 1, 1, 12340);

DELETE FROM `creature` WHERE `id1` IN (@Darmari, @Barim, @Brumman, @Grikka);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
(619187, @Darmari, 0, 0, 530, 0, 0, 1, 1, 1, -2060.92, 5256.68, -38.3819, 0.767945, 300, 0, 0, 3498, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(618754, @Barim, 0, 0, 530, 0, 0, 1, 1, 1, 148.588, 2636.02, 86.018, 1.27409, 300, 0, 0, 3113, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(618771, @Brumman, 0, 0, 530, 0, 0, 1, 1, 1, -721.657, 2745.26, 94.0548, 3.45575, 300, 0, 0, 3113, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(621087, @Grikka, 0, 0, 530, 0, 0, 1, 1, 0, 2039.82, 4675.43, 150.074, 0.977384, 300, 0, 0, 3815, 0, 0, 0, 0, 0, '', 0, 0, NULL);

DELETE FROM `creature_equip_template` WHERE `CreatureID` IN (@Darmari, @Barim, @Brumman);
INSERT INTO `creature_equip_template` (`CreatureID`, `ID`, `ItemID1`, `ItemID2`, `ItemID3`, `VerifiedBuild`) VALUES 
(@Darmari, 1, 2184, 0, 0, 18019),
(@Barim, 1, 10616, 0, 0, 18019),
(@Brumman, 1, 10616, 0, 0, 18019);

DELETE FROM `npc_vendor` WHERE `entry` IN (@Barim, @Brumman);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES 
(@Barim, 0, 2320, 0, 0, 0, 0), (@Barim, 0, 2321, 0, 0, 0, 0), (@Barim, 0, 2325, 0, 0, 0, 0), (@Barim, 0, 2604, 0, 0, 0, 0), (@Barim, 0, 2605, 0, 0, 0, 0), 
(@Barim, 0, 4289, 0, 0, 0, 0), (@Barim, 0, 4291, 0, 0, 0, 0), (@Barim, 0, 4340, 0, 0, 0, 0), (@Barim, 0, 4341, 0, 0, 0, 0), (@Barim, 0, 4342, 0, 0, 0, 0),
(@Barim, 0, 6260, 0, 0, 0, 0), (@Barim, 0, 6261, 0, 0, 0, 0), (@Barim, 0, 7005, 0, 0, 0, 0), (@Barim, 0, 8343, 0, 0, 0, 0), (@Barim, 0, 10290, 0, 0, 0, 0),
(@Barim, 0, 14341, 0, 0, 0, 0), (@Barim, 0, 38426, 0, 0, 0, 0),
(@Brumman, 0, 2320, 0, 0, 0, 0), (@Brumman, 0, 2321, 0, 0, 0, 0), (@Brumman, 0, 2325, 0, 0, 0, 0), (@Brumman, 0, 2604, 0, 0, 0, 0), (@Brumman, 0, 2605, 0, 0, 0, 0),
(@Brumman, 0, 4289, 0, 0, 0, 0), (@Brumman, 0, 4291, 0, 0, 0, 0), (@Brumman, 0, 4340, 0, 0, 0, 0), (@Brumman, 0, 4341, 0, 0, 0, 0), (@Brumman, 0, 4342, 0, 0, 0, 0),
(@Brumman, 0, 6260, 0, 0, 0, 0), (@Brumman, 0, 6261, 0, 0, 0, 0), (@Brumman, 0, 7005, 0, 0, 0, 0), (@Brumman, 0, 8343, 0, 0, 0, 0), (@Brumman, 0, 10290, 0, 0, 0, 0),
(@Brumman, 0, 14341, 0, 0, 0, 0), (@Brumman, 0, 38426, 0, 0, 0, 0);


-- NEW!

SET @TRAINER_ID   := 600;

DELETE FROM `trainer` WHERE `Id` BETWEEN @TRAINER_ID+11 AND @TRAINER_ID+51;
INSERT INTO `trainer` (`Id`, `Type`, `Requirement`, `Greeting`, `VerifiedBuild`) VALUES 
--
(@TRAINER_ID+11, 2, 0, 'With alchemy you can turn found herbs into healing and other types of potions.', 0),
(@TRAINER_ID+12, 2, 0, 'With alchemy you can turn found herbs into healing and other types of potions.', 0),
(@TRAINER_ID+13, 2, 0, 'With alchemy you can turn found herbs into healing and other types of potions.', 0),
--
(@TRAINER_ID+16, 2, 0, 'Care to learn how to turn the ore that you find into weapons and metal armor?', 0),
(@TRAINER_ID+17, 2, 0, 'Care to learn how to turn the ore that you find into weapons and metal armor?', 0),
(@TRAINER_ID+18, 2, 0, 'Care to learn how to turn the ore that you find into weapons and metal armor?', 0),
--
(@TRAINER_ID+21, 2, 0, 'Enchanting is the art of improving existing items through magic.', 0),
(@TRAINER_ID+22, 2, 0, 'Enchanting is the art of improving existing items through magic.', 0),
(@TRAINER_ID+23, 2, 0, 'Enchanting is the art of improving existing items through magic.', 0),
--
(@TRAINER_ID+26, 2, 0, 'Engineering is very simple once you grasp the basics.', 0),
(@TRAINER_ID+27, 2, 0, 'Engineering is very simple once you grasp the basics.', 0),
(@TRAINER_ID+28, 2, 0, 'Engineering is very simple once you grasp the basics.', 0),
--
(@TRAINER_ID+31, 2, 0, 'Greetings!  Can I teach you how to turn beast hides into armor?', 0),
(@TRAINER_ID+32, 2, 0, 'Greetings!  Can I teach you how to turn beast hides into armor?', 0),
(@TRAINER_ID+33, 2, 0, 'Greetings!  Can I teach you how to turn beast hides into armor?', 0),
--
(@TRAINER_ID+36, 2, 0, 'Greetings!  Can I teach you how to turn found cloth into cloth armor?', 0),
(@TRAINER_ID+37, 2, 0, 'Greetings!  Can I teach you how to turn found cloth into cloth armor?', 0),
(@TRAINER_ID+38, 2, 0, 'Greetings!  Can I teach you how to turn found cloth into cloth armor?', 0),
--
(@TRAINER_ID+41, 2, 0, 'Searching for herbs requires both knowledge and instinct.', 0),
(@TRAINER_ID+42, 2, 0, 'You have not lived until you have dug deep into the earth.', 0),
(@TRAINER_ID+43, 2, 0, 'It requires a steady hand to remove the leather from a slain beast.', 0),
--
(@TRAINER_ID+44, 2, 0, 'Can I teach you how to turn the meat you find on beasts into a feast?', 0),
(@TRAINER_ID+45, 2, 0, 'Here, let me show you how to bind those wounds....', 0),
(@TRAINER_ID+46, 2, 0, 'Here, let me show you how to bind those wounds....', 0),
(@TRAINER_ID+47, 2, 0, 'I can teach you how to use a fishing pole to catch fish.', 0),
--
(@TRAINER_ID+51, 2, 0, 'Greetings!  Can I teach you how to turn beast hides into armor?', 0);

/* Crafting Professions */

DELETE FROM `trainer_spell` WHERE `TrainerId` IN (@TRAINER_ID+11, @TRAINER_ID+12, @TRAINER_ID+13);
INSERT INTO `trainer_spell` (`TrainerId`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
-- Journeyman Alchemist
(@TRAINER_ID+11, 2275, 10, 0, 0, 5),
(@TRAINER_ID+11, 3170, 50, 171, 15, 0),
(@TRAINER_ID+11, 2331, 100, 171, 25, 0),
(@TRAINER_ID+11, 2332, 150, 171, 40, 0),
(@TRAINER_ID+11, 2334, 250, 171, 50, 0),
(@TRAINER_ID+11, 2337, 250, 171, 55, 0),
-- Expert Alchemist
(@TRAINER_ID+12, 2275, 10, 0, 0, 5),
(@TRAINER_ID+12, 3170, 50, 171, 15, 0),
(@TRAINER_ID+12, 2331, 100, 171, 25, 0),
(@TRAINER_ID+12, 2332, 150, 171, 40, 0),
(@TRAINER_ID+12, 2334, 250, 171, 50, 0),
(@TRAINER_ID+12, 2337, 250, 171, 55, 0),
(@TRAINER_ID+12, 2280, 500, 171, 50, 10),
(@TRAINER_ID+12, 7836, 250, 171, 80, 0),
(@TRAINER_ID+12, 3171, 500, 171, 90, 0),
(@TRAINER_ID+12, 7179, 450, 171, 90, 0),
(@TRAINER_ID+12, 7841, 1000, 171, 100, 0),
(@TRAINER_ID+12, 3447, 4000, 171, 110, 0),
(@TRAINER_ID+12, 3173, 1500, 171, 120, 0),
(@TRAINER_ID+12, 3176, 1500, 171, 125, 0),
(@TRAINER_ID+12, 3177, 2000, 171, 130, 0),
(@TRAINER_ID+12, 7837, 1000, 171, 130, 0),
(@TRAINER_ID+12, 7845, 3000, 171, 140, 0),
-- Artisan Alchemist
(@TRAINER_ID+13, 2275, 10, 0, 0, 5),
(@TRAINER_ID+13, 3170, 50, 171, 15, 0),
(@TRAINER_ID+13, 2331, 100, 171, 25, 0),
(@TRAINER_ID+13, 2332, 150, 171, 40, 0),
(@TRAINER_ID+13, 2334, 250, 171, 50, 0),
(@TRAINER_ID+13, 2337, 250, 171, 55, 0),
(@TRAINER_ID+13, 2280, 500, 171, 50, 10),
(@TRAINER_ID+13, 7836, 250, 171, 80, 0),
(@TRAINER_ID+13, 3171, 500, 171, 90, 0),
(@TRAINER_ID+13, 7179, 450, 171, 90, 0),
(@TRAINER_ID+13, 7841, 1000, 171, 100, 0),
(@TRAINER_ID+13, 3447, 4000, 171, 110, 0),
(@TRAINER_ID+13, 3173, 1500, 171, 120, 0),
(@TRAINER_ID+13, 3176, 1500, 171, 125, 0),
(@TRAINER_ID+13, 3177, 2000, 171, 130, 0),
(@TRAINER_ID+13, 7837, 1000, 171, 130, 0),
(@TRAINER_ID+13, 7845, 3000, 171, 140, 0),
(@TRAINER_ID+13, 3448, 5000, 171, 165, 0),
(@TRAINER_ID+13, 3450, 6000, 171, 175, 0),
(@TRAINER_ID+13, 3452, 5000, 171, 160, 0),
(@TRAINER_ID+13, 3465, 5000, 171, 125, 20),
(@TRAINER_ID+13, 7181, 5000, 171, 155, 0),
(@TRAINER_ID+13, 11449, 6500, 171, 185, 0),
(@TRAINER_ID+13, 11450, 7500, 171, 195, 0),
(@TRAINER_ID+13, 12609, 8000, 171, 200, 0),
(@TRAINER_ID+13, 11448, 9000, 171, 205, 0),
(@TRAINER_ID+13, 11451, 8000, 171, 205, 0),
(@TRAINER_ID+13, 11457, 10000, 171, 215, 0),
(@TRAINER_ID+13, 22808, 10000, 171, 215, 0),
(@TRAINER_ID+13, 53042, 10000, 171, 50, 0),
(@TRAINER_ID+13, 63732, 2000, 171, 135, 0);

-- Master Alchemy Trainer      - @TRAINER_ID+14 -- 66
-- Grandmaster Alchemy Trainer - @TRAINER_ID+15

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN 
(1215, 1246, 1470, 2132, 2391, 2837, 3009, 3184, 3347, 3603, 3964, 4160, 4609, 4611, 4900, 5177, 5499, 5500, 11041, 11042, 11044, 11046, 11047, 16161, 16642, 16723);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
--
(1215,  @TRAINER_ID+11), -- Alchemist Mallory <Journeyman Alchemist>
(1246,  @TRAINER_ID+11), -- Vosur Brakthel <Journeyman Alchemist>
(1470,  @TRAINER_ID+11), -- Ghak Healtouch <Journeyman Alchemist>
(2132,  @TRAINER_ID+11), -- Carolai Anise <Journeyman Alchemist>
(3184,  @TRAINER_ID+11), -- Miao'zan <Journeyman Alchemist>
(3603,  @TRAINER_ID+11), -- Cyndra Kindwhisper <Journeyman Alchemist>
(5500,  @TRAINER_ID+11), -- Tel'Athir <Journeyman Alchemist>
(11041, @TRAINER_ID+11), -- Milla Fairancora <Journeyman Alchemist>
(11044, @TRAINER_ID+11), -- Doctor Martin Felben <Journeyman Alchemist Trainer>
(11046, @TRAINER_ID+11), -- Whuut <Journeyman Alchemist>
(11047, @TRAINER_ID+11), -- Kray <Journeyman Alchemist>
(16161, @TRAINER_ID+11), -- Arcanist Sheynathren <Alchemy Trainer>
--
(2391,  @TRAINER_ID+12), -- Serge Hinott <Expert Alchemist>
(2837,  @TRAINER_ID+12), -- Jaxin Chong <Expert Alchemist>
(3009,  @TRAINER_ID+12), -- Bena Winterhoof <Expert Alchemist>
(3347,  @TRAINER_ID+12), -- Yelmak <Expert Alchemist>
(3964,  @TRAINER_ID+12), -- Kylanna <Expert Alchemist>
(4609,  @TRAINER_ID+12), -- Doctor Marsh <Expert Alchemist>
(4900,  @TRAINER_ID+12), -- Alchemist Narett <Expert Alchemist>
(5177,  @TRAINER_ID+12), -- Tally Berryfizz <Expert Alchemist>
(5499,  @TRAINER_ID+12), -- Lilyssia Nightbreeze <Expert Alchemist>
(11042, @TRAINER_ID+12), -- Sylvanna Forestmoon <Expert Alchemist>
(16642, @TRAINER_ID+12), -- Camberon <Alchemy Trainer>
(16723, @TRAINER_ID+12), -- Lucc <Alchemy Trainer>
--
(4160,  @TRAINER_ID+13), -- Artisan Alchemist
(4611,  @TRAINER_ID+13); -- Doctor Herbert Halsey <Artisan Alchemist>

DELETE FROM `trainer_spell` WHERE `TrainerId` IN (@TRAINER_ID+16,  @TRAINER_ID+17,  @TRAINER_ID+18);
INSERT INTO `trainer_spell` (`TrainerId`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
-- Journeyman Blacksmith
(@TRAINER_ID+16, 2020, 10, 0, 0, 5),
(@TRAINER_ID+16, 2662, 50, 164, 1, 0),
(@TRAINER_ID+16, 2737, 50, 164, 15, 0),
(@TRAINER_ID+16, 2738, 50, 164, 20, 0),
(@TRAINER_ID+16, 3319, 50, 164, 20, 0),
(@TRAINER_ID+16, 2739, 50, 164, 25, 0),
(@TRAINER_ID+16, 3320, 100, 164, 25, 0),
(@TRAINER_ID+16, 8880, 100, 164, 30, 0),
(@TRAINER_ID+16, 9983, 100, 164, 30, 0),
(@TRAINER_ID+16, 2661, 100, 164, 35, 0),
(@TRAINER_ID+16, 3293, 250, 164, 35, 0),
(@TRAINER_ID+16, 3323, 100, 164, 40, 0),
(@TRAINER_ID+16, 3324, 200, 164, 45, 0),
(@TRAINER_ID+16, 2665, 100, 164, 65, 0),
(@TRAINER_ID+16, 3116, 100, 164, 65, 0),
(@TRAINER_ID+16, 7408, 300, 164, 65, 0),
(@TRAINER_ID+16, 2666, 200, 164, 70, 0),
(@TRAINER_ID+16, 3294, 500, 164, 70, 0),
(@TRAINER_ID+16, 3326, 250, 164, 75, 0),
-- Expert Blacksmith
(@TRAINER_ID+17, 2020, 10, 0, 0, 5),
(@TRAINER_ID+17, 2662, 50, 164, 1, 0),
(@TRAINER_ID+17, 2737, 50, 164, 15, 0),
(@TRAINER_ID+17, 2738, 50, 164, 20, 0),
(@TRAINER_ID+17, 3319, 50, 164, 20, 0),
(@TRAINER_ID+17, 2739, 50, 164, 25, 0),
(@TRAINER_ID+17, 3320, 100, 164, 25, 0),
(@TRAINER_ID+17, 8880, 100, 164, 30, 0),
(@TRAINER_ID+17, 9983, 100, 164, 30, 0),
(@TRAINER_ID+17, 2661, 100, 164, 35, 0),
(@TRAINER_ID+17, 3293, 250, 164, 35, 0),
(@TRAINER_ID+17, 3323, 100, 164, 40, 0),
(@TRAINER_ID+17, 3324, 200, 164, 45, 0),
(@TRAINER_ID+17, 2665, 100, 164, 65, 0),
(@TRAINER_ID+17, 3116, 100, 164, 65, 0),
(@TRAINER_ID+17, 7408, 300, 164, 65, 0),
(@TRAINER_ID+17, 2666, 200, 164, 70, 0),
(@TRAINER_ID+17, 3294, 500, 164, 70, 0),
(@TRAINER_ID+17, 3326, 250, 164, 75, 0),
(@TRAINER_ID+17, 2021, 500, 164, 50, 10),
(@TRAINER_ID+17, 2664, 500, 164, 90, 0),
(@TRAINER_ID+17, 3292, 500, 164, 90, 0),
(@TRAINER_ID+17, 7817, 200, 164, 95, 0),
(@TRAINER_ID+17, 3491, 600, 164, 100, 0),
(@TRAINER_ID+17, 7818, 100, 164, 100, 0),
(@TRAINER_ID+17, 19666, 600, 164, 100, 0),
(@TRAINER_ID+17, 2668, 300, 164, 105, 0),
(@TRAINER_ID+17, 2670, 500, 164, 105, 0),
(@TRAINER_ID+17, 2740, 200, 164, 110, 0),
(@TRAINER_ID+17, 3328, 1000, 164, 110, 0),
(@TRAINER_ID+17, 6517, 800, 164, 110, 0),
(@TRAINER_ID+17, 2741, 200, 164, 115, 0),
(@TRAINER_ID+17, 2672, 500, 164, 120, 0),
(@TRAINER_ID+17, 2742, 200, 164, 120, 0),
(@TRAINER_ID+17, 2674, 1000, 164, 125, 0),
(@TRAINER_ID+17, 3117, 1000, 164, 125, 0),
(@TRAINER_ID+17, 3337, 1000, 164, 125, 0),
(@TRAINER_ID+17, 9985, 250, 164, 125, 0),
(@TRAINER_ID+17, 3296, 1000, 164, 130, 0),
(@TRAINER_ID+17, 3331, 500, 164, 130, 0),
(@TRAINER_ID+17, 9986, 500, 164, 130, 0),
(@TRAINER_ID+17, 3333, 1000, 164, 135, 0),
(@TRAINER_ID+17, 9987, 500, 164, 135, 0),
(@TRAINER_ID+17, 2675, 1000, 164, 145, 0),
(@TRAINER_ID+17, 8768, 250, 164, 150, 0),
(@TRAINER_ID+17, 14379, 250, 164, 150, 0),
(@TRAINER_ID+17, 19667, 250, 164, 150, 0),
-- Artisan Blacksmith
(@TRAINER_ID+18, 2020, 10, 0, 0, 5),
(@TRAINER_ID+18, 2662, 50, 164, 1, 0),
(@TRAINER_ID+18, 2737, 50, 164, 15, 0),
(@TRAINER_ID+18, 2738, 50, 164, 20, 0),
(@TRAINER_ID+18, 3319, 50, 164, 20, 0),
(@TRAINER_ID+18, 2739, 50, 164, 25, 0),
(@TRAINER_ID+18, 3320, 100, 164, 25, 0),
(@TRAINER_ID+18, 8880, 100, 164, 30, 0),
(@TRAINER_ID+18, 9983, 100, 164, 30, 0),
(@TRAINER_ID+18, 2661, 100, 164, 35, 0),
(@TRAINER_ID+18, 3293, 250, 164, 35, 0),
(@TRAINER_ID+18, 3323, 100, 164, 40, 0),
(@TRAINER_ID+18, 3324, 200, 164, 45, 0),
(@TRAINER_ID+18, 2665, 100, 164, 65, 0),
(@TRAINER_ID+18, 3116, 100, 164, 65, 0),
(@TRAINER_ID+18, 7408, 300, 164, 65, 0),
(@TRAINER_ID+18, 2666, 200, 164, 70, 0),
(@TRAINER_ID+18, 3294, 500, 164, 70, 0),
(@TRAINER_ID+18, 3326, 250, 164, 75, 0),
(@TRAINER_ID+18, 2021, 500, 164, 50, 10),
(@TRAINER_ID+18, 2664, 500, 164, 90, 0),
(@TRAINER_ID+18, 3292, 500, 164, 90, 0),
(@TRAINER_ID+18, 7817, 200, 164, 95, 0),
(@TRAINER_ID+18, 3491, 600, 164, 100, 0),
(@TRAINER_ID+18, 7818, 100, 164, 100, 0),
(@TRAINER_ID+18, 19666, 600, 164, 100, 0),
(@TRAINER_ID+18, 2668, 300, 164, 105, 0),
(@TRAINER_ID+18, 2670, 500, 164, 105, 0),
(@TRAINER_ID+18, 2740, 200, 164, 110, 0),
(@TRAINER_ID+18, 3328, 1000, 164, 110, 0),
(@TRAINER_ID+18, 6517, 800, 164, 110, 0),
(@TRAINER_ID+18, 2741, 200, 164, 115, 0),
(@TRAINER_ID+18, 2672, 500, 164, 120, 0),
(@TRAINER_ID+18, 2742, 200, 164, 120, 0),
(@TRAINER_ID+18, 2674, 1000, 164, 125, 0),
(@TRAINER_ID+18, 3117, 1000, 164, 125, 0),
(@TRAINER_ID+18, 3337, 1000, 164, 125, 0),
(@TRAINER_ID+18, 9985, 250, 164, 125, 0),
(@TRAINER_ID+18, 3296, 1000, 164, 130, 0),
(@TRAINER_ID+18, 3331, 500, 164, 130, 0),
(@TRAINER_ID+18, 9986, 500, 164, 130, 0),
(@TRAINER_ID+18, 3333, 1000, 164, 135, 0),
(@TRAINER_ID+18, 9987, 500, 164, 135, 0),
(@TRAINER_ID+18, 2675, 1000, 164, 145, 0),
(@TRAINER_ID+18, 8768, 250, 164, 150, 0),
(@TRAINER_ID+18, 14379, 250, 164, 150, 0),
(@TRAINER_ID+18, 19667, 250, 164, 150, 0),
(@TRAINER_ID+18, 3539, 4500, 164, 125, 20),
(@TRAINER_ID+18, 3506, 900, 164, 155, 0),
(@TRAINER_ID+18, 3501, 900, 164, 165, 0),
(@TRAINER_ID+18, 3502, 1150, 164, 170, 0),
(@TRAINER_ID+18, 15972, 7000, 164, 180, 0),
(@TRAINER_ID+18, 3508, 7000, 164, 180, 0),
(@TRAINER_ID+18, 7223, 900, 164, 185, 0),
(@TRAINER_ID+18, 9920, 2300, 164, 200, 0),
(@TRAINER_ID+18, 9918, 2300, 164, 200, 0),
(@TRAINER_ID+18, 9921, 2300, 164, 200, 0),
(@TRAINER_ID+18, 9916, 2300, 164, 200, 0),
(@TRAINER_ID+18, 14380, 2300, 164, 200, 0),
(@TRAINER_ID+18, 19668, 2300, 164, 200, 0),
(@TRAINER_ID+18, 9928, 4500, 164, 205, 0),
(@TRAINER_ID+18, 9926, 4500, 164, 205, 0),
(@TRAINER_ID+18, 9931, 4500, 164, 205, 0),
(@TRAINER_ID+18, 9993, 9000, 164, 210, 0),
(@TRAINER_ID+18, 9935, 4500, 164, 215, 0);

-- Master Blacksmithing Trainer      - @TRAINER_ID+19 - 58
-- Grandmaster Blacksmithing Trainer - @TRAINER_ID+20 - 59

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN 
(514, 957, 1241, 1383, 2998, 3136, 3174, 3355, 3478, 3557, 4258, 4596, 4605, 5511, 6299, 10266, 10276, 10277, 10278, 15400, 16669, 16724, 17245);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
--
(514,   @TRAINER_ID+16), -- Smith Argus <Journeyman Blacksmith>
(957,   @TRAINER_ID+16), -- Dane Lindgren <Journeyman Blacksmith>
(1241,  @TRAINER_ID+16), -- Tognus Flintfire <Journeyman Blacksmith>
(3174,  @TRAINER_ID+16), -- Dwukk <Journeyman Blacksmith>
(3557,  @TRAINER_ID+16), -- Guillaume Sorouy <Journeyman Blacksmith>
(4605,  @TRAINER_ID+16), -- Basil Frye <Journeyman Blacksmith>
(6299,  @TRAINER_ID+16), -- Delfrum Flintbeard <Journeyman Blacksmith>
(10266, @TRAINER_ID+16), -- Ug'thok <Journeyman Blacksmith>
(10277, @TRAINER_ID+16), -- Groum Stonebeard <Journeyman Blacksmith>
(10278, @TRAINER_ID+16), -- Thrag Stonehoof <Journeyman Blacksmith>
(15400, @TRAINER_ID+16), -- Arathel Sunforge <Blacksmithing Trainer>
(17245, @TRAINER_ID+16), -- Blacksmith Calypso <Blacksmithing Trainer & Supplies>
--
(1383,  @TRAINER_ID+17), -- Snarl <Expert Blacksmith>
(2998,  @TRAINER_ID+17), -- Karn Stonehoof <Expert Blacksmith>
(3136,  @TRAINER_ID+17), -- Clarise Gnarltree <Expert Blacksmith>
(3478,  @TRAINER_ID+17), -- Traugh <Expert Blacksmith>
(4596,  @TRAINER_ID+17), -- James Van Brunt <Expert Blacksmith>
(5511,  @TRAINER_ID+17), -- Therum Deepforge <Expert Blacksmith>
(10276, @TRAINER_ID+17), -- Rotgath Stonebeard <Expert Blacksmith>
(16669, @TRAINER_ID+17), -- Bemarrin <Blacksmithing Trainer>
(16724, @TRAINER_ID+17), -- Miall <Blacksmithing Trainer>
--
(3355,  @TRAINER_ID+18), -- Saru Steelfury <Artisan Blacksmith>
(4258,  @TRAINER_ID+18); -- Bengus Deepforge <Artisan Blacksmith>

DELETE FROM `trainer_spell` WHERE `TrainerId` IN (@TRAINER_ID+21, @TRAINER_ID+22, @TRAINER_ID+23);
INSERT INTO `trainer_spell` (`TrainerId`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
-- Journeyman Enchanter
(@TRAINER_ID+21, 7414, 10, 0, 0, 5),
(@TRAINER_ID+21, 14293, 50, 333, 10, 0),
(@TRAINER_ID+21, 7420, 50, 333, 15, 0),
(@TRAINER_ID+21, 7426, 100, 333, 40, 0),
(@TRAINER_ID+21, 7454, 100, 333, 45, 0),
(@TRAINER_ID+21, 7457, 250, 333, 50, 0),
(@TRAINER_ID+21, 7748, 250, 333, 60, 0),
(@TRAINER_ID+21, 7771, 200, 333, 70, 0),
(@TRAINER_ID+21, 14807, 200, 333, 70, 0),
-- Expert Enchanter
(@TRAINER_ID+22, 7414, 10, 0, 0, 5),
(@TRAINER_ID+22, 14293, 50, 333, 10, 0),
(@TRAINER_ID+22, 7420, 50, 333, 15, 0),
(@TRAINER_ID+22, 7426, 100, 333, 40, 0),
(@TRAINER_ID+22, 7454, 100, 333, 45, 0),
(@TRAINER_ID+22, 7457, 250, 333, 50, 0),
(@TRAINER_ID+22, 7748, 250, 333, 60, 0),
(@TRAINER_ID+22, 7771, 200, 333, 70, 0),
(@TRAINER_ID+22, 14807, 200, 333, 70, 0),
(@TRAINER_ID+22, 7415, 500, 333, 50, 10),
(@TRAINER_ID+22, 7779, 400, 333, 80, 0),
(@TRAINER_ID+22, 7788, 500, 333, 90, 0),
(@TRAINER_ID+22, 7745, 500, 333, 100, 0),
(@TRAINER_ID+22, 7795, 1000, 333, 100, 0),
(@TRAINER_ID+22, 13378, 600, 333, 105, 0),
(@TRAINER_ID+22, 13421, 800, 333, 115, 0),
(@TRAINER_ID+22, 7857, 1000, 333, 120, 0),
(@TRAINER_ID+22, 7861, 1250, 333, 125, 0),
(@TRAINER_ID+22, 7863, 1400, 333, 125, 0),
(@TRAINER_ID+22, 13485, 1500, 333, 130, 0),
(@TRAINER_ID+22, 13501, 1500, 333, 130, 0),
(@TRAINER_ID+22, 13503, 2000, 333, 140, 0),
(@TRAINER_ID+22, 13538, 2500, 333, 140, 0),
(@TRAINER_ID+22, 13529, 2400, 333, 145, 0),
(@TRAINER_ID+22, 13607, 2400, 333, 145, 0),
(@TRAINER_ID+22, 13622, 2500, 333, 150, 0),
(@TRAINER_ID+22, 13626, 2500, 333, 150, 0),
(@TRAINER_ID+22, 13628, 2500, 333, 150, 0),
-- Artisan Enchanter
(@TRAINER_ID+23, 7414, 10, 0, 0, 5),
(@TRAINER_ID+23, 14293, 50, 333, 10, 0),
(@TRAINER_ID+23, 7420, 50, 333, 15, 0),
(@TRAINER_ID+23, 7426, 100, 333, 40, 0),
(@TRAINER_ID+23, 7454, 100, 333, 45, 0),
(@TRAINER_ID+23, 7457, 250, 333, 50, 0),
(@TRAINER_ID+23, 7748, 250, 333, 60, 0),
(@TRAINER_ID+23, 7771, 200, 333, 70, 0),
(@TRAINER_ID+23, 14807, 200, 333, 70, 0),
(@TRAINER_ID+23, 7415, 500, 333, 50, 10),
(@TRAINER_ID+23, 7779, 400, 333, 80, 0),
(@TRAINER_ID+23, 7788, 500, 333, 90, 0),
(@TRAINER_ID+23, 7745, 500, 333, 100, 0),
(@TRAINER_ID+23, 7795, 1000, 333, 100, 0),
(@TRAINER_ID+23, 13378, 600, 333, 105, 0),
(@TRAINER_ID+23, 13421, 800, 333, 115, 0),
(@TRAINER_ID+23, 7857, 1000, 333, 120, 0),
(@TRAINER_ID+23, 7861, 1250, 333, 125, 0),
(@TRAINER_ID+23, 7863, 1400, 333, 125, 0),
(@TRAINER_ID+23, 13485, 1500, 333, 130, 0),
(@TRAINER_ID+23, 13501, 1500, 333, 130, 0),
(@TRAINER_ID+23, 13503, 2000, 333, 140, 0),
(@TRAINER_ID+23, 13538, 2500, 333, 140, 0),
(@TRAINER_ID+23, 13529, 2400, 333, 145, 0),
(@TRAINER_ID+23, 13607, 2400, 333, 145, 0),
(@TRAINER_ID+23, 13622, 2500, 333, 150, 0),
(@TRAINER_ID+23, 13626, 2500, 333, 150, 0),
(@TRAINER_ID+23, 13628, 2500, 333, 150, 0),
(@TRAINER_ID+23, 7416, 5000, 333, 125, 20),
(@TRAINER_ID+23, 13635, 2600, 333, 155, 0),
(@TRAINER_ID+23, 13631, 2600, 333, 155, 0),
(@TRAINER_ID+23, 14809, 2600, 333, 155, 0),
(@TRAINER_ID+23, 13637, 2800, 333, 160, 0),
(@TRAINER_ID+23, 13640, 2800, 333, 160, 0),
(@TRAINER_ID+23, 13642, 2600, 333, 165, 0),
(@TRAINER_ID+23, 13644, 2800, 333, 170, 0),
(@TRAINER_ID+23, 13648, 2600, 333, 170, 0),
(@TRAINER_ID+23, 13657, 2700, 333, 175, 0),
(@TRAINER_ID+23, 14810, 2700, 333, 175, 0),
(@TRAINER_ID+23, 13661, 3300, 333, 180, 0),
(@TRAINER_ID+23, 13659, 2900, 333, 180, 0),
(@TRAINER_ID+23, 13663, 3500, 333, 185, 0),
(@TRAINER_ID+23, 13693, 3600, 333, 195, 0),
(@TRAINER_ID+23, 13695, 3600, 333, 200, 0),
(@TRAINER_ID+23, 13700, 3600, 333, 200, 0),
(@TRAINER_ID+23, 13702, 3600, 333, 200, 0),
(@TRAINER_ID+23, 13746, 3800, 333, 205, 0),
(@TRAINER_ID+23, 13794, 3800, 333, 205, 0),
(@TRAINER_ID+23, 13822, 4000, 333, 210, 0),
(@TRAINER_ID+23, 13815, 4000, 333, 210, 0),
(@TRAINER_ID+23, 13836, 4200, 333, 215, 0),
(@TRAINER_ID+23, 13858, 4400, 333, 220, 0),
(@TRAINER_ID+23, 13890, 4500, 333, 225, 0),
(@TRAINER_ID+23, 13887, 4500, 333, 225, 0);

-- Master Enchanting Trainer      - @TRAINER_ID+24 - 95
-- Grandmaster Enchanting Trainer - @TRAINER_ID+25

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN 
(1317, 3011, 3345, 3606, 4213, 4616, 5157, 5695, 7949, 11065, 11066, 11067, 11068, 11070, 11071, 11072, 11074, 16160, 16633, 16725, 19251);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
--
(3606,  @TRAINER_ID+21), -- Alanna Raveneye <Journeyman Enchanter>
(5695,  @TRAINER_ID+21), -- Vance Undergloom <Journeyman Enchanter>
(11065, @TRAINER_ID+21), -- Thonys Pillarstone <Journeyman Enchanter>
(11066, @TRAINER_ID+21), -- Jhag <Journeyman Enchanter>
(11067, @TRAINER_ID+21), -- Malcomb Wynn <Journeyman Enchanter>
(11068, @TRAINER_ID+21), -- Betty Quin <Journeyman Enchanter>
(11070, @TRAINER_ID+21), -- Lalina Summermoon <Journeyman Enchanter>
(11071, @TRAINER_ID+21), -- Mot Dawnstrider <Journeyman Enchanter>
(16160, @TRAINER_ID+21), -- Magistrix Eredania <Enchanting Trainer>
(19251, @TRAINER_ID+21), -- Enchantress Volali <Enchanting Trainer>
--
(1317,  @TRAINER_ID+22), -- Lucan Cordell <Expert Enchanter>
(3011,  @TRAINER_ID+22), -- Teg Dawnstrider <Expert Enchanter>
(3345,  @TRAINER_ID+22), -- Godan <Expert Enchanter>
(4213,  @TRAINER_ID+22), -- Taladan <Expert Enchanter>
(4616,  @TRAINER_ID+22), -- Lavinia Crowe <Expert Enchanter>
(5157,  @TRAINER_ID+22), -- Gimble Thistlefuzz <Expert Enchanter>
(7949,  @TRAINER_ID+22), -- Xylinnia Starshine <Expert Enchanter>
(16633, @TRAINER_ID+22), -- Sedana <Enchanting Trainer>
(16725, @TRAINER_ID+22), -- Nahogg <Enchanting Trainer>
--
(11072, @TRAINER_ID+23), -- Kitta Firewind <Artisan Enchanter>
(11074, @TRAINER_ID+23); -- Hgarth <Artisan Enchanter>

DELETE FROM `trainer_spell` WHERE `TrainerId` IN (@TRAINER_ID+26, @TRAINER_ID+27, @TRAINER_ID+28);
INSERT INTO `trainer_spell` (`TrainerId`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
-- Journeyman Engineering
(@TRAINER_ID+26, 4039, 10, 0, 0, 5),
(@TRAINER_ID+26, 3922, 115, 202, 30, 0),
(@TRAINER_ID+26, 3923, 130, 202, 30, 0),
(@TRAINER_ID+26, 7430, 150, 202, 50, 0),
(@TRAINER_ID+26, 3924, 150, 202, 50, 0),
(@TRAINER_ID+26, 3925, 150, 202, 50, 0),
(@TRAINER_ID+26, 3977, 200, 202, 60, 0),
(@TRAINER_ID+26, 3926, 225, 202, 65, 0),
(@TRAINER_ID+26, 3929, 250, 202, 75, 0),
(@TRAINER_ID+26, 3931, 250, 202, 75, 0),
(@TRAINER_ID+26, 3930, 250, 202, 75, 0),
-- Expert Engineering
(@TRAINER_ID+27, 4039, 10, 0, 0, 5),
(@TRAINER_ID+27, 3922, 115, 202, 30, 0),
(@TRAINER_ID+27, 3923, 130, 202, 30, 0),
(@TRAINER_ID+27, 7430, 150, 202, 50, 0),
(@TRAINER_ID+27, 3924, 150, 202, 50, 0),
(@TRAINER_ID+27, 3925, 150, 202, 50, 0),
(@TRAINER_ID+27, 3977, 200, 202, 60, 0),
(@TRAINER_ID+27, 3926, 225, 202, 65, 0),
(@TRAINER_ID+27, 3929, 250, 202, 75, 0),
(@TRAINER_ID+27, 3931, 250, 202, 75, 0),
(@TRAINER_ID+27, 3930, 250, 202, 75, 0),
(@TRAINER_ID+27, 4040, 500, 202, 50, 10),
(@TRAINER_ID+27, 3932, 300, 202, 85, 0),
(@TRAINER_ID+27, 3973, 300, 202, 90, 0),
(@TRAINER_ID+27, 3934, 400, 202, 100, 0),
(@TRAINER_ID+27, 8334, 300, 202, 100, 0),
(@TRAINER_ID+27, 3938, 450, 202, 105, 0),
(@TRAINER_ID+27, 3936, 400, 202, 105, 0),
(@TRAINER_ID+27, 3937, 420, 202, 105, 0),
(@TRAINER_ID+27, 3978, 450, 202, 110, 0),
(@TRAINER_ID+27, 3941, 475, 202, 120, 0),
(@TRAINER_ID+27, 3947, 300, 202, 125, 0),
(@TRAINER_ID+27, 3945, 480, 202, 125, 0),
(@TRAINER_ID+27, 3946, 480, 202, 125, 0),
(@TRAINER_ID+27, 3942, 480, 202, 125, 0),
(@TRAINER_ID+27, 3949, 500, 202, 130, 0),
(@TRAINER_ID+27, 6458, 370, 202, 135, 0),
(@TRAINER_ID+27, 3950, 550, 202, 140, 0),
(@TRAINER_ID+27, 3953, 550, 202, 145, 0),
(@TRAINER_ID+27, 9271, 470, 202, 150, 0),
(@TRAINER_ID+27, 3955, 700, 202, 150, 0),
(@TRAINER_ID+27, 12584, 1000, 202, 150, 0),
(@TRAINER_ID+27, 3956, 700, 202, 150, 0),
-- Artisan Engineering
(@TRAINER_ID+28, 4039, 10, 0, 0, 5),
(@TRAINER_ID+28, 3922, 115, 202, 30, 0),
(@TRAINER_ID+28, 3923, 130, 202, 30, 0),
(@TRAINER_ID+28, 7430, 150, 202, 50, 0),
(@TRAINER_ID+28, 3924, 150, 202, 50, 0),
(@TRAINER_ID+28, 3925, 150, 202, 50, 0),
(@TRAINER_ID+28, 3977, 200, 202, 60, 0),
(@TRAINER_ID+28, 3926, 225, 202, 65, 0),
(@TRAINER_ID+28, 3929, 250, 202, 75, 0),
(@TRAINER_ID+28, 3931, 250, 202, 75, 0),
(@TRAINER_ID+28, 3930, 250, 202, 75, 0),
(@TRAINER_ID+28, 4040, 500, 202, 50, 10),
(@TRAINER_ID+28, 3932, 300, 202, 85, 0),
(@TRAINER_ID+28, 3973, 300, 202, 90, 0),
(@TRAINER_ID+28, 3934, 400, 202, 100, 0),
(@TRAINER_ID+28, 8334, 300, 202, 100, 0),
(@TRAINER_ID+28, 3938, 450, 202, 105, 0),
(@TRAINER_ID+28, 3936, 400, 202, 105, 0),
(@TRAINER_ID+28, 3937, 420, 202, 105, 0),
(@TRAINER_ID+28, 3978, 450, 202, 110, 0),
(@TRAINER_ID+28, 3941, 475, 202, 120, 0),
(@TRAINER_ID+28, 3947, 300, 202, 125, 0),
(@TRAINER_ID+28, 3945, 480, 202, 125, 0),
(@TRAINER_ID+28, 3946, 480, 202, 125, 0),
(@TRAINER_ID+28, 3942, 480, 202, 125, 0),
(@TRAINER_ID+28, 3949, 500, 202, 130, 0),
(@TRAINER_ID+28, 6458, 370, 202, 135, 0),
(@TRAINER_ID+28, 3950, 550, 202, 140, 0),
(@TRAINER_ID+28, 3953, 550, 202, 145, 0),
(@TRAINER_ID+28, 9271, 470, 202, 150, 0),
(@TRAINER_ID+28, 3955, 700, 202, 150, 0),
(@TRAINER_ID+28, 12584, 1000, 202, 150, 0),
(@TRAINER_ID+28, 3956, 700, 202, 150, 0),
(@TRAINER_ID+28, 4041, 4500, 202, 125, 20),
(@TRAINER_ID+28, 3958, 800, 202, 160, 0),
(@TRAINER_ID+28, 3961, 850, 202, 170, 0),
(@TRAINER_ID+28, 3963, 900, 202, 175, 0),
(@TRAINER_ID+28, 12590, 900, 202, 175, 0),
(@TRAINER_ID+28, 3962, 900, 202, 175, 0),
(@TRAINER_ID+28, 12585, 900, 202, 175, 0),
(@TRAINER_ID+28, 12586, 900, 202, 175, 0),
(@TRAINER_ID+28, 3965, 1100, 202, 185, 0),
(@TRAINER_ID+28, 3967, 1250, 202, 190, 0),
(@TRAINER_ID+28, 12589, 1250, 202, 195, 0),
(@TRAINER_ID+28, 15255, 1400, 202, 200, 0),
(@TRAINER_ID+28, 12591, 1400, 202, 200, 0),
(@TRAINER_ID+28, 12594, 1500, 202, 205, 0),
(@TRAINER_ID+28, 12595, 1500, 202, 205, 0),
(@TRAINER_ID+28, 12596, 1600, 202, 210, 0),
(@TRAINER_ID+28, 12599, 1650, 202, 215, 0),
(@TRAINER_ID+28, 12603, 1700, 202, 215, 0);

-- Master Engineering Trainer      - @TRAINER_ID+29 - 62
-- Grandmaster Engineering Trainer - @TRAINER_ID+30 - 89

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN 
(1676, 1702, 2857, 3290, 3412, 3494, 4586, 5174, 5518, 10993, 11017, 11025, 11026, 11028, 11029, 11031, 11037, 16667, 16726, 17222);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
--
(1702,  @TRAINER_ID+26), -- Bronk Guzzlegear <Journeyman Engineer>
(2857,  @TRAINER_ID+26), -- Thund <Journeyman Engineer>
(3290,  @TRAINER_ID+26), -- Deek Fizzlebizz <Journeyman Engineer>
(3494,  @TRAINER_ID+26), -- Tinkerwiz <Journeyman Engineer>
(4586,  @TRAINER_ID+26), -- Graham Van Talen <Journeyman Engineer>
(10993, @TRAINER_ID+26), -- Twizwick Sprocketgrind <Journeyman Engineer>
(11025, @TRAINER_ID+26), -- Mukdrak <Journeyman Engineer>
(11026, @TRAINER_ID+26), -- Sprite Jumpsprocket <Journeyman Engineer>
(11028, @TRAINER_ID+26), -- Jemma Quikswitch <Journeyman Engineer>
(11037, @TRAINER_ID+26), -- Jenna Lemkenilli <Journeyman Engineer>
(17222, @TRAINER_ID+26), -- Artificer Daelo <Engineering Trainer>
--
(1676,  @TRAINER_ID+27), -- Finbus Geargrind <Expert Engineer>
(3412,  @TRAINER_ID+27), -- Nogg <Expert Engineer>
(5518,  @TRAINER_ID+27), -- Lilliam Sparkspindle <Expert Engineer>
(11029, @TRAINER_ID+27), -- Trixie Quikswitch <Expert Engineer>
(11031, @TRAINER_ID+27), -- Franklin Lloyd <Expert Engineer>
(16667, @TRAINER_ID+27), -- Danwe <Engineering Trainer>
(16726, @TRAINER_ID+27), -- Ockil <Engineering Trainer>
--
(5174,  @TRAINER_ID+28), -- Springspindle Fizzlegear <Artisan Engineer>
(11017, @TRAINER_ID+28); -- Roxxik <Artisan Engineer>

DELETE FROM `trainer_spell` WHERE `TrainerId` IN (@TRAINER_ID+31, @TRAINER_ID+32,@TRAINER_ID+33);
INSERT INTO `trainer_spell` (`TrainerId`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
-- Journeyman Leatherworking
(@TRAINER_ID+31, 2155, 10, 0, 0, 5),
(@TRAINER_ID+31, 2153, 50, 165, 15, 0),
(@TRAINER_ID+31, 3753, 75, 165, 25, 0),
(@TRAINER_ID+31, 9060, 100, 165, 30, 0),
(@TRAINER_ID+31, 9062, 100, 165, 30, 0),
(@TRAINER_ID+31, 3816, 50, 165, 35, 0),
(@TRAINER_ID+31, 2160, 100, 165, 40, 0),
(@TRAINER_ID+31, 2161, 100, 165, 55, 0),
(@TRAINER_ID+31, 3756, 150, 165, 55, 0),
(@TRAINER_ID+31, 2162, 100, 165, 60, 0),
(@TRAINER_ID+31, 9065, 450, 165, 70, 0),
(@TRAINER_ID+31, 3759, 2000, 165, 75, 0),
-- Expert Leatherworking
(@TRAINER_ID+32, 2155, 10, 0, 0, 5),
(@TRAINER_ID+32, 2153, 50, 165, 15, 0),
(@TRAINER_ID+32, 3753, 75, 165, 25, 0),
(@TRAINER_ID+32, 9060, 100, 165, 30, 0),
(@TRAINER_ID+32, 9062, 100, 165, 30, 0),
(@TRAINER_ID+32, 3816, 50, 165, 35, 0),
(@TRAINER_ID+32, 2160, 100, 165, 40, 0),
(@TRAINER_ID+32, 2161, 100, 165, 55, 0),
(@TRAINER_ID+32, 3756, 150, 165, 55, 0),
(@TRAINER_ID+32, 2162, 100, 165, 60, 0),
(@TRAINER_ID+32, 9065, 450, 165, 70, 0),
(@TRAINER_ID+32, 3759, 2000, 165, 75, 0),
(@TRAINER_ID+32, 2154, 500, 165, 50, 10),
(@TRAINER_ID+32, 3763, 500, 165, 80, 0),
(@TRAINER_ID+32, 2159, 550, 165, 85, 0),
(@TRAINER_ID+32, 3761, 550, 165, 85, 0),
(@TRAINER_ID+32, 9068, 600, 165, 95, 0),
(@TRAINER_ID+32, 2165, 650, 165, 100, 0),
(@TRAINER_ID+32, 2167, 650, 165, 100, 0),
(@TRAINER_ID+32, 3817, 650, 165, 100, 0),
(@TRAINER_ID+32, 20648, 500, 165, 100, 0),
(@TRAINER_ID+32, 2168, 1000, 165, 110, 0),
(@TRAINER_ID+32, 7135, 1000, 165, 115, 0),
(@TRAINER_ID+32, 2166, 1400, 165, 120, 0),
(@TRAINER_ID+32, 9074, 1400, 165, 120, 0),
(@TRAINER_ID+32, 3766, 1500, 165, 125, 0),
(@TRAINER_ID+32, 9145, 1500, 165, 125, 0),
(@TRAINER_ID+32, 3768, 1200, 165, 130, 0),
(@TRAINER_ID+32, 3770, 1500, 165, 135, 0),
(@TRAINER_ID+32, 3764, 1800, 165, 145, 0),
(@TRAINER_ID+32, 3760, 2000, 165, 150, 0),
(@TRAINER_ID+32, 3780, 2000, 165, 150, 0),
(@TRAINER_ID+32, 3818, 1800, 165, 150, 0),
(@TRAINER_ID+32, 9193, 2000, 165, 150, 0),
(@TRAINER_ID+32, 9194, 2000, 165, 150, 0),
(@TRAINER_ID+32, 20649, 1800, 165, 150, 0),
-- Artisan Leatherworking
(@TRAINER_ID+33, 2155, 10, 0, 0, 5),
(@TRAINER_ID+33, 2153, 50, 165, 15, 0),
(@TRAINER_ID+33, 3753, 75, 165, 25, 0),
(@TRAINER_ID+33, 9060, 100, 165, 30, 0),
(@TRAINER_ID+33, 9062, 100, 165, 30, 0),
(@TRAINER_ID+33, 3816, 50, 165, 35, 0),
(@TRAINER_ID+33, 2160, 100, 165, 40, 0),
(@TRAINER_ID+33, 2161, 100, 165, 55, 0),
(@TRAINER_ID+33, 3756, 150, 165, 55, 0),
(@TRAINER_ID+33, 2162, 100, 165, 60, 0),
(@TRAINER_ID+33, 9065, 450, 165, 70, 0),
(@TRAINER_ID+33, 3759, 2000, 165, 75, 0),
(@TRAINER_ID+33, 2154, 500, 165, 50, 10),
(@TRAINER_ID+33, 3763, 500, 165, 80, 0),
(@TRAINER_ID+33, 2159, 550, 165, 85, 0),
(@TRAINER_ID+33, 3761, 550, 165, 85, 0),
(@TRAINER_ID+33, 9068, 600, 165, 95, 0),
(@TRAINER_ID+33, 2165, 650, 165, 100, 0),
(@TRAINER_ID+33, 2167, 650, 165, 100, 0),
(@TRAINER_ID+33, 3817, 650, 165, 100, 0),
(@TRAINER_ID+33, 20648, 500, 165, 100, 0),
(@TRAINER_ID+33, 2168, 1000, 165, 110, 0),
(@TRAINER_ID+33, 7135, 1000, 165, 115, 0),
(@TRAINER_ID+33, 2166, 1400, 165, 120, 0),
(@TRAINER_ID+33, 9074, 1400, 165, 120, 0),
(@TRAINER_ID+33, 3766, 1500, 165, 125, 0),
(@TRAINER_ID+33, 9145, 1500, 165, 125, 0),
(@TRAINER_ID+33, 3768, 1200, 165, 130, 0),
(@TRAINER_ID+33, 3770, 1500, 165, 135, 0),
(@TRAINER_ID+33, 3764, 1800, 165, 145, 0),
(@TRAINER_ID+33, 3760, 2000, 165, 150, 0),
(@TRAINER_ID+33, 3780, 2000, 165, 150, 0),
(@TRAINER_ID+33, 3818, 1800, 165, 150, 0),
(@TRAINER_ID+33, 9193, 2000, 165, 150, 0),
(@TRAINER_ID+33, 9194, 2000, 165, 150, 0),
(@TRAINER_ID+33, 20649, 1800, 165, 150, 0),
(@TRAINER_ID+33, 3812, 5000, 165, 125, 20),
(@TRAINER_ID+33, 3774, 2500, 165, 160, 0),
(@TRAINER_ID+33, 7147, 2500, 165, 160, 0),
(@TRAINER_ID+33, 7151, 2500, 165, 175, 0),
(@TRAINER_ID+33, 9196, 2500, 165, 175, 0),
(@TRAINER_ID+33, 10482, 2800, 165, 180, 0),
(@TRAINER_ID+33, 9201, 2800, 165, 180, 0),
(@TRAINER_ID+33, 9198, 2800, 165, 180, 0),
(@TRAINER_ID+33, 3776, 2800, 165, 180, 0),
(@TRAINER_ID+33, 20650, 2800, 165, 180, 0),
(@TRAINER_ID+33, 6661, 2800, 165, 190, 0),
(@TRAINER_ID+33, 7156, 2800, 165, 190, 0),
(@TRAINER_ID+33, 9206, 2800, 165, 195, 0),
(@TRAINER_ID+33, 10487, 3500, 165, 200, 0),
(@TRAINER_ID+33, 10507, 3500, 165, 205, 0),
(@TRAINER_ID+33, 10499, 3500, 165, 205, 0),
(@TRAINER_ID+33, 10518, 4000, 165, 210, 0),
(@TRAINER_ID+33, 10511, 4000, 165, 210, 0),
(@TRAINER_ID+33, 14930, 4000, 165, 225, 0),
(@TRAINER_ID+33, 14932, 4000, 165, 225, 0);

-- Master Leatherworking Trainer      - @TRAINER_ID+34 - 62
-- Grandmaster Leatherworking Trainer - @TRAINER_ID+35 - 63

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN 
(223, 1385, 1466, 1632, 3007, 3008, 3069, 3365, 3549, 3605, 3703, 3967, 4212, 4588, 5127, 5564, 5784, 5811, 8153, 11081, 11083, 11084, 11096, 16278, 16688, 16728, 17442);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
--
(223,   @TRAINER_ID+31), -- Dan Golthas <Journeyman Leatherworker>
(1466,  @TRAINER_ID+31), -- Gretta Finespindle <Journeyman Leatherworker>
(1632,  @TRAINER_ID+31), -- Adele Fielder <Journeyman Leatherworker>
(3008,  @TRAINER_ID+31), -- Mak <Journeyman Leatherworker>
(3069,  @TRAINER_ID+31), -- Chaw Stronghide <Journeyman Leatherworker>
(3549,  @TRAINER_ID+31), -- Shelene Rhobart <Journeyman Leatherworker>
(3605,  @TRAINER_ID+31), -- Nadyia Maneweaver <Journeyman Leatherworker>
(5784,  @TRAINER_ID+31), -- Waldor <Journeyman Leatherworker>
(5811,  @TRAINER_ID+31), -- Kamari <Journeyman Leatherworker>
(11083, @TRAINER_ID+31), -- Darianna <Journeyman Leatherworker>
(11096, @TRAINER_ID+31), -- Randal Worth <Journeyman Leatherworker>
(16278, @TRAINER_ID+31), -- Sathein <Leatherworking Trainer>
(17442, @TRAINER_ID+31), -- Moordo <Leatherworking Trainer>
--
(1385,  @TRAINER_ID+32), -- Brawn <Expert Leatherworker>
(3365,  @TRAINER_ID+32), -- Karolek <Expert Leatherworker>
(3703,  @TRAINER_ID+32), -- Krulmoo Fullmoon <Expert Leatherworker>
(3967,  @TRAINER_ID+32), -- Aayndia Floralwind <Expert Leatherworker>
(4588,  @TRAINER_ID+32), -- Arthur Moore <Expert Leatherworker>
(5127,  @TRAINER_ID+32), -- Fimble Finespindle <Expert Leatherworker>
(5564,  @TRAINER_ID+32), -- Simon Tanner <Expert Leatherworker>
(8153,  @TRAINER_ID+32), -- Narv Hidecrafter <Expert Leathercrafter>
(11081, @TRAINER_ID+32), -- Faldron <Expert Leatherworker>
(11084, @TRAINER_ID+32), -- Tarn <Expert Leatherworker>
(16688, @TRAINER_ID+32), -- Lynalis <Leatherworking Trainer>
(16728, @TRAINER_ID+32), -- Akham <Leatherworking Trainer>
--
(3007,  @TRAINER_ID+33), -- Una <Artisan Leatherworker>
(4212,  @TRAINER_ID+33); -- Telonis <Artisan Leatherworker>

DELETE FROM `trainer_spell` WHERE `TrainerId` IN (@TRAINER_ID+36, @TRAINER_ID+37, @TRAINER_ID+38);
INSERT INTO `trainer_spell` (`TrainerId`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
-- Journeyman Tailoring
(@TRAINER_ID+36, 3911, 10, 0, 0, 5),
(@TRAINER_ID+36, 2393, 25, 197, 1, 0),
(@TRAINER_ID+36, 3915, 25, 197, 1, 0),
(@TRAINER_ID+36, 12044, 30, 197, 1, 0),
(@TRAINER_ID+36, 2385, 50, 197, 10, 0),
(@TRAINER_ID+36, 8776, 50, 197, 10, 0),
(@TRAINER_ID+36, 12045, 50, 197, 20, 0),
(@TRAINER_ID+36, 7623, 50, 197, 30, 0),
(@TRAINER_ID+36, 7624, 50, 197, 30, 0),
(@TRAINER_ID+36, 3914, 50, 197, 30, 0),
(@TRAINER_ID+36, 3840, 100, 197, 35, 0),
(@TRAINER_ID+36, 2392, 50, 197, 40, 0),
(@TRAINER_ID+36, 2394, 50, 197, 40, 0),
(@TRAINER_ID+36, 8465, 50, 197, 40, 0),
(@TRAINER_ID+36, 3755, 100, 197, 45, 0),
(@TRAINER_ID+36, 2397, 200, 197, 60, 0),
(@TRAINER_ID+36, 3841, 200, 197, 60, 0),
(@TRAINER_ID+36, 2386, 200, 197, 65, 0),
(@TRAINER_ID+36, 2395, 300, 197, 70, 0),
(@TRAINER_ID+36, 2396, 200, 197, 70, 0),
(@TRAINER_ID+36, 3842, 300, 197, 70, 0),
(@TRAINER_ID+36, 2402, 250, 197, 75, 0),
(@TRAINER_ID+36, 2964, 100, 197, 75, 0),
(@TRAINER_ID+36, 12046, 300, 197, 75, 0),
-- Expert Tailoring
(@TRAINER_ID+37, 3911, 10, 0, 0, 5),
(@TRAINER_ID+37, 2393, 25, 197, 1, 0),
(@TRAINER_ID+37, 3915, 25, 197, 1, 0),
(@TRAINER_ID+37, 12044, 30, 197, 1, 0),
(@TRAINER_ID+37, 2385, 50, 197, 10, 0),
(@TRAINER_ID+37, 8776, 50, 197, 10, 0),
(@TRAINER_ID+37, 12045, 50, 197, 20, 0),
(@TRAINER_ID+37, 7623, 50, 197, 30, 0),
(@TRAINER_ID+37, 7624, 50, 197, 30, 0),
(@TRAINER_ID+37, 3914, 50, 197, 30, 0),
(@TRAINER_ID+37, 3840, 100, 197, 35, 0),
(@TRAINER_ID+37, 2392, 50, 197, 40, 0),
(@TRAINER_ID+37, 2394, 50, 197, 40, 0),
(@TRAINER_ID+37, 8465, 50, 197, 40, 0),
(@TRAINER_ID+37, 3755, 100, 197, 45, 0),
(@TRAINER_ID+37, 2397, 200, 197, 60, 0),
(@TRAINER_ID+37, 3841, 200, 197, 60, 0),
(@TRAINER_ID+37, 2386, 200, 197, 65, 0),
(@TRAINER_ID+37, 2395, 300, 197, 70, 0),
(@TRAINER_ID+37, 2396, 200, 197, 70, 0),
(@TRAINER_ID+37, 3842, 300, 197, 70, 0),
(@TRAINER_ID+37, 2402, 250, 197, 75, 0),
(@TRAINER_ID+37, 2964, 100, 197, 75, 0),
(@TRAINER_ID+37, 12046, 300, 197, 75, 0),
(@TRAINER_ID+37, 3912, 500, 197, 50, 10),
(@TRAINER_ID+37, 3757, 200, 197, 80, 0),
(@TRAINER_ID+37, 3845, 300, 197, 80, 0),
(@TRAINER_ID+37, 2399, 300, 197, 85, 0),
(@TRAINER_ID+37, 3843, 400, 197, 85, 0),
(@TRAINER_ID+37, 6521, 400, 197, 90, 0),
(@TRAINER_ID+37, 2401, 300, 197, 95, 0),
(@TRAINER_ID+37, 2406, 200, 197, 100, 0),
(@TRAINER_ID+37, 3848, 500, 197, 110, 0),
(@TRAINER_ID+37, 3850, 500, 197, 110, 0),
(@TRAINER_ID+37, 3866, 250, 197, 110, 0),
(@TRAINER_ID+37, 8467, 250, 197, 110, 0),
(@TRAINER_ID+37, 3839, 500, 197, 125, 0),
(@TRAINER_ID+37, 3855, 700, 197, 125, 0),
(@TRAINER_ID+37, 3852, 700, 197, 130, 0),
(@TRAINER_ID+37, 6690, 1000, 197, 135, 0),
(@TRAINER_ID+37, 8758, 600, 197, 140, 0),
(@TRAINER_ID+37, 8760, 600, 197, 145, 0),
(@TRAINER_ID+37, 3813, 750, 197, 150, 0),
(@TRAINER_ID+37, 3859, 700, 197, 150, 0),
-- Artisan Tailoring
(@TRAINER_ID+38, 3911, 10, 0, 0, 5),
(@TRAINER_ID+38, 2393, 25, 197, 1, 0),
(@TRAINER_ID+38, 3915, 25, 197, 1, 0),
(@TRAINER_ID+38, 12044, 30, 197, 1, 0),
(@TRAINER_ID+38, 2385, 50, 197, 10, 0),
(@TRAINER_ID+38, 8776, 50, 197, 10, 0),
(@TRAINER_ID+38, 12045, 50, 197, 20, 0),
(@TRAINER_ID+38, 7623, 50, 197, 30, 0),
(@TRAINER_ID+38, 7624, 50, 197, 30, 0),
(@TRAINER_ID+38, 3914, 50, 197, 30, 0),
(@TRAINER_ID+38, 3840, 100, 197, 35, 0),
(@TRAINER_ID+38, 2392, 50, 197, 40, 0),
(@TRAINER_ID+38, 2394, 50, 197, 40, 0),
(@TRAINER_ID+38, 8465, 50, 197, 40, 0),
(@TRAINER_ID+38, 3755, 100, 197, 45, 0),
(@TRAINER_ID+38, 2397, 200, 197, 60, 0),
(@TRAINER_ID+38, 3841, 200, 197, 60, 0),
(@TRAINER_ID+38, 2386, 200, 197, 65, 0),
(@TRAINER_ID+38, 2395, 300, 197, 70, 0),
(@TRAINER_ID+38, 2396, 200, 197, 70, 0),
(@TRAINER_ID+38, 3842, 300, 197, 70, 0),
(@TRAINER_ID+38, 2402, 250, 197, 75, 0),
(@TRAINER_ID+38, 2964, 100, 197, 75, 0),
(@TRAINER_ID+38, 12046, 300, 197, 75, 0),
(@TRAINER_ID+38, 3912, 500, 197, 50, 10),
(@TRAINER_ID+38, 3757, 200, 197, 80, 0),
(@TRAINER_ID+38, 3845, 300, 197, 80, 0),
(@TRAINER_ID+38, 2399, 300, 197, 85, 0),
(@TRAINER_ID+38, 3843, 400, 197, 85, 0),
(@TRAINER_ID+38, 6521, 400, 197, 90, 0),
(@TRAINER_ID+38, 2401, 300, 197, 95, 0),
(@TRAINER_ID+38, 2406, 200, 197, 100, 0),
(@TRAINER_ID+38, 3848, 500, 197, 110, 0),
(@TRAINER_ID+38, 3850, 500, 197, 110, 0),
(@TRAINER_ID+38, 3866, 250, 197, 110, 0),
(@TRAINER_ID+38, 8467, 250, 197, 110, 0),
(@TRAINER_ID+38, 3839, 500, 197, 125, 0),
(@TRAINER_ID+38, 3855, 700, 197, 125, 0),
(@TRAINER_ID+38, 3852, 700, 197, 130, 0),
(@TRAINER_ID+38, 6690, 1000, 197, 135, 0),
(@TRAINER_ID+38, 8758, 600, 197, 140, 0),
(@TRAINER_ID+38, 8760, 600, 197, 145, 0),
(@TRAINER_ID+38, 3813, 750, 197, 150, 0),
(@TRAINER_ID+38, 3859, 700, 197, 150, 0),
(@TRAINER_ID+38, 3913, 5000, 197, 125, 20),
(@TRAINER_ID+38, 8483, 500, 197, 160, 0),
(@TRAINER_ID+38, 8762, 700, 197, 160, 0),
(@TRAINER_ID+38, 3871, 500, 197, 170, 0),
(@TRAINER_ID+38, 8764, 850, 197, 170, 0),
(@TRAINER_ID+38, 8489, 700, 197, 175, 0),
(@TRAINER_ID+38, 8766, 950, 197, 175, 0),
(@TRAINER_ID+38, 8772, 950, 197, 175, 0),
(@TRAINER_ID+38, 3865, 950, 197, 175, 0),
(@TRAINER_ID+38, 8774, 950, 197, 180, 0),
(@TRAINER_ID+38, 3861, 950, 197, 185, 0),
(@TRAINER_ID+38, 8791, 23000, 197, 185, 0),
(@TRAINER_ID+38, 8770, 950, 197, 190, 0),
(@TRAINER_ID+38, 8799, 3000, 197, 195, 0),
(@TRAINER_ID+38, 12048, 4000, 197, 205, 0),
(@TRAINER_ID+38, 12049, 4000, 197, 205, 0),
(@TRAINER_ID+38, 8804, 5000, 197, 210, 0),
(@TRAINER_ID+38, 12050, 4000, 197, 210, 0),
(@TRAINER_ID+38, 12053, 5000, 197, 215, 0),
(@TRAINER_ID+38, 12061, 2500, 197, 215, 0),
(@TRAINER_ID+38, 12065, 5000, 197, 225, 0),
(@TRAINER_ID+38, 12067, 5000, 197, 225, 0),
(@TRAINER_ID+38, 12069, 5000, 197, 225, 0),
(@TRAINER_ID+38, 12070, 5000, 197, 225, 0);

-- Master Tailoring Trainer      - @TRAINER_ID+39 - 73
-- Grandmaster Tailoring Trainer - @TRAINER_ID+40 - 72

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN 
(1103, 1300, 1346, 1703, 2627, 2855, 3004, 3363, 3484, 3523, 3704, 4159, 4193, 4576, 5153, 5567, 11048, 11049, 11050, 11051, 16366, 16640, 16729, 17487);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
--
(1103,  @TRAINER_ID+36), -- Eldrin <Journeyman Tailor>
(1300,  @TRAINER_ID+36), -- Lawrence Schneider <Journeyman Tailor>
(1703,  @TRAINER_ID+36), -- Uthrar Threx <Journeyman Tailor>
(2855,  @TRAINER_ID+36), -- Snang <Journeyman Tailor>
(3484,  @TRAINER_ID+36), -- Kil'hala <Journeyman Tailor>
(3523,  @TRAINER_ID+36), -- Bowen Brisboise <Journeyman Tailor>
(4193,  @TRAINER_ID+36), -- Grondal Moonbreeze <Journeyman Tailor>
(11048, @TRAINER_ID+36), -- Victor Ward <Journeyman Tailor>
(11050, @TRAINER_ID+36), -- Trianna <Journeyman Tailor>
(11051, @TRAINER_ID+36), -- Vhan <Journeyman Tailor>
(16366, @TRAINER_ID+36), -- Sempstress Ambershine <Tailoring Trainer>
(17487, @TRAINER_ID+36), -- Erin Kelly <Tailoring Trainer>
--
(2627,  @TRAINER_ID+37), -- Grarnik Goodstitch <Expert Tailor>
(3004,  @TRAINER_ID+37), -- Tepa <Expert Tailor>
(3363,  @TRAINER_ID+37), -- Magar <Expert Tailor>
(3704,  @TRAINER_ID+37), -- Mahani <Expert Tailor>
(4159,  @TRAINER_ID+37), -- Me'lynn <Expert Tailor>
(5153,  @TRAINER_ID+37), -- Jormund Stonebrow <Expert Tailor>
(5567,  @TRAINER_ID+37), -- Sellandus <Expert Tailor>
(11049, @TRAINER_ID+37), -- Rhiannon Davis <Expert Tailor>
(16640, @TRAINER_ID+37), -- Keelen Sheets <Tailoring Trainer>
(16729, @TRAINER_ID+37), -- Refik <Tailoring Trainer>
--
(1346,  @TRAINER_ID+38), -- Georgio Bolero <Artisan Tailor>
(4576,  @TRAINER_ID+38); -- Josef Gregorian <Artisan Tailor>


/* Gathering Professions */

-- Herbalism
DELETE FROM `trainer_spell` WHERE `TrainerId` = @TRAINER_ID+41;
INSERT INTO `trainer_spell` (`TrainerId`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(@TRAINER_ID+41, 2372, 10, 0, 0, 1),
(@TRAINER_ID+41, 2373, 500, 182, 50, 1),
(@TRAINER_ID+41, 3571, 5000, 182, 125, 10),
(@TRAINER_ID+41, 11994, 50000, 182, 200, 25);

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (2114, 3013, 3185);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
--
(2114, @TRAINER_ID+41), -- Faruza <Apprentice Herbalist>
(3013, @TRAINER_ID+41), -- Komin Winterhoof <Herbalism Trainer>
(3185, @TRAINER_ID+41); -- Mishiki <Herbalist>

-- Mining
DELETE FROM `trainer_spell` WHERE `TrainerId` = @TRAINER_ID+42;
INSERT INTO `trainer_spell` (`TrainerId`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(@TRAINER_ID+42, 2581, 10, 186, 0, 1),
(@TRAINER_ID+42, 2582, 500, 186, 50, 1),
(@TRAINER_ID+42, 2658, 200, 186, 75, 0),
(@TRAINER_ID+42, 2659, 200, 186, 65, 0),
(@TRAINER_ID+42, 3304, 50, 186, 65, 0),
(@TRAINER_ID+42, 3307, 500, 186, 125, 0),
(@TRAINER_ID+42, 3308, 2500, 186, 155, 0),
(@TRAINER_ID+42, 3568, 5000, 186, 125, 10),
(@TRAINER_ID+42, 3569, 2500, 186, 165, 0),
(@TRAINER_ID+42, 10097, 5000, 186, 175, 0),
(@TRAINER_ID+42, 10249, 50000, 186, 200, 25),
(@TRAINER_ID+42, 10098, 10000, 186, 230, 0),
(@TRAINER_ID+42, 16153, 20000, 186, 250, 0);

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (3001, 3175, 3357, 5513);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
--
(3001, @TRAINER_ID+42), -- Brek Stonehoof <Mining Trainer>
(3175, @TRAINER_ID+42), -- Krunn <Miner>
(3357, @TRAINER_ID+42), -- Makaru <Mining Trainer>
(5513, @TRAINER_ID+42); -- Gelman Stonehand <Mining Trainer>

-- Skinning
DELETE FROM `trainer_spell` WHERE `TrainerId` = @TRAINER_ID+43;
INSERT INTO `trainer_spell` (`TrainerId`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(@TRAINER_ID+43, 8615, 10, 0, 0, 1),
(@TRAINER_ID+43, 8619, 500, 393, 50, 1),
(@TRAINER_ID+43, 8620, 5000, 393, 125, 10),
(@TRAINER_ID+43, 10769, 50000, 393, 200, 25);

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (6289, 6290, 6387, 7088, 7089);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
--
(6289, @TRAINER_ID+43), -- Rand Rhobart <Skinner>
(6290, @TRAINER_ID+43), -- Yonn Deepcut <Skinner>
(6387, @TRAINER_ID+43), -- Dranh <Skinner>
(7088, @TRAINER_ID+43), -- Thuwd <Skinning Trainer>
(7089, @TRAINER_ID+43); -- Mooranta <Skinning Trainer>


/* Secondary Skills */

-- Cooking
DELETE FROM `trainer_spell` WHERE `TrainerId` = @TRAINER_ID+44;
INSERT INTO `trainer_spell` (`TrainerId`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(@TRAINER_ID+44, 2551, 100, 0, 0, 5),
(@TRAINER_ID+44, 2539, 50, 185, 10, 0),
(@TRAINER_ID+44, 2541, 100, 185, 50, 0),
(@TRAINER_ID+44, 3412, 500, 185, 50, 10),
(@TRAINER_ID+44, 6499, 100, 185, 50, 0),
(@TRAINER_ID+44, 2544, 200, 185, 75, 0),
(@TRAINER_ID+44, 2546, 150, 185, 80, 0),
(@TRAINER_ID+44, 6500, 300, 185, 125, 0),
(@TRAINER_ID+44, 21175, 4000, 185, 200, 0);

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (1430, 3026, 3399, 5482, 8306);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
--
(1430, @TRAINER_ID+44), -- Tomas <Cook>
(3026, @TRAINER_ID+44), -- Aska Mistrunner <Cooking Trainer>
(3399, @TRAINER_ID+44), -- Zamja <Cooking Trainer>
(5482, @TRAINER_ID+44), -- Stephen Ryback <Cooking Trainer>
(8306, @TRAINER_ID+44); -- Duhng <Cook>

-- First Aid
DELETE FROM `trainer_spell` WHERE `TrainerId` IN (@TRAINER_ID+45, @TRAINER_ID+46);
INSERT INTO `trainer_spell` (`TrainerId`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
--
(@TRAINER_ID+45, 3279, 100, 0, 0, 1),
(@TRAINER_ID+45, 3276, 100, 129, 40, 0),
(@TRAINER_ID+45, 3280, 500, 129, 50, 0),
(@TRAINER_ID+45, 3277, 250, 129, 80, 0),
(@TRAINER_ID+45, 7934, 250, 129, 80, 0),
(@TRAINER_ID+45, 3278, 1000, 129, 115, 0),
(@TRAINER_ID+45, 7928, 5000, 129, 150, 0),
--
(@TRAINER_ID+46, 10843, 0, 129, 240, 0),
(@TRAINER_ID+46, 18631, 0, 129, 260, 35),
(@TRAINER_ID+46, 18632, 0, 129, 290, 35);

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (2326, 2327, 2329, 2798, 3181, 3373, 4211, 4591, 5150, 5759, 5939, 5943, 6094, 16272, 16662, 16731, 17214, 17424, 19184, 19478, 22477, 12920, 12939);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
--
(2326,  @TRAINER_ID+45), -- Thamner Pol <Physician> 
(2327,  @TRAINER_ID+45), -- Shaina Fuller <First Aid Trainer>
(2329,  @TRAINER_ID+45), -- Michelle Belle <Physician>
(2798,  @TRAINER_ID+45), -- Pand Stonebinder <First Aid Trainer>
(3181,  @TRAINER_ID+45), -- Fremal Doohickey <First Aid Trainer>
(3373,  @TRAINER_ID+45), -- Arnok <First Aid Trainer>
(4211,  @TRAINER_ID+45), -- Dannelor <First Aid Trainer>
(4591,  @TRAINER_ID+45), -- Mary Edras <First Aid Trainer>
(5150,  @TRAINER_ID+45), -- Nissa Firestone <First Aid Trainer>
(5759,  @TRAINER_ID+45), -- Nurse Neela <First Aid Trainer>
(5939,  @TRAINER_ID+45), -- Vira Younghoof <First Aid Trainer>
(5943,  @TRAINER_ID+45), -- Rawrk <First Aid Trainer>
(6094,  @TRAINER_ID+45), -- Byancie <First Aid Trainer> 
(16272, @TRAINER_ID+45), -- Kanaria <First Aid Trainer>
(16662, @TRAINER_ID+45), -- Alestus <First Aid Trainer> 
(16731, @TRAINER_ID+45), -- Nus <First Aid Trainer>
(17214, @TRAINER_ID+45), -- Anchorite Fateema <First Aid Trainer>
(17424, @TRAINER_ID+45), -- Anchorite Paetheus <First Aid Trainer>
(19184, @TRAINER_ID+45), -- Mildred Fletcher <Physician>
(19478, @TRAINER_ID+45), -- Fera Palerunner <First Aid Trainer>
(22477, @TRAINER_ID+45), -- Anchorite Ensham <First Aid Trainer>
--
(12920, @TRAINER_ID+46), -- Doctor Gregory Victor <Trauma Surgeon>
(12939, @TRAINER_ID+46); -- Doctor Gustaf VanHowzen <Trauma Surgeon>

UPDATE `creature_template` SET `npcflag` = 83 WHERE `entry` IN (12920, 12939);

-- Fishing
DELETE FROM `trainer_spell` WHERE `TrainerId` = @TRAINER_ID+47;
INSERT INTO `trainer_spell` (`TrainerId`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(@TRAINER_ID+47, 7733, 100, 0, 0, 5),
(@TRAINER_ID+47, 7734, 500, 356, 50, 10);

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (1651, 3028, 3332, 5493, 5690, 5938);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
--
(1651, @TRAINER_ID+47), -- Lee Brown <Fisherman>, Elwynn Forest
(3028, @TRAINER_ID+47), -- Kah Mistrunner <Fishing Trainer>
(3332, @TRAINER_ID+47), -- Lumak <Fishing Trainer>
(5493, @TRAINER_ID+47), -- Arnold Leland <Fishing Trainer>
(5690, @TRAINER_ID+47), -- Clyde Kellen <Fisherman>
(5938, @TRAINER_ID+47); -- Uthan Stillwater <Fisherman>

-- pre_t4 Leatherworking trainer
DELETE FROM `trainer_spell` WHERE `TrainerId` = @TRAINER_ID+51;
INSERT INTO `trainer_spell` (`TrainerId`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
--
(@TRAINER_ID+51, 32454, 10000, 165, 300, 0),
(@TRAINER_ID+51, 32456, 15000, 165, 300, 0),
(@TRAINER_ID+51, 32462, 15000, 165, 300, 0),
(@TRAINER_ID+51, 32463, 20000, 165, 310, 0),
(@TRAINER_ID+51, 32464, 20000, 165, 320, 0),
(@TRAINER_ID+51, 32465, 25000, 165, 335, 0),
(@TRAINER_ID+51, 32466, 15000, 165, 300, 0),
(@TRAINER_ID+51, 32467, 20000, 165, 310, 0),
(@TRAINER_ID+51, 32468, 20000, 165, 325, 0),
(@TRAINER_ID+51, 32469, 25000, 165, 335, 0),
(@TRAINER_ID+51, 32470, 15000, 165, 300, 0),
(@TRAINER_ID+51, 32471, 20000, 165, 315, 0),
(@TRAINER_ID+51, 32472, 20000, 165, 320, 0),
(@TRAINER_ID+51, 32473, 25000, 165, 330, 0),
(@TRAINER_ID+51, 32478, 15000, 165, 300, 0),
(@TRAINER_ID+51, 32479, 20000, 165, 310, 0),
(@TRAINER_ID+51, 32480, 20000, 165, 320, 0),
(@TRAINER_ID+51, 32481, 25000, 165, 330, 0),
(@TRAINER_ID+51, 32550, 100000, 165, 275, 50),
(@TRAINER_ID+51, 35540, 20000, 165, 340, 0),
(@TRAINER_ID+51, 44970, 50000, 165, 350, 0);

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (@Darmari, @Barim, @Brumman, @Grikka);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
--
(@Darmari, @TRAINER_ID+51),
(@Barim,   @TRAINER_ID+51),
(@Brumman, @TRAINER_ID+51),
(@Grikka,  @TRAINER_ID+51);


/* Gossip Menus */

DELETE FROM `gossip_menu_option` WHERE `MenuID` IN 
(2742, 2745, 2747, 2748, 2750, 2761, 2782, 4110, 4112, 4114, 4116, 4118, 4119, 4121, 4125, 4128, 4130, 4137, 4139, 4143, 4144, 4147, 4148, 
4151, 4153, 4154, 4155, 4157, 4158, 4159, 4160, 4161, 4165, 4169, 4173, 4181, 4182, 4183, 4187, 4188, 4204, 4207, 4241, 4242, 4262, 4264, 4265, 4266, 4268, 4269, 4344, 4351, 4352);

INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`) VALUES
(2742, 0, 3, 'Train me.', 3266, 5, 16), -- Groum Stonebeard <Journeyman Blacksmith>
(2745, 0, 3, 'Train me.', 3266, 5, 16), -- Dane Lindgren <Journeyman Blacksmith>
(2747, 0, 3, 'Train me.', 3266, 5, 16), -- Ug'thok <Journeyman Blacksmith>
(2748, 0, 3, 'Train me.', 3266, 5, 16), -- Thrag Stonehoof <Journeyman Blacksmith>
(2750, 0, 3, 'Train me.', 3266, 5, 16), -- Basil Frye <Journeyman Blacksmith>
(2761, 0, 3, 'Train me.', 3266, 5, 16), -- Rotgath Stonebeard <Expert Blacksmith>
(2782, 0, 3, 'Train me.', 3266, 5, 16), -- Snarl <Expert Blacksmith>
(4110, 0, 3, 'Train me.', 3266, 5, 16), -- Alchemist Mallory <Journeyman Alchemist>
(4112, 0, 3, 'Train me.', 3266, 5, 16), -- Tel'Athir <Journeyman Alchemist>
(4114, 0, 3, 'Train me.', 3266, 5, 16), -- Milla Fairancora <Journeyman Alchemist>
(4116, 0, 3, 'Train me.', 3266, 5, 16), -- Vosur Brakthel <Journeyman Alchemist>
(4118, 0, 3, 'Train me.', 3266, 5, 16), -- Whuut <Journeyman Alchemist>
(4119, 0, 3, 'Train me.', 3266, 5, 16), -- Kray <Journeyman Alchemist>
(4121, 0, 3, 'Train me.', 3266, 5, 16), -- Doctor Martin Felben <Journeyman Alchemist Trainer>
(4125, 0, 3, 'Train me.', 3266, 5, 16), -- Sylvanna Forestmoon <Expert Alchemist>
(4128, 0, 3, 'Train me.', 3266, 5, 16), -- Bena Winterhoof <Expert Alchemist>
(4130, 0, 3, 'Train me.', 3266, 5, 16), -- Doctor Marsh <Expert Alchemist>
(4137, 0, 3, 'Train me.', 3266, 5, 16), -- Jemma Quikswitch <Journeyman Engineer>
(4139, 0, 3, 'Train me.', 3266, 5, 16), -- Sprite Jumpsprocket <Journeyman Engineer>
(4143, 0, 3, 'Train me.', 3266, 5, 16), -- Thund <Journeyman Engineer>
(4144, 0, 3, 'Train me.', 3266, 5, 16), -- Graham Van Talen <Journeyman Engineer>
(4147, 0, 3, 'Train me.', 3266, 5, 16), -- Trixie Quikswitch <Expert Engineer>
(4148, 0, 3, 'Train me.', 3266, 5, 16), -- Nogg <Expert Engineer>
(4151, 0, 3, 'Train me.', 3266, 5, 16), -- Roxxik <Artisan Engineer>
(4153, 0, 3, 'Train me.', 3266, 5, 16), -- Betty Quin <Journeyman Enchanter>
(4154, 0, 3, 'Train me.', 3266, 5, 16), -- Thonys Pillarstone <Journeyman Enchanter>
(4155, 0, 3, 'Train me.', 3266, 5, 16), -- Lalina Summermoon <Journeyman Enchanter>
(4157, 0, 3, 'Train me.', 3266, 5, 16), -- Malcomb Wynn <Journeyman Enchanter>
(4158, 0, 3, 'Train me.', 3266, 5, 16), -- Mot Dawnstrider <Journeyman Enchanter>
(4159, 0, 3, 'Train me.', 3266, 5, 16), -- Jhag <Journeyman Enchanter>
(4160, 0, 3, 'Train me.', 3266, 5, 16), -- Gimble Thistlefuzz <Expert Enchanter>
(4161, 0, 3, 'Train me.', 3266, 5, 16), -- Lucan Cordell <Expert Enchanter>
(4165, 0, 3, 'Train me.', 3266, 5, 16), -- Teg Dawnstrider <Expert Enchanter>
(4169, 0, 3, 'Train me.', 3266, 5, 16), -- Kitta Firewind <Enchanting Trainer>
(4173, 0, 3, 'Train me.', 3266, 5, 16), -- Randal Worth <Journeyman Leatherworker>
(4181, 0, 3, 'Train me.', 3266, 5, 16), -- Darianna <Journeyman Leatherworker>
(4182, 0, 3, 'Train me.', 3266, 5, 16), -- Gretta Finespindle <Journeyman Leatherworker>
(4183, 0, 3, 'Train me.', 3266, 5, 16), -- Kamari <Journeyman Leatherworker>
(4187, 0, 3, 'Train me.', 3266, 5, 16), -- Mak <Journeyman Leatherworker>
(4188, 0, 3, 'Train me.', 3266, 5, 16), -- Dan Golthas <Journeyman Leatherworker>
(4204, 0, 3, 'Train me.', 3266, 5, 16), -- Faldron <Expert Leatherworker>
(4207, 0, 3, 'Train me.', 3266, 5, 16), -- Tarn <Expert Leatherworker>
(4241, 0, 3, 'Train me.', 3266, 5, 16), -- Telonis <Artisan Leatherworker>
(4242, 0, 3, 'Train me.', 3266, 5, 16), -- Una <Artisan Leatherworker>
(4262, 0, 3, 'Train me.', 3266, 5, 16), -- Lawrence Schneider <Journeyman Tailor>
(4264, 0, 3, 'Train me.', 3266, 5, 16), -- Uthrar Threx <Journeyman Tailor>
(4265, 0, 3, 'Train me.', 3266, 5, 16), -- Snang <Journeyman Tailor>
(4266, 0, 3, 'Train me.', 3266, 5, 16), -- Vhan <Journeyman Tailor>
(4268, 0, 3, 'Train me.', 3266, 5, 16), -- Victor Ward <Journeyman Tailor>
(4269, 0, 3, 'Train me.', 3266, 5, 16), -- Trianna <Journeyman Tailor>
(4344, 0, 3, 'Train me.', 3266, 5, 16), -- Sellandus <Expert Tailor>
(4351, 0, 3, 'Train me.', 3266, 5, 16), -- Tepa <Expert Tailor>
(4352, 0, 3, 'Train me.', 3266, 5, 16); -- Rhiannon Davis <Expert Tailor>

UPDATE `creature_template` SET `subname` = 'Expert Blacksmith'        WHERE `entry` = 1383;  -- Snarl <Expert Blacksmith>
UPDATE `creature_template` SET `subname` = 'Journeyman Tailor'        WHERE `entry` = 2855;  -- Snang <Journeyman Tailor>
UPDATE `creature_template` SET `subname` = 'Journeyman Engineer'      WHERE `entry` = 2857;  -- Thund <Journeyman Engineer>
UPDATE `creature_template` SET `subname` = 'Expert Enchanter'         WHERE `entry` = 3345;  -- Godan <Expert Enchanter>
UPDATE `creature_template` SET `subname` = 'Expert Alchemist'         WHERE `entry` = 3347;  -- Yelmak <Expert Alchemist>
UPDATE `creature_template` SET `subname` = 'Artisan Blacksmith'       WHERE `entry` = 3355;  -- Saru Steelfury <Artisan Blacksmith>
UPDATE `creature_template` SET `subname` = 'Expert Tailor'            WHERE `entry` = 3363;  -- Magar <Expert Tailor>
UPDATE `creature_template` SET `subname` = 'Expert Leatherworker'     WHERE `entry` = 3365;  -- Karolek <Expert Leatherworker>
UPDATE `creature_template` SET `subname` = 'Expert Engineer'          WHERE `entry` = 3412;  -- Nogg <Expert Engineer>
UPDATE `creature_template` SET `subname` = 'Journeyman Leatherworker' WHERE `entry` = 5811;  -- Kamari <Journeyman Leatherworker>
UPDATE `creature_template` SET `subname` = 'Armor Crafter'            WHERE `entry` = 7230;  -- Shayis Steelfury <Armor Crafter>
UPDATE `creature_template` SET `subname` = 'Weapon Crafter'           WHERE `entry` = 7231;  -- Kelgruk Bloodaxe <Weapon Crafter>
UPDATE `creature_template` SET `subname` = 'Journeyman Blacksmith'    WHERE `entry` = 10266; -- Ug'thok <Journeyman Blacksmith>
UPDATE `creature_template` SET `subname` = 'Artisan Engineer'         WHERE `entry` = 11017; -- Roxxik <Artisan Engineer>
UPDATE `creature_template` SET `subname` = 'Journeyman Alchemist'     WHERE `entry` = 11046; -- Whuut <Journeyman Alchemist>
UPDATE `creature_template` SET `subname` = 'Journeyman Enchanter'     WHERE `entry` = 11066; -- Jhag <Journeyman Enchanter>

UPDATE `creature_template` SET `npcflag` = 81, `trainer_type` = 2 WHERE `entry` IN (1383, 2855, 2857, 3412, 5811, 10266, 11017, 11046, 11066);
UPDATE `creature_template` SET `type_flags` = 134217728 WHERE `entry` IN (1383, 3412, 11017);

DELETE FROM `npc_trainer` WHERE `ID` IN (1383, 2855, 2857, 3332, 3345, 3347, 3355, 3357, 3363, 3365, 3373, 3399, 3412, 4752, 5811, 7088, 10266, 11017, 11046, 11066);
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES 
(1383, -310000),  -- Snarl <Expert Blacksmith>
(1383, -310001),  -- Snarl <Expert Blacksmith>
(2855, -410000),  -- Snang <Journeyman Tailor>
(2857, -340000),  -- Thund <Journeyman Engineer>
(3332, -360000),  -- Lumak <Fishing Trainer>
(3345, -330000),  -- Godan <Expert Enchanter>
(3345, -330001),  -- Godan <Expert Enchanter>
(3347, -300000),  -- Yelmak <Expert Alchemist>
(3347, -300001),  -- Yelmak <Expert Alchemist>
(3355, -310000),  -- Saru Steelfury <Artisan Blacksmith>
(3355, -310001),  -- Saru Steelfury <Artisan Blacksmith>
(3355, -310002),  -- Saru Steelfury <Artisan Blacksmith>
(3357, -390000),  -- Makaru <Mining Trainer>
(3363, -410000),  -- Magar <Expert Tailor>
(3363, -410001),  -- Magar <Expert Tailor>
(3365, -380000),  -- Karolek <Expert Leatherworker>
(3365, -380001),  -- Karolek <Expert Leatherworker>
(3373, -350000),  -- Arnok <First Aid Trainer>
(3399, -320000),  -- Zamja <Cooking Trainer>
(3412, -340000),  -- Nogg <Expert Engineer>
(3412, -340001),  -- Nogg <Expert Engineer>
(4752, -450000),  -- Kildar <Riding Trainer>
(5811, -380000),  -- Kamari <Journeyman Leatherworker>
(7088, -400000),  -- Thuwd <Skinning Trainer>
(10266, -310000), -- Ug'thok <Journeyman Blacksmith>
(11017, -340000), -- Roxxik <Artisan Engineer>
(11017, -340001), -- Roxxik <Artisan Engineer>
(11017, -340002), -- Roxxik <Artisan Engineer>
(11046, -300000), -- Whuut <Journeyman Alchemist>
(11066, -330000); -- Jhag <Journeyman Enchanter>

DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (2782, 4148, 4151);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`) VALUES
(2782, 0, 3, 'Train me.', 3266, 5, 16), -- Snarl <Expert Blacksmith>
(4148, 0, 3, 'Train me.', 3266, 5, 16), -- Nogg <Expert Engineer>
(4151, 0, 3, 'Train me.', 3266, 5, 16); -- Roxxik <Artisan Engineer>

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceEntry` = 0 AND `ConditionTypeOrReference` = 7 AND `SourceGroup` IN (1012, 2782, 4126, 4148, 4151, 4168, 4209, 4347);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 1012, 0, 7, 164, 125, 'Show menu if blacksmithing is 125 or higher'), -- Saru Steelfury <Artisan Blacksmith>
(15, 2782, 0, 7, 164, 50,  'Show menu if blacksmithing is 50 or higher'),  -- Snarl <Expert Blacksmith>
(15, 4126, 0, 7, 171, 50,  'Show menu if alchemy is 50 or higher'),        -- Yelmak <Expert Alchemist>
(15, 4148, 0, 7, 202, 50,  'Show menu if engineering is 50 or higher'),    -- Nogg <Expert Engineer>
(15, 4151, 0, 7, 202, 125, 'Show menu if engineering is 125 or higher'),   -- Roxxik <Artisan Engineer>
(15, 4168, 0, 7, 333, 50,  'Show menu if enchanting is 50 or higher'),     -- Godan <Expert Enchanter>
(15, 4209, 0, 7, 165, 50,  'Show menu if leatherworking is 50 or higher'), -- Karolek <Expert Leatherworker>
(15, 4347, 0, 7, 197, 50,  'Show menu if tailoring is 50 or higher');      -- Magar <Expert Tailor>

DELETE FROM `creature` WHERE `id1` = 3230 AND `map`= 1;
DELETE FROM `creature` WHERE `guid` IN (10299, 203492, 203493, 203494, 203495);
DELETE FROM `creature` WHERE `id1` IN (3890, 12788, 14720, 14942, 15006);
INSERT INTO `creature` (`guid`, `id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES 
(603230, 3230,  1, 1938.55, -4133.22, 41.1424, 4.07636, 300), -- Nazgrel <Advisor to Thrall>
(10299,  3296,  1, 1620.45, -4252.84, 47.5273, 3.7001,  300), -- Orgrimmar Grunt
(603890, 3890,  1, 1990.64, -4794.13, 56.0472, 3.22013, 300), -- Brakgul Deathbringer <Warsong Gulch Battlemaster>
(612788, 12788, 1, 1650.95, -4212.82, 55.439, 0.182965, 300), -- Legionnaire Teena
(614720, 14720, 1, 1565.79, -4395.27, 6.9866, 3.35103,  600), -- High Overlord Saurfang
(614942, 14942, 1, 1980.9, -4787.78, 55.8796, 5.13127,  600), -- Kartra Bloodsnarl <Alterac Valley Battlemaster>
(615006, 15006, 1, 2002.26, -4796.74, 56.8471, 3.00197, 600); -- Deze Snowbane <Arathis Basin Battlemaster>

-- Master Pyreanor <Paladin Trainer>
UPDATE `creature` SET `position_x`= 1940.23, `position_y`= -4135.53, `position_z`= 41.1522, `orientation`= 3.12425  WHERE `id1` = 23128;

-- Knowledge of the Orb of Orahil (Warlock)
DELETE FROM `creature_queststarter` WHERE `id` = 3326 AND `quest` = 4967;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (3326, 4967);

-- An Imp's Request (Warlock)
DELETE FROM `creature_queststarter` WHERE `id` IN (3324, 3325, 3326, 4564, 5495, 5496) AND `quest`= 8419;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (3326, 8419);

UPDATE `creature_template` SET `subname` = 'General Goods Merchant'       WHERE `entry` = 3313;  -- Trak'gen <General Goods Merchant>
UPDATE `creature_template` SET `subname` = 'Guns and Ammo Merchant'       WHERE `entry` = 3322;  -- Kaja <Guns and Ammo Merchant>
UPDATE `creature_template` SET `subname` = 'Reagents Vendor'              WHERE `entry` = 3323;  -- Horthus <Reagents Vendor>
UPDATE `creature_template` SET `subname` = 'Poison Vendor'                WHERE `entry` = 3334;  -- Rekkul <Poison Vendor>
UPDATE `creature_template` SET `subname` = 'Reagents Vendor'              WHERE `entry` = 3335;  -- Hagrus <Reagents Vendor>
UPDATE `creature_template` SET `subname` = 'General Goods Vendor'         WHERE `entry` = 3350;  -- Asoran <General Goods Vendor>
UPDATE `creature_template` SET `subname` = 'Reagents Vendor'              WHERE `entry` = 3351;  -- Magenius <Reagents Vendor>
UPDATE `creature_template` SET `subname` = 'Blacksmithing Supplier'       WHERE `entry` = 3356;  -- Sumi <Blacksmithing Supplier>
UPDATE `creature_template` SET `subname` = 'Mining Supplier'              WHERE `entry` = 3358;  -- Gorina <Mining Supplier>
UPDATE `creature_template` SET `subname` = 'General Trade Goods Merchant' WHERE `entry` = 3367;  -- Felika <General Trade Goods Merchant>
UPDATE `creature_template` SET `subname` = 'Cooking Supplier'             WHERE `entry` = 3400;  -- Xen'to <Cooking Supplier>
UPDATE `creature_template` SET `subname` = 'General Trade Goods Merchant' WHERE `entry` = 5817;  -- Shimra <General Trade Goods Merchant>
UPDATE `creature_template` SET `subname` = 'King of Darkspear Trolls'     WHERE `entry` = 10540; -- Vol'jin <King of Darkspear Trolls>
UPDATE `creature_template` SET `subname` = 'Zeppelin Master'              WHERE `entry` = 12136; -- Snurk Bucksquick <Zeppelin Master>

-- Legionnaire Teena
UPDATE `creature_template` SET `subname`= NULL, `npcflag` = 0, `faction` = 85 WHERE `entry` = 12788;
UPDATE `creature_template_locale` SET `Title` = NULL WHERE `entry` = 12788;
DELETE FROM `npc_vendor` WHERE `entry`= 12788; -- was placed in battlegrounds during Vanilla and TBC. needs to be hidden until wotlk

-- Nazgrel <Advisor to Thrall>
UPDATE `creature_template` SET `scale`=0.7, `npcflag`=2, `faction`=29, `gossip_menu_id`=0 WHERE `entry`=3230;

-- remove civilian flag
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` IN (14392, 14720); -- Overlord Runthak / High Overlord Saurfang

SET @Stonehide  := 112793; -- Brave Stonehide <Officer Accessories Quartermaster>, Vanilla
SET @Zarg       := 112794; -- Stone Guard Zarg <Food and Drink>, Vanilla
SET @Hola       := 112795; -- First Sergeant Hola'mahi, Vanilla
SET @Bork       := 112796; -- Raider Bork <Mount Quartermaster>, Vanilla
SET @TH_Classic := 26396;  -- Sergeant Thunderhorn, Vanilla
SET @TH_TBC     := 14581;  -- Sergeant Thunderhorn, TBC
SET @LP_Classic := 12792;  -- Lady Palanseer <Armor Quartermaster>, Vanilla
SET @LP_TBC     := 26397;  -- Lady Palanseer <Armor Quartermaster>, TBC

DELETE FROM `creature_template` WHERE `entry` IN (@Stonehide, @Zarg, @Hola, @Bork);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, 
`exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, 
`BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, 
`lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, 
`RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 

(@Stonehide,0,0,0,0,0,'Brave Stonehide','Officer Accessories Quartermaster',NULL,0,55,55,0,125,128,1,1.14286,1,1,18,1,0,0,2.9,2000,2000,1,1,1,256,2048,0,0,0,0,0,0,7,4096,0,0,0,0,0,0,0,'',0,1,2,1,1,1,0,0,1,0,0,0,'npc_ipp_pre_tbc',12340),
(@Zarg,0,0,0,0,0,'Stone Guard Zarg','Food and Drink',NULL,0,55,55,0,125,130,1,1.14286,1,1,18,1,0,0,1.05,2000,1606,1,1,1,768,2048,0,0,0,0,0,0,7,4096,0,0,0,0,0,0,0,'',0,1,2,1,1,1,0,0,1,0,0,0,'npc_ipp_pre_tbc',12340),
(@Hola,0,0,0,0,0,'First Sergeant Hola\'mahi','Reagent Vendor',NULL,0,55,55,0,125,130,1,1.14286,1,1,18,1,0,0,1.2,2000,1551,1,1,1,768,2048,0,0,0,0,0,0,7,4096,0,0,0,0,0,0,0,'',1,1,2,1,1,1,0,0,1,0,0,0,'npc_ipp_pre_tbc',12340),
(@Bork,0,0,0,0,0,'Raider Bork','Mount Quartermaster',NULL,0,55,55,0,1074,128,1,1.14286,1,1,18,1,0,0,1.05,2000,1606,1,1,1,768,2048,0,0,0,0,0,0,7,0,0,0,0,0,0,0,0,'',0,1,2,1,1,1,0,0,1,0,0,0,'npc_ipp_pre_tbc',0);

DELETE FROM `creature_template_addon` WHERE `entry` IN (@Bork);
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES
(@Bork, 0, 0, 0, 0, 0, 0, NULL);

DELETE FROM `creature_template_locale` WHERE `entry` IN (@Stonehide, @Zarg, @Hola, @Bork);
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES
--
(@Stonehide, 'deDE', 'Kriegerheldin Steinfell', 'Rüstmeisterin für Zubehör', 18019),
(@Stonehide, 'esES', 'Valiente Piel Pétrea', 'Intendente de accesorios', 18019),
(@Stonehide, 'esMX', 'Valiente Piel Pétrea', 'Intendente de accesorios', 18019),
(@Stonehide, 'frFR', 'Brave Cuir-de-Pierre', 'Intendante des accessoires', 18019),
(@Stonehide, 'koKR', '용사 스톤하이드', '보급품 병참장교', 18019),
(@Stonehide, 'ruRU', 'Храбрец Каменная Шкура', 'Начальник снабжения аксессуарами', 18019),
(@Stonehide, 'zhCN', '卫兵布莱恩·石皮', '杂货军需官', 18019),
(@Stonehide, 'zhTW', '勇者石皮', '雜貨軍需官', 18019),
--
(@Zarg, 'deDE', 'Steingardist Zarg', 'Speis & Trank', 18019),
(@Zarg, 'esES', 'Guardia de piedra Zarg', 'Alimentos y bebidas', 18019),
(@Zarg, 'esMX', 'Guardia de piedra Zarg', 'Alimentos y bebidas', 18019),
(@Zarg, 'frFR', 'Garde de pierre Zarg', 'Nourriture & boissons', 18019),
(@Zarg, 'koKR', '투사 자르그', '식료품 상인', 18019),
(@Zarg, 'ruRU', 'Каменный страж Зарг', 'Еда и напитки', 18019),
(@Zarg, 'zhCN', '石头守卫扎尔格', '食物和饮料', 18019),
(@Zarg, 'zhTW', '石衛士札爾格', '食物和飲料', 18019),
--
(@Hola, 'deDE', 'Stabsfeldwebel Hola\'mahi', 'Reagenzien', 18019),
(@Hola, 'esES', 'Gran capataz Hola\'mahi', 'Componentes', 18019),
(@Hola, 'esMX', 'Gran capataz Hola\'mahi', 'Componentes', 18019),
(@Hola, 'frFR', 'Sergent Hola\'mahi', 'Composants', 18019),
(@Hola, 'koKR', '선임하사 홀라마히', '마법 재료 상인', 18019),
(@Hola, 'ruRU', 'Первый сержант Хола\'махи', 'Реагенты', 18019),
(@Hola, 'zhCN', '一等军士长霍拉麦', '材料商', 18019),
(@Hola, 'zhTW', '一等士官霍拉麥', '施法材料', 18019),
--
(@Bork, 'deDE', 'Räuber Bork', 'Rüstmeister für Kriegsreittiere', 18019),
(@Bork, 'esES', 'Asaltante Bork', 'Intendente de monturas de guerra', 18019),
(@Bork, 'esMX', 'Asaltante Bork', 'Intendente de monturas de guerra', 18019),
(@Bork, 'frFR', 'Ecumeur Bork', 'Intendant des montures de guerre', 18019),
(@Bork, 'koKR', '공격대원 보르크', '전투 탈것 병참장교', 18019),
(@Bork, 'ruRU', 'Налетчик Борк', 'Начальник снабжения верховыми животными', 18019),
(@Bork, 'zhCN', '狼骑兵波尔克', '战争坐骑军需官', 18019),
(@Bork, 'zhTW', '狼騎兵波爾克', '戰爭坐騎軍需官', 18019);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (@Stonehide, @Zarg, @Hola, @Bork);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES 
(@Stonehide, 0, 12675, 1, 1, 0),
(@Zarg, 0, 12676, 1, 1, 0),
(@Hola, 0, 12677, 1, 1, 0),
(@Bork, 0, 12678, 1, 1, 0);

UPDATE `creature_template` SET `subname` = 'Officer Accessories Quartermaster' WHERE `entry` = 12793;
UPDATE `creature_template` SET `subname` = 'Weapons Quartermaster'             WHERE `entry` = 12794;
UPDATE `creature_template` SET `subname` = 'Armor Quartermaster'               WHERE `entry` = 12795;
UPDATE `creature_template` SET `subname` = 'Mount Quartermaster'               WHERE `entry` = 12796;

UPDATE `creature_template_addon` SET `mount` = 0 WHERE `entry` = 12796;

DELETE FROM `creature` WHERE `guid` IN (125688, 125690, 125694, 125695, 612792, 612793, 612794, 612795, 612796, 612799, 614581, 620278, 623396, 623447, 626396, 626397);
DELETE FROM `creature` WHERE `id1`  IN (32383, 32385, 34036, 34037, 34038, 34058, 34059, 34060);

INSERT INTO `creature` (`guid`, `id1`, `map`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES 
--
(612799, 12799, 1, 1, 1, 1632.21, -4262.19, 49.027, 3.63029, 430),        -- Sergeant Ba'sha <Accessories Quartermaster>, Vanilla
(612792, @LP_Classic, 1, 1, 1, 1669.78, -4200.1, 56.3815, 3.61023, 180),  -- Lady Palanseer <Armor Quartermaster>, Vanilla
(626397, @LP_TBC, 1, 1, 1, 1669.78, -4200.1, 56.3815, 3.61023, 180),      -- Lady Palanseer <Armor Quartermaster>, TBC
(612793, @Stonehide, 1, 1, 1, 1657.6, -4191.97, 56.383, 4.52365, 180),    -- Brave Stonehide <Officer Accessories Quartermaster>, Vanilla
(125690, 12793, 1, 1, 1, 1672.24, -4206.81, 56.3827, 3.30568, 180),       -- Brave Stonehide <Officer Accessories Quartermaster>, TBC
(612794, @Zarg, 1, 1, 1, 1641.65, -4197.52, 56.3823, 5.41219, 180),       -- Stone Guard Zarg <Food and Drink>, Vanilla
(125688, 12794, 1, 1, 1, 1641.65, -4197.52, 56.3823, 5.41219, 180),       -- Stone Guard Zarg <Weapons Quartermaster>, TBC
(612795, @Hola, 1, 1, 1, 1673.9, -4216, 56.3826, 2.93578, 180),           -- First Sergeant Hola'mahi <Reagent Vendor>, Vanilla
(125695, 12795, 1, 1, 1, 1673.9, -4216, 56.3826, 2.93578, 180),           -- First Sergeant Hola'mahi <Armor Quartermaster>, TBC
(626396, @TH_Classic, 1, 1, 1, 1644.52, -4195.26, 56.3826, 5.43078, 180), -- Sergeant Thunderhorn <Weapons Quartermaster>, Vanilla
(614581, @TH_TBC, 1, 1, 1, 1669.09, -4196.78, 56.4831, 4.10416, 180),     -- Sergeant Thunderhorn <Weapons Quartermaster>, TBC

(632383, 32383, 1, 1, 1, 1669.09, -4196.78, 56.3827, 4.10416, 180),       -- Sergeant Thunderhorn, WotLK Season 5
(634036, 34036, 1, 1, 1, 1669.09, -4196.78, 56.3827, 4.10416, 180),       -- Sergeant Thunderhorn, WotLK Season 6
(634037, 34037, 1, 1, 1, 1669.09, -4196.78, 56.3827, 4.10416, 180),       -- Sergeant Thunderhorn, WotLK Season 7
(634038, 34038, 1, 1, 1, 1669.09, -4196.78, 56.3827, 4.10416, 180),       -- Sergeant Thunderhorn, WotLK Season 8

(125694, 12796, 1, 1, 1, 1674.43, -4212.55, 56.3829, 3.00254, 180),       -- Raider Bork <Mount Quartermaster>, TBC
(612796, @Bork, 1, 1, 1, 1674.43, -4212.55, 56.3829, 3.00254, 180),       -- Raider Bork <Mount Quartermaster>, Vanilla
(623447, 23447, 1, 1, 1, 1644.52, -4195.26, 56.3826, 5.43078, 180),       -- Sergeant Kien <Armor Quartermaster>, TBC
(620278, 20278, 1, 1, 1, 1654.25, -4189.82, 56.3825, 4.71787, 180),       -- Vixton Pinchwhistle <Arena Vendor>, TBC
(623396, 23396, 1, 1, 1, 1660.37, -4190.74, 56.3817, 4.54116, 180),       -- Krixel Pinchwhistle <Arena Vendor>, TBC

(632385, 32385, 1, 1, 1, 1673.07, -4201.89, 56.3826, 3.62927, 180),       -- Doris Volanthius, WotLK Season 5
(634058, 34058, 1, 1, 1, 1673.07, -4201.89, 56.3826, 3.62927, 180),       -- Doris Volanthius, WotLK Season 6
(634059, 34059, 1, 1, 1, 1673.07, -4201.89, 56.3826, 3.62927, 180),       -- Doris Volanthius, WotLK Season 7
(634060, 34060, 1, 1, 1, 1673.07, -4201.89, 56.3826, 3.62927, 180);       -- Doris Volanthius, WotLK Season 8

UPDATE `creature` SET `ScriptName` = 'npc_ipp_pre_tbc'  WHERE `guid` IN (612792, 612799, 626396); -- only visible during vanilla
UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc_pvp'  WHERE `guid` IN (614581, 620278, 623396); -- only visible during tbc
UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc'      WHERE `guid` IN (125685, 125688, 125690, 125694, 125695, 612788, 623447, 626397); -- visible during tbc & wotlk

UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S5' WHERE `guid` IN (632383, 632385);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S6' WHERE `guid` IN (634036, 634058);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S7' WHERE `guid` IN (634037, 634059);
UPDATE `creature` SET `ScriptName` = 'npc_ipp_wotlk_S8' WHERE `guid` IN (634038, 634060);

-- Brave Stonehide <Officer Accessories Quartermaster> - Vanilla
DELETE FROM `npc_vendor` WHERE `entry` = @Stonehide;
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES
(@Stonehide, 15199, 1006), (@Stonehide, 18607, 386), (@Stonehide, 18839, 2354), (@Stonehide, 18841, 2354);

-- Brave Stonehide <Officer Accessories Quartermaster> - TBC
DELETE FROM `npc_vendor` WHERE `entry` = 12793;
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES 
(12793, 15197, 1007), (12793, 15199, 1006), (12793, 15200, 838),  (12793, 16335, 491),  (12793, 16341, 986),  (12793, 16486, 492),  (12793, 16497, 492),  (12793, 16532, 492), 
(12793, 18427, 1050), (12793, 18428, 930),  (12793, 18429, 492),  (12793, 18430, 931),  (12793, 18432, 931),  (12793, 18434, 492),  (12793, 18435, 931),  (12793, 18436, 931), 
(12793, 18437, 931),  (12793, 18461, 774),  (12793, 18607, 386),  (12793, 18834, 634),  (12793, 18839, 460),  (12793, 18841, 460),  (12793, 18845, 634),  (12793, 18846, 634), 
(12793, 18849, 634),  (12793, 18850, 634),  (12793, 18851, 634),  (12793, 18852, 634),  (12793, 18853, 634),  (12793, 24551, 125),  (12793, 28118, 95),   (12793, 28119, 95), 
(12793, 28120, 95),   (12793, 28123, 99),   (12793, 28239, 2404), (12793, 28240, 2404), (12793, 28241, 2404), (12793, 28242, 2404), (12793, 28243, 2404), (12793, 28244, 125), 
(12793, 28245, 125),  (12793, 28246, 129),  (12793, 28247, 129),  (12793, 28362, 95),   (12793, 28363, 99),   (12793, 28377, 165),  (12793, 28378, 165),  (12793, 28379, 165), 
(12793, 28380, 165),  (12793, 29592, 634),  (12793, 30343, 2404), (12793, 30344, 2404), (12793, 30345, 2404), (12793, 30346, 2404), (12793, 31838, 1648), (12793, 31839, 1649), 
(12793, 31840, 1648), (12793, 31841, 1649), (12793, 31852, 1652), (12793, 31853, 1653), (12793, 31854, 1652), (12793, 31855, 1653), (12793, 32453, 1564), (12793, 32455, 460);

-- Stone Guard Zarg <Food and Drink>, Vanilla
DELETE FROM `npc_vendor` WHERE `entry` = @Zarg; 
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES
(@Zarg, 117), (@Zarg, 159), (@Zarg, 1179), (@Zarg, 1205), (@Zarg, 1645), (@Zarg, 1708), (@Zarg, 2287), (@Zarg, 2593), (@Zarg, 2594), (@Zarg, 2595), (@Zarg, 2596), (@Zarg, 2723),
(@Zarg, 3770), (@Zarg, 3771), (@Zarg, 4536), (@Zarg, 4537), (@Zarg, 4538), (@Zarg, 4539), (@Zarg, 4540), (@Zarg, 4541), (@Zarg, 4542), (@Zarg, 4544), (@Zarg, 4599), (@Zarg, 4601),
(@Zarg, 4602), (@Zarg, 4604), (@Zarg, 4605), (@Zarg, 4606), (@Zarg, 4607), (@Zarg, 4608), (@Zarg, 8766), (@Zarg, 8948), (@Zarg, 8950), (@Zarg, 8952), (@Zarg, 8953);

-- Stone Guard Zarg <Weapons Quartermaster>, TBC
DELETE FROM `npc_vendor` WHERE `entry` = 12794;
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES
(12794, 16345, 2291), (12794, 18826, 2291), (12794, 18828, 2291), (12794, 18831, 2257), (12794, 18835, 2291), (12794, 18837, 2291), (12794, 18840, 2291), 
(12794, 18844, 2291), (12794, 18848, 2291), (12794, 18860, 2291), (12794, 18866, 2291), (12794, 18868, 2257), (12794, 18871, 2257), (12794, 18874, 2257), 
(12794, 18877, 2257), (12794, 23464, 2291), (12794, 23465, 2257), (12794, 23466, 2291), (12794, 23467, 2291), (12794, 23468, 2291), (12794, 23469, 2291);

-- First Sergeant Hola'mahi <Reagent Vendor> - Vanilla
DELETE FROM `npc_vendor` WHERE `entry` = @Hola; 
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES
(@Hola, 5565), (@Hola, 16583), (@Hola, 17020), (@Hola, 17021), (@Hola, 17026), (@Hola, 17028), (@Hola, 17029), (@Hola, 17030),
(@Hola, 17031), (@Hola, 17032), (@Hola, 17033), (@Hola, 17034), (@Hola, 17035), (@Hola, 17036), (@Hola, 17037), (@Hola, 17038);

-- First Sergeant Hola'mahi <Armor Quartermaster> - TBC
DELETE FROM `npc_vendor` WHERE `entry` = 12795;
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES 
(12795, 16533, 464), (12795, 16534, 542), (12795, 16535, 463), (12795, 16536, 465), (12795, 16539, 465), (12795, 16540, 541), (12795, 16541, 463), (12795, 16542, 464), (12795, 16543, 542), (12795, 16544, 465), 
(12795, 16545, 465), (12795, 16548, 541), (12795, 16549, 463), (12795, 16550, 464), (12795, 16551, 465), (12795, 16552, 542), (12795, 16554, 465), (12795, 16555, 541), (12795, 16558, 465), (12795, 16560, 541), 
(12795, 16561, 464), (12795, 16562, 465), (12795, 16563, 463), (12795, 16564, 542), (12795, 16565, 463), (12795, 16566, 464), (12795, 16567, 542), (12795, 16568, 465), (12795, 16569, 465), (12795, 16571, 541), 
(12795, 16573, 465), (12795, 16574, 541), (12795, 16577, 463), (12795, 16578, 464), (12795, 16579, 542), (12795, 16580, 465), (12795, 17586, 465), (12795, 17588, 541), (12795, 17590, 465), (12795, 17591, 464), 
(12795, 17592, 463), (12795, 17593, 542), (12795, 17618, 465), (12795, 17620, 541), (12795, 17622, 465), (12795, 17623, 464), (12795, 17624, 463), (12795, 17625, 542), (12795, 22843, 427), (12795, 22852, 427), 
(12795, 22855, 427), (12795, 22856, 427), (12795, 22857, 427), (12795, 22858, 427), (12795, 22859, 427), (12795, 22860, 427), (12795, 22862, 428), (12795, 22863, 428), (12795, 22864, 428), (12795, 22865, 428), 
(12795, 22867, 428), (12795, 22868, 428), (12795, 22869, 428), (12795, 22870, 428), (12795, 22872, 652), (12795, 22873, 653), (12795, 22874, 652), (12795, 22875, 653), (12795, 22876, 652), (12795, 22877, 652), 
(12795, 22878, 653), (12795, 22879, 652), (12795, 22880, 653), (12795, 22881, 653), (12795, 22882, 653), (12795, 22883, 653), (12795, 22884, 652), (12795, 22885, 652), (12795, 22886, 652), (12795, 22887, 653), 
(12795, 23243, 427), (12795, 23244, 444), (12795, 23251, 444), (12795, 23252, 427), (12795, 23253, 444), (12795, 23254, 427), (12795, 23255, 444), (12795, 23256, 427), (12795, 23257, 444), (12795, 23258, 427), 
(12795, 23259, 444), (12795, 23260, 427), (12795, 23261, 444), (12795, 23262, 427), (12795, 23263, 444), (12795, 23264, 427), (12795, 29600, 428), (12795, 29601, 427), (12795, 29602, 652), (12795, 29603, 653), 
(12795, 29604, 444), (12795, 29605, 427), (12795, 29612, 465), (12795, 29613, 541), (12795, 29614, 542), (12795, 29615, 463), (12795, 29616, 464), (12795, 29617, 465);

-- Raider Bork <Mount Quartermaster>
DELETE FROM `npc_vendor` WHERE `entry`= 12796;
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES
(12796, 18245, 423), (12796, 18246, 423), (12796, 18247, 423), (12796, 18248, 423), (12796, 34129, 423);

DELETE FROM `npc_vendor` WHERE `entry`= @Bork;
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES
(@Bork, 18245, 423), (@Bork, 18246, 423), (@Bork, 18247, 423), (@Bork, 18248, 423);

-- Vixton Pinchwhistle <Arena Vendor> - TBC
DELETE FROM `npc_vendor` WHERE `entry` = 20278;
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES
(20278, 24544, 22), (20278, 24545, 22), (20278, 24546, 24), (20278, 24547, 22), (20278, 24549, 21), (20278, 24550, 26), (20278, 24552, 22), (20278, 24553, 22), (20278, 24554, 24), (20278, 24555, 22), 
(20278, 24556, 21), (20278, 24557, 26), (20278, 25830, 22), (20278, 25831, 22), (20278, 25832, 24), (20278, 25833, 22), (20278, 25834, 21), (20278, 25854, 24), (20278, 25855, 22), (20278, 25856, 22), 
(20278, 25857, 21), (20278, 25858, 22), (20278, 25997, 22), (20278, 25998, 22), (20278, 25999, 24), (20278, 26000, 21), (20278, 26001, 22), (20278, 27469, 22), (20278, 27470, 21), (20278, 27471, 22),
(20278, 27472, 22), (20278, 27473, 24), (20278, 27702, 22), (20278, 27703, 21), (20278, 27704, 22), (20278, 27705, 22), (20278, 27706, 24), (20278, 27707, 21), (20278, 27708, 22), (20278, 27709, 22), 
(20278, 27710, 24), (20278, 27711, 22), (20278, 27879, 22), (20278, 27880, 21), (20278, 27881, 22), (20278, 27882, 22), (20278, 27883, 24), (20278, 28126, 21), (20278, 28127, 22), (20278, 28128, 22), 
(20278, 28129, 24), (20278, 28130, 22), (20278, 28136, 21), (20278, 28137, 22), (20278, 28138, 22), (20278, 28139, 24), (20278, 28140, 22), (20278, 28294, 26), (20278, 28295, 133), (20278, 28297, 148),
(20278, 28298, 26), (20278, 28299, 26), (20278, 28300, 26), (20278, 28302, 21), (20278, 28305, 133), (20278, 28307, 21), (20278, 28308, 133), (20278, 28309, 21), (20278, 28310, 21), (20278, 28312, 133), 
(20278, 28313, 133), (20278, 28314, 21), (20278, 28319, 2388), (20278, 28320, 2388), (20278, 28331, 22), (20278, 28332, 22), (20278, 28333, 24), (20278, 28334, 22), (20278, 28335, 21), (20278, 28346, 21), 
(20278, 28355, 2388), (20278, 28356, 2388), (20278, 28357, 2388), (20278, 28358, 22), (20278, 28476, 26), (20278, 30186, 24), (20278, 30187, 22), (20278, 30188, 21), (20278, 30200, 22), (20278, 30201, 22),
(20278, 31375, 21), (20278, 31376, 22), (20278, 31377, 22), (20278, 31378, 24), (20278, 31379, 22), (20278, 31396, 22), (20278, 31397, 21), (20278, 31400, 22), (20278, 31406, 22), (20278, 31407, 24), 
(20278, 31409, 21), (20278, 31410, 22), (20278, 31411, 22), (20278, 31412, 24), (20278, 31413, 22), (20278, 31613, 22), (20278, 31614, 21), (20278, 31616, 22), (20278, 31618, 22), (20278, 31619, 24), 
(20278, 32450, 148), (20278, 32451, 148), (20278, 32452, 21), (20278, 33936, 2388), (20278, 33939, 2388), (20278, 33942, 2388), (20278, 33945, 2388), (20278, 33948, 2388), (20278, 33951, 2388);

-- Krixel Pinchwhistle <Arena Vendor> - TBC
DELETE FROM `npc_vendor` WHERE `entry` = 23396;
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES
(23396, 30486, 2285), (23396, 30487, 2283), (23396, 30488, 2285), (23396, 30489, 2285), (23396, 30490, 2288), (23396, 31958, 2283), (23396, 31959, 1664), (23396, 31960, 2285), (23396, 31961, 2283), 
(23396, 31962, 2285), (23396, 31963, 2285), (23396, 31964, 2288), (23396, 31965, 2287), (23396, 31966, 1664), (23396, 31967, 2283), (23396, 31968, 2285), (23396, 31969, 2285), (23396, 31971, 2288),
(23396, 31972, 2285), (23396, 31973, 2283), (23396, 31974, 2285), (23396, 31975, 2285), (23396, 31976, 2288), (23396, 31977, 2285), (23396, 31978, 2283), (23396, 31979, 2288), (23396, 31980, 2285), 
(23396, 31981, 2283), (23396, 31982, 2285), (23396, 31983, 2285), (23396, 31984, 1664), (23396, 31985, 2283), (23396, 31986, 1664), (23396, 31987, 2283), (23396, 31988, 2285), (23396, 31989, 2285),
(23396, 31990, 2288), (23396, 31991, 2285), (23396, 31992, 2285), (23396, 31993, 2283), (23396, 31995, 2285), (23396, 31996, 2288), (23396, 31997, 2285), (23396, 31998, 2283), (23396, 31999, 2285), 
(23396, 32000, 2285), (23396, 32001, 2288), (23396, 32002, 2285), (23396, 32003, 2283), (23396, 32004, 2285), (23396, 32005, 2283), (23396, 32006, 2285), (23396, 32007, 2285), (23396, 32008, 2288),
(23396, 32009, 2285), (23396, 32010, 2283), (23396, 32011, 2285), (23396, 32012, 2285), (23396, 32013, 2288), (23396, 32014, 1664), (23396, 32015, 2283), (23396, 32016, 2285), (23396, 32017, 2285), 
(23396, 32018, 2288), (23396, 32019, 2285), (23396, 32020, 2285), (23396, 32021, 2283), (23396, 32022, 2285), (23396, 32023, 2285), (23396, 32024, 2288), (23396, 32025, 1664), (23396, 32026, 2287),
(23396, 32027, 2283), (23396, 32028, 2287), (23396, 32029, 2285), (23396, 32030, 2283), (23396, 32031, 2285), (23396, 32032, 2285), (23396, 32033, 2288), (23396, 32034, 2283), (23396, 32035, 2285), 
(23396, 32036, 2285), (23396, 32037, 2288), (23396, 32038, 2285), (23396, 32039, 2285), (23396, 32040, 2283), (23396, 32041, 2285), (23396, 32042, 2285), (23396, 32043, 2288), (23396, 32044, 2287),
(23396, 32045, 2285), (23396, 32046, 2283), (23396, 32047, 2288), (23396, 32048, 2285), (23396, 32049, 2283), (23396, 32050, 2285), (23396, 32051, 2285), (23396, 32052, 2287), (23396, 32053, 2284), 
(23396, 32054, 1758), (23396, 32055, 1664), (23396, 32056, 2283), (23396, 32057, 2285), (23396, 32058, 2285), (23396, 32059, 2288), (23396, 32060, 2285), (23396, 32961, 2283), (23396, 32962, 1758),
(23396, 32963, 2284), (23396, 32964, 2284), (23396, 33076, 1758), (23396, 33077, 1758), (23396, 33078, 1758), (23396, 33309, 2285), (23396, 33313, 2285), (23396, 33937, 1758), (23396, 33940, 1758), 
(23396, 33943, 1758), (23396, 33946, 1758), (23396, 33949, 1758), (23396, 33952, 1758);

-- Sergeant Kien <Armor Quartermaster> - TBC
DELETE FROM `npc_vendor` WHERE `entry` = 23447;
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES
(23447, 32785, 1911), (23447, 32786, 1911), (23447, 32787, 1911), (23447, 32788, 1911), (23447, 32789, 1911), (23447, 32790, 1911), (23447, 32791, 1911), (23447, 32792, 1911), (23447, 32793, 1911), 
(23447, 32794, 1911), (23447, 32795, 1911), (23447, 32796, 1911), (23447, 32797, 1923), (23447, 32798, 1923), (23447, 32799, 1923), (23447, 32800, 1923), (23447, 32801, 1923), (23447, 32802, 1923), 
(23447, 32803, 1923), (23447, 32804, 1923), (23447, 32805, 1923), (23447, 32806, 1923), (23447, 32807, 1923), (23447, 32808, 1923), (23447, 32809, 1935), (23447, 32810, 1935), (23447, 32811, 1935), 
(23447, 32812, 1935), (23447, 32813, 1935), (23447, 32814, 1935), (23447, 32816, 1935), (23447, 32817, 1935), (23447, 32818, 1935), (23447, 32819, 1935), (23447, 32820, 1935), (23447, 32821, 1935), 
(23447, 32979, 1923), (23447, 32980, 1935), (23447, 32981, 1911), (23447, 32988, 1923), (23447, 32989, 1935), (23447, 32990, 1911), (23447, 32997, 1935), (23447, 32998, 1923), (23447, 32999, 1911), 
(23447, 33056, 129),  (23447, 33057, 129),  (23447, 33064, 129),  (23447, 33065, 127),  (23447, 33066, 127),  (23447, 33067, 127),  (23447, 33068, 127);

-- Sergeant Thunderhorn <Weapons Quartermaster> - vanilla
DELETE FROM `npc_vendor` WHERE `entry` = @TH_Classic;
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES
(@TH_Classic, 16345, 2291), (@TH_Classic, 18826, 2291), (@TH_Classic, 18828, 2291), (@TH_Classic, 18831, 2257), (@TH_Classic, 18835, 2291), (@TH_Classic, 18837, 2291), (@TH_Classic, 18840, 2291), 
(@TH_Classic, 18844, 2291), (@TH_Classic, 18848, 2291), (@TH_Classic, 18860, 2291), (@TH_Classic, 18866, 2291), (@TH_Classic, 18868, 2257), (@TH_Classic, 18871, 2257), (@TH_Classic, 18874, 2257), 
(@TH_Classic, 18877, 2257), (@TH_Classic, 23464, 2291), (@TH_Classic, 23465, 2257), (@TH_Classic, 23466, 2291), (@TH_Classic, 23467, 2291), (@TH_Classic, 23468, 2291), (@TH_Classic, 23469, 2291);

-- Sergeant Thunderhorn <Weapons Quartermaster> - TBC
DELETE FROM `npc_vendor` WHERE `entry` = @TH_TBC;
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES
(@TH_TBC, 28293, 2237), (@TH_TBC, 28917, 2237), (@TH_TBC, 28918, 2237), (@TH_TBC, 28919, 2237), (@TH_TBC, 28920, 2239), (@TH_TBC, 28921, 2240), (@TH_TBC, 28922, 2240), 
(@TH_TBC, 28923, 2237), (@TH_TBC, 28924, 2240), (@TH_TBC, 28925, 2239), (@TH_TBC, 28926, 2240), (@TH_TBC, 28928, 2239), (@TH_TBC, 28929, 2240), (@TH_TBC, 28930, 2240), 
(@TH_TBC, 28931, 2238), (@TH_TBC, 28933, 2237), (@TH_TBC, 28935, 2237), (@TH_TBC, 28937, 2239), (@TH_TBC, 28938, 2242), (@TH_TBC, 28939, 2242);

-- Lady Palanseer <Armor Quartermaster> - vanilla
DELETE FROM `npc_vendor` WHERE `entry`= @LP_Classic;
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES
-- boot 427, gloves 428, helm 444, pants 653, chest 652, shoulders 427
(@LP_Classic, 16485, 427), (@LP_Classic, 16487, 428), (@LP_Classic, 16489, 444), (@LP_Classic, 16490, 653), (@LP_Classic, 16491, 652), (@LP_Classic, 16492, 427), -- mages, pre naxx
(@LP_Classic, 16494, 427), (@LP_Classic, 16496, 428), (@LP_Classic, 16501, 427), (@LP_Classic, 16502, 653), (@LP_Classic, 16503, 444), (@LP_Classic, 16504, 652), -- druid, pre naxx
(@LP_Classic, 16498, 427), (@LP_Classic, 16499, 428), (@LP_Classic, 16505, 652), (@LP_Classic, 16506, 444), (@LP_Classic, 16507, 427), (@LP_Classic, 16508, 653), -- rogue, pre naxx
(@LP_Classic, 16509, 427), (@LP_Classic, 16510, 428), (@LP_Classic, 16513, 652), (@LP_Classic, 16514, 444), (@LP_Classic, 16515, 653), (@LP_Classic, 16516, 427), -- warrior, pre naxx
(@LP_Classic, 16518, 427), (@LP_Classic, 16519, 428), (@LP_Classic, 16521, 444), (@LP_Classic, 16522, 652), (@LP_Classic, 16523, 653), (@LP_Classic, 16524, 427), -- shaman, pre naxx
(@LP_Classic, 16525, 652), (@LP_Classic, 16526, 444), (@LP_Classic, 16527, 653), (@LP_Classic, 16528, 427), (@LP_Classic, 16530, 428), (@LP_Classic, 16531, 427), -- hunter, pre naxx
(@LP_Classic, 17570, 444), (@LP_Classic, 17571, 653), (@LP_Classic, 17572, 652), (@LP_Classic, 17573, 427), (@LP_Classic, 17576, 427), (@LP_Classic, 17577, 428), -- warlock, pre naxx
(@LP_Classic, 17610, 444), (@LP_Classic, 17611, 653), (@LP_Classic, 17612, 652), (@LP_Classic, 17613, 427), (@LP_Classic, 17616, 427), (@LP_Classic, 17617, 428), -- priest, pre naxx
--
(@LP_Classic, 16533, 464), (@LP_Classic, 16534, 542), (@LP_Classic, 16535, 463), (@LP_Classic, 16536, 465), (@LP_Classic, 16539, 465), (@LP_Classic, 16540, 541), (@LP_Classic, 16541, 463), 
(@LP_Classic, 16542, 464), (@LP_Classic, 16543, 542), (@LP_Classic, 16544, 465), (@LP_Classic, 16545, 465), (@LP_Classic, 16548, 541), (@LP_Classic, 16549, 463), (@LP_Classic, 16550, 464), 
(@LP_Classic, 16551, 465), (@LP_Classic, 16552, 542), (@LP_Classic, 16554, 465), (@LP_Classic, 16555, 541), (@LP_Classic, 16558, 465), (@LP_Classic, 16560, 541), (@LP_Classic, 16561, 464), 
(@LP_Classic, 16562, 465), (@LP_Classic, 16563, 463), (@LP_Classic, 16564, 542), (@LP_Classic, 16565, 463), (@LP_Classic, 16566, 464), (@LP_Classic, 16567, 542), (@LP_Classic, 16568, 465), 
(@LP_Classic, 16569, 465), (@LP_Classic, 16571, 541), (@LP_Classic, 16573, 465), (@LP_Classic, 16574, 541), (@LP_Classic, 16577, 463), (@LP_Classic, 16578, 464), (@LP_Classic, 16579, 542), 
(@LP_Classic, 16580, 465), (@LP_Classic, 17586, 465), (@LP_Classic, 17588, 541), (@LP_Classic, 17590, 465), (@LP_Classic, 17591, 464), (@LP_Classic, 17592, 463), (@LP_Classic, 17593, 542), 
(@LP_Classic, 17618, 465), (@LP_Classic, 17620, 541), (@LP_Classic, 17622, 465), (@LP_Classic, 17623, 464), (@LP_Classic, 17624, 463), (@LP_Classic, 17625, 542), (@LP_Classic, 22843, 427), 
(@LP_Classic, 22852, 427), (@LP_Classic, 22855, 427), (@LP_Classic, 22856, 427), (@LP_Classic, 22857, 427), (@LP_Classic, 22858, 427), (@LP_Classic, 22859, 427), (@LP_Classic, 22860, 427), 
(@LP_Classic, 22862, 428), (@LP_Classic, 22863, 428), (@LP_Classic, 22864, 428), (@LP_Classic, 22865, 428), (@LP_Classic, 22867, 428), (@LP_Classic, 22868, 428), (@LP_Classic, 22869, 428),
(@LP_Classic, 22870, 428), (@LP_Classic, 22872, 652), (@LP_Classic, 22873, 653), (@LP_Classic, 22874, 652), (@LP_Classic, 22875, 653), (@LP_Classic, 22876, 652), (@LP_Classic, 22877, 652), 
(@LP_Classic, 22878, 653), (@LP_Classic, 22879, 652), (@LP_Classic, 22880, 653), (@LP_Classic, 22881, 653), (@LP_Classic, 22882, 653), (@LP_Classic, 22883, 653), (@LP_Classic, 22884, 652), 
(@LP_Classic, 22885, 652), (@LP_Classic, 22886, 652), (@LP_Classic, 22887, 653), (@LP_Classic, 23243, 427), (@LP_Classic, 23244, 444), (@LP_Classic, 23251, 444), (@LP_Classic, 23252, 427), 
(@LP_Classic, 23253, 444), (@LP_Classic, 23254, 427), (@LP_Classic, 23255, 444), (@LP_Classic, 23256, 427), (@LP_Classic, 23257, 444), (@LP_Classic, 23258, 427), (@LP_Classic, 23259, 444), 
(@LP_Classic, 23260, 427), (@LP_Classic, 23261, 444), (@LP_Classic, 23262, 427), (@LP_Classic, 23263, 444), (@LP_Classic, 23264, 427), (@LP_Classic, 29600, 428), (@LP_Classic, 29601, 427), 
(@LP_Classic, 29602, 652), (@LP_Classic, 29603, 653), (@LP_Classic, 29604, 444), (@LP_Classic, 29605, 427), (@LP_Classic, 29612, 465), (@LP_Classic, 29613, 541), (@LP_Classic, 29614, 542), 
(@LP_Classic, 29615, 463), (@LP_Classic, 29616, 464), (@LP_Classic, 29617, 465);

-- Lady Palanseer <Armor Quartermaster> - TBC
DELETE FROM `npc_vendor` WHERE `entry`= @LP_TBC;
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES
(@LP_TBC, 28805, 2259), (@LP_TBC, 28806, 2261), (@LP_TBC, 28807, 2263), (@LP_TBC, 28808, 2265), (@LP_TBC, 28809, 2267), (@LP_TBC, 28811, 2261), (@LP_TBC, 28812, 2263), (@LP_TBC, 28813, 2265), 
(@LP_TBC, 28814, 2267), (@LP_TBC, 28815, 2259), (@LP_TBC, 28817, 2261), (@LP_TBC, 28818, 2263), (@LP_TBC, 28819, 2265), (@LP_TBC, 28820, 2267), (@LP_TBC, 28821, 2259), (@LP_TBC, 28831, 2259), 
(@LP_TBC, 28832, 2261), (@LP_TBC, 28833, 2263), (@LP_TBC, 28834, 2265), (@LP_TBC, 28835, 2267), (@LP_TBC, 28836, 2261), (@LP_TBC, 28837, 2263), (@LP_TBC, 28838, 2265), (@LP_TBC, 28839, 2267),
(@LP_TBC, 28840, 2259), (@LP_TBC, 28841, 2259), (@LP_TBC, 28842, 2261), (@LP_TBC, 28843, 2263), (@LP_TBC, 28844, 2265), (@LP_TBC, 28845, 2267), (@LP_TBC, 28846, 2259), (@LP_TBC, 28847, 2261), 
(@LP_TBC, 28848, 2263), (@LP_TBC, 28849, 2265), (@LP_TBC, 28850, 2267), (@LP_TBC, 28851, 2259), (@LP_TBC, 28852, 2261), (@LP_TBC, 28853, 2263), (@LP_TBC, 28854, 2265), (@LP_TBC, 28855, 2267), 
(@LP_TBC, 28856, 2261), (@LP_TBC, 28857, 2263), (@LP_TBC, 28858, 2265), (@LP_TBC, 28859, 2267), (@LP_TBC, 28860, 2259), (@LP_TBC, 28861, 2259), (@LP_TBC, 28862, 2261), (@LP_TBC, 28863, 2263), 
(@LP_TBC, 28864, 2265), (@LP_TBC, 28865, 2267), (@LP_TBC, 28866, 2267), (@LP_TBC, 28867, 2263), (@LP_TBC, 28868, 2261), (@LP_TBC, 28869, 2259), (@LP_TBC, 28870, 2265), (@LP_TBC, 28871, 2261), 
(@LP_TBC, 28872, 2263), (@LP_TBC, 28873, 2265), (@LP_TBC, 28874, 2267), (@LP_TBC, 28875, 2259), (@LP_TBC, 31584, 2261), (@LP_TBC, 31585, 2263), (@LP_TBC, 31586, 2265), (@LP_TBC, 31587, 2267), 
(@LP_TBC, 31588, 2259), (@LP_TBC, 31621, 2261), (@LP_TBC, 31626, 2263), (@LP_TBC, 31627, 2265), (@LP_TBC, 31628, 2267), (@LP_TBC, 31629, 2259), (@LP_TBC, 31635, 2259), (@LP_TBC, 31636, 2261),
(@LP_TBC, 31637, 2263), (@LP_TBC, 31638, 2265), (@LP_TBC, 31639, 2267), (@LP_TBC, 31646, 2259), (@LP_TBC, 31647, 2261), (@LP_TBC, 31648, 2263), (@LP_TBC, 31649, 2265), (@LP_TBC, 31650, 2267);

/* Hide certain vendor items until the player has reached the progression tier for them */
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 23 AND `SourceGroup` IN (12796, @LP_Classic, @LP_TBC, @TH_Classic, @TH_TBC) AND `ConditionValue1` IN (66002, 66006, 66008);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
--
(23, @LP_Classic, 16485, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Silk Footwraps if the player has NOT completed PROGRESSION_AQ'), -- mage
(23, @LP_Classic, 16487, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Silk Gloves if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 16489, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Silk Hood if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 16490, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Silk Pants if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 16491, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Silk Robes if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 16492, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Silk Shoulderpads if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 16494, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Dragonhide Boots if the player has NOT completed PROGRESSION_AQ'), -- druid
(23, @LP_Classic, 16496, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Dragonhide Gauntlets if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 16501, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Dragonhide Spaulders if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 16502, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Dragonhide Trousers if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 16503, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Dragonhide Helm if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 16504, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Dragonhide Helm if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 16498, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Leather Treads if the player has NOT completed PROGRESSION_AQ'), -- rogue
(23, @LP_Classic, 16499, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Leather Vices if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 16505, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Leather Hauberk if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 16506, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Leather Headguard if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 16507, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Leather Mantle if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 16508, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Leather Leggings if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 16509, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Plate Boots if the player has NOT completed PROGRESSION_AQ'), -- warrior
(23, @LP_Classic, 16510, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Plate Gloves if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 16513, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Plate Armor if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 16514, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Plate Headguard if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 16515, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Plate Legguards if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 16516, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Plate Pauldrons if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 16518, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Mail Walkers if the player has NOT completed PROGRESSION_AQ'), -- shaman
(23, @LP_Classic, 16519, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Mail Grips if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 16521, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Mail Helm if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 16522, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Mail Chestpiece if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 16523, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Mail Leggings if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 16524, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Mail Shoulders if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 16525, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Chain Breastplate if the player has NOT completed PROGRESSION_AQ'), -- hunter
(23, @LP_Classic, 16526, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Chain Headguard if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 16527, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Chain Leggings if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 16528, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Chain Pauldrons if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 16530, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Chain Gauntlets if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 16531, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Chain Boots if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 17570, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Dreadweave Hood if the player has NOT completed PROGRESSION_AQ'), -- warlock
(23, @LP_Classic, 17571, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Dreadweave Leggings if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 17572, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Dreadweave Robe if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 17573, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Dreadweave Shoulders if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 17576, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Dreadweave Boots if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 17577, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Dreadweave Gloves if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 17610, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Satin Cowl if the player has NOT completed PROGRESSION_AQ'), -- priest
(23, @LP_Classic, 17611, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Satin Trousers if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 17612, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Satin Vestments if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 17613, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Champions Satin Shoulderpads if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 17616, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Satin Boots if the player has NOT completed PROGRESSION_AQ'),
(23, @LP_Classic, 17617, 0, 0, 8, 0, 66006, 0, 0, 1, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Satin Gloves if the player has NOT completed PROGRESSION_AQ'),
--
(23, @LP_Classic, 22860, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Silk Walkers if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22870, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Silk Handwraps if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22883, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Silk Legguards if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22886, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Silk Tunic if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 23263, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Silk Cowl if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 23264, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Silk Mantle if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22843, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Chain Greaves if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22862, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Chain Vices if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22874, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Chain Hauberk if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22875, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Chain Legguards if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 23251, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Chain Helm if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 23252, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Chain Shoulders if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22852, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Dragonhide Treads if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22863, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Dragonhide Grips if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22877, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Dragonhide Chestpiece if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22878, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Dragonhide Leggings if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 23253, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Dragonhide Headguard if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 23254, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Dragonhide Shoulders if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22855, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Dreadweave Walkers if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22865, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Dreadweave Handwraps if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22881, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Dreadweave Legguards if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22884, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Dreadweave Tunic if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 23255, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Dreadweave Cowl if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 23256, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Dreadweave Spaulders if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22856, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Leather Walkers if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22864, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Leather Grips if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22879, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Leather Chestpiece if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22880, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Leather Legguards if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 23257, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Leather Helm if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 23258, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Leather Shoulders if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22857, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Mail Greaves if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22867, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Mail Vices if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22876, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Mail Hauberk if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22887, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Mail Legguards if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 23259, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Mail Headguard if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 23260, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Mail Pauldrons if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22858, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Plate Greaves if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22868, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Plate Gauntlets if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22872, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Plate Hauberk if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22873, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Plate Leggings if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 23243, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Plate Shoulders if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 23244, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Plate Helm if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22859, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Satin Walkers if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22869, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Blood Guards Satin Handwraps if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22882, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Satin Legguards if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 22885, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Legionnaires Satin Tunic if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 23261, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Satin Hood if the player has completed PROGRESSION_AQ'),
(23, @LP_Classic, 23262, 0, 0, 8, 0, 66006, 0, 0, 0, 0, 0, '', 'Lady Palanseer will only sell Champions Satin Mantle if the player has completed PROGRESSION_AQ'),
--
(23, @LP_Classic, 16533, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Silk Cowl until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16534, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Silk Trousers until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16535, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Silk Raiment until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16536, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Silk Amice until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16539, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Silk Boots until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16540, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Silk Handguards until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16541, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Plate Armor until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16542, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Plate Headpiece until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16543, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Plate Leggings until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16544, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Plate Shoulders until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16545, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Plate Boots until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16548, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Plate Gauntlets until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16549, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Dragonhide Hauberk until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16550, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Dragonhide Helmet until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16551, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Dragonhide Epaulets until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16552, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Dragonhide Leggings until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16554, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Dragonhide Boots until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16555, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Dragonshide Gloves until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16558, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Leather Treads until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16560, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Leather Mitts until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16561, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Leather Helm until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16562, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Leather Spaulders until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16563, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Leather Breastplate until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16564, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Leather Legguards until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16565, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Chain Chestpiece until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16566, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Chain Helmet until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16567, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Chain Legguards until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16568, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Chain Shoulders until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16569, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Chain Sabatons until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16571, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Chain Gloves until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16573, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Mail Boots until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16574, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Mail Gauntlets until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16577, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Mail Armor until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16578, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Mail Helm until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16579, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Mail Leggings until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 16580, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Mail Spaulders until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 17586, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Dreadweave Boots until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 17588, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Dreadweave Gloves until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 17590, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Dreadweave Mantle until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 17591, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Dreadweave Hood until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 17592, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Dreadweave Robe until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 17593, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Dreadweave Pants until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 17618, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Satin Boots until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 17620, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Satin Gloves until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 17622, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Satin Mantle until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 17623, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Satin Cowl until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 17624, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Satin Robes until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 17625, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Satin Leggings until the player has completed PROGRESSION_ONYXIA'),    
(23, @LP_Classic, 29612, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Lamellar Boots until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 29613, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Lamellar Gloves until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 29614, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Lamellar Legplates until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 29615, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Lamellar Chestplate until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 29616, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Warlords Lamellar Faceguard until the player has completed PROGRESSION_ONYXIA'),
(23, @LP_Classic, 29617, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Lady Palanseer will not sell Generals Lamellar Pauldrons until the player has completed PROGRESSION_ONYXIA'),    
--
(23, @TH_Classic, 16345, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Blade until the player has completed PROGRESSION_ONYXIA'),
(23, @TH_Classic, 18826, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Shield Wall until the player has completed PROGRESSION_ONYXIA'),
(23, @TH_Classic, 18828, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Cleaver until the player has completed PROGRESSION_ONYXIA'),
(23, @TH_Classic, 18831, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Battle Axe until the player has completed PROGRESSION_ONYXIA'),
(23, @TH_Classic, 18835, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Recurve until the player has completed PROGRESSION_ONYXIA'),
(23, @TH_Classic, 18837, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Crossbow until the player has completed PROGRESSION_ONYXIA'),
(23, @TH_Classic, 18840, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Razor until the player has completed PROGRESSION_ONYXIA'),
(23, @TH_Classic, 18844, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Right Claw until the player has completed PROGRESSION_ONYXIA'),
(23, @TH_Classic, 18848, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Left Claw until the player has completed PROGRESSION_ONYXIA'),
(23, @TH_Classic, 18860, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Street Sweeper until the player has completed PROGRESSION_ONYXIA'),
(23, @TH_Classic, 18866, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Bludgeon until the player has completed PROGRESSION_ONYXIA'),
(23, @TH_Classic, 18868, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Pulverizer until the player has completed PROGRESSION_ONYXIA'),
(23, @TH_Classic, 18871, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Pig Sticker until the player has completed PROGRESSION_ONYXIA'),
(23, @TH_Classic, 18874, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords War Staff until the player has completed PROGRESSION_ONYXIA'),
(23, @TH_Classic, 18877, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Greatsword until the player has completed PROGRESSION_ONYXIA'),
(23, @TH_Classic, 23464, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Battle Mace until the player has completed PROGRESSION_ONYXIA'),
(23, @TH_Classic, 23465, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Destroyer until the player has completed PROGRESSION_ONYXIA'),
(23, @TH_Classic, 23466, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Spellblade until the player has completed PROGRESSION_ONYXIA'),
(23, @TH_Classic, 23467, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Quickblade until the player has completed PROGRESSION_ONYXIA'),
(23, @TH_Classic, 23468, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Tome of Destruction until the player has completed PROGRESSION_ONYXIA'),
(23, @TH_Classic, 23469, 0, 0, 8, 0, 66002, 0, 0, 0, 0, 0, '', 'Sergeant Thunderhorn will not sell High Warlords Tome of Mending until the player has completed PROGRESSION_ONYXIA'),
--
(23, 12796, 34129, 0, 0, 8, 0, 66008, 0, 0, 0, 0, 0, '', 'Raider Bork will not sell Swift Warstrider until the player has completed PROGRESSION_PRE_TBC');

-- WotLK pvp vendors
DELETE FROM `creature` WHERE `id1` IN 
(34043,  -- Lady Palanseer <Armor Quartermaster>
 34063); -- Blood Guard Zar'shi <Northrend Armor Quartermaster>

/* NPC Garyl - Remove non-Vanilla Tabards */
DELETE FROM `npc_vendor` WHERE `entry`= 5188 AND `item` IN (15197, 15199, 19031, 19505, 24004, 31773, 31775, 31776, 31777, 31778, 31779, 31780, 31781, 31804, 32445, 32828, 35221);

-- Nogg Quest Flags fix
UPDATE `creature_template` SET `npcflag` = `npcflag` | 2 WHERE `entry` = 3412;

-- Quest: Return to Witch Doctor Uzer'i
UPDATE `quest_template` SET `LogDescription`   = "Deliver Neeru's Herb Pouch to Witch Doctor Uzer'i in Feralas." WHERE `ID` = 3122;
UPDATE `creature_queststarter` SET `id` = 3216 WHERE `quest` = 3122;

-- Quest: A Strange Request to use Vanilla NPCs
UPDATE `quest_template` SET 
`LogDescription`   = "Take the Shrunken Head to Neeru Fireblade in Orgrimmar.", 
`QuestDescription` = "Neeru Fireblade in Orgrimmar has what I need to get started here! He has mixed up a concoction that I need for my... well, you'll see.$B$B
                      Off with you now -- to Orgrimmar. Here, take this with you. It's a shrunken head that I promised Neeru in exchange for the herbs. 
                      It's the head of some poor dwarf I ventured across in the forest. I'm sure Neeru will be pleased.$B$B
                      You'll find Neeru in the Cleft of Shadow." WHERE `ID` = 3121;

UPDATE `creature_questender`   SET `id` = 3216 WHERE `quest` = 3121;

-- smart scripts
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (10540, 14720);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (10540, 14720);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(10540, 0, 0, 0, 4, 0, 100, 1, 0, 0, 0, 0, 0, 0, 4, 5881, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Vol jin - On Aggro - Play Sound (No Repeat)'),
--
(14720, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 9347, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Saurfang - On Aggro - Cast Mortal Strike trigger'),
(14720, 0, 1, 2, 32, 0, 100, 0, 2000, 9999, 0, 0, 0, 0, 11, 26339, 0, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 0,   'Saurfang - On receiving high damage - Cast Saurfang Rage'), -- should be critical damage
(14720, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,              'Saurfang - On Cast Power Saurfang Rage - Say Line 0'),
(14720, 0, 3, 0, 9, 0, 100, 0, 0, 0, 25000, 25000, 8, 25, 11, 15749, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Saurfang - Within 8-25 Range - Cast Shield Charge'),
(14720, 0, 4, 0, 12, 0, 100, 0, 0, 20, 2500, 3500, 0, 0, 11, 7160, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0,   'Saurfang - Target Between 0-20% Health - Cast Execute'),
(14720, 0, 5, 0, 5, 0, 100, 0, 5000, 5000, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Saurfang - On Kill - Say Line 1');

DELETE FROM `creature_text` WHERE `CreatureID` IN (14720);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(14720, 0, 0, '%s\'s eyes glow red for a brief moment.', 16, 0, 100, 0, 0, 0, 11563, 0, 'Saurfang Rage'),
(14720, 1, 0, 'Is that the best you can do?',            16, 0, 100, 0, 0, 0, 11564, 0, 'Saurfang on Kill'); 

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

-- Summon Felsteed (Warlock)
DELETE FROM `creature_queststarter` WHERE `id` = 3326 AND `quest` = 3631;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (3326, 3631);

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

UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` = 3296;  -- Orgrimmar Grunt
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` = 3310;  -- Doras <Wind Rider Master>
UPDATE `creature_template` SET `minlevel` = 63, `maxlevel` = 63 WHERE `entry` = 4949;  -- Thrall <Warchief>
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry` = 10540; -- Vol'jin <King of Darkspear Trolls>
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry` = 14375; -- Scout Stronghand
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry` = 14376; -- Scout Manslayer
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry` = 14377; -- Scout Tharr
UPDATE `creature_template` SET `minlevel` = 62, `maxlevel` = 62 WHERE `entry` = 14720; -- High Overlord Saurfang
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60, `rank` = 0 WHERE `entry` = 14304; -- Kor'kron Elite
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60, `rank` = 0 WHERE `entry` = 15350; -- Horde Warbringer

-- Legionnaire Teena
UPDATE `creature_template` SET `subname`= NULL, `npcflag` = 0, `faction` = 85 WHERE `entry` = 12788;
UPDATE `creature_template_locale` SET `Title` = NULL WHERE `entry` = 12788;

-- Nazgrel <Advisor to Thrall>
UPDATE `creature_template` SET `scale`=0.7, `npcflag`=2, `faction`=29, `gossip_menu_id`=0 WHERE `entry`=3230;

-- this should probably be moved to vanilla_vendors
-- Olvia <Meat Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=3312 AND `item` IN (27854, 33454, 35953);

-- Trak'gen <General Goods Merchant>
DELETE FROM `npc_vendor` WHERE `entry`=3313 AND `item` IN (25861, 25872, 25873, 25875, 25876, 28053, 28060, 28979, 29007, 29008, 29009, 29010, 29013, 29014);

-- Kaja <Guns and Ammo Merchant>
DELETE FROM `npc_vendor` WHERE `entry`=3322 AND `item`=28060;

-- Horthus <Reagents Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=3323 AND `item` IN (22147, 22148, 37201, 44605, 44614, 44615);

-- Kor'jus <Mushroom Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=3329 AND `item` IN (27859, 33452, 35947);

-- Rekkul <Poison Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=3334 AND `item` IN (21835, 21927, 22053, 22054, 22055, 43230, 43231, 43232, 43233, 43234, 43235, 43237);

-- Hagrus <Reagents Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=3335 AND `item` IN (22147, 22148, 37201);

-- Shan'ti <Fruit Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=3342 AND `item` IN (27856, 35948, 35949);

-- Kithas <Enchanting Supplies>
DELETE FROM `npc_vendor` WHERE `entry`=3346 AND `item`=6342;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3346, 6342, 1, 7200);

-- Kor'geld <Alchemy Supplies>
DELETE FROM `npc_vendor` WHERE `entry`=3348 AND `item`=40411;

-- Asoran <General Goods Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=3350 AND `item` IN (28053, 28060);

-- Magenius <Reagents Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=3351 AND `item` IN (22147, 22148, 37201);

-- Gorina <Mining Supplier>
DELETE FROM `npc_vendor` WHERE `entry`=3358 AND `item` IN (20815, 20824);

-- Ogunaro Wolfrunner <Kennel Master>
DELETE FROM `npc_vendor` WHERE `entry`=3362 AND `item`=46099;

-- Borya <Tailoring Supplies>
DELETE FROM `npc_vendor` WHERE `entry`=3364 AND `item`=38426;

-- Tamar <Leatherworking Supplies>
DELETE FROM `npc_vendor` WHERE `entry`=3366 AND `item`=38426;

-- Felika <General Trade Goods Merchant>
DELETE FROM `npc_vendor` WHERE `entry`=3367 AND `item` IN (14341, 18256, 20856);
DELETE FROM `npc_vendor` WHERE `entry`=3367 AND `item` IN (2324, 2605, 6260, 6529);
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES (3367, 2324), (3367, 2605), (3367, 6260), (3367, 6529);

-- Borstan <Meat Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=3368 AND `item` IN (27854, 33454, 35953);

-- Xen'to <Cooking Supplier>
DELETE FROM `npc_vendor` WHERE `entry`=3400 AND `item`=30817;

-- Jin'sora <Bow Merchant>
DELETE FROM `npc_vendor` WHERE `entry`=3410 AND `item` IN (11303, 11306, 11307, 28053);

-- Sovik <Engineering Supplies>
DELETE FROM `npc_vendor` WHERE `entry`=3413 AND `item` IN (22729, 39684, 40533);

-- Garyl <Tabard Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=5188 AND `item` IN (15197, 15199, 19031, 19505, 24004, 31773, 31775, 31776, 31777, 31778, 31779, 31780, 31781, 31804, 32445, 32828, 35221);

-- Shimra <General Trade Goods Merchant>
DELETE FROM `npc_vendor` WHERE `entry`=5817 AND `item` IN (10648, 14341, 18256, 30817, 39354);

-- Innkeeper Gryshka <Innkeeper>
DELETE FROM `npc_vendor` WHERE `entry`=6929 AND `item` IN (27854, 28399, 33444, 33445, 33454, 35953, 35954);

-- Legionnaire Teena
DELETE FROM `npc_vendor` WHERE `entry`= 12788;


SET @Stonehide  := 112793; -- Brave Stonehide <Officer Accessories Quartermaster>, Vanilla
SET @Zarg       := 112794; -- Stone Guard Zarg <Food and Drink>, Vanilla
SET @Hola       := 112795; -- First Sergeant Hola'mahi, Vanilla
SET @TH_Classic := 26396;  -- Sergeant Thunderhorn, Vanilla
SET @TH_TBC     := 14581;  -- Sergeant Thunderhorn, TBC
SET @LP_Classic := 26397;  -- Lady Palanseer <Armor Quartermaster>, Vanilla
SET @LP_TBC     := 12792;  -- Lady Palanseer <Armor Quartermaster>, TBC


DELETE FROM `creature_template` WHERE `entry` IN (@Stonehide, @Zarg, @Hola);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, 
`exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, 
`BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, 
`lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, 
`RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 

(@Stonehide, 0, 0, 0, 0, 0, 'Brave Stonehide', 'Officer Accessories Quartermaster', NULL, 0, 55, 55, 0, 125, 128, 1, 1.14286, 1, 1, 18, 1, 0, 0, 2.9, 2000, 2000, 1, 1, 1, 256, 2048, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 2, 1, 1, 1, 0, 0, 1, 0, 0, 0, 'npc_ipp_pre_tbc', 12340),
(@Zarg, 0, 0, 0, 0, 0, 'Stone Guard Zarg', 'Food and Drink', NULL, 0, 55, 55, 0, 125, 130, 1, 1.14286, 1, 1, 18, 1, 0, 0, 1.05, 2000, 1606, 1, 1, 1, 768, 2048, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, '', 0, 1, 2, 1, 1, 1, 0, 0, 1, 0, 0, 0, 'npc_ipp_pre_tbc', 12340),
(@Hola, 0, 0, 0, 0, 0, 'First Sergeant Hola\'mahi', 'Reagent Vendor', NULL, 0, 55, 55, 0, 125, 130, 1, 1.14286, 1, 1, 18, 1, 0, 0, 1.2, 2000, 1551, 1, 1, 1, 768, 2048, 0, 0, 0, 0, 0, 0, 7, 4096, 0, 0, 0, 0, 0, 0, 0, '', 1, 1, 2, 1, 1, 1, 0, 0, 1, 0, 0, 0, 'npc_ipp_pre_tbc', 12340);

DELETE FROM `creature_template_locale` WHERE `entry` IN (@Stonehide, @Zarg, @Hola);
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
(@Hola, 'zhTW', '一等士官霍拉麥', '施法材料', 18019);

DELETE FROM `creature_template_model` WHERE `CreatureID` IN (@Stonehide, @Zarg, @Hola);
INSERT INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES 
(@Stonehide, 0, 12675, 1, 1, 12340),
(@Zarg, 0, 12676, 1, 1, 12340),
(@Hola, 0, 12677, 1, 1, 12340);

UPDATE `creature_template` SET `subname` = 'Officer Accessories Quartermaster' WHERE `entry` = 12793;
UPDATE `creature_template` SET `subname` = 'Weapons Quartermaster' WHERE `entry` = 12794;
UPDATE `creature_template` SET `subname` = 'Armor Quartermaster'  WHERE `entry` = 12795;
UPDATE `creature_template` SET `subname` = 'Mount Quartermaster' WHERE `entry` = 12796;

UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_pre_tbc' WHERE `entry` IN (12799, @TH_Classic, @LP_Classic);
UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_tbc' WHERE `entry` IN (12788, 12793, 12794, 12795, 19850, 20278, 23396, 23447, @TH_TBC, @LP_TBC);

UPDATE `creature_template_addon` SET `mount` = 0 WHERE `entry` = 12796;

DELETE FROM `creature` WHERE `guid` IN (125688, 125690, 125695, 612792, 612793, 612794, 612795, 612796, 612799, 614581, 620278, 623396, 623447, 626396, 626397);
INSERT INTO `creature` (`guid`, `id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES 

(612799, 12799, 1, 1632.21, -4262.19, 49.027, 3.63029, 430),        -- Sergeant Ba'sha <Accessories Quartermaster>, Vanilla
(626397, @LP_Classic, 1, 1669.78, -4200.1, 56.3815, 3.61023, 180),  -- Lady Palanseer <Armor Quartermaster>, Vanilla
(612792, @LP_TBC, 1, 1669.78, -4200.1, 56.3815, 3.61023, 180),      -- Lady Palanseer <Armor Quartermaster>, TBC
(612793, @Stonehide, 1, 1657.6, -4191.97, 56.383, 4.52365, 180),    -- Brave Stonehide <Officer Accessories Quartermaster>, Vanilla
(125690, 12793, 1, 1672.24, -4206.81, 56.3827, 3.30568, 180),       -- Brave Stonehide <Officer Accessories Quartermaster>, TBC
(612794, @Zarg, 1, 1641.65, -4197.52, 56.3823, 5.41219, 180),       -- Stone Guard Zarg <Food and Drink>, Vanilla
(125688, 12794, 1, 1641.65, -4197.52, 56.3823, 5.41219, 180),       -- Stone Guard Zarg <Weapons Quartermaster>, TBC
(612795, @Hola, 1, 1673.9, -4216, 56.3826, 2.93578, 180),           -- First Sergeant Hola'mahi <Reagent Vendor>, Vanilla
(125695, 12795, 1, 1673.9, -4216, 56.3826, 2.93578, 180),           -- First Sergeant Hola'mahi <Armor Quartermaster>, TBC
(626396, @TH_Classic, 1, 1644.52, -4195.26, 56.3826, 5.43078, 180), -- Sergeant Thunderhorn <Weapons Quartermaster>, Vanilla
(614581, @TH_TBC, 1, 1669.09, -4196.78, 56.4831, 4.10416, 180),     -- Sergeant Thunderhorn <Weapons Quartermaster>, TBC
(612796, 12796, 1, 1674.43, -4212.55, 56.3829, 3.00254, 180),       -- Raider Bork <Mount Quartermaster>
(623447, 23447, 1, 1644.52, -4195.26, 56.3826, 5.43078, 180),       -- Sergeant Kien <Armor Quartermaster>, TBC
(620278, 20278, 1, 1654.25, -4189.82, 56.3825, 4.71787, 180),       -- Vixton Pinchwhistle <Arena Vendor>, TBC
(623396, 23396, 1, 1660.37, -4190.74, 56.3817, 4.54116, 180);       -- Krixel Pinchwhistle <Arena Vendor>, TBC


-- Brave Stonehide <Officer Accessories Quartermaster> - Vanilla
DELETE FROM `npc_vendor` WHERE `entry` = @Stonehide;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(@Stonehide, 0, 15199, 0, 0, 1006, 0), (@Stonehide, 0, 18607, 0, 0, 386, 0), (@Stonehide, 0, 18839, 0, 0, 2354, 0), (@Stonehide, 0, 18841, 0, 0, 2354, 0);

-- Brave Stonehide <Officer Accessories Quartermaster> - TBC
DELETE FROM `npc_vendor` WHERE `entry` = 12793;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(12793, 15197, 0, 0, 1007), (12793, 15199, 0, 0, 1006), (12793, 15200, 0, 0, 838), (12793, 16335, 0, 0, 491), (12793, 16341, 0, 0, 986), (12793, 16486, 0, 0, 492),
(12793, 16497, 0, 0, 492), (12793, 16532, 0, 0, 492), (12793, 18427, 0, 0, 1050), (12793, 18428, 0, 0, 930), (12793, 18429, 0, 0, 492), (12793, 18430, 0, 0, 931),
(12793, 18432, 0, 0, 931), (12793, 18434, 0, 0, 492), (12793, 18435, 0, 0, 931), (12793, 18436, 0, 0, 931), (12793, 18437, 0, 0, 931), (12793, 18461, 0, 0, 774), 
(12793, 18607, 0, 0, 386), (12793, 18834, 0, 0, 634), (12793, 18839, 0, 0, 460), (12793, 18841, 0, 0, 460), (12793, 18845, 0, 0, 634), (12793, 18846, 0, 0, 634),
(12793, 18849, 0, 0, 634), (12793, 18850, 0, 0, 634), (12793, 18851, 0, 0, 634), (12793, 18852, 0, 0, 634), (12793, 18853, 0, 0, 634), (12793, 24551, 0, 0, 125),
(12793, 28118, 0, 0, 95), (12793, 28119, 0, 0, 95), (12793, 28120, 0, 0, 95), (12793, 28123, 0, 0, 99), (12793, 28239, 0, 0, 2404), (12793, 28240, 0, 0, 2404),
(12793, 28241, 0, 0, 2404), (12793, 28242, 0, 0, 2404), (12793, 28243, 0, 0, 2404), (12793, 28244, 0, 0, 125), (12793, 28245, 0, 0, 125), (12793, 28246, 0, 0, 129),
(12793, 28247, 0, 0, 129), (12793, 28362, 0, 0, 95), (12793, 28363, 0, 0, 99), (12793, 28377, 0, 0, 165), (12793, 28378, 0, 0, 165), (12793, 28379, 0, 0, 165),
(12793, 28380, 0, 0, 165), (12793, 29592, 0, 0, 634), (12793, 30343, 0, 0, 2404), (12793, 30344, 0, 0, 2404), (12793, 30345, 0, 0, 2404), (12793, 30346, 0, 0, 2404),
(12793, 31838, 0, 0, 1648), (12793, 31839, 0, 0, 1649), (12793, 31840, 0, 0, 1648), (12793, 31841, 0, 0, 1649), (12793, 31852, 0, 0, 1652), (12793, 31853, 0, 0, 1653),
(12793, 31854, 0, 0, 1652), (12793, 31855, 0, 0, 1653), (12793, 32453, 0, 0, 1564), (12793, 32455, 0, 0, 460);

-- Stone Guard Zarg <Food and Drink>, Vanilla
DELETE FROM `npc_vendor` WHERE `entry` = @Zarg; 
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES
(@Zarg, 117), (@Zarg, 159), (@Zarg, 1179), (@Zarg, 1205), (@Zarg, 1645), (@Zarg, 1708), (@Zarg, 2287), (@Zarg, 2593), (@Zarg, 2594), (@Zarg, 2595), (@Zarg, 2596), (@Zarg, 2723),
(@Zarg, 3770), (@Zarg, 3771), (@Zarg, 4536), (@Zarg, 4537), (@Zarg, 4538), (@Zarg, 4539), (@Zarg, 4540), (@Zarg, 4541), (@Zarg, 4542), (@Zarg, 4544), (@Zarg, 4599), (@Zarg, 4601),
(@Zarg, 4602), (@Zarg, 4604), (@Zarg, 4605), (@Zarg, 4606), (@Zarg, 4607), (@Zarg, 4608), (@Zarg, 8766), (@Zarg, 8948), (@Zarg, 8950), (@Zarg, 8952), (@Zarg, 8953);

-- Stone Guard Zarg <Weapons Quartermaster>, TBC
DELETE FROM `npc_vendor` WHERE `entry` = 12794;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES
(12794,0,16345,0,0,2291,0), (12794,0,18826,0,0,2291,0), (12794,0,18828,0,0,2291,0), (12794,0,18831,0,0,2257,0), (12794,0,18835,0,0,2291,0), (12794,0,18837,0,0,2291,0), (12794,0,18840,0,0,2291,0), 
(12794,0,18844,0,0,2291,0), (12794,0,18848,0,0,2291,0), (12794,0,18860,0,0,2291,0), (12794,0,18866,0,0,2291,0), (12794,0,18868,0,0,2257,0), (12794,0,18871,0,0,2257,0), (12794,0,18874,0,0,2257,0), 
(12794,0,18877,0,0,2257,0), (12794,0,23464,0,0,2291,0), (12794,0,23465,0,0,2257,0), (12794,0,23466,0,0,2291,0), (12794,0,23467,0,0,2291,0), (12794,0,23468,0,0,2291,0), (12794,0,23469,0,0,2291,0);

-- First Sergeant Hola'mahi <Reagent Vendor> - Vanilla
DELETE FROM `npc_vendor` WHERE `entry` = @Hola; 
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES
(@Hola, 5565), (@Hola, 16583), (@Hola, 17020), (@Hola, 17021), (@Hola, 17026), (@Hola, 17028), (@Hola, 17029), (@Hola, 17030),
(@Hola, 17031), (@Hola, 17032), (@Hola, 17033), (@Hola, 17034), (@Hola, 17035), (@Hola, 17036), (@Hola, 17037), (@Hola, 17038);

-- First Sergeant Hola'mahi <Armor Quartermaster> - TBC
DELETE FROM `npc_vendor` WHERE `entry` = 12795;
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES 
(12795,0,16533,0,0,464,0), (12795,0,16534,0,0,542,0), (12795,0,16535,0,0,463,0), (12795,0,16536,0,0,465,0), (12795,0,16539,0,0,465,0), (12795,0,16540,0,0,541,0), (12795,0,16541,0,0,463,0), 
(12795,0,16542,0,0,464,0), (12795,0,16543,0,0,542,0), (12795,0,16544,0,0,465,0), (12795,0,16545,0,0,465,0), (12795,0,16548,0,0,541,0), (12795,0,16549,0,0,463,0), (12795,0,16550,0,0,464,0), 
(12795,0,16551,0,0,465,0), (12795,0,16552,0,0,542,0), (12795,0,16554,0,0,465,0), (12795,0,16555,0,0,541,0), (12795,0,16558,0,0,465,0), (12795,0,16560,0,0,541,0), (12795,0,16561,0,0,464,0), 
(12795,0,16562,0,0,465,0), (12795,0,16563,0,0,463,0), (12795,0,16564,0,0,542,0), (12795,0,16565,0,0,463,0), (12795,0,16566,0,0,464,0), (12795,0,16567,0,0,542,0), (12795,0,16568,0,0,465,0), 
(12795,0,16569,0,0,465,0), (12795,0,16571,0,0,541,0), (12795,0,16573,0,0,465,0), (12795,0,16574,0,0,541,0), (12795,0,16577,0,0,463,0), (12795,0,16578,0,0,464,0), (12795,0,16579,0,0,542,0), 
(12795,0,16580,0,0,465,0), (12795,0,17586,0,0,465,0), (12795,0,17588,0,0,541,0), (12795,0,17590,0,0,465,0), (12795,0,17591,0,0,464,0), (12795,0,17592,0,0,463,0), (12795,0,17593,0,0,542,0), 
(12795,0,17618,0,0,465,0), (12795,0,17620,0,0,541,0), (12795,0,17622,0,0,465,0), (12795,0,17623,0,0,464,0), (12795,0,17624,0,0,463,0), (12795,0,17625,0,0,542,0), (12795,0,22843,0,0,427,0), 
(12795,0,22852,0,0,427,0), (12795,0,22855,0,0,427,0), (12795,0,22856,0,0,427,0), (12795,0,22857,0,0,427,0), (12795,0,22858,0,0,427,0), (12795,0,22859,0,0,427,0), (12795,0,22860,0,0,427,0),
(12795,0,22862,0,0,428,0), (12795,0,22863,0,0,428,0), (12795,0,22864,0,0,428,0), (12795,0,22865,0,0,428,0), (12795,0,22867,0,0,428,0), (12795,0,22868,0,0,428,0), (12795,0,22869,0,0,428,0), 
(12795,0,22870,0,0,428,0), (12795,0,22872,0,0,652,0), (12795,0,22873,0,0,653,0), (12795,0,22874,0,0,652,0), (12795,0,22875,0,0,653,0), (12795,0,22876,0,0,652,0), (12795,0,22877,0,0,652,0), 
(12795,0,22878,0,0,653,0), (12795,0,22879,0,0,652,0), (12795,0,22880,0,0,653,0), (12795,0,22881,0,0,653,0), (12795,0,22882,0,0,653,0), (12795,0,22883,0,0,653,0), (12795,0,22884,0,0,652,0), 
(12795,0,22885,0,0,652,0), (12795,0,22886,0,0,652,0), (12795,0,22887,0,0,653,0), (12795,0,23243,0,0,427,0), (12795,0,23244,0,0,444,0), (12795,0,23251,0,0,444,0), (12795,0,23252,0,0,427,0), 
(12795,0,23253,0,0,444,0), (12795,0,23254,0,0,427,0), (12795,0,23255,0,0,444,0), (12795,0,23256,0,0,427,0), (12795,0,23257,0,0,444,0), (12795,0,23258,0,0,427,0), (12795,0,23259,0,0,444,0), 
(12795,0,23260,0,0,427,0), (12795,0,23261,0,0,444,0), (12795,0,23262,0,0,427,0), (12795,0,23263,0,0,444,0), (12795,0,23264,0,0,427,0), (12795,0,29600,0,0,428,0), (12795,0,29601,0,0,427,0), 
(12795,0,29602,0,0,652,0), (12795,0,29603,0,0,653,0), (12795,0,29604,0,0,444,0), (12795,0,29605,0,0,427,0), (12795,0,29612,0,0,465,0), (12795,0,29613,0,0,541,0), (12795,0,29614,0,0,542,0), 
(12795,0,29615,0,0,463,0), (12795,0,29616,0,0,464,0), (12795,0,29617,0,0,465,0);

-- Raider Bork <Mount Quartermaster>
DELETE FROM `npc_vendor` WHERE `entry`= 12796;
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES
(12796, 18245, 423), (12796, 18246, 423), (12796, 18247, 423), (12796, 18248, 423), (12796, 34129, 423);

-- Vixton Pinchwhistle <Arena Vendor> - TBC
DELETE FROM `npc_vendor` WHERE `entry` = 20278;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(20278, 24544, 0, 0, 22), (20278, 24545, 0, 0, 22), (20278, 24546, 0, 0, 24), (20278, 24547, 0, 0, 22), (20278, 24549, 0, 0, 21), (20278, 24550, 0, 0, 26),
(20278, 24552, 0, 0, 22), (20278, 24553, 0, 0, 22), (20278, 24554, 0, 0, 24), (20278, 24555, 0, 0, 22), (20278, 24556, 0, 0, 21), (20278, 24557, 0, 0, 26),
(20278, 25830, 0, 0, 22), (20278, 25831, 0, 0, 22), (20278, 25832, 0, 0, 24), (20278, 25833, 0, 0, 22), (20278, 25834, 0, 0, 21), (20278, 25854, 0, 0, 24),
(20278, 25855, 0, 0, 22), (20278, 25856, 0, 0, 22), (20278, 25857, 0, 0, 21), (20278, 25858, 0, 0, 22), (20278, 25997, 0, 0, 22), (20278, 25998, 0, 0, 22),
(20278, 25999, 0, 0, 24), (20278, 26000, 0, 0, 21), (20278, 26001, 0, 0, 22), (20278, 27469, 0, 0, 22), (20278, 27470, 0, 0, 21), (20278, 27471, 0, 0, 22),
(20278, 27472, 0, 0, 22), (20278, 27473, 0, 0, 24), (20278, 27702, 0, 0, 22), (20278, 27703, 0, 0, 21), (20278, 27704, 0, 0, 22), (20278, 27705, 0, 0, 22),
(20278, 27706, 0, 0, 24), (20278, 27707, 0, 0, 21), (20278, 27708, 0, 0, 22), (20278, 27709, 0, 0, 22), (20278, 27710, 0, 0, 24), (20278, 27711, 0, 0, 22),
(20278, 27879, 0, 0, 22), (20278, 27880, 0, 0, 21), (20278, 27881, 0, 0, 22), (20278, 27882, 0, 0, 22), (20278, 27883, 0, 0, 24), (20278, 28126, 0, 0, 21),
(20278, 28127, 0, 0, 22), (20278, 28128, 0, 0, 22), (20278, 28129, 0, 0, 24), (20278, 28130, 0, 0, 22), (20278, 28136, 0, 0, 21), (20278, 28137, 0, 0, 22),
(20278, 28138, 0, 0, 22), (20278, 28139, 0, 0, 24), (20278, 28140, 0, 0, 22), (20278, 28294, 0, 0, 26), (20278, 28295, 0, 0, 133), (20278, 28297, 0, 0, 148),
(20278, 28298, 0, 0, 26), (20278, 28299, 0, 0, 26), (20278, 28300, 0, 0, 26), (20278, 28302, 0, 0, 21), (20278, 28305, 0, 0, 133), (20278, 28307, 0, 0, 21),
(20278, 28308, 0, 0, 133), (20278, 28309, 0, 0, 21), (20278, 28310, 0, 0, 21), (20278, 28312, 0, 0, 133), (20278, 28313, 0, 0, 133), (20278, 28314, 0, 0, 21),
(20278, 28319, 0, 0, 2388), (20278, 28320, 0, 0, 2388), (20278, 28331, 0, 0, 22), (20278, 28332, 0, 0, 22), (20278, 28333, 0, 0, 24), (20278, 28334, 0, 0, 22),
(20278, 28335, 0, 0, 21), (20278, 28346, 0, 0, 21), (20278, 28355, 0, 0, 2388), (20278, 28356, 0, 0, 2388), (20278, 28357, 0, 0, 2388), (20278, 28358, 0, 0, 22),
(20278, 28476, 0, 0, 26), (20278, 30186, 0, 0, 24), (20278, 30187, 0, 0, 22), (20278, 30188, 0, 0, 21), (20278, 30200, 0, 0, 22), (20278, 30201, 0, 0, 22),
(20278, 31375, 0, 0, 21), (20278, 31376, 0, 0, 22), (20278, 31377, 0, 0, 22), (20278, 31378, 0, 0, 24), (20278, 31379, 0, 0, 22), (20278, 31396, 0, 0, 22),
(20278, 31397, 0, 0, 21), (20278, 31400, 0, 0, 22), (20278, 31406, 0, 0, 22), (20278, 31407, 0, 0, 24), (20278, 31409, 0, 0, 21), (20278, 31410, 0, 0, 22),
(20278, 31411, 0, 0, 22), (20278, 31412, 0, 0, 24), (20278, 31413, 0, 0, 22), (20278, 31613, 0, 0, 22), (20278, 31614, 0, 0, 21), (20278, 31616, 0, 0, 22),
(20278, 31618, 0, 0, 22), (20278, 31619, 0, 0, 24), (20278, 32450, 0, 0, 148), (20278, 32451, 0, 0, 148), (20278, 32452, 0, 0, 21), (20278, 33936, 0, 0, 2388),
(20278, 33939, 0, 0, 2388), (20278, 33942, 0, 0, 2388), (20278, 33945, 0, 0, 2388), (20278, 33948, 0, 0, 2388), (20278, 33951, 0, 0, 2388);

-- Krixel Pinchwhistle <Arena Vendor> - TBC
DELETE FROM `npc_vendor` WHERE `entry` = 23396;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(23396, 30486, 0, 0, 2285), (23396, 30487, 0, 0, 2283), (23396, 30488, 0, 0, 2285), (23396, 30489, 0, 0, 2285), (23396, 30490, 0, 0, 2288), (23396, 31958, 0, 0, 2283),
(23396, 31959, 0, 0, 1664), (23396, 31960, 0, 0, 2285), (23396, 31961, 0, 0, 2283), (23396, 31962, 0, 0, 2285), (23396, 31963, 0, 0, 2285), (23396, 31964, 0, 0, 2288),
(23396, 31965, 0, 0, 2287), (23396, 31966, 0, 0, 1664), (23396, 31967, 0, 0, 2283), (23396, 31968, 0, 0, 2285), (23396, 31969, 0, 0, 2285), (23396, 31971, 0, 0, 2288),
(23396, 31972, 0, 0, 2285), (23396, 31973, 0, 0, 2283), (23396, 31974, 0, 0, 2285), (23396, 31975, 0, 0, 2285), (23396, 31976, 0, 0, 2288), (23396, 31977, 0, 0, 2285),
(23396, 31978, 0, 0, 2283), (23396, 31979, 0, 0, 2288), (23396, 31980, 0, 0, 2285), (23396, 31981, 0, 0, 2283), (23396, 31982, 0, 0, 2285), (23396, 31983, 0, 0, 2285),
(23396, 31984, 0, 0, 1664), (23396, 31985, 0, 0, 2283), (23396, 31986, 0, 0, 1664), (23396, 31987, 0, 0, 2283), (23396, 31988, 0, 0, 2285), (23396, 31989, 0, 0, 2285),
(23396, 31990, 0, 0, 2288), (23396, 31991, 0, 0, 2285), (23396, 31992, 0, 0, 2285), (23396, 31993, 0, 0, 2283), (23396, 31995, 0, 0, 2285), (23396, 31996, 0, 0, 2288),
(23396, 31997, 0, 0, 2285), (23396, 31998, 0, 0, 2283), (23396, 31999, 0, 0, 2285), (23396, 32000, 0, 0, 2285), (23396, 32001, 0, 0, 2288), (23396, 32002, 0, 0, 2285),
(23396, 32003, 0, 0, 2283), (23396, 32004, 0, 0, 2285), (23396, 32005, 0, 0, 2283), (23396, 32006, 0, 0, 2285), (23396, 32007, 0, 0, 2285), (23396, 32008, 0, 0, 2288),
(23396, 32009, 0, 0, 2285), (23396, 32010, 0, 0, 2283), (23396, 32011, 0, 0, 2285), (23396, 32012, 0, 0, 2285), (23396, 32013, 0, 0, 2288), (23396, 32014, 0, 0, 1664),
(23396, 32015, 0, 0, 2283), (23396, 32016, 0, 0, 2285), (23396, 32017, 0, 0, 2285), (23396, 32018, 0, 0, 2288), (23396, 32019, 0, 0, 2285), (23396, 32020, 0, 0, 2285),
(23396, 32021, 0, 0, 2283), (23396, 32022, 0, 0, 2285), (23396, 32023, 0, 0, 2285), (23396, 32024, 0, 0, 2288), (23396, 32025, 0, 0, 1664), (23396, 32026, 0, 0, 2287),
(23396, 32027, 0, 0, 2283), (23396, 32028, 0, 0, 2287), (23396, 32029, 0, 0, 2285), (23396, 32030, 0, 0, 2283), (23396, 32031, 0, 0, 2285), (23396, 32032, 0, 0, 2285),
(23396, 32033, 0, 0, 2288), (23396, 32034, 0, 0, 2283), (23396, 32035, 0, 0, 2285), (23396, 32036, 0, 0, 2285), (23396, 32037, 0, 0, 2288), (23396, 32038, 0, 0, 2285),
(23396, 32039, 0, 0, 2285), (23396, 32040, 0, 0, 2283), (23396, 32041, 0, 0, 2285), (23396, 32042, 0, 0, 2285), (23396, 32043, 0, 0, 2288), (23396, 32044, 0, 0, 2287),
(23396, 32045, 0, 0, 2285), (23396, 32046, 0, 0, 2283), (23396, 32047, 0, 0, 2288), (23396, 32048, 0, 0, 2285), (23396, 32049, 0, 0, 2283), (23396, 32050, 0, 0, 2285),
(23396, 32051, 0, 0, 2285), (23396, 32052, 0, 0, 2287), (23396, 32053, 0, 0, 2284), (23396, 32054, 0, 0, 1758), (23396, 32055, 0, 0, 1664), (23396, 32056, 0, 0, 2283),
(23396, 32057, 0, 0, 2285), (23396, 32058, 0, 0, 2285), (23396, 32059, 0, 0, 2288), (23396, 32060, 0, 0, 2285), (23396, 32961, 0, 0, 2283), (23396, 32962, 0, 0, 1758),
(23396, 32963, 0, 0, 2284), (23396, 32964, 0, 0, 2284), (23396, 33076, 0, 0, 1758), (23396, 33077, 0, 0, 1758), (23396, 33078, 0, 0, 1758), (23396, 33309, 0, 0, 2285),
(23396, 33313, 0, 0, 2285), (23396, 33937, 0, 0, 1758), (23396, 33940, 0, 0, 1758), (23396, 33943, 0, 0, 1758), (23396, 33946, 0, 0, 1758), (23396, 33949, 0, 0, 1758),
(23396, 33952, 0, 0, 1758);

-- Sergeant Kien <Armor Quartermaster> - TBC
DELETE FROM `npc_vendor` WHERE `entry` = 23447;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(23447, 32785, 0, 0, 1911), (23447, 32786, 0, 0, 1911), (23447, 32787, 0, 0, 1911), (23447, 32788, 0, 0, 1911), (23447, 32789, 0, 0, 1911), (23447, 32790, 0, 0, 1911), 
(23447, 32791, 0, 0, 1911), (23447, 32792, 0, 0, 1911), (23447, 32793, 0, 0, 1911), (23447, 32794, 0, 0, 1911), (23447, 32795, 0, 0, 1911), (23447, 32796, 0, 0, 1911), 
(23447, 32797, 0, 0, 1923), (23447, 32798, 0, 0, 1923), (23447, 32799, 0, 0, 1923), (23447, 32800, 0, 0, 1923), (23447, 32801, 0, 0, 1923), (23447, 32802, 0, 0, 1923), 
(23447, 32803, 0, 0, 1923), (23447, 32804, 0, 0, 1923), (23447, 32805, 0, 0, 1923), (23447, 32806, 0, 0, 1923), (23447, 32807, 0, 0, 1923), (23447, 32808, 0, 0, 1923), 
(23447, 32809, 0, 0, 1935), (23447, 32810, 0, 0, 1935), (23447, 32811, 0, 0, 1935), (23447, 32812, 0, 0, 1935), (23447, 32813, 0, 0, 1935), (23447, 32814, 0, 0, 1935),
(23447, 32816, 0, 0, 1935), (23447, 32817, 0, 0, 1935), (23447, 32818, 0, 0, 1935), (23447, 32819, 0, 0, 1935), (23447, 32820, 0, 0, 1935), (23447, 32821, 0, 0, 1935), 
(23447, 32979, 0, 0, 1923), (23447, 32980, 0, 0, 1935), (23447, 32981, 0, 0, 1911), (23447, 32988, 0, 0, 1923), (23447, 32989, 0, 0, 1935), (23447, 32990, 0, 0, 1911),
(23447, 32997, 0, 0, 1935), (23447, 32998, 0, 0, 1923), (23447, 32999, 0, 0, 1911), (23447, 33056, 0, 0, 129), (23447, 33057, 0, 0, 129), (23447, 33064, 0, 0, 129), 
(23447, 33065, 0, 0, 127), (23447, 33066, 0, 0, 127), (23447, 33067, 0, 0, 127), (23447, 33068, 0, 0, 127);

-- Sergeant Thunderhorn <Weapons Quartermaster> - vanilla
DELETE FROM `npc_vendor` WHERE `entry` = @TH_Classic;
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES
(@TH_Classic, 16345, 2291), (@TH_Classic, 18826, 2291), (@TH_Classic, 18828, 2291), (@TH_Classic, 18831, 2257), (@TH_Classic, 18835, 2291), (@TH_Classic, 18837, 2291), (@TH_Classic, 18840, 2291), 
(@TH_Classic, 18844, 2291), (@TH_Classic, 18848, 2291), (@TH_Classic, 18860, 2291), (@TH_Classic, 18866, 2291), (@TH_Classic, 18868, 2257), (@TH_Classic, 18871, 2257), (@TH_Classic, 18874, 2257), 
(@TH_Classic, 18877, 2257), (@TH_Classic, 23464, 2291), (@TH_Classic, 23465, 2257), (@TH_Classic, 23466, 2291), (@TH_Classic, 23467, 2291), (@TH_Classic, 23468, 2291), (@TH_Classic, 23469, 2291);

-- Sergeant Thunderhorn <Weapons Quartermaster> - TBC
DELETE FROM `npc_vendor` WHERE `entry` = @TH_TBC;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
(@TH_TBC, 28293, 0, 0, 2237), (@TH_TBC, 28917, 0, 0, 2237), (@TH_TBC, 28918, 0, 0, 2237), (@TH_TBC, 28919, 0, 0, 2237), (@TH_TBC, 28920, 0, 0, 2239),
(@TH_TBC, 28921, 0, 0, 2240), (@TH_TBC, 28922, 0, 0, 2240), (@TH_TBC, 28923, 0, 0, 2237), (@TH_TBC, 28924, 0, 0, 2240), (@TH_TBC, 28925, 0, 0, 2239),
(@TH_TBC, 28926, 0, 0, 2240), (@TH_TBC, 28928, 0, 0, 2239), (@TH_TBC, 28929, 0, 0, 2240), (@TH_TBC, 28930, 0, 0, 2240), (@TH_TBC, 28931, 0, 0, 2238),
(@TH_TBC, 28933, 0, 0, 2237), (@TH_TBC, 28935, 0, 0, 2237), (@TH_TBC, 28937, 0, 0, 2239), (@TH_TBC, 28938, 0, 0, 2242), (@TH_TBC, 28939, 0, 0, 2242);

-- Lady Palanseer <Armor Quartermaster> - vanilla
DELETE FROM `npc_vendor` WHERE `entry`= @LP_Classic;
INSERT INTO `npc_vendor` (`entry`, `item`, `ExtendedCost`) VALUES
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
(@LP_Classic, 23260, 427), (@LP_Classic, 23261, 444), (@LP_Classic, 23262, 427), (@LP_Classic, 23263, 444), (@LP_Classic, 23264, 427);

-- Lady Palanseer <Armor Quartermaster> - TBC
DELETE FROM `npc_vendor` WHERE `entry`= @LP_TBC;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES 
(@LP_TBC, 28805, 0, 0, 2259), (@LP_TBC, 28806, 0, 0, 2261), (@LP_TBC, 28807, 0, 0, 2263), (@LP_TBC, 28808, 0, 0, 2265), (@LP_TBC, 28809, 0, 0, 2267), (@LP_TBC, 28811, 0, 0, 2261),
(@LP_TBC, 28812, 0, 0, 2263), (@LP_TBC, 28813, 0, 0, 2265), (@LP_TBC, 28814, 0, 0, 2267), (@LP_TBC, 28815, 0, 0, 2259), (@LP_TBC, 28817, 0, 0, 2261), (@LP_TBC, 28818, 0, 0, 2263),
(@LP_TBC, 28819, 0, 0, 2265), (@LP_TBC, 28820, 0, 0, 2267), (@LP_TBC, 28821, 0, 0, 2259), (@LP_TBC, 28831, 0, 0, 2259), (@LP_TBC, 28832, 0, 0, 2261), (@LP_TBC, 28833, 0, 0, 2263),
(@LP_TBC, 28834, 0, 0, 2265), (@LP_TBC, 28835, 0, 0, 2267), (@LP_TBC, 28836, 0, 0, 2261), (@LP_TBC, 28837, 0, 0, 2263), (@LP_TBC, 28838, 0, 0, 2265), (@LP_TBC, 28839, 0, 0, 2267),
(@LP_TBC, 28840, 0, 0, 2259), (@LP_TBC, 28841, 0, 0, 2259), (@LP_TBC, 28842, 0, 0, 2261), (@LP_TBC, 28843, 0, 0, 2263), (@LP_TBC, 28844, 0, 0, 2265), (@LP_TBC, 28845, 0, 0, 2267),
(@LP_TBC, 28846, 0, 0, 2259), (@LP_TBC, 28847, 0, 0, 2261), (@LP_TBC, 28848, 0, 0, 2263), (@LP_TBC, 28849, 0, 0, 2265), (@LP_TBC, 28850, 0, 0, 2267), (@LP_TBC, 28851, 0, 0, 2259),
(@LP_TBC, 28852, 0, 0, 2261), (@LP_TBC, 28853, 0, 0, 2263), (@LP_TBC, 28854, 0, 0, 2265), (@LP_TBC, 28855, 0, 0, 2267), (@LP_TBC, 28856, 0, 0, 2261), (@LP_TBC, 28857, 0, 0, 2263),
(@LP_TBC, 28858, 0, 0, 2265), (@LP_TBC, 28859, 0, 0, 2267), (@LP_TBC, 28860, 0, 0, 2259), (@LP_TBC, 28861, 0, 0, 2259), (@LP_TBC, 28862, 0, 0, 2261), (@LP_TBC, 28863, 0, 0, 2263), 
(@LP_TBC, 28864, 0, 0, 2265), (@LP_TBC, 28865, 0, 0, 2267), (@LP_TBC, 28866, 0, 0, 2267), (@LP_TBC, 28867, 0, 0, 2263), (@LP_TBC, 28868, 0, 0, 2261), (@LP_TBC, 28869, 0, 0, 2259),
(@LP_TBC, 28870, 0, 0, 2265), (@LP_TBC, 28871, 0, 0, 2261), (@LP_TBC, 28872, 0, 0, 2263), (@LP_TBC, 28873, 0, 0, 2265), (@LP_TBC, 28874, 0, 0, 2267), (@LP_TBC, 28875, 0, 0, 2259),
(@LP_TBC, 31584, 0, 0, 2261), (@LP_TBC, 31585, 0, 0, 2263), (@LP_TBC, 31586, 0, 0, 2265), (@LP_TBC, 31587, 0, 0, 2267), (@LP_TBC, 31588, 0, 0, 2259), (@LP_TBC, 31621, 0, 0, 2261),
(@LP_TBC, 31626, 0, 0, 2263), (@LP_TBC, 31627, 0, 0, 2265), (@LP_TBC, 31628, 0, 0, 2267), (@LP_TBC, 31629, 0, 0, 2259), (@LP_TBC, 31635, 0, 0, 2259), (@LP_TBC, 31636, 0, 0, 2261),
(@LP_TBC, 31637, 0, 0, 2263), (@LP_TBC, 31638, 0, 0, 2265), (@LP_TBC, 31639, 0, 0, 2267), (@LP_TBC, 31646, 0, 0, 2259), (@LP_TBC, 31647, 0, 0, 2261), (@LP_TBC, 31648, 0, 0, 2263),
(@LP_TBC, 31649, 0, 0, 2265), (@LP_TBC, 31650, 0, 0, 2267);


/* Hide certain vendor items until the player has reached the progression tier for them */
DELETE FROM `conditions` WHERE `SourceGroup` IN (12796, @LP_Classic, @LP_TBC, @TH_Classic, @TH_TBC);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
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
(34038,  -- Sergeant Thunderhorn <Apprentice Armor Quartermaster>
 34043,  -- Lady Palanseer <Armor Quartermaster>
 34060,  -- Doris Volanthius <Veteran Armor Quartermaster>
 34063); -- Blood Guard Zar'shi <Northrend Armor Quartermaster>


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

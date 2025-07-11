UPDATE `creature_template` SET `subname` = 'Expert Blacksmith'        WHERE `entry` = 2998;  -- Karn Stonehoof <Expert Blacksmith>
UPDATE `creature_template` SET `subname` = 'Expert Tailor'            WHERE `entry` = 3004;  -- Tepa <Expert Tailor>
UPDATE `creature_template` SET `subname` = 'Artisan Leatherworker'    WHERE `entry` = 3007;  -- Una <Artisan Leatherworker>
UPDATE `creature_template` SET `subname` = 'Journeyman Leatherworker' WHERE `entry` = 3008;  -- Mak <Journeyman Leatherworker>
UPDATE `creature_template` SET `subname` = 'Expert Alchemist'         WHERE `entry` = 3009;  -- Bena Winterhoof <Expert Alchemist>
UPDATE `creature_template` SET `subname` = 'Expert Enchanter'         WHERE `entry` = 3011;  -- Teg Dawnstrider <Expert Enchanter>
UPDATE `creature_template` SET `subname` = 'Journeyman Blacksmith'    WHERE `entry` = 10278; -- Thrag Stonehoof <Journeyman Blacksmith>
UPDATE `creature_template` SET `subname` = 'Journeyman Alchemist'     WHERE `entry` = 11047; -- Kray <Journeyman Alchemist>
UPDATE `creature_template` SET `subname` = 'Journeyman Tailor'        WHERE `entry` = 11051; -- Vhan <Journeyman Tailor>
UPDATE `creature_template` SET `subname` = 'Journeyman Enchanter'     WHERE `entry` = 11071; -- Mot Dawnstrider <Journeyman Enchanter>
UPDATE `creature_template` SET `subname` = 'Expert Leatherworker'     WHERE `entry` = 11084; -- Tarn <Expert Leatherworker>

UPDATE `creature_template` SET `npcflag` = 81, `trainer_type` = 2 WHERE `entry` IN (3008, 10278, 11047, 11051, 11071, 11084);
UPDATE `creature_template` SET `type_flags` = 134217728 WHERE `entry` IN (3004, 3007, 3009, 3011, 11084);


DELETE FROM `npc_trainer` WHERE `ID` IN (2798, 2998, 3001, 3004, 3007, 3008, 3009, 3011, 3013, 3026, 3028, 7089, 10278, 11047, 11051, 11071, 11084);
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES 
(2798, -350000),  -- Pand Stonebinder <First Aid Trainer>
(2998, -310000),  -- Karn Stonehoof <Expert Blacksmith>
(2998, -310001),  -- Karn Stonehoof <Expert Blacksmith>
(3001, -390000),  -- Brek Stonehoof <Mining Trainer>
(3004, -410000),  -- Tepa <Expert Tailor>
(3004, -410001),  -- Tepa <Expert Tailor>
(3007, -380000),  -- Una <Artisan Leatherworker>
(3007, -380001),  -- Una <Artisan Leatherworker>
(3007, -380002),  -- Una <Artisan Leatherworker>
(3008, -380000),  -- Mak <Journeyman Leatherworker>
(3009, -300000),  -- Bena Winterhoof <Expert Alchemist>
(3009, -300001),  -- Bena Winterhoof <Expert Alchemist>
(3011, -330000),  -- Teg Dawnstrider <Expert Enchanter>
(3011, -330001),  -- Teg Dawnstrider <Expert Enchanter>
(3013, -370000),  -- Komin Winterhoof
(3026, -320000),  -- Aska Mistrunner <Cooking Trainer>
(3028, -360000),  -- Kah Mistrunner
(7089, -400000),  -- Mooranta <Skinning Trainer>
(10278, -310000), -- Thrag Stonehoof <Journeyman Blacksmith>
(11047, -300000), -- Kray <Journeyman Alchemist>
(11051, -410000), -- Vhan <Journeyman Tailor>
(11071, -330000), -- Mot Dawnstrider <Journeyman Enchanter>
(11084, -380000), -- Tarn <Expert Leatherworker>
(11084, -380001); -- Tarn <Expert Leatherworker>


DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (4128, 4165, 4207, 4242, 4351);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`) VALUES
(4128, 0, 3, 'Train me.', 3266, 5, 16), -- Bena Winterhoof <Expert Alchemist>
(4165, 0, 3, 'Train me.', 3266, 5, 16), -- Teg Dawnstrider <Expert Enchanter>
(4207, 0, 3, 'Train me.', 3266, 5, 16), -- Tarn <Expert Leatherworker>
(4242, 0, 3, 'Train me.', 3266, 5, 16), -- Una <Artisan Leatherworker>
(4351, 0, 3, 'Train me.', 3266, 5, 16); -- Tepa <Expert Tailor>


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceEntry` = 0 AND `ConditionTypeOrReference` = 7 AND `SourceGroup` IN (1017, 4128, 4165, 4207, 4242, 4351);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 1017, 0, 7, 164, 50,  'Show menu if blacksmithing is 50 or higher'),   -- Karn Stonehoof <Expert Blacksmith>
(15, 4128, 0, 7, 171, 50,  'Show menu if alchemy is 50 or higher'),         -- Bena Winterhoof <Expert Alchemist>
(15, 4165, 0, 7, 333, 50,  'Show menu if enchanting is 50 or higher'),      -- Teg Dawnstrider <Expert Enchanter>
(15, 4207, 0, 7, 165, 50,  'Show menu if leatherworking is 50 or higher'),  -- Tarn <Expert Leatherworker>
(15, 4242, 0, 7, 165, 125, 'Show menu if leatherworking is 125 or higher'), -- Una <Artisan Leatherworker>
(15, 4351, 0, 7, 197, 50,  'Show menu if tailoring is 50 or higher');       -- Tepa <Expert Tailor>


DELETE FROM `creature` WHERE `id1` IN (7427, 10360, 12198, 34976, 34978);
INSERT INTO `creature` (`id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES 
(7427,  1, -1384.29, -98.6163, 159.018, 2.87979, 300), -- Taim Ragetotem <Alterac Valley Battlemaster>
(10360, 1, -1381.29, -75.9809, 160.602, 3.19395, 300), -- Kergul Bloodaxe <Warsong Gulch Battlemaster>
(12198, 1, -995.143, 217.173, 104.729, 4.46804,  300); -- Martin Lindsey <Arathi Basin Battlemaster>


UPDATE `creature_template` SET `subname` = 'Mining Supplier'           WHERE `entry` = 3002;-- Kurm Stonehoof <Mining Supplier>
UPDATE `creature_template` SET `subname` = 'Sword and Dagger Merchant' WHERE `entry` = 3021;-- Kard Ragetotem <Sword and Dagger Merchant>
UPDATE `creature_template` SET `subname` = 'Cooking Supplier'          WHERE `entry` = 3027;-- Naal Mistrunner <Cooking Supplier>
UPDATE `creature_template` SET `subname` = 'Fishing Supplier'          WHERE `entry` = 3029;-- Sewa Mistrunner <Fishing Supplier>
UPDATE `creature_template` SET `subname` = 'Reagent Vendor'            WHERE `entry` = 8361;-- Chepi <Reagent Vendor>
UPDATE `creature_template` SET `subname` = 'General Goods Vendor'      WHERE `entry` = 8362;-- Kuruk <General Goods Vendor>
UPDATE `creature_template` SET `subname` = 'Trade Goods Supplier'      WHERE `entry` = 8363;-- Shadi Mistrunner <Trade Goods Supplier>

UPDATE `creature_template` SET `minlevel` = 63, `maxlevel` = 63 WHERE `entry` = 3057;  -- Cairne Bloodhoof <High Chieftain>
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry` = 14440; -- Hunter Sagewind
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60 WHERE `entry` = 14441; -- Hunter Ragetotem
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60, `rank` = 0      WHERE `entry` = 3083; -- Honor Guard
UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55, `faction` = 105 WHERE `entry` = 3084; -- Bluffwatcher


-- Kurm Stonehoof <Mining Supplier>
DELETE FROM `npc_vendor` WHERE `entry`=3002 AND `item` IN (20815, 20824);

-- Fyr Mistrunner <Bread Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=3003 AND `item` IN (27855, 33449, 35950);

-- Mahu <Leatherworking & Tailoring Supplies>
DELETE FROM `npc_vendor` WHERE `entry`=3005 AND `item`=38426;

-- Nida Winterhoof <Herbalism Supplier>
DELETE FROM `npc_vendor` WHERE `entry`=3014 AND `item`=40411;

-- Kuna Thunderhorn <Bowyer & Fletching Goods>
DELETE FROM `npc_vendor` WHERE `entry`=3015 AND `item`=28053;

-- Nata Dawnstrider <Enchanting Supplies>
DELETE FROM `npc_vendor` WHERE `entry`=3012 AND `item`=6342;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES (3012, 6342, 1, 7200);

-- Kaga Mistrunner <Meat Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=3025 AND `item` IN (27854, 33454, 35953);

-- Naal Mistrunner <Cooking Supplier>
DELETE FROM `npc_vendor` WHERE `entry`=3027 AND `item`=30817;

-- Thrumn <Tabard Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=5189 AND `item` IN (15197, 15199, 19031, 19505, 24004, 31773, 31775, 31776, 31777, 31778, 31779, 31780, 31781, 31804, 32445, 32828, 35221);

-- Innkeeper Pala <Innkeeper>
DELETE FROM `npc_vendor` WHERE `entry`=6746 AND `item` IN (27857, 28399, 33443, 33444, 33445, 35952, 35954);

-- Chepi <Reagent Vendor>
DELETE FROM `npc_vendor` WHERE `entry`=8361 AND `item` IN (22147, 22148, 37201, 44605, 44614, 44615);

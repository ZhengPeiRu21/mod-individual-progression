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

UPDATE `creature_template` SET `npcflag` = 81 WHERE `entry` IN (3008, 10278, 11047, 11051, 11071, 11084); -- `trainer_type` = 2
UPDATE `creature_template` SET `type_flags` = 134217728 WHERE `entry` IN (3004, 3007, 3009, 3011, 11084);

/* NPC Thrumn - Remove non-Vanilla Tabards */
DELETE FROM `npc_vendor` WHERE `entry`= 5189 AND `item` IN (15197, 15199, 19031, 19505, 24004, 31773, 31775, 31776, 31777, 31778, 31779, 31780, 31781, 31804, 32445, 32828, 35221);

SET @TRAINER_ID   := 600;

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (2798, 2998, 3001, 3004, 3007, 3008, 3009, 3011, 3013, 3026, 3028, 7089, 10278, 11047, 11051, 11071, 11084);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
(2798,  @TRAINER_ID+45), -- Pand Stonebinder <First Aid Trainer>
(2998,  @TRAINER_ID+17), -- Karn Stonehoof <Expert Blacksmith>
(3001,  @TRAINER_ID+42), -- Brek Stonehoof <Mining Trainer>
(3004,  @TRAINER_ID+37), -- Tepa <Expert Tailor>
(3007,  @TRAINER_ID+33), -- Una <Artisan Leatherworker>
(3008,  @TRAINER_ID+31), -- Mak <Journeyman Leatherworker>
(3009,  @TRAINER_ID+12), -- Bena Winterhoof <Expert Alchemist>
(3011,  @TRAINER_ID+22), -- Teg Dawnstrider <Expert Enchanter>
(3013,  @TRAINER_ID+41), -- Komin Winterhoof <Herbalism Trainer>
(3026,  @TRAINER_ID+44), -- Aska Mistrunner <Cooking Trainer>
(3028,  @TRAINER_ID+47), -- Kah Mistrunner <Fishing Trainer>
(7089,  @TRAINER_ID+43), -- Mooranta <Skinning Trainer>
(10278, @TRAINER_ID+16), -- Thrag Stonehoof <Journeyman Blacksmith>
(11047, @TRAINER_ID+11), -- Kray <Journeyman Alchemist>
(11051, @TRAINER_ID+36), -- Vhan <Journeyman Tailor>
(11071, @TRAINER_ID+21), -- Mot Dawnstrider <Journeyman Enchanter>
(11084, @TRAINER_ID+32); -- Tarn <Expert Leatherworker>

DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (2748, 4119, 4128, 4158, 4165, 4187, 4207, 4242, 4266, 4351); 
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`) VALUES
(2748, 0, 3, 'Train me.', 3266, 5, 16), -- Thrag Stonehoof <Journeyman Blacksmith>
(4119, 0, 3, 'Train me.', 3266, 5, 16), -- Kray <Journeyman Alchemist>
(4128, 0, 3, 'Train me.', 3266, 5, 16), -- Bena Winterhoof <Expert Alchemist>
(4158, 0, 3, 'Train me.', 3266, 5, 16), -- Mot Dawnstrider <Journeyman Enchanter>
(4165, 0, 3, 'Train me.', 3266, 5, 16), -- Teg Dawnstrider <Expert Enchanter>
(4187, 0, 3, 'Train me.', 3266, 5, 16), -- Mak <Journeyman Leatherworker>
(4207, 0, 3, 'Train me.', 3266, 5, 16), -- Tarn <Expert Leatherworker>
(4242, 0, 3, 'Train me.', 3266, 5, 16), -- Una <Artisan Leatherworker>
(4266, 0, 3, 'Train me.', 3266, 5, 16), -- Vhan <Journeyman Tailor>
(4351, 0, 3, 'Train me.', 3266, 5, 16); -- Tepa <Expert Tailor>

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceEntry` = 0 AND `ConditionTypeOrReference` = 7 AND `SourceGroup` IN (1017, 4128, 4165, 4207, 4242, 4351);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 1017, 0, 7, 164, 50,  'Show menu if blacksmithing is 50 or higher'),   -- Karn Stonehoof <Expert Blacksmith>
(15, 4128, 0, 7, 171, 50,  'Show menu if alchemy is 50 or higher'),         -- Bena Winterhoof <Expert Alchemist>
(15, 4165, 0, 7, 333, 50,  'Show menu if enchanting is 50 or higher'),      -- Teg Dawnstrider <Expert Enchanter>
(15, 4207, 0, 7, 165, 50,  'Show menu if leatherworking is 50 or higher'),  -- Tarn <Expert Leatherworker>
(15, 4242, 0, 7, 165, 125, 'Show menu if leatherworking is 125 or higher'), -- Una <Artisan Leatherworker>
(15, 4351, 0, 7, 197, 50,  'Show menu if tailoring is 50 or higher');       -- Tepa <Expert Tailor>

-- battlemasters
DELETE FROM `creature` WHERE `id1` IN (7427, 10360, 12198, 34976, 34978);
INSERT INTO `creature` (`guid`, `id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES 
(607427, 7427,  1, -1384.29, -98.6163, 159.018, 2.87979, 300), -- Taim Ragetotem <Alterac Valley Battlemaster>
(610360, 10360, 1, -1381.29, -75.9809, 160.602, 3.19395, 300), -- Kergul Bloodaxe <Warsong Gulch Battlemaster>
(612198, 12198, 1, -995.143, 217.173, 104.729, 4.46804,  300); -- Martin Lindsey <Arathi Basin Battlemaster>

-- hide wotlk battlemasters
UPDATE `creature_template` SET `flags_extra` = 2, `ScriptName` = 'npc_ipp_wotlk' WHERE `entry` IN (35020, 35603);

UPDATE `creature_template` SET `subname` = 'Mining Supplier'           WHERE `entry` = 3002;-- Kurm Stonehoof <Mining Supplier>
UPDATE `creature_template` SET `subname` = 'Sword and Dagger Merchant' WHERE `entry` = 3021;-- Kard Ragetotem <Sword and Dagger Merchant>
UPDATE `creature_template` SET `subname` = 'Cooking Supplier'          WHERE `entry` = 3027;-- Naal Mistrunner <Cooking Supplier>
UPDATE `creature_template` SET `subname` = 'Fishing Supplier'          WHERE `entry` = 3029;-- Sewa Mistrunner <Fishing Supplier>
UPDATE `creature_template` SET `subname` = 'Reagent Vendor'            WHERE `entry` = 8361;-- Chepi <Reagent Vendor>
UPDATE `creature_template` SET `subname` = 'General Goods Vendor'      WHERE `entry` = 8362;-- Kuruk <General Goods Vendor>
UPDATE `creature_template` SET `subname` = 'Trade Goods Supplier'      WHERE `entry` = 8363;-- Shadi Mistrunner <Trade Goods Supplier>

-- Evergreen Herb Casing should drop random herbs - was changed to WotLK to drop only Morrowgrain and Mutated Morrowgrain
DELETE FROM `item_loot_template` WHERE `Entry` = 11024;
INSERT INTO `item_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(11024, 785,   0, 6, 0, 1, 1, 1, 1,  'Evergreen Herb Casing - Mageroyal'),
(11024, 2449,  0, 9, 0, 1, 1, 1, 1,  'Evergreen Herb Casing - Earthroot'),
(11024, 2450,  0, 6, 0, 1, 1, 1, 1,  'Evergreen Herb Casing - Briarthorn'),
(11024, 3356,  0, 10, 0, 1, 1, 1, 3, 'Evergreen Herb Casing - Kingsblood'),
(11024, 3357,  0, 7, 0, 1, 1, 1, 3,  'Evergreen Herb Casing - Liferoot'),
(11024, 3820,  0, 4, 0, 1, 1, 1, 3,  'Evergreen Herb Casing - Stranglekelp'),
(11024, 3821,  0, 4, 0, 1, 1, 1, 3,  'Evergreen Herb Casing - Goldthorn'),
(11024, 4625,  0, 2, 0, 1, 1, 1, 3,  'Evergreen Herb Casing - Firebloom'),
(11024, 8838,  0, 5, 0, 1, 1, 1, 3,  'Evergreen Herb Casing - Sungrass'),
(11024, 8839,  0, 5, 0, 1, 1, 1, 3,  'Evergreen Herb Casing - Blindweed'),
(11024, 8846,  0, 5, 0, 1, 1, 1, 3,  'Evergreen Herb Casing - Gromsblood'),
(11024, 11040, 0, 37, 0, 1, 1, 1, 5, 'Evergreen Herb Casing - Morrowgrain');

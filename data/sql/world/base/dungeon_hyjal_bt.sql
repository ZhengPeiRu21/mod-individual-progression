-- fix drop rates for Heart of Darkness
UPDATE `creature_loot_template` SET `Chance` = 9     WHERE `Item` = 32428 AND `Entry` = 17895;
UPDATE `creature_loot_template` SET `Chance` = 11    WHERE `Item` = 32428 AND `Entry` = 17897;
UPDATE `creature_loot_template` SET `Chance` = 9     WHERE `Item` = 32428 AND `Entry` = 17898;
UPDATE `creature_loot_template` SET `Chance` = 10    WHERE `Item` = 32428 AND `Entry` = 17899;
UPDATE `creature_loot_template` SET `Chance` = 11    WHERE `Item` = 32428 AND `Entry` = 17905;
UPDATE `creature_loot_template` SET `Chance` = 2     WHERE `Item` = 32428 AND `Entry` = 17906;
UPDATE `creature_loot_template` SET `Chance` = 7     WHERE `Item` = 32428 AND `Entry` = 17907;
UPDATE `creature_loot_template` SET `Chance` = 11    WHERE `Item` = 32428 AND `Entry` = 17908;
UPDATE `creature_loot_template` SET `Chance` = 1.9   WHERE `Item` = 32428 AND `Entry` = 17916;
UPDATE `creature_loot_template` SET `Chance` = 9     WHERE `Item` = 32428 AND `Entry` = 22844;
UPDATE `creature_loot_template` SET `Chance` = 12    WHERE `Item` = 32428 AND `Entry` = 22845;
UPDATE `creature_loot_template` SET `Chance` = 10    WHERE `Item` = 32428 AND `Entry` = 22846;
UPDATE `creature_loot_template` SET `Chance` = 11.63 WHERE `Item` = 32428 AND `Entry` = 22847;
UPDATE `creature_loot_template` SET `Chance` = 10    WHERE `Item` = 32428 AND `Entry` = 22853;
UPDATE `creature_loot_template` SET `Chance` = 10    WHERE `Item` = 32428 AND `Entry` = 22855;
UPDATE `creature_loot_template` SET `Chance` = 10.24 WHERE `Item` = 32428 AND `Entry` = 22869;
UPDATE `creature_loot_template` SET `Chance` = 9     WHERE `Item` = 32428 AND `Entry` = 22879;
UPDATE `creature_loot_template` SET `Chance` = 10    WHERE `Item` = 32428 AND `Entry` = 22880;
UPDATE `creature_loot_template` SET `Chance` = 3     WHERE `Item` = 32428 AND `Entry` = 22882;
UPDATE `creature_loot_template` SET `Chance` = 4.81  WHERE `Item` = 32428 AND `Entry` = 22939;
UPDATE `creature_loot_template` SET `Chance` = 10    WHERE `Item` = 32428 AND `Entry` = 22945;
UPDATE `creature_loot_template` SET `Chance` = 2     WHERE `Item` = 32428 AND `Entry` = 22946;
UPDATE `creature_loot_template` SET `Chance` = 9     WHERE `Item` = 32428 AND `Entry` = 22953;
UPDATE `creature_loot_template` SET `Chance` = 6     WHERE `Item` = 32428 AND `Entry` = 22954;
UPDATE `creature_loot_template` SET `Chance` = 3.59  WHERE `Item` = 32428 AND `Entry` = 22955;
UPDATE `creature_loot_template` SET `Chance` = 9     WHERE `Item` = 32428 AND `Entry` = 22956;
UPDATE `creature_loot_template` SET `Chance` = 8     WHERE `Item` = 32428 AND `Entry` = 22957;
UPDATE `creature_loot_template` SET `Chance` = 11    WHERE `Item` = 32428 AND `Entry` = 22959;
-- UPDATE `creature_loot_template` SET `Chance` = 4     WHERE `Item` = 32428 AND `Entry` = 22960; -- currently doesn't drop Heart of Darkness 
UPDATE `creature_loot_template` SET `Chance` = 9     WHERE `Item` = 32428 AND `Entry` = 22962;
-- UPDATE `creature_loot_template` SET `Chance` = 7.48  WHERE `Item` = 32428 AND `Entry` = 22963; -- doesn't drop Heart of Darkness in cMangos TBC
UPDATE `creature_loot_template` SET `Chance` = 11    WHERE `Item` = 32428 AND `Entry` = 22964;
UPDATE `creature_loot_template` SET `Chance` = 11    WHERE `Item` = 32428 AND `Entry` = 22965;
UPDATE `creature_loot_template` SET `Chance` = 12.93 WHERE `Item` = 32428 AND `Entry` = 23018;
UPDATE `creature_loot_template` SET `Chance` = 3     WHERE `Item` = 32428 AND `Entry` = 23028;
UPDATE `creature_loot_template` SET `Chance` = 3     WHERE `Item` = 32428 AND `Entry` = 23030;
UPDATE `creature_loot_template` SET `Chance` = 3.33  WHERE `Item` = 32428 AND `Entry` = 23047;
UPDATE `creature_loot_template` SET `Chance` = 11    WHERE `Item` = 32428 AND `Entry` = 23049;
-- UPDATE `creature_loot_template` SET `Chance` = 15    WHERE `Item` = 32428 AND `Entry` = 23147; -- doesn't drop Heart of Darkness in cMangos TBC
UPDATE `creature_loot_template` SET `Chance` = 12    WHERE `Item` = 32428 AND `Entry` = 23172;
UPDATE `creature_loot_template` SET `Chance` = 14.04 WHERE `Item` = 32428 AND `Entry` = 23196;
UPDATE `creature_loot_template` SET `Chance` = 9     WHERE `Item` = 32428 AND `Entry` = 23222;
UPDATE `creature_loot_template` SET `Chance` = 5     WHERE `Item` = 32428 AND `Entry` = 23223;
UPDATE `creature_loot_template` SET `Chance` = 1.7   WHERE `Item` = 32428 AND `Entry` = 23232;
UPDATE `creature_loot_template` SET `Chance` = 11    WHERE `Item` = 32428 AND `Entry` = 23235;
UPDATE `creature_loot_template` SET `Chance` = 12.15 WHERE `Item` = 32428 AND `Entry` = 23236;
UPDATE `creature_loot_template` SET `Chance` = 12    WHERE `Item` = 32428 AND `Entry` = 23237;
UPDATE `creature_loot_template` SET `Chance` = 9     WHERE `Item` = 32428 AND `Entry` = 23239;
UPDATE `creature_loot_template` SET `Chance` = 3     WHERE `Item` = 32428 AND `Entry` = 23330;
UPDATE `creature_loot_template` SET `Chance` = 9     WHERE `Item` = 32428 AND `Entry` = 23337;
UPDATE `creature_loot_template` SET `Chance` = 9     WHERE `Item` = 32428 AND `Entry` = 23339;
UPDATE `creature_loot_template` SET `Chance` = 8     WHERE `Item` = 32428 AND `Entry` = 23374;

DELETE FROM `creature_loot_template` WHERE `Item` = 32428 AND `Entry` IN (22960, 22963, 23147);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(22960, 32428, 0, 4, 0, 1, 0, 1, 1, 'Dragonmaw Wyrmcaller - Heart of Darkness');

-- fix drop rates for Mark of the Illidari
UPDATE `creature_loot_template` SET `Chance` = 12    WHERE `Item` = 32897 AND `Entry` = 17895;
UPDATE `creature_loot_template` SET `Chance` = 16    WHERE `Item` = 32897 AND `Entry` = 17897;
UPDATE `creature_loot_template` SET `Chance` = 11    WHERE `Item` = 32897 AND `Entry` = 17898;
UPDATE `creature_loot_template` SET `Chance` = 12    WHERE `Item` = 32897 AND `Entry` = 17899;
UPDATE `creature_loot_template` SET `Chance` = 11    WHERE `Item` = 32897 AND `Entry` = 17905;
UPDATE `creature_loot_template` SET `Chance` = 4     WHERE `Item` = 32897 AND `Entry` = 17906;
UPDATE `creature_loot_template` SET `Chance` = 9     WHERE `Item` = 32897 AND `Entry` = 17907;
UPDATE `creature_loot_template` SET `Chance` = 17    WHERE `Item` = 32897 AND `Entry` = 17908;
UPDATE `creature_loot_template` SET `Chance` = 3     WHERE `Item` = 32897 AND `Entry` = 17916;
UPDATE `creature_loot_template` SET `Chance` = 13    WHERE `Item` = 32897 AND `Entry` = 22844;
UPDATE `creature_loot_template` SET `Chance` = 10    WHERE `Item` = 32897 AND `Entry` = 22845;
UPDATE `creature_loot_template` SET `Chance` = 13    WHERE `Item` = 32897 AND `Entry` = 22846;
UPDATE `creature_loot_template` SET `Chance` = 14    WHERE `Item` = 32897 AND `Entry` = 22847;
UPDATE `creature_loot_template` SET `Chance` = 13    WHERE `Item` = 32897 AND `Entry` = 22853;
UPDATE `creature_loot_template` SET `Chance` = 12.68 WHERE `Item` = 32897 AND `Entry` = 22855;
UPDATE `creature_loot_template` SET `Chance` = 15    WHERE `Item` = 32897 AND `Entry` = 22869;
UPDATE `creature_loot_template` SET `Chance` = 13    WHERE `Item` = 32897 AND `Entry` = 22879;
UPDATE `creature_loot_template` SET `Chance` = 14    WHERE `Item` = 32897 AND `Entry` = 22880;
UPDATE `creature_loot_template` SET `Chance` = 8.97  WHERE `Item` = 32897 AND `Entry` = 22882;
UPDATE `creature_loot_template` SET `Chance` = 16    WHERE `Item` = 32897 AND `Entry` = 22939;
UPDATE `creature_loot_template` SET `Chance` = 14    WHERE `Item` = 32897 AND `Entry` = 22945;
UPDATE `creature_loot_template` SET `Chance` = 11    WHERE `Item` = 32897 AND `Entry` = 22946;
UPDATE `creature_loot_template` SET `Chance` = 14    WHERE `Item` = 32897 AND `Entry` = 22953;
UPDATE `creature_loot_template` SET `Chance` = 7.61  WHERE `Item` = 32897 AND `Entry` = 22954;
UPDATE `creature_loot_template` SET `Chance` = 14    WHERE `Item` = 32897 AND `Entry` = 22955;
UPDATE `creature_loot_template` SET `Chance` = 12    WHERE `Item` = 32897 AND `Entry` = 22956;
UPDATE `creature_loot_template` SET `Chance` = 13    WHERE `Item` = 32897 AND `Entry` = 22957;
UPDATE `creature_loot_template` SET `Chance` = 14    WHERE `Item` = 32897 AND `Entry` = 22959;
UPDATE `creature_loot_template` SET `Chance` = 12    WHERE `Item` = 32897 AND `Entry` = 22962;
-- UPDATE `creature_loot_template` SET `Chance` = 13.25 WHERE `Item` = 32897 AND `Entry` = 22963; -- doesn't drop Mark of the Illidari in cMangos TBC
UPDATE `creature_loot_template` SET `Chance` = 16    WHERE `Item` = 32897 AND `Entry` = 22964;
UPDATE `creature_loot_template` SET `Chance` = 13    WHERE `Item` = 32897 AND `Entry` = 22965;
UPDATE `creature_loot_template` SET `Chance` = 6.8   WHERE `Item` = 32897 AND `Entry` = 23018;
UPDATE `creature_loot_template` SET `Chance` = 17    WHERE `Item` = 32897 AND `Entry` = 23028;
UPDATE `creature_loot_template` SET `Chance` = 14    WHERE `Item` = 32897 AND `Entry` = 23030;
UPDATE `creature_loot_template` SET `Chance` = 15    WHERE `Item` = 32897 AND `Entry` = 23047;
UPDATE `creature_loot_template` SET `Chance` = 12    WHERE `Item` = 32897 AND `Entry` = 23049;
UPDATE `creature_loot_template` SET `Chance` = 16    WHERE `Item` = 32897 AND `Entry` = 23147;
UPDATE `creature_loot_template` SET `Chance` = 13    WHERE `Item` = 32897 AND `Entry` = 23172;
UPDATE `creature_loot_template` SET `Chance` = 14    WHERE `Item` = 32897 AND `Entry` = 23196;
UPDATE `creature_loot_template` SET `Chance` = 15    WHERE `Item` = 32897 AND `Entry` = 23222;
UPDATE `creature_loot_template` SET `Chance` = 20    WHERE `Item` = 32897 AND `Entry` = 23223;
UPDATE `creature_loot_template` SET `Chance` = 9     WHERE `Item` = 32897 AND `Entry` = 23232;
UPDATE `creature_loot_template` SET `Chance` = 12    WHERE `Item` = 32897 AND `Entry` = 23235;
UPDATE `creature_loot_template` SET `Chance` = 12    WHERE `Item` = 32897 AND `Entry` = 23236;
UPDATE `creature_loot_template` SET `Chance` = 14    WHERE `Item` = 32897 AND `Entry` = 23237;
UPDATE `creature_loot_template` SET `Chance` = 14    WHERE `Item` = 32897 AND `Entry` = 23239;
UPDATE `creature_loot_template` SET `Chance` = 14    WHERE `Item` = 32897 AND `Entry` = 23330;
UPDATE `creature_loot_template` SET `Chance` = 14    WHERE `Item` = 32897 AND `Entry` = 23337;
UPDATE `creature_loot_template` SET `Chance` = 16    WHERE `Item` = 32897 AND `Entry` = 23339;
UPDATE `creature_loot_template` SET `Chance` = 14    WHERE `Item` = 32897 AND `Entry` = 23374;

DELETE FROM `creature_loot_template` WHERE `Item` = 32897 AND `Entry` IN (22963);


-- Hyjal, remove item, recipes and reference loot tables added by AC
DELETE FROM `reference_loot_template` WHERE `entry` = 39534;
DELETE FROM `creature_loot_template` WHERE `Item` IN (22903, 23884, 39534) AND `Entry` IN
(17895, 17897, 17898, 17899, 17905, 17906, 17907, 17908, 17916);

-- Black Temple, remove reference loot tables added by AC (not used anymore)
DELETE FROM `reference_loot_template` WHERE `entry` IN (34070, 34071, 34072, 34073, 34074, 34076, 34077, 1276883);
DELETE FROM `creature_loot_template` WHERE `Item` IN (14099, 24092) AND `Entry` IN
(22844, 22845, 22846, 22847, 22853, 22855, 22869, 22879, 22880, 22882, 22939, 22945, 22946, 22953, 22954, 22955, 22956, 22957, 22959, 22960, 22962, 
22963, 22964, 22965, 23018, 23028, 23030, 23047, 23049, 23147, 23172, 23196, 23222, 23223, 23232, 23235, 23236, 23237, 23239, 23330, 23337, 23339, 23374);

-- Black Temple, remove items and recipes added by AC (now added with a referene loot table)
DELETE FROM `creature_loot_template` WHERE `Item` IN (14099, 22903, 23884, 32526, 32527, 32528, 32593, 32606, 32608, 32943, 34011, 34012, 32737, 32738, 32744, 32747, 32749, 32750, 32753, 32754) AND `Entry` IN
(22844, 22845, 22846, 22847, 22853, 22855, 22869, 22879, 22880, 22882, 22939, 22945, 22946, 22953, 22954, 22955, 22956, 22957, 22959, 22960, 22962, 
22963, 22964, 22965, 23018, 23028, 23030, 23047, 23049, 23147, 23172, 23196, 23222, 23223, 23232, 23235, 23236, 23237, 23239, 23330, 23337, 23339, 23374);

-- Black Temple, remove gems added by AC (now added with a referene loot table)
DELETE FROM `creature_loot_template` WHERE `Item` IN (32227, 32228, 32229, 32230, 32231, 32249) AND `Entry` IN
(22844, 22845, 22846, 22847, 22853, 22855, 22869, 22879, 22880, 22882, 22939, 22945, 22946, 22953, 22954, 22955, 22956, 22957, 22959, 22960, 22962, 
22963, 22964, 22965, 23018, 23028, 23030, 23047, 23049, 23147, 23172, 23196, 23222, 23223, 23232, 23235, 23236, 23237, 23239, 23330, 23337, 23339, 23374);

-- Black Temple, remove incorrect items and recipes added by AC
DELETE FROM `creature_loot_template` WHERE `Item` IN (32589, 32590, 32591, 32592, 32609, 32736, 32739, 32745, 32746, 32748, 32751, 32752, 32755) AND `Entry` IN
(22844, 22845, 22846, 22847, 22853, 22855, 22869, 22879, 22880, 22882, 22939, 22945, 22946, 22953, 22954, 22955, 22956, 22957, 22959, 22960, 22962, 
22963, 22964, 22965, 23018, 23028, 23030, 23047, 23049, 23147, 23172, 23196, 23222, 23223, 23232, 23235, 23236, 23237, 23239, 23330, 23337, 23339, 23374);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 1 AND `ConditionTypeOrReference` = 7 AND `SourceGroup` IN
(22844, 22845, 22846, 22847, 22853, 22855, 22869, 22879, 22880, 22882, 22939, 22945, 22946, 22953, 22954, 22955, 22956, 22957, 22959, 22960, 22962, 
22963, 22964, 22965, 23018, 23028, 23030, 23047, 23049, 23147, 23172, 23196, 23222, 23223, 23232, 23235, 23236, 23237, 23239, 23330, 23337, 23339, 23374);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 10 AND `ConditionTypeOrReference` = 7 AND `SourceGroup` IN (36197, 36199);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
-- Hyjal
(10, 36197, 32736, 0, 0, 7, 0, 164, 1, 0, 0, 0, 0, '', 'Plans: Swiftsteel Bracers'),
(10, 36197, 32746, 0, 0, 7, 0, 165, 1, 0, 0, 0, 0, '', 'Pattern: Swiftstrike Bracers'),
(10, 36197, 32748, 0, 0, 7, 0, 165, 1, 0, 0, 0, 0, '', 'Pattern: Bindings of Lightning Reflexes'),
(10, 36197, 32752, 0, 0, 7, 0, 197, 1, 0, 0, 0, 0, '', 'Pattern: Swiftheal Wraps'),
-- BT
(10, 36199, 32738, 0, 0, 7, 0, 164, 1, 0, 0, 0, 0, '', 'Plans: Dawnsteel Bracers'),
(10, 36199, 32744, 0, 0, 7, 0, 165, 1, 0, 0, 0, 0, '', 'Pattern: Bracers of Renewed Life'),
(10, 36199, 32750, 0, 0, 7, 0, 165, 1, 0, 0, 0, 0, '', 'Pattern: Living Earth Bindings'),
(10, 36199, 32754, 0, 0, 7, 0, 197, 1, 0, 0, 0, 0, '', 'Pattern: Bracers of Nimble Thought');


-- Hyjal, add reference loot tables to trash creatures
DELETE FROM `creature_loot_template` WHERE `Reference` IN (36196, 36197, 50501) AND `Entry` IN
(17895, 17897, 17898, 17899, 17905, 17906, 17907, 17908, 17916);

INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
--
(17895, 36196, 36196, 1, 0, 1, 1, 1, 1, 'Hyjal - Trash loot - Epic Items'),
(17897, 36196, 36196, 1, 0, 1, 1, 1, 1, 'Hyjal - Trash loot - Epic Items'),
(17898, 36196, 36196, 1, 0, 1, 1, 1, 1, 'Hyjal - Trash loot - Epic Items'),
(17899, 36196, 36196, 1, 0, 1, 1, 1, 1, 'Hyjal - Trash loot - Epic Items'),
(17905, 36196, 36196, 1, 0, 1, 1, 1, 1, 'Hyjal - Trash loot - Epic Items'),
(17906, 36196, 36196, 1, 0, 1, 1, 1, 1, 'Hyjal - Trash loot - Epic Items'),
(17907, 36196, 36196, 1, 0, 1, 1, 1, 1, 'Hyjal - Trash loot - Epic Items'),
(17908, 36196, 36196, 1, 0, 1, 1, 1, 1, 'Hyjal - Trash loot - Epic Items'),
(17916, 36196, 36196, 1, 0, 1, 1, 1, 1, 'Hyjal - Trash loot - Epic Items'),
--
(17895, 36197, 36197, 1, 0, 1, 1, 1, 1, 'Hyjal - Trash loot - Recipes'),
(17897, 36197, 36197, 1, 0, 1, 1, 1, 1, 'Hyjal - Trash loot - Recipes'),
(17898, 36197, 36197, 1, 0, 1, 1, 1, 1, 'Hyjal - Trash loot - Recipes'),
(17899, 36197, 36197, 1, 0, 1, 1, 1, 1, 'Hyjal - Trash loot - Recipes'),
(17905, 36197, 36197, 1, 0, 1, 1, 1, 1, 'Hyjal - Trash loot - Recipes'),
(17906, 36197, 36197, 1, 0, 1, 1, 1, 1, 'Hyjal - Trash loot - Recipes'),
(17907, 36197, 36197, 1, 0, 1, 1, 1, 1, 'Hyjal - Trash loot - Recipes'),
(17908, 36197, 36197, 1, 0, 1, 1, 1, 1, 'Hyjal - Trash loot - Recipes'),
(17916, 36197, 36197, 1, 0, 1, 1, 1, 1, 'Hyjal - Trash loot - Recipes'),
--
(17895, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(17897, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(17898, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(17899, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(17905, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(17906, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(17907, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(17908, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(17916, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics');

-- Black Temple, add reference loot tables to trash creatures
DELETE FROM `creature_loot_template` WHERE `Reference` IN (34093, 36198, 36199, 50501) AND `Entry` IN
(22844, 22845, 22846, 22847, 22853, 22855, 22869, 22879, 22880, 22882, 22939, 22945, 22946, 22953, 22954, 22955, 22956, 22957, 22959, 22960, 22962, 
22963, 22964, 22965, 23018, 23028, 23030, 23047, 23049, 23147, 23172, 23196, 23222, 23223, 23232, 23235, 23236, 23237, 23239, 23330, 23337, 23339, 23374);

INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
--
(22844, 34093, 34093, 15, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(22845, 34093, 34093, 15, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(22846, 34093, 34093, 15, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(22847, 34093, 34093, 15, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(22853, 34093, 34093, 15, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(22855, 34093, 34093, 20, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(22869, 34093, 34093, 15, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(22879, 34093, 34093, 15, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(22880, 34093, 34093, 15, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(22882, 34093, 34093, 15, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(22939, 34093, 34093, 6,  0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(22945, 34093, 34093, 15, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(22946, 34093, 34093, 5,  0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(22953, 34093, 34093, 15, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(22954, 34093, 34093, 6,  0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(22955, 34093, 34093, 6,  0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(22956, 34093, 34093, 15, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(22957, 34093, 34093, 15, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(22959, 34093, 34093, 10, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(22962, 34093, 34093, 15, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(22964, 34093, 34093, 15, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(22965, 34093, 34093, 15, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(23018, 34093, 34093, 15, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(23047, 34093, 34093, 6,  0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(23049, 34093, 34093, 15, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(23172, 34093, 34093, 15, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(23196, 34093, 34093, 15, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(23222, 34093, 34093, 15, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(23223, 34093, 34093, 10, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(23232, 34093, 34093, 5,  0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(23235, 34093, 34093, 15, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(23236, 34093, 34093, 15, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(23237, 34093, 34093, 15, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(23239, 34093, 34093, 15, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(23330, 34093, 34093, 15, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(23337, 34093, 34093, 15, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(23339, 34093, 34093, 15, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
(23374, 34093, 34093, 10, 0, 1, 1, 1, 1, 'ReferenceTable - Epic Quality GEM'),
--
(22844, 36198, 36198, 2, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(22845, 36198, 36198, 2, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(22846, 36198, 36198, 2, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(22847, 36198, 36198, 2, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(22853, 36198, 36198, 2, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(22855, 36198, 36198, 2, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(22869, 36198, 36198, 2, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(22879, 36198, 36198, 2, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(22880, 36198, 36198, 2, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(22882, 36198, 36198, 2, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(22939, 36198, 36198, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(22945, 36198, 36198, 2, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(22946, 36198, 36198, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(22953, 36198, 36198, 3, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(22954, 36198, 36198, 3, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(22955, 36198, 36198, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(22956, 36198, 36198, 3, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(22957, 36198, 36198, 3, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(22959, 36198, 36198, 2, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(22960, 36198, 36198, 2, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(22962, 36198, 36198, 3, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(22963, 36198, 36198, 3, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(22964, 36198, 36198, 3, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(22965, 36198, 36198, 2, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(23018, 36198, 36198, 2, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(23028, 36198, 36198, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(23030, 36198, 36198, 2, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(23047, 36198, 36198, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(23049, 36198, 36198, 3, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(23147, 36198, 36198, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(23172, 36198, 36198, 3, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(23196, 36198, 36198, 3, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(23222, 36198, 36198, 3, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(23223, 36198, 36198, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(23232, 36198, 36198, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(23235, 36198, 36198, 2, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(23236, 36198, 36198, 2, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(23237, 36198, 36198, 2, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(23239, 36198, 36198, 3, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(23330, 36198, 36198, 2, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(23337, 36198, 36198, 2, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(23339, 36198, 36198, 2, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
(23374, 36198, 36198, 2, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Epic Items'),
--
(22844, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(22845, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(22846, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(22847, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(22853, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(22855, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(22869, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(22879, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(22880, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(22882, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(22939, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(22945, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(22946, 36199, 36199, 0.5, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(22953, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(22954, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(22955, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(22956, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(22957, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(22959, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(22960, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(22962, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(22963, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(22964, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(22965, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(23018, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(23028, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(23030, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(23047, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(23049, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(23147, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(23172, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(23196, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(23222, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(23223, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(23232, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(23235, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(23236, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(23237, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(23239, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(23330, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(23337, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(23339, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
(23374, 36199, 36199, 1, 0, 1, 1, 1, 1, 'Black Temple - Trash loot - Recipes'),
--
(22844, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(22845, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(22846, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(22847, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(22853, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(22855, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(22869, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(22879, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(22880, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(22882, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(22939, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(22945, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(22946, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(22953, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(22954, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(22955, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(22956, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(22957, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(22959, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(22960, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(22962, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(22963, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(22964, 50501, 50501, 0.05, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(22965, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(23018, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(23028, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(23030, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(23047, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(23049, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(23147, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(23172, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(23196, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(23222, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(23223, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(23232, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(23235, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(23236, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(23237, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(23239, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(23330, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(23337, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(23339, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics'),
(23374, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'ReferenceTable - Formula, Plans, Schematics');


-- fix Black Temple boss loot tables
DELETE FROM `creature_loot_template` WHERE `Entry` IN (22841, 22871, 22887, 22898, 22917, 22947, 22948);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
--
(22841, 29434, 0, 100, 0, 1, 0, 2, 2,     'Shade of Akama - Badge of Justice'),
(22841, 34069, 34069, 10, 0, 1, 1, 1, 1,  'Shade of Akama - (ReferenceTable)'),
(22841, 190069, 34069, 2, 0, 1, 2, 1, 1,  'Shade of Akama - (ReferenceTable)'),
(22841, 36125, 36125, 100, 0, 1, 1, 1, 1, 'Shade of Akama - Epic Items (Group 1)'),
(22841, 36126, 36126, 100, 0, 1, 1, 1, 1, 'Shade of Akama - Epic Items (Group 2)'),
--
(22871, 29434, 0, 100, 0, 1, 0, 2, 2,     'Teron Gorefiend - Badge of Justice'),
(22871, 34069, 34069, 10, 0, 1, 1, 1, 1,  'Teron Gorefiend - (ReferenceTable)'),
(22871, 190069, 34069, 2, 0, 1, 2, 1, 1,  'Teron Gorefiend - (ReferenceTable)'),
(22871, 36127, 36127, 100, 0, 1, 1, 1, 1, 'Teron Gorefiend - Epic Items (Group 1)'),
(22871, 36128, 36128, 100, 0, 1, 1, 1, 1, 'Teron Gorefiend - Epic Items (Group 2)'),
--
(22887, 29434, 0, 100, 0, 1, 0, 2, 2,     'High Warlord Naj\'entus - Badge of Justice'),
(22887, 34069, 34069, 2, 0, 1, 2, 1, 1,   'High Warlord Naj\'entus - (ReferenceTable)'),
(22887, 90069, 34069, 10, 0, 1, 1, 1, 1,  'High Warlord Naj\'entus - (ReferenceTable)'),
(22887, 36121, 36121, 100, 0, 1, 1, 1, 1, 'High Warlord Naj\'entus - Epic Items (Group 1)'),
(22887, 36122, 36122, 100, 0, 1, 1, 1, 1, 'High Warlord Naj\'entus - Epic Items (Group 2)'),
--
(22898, 29434, 0, 100, 0, 1, 0, 2, 2,     'Supremus - Badge of Justice'),
(22898, 34069, 34069, 10, 0, 1, 1, 1, 1,  'Supremus - (ReferenceTable)'),
(22898, 190069, 34069, 2, 0, 1, 2, 1, 1,  'Supremus - (ReferenceTable)'),
(22898, 36123, 36123, 100, 0, 1, 1, 1, 1, 'Supremus - Epic Items (Group 1)'),
(22898, 36124, 36124, 100, 0, 1, 1, 1, 1, 'Supremus - Epic Items (Group 2)'),
--
(22917, 29434, 0, 100, 0, 1, 0, 2, 2,     'Illidan Stormrage - Badge of Justice'),
(22917, 32837, 0, 4, 0, 1, 1, 1, 1,       'Illidan Stormrage - Warglaive of Azzinoth'),
(22917, 32838, 0, 4, 0, 1, 2, 1, 1,       'Illidan Stormrage - Warglaive of Azzinoth'),
(22917, 34069, 34069, 2, 0, 1, 2, 1, 1,   'Illidan Stormrage - (Patterns)'),
(22917, 90069, 34069, 10, 0, 1, 1, 1, 1,  'Illidan Stormrage - (Patterns)'),
(22917, 36137, 36137, 100, 0, 1, 1, 1, 1, 'Illidan Stormrage - Epic Items (Group 1)'),
(22917, 36138, 36138, 100, 0, 1, 1, 1, 1, 'Illidan Stormrage - Epic Items (Group 2)'),
(22917, 36139, 36139, 100, 0, 1, 1, 1, 1, 'Illidan Stormrage - T6 Token'),
--
(22947, 29434, 0, 100, 0, 1, 0, 2, 2,     'Mother Shahraz - Badge of Justice'),
(22947, 34069, 34069, 2, 0, 1, 2, 1, 1,   'Mother Shahraz - (ReferenceTable)'),
(22947, 90069, 34069, 10, 0, 1, 1, 1, 1,  'Mother Shahraz - (ReferenceTable)'),
(22947, 36133, 36133, 100, 0, 1, 1, 1, 1, 'Mother Shahraz - Epic Items'),
(22947, 36134, 36134, 100, 0, 1, 1, 1, 1, 'Mother Shahraz - T6 Token'),
--
(22948, 29434, 0, 100, 0, 1, 0, 2, 2,     'Gurtogg Bloodboil - Badge of Justice'),
(22948, 34069, 34069, 2, 0, 1, 2, 1, 1,   'Gurtogg Bloodboil - (ReferenceTable)'),
(22948, 90069, 34069, 10, 0, 1, 1, 1, 1,  'Gurtogg Bloodboil - (ReferenceTable)'),
(22948, 36129, 36129, 100, 0, 1, 1, 1, 1, 'Black Temple (Boss Loot) - Gurtogg Bloodboil - Epic Items (Group 1)'),
(22948, 36130, 36130, 100, 0, 1, 1, 1, 1, 'Black Temple (Boss Loot) - Gurtogg Bloodboil - Epic Items (Group 2)');


-- hide Badge of Justice drops until TBC tier 5
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 1 AND `SourceEntry` = 29434 AND `ConditionTypeOrReference` = 8 AND `SourceGroup` IN (22841, 22871, 22887, 22898, 22917, 22947, 22948);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
--
(1, 22841, 29434, 0, 0, 8, 0, 66012, 0, 0, 0, 0, 0, '', 'Badge of Justice will only drop if the player has completed PROGRESSION_TBC_TIER_4'),
(1, 22871, 29434, 0, 0, 8, 0, 66012, 0, 0, 0, 0, 0, '', 'Badge of Justice will only drop if the player has completed PROGRESSION_TBC_TIER_4'),
(1, 22887, 29434, 0, 0, 8, 0, 66012, 0, 0, 0, 0, 0, '', 'Badge of Justice will only drop if the player has completed PROGRESSION_TBC_TIER_4'),
(1, 22898, 29434, 0, 0, 8, 0, 66012, 0, 0, 0, 0, 0, '', 'Badge of Justice will only drop if the player has completed PROGRESSION_TBC_TIER_4'),
(1, 22917, 29434, 0, 0, 8, 0, 66012, 0, 0, 0, 0, 0, '', 'Badge of Justice will only drop if the player has completed PROGRESSION_TBC_TIER_4'),
(1, 22947, 29434, 0, 0, 8, 0, 66012, 0, 0, 0, 0, 0, '', 'Badge of Justice will only drop if the player has completed PROGRESSION_TBC_TIER_4'),
(1, 22948, 29434, 0, 0, 8, 0, 66012, 0, 0, 0, 0, 0, '', 'Badge of Justice will only drop if the player has completed PROGRESSION_TBC_TIER_4');


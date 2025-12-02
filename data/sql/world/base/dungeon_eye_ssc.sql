/* Correct quest log text for SSC attunement quest "The Cudgel of Kar'desh" */
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Skar\'this the Heretic in the heroic Slave Pens of Coilfang Reservoir.' WHERE `ID` = 10901;


/* fix recipe loot drops */

-- remove unused reference loot tables
DELETE FROM `reference_loot_template` WHERE `Entry` BETWEEN 34054 AND 34062;

-- remove unused conditions
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 1 AND `SourceEntry` IN (30282, 30283, 30305, 30306, 30307, 30308, 30323, 30324, 30321, 30322, 30301, 30302, 30303, 30304, 30280, 30281);

-- remove T5 recipes reference loot table from bosses that shouldn't have it.
DELETE FROM `creature_loot_template` WHERE `Reference` = 34052 AND `Entry` IN (18805, 19516, 19622, 21212, 21213, 21214, 21215, 21216, 21217);

-- remove T5 recipes from trash creatures, this is now done with a reference loot table.
DELETE FROM `creature_loot_template` WHERE `item` IN (30282, 30283, 30305, 30306, 30307, 30308, 30323, 30324, 30321, 30322, 30301, 30302, 30303, 30304, 30280, 30281);

-- remove epic loot from trash mobs in SSC, this is now done with a reference loot table.
DELETE FROM `creature_loot_template` WHERE `item` IN (30021, 30022, 30023, 30025, 30027, 30620);

-- add reference loot table to trash creatures
DELETE FROM `creature_loot_template` WHERE `Item` IN (34052, 36098);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
--
(20031, 34052, 34052, 1.768, 0, 1, 1, 1, 1, 'T5 - Recipes'), --  The Eye
(20032, 34052, 34052, 1.822, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(20033, 34052, 34052, 1.83, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(20034, 34052, 34052, 1.802, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(20035, 34052, 34052, 1.94, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(20036, 34052, 34052, 1.673, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(20037, 34052, 34052, 1.953, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(20039, 34052, 34052, 1.236, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(20040, 34052, 34052, 2.475, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(20041, 34052, 34052, 2.701, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(20042, 34052, 34052, 1.655, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(20043, 34052, 34052, 0.779, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(20044, 34052, 34052, 0.788, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(20045, 34052, 34052, 1.382, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(20046, 34052, 34052, 1.603, 0, 1, 1, 1, 1, 'T5 - Recipes'),
-- (20047, 34052, 34052, 1.882, 0, 1, 1, 1, 1, 'T5 - Recipes'), -- creature 20047 uses 20032 instead of having it's own loot template
(20048, 34052, 34052, 1.877, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(20049, 34052, 34052, 1.881, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(20050, 34052, 34052, 1.833, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(20052, 34052, 34052, 1.784, 0, 1, 1, 1, 1, 'T5 - Recipes'),
--
(21218, 34052, 34052, 1.46, 0, 1, 1, 1, 1, 'T5 - Recipes'), -- SSC
(21220, 34052, 34052, 1.695, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(21221, 34052, 34052, 1.338, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(21224, 34052, 34052, 1.733, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(21225, 34052, 34052, 1.387, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(21226, 34052, 34052, 1.358, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(21227, 34052, 34052, 1.1, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(21228, 34052, 34052, 1.346, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(21229, 34052, 34052, 1.96, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(21230, 34052, 34052, 2.219, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(21231, 34052, 34052, 1.84, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(21232, 34052, 34052, 1.726, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(21246, 34052, 34052, 7.62, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(21251, 34052, 34052, 5.509, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(21263, 34052, 34052, 0.1, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(21298, 34052, 34052, 1.586, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(21299, 34052, 34052, 1.489, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(21301, 34052, 34052, 1.69, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(21339, 34052, 34052, 1.533, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(21863, 34052, 34052, 0.532, 0, 1, 1, 1, 1, 'T5 - Recipes'),
--
(21218, 36098, 36098, 2.224, 0, 1, 1, 1, 1, 'SSC - Trash loot - Items'),
(21220, 36098, 36098, 2.205, 0, 1, 1, 1, 1, 'SSC - Trash loot - Items'),
(21221, 36098, 36098, 2.483, 0, 1, 1, 1, 1, 'SSC - Trash loot - Items'),
(21224, 36098, 36098, 1.691, 0, 1, 1, 1, 1, 'SSC - Trash loot - Items'),
(21225, 36098, 36098, 1.945, 0, 1, 1, 1, 1, 'SSC - Trash loot - Items'),
(21226, 36098, 36098, 2.094, 0, 1, 1, 1, 1, 'SSC - Trash loot - Items'),
(21227, 36098, 36098, 1.767, 0, 1, 1, 1, 1, 'SSC - Trash loot - Items'),
(21228, 36098, 36098, 2.178, 0, 1, 1, 1, 1, 'SSC - Trash loot - Items'),
(21229, 36098, 36098, 2.839, 0, 1, 1, 1, 1, 'SSC - Trash loot - Items'),
(21230, 36098, 36098, 2.889, 0, 1, 1, 1, 1, 'SSC - Trash loot - Items'),
(21231, 36098, 36098, 2.971, 0, 1, 1, 1, 1, 'SSC - Trash loot - Items'),
(21232, 36098, 36098, 2.707, 0, 1, 1, 1, 1, 'SSC - Trash loot - Items'),
(21246, 36098, 36098, 9.105, 0, 1, 1, 1, 1, 'SSC - Trash loot - Items'),
(21251, 36098, 36098, 8.705, 0, 1, 1, 1, 1, 'SSC - Trash loot - Items'),
(21263, 36098, 36098, 0.212, 0, 1, 1, 1, 1, 'SSC - Trash loot - Items'),
(21298, 36098, 36098, 2.242, 0, 1, 1, 1, 1, 'SSC - Trash loot - Items'),
(21299, 36098, 36098, 2.6, 0, 1, 1, 1, 1, 'SSC - Trash loot - Items'),
(21301, 36098, 36098, 2.196, 0, 1, 1, 1, 1, 'SSC - Trash loot - Items'),
(21339, 36098, 36098, 2.47, 0, 1, 1, 1, 1, 'SSC - Trash loot - Items'),
(21863, 36098, 36098, 1.148, 0, 1, 1, 1, 1, 'SSC - Trash loot - Items');

-- fix epic loot table chance for Tempest Keep: The Eye, was incorrectly set to 10% for ALL trash mobs
UPDATE `creature_loot_template` SET `Chance` = 2.656 WHERE `Reference` = 55500 AND `Entry` = 20031;
UPDATE `creature_loot_template` SET `Chance` = 2.838 WHERE `Reference` = 55500 AND `Entry` = 20032;
UPDATE `creature_loot_template` SET `Chance` = 2.767 WHERE `Reference` = 55500 AND `Entry` = 20033;
UPDATE `creature_loot_template` SET `Chance` = 2.781 WHERE `Reference` = 55500 AND `Entry` = 20034;
UPDATE `creature_loot_template` SET `Chance` = 2.901 WHERE `Reference` = 55500 AND `Entry` = 20035;
UPDATE `creature_loot_template` SET `Chance` = 2.538 WHERE `Reference` = 55500 AND `Entry` = 20036;
UPDATE `creature_loot_template` SET `Chance` = 2.61  WHERE `Reference` = 55500 AND `Entry` = 20037;
UPDATE `creature_loot_template` SET `Chance` = 1.793 WHERE `Reference` = 55500 AND `Entry` = 20039;
UPDATE `creature_loot_template` SET `Chance` = 4.037 WHERE `Reference` = 55500 AND `Entry` = 20040;
UPDATE `creature_loot_template` SET `Chance` = 4.11  WHERE `Reference` = 55500 AND `Entry` = 20041;
UPDATE `creature_loot_template` SET `Chance` = 2.555 WHERE `Reference` = 55500 AND `Entry` = 20042;
UPDATE `creature_loot_template` SET `Chance` = 1.227 WHERE `Reference` = 55500 AND `Entry` = 20043;
UPDATE `creature_loot_template` SET `Chance` = 1.222 WHERE `Reference` = 55500 AND `Entry` = 20044;
UPDATE `creature_loot_template` SET `Chance` = 2.607 WHERE `Reference` = 55500 AND `Entry` = 20045;
UPDATE `creature_loot_template` SET `Chance` = 2.916 WHERE `Reference` = 55500 AND `Entry` = 20046;
-- UPDATE `creature_loot_template` SET `Chance` = 2.756 WHERE `Reference` = 55500 AND `Entry` = 20047; -- creature 20047 uses 20032 instead of having it's own loot template
UPDATE `creature_loot_template` SET `Chance` = 2.848 WHERE `Reference` = 55500 AND `Entry` = 20048;
UPDATE `creature_loot_template` SET `Chance` = 2.929 WHERE `Reference` = 55500 AND `Entry` = 20049;
UPDATE `creature_loot_template` SET `Chance` = 2.801 WHERE `Reference` = 55500 AND `Entry` = 20050;
UPDATE `creature_loot_template` SET `Chance` = 2.913 WHERE `Reference` = 55500 AND `Entry` = 20052;

-- fix boss loot tables
DELETE FROM `creature_loot_template` WHERE `Entry` IN (18805, 19516, 19622, 21212, 21213, 21214, 21215, 21216, 21217);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
--
(18805, 21877, 0, 18, 0, 1, 1, 3, 3,      'High Astromancer Solarian - Netherweave Cloth'),
(18805, 29434, 0, 100, 0, 1, 0, 2, 2,     'High Astromancer Solarian - Badge of Justice'),
(18805, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'High Astromancer Solarian - ReferenceTable - Formula, Plans, Schematics'),
(18805, 36005, 36005, 100, 0, 1, 1, 1, 1, 'High Astromancer Solarian - ReferenceTable - Epic Items (Group 1)'),
(18805, 36006, 36006, 100, 0, 1, 1, 1, 1, 'High Astromancer Solarian - ReferenceTable - Epic Items (Group 2)'),
(18805, 36007, 36007, 100, 0, 1, 1, 1, 1, 'High Astromancer Solarian - ReferenceTable - Epic Items (Group 3)'),
--
(19516, 29434, 0, 100, 0, 1, 0, 2, 2,     'Void Reaver - Badge of Justice'),
(19516, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'Void Reaver - ReferenceTable - Formula, Plans, Schematics'),
(19516, 36003, 36003, 100, 0, 1, 1, 1, 1, 'Void Reaver - ReferenceTable - Epic Items (Group 1)'),
(19516, 36004, 36004, 100, 0, 1, 1, 2, 2, 'Void Reaver - ReferenceTable - Epic Items (Tokens)'),
--
(19622, 21877, 0, 18, 0, 1, 1, 3, 3,      'Kael\'thas Sunstrider - Netherweave Cloth'),
(19622, 29434, 0, 100, 0, 1, 0, 3, 3,     'Kael\'thas Sunstrider - Badge of Justice'),
(19622, 29905, 0, 100, 1, 1, 0, 1, 1,     'Kael\'thas Sunstrider - Kael\'s Vial Remnant'),
(19622, 30183, 0, 100, 0, 1, 0, 2, 2,     'Kael\'thas Sunstrider - Nether Vortex'),
(19622, 32405, 0, 100, 0, 1, 0, 1, 1,     'Kael\'thas Sunstrider - Verdant Sphere'),
(19622, 32458, 0, 2, 0, 1, 0, 1, 1,       'Kael\'thas Sunstrider - Ashes of Al\'ar'),
(19622, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'Kael\'thas Sunstrider - ReferenceTable - Formula, Plans, Schematics'),
(19622, 36008, 36008, 100, 0, 1, 1, 1, 1, 'Kael\'thas Sunstrider - ReferenceTable - Epic Items (Group 1)'),
(19622, 36009, 36009, 100, 0, 1, 1, 1, 1, 'Kael\'thas Sunstrider - ReferenceTable - Epic Items (Group 2)'),
(19622, 36010, 36010, 100, 0, 1, 1, 2, 2, 'Kael\'thas Sunstrider - ReferenceTable - Epic Items (Tokens)'),
--
(21212, 21877, 0, 18, 0, 1, 1, 3, 3,      'Lady Vashj - Netherweave Cloth'),
(21212, 29434, 0, 100, 0, 1, 0, 3, 3,     'Lady Vashj - Badge of Justice'),
(21212, 29906, 0, 100, 1, 1, 0, 1, 1,     'Lady Vashj - Vashj\'s Vial Remnant'),
(21212, 30183, 0, 100, 0, 1, 0, 2, 2,     'Lady Vashj - Nether Vortex'),
(21212, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'Lady Vashj - ReferenceTable - Formula, Plans, Schematics'),
(21212, 36024, 36024, 100, 0, 1, 1, 1, 1, 'Lady Vashj - ReferenceTable - Epic Items (Group 1)'),
(21212, 36025, 36025, 100, 0, 1, 1, 1, 1, 'Lady Vashj - ReferenceTable - Epic Items (Group 2)'),
(21212, 36026, 36026, 100, 0, 1, 1, 2, 2, 'Lady Vashj - ReferenceTable - Epic Items (Tokens)'),
--
(21213, 21877, 0, 18, 0, 1, 1, 3, 3,      'Morogrim Tidewalker - Netherweave Cloth'),
(21213, 29434, 0, 100, 0, 1, 0, 2, 2,     'Morogrim Tidewalker - Badge of Justice'),
(21213, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'Morogrim Tidewalker - ReferenceTable - Formula, Plans, Schematics'),
(21213, 36017, 36017, 100, 0, 1, 1, 1, 1, 'Morogrim Tidewalker - ReferenceTable - Epic Items (Group 1)'),
(21213, 36018, 36018, 100, 0, 1, 1, 1, 1, 'Morogrim Tidewalker - ReferenceTable - Epic Items (Group 2)'),
(21213, 36019, 36019, 100, 0, 1, 1, 1, 1, 'Morogrim Tidewalker - ReferenceTable - Epic Items (Group 3)'),
--
(21214, 21877, 0, 18, 0, 1, 1, 3, 3,      'Fathom-Lord Karathress - Netherweave Cloth'),
(21214, 29434, 0, 100, 0, 1, 0, 2, 2,     'Fathom-Lord Karathress - Badge of Justice'),
(21214, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'Fathom-Lord Karathress - ReferenceTable - Formula, Plans, Schematics'),
(21214, 36022, 36022, 100, 0, 1, 1, 1, 1, 'Fathom-Lord Karathress - ReferenceTable - Epic Items (Group 1)'),
(21214, 36023, 36023, 100, 0, 1, 1, 2, 2, 'Fathom-Lord Karathress - ReferenceTable - Epic Items (Tokens)'),
--
(21215, 21877, 0, 18, 0, 1, 1, 3, 3,      'Leotheras the Blind - Netherweave Cloth'),
(21215, 29434, 0, 100, 0, 1, 0, 2, 2,     'Leotheras the Blind - Badge of Justice'),
(21215, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'Leotheras the Blind - ReferenceTable - Formula, Plans, Schematics'),
(21215, 36020, 36020, 100, 0, 1, 1, 1, 1, 'Leotheras the Blind - ReferenceTable - Epic Items (Group 1)'),
(21215, 36021, 36021, 100, 0, 1, 1, 2, 2, 'Leotheras the Blind - ReferenceTable - Epic Items (Tokens)'),
--
(21216, 29434, 0, 100, 0, 1, 0, 2, 2,     'Hydross the Unstable - Badge of Justice'),
(21216, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'Hydross the Unstable - ReferenceTable - Formula, Plans, Schematics'),
(21216, 36011, 36011, 100, 0, 1, 1, 1, 1, 'Hydross the Unstable - ReferenceTable - Epic Items (Group 1)'),
(21216, 36012, 36012, 100, 0, 1, 1, 1, 1, 'Hydross the Unstable - ReferenceTable - Epic Items (Group 2)'),
(21216, 36013, 36013, 100, 0, 1, 1, 1, 1, 'Hydross the Unstable - ReferenceTable - Epic Items (Group 3)'),
--
(21217, 29434, 0, 100, 0, 1, 0, 2, 2,     'The Lurker Below - Badge of Justice'),
(21217, 50501, 50501, 0.2, 0, 1, 1, 1, 1, 'The Lurker Below - ReferenceTable - Formula, Plans, Schematics'),
(21217, 36014, 36014, 100, 0, 1, 1, 1, 1, 'The Lurker Below - ReferenceTable - Epic Items (Group 1)'),
(21217, 36015, 36015, 100, 0, 1, 1, 1, 1, 'The Lurker Below - ReferenceTable - Epic Items (Group 2)'),
(21217, 36016, 36016, 100, 0, 1, 1, 1, 1, 'The Lurker Below - ReferenceTable - Epic Items (Group 3)');

-- hide Badge of Justice drops until TBC tier 5
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 1 AND `SourceEntry` = 29434 AND `ConditionTypeOrReference` = 8 AND `SourceGroup` IN (18805, 19516, 19622, 21212, 21213, 21214, 21215, 21216, 21217);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
--
(1, 18805, 29434, 0, 0, 8, 0, 66012, 0, 0, 0, 0, 0, '', 'Badge of Justice will only drop if the player has completed PROGRESSION_TBC_TIER_4'),
(1, 19516, 29434, 0, 0, 8, 0, 66012, 0, 0, 0, 0, 0, '', 'Badge of Justice will only drop if the player has completed PROGRESSION_TBC_TIER_4'),
(1, 19622, 29434, 0, 0, 8, 0, 66012, 0, 0, 0, 0, 0, '', 'Badge of Justice will only drop if the player has completed PROGRESSION_TBC_TIER_4'),
(1, 21212, 29434, 0, 0, 8, 0, 66012, 0, 0, 0, 0, 0, '', 'Badge of Justice will only drop if the player has completed PROGRESSION_TBC_TIER_4'),
(1, 21213, 29434, 0, 0, 8, 0, 66012, 0, 0, 0, 0, 0, '', 'Badge of Justice will only drop if the player has completed PROGRESSION_TBC_TIER_4'),
(1, 21214, 29434, 0, 0, 8, 0, 66012, 0, 0, 0, 0, 0, '', 'Badge of Justice will only drop if the player has completed PROGRESSION_TBC_TIER_4'),
(1, 21215, 29434, 0, 0, 8, 0, 66012, 0, 0, 0, 0, 0, '', 'Badge of Justice will only drop if the player has completed PROGRESSION_TBC_TIER_4'),
(1, 21216, 29434, 0, 0, 8, 0, 66012, 0, 0, 0, 0, 0, '', 'Badge of Justice will only drop if the player has completed PROGRESSION_TBC_TIER_4'),
(1, 21217, 29434, 0, 0, 8, 0, 66012, 0, 0, 0, 0, 0, '', 'Badge of Justice will only drop if the player has completed PROGRESSION_TBC_TIER_4');

-- fix reference loot tables
DELETE FROM `reference_loot_template` WHERE `Entry` IN (34052, 36098, 50501);
DELETE FROM `reference_loot_template` WHERE `Entry` BETWEEN 36003 AND 36026;
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
--
(34052, 30280, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Belt of Blasting'),
(34052, 30281, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Belt of the Long Road'),
(34052, 30301, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Belt of Natural Power'),
(34052, 30302, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Belt of Deep Shadow'),
(34052, 30303, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Belt of the Black Eagle'),
(34052, 30304, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Monsoon Belt'),
(34052, 30321, 0, 0, 0, 1, 1, 1, 1, 'Plans: Belt of the Guardian'),
(34052, 30322, 0, 0, 0, 1, 1, 1, 1, 'Plans: Red Belt of Battle'),
(34052, 30282, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Boots of Blasting'),
(34052, 30283, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Boots of the Long Road'),
(34052, 30305, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Boots of Natural Grace'),
(34052, 30306, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Boots of Utter Darkness'),
(34052, 30307, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Boots of the Crimson Hawk'),
(34052, 30308, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Hurricane Boots'),
(34052, 30323, 0, 0, 0, 1, 1, 1, 1, 'Plans: Boots of the Protector'),
(34052, 30324, 0, 0, 0, 1, 1, 1, 1, 'Plans: Red Havoc Boots'),
--
(36003, 29983, 0, 0, 0, 1, 1, 1, 1, 'Fel-Steel Warhelm'),
(36003, 29984, 0, 0, 0, 1, 1, 1, 1, 'Girdle of Zaetar'),
(36003, 29985, 0, 0, 0, 1, 1, 1, 1, 'Void Reaver Greaves'),
(36003, 29986, 0, 0, 0, 1, 1, 1, 1, 'Cowl of the Grand Engineer'),
(36003, 30450, 0, 0, 0, 1, 1, 1, 1, 'Warp-Spring Coil'),
(36003, 30619, 0, 0, 0, 1, 1, 1, 1, 'Fel Reaver\'s Piston'),
(36003, 32515, 0, 0, 0, 1, 1, 1, 1, 'Wristguards of Determination'),
--
(36004, 30248, 0, 0, 0, 1, 1, 1, 1, 'Pauldrons of the Vanquished Champion'),
(36004, 30249, 0, 0, 0, 1, 1, 1, 1, 'Pauldrons of the Vanquished Defender'),
(36004, 30250, 0, 0, 0, 1, 1, 1, 1, 'Pauldrons of the Vanquished Hero'),
--
(36005, 29950, 0, 0, 0, 1, 1, 1, 1, 'Greaves of the Bloodwarder'),
(36005, 29951, 0, 0, 0, 1, 1, 1, 1, 'Star-Strider Boots'),
(36005, 29965, 0, 0, 0, 1, 1, 1, 1, 'Girdle of the Righteous Path'),
(36005, 29966, 0, 0, 0, 1, 1, 1, 1, 'Vambraces of Ending'),
--
(36006, 29972, 0, 0, 0, 1, 1, 1, 1, 'Trousers of the Astromancer'),
(36006, 29976, 0, 0, 0, 1, 1, 1, 1, 'Worldstorm Gauntlets'),
(36006, 29977, 0, 0, 0, 1, 1, 1, 1, 'Star-Soul Breeches'),
(36006, 29982, 0, 0, 0, 1, 1, 1, 1, 'Wand of the Forgotten Star'),
(36006, 32267, 0, 0, 0, 1, 1, 1, 1, 'Boots of the Resilient'),
--
(36007, 29962, 0, 0, 0, 1, 1, 1, 1, 'Heartrazor'),
(36007, 29981, 0, 0, 0, 1, 1, 1, 1, 'Ethereum Life-Staff'),
(36007, 30446, 0, 0, 0, 1, 1, 1, 1, 'Solarian\'s Sapphire'),
(36007, 30449, 0, 0, 0, 1, 1, 1, 1, 'Void Star Talisman'),
--
(36008, 29987, 0, 0, 0, 1, 1, 1, 1, 'Gauntlets of the Sun King'),
(36008, 29988, 0, 0, 0, 1, 1, 1, 1, 'The Nexus Key'),
(36008, 29989, 0, 0, 0, 1, 1, 1, 1, 'Sunshower Light Cloak'),
(36008, 29990, 0, 0, 0, 1, 1, 1, 1, 'Crown of the Sun'),
(36008, 29991, 0, 0, 0, 1, 1, 1, 1, 'Sunhawk Leggings'),
(36008, 29992, 0, 0, 0, 1, 1, 1, 1, 'Royal Cloak of the Sunstriders'),
--
(36009, 29993, 0, 0, 0, 1, 1, 1, 1, 'Twinblade of the Phoenix'),
(36009, 29994, 0, 0, 0, 1, 1, 1, 1, 'Thalassian Wildercloak'),
(36009, 29995, 0, 0, 0, 1, 1, 1, 1, 'Leggings of Murderous Intent'),
(36009, 29996, 0, 0, 0, 1, 1, 1, 1, 'Rod of the Sun King'),
(36009, 29997, 0, 0, 0, 1, 1, 1, 1, 'Band of the Ranger-General'),
(36009, 29998, 0, 0, 0, 1, 1, 1, 1, 'Royal Gauntlets of Silvermoon'),
--
(36010, 30236, 0, 0, 0, 1, 1, 1, 1, 'Chestguard of the Vanquished Champion'),
(36010, 30237, 0, 0, 0, 1, 1, 1, 1, 'Chestguard of the Vanquished Defender'),
(36010, 30238, 0, 0, 0, 1, 1, 1, 1, 'Chestguard of the Vanquished Hero'),
--
(36011, 30047, 0, 0, 0, 1, 1, 1, 1, 'Blackfathom Warbands'),
(36011, 30048, 0, 0, 0, 1, 1, 1, 1, 'Brighthelm of Justice'),
(36011, 30052, 0, 0, 0, 1, 1, 1, 1, 'Ring of Lethality'),
(36011, 30629, 0, 0, 0, 1, 1, 1, 1, 'Scarab of Displacement'),
--
(36012, 30054, 0, 0, 0, 1, 1, 1, 1, 'Ranger-General\'s Chestguard'),
(36012, 30055, 0, 0, 0, 1, 1, 1, 1, 'Shoulderpads of the Stranger'),
(36012, 30056, 0, 0, 0, 1, 1, 1, 1, 'Robe of Hateful Echoes'),
(36012, 33055, 0, 0, 0, 1, 1, 1, 1, 'Band of Vile Aggression'),
--
(36013, 30049, 0, 0, 0, 1, 1, 1, 1, 'Fathomstone'),
(36013, 30050, 0, 0, 0, 1, 1, 1, 1, 'Boots of the Shifting Nightmare'),
(36013, 30051, 0, 0, 0, 1, 1, 1, 1, 'Idol of the Crescent Goddess'),
(36013, 30053, 0, 0, 0, 1, 1, 1, 1, 'Pauldrons of the Wardancer'),
(36013, 30664, 0, 0, 0, 1, 1, 1, 1, 'Living Root of the Wildheart'),
(36013, 32516, 0, 0, 0, 1, 1, 1, 1, 'Wraps of Purification'),
--
(36014, 30057, 0, 0, 0, 1, 1, 1, 1, 'Bracers of Eradication'),
(36014, 30060, 0, 0, 0, 1, 1, 1, 1, 'Boots of Effortless Striking'),
(36014, 30061, 0, 0, 0, 1, 1, 1, 1, 'Ancestral Ring of Conquest'),
(36014, 30062, 0, 0, 0, 1, 1, 1, 1, 'Grove-Bands of Remulos'),
--
(36015, 30063, 0, 0, 0, 1, 1, 1, 1, 'Libram of Absolute Truth'),
(36015, 30064, 0, 0, 0, 1, 1, 1, 1, 'Cord of Screaming Terrors'),
(36015, 30067, 0, 0, 0, 1, 1, 1, 1, 'Velvet Boots of the Guardian'),
(36015, 30665, 0, 0, 0, 1, 1, 1, 1, 'Earring of Soulful Meditation'),
(36015, 33054, 0, 0, 0, 1, 1, 1, 1, 'The Seal of Danzalar'),
--
(36016, 30058, 0, 0, 0, 1, 1, 1, 1, 'Mallet of the Tides'),
(36016, 30059, 0, 0, 0, 1, 1, 1, 1, 'Choker of Animalistic Fury'),
(36016, 30065, 0, 0, 0, 1, 1, 1, 1, 'Glowing Breastplate of Truth'),
(36016, 30066, 0, 0, 0, 1, 1, 1, 1, 'Tempest-Strider Boots'),
--
(36017, 30082, 0, 0, 0, 1, 1, 1, 1, 'Talon of Azshara'),
(36017, 30083, 0, 0, 0, 1, 1, 1, 1, 'Ring of Sundered Souls'),
(36017, 30720, 0, 0, 0, 1, 1, 1, 1, 'Serpent-Coil Braid'),
(36017, 33058, 0, 0, 0, 1, 1, 1, 1, 'Band of the Vigilant'),
--
(36018, 30081, 0, 0, 0, 1, 1, 1, 1, 'Warboots of Obliteration'),
(36018, 30084, 0, 0, 0, 1, 1, 1, 1, 'Pauldrons of the Argent Sentinel'),
(36018, 30085, 0, 0, 0, 1, 1, 1, 1, 'Mantle of the Tireless Tracker'),
(36018, 30098, 0, 0, 0, 1, 1, 1, 1, 'Razor-Scale Battlecloak'),
--
(36019, 30008, 0, 0, 0, 1, 1, 1, 1, 'Pendant of the Lost Ages'),
(36019, 30068, 0, 0, 0, 1, 1, 1, 1, 'Girdle of the Tidal Call'),
(36019, 30075, 0, 0, 0, 1, 1, 1, 1, 'Gnarled Chestpiece of the Ancients'),
(36019, 30079, 0, 0, 0, 1, 1, 1, 1, 'Illidari Shoulderpads'),
(36019, 30080, 0, 0, 0, 1, 1, 1, 1, 'Luminescent Rod of the Naaru'),
--
(36020, 30091, 0, 0, 0, 1, 1, 1, 1, 'True-Aim Stalker Bands'),
(36020, 30092, 0, 0, 0, 1, 1, 1, 1, 'Orca-Hide Boots'),
(36020, 30095, 0, 0, 0, 1, 1, 1, 1, 'Fang of the Leviathan'),
(36020, 30096, 0, 0, 0, 1, 1, 1, 1, 'Girdle of the Invulnerable'),
(36020, 30097, 0, 0, 0, 1, 1, 1, 1, 'Coral-Barbed Shoulderpads'),
(36020, 30627, 0, 0, 0, 1, 1, 1, 1, 'Tsunami Talisman'),
--
(36021, 30239, 0, 0, 0, 1, 1, 1, 1, 'Gloves of the Vanquished Champion'),
(36021, 30240, 0, 0, 0, 1, 1, 1, 1, 'Gloves of the Vanquished Defender'),
(36021, 30241, 0, 0, 0, 1, 1, 1, 1, 'Gloves of the Vanquished Hero'),
--
(36022, 30090, 0, 0, 0, 1, 1, 1, 1, 'World Breaker'),
(36022, 30099, 0, 0, 0, 1, 1, 1, 1, 'Frayed Tether of the Drowned'),
(36022, 30100, 0, 0, 0, 1, 1, 1, 1, 'Soul-Strider Boots'),
(36022, 30101, 0, 0, 0, 1, 1, 1, 1, 'Bloodsea Brigand\'s Vest'),
(36022, 30626, 0, 0, 0, 1, 1, 1, 1, 'Sextant of Unstable Currents'),
(36022, 30663, 0, 0, 0, 1, 1, 1, 1, 'Fathom-Brooch of the Tidewalker'),
--
(36023, 30245, 0, 0, 0, 1, 1, 1, 1, 'Leggings of the Vanquished Champion'),
(36023, 30246, 0, 0, 0, 1, 1, 1, 1, 'Leggings of the Vanquished Defender'),
(36023, 30247, 0, 0, 0, 1, 1, 1, 1, 'Leggings of the Vanquished Hero'),
--
(36024, 30102, 0, 0, 0, 1, 1, 1, 1, 'Krakken-Heart Breastplate'),
(36024, 30103, 0, 0, 0, 1, 1, 1, 1, 'Fang of Vashj'),
(36024, 30104, 0, 0, 0, 1, 1, 1, 1, 'Cobra-Lash Boots'),
(36024, 30105, 0, 0, 0, 1, 1, 1, 1, 'Serpent Spine Longbow'),
(36024, 30106, 0, 0, 0, 1, 1, 1, 1, 'Belt of One-Hundred Deaths'),
(36024, 30621, 0, 0, 0, 1, 1, 1, 1, 'Prism of Inner Calm'),
--
(36025, 30107, 0, 0, 0, 1, 1, 1, 1, 'Vestments of the Sea-Witch'),
(36025, 30108, 0, 0, 0, 1, 1, 1, 1, 'Lightfathom Scepter'),
(36025, 30109, 0, 0, 0, 1, 1, 1, 1, 'Ring of Endless Coils'),
(36025, 30110, 0, 0, 0, 1, 1, 1, 1, 'Coral Band of the Revived'),
(36025, 30111, 0, 0, 0, 1, 1, 1, 1, 'Runetotem\'s Mantle'),
(36025, 30112, 0, 0, 0, 1, 1, 1, 1, 'Glorious Gauntlets of Crestfall'),
--
(36026, 30242, 0, 0, 0, 1, 1, 1, 1, 'Helm of the Vanquished Champion'),
(36026, 30243, 0, 0, 0, 1, 1, 1, 1, 'Helm of the Vanquished Defender'),
(36026, 30244, 0, 0, 0, 1, 1, 1, 1, 'Helm of the Vanquished Hero'),
--
(36098, 30021, 0, 0, 0, 1, 1, 1, 1, 'Wildfury Greatstaff'),
(36098, 30022, 0, 0, 0, 1, 1, 1, 1, 'Pendant of the Perilous'),
(36098, 30023, 0, 0, 0, 1, 1, 1, 1, 'Totem of the Maelstrom'),
(36098, 30025, 0, 0, 0, 1, 1, 1, 1, 'Serpentshrine Shuriken'),
(36098, 30027, 0, 0, 0, 1, 1, 1, 1, 'Boots of Courage Unending'),
(36098, 30620, 0, 0, 0, 1, 1, 1, 1, 'Spyglass of the Hidden Fleet'),
--
(50501, 16253, 0, 0, 0, 1, 1, 1, 1, 'Formula: Enchant Chest - Greater Stats'),
(50501, 22532, 0, 0, 0, 1, 1, 1, 1, 'Formula: Enchant Bracer - Restore Mana Prime'),
(50501, 22540, 0, 0, 0, 1, 1, 1, 1, 'Formula: Enchant Shield - Shield Block'),
(50501, 22541, 0, 0, 0, 1, 1, 1, 1, 'Formula: Enchant Shield - Resistance'),
(50501, 22542, 0, 0, 0, 1, 1, 1, 1, 'Formula: Enchant Boots - Vitality'),
(50501, 22548, 0, 0, 0, 1, 1, 1, 1, 'Formula: Enchant Cloak - Major Resistance'),
(50501, 22553, 0, 0, 0, 1, 1, 1, 1, 'Formula: Enchant Weapon - Potency'),
(50501, 22557, 0, 0, 0, 1, 1, 1, 1, 'Formula: Enchant Weapon - Battlemaster'),
(50501, 22558, 0, 0, 0, 1, 1, 1, 1, 'Formula: Enchant Weapon - Spellsurge'),
(50501, 22903, 0, 0, 0, 1, 1, 1, 1, 'Recipe: Insane Strength Potion'),
(50501, 22904, 0, 0, 0, 1, 1, 1, 1, 'Recipe: Elixir of the Searching Eye'),
(50501, 22912, 0, 0, 0, 1, 1, 1, 1, 'Recipe: Heroic Potion'),
(50501, 22913, 0, 0, 0, 1, 1, 1, 1, 'Recipe: Haste Potion'),
(50501, 22914, 0, 0, 0, 1, 1, 1, 1, 'Recipe: Destruction Potion'),
(50501, 22919, 0, 0, 0, 1, 1, 1, 1, 'Recipe: Elixir of Major Mageblood'),
(50501, 22926, 0, 0, 0, 1, 1, 1, 1, 'Recipe: Elixir of Empowerment'),
(50501, 23154, 0, 0, 0, 1, 1, 1, 1, 'Design: Stormy Azure Moonstone'),
(50501, 23620, 0, 0, 0, 1, 1, 1, 1, 'Plans: Felfury Gauntlets'),
(50501, 23621, 0, 0, 0, 1, 1, 1, 1, 'Plans: Gauntlets of the Iron Tower'),
(50501, 23622, 0, 0, 0, 1, 1, 1, 1, 'Plans: Steelgrip Gauntlets'),
(50501, 23623, 0, 0, 0, 1, 1, 1, 1, 'Plans: Storm Helm'),
(50501, 23624, 0, 0, 0, 1, 1, 1, 1, 'Plans: Helm of the Stalwart Defender'),
(50501, 23625, 0, 0, 0, 1, 1, 1, 1, 'Plans: Oathkeeper\'s Helm'),
(50501, 23626, 0, 0, 0, 1, 1, 1, 1, 'Plans: Black Felsteel Bracers'),
(50501, 23627, 0, 0, 0, 1, 1, 1, 1, 'Plans: Bracers of the Green Fortress'),
(50501, 23628, 0, 0, 0, 1, 1, 1, 1, 'Plans: Blessed Bracers'),
(50501, 23629, 0, 0, 0, 1, 1, 1, 1, 'Plans: Felsteel Longblade'),
(50501, 23630, 0, 0, 0, 1, 1, 1, 1, 'Plans: Khorium Champion'),
(50501, 23631, 0, 0, 0, 1, 1, 1, 1, 'Plans: Fel Edged Battleaxe'),
(50501, 23632, 0, 0, 0, 1, 1, 1, 1, 'Plans: Felsteel Reaper'),
(50501, 23633, 0, 0, 0, 1, 1, 1, 1, 'Plans: Runic Hammer'),
(50501, 23634, 0, 0, 0, 1, 1, 1, 1, 'Plans: Fel Hardened Maul'),
(50501, 23635, 0, 0, 0, 1, 1, 1, 1, 'Plans: Eternium Runed Blade'),
(50501, 23636, 0, 0, 0, 1, 1, 1, 1, 'Plans: Dirge'),
(50501, 23637, 0, 0, 0, 1, 1, 1, 1, 'Plans: Hand of Eternity'),
(50501, 23802, 0, 0, 0, 1, 1, 1, 1, 'Schematic: Ornate Khorium Rifle'),
(50501, 23804, 0, 0, 0, 1, 1, 1, 1, 'Schematic: Power Amplification Goggles'),
(50501, 23810, 0, 0, 0, 1, 1, 1, 1, 'Schematic: Crashin\' Thrashin\' Robot'),
(50501, 23883, 0, 0, 0, 1, 1, 1, 1, 'Schematic: Healing Potion Injector'),
(50501, 23884, 0, 0, 0, 1, 1, 1, 1, 'Schematic: Mana Potion Injector'),
(50501, 24163, 0, 0, 0, 1, 1, 1, 1, 'Design: Heavy Felsteel Ring'),
(50501, 24164, 0, 0, 0, 1, 1, 1, 1, 'Design: Delicate Eternium Ring'),
(50501, 24165, 0, 0, 0, 1, 1, 1, 1, 'Design: Blazing Eternium Band'),
(50501, 24166, 0, 0, 0, 1, 1, 1, 1, 'Design: Thick Felsteel Necklace'),
(50501, 24167, 0, 0, 0, 1, 1, 1, 1, 'Design: Living Ruby Pendant'),
(50501, 24168, 0, 0, 0, 1, 1, 1, 1, 'Design: Braided Eternium Chain'),
(50501, 24169, 0, 0, 0, 1, 1, 1, 1, 'Design: Eye of the Night'),
(50501, 24170, 0, 0, 0, 1, 1, 1, 1, 'Design: Embrace of the Dawn'),
(50501, 24171, 0, 0, 0, 1, 1, 1, 1, 'Design: Chain of the Twilight Owl'),
(50501, 24192, 0, 0, 0, 1, 1, 1, 1, 'Design: Bright Living Ruby'),
(50501, 24193, 0, 0, 0, 1, 1, 1, 1, 'Design: Bold Living Ruby'),
(50501, 24194, 0, 0, 0, 1, 1, 1, 1, 'Design: Delicate Living Ruby'),
(50501, 24195, 0, 0, 0, 1, 1, 1, 1, 'Design: Teardrop Living Ruby'),
(50501, 24196, 0, 0, 0, 1, 1, 1, 1, 'Design: Runed Living Ruby'),
(50501, 24197, 0, 0, 0, 1, 1, 1, 1, 'Design: Subtle Living Ruby'),
(50501, 24198, 0, 0, 0, 1, 1, 1, 1, 'Design: Flashing Living Ruby'),
(50501, 24199, 0, 0, 0, 1, 1, 1, 1, 'Design: Solid Star of Elune'),
(50501, 24200, 0, 0, 0, 1, 1, 1, 1, 'Design: Sparkling Star of Elune'),
(50501, 24201, 0, 0, 0, 1, 1, 1, 1, 'Design: Lustrous Star of Elune'),
(50501, 24202, 0, 0, 0, 1, 1, 1, 1, 'Design: Stormy Star of Elune'),
(50501, 24203, 0, 0, 0, 1, 1, 1, 1, 'Design: Brilliant Dawnstone'),
(50501, 24204, 0, 0, 0, 1, 1, 1, 1, 'Design: Smooth Dawnstone'),
(50501, 24205, 0, 0, 0, 1, 1, 1, 1, 'Design: Rigid Dawnstone'),
(50501, 24206, 0, 0, 0, 1, 1, 1, 1, 'Design: Gleaming Dawnstone'),
(50501, 24207, 0, 0, 0, 1, 1, 1, 1, 'Design: Thick Dawnstone'),
(50501, 24209, 0, 0, 0, 1, 1, 1, 1, 'Design: Sovereign Nightseye'),
(50501, 24210, 0, 0, 0, 1, 1, 1, 1, 'Design: Shifting Nightseye'),
(50501, 24211, 0, 0, 0, 1, 1, 1, 1, 'Design: Glowing Nightseye'),
(50501, 24212, 0, 0, 0, 1, 1, 1, 1, 'Design: Royal Nightseye'),
(50501, 24213, 0, 0, 0, 1, 1, 1, 1, 'Design: Inscribed Noble Topaz'),
(50501, 24214, 0, 0, 0, 1, 1, 1, 1, 'Design: Potent Noble Topaz'),
(50501, 24215, 0, 0, 0, 1, 1, 1, 1, 'Design: Luminous Noble Topaz'),
(50501, 24216, 0, 0, 0, 1, 1, 1, 1, 'Design: Glinting Noble Topaz'),
(50501, 24217, 0, 0, 0, 1, 1, 1, 1, 'Design: Enduring Talasite'),
(50501, 24218, 0, 0, 0, 1, 1, 1, 1, 'Design: Radiant Talasite'),
(50501, 24219, 0, 0, 0, 1, 1, 1, 1, 'Design: Dazzling Talasite'),
(50501, 24220, 0, 0, 0, 1, 1, 1, 1, 'Design: Jagged Talasite'),
(50501, 24296, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Unyielding Bracers'),
(50501, 24297, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Bracers of Havok'),
(50501, 24298, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Blackstrike Bracers'),
(50501, 24299, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Cloak of the Black Void'),
(50501, 24300, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Cloak of Eternity'),
(50501, 24301, 0, 0, 0, 1, 1, 1, 1, 'Pattern: White Remedy Cape'),
(50501, 24302, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Unyielding Girdle'),
(50501, 24303, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Girdle of Ruination'),
(50501, 24304, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Black Belt of Knowledge'),
(50501, 24305, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Resolute Cape'),
(50501, 24306, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Vengeance Wrap'),
(50501, 24307, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Manaweave Cloak'),
(50501, 25887, 0, 0, 0, 1, 1, 1, 1, 'Schematic: Purple Smoke Flare'),
(50501, 25905, 0, 0, 0, 1, 1, 1, 1, 'Design: Tenacious Earthstorm Diamond'),
(50501, 25906, 0, 0, 0, 1, 1, 1, 1, 'Design: Brutal Earthstorm Diamond'),
(50501, 25907, 0, 0, 0, 1, 1, 1, 1, 'Design: Destructive Skyfire Diamond'),
(50501, 25909, 0, 0, 0, 1, 1, 1, 1, 'Design: Mystical Skyfire Diamond'),
(50501, 28270, 0, 0, 0, 1, 1, 1, 1, 'Formula: Enchant Chest - Major Resilience'),
(50501, 28279, 0, 0, 0, 1, 1, 1, 1, 'Formula: Enchant Boots - Cat\'s Swiftness'),
(50501, 28280, 0, 0, 0, 1, 1, 1, 1, 'Formula: Enchant Boots - Boar\'s Speed'),
(50501, 29723, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Cobrascale Hood'),
(50501, 29724, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Cobrascale Gloves'),
(50501, 29725, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Windscale Hood'),
(50501, 29726, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Hood of Primal Life'),
(50501, 29727, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Gloves of the Living Touch'),
(50501, 29728, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Windslayer Wraps'),
(50501, 29729, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Living Dragonscale Helm'),
(50501, 29730, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Earthen Netherscale Boots'),
(50501, 29731, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Windstrike Gloves'),
(50501, 29732, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Netherdrake Helm'),
(50501, 29733, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Netherdrake Gloves'),
(50501, 29734, 0, 0, 0, 1, 1, 1, 1, 'Pattern: Thick Netherscale Breastplate'),
(50501, 31875, 0, 0, 0, 1, 1, 1, 1, 'Design: Great Dawnstone'),
(50501, 31876, 0, 0, 0, 1, 1, 1, 1, 'Design: Balanced Nightseye'),
(50501, 31877, 0, 0, 0, 1, 1, 1, 1, 'Design: Infused Nightseye'),
(50501, 31878, 0, 0, 0, 1, 1, 1, 1, 'Design: Veiled Noble Topaz'),
(50501, 31879, 0, 0, 0, 1, 1, 1, 1, 'Design: Wicked Noble Topaz'),
(50501, 32411, 0, 0, 0, 1, 1, 1, 1, 'Design: Thundering Skyfire Diamond'),
(50501, 33186, 0, 0, 0, 1, 1, 1, 1, 'Plans: Adamantite Weapon Chain'),
(50501, 33954, 0, 0, 0, 1, 1, 1, 1, 'Plans: Hammer of Righteous Might');

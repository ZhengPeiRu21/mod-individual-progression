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

/* Correct quest log text for SSC attunement quest "The Cudgel of Kar'desh" */
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Skar''this the Heretic in the heroic Slave Pens of Coilfang Reservoir.' WHERE `ID` = 10901;
UPDATE `quest_template_locale` SET `CompletedText` = 'Kehrt zu Nar''biss dem Ketzer in den heroischen Sklavenunterkünften des Echsenkessels.' WHERE `ID` = 10901 AND `locale` = 'deDE';
UPDATE `quest_template_locale` SET `CompletedText` = 'Vuelve con: Skar''this el Herético. Zona: heroico Recinto de los Esclavos de la Reserva Colmillo Torcido.' WHERE `ID` = 10901 AND `locale` = 'esES';
UPDATE `quest_template_locale` SET `CompletedText` = 'Vuelve con: Skar''this el Herético. Zona: heroico Recinto de los Esclavos de la Reserva Colmillo Torcido.' WHERE `ID` = 10901 AND `locale` = 'esMX';
UPDATE `quest_template_locale` SET `CompletedText` = 'Retournez voir Skar''this l''Hérétique dans les Enclos aux esclaves héroïques du Réservoir de Glissecroc.' WHERE `ID` = 10901 AND `locale` = 'frFR';

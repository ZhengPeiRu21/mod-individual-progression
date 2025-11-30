/* SSC Bosses should only drop 2 pieces of loot - was changed to 3 pieces after WotLK release */
DELETE FROM `creature_loot_template` WHERE (`Entry` = 21215) AND (`Item` IN (34059));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
    (21215, 34059, 34059, 100, 0, 1, 0, 2, 2, 'Leotheras the Blind - (ReferenceTable)');

DELETE FROM `creature_loot_template` WHERE (`Entry` = 21214) AND (`Item` IN (34060));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
    (21214, 34060, 34060, 100, 0, 1, 0, 2, 2, 'Fathom-Lord Karathress - (ReferenceTable)');

DELETE FROM `creature_loot_template` WHERE (`Entry` = 21212) AND (`Item` IN (34062));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
    (21212, 34062, 34062, 100, 0, 1, 3, 2, 2, 'Lady Vashj - (ReferenceTable)');

/* Correct quest log text for SSC attunement quest "The Cudgel of Kar'desh" */
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Skar\'this the Heretic in the heroic Slave Pens of Coilfang Reservoir.' WHERE `ID` = 10901;

    
/* fix recipe loot drops */

-- remove T5 recipes reference loot table from bosses that shouldn\'t have it.
DELETE FROM `creature_loot_template` WHERE `Reference` = 34052 AND `Entry` IN (18805, 19516, 19622, 21212, 21213, 21214, 21215, 21216, 21217);

-- remove all T5 recipes from trash creatures, this is now done with a reference loot table.
DELETE FROM `creature_loot_template` WHERE `item` IN (30282, 30283, 30305, 30306, 30307, 30308, 30323, 30324, 30321, 30322, 30301, 30302, 30303, 30304, 30280, 30281);

-- add reference loot table to trash creatures
DELETE FROM `creature_loot_template` WHERE `Item` = 34052;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(20047, 34052, 34052, 1.882, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(21228, 34052, 34052, 1.346, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(20031, 34052, 34052, 1.768, 0, 1, 1, 1, 1, 'T5 - Recipes'),
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
(20048, 34052, 34052, 1.877, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(20049, 34052, 34052, 1.881, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(20050, 34052, 34052, 1.833, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(20052, 34052, 34052, 1.784, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(21218, 34052, 34052, 1.46, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(21220, 34052, 34052, 1.695, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(21221, 34052, 34052, 1.338, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(21224, 34052, 34052, 1.733, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(21225, 34052, 34052, 1.387, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(21226, 34052, 34052, 1.358, 0, 1, 1, 1, 1, 'T5 - Recipes'),
(21227, 34052, 34052, 1.1, 0, 1, 1, 1, 1, 'T5 - Recipes'),
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
(21863, 34052, 34052, 0.532, 0, 1, 1, 1, 1, 'T5 - Recipes');

-- add missing Netherweave Cloth drop to bosses
DELETE FROM `creature_loot_template` WHERE `Item` = 21877 AND `Entry` IN (18805, 19622, 21212, 21213, 21214, 21215);
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(18805, 21877, 0, 18, 0, 1, 1, 2, 3, 'High Astromancer Solarian - Netherweave Cloth'),
(19622, 21877, 0, 18, 0, 1, 1, 2, 3, 'Kael\'thas Sunstrider - Netherweave Cloth'),
(21212, 21877, 0, 18, 0, 1, 1, 2, 3, 'Lady Vashj - Netherweave Cloth'),
(21213, 21877, 0, 18, 0, 1, 1, 2, 3, 'Morogrim Tidewalker - Netherweave Cloth'),
(21214, 21877, 0, 18, 0, 1, 1, 2, 3, 'Fathom-Lord Karathress - Netherweave Cloth'),
(21215, 21877, 0, 18, 0, 1, 1, 2, 3, 'Leotheras the Blind - Netherweave Cloth');

-- fix reference loot table, no longer devided into 2 groups
DELETE FROM `reference_loot_template` WHERE `Entry` = 34052;
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
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
(34052, 30324, 0, 0, 0, 1, 1, 1, 1, 'Plans: Red Havoc Boots');

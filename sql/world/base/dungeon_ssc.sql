/* SSC Bosses should only drop 2 pieces of loot - was changed to 3 pieces after WotLK release */
DELETE FROM `creature_loot_template` WHERE (`Entry` = 21215) AND (`Item` IN (34059));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
    (21215, 34059, 34059, 100, 0, 1, 0, 1, 2, 'Leotheras the Blind - (ReferenceTable)');

DELETE FROM `creature_loot_template` WHERE (`Entry` = 21214) AND (`Item` IN (34060));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
    (21214, 34060, 34060, 100, 0, 1, 0, 1, 2, 'Fathom-Lord Karathress - (ReferenceTable)');

DELETE FROM `creature_loot_template` WHERE (`Entry` = 21212) AND (`Item` IN (34062));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
    (21212, 34062, 34062, 100, 0, 1, 3, 1, 2, 'Lady Vashj - (ReferenceTable)');
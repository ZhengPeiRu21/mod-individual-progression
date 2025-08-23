UPDATE `creature_template` SET `faction` = 16 WHERE `entry` = 15271; -- Tender
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` = 15273; -- Arcane Wraith
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` = 15294; -- Feral Tender
UPDATE `creature_template` SET `faction` = 16 WHERE `entry` = 15298; -- Tainted Arcane Wraith
UPDATE `creature_template` SET `faction` = 14 WHERE `entry` = 15367; -- Felendren the Banished

-- Windows to the Source (Warlock)
DELETE FROM `creature_questender` WHERE `id`=15283 AND `quest`=8344;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (15283, 8344);

-- Windows to the Source (Warlock)
DELETE FROM `creature_queststarter` WHERE `id`=15283 AND `quest`=8344;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (15283, 8344);

DELETE FROM `creature_loot_template` WHERE `Entry`= 15298 AND `Item`=20935;
INSERT INTO `creature_loot_template` (Entry, Item, Reference, Chance, QuestRequired, LootMode, GroupId, MinCount, MaxCount, Comment) VALUES
(15298, 20935, 0, 80, 1, 1, 0, 1, 1, 'Tainted Arcane Wraith - Tainted Wraith Essence');

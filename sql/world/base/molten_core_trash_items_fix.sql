
-- Ancient Core Hound
DELETE FROM `creature_loot_template` WHERE (`Entry` = 11673) AND (`Item` IN (16838, 16840, 16857, 16858));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(11673, 16838, 0, 0.34, 0, 1, 0, 1, 1, 'Ancient Core Hound - Earthfury Belt'),
(11673, 16840, 0, 0.32, 0, 1, 0, 1, 1, 'Ancient Core Hound - Earthfury Bracers'),
(11673, 16857, 0, 0.32, 0, 1, 0, 1, 1, 'Ancient Core Hound - Lawbringer Bracers'),
(11673, 16858, 0, 0.34, 0, 1, 0, 1, 1, 'Ancient Core Hound - Lawbringer Belt');

-- Firelord
DELETE FROM `creature_loot_template` WHERE (`Entry` = 11668) AND (`Item` IN (16838, 16840, 16858));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(11668, 16838, 0, 0.34, 0, 1, 0, 1, 1, 'Firelord - Earthfury Belt'),
(11668, 16840, 0, 0.32, 0, 1, 0, 1, 1, 'Firelord - Earthfury Bracers'),
(11668, 16858, 0, 0.34, 0, 1, 0, 1, 1, 'Firelord - Lawbringer Belt');

-- Firewalker
DELETE FROM `creature_loot_template` WHERE (`Entry` = 11666) AND (`Item` IN (16838, 16840, 16857, 16858, 16861, 16864));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(11666, 16838, 0, 0.34, 0, 1, 0, 1, 1, 'Firewalker - Earthfury Belt'),
(11666, 16840, 0, 0.32, 0, 1, 0, 1, 1, 'Firewalker - Earthfury Bracers'),
(11666, 16857, 0, 0.32, 0, 1, 0, 1, 1, 'Firewalker - Lawbringer Bracers'),
(11666, 16858, 0, 0.34, 0, 1, 0, 1, 1, 'Firewalker - Lawbringer Belt'),
(11666, 16861, 0, 0.34, 0, 1, 0, 1, 1, 'Firewalker - Bracers of Might'),
(11666, 16864, 0, 0.34, 0, 1, 0, 1, 1, 'Firewalker - Belt of Might');

-- Flameguard
DELETE FROM `creature_loot_template` WHERE (`Entry` = 11667) AND (`Item` IN (16819, 16838, 16840, 16857));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(11667, 16819, 0, 0.32, 0, 1, 0, 1, 1, 'Flameguard - Vambraces of Prophecy'),
(11667, 16838, 0, 0.34, 0, 1, 0, 1, 1, 'Flameguard - Earthfury Belt'),
(11667, 16840, 0, 0.32, 0, 1, 0, 1, 1, 'Flameguard - Earthfury Bracers'),
(11667, 16857, 0, 0.32, 0, 1, 0, 1, 1, 'Flameguard - Lawbringer Bracers');

-- Flamewaker
DELETE FROM `creature_loot_template` WHERE (`Entry` = 11661) AND (`Item` IN (16804, 16838, 16840, 16857, 16858, 16864));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(11661, 16804, 0, 0.32, 0, 1, 0, 1, 1, 'Flamewaker - Felheart Bracers'),
(11661, 16838, 0, 0.34, 0, 1, 0, 1, 1, 'Flamewaker - Earthfury Belt'),
(11661, 16840, 0, 0.32, 0, 1, 0, 1, 1, 'Flamewaker - Earthfury Bracers'),
(11661, 16857, 0, 0.32, 0, 1, 0, 1, 1, 'Flamewaker - Lawbringer Bracers'),
(11661, 16858, 0, 0.34, 0, 1, 0, 1, 1, 'Flamewaker - Lawbringer Belt'),
(11661, 16864, 0, 0.34, 0, 1, 0, 1, 1, 'Flamewaker - Belt of Might');

-- Flamewaker Priest
DELETE FROM `creature_loot_template` WHERE (`Entry` = 11662) AND (`Item` IN (16802, 16806, 16827, 16828, 16830, 16838, 16840, 16857, 16858, 16861, 16864));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(11662, 16802, 0, 0.34, 0, 1, 0, 1, 1, 'Flamewaker Priest - Arcanist Belt'),
(11662, 16806, 0, 0.34, 0, 1, 0, 1, 1, 'Flamewaker Priest - Felheart Belt'),
(11662, 16827, 0, 0.34, 0, 1, 0, 1, 1, 'Flamewaker Priest - Nightslayer Belt'),
(11662, 16828, 0, 0.34, 0, 1, 0, 1, 1, 'Flamewaker Priest - Cenarion Belt'),
(11662, 16830, 0, 0.32, 0, 1, 0, 1, 1, 'Flamewaker Priest - Cenarion Bracers'),
(11662, 16838, 0, 0.34, 0, 1, 0, 1, 1, 'Flamewaker Priest - Earthfury Belt'),
(11662, 16840, 0, 0.32, 0, 1, 0, 1, 1, 'Flamewaker Priest - Earthfury Bracers'),
(11662, 16857, 0, 0.32, 0, 1, 0, 1, 1, 'Flamewaker Priest - Lawbringer Bracers'),
(11662, 16858, 0, 0.34, 0, 1, 0, 1, 1, 'Flamewaker Priest - Lawbringer Belt'),
(11662, 16861, 0, 0.32, 0, 1, 0, 1, 1, 'Flamewaker Priest - Bracers of Might'),
(11662, 16864, 0, 0.34, 0, 1, 0, 1, 1, 'Flamewaker Priest - Belt of Might');

-- Flamewaker Healer
DELETE FROM `creature_loot_template` WHERE (`Entry` = 11663) AND (`Item` IN (16799, 16828, 16838, 16840, 16851, 16858));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(11663, 16799, 0, 0.32, 0, 1, 0, 1, 1, 'Flamewaker Healer - Arcanist Bindings'),
(11663, 16828, 0, 0.34, 0, 1, 0, 1, 1, 'Flamewaker Healer - Cenarion Belt'),
(11663, 16838, 0, 0.34, 0, 1, 0, 1, 1, 'Flamewaker Healer - Earthfury Belt'),
(11663, 16840, 0, 0.32, 0, 1, 0, 1, 1, 'Flamewaker Healer - Earthfury Bracers'),
(11663, 16851, 0, 0.34, 0, 1, 0, 1, 1, 'Flamewaker Healer - Giantstalker\'s Belt'),
(11663, 16858, 0, 0.34, 0, 1, 0, 1, 1, 'Flamewaker Healer - Lawbringer Belt');

-- Flamewaker Elite
DELETE FROM `creature_loot_template` WHERE (`Entry` = 11664) AND (`Item` IN (16817, 16838, 16840, 16851, 16857, 16858, 16861));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(11664, 16817, 0, 0.34, 0, 1, 0, 1, 1, 'Flamewaker Elite - Girdle of Prophecy'),
(11664, 16838, 0, 0.34, 0, 1, 0, 1, 1, 'Flamewaker Elite - Earthfury Belt'),
(11664, 16840, 0, 0.32, 0, 1, 0, 1, 1, 'Flamewaker Elite - Earthfury Bracers'),
(11664, 16851, 0, 0.34, 0, 1, 0, 1, 1, 'Flamewaker Elite - Giantstalker\'s Belt'),
(11664, 16857, 0, 0.32, 0, 1, 0, 1, 1, 'Flamewaker Elite - Lawbringer Bracers'),
(11664, 16858, 0, 0.34, 0, 1, 0, 1, 1, 'Flamewaker Elite - Lawbringer Belt'),
(11664, 16861, 0, 0.32, 0, 1, 0, 1, 1, 'Flamewaker Elite - Bracers of Might');

-- Flamewaker Protector
DELETE FROM `creature_loot_template` WHERE (`Entry` = 12119) AND (`Item` IN (16802, 16804, 16806, 16817, 16827, 16840));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(12119, 16802, 0, 0.34, 0, 1, 0, 1, 1, 'Flamewaker Protector - Arcanist Belt'),
(12119, 16804, 0, 0.32, 0, 1, 0, 1, 1, 'Flamewaker Protector - Felheart Bracers'),
(12119, 16806, 0, 0.34, 0, 1, 0, 1, 1, 'Flamewaker Protector - Felheart Belt'),
(12119, 16817, 0, 0.32, 0, 1, 0, 1, 1, 'Flamewaker Protector - Girdle of Prophecy'),
(12119, 16827, 0, 0.34, 0, 1, 0, 1, 1, 'Flamewaker Protector - Nightslayer Belt'),
(12119, 16840, 0, 0.32, 0, 1, 0, 1, 1, 'Flamewaker Protector - Earthfury Bracers');

-- Lava Elemental
DELETE FROM `creature_loot_template` WHERE (`Entry` = 12076) AND (`Item` IN (16838, 16840, 16858));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(12076, 16838, 0, 0.2, 0, 1, 0, 1, 1, 'Lava Elemental - Earthfury Belt'),
(12076, 16840, 0, 0.2, 0, 1, 0, 1, 1, 'Lava Elemental - Earthfury Bracers'),
(12076, 16858, 0, 0.2, 0, 1, 0, 1, 1, 'Lava Elemental - Lawbringer Belt');

-- Lava Reaver
DELETE FROM `creature_loot_template` WHERE (`Entry` = 12100) AND (`Item` IN (16806, 16838, 16840, 16857, 16858));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(12100, 16806, 0, 0.34, 0, 1, 0, 1, 1, 'Lava Reaver - Felheart Belt'),
(12100, 16838, 0, 0.34, 0, 1, 0, 1, 1, 'Lava Reaver - Earthfury Belt'),
(12100, 16840, 0, 0.32, 0, 1, 0, 1, 1, 'Lava Reaver - Earthfury Bracers'),
(12100, 16857, 0, 0.32, 0, 1, 0, 1, 1, 'Lava Reaver - Lawbringer Bracers'),
(12100, 16858, 0, 0.34, 0, 1, 0, 1, 1, 'Lava Reaver - Lawbringer Belt');

-- Lava Surger
DELETE FROM `creature_loot_template` WHERE (`Entry` = 12101) AND (`Item` IN (16838, 16840, 16857, 16858, 16864));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(12101, 16838, 0, 0.34, 0, 1, 0, 1, 1, 'Lava Surger - Earthfury Belt'),
(12101, 16840, 0, 0.32, 0, 1, 0, 1, 1, 'Lava Surger - Earthfury Bracers'),
(12101, 16857, 0, 0.32, 0, 1, 0, 1, 1, 'Lava Surger - Lawbringer Bracers'),
(12101, 16858, 0, 0.34, 0, 1, 0, 1, 1, 'Lava Surger - Lawbringer Belt'),
(12101, 16864, 0, 0.3, 0, 1, 0, 1, 1, 'Lava Surger - Belt of Might');

-- Molten Destroyer
DELETE FROM `creature_loot_template` WHERE (`Entry` = 11659) AND (`Item` IN (16840));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(11659, 16840, 0, 0.32, 0, 1, 0, 1, 1, 'Molten Destroyer - Earthfury Bracers');

-- Molten Giant
DELETE FROM `creature_loot_template` WHERE (`Entry` = 11658) AND (`Item` IN (16838, 16840));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(11658, 16838, 0, 0.34, 0, 1, 0, 1, 1, 'Molten Giant - Earthfury Belt'),
(11658, 16840, 0, 0.32, 0, 1, 0, 1, 1, 'Molten Giant - Earthfury Bracers');

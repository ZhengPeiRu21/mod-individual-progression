DELETE FROM `creature_queststarter` WHERE `quest` IN (6804, 6821, 6822, 6823, 6824, 7486) AND `id` = 13278;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(13278, 6804), -- Poisoned Water
(13278, 6821), -- Eye of the Emberseer
(13278, 6822), -- The Molten Core
(13278, 6823), -- Agent of Hydraxis
(13278, 6824), -- Hands of the Enemy
(13278, 7486); -- A Hero's Reward

DELETE FROM `creature_questender` WHERE `quest` IN (6804, 6821, 6822, 6823, 6824) AND `id` = 13278;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(13278, 6804), -- Poisoned Water
(13278, 6821), -- Eye of the Emberseer
(13278, 6822), -- The Molten Core
(13278, 6823), -- Agent of Hydraxis
(13278, 6824); -- Hands of the Enemy

DELETE FROM `quest_template_addon` WHERE `ID` IN (6821, 6822, 6823, 6824, 7486);
INSERT INTO `quest_template_addon` (`ID`, `PrevQuestID`, `NextQuestID`) VALUES
(6821, 6805, 6822),
(6822, 6021, 6823),
(6823, 6022, 6824),
(6824, 6823, 7486),
(7486, 6824, 0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 19 AND `SourceEntry` = 6821;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(19, 0, 6821, 0, 0, 47, 0, 6804, 64, 0, 0, 0, 0, '', 'Quest Eyes of the Emberseer available if quest Poisoned Water has been rewarded.'),
(19, 0, 6821, 0, 0, 47, 0, 6805, 64, 0, 0, 0, 0, '', 'Quest Eyes of the Emberseer available if quest Stormers and Rumblers has been rewarded.');

DELETE FROM `conditions` WHERE (`SourceTypeOrReferenceId` = 15) AND (`SourceGroup` = 5065) AND (`SourceId` IN (0, 1));
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 5065, 0, 0, 0, 5, 0, 749, 224, 0, 0, 0, 0, '', 'Duke Hydraxis - Create Aqual Quintessence Gossip - Requires Honored Rep'),
(15, 5065, 0, 0, 0, 47, 0, 6824, 64, 0, 0, 0, 0, '', 'Duke Hydraxis - Aqual Quintessence Gossip available if quest Hand of the Enemy rewarded.'),
(15, 5065, 1, 0, 0, 5, 0, 749, 192, 0, 0, 0, 0, '', 'Duke Hydraxis - Create Eternal Quintessence Gossip - Requires Revered Rep'),
(15, 5065, 1, 0, 0, 47, 0, 6824, 64, 0, 0, 0, 0, '', 'Duke Hydraxis - Create Eternal Quintessence Gossip - Requires Hand of the Enemy rewarded');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 19 AND `SourceEntry` IN (6822, 6823, 6824, 7486);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(19, 0, 6822, 0, 0, 47, 0, 6821, 64, 0, 0, 0, 0, '', 'Quest Molten Core available if quest Eye of the Emberseer has been rewarded.'),
(19, 0, 6823, 0, 0, 47, 0, 6822, 64, 0, 0, 0, 0, '', 'Quest Agent of Hydraxis available if quest Molten Core has been rewarded.'),
(19, 0, 6824, 0, 0, 47, 0, 6823, 64, 0, 0, 0, 0, '', 'Quest Hands of the Enemy available if quest Agents of Hydraxis has been rewarded.'),
(19, 0, 7486, 0, 0, 47, 0, 6824, 64, 0, 0, 0, 0, '', 'Quest A Hero\'s Reward available if quest Hands of the Enemy has been rewarded.');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 19 AND `SourceEntry` IN (6822, 6823, 6824, 7486);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(19, 0, 6822, 0, 0, 47, 0, 6821, 64, 0, 0, 0, 0, '', 'Quest Molten Core available if quest Eye of the Emberseer has been rewarded.'),
(19, 0, 6823, 0, 0, 47, 0, 6822, 64, 0, 0, 0, 0, '', 'Quest Agent of Hydraxis available if quest Molten Core has been rewarded.'),
(19, 0, 6824, 0, 0, 47, 0, 6823, 64, 0, 0, 0, 0, '', 'Quest Hands of the Enemy available if quest Agents of Hydraxis has been rewarded.'),
(19, 0, 7486, 0, 0, 47, 0, 6824, 64, 0, 0, 0, 0, '', 'Quest A Hero\'s Reward available if quest Hands of the Enemy has been rewarded.');

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 13278;
DELETE FROM `smart_scripts` WHERE (`entryorguid` = 13278) AND (`source_type` = 0) AND (`id` IN (0, 1, 2, 3));
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(13278, 0, 0, 1, 62, 0, 100, 0, 5065, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Duke Hydraxis - On Gossip Option 0 Selected - Close Gossip'),
(13278, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 56, 17333, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Duke Hydraxis - On Link - Add item \'Aqual Quintessence\''),
(13278, 0, 2, 3, 62, 0, 100, 0, 5065, 1, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Duke Hydraxis - On Gossip Option 1 Selected - Close Gossip'),
(13278, 0, 3, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 56, 22754, 1, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 'Duke Hydraxis - On Link - Add item \' Eternal Quintessence\'');

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 5065 AND `OptionID` IN (0, 1);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(5065,0,0,'I require a vial of aqual quintessence, Hydraxis, for I go to the Molten Core to extinguish a rune of the Firelords.',8666,1,2,0,0,0,0,'',0,0),
(5065,1,0,'I desire this eternal quintessence, Duke Hydraxis.',12363,1,2,0,0,0,0,'',0,0);

-- MC - Require dusing the runes
UPDATE `gameobject_template` SET `ScriptName` = 'go_firelord_rune' WHERE `entry` IN (176956, 176957, 176955, 176953, 176952, 176954, 176951);

/* Loot Template Fixes */

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

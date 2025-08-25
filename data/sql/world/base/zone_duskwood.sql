-- Nothing but the Truth, should require deepstrider tumor(6082)
DELETE FROM `item_dbc` WHERE `ID` = 6082;
INSERT INTO `item_dbc` (`ID`, `ClassID`, `SubclassID`, `Sound_Override_Subclassid`, `Material`, `DisplayInfoID`, `InventoryType`, `SheatheType`) VALUES
(6082, 12, 0, -1, -1, 9734, 0, 0);

-- Nothing but the Truth, item ID stayed the same, so only updating name and icon
UPDATE `item_template` SET `name` = 'Deepstrider Tumor', `displayid` = 9734 WHERE `entry` = 6082;

-- Nothing but the Truth, tumor dropped from: Deepstrider Giant(4686), Deepstrider Searcher(4687)
DELETE FROM `creature_loot_template` WHERE `Item` = 6082;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(4686, 6082, 0, 100, 1, 1, 0, 1, 1, 'Deepstrider Giant - Deepstrider Tumor'),
(4687, 6082, 0, 100, 1, 1, 0, 1, 1, 'Deepstrider Searcher - Deepstrider Tumor');

-- Nothing but the Truth, update quest log and description
UPDATE `quest_template` SET `LogDescription` = 'Apothecary Faustin at Beggar\'s Haunt needs 5 Shadow Panther Hearts, Mire Lord Fungus and a Deepstrider Tumor.' WHERE `ID` = 1383;
UPDATE `quest_template` SET `QuestDescription` = 'I have just the right serum in mind. It will deal with the truth in precisely the way the truth should be dealt with.$b$bFor this concoction I will need several Shadow Panther hearts from the Swamp. I also require the enchanted fungus off of the Mire Lord who resides there. I am sure one as able as you, $n, can persuade him to part with some.$b$bNow the hard part will be locating a Deepstrider tumor from far-off Desolace. Very rarely the giants there become ill and a tumor forms.$b$bNow, off you go!' WHERE `ID` = 1383;

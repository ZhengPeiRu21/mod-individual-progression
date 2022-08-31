-- Kitta Firewind <Enchanting Trainer>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4169 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES (15, 4169, 0, 7, 333, 125, 'Show menu if enchanting is 125 or higher');

-- The Stolen Tome (Warlock)
DELETE FROM `creature_questender` WHERE `id`=459 AND `quest`=1598;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (459, 1598);

-- The Stolen Tome (Warlock)
DELETE FROM `creature_queststarter` WHERE `id`=459 AND `quest`=1598;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (459, 1598);

-- Defias Thug
UPDATE `creature_template` SET `faction`=17 WHERE `entry`=38;

-- Diseased Timber Wolf
UPDATE `creature_template` SET `modelid1`=604, `name`='Timber Wolf' WHERE `entry`=69;

-- Kobold Laborer
UPDATE `creature_template` SET `maxlevel`=4 WHERE `entry`=80;

-- Garrick Padfoot
UPDATE `creature_template` SET `faction`=17 WHERE `entry`=103;

-- Kobold Worker
UPDATE `creature_template` SET `modelid1`=10912 WHERE `entry`=257;

-- Diseased Young Wolf
UPDATE `creature_template` SET `modelid1`=447, `name`='Young Wolf' WHERE `entry`=299;

-- Smith Argus
UPDATE `creature_template` SET `subname`='Journeyman Blacksmith' WHERE `entry`=514;

-- Eldrin <Journeyman Tailor>
UPDATE `creature_template` SET `subname`='Journeyman Tailor' WHERE `entry`=1103;

-- Alchemist Mallory <Journeyman Alchemist>
UPDATE `creature_template` SET `subname`='Journeyman Alchemist' WHERE `entry`=1215;

-- Adele Fielder <Journeyman Leatherworker>
UPDATE `creature_template` SET `subname`='Journeyman Leatherworker' WHERE `entry`=1632;

-- Northshire Guard
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55 WHERE `entry`=1642;

-- Lee Brown <Fisherman>
UPDATE `creature_template` SET `subname`='Fisherman' WHERE `entry`=1651;

-- Rebecca Laughlin <Tabard Designer>
UPDATE `creature_template` SET `subname`='Tabard Vendor' WHERE `entry`=5193;

-- Lilyssia Nightbreeze <Alchemy Trainer>
UPDATE `creature_template` SET `subname`='Expert Alchemist' WHERE `entry`=5499;

-- Tel'Athir <Apprentice Alchemist>
UPDATE `creature_template` SET `subname`='Journeyman Alchemist', `npcflag`=81, `trainer_type`=2 WHERE `entry`=5500;

-- Eldraeith <Herbalism Supplies>
UPDATE `creature_template` SET `subname`='Herbalism Supplier' WHERE `entry`=5503;

-- Therum Deepforge <Blacksmithing Trainer>
UPDATE `creature_template` SET `subname`='Expert Blacksmith' WHERE `entry`=5511;

-- Lilliam Sparkspindle <Engineering Trainer>
UPDATE `creature_template` SET `subname`='Expert Engineer' WHERE `entry`=5518;

-- Simon Tanner <Leatherworking Trainer>
UPDATE `creature_template` SET `subname`='Expert Leatherworker' WHERE `entry`=5564;

-- Sellandus <Apprentice Tailor>
UPDATE `creature_template` SET `subname`='Expert Tailor', `npcflag`=81, `trainer_type`=2 WHERE `entry`=5567;

-- Helene Peltskinner <Skinner>
UPDATE `creature_template` SET `subname`='Skinner' WHERE `entry`=6306;

-- Diseased Timber Wolf
DELETE FROM `creature_template_addon` WHERE `entry`=69;

-- Diseased Young Wolf
DELETE FROM `creature_template_addon` WHERE `entry`=299;

-- Kitta Firewind <Enchanting Trainer>
DELETE FROM `gossip_menu_option` WHERE `MenuID`=4169;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`) VALUES (4169, 0, 3, 'Train me.', 3266, 5, 16);

-- Smith Argus <Journeyman Blacksmith>
DELETE FROM `npc_trainer` WHERE `ID`=514;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (514, -310000);

-- Eldrin <Journeyman Tailor>
DELETE FROM `npc_trainer` WHERE `ID`=1103;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (1103, -410000);

-- Alchemist Mallory <Journeyman Alchemist>
DELETE FROM `npc_trainer` WHERE `ID`=1215;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (1215, -300000);

-- Adele Fielder <Journeyman Leatherworker>
DELETE FROM `npc_trainer` WHERE `ID`=1632;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (1632, -380000);

-- Lee Brown <Fisherman>
DELETE FROM `npc_trainer` WHERE `ID`=1651;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (1651, -360000);

-- Michelle Belle <Physician>
DELETE FROM `npc_trainer` WHERE `ID`=2329;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (2329, -350000);

-- Randal Hunter <Riding Trainer>
DELETE FROM `npc_trainer` WHERE `ID`=4732;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (4732, -450000);

-- Kitta Firewind <Enchanting Trainer>
DELETE FROM `npc_trainer` WHERE `ID`=11072;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (11072, -330000);
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (11072, -330001);
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (11072, -330002);

-- Antonio Perelli <Traveling Salesman>
DELETE FROM `npc_vendor` WHERE `entry`=844 AND `item`=40411;

-- Dawn Brightstar <Arcane Goods>
DELETE FROM `npc_vendor` WHERE `entry`=958 AND `item` IN (22147, 22148, 37201, 40411);

-- Wolves Across the Border
DELETE FROM `quest_offer_reward` WHERE `ID`=33;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `RewardText`) VALUES (33, 1, 'You\'ve been busy! I can\'t wait to cook up that wolf meat...$b$bI have some things here you might want - take your pick!');

-- Wolves Across the Border
DELETE FROM `quest_request_items` WHERE `ID`=33;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`) VALUES (33, 6, 6, 'Hey $N. I\'m getting hungry...did you get that tough wolf meat?');

-- Bounty on Garrick Padfoot
UPDATE `quest_template` SET `Flags`=8 WHERE `ID`=6;

-- Kobold Camp Cleanup
UPDATE `quest_template` SET `Flags`=8, `LogDescription`='Kill 10 Kobold Vermin, then return to Marshal McBride.', `RequiredNpcOrGoCount1`=10 WHERE `ID`=7;

-- Investigate Echo Ridge
UPDATE `quest_template` SET `Flags`=8, `LogDescription`='Kill 10 Kobold Workers, then report back to Marshal McBride.', `QuestDescription`='$N, my scouts tell me that the kobold infestation is larger than we had thought.  A group of kobold workers has camped near the Echo Ridge Mine to the north.$B$BGo to the mine and remove them.  We know there are at least 10.  Kill them, see if there are more, then report back to me.', `RequiredNpcOrGoCount1`=10 WHERE `ID`=15;

-- Brotherhood of Thieves
UPDATE `quest_template` SET `Flags`=8, `LogDescription`='Bring 12 Red Burlap Bandanas to Deputy Willem outside the Northshire Abbey.', `RequiredItemCount1`=12 WHERE `ID`=18;

-- Skirmish at Echo Ridge
UPDATE `quest_template` SET `Flags`=8, `LogDescription`='Kill 12 Kobold Laborers, then return to Marshal McBride at Northshire Abbey.', `RequiredNpcOrGoCount1`=12 WHERE `ID`=21;

-- Wolves Across the Border
UPDATE `quest_template` SET `Flags`=8, `LogDescription`='Bring 8 pieces of Tough Wolf Meat to Eagan Peltskinner outside Northshire Abbey.', `QuestDescription`='I hate those nasty timber wolves!  But I sure like eating wolf steaks...  Bring me tough wolf meat and I will exchange it for something you\'ll find useful.$B$BTough wolf meat is gathered from hunting the timber wolves and young wolves wandering the Northshire countryside.', `RequiredItemId1`=750 WHERE `ID`=33;

-- Report to Goldshire
UPDATE `quest_template` SET `Flags`=0 WHERE `ID`=54;

-- A Threat Within
UPDATE `quest_template` SET `Flags`=8 WHERE `ID`=783;

-- Rest and Relaxation
UPDATE `quest_template` SET `Flags`=8 WHERE `ID`=2158;

-- Encrypted Letter
UPDATE `quest_template` SET `Flags`=0 WHERE `ID`=3102;

-- Milly Osworth
UPDATE `quest_template` SET `Flags`=8 WHERE `ID`=3903;

-- Milly's Harvest
UPDATE `quest_template` SET `Flags`=8 WHERE `ID`=3904;

-- Grape Manifest
UPDATE `quest_template` SET `Flags`=0 WHERE `ID`=3905;

-- Eagan Peltskinner
UPDATE `quest_template` SET `QuestDescription`='Eagan Peltskinner is looking for someone to hunt wolves for him.  That\'s good news, because we\'re seeing a lot more wolves in Northshire Valley lately.$B$BIf you\'re interested then speak with Eagan.  He\'s around the side of the abbey, to the left.' WHERE `ID`=5261;

-- Bounty on Garrick Padfoot
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=6;

-- Kobold Camp Cleanup
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=7;

-- Investigate Echo Ridge
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=15;

-- Brotherhood of Thieves
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=18;

-- Skirmish at Echo Ridge
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=21;

-- Wolves Across the Border
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=33;

-- Report to Goldshire
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=54;

-- A Threat Within
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=783;

-- Rest and Relaxation
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=2158;

-- Simple Letter
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=3100;

-- Consecrated Letter
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=3101;

-- Encrypted Letter
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=3102;

-- Hallowed Letter
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=3103;

-- Glyphic Letter
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=3104;

-- Tainted Letter
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=3105;

-- Milly Osworth
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=3903;

-- Milly's Harvest
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=3904;

-- Grape Manifest
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=3905;

-- Eagan Peltskinner
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=5261;

-- Timber Wolf
DELETE FROM `creature_loot_template` WHERE `Entry`=69 AND `Item`=750;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Chance`, `QuestRequired`, `MinCount`, `MaxCount`, `Comment`) VALUES (69, 750, 80, 1, 1, 1, 'Timber Wolf - Tough Wolf Meat');

-- Young Wolf
DELETE FROM `creature_loot_template` WHERE `Entry`=299 AND `Item`=750;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Chance`, `QuestRequired`, `MinCount`, `MaxCount`, `Comment`) VALUES (299, 750, 80, 1, 1, 1, 'Young Wolf - Tough Wolf Meat');

DELETE FROM `creature_questitem` WHERE `CreatureEntry` IN (69, 299);
INSERT INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(69, 0, 750, 0),
(299, 0, 750, 0);

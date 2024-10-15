-- Vosur Brakthel <Journeyman Alchemist>
UPDATE `creature_template` SET `subname`='Journeyman Alchemist', `npcflag`=81, `trainer_type`=2 WHERE `entry`=1246;

-- Groum Stonebeard <Journeyman Blacksmith>
UPDATE `creature_template` SET `subname`='Journeyman Blacksmith', `npcflag`=81, `trainer_type`=2 WHERE `entry`=10277;

-- Rotgath Stonebeard <Expert Blacksmith>
UPDATE `creature_template` SET `subname`='Expert Blacksmith', `npcflag`=81, `trainer_type`=2, `type_flags`=134217728 WHERE `entry`=10276;

-- Thonys Pillarstone <Journeyman Enchanter>
UPDATE `creature_template` SET `subname`='Journeyman Enchanter', `npcflag`=81, `trainer_type`=2 WHERE `entry`=11065;

-- Gimble Thistlefuzz <Expert Enchanter>
UPDATE `creature_template` SET `type_flags`=134217728 WHERE `entry`=5157;

-- Jemma Quikswitch <Journeyman Engineer>
UPDATE `creature_template` SET `subname`='Journeyman Engineer', `npcflag`=81, `trainer_type`=2 WHERE `entry`=11028;

-- Trixie Quikswitch <Expert Engineer>
UPDATE `creature_template` SET `subname`='Journeyman Engineer', `npcflag`=81, `trainer_type`=2, `type_flags`=134217728 WHERE `entry`=11029;

-- Gretta Finespindle <Journeyman Leatherworker>
UPDATE `creature_template` SET `subname`='Journeyman Leatherworker', `npcflag`=81, `trainer_type`=2 WHERE `entry`=1466;

-- Uthrar Threx <Journeyman Tailor>
UPDATE `creature_template` SET `subname`='Journeyman Tailor', `npcflag`=81, `trainer_type`=2 WHERE `entry`=1703;


-- Vosur Brakthel <Journeyman Alchemist>
DELETE FROM `npc_trainer` WHERE `ID`=1246;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (1246, -300000);

-- Groum Stonebeard <Journeyman Blacksmith>
DELETE FROM `npc_trainer` WHERE `ID`=10277;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (10277, -310000);

-- Rotgath Stonebeard <Expert Blacksmith>
DELETE FROM `npc_trainer` WHERE `ID`=10276;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (10276, -310000), (10276, -310001);

-- Thonys Pillarstone <Journeyman Enchanter>
DELETE FROM `npc_trainer` WHERE `ID`=11065;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (11065, -330000);

-- Jemma Quikswitch <Journeyman Engineer>
DELETE FROM `npc_trainer` WHERE `ID`=11028;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (11028, -340000);

-- Trixie Quikswitch <Expert Engineer>
DELETE FROM `npc_trainer` WHERE `ID`=11029;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (11029, -340000), (11029, -340001);

-- Gretta Finespindle <Journeyman Leatherworker>
DELETE FROM `npc_trainer` WHERE `ID`=1466;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (1466, -380000);

-- Uthrar Threx <Journeyman Tailor>
DELETE FROM `npc_trainer` WHERE `ID`=1703;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (1703, -410000);

-- Rotgath Stonebeard <Expert Blacksmith>
DELETE FROM `gossip_menu_option` WHERE `MenuID`=2761;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`) VALUES 
(2761, 0, 3, 'Train me.', 3266, 5, 16);

-- Gimble Thistlefuzz <Expert Enchanter>
DELETE FROM `gossip_menu_option` WHERE `MenuID`=4160;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`) VALUES 
(4160, 0, 3, 'Train me.', 3266, 5, 16);

-- Trixie Quikswitch <Expert Engineer>
DELETE FROM `gossip_menu_option` WHERE `MenuID`=4147;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`) VALUES
(4147, 0, 3, 'Train me.', 3266, 5, 16);


-- Tally Berryfizz <Expert Alchemist>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4123 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 4123, 0, 7, 171, 50, 'Show menu if alchemy is 50 or higher');

-- Rotgath Stonebeard <Expert Blacksmith>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=2761 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 2761, 0, 7, 164, 50, 'Show menu if blacksmithing is 50 or higher');

-- Bengus Deepforge <Artisan Blacksmith>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=593 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 593, 0, 7, 164, 125, 'Show menu if blacksmithing is 125 or higher');

-- Gimble Thistlefuzz <Expert Enchanter>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4160 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES 
(15, 4160, 0, 7, 333, 50, 'Show menu if enchanting is 50 or higher');

-- Trixie Quikswitch <Expert Engineer>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4147 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 4147, 0, 7, 202, 50, 'Show menu if engineering is 50 or higher');

-- Springspindle Fizzlegear <Artisan Engineer>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4150 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 4150, 0, 7, 202, 125, 'Show menu if engineering is 125 or higher');

-- Fimble Finespindle <Expert Leatherworker>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4205 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES 
(15, 4205, 0, 7, 165, 50, 'Show menu if leatherworking is 50 or higher');

-- Jormund Stonebrow <Expert Tailor>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4345 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES 
(15, 4345, 0, 7, 197, 50, 'Show menu if tailoring is 50 or higher');


-- Summon Felsteed (Warlock)
DELETE FROM `creature_queststarter` WHERE `id`=5172 AND `quest`=4487;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (5172, 4487);

-- Nissa Firestone <First Aid Trainer> 
DELETE FROM `npc_trainer` WHERE `ID`=5150; 
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (5150, -350000); 

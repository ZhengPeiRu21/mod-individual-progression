-- Milla Fairancora <Journeyman Alchemist>
UPDATE `creature_template` SET `subname`='Journeyman Alchemist', `npcflag`=81, `trainer_type`=2 WHERE `entry`=11041;

-- Sylvanna Forestmoon <Expert Alchemist>
UPDATE `creature_template` SET `subname`='Expert Alchemist', `npcflag`=81, `trainer_type`=2, `type_flags`=134217728 WHERE `entry`=11042;

-- Lalina Summermoon <Journeyman Enchanter>
UPDATE `creature_template` SET `subname`='Journeyman Enchanter', `npcflag`=81, `trainer_type`=2 WHERE `entry`=11070;

-- Darianna <Journeyman Leatherworker>
UPDATE `creature_template` SET `subname`='Journeyman Leatherworker', `npcflag`=81, `trainer_type`=2 WHERE `entry`=11083;

-- Faldron <Expert Leatherworker>
UPDATE `creature_template` SET `subname`='Journeyman Leatherworker', `npcflag`=81, `trainer_type`=2, `type_flags`=134217728 WHERE `entry`=11081;

-- Telonis <Artisan Leatherworker>
UPDATE `creature_template` SET `type_flags`=134217728 WHERE `entry`=4212;

-- Trianna <Journeyman Tailor>
UPDATE `creature_template` SET `subname`='Journeyman Tailor', `npcflag`=81, `trainer_type`=2 WHERE `entry`=11050;


-- Milla Fairancora <Journeyman Alchemist>
DELETE FROM `npc_trainer` WHERE `ID`=11041;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (11041, -300000);

-- Sylvanna Forestmoon <Expert Alchemist>
DELETE FROM `npc_trainer` WHERE `ID`=11042;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (11042, -300000), (11042, -300001);

-- Lalina Summermoon <Journeyman Enchanter>
DELETE FROM `npc_trainer` WHERE `ID`=11070;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (11070, -330000);

-- Trianna <Journeyman Tailor>
DELETE FROM `npc_trainer` WHERE `ID`=11050;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (11050, -410000);

-- Darianna <Journeyman Leatherworker>
DELETE FROM `npc_trainer` WHERE `ID`=11083;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (11083, -380000);

-- Faldron <Expert Leatherworker>
DELETE FROM `npc_trainer` WHERE `ID`=11081;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (11081, -380000), (11081, -380001);

-- Sylvanna Forestmoon <Expert Alchemist>
DELETE FROM `gossip_menu_option` WHERE `MenuID`=4125;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`) VALUES 
(4125, 0, 3, 'Train me.', 3266, 5, 16);

-- Faldron <Expert Leatherworker>
DELETE FROM `gossip_menu_option` WHERE `MenuID`=4204;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`) VALUES 
(4204, 0, 3, 'Train me.', 3266, 5, 16);

-- Telonis <Artisan Leatherworker>
DELETE FROM `gossip_menu_option` WHERE `MenuID`=4241;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`) VALUES 
(4241, 0, 3, 'Train me.', 3266, 5, 16);


-- Sylvanna Forestmoon <Expert Alchemist>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4125 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 4125, 0, 7, 171, 50, 'Show menu if alchemy is 50 or higher');

-- Ainethil <Artisan Alchemist>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4131 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 4131, 0, 7, 171, 125, 'Show menu if alchemy is 125 or higher');

-- Taladan <Expert Enchanter>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4163 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES 
(15, 4163, 0, 7, 333, 50, 'Show menu if enchanting is 50 or higher');

-- Faldron <Expert Leatherworker>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4204 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 4204, 0, 7, 165, 50, 'Show menu if leatherworking is 50 or higher');

-- Telonis <Artisan Leatherworker>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4241 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 4241, 0, 7, 165, 125, 'Show menu if leatherworking is 125 or higher');

-- Me'lynn <Expert Tailor>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4349 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES 
(15, 4349, 0, 7, 197, 50, 'Show menu if tailoring is 50 or higher');


-- Dannelor <First Aid Trainer>
DELETE FROM `npc_trainer` WHERE `ID`=4211; 
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (4211, -350000); 

UPDATE `creature_template` SET `subname` = 'Journeyman Alchemist'     WHERE `entry` = 11041; -- Milla Fairancora <Journeyman Alchemist>
UPDATE `creature_template` SET `subname` = 'Expert Alchemist'         WHERE `entry` = 11042; -- Sylvanna Forestmoon <Expert Alchemist>
UPDATE `creature_template` SET `subname` = 'Journeyman Tailor'        WHERE `entry` = 11050; -- Trianna <Journeyman Tailor>
UPDATE `creature_template` SET `subname` = 'Journeyman Enchanter'     WHERE `entry` = 11070; -- Lalina Summermoon <Journeyman Enchanter>
UPDATE `creature_template` SET `subname` = 'Journeyman Leatherworker' WHERE `entry` = 11083; -- Darianna <Journeyman Leatherworker>
UPDATE `creature_template` SET `subname` = 'Journeyman Leatherworker' WHERE `entry` = 11081; -- Faldron <Expert Leatherworker>

UPDATE `creature_template` SET `npcflag` = 81, `trainer_type` = 2 WHERE `entry` IN (11041, 11042, 11050, 11070, 11081, 11083);
UPDATE `creature_template` SET `type_flags` = 134217728 WHERE `entry` IN (4212, 11042, 11081);


DELETE FROM `npc_trainer` WHERE `ID` IN (11041, 11042, 11050, 11070, 11081, 11083);
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES 
(11041, -300000), -- Milla Fairancora <Journeyman Alchemist>
(11042, -300000), -- Sylvanna Forestmoon <Expert Alchemist>
(11042, -300001), -- Sylvanna Forestmoon <Expert Alchemist>
(11050, -410000), -- Trianna <Journeyman Tailor>
(11070, -330000), -- Lalina Summermoon <Journeyman Enchanter>
(11081, -380000), -- Faldron <Expert Leatherworker>
(11081, -380001), -- Faldron <Expert Leatherworker>
(11083, -380000); -- Darianna <Journeyman Leatherworker>


DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (4125, 4204, 4241);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`) VALUES 
(4125, 0, 3, 'Train me.', 3266, 5, 16), -- Sylvanna Forestmoon <Expert Alchemist>
(4204, 0, 3, 'Train me.', 3266, 5, 16), -- Faldron <Expert Leatherworker>
(4241, 0, 3, 'Train me.', 3266, 5, 16); -- Telonis <Artisan Leatherworker>


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceEntry` = 0 AND `ConditionTypeOrReference` = 7 AND `SourceGroup` IN (4125, 4131, 4163, 4204, 4241, 4349);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 4125, 0, 7, 171, 50,  'Show menu if alchemy is 50 or higher'),         -- Sylvanna Forestmoon <Expert Alchemist>
(15, 4131, 0, 7, 171, 125, 'Show menu if alchemy is 125 or higher'),        -- Ainethil <Artisan Alchemist>
(15, 4163, 0, 7, 333, 50,  'Show menu if enchanting is 50 or higher'),      -- Taladan <Expert Enchanter>
(15, 4204, 0, 7, 165, 50,  'Show menu if leatherworking is 50 or higher'),  -- Faldron <Expert Leatherworker>
(15, 4241, 0, 7, 165, 125, 'Show menu if leatherworking is 125 or higher'), -- Telonis <Artisan Leatherworker>
(15, 4349, 0, 7, 197, 50,  'Show menu if tailoring is 50 or higher');       -- Me'lynn <Expert Tailor>


-- Dannelor <First Aid Trainer>
DELETE FROM `npc_trainer` WHERE `ID`=4211; 
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (4211, -350000); 


-- Batllemasters
DELETE FROM `creature` WHERE `id1` IN (907, 2302, 5118);
INSERT INTO `creature` (`guid`, `id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES
(600907, 907,  0, 9976.16, 2314.49, 1330.87, 0.750492, 120), -- Keras Wolfheart <Arathi Basin Battlemaster>
(602302, 2302, 0, 9976.16, 2314.49, 1330.87, 0.750492, 120), -- Aethalas <Warsong Gulch Battlemaster>
(605118, 5118, 0, 9976.16, 2314.49, 1330.87, 0.750492, 120); -- Brogun Stoneshield <Alterac Valley Battlemaster>

-- Summon Warhorse - Tome of Nobility (Paladin)
DELETE FROM `creature_queststarter` WHERE `quest` IN (1661, 4485, 4486); 
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (6171, 1661), (6179, 4485), (5149, 4486);

DELETE FROM `creature_questender` WHERE `id` = 6171 AND `quest` IN (1661, 4485, 4486);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (6171, 1661), (6171, 4485), (6171, 4486);

-- Re-enable Summon Felsteed (Warlock)
DELETE FROM `disables` WHERE `sourceType` = 1 AND `entry` IN (3631, 4487, 4488, 4489, 4490);

DELETE FROM `creature_queststarter` WHERE `quest` IN (3631, 4487, 4488, 4489, 4490); 
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (3326, 3631), (5172, 4487), (461, 4488), (4563, 4489), (6251, 4490);

DELETE FROM `creature_questender` WHERE `id` = 6251 AND `quest` IN (3631, 4487, 4488, 4489, 4490);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (6251, 3631), (6251, 4487), (6251, 4488), (6251, 4489), (6251, 4490);

-- Warlock Dreadsteed Quest Line
UPDATE `quest_template` SET `RequiredItemCount1` = 10, `LogDescription` = "Bring 10 Elixirs of Shadow Power to Gorzeeki Wildeyes in the Burning Steppes." WHERE `ID` = 7626; -- Bell of Dethmoora
UPDATE `quest_template` SET `RequiredItemCount1` = 35, `LogDescription` = "Bring 35 Black Dragonscales to Gorzeeki Wildeyes in the Burning Steppes." WHERE `ID` = 7628; -- Doomsday Candle
UPDATE `quest_template` SET `RequiredItemCount1` = 3,  `LogDescription` = "Bring 3 Arcanite Bars to Gorzeeki in the Burning Steppes." WHERE `ID` = 7630; -- Arcanite

-- Remove incorrect mail about riding which doesn't match Vanilla levels
DELETE FROM `mail_level_reward` WHERE `level` <= 60;

-- Move letter about cold weather flying to level 71 instead of 70, as in Wotlk classic
UPDATE `mail_level_reward` SET `level` = 71 WHERE `mailTemplateId` IN (285, 284);

-- Riding Skills
UPDATE npc_trainer SET ReqLevel = 40        WHERE SpellID = 33388; -- Apprentice Riding
UPDATE npc_trainer SET MoneyCost = 800000   WHERE SpellID = 33388;
UPDATE npc_trainer SET ReqLevel = 60        WHERE SpellID = 33391; -- Journeyman Riding
UPDATE npc_trainer SET MoneyCost = 10000000 WHERE SpellID = 33391;
UPDATE npc_trainer SET ReqLevel = 70        WHERE SpellID = 34090; -- Expert Riding
UPDATE npc_trainer SET MoneyCost = 6000000  WHERE SpellID = 34090;

DELETE FROM `npc_trainer` WHERE `SpellID` = 13819; -- Summon Warhorse
DELETE FROM `npc_trainer` WHERE `SpellID` = 13820; -- Summon Warhorse
DELETE FROM `npc_trainer` WHERE `SpellID` = 23214; -- Summon Charger (alliance)
DELETE FROM `npc_trainer` WHERE `SpellID` = 34767; -- Summon Charger (horde)
DELETE FROM `npc_trainer` WHERE `SpellID` = 23161; -- Dreadsteed
DELETE FROM `npc_trainer` WHERE `SpellID` = 1710;  -- Summon Felsteed

UPDATE npc_trainer SET ReqLevel = 40 WHERE SpellID = 34768; -- Summon Warhorse
UPDATE npc_trainer SET ReqLevel = 40 WHERE SpellID = 1710;  -- Summon Felsteed
UPDATE npc_trainer SET ReqLevel = 68 WHERE SpellID = 33950; -- Flight Form


-- Hide pre 1.6 epic mounts ater BWL is unlocked
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 23 AND `SourceGroup` IN (384, 1261, 3362, 3685, 4730, 7952, 7955);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(23, 384,  12353, 0, 0, 8, 0, 66002, 0, 0, 1, 0, 0, '', 'Katie Hunter will not sell White Stallion Bridle after the player has completed PROGRESSION_ONYXIA'),
(23, 384,  12354, 0, 0, 8, 0, 66002, 0, 0, 1, 0, 0, '', 'Katie Hunter will not sell Palomino Bridle after the player has completed PROGRESSION_ONYXIA'),
(23, 1261, 13328, 0, 0, 8, 0, 66002, 0, 0, 1, 0, 0, '', 'Veron Emberstill will not sell Black Ram after the player has completed PROGRESSION_ONYXIA'),
(23, 1261, 13329, 0, 0, 8, 0, 66002, 0, 0, 1, 0, 0, '', 'Veron Emberstill will not sell Frost Ram after the player has completed PROGRESSION_ONYXIA'),
(23, 3362, 12330, 0, 0, 8, 0, 66002, 0, 0, 1, 0, 0, '', 'Ogunaro Wolfrunner will not sell Horn of the Red Wolf after the player has completed PROGRESSION_ONYXIA'),
(23, 3362, 12351, 0, 0, 8, 0, 66002, 0, 0, 1, 0, 0, '', 'Ogunaro Wolfrunner will not sell Horn of the Arctic Wolf after the player has completed PROGRESSION_ONYXIA'),
(23, 3685, 15292, 0, 0, 8, 0, 66002, 0, 0, 1, 0, 0, '', 'Harb Clawfoot will not sell Green Kodo after the player has completed PROGRESSION_ONYXIA'),
(23, 3685, 15293, 0, 0, 8, 0, 66002, 0, 0, 1, 0, 0, '', 'Harb Clawfoot will not sell Teal Kodo after the player has completed PROGRESSION_ONYXIA'),
(23, 4730, 12302, 0, 0, 8, 0, 66002, 0, 0, 1, 0, 0, '', 'Lelanai will not sell Reins of the Ancient Frostsaber after the player has completed PROGRESSION_ONYXIA'),
(23, 4730, 12303, 0, 0, 8, 0, 66002, 0, 0, 1, 0, 0, '', 'Lelanai will not sell Reins of the Nightsaber after the player has completed PROGRESSION_ONYXIA'),
(23, 7952, 8586,  0, 0, 8, 0, 66002, 0, 0, 1, 0, 0, '', 'Zjolnir will not sell Whistle of the Mottled Red Raptor after the player has completed PROGRESSION_ONYXIA'),
(23, 7952, 13317, 0, 0, 8, 0, 66002, 0, 0, 1, 0, 0, '', 'Zjolnir will not sell Whistle of the Ivory Raptor after the player has completed PROGRESSION_ONYXIA'),
(23, 7955, 13326, 0, 0, 8, 0, 66002, 0, 0, 1, 0, 0, '', 'Milli Featherwhistle will not sell White Mechanostrider Mod A after the player has completed PROGRESSION_ONYXIA'),
(23, 7955, 13327, 0, 0, 8, 0, 66002, 0, 0, 1, 0, 0, '', 'Milli Featherwhistle will not sell Icy Blue Mechanostrider Mod A after the player has completed PROGRESSION_ONYXIA');

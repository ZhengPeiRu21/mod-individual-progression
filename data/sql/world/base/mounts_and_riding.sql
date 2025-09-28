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


-- Alliance 60% speed mounts
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Black Stallion'                   WHERE `entry` = 2411;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Pinto'                            WHERE `entry` = 2414;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Chestnut Mare'                    WHERE `entry` = 5655;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Brown Horse'                      WHERE `entry` = 5656;

UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Gray Ram'                         WHERE `entry` = 5864;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Brown Ram'                        WHERE `entry` = 5872;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'White Ram'                        WHERE `entry` = 5873;

UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Red Mechanostrider'               WHERE `entry` = 8563; 
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Blue Mechanostrider'              WHERE `entry` = 8595; 
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Green Mechanostrider'             WHERE `entry` = 13321;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Unpainted Mechanostrider'         WHERE `entry` = 13322;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Purple Mechanostrider'            WHERE `entry` = 13323;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Red and Blue Mechanostrider'      WHERE `entry` = 13324;

UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Striped Nightsaber'               WHERE `entry` = 8629;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Striped Frostsaber'               WHERE `entry` = 8631;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Spotted Frostsaber'               WHERE `entry` = 8632;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Striped Dawnsaber'                WHERE `entry` = 47100;

-- Horde 60% speed mounts
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Timber Wolf'                      WHERE `entry` = 1132;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Dire Wolf'                        WHERE `entry` = 5665;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Brown Wolf'                       WHERE `entry` = 5668;

UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Emerald Raptor'                   WHERE `entry` = 8588;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Turquoise Raptor'                 WHERE `entry` = 8591;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Violet Raptor'                    WHERE `entry` = 8592;

UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Red Skeletal Horse'               WHERE `entry` = 13331;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Blue Skeletal Horse'              WHERE `entry` = 13332;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Brown Skeletal Horse'             WHERE `entry` = 13333;

UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Gray Kodo'                        WHERE `entry` = 15277;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Brown Kodo'                       WHERE `entry` = 15290;

-- Alliance 100% speed mounts
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Frostsaber'                       WHERE `entry` = 12302;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Nightsaber'                       WHERE `entry` = 12303;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Swift Frostsaber'                 WHERE `entry` = 18766;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Swift Mistsaber'                  WHERE `entry` = 18767;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Swift Dawnsaber'                  WHERE `entry` = 18768;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Swift Stormsaber'                 WHERE `entry` = 18902;

UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'White Mechanostrider Mod A'       WHERE `entry` = 13326; 
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Icy Blue Mechanostrider Mod A'    WHERE `entry` = 13327;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Swift Green Mechanostrider'       WHERE `entry` = 18772;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Swift White Mechanostrider'       WHERE `entry` = 18773;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Swift Yellow Mechanostrider'      WHERE `entry` = 18774;

UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'White Stallion'                   WHERE `entry` = 12353;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Palomino'                         WHERE `entry` = 12354;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Swift Palomino'                   WHERE `entry` = 18776;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Swift Brown Steed'                WHERE `entry` = 18777;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Swift White Steed'                WHERE `entry` = 18778;

UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Black Ram'                        WHERE `entry` = 13328;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Frost Ram'                        WHERE `entry` = 13329;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Swift White Ram'                  WHERE `entry` = 18785;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Swift Brown Ram'                  WHERE `entry` = 18786;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Swift Gray Ram'                   WHERE `entry` = 18787;

-- Horde 100% speed mounts
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Mottled Red Raptor'               WHERE `entry` = 8586;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Ivory Raptor'                     WHERE `entry` = 13317;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Swift Blue Raptor'                WHERE `entry` = 18788;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Swift Olive Raptor'               WHERE `entry` = 18789;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Swift Orange Raptor'              WHERE `entry` = 18790;

UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Green Skeletal Warhorse'          WHERE `entry` = 13334;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Purple Skeletal Warhorse'         WHERE `entry` = 18791;

UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Green Kodo'                       WHERE `entry` = 15292;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Teal Kodo'                        WHERE `entry` = 15293;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Great White Kodo'                 WHERE `entry` = 18793;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Great Brown Kodo'                 WHERE `entry` = 18794;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Great Gray Kodo'                  WHERE `entry` = 18795;

UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Red Wolf'                         WHERE `entry` = 12330;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Arctic Wolf'                      WHERE `entry` = 12351;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Swift Brown Wolf'                 WHERE `entry` = 18796;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Swift Timber Wolf'                WHERE `entry` = 18797;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Swift Gray Wolf'                  WHERE `entry` = 18798;

-- special mounts
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 10000000, `RequiredLevel` = 60, `Name` = 'Winterspring Frostsaber'          WHERE `entry` = 13086;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 10000000, `RequiredLevel` = 60, `Name` = 'Deathcharger'                     WHERE `entry` = 13335;

UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 60, `Name` = 'Black War Steed'                  WHERE `entry` = 18241;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 60, `Name` = 'Black War Tiger'                  WHERE `entry` = 18242;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 60, `Name` = 'Black Battlestrider'              WHERE `entry` = 18243;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 60, `Name` = 'Black War Ram'                    WHERE `entry` = 18244;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 60, `Name` = 'Black War Wolf'                   WHERE `entry` = 18245;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 60, `Name` = 'Black War Raptor'                 WHERE `entry` = 18246;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 60, `Name` = 'Black War Kodo'                   WHERE `entry` = 18247;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 60, `Name` = 'Red Skeletal Warhorse'            WHERE `entry` = 18248;

UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 100000,   `RequiredLevel` = 60, `Name` = 'Frostwolf Howler'                 WHERE `entry` = 19029;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 100000,   `RequiredLevel` = 60, `Name` = 'Stormpike Battle Charger'         WHERE `entry` = 19030;

UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 10000000, `RequiredLevel` = 60, `Name` = 'Swift Razzashi Raptor'            WHERE `entry` = 19872;
UPDATE `item_template` SET `Quality` = 4, `BuyPrice` = 10000000, `RequiredLevel` = 60, `Name` = 'Swift Zulian Tiger'               WHERE `entry` = 19902;

UPDATE `item_template` SET `Quality` = 5, `BuyPrice` = 10000000, `RequiredLevel` = 60, `Name` = 'Black Qiraji Resonating Crystal'  WHERE `entry` = 21176;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Blue Qiraji Resonating Crystal'   WHERE `entry` = 21218;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Red Qiraji Resonating Crystal'    WHERE `entry` = 21321;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Green Qiraji Resonating Crystal'  WHERE `entry` = 21323;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 1000000,  `RequiredLevel` = 60, `Name` = 'Yellow Qiraji Resonating Crystal' WHERE `entry` = 21324;


-- unavailable mounts
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Winter Wolf'                      WHERE `entry` = 1133;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Gray Wolf'                        WHERE `entry` = 1134;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Red Wolf'                         WHERE `entry` = 5663;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Skeletal Mount'                   WHERE `entry` = 8583;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Ivory Raptor'                     WHERE `entry` = 8589;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Obsidian Raptor'                  WHERE `entry` = 8590;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Spotted Nightsaber'               WHERE `entry` = 8628;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Bengal Tiger'                     WHERE `entry` = 8630;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Leopard'                          WHERE `entry` = 8633;

UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Primal Leopard'                   WHERE `entry` = 12325;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Tawny Sabercat'                   WHERE `entry` = 12326;
UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Golden Sabercat'                  WHERE `entry` = 12327;

UPDATE `item_template` SET `Quality` = 3, `BuyPrice` = 100000,   `RequiredLevel` = 40, `Name` = 'Fluorescent Green Mechanostrider' WHERE `entry` = 13325;
UPDATE `item_template` SET `Quality` = 5, `BuyPrice` = 10000000, `RequiredLevel` = 60, `Name` = 'Foror\'s Fabled Steed'            WHERE `entry` = 20221;


UPDATE `item_template` SET `bonding` = 1, `SellPrice` = 0 WHERE `entry` IN 
(1132, 1133, 1134, 2411, 2414, 5655, 5656, 5663, 5665, 5668, 5864, 5872, 5873, 8563, 8583, 8586, 8588, 8589, 8590, 8591, 8592, 8595, 8628, 8629, 8630, 8631, 8632, 8633, 
12302, 12303, 12325, 12326, 12327, 12330, 12351, 12353, 12354, 13317, 13321, 13322, 13323, 13324, 13325, 13326, 13327, 13328, 13329, 13331, 13332, 13333, 13334, 15277, 15290, 15292, 15293, 
18766, 18767, 18768, 18772, 18773, 18774, 18776, 18777, 18778, 18785, 18786, 18787, 18788, 18789, 18790, 18791, 18793, 18794, 18795, 18796, 18797, 18798, 18902, 20221, 47100);

-- https://www.azerothcore.org/wiki/item_template#quality
-- https://www.azerothcore.org/wiki/item_template#bonding

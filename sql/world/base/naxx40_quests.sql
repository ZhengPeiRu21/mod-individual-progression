-- Enable T3 turn in Quests
-- Enable exalted attunement quest (9378)
DELETE FROM `disables` WHERE `sourceType` = 1 AND `entry` IN (
9232, 9033, 9230, 9229, 9120, 9082, 9101, 9102, 9038, 9034, 9099,
9237, 9057, 9042, 9037, 9039, 9041, 9036, 9233, 9089, 9118, 9098,
9081, 9040, 9100, 9115, 9080, 9048, 9070, 9110, 9109, 9046, 9105,
9096, 9112, 9114, 9111, 9117, 9097, 9079, 9116, 9077, 9106, 9113,
9047, 9103, 9044, 9083, 9087, 9242, 9045, 9049, 9088, 9060, 9084,
9236, 9078, 9071, 9043, 9090, 9107, 9061, 9240, 9244, 9073, 9074,
9241, 9054, 9068, 9075, 9069, 9095, 9050, 9234, 9072, 9059, 9058,
9245, 9093, 9056, 9243, 9091, 9104, 9108, 9246, 9086, 9092, 9055,
9235, 9238, 9239, 9378);

REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES
-- (16115, 9033), -- already exists
(16112, 9034),
(16112, 9036),
(16112, 9037),
(16112, 9038),
(16112, 9039),
(16112, 9040),
(16112, 9041),
(16112, 9042),
(16115, 9043),
(16115, 9044),
-- (16115, 9045), -- already exists
(16115, 9046),
(16115, 9047),
(16115, 9048),
(16115, 9049),
(16115, 9050),
(16132, 9054),
(16132, 9055),
(16132, 9056),
(16132, 9057),
(16132, 9058),
(16132, 9059),
(16132, 9060),
(16132, 9061),
(16134, 9068),
(16134, 9069),
(16134, 9070),
(16134, 9071),
(16134, 9072),
(16134, 9073),
(16134, 9074),
(16134, 9075),
(16131, 9077),
(16131, 9078),
(16131, 9079),
(16131, 9080),
(16131, 9081),
(16131, 9082),
(16131, 9083),
(16131, 9084),
(16135, 9086),
(16135, 9087),
(16135, 9088),
(16135, 9089),
(16135, 9090),
(16135, 9091),
(16135, 9092),
(16135, 9093),
(16116, 9095),
(16116, 9096),
(16116, 9097),
(16116, 9098),
(16116, 9099),
(16116, 9100),
(16116, 9101),
(16116, 9102),
(16133, 9103),
(16133, 9104),
(16133, 9105),
(16133, 9106),
(16133, 9107),
(16133, 9108),
(16133, 9109),
(16133, 9110),
(16113, 9111),
(16113, 9112),
(16113, 9113),
(16113, 9114),
(16113, 9115),
(16113, 9116),
(16113, 9117),
(16113, 9118),
(16112, 9229),
(16112, 9230),
(16376, 9232);
-- (16376, 9234), -- already exists
-- (16376, 9235), -- already exists
-- (16376, 9236), -- already exists
-- (16376, 9237), -- already exists
-- (16376, 9238), -- already exists
-- (16376, 9239), -- already exists
-- (16376, 9240), -- already exists
-- (16376, 9241), -- already exists
-- (16376, 9242), -- already exists
-- (16376, 9243), -- already exists
-- (16376, 9244), -- already exists
-- (16376, 9245), -- already exists
-- (16376, 9246); -- already exists

REPLACE INTO `creature_questender` (`id`, `quest`) VALUES
(16115, 9033), -- already exists
(16112, 9034),
(16112, 9036),
(16112, 9037),
(16112, 9038),
(16112, 9039),
(16112, 9040),
(16112, 9041),
(16112, 9042),
(16115, 9043),
(16115, 9044),
-- (16115, 9045), -- already exists
(16115, 9046),
(16115, 9047),
(16115, 9048),
(16115, 9049),
(16115, 9050),
(16132, 9054),
(16132, 9055),
(16132, 9056),
(16132, 9057),
(16132, 9058),
(16132, 9059),
(16132, 9060),
(16132, 9061),
(16134, 9068),
(16134, 9069),
(16134, 9070),
(16134, 9071),
(16134, 9072),
(16134, 9073),
(16134, 9074),
(16134, 9075),
(16131, 9077),
(16131, 9078),
(16131, 9079),
(16131, 9080),
(16131, 9081),
(16131, 9082),
(16131, 9083),
(16131, 9084),
(16135, 9086),
(16135, 9087),
(16135, 9088),
(16135, 9089),
(16135, 9090),
(16135, 9091),
(16135, 9092),
(16135, 9093),
(16116, 9095),
(16116, 9096),
(16116, 9097),
(16116, 9098),
(16116, 9099),
(16116, 9100),
(16116, 9101),
(16116, 9102),
(16133, 9103),
(16133, 9104),
(16133, 9105),
(16133, 9106),
(16133, 9107),
(16133, 9108),
(16133, 9109),
(16133, 9110),
(16113, 9111),
(16113, 9112),
(16113, 9113),
(16113, 9114),
(16113, 9115),
(16113, 9116),
(16113, 9117),
(16113, 9118),
(16113, 9120),
(16112, 9229),
(16112, 9230),
-- (16376, 9232), -- already exists
(16376, 9233);
-- (16376, 9234), -- already exists
-- (16376, 9235), -- already exists
-- (16376, 9236), -- already exists
-- (16376, 9237), -- already exists
-- (16376, 9238), -- already exists
-- (16376, 9239), -- already exists
-- (16376, 9240), -- already exists
-- (16376, 9241), -- already exists
-- (16376, 9242), -- already exists
-- (16376, 9243), -- already exists
-- (16376, 9244), -- already exists
-- (16376, 9245), -- already exists
-- (16376, 9246); -- already exists

-- echoes of war requires 9121
UPDATE `quest_template_addon` SET `PrevQuestId` = 9121 WHERE `ID` = 9033;

-- quest "The only song i know..." requires quest "Echoes of war" completed
UPDATE `quest_template_addon` SET `PrevQuestId` = 9033 WHERE `ID` = 9232;

-- The remaining craft quests require quest "Omarion's Handbook" completed
UPDATE `quest_template_addon` SET `PrevQuestId` = 9233 WHERE `ID` IN (9234, 9235, 9236, 9237, 9238, 9239, 9240, 9241, 9242, 9243, 9244, 9245, 9246);

-- warrior
SET @NPC:= 16112;
SET @CLASS:= 1;
DELETE FROM `creature_queststarter` WHERE (`quest` IN (9034, 9036, 9037, 9038, 9039, 9040, 9041, 9042)) AND (`id` = @NPC);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@NPC, 9034), (@NPC, 9036), (@NPC, 9037), (@NPC, 9038), (@NPC, 9039), (@NPC, 9040), (@NPC, 9041), (@NPC, 9042);
DELETE FROM `creature_questender` WHERE (`quest` IN (9034, 9036, 9037, 9038, 9039, 9040, 9041, 9042)) AND (`id` = @NPC);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (@NPC, 9034), (@NPC, 9036), (@NPC, 9037), (@NPC, 9038), (@NPC, 9039), (@NPC, 9040), (@NPC, 9041), (@NPC, 9042);
UPDATE `quest_template_addon` SET `AllowableClasses` = @CLASS WHERE (`ID` IN (9034, 9036, 9037, 9038, 9039, 9040, 9041, 9042));

-- paladin
SET @NPC:= 16115;
SET @CLASS:= 2;
DELETE FROM `creature_queststarter` WHERE (`quest` IN (9043, 9044, 9045, 9046, 9047, 9048, 9049, 9050)) AND (`id` = @NPC);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@NPC, 9043), (@NPC, 9044), (@NPC, 9045), (@NPC, 9046), (@NPC, 9047), (@NPC, 9048), (@NPC, 9049), (@NPC, 9050);
DELETE FROM `creature_questender` WHERE (`quest` IN (9043, 9044, 9045, 9046, 9047, 9048, 9049, 9050)) AND (`id` = @NPC);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (@NPC, 9043), (@NPC, 9044), (@NPC, 9045), (@NPC, 9046), (@NPC, 9047), (@NPC, 9048), (@NPC, 9049), (@NPC, 9050);
UPDATE `quest_template_addon` SET `AllowableClasses` = @CLASS WHERE (`ID` IN (9043, 9044, 9045, 9046, 9047, 9048, 9049, 9050));

-- hunter
SET @NPC:= 16132;
SET @CLASS:= 4;
DELETE FROM `creature_queststarter` WHERE (`quest` IN (9054, 9055, 9056, 9057, 9058, 9059, 9060, 9061)) AND (`id` = @NPC);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@NPC, 9054), (@NPC, 9055), (@NPC, 9056), (@NPC, 9057), (@NPC, 9058), (@NPC, 9059), (@NPC, 9060), (@NPC, 9061);
DELETE FROM `creature_questender` WHERE (`quest` IN (9054, 9055, 9056, 9057, 9058, 9059, 9060, 9061)) AND (`id` = @NPC);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (@NPC, 9054), (@NPC, 9055), (@NPC, 9056), (@NPC, 9057), (@NPC, 9058), (@NPC, 9059), (@NPC, 9060), (@NPC, 9061);
UPDATE `quest_template_addon` SET `AllowableClasses` = @CLASS WHERE (`ID` IN (9054, 9055, 9056, 9057, 9058, 9059, 9060, 9061));

-- shaman
SET @NPC:= 16134;
SET @CLASS:= 64;
DELETE FROM `creature_queststarter` WHERE (`quest` IN (9068, 9069, 9070, 9071, 9072, 9073, 9074, 9075)) AND (`id` = @NPC);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@NPC, 9068), (@NPC, 9069), (@NPC, 9070), (@NPC, 9071), (@NPC, 9072), (@NPC, 9073), (@NPC, 9074), (@NPC, 9075);
DELETE FROM `creature_questender` WHERE (`quest` IN (9068, 9069, 9070, 9071, 9072, 9073, 9074, 9075)) AND (`id` = @NPC);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (@NPC, 9068), (@NPC, 9069), (@NPC, 9070), (@NPC, 9071), (@NPC, 9072), (@NPC, 9073), (@NPC, 9074), (@NPC, 9075);
UPDATE `quest_template_addon` SET `AllowableClasses` = @CLASS WHERE (`ID` IN (9068, 9069, 9070, 9071, 9072, 9073, 9074, 9075));

-- rogue
SET @NPC:= 16134;
SET @CLASS:= 8;
DELETE FROM `creature_queststarter` WHERE (`quest` IN (9077, 9078, 9079, 9080, 9081, 9082, 9083, 9084)) AND (`id` = @NPC);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@NPC, 9077), (@NPC, 9078), (@NPC, 9079), (@NPC, 9080), (@NPC, 9081), (@NPC, 9082), (@NPC, 9083), (@NPC, 9084);
DELETE FROM `creature_questender` WHERE (`quest` IN (9077, 9078, 9079, 9080, 9081, 9082, 9083, 9084)) AND (`id` = @NPC);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (@NPC, 9077), (@NPC, 9078), (@NPC, 9079), (@NPC, 9080), (@NPC, 9081), (@NPC, 9082), (@NPC, 9083), (@NPC, 9084);
UPDATE `quest_template_addon` SET `AllowableClasses` = @CLASS WHERE (`ID` IN (9077, 9078, 9079, 9080, 9081, 9082, 9083, 9084));

-- druid
SET @NPC:= 16135;
SET @CLASS:= 1024;
DELETE FROM `creature_queststarter` WHERE (`quest` IN (9086, 9087, 9088, 9089, 9090, 9091, 9092, 9093)) AND (`id` = @NPC);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@NPC, 9086), (@NPC, 9087), (@NPC, 9088), (@NPC, 9089), (@NPC, 9090), (@NPC, 9091), (@NPC, 9092), (@NPC, 9093);
DELETE FROM `creature_questender` WHERE (`quest` IN (9086, 9087, 9088, 9089, 9090, 9091, 9092, 9093)) AND (`id` = @NPC);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (@NPC, 9086), (@NPC, 9087), (@NPC, 9088), (@NPC, 9089), (@NPC, 9090), (@NPC, 9091), (@NPC, 9092), (@NPC, 9093);
UPDATE `quest_template_addon` SET `AllowableClasses` = @CLASS WHERE (`ID` IN (9086, 9087, 9088, 9089, 9090, 9091, 9092, 9093));

-- mage
SET @NPC:= 16116;
SET @CLASS:= 128;
DELETE FROM `creature_queststarter` WHERE (`quest` IN (9095, 9096, 9097, 9098, 9099, 9100, 9101, 9102)) AND (`id` = @NPC);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@NPC, 9095), (@NPC, 9096), (@NPC, 9097), (@NPC, 9098), (@NPC, 9099), (@NPC, 9100), (@NPC, 9101), (@NPC, 9102);
DELETE FROM `creature_questender` WHERE (`quest` IN (9095, 9096, 9097, 9098, 9099, 9100, 9101, 9102)) AND (`id` = @NPC);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (@NPC, 9095), (@NPC, 9096), (@NPC, 9097), (@NPC, 9098), (@NPC, 9099), (@NPC, 9100), (@NPC, 9101), (@NPC, 9102);
UPDATE `quest_template_addon` SET `AllowableClasses` = @CLASS WHERE (`ID` IN (9095, 9096, 9097, 9098, 9099, 9100, 9101, 9102));

-- warlock
SET @NPC:= 16133;
SET @CLASS:= 256;
DELETE FROM `creature_queststarter` WHERE (`quest` IN (9103, 9104, 9105, 9106, 9107, 9108, 9109, 9110)) AND (`id` = @NPC);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@NPC, 9103), (@NPC, 9104), (@NPC, 9105), (@NPC, 9106), (@NPC, 9107), (@NPC, 9108), (@NPC, 9109), (@NPC, 9110);
DELETE FROM `creature_questender` WHERE (`quest` IN (9103, 9104, 9105, 9106, 9107, 9108, 9109, 9110)) AND (`id` = @NPC);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (@NPC, 9103), (@NPC, 9104), (@NPC, 9105), (@NPC, 9106), (@NPC, 9107), (@NPC, 9108), (@NPC, 9109), (@NPC, 9110);
UPDATE `quest_template_addon` SET `AllowableClasses` = @CLASS WHERE (`ID` IN (9103, 9104, 9105, 9106, 9107, 9108, 9109, 9110));

-- priest
SET @NPC:= 16113;
SET @CLASS:= 16;
DELETE FROM `creature_queststarter` WHERE (`quest` IN (9111, 9112, 9113, 9114, 9115, 9116, 9117, 9118)) AND (`id` = @NPC);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@NPC, 9111), (@NPC, 9112), (@NPC, 9113), (@NPC, 9114), (@NPC, 9115), (@NPC, 9116), (@NPC, 9117), (@NPC, 9118);
DELETE FROM `creature_questender` WHERE (`quest` IN (9111, 9112, 9113, 9114, 9115, 9116, 9117, 9118)) AND (`id` = @NPC);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (@NPC, 9111), (@NPC, 9112), (@NPC, 9113), (@NPC, 9114), (@NPC, 9115), (@NPC, 9116), (@NPC, 9117), (@NPC, 9118);
UPDATE `quest_template_addon` SET `AllowableClasses` = @CLASS WHERE (`ID` IN (9111, 9112, 9113, 9114, 9115, 9116, 9117, 9118));

-- Add queststarter/ender
-- Phylactery  Quest The Fall of Kel'Thuzad
DELETE FROM `creature_questender` WHERE (`quest` = 9120);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (16113, 9120);
-- The Fate of Ramaladni
-- Ramaladni's Icy Grasp
DELETE FROM `creature_queststarter` WHERE (`quest` IN (9229, 9230));
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (16112, 9229), (16112, 9230);
DELETE FROM `creature_questender` WHERE (`quest` IN (9229, 9230));
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (16112, 9229), (16112, 9230);
-- Omarion's Handbook
DELETE FROM `creature_questender` WHERE (`quest` = 9233);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (16376, 9233);

-- Frost Resistance quests from Craftsman Wilhelm
-- Echoes of War 9033
-- Omarion's Handbook quest 9233
SET @NPC:= 16376;
UPDATE `quest_template_addon` SET `PrevQuestID` = 9033 WHERE `ID` = 9232;
UPDATE `quest_template_addon` SET `PrevQuestID` = 9233 WHERE (`ID` IN (9237, 9239, 9240, 9238, 9235, 9236, 9234, 9244, 9246, 9245, 9241, 9242, 9243));
DELETE FROM `creature_queststarter` WHERE (`quest` IN (9237, 9239, 9240, 9238, 9235, 9236, 9234, 9244, 9246, 9245, 9241, 9242, 9243, 9232));
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (@NPC, 9237), (@NPC, 9239), (@NPC, 9240), (@NPC, 9238), (@NPC, 9235), (@NPC, 9236), (@NPC, 9234), (@NPC, 9244), (@NPC, 9246), (@NPC, 9245), (@NPC, 9241), (@NPC, 9242), (@NPC, 9243), (@NPC, 9232);
DELETE FROM `creature_questender` WHERE (`quest` IN (9237, 9239, 9240, 9238, 9235, 9236, 9234, 9244, 9246, 9245, 9241, 9242, 9243, 9232));
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (@NPC, 9237), (@NPC, 9239), (@NPC, 9240), (@NPC, 9238), (@NPC, 9235), (@NPC, 9236), (@NPC, 9234), (@NPC, 9244), (@NPC, 9246), (@NPC, 9245), (@NPC, 9241), (@NPC, 9242), (@NPC, 9243), (@NPC, 9232);
DELETE FROM `creature_questitem` WHERE `ItemId` = 22708;
INSERT INTO `creature_questitem` (`CreatureEntry`, `Idx`, `ItemId`, `VerifiedBuild`) VALUES
(351007, 0, 22708, 0),
(351008, 0, 22708, 0),
(351010, 0, 22708, 0),
(351011, 0, 22708, 0),
(351012, 0, 22708, 0),
(351014, 0, 22708, 0),
(351015, 0, 22708, 0),
(351016, 0, 22708, 0),
(351017, 0, 22708, 0),
(351021, 0, 22708, 0),
(351022, 0, 22708, 0),
(351023, 0, 22708, 0),
(351024, 0, 22708, 0),
(351025, 0, 22708, 0),
(351027, 0, 22708, 0),
(351041, 0, 22708, 0),
(351048, 0, 22708, 0),
(351053, 0, 22708, 0),
(351054, 0, 22708, 0),
(351055, 0, 22708, 0),
(351056, 0, 22708, 0),
(351057, 0, 22708, 0),
(351058, 0, 22708, 0),
(351059, 0, 22708, 0),
(351060, 0, 22708, 0),
(351061, 0, 22708, 0),
(351062, 0, 22708, 0),
(351063, 0, 22708, 0),
(351064, 0, 22708, 0),
(351065, 0, 22708, 0),
(351070, 0, 22708, 0),
(351077, 0, 22708, 0),
(351078, 0, 22708, 0);

UPDATE `quest_template` SET `RequiredNpcOrGo1` = 351048, `RequiredNpcOrGo2` = 351012, `RequiredNpcOrGo3` = 351024, `RequiredNpcOrGo4` = 351059 WHERE `ID` = 9033;

-- We are going to re-use the deprecated Naxxramas attunement flag quest but need to change some values
UPDATE `quest_template` SET `RequiredFactionId1` = 0, `RequiredFactionValue1` = 0, `RewardFactionID1` = 0, `RewardFactionValue1` = 0, `QuestSortID` = 0 WHERE `ID` = 9378;

-- Update Argent Dawn reputation requirements of frost resistance quests from Craftsman Wilhelm.
-- Rep requirements are part of quest requirement. The only requirement to pickup is Omarion's book hand in
UPDATE `quest_template_addon` SET `RequiredMinRepFaction` = 0, `RequiredMinRepValue` = 0 WHERE `ID` IN (9237, 9239, 9240, 9238, 9235, 9236, 9234, 9244, 9246, 9245, 9241, 9242, 9243);

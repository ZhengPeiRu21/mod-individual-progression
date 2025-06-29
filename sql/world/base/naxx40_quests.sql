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
SET @NPC:= 16131;
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


-- Dreadnaught Breastplate
UPDATE `quest_request_items` SET `CompletionText` = 'Naxxramas holds ancient evils, $N.' WHERE `ID` = 9034;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Let them know fear once more, $C. Let them feel no mercy.' WHERE `ID` = 9034;
-- Dreadnaught Legplates
UPDATE `quest_request_items` SET `CompletionText` = 'Remember those that fell before you, $N.' WHERE `ID` = 9036;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Crush them beneath your feet.' WHERE `ID` = 9036;
-- Dreadnaught Helmet
UPDATE `quest_request_items` SET `CompletionText` = 'The head is the most sensitive part of most bodies.' WHERE `ID` = 9037;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Remember, you\'re not really dead if your brain is still in your head. Keep this thing on at all times...' WHERE `ID` = 9037;
-- Dreadnaught Pauldrons
UPDATE `quest_request_items` SET `CompletionText` = 'The secret is in the banding.' WHERE `ID` = 9038;
UPDATE `quest_offer_reward`  SET `RewardText` = 'I\'ve always thought that the pauldrons are the most pronounced pieces of a suit of armor. I\'m sure you agree.' WHERE `ID` = 9038;
-- Dreadnaught Sabatons
UPDATE `quest_request_items` SET `CompletionText` = 'Never underestimate a good pair of boots. Especially when they\'re made by Korfax!' WHERE `ID` = 9039;
UPDATE `quest_offer_reward`  SET `RewardText` = 'In the last war, I watched Mograine crack open the fetid skulls of the living dead with these very boots.' WHERE `ID` = 9039;
-- Dreadnaught Gauntlets
UPDATE `quest_request_items` SET `CompletionText` = 'These gauntlets are made to grip a fine weapon.' WHERE `ID` = 9040;
UPDATE `quest_offer_reward`  SET `RewardText` = 'May your grip tighten around the neck of Kel\'Thuzad.$B$B<Korfax makes a wrenching motion with his hands.>' WHERE `ID` = 9040;
-- Dreadnaught Waistguard
UPDATE `quest_request_items` SET `CompletionText` = 'The belt is both a fashion statement and a powerful piece of protective gear.' WHERE `ID` = 9041;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Use it as a noose for your enemies. Also, wear it out to your local goblin disco. You will be the talk of the town!' WHERE `ID` = 9041;
-- Dreadnaught Bracers
UPDATE `quest_request_items` SET `CompletionText` = 'The wrist is the second most vulnerable spot on a body... Or is it the fourth?' WHERE `ID` = 9042;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Remember, the wrist is the fifth most vulnerable spot on a body! Protect your wrists and they\'ll definitely protect your elbows - maybe.' WHERE `ID` = 9042;

-- Redemption Tunic
UPDATE `quest_request_items` SET `CompletionText` = 'My orders come from on high, $N.' WHERE `ID` = 9043;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Wear it in good health, $C.' WHERE `ID` = 9043;
-- Redemption Legguards
UPDATE `quest_request_items` SET `CompletionText` = 'You will not find a better suited pair of legguards for a holy warrior.' WHERE `ID` = 9044;
UPDATE `quest_offer_reward`  SET `RewardText` = 'The balance between melee and magic is kept tightly in check with these legguards.' WHERE `ID` = 9044;
-- Redemption Headpiece
UPDATE `quest_request_items` SET `CompletionText` = '<Eligor looks up at you and then returns to his conversation.>' WHERE `ID` = 9045;
UPDATE `quest_offer_reward`  SET `RewardText` = '<Eligor points to his head.>$B$BKeep it covered, $C.' WHERE `ID` = 9045;
-- Redemption Spaulders
UPDATE `quest_request_items` SET `CompletionText` = 'Can you not see that we are in the middle of something, $N?' WHERE `ID` = 9046;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Any $C will tell you that the brunt of their power comes from the shoulders. The bigger the better...' WHERE `ID` = 9046;
-- Redemption Boots
UPDATE `quest_request_items` SET `CompletionText` = 'You must provide me with what I have asked if I am to begin crafting.' WHERE `ID` = 9047;
UPDATE `quest_offer_reward`  SET `RewardText` = 'These boots will protect your feet against the attacks of very short Scourge.' WHERE `ID` = 9047;
-- Redemption Handguards
UPDATE `quest_request_items` SET `CompletionText` = 'You must provide me with what I have asked if I am to begin crafting.' WHERE `ID` = 9048;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Let the Light channel through these handguards and strike down your foes!' WHERE `ID` = 9048;
-- Redemption Girdle
UPDATE `quest_request_items` SET `CompletionText` = 'You must provide me with what I have asked if I am to begin crafting.' WHERE `ID` = 9049;
UPDATE `quest_offer_reward`  SET `RewardText` = 'This girdle will serve two functions: 1) It will protect and guide you against the Scourge and 2) Make you look 20 pounds lighter.' WHERE `ID` = 9049;
-- Redemption Wristguards
UPDATE `quest_request_items` SET `CompletionText` = 'You must provide me with what I have asked if I am to begin crafting.' WHERE `ID` = 9050;
UPDATE `quest_offer_reward`  SET `RewardText` = 'These are exceptionally cost effective to construct, but be warned, they may take on rust if you splash around in them too much.' WHERE `ID` = 9050;

-- Cryptstalker Tunic
UPDATE `quest_request_items` SET `CompletionText` = 'Do you have the items I asked for, $C?' WHERE `ID` = 9054;
UPDATE `quest_offer_reward`  SET `RewardText` = 'They will fear you, $N.' WHERE `ID` = 9054;
-- Cryptstalker Legguards
UPDATE `quest_request_items` SET `CompletionText` = 'Do you have the items I asked for, $C?' WHERE `ID` = 9055;
UPDATE `quest_offer_reward`  SET `RewardText` = 'As you don more of this armor, you will notice that your persona is changing. 
                                                 You will gain a preternatural ability for killing. Perhaps, even, a lust for blood.$B$B
                                                 Let it be said that I will not be held responsible for what chaos you may invoke...' WHERE `ID` = 9055;
-- Cryptstalker Headpiece
UPDATE `quest_request_items` SET `CompletionText` = 'Do you have the items I asked for, $C?' WHERE `ID` = 9056;
UPDATE `quest_offer_reward`  SET `RewardText` = 'You are turning into a fearsome creature, $N.' WHERE `ID` = 9056;
-- Cryptstalker Spaulders
UPDATE `quest_request_items` SET `CompletionText` = 'Do you have the items I asked for, $C?' WHERE `ID` = 9057;
UPDATE `quest_offer_reward`  SET `RewardText` = 'I have taken special care in making these shoulders as large and pronounced as possible. Take my word for it; you\'re going to love them...' WHERE `ID` = 9057;
-- Cryptstalker Boots
UPDATE `quest_request_items` SET `CompletionText` = 'Do you have the items I asked for, $C?' WHERE `ID` = 9058;
UPDATE `quest_offer_reward`  SET `RewardText` = 'The boots are ready, $N! Wear them well.' WHERE `ID` = 9058;
-- Cryptstalker Handguards
UPDATE `quest_request_items` SET `CompletionText` = 'Do you have the items I asked for, $C?' WHERE `ID` = 9059;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Let the rage of the crypt fiend guide your hand, $N.' WHERE `ID` = 9059;
-- Cryptstalker Girdle
UPDATE `quest_request_items` SET `CompletionText` = 'Do you have the items I asked for, $C?' WHERE `ID` = 9060;
UPDATE `quest_offer_reward`  SET `RewardText` = 'A girdle fit for royalty! It\'s ready for you, $N.' WHERE `ID` = 9060;
-- Cryptstalker Wristguards
UPDATE `quest_request_items` SET `CompletionText` = 'Do you have the items I asked for, $C?' WHERE `ID` = 9061;
UPDATE `quest_offer_reward`  SET `RewardText` = 'The wristguards are ready. Enjoy!' WHERE `ID` = 9061;

-- Earthshatter Tunic
UPDATE `quest_request_items` SET `CompletionText` = '<Rimblat snorts at you.>' WHERE `ID` = 9068;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Easily the most powerful and awe-inspiring piece of Earthshatter. My ancestors smile down upon you for this achievement, $N.' WHERE `ID` = 9068;
-- Earthshatter Legguards
UPDATE `quest_request_items` SET `CompletionText` = 'If nothing else, the land must be saved.' WHERE `ID` = 9069;
UPDATE `quest_offer_reward`  SET `RewardText` = 'I hope that you do not share the same fate as those that came before you, $N.' WHERE `ID` = 9069;
-- Earthshatter Headpiece
UPDATE `quest_request_items` SET `CompletionText` = 'Have you brought me that which I require?' WHERE `ID` = 9070;
UPDATE `quest_offer_reward`  SET `RewardText` = 'I present you with the centerpiece of Earthshatter vestments: The Earthshatter helmet...' WHERE `ID` = 9070;
-- Earthshatter Spaulders
UPDATE `quest_request_items` SET `CompletionText` = 'Have you brought me that which I require?' WHERE `ID` = 9071;
UPDATE `quest_offer_reward`  SET `RewardText` = 'From the shoulders comes balance.' WHERE `ID` = 9071;
-- Earthshatter Boots
UPDATE `quest_request_items` SET `CompletionText` = 'Have you brought me that which I require?' WHERE `ID` = 9072;
UPDATE `quest_offer_reward`  SET `RewardText` = 'These boots are infused with the power of my ancestors! Tread wisely...' WHERE `ID` = 9072;
-- Earthshatter Handguards
UPDATE `quest_request_items` SET `CompletionText` = 'Have you brought me that which I require?' WHERE `ID` = 9073;
UPDATE `quest_offer_reward`  SET `RewardText` = 'These handguards channel the power of the elements!' WHERE `ID` = 9073;
-- Earthshatter Girdle
UPDATE `quest_request_items` SET `CompletionText` = 'Have you brought me that which I require?' WHERE `ID` = 9074;
UPDATE `quest_offer_reward`  SET `RewardText` = 'The girdle is ready, $N.' WHERE `ID` = 9074;
-- Earthshatter Wristguards
UPDATE `quest_request_items` SET `CompletionText` = 'Have you brought me that which I require?' WHERE `ID` = 9075;
UPDATE `quest_offer_reward`  SET `RewardText` = 'The wristguards are ready, $N.' WHERE `ID` = 9075;

-- Bonescythe Breastplate
UPDATE `quest_request_items` SET `CompletionText` = '<Rohan shows you his moves.>$B$BWhat is it, $N? I\'ve got to hit this mark perfectly for the competition later.' WHERE `ID` = 9077;
UPDATE `quest_offer_reward`  SET `RewardText` = 'There you go, $R. As promised, the Bonescythe breastplate. I hope the fashion authorities aren\'t around. You\'d be thrown in the slammer for wearing that out!' WHERE `ID` = 9077;
-- Bonescythe Legplates
UPDATE `quest_request_items` SET `CompletionText` = '<Rohan laughs.>$B$BI just realized the irony in all of this.' WHERE `ID` = 9078;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Be careful walking around in those things. You might cut yourself.' WHERE `ID` = 9078;
-- Bonescythe Helmet
UPDATE `quest_request_items` SET `CompletionText` = 'You\'re giving me money.$B$B<Rohan laughs.>$B$BThat still cracks me up.' WHERE `ID` = 9079;
UPDATE `quest_offer_reward`  SET `RewardText` = 'What separates my Bonescythe helmet model from Don Julio\'s is style, $N. Style...' WHERE `ID` = 9079;
-- Bonescythe Pauldrons
UPDATE `quest_request_items` SET `CompletionText` = '<Rohan eyes you suspiciously.>$B$BBeen to Tyr\'s Hand lately?' WHERE `ID` = 9080;
UPDATE `quest_offer_reward`  SET `RewardText` = '<Rohan wipes the sweat from his brow.>$B$BThese shoulders took some work! Don\'t go out and get yourself killed like a scrub, $N.' WHERE `ID` = 9080;
-- Bonescythe Sabatons
UPDATE `quest_request_items` SET `CompletionText` = 'Just bring me the materials and stop wasting my time, $C.' WHERE `ID` = 9081;
UPDATE `quest_offer_reward`  SET `RewardText` = 'They go on your feet. Say, you haven\'t been nosing around in Tyr\'s Hand again, have you?' WHERE `ID` = 9081;
-- Bonescythe Gauntlets
UPDATE `quest_request_items` SET `CompletionText` = 'How do you expect me to get anything done without the items I requested?' WHERE `ID` = 9082;
UPDATE `quest_offer_reward`  SET `RewardText` = 'These gauntlets could probably substitute as weapons if absolutely necessary. Wear them with pride!' WHERE `ID` = 9082;
-- Bonescythe Waistguard
UPDATE `quest_request_items` SET `CompletionText` = 'How do you expect me to get anything done without the items I requested?' WHERE `ID` = 9083;
UPDATE `quest_offer_reward`  SET `RewardText` = 'The belt is ready, $N. Have you ever seen such a high-quality item sold for so little?' WHERE `ID` = 9083;
-- Bonescythe Bracers
UPDATE `quest_request_items` SET `CompletionText` = 'How do you expect me to get anything done without the items I requested?' WHERE `ID` = 9084;
UPDATE `quest_offer_reward`  SET `RewardText` = 'The bracers are ready, $N.' WHERE `ID` = 9084;

-- Dreamwalker Tunic
UPDATE `quest_request_items` SET `CompletionText` = 'The material cost is high, but soon forgotten.' WHERE `ID` = 9086;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Your Dreamwalker tunic is ready, $N.' WHERE `ID` = 9086;
-- Dreamwalker Legguards
UPDATE `quest_request_items` SET `CompletionText` = 'The material cost is high, but soon forgotten.' WHERE `ID` = 9087;
UPDATE `quest_offer_reward`  SET `RewardText` = 'As promised, Dreamwalker legguards.$B$B<Rayne hands you the armor.>' WHERE `ID` = 9087;
-- Dreamwalker Headpiece
UPDATE `quest_request_items` SET `CompletionText` = 'The material cost is high, but soon forgotten.' WHERE `ID` = 9088;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Your Dreamwalker headpiece is ready, $N.' WHERE `ID` = 9088;
-- Dreamwalker Spaulders
UPDATE `quest_request_items` SET `CompletionText` = 'The material cost is high, but soon forgotten.' WHERE `ID` = 9089;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Your Dreamwalker spaulders are ready, $N.' WHERE `ID` = 9089;
-- Dreamwalker Boots
UPDATE `quest_request_items` SET `CompletionText` = 'The material cost is high, but soon forgotten.' WHERE `ID` = 9090;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Your Dreamwalker boots are ready, $N.' WHERE `ID` = 9090;
-- Dreamwalker Handguards
UPDATE `quest_request_items` SET `CompletionText` = 'The material cost is high, but soon forgotten.' WHERE `ID` = 9091;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Your Dreamwalker handguards are ready, $N.' WHERE `ID` = 9091;
-- Dreamwalker Girdle
UPDATE `quest_request_items` SET `CompletionText` = 'The material cost is high, but soon forgotten.' WHERE `ID` = 9092;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Your Dreamwalker girdle is ready, $N.' WHERE `ID` = 9092;
-- Dreamwalker Wristguards
UPDATE `quest_request_items` SET `CompletionText` = 'The material cost is high, but soon forgotten.' WHERE `ID` = 9093;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Your Dreamwalker wristguards are ready, $N.' WHERE `ID` = 9093;

-- Frostfire Robe
UPDATE `quest_request_items` SET `CompletionText` = 'With the proper materials and reagents, I am able to reform the mythical Frostfire armor.' WHERE `ID` = 9095;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Do not forget that power left unchecked is as destructive as power left unused, $C. Use discretion when donning Frostfire.' WHERE `ID` = 9095;
-- Frostfire Leggings
UPDATE `quest_request_items` SET `CompletionText` = 'With the proper materials and reagents, I am able to reform the mythical Frostfire armor.' WHERE `ID` = 9096;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Do not forget that power left unchecked is as destructive as power left unused, $C. Use discretion when donning Frostfire.' WHERE `ID` = 9096;
-- Frostfire Circlet
UPDATE `quest_request_items` SET `CompletionText` = 'With the proper materials and reagents, I am able to reform the mythical Frostfire armor.' WHERE `ID` = 9097;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Do not forget that power left unchecked is as destructive as power left unused, $C. Use discretion when donning Frostfire.' WHERE `ID` = 9097;
-- Frostfire Shoulderpads
UPDATE `quest_request_items` SET `CompletionText` = 'With the proper materials and reagents, I am able to reform the mythical Frostfire armor.' WHERE `ID` = 9098;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Do not forget that power left unchecked is as destructive as power left unused, $C. Use discretion when donning Frostfire.' WHERE `ID` = 9098;
-- Frostfire Sandals
UPDATE `quest_request_items` SET `CompletionText` = 'With the proper materials and reagents, I am able to reform the mythical Frostfire armor.' WHERE `ID` = 9099;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Do not forget that power left unchecked is as destructive as power left unused, $C. Use discretion when donning Frostfire.' WHERE `ID` = 9099;
-- Frostfire Gloves
UPDATE `quest_request_items` SET `CompletionText` = 'With the proper materials and reagents, I am able to reform the mythical Frostfire armor.' WHERE `ID` = 9100;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Do not forget that power left unchecked is as destructive as power left unused, $C. Use discretion when donning Frostfire.' WHERE `ID` = 9100;
-- Frostfire Belt
UPDATE `quest_request_items` SET `CompletionText` = 'With the proper materials and reagents, I am able to reform the mythical Frostfire armor.' WHERE `ID` = 9101;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Do not forget that power left unchecked is as destructive as power left unused, $C. Use discretion when donning Frostfire.' WHERE `ID` = 9101;
-- Frostfire Bindings
UPDATE `quest_request_items` SET `CompletionText` = 'With the proper materials and reagents, I am able to reform the mythical Frostfire armor.' WHERE `ID` = 9102;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Do not forget that power left unchecked is as destructive as power left unused, $C. Use discretion when donning Frostfire.' WHERE `ID` = 9102;

-- Plagueheart Robe
UPDATE `quest_request_items` SET `CompletionText` = 'The prodigal rodent returns! Have you what I require?' WHERE `ID` = 9103;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Do you see? Do you now understand the power? Purification... What fools...$B$B<Mataus shakes his head disapprovingly.>$B$BNow take it and get out of my sight.' WHERE `ID` = 9103;
-- Plagueheart Leggings
UPDATE `quest_request_items` SET `CompletionText` = 'The prodigal rodent returns! Have you what I require?' WHERE `ID` = 9104;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Do you see? Do you now understand the power? Purification... What fools...$B$B<Mataus shakes his head disapprovingly.>$B$BNow take it and get out of my sight.' WHERE `ID` = 9104;
-- Plagueheart Circlet
UPDATE `quest_request_items` SET `CompletionText` = 'The prodigal rodent returns! Have you what I require?' WHERE `ID` = 9105;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Do you see? Do you now understand the power? Purification... What fools...$B$B<Mataus shakes his head disapprovingly.>$B$BNow take it and get out of my sight.' WHERE `ID` = 9105;
-- Plagueheart Shoulderpads
UPDATE `quest_request_items` SET `CompletionText` = 'The prodigal rodent returns! Have you what I require?' WHERE `ID` = 9106;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Do you see? Do you now understand the power? Purification... What fools...$B$B<Mataus shakes his head disapprovingly.>$B$BNow take it and get out of my sight.' WHERE `ID` = 9106;
-- Plagueheart Sandals
UPDATE `quest_request_items` SET `CompletionText` = 'The prodigal rodent returns! Have you what I require?' WHERE `ID` = 9107;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Do you see? Do you now understand the power? Purification... What fools...$B$B<Mataus shakes his head disapprovingly.>$B$BNow take it and get out of my sight.' WHERE `ID` = 9107;
-- Plagueheart Gloves
UPDATE `quest_request_items` SET `CompletionText` = 'The prodigal rodent returns! Have you what I require?' WHERE `ID` = 9108;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Do you see? Do you now understand the power? Purification... What fools...$B$B<Mataus shakes his head disapprovingly.>$B$BNow take it and get out of my sight.' WHERE `ID` = 9108;
-- Plagueheart Belt
UPDATE `quest_request_items` SET `CompletionText` = 'The prodigal rodent returns! Have you what I require?' WHERE `ID` = 9109;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Do you see? Do you now understand the power? Purification... What fools...$B$B<Mataus shakes his head disapprovingly.>$B$BNow take it and get out of my sight.' WHERE `ID` = 9109;
-- Plagueheart Bindings
UPDATE `quest_request_items` SET `CompletionText` = 'The prodigal rodent returns! Have you what I require?' WHERE `ID` = 9110;
UPDATE `quest_offer_reward`  SET `RewardText` = 'Do you see? Do you now understand the power? Purification... What fools...$B$B<Mataus shakes his head disapprovingly.>$B$BNow take it and get out of my sight.' WHERE `ID` = 9110;

-- Robe of Faith
UPDATE `quest_request_items` SET `CompletionText` = 'Have you brought me the reagents, child?' WHERE `ID` = 9111;
UPDATE `quest_offer_reward`  SET `RewardText` = 'The vestments are ready, $N. Smite those that would harm our world in your righteous fire.' WHERE `ID` = 9111;
-- Leggings of Faith
UPDATE `quest_request_items` SET `CompletionText` = 'Have you brought me the reagents, child?' WHERE `ID` = 9112;
UPDATE `quest_offer_reward`  SET `RewardText` = 'The vestments are ready, $N. Smite those that would harm our world in your righteous fire.' WHERE `ID` = 9112;
-- Circlet of Faith
UPDATE `quest_request_items` SET `CompletionText` = 'Have you brought me the reagents, child?' WHERE `ID` = 9113;
UPDATE `quest_offer_reward`  SET `RewardText` = 'The vestments are ready, $N. Smite those that would harm our world in your righteous fire.' WHERE `ID` = 9113;
-- Shoulderpads of Faith
UPDATE `quest_request_items` SET `CompletionText` = 'Have you brought me the reagents, child?' WHERE `ID` = 9114;
UPDATE `quest_offer_reward`  SET `RewardText` = 'The vestments are ready, $N. Smite those that would harm our world in your righteous fire.' WHERE `ID` = 9114;
-- Sandals of Faith
UPDATE `quest_request_items` SET `CompletionText` = 'Have you brought me the reagents, child?' WHERE `ID` = 9115;
UPDATE `quest_offer_reward`  SET `RewardText` = 'The vestments are ready, $N. Smite those that would harm our world in your righteous fire.' WHERE `ID` = 9115;
-- Gloves of Faith
UPDATE `quest_request_items` SET `CompletionText` = 'Have you brought me the reagents, child?' WHERE `ID` = 9116;
UPDATE `quest_offer_reward`  SET `RewardText` = 'The vestments are ready, $N. Smite those that would harm our world in your righteous fire.' WHERE `ID` = 9116;
-- Belt of Faith
UPDATE `quest_request_items` SET `CompletionText` = 'Have you brought me the reagents, child?' WHERE `ID` = 9117;
UPDATE `quest_offer_reward`  SET `RewardText` = 'The vestments are ready, $N. Smite those that would harm our world in your righteous fire.' WHERE `ID` = 9117;
-- Bindings of Faith
UPDATE `quest_request_items` SET `CompletionText` = 'Have you brought me the reagents, child?' WHERE `ID` = 9118;
UPDATE `quest_offer_reward`  SET `RewardText` = 'The vestments are ready, $N. Smite those that would harm our world in your righteous fire.' WHERE `ID` = 9118;

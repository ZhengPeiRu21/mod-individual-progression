-- https://www.wowhead.com/tbc/guide/isle-of-queldanas-overview-burning-crusade-classic#quests-and-phases

-- disable the Isle of Quel'Danas event added by AC
DELETE FROM `game_event_creature`       WHERE `eventEntry` BETWEEN 101 AND 115;
DELETE FROM `game_event_creature_quest` WHERE `eventEntry` BETWEEN 101 AND 115;
DELETE FROM `game_event_gameobject`     WHERE `eventEntry` BETWEEN 101 AND 115;
DELETE FROM `game_event_npc_vendor`     WHERE `eventEntry` BETWEEN 101 AND 115;
DELETE FROM `game_event_creature`       WHERE `eventEntry` IN (-102, -103, -107, -110);
DELETE FROM `game_event_gameobject`     WHERE `eventEntry` IN (-107);

DELETE FROM `creature_addon` WHERE `guid` IN (93966, 93967, 5300476, @WPID+26);
DELETE FROM `waypoint_data`  WHERE `id`   IN (939660, 969670, @WPID+260);

-- archers should have bow equiped
UPDATE `creature_addon` SET `bytes2` = 2 WHERE `guid` IN
(53981, 53982, 54004, 54023, 54028, 54029, 54030, 54031, 54032, 54034, 54038, 54092, 54113, 54114, 54143, 54165, 54176, 54177, 54178, 54181, 54182, 54183, 54184, 54185, 56315, 
65680, 65681, 65682, 65683, 65684, 65685, 65686, 65687, 65688, 65689, 65690, 65691, 65692, 65693, 65694, 65695, 65696, 65697, 65698, 65699, 65700, 65701, 65702, 
94407, 94408, 94409, 94410, 94411, 94412, 94413, 94414, 94415, 94416, 94417, 94418, 94419, 94420, 94422, 94423, 94424, 94425, 94426, 94427, 94428, 94429, 94430, 94431);

-- face Drill Sergeant Bahduum towards troops
UPDATE `creature` SET `orientation` = 3.74933 WHERE `guid` = 93949;

DELETE FROM `creature_queststarter` WHERE `id` IN (24932, 24965, 24967, 24975, 25034, 25046, 25057, 25061, 25069, 25088, 25108, 25112, 25133, 25163);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES 
(24932, 11513), -- Intercepting the Mana Cells
(24932, 11514), -- Maintaining the Sunwell Portal (repeatable)
(24965, 11524), -- Erratic Behavior
(24965, 11525), -- Further Conversions (repeatable)
(24967, 11496), -- The Sanctum Wards
(24967, 11523), -- Arm the Wards! (repeatable)
(24967, 11526), -- The Missing Magistrix
(24975, 11520), -- Discovering Your Roots
(24975, 11521), -- Rediscovering Your Roots (repeatable)
(24975, 11546), -- Open for Business (repeatable) (after construction of alchemy lab)
(25034, 11517), -- Report to Nasuun
-- (25034, 11534), -- Report to Nasuun
(25046, 11535), -- Making Ready
(25046, 11536), -- Don't Stop Now.... (repeatable)
(25046, 11544), -- Ata'mal Armaments
(25057, 11532), -- Distraction at the Dead Scar
(25057, 11533), -- The Air Strikes Must Continue (repeatable)
(25061, 11537), -- The Battle Must Go On (repeatable)
(25061, 11538), -- The Battle for the Sun's Reach Armory
(25069, 11539), -- Taking the Harbor
(25069, 11540), -- Crush the Dawnblade (repeatable)
(25088, 11541), -- Disrupt the Greengill Coast (repeatable) (Upon beginning construction of the alchemy lab)
(25108, 11542), -- Intercept the Reinforcements
(25108, 11543), -- Keeping the Enemy at Bay (repeatable)
(25112, 11545), -- A Charitable Donation
(25112, 11548), -- Your Continued Support (repeatable)
(25133, 11547), -- Know Your Ley Lines (repeatable) (Upon completion of the Sunwell Portal)
(25163, 11549); -- A Magnanimous Benefactor

DELETE FROM `creature_questender` WHERE `id` IN (24932, 24965, 24967, 24975, 25034, 25046, 25057, 25061, 25069, 25088, 25108, 25112, 25133, 25163);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES 
(24932, 11513), -- Intercepting the Mana Cells
(24932, 11514), -- Maintaining the Sunwell Portal (repeatable)
(24965, 11524), -- Erratic Behavior
(24965, 11525), -- Further Conversions (repeatable)
(24967, 11496), -- The Sanctum Wards
(24967, 11523), -- Arm the Wards! (repeatable)
(24975, 11520), -- Discovering Your Roots
(24975, 11521), -- Rediscovering Your Roots (repeatable)
(24975, 11546), -- Open for Business
(25034, 11517), -- Report to Nasuun
-- (25034, 11534), -- Report to Nasuun
(25046, 11535), -- Making Ready
(25046, 11536), -- Don't Stop Now.... (repeatable)
(25046, 11544), -- Ata'mal Armaments
(25057, 11532), -- Distraction at the Dead Scar
(25057, 11533), -- The Air Strikes Must Continue (repeatable)
(25061, 11537), -- The Battle Must Go On (repeatable)
(25061, 11538), -- The Battle for the Sun's Reach Armory
(25069, 11539), -- Taking the Harbor
(25069, 11540), -- Crush the Dawnblade (repeatable)
(25088, 11541), -- Disrupt the Greengill Coast
(25108, 11542), -- Intercept the Reinforcements
(25108, 11543), -- Keeping the Enemy at Bay (repeatable)
(25112, 11545), -- A Charitable Donation
(25112, 11548), -- Your Continued Support (repeatable)
(25133, 11547), -- Know Your Ley Lines (repeatable)
(25163, 11549); -- A Magnanimous Benefactor

UPDATE `quest_template_addon` SET `SpecialFlags` = 34 WHERE `ID` IN (11496);
UPDATE `quest_template_addon` SET `SpecialFlags` = 32 WHERE `ID` IN (11542);
UPDATE `quest_template_addon` SET `SpecialFlags` = 0  WHERE `ID` IN (11513, 11524, 11520, 11535, 11544, 11532, 11538, 11539, 11545);

UPDATE `quest_template` SET `Flags` = 138 WHERE `ID` IN (11496);
UPDATE `quest_template` SET `Flags` = 136 WHERE `ID` IN (11513, 11520, 11535, 11539, 11544, 11545);
UPDATE `quest_template` SET `Flags` = 128 WHERE `ID` IN (11524, 11532, 11538, 11542);

UPDATE `quest_template_addon` SET `PrevQuestID` = 11513 WHERE `ID` = 11514;
UPDATE `quest_template_addon` SET `PrevQuestID` = 11524 WHERE `ID` = 11525;
UPDATE `quest_template_addon` SET `PrevQuestID` = 11496 WHERE `ID` = 11523;
UPDATE `quest_template_addon` SET `PrevQuestID` = 11520 WHERE `ID` = 11521;
UPDATE `quest_template_addon` SET `PrevQuestID` = 11521 WHERE `ID` = 11546;
UPDATE `quest_template_addon` SET `PrevQuestID` = 11535 WHERE `ID` = 11536;
UPDATE `quest_template_addon` SET `PrevQuestID` = 11535 WHERE `ID` = 11544;
UPDATE `quest_template_addon` SET `PrevQuestID` = 11544 WHERE `ID` = 11536;
UPDATE `quest_template_addon` SET `PrevQuestID` = 11532 WHERE `ID` = 11533;
UPDATE `quest_template_addon` SET `PrevQuestID` = 11538 WHERE `ID` = 11537;
UPDATE `quest_template_addon` SET `PrevQuestID` = 11539 WHERE `ID` = 11540;
UPDATE `quest_template_addon` SET `PrevQuestID` = 11542 WHERE `ID` = 11543;
UPDATE `quest_template_addon` SET `PrevQuestID` = 11520 WHERE `ID` = 11541;
UPDATE `quest_template_addon` SET `PrevQuestID` = 11545 WHERE `ID` = 11548;
UPDATE `quest_template_addon` SET `PrevQuestID` = 11513 WHERE `ID` = 11547;

DELETE FROM `npc_vendor` WHERE `entry` IN (24975, 25046, 25950);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`) VALUES
--
(24975, 0, 3371, 0, 0, 0),
(24975, 0, 3372, 0, 0, 0),
(24975, 0, 8925, 0, 0, 0),
(24975, 0, 13467, 3, 9000, 0),
(24975, 0, 18256, 0, 0, 0),
(24975, 0, 22785, 3, 9000, 0),
(24975, 0, 22786, 3, 9000, 0),
(24975, 0, 22791, 3, 9000, 0),
(24975, 0, 22793, 1, 9000, 0),
(24975, 0, 40411, 0, 0, 0),
--
(25046, 0, 34887, 0, 0, 2059),
(25046, 0, 34888, 0, 0, 2059),
(25046, 0, 34889, 0, 0, 2059),
(25046, 0, 34890, 0, 0, 2059),
(25046, 0, 34891, 0, 0, 2329),
(25046, 0, 34892, 0, 0, 2329),
(25046, 0, 34893, 0, 0, 2331),
(25046, 0, 34894, 0, 0, 2331),
(25046, 0, 34895, 0, 0, 2329),
(25046, 0, 34896, 0, 0, 2329),
(25046, 0, 34898, 0, 0, 2329),
(25046, 0, 34900, 0, 0, 2333),
(25046, 0, 34901, 0, 0, 2333),
(25046, 0, 34902, 0, 0, 2049),
(25046, 0, 34903, 0, 0, 2333),
(25046, 0, 34904, 0, 0, 2049),
(25046, 0, 34905, 0, 0, 2333),
(25046, 0, 34906, 0, 0, 2333),
(25046, 0, 34910, 0, 0, 2333),
(25046, 0, 34911, 0, 0, 2049),
(25046, 0, 34912, 0, 0, 2333),
(25046, 0, 34914, 0, 0, 2333),
(25046, 0, 34916, 0, 0, 2049),
(25046, 0, 34917, 0, 0, 2333),
(25046, 0, 34918, 0, 0, 2333),
(25046, 0, 34919, 0, 0, 2049),
(25046, 0, 34921, 0, 0, 2333),
(25046, 0, 34922, 0, 0, 2333),
(25046, 0, 34923, 0, 0, 2049),
(25046, 0, 34924, 0, 0, 2333),
(25046, 0, 34925, 0, 0, 2333),
(25046, 0, 34926, 0, 0, 2049),
(25046, 0, 34927, 0, 0, 2333),
(25046, 0, 34928, 0, 0, 2333),
(25046, 0, 34929, 0, 0, 2049),
(25046, 0, 34930, 0, 0, 2333),
(25046, 0, 34931, 0, 0, 2333),
(25046, 0, 34932, 0, 0, 2049),
(25046, 0, 34933, 0, 0, 2333),
(25046, 0, 34934, 0, 0, 2333),
(25046, 0, 34935, 0, 0, 2049),
(25046, 0, 34936, 0, 0, 2333),
(25046, 0, 34937, 0, 0, 2333),
(25046, 0, 34938, 0, 0, 2049),
(25046, 0, 34939, 0, 0, 2333),
(25046, 0, 34940, 0, 0, 2333),
(25046, 0, 34941, 0, 0, 2049),
(25046, 0, 34942, 0, 0, 2333),
(25046, 0, 34943, 0, 0, 2333),
(25046, 0, 34944, 0, 0, 2049),
(25046, 0, 34945, 0, 0, 2333),
(25046, 0, 34946, 0, 0, 2333),
(25046, 0, 34947, 0, 0, 2049),
(25046, 0, 34949, 0, 0, 2332),
(25046, 0, 34950, 0, 0, 2332),
(25046, 0, 34951, 0, 0, 2332),
(25046, 0, 34952, 0, 0, 2332),
--
(25950, 0, 32227, 0, 0, 1642),
(25950, 0, 32228, 0, 0, 1642),
(25950, 0, 32229, 0, 0, 1642),
(25950, 0, 32230, 0, 0, 1642),
(25950, 0, 32231, 0, 0, 1642),
(25950, 0, 32249, 0, 0, 1642),
(25950, 0, 35238, 0, 0, 0),
(25950, 0, 35239, 0, 0, 0),
(25950, 0, 35240, 0, 0, 0),
(25950, 0, 35241, 0, 0, 0),
(25950, 0, 35242, 0, 0, 0),
(25950, 0, 35243, 0, 0, 0),
(25950, 0, 35244, 0, 0, 0),
(25950, 0, 35245, 0, 0, 0),
(25950, 0, 35246, 0, 0, 0),
(25950, 0, 35247, 0, 0, 0),
(25950, 0, 35248, 0, 0, 0),
(25950, 0, 35249, 0, 0, 0),
(25950, 0, 35250, 0, 0, 0),
(25950, 0, 35251, 0, 0, 0),
(25950, 0, 35252, 0, 0, 0),
(25950, 0, 35253, 0, 0, 0),
(25950, 0, 35254, 0, 0, 0),
(25950, 0, 35255, 0, 0, 0),
(25950, 0, 35256, 0, 0, 0),
(25950, 0, 35257, 0, 0, 0),
(25950, 0, 35258, 0, 0, 0),
(25950, 0, 35259, 0, 0, 0),
(25950, 0, 35260, 0, 0, 0),
(25950, 0, 35261, 0, 0, 0),
(25950, 0, 35262, 0, 0, 0),
(25950, 0, 35263, 0, 0, 0),
(25950, 0, 35264, 0, 0, 0),
(25950, 0, 35265, 0, 0, 0),
(25950, 0, 35266, 0, 0, 0),
(25950, 0, 35267, 0, 0, 0),
(25950, 0, 35268, 0, 0, 0),
(25950, 0, 35269, 0, 0, 0),
(25950, 0, 35270, 0, 0, 0),
(25950, 0, 35271, 0, 0, 0),
(25950, 0, 35322, 0, 0, 0),
(25950, 0, 35323, 0, 0, 0),
(25950, 0, 35325, 0, 0, 0),
(25950, 0, 35766, 0, 0, 0),
(25950, 0, 35767, 0, 0, 0),
(25950, 0, 35768, 0, 0, 0),
(25950, 0, 35769, 0, 0, 0),
(25950, 0, 37504, 0, 0, 0);


SET @CGUID  := 673000;
SET @WPID   := 6730000;

SET @IPPPHASE_III := 262144;
SET @IPPPHASE_V   := 1048576;

DELETE FROM `creature` WHERE `id1` IN (25001, 25002, 25003);
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+2 AND @CGUID+5;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
--
(@CGUID+1,  25003, 0, 0, 530, 0, 0, 1, 1, 1, 12583.2998, -6916.2798, 4.6855, 6.2606, 300, 0, 1, 7084, 0, 2, 0, 0, 0, '', NULL, 0, NULL), -- Emissary of Hate
--
(@CGUID+2,  25115, 0, 0, 530, 0, 0, 1, 1, 1, 12803.5000, -6910.7900, 41.1986, 1.62, 45, 0, 1, 7084, 0, 2, 0, 0, 0, '', NULL, 0, NULL),   -- Shattered Sun Warrior
(@CGUID+3,  25115, 0, 0, 530, 0, 0, 1, 1, 1, 12804.7998, -6908.0898, 41.1986, 1.82, 50, 0, 1, 7084, 0, 2, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+4,  25115, 0, 0, 530, 0, 0, 1, 1, 1, 12805.7002, -6907.1201, 41.1986, 2.20, 45, 0, 1, 7084, 0, 2, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+5,  25115, 0, 0, 530, 0, 0, 1, 1, 1, 12805.7998, -6911.7300, 41.2819, 2.19, 50, 0, 1, 7084, 0, 2, 0, 0, 0, '', NULL, 0, NULL),
--
(@CGUID+11, 25001, 0, 0, 530, 0, 0, 1, 1, 0, 12488.7002, -6887.3398, 16.4079, 1.255, 300, 0, 0, 7181, 0, 0, 0, 0, 0, '', NULL, 0, NULL), -- Abyssal Flamewalker
(@CGUID+12, 25001, 0, 0, 530, 0, 0, 1, 1, 0, 12519.5000, -6911.1299, 16.7992, 5.978, 300, 0, 0, 7181, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+13, 25001, 0, 0, 530, 0, 0, 1, 1, 0, 12579.0996, -6974.5400, 15.9850, 3.398, 300, 0, 0, 7181, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+14, 25001, 0, 0, 530, 0, 0, 1, 1, 0, 12683.0996, -7043.1602, 19.7468, 4.362, 300, 0, 0, 7181, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+15, 25001, 0, 0, 530, 0, 0, 1, 1, 0, 12636.7998, -7073.2402, 16.4142, 1.162, 300, 0, 0, 7181, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+16, 25001, 0, 0, 530, 0, 0, 1, 1, 0, 12692.0000, -7107.3999, 19.4216, 6.032, 300, 0, 0, 7181, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+17, 25001, 0, 0, 530, 0, 0, 1, 1, 0, 12663.7002, -7082.5098, 19.4874, 4.049, 300, 0, 0, 7181, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+18, 25001, 0, 0, 530, 0, 0, 1, 1, 0, 12641.0000, -7043.3901, 19.3265, 0.182, 300, 0, 0, 7181, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+19, 25001, 0, 0, 530, 0, 0, 1, 1, 0, 12657.0000, -6979.9102, 14.6574, 4.108, 300, 0, 0, 7181, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+20, 25001, 0, 0, 530, 0, 0, 1, 1, 0, 12703.9004, -6920.8301, 13.7406, 0.871, 300, 0, 0, 7181, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+21, 25001, 0, 0, 530, 0, 0, 1, 1, 0, 12696.0000, -7010.1401, 21.2508, 1.211, 300, 0, 0, 7181, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+22, 25001, 0, 0, 530, 0, 0, 1, 1, 0, 12606.0996, -6987.6499, 17.0318, 5.598, 300, 0, 0, 7181, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+23, 25001, 0, 0, 530, 0, 0, 1, 1, 0, 12636.7002, -7014.6802, 20.3199, 2.344, 300, 0, 0, 7181, 0, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+24, 25001, 0, 0, 530, 0, 0, 1, 1, 0, 12565.7998, -6827.3701, 16.3403, 4.864, 300, 0, 1, 7181, 0, 2, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+25, 25001, 0, 0, 530, 0, 0, 1, 1, 0, 12590.0996, -6857.1499, 4.81390, 4.638, 300, 0, 1, 7181, 0, 2, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+26, 25001, 0, 0, 530, 0, 0, 1, 1, 0, 12728.2002, -6945.3799, 14.3328, 1.624, 300, 0, 1, 7181, 0, 2, 0, 0, 0, '', NULL, 0, NULL),

(@CGUID+31, 25002, 0, 0, 530, 0, 0, 1, 1, 1, 12588.4004, -6923.1099, 4.6006, 0.3888, 300, 0, 0, 5589, 3155, 0, 0, 0, 0, '', NULL, 0, NULL), -- Unleashed Hellion
(@CGUID+32, 25002, 0, 0, 530, 0, 0, 1, 1, 1, 12588.5996, -6910.2202, 4.6023, 5.6902, 300, 0, 0, 5589, 3155, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+33, 25002, 0, 0, 530, 0, 0, 1, 1, 1, 12572.2998, -6915.2300, 4.6023, 6.1929, 300, 0, 0, 5589, 3155, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+34, 25002, 0, 0, 530, 0, 0, 1, 1, 1, 12702.0000, -6950.8101, 15.646, 0.6632, 300, 0, 0, 5589, 3155, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+35, 25002, 0, 0, 530, 0, 0, 1, 1, 1, 12696.2002, -6942.9800, 15.642, 0.5236, 300, 0, 0, 5589, 3155, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+36, 25002, 0, 0, 530, 0, 0, 1, 1, 1, 12701.0996, -6983.3101, 25.601, 6.1173, 300, 0, 0, 5589, 3155, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+37, 25002, 0, 0, 530, 0, 0, 1, 1, 1, 12683.2002, -6957.7202, 36.253, 3.7768, 300, 0, 0, 5589, 3155, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+38, 25002, 0, 0, 530, 0, 0, 1, 1, 1, 12673.0996, -6943.6899, 36.339, 5.4629, 300, 0, 0, 5589, 3155, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+39, 25002, 0, 0, 530, 0, 0, 1, 1, 1, 12704.0000, -6972.1802, 36.231, 0.3529, 300, 0, 0, 5589, 3155, 0, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+40, 25002, 0, 0, 530, 0, 0, 1, 1, 1, 12689.7998, -6983.5601, 15.571, 5.2478, 300, 3, 0, 5589, 3155, 1, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+41, 25002, 0, 0, 530, 0, 0, 1, 1, 1, 12657.7002, -7019.8999, 21.819, 2.5726, 300, 3, 0, 5589, 3155, 1, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+42, 25002, 0, 0, 530, 0, 0, 1, 1, 1, 12587.0996, -6946.1099, 4.6400, 1.5590, 300, 3, 0, 5589, 3155, 1, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+43, 25002, 0, 0, 530, 0, 0, 1, 1, 1, 12616.7998, -6947.3101, 4.6006, 1.5590, 300, 3, 0, 5589, 3155, 1, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+44, 25002, 0, 0, 530, 0, 0, 1, 1, 1, 12612.9004, -7022.4199, 18.695, 1.2354, 300, 5, 0, 5589, 3155, 1, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+45, 25002, 0, 0, 530, 0, 0, 1, 1, 1, 12674.9004, -7100.2500, 18.686, 1.3909, 300, 5, 0, 5589, 3155, 1, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+46, 25002, 0, 0, 530, 0, 0, 1, 1, 1, 12652.2998, -7074.3901, 18.134, 5.4522, 300, 5, 0, 5589, 3155, 1, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+47, 25002, 0, 0, 530, 0, 0, 1, 1, 1, 12601.7002, -6888.8901, 4.6026, 0.7492, 300, 5, 0, 5589, 3155, 1, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+48, 25002, 0, 0, 530, 0, 0, 1, 1, 1, 12638.7998, -6858.7598, 4.7259, 0.7492, 300, 5, 0, 5589, 3155, 1, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+49, 25002, 0, 0, 530, 0, 0, 1, 1, 1, 12663.4004, -6881.7900, 4.7259, 3.3568, 300, 5, 0, 5589, 3155, 1, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+50, 25002, 0, 0, 530, 0, 0, 1, 1, 1, 12563.5000, -6830.9702, 16.428, 3.3568, 300, 5, 0, 5589, 3155, 1, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+51, 25002, 0, 0, 530, 0, 0, 1, 1, 1, 12616.2002, -6820.6802, 14.008, 1.1206, 300, 5, 0, 5589, 3155, 1, 0, 0, 0, '', NULL, 0, NULL),
(@CGUID+52, 25002, 0, 0, 530, 0, 0, 1, 1, 1, 12539.5000, -6943.2500, 16.586, 4.6426, 300, 5, 0, 5589, 3155, 1, 0, 0, 0, '', NULL, 0, NULL);

UPDATE `creature` SET `phaseMask` = @IPPPHASE_III WHERE `guid` IN (@CGUID+2, @CGUID+3, @CGUID+4, @CGUID+5);
UPDATE `creature` SET `phaseMask` = @IPPPHASE_V   WHERE `guid` IN (@CGUID+14, @CGUID+15, @CGUID+16, @CGUID+17, @CGUID+18, @CGUID+19, @CGUID+20, @CGUID+21, @CGUID+22, @CGUID+23, @CGUID+26);
UPDATE `creature` SET `phaseMask` = @IPPPHASE_V   WHERE `guid` IN (@CGUID+34, @CGUID+35, @CGUID+36, @CGUID+37, @CGUID+38, @CGUID+39, @CGUID+40, @CGUID+41, @CGUID+44, @CGUID+45, @CGUID+46);

UPDATE `creature_template` SET `CreatureImmunitiesId` = 0 WHERE `entry` = 25001; -- can't be immune to fire, else Abyssal Transformation won't work

DELETE FROM `creature_addon` WHERE `guid` IN (@CGUID+1, @CGUID+2, @CGUID+3, @CGUID+4, @CGUID+5, @CGUID+24, @CGUID+25, @CGUID+26);
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
--
(@CGUID+1,  @WPID+10,  0, 0, 1, 0, 0, NULL),
(@CGUID+2,  @WPID+20,  0, 0, 1, 0, 0, NULL),
(@CGUID+3,  @WPID+20,  0, 0, 1, 0, 0, NULL),
(@CGUID+4,  @WPID+40,  0, 0, 1, 0, 0, NULL),
(@CGUID+5,  @WPID+40,  0, 0, 1, 0, 0, NULL),
(@CGUID+24, @WPID+240, 0, 0, 0, 0, 0, NULL),
(@CGUID+25, @WPID+250, 0, 0, 0, 0, 0, NULL),
(@CGUID+26, @WPID+260, 0, 0, 0, 0, 0, NULL);

DELETE FROM `waypoint_data` WHERE `id` IN (@WPID+10, @WPID+20, @WPID+40, @WPID+240, @WPID+250, @WPID+260);
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
--
(@WPID+10, 1, 12612.6, -6916.94, 4.72594, NULL, 0, 0, 0, 100, 0),
(@WPID+10, 2, 12639.3, -6917.03, 4.72594, NULL, 8000, 0, 0, 100, 0),
(@WPID+10, 3, 12612.6, -6916.94, 4.72594, NULL, 0, 0, 0, 100, 0),
(@WPID+10, 4, 12589.8, -6916, 4.72634, 6.26056, 10000, 0, 0, 100, 0),
--
(@WPID+20, 1,  12801.3, -6901.13, 40.2997, NULL, 0, 1, 0, 100, 0),
(@WPID+20, 2,  12808.4, -6886.84, 40.2948, NULL, 0, 1, 0, 100, 0),
(@WPID+20, 3,  12803.4, -6871.79, 40.2948, NULL, 0, 1, 0, 100, 0),
(@WPID+20, 4,  12790.4, -6864.35, 40.2948, NULL, 0, 1, 0, 100, 0),
(@WPID+20, 5,  12774.3, -6867.68, 40.2948, NULL, 0, 1, 0, 100, 0),
(@WPID+20, 6,  12780.7, -6876.71, 40.3011, NULL, 0, 1, 0, 100, 0),
(@WPID+20, 7,  12776.0, -6882.20, 39.6299, NULL, 0, 1, 0, 100, 0),
(@WPID+20, 8,  12777.7, -6892.68, 35.8354, NULL, 0, 1, 0, 100, 0),
(@WPID+20, 9,  12787.4, -6897.39, 31.5905, NULL, 0, 1, 0, 100, 0),
(@WPID+20, 10, 12792.6, -6893.43, 30.8971, NULL, 0, 1, 0, 100, 0),
(@WPID+20, 11, 12790.7, -6890.53, 31.7543, NULL, 4000, 0, 0, 100, 0),
--
(@WPID+40, 1,  12801.3, -6901.13, 40.2997, NULL, 0, 1, 0, 100, 0),
(@WPID+40, 2,  12808.4, -6886.84, 40.2948, NULL, 0, 1, 0, 100, 0),
(@WPID+40, 3,  12803.4, -6871.79, 40.2948, NULL, 0, 1, 0, 100, 0),
(@WPID+40, 4,  12790.4, -6864.35, 40.2948, NULL, 0, 1, 0, 100, 0),
(@WPID+40, 5,  12774.3, -6867.68, 40.2948, NULL, 0, 1, 0, 100, 0),
(@WPID+40, 6,  12780.7, -6876.71, 40.3011, NULL, 0, 1, 0, 100, 0),
(@WPID+40, 7,  12787.9, -6873.48, 39.4877, NULL, 0, 1, 0, 100, 0),
(@WPID+40, 8,  12798.2, -6880.22, 35.1038, NULL, 0, 1, 0, 100, 0),
(@WPID+40, 9,  12798.6, -6888.07, 31.8676, NULL, 0, 1, 0, 100, 0),
(@WPID+40, 10, 12792.6, -6893.43, 30.8971, NULL, 0, 1, 0, 100, 0),
(@WPID+40, 11, 12790.7, -6890.53, 31.7543, NULL, 4000, 0, 0, 100, 0),
--
(@WPID+240, 1, 12565.8, -6827.37, 16.3403, NULL, 0, 0, 0, 100, 0),
(@WPID+240, 2, 12584, -6834.42, 14.1357, NULL, 0, 0, 0, 100, 0),
(@WPID+240, 3, 12591.6, -6835.22, 13.6321, NULL, 0, 0, 0, 100, 0),
(@WPID+240, 4, 12607.5, -6830.54, 13.5435, NULL, 0, 0, 0, 100, 0),
(@WPID+240, 5, 12616, -6826.48, 13.3063, NULL, 0, 0, 0, 100, 0),
(@WPID+240, 6, 12625.1, -6825.82, 13.0271, NULL, 0, 0, 0, 100, 0),
(@WPID+240, 7, 12616, -6826.48, 13.3063, NULL, 0, 0, 0, 100, 0),
(@WPID+240, 8, 12607.5, -6830.54, 13.5435, NULL, 0, 0, 0, 100, 0),
(@WPID+240, 9, 12591.6, -6835.22, 13.6321, NULL, 0, 0, 0, 100, 0),
(@WPID+240, 10, 12584, -6834.42, 14.1357, NULL, 0, 0, 0, 100, 0),
--
(@WPID+250, 1, 12590.1, -6857.15, 4.8139, NULL, 0, 0, 0, 100, 0),
(@WPID+250, 2, 12614.5, -6866.54, 5.22594, NULL, 0, 0, 0, 100, 0),
(@WPID+250, 3, 12633.2, -6875.46, 5.14763, NULL, 0, 0, 0, 100, 0),
(@WPID+250, 4, 12641.7, -6889.07, 5.10094, NULL, 0, 0, 0, 100, 0),
(@WPID+250, 5, 12633.2, -6875.46, 5.14763, NULL, 0, 0, 0, 100, 0),
(@WPID+250, 6, 12614.5, -6866.54, 5.22594, NULL, 0, 0, 0, 100, 0),
--
(@WPID+260, 1, 12728.2, -6945.38, 14.3328, NULL, 0, 0, 0, 100, 0),
(@WPID+260, 2, 12728, -6963.33, 17.2544, NULL, 0, 0, 0, 100, 0),
(@WPID+260, 3, 12723.1, -6977.58, 18.9559, NULL, 0, 0, 0, 100, 0),
(@WPID+260, 4, 12728, -6963.33, 17.2544, NULL, 0, 0, 0, 100, 0);

-- hide shop menu until after the player has helped the npc
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` IN (9087, 9198) AND `ConditionTypeOrReference` = 8;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 9087, 0, 0, 0, 8, 0, 11536, 0, 0, 0, 0, 0, '', 'Trade Option requires quest \'Dont Stop Now\' to be complete'),
(15, 9198, 0, 0, 0, 8, 0, 11521, 0, 0, 0, 0, 0, '', 'Trade Option requires quest \'Rediscovering Your Roots\' to be complete');

-- Shattered Sun Warriors coming out of the portal AFTER phase 2
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (-673002, -673003, -673004, -673005);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(-673002, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 34427, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Shattered Sun Warrior - On spawn - Cast Ethereal Teleport'),
(-673002, 0, 1, 2, 108, 0, 100, 0, 11, 6730020, 0, 0, 0, 0, 5, 432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Shattered Sun Warrior - On Waypoint Reached - Emote Use'),
(-673002, 0, 2, 0, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Shattered Sun Warrior - On Waypoint Reached - Despawn'),
(-673002, 0, 3, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 88, 2511510, 2511513, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior - On Respawn - Run Random Script'),
(-673002, 0, 4, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 88, 2511520, 2511523, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior - On Respawn - Run Random Script'),
(-673002, 0, 5, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 88, 2511530, 2511533, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior - On Respawn - Run Random Script'),
(-673002, 0, 6, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 88, 2511540, 2511543, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior - On Respawn - Run Random Script'),
(-673003, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 34427, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Shattered Sun Warrior - On spawn - Cast Ethereal Teleport'),
(-673003, 0, 1, 2, 108, 0, 100, 0, 11, 6730020, 0, 0, 0, 0, 5, 432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Shattered Sun Warrior - On Waypoint Reached - Emote Use'),
(-673003, 0, 2, 0, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Shattered Sun Warrior - On Waypoint Reached - Despawn'),
(-673003, 0, 3, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 88, 2511510, 2511513, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior - On Respawn - Run Random Script'),
(-673003, 0, 4, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 88, 2511520, 2511523, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior - On Respawn - Run Random Script'),
(-673003, 0, 5, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 88, 2511530, 2511533, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior - On Respawn - Run Random Script'),
(-673003, 0, 6, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 88, 2511540, 2511543, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior - On Respawn - Run Random Script'),
(-673004, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 34427, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Shattered Sun Warrior - On spawn - Cast Ethereal Teleport'),
(-673004, 0, 1, 2, 108, 0, 100, 0, 11, 6730040, 0, 0, 0, 0, 5, 432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Shattered Sun Warrior - On Waypoint Reached - Emote Use'),
(-673004, 0, 2, 0, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Shattered Sun Warrior - On Waypoint Reached - Despawn'),
(-673004, 0, 3, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 88, 2511510, 2511513, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior - On Respawn - Run Random Script'),
(-673004, 0, 4, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 88, 2511520, 2511523, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior - On Respawn - Run Random Script'),
(-673004, 0, 5, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 88, 2511530, 2511533, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior - On Respawn - Run Random Script'),
(-673004, 0, 6, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 88, 2511540, 2511543, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior - On Respawn - Run Random Script'),
(-673005, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 34427, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,         'Shattered Sun Warrior - On spawn - Cast Ethereal Teleport'),
(-673005, 0, 1, 2, 108, 0, 100, 0, 11, 6730040, 0, 0, 0, 0, 5, 432, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Shattered Sun Warrior - On Waypoint Reached - Emote Use'),
(-673005, 0, 2, 0, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 41, 2000, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,            'Shattered Sun Warrior - On Waypoint Reached - Despawn'),
(-673005, 0, 3, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 88, 2511510, 2511513, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior - On Respawn - Run Random Script'),
(-673005, 0, 4, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 88, 2511520, 2511523, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior - On Respawn - Run Random Script'),
(-673005, 0, 5, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 88, 2511530, 2511533, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior - On Respawn - Run Random Script'),
(-673005, 0, 6, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 88, 2511540, 2511543, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Shattered Sun Warrior - On Respawn - Run Random Script');

DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (24918);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(24918, 0, 0, 0, 0, 0, 100, 0, 4000, 6000, 7000, 9000, 0, 0, 11, 14873, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,     'Felblood Initiate - In Combat - Cast \'Sinister Strike\''),
(24918, 0, 1, 0, 0, 0, 100, 0, 17000, 22000, 20000, 26000, 0, 0, 11, 29098, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Felblood Initiate - In Combat - Cast \'Bitter Withdrawal\''),
(24918, 0, 2, 0, 0, 0, 100, 0, 8000, 12000, 18000, 22000, 0, 0, 11, 35871, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Felblood Initiate - In Combat - Cast \'Spellbreaker\''),
(24918, 0, 3, 0, 8, 0, 100, 512, 44937, 0, 0, 0, 0, 0, 36, 24955, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,           'Felblood Initiate - On Spellhit \'Fel Siphon\' - Update Template To \'Emaciated Felblood\''),
(24918, 0, 4, 0, 1, 0, 25, 0, 0, 0, 30000, 30000, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Felblood Initiate - Out of Combat - Random Yell'),
(24918, 0, 5, 0, 1, 0, 100, 0, 1000, 2000, 0, 0, 0, 0, 11, 47850, 3, 6, 0, 0, 0, 11, 24933, 25, 0, 0, 0, 0, 0, 0,     'Felblood Initiate - Out of Combat - Cast Felblood Channel'); 
-- should be spell 46319, but that one doesn't work at all. this one has issues too. only works for 1 of them, don't know why

DELETE FROM `creature_text` WHERE `CreatureID` = 24918;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
--
(24918, 0, 0, 'Unparalleled power... I... crave... more!', 14, 0, 100, 0, 0, 0, 23984, 0,                                  'Felblood Initiate - Random Yell OOC'),
(24918, 0, 1, 'Fel energy... courses through my veins!', 14, 0, 100, 0, 0, 0, 23985, 0,                                    'Felblood Initiate - Random Yell OOC'),
(24918, 0, 2, 'Your life force is my nourishment, demon... Kil\'jaeden\'s gift to us!', 14, 0, 100, 0, 0, 0, 23986, 0,     'Felblood Initiate - Random Yell OOC'),
(24918, 0, 3, 'I will soon be stronger than any elf! I will serve at Kil\'jaeden\'s side!', 14, 0, 100, 0, 0, 0, 23987, 0, 'Felblood Initiate - Random Yell OOC'),
(24918, 0, 4, 'More... more... MORE!!!', 14, 0, 100, 0, 0, 0, 23988, 0,                                                    'Felblood Initiate - Random Yell OOC');


SET @CGUID    := 673000;
SET @WPID     := 6730000;

-- remove entries added by AC
DELETE FROM `creature_addon` WHERE `guid` BETWEEN 97023 AND 97035; 
DELETE FROM `creature_addon` WHERE `guid` BETWEEN 97073 AND 97081;

DELETE FROM `creature` WHERE `id1` IN (22323, 24918, 24919);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, 
`wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
--
(@CGUID+101, 22323, 0, 0, 530, 0, 0, 1, 1, 0, 779.805, 2025.520, 272.724, 2.082, 300, 5, 0, 6986, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+102, 22323, 0, 0, 530, 0, 0, 1, 1, 0, 863.790, 2294.040, 292.912, 1.828, 300, 5, 0, 6986, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+103, 22323, 0, 0, 530, 0, 0, 1, 1, 0, 904.055, 2231.690, 303.629, 0.124, 300, 5, 0, 6986, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+104, 22323, 0, 0, 530, 0, 0, 1, 1, 0, 830.298, 2454.670, 287.690, 5.012, 300, 5, 0, 6986, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+105, 22323, 0, 0, 530, 0, 0, 1, 1, 0, 790.112, 2415.900, 281.392, 1.833, 300, 5, 0, 6986, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+106, 22323, 0, 0, 530, 0, 0, 1, 1, 0, 805.013, 2171.160, 272.545, 1.558, 300, 5, 0, 6986, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+107, 22323, 0, 0, 530, 0, 0, 1, 1, 0, 806.654, 2471.270, 290.114, 2.165, 300, 5, 0, 6986, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+108, 22323, 0, 0, 530, 0, 0, 1, 1, 0, 773.122, 2262.280, 282.028, 3.225, 300, 5, 0, 6986, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+109, 22323, 0, 0, 530, 0, 0, 1, 1, 0, 863.034, 2247.810, 294.686, 4.134, 300, 5, 0, 6986, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+110, 22323, 0, 0, 530, 0, 0, 1, 1, 0, 777.397, 2066.100, 272.829, 4.333, 300, 5, 0, 6986, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+111, 22323, 0, 0, 530, 0, 0, 1, 1, 0, 872.981, 2069.240, 272.227, 4.333, 300, 5, 0, 6986, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+112, 22323, 0, 0, 530, 0, 0, 1, 1, 0, 690.316, 2578.270, 276.819, 0.934, 300, 5, 0, 6986, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+113, 22323, 0, 0, 530, 0, 0, 1, 1, 0, 729.454, 2557.940, 279.810, 2.848, 300, 5, 0, 6986, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+114, 22323, 0, 0, 530, 0, 0, 1, 1, 0, 746.634, 2513.040, 275.735, 4.682, 300, 5, 0, 6986, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+115, 22323, 0, 0, 530, 0, 0, 1, 1, 0, 796.947, 2534.290, 295.917, 1.745, 300, 5, 0, 6986, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+116, 22323, 0, 0, 530, 0, 0, 1, 1, 0, 812.533, 2553.200, 293.690, 4.747, 300, 5, 0, 6986, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+117, 22323, 0, 0, 530, 0, 0, 1, 1, 0, 870.909, 2558.560, 296.109, 5.113, 300, 5, 0, 6986, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+118, 22323, 0, 0, 530, 0, 0, 1, 1, 0, 838.632, 2395.830, 281.504, 0.712, 300, 5, 0, 6986, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+119, 22323, 0, 0, 530, 0, 0, 1, 1, 0, 712.439, 2512.700, 277.577, 0.037, 300, 5, 0, 6986, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+120, 22323, 0, 0, 530, 0, 0, 1, 1, 0, 803.282, 2371.620, 281.493, 1.636, 300, 5, 0, 6986, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+121, 22323, 0, 0, 530, 0, 0, 1, 1, 0, 835.823, 2222.470, 288.053, 5.265, 300, 5, 0, 6986, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+122, 22323, 0, 0, 530, 0, 0, 1, 1, 0, 779.815, 2137.840, 272.479, 6.134, 300, 5, 0, 6986, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+123, 22323, 0, 0, 530, 0, 0, 1, 1, 0, 876.590, 2168.810, 279.876, 5.333, 300, 5, 0, 6986, 0, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+124, 22323, 0, 0, 530, 0, 0, 1, 1, 0, 810.844, 2123.510, 271.518, 0.704, 300, 0, 1, 6986, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+125, 22323, 0, 0, 530, 0, 0, 1, 1, 0, 824.170, 2092.210, 271.471, 1.727, 300, 0, 1, 6986, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+126, 22323, 0, 0, 530, 0, 0, 1, 1, 0, 852.978, 2114.790, 270.125, 0.221, 300, 0, 1, 6986, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+127, 22323, 0, 0, 530, 0, 0, 1, 1, 0, 679.607, 2408.130, 275.515, 4.466, 300, 0, 1, 6986, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+128, 22323, 0, 0, 530, 0, 0, 1, 1, 0, 726.174, 2408.900, 276.176, 1.969, 300, 0, 1, 6986, 0, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+129, 22323, 0, 0, 530, 0, 0, 1, 1, 0, 703.972, 2375.870, 275.048, 4.067, 300, 0, 1, 6986, 0, 2, 0, 0, 0, '', 0, 0, NULL),
--
(@CGUID+131, 24918, 0, 0, 530, 0, 0, 1, 1, 1, 794.351, 2254.55, 281.445, 0.89, 300, 0, 0, 16767, 9465, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+132, 24918, 0, 0, 530, 0, 0, 1, 1, 1, 793.700, 2282.82, 281.453, 5.34, 300, 0, 0, 16767, 9465, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+133, 24918, 0, 0, 530, 0, 0, 1, 1, 1, 823.586, 2249.68, 281.454, 2.08, 300, 0, 0, 16767, 9465, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+134, 24918, 0, 0, 530, 0, 0, 1, 1, 1, 824.137, 2288.24, 281.473, 3.94, 300, 0, 0, 16767, 9465, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+135, 24918, 0, 0, 530, 0, 0, 1, 1, 1, 693.193, 2335.10, 275.039, 2.01, 300, 0, 0, 16767, 9465, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+136, 24918, 0, 0, 530, 0, 0, 1, 1, 1, 666.762, 2345.96, 273.911, 0.77, 300, 0, 0, 16767, 9465, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+137, 24918, 0, 0, 530, 0, 0, 1, 1, 1, 704.268, 2359.31, 275.142, 3.61, 300, 0, 0, 16767, 9465, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+138, 24918, 0, 0, 530, 0, 0, 1, 1, 1, 673.716, 2368.90, 275.142, 5.27, 300, 0, 0, 16767, 9465, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+139, 24918, 0, 0, 530, 0, 0, 1, 1, 1, 695.219, 2432.90, 275.164, 2.43, 300, 0, 0, 16767, 9465, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+140, 24918, 0, 0, 530, 0, 0, 1, 1, 1, 693.390, 2462.06, 275.185, 4.03, 300, 0, 0, 16767, 9465, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+141, 24918, 0, 0, 530, 0, 0, 1, 1, 1, 664.950, 2458.71, 275.782, 5.74, 300, 0, 0, 16767, 9465, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+142, 24918, 0, 0, 530, 0, 0, 1, 1, 1, 719.354, 2455.54, 275.142, 5.67, 300, 0, 0, 16767, 9465, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+143, 24918, 0, 0, 530, 0, 0, 1, 1, 1, 662.616, 2432.37, 275.796, 0.72, 300, 0, 0, 16767, 9465, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+144, 24918, 0, 0, 530, 0, 0, 1, 1, 1, 751.091, 2429.36, 275.142, 2.43, 300, 0, 0, 16767, 9465, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+145, 24918, 0, 0, 530, 0, 0, 1, 1, 1, 723.793, 2365.64, 274.944, 5.86, 300, 0, 0, 16767, 9465, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+146, 24918, 0, 0, 530, 0, 0, 1, 1, 1, 752.155, 2343.45, 275.142, 2.60, 300, 0, 0, 16767, 9465, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+147, 24918, 0, 0, 530, 0, 0, 1, 1, 1, 729.496, 2338.85, 275.142, 0.80, 300, 0, 0, 16767, 9465, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+148, 24918, 0, 0, 530, 0, 0, 1, 1, 1, 747.793, 2368.04, 275.142, 3.91, 300, 0, 0, 16767, 9465, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+149, 24918, 0, 0, 530, 0, 0, 1, 1, 1, 749.579, 2456.75, 275.142, 3.79, 300, 0, 0, 16767, 9465, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+150, 24918, 0, 0, 530, 0, 0, 1, 1, 1, 716.441, 2429.55, 275.164, 0.82, 300, 0, 0, 16767, 9465, 0, 0, 0, 0, '', 0, 0, NULL),
--
(@CGUID+151, 24919, 0, 0, 530, 0, 0, 1, 1, 1, 849.512, 2225.13, 289.466, 3.09, 300, 0, 0, 5409, 3080, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+152, 24919, 0, 0, 530, 0, 0, 1, 1, 1, 841.577, 2313.24, 289.348, 3.00, 300, 0, 0, 5409, 3080, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+153, 24919, 0, 0, 530, 0, 0, 1, 1, 1, 883.136, 2289.25, 298.047, 3.28, 300, 0, 0, 5409, 3080, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+154, 24919, 0, 0, 530, 0, 0, 1, 1, 1, 882.204, 2252.73, 299.886, 3.19, 300, 0, 0, 5409, 3080, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+155, 24919, 0, 0, 530, 0, 0, 1, 1, 1, 823.215, 2487.33, 293.143, 3.60, 300, 0, 0, 5409, 3080, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+156, 24919, 0, 0, 530, 0, 0, 1, 1, 1, 807.472, 2513.33, 294.945, 3.75, 300, 0, 0, 5409, 3080, 0, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+157, 24919, 0, 0, 530, 0, 0, 1, 1, 1, 837.602, 2162.71, 278.099, 0.74, 300, 5, 0, 5409, 3080, 1, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+158, 24919, 0, 0, 530, 0, 0, 1, 1, 1, 849.918, 2410.45, 281.415, 0.71, 300, 0, 1, 5409, 3080, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+159, 24919, 0, 0, 530, 0, 0, 1, 1, 1, 789.620, 2469.27, 289.315, 3.03, 300, 0, 1, 5409, 3080, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+160, 24919, 0, 0, 530, 0, 0, 1, 1, 1, 819.469, 2269.54, 279.311, 3.71, 300, 0, 1, 5409, 3080, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+161, 24919, 0, 0, 530, 0, 0, 1, 1, 1, 712.838, 2563.02, 279.908, 1.07, 300, 0, 1, 5409, 3080, 2, 0, 0, 0, '', 0, 0, NULL),
(@CGUID+162, 24919, 0, 0, 530, 0, 0, 1, 1, 1, 796.451, 2239.10, 281.465, 1.07, 300, 0, 1, 5409, 3080, 2, 0, 0, 0, '', 0, 0, NULL);

DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+124 AND @CGUID+129;
DELETE FROM `creature_addon` WHERE `guid` BETWEEN @CGUID+158 AND @CGUID+162;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
--
(@CGUID+124, @WPID+1240, 0, 0, 0, 0, 0, NULL),
(@CGUID+125, @WPID+1250, 0, 0, 0, 0, 0, NULL),
(@CGUID+126, @WPID+1260, 0, 0, 0, 0, 0, NULL),
(@CGUID+127, @WPID+1270, 0, 0, 0, 0, 0, NULL),
(@CGUID+128, @WPID+1280, 0, 0, 0, 0, 0, NULL),
(@CGUID+129, @WPID+1290, 0, 0, 0, 0, 0, NULL),
--
(@CGUID+158, @WPID+1580, 0, 0, 1, 0, 0, NULL),
(@CGUID+159, @WPID+1590, 0, 0, 1, 0, 0, NULL),
(@CGUID+160, @WPID+1600, 0, 0, 1, 0, 0, NULL),
(@CGUID+161, @WPID+1610, 0, 0, 1, 0, 0, NULL),
(@CGUID+162, @WPID+1620, 0, 0, 1, 0, 0, NULL);

DELETE FROM `waypoint_data` WHERE `id` BETWEEN @WPID+1240 AND @WPID+1290;
DELETE FROM `waypoint_data` WHERE `id` BETWEEN @WPID+1580 AND @WPID+1620;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
--
(@WPID+1240, 1, 810.844, 2123.51, 271.518, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 2, 808.251, 2120.05, 270.703, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 3, 805.314, 2116.13, 271.872, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 4, 805.567, 2108.93, 272.176, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 5, 805.939, 2105.21, 272.341, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 6, 807.775, 2101.8, 270.51, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 7, 810.516, 2097.45, 272.373, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 8, 814.883, 2094.68, 272.222, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 9, 818.081, 2093.25, 272.093, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 10, 820.707, 2092.72, 269.765, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 11, 824.17, 2092.21, 271.471, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 12, 828.241, 2092.44, 272.615, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 13, 832.714, 2093.75, 273.203, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 14, 836.777, 2095.52, 273.922, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 15, 840.756, 2097.94, 272.143, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 16, 844.796, 2100.22, 270.439, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 17, 847.4, 2102, 271.376, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 18, 849.775, 2104.4, 273.431, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 19, 852.535, 2109.63, 272.614, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 20, 853.084, 2112.12, 271.936, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 21, 852.978, 2114.79, 270.125, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 22, 852.432, 2120.48, 271.807, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 23, 850.606, 2124.14, 272.242, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 24, 847.168, 2129.69, 273.133, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 25, 844.04, 2132.09, 271.963, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 26, 839.46, 2134.1, 270.573, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 27, 835.315, 2135.67, 273.687, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 28, 831.261, 2136.05, 274.269, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 29, 826.048, 2135.51, 273.344, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 30, 822.351, 2134.96, 272.622, NULL, 0, 0, 0, 100, 0),
(@WPID+1240, 31, 817.149, 2131.8, 272.708, NULL, 0, 0, 0, 100, 0),
--
(@WPID+1250, 1, 824.17, 2092.21, 271.471, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 2, 828.241, 2092.44, 272.615, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 3, 832.714, 2093.75, 273.203, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 4, 836.777, 2095.52, 273.922, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 5, 840.756, 2097.94, 272.143, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 6, 844.796, 2100.22, 270.439, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 7, 847.4, 2102, 271.376, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 8, 849.775, 2104.4, 273.431, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 9, 852.535, 2109.63, 272.614, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 10, 853.084, 2112.12, 271.936, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 11, 852.978, 2114.79, 270.125, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 12, 852.432, 2120.48, 271.807, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 13, 850.606, 2124.14, 272.242, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 14, 847.168, 2129.69, 273.133, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 15, 844.04, 2132.09, 271.963, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 16, 839.46, 2134.1, 270.573, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 17, 835.315, 2135.67, 273.687, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 18, 831.261, 2136.05, 274.269, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 19, 826.048, 2135.51, 273.344, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 20, 822.351, 2134.96, 272.622, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 21, 817.149, 2131.8, 272.708, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 22, 810.844, 2123.51, 271.518, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 23, 808.251, 2120.05, 270.703, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 24, 805.314, 2116.13, 271.872, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 25, 805.567, 2108.93, 272.176, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 26, 805.939, 2105.21, 272.341, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 27, 807.775, 2101.8, 270.51, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 28, 810.516, 2097.45, 272.373, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 29, 814.883, 2094.68, 272.222, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 30, 818.081, 2093.25, 272.093, NULL, 0, 0, 0, 100, 0),
(@WPID+1250, 31, 820.707, 2092.72, 269.765, NULL, 0, 0, 0, 100, 0),
--
(@WPID+1260, 1, 852.978, 2114.79, 270.125, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 2, 852.432, 2120.48, 271.807, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 3, 850.606, 2124.14, 272.242, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 4, 847.168, 2129.69, 273.133, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 5, 844.04, 2132.09, 271.963, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 6, 839.46, 2134.1, 270.573, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 7, 835.315, 2135.67, 273.687, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 8, 831.261, 2136.05, 274.269, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 9, 826.048, 2135.51, 273.344, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 10, 822.351, 2134.96, 272.622, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 11, 817.149, 2131.8, 272.708, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 12, 810.844, 2123.51, 271.518, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 13, 808.251, 2120.05, 270.703, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 14, 805.314, 2116.13, 271.872, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 15, 805.567, 2108.93, 272.176, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 16, 805.939, 2105.21, 272.341, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 17, 807.775, 2101.8, 270.51, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 18, 810.516, 2097.45, 272.373, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 19, 814.883, 2094.68, 272.222, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 20, 818.081, 2093.25, 272.093, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 21, 820.707, 2092.72, 269.765, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 22, 824.17, 2092.21, 271.471, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 23, 828.241, 2092.44, 272.615, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 24, 832.714, 2093.75, 273.203, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 25, 836.777, 2095.52, 273.922, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 26, 840.756, 2097.94, 272.143, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 27, 844.796, 2100.22, 270.439, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 28, 847.4, 2102, 271.376, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 29, 849.775, 2104.4, 273.431, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 30, 852.535, 2109.63, 272.614, NULL, 0, 0, 0, 100, 0),
(@WPID+1260, 31, 853.084, 2112.12, 271.936, NULL, 0, 0, 0, 100, 0),
--
(@WPID+1270, 1, 679.607, 2408.13, 275.515, 4.46554, 0, 0, 0, 100, 0),
(@WPID+1270, 2, 677.541, 2400.87, 274.946, 4.85666, 0, 0, 0, 100, 0),
(@WPID+1270, 3, 678.927, 2395.34, 275.264, 5.01217, 0, 0, 0, 100, 0),
(@WPID+1270, 4, 679.93, 2392.23, 275.251, 5.17004, 0, 0, 0, 100, 0),
(@WPID+1270, 5, 681.961, 2388.15, 275.372, 5.28785, 0, 0, 0, 100, 0),
(@WPID+1270, 6, 684.97, 2383.71, 274.984, 5.56117, 0, 0, 0, 100, 0),
(@WPID+1270, 7, 690.925, 2379.25, 274.374, 5.75909, 0, 0, 0, 100, 0),
(@WPID+1270, 8, 694.463, 2377.45, 273.667, 5.83684, 0, 0, 0, 100, 0),
(@WPID+1270, 9, 695.756, 2376.93, 274.388, 6.07246, 0, 0, 0, 100, 0),
(@WPID+1270, 10, 701.245, 2375.79, 275.05, 6.23033, 0, 0, 0, 100, 0),
(@WPID+1270, 11, 706.482, 2375.7, 275.153, 0.302925, 0, 0, 0, 100, 0),
(@WPID+1270, 12, 711.215, 2377.33, 275.438, 0.616299, 0, 0, 0, 100, 0),
(@WPID+1270, 13, 716.927, 2381.38, 272.248, 0.616299, 0, 0, 0, 100, 0),
(@WPID+1270, 14, 719.359, 2383.2, 273.801, 0.851919, 0, 0, 0, 100, 0),
(@WPID+1270, 15, 722.331, 2386.65, 275.481, 1.00978, 0, 0, 0, 100, 0),
(@WPID+1270, 16, 724.193, 2389.62, 275.891, 1.00978, 0, 0, 0, 100, 0),
(@WPID+1270, 17, 726.662, 2393.59, 276.493, 1.12995, 0, 0, 0, 100, 0),
(@WPID+1270, 18, 728.872, 2399.21, 274.473, 1.32787, 0, 0, 0, 100, 0),
(@WPID+1270, 19, 729.293, 2402.68, 274.717, 1.52579, 0, 0, 0, 100, 0),
(@WPID+1270, 20, 728.52, 2407.61, 275.214, 1.79911, 0, 0, 0, 100, 0),
(@WPID+1270, 21, 726.606, 2411.07, 275.995, 2.11248, 0, 0, 0, 100, 0),
(@WPID+1270, 22, 723.957, 2415.48, 276.199, 2.11248, 0, 0, 0, 100, 0),
(@WPID+1270, 23, 721.531, 2418.13, 274.696, 2.3858, 0, 0, 0, 100, 0),
(@WPID+1270, 24, 718.388, 2421.09, 276.384, 2.3858, 0, 0, 0, 100, 0),
(@WPID+1270, 25, 717.355, 2422.04, 277.072, 2.50361, 0, 0, 0, 100, 0),
(@WPID+1270, 26, 712.82, 2425.33, 276.266, 2.70153, 0, 0, 0, 100, 0),
(@WPID+1270, 27, 708.791, 2427.19, 275.148, 2.8594, 0, 0, 0, 100, 0),
(@WPID+1270, 28, 704.638, 2428.37, 275.363, 2.97721, 0, 0, 0, 100, 0),
(@WPID+1270, 29, 698.914, 2428.63, 275.059, 3.5262, 0, 0, 0, 100, 0),
(@WPID+1270, 30, 697.251, 2427.79, 275.059, 3.84193, 0, 0, 0, 100, 0),
(@WPID+1270, 31, 693.323, 2424.48, 274.191, 3.84193, 0, 0, 0, 100, 0),
(@WPID+1270, 32, 688.677, 2420.57, 274.58, 3.84193, 0, 0, 0, 100, 0),
(@WPID+1270, 33, 685.374, 2417.78, 276.457, 3.84193, 0, 0, 0, 100, 0),
(@WPID+1270, 34, 683.098, 2414.4, 275.706, 4.1553, 0, 0, 0, 100, 0),
(@WPID+1270, 35, 681.059, 2411.13, 275.887, 4.1553, 0, 0, 0, 100, 0),
--
(@WPID+1280, 1, 726.174, 2408.9, 276.176, 1.96874, 0, 0, 0, 100, 0),
(@WPID+1280, 2, 722.791, 2414.82, 276.54, 2.18473, 0, 0, 0, 100, 0),
(@WPID+1280, 3, 720.432, 2417.4, 274.4, 2.38029, 0, 0, 0, 100, 0),
(@WPID+1280, 4, 715.872, 2421.74, 277.481, 2.38029, 0, 0, 0, 100, 0),
(@WPID+1280, 5, 713.056, 2423.17, 277.026, 2.72194, 0, 0, 0, 100, 0),
(@WPID+1280, 6, 707.616, 2425.59, 275.472, 2.72194, 0, 0, 0, 100, 0),
(@WPID+1280, 7, 702.663, 2427.67, 275.294, 2.87745, 0, 0, 0, 100, 0),
(@WPID+1280, 8, 696.946, 2426.02, 275.095, 3.43508, 0, 0, 0, 100, 0),
(@WPID+1280, 9, 693.295, 2423.41, 274.499, 3.82385, 0, 0, 0, 100, 0),
(@WPID+1280, 10, 691.084, 2421.49, 273.462, 3.85527, 0, 0, 0, 100, 0),
(@WPID+1280, 11, 687.698, 2417.64, 275.139, 4.01313, 0, 0, 0, 100, 0),
(@WPID+1280, 12, 683.264, 2412.37, 275.341, 4.01313, 0, 0, 0, 100, 0),
(@WPID+1280, 13, 679.808, 2408.26, 275.505, 4.01313, 0, 0, 0, 100, 0),
(@WPID+1280, 14, 677.572, 2403.82, 274.973, 4.40662, 0, 0, 0, 100, 0),
(@WPID+1280, 15, 677.509, 2398.34, 275.115, 4.95561, 0, 0, 0, 100, 0),
(@WPID+1280, 16, 679.962, 2391.42, 275.322, 5.11348, 0, 0, 0, 100, 0),
(@WPID+1280, 17, 683.962, 2385.55, 275.132, 5.3491, 0, 0, 0, 100, 0),
(@WPID+1280, 18, 686.043, 2382.74, 274.94, 5.3491, 0, 0, 0, 100, 0),
(@WPID+1280, 19, 690.594, 2377.98, 274.59, 5.66168, 0, 0, 0, 100, 0),
(@WPID+1280, 20, 693.107, 2376.78, 273.585, 5.93736, 0, 0, 0, 100, 0),
(@WPID+1280, 21, 697.717, 2375.12, 274.877, 5.93736, 0, 0, 0, 100, 0),
(@WPID+1280, 22, 702.069, 2374.7, 275.054, 0.047659, 0, 0, 0, 100, 0),
(@WPID+1280, 23, 705.8, 2375.56, 275.134, 0.323334, 0, 0, 0, 100, 0),
(@WPID+1280, 24, 710.227, 2377.05, 275.396, 0.323334, 0, 0, 0, 100, 0),
(@WPID+1280, 25, 712.81, 2378.54, 275.593, 0.794573, 0, 0, 0, 100, 0),
(@WPID+1280, 26, 716.733, 2382.53, 272.139, 0.794573, 0, 0, 0, 100, 0),
(@WPID+1280, 27, 720.578, 2386.45, 274.829, 0.794573, 0, 0, 0, 100, 0),
(@WPID+1280, 28, 722.589, 2389.16, 275.402, 0.990138, 0, 0, 0, 100, 0),
(@WPID+1280, 29, 725.15, 2393.06, 276.432, 0.990138, 0, 0, 0, 100, 0),
(@WPID+1280, 30, 726.718, 2396.7, 275.232, 1.22576, 0, 0, 0, 100, 0),
(@WPID+1280, 31, 727.429, 2398.67, 274.811, 1.22576, 0, 0, 0, 100, 0),
(@WPID+1280, 32, 727.583, 2400.88, 274.672, 1.52735, 0, 0, 0, 100, 0),
(@WPID+1280, 33, 727.714, 2403.91, 275.075, 1.52735, 0, 0, 0, 100, 0),
--
(@WPID+1290, 1, 703.972, 2375.87, 275.048, 0.310768, 0, 0, 0, 100, 0),
(@WPID+1290, 2, 711.636, 2378.34, 275.592, 0.310768, 0, 0, 0, 100, 0),
(@WPID+1290, 3, 716.419, 2380.99, 272.341, 0.546388, 0, 0, 0, 100, 0),
(@WPID+1290, 4, 719.999, 2384.13, 274.307, 0.784364, 0, 0, 0, 100, 0),
(@WPID+1290, 5, 723.521, 2388.63, 275.41, 0.942229, 0, 0, 0, 100, 0),
(@WPID+1290, 6, 726.04, 2392.29, 276.604, 0.982284, 0, 0, 0, 100, 0),
(@WPID+1290, 7, 728.087, 2397.22, 275.028, 1.25796, 0, 0, 0, 100, 0),
(@WPID+1290, 8, 728.682, 2401.48, 274.634, 1.49593, 0, 0, 0, 100, 0),
(@WPID+1290, 9, 728.466, 2406.12, 275.169, 1.69386, 0, 0, 0, 100, 0),
(@WPID+1290, 10, 727.066, 2410.55, 276.223, 1.92947, 0, 0, 0, 100, 0),
(@WPID+1290, 11, 724.352, 2414.59, 275.907, 2.2452, 0, 0, 0, 100, 0),
(@WPID+1290, 12, 722.525, 2416.87, 274.881, 2.2452, 0, 0, 0, 100, 0),
(@WPID+1290, 13, 720.713, 2418.35, 274.529, 2.46669, 0, 0, 0, 100, 0),
(@WPID+1290, 14, 716.975, 2421.34, 277.177, 2.46669, 0, 0, 0, 100, 0),
(@WPID+1290, 15, 714.783, 2423.09, 277.773, 2.46669, 0, 0, 0, 100, 0),
(@WPID+1290, 16, 711.318, 2425.87, 275.804, 2.46669, 0, 0, 0, 100, 0),
(@WPID+1290, 17, 707.324, 2427.73, 275.403, 2.78006, 0, 0, 0, 100, 0),
(@WPID+1290, 18, 703.216, 2428.48, 275.167, 3.05574, 0, 0, 0, 100, 0),
(@WPID+1290, 19, 698.686, 2427.65, 275.135, 3.44922, 0, 0, 0, 100, 0),
(@WPID+1290, 20, 694.942, 2425.59, 274.873, 3.76495, 0, 0, 0, 100, 0),
(@WPID+1290, 21, 691.81, 2423.34, 273.396, 3.76495, 0, 0, 0, 100, 0),
(@WPID+1290, 22, 689.245, 2420.97, 274.229, 3.96052, 0, 0, 0, 100, 0),
(@WPID+1290, 23, 685.975, 2417.48, 276.107, 3.96052, 0, 0, 0, 100, 0),
(@WPID+1290, 24, 683.66, 2413.84, 275.497, 4.19614, 0, 0, 0, 100, 0),
(@WPID+1290, 25, 681.469, 2409.98, 276.117, 4.19614, 0, 0, 0, 100, 0),
(@WPID+1290, 26, 679.742, 2406.94, 275.407, 4.19614, 0, 0, 0, 100, 0),
(@WPID+1290, 27, 677.567, 2402.94, 274.87, 4.43175, 0, 0, 0, 100, 0),
(@WPID+1290, 28, 677.36, 2396.83, 275.272, 5.02316, 0, 0, 0, 100, 0),
(@WPID+1290, 29, 680.055, 2390.77, 275.318, 5.21872, 0, 0, 0, 100, 0),
(@WPID+1290, 30, 682.824, 2386.59, 275.217, 5.33653, 0, 0, 0, 100, 0),
(@WPID+1290, 31, 685.852, 2383.37, 274.938, 5.5321, 0, 0, 0, 100, 0),
(@WPID+1290, 32, 689.336, 2380.82, 274.842, 5.68996, 0, 0, 0, 100, 0),
(@WPID+1290, 33, 691.756, 2379.19, 274.237, 5.68996, 0, 0, 0, 100, 0),
(@WPID+1290, 34, 693.892, 2377.75, 273.619, 5.68996, 0, 0, 0, 100, 0),
(@WPID+1290, 35, 696.812, 2376.61, 274.761, 5.96564, 0, 0, 0, 100, 0),
--
(@WPID+1580, 1, 849.918, 2410.45, 281.415, NULL, 0, 0, 0, 100, 0),
(@WPID+1580, 2, 852.224, 2392.5, 281.41, NULL, 0, 0, 0, 100, 0),
(@WPID+1580, 3, 852.793, 2380.98, 279.463, NULL, 0, 0, 0, 100, 0),
(@WPID+1580, 4, 848.47, 2369.03, 281.41, NULL, 0, 0, 0, 100, 0),
(@WPID+1580, 5, 829.637, 2352.83, 281.466, NULL, 0, 0, 0, 100, 0),
(@WPID+1580, 6, 811.32, 2339.8, 281.466, NULL, 0, 0, 0, 100, 0),
(@WPID+1580, 7, 792.098, 2319.68, 281.463, NULL, 0, 0, 0, 100, 0),
(@WPID+1580, 8, 780.123, 2303.21, 281.463, NULL, 0, 0, 0, 100, 0),
(@WPID+1580, 9, 792.098, 2319.68, 281.463, NULL, 0, 0, 0, 100, 0),
(@WPID+1580, 10, 811.32, 2339.8, 281.466, NULL, 0, 0, 0, 100, 0),
(@WPID+1580, 11, 829.637, 2352.83, 281.466, NULL, 0, 0, 0, 100, 0),
(@WPID+1580, 12, 848.47, 2369.03, 281.41, NULL, 0, 0, 0, 100, 0),
(@WPID+1580, 13, 852.793, 2380.98, 279.463, NULL, 0, 0, 0, 100, 0),
(@WPID+1580, 14, 852.224, 2392.5, 281.41, NULL, 0, 0, 0, 100, 0),
--
(@WPID+1590, 1, 789.62, 2469.27, 289.315, NULL, 0, 0, 0, 100, 0),
(@WPID+1590, 2, 804.403, 2452.14, 289.714, NULL, 0, 0, 0, 100, 0),
(@WPID+1590, 3, 814.369, 2444.63, 289.217, NULL, 0, 0, 0, 100, 0),
(@WPID+1590, 4, 830.958, 2442.77, 290.275, NULL, 0, 0, 0, 100, 0),
(@WPID+1590, 5, 852.413, 2442.34, 290.133, NULL, 0, 0, 0, 100, 0),
(@WPID+1590, 6, 867.035, 2456.66, 286.162, NULL, 0, 0, 0, 100, 0),
(@WPID+1590, 7, 877.701, 2463.61, 289.446, NULL, 0, 0, 0, 100, 0),
(@WPID+1590, 8, 867.035, 2456.66, 286.162, NULL, 0, 0, 0, 100, 0),
(@WPID+1590, 9, 852.413, 2442.34, 290.133, NULL, 0, 0, 0, 100, 0),
(@WPID+1590, 10, 830.958, 2442.77, 290.275, NULL, 0, 0, 0, 100, 0),
(@WPID+1590, 11, 814.369, 2444.63, 289.217, NULL, 0, 0, 0, 100, 0),
(@WPID+1590, 12, 804.403, 2452.14, 289.714, NULL, 0, 0, 0, 100, 0),
--
(@WPID+1600, 1, 839.43, 2270.68, 280.97, NULL, 0, 0, 0, 100, 0),
(@WPID+1600, 2, 856.441, 2270.89, 285.449, NULL, 0, 0, 0, 100, 0),
(@WPID+1600, 3, 882.455, 2269.99, 297.41, NULL, 0, 0, 0, 100, 0),
(@WPID+1600, 4, 819.469, 2269.54, 279.311, NULL, 0, 0, 0, 100, 0),
(@WPID+1600, 5, 882.455, 2269.99, 297.41, NULL, 0, 0, 0, 100, 0),
(@WPID+1600, 6, 856.441, 2270.89, 285.449, NULL, 0, 0, 0, 100, 0),
--
(@WPID+1610, 1, 712.838, 2563.02, 279.908, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 2, 716.826, 2549.42, 281.293, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 3, 710.802, 2538.4, 281.111, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 4, 702.468, 2522.21, 276.97, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 5, 704.42, 2502.77, 277.125, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 6, 708.142, 2490.21, 278.97, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 7, 697.242, 2484.79, 281.574, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 8, 685.678, 2474.66, 280.242, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 9, 671.926, 2459.21, 275.56, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 10, 666.722, 2395.18, 275.66, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 11, 701.561, 2361.56, 275.098, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 12, 715.282, 2346.63, 275.098, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 13, 720.391, 2325.9, 275.184, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 14, 745.228, 2296.32, 281.379, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 15, 764.48, 2275.63, 281.392, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 16, 787.955, 2252.67, 281.465, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 17, 793.728, 2217.8, 281.396, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 18, 797.922, 2197.9, 276.445, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 19, 789.26, 2181.36, 272.513, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 20, 797.922, 2197.9, 276.445, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 21, 793.728, 2217.8, 281.396, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 22, 787.955, 2252.67, 281.465, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 23, 764.48, 2275.63, 281.392, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 24, 745.228, 2296.32, 281.379, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 25, 720.391, 2325.9, 275.184, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 26, 715.282, 2346.63, 275.098, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 27, 701.561, 2361.56, 275.098, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 28, 666.722, 2395.18, 275.66, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 29, 671.926, 2459.21, 275.56, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 30, 685.678, 2474.66, 280.242, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 31, 697.242, 2484.79, 281.574, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 32, 708.142, 2490.21, 278.97, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 33, 704.42, 2502.77, 277.125, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 34, 702.468, 2522.21, 276.97, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 35, 710.802, 2538.4, 281.111, NULL, 0, 0, 0, 100, 0),
(@WPID+1610, 36, 716.826, 2549.42, 281.293, NULL, 0, 0, 0, 100, 0),
--
(@WPID+1620, 1, 796.451, 2239.1, 281.465, NULL, 0, 0, 0, 100, 0),
(@WPID+1620, 2, 818.185, 2214.7, 281.472, NULL, 0, 0, 0, 100, 0),
(@WPID+1620, 3, 828.185, 2206.38, 281.572, NULL, 0, 0, 0, 100, 0);

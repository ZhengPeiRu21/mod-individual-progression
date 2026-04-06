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

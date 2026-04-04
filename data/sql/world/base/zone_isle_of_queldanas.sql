DELETE FROM `game_event_creature`       WHERE `eventEntry` BETWEEN 101 AND 115;
DELETE FROM `game_event_creature_quest` WHERE `eventEntry` BETWEEN 101 AND 115;
DELETE FROM `game_event_gameobject`     WHERE `eventEntry` BETWEEN 101 AND 115;
DELETE FROM `game_event_npc_vendor`     WHERE `eventEntry` BETWEEN 101 AND 115;

-- archers should have bow equiped
UPDATE `creature_addon` SET `bytes2` = 2 WHERE `guid` IN
(53981, 53982, 54004, 54023, 54028, 54029, 54030, 54031, 54032, 54034, 54038, 54092, 54113, 54114, 54143, 54165, 54176, 54177, 54178, 54181, 54182, 54183, 54184, 54185, 56315, 
65680, 65681, 65682, 65683, 65684, 65685, 65686, 65687, 65688, 65689, 65690, 65691, 65692, 65693, 65694, 65695, 65696, 65697, 65698, 65699, 65700, 65701, 65702, 
94407, 94408, 94409, 94410, 94411, 94412, 94413, 94414, 94415, 94416, 94417, 94418, 94419, 94420, 94422, 94423, 94424, 94425, 94426, 94427, 94428, 94429, 94430, 94431);

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


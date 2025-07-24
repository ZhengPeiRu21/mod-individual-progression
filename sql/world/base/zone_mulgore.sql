UPDATE `creature_template` SET `faction` = 14  WHERE `entry` IN (2966, 8554);       -- Battleboar, Chief Sharptusk Thornmantle
UPDATE `creature_template` SET `faction` = 57  WHERE `entry` IN (2989, 2990);       -- Bael'dun Digger, Appraiser
UPDATE `creature_template` SET `faction` = 111 WHERE `entry` IN (2952, 2953, 2954); -- Bristleback Quilboar, Shaman, Battleboar

UPDATE `creature_template` SET `subname` = 'Journeyman Leatherworker'  WHERE `entry` = 3069;  -- Chaw Stronghide <Journeyman Leatherworker>
UPDATE `creature_template` SET `subname` = 'Armorer and Shieldcrafter' WHERE `entry` = 3075;  -- Bronk Steelrage
UPDATE `creature_template` SET `subname` = 'Fisherman'                 WHERE `entry` = 5938;  -- Uthan Stillwater <Fisherman>
UPDATE `creature_template` SET `subname` = 'Skinner'                   WHERE `entry` = 6290;  -- Yonn Deepcut <Skinner>
UPDATE `creature_template` SET `subname` = 'Journeyman Engineer'       WHERE `entry` = 10993; -- Twizwick Sprocketgrind <Journeyman Engineer>

UPDATE `creature_template` SET `minlevel` = 55, `maxlevel` = 55 WHERE `entry` IN (3210, 3211, 7975); -- guards


DELETE FROM `npc_trainer` WHERE `ID` IN (3069, 3690, 5938, 5939, 6290, 10993);
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES 
(3069,  -380000), -- Chaw Stronghide <Journeyman Leatherworker>
(3690,  -450000), -- Kar Stormsinger <Riding Trainer>
(5938,  -360000), -- Uthan Stillwater <Fisherman>
(5939,  -350000), -- Vira Younghoof <First Aid Trainer>
(6290,  -400000), -- Yonn Deepcut <Skinner>
(10993, -340000); -- Twizwick Sprocketgrind <Journeyman Engineer>


-- The Hunt Begins
DELETE FROM `quest_offer_reward` WHERE `ID` = 747;
INSERT INTO `quest_offer_reward` (`ID`, `RewardText`) VALUES 
(747, 'The tauren of Narache thank you, $n. You show much promise.');

-- The Hunter's Way
DELETE FROM `quest_offer_reward` WHERE `ID` = 861;
INSERT INTO `quest_offer_reward` (`ID`, `RewardText`) VALUES 
(861, 'Skorn Whitecloud is a wise tauren. He has hunted for years and years, and although his body is old, his spirit burns fiercely. We are honored to have him with us.$B$B
 If Skorn sent you to me, then you too must have the hunter\'s spirit. And to have gathered these claws shows your burgeoning skills.$B$BPerhaps you are ready to walk the path.');

-- The Hunt Begins
DELETE FROM `quest_request_items` WHERE `ID` = 747;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `CompletionText`) VALUES 
(747, 1, 'Providing meat and feathers for the tribe is the first step in proving yourself as a hunter before the Chief.');

-- Wildmane Cleansing
DELETE FROM `quest_request_items` WHERE `ID` = 760;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `CompletionText`) VALUES 
(760, 1, 'The last water well remains fetid and poisonous, $N. You must not delay!');


UPDATE `quest_template` SET `Flags` = 0 WHERE `ID` = 1518; -- Call of Earth (Shaman)

UPDATE `quest_template_addon` SET `SpecialFlags` = 0 WHERE `ID` IN (
747,  -- The Hunt Begins
750,  -- The Hunt Continues
752,  -- A Humble Task
753,  -- A Humble Task
755,  -- Rites of the Earthmother
757,  -- Rite of Strength
763,  -- Rites of the Earthmother
780,  -- The Battleboars
1518, -- Call of Earth (Shaman)
1520, -- Call of Earth (Shaman)
1521, -- Call of Earth (Shaman)
1656, -- A Task Unfinished
3093, -- Rune-Inscribed Note
3376  -- Break Sharptusk!
);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (3058, 3068, 5807);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (3058, 3068, 5807);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(3058, 0, 0, 0, 9, 0, 100, 0, 11000, 15000, 11000, 15000, 0, 5, 11, 6730, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Arra chea   - Within 0-5 Range - Cast Head Butt'),
(3068, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 232, 269080, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Mazzranache - On Resspawn - Start Waypoint'),
(3068, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 10022, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Mazzranache - On Reset  - Cast Deadly Poison'),
(3068, 0, 2, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 6268, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Mazzranache - On Aggro  - Cast Rushing Charge'),
(5807, 0, 0, 0, 9, 0, 100, 0, 8000, 12000, 8000, 12000, 0, 5, 11, 12166, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'The Rake    - Within 0-5 Range - Cast Muscle Tear');

    
DELETE FROM `creature_addon` WHERE `guid` = 26908;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(26908, 269080, 0, 0, 0, 0, 0, NULL);

DELETE FROM `waypoint_data` WHERE `id` = 269080;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
(269080,  1, -1722.14, -550.386, -14.7598, NULL, 0, 0, 0, 100, 0),
(269080,  2, -1705.61, -569.055, -19.4067, NULL, 0, 0, 0, 100, 0),
(269080,  3, -1682.04, -591.91, -25.4708, NULL, 0, 0, 0, 100, 0),
(269080,  4, -1662.63, -603.838, -30.1185, NULL, 0, 0, 0, 100, 0),
(269080,  5, -1639.97, -607.133, -35.8754, NULL, 0, 0, 0, 100, 0),
(269080,  6, -1616.22, -613.15, -42.4359, NULL, 0, 0, 0, 100, 0),
(269080,  7, -1595.86, -618.308, -47.3956, NULL, 0, 0, 0, 100, 0),
(269080,  8, -1574.93, -616.712, -51.7647, NULL, 0, 0, 0, 100, 0),
(269080,  9, -1550.95, -605.914, -55.6474, NULL, 0, 0, 0, 100, 0),
(269080, 10, -1537.55, -596.276, -56.3861, NULL, 0, 0, 0, 100, 0),
(269080, 11, -1532.89, -586.289, -56.2095, NULL, 0, 0, 0, 100, 0),
(269080, 12, -1532.3, -566.583, -55.7341, NULL, 0, 0, 0, 100, 0),
(269080, 13, -1536.28, -539.553, -55.2342, NULL, 0, 0, 0, 100, 0),
(269080, 14, -1533.07, -522.97, -54.4489, NULL, 0, 0, 0, 100, 0),
(269080, 15, -1522.68, -506.3, -54.3973, NULL, 0, 0, 0, 100, 0),
(269080, 16, -1519.62, -488.083, -52.5074, NULL, 0, 0, 0, 100, 0),
(269080, 17, -1524.13, -467.337, -48.9335, NULL, 0, 0, 0, 100, 0),
(269080, 18, -1526.95, -424.435, -45.2492, NULL, 0, 0, 0, 100, 0),
(269080, 19, -1531.14, -398.722, -43.8176, NULL, 0, 0, 0, 100, 0),
(269080, 20, -1538.91, -374.683, -42.8131, NULL, 0, 0, 0, 100, 0),
(269080, 21, -1545.47, -354.239, -39.0446, NULL, 0, 0, 0, 100, 0),
(269080, 22, -1552.81, -335.938, -35.917, NULL, 0, 0, 0, 100, 0),
(269080, 23, -1566.63, -312.613, -31.0947, NULL, 0, 0, 0, 100, 0),
(269080, 24, -1584.27, -296.213, -27.3011, NULL, 0, 0, 0, 100, 0),
(269080, 25, -1597.27, -278.386, -23.4966, NULL, 0, 0, 0, 100, 0),
(269080, 26, -1610.64, -257.862, -19.3983, NULL, 0, 0, 0, 100, 0),
(269080, 27, -1621, -236.845, -18.9327, NULL, 0, 0, 0, 100, 0),
(269080, 28, -1636.78, -206.561, -16.684, NULL, 0, 0, 0, 100, 0),
(269080, 29, -1648.04, -178.252, -12.0433, NULL, 0, 0, 0, 100, 0),
(269080, 30, -1656.17, -153.199, -9.43765, NULL, 0, 0, 0, 100, 0),
(269080, 31, -1657.82, -126.837, -8.72994, NULL, 0, 0, 0, 100, 0),
(269080, 32, -1668.55, -97.9253, -8.34947, NULL, 0, 0, 0, 100, 0),
(269080, 33, -1681.95, -76.5867, -9.11107, NULL, 0, 0, 0, 100, 0),
(269080, 34, -1700.51, -57.342, -5.64828, NULL, 0, 0, 0, 100, 0),
(269080, 35, -1719.51, -47.7012, -2.54774, NULL, 0, 0, 0, 100, 0),
(269080, 36, -1747.72, -46.3402, -5.4005, NULL, 0, 0, 0, 100, 0),
(269080, 37, -1772.79, -50.129, -7.08613, NULL, 0, 0, 0, 100, 0),
(269080, 38, -1798.4, -58.4037, -5.76034, NULL, 0, 0, 0, 100, 0),
(269080, 39, -1811.88, -70.5313, -7.68982, NULL, 0, 0, 0, 100, 0),
(269080, 40, -1820.73, -93.7355, -9.2501, NULL, 0, 0, 0, 100, 0),
(269080, 41, -1822.1, -112.172, -8.20732, NULL, 0, 0, 0, 100, 0),
(269080, 42, -1834.29, -123.408, -9.03176, NULL, 0, 0, 0, 100, 0),
(269080, 43, -1851.19, -129.656, -8.52712, NULL, 0, 0, 0, 100, 0),
(269080, 44, -1867.92, -137.048, -6.59658, NULL, 0, 0, 0, 100, 0),
(269080, 45, -1878.32, -150.986, -5.8911, NULL, 0, 0, 0, 100, 0),
(269080, 46, -1887.57, -173.195, -6.12971, NULL, 0, 0, 0, 100, 0),
(269080, 47, -1889.37, -196.466, -8.58793, NULL, 0, 0, 0, 100, 0),
(269080, 48, -1883.97, -217.889, -9.40669, NULL, 0, 0, 0, 100, 0),
(269080, 49, -1876.46, -244.283, -9.555, NULL, 0, 0, 0, 100, 0),
(269080, 50, -1864.45, -266.181, -7.23699, NULL, 0, 0, 0, 100, 0),
(269080, 51, -1850.99, -284.616, -4.7108, NULL, 0, 0, 0, 100, 0),
(269080, 52, -1830.57, -303.767, -6.94358, NULL, 0, 0, 0, 100, 0),
(269080, 53, -1815.14, -318.23, -9.07484, NULL, 0, 0, 0, 100, 0),
(269080, 54, -1800.89, -336.331, -9.26187, NULL, 0, 0, 0, 100, 0),
(269080, 55, -1782.61, -356.073, -9.42632, NULL, 0, 0, 0, 100, 0),
(269080, 56, -1756.99, -378.227, -12.8384, NULL, 0, 0, 0, 100, 0),
(269080, 57, -1745.2, -402.325, -16.7898, NULL, 0, 0, 0, 100, 0),
(269080, 58, -1740.74, -423.93, -14.3259, NULL, 0, 0, 0, 100, 0),
(269080, 59, -1723.81, -452.481, -10.9682, NULL, 0, 0, 0, 100, 0),
(269080, 60, -1706.64, -461.978, -10.5846, NULL, 0, 0, 0, 100, 0),
(269080, 61, -1701.38, -480.422, -10.4956, NULL, 0, 0, 0, 100, 0),
(269080, 62, -1709.83, -507.869, -12.8309, NULL, 0, 0, 0, 100, 0),
(269080, 63, -1729.44, -528.724, -13.8673, NULL, 0, 0, 0, 100, 0),
(269080, 64, -1731.65, -542.165, -13.1692, NULL, 0, 0, 0, 100, 0);

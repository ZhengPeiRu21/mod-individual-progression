-- Alliance Collector Npcs
DELETE FROM `creature` WHERE `id1` IN (15383, 15431, 15432, 15434, 15437, 15445, 15446, 15448, 15450, 15451, 15452, 15453, 15455, 15456, 15457);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(3115452,15383,0,0,0,0,0,1,1,1,-4914.29,-1228.1,501.65,3.66003,300,0,0,13495,0,0,0,0,0,'',0),
(3115450,15431,0,0,0,0,0,1,1,1,-4915.32,-1220.84,501.658,4.07551,300,0,0,14355,0,0,0,0,0,'',0),
(3115451,15432,0,0,0,0,0,1,1,0,-4913.26,-1222.67,501.654,4.02445,300,0,0,15260,0,0,0,0,0,'',0),
(3115453,15434,0,0,0,0,0,1,1,1,-4946.99,-1281.73,501.675,0.977894,300,0,0,13495,0,0,0,0,0,'',0),
(3115457,15437,0,0,0,0,0,1,1,1,-4942.68,-1284.58,501.674,1.52846,300,0,0,14355,0,0,0,0,0,'',0),
(3115458,15445,0,0,0,0,0,1,1,1,-4944.6,-1283.01,501.674,1.29677,300,0,0,15260,0,0,0,0,0,'',0),
(3115446,15446,0,0,0,0,0,1,1,1,-4959.54,-1176.73,501.66,3.66733,300,0,0,13495,0,0,0,0,0,'',0),
(3115448,15448,0,0,0,0,0,1,1,1,-4960.88,-1175.1,501.66,3.82756,300,0,0,14355,0,0,0,0,0,'',0),
(3115449,15450,0,0,0,0,0,1,1,1,-4965.87,-1174.28,501.648,3.79535,300,0,0,15260,0,0,0,0,0,'',0),
(3115443,15451,0,0,0,0,0,1,1,1,-4970.42,-1152.78,501.658,3.61236,300,0,0,13495,0,0,0,0,0,'',0),
(3115444,15452,0,0,0,0,0,1,1,0,-4971.47,-1150.77,501.655,3.5888,300,0,0,14355,0,0,0,0,0,'',0),
(3115445,15453,0,0,0,0,0,1,1,1,-4974.99,-1149.58,501.649,4.06239,300,0,0,15260,0,0,0,0,0,'',0),
(3115442,15455,0,0,0,0,0,1,1,1,-4936.96,-1280.96,501.671,2.38871,300,0,0,13495,0,0,0,0,0,'',0),
(3115441,15456,0,0,0,0,0,1,1,0,-4934.81,-1279.79,501.668,2.64632,300,0,0,14355,0,0,0,0,0,'',0),
(3115440,15457,0,0,0,0,0,1,1,1,-4933.33,-1278.1,501.666,2.70444,300,0,0,15260,0,0,0,0,0,'',0);

-- Horde Collector Npcs
DELETE FROM `creature` WHERE `id1` IN (15459, 15460, 15469, 15477, 15508, 15512, 15515, 15522, 15525, 15528, 15529, 15532, 15533, 15534, 15535);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(3115472,15459,0,0,1,0,0,1,1,1,1671.67,-4107.41,36.0965,3.85839,300,0,0,13495,0,0,0,0,0,'',0),
(3115470,15460,0,0,1,0,0,1,1,1,1657.41,-4112.72,33.7797,1.90117,300,0,0,14355,0,0,0,0,0,'',0),
(3115471,15469,0,0,1,0,0,1,1,1,1669.59,-4117.64,35.6868,2.63395,300,0,0,15260,0,0,0,0,0,'',0),
(3115467,15477,0,0,1,0,0,1,1,1,1615.13,-4139.08,33.6528,1.23872,300,0,0,13495,0,0,0,0,0,'',0),
(3115468,15508,0,0,1,0,0,1,1,1,1620.51,-4139.6,33.9276,2.16785,300,0,0,14355,0,0,0,0,0,'',0),
(3115469,15512,0,0,1,0,0,1,1,1,1625.6,-4134.17,32.9404,2.72077,300,0,0,15260,0,0,0,0,0,'',0),
(3115473,15515,0,0,1,0,0,1,1,1,1588.28,-4180.86,40.2650,2.8524,300,0,0,13495,0,0,0,0,0,'',0),
(3115475,15522,0,0,1,0,0,1,1,1,1595.8,-4159.28,37.0467,3.07632,300,0,0,14355,0,0,0,0,0,'',0),
(3115474,15525,0,0,1,0,0,1,1,1,1597.44,-4176.43,40.382,3.18315,300,0,0,15260,0,0,0,0,0,'',0),
(3115461,15528,0,0,1,0,0,1,1,1,1566.1,-4122.68,37.3608,6.23736,300,0,0,13495,0,0,0,0,0,'',0),
(3115462,15529,0,0,1,0,0,1,1,0,1571.74,-4119.56,36.6828,4.67363,300,0,0,14355,0,0,0,0,0,'',0),
(3115463,15532,0,0,1,0,0,1,1,1,1567.14,-4126.69,37.2995,0.075908,300,0,0,15260,0,0,0,0,0,'',0),
(3115464,15533,0,0,1,0,0,1,1,1,1642.74,-4089.04,36.6118,3.70578,300,0,0,13495,0,0,0,0,0,'',0),
(3115466,15534,0,0,1,0,0,1,1,1,1632.55,-4091.73,35.2461,5.86929,300,0,0,14355,0,0,0,0,0,'',0),
(3115465,15535,0,0,1,0,0,1,1,1,1634.37,-4087.58,36.2655,5.29543,300,0,0,15260,0,0,0,0,0,'',0);

-- Alliance Commendation Npcs
DELETE FROM `creature` WHERE `id1` IN (15731, 15733, 15734, 15735, 21969);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(3115489,15731,0,0,0,0,0,1,1,0,-4938.75,-1206.29,501.658,4.03146,300,0,0,2614,0,0,0,0,0,'',0),
(3115490,15733,0,0,0,0,0,1,1,0,-4936.65,-1209.73,501.658,3.95796,300,0,0,2614,0,0,0,0,0,'',0),
(3115492,15734,0,0,0,0,0,1,1,0,-4943.13,-1204.78,501.658,4.62712,300,0,0,2614,0,0,0,0,0,'',0),
(3115491,15735,0,0,0,0,0,1,1,0,-4936.06,-1214.82,501.639,3.21465,300,0,0,2614,0,0,0,0,0,'',0),
(3115493,21969,0,0,0,0,0,1,1,0,-4946.71,-1206.24,501.658,5.19933,300,0,0,2614,0,0,0,0,0,'',0);

-- Horde Commendation Npcs
DELETE FROM `creature` WHERE `id1` IN (15736, 15737, 15738, 15739, 21968);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(3115482,15736,0,0,1,0,0,1,1,0,1592.17,-4097.91,34.9759,6.25645,300,0,0,2614,0,0,0,0,0,'',0),
(3115484,15737,0,0,1,0,0,1,1,0,1595.6,-4091.94,35.8097,5.20323,300,0,0,2614,0,0,0,0,0,'',0),
(3115485,15738,0,0,1,0,0,1,1,0,1598.27,-4090.5,35.8736,5.13568,300,0,0,2614,0,0,0,0,0,'',0),
(3115483,15739,0,0,1,0,0,1,1,0,1592.84,-4094.01,35.6404,5.82527,300,0,0,2614,0,0,0,0,0,'',0),
(3115486,21968,0,0,1,0,0,1,1,0,1601.01,-4091.87,35.5195,4.52778,300,0,0,2614,0,0,0,0,0,'',0);

-- War Effort Commanders
DELETE FROM `creature` WHERE `id1` IN (15700, 15701);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(3115499,15701,0,0,0,0,0,1,1,1,-4961.68,-1243.19,501.672,2.46488,300,0,1,30520,0,2,0,134254592,0,'',0),
(3115502,15700,0,0,1,0,0,1,1,1,1581.39,-4202.27,41.8233,4.96133,300,0,1,30520,0,2,0,134217728,0,'',0);

SET @NPC := 15701;
SET @PATH := @NPC * 10;
DELETE FROM `waypoint_data` WHERE `id` = @PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(@PATH, 1, -4975.995605, -1231.047607, 501.676392, 2.419811, 0, 0, 0, 100, 0),
(@PATH, 2, -4994.347168, -1208.347168, 501.676392, 2.021614, 0, 0, 0, 100, 0),
(@PATH, 3, -4992.331543, -1191.743164, 501.661407, 1.034368, 0, 0, 0, 100, 0),
(@PATH, 4, -4977.826172, -1184.909424, 501.659943, 6.023217, 0, 0, 0, 100, 0),
(@PATH, 5, -4963.172852, -1191.700562, 501.659943, 5.594390, 0, 0, 0, 100, 0),
(@PATH, 6, -4953.628418, -1206.568237, 501.659943, 5.093306, 0, 0, 0, 100, 0),
(@PATH, 7, -4944.017578, -1226.812378, 501.659241, 4.541171, 0, 0, 0, 100, 0),
(@PATH, 8, -4951.852051, -1236.240234, 501.664520, 3.806038, 0, 0, 0, 100, 0);

DELETE FROM `creature_template_addon` WHERE `entry` IN (@NPC);
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES
(@NPC,@PATH,14347,0,1,0,0, '');

SET @NPC := 15700;
SET @PATH := @NPC * 10;
DELETE FROM `waypoint_data` WHERE `id` = @PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(@PATH, 1, 1578.605957, -4182.716797, 39.134441, 1.467103, 0, 0, 0, 100, 0),
(@PATH, 2, 1580.579590, -4161.104004, 35.596245, 1.116816, 0, 0, 0, 100, 0),
(@PATH, 3, 1592.792236, -4137.739746, 32.130486, 0.887479, 0, 0, 0, 100, 0),
(@PATH, 4, 1606.842896, -4121.146484, 29.679825, 0.547402, 0, 0, 0, 100, 0),
(@PATH, 5, 1647.132690, -4103.271484, 31.960993, 0.366760, 0, 0, 0, 100, 0),
(@PATH, 6, 1684.800659, -4091.520508, 37.020203, 0.325919, 0, 0, 0, 100, 0),
(@PATH, 7, 1712.287964, -4083.820801, 40.581638, 0.325919, 0, 0, 0, 100, 0),
(@PATH, 8, 1731.218018, -4067.316650, 45.004307, 0.883552, 0, 0, 0, 100, 0),
(@PATH, 9, 1712.287964, -4083.820801, 40.581638, 0.325919, 0, 0, 0, 100, 0),
(@PATH, 10, 1684.800659, -4091.520508, 37.020203, 0.325919, 0, 0, 0, 100, 0),
(@PATH, 11, 1647.132690, -4103.271484, 31.960993, 0.366760, 0, 0, 0, 100, 0),
(@PATH, 12, 1606.842896, -4121.146484, 29.679825, 0.547402, 0, 0, 0, 100, 0),
(@PATH, 13, 1592.792236, -4137.739746, 32.130486, 0.887479, 0, 0, 0, 100, 0),
(@PATH, 14, 1580.579590, -4161.104004, 35.596245, 1.116816, 0, 0, 0, 100, 0),
(@PATH, 15, 1578.605957, -4182.716797, 39.134441, 1.467103, 0, 0, 0, 100, 0);

DELETE FROM `creature_template_addon` WHERE `entry` IN (@NPC);
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES
(@NPC,@PATH,14573,0,0,0,0, '');

-- Phase AQ War Effort Npcs
UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_we' WHERE `entry` IN 
(15383, 15431, 15432, 15434, 15437, 15445, 15446, 15448, 15450, 15451, 15452, 15453, 15455, 15456, 15457, 15700, 15701, 15459, 15460, 15469, 15477, 15508, 15512, 15515, 
15522, 15525, 15528, 15529, 15532, 15533, 15534, 15535, 21968, 15738, 15737, 15739, 15736, 15731, 15733, 15735, 15734, 21969, 15810, 15813, 15742, 15741, 15740, 15758, 15818);

-- Phase AQ War Effort Objects
DELETE FROM `gameobject` WHERE `id` IN (180598, 180679, 180680, 180681, 180812, 180818, 180826, 180832, 180838);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, 
`rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`, `Comment`) VALUES 
-- Horde
(4180812, 180812, 1, 0, 0, 1, 1, 1590.82, -4155.33, 36.2926, 3.7001, 0, 0, -0.961261, 0.27564, 180, 100, 1, 'gobject_ipp_we', 0, NULL), -- skins
(4180818, 180818, 1, 0, 0, 1, 1, 1637.11, -4147.21, 36.0414, 3.73501, 0, 0, -0.956305, 0.292372, 180, 100, 1, 'gobject_ipp_we', 0, NULL), -- herbs
(4180826, 180826, 1, 0, 0, 1, 1, 1579.35, -4109.25, 34.5417, 3.75246, 0, 0, -0.953716, 0.300708, 180, 100, 1, 'gobject_ipp_we', 0, NULL), -- bandages
(4180832, 180832, 1, 0, 0, 1, 1, 1619.83, -4092.43, 34.5107, 3.7001, 0, 0, -0.961261, 0.27564, 180, 100, 1, 'gobject_ipp_we', 0, NULL), -- cooking
(4180838, 180838, 1, 0, 0, 1, 1, 1683.11, -4134.35, 39.5419, 3.71755, 0, 0, -0.958819, 0.284016, 180, 100, 1, 'gobject_ipp_we', 0, NULL), -- bars
-- Alliance
(4180598, 180598, 0, 0, 0, 1, 1, -4971.55, -1148.57, 501.648, 2.28638, 0, 0, 0.909961, 0.414693, 180, 100, 1, 'gobject_ipp_we', 0, NULL), -- bandages
(4180681, 180681, 0, 0, 0, 1, 1, -4958.51, -1179.32, 501.659, 2.26893, 0, 0, 0.906308, 0.422618, 180, 100, 1, 'gobject_ipp_we', 0, NULL), -- skins
(4180680, 180680, 0, 0, 0, 1, 1, -4913.85, -1226, 501.651, 2.25148, 0, 0, 0.902585, 0.430511, 180, 100, 1, 'gobject_ipp_we', 0, NULL),    -- bars
(4180679, 180679, 0, 0, 0, 1, 1, -4937.29, -1282.74, 501.672, 2.26893, 0, 0, 0.906308, 0.422618, 180, 100, 1, 'gobject_ipp_we', 0, NULL); -- cooking and herbs

-- Horde CompletionText fixes
UPDATE `quest_request_items` SET `CompletionText` = 'How many tin bars do you have there, $c? After the war I think I\'m going to need someone to teach me how to count.' WHERE `ID` = 8542;
UPDATE `quest_request_items` SET `CompletionText` = 'Back so soon with the peacebloom, $c?' WHERE `ID` = 8549;
UPDATE `quest_request_items` SET `CompletionText` = 'Returned already with the purple lotus that I have requested, $C? It is critical that you do so in as timely as fashion as possible lest all that I am attempting here come to naught.' WHERE `ID` = 8582;
UPDATE `quest_request_items` SET `CompletionText` = 'Ah, $C, have you returned so quickly with the wool bandages?' WHERE `ID` = 8604;
UPDATE `quest_request_items` SET `CompletionText` = 'The war comes soon, I think, $C. I thank you for your time and effort devoted to helping with our gathering tasks. Do you return because you have obtained the runecloth bandages that we spoke of before?' WHERE `ID` = 8609;
UPDATE `quest_request_items` SET `CompletionText` = 'Back with those lean wolf steaks so soon, $C? I don\'t care if they\'re overcooked or tartar, just make sure they\'re tasty and get them to me quick!' WHERE `ID` = 8611;
UPDATE `quest_request_items` SET `CompletionText` = 'Back so soon with the spotted yellowtail, $C? You rememba\' to cook it up nice? We not servin\' raw fish to the soldiers out in the hot desert sun, to be sure.' WHERE `ID` = 8613;
UPDATE `quest_request_items` SET `CompletionText` = 'Have you returned with the baked salmon, $C? Remember, it must be cooked; I have no use for raw fish unfortunately.' WHERE `ID` = 8615;

-- Horde RewardText fixes
UPDATE `quest_offer_reward` SET `RewardText` = 'Well, I guess that looks like the right number of tin bars. Don\'t try to fool me, $C! Counting makes my skull hurt. Now I go and put these bars on the stack and you go out and bring me back more of the same.' WHERE `ID` = 8542;
UPDATE `quest_offer_reward` SET `RewardText` = 'And so our efforts push us that much closer to war. Thank you for your hard work in gathering this peacebloom $C. I assure you that it will go to good use, and that your contribution has been noted $N. Should you find yourself willing, please return to me again with more of the flowers. Until then, may the Earth Mother guide you.' WHERE `ID` = 8549;
UPDATE `quest_offer_reward` SET `RewardText` = '$C! Pele\'keiki happy for now. Pele\'keiki take all that firebloom and put it in box so it stay fresh. Pele\'keiki be seein\' to it that all the firebloom bein\' made into good stuff for the war. And if you be gettin\' anymore, you come see Pele\'keiki fast. Pele\'keiki prolly be needin\' more.' WHERE `ID` = 8580;
UPDATE `quest_offer_reward` SET `RewardText` = 'A commendable effort, $C. I will measure these specimens for their appropriate usage and note your contribution. The purple lotus will then need to be properly stored until I am ready for them. As for you, if you are still available I should imagine that I\'ll still need more purple lotus. Please check back with me in a moment.' WHERE `ID` = 8582;
UPDATE `quest_offer_reward` SET `RewardText` = 'Oh, so you do have the heavy leather I needed. Your blade is sharp indeed, $C; these are good skins! Now that we\'ve gotten off on the right foot with one another I\'ll make sure that your contribution is put to good use. And if you happen to come across more heavy leather, bring it my way.' WHERE `ID` = 8588;
UPDATE `quest_offer_reward` SET `RewardText` = 'You have my thanks, $C, and the gratitude of the Horde. If you come across more wool bandages bring them to me here should you wish to further contribute to the war effort. Until then, may your ancestors watch over you!' WHERE `ID` = 8604;
UPDATE `quest_offer_reward` SET `RewardText` = 'You are a credit to the Horde, $C. Thank you for your efforts; they are appreciated! I\'ll have to pack these fresh bandages away and take another count to see how far along we are to our goal. If you\'d like you could gather more runecloth bandages and return them to me here.' WHERE `ID` = 8609;
UPDATE `quest_offer_reward` SET `RewardText` = 'Ok, this stack of meat looks good to me. I\'ll salt them, and then pack them away and hopefully they\'ll keep fresh enough to be edible when the time comes.$B$BThanks for the contribution, $C. Do you think you could bring me another rack?' WHERE `ID` = 8611;
UPDATE `quest_offer_reward` SET `RewardText` = 'Oh ya, this be the good stuff. I pack it up real nice so it not go to waste. Thanks be to you for helpin\' me out like this. I\'m thinkin\' you an A-number-one fisherman for all this spotted yellowtail. An if you happen to fish up and cook even more, you bring it to me here; I make sure everyone know you did!' WHERE `ID` = 8613;
UPDATE `quest_offer_reward` SET `RewardText` = 'Thank you for proving your interest in helping with the war effort here, $C. Many would simply ignore our needs, opting instead to make a profit. But they do not have the gratitude of the Horde, as you now do. Their hearts are not full, as yours must be filled with the pride that comes from selfless giving.$B$BAgain, I thank you. Should you find the time to assist us further before our preparations are complete, I will be here waiting.' WHERE `ID` = 8615;

-- Horde QuestCompletionLog fixes
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Miner Cromwell in Orgrimmar.' WHERE `ID` IN (8532, 8533);
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Grunt Maug in Orgrimmar.' WHERE `ID` IN (8542, 8543);
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Senior Sergeant T\'kelah in Orgrimmar.' WHERE `ID` IN (8545, 8546);
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Herbalist Proudfeather in Orgrimmar.' WHERE `ID` IN (8549, 8550);
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Batrider Pele\'keiki in Orgrimmar.' WHERE `ID` IN (8580, 8581);
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Apothecary Jezel in Orgrimmar.' WHERE `ID` IN (8582, 8583);
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Skinner Jamani in Orgrimmar.' WHERE `ID` = 8589;
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Sergeant Umala in Orgrimmar.' WHERE `ID` = 8591;
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Doctor Serratus in Orgrimmar.' WHERE `ID` = 8601;
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Healer Longrunner in Orgrimmar.' WHERE `ID` = 8605;
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Lady Callow in Orgrimmar.' WHERE `ID` = 8608;
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Stoneguard Clayhoof in Orgrimmar.' WHERE `ID` = 8610;
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Bloodguard Rawtar in Orgrimmar.' WHERE `ID` IN (8611, 8612);
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Fisherman Lin\'do in Orgrimmar.' WHERE `ID` IN (8613, 8614);
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Chief Sharpclaw in Orgrimmar.' WHERE `ID` IN (8615, 8616);

-- Horde LogDescription fixes
UPDATE `quest_template` SET `LogDescription` = 'Bring 20 copper bars to Miner Cromwell in Orgrimmar.' WHERE `ID` = 8533;
UPDATE `quest_template` SET `LogDescription` = 'Bring 20 tin bars to Grunt Maug in Orgrimmar.' WHERE `ID` = 8543;
UPDATE `quest_template` SET `LogDescription` = 'Bring 20 Mithril Bars to Senior Sergeant T\'kelah in Orgrimmar.' WHERE `ID` = 8546;
UPDATE `quest_template` SET `LogDescription` = 'Bring 20 Peacebloom to Herbalist Proudfeather in Orgrimmar.' WHERE `ID` = 8550;
UPDATE `quest_template` SET `LogDescription` = 'Bring 20 Firebloom to Batrider Pele\'keiki in Orgrimmar.' WHERE `ID` = 8581;
UPDATE `quest_template` SET `LogDescription` = 'Bring 20 Purple Lotus to Apothecary Jezel in Orgrimmar.' WHERE `ID` = 8583;
UPDATE `quest_template` SET `LogDescription` = 'Bring 10 Heavy Leather to Skinner Jamani in Orgrimmar.'  WHERE `ID` = 8589;
UPDATE `quest_template` SET `LogDescription` = 'Bring 10 Thick Leather to Sergeant Umala in Orgrimmar.' WHERE `ID` = 8591;
UPDATE `quest_template` SET `LogDescription` = 'Bring 10 Rugged Leather to Doctor Serratus in Orgrimmar.' WHERE `ID` = 8601;
UPDATE `quest_template` SET `LogDescription` = 'Bring 20 Wool Bandages to Healer Longrunner in Orgrimmar.' WHERE `ID` = 8605;
UPDATE `quest_template` SET `LogDescription` = 'Bring 20 Mageweave Bandages to Lady Callow in Orgrimmar.' WHERE `ID` = 8608;
UPDATE `quest_template` SET `LogDescription` = 'Bring 20 Runecloth Bandages to Stoneguard Clayhoof in Orgrimmar.' WHERE `ID` = 8610;
UPDATE `quest_template` SET `LogDescription` = 'Bring 20 Lean Wolf Steaks to Bloodguard Rawtar in Orgrimmar.' WHERE `ID` = 8612;
UPDATE `quest_template` SET `LogDescription` = 'Bring 20 Spotted Yellowtail to Fisherman Lin\'do in Orgrimmar.' WHERE `ID` = 8614;
UPDATE `quest_template` SET `LogDescription` = 'Bring 20 Baked Salmon to Chief Sharpclaw in Orgrimmar.' WHERE `ID` = 8616;

-- Horde quest_template_addon fixes
UPDATE `quest_template_addon` SET `SpecialFlags` = 0 WHERE `ID` = 8609;
UPDATE `quest_template_addon` SET `SpecialFlags` = 1 WHERE `ID` = 8610;

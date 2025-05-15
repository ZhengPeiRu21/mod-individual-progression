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

-- War Effort Recruiters
DELETE FROM `gossip_menu` WHERE `MenuID` IN (3118101, 3118103, 3118105, 3118107);
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES (3118101, 8101), (3118103, 8103), (3118105, 8105), (3118107, 8107);

UPDATE `creature_template` SET `gossip_menu_id` = 3118101, `npcflag` = 3 WHERE `entry` = 15707;
UPDATE `creature_template` SET `gossip_menu_id` = 3118103, `npcflag` = 3 WHERE `entry` IN (15708, 15709, 21156);
UPDATE `creature_template` SET `gossip_menu_id` = 3118105, `npcflag` = 3 WHERE `entry` = 15703;
UPDATE `creature_template` SET `gossip_menu_id` = 3118107, `npcflag` = 3 WHERE `entry` IN (15702, 15704, 21155);

UPDATE `quest_template` SET `AllowableRaces` = 690 WHERE `ID` IN (8792, 8793, 8794, 10500);
UPDATE `quest_template` SET `AllowableRaces` = 1101 WHERE `ID` IN (8795, 8796, 8797, 10501);

DELETE FROM `creature_queststarter` WHERE `quest` IN (8792, 8795, 8796, 8797, 10500, 10501);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (15702, 8792), (15703, 8792), (15704, 8792), (21155, 8792), (15707, 8795), (15708, 8795), (15709, 8795), (21156, 8795);

DELETE FROM `creature_questender` WHERE `quest` IN (8792, 8793, 8794, 8795, 8796, 8797, 10500, 10501);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (15700, 8792), (15701, 8795);

DELETE FROM `creature` WHERE `id1` IN (15702, 15703, 15704, 15707, 15708, 15709, 21155, 21156);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(3115702,15702,0,0,1,0,0,1,1,0,-1209.58, 100.22, 134.661, 3.15905,300,0,0,15260,0,0,0,0,0,'',0),
(3115703,15703,0,0,0,0,0,1,1,0,1572.58, 272.707, -43.0193, 5.02655,300,0,0,15260,0,0,0,0,0,'',0),
(3115704,15704,0,0,1,0,0,1,1,0,1653.07, -4403.81, 18.5819, 4.45059,300,0,0,15260,0,0,0,0,0,'',0),
(3115707,15707,0,0,0,0,0,1,1,0,-4956.09, -931.133, 503.347, 5.37561,300,0,0,15260,0,0,0,0,0,'',0),
(3115708,15708,0,0,0,0,0,1,1,0,-8813.75, 654.068, 96.1603, 4.83456,300,0,0,15260,0,0,0,0,0,'',0),
(3115709,15709,0,0,1,0,0,1,1,0,9945.15, 2494.24, 1317.52, 4.20624,300,0,0,15260,0,0,0,0,0,'',0),
(3121155,21155,0,0,530,0,0,1,1,0,9526.53, -7190.16, 16.1257, 1.55872,300,0,0,15260,0,0,0,0,0,'',0),
(3121156,21156,0,0,530,0,0,1,1,0,-3907.79, -11606.595, -138.176, 4.69083,300,0,0,15260,0,0,0,0,0,'',0);

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
(15383, 15431, 15432, 15434, 15437, 15445, 15446, 15448, 15450, 15451, 15452, 15453, 15455, 15456, 15457, 15459, 15460, 15469, 15477, 15508, 15512, 15515, 15522, 15525, 
15528, 15529, 15532, 15533, 15534, 15535, 15700, 15701, 15702, 15703, 15704, 15707, 15708, 15709, 15738, 15737, 15739, 15736, 15731, 15733, 15735, 15734, 21155, 21156, 21968, 21969);

-- undo previous phasing for aq bosses. this is done in table 'creature' now. (this can be removed later on)
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` IN (15810, 15813, 15742, 15741, 15740, 15758, 15818);

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

-- Alliance CompletionText fixes
UPDATE `quest_request_items` SET `CompletionText` = 'I do so hope that you have been successful in gathering the thorium bars that we spoke of earlier.' WHERE `ID` = 8499;
UPDATE `quest_request_items` SET `CompletionText` = 'Hello, $C, have you been able to get those twenty silk bandages yet?' WHERE `ID` = 8520;

-- Alliance RewardText fixes
UPDATE `quest_offer_reward` SET `RewardText` = 'Oh thank you, $C! Thank you! That\'s twenty down and an incalculable amount to go. You have the gratitude of the Alliance, and your efforts shall not go unrewarded. Speak to me again should you come across more thorium bars.' WHERE `ID` = 8499;

-- Alliance LogDescription fixes
UPDATE `quest_template` SET `LogDescription` = 'Bring 20 Copper Bars to Sergeant Stonebrow in Ironforge.' WHERE `ID` = 8493;
UPDATE `quest_template` SET `LogDescription` = 'Bring 20 Iron Bars to Corporal Carnes in Ironforge.' WHERE `ID` = 8495;
UPDATE `quest_template` SET `LogDescription` = 'Bring 20 Thorium Bars to Dame Twinbraid in Ironforge.' WHERE `ID` = 8500;
UPDATE `quest_template` SET `LogDescription` = 'Bring 20 Stranglekelp to Private Draxlegauge in Ironforge.' WHERE `ID` = 8504;
UPDATE `quest_template` SET `LogDescription` = 'Bring 20 Purple Lotus to Master Nightsong in Ironforge.' WHERE `ID` = 8506;
UPDATE `quest_template` SET `LogDescription` = 'Bring 20 Arthas\' Tears to Sergeant Major Germaine in Ironforge.' WHERE `ID` = 8510;
UPDATE `quest_template` SET `LogDescription` = 'Bring 10 Light Leather to Bonnie Stoneflayer in Ironforge.' WHERE `ID` = 8512;
UPDATE `quest_template` SET `LogDescription` = 'Bring 10 Medium Leather to Private Porter in Ironforge.' WHERE `ID` = 8514;
UPDATE `quest_template` SET `LogDescription` = 'Bring 10 Thick Leather to Marta Finespindle in Ironforge.' WHERE `ID` = 8516;
UPDATE `quest_template` SET `LogDescription` = 'Bring 20 Linen Bandages to Sentinel Silversky in Ironforge.' WHERE `ID` = 8518;
UPDATE `quest_template` SET `LogDescription` = 'Bring 20 Silk Bandages to Nurse Stonefield in Ironforge.' WHERE `ID` = 8521;
UPDATE `quest_template` SET `LogDescription` = 'Bring 20 Runecloth Bandages to Keeper Moonshade in Ironforge.' WHERE `ID` = 8523;
UPDATE `quest_template` SET `LogDescription` = 'Bring 20 Rainbow Fin Albacore to Slicky Gastronome in Ironforge.' WHERE `ID` = 8525;
UPDATE `quest_template` SET `LogDescription` = 'Bring 20 Roast Raptor to Sarah Sadwhistle in Ironforge.' WHERE `ID` = 8527;
UPDATE `quest_template` SET `LogDescription` = 'Bring 20 Spotted Yellowtail to Huntress Swiftriver in Ironforge.' WHERE `ID` = 8529;

-- Alliance QuestCompletionLog fixes
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Sergeant Stonebrow in Ironforge.' WHERE `ID` IN (8492, 8493);
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Corporal Carnes in Ironforge.' WHERE `ID` IN (8494, 8495);
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Dame Twinbraid in Ironforge.' WHERE `ID` IN (8499, 8500);
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Private Draxlegauge in Ironforge.' WHERE `ID` IN (8503, 8504);
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Master Nightsong in Ironforge.' WHERE `ID` IN (8505, 8506);
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Sergeant Major Germaine in Ironforge.' WHERE `ID` IN (8509, 8510);
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Bonnie Stoneflayer in Ironforge.' WHERE `ID` IN (8511, 8512);
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Private Porter in Ironforge.' WHERE `ID` IN (8513, 8514);
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Marta Finespindle in Ironforge.' WHERE `ID` IN (8515, 8516);
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Sentinel Silversky in Ironforge.' WHERE `ID` IN (8517, 8518);
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Nurse Stonefield in Ironforge.' WHERE `ID` IN (8520, 8521);
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Keeper Moonshade in Ironforge.' WHERE `ID` IN (8522, 8523);
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Slicky Gastronome in Ironforge.' WHERE `ID` IN (8524, 8525);
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Sarah Sadwhistle in Ironforge.' WHERE `ID` IN (8526, 8527);
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Huntress Swiftriver in Ironforge.' WHERE `ID` IN (8528, 8529);

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

-- Horde quest_template_addon fixes
UPDATE `quest_template_addon` SET `SpecialFlags` = 0 WHERE `ID` = 8609;
UPDATE `quest_template_addon` SET `SpecialFlags` = 1 WHERE `ID` = 8610;

-- AQ War
DELETE FROM `creature_text` WHERE `CreatureID`= 15693;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`, `TextRange`, `comment`) VALUES
(15693, 0, 0, '$n, Champion of the Bronze Dragonflight, has rung the Scarab Gong. The ancient gates of Ahn\'Qiraj open, revealing the horrors of a forgotten war...', 16, 0, 100, 1, 0, 0, 11427, 4, 'EMOTE_AQ_GONG_1'),
(15693, 1, 0, 'Massive Qiraji resonating crystals break through the earthen crust of Kalimdor. Colossal creatures made of obsidian stone breach the freshly broken land...', 16, 0, 100, 1, 0, 0, 11432, 4, 'EMOTE_AQ_GONG_2'),
(15693, 2, 0, 'Colossus of Zora casts its massive shadow upon the whole of Silithus.', 16, 0, 100, 1, 0, 0, 0, 4, 'EMOTE_AQ_GONG_3'),
(15693, 3, 0, 'Colossus of Ashi breaks free of its cocoon beneath Hive\'Ashi.', 16, 0, 100, 1, 0, 0, 0, 4, 'EMOTE_AQ_GONG_4'),
(15693, 4, 0, 'Colossus of Regal hears the call to battle and rises to serve its master.', 16, 0, 100, 1, 0, 0, 0, 4, 'EMOTE_AQ_GONG_5');

SET @IPPPHASE := 65536;

-- add bosses to Silithus and Darkshore 
DELETE FROM `creature` WHERE `id1` IN (15740, 15741, 15742, 15758, 15810, 15813, 15818);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(311600,15810,0,0,1,0,0,1,@IPPPHASE,0,4386.996582, 550.179260, 54.762119, 0.581150,1800,5,0,0,0,1,0,0,0,'',0),
(311601,15810,0,0,1,0,0,1,@IPPPHASE,0,4388.178711, 513.457581, 53.590897, 3.921458,1800,5,0,0,0,1,0,0,0,'',0),
(311602,15810,0,0,1,0,0,1,@IPPPHASE,0,4356.629395, 519.999329, 58.591854, 3.295495,1800,5,0,0,0,1,0,0,0,'',0),
(311603,15810,0,0,1,0,0,1,@IPPPHASE,0,4361.684570, 558.289734, 56.632832, 4.635385,1800,5,0,0,0,1,0,0,0,'',0),
(311604,15813,0,0,1,0,0,1,@IPPPHASE,0,4372.355957, 536.665649, 59.118938, 4.758702,1800,0,0,0,0,0,0,0,0,'',0), -- boss darkshore 1

(311605,15810,0,0,1,0,0,1,@IPPPHASE,0, 5083.312988, 90.152863, 45.683632, 4.534914,1800,5,0,0,0,1,0,0,0,'',0),
(311606,15810,0,0,1,0,0,1,@IPPPHASE,0, 5057.701660, 83.685188, 49.825253, 3.410223,1800,5,0,0,0,1,0,0,0,'',0),
(311607,15810,0,0,1,0,0,1,@IPPPHASE,0, 5046.050781, 122.508644, 43.164379, 2.331871,1800,5,0,0,0,1,0,0,0,'',0),
(311608,15810,0,0,1,0,0,1,@IPPPHASE,0, 5071.985840, 138.409653, 41.266869, 0.861605,1800,5,0,0,0,1,0,0,0,'',0),
(311609,15813,0,0,1,0,0,1,@IPPPHASE,0, 5064.384277, 107.279877, 42.528320, 3.140021,1800,0,0,0,0,0,0,0,0,'',0), -- boss darkshore 2

(311610,15810,0,0,1,0,0,1,@IPPPHASE,0, 6409.220215, 4.401052, 30.286741, 2.987807,1800,5,0,0,0,1,0,0,0,'',0),
(311611,15810,0,0,1,0,0,1,@IPPPHASE,0, 6424.186035, 30.883730, 27.005314, 0.934775,1800,5,0,0,0,1,0,0,0,'',0),
(311612,15810,0,0,1,0,0,1,@IPPPHASE,0, 6454.531738, 28.456089, 31.199347, 0.068485,1800,5,0,0,0,1,0,0,0,'',0),
(311613,15810,0,0,1,0,0,1,@IPPPHASE,0, 6453.624023, -5.977130, 28.319181, 5.131168,1800,5,0,0,0,1,0,0,0,'',0),
(311614,15813,0,0,1,0,0,1,@IPPPHASE,0, 6434.273438, 12.233818, 26.357977, 0.805967,1800,0,0,0,0,0,0,0,0,'',0), -- boss darkshore 3

(311615,15742,0,0,1,0,0,1,@IPPPHASE,0, -6458.704590, 1076.014282, -2.896275, 4.052591,3600,0,1,0,0,2,0,0,0,'',0), -- Colossus of Ashi
(311616,15741,0,0,1,0,0,1,@IPPPHASE,0, -7922.958008, 625.548523, -29.006325, 0.844522,3600,0,1,0,0,2,0,0,0,'',0), -- Colossus of Regal
(311617,15740,0,0,1,0,0,1,@IPPPHASE,0, -7461.777832, 1611.004272, -48.327751, 0.616755,3600,0,1,0,0,2,0,0,0,'',0), -- Colossus of Zora

(311618,15758,0,0,1,0,0,1,@IPPPHASE,0,-7623.261719, 1416.035767, 4.126772,  4.945646,1800,5,0,0,0,1,0,0,0,'',0),
(311619,15758,0,0,1,0,0,1,@IPPPHASE,0,-7659.168457, 1392.619751, 3.995544, 3.687438,1800,5,0,0,0,1,0,0,0,'',0),
(311620,15758,0,0,1,0,0,1,@IPPPHASE,0,-7688.503418, 1428.886963, 3.855407, 2.550966,1800,5,0,0,0,1,0,0,0,'',0),
(311621,15758,0,0,1,0,0,1,@IPPPHASE,0, -7652.402344, 1464.758667, 4.526736, 0.600033,1800,5,0,0,0,1,0,0,0,'',0),
(311622,15818,0,0,1,0,0,1,@IPPPHASE,1, -7644.985840, 1422.093628, 3.326948, 5.378395,1800,0,0,0,0,0,0,0,0,'',0), -- boss Silithus 1

(311623,15758,0,0,1,0,0,1,@IPPPHASE,0, -7806.652832, 855.699951, -4.778733, 0.353429,1800,5,0,0,0,1,0,0,0,'',0),
(311624,15758,0,0,1,0,0,1,@IPPPHASE,0, -7831.444336, 808.078979, -9.832852, 4.501119,1800,5,0,0,0,1,0,0,0,'',0),
(311625,15758,0,0,1,0,0,1,@IPPPHASE,0, -7881.184082, 864.466614, -1.765002, 2.737900,1800,5,0,0,0,1,0,0,0,'',0),
(311626,15758,0,0,1,0,0,1,@IPPPHASE,0, -7832.478027, 912.945801, -2.498297, 0.817600,1800,5,0,0,0,1,0,0,0,'',0),
(311627,15818,0,0,1,0,0,1,@IPPPHASE,1, -7830.405273, 851.316223, -4.844313, 4.929938,1800,0,0,0,0,0,0,0,0,'',0), -- boss Silithus 2

(311628,15758,0,0,1,0,0,1,@IPPPHASE,0,-6290.943848, 736.276489, 11.109619, 5.837865,1800,5,0,0,0,1,0,0,0,'',0),
(311629,15758,0,0,1,0,0,1,@IPPPHASE,0,-6303.743652, 703.045105, 11.219690, 4.562379,1800,5,0,0,0,1,0,0,0,'',0),
(311630,15758,0,0,1,0,0,1,@IPPPHASE,0, -6349.953613, 715.365662, 2.037906, 3.263330,1800,5,0,0,0,1,0,0,0,'',0),
(311631,15758,0,0,1,0,0,1,@IPPPHASE,0, -6346.292969, 777.375793, 1.782544, 1.899878,1800,5,0,0,0,1,0,0,0,'',0),
(311632,15818,0,0,1,0,0,1,@IPPPHASE,1, -6322.091797, 738.599060, 8.332182, 2.500710,1800,0,0,0,0,0,0,0,0,'',0); -- boss Silithus 3

-- remove flags_extra = 1 for Lieutenant General Nokhor
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` = 15818;

DELETE FROM `pool_template` WHERE `entry` IN (15813, 15818);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(15813, 1, "AQ War Event Darkshore Boss"),
(15818, 1, "AQ War Event Silithus Boss");

DELETE FROM `pool_creature` WHERE `pool_entry` = 15813;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(311604, 15813, 0, 'AQ War Event Darkshore Boss'),
(311609, 15813, 0, 'AQ War Event Darkshore Boss'),
(311614, 15813, 0, 'AQ War Event Darkshore Boss'),
(311622, 15813, 0, 'AQ War Event Silithus Boss'),
(311627, 15813, 0, 'AQ War Event Slithus Boss'),
(311632, 15813, 0, 'AQ War Event Silithus Boss');

-- add Resonating Crystal Formations to Silithus and Darkshore
DELETE FROM `gameobject` WHERE `guid` IN (111000, 111001, 111002, 111003, 111004, 111005);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`) VALUES
(111000, 180810, 1, 0, 0, 1, 1, 6431.208496, 7.873897, 25.929821, 6.005887, 0, 0, 0, 0, 3600, 255, 1, 'gobject_ipp_aqwar', 0),
(111001, 180810, 1, 0, 0, 1, 1, 5070.317383, 106.293625, 42.326523, 3.869612, 0, 0, 0, 0, 3600, 255, 1, 'gobject_ipp_aqwar', 0),
(111002, 180810, 1, 0, 0, 1, 1, 4370.228027, 540.763245, 59.281170, 6.165329, 0, 0, 0, 0, 3600, 255, 1, 'gobject_ipp_aqwar', 0),
(111003, 180810, 1, 0, 0, 1, 1, -7648.079590, 1426.084717, 2.876715, 3.538846, 0, 0, 0, 0, 3600, 255, 1, 'gobject_ipp_aqwar', 0),
(111004, 180810, 1, 0, 0, 1, 1, -7831.400879, 857.148376, -4.281037, 1.477178, 0, 0, 0, 0, 3600, 255, 1, 'gobject_ipp_aqwar', 0),
(111005, 180810, 1, 0, 0, 1, 1, -6317.880371, 738.097473, 9.361129, 2.939591, 0, 0, 0, 0, 3600, 255, 1, 'gobject_ipp_aqwar', 0);

-- set Resonating Crystal Formations to 'Not selectable'
UPDATE `gameobject_template_addon` SET `flags` = 16 WHERE `entry` = 180810;

-- Colossus of Ashi pathing
SET @NPC := 15742;
SET @PATH := @NPC * 10;
DELETE FROM `waypoint_data` WHERE `id` = @PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(@PATH, 1, -6497.195801, 1021.785889, 0.376532, 4.003111, 0, 0, 0, 100, 0),
(@PATH, 2, -6540.536133, 985.638306, 0.376532, 3.593430, 0, 0, 0, 100, 0),
(@PATH, 3, -6610.057617, 924.652832, 0.373520, 3.076638, 0, 0, 0, 100, 0),
(@PATH, 4, -6669.620117, 922.713989, -0.686892, 3.683748, 0, 0, 0, 100, 0),
(@PATH, 5, -6704.018555, 899.425293, -1.393676, 4.236665, 0, 0, 0, 100, 0),
(@PATH, 6, -4953.628418, -1206.568237, 501.659943, 5.093306, 0, 0, 0, 100, 0),
(@PATH, 7, -4944.017578, -1226.812378, 501.659241, 4.541171, 0, 0, 0, 100, 0),
(@PATH, 8, -4951.852051, -1236.240234, 501.664520, 3.806038, 0, 0, 0, 100, 0),
(@PATH, 9, -4944.017578, -1226.812378, 501.659241, 4.541171, 0, 0, 0, 100, 0),
(@PATH, 10, -4953.628418, -1206.568237, 501.659943, 5.093306, 0, 0, 0, 100, 0),
(@PATH, 11, -6704.018555, 899.425293, -1.393676, 4.236665, 0, 0, 0, 100, 0),
(@PATH, 12, -6669.620117, 922.713989, -0.686892, 3.683748, 0, 0, 0, 100, 0),
(@PATH, 13, -6610.057617, 924.652832, 0.373520, 3.076638, 0, 0, 0, 100, 0),
(@PATH, 14, -6540.536133, 985.638306, 0.376532, 3.593430, 0, 0, 0, 100, 0),
(@PATH, 15, -6497.195801, 1021.785889, 0.376532, 4.003111, 0, 0, 0, 100, 0);

DELETE FROM `creature_template_addon` WHERE `entry` IN (@NPC);
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES
(@NPC,@PATH,0,0,1,0,3, '');

-- Colossus of Regal pathing
SET @NPC := 15741;
SET @PATH := @NPC * 10;
DELETE FROM `waypoint_data` WHERE `id` = @PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(@PATH, 1, -7870.958496, 687.510498, -27.781849, 0.293172, 0, 0, 0, 100, 0),
(@PATH, 2, -7791.520996, 727.871521, -37.473316, 0.432190, 0, 0, 0, 100, 0),
(@PATH, 3,  -7720.165039, 719.385498, -41.306274, 5.582830, 0, 0, 0, 100, 0),
(@PATH, 4, -7637.914551, 609.112854, -51.588173, 5.230968, 0, 0, 0, 100, 0),
(@PATH, 5,  -7720.165039, 719.385498, -41.306274, 5.582830, 0, 0, 0, 100, 0),
(@PATH, 6, -7791.520996, 727.871521, -37.473316, 0.432190, 0, 0, 0, 100, 0),
(@PATH, 7, -7870.958496, 687.510498, -27.781849, 0.293172, 0, 0, 0, 100, 0);

DELETE FROM `creature_template_addon` WHERE `entry` IN (@NPC);
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES
(@NPC,@PATH,0,0,1,0,3, '');

-- Colossus of Zora pathing
SET @NPC := 15740;
SET @PATH := @NPC * 10;
DELETE FROM `waypoint_data` WHERE `id` = @PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(@PATH, 1, -7418.407227, 1649.863770, -32.103611, 1.029089, 0, 0, 0, 100, 0),
(@PATH, 2, -7409.972656, 1705.264404, -36.461433, 1.437496, 0, 0, 0, 100, 0),
(@PATH, 3, -7352.450684, 1710.901733, -38.267399, 5.460305, 0, 0, 0, 100, 0),
(@PATH, 4, -7329.275391, 1640.641968, -32.322731, 5.153214, 0, 0, 0, 100, 0),
(@PATH, 5, -7299.695801, 1599.568481, -30.213583, 5.754819, 0, 0, 0, 100, 0),
(@PATH, 6, -7250.575195, 1534.470459, -10.517513, 5.041683, 0, 0, 0, 100, 0),
(@PATH, 7, -7299.695801, 1599.568481, -30.213583, 5.754819, 0, 0, 0, 100, 0),
(@PATH, 8, -7329.275391, 1640.641968, -32.322731, 5.153214, 0, 0, 0, 100, 0),
(@PATH, 9, -7352.450684, 1710.901733, -38.267399, 5.460305, 0, 0, 0, 100, 0),
(@PATH, 10, -7409.972656, 1705.264404, -36.461433, 1.437496, 0, 0, 0, 100, 0),
(@PATH, 11, -7418.407227, 1649.863770, -32.103611, 1.029089, 0, 0, 0, 100, 0);

DELETE FROM `creature_template_addon` WHERE `entry` IN (@NPC);
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES
(@NPC,@PATH,0,0,1,0,3, '');

-- add loot to Colossus of Zora, Regal and Ashi
DELETE FROM `creature_loot_template` WHERE `entry` = 15740;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(15740, 14555, 0, 0, 0, 1, 1, 1, 1, 'Colossus of Zora, Regal, Ashi - Epic'),
(15740, 3475, 0, 0, 0, 1, 1, 1, 1, 'Colossus of Zora, Regal, Ashi - Epic'),
(15740, 1728, 0, 0, 0, 1, 1, 1, 1, 'Colossus of Zora, Regal, Ashi - Epic'),
(15740, 811, 0, 0, 0, 1, 1, 1, 1, 'Colossus of Zora, Regal, Ashi - Epic'),
(15740, 1263, 0, 0, 0, 1, 1, 1, 1, 'Colossus of Zora, Regal, Ashi - Epic'),
(15740, 14554, 0, 0, 0, 1, 1, 1, 1, 'Colossus of Zora, Regal, Ashi - Epic'),
(15740, 647, 0, 0, 0, 1, 1, 1, 1, 'Colossus of Zora, Regal, Ashi - Epic'),
(15740, 2099, 0, 0, 0, 1, 1, 1, 1, 'Colossus of Zora, Regal, Ashi - Epic'),
(15740, 944, 0, 0, 0, 1, 1, 1, 1, 'Colossus of Zora, Regal, Ashi - Epic'),
(15740, 2243, 0, 0, 0, 1, 1, 1, 1, 'Colossus of Zora, Regal, Ashi - Epic'),
(15740, 2245, 0, 0, 0, 1, 1, 1, 1, 'Colossus of Zora, Regal, Ashi - Epic'),
(15740, 1443, 0, 0, 0, 1, 1, 1, 1, 'Colossus of Zora, Regal, Ashi - Epic'),
(15740, 2244, 0, 0, 0, 1, 1, 1, 1, 'Colossus of Zora, Regal, Ashi - Epic'),
(15740, 14558, 0, 0, 0, 1, 1, 1, 1, 'Colossus of Zora, Regal, Ashi - Epic'),
(15740, 833, 0, 0, 0, 1, 1, 1, 1, 'Colossus of Zora, Regal, Ashi - Epic'),
(15740, 2246, 0, 0, 0, 1, 1, 1, 1, 'Colossus of Zora, Regal, Ashi - Epic'),
(15740, 14553, 0, 0, 0, 1, 1, 1, 1, 'Colossus of Zora, Regal, Ashi - Epic'),
(15740, 1168, 0, 0, 0, 1, 1, 1, 1, 'Colossus of Zora, Regal, Ashi - Epic'),
(15740, 13036, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13126, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13009, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13120, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13075, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13133, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13123, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 9402, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13013, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13125, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 2564, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13077, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13040, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13067, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13003, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13135, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13007, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13107, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13106, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13073, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13111, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13070, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13015, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13144, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13118, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13146, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13116, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13000, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13072, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 6622, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13060, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13004, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13047, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13130, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13066, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 1203, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13096, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13030, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13083, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13085, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13002, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 4496, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13001, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 13091, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 1973, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 7734, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue'),
(15740, 11302, 0, 0, 0, 1, 2, 1, 1, 'Colossus of Zora, Regal, Ashi - Blue');

-- same lootID for all 3 Colossus bosses
DELETE FROM `creature_loot_template` WHERE `entry` IN (15741, 15742);
UPDATE `creature_template` SET `LootId` = 15740 WHERE `entry` IN (15740, 15741, 15742);

UPDATE `creature_text` SET `TextRange` = 4 WHERE `CreatureID` = 15341 AND `GroupID` = 12;

UPDATE `creature_template` SET `maxgold` = 23909 WHERE `entry` = 15758; -- previously 83909

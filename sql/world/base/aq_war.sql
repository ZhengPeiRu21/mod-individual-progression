SET @IPPPHASE := 65536;
SET @CGUID    := 650000;
SET @OGUID    := 650000;

DELETE FROM `creature_text` WHERE `CreatureID`= 15693;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`, `TextRange`, `comment`) VALUES
(15693, 0, 0, '$n, Champion of the Bronze Dragonflight, has rung the Scarab Gong. The ancient gates of Ahn\'Qiraj open, revealing the horrors of a forgotten war...', 16, 0, 100, 1, 0, 0, 11427, 4, 'EMOTE_AQ_GONG_1'),
(15693, 1, 0, 'Massive Qiraji resonating crystals break through the earthen crust of Kalimdor. Colossal creatures made of obsidian stone breach the freshly broken land...', 16, 0, 100, 1, 0, 0, 11432, 4, 'EMOTE_AQ_GONG_2'),
(15693, 2, 0, 'Colossus of Zora casts its massive shadow upon the whole of Silithus.', 16, 0, 100, 1, 0, 0, 0, 4, 'EMOTE_AQ_GONG_3'),
(15693, 3, 0, 'Colossus of Ashi breaks free of its cocoon beneath Hive\'Ashi.', 16, 0, 100, 1, 0, 0, 0, 4, 'EMOTE_AQ_GONG_4'),
(15693, 4, 0, 'Colossus of Regal hears the call to battle and rises to serve its master.', 16, 0, 100, 1, 0, 0, 0, 4, 'EMOTE_AQ_GONG_5');

-- add bosses to Silithus and Darkshore 
DELETE FROM `creature` WHERE `id1` IN (15740, 15741, 15742, 15758, 15810, 15813, 15818);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@CGUID+101,15810,0,0,1,0,0,1,@IPPPHASE,0,4386.996582, 550.179260, 54.762119, 0.581150,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+102,15810,0,0,1,0,0,1,@IPPPHASE,0,4388.178711, 513.457581, 53.590897, 3.921458,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+103,15810,0,0,1,0,0,1,@IPPPHASE,0,4356.629395, 519.999329, 58.591854, 3.295495,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+104,15810,0,0,1,0,0,1,@IPPPHASE,0,4361.684570, 558.289734, 56.632832, 4.635385,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+105,15813,0,0,1,0,0,1,@IPPPHASE,0,4372.355957, 536.665649, 59.118938, 4.758702,1800,0,0,0,0,0,0,0,0,'',0), -- boss darkshore 1

(@CGUID+106,15810,0,0,1,0,0,1,@IPPPHASE,0, 5083.312988, 90.152863, 45.683632, 4.534914,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+107,15810,0,0,1,0,0,1,@IPPPHASE,0, 5057.701660, 83.685188, 49.825253, 3.410223,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+108,15810,0,0,1,0,0,1,@IPPPHASE,0, 5046.050781, 122.508644, 43.164379, 2.331871,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+109,15810,0,0,1,0,0,1,@IPPPHASE,0, 5071.985840, 138.409653, 41.266869, 0.861605,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+110,15813,0,0,1,0,0,1,@IPPPHASE,0, 5064.384277, 107.279877, 42.528320, 3.140021,1800,0,0,0,0,0,0,0,0,'',0), -- boss darkshore 2

(@CGUID+111,15810,0,0,1,0,0,1,@IPPPHASE,0, 6409.220215, 4.401052, 30.286741, 2.987807,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+112,15810,0,0,1,0,0,1,@IPPPHASE,0, 6424.186035, 30.883730, 27.005314, 0.934775,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+113,15810,0,0,1,0,0,1,@IPPPHASE,0, 6454.531738, 28.456089, 31.199347, 0.068485,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+114,15810,0,0,1,0,0,1,@IPPPHASE,0, 6453.624023, -5.977130, 28.319181, 5.131168,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+115,15813,0,0,1,0,0,1,@IPPPHASE,0, 6434.273438, 12.233818, 26.357977, 0.805967,1800,0,0,0,0,0,0,0,0,'',0), -- boss darkshore 3

(@CGUID+116,15742,0,0,1,0,0,1,@IPPPHASE,0, -6458.704590, 1076.014282, -2.896275, 4.052591,3600,0,1,0,0,2,0,0,0,'',0),  -- Colossus of Ashi
(@CGUID+117,15741,0,0,1,0,0,1,@IPPPHASE,0, -7922.958008, 625.548523, -29.006325, 0.844522,3600,0,1,0,0,2,0,0,0,'',0),  -- Colossus of Regal
(@CGUID+118,15740,0,0,1,0,0,1,@IPPPHASE,0, -7461.777832, 1611.004272, -48.327751, 0.616755,3600,0,1,0,0,2,0,0,0,'',0), -- Colossus of Zora

(@CGUID+119,15758,0,0,1,0,0,1,@IPPPHASE,0,-7623.261719, 1416.035767, 4.126772,  4.945646,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+120,15758,0,0,1,0,0,1,@IPPPHASE,0,-7659.168457, 1392.619751, 3.995544, 3.687438,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+121,15758,0,0,1,0,0,1,@IPPPHASE,0,-7688.503418, 1428.886963, 3.855407, 2.550966,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+122,15758,0,0,1,0,0,1,@IPPPHASE,0, -7652.402344, 1464.758667, 4.526736, 0.600033,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+123,15818,0,0,1,0,0,1,@IPPPHASE,1, -7644.985840, 1422.093628, 3.326948, 5.378395,1800,0,0,0,0,0,0,0,0,'',0), -- boss Silithus 1

(@CGUID+124,15758,0,0,1,0,0,1,@IPPPHASE,0, -7806.652832, 855.699951, -4.778733, 0.353429,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+125,15758,0,0,1,0,0,1,@IPPPHASE,0, -7831.444336, 808.078979, -9.832852, 4.501119,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+126,15758,0,0,1,0,0,1,@IPPPHASE,0, -7881.184082, 864.466614, -1.765002, 2.737900,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+127,15758,0,0,1,0,0,1,@IPPPHASE,0, -7832.478027, 912.945801, -2.498297, 0.817600,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+128,15818,0,0,1,0,0,1,@IPPPHASE,1, -7830.405273, 851.316223, -4.844313, 4.929938,1800,0,0,0,0,0,0,0,0,'',0), -- boss Silithus 2

(@CGUID+129,15758,0,0,1,0,0,1,@IPPPHASE,0,-6290.943848, 736.276489, 11.109619, 5.837865,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+130,15758,0,0,1,0,0,1,@IPPPHASE,0,-6303.743652, 703.045105, 11.219690, 4.562379,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+131,15758,0,0,1,0,0,1,@IPPPHASE,0, -6349.953613, 715.365662, 2.037906, 3.263330,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+132,15758,0,0,1,0,0,1,@IPPPHASE,0, -6346.292969, 777.375793, 1.782544, 1.899878,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+133,15818,0,0,1,0,0,1,@IPPPHASE,1, -6322.091797, 738.599060, 8.332182, 2.500710,1800,0,0,0,0,0,0,0,0,'',0); -- boss Silithus 3

-- remove flags_extra = 1 for Lieutenant General Nokhor
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` = 15818;

DELETE FROM `pool_template` WHERE `entry` IN (15813, 15818);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(15813, 1, "AQ War Event Darkshore Boss"),
(15818, 1, "AQ War Event Silithus Boss");

DELETE FROM `pool_creature` WHERE `pool_entry` = 15813;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@CGUID+105, 15813, 0, 'AQ War Event Darkshore Boss'),
(@CGUID+110, 15813, 0, 'AQ War Event Darkshore Boss'),
(@CGUID+115, 15813, 0, 'AQ War Event Darkshore Boss'),
(@CGUID+123, 15813, 0, 'AQ War Event Silithus Boss'),
(@CGUID+128, 15813, 0, 'AQ War Event Slithus Boss'),
(@CGUID+133, 15813, 0, 'AQ War Event Silithus Boss');

-- add Resonating Crystal Formations to Silithus and Darkshore
DELETE FROM `gameobject` WHERE `guid` IN (@OGUID+11, @OGUID+12, @OGUID+13, @OGUID+14, @OGUID+15, @OGUID+16);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`) VALUES
(@OGUID+11, 180810, 1, 0, 0, 1, 1, 6431.208496, 7.873897, 25.929821, 6.005887, 0, 0, 0, 0, 3600, 255, 1, 'gobject_ipp_aqwar', 0),
(@OGUID+12, 180810, 1, 0, 0, 1, 1, 5070.317383, 106.293625, 42.326523, 3.869612, 0, 0, 0, 0, 3600, 255, 1, 'gobject_ipp_aqwar', 0),
(@OGUID+13, 180810, 1, 0, 0, 1, 1, 4370.228027, 540.763245, 59.281170, 6.165329, 0, 0, 0, 0, 3600, 255, 1, 'gobject_ipp_aqwar', 0),
(@OGUID+14, 180810, 1, 0, 0, 1, 1, -7648.079590, 1426.084717, 2.876715, 3.538846, 0, 0, 0, 0, 3600, 255, 1, 'gobject_ipp_aqwar', 0),
(@OGUID+15, 180810, 1, 0, 0, 1, 1, -7831.400879, 857.148376, -4.281037, 1.477178, 0, 0, 0, 0, 3600, 255, 1, 'gobject_ipp_aqwar', 0),
(@OGUID+16, 180810, 1, 0, 0, 1, 1, -6317.880371, 738.097473, 9.361129, 2.939591, 0, 0, 0, 0, 3600, 255, 1, 'gobject_ipp_aqwar', 0);

-- set Resonating Crystal Formations to 'Not selectable'
UPDATE `gameobject_template_addon` SET `flags` = 16 WHERE `entry` = 180810;

-- Colossus of Ashi pathing
SET @NPC := 15742;
SET @PATH := @NPC * 10;
DELETE FROM `waypoint_data` WHERE `id` = @PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(@PATH, 1, -6497.2, 1021.79, 0.376532, NULL, 0, 0, 0, 100, 0),
(@PATH, 2, -6540.54, 985.638, 0.376532, NULL, 0, 0, 0, 100, 0),
(@PATH, 3, -6610.06, 924.653, 0.37352, NULL, 0, 0, 0, 100, 0),
(@PATH, 4, -6662.7, 935.8, 0.0193457, NULL, 0, 0, 0, 100, 0),
(@PATH, 5, -6704.02, 899.425, -1.39368, NULL, 0, 0, 0, 100, 0),
(@PATH, 6, -6662.7, 935.8, 0.0193457, NULL, 0, 0, 0, 100, 0),
(@PATH, 7, -6610.06, 924.653, 0.37352, NULL, 0, 0, 0, 100, 0),
(@PATH, 8, -6540.54, 985.638, 0.376532, NULL, 0, 0, 0, 100, 0),
(@PATH, 9, -6497.2, 1021.79, 0.376532, NULL, 0, 0, 0, 100, 0),
(@PATH, 10, -6461.18, 1087.72, -0.832504, NULL, 0, 0, 0, 100, 0);

DELETE FROM `creature_template_addon` WHERE `entry` IN (@NPC);
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES
(@NPC,@PATH,0,0,1,0,3, '');

-- Colossus of Regal pathing
SET @NPC := 15741;
SET @PATH := @NPC * 10;
DELETE FROM `waypoint_data` WHERE `id` = @PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(@PATH, 1, -7915.34, 634.485, -28.1829, NULL, 0, 0, 0, 100, 0),
(@PATH, 2, -7877.55, 684.929, -26.9979, NULL, 0, 0, 0, 100, 0),
(@PATH, 3, -7823.26, 668.566, -33.5442, NULL, 0, 0, 0, 100, 0),
(@PATH, 4, -7780.79, 748.608, -37.4108, NULL, 0, 0, 0, 100, 0),
(@PATH, 5, -7739.77, 748.827, -39.9039, NULL, 0, 0, 0, 100, 0),
(@PATH, 6, -7648.13, 654.042, -49.7649, NULL, 0, 0, 0, 100, 0),
(@PATH, 7, -7633.2, 583.735, -51.9796, NULL, 0, 0, 0, 100, 0),
(@PATH, 8, -7655.51, 510.06, -43.5478, NULL, 0, 0, 0, 100, 0),
(@PATH, 9, -7825.94, 550.181, -37.0135, NULL, 0, 0, 0, 100, 0);


DELETE FROM `creature_template_addon` WHERE `entry` IN (@NPC);
INSERT INTO `creature_template_addon` (`entry`,`path_id`,`mount`,`bytes1`,`bytes2`,`emote`,`visibilityDistanceType`,`auras`) VALUES
(@NPC,@PATH,0,0,1,0,3, '');

-- Colossus of Zora pathing
SET @NPC := 15740;
SET @PATH := @NPC * 10;
DELETE FROM `waypoint_data` WHERE `id` = @PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES
(@PATH, 1, -7418.407227, 1649.863770, -32.103611, NULL, 0, 0, 0, 100, 0),
(@PATH, 2, -7409.972656, 1705.264404, -36.461433, NULL, 0, 0, 0, 100, 0),
(@PATH, 3, -7352.450684, 1710.901733, -38.267399, NULL, 0, 0, 0, 100, 0),
(@PATH, 4, -7329.275391, 1640.641968, -32.322731, NULL, 0, 0, 0, 100, 0),
(@PATH, 5, -7299.695801, 1599.568481, -30.213583, NULL, 0, 0, 0, 100, 0),
(@PATH, 6, -7329.275391, 1640.641968, -32.322731, NULL, 0, 0, 0, 100, 0),
(@PATH, 7, -7352.450684, 1710.901733, -38.267399, NULL, 0, 0, 0, 100, 0),
(@PATH, 8, -7409.972656, 1705.264404, -36.461433, NULL, 0, 0, 0, 100, 0),
(@PATH, 9, -7418.407227, 1649.863770, -32.103611, NULL, 0, 0, 0, 100, 0),
(@PATH, 10, -7461.78, 1611, -48.3278, NULL, 0, 0, 0, 100, 0);

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

-- General Rajaxx
UPDATE `creature_text` SET `TextRange` = 4 WHERE `CreatureID` = 15341 AND `GroupID` = 12;

-- Supreme Anubisath Warbringer
UPDATE `creature_template` SET `maxgold` = 23909 WHERE `entry` = 15758; -- previously 83909

SET @IPPPHASE := 65536;
SET @CGUID    := 650000;
SET @OGUID    := 650000;

/* smart scripts */
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN 
(15634, 15740, 15741, 15742, 15758, 15810, 15813, 15818);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN 
(15634, 15740, 15741, 15742, 15758, 15810, 15813, 15818);

INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(15634, 0, 0, 0, 101, 0, 100, 0, 1, 20, 0, 50000, 60000, 0, 11, 25839, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,       'Priestess of the Moon - On Near Player - Cast Mass Healing'),
--
(15740, 0, 0, 0, 0, 0, 100, 0, 60000, 60000, 60000, 60000, 0, 0, 11, 26167, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Colossus of Zora - In Combat - Cast Colossal Smash'),
(15741, 0, 0, 0, 0, 0, 100, 0, 60000, 60000, 60000, 60000, 0, 0, 11, 26167, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Colossus of Regal - In Combat - Cast Colossal Smash'), -- https://www.youtube.com/watch?v=F4aAAo_GSrw
(15742, 0, 0, 0, 0, 0, 100, 0, 60000, 60000, 60000, 60000, 0, 0, 11, 26167, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Colossus of Ashi - In Combat - Cast Colossal Smash'),
--
(15758, 0, 0, 0, 0, 0, 100, 0, 8000, 12000, 8000, 12000, 0, 0, 11, 11971, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Supreme Anubisath Warbringer - Within 0-5 Range - Cast Sundering Cleave'),
(15810, 0, 0, 0, 9, 0, 100, 0, 0, 0, 6000, 9000, 0, 5, 11, 15496, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Eroded Anubisath Warbringer - 0-5 Range - Cast Cleave'),
(15810, 0, 1, 0, 0, 0, 100, 0, 8000, 12000, 8000, 12000, 0, 0, 11, 17963, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,   'Eroded Anubisath Warbringer - Within 0-5 Range - Cast Sundering Cleave'),
(15810, 0, 2, 0, 0, 0, 100, 0, 12000, 12000, 17000, 17000, 0, 0, 11, 11876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Eroded Anubisath Warbringer - In Combat - Cast War Stomp'),
(15813, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Qiraji Officer Zod - On Aggro - Say Line 0'),
(15813, 0, 1, 0, 0, 0, 100, 0, 3000, 6000, 7000, 12000, 0, 0, 11, 19643, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Qiraji Officer Zod - Within 0-5 Range - Cast Mortal Strike'),
(15818, 0, 0, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                       'Lieutenant General Nokhor - On Aggro - Say Line 0'),
(15818, 0, 1, 0, 9, 0, 100, 0, 0, 0, 6000, 9000, 0, 5, 11, 15284, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,            'Lieutenant General Nokhor - 0-5 Range - Cast Cleave'),
(15818, 0, 2, 0, 9, 0, 100, 0, 0, 0, 12000, 18000, 0, 8, 11, 16244, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,          'Lieutenant General Nokhor - Within 0-8 Range - Cast Demoralizing Shout'),
(15818, 0, 3, 0, 0, 0, 100, 0, 3000, 6000, 7000, 12000, 0, 0, 11, 16856, 0, 0, 0, 0, 0, 21, 5, 0, 0, 0, 0, 0, 0, 0,    'Lieutenant General Nokhor - Within 0-5 Range - Cast Mortal Strike'),
(15818, 0, 4, 0, 0, 0, 100, 0, 16000, 20000, 16000, 20000, 0, 0, 11, 25599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,  'Lieutenant General Nokhor - Within 0-8 Range - Cast Thundercrash');


DELETE FROM `creature_text` WHERE `CreatureID` IN (15813, 15818);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(15813, 0, 0, 'Kneel before me, mortal! Kneel before Zod!', 12, 7, 100, 0, 0, 0, 11471, 0, 'Qiraji Officer Zod'),
(15818, 0, 0, 'Burn in hate, $r.', 12, 7, 100, 0, 0, 0, 11475, 0, 'Lieutenant General Nokhor'); -- need to check language, set to common, currently can't understand it. 

DELETE FROM `creature_text` WHERE `CreatureID`= 15693;
INSERT INTO `creature_text` (`CreatureID`,`GroupID`,`ID`,`Text`,`Type`,`Language`,`Probability`,`Emote`,`Duration`,`Sound`,`BroadcastTextId`, `TextRange`, `comment`) VALUES
(15693, 0, 0, '$n, Champion of the Bronze Dragonflight, has rung the Scarab Gong. The ancient gates of Ahn\'Qiraj open, revealing the horrors of a forgotten war...', 16, 0, 100, 1, 0, 0, 11427, 4, 'EMOTE_AQ_GONG_1'),
(15693, 1, 0, 'Massive Qiraji resonating crystals break through the earthen crust of Kalimdor. Colossal creatures made of obsidian stone breach the freshly broken land...', 16, 0, 100, 1, 0, 0, 11432, 4, 'EMOTE_AQ_GONG_2'),
(15693, 2, 0, 'Colossus of Zora casts its massive shadow upon the whole of Silithus.', 16, 0, 100, 1, 0, 0, 0, 4, 'EMOTE_AQ_GONG_3'),
(15693, 3, 0, 'Colossus of Ashi breaks free of its cocoon beneath Hive\'Ashi.', 16, 0, 100, 1, 0, 0, 0, 4, 'EMOTE_AQ_GONG_4'),
(15693, 4, 0, 'Colossus of Regal hears the call to battle and rises to serve its master.', 16, 0, 100, 1, 0, 0, 0, 4, 'EMOTE_AQ_GONG_5');

-- add bosses to Silithus and Darkshore 
DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+101 AND @CGUID+140;
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, 
`spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(@CGUID+101,15810,0,0,1,0,0,1,@IPPPHASE,0,4386.996582, 550.179260, 54.762119, 0.581150,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+102,15810,0,0,1,0,0,1,@IPPPHASE,0,4388.178711, 513.457581, 53.590897, 3.921458,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+103,15810,0,0,1,0,0,1,@IPPPHASE,0,4356.629395, 519.999329, 58.591854, 3.295495,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+104,15810,0,0,1,0,0,1,@IPPPHASE,0,4361.684570, 558.289734, 56.632832, 4.635385,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+105,15813,0,0,1,0,0,1,@IPPPHASE,0,4372.355957, 536.665649, 59.118938, 4.758702,1800,0,0,0,0,0,0,0,0,'',0), -- boss darkshore 1
--
(@CGUID+106,15810,0,0,1,0,0,1,@IPPPHASE,0, 5083.312988, 90.152863, 45.683632, 4.534914,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+107,15810,0,0,1,0,0,1,@IPPPHASE,0, 5057.701660, 83.685188, 49.825253, 3.410223,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+108,15810,0,0,1,0,0,1,@IPPPHASE,0, 5046.050781, 122.508644, 43.164379, 2.331871,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+109,15810,0,0,1,0,0,1,@IPPPHASE,0, 5071.985840, 138.409653, 41.266869, 0.861605,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+110,15813,0,0,1,0,0,1,@IPPPHASE,0, 5064.384277, 107.279877, 42.528320, 3.140021,1800,0,0,0,0,0,0,0,0,'',0), -- boss darkshore 2
--
(@CGUID+111,15810,0,0,1,0,0,1,@IPPPHASE,0, 6409.220215, 4.401052, 30.286741, 2.987807,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+112,15810,0,0,1,0,0,1,@IPPPHASE,0, 6424.186035, 30.883730, 27.005314, 0.934775,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+113,15810,0,0,1,0,0,1,@IPPPHASE,0, 6454.531738, 28.456089, 31.199347, 0.068485,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+114,15810,0,0,1,0,0,1,@IPPPHASE,0, 6453.624023, -5.977130, 28.319181, 5.131168,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+115,15813,0,0,1,0,0,1,@IPPPHASE,0, 6434.273438, 12.233818, 26.357977, 0.805967,1800,0,0,0,0,0,0,0,0,'',0), -- boss darkshore 3
--
(@CGUID+116,15742,0,0,1,0,0,1,@IPPPHASE,0, -6545.32, 967.875, 0.374282, 0.785268,3600,5,0,0,0,1,0,0,0,'',0),  -- Colossus of Ashi
(@CGUID+117,15741,0,0,1,0,0,1,@IPPPHASE,0, -7824.52, 663.901, -34.1379, 2.20763,3600,5,0,0,0,1,0,0,0,'',0),   -- Colossus of Regal
(@CGUID+118,15740,0,0,1,0,0,1,@IPPPHASE,0, -7340.2, 1643.75, -34.0787, 4.01405,3600,5,0,0,0,1,0,0,0,'',0),    -- Colossus of Zora
--
(@CGUID+119,15758,0,0,1,0,0,1,@IPPPHASE,0, -7623.261719, 1416.035767, 4.126772,  4.945646,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+120,15758,0,0,1,0,0,1,@IPPPHASE,0, -7659.168457, 1392.619751, 3.995544, 3.687438,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+121,15758,0,0,1,0,0,1,@IPPPHASE,0, -7688.503418, 1428.886963, 3.855407, 2.550966,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+122,15758,0,0,1,0,0,1,@IPPPHASE,0, -7652.402344, 1464.758667, 4.526736, 0.600033,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+123,15818,0,0,1,0,0,1,@IPPPHASE,1, -7644.985840, 1422.093628, 3.326948, 5.378395,1800,15,0,0,0,1,0,0,0,'',0), -- boss Silithus 1
--
(@CGUID+124,15758,0,0,1,0,0,1,@IPPPHASE,0, -7806.652832, 855.699951, -4.778733, 0.353429,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+125,15758,0,0,1,0,0,1,@IPPPHASE,0, -7831.444336, 808.078979, -9.832852, 4.501119,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+126,15758,0,0,1,0,0,1,@IPPPHASE,0, -7881.184082, 864.466614, -1.765002, 2.737900,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+127,15758,0,0,1,0,0,1,@IPPPHASE,0, -7832.478027, 912.945801, -2.498297, 0.817600,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+128,15818,0,0,1,0,0,1,@IPPPHASE,1, -7830.405273, 851.316223, -4.844313, 4.929938,1800,15,0,0,0,1,0,0,0,'',0), -- boss Silithus 2
--
(@CGUID+129,15758,0,0,1,0,0,1,@IPPPHASE,0, -6290.943848, 736.276489, 11.109619, 5.837865,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+130,15758,0,0,1,0,0,1,@IPPPHASE,0, -6303.743652, 703.045105, 11.219690, 4.562379,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+131,15758,0,0,1,0,0,1,@IPPPHASE,0, -6349.953613, 715.365662, 2.037906, 3.263330,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+132,15758,0,0,1,0,0,1,@IPPPHASE,0, -6346.292969, 777.375793, 1.782544, 1.899878,1800,5,0,0,0,1,0,0,0,'',0),
(@CGUID+133,15818,0,0,1,0,0,1,@IPPPHASE,1, -6322.091797, 738.599060, 8.332182, 2.500710,1800,15,0,0,0,1,0,0,0,'',0), -- boss Silithus 3
--
(@CGUID+134,15743,0,0,1,0,0,1,@IPPPHASE,0, -7953.03, 1588.4, -2.4214, 0.0139782, 1800, 0, 0, 345840, 0, 0, 0, 0, 0, '', 0),
(@CGUID+135,15743,0,0,1,0,0,1,@IPPPHASE,0, -7947.04, 1538.89, 0.298302, 6.05763, 1800, 0, 0, 345840, 0, 0, 0, 0, 0, '', 0),
(@CGUID+136,15743,0,0,1,0,0,1,@IPPPHASE,0, -8107.13, 1522.33, 2.60935, 6.03569,  1800, 0, 0, 345840, 0, 0, 0, 0, 0, '', 0),
(@CGUID+137,15744,0,0,1,0,0,1,@IPPPHASE,0, -8107.33, 1536.68, 3.37718, 0.315558, 1800, 5, 0, 194250, 51360, 1, 0, 0, 0, '', 0),
--
(@CGUID+138, 15797,0,0,1,0,0,1,1,0, -6826.11, 813.571, 51.6444, 5.49779, 300, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_ipp_aqwar', 0), -- Colossus Researcher Sophia
(@CGUID+139, 15798,0,0,1,0,0,1,1,0, -6824.03, 813.17, 51.4418, 3.52557, 300, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_ipp_aqwar', 0),  -- Colossus Researcher Nestor
(@CGUID+140, 15799,0,0,1,0,0,1,1,0, -6825.01, 811.389, 51.8466, 1.67552, 300, 0, 0, 0, 0, 0, 0, 0, 0, 'npc_ipp_aqwar', 0); -- Colossus Researcher Eazel

-- nerf hive boss HP so they're doable for a raid of 40
UPDATE `creature_template` SET `HealthModifier` = 600 WHERE entry IN (15740, 15741, 15742);

-- remove flags_extra = 1 (CREATURE_FLAG_EXTRA_INSTANCE_BIND) for Lieutenant General Nokhor
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` = 15818;

-- Supreme Anubisath Warbringer
UPDATE `creature_template` SET `maxgold` = 23909 WHERE `entry` = 15758; -- previously 83909

-- General Rajaxx
UPDATE `creature_text` SET `TextRange` = 4 WHERE `CreatureID` = 15341 AND `GroupID` = 12;

DELETE FROM `pool_template` WHERE `entry` IN (601053, 601054); 
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(601053, 1, "AQ War Event Darkshore Boss"),
(601054, 1, "AQ War Event Silithus Boss");

DELETE FROM `pool_creature` WHERE `pool_entry` IN (15813, 15818, 601053, 601054); -- 15813, 15818 need to be removed later on
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES
(@CGUID+105, 601053, 0, 'AQ War Event Darkshore Boss'),
(@CGUID+110, 601053, 0, 'AQ War Event Darkshore Boss'),
(@CGUID+115, 601053, 0, 'AQ War Event Darkshore Boss'),
(@CGUID+123, 601054, 0, 'AQ War Event Silithus Boss'),
(@CGUID+128, 601054, 0, 'AQ War Event Silithus Boss'),
(@CGUID+133, 601054, 0, 'AQ War Event Silithus Boss');

-- add Resonating Crystal Formations to Silithus and Darkshore
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+101 AND @OGUID+106;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `ScriptName`, `VerifiedBuild`) VALUES
(@OGUID+101, 180810, 1, 0, 0, 1, 1, 6431.208496, 7.873897, 25.929821, 6.005887, 0, 0, 0, 0, 3600, 255, 1, 'gobject_ipp_aqwar', 0),
(@OGUID+102, 180810, 1, 0, 0, 1, 1, 5070.317383, 106.293625, 42.326523, 3.869612, 0, 0, 0, 0, 3600, 255, 1, 'gobject_ipp_aqwar', 0),
(@OGUID+103, 180810, 1, 0, 0, 1, 1, 4370.228027, 540.763245, 59.281170, 6.165329, 0, 0, 0, 0, 3600, 255, 1, 'gobject_ipp_aqwar', 0),
(@OGUID+104, 180810, 1, 0, 0, 1, 1, -7648.079590, 1426.084717, 2.876715, 3.538846, 0, 0, 0, 0, 3600, 255, 1, 'gobject_ipp_aqwar', 0),
(@OGUID+105, 180810, 1, 0, 0, 1, 1, -7831.400879, 857.148376, -4.281037, 1.477178, 0, 0, 0, 0, 3600, 255, 1, 'gobject_ipp_aqwar', 0),
(@OGUID+106, 180810, 1, 0, 0, 1, 1, -6317.880371, 738.097473, 9.361129, 2.939591, 0, 0, 0, 0, 3600, 255, 1, 'gobject_ipp_aqwar', 0);

-- set Resonating Crystal Formations to 'Not selectable'
UPDATE `gameobject_template_addon` SET `flags` = 16 WHERE `entry` = 180810;

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

DELETE FROM `game_event_creature` WHERE `guid` IN (208146, 208159, 208185, 208207, 208240, 208251, 208355, 208368, 208394, 208407);
DELETE FROM `creature_addon` WHERE `guid` IN (29803, 133925, 133926);

/* Several unused BG NPCs have wrong classes in AC - fix to prevent console warning */
UPDATE `creature_template` SET `unit_class` = 2 WHERE `entry` IN (22742, 22791, 22796, 22792, 22627, 22532, 22774, 22534, 22529, 22537, 22790, 22791, 22637, 22599,
                                                                 32013, 22781, 31930, 32128, 31935, 31927, 31938, 32120, 37332, 32142, 31821, 37248, 37453, 37253,
                                                                 37245, 37256, 37443, 37472, 37341);
UPDATE `creature_template` SET `unit_class` = 1 WHERE `entry` IN (22632, 32055, 31921, 37376);
UPDATE `creature_template` SET `unit_class` = 8 WHERE `entry` IN (29273);

/* Delete unused Creature Addon data */
DELETE FROM `creature_addon` WHERE `guid` IN (133917, 133918, 133919, 133920, 133928);

-- needed to avoid error because zone_burning_steppes is run before zone_hillsbrad_foothills
DELETE FROM `pool_creature` WHERE `pool_entry` IN (601046);

-- undo incorrect waypoint IDs 
DELETE FROM `waypoint_data` WHERE `id` = 48310;  -- Lady Sarevess
DELETE FROM `waypoint_data` WHERE `id` = 101820; -- Rexxar

-- removed unused requirement for Onyxia 40, this is now handled with cpp
DELETE FROM `dungeon_access_requirements` WHERE `dungeon_access_id` = 123;

-- undo incorrect title change
UPDATE `creature_template` SET `subname` = 'Master Blacksmithing Trainer' WHERE `entry` = 16583;

-- alliance battlemasters
DELETE FROM `game_event_creature` WHERE `guid` IN (207918, 207929, 207951, 208042, 208081, 208107);

-- Onyxia wotlk version
UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `DamageModifier` = 35, `HealthModifier` = 350.0, `ManaModifier` = 1, `mingold` = 93755, `maxgold` = 122438 WHERE `entry` = 10184;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `DamageModifier` = 1, `HealthModifier` = 5 WHERE `entry` = 11262;
UPDATE `creature_template` SET `minlevel` = 80, `maxlevel` = 80, `DamageModifier` = 7.5, `HealthModifier` = 70, `ManaModifier` = 1 WHERE `entry` = 12129;

-- Naxx40 - Razuvious
DELETE FROM `spell_script_names` WHERE `spell_id` IN (29107, 55543);

-- Naxx40
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` = 15975;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(15975,0,0,0,0,0,100,2,5000,8000,14000,18000,0,0,11,30043,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Cast Spell IC'),
(15975,0,1,0,0,0,100,4,5000,8000,14000,18000,0,0,11,56032,0,0,0,0,0,2,0,0,0,0,0,0,0,0,'Cast Spell IC'),
(15975,0,2,0,0,0,100,0,9000,16000,18000,21000,0,0,11,28434,0,0,0,0,0,5,0,0,0,0,0,0,0,0,'Cast Spell IC');

-- Scourge Invasion Update
UPDATE `creature_template` SET `AIName` = ''   WHERE `entry` = 16136;
UPDATE `creature_template` SET `npcflag` = 1   WHERE `entry` = 16786;
UPDATE `creature_template` SET `npcflag` = 129 WHERE `entry` = 16787;
UPDATE `creature_template` SET `npcflag` = 2   WHERE `entry` IN (29441, 29442);

UPDATE `creature` SET `phaseMask` = 1   WHERE `id1` IN (14682, 14684, 14686, 14690, 14693, 14695);
UPDATE `creature` SET `ScriptName` = '' WHERE `id1` IN (16241, 16255, 16281, 16285, 16359, 16361, 16478, 16484, 16490, 16493, 16494, 16495, 16786, 16787);

-- remove AzerothCore area triggers used by WotLK Scourge Invasion Event
DELETE FROM `areatrigger_involvedrelation` WHERE `id` IN (4092, 4094, 4095, 4096, 4098, 4099, 4100, 4101, 4103, 4104, 4105, 5151, 5152, 5153, 5154, 5158, 5159, 5160, 5161);

-- maraudon cleanup
SET @CGUID  := 349000;
SET @WPID   := 3490000;

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID+1 AND @CGUID+32;
DELETE FROM `creature_formations` WHERE `leaderGUID` IN (@CGUID+1, @CGUID+6, @CGUID+11, @CGUID+16, @CGUID+21, @CGUID+26, @CGUID+31);
DELETE FROM `creature_addon` WHERE `guid` IN (@CGUID+1, @CGUID+6, @CGUID+11, @CGUID+16, @CGUID+21, @CGUID+26, @CGUID+31);
DELETE FROM `waypoint_data` WHERE `id` IN (@WPID+10, @WPID+60, @WPID+110, @WPID+160, @WPID+210, @WPID+260, @WPID+310);
DELETE FROM `creature_addon` WHERE `guid` IN (@CGUID+41, @CGUID+42, @CGUID+43, @CGUID+44);

-- Into the Breach cleanup
SET @CGUID  := 640000;
SET @WPID   := 6400000;

DELETE FROM `creature` WHERE `guid` BETWEEN @CGUID AND @CGUID+212;
DELETE FROM `creature_formations` WHERE `leaderGUID` IN (@CGUID+6, @CGUID+7, @CGUID+8, @CGUID+200, @CGUID+203, @CGUID+206);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-640006, -640007, -640008);
DELETE FROM `creature_addon` WHERE `guid` IN 
(@CGUID+4, @CGUID+5, @CGUID+6, @CGUID+7, @CGUID+8, @CGUID+9, @CGUID+10, @CGUID+11, @CGUID+12, @CGUID+13, @CGUID+14, @CGUID+15, 
@CGUID+16, @CGUID+17, @CGUID+18, @CGUID+19, @CGUID+20, @CGUID+21, @CGUID+22, @CGUID+102, @CGUID+200, @CGUID+203, @CGUID+206);
DELETE FROM `waypoint_data` WHERE `id` IN 
(@WPID+40, @WPID+50, @WPID+60, @WPID+70, @WPID+80, @WPID+90, @WPID+100, @WPID+110, @WPID+120, @WPID+130, @WPID+140, @WPID+150, 
@WPID+160, @WPID+170, @WPID+180, @WPID+190, @WPID+200, @WPID+0210, @WPID+0220, @WPID+1020, @WPID+2000, @WPID+2030, @WPID+2060);

-- AV cleanup
SET @CGUID  := 670000;
SET @WPID   := 6700000;

DELETE FROM `creature_addon` WHERE `guid` IN (@CGUID+88, @CGUID+89, @CGUID+105, @CGUID+106, @CGUID+114, @CGUID+133, @CGUID+138, @CGUID+139);
DELETE FROM `waypoint_data` WHERE `id` IN (@WPID+880, @WPID+890, @WPID+1050, @WPID+1060, @WPID+1140, @WPID+1330, @WPID+1380, @WPID+1390);
DELETE FROM `creature_addon` WHERE `guid` IN (@CGUID+164, @CGUID+165, @CGUID+181, @CGUID+182, @CGUID+190, @CGUID+209, @CGUID+214, @CGUID+215);

-- pvp rank requirements no longer needed
UPDATE `item_template` SET `requiredhonorrank` = 0 WHERE `entry` IN 
(18241, 18242, 18243, 18244, 18245, 18246, 18247, 18248, 18834, 18845, 18846, 18849, 18850, 18851, 18852, 18853, 18854, 18856, 18857, 18858, 18859, 18862, 18863, 18864, 29592, 29593);

UPDATE `item_template` SET `requiredhonorrank` = 0
WHERE `entry` IN (15196, 15198, 16342, 18440, 18441, 18442, 18443, 18444, 16315, 16336, 16337, 18448, 18449, 18454, 18455, 18452, 18453, 18445, 18447, 18456, 18457, 16401,
16403, 23278, 23279, 16393, 16397, 23280, 23281, 17562, 17564, 23282, 23283, 23274, 23275, 16392, 16396, 23284, 23285, 29594, 29595, 16405, 16406, 23286, 23287, 17594, 17596, 23288, 23289, 16369, 16391, 23290, 23291,
16425, 23292, 16426, 23293, 23294, 16422, 23295, 16421, 17567, 23296, 17568, 23297, 23272, 23273, 16417, 23298, 16419, 23299, 29596, 29597, 16430, 23300, 16431, 23301, 17599, 23302, 17600, 23303, 16414, 23304, 16413, 23305,
23306, 16428, 16427, 23307, 16416, 17598, 16423, 23308, 23309, 16424, 23310, 17569, 23311, 17566, 23276, 23277, 23312, 23313, 16420, 16418, 29598, 29599, 16429, 23314, 16432, 23315, 17601, 23316, 23317, 23318, 23319, 16415,
16462, 16463, 16467, 16459, 16448, 16450, 17583, 17584, 17579, 16472, 16471, 16475, 16446, 16454, 16456, 29606, 29607, 29608, 16483, 16484, 16479, 17608, 17603, 17607, 16437, 16440, 16442,
16466, 16465, 16468, 17578, 16441, 16452, 16451, 16449, 17581, 17580, 17602, 16473, 16474, 16476, 16453, 16457, 16455, 29609, 29610, 29611, 16477, 16478, 16480, 17604, 17605, 16444, 16443,
12584, 18825, 18827, 18830, 18833, 18836, 18838, 18843, 18847, 18855, 18865, 18867, 18869, 18873, 18876, 23451, 23452, 23453, 23454, 23455, 23456,
15197, 15199, 15200, 16335, 18428, 16341, 18427, 18461, 16340, 18434, 18436, 16497, 18435, 16532, 18432, 18429, 18430, 16486, 18437,
16531, 16530, 22843, 22862, 16494, 16496, 22863, 22852, 17576, 17577, 22865, 22855, 29600, 29601, 22864, 16498, 16499, 22856, 22857, 16519, 22867, 16518, 16343, 30710, 16509, 22868, 16510, 22858, 17616, 17617, 22869, 22859, 16485, 16487, 22870, 22860,
16517, 16525, 16529, 22874, 16527, 22875, 16493, 16504, 22877, 22878, 16502, 16495, 17574, 17575, 17571, 22881, 17572, 22884, 29602, 29603, 22879, 16500, 16505, 16508, 22880, 16522, 16520, 22876, 16523, 22887, 16513, 16512, 16511, 22872, 22873, 16515, 17615, 22882, 17614, 17611, 22885, 17612, 16488, 22883, 16490, 16491, 22886,
16526, 23251, 16528, 23252, 23253, 16503, 23254, 16501, 23255, 17570, 17573, 23256, 29604, 29605, 16506, 23257, 16507, 23258, 23259, 16521, 23260, 16524, 16514, 23244, 16516, 23243, 17610, 23261, 23262, 17613, 23263, 16489, 23264, 16492,
16569, 16572, 16571, 16567, 16570, 16556, 16554, 16553, 16555, 16552, 17589, 17586, 17587, 17588, 17593, 29612, 29613, 29614, 16559, 16557, 16564, 16560, 16558, 16573, 16576, 16574, 16579, 16575, 16546, 16545, 16548, 16547, 16543, 17618, 17619, 17621, 17620, 17625, 16539, 16538, 16540, 16537, 16534,
16565, 16566, 16568, 16551, 16549, 16550, 17591, 17590, 17592, 29615, 29616, 29617, 16563, 16561, 16562, 16577, 16578, 16580, 16541, 16542, 16544, 17623, 17622, 17624, 16536, 16533, 16535,
18831, 23459, 23464, 16345, 18866, 18828, 18837, 23457, 23465, 18877, 18848, 18871, 18868, 23461, 23467, 18840, 18835, 18844, 18826, 23458, 23466, 18860, 23462, 23468, 23469, 18874);

/* Several unused BG NPCs have wrong classes in AC - fix to prevent console warning */
UPDATE `creature_template` SET `unit_class` = 2 WHERE `entry` IN (22742, 22791, 22796, 22792, 22627, 22532, 22774, 22534, 22529, 22537, 22790, 22791, 22637, 22599,
                                                                 32013, 22781, 31930, 32128, 31935, 31927, 31938, 32120, 37332, 32142, 31821, 37248, 37453, 37253,
                                                                 37245, 37256, 37443, 37472, 37341);
UPDATE `creature_template` SET `unit_class` = 1 WHERE `entry` IN (22632, 32055, 31921, 37376);
UPDATE `creature_template` SET `unit_class` = 8 WHERE `entry` IN (29273);

/* Delete unused Creature Addon data */
DELETE FROM `creature_addon` WHERE `guid` IN (29803, 133917, 133918, 133919, 133920, 133925);

-- battlemasters
DELETE FROM `game_event_creature` WHERE `guid` IN (207918, 207929, 207951, 208042, 208081, 208107, 208146, 208159, 208185); -- alliance
DELETE FROM `game_event_creature` WHERE `guid` IN (208207, 208240, 208251, 208355, 208368, 208394, 208407); -- horde

-- remove AzerothCore area triggers used by WotLK Scourge Invasion Event
DELETE FROM `areatrigger_involvedrelation` WHERE `id` IN (4092, 4094, 4095, 4096, 4098, 4099, 4100, 4101, 4103, 4104, 4105, 5151, 5152, 5153, 5154, 5158, 5159, 5160, 5161);

-- remove arena season event entries added by AC
DELETE FROM `creature_addon` WHERE `guid` IN (88155, 88156, 88158, 88159, 88160);
DELETE FROM `game_event_creature` WHERE `guid` IN 
(17676, 88155, 88156, 88158, 88159, 88160, 91798, 152022, 152023, 152026, 152027, 152028, 152029, 152030, 152031, 202335, 202336, 
208486, 208487, 208488, 208489, 208491, 208492, 208494, 208496, 208498, 208499, 208500, 208501, 208503, 208504, 208506, 208508);

DELETE FROM `creature`   WHERE `id1`   IN (32405, 32832, 32834);
DELETE FROM `npc_vendor` WHERE `entry` IN (32405, 32832, 32834);

DELETE FROM `creature` WHERE `id1` IN (20278); -- Vixton Pinchwhistle


/* the following edits are temporary */


-- undo Replace orc guards with pre-wrathgate abomination guards -- 00_cleanup
UPDATE `creature` SET `id1` = 36213, `equipment_id` = 1 WHERE `guid` IN 
(17669, 28481, 28485, 28486, 28487, 28488, 28489, 28490, 33823, 33831, 34102, 34103, 34104, 34105, 34106, 38296, 38297, 38298, 38299, 38301, 38302, 38305, 
39019, 39020, 39022, 39023, 39024, 39025, 39026, 41884, 41887, 41888, 41889, 41890, 41891, 41892, 41956, 41960, 41961, 41964, 79264, 79265, 79266, 79267);
UPDATE `creature` SET `equipment_id` = 0 WHERE `guid` IN (34103, 34104, 38297);

-- Restore conversation between Faranell and Wrathgate NPC Kraggosh - 00_cleanup
UPDATE `creature_template` SET `AINAME` = 'SmartAI' WHERE `entry` = 2055;

UPDATE `creature_template` SET `minlevel` = 83, `maxlevel` = 83, `ScriptName` = 'npc_king_varian_wrynn' WHERE `entry` = 29611; -- King Varian Wrynn

-- restore AC entries that were wrongly overwritten by AQ war bosses
DELETE FROM `pool_template` WHERE `entry` IN (15813, 15818);
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES
(15813,1,'Thousand Needles - Ore Pool - Iron Deposit / Silver Vein / Gold Vein'),
(15818,1,'Thousand Needles - Ore Pool - Iron Deposit / Silver Vein / Gold Vein');

-- undo Shattrath phasing, now done with phasemask
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` IN (18594, 25167, 27666, 27667);

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

-- restore Lieutenant Rachel Vaccar <Outland Armor Quartermaster>
DELETE FROM `creature_template` WHERE `entry` IN (12778);
INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, 
`exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `speed_swim`, `speed_flight`, `detection_range`, `scale`, `rank`, `dmgschool`, `DamageModifier`, `BaseAttackTime`, `RangeAttackTime`, 
`BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, 
`lootid`, `pickpocketloot`, `skinloot`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `ExperienceModifier`, 
`RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `spell_school_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) VALUES 
--
(12778,0,0,0,0,0,'Lieutenant Rachel Vaccar','Outland Armor Quartermaster',NULL,0,65,65,1,123,4224,1,1.14286,1,1,18,1,0,0,1,2000,2000,1,1,1,33536,2048,0,0,0,0,0,0,7,4096,0,0,0,0,0,0,0,'',0,1,2,1,1,1,0,0,1,0,0,0,'',12340);

DELETE FROM `creature_template_locale` WHERE `entry` IN (12778);
INSERT INTO `creature_template_locale` (`entry`, `locale`, `Name`, `Title`, `VerifiedBuild`) VALUES 
--
(12778,'deDE','Leutnant Rachel Vaccar','Rüstmeisterin für Rüstungen der Scherbenwelt',18019),
(12778,'esES','Teniente Rachel Vaccar','Intendente de armaduras de Terrallende',18019),
(12778,'esMX','Teniente Rachel Vaccar','Intendente de armaduras de Terrallende',18019),
(12778,'frFR','Lieutenant Rachel Vaccar','Intendante des armures d\'Outreterre',18019),
(12778,'koKR','부관 레이첼 바카르','아웃랜드 방어구 병참장교',18019),
(12778,'ruRU','Лейтенант Рашель Ваккар','Начальник снабжения доспехами Запределья',18019),
(12778,'zhCN','拉切尔·瓦卡','外域护甲军需官',18019),
(12778,'zhTW','拉切爾·瓦卡中尉','外域護甲軍需官',18019);


DELETE FROM `creature` WHERE `id1` IN (12778);
INSERT INTO `creature` (`guid`, `id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`) VALUES 
(133922, 12778,  0, -8776.97, 414.074, 103.922, 6.01885,  300);

DELETE FROM `npc_vendor` WHERE `entry` IN (12778);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES 
--
(12778,0,33853,0,0,129,0), (12778,0,33918,0,0,129,0), (12778,0,33919,0,0,129,0), (12778,0,35129,0,0,2028,0), (12778,0,35130,0,0,2028,0), (12778,0,35131,0,0,2028,0), (12778,0,35132,0,0,127,0),
(12778,0,35133,0,0,127,0), (12778,0,35134,0,0,127,0), (12778,0,35135,0,0,127,0), (12778,0,35136,0,0,1911,0), (12778,0,35137,0,0,1911,0), (12778,0,35138,0,0,1911,0), (12778,0,35139,0,0,1911,0),
(12778,0,35140,0,0,1911,0), (12778,0,35141,0,0,1911,0), (12778,0,35142,0,0,1911,0), (12778,0,35143,0,0,1911,0), (12778,0,35144,0,0,1911,0), (12778,0,35145,0,0,1911,0), (12778,0,35146,0,0,1911,0),
(12778,0,35147,0,0,1911,0), (12778,0,35148,0,0,1911,0), (12778,0,35149,0,0,1911,0), (12778,0,35150,0,0,1911,0), (12778,0,35151,0,0,1923,0), (12778,0,35152,0,0,1923,0), (12778,0,35153,0,0,1923,0),
(12778,0,35154,0,0,1923,0), (12778,0,35155,0,0,1923,0), (12778,0,35156,0,0,1923,0), (12778,0,35157,0,0,1923,0), (12778,0,35158,0,0,1923,0), (12778,0,35159,0,0,1923,0), (12778,0,35160,0,0,1923,0),
(12778,0,35161,0,0,1923,0), (12778,0,35162,0,0,1923,0), (12778,0,35163,0,0,1923,0), (12778,0,35164,0,0,1923,0), (12778,0,35165,0,0,1923,0), (12778,0,35166,0,0,1935,0), (12778,0,35167,0,0,1935,0),
(12778,0,35168,0,0,1935,0), (12778,0,35169,0,0,1935,0), (12778,0,35170,0,0,1935,0), (12778,0,35171,0,0,1935,0), (12778,0,35172,0,0,1935,0), (12778,0,35173,0,0,1935,0), (12778,0,35174,0,0,1935,0),
(12778,0,35175,0,0,1935,0), (12778,0,35176,0,0,1935,0), (12778,0,35177,0,0,1935,0), (12778,0,35178,0,0,1935,0), (12778,0,35179,0,0,1935,0), (12778,0,35180,0,0,1935,0), (12778,0,35320,0,0,129,0),
(12778,0,37927,0,0,2028,0), (12778,0,37928,0,0,127,0), (12778,0,37929,0,0,127,0), (12778,0,41587,0,0,2427,0), (12778,0,41588,0,0,2427,0), (12778,0,41589,0,0,2427,0), (12778,0,41590,0,0,2427,0),
(12778,0,41591,0,0,2428,0), (12778,0,41592,0,0,2428,0), (12778,0,44429,0,0,2428,0), (12778,0,44431,0,0,2428,0);

-- clean up alternate version of TBC Badge Vendor for pre-2.3
DELETE FROM `creature` WHERE `guid` = 350994;
DELETE FROM `npc_vendor` WHERE `entry` = 30201;
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` = 18525;
UPDATE `creature_template` SET `ScriptName` = '', `flags_extra` = 0, `MovementType` = 0, `unit_flags` = 0, `npcflag` = 0, `name` = "G\'eras Test Vendor List" WHERE `entry` = 30201;
UPDATE `npc_vendor` SET `entry` = 18525 WHERE `item` IN (35326, 35324, 35321);

-- undo Completion of "The Vials of Eternity" should award players the title "Hand of A'dal" (64)
UPDATE `quest_template` SET `RewardTitle` = 0 WHERE `ID` = 10445;

-- UNDO transport NPCs phasing
UPDATE `creature_template` SET `ScriptName` = '' WHERE `entry` IN (
24924,24926,24927,24929,24930,24931,24934,24935,25070,25071,25072,25074,25075,25076,25077,25100,25101,25102,25103,25104,25105,
26537,26539,31704,31705,31706,31716,31720,31723,31724,31725);

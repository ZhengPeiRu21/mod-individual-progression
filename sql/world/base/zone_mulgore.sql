-- Bristleback Quilboar
UPDATE `creature_template` SET `faction`=111 WHERE `entry`=2952;

-- Bristleback Shaman
UPDATE `creature_template` SET `faction`=111 WHERE `entry`=2953;

-- Bristleback Battleboar
UPDATE `creature_template` SET `faction`=111 WHERE `entry`=2954;

-- Battleboar
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=2966;

-- Bael'dun Digger
UPDATE `creature_template` SET `faction`=57 WHERE `entry`=2989;

-- Bael'dun Appraiser
UPDATE `creature_template` SET `faction`=57 WHERE `entry`=2990;

-- Chaw Stronghide <Journeyman Leatherworker>
UPDATE `creature_template` SET `subname`='Journeyman Leatherworker' WHERE `entry`=3069;

-- Bronk Steelrage
UPDATE `creature_template` SET `subname`='Armorer and Shieldcrafter' WHERE `entry`=3075;

-- Brave Proudsnout
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55 WHERE `entry`=3210;

-- Brave Lightninghorn
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55 WHERE `entry`=3211;

-- Uthan Stillwater <Fisherman>
UPDATE `creature_template` SET `subname`='Fisherman' WHERE `entry`=5938;

-- Yonn Deepcut <Skinner>
UPDATE `creature_template` SET `subname`='Skinner' WHERE `entry`=6290;

-- Mulgore Protector
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55 WHERE `entry`=7975;

-- Chief Sharptusk Thornmantle
UPDATE `creature_template` SET `faction`=14 WHERE `entry`=8554;

-- Twizwick Sprocketgrind <Journeyman Engineer>
UPDATE `creature_template` SET `subname`='Journeyman Engineer' WHERE `entry`=10993;

-- Chaw Stronghide <Journeyman Leatherworker>
DELETE FROM `npc_trainer` WHERE `ID`=3069;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (3069, -380000);

-- Kar Stormsinger <Riding Trainer>
DELETE FROM `npc_trainer` WHERE `ID`=3690;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (3690, -450000);

-- Uthan Stillwater <Fisherman>
DELETE FROM `npc_trainer` WHERE `ID`=5938;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (5938, -360000);

-- Vira Younghoof <First Aid Trainer>
DELETE FROM `npc_trainer` WHERE `ID`=5939;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (5939, -350000);

-- Yonn Deepcut <Skinner>
DELETE FROM `npc_trainer` WHERE `ID`=6290;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (6290, -400000);

-- Twizwick Sprocketgrind <Journeyman Engineer>
DELETE FROM `npc_trainer` WHERE `ID`=10993;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (10993, -340000);

-- Wunna Darkmane <Trade Goods>
# DELETE FROM `npc_vendor` WHERE `entry`=3081 AND `item` IN (10648, 30817, 39354);
DELETE FROM `npc_vendor` WHERE `entry`=3081 AND `item` IN (30817);

-- Harb Clawhoof <Kodo Mounts>
DELETE FROM `npc_vendor` WHERE `entry`=3685 AND `item`=46100;

-- The Hunt Begins
DELETE FROM `quest_offer_reward` WHERE `ID`=747;
INSERT INTO `quest_offer_reward` (`ID`, `RewardText`) VALUES (747, 'The tauren of Narache thank you, $n. You show much promise.');

-- The Hunter's Way
DELETE FROM `quest_offer_reward` WHERE `ID`=861;
INSERT INTO `quest_offer_reward` (`ID`, `RewardText`) VALUES (861, 'Skorn Whitecloud is a wise tauren. He has hunted for years and years, and although his body is old, his spirit burns fiercely. We are honored to have him with us.$B$BIf Skorn sent you to me, then you too must have the hunter\'s spirit. And to have gathered these claws shows your burgeoning skills.$B$BPerhaps you are ready to walk the path.');

-- The Hunt Begins
DELETE FROM `quest_request_items` WHERE `ID`=747;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `CompletionText`) VALUES (747, 1, 'Providing meat and feathers for the tribe is the first step in proving yourself as a hunter before the Chief.');

-- Wildmane Cleansing
DELETE FROM `quest_request_items` WHERE `ID`=760;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `CompletionText`) VALUES (760, 1, 'The last water well remains fetid and poisonous, $N. You must not delay!');

-- Rite of Strength
UPDATE `quest_template` SET `LogDescription`='Kill Bristlebacks in Brambleblade Ravine and bring 12 Bristleback Belts to Chief Hawkwind in Camp Narache.', `RequiredItemCount1`=12 WHERE `ID`=757;

-- Call of Earth (Shaman)
UPDATE `quest_template` SET `Flags`=0 WHERE `ID`=1518;

-- The Hunt Begins
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=747;

-- The Hunt Continues
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=750;

-- A Humble Task
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=752;

-- A Humble Task
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=753;

-- Rites of the Earthmother
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=755;

-- Rite of Strength
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=757;

-- Rites of the Earthmother
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=763;

-- The Battleboars
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=780;

-- Call of Earth (Shaman)
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=1518;

-- Call of Earth (Shaman)
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=1520;

-- Call of Earth (Shaman)
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=1521;

-- A Task Unfinished
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=1656;

-- Rune-Inscribed Note
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=3093;

-- Break Sharptusk!
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=3376;

-- Traugh <Expert Blacksmith>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=2783 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES (15, 2783, 0, 7, 164, 50, 'Show menu if blacksmithing is 50 or higher');

-- Krulmoo Fullmoon <Expert Leatherworker>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4206 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES (15, 4206, 0, 7, 165, 50, 'Show menu if leatherworking is 50 or higher');

-- Mahani <Expert Tailor>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4350 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES (15, 4350, 0, 7, 197, 50, 'Show menu if tailoring is 50 or higher');

-- Vile Familiars (Warlock)
DELETE FROM `creature_questender` WHERE `id`=5765 AND `quest`=1485;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (5765, 1485);

-- Summon Felsteed (Warlock)
DELETE FROM `creature_questender` WHERE `id`=6251 AND `quest`=3631;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (6251, 3631);
DELETE FROM `creature_questender` WHERE `id`=6251 AND `quest`=4487;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (6251, 4487);
DELETE FROM `creature_questender` WHERE `id`=6251 AND `quest`=4488;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (6251, 4488);
DELETE FROM `creature_questender` WHERE `id`=6251 AND `quest`=4489;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (6251, 4489);
DELETE FROM `creature_questender` WHERE `id`=6251 AND `quest`=4490;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (6251, 4490);

-- Vile Familiars (Warlock)
DELETE FROM `creature_queststarter` WHERE `id`=5765 AND `quest`=1485;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (5765, 1485);

-- Summon Felsteed (Warlock)
DELETE FROM `creature_queststarter` WHERE `id`=6251 AND `quest`=4490;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (6251, 4490);

-- Grub
UPDATE `creature_template` SET `gossip_menu_id`=0, `npcflag`=2 WHERE `entry`=3443;

-- Gilthares Firebough
UPDATE `creature_template_model` SET `CreatureDisplayID`=4244 WHERE `CreatureID`=3465;

-- Hraq <Blacksmithing Supplier>
UPDATE `creature_template` SET `subname`='Blacksmithing Supplier' WHERE `entry`=3477;

-- Traugh <Expert Blacksmith>
UPDATE `creature_template` SET `subname`='Expert Blacksmith' WHERE `entry`=3478;

-- Kil'hala <Journeyman Tailor>
UPDATE `creature_template` SET `subname`='Journeyman Tailor' WHERE `entry`=3484;

-- Hula'mahi <Reagents and Herbs>
UPDATE `creature_template` SET `subname`='Reagents and Herbs' WHERE `entry`=3490;

-- Tinkerwiz <Journeyman Engineer>
UPDATE `creature_template` SET `subname`='Journeyman Engineer' WHERE `entry`=3494;

-- Gagsprocket <Engineering Goods>
UPDATE `creature_template` SET `subname`='Engineering Goods' WHERE `entry`=3495;

-- Silithid Protector
UPDATE `creature_template` SET `faction`=16 WHERE `entry`=3503;

-- Devrak <Wind Rider Master>
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55 WHERE `entry`=3615;

-- Deviate Coiler
UPDATE `creature_template` SET `rank`=1 WHERE `entry`=3630;

-- Deviate Stinglash
UPDATE `creature_template` SET `rank`=1 WHERE `entry`=3631;

-- Deviate Creeper
UPDATE `creature_template` SET `rank`=1 WHERE `entry`=3632;

-- Deviate Slayer
UPDATE `creature_template` SET `rank`=1 WHERE `entry`=3633;

-- Deviate Stalker
UPDATE `creature_template` SET `maxlevel`=17, `rank`=1 WHERE `entry`=3634;

-- Devouring Ectoplasm
UPDATE `creature_template` SET `rank`=1 WHERE `entry`=3638;

-- Deviate Lurker
UPDATE `creature_template` SET `rank`=1 WHERE `entry`=3641;

-- Trigore the Lasher
UPDATE `creature_template` SET `minlevel`=19, `maxlevel`=19, `rank`=2 WHERE `entry`=3652;

-- Boahn <Druid of the Fang>
UPDATE `creature_template` SET `minlevel`=20, `maxlevel`=20, `rank`=2 WHERE `entry`=3672;

-- Krulmoo Fullmoon <Expert Leatherworker>
UPDATE `creature_template` SET `subname`='Expert Leatherworker' WHERE `entry`=3703;

-- Mahani <Expert Tailor>
UPDATE `creature_template` SET `subname`='Expert Tailor' WHERE `entry`=3704;

-- Darkmist Widow
UPDATE `creature_template` SET `minlevel`=40, `maxlevel`=40, `rank`=4 WHERE `entry`=4380;

-- Waldor <Journeyman Leatherworker>
UPDATE `creature_template` SET `subname`='Journeyman Leatherworker' WHERE `entry`=5784;

-- Aean Swiftriver <Alliance Outrunner>
UPDATE `creature_template` SET `minlevel`=25, `maxlevel`=25 WHERE `entry`=5797;

-- Marcus Bel <Alliance Outrunner>
UPDATE `creature_template` SET `minlevel`=24, `maxlevel`=24 WHERE `entry`=5800;

-- Foreman Grills
UPDATE `creature_template` SET `minlevel`=19 WHERE `entry`=5835;

-- Razorfen Servitor
UPDATE `creature_template` SET `rank`=1 WHERE `entry`=6132;

-- Dranh <Skinner>
UPDATE `creature_template` SET `subname`='Skinner' WHERE `entry`=6387;

-- Death's Head Cultist
UPDATE `creature_template` SET `rank`=1 WHERE `entry`=7872;

-- Razorfen Battleguard
UPDATE `creature_template` SET `rank`=1 WHERE `entry`=7873;

-- Razorfen Thornweaver
UPDATE `creature_template` SET `rank`=1 WHERE `entry`=7874;

-- Ambassador Bloodrage
UPDATE `creature_template` SET `rank`=2 WHERE `entry`=7895;

-- Muck Frenzy
UPDATE `creature_template` SET `minlevel`=15, `maxlevel`=15 WHERE `entry`=8236;

-- Vazario Linkgrease <Master Goblin Engineer>
UPDATE `creature_template` SET `subname`='Master Goblin Engineer' WHERE `entry`=8738;

-- Omusa Thunderhorn <Wind Rider Master>
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55 WHERE `entry`=10378;

-- Ambassador Malcin
UPDATE `creature_template` SET `rank`=1 WHERE `entry`=12865;

-- Horde Elite
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55 WHERE `entry`=14717;

-- Bragok <Flight Master>
UPDATE `creature_template` SET `minlevel`=55, `maxlevel`=55 WHERE `entry`=16227;

-- Traugh <Expert Blacksmith>
DELETE FROM `npc_trainer` WHERE `ID`=3478;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (3478, -310000);
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (3478, -310001);

-- Kil'hala <Journeyman Tailor>
DELETE FROM `npc_trainer` WHERE `ID`=3484;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (3484, -410000);

-- Tinkerwiz <Journeyman Engineer>
DELETE FROM `npc_trainer` WHERE `ID`=3494;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (3494, -340000);

-- Krulmoo Fullmoon <Expert Leatherworker>
DELETE FROM `npc_trainer` WHERE `ID`=3703;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (3703, -380000);
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (3703, -380001);

-- Mahani <Expert Tailor>
DELETE FROM `npc_trainer` WHERE `ID`=3704;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (3704, -410000);
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (3704, -410001);

-- Waldor <Journeyman Leatherworker>
DELETE FROM `npc_trainer` WHERE `ID`=5784;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (5784, -380000);

-- Dranh <Skinner>
DELETE FROM `npc_trainer` WHERE `ID`=6387;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (6387, -400000);

-- Duhng <Cook>
DELETE FROM `npc_trainer` WHERE `ID`=8306;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (8306, -320000);

-- Vazario Linkgrease <Master Goblin Engineer>
DELETE FROM `npc_trainer` WHERE `ID`=8738;

-- Grub
DELETE FROM `npc_vendor` WHERE `entry`=3443;

-- Tari'qa <Trade Supplies>
DELETE FROM `npc_vendor` WHERE `entry`=3482 AND `item`=39354;

-- Wrahk <Tailoring Supplies>
DELETE FROM `npc_vendor` WHERE `entry`=3485 AND `item`=38426;

-- Hula'mahi <Reagents and Herbs>
DELETE FROM `npc_vendor` WHERE `entry`=3490 AND `item` IN (21835, 21927, 22053, 22054, 22055, 22147, 22148, 37201, 43230, 43231, 43232, 43233, 43234, 43235, 43237);
DELETE FROM `npc_vendor` WHERE `entry`=3490 AND `item`=8925;
INSERT INTO `npc_vendor` (`entry`, `item`) VALUES (3490, 8925);

-- Gagsprocket <Engineering Goods>
DELETE FROM `npc_vendor` WHERE `entry`=3495 AND `item` IN (14639, 39684, 40533);

-- Ranik <Trade Supplies>
DELETE FROM `npc_vendor` WHERE `entry`=3499 AND `item` IN (20855, 39354);

-- Kalldan Felmoon <Specialist Leatherworking Supplies>
DELETE FROM `npc_vendor` WHERE `entry`=5783 AND `item`=38426;

-- Yonada <Tailoring & Leatherworking Supplies>
DELETE FROM `npc_vendor` WHERE `entry`=5944 AND `item`=38426;

-- Tarban Hearthgrain <Baker>
DELETE FROM `npc_vendor` WHERE `entry`=8307 AND `item`=30817;

-- Kelm Hargunth <Warsong Supply Officer>
DELETE FROM `npc_vendor` WHERE `entry`=14754 AND `item`=30498;

-- The Angry Scytheclaws
DELETE FROM `quest_offer_reward` WHERE `ID`=905;
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `RewardText`) VALUES (905, 1, 'So you\'ve been to the nests and placed the feathers of your prey within them. That took a fair portion of courage, no doubt about it.$B$BDo you feel a little tougher, $N? Because you look tougher now then when you first came here. I guess the Barrens is doing its job.');

-- Call of Water (Shaman)
DELETE FROM `quest_request_items` WHERE `ID`=63;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `CompletionText`) VALUES (63, 1, 'The brazier still reflects the ambient light from the area, and the flame shifts slightly as you move closer.$B$BThe corruption along the hills seems to have kept its distance, and besides the missing components, the brazier looks prepared for the ritual to summon a cleansed manifestation of water.');

-- Hamuul Runetotem
DELETE FROM `quest_request_items` WHERE `ID`=1489;
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `CompletionText`) VALUES (1489, 1, NULL);

-- Call of Water (Shaman)
UPDATE `quest_template` SET `LogDescription`='Bring the Shard of Water to Islen Waterseer in the Barrens.' WHERE `ID`=96;

-- Call of Water (Shaman)
UPDATE `quest_template` SET `LogDescription`='Bring the Vial of Purest Water to Islen Waterseer in the Barrens.' WHERE `ID`=220;

-- Ziz Fizziks
UPDATE `quest_template` SET `LogDescription`='Speak with Ziz Fizziks in Windshear Crag.' WHERE `ID`=1483;

-- Call of Water (Shaman)
UPDATE `quest_template` SET `LogDescription`='Find Brine in Southern Barrens.' WHERE `ID`=1530;

-- Mura Runetotem
UPDATE `quest_template` SET `LogDescription`='Speak with Mura Runetotem in the Sepulcher.' WHERE `ID`=3301;

-- Melor Sends Word
UPDATE `quest_template_addon` SET `PrevQuestID`=882 WHERE `ID`=1130;

-- Shard of a Felhound (Warlock)
UPDATE `quest_template_addon` SET `PrevQuestID`=1799 WHERE `ID`=4962;

-- Shard of an Infernal (Warlock)
UPDATE `quest_template_addon` SET `PrevQuestID`=1799 WHERE `ID`=4963;

-- The Completed Orb of Dar'Orahil (Warlock)
UPDATE `quest_template_addon` SET `PrevQuestID`=4962 WHERE `ID`=4964;

-- The Completed Orb of Noh'Orahil (Warlock)
UPDATE `quest_template_addon` SET `PrevQuestID`=4963 WHERE `ID`=4975;

-- Supplies for the Crossroads
UPDATE `quest_template_addon` SET `PrevQuestID`=871 WHERE `ID`=5041;



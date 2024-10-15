-- Doctor Martin Felben <Journeyman Alchemist Trainer>
UPDATE `creature_template` SET `subname`='Journeyman Alchemist Trainer', `npcflag`=81, `trainer_type`=2 WHERE `entry`=11044;

-- Doctor Marsh <Expert Alchemist>
UPDATE `creature_template` SET `subname`='Expert Alchemist', `npcflag`=81, `trainer_type`=2, `type_flags`=134217728 WHERE `entry`=4609;

-- Basil Frye <Journeyman Blacksmith>
UPDATE `creature_template` SET `subname`='Journeyman Blacksmith', `npcflag`=81, `trainer_type`=2 WHERE `entry`=4605;

-- Malcomb Wynn <Journeyman Enchanter>
UPDATE `creature_template` SET `subname`='Journeyman Enchanter', `npcflag`=81, `trainer_type`=2 WHERE `entry`=11067;

-- Graham Van Talen <Journeyman Engineer>
UPDATE `creature_template` SET `subname`='Journeyman Engineer', `npcflag`=83, `trainer_type`=2 WHERE `entry`=4586;

-- Dan Golthas <Journeyman Leatherworker>
UPDATE `creature_template` SET `subname`='Journeyman Leatherworker', `npcflag`=81, `trainer_type`=2 WHERE `entry`=223;

-- Victor Ward <Journeyman Tailor>
UPDATE `creature_template` SET `subname`='Journeyman Tailor', `npcflag`=81, `trainer_type`=2 WHERE `entry`=11048;

-- Rhiannon Davis <Expert Tailor>
UPDATE `creature_template` SET `subname`='Expert Tailor', `npcflag`=81, `trainer_type`=2, `type_flags`=134217728 WHERE `entry`=11049;


-- Doctor Martin Felben <Journeyman Alchemist Trainer>
DELETE FROM `npc_trainer` WHERE `ID`=11044;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (11044, -300000);

-- Doctor Marsh <Expert Alchemist>
DELETE FROM `npc_trainer` WHERE `ID`=4609;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (4609, -300000), (4609, -300001);

-- Basil Frye <Journeyman Blacksmith>
DELETE FROM `npc_trainer` WHERE `ID`=4605;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (4605, -310000);

-- Malcomb Wynn <Journeyman Enchanter>
DELETE FROM `npc_trainer` WHERE `ID`=11067;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (11067, -330000);

-- Graham Van Talen <Journeyman Engineer>
DELETE FROM `npc_trainer` WHERE `ID`=4586;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (4586, -340000);

-- Dan Golthas <Journeyman Leatherworker>
DELETE FROM `npc_trainer` WHERE `ID`=223;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (223, -380000);

-- Victor Ward <Journeyman Tailor>
DELETE FROM `npc_trainer` WHERE `ID`=11048;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (11048, -410000);

-- Rhiannon Davis <Expert Tailor>
DELETE FROM `npc_trainer` WHERE `ID`=11049;
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (11049, -410000), (11049, -410001);

-- Doctor Marsh <Expert Alchemist>
DELETE FROM `gossip_menu_option` WHERE `MenuID`=4130;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`) VALUES
(4130, 0, 3, 'Train me.', 3266, 5, 16);

-- Rhiannon Davis <Expert Tailor>
DELETE FROM `gossip_menu_option` WHERE `MenuID`=4352;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`) VALUES 
(4352, 0, 3, 'Train me.', 3266, 5, 16);


-- Doctor Marsh <Expert Alchemist>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4130 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 4130, 0, 7, 171, 50, 'Show menu if alchemy is 50 or higher');

-- Doctor Herbert Halsey <Artisan Alchemist>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4132 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 4132, 0, 7, 171, 125, 'Show menu if alchemy is 125 or higher');

-- James Van Brunt <Expert Blacksmith>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=1022 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES
(15, 1022, 0, 7, 164, 50, 'Show menu if blacksmithing is 50 or higher');

-- Lavinia Crowe <Expert Enchanter>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4166 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES 
(15, 4166, 0, 7, 333, 50, 'Show menu if enchanting is 50 or higher');

-- Arthur Moore <Expert Leatherworker>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4210 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES 
(15, 4210, 0, 7, 165, 50, 'Show menu if leatherworking is 50 or higher');

-- Rhiannon Davis <Expert Tailor>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4352 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES 
(15, 4352, 0, 7, 197, 50, 'Show menu if tailoring is 50 or higher');

-- Josef Gregorian <Artisan Tailor>
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=4354 AND `SourceEntry`=0 AND `ConditionTypeOrReference`=7;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `ConditionTypeOrReference`, `ConditionValue1`, `ConditionValue2`, `Comment`) VALUES 
(15, 4354, 0, 7, 197, 125, 'Show menu if tailoring is 125 or higher');


-- Summon Felsteed (Warlock)
DELETE FROM `creature_queststarter` WHERE `id`=4563 AND `quest`=4489;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (4563, 4489);

-- Mary Edras <First Aid Trainer> 
DELETE FROM `npc_trainer` WHERE `ID`=4591; 
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (4591, -350000); 


/* Replace orc guards with pre-wrathgate abomination guards */
UPDATE `creature` SET `id1`=5624, `equipment_id`=0 WHERE `id1`=36213;

DELETE FROM `gossip_menu_option` WHERE (`MenuID`) IN (2847, 2848, 2849);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(2847, 0, 0, 'Alchemy', 3460, 1, 1, 2834, 336, 0, 0, NULL, 0, 0),
(2847, 1, 0, 'Blacksmithing', 3461, 1, 1, 2835, 337, 0, 0, NULL, 0, 0),
(2847, 2, 0, 'Cooking', 3462, 1, 1, 2836, 338, 0, 0, NULL, 0, 0),
(2847, 3, 0, 'Enchanting', 3463, 1, 1, 2837, 339, 0, 0, NULL, 0, 0),
(2847, 4, 0, 'Engineering', 4976, 1, 1, 2838, 340, 0, 0, NULL, 0, 0),
(2847, 5, 0, 'First Aid', 3464, 1, 1, 2839, 341, 0, 0, NULL, 0, 0),
(2847, 6, 0, 'Fishing', 3465, 1, 1, 2840, 342, 0, 0, NULL, 0, 0),
(2847, 7, 0, 'Herbalism', 3466, 1, 1, 2841, 343, 0, 0, NULL, 0, 0),
(2847, 8, 0, 'Inscription', 48811, 1, 1, 10019, 344, 0, 0, NULL, 0, 0),
(2847, 9, 0, 'Leatherworking', 3467, 1, 1, 2842, 345, 0, 0, NULL, 0, 0),
(2847, 10, 0, 'Mining', 3468, 1, 1, 2843, 347, 0, 0, NULL, 0, 0),
(2847, 11, 0, 'Skinning', 3471, 1, 1, 2844, 346, 0, 0, NULL, 0, 0),
(2847, 12, 0, 'Tailoring', 3469, 1, 1, 2845, 348, 0, 0, NULL, 0, 0),
(2848, 0, 0, 'Mage', 3448, 1, 1, 2821, 331, 0, 0, NULL, 0, 0),
(2848, 2, 0, 'Priest', 3449, 1, 1, 2829, 332, 0, 0, NULL, 0, 0),
(2848, 3, 0, 'Rogue', 4885, 1, 1, 2830, 333, 0, 0, NULL, 0, 0),
(2848, 4, 0, 'Warlock', 4886, 1, 1, 2832, 334, 0, 0, NULL, 0, 0),
(2848, 5, 0, 'Warrior', 2910, 1, 1, 2833, 335, 0, 0, NULL, 0, 0),
(2849, 0, 0, 'The bank', 4888, 1, 1, 2822, 319, 0, 0, NULL, 0, 0),
(2849, 1, 0, 'The bat handler', 6790, 1, 1, 2823, 321, 0, 0, NULL, 0, 0),
(2849, 2, 0, 'The guild master', 3428, 1, 1, 2824, 323, 0, 0, NULL, 0, 0),
(2849, 3, 0, 'The inn', 5090, 1, 1, 2825, 324, 0, 0, NULL, 0, 0),
(2849, 4, 0, 'The mailbox', 5514, 1, 1, 2826, 326, 0, 0, NULL, 0, 0),
(2849, 5, 0, 'The auction house', 5515, 1, 1, 2827, 318, 0, 0, NULL, 0, 0),
(2849, 6, 0, 'The zeppelin master', 5518, 1, 1, 2828, 451, 0, 0, NULL, 0, 0),
(2849, 7, 0, 'The weapon master', 7253, 1, 1, 3726, 328, 0, 0, NULL, 0, 0),
(2849, 8, 0, 'The stable master', 8508, 1, 1, 4906, 327, 0, 0, NULL, 0, 0),
(2849, 9, 0, 'The battlemaster', 10359, 1, 1, 6334, 322, 0, 0, NULL, 0, 0),
(2849, 10, 0, 'A class trainer', 5338, 1, 1, 2848, 0, 0, 0, NULL, 0, 0),
(2849, 11, 0, 'A profession trainer', 6635, 1, 1, 2847, 0, 0, 0, NULL, 0, 0);

/* Wrathgate NPCs - just deleting for now, but maybe can implement a post-Wrathgate world state later */
DELETE FROM `creature` WHERE `guid` IN (43466, 79263);

/* Restore quests series The Deathstalkers */
DELETE FROM `creature_questender` WHERE `id` = 6467 AND `quest` = 14420;
DELETE FROM `creature_questender` WHERE `id` = 6467 AND `quest` = 14421;
DELETE FROM `creature_questender` WHERE `id` = 6522 AND `quest` = 14419;
DELETE FROM `creature_questender` WHERE `id` = 36517 AND `quest` = 14418;
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES (6467, 1886);
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES (6467, 1899);
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES (6522, 1898);
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES (36517, 1978);
DELETE FROM `creature_queststarter` WHERE `id` = 6467 AND `quest` = 14418;
DELETE FROM `creature_queststarter` WHERE `id` = 6467 AND `quest` = 14419;
DELETE FROM `creature_queststarter` WHERE `id` = 6467 AND `quest` = 14420;
DELETE FROM `creature_queststarter` WHERE `id` = 6522 AND `quest` = 14421;
REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES (6467, 1886);
REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES (6467, 1898);
REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES (6522, 1899);

UPDATE `quest_template` SET `RewardNextQuest` = 1898 WHERE `ID` = 1886;
UPDATE `quest_template` SET `RewardNextQuest` = 1899 WHERE `ID` = 1898;
UPDATE `quest_template` SET `RewardNextQuest` = 1978 WHERE `ID` = 1899;

/* Restore Varimathras */
UPDATE `creature` SET `id1`=2425, `equipment_id`=0 WHERE `id1`=36273;

/* Restore correct quests for Varimathras */
DELETE FROM `disables` WHERE `sourceType` = 1 AND `entry` IN (550, 6522, 6521, 1048, 5725);

DELETE FROM `creature_questender` WHERE `id` = 36273 AND `quest` = 6144;
DELETE FROM `creature_questender` WHERE `id` = 36273 AND `quest` = 14351;
DELETE FROM `creature_questender` WHERE `id` = 36273 AND `quest` = 14352;
DELETE FROM `creature_questender` WHERE `id` = 36273 AND `quest` = 14353;
DELETE FROM `creature_questender` WHERE `id` = 36273 AND `quest` = 14355;
DELETE FROM `creature_questender` WHERE `id` = 36273 AND `quest` = 14356;
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES (2425, 6144);
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES (2425, 14351);
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES (2425, 14352);
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES (2425, 14353);
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES (2425, 14355);
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES (2425, 14356);

DELETE FROM `creature_queststarter` WHERE `id`=2215 AND `quest`=14351;
REPLACE INTO `creature_queststarter` (`id`, `quest`) VALUES (2215, 550);
REPLACE INTO `creature_questender` (`id`, `quest`) VALUES (2425, 550);
UPDATE `quest_template` SET `RewardNextQuest` = 550 WHERE `ID` = 541;

DELETE FROM `creature_loot_template` WHERE `Entry`=4421 AND `Item`=49205 AND `Reference`=0 AND `GroupId`=0;
REPLACE INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES (4421, 17008, 0, 100, 0, 1, 0, 1, 1, 'Charlga Razorflank - Small Scroll');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 1 AND `SourceGroup` = 4421 AND `SourceEntry` = 49205 AND `SourceId` = 0 AND `ElseGroup` = 0 AND `ConditionTypeOrReference` = 6 AND `ConditionTarget` = 0 AND `ConditionValue1` = 67 AND `ConditionValue2` = 0 AND `ConditionValue3` = 0;
REPLACE INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES (1, 4421, 17008, 0, 0, 6, 0, 67, 0, 0, 0, 0, 0, '', NULL);

UPDATE `item_template` SET `flags` = 2048 WHERE `entry` = 17008;
UPDATE `item_template` SET `description` = 'To be opened by Lord Varimathras.' WHERE `entry` = 3701;

UPDATE `quest_template`
SET `QuestCompletionLog` = "Return to Varimathras at the Royal Quarter in the Undercity."
WHERE `ID` = 5725;

UPDATE `quest_template`
SET `LogDescription`  = "Bring Ambassador Malcin's Head to Varimathras in the Undercity.",
    `QuestCompletionLog` = "Return to Varimathras at the Royal Quarter in the Undercity."
WHERE `ID` = 6521;

UPDATE `quest_template`
SET `LogDescription`  = "Take Darthalia's Sealed Commendation to Varimathras in the Undercity.",
    `QuestDescription` = "Because you fought with such valor and perseverance in the Battle of Hillsbrad, I have written this commendation, extolling your heroics in combat for the high command to recognize.$b$bTake this sealed commendation to Varimathras in the Undercity.  Go with pride, $c.",
    `QuestCompletionLog` = "Return to Varimathras at the Royal Quarter in the Undercity."
WHERE `ID` = 14351;

UPDATE `quest_template`
SET `LogDescription`  = "Take the Small Scroll to Varimathras in the Undercity.",
    `QuestDescription` = "My Lady,$B$BYou know very well what it is we are offering. The opportunity for you to take the Barrens and the lands beyond is a great one. We simply want your aid in return. By aid we mean nothing more than your giving us the freedom to take action in the area.$B$BPlease, allow us to discuss this further. We have great power and are willing to share with those wise enough to join us. I will remain outside Razorfen Downs for the time being.$B$BBest Regards,$BAmbassador Malcin",
    `QuestCompletionLog` = "Return to Varimathras at the Royal Quarter in the Undercity."
WHERE `ID` = 14352;

UPDATE `quest_template`
SET `LogDescription`  = "Bring Ambassador Malcin's Head to Varimathras in the Undercity.",
    `QuestDescription` = "Supposedly this Malcin is outside Razorfen Downs. There's no question - he has to die.$b$bMy contacts in Orgrimmar tell me their scouts have found signs of the Plague down there. The quilboar are showing signs of being plagued, too; they're much more powerful. Whatever the Scourge are doing down there needs to end. Now.$b$bFind this Malcin and kill him. Report back here when he's dead.",
    `QuestCompletionLog` = "Return to Varimathras at the Royal Quarter in the Undercity."
WHERE `ID` = 14353;

UPDATE `quest_template`
SET `LogDescription`  = "Kill High Inquisitor Whitemane, Scarlet Commander Mograine, Herod, the Scarlet Champion and Houndmaster Loksey and then report back to Varimathras in the Undercity.",
    `QuestDescription` = "One of my duties while I'm stationed here is to help the Forsaken take care of their borders, and that, $c, is exactly what you're going to do for me.$b$bI might live and breathe, but the Scarlet Crusade will cut down my people as quickly as they will one of the undead. They're a problem here, a big one, and you're going to do something about it.$b$bGo to the Monastery and slay High Inquisitor Whitemane and her lieutenants.",
    `QuestCompletionLog` = "Return to Varimathras at the Royal Quarter in the Undercity."
WHERE `ID` = 14355;

UPDATE `quest_template`
SET `LogDescription`  = "Bring the books Spells of Shadow and Incantations from the Nether to Varimathras in Undercity.",
    `QuestDescription` = "Listen up, $c.$b$bYou may not know this, but Orgrimmar's got a problem. Deep in Ragefire Chasm, a sect of the Shadow Council called the Searing Blade performs their sinister work. They're mainly orcs, and I can't trust sensitive information in the hands of the grunts there. That's where you come in.$b$bThey should have two books in their possession. I want them kept out of the hands of the Searing Blade and the Forsaken alike. Bring them to me directly.",
    `QuestCompletionLog` = "Return to Varimathras at the Royal Quarter in the Undercity."
WHERE `ID` = 14356;

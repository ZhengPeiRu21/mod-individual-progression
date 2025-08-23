DELETE FROM `creature_queststarter` WHERE `quest` IN (4182, 4183) AND `id` = 9562;
DELETE FROM `creature_queststarter` WHERE `quest` IN (4184, 4223) AND `id` = 344;
DELETE FROM `creature_queststarter` WHERE `quest` = 4185 AND `id` = 29611;
DELETE FROM `creature_queststarter` WHERE `quest` = 4186 AND `id` = 1748;
DELETE FROM `creature_queststarter` WHERE `quest` IN (4224, 4241, 4264) AND `id` = 9560;
DELETE FROM `creature_queststarter` WHERE `quest` IN (4242, 4282, 4322) AND `id` = 9023;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(9562, 4182),  -- Dragon Menace, Helendis Riverhorn
(9562, 4183),  -- True Masters [1], Helendis Riverhorn
(344, 4184),   -- True Masters [2], Magistrate Solomon
(29611, 4185), -- True Masters [3], Varian Wrynn
(1748, 4186),  -- True Masters [4], Highlord Bolvar Fordragon
(344, 4223),   -- True Masters [5], Magistrate Solomon
(9560, 4224),  -- True Masters [6], Marshal Maxwell
(9560, 4241),  -- 'Marshal Windsor', Marshal Maxwell
(9023, 4242),  -- Abandon Hope, Marshal Windsor
(9023, 4282),  -- A Shred of Hope, Marshal Windsor
(9023, 4322);  -- Jail Break!, Marshal Windsor

DELETE FROM `creature_questender` WHERE `quest` = 4182 AND `id` = 9562;
DELETE FROM `creature_questender` WHERE `quest` IN (4183, 4186) AND `id` = 344;
DELETE FROM `creature_questender` WHERE `quest` = 4184 AND `id` = 29611;
DELETE FROM `creature_questender` WHERE `quest` = 4185 AND `id` = 1748;
DELETE FROM `creature_questender` WHERE `quest` IN (4223, 4224, 4242) AND `id` = 9560;
DELETE FROM `creature_questender` WHERE `quest`IN (4241, 4264, 4282) AND `id` = 9023;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(9562, 4182), -- Dragon Menace, Helendis Riverhorn
(344, 4183), -- True Masters [1], Magistrate Solomon
(29611, 4184), -- True Masters [2], Varian Wrynn
(1748, 4185), -- True Masters [3], Highlord Bolvar Fordragon
(344, 4186), -- True Masters [4], Magister Solomon
(9560, 4223), -- True Masters [5], Marshal Maxwell
(9560, 4224), -- True Masters [6], Marshal Maxwell
(9023, 4241), -- 'Marshal Windsor', Marshal Windsor
(9560, 4242), -- Abandon Hope, Marshal Maxwell
(9023, 4264), -- A Crumpled Up Note, Marshal Windsor
(9023, 4282); -- A Shred of Hope, Marshal Windsor

-- True Masters quests
DELETE FROM `disables` WHERE `entry` IN (4183, 4184, 4185, 4186, 4223, 4224) AND `sourceType` = 1;

DELETE FROM `creature_questender` WHERE `quest` = 4322 AND `id` = 9560;
DELETE FROM `creature_questender` WHERE `quest` = 6402 AND `id` = 17804;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(17804, 6402),
(9560, 4322);

DELETE FROM `creature_queststarter` WHERE `quest` = 6402 AND `id` = 9560;
DELETE FROM `creature_queststarter` WHERE `quest` = 6403 AND `id` = 12580;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(9560, 6402),
(12580, 6403);

DELETE FROM `creature_text` WHERE `CreatureID` = 466 AND `GroupID` > 0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(466, 1, 0, 'Reginald, you know that I cannot let you pass.', 12, 0, 100, 0, 0, 0, 8121, 0, 'Marcus Jonathan - SAY_JONATHAN_TO_MARCUS_1'),
(466, 2, 0, '%s appears lost in contemplation.', 16, 0, 100, 0, 0, 0, 8124, 0, 'Marcus Jonathan - EMOTE_CONTEMPLATE'),
(466, 3, 0, 'I am ashamed, old friend. I know not what I do anymore. It is not you that would dare bring shame to the heroes of legend - it is I. It is I and the rest of these corrupt politicians. They fill our lives with empty promises, unending lies.', 12, 0, 100, 0, 0, 0, 8125, 0, 'Marcus Jonathan - SAY_JONATHAN_TO_MARCUS_2'),
(466, 4, 0, 'We shame our ancestors. We shame those lost to us... forgive me, Reginald.', 12, 0, 100, 0, 0, 0, 8132, 0, 'Marcus Jonathan - SAY_JONATHAN_TO_MARCUS_3'),
(466, 5, 0, 'Stand down! Can you not see that heroes walk among us?', 12, 0, 100, 0, 0, 0, 8127, 0, 'Marcus Jonathan - SAY_JONATHAN_TO_GUARDS_1'),
(466, 6, 0, 'Move aside! Let them pass!', 12, 0, 100, 0, 0, 0, 8128, 0, 'Marcus Jonathan - SAY_JONATHAN_TO_GUARDS_2'),
(466, 7, 0, 'Reginald Windsor is not to be harmed! He shall pass through untouched!', 14, 0, 100, 0, 0, 0, 8129, 3, 'Marcus Jonathan - SAY_JONATHAN_TO_GUARDS_3'),
(466, 8, 0, 'Go, Reginald. May the light guide your hand.', 12, 0, 100, 66, 0, 0, 8130, 0, 'Marcus Jonathan - SAY_JONATHAN_TO_MARCUS_4');

UPDATE `creature_template` SET `ScriptName` = 'npc_squire_rowe' WHERE `entry` = 17804;
UPDATE `creature_template` SET `ScriptName` = 'npc_reginald_windsor' WHERE `entry` = 12580;
UPDATE `creature_template` SET `ScriptName` = 'npc_royal_stormwind_guard' WHERE `entry` = 1756;
UPDATE `creature_template` SET `ScriptName` = 'npc_marshal_windsor' WHERE `entry` = 9023;
UPDATE `creature_template` SET `ScriptName` = 'npc_jail_break_dughal_or_seecher' WHERE `entry` IN (9022, 9679);

DELETE FROM `gossip_menu` WHERE `MenuID` = 12580 AND `TextID` = 5633;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES
(12580, 5633);

UPDATE `creature_template` SET `gossip_menu_id` = 12580, `npcflag` = `npcflag` | 1 WHERE `entry` = 12580;

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 12580;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextId`) VALUES
(12580, 0, 0, 'I am ready, as are my forces. Let us end this masquerade!', 8256, 1, 1, 0, 0, 0, 0, '', 0);

SET @ENTRY := 12580;
DELETE FROM `creature_text` WHERE `CreatureID` = @ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(@ENTRY, 0, 0, 'Yawww!', 12, 0, 100, 0, 0, 0, 8091, 0, 'Reginald Windsor - SAY_REGINALD_SHOO_HORSE'),
(@ENTRY, 1, 0, 'I knew you would come, $n. It is good to see you again, friend.', 12, 0, 100, 0, 0, 0, 8090, 0, 'Reginald Windsor - SAY_REGINALD_END_INTRO'),
(@ENTRY, 2, 0, 'On guard, friend. The lady dragon will not give in without a fight.', 12, 0, 100, 0, 0, 0, 8107, 0, 'Reginald Windsor - SAY_REGINALD_MASQUERADE_1'),
(@ENTRY, 3, 0, 'As was fated a lifetime ago in Karazhan, monster - I come - and with me I bring justice.', 14, 0, 100, 0, 0, 0, 8109, 3, 'Reginald Windsor - SAY_REGINALD_MASQUERADE_2'),
(@ENTRY, 4, 0, 'You must do what you think is right, Marcus. We served together under Turalyon. He made us both the men that we are today. Did he err with me? Do you truly believe my intent is to cause harm to our alliance? Would I shame our heroes?', 12, 0, 100, 0, 0, 0, 8123, 0, 'Reginald Windsor - SAY_REGINALD_TO_MARCUS_1'),
(@ENTRY, 5, 0, 'Holding me here is not the right decision, Marcus.', 12, 0, 100, 0, 0, 0, 8133, 0, 'Reginald Windsor - SAY_REGINALD_TO_MARCUS_2'),
(@ENTRY, 6, 0, 'Dear friend, you honor them with your vigilant watch. You are steadfast in your allegiance. I do not doubt for a moment that you would not give as great a sacrifice for your people as any of the heroes you stand under.', 12, 0, 100, 0, 0, 0, 8126, 0, 'Reginald Windsor - SAY_REGINALD_TO_MARCUS_3'),
(@ENTRY, 7, 0, 'Now, it is time to bring her reign to an end, Marcus. Stand down, friend.', 12, 0, 100, 0, 0, 0, 8134, 0, 'Reginald Windsor - SAY_REGINALD_TO_MARCUS_4'),
(@ENTRY, 8, 0, 'Thank you, old friend. You have done the right thing.', 12, 0, 100, 0, 0, 0, 8205, 0, 'Reginald Windsor - SAY_REGINALD_TO_MARCUS_5'),
(@ENTRY, 9, 0, 'Follow me, friends. To Stormwind Keep!', 12, 0, 100, 0, 0, 0, 8206, 0, 'Reginald Windsor - SAY_MASQUERADE_3'),
(@ENTRY, 10, 0, 'Be brave, friends. The reptile will thrash wildly. It is an act of desperation. When you are ready, give me the word.', 12, 0, 100, 0, 0, 0, 8207, 0, 'Reginald Windsor - SAY_STORMWIND_BEFORE_KEEP'),
(@ENTRY, 11, 0, 'Onward!', 12, 0, 100, 0, 0, 0, 8208, 0, 'Reginald Windsor - SAY_MOVE_IN_KEEP'),
(@ENTRY, 12, 0, 'Majesty, run while you still can. She is not what you think her to be...', 12, 0, 100, 0, 0, 0, 8210, 0, 'Reginald Windsor - SAY_REGINALD_TO_ANDUINN'),
(@ENTRY, 13, 0, 'The masquerade is over, Lady Prestor. Or should I call you by your true name... Onyxia...', 12, 0, 100, 0, 0, 0, 8211, 0, 'Reginald Windsor - SAY_REGINALD_TO_KATRANA'),
(@ENTRY, 14, 0, 'You will not escape your fate, Onyxia. It has been prophesied - a vision resonating from the great halls of Karazhan. It ends now...', 12, 0, 100, 0, 0, 0, 8218, 0, 'Reginald Windsor - SAY_REGINALD_TO_KATRANA_2'),
(@ENTRY, 15, 0, 'The Dark Irons thought these tablets to be encoded. This is not any form of coding, it is the tongue of ancient dragon.', 12, 0, 100, 0, 0, 0, 8227, 0, 'Reginald Windsor - SAY_REGINALD_TO_KATRANA_3'),
(@ENTRY, 16, 0, 'Listen, dragon. Let the truth resonate throughout these halls.', 12, 0, 100, 0, 0, 0, 8219, 0, 'Reginald Windsor - SAY_REGINALD_TO_KATRANA'),
(@ENTRY, 17, 0, '%s reads from the tablets. Unknown, unheard sounds flow through your consciousness.', 16, 0, 100, 0, 0, 0, 8228, 0, 'Reginald Windsor - EMOTE_READ_TABLET'),
(@ENTRY, 18, 0, 'DO NOT LET HER ESCAPE!', 12, 0, 100, 0, 0, 0, 8247, 0, 'Reginald Windsor - SAY_REGINALD_TO_GUARDS'),
(@ENTRY, 19, 0, 'Bol... Bolvar... the medallion... use...', 12, 0, 100, 0, 0, 0, 8250, 0, 'Reginald Windsor - SAY_REGINALD_TO_BOLVAR'),
(@ENTRY, 20, 0, '%s dies.', 16, 0, 100, 0, 0, 0, 8251, 0, 'Reginald Windsor - EMOTE_WINDSOR_DIES'),
(@ENTRY, 21, 0, '%s reaches into his pack and pulls out the encoded tablets.', 16, 0, 100, 0, 0, 0, 8226, 0, 'Reginald Windsor - EMOTE_WINDSOR_TABLETS');

SET @ENTRY := 1749;
DELETE FROM `creature_text` WHERE `CreatureID` = @ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(@ENTRY, 0, 0, 'Seize him! Seize the worthless criminal and his allies!', 14, 0, 100, 0, 0, 0, 8119, 3, 'Lady Katrana Prestor - SAY_KATRANA_1'),
(@ENTRY, 1, 0, '%s laughs.', 16, 0, 100, 0, 0, 0, 8214, 0, 'Lady Katrana Prestor - EMOTE_KATRANA_LAUGH'),
(@ENTRY, 2, 0, 'You will be incarcerated and tried for treason, Windsor. I shall watch with glee as they hand down a guilty verdict and sentence you to death by hanging...', 12, 0, 100, 0, 0, 0, 8215, 0, 'Lady Katrana Prestor - SAY_KATRANA_2'),
(@ENTRY, 3, 0, 'And as your limp body dangles from the rafters, I shall take pleasure in knowing that a mad man has been put to death. After all, what proof do you have? Did you expect to come in here and point your fingers at royalty and leave unscathed?', 12, 0, 100, 0, 0, 0, 8216, 0, 'Lady Katrana Prestor - SAY_KATRANA_3');

SET @ENTRY := 1748;
DELETE FROM `creature_text` WHERE `CreatureID` = @ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(@ENTRY, 0, 0, 'To the safe hall, your majesty.', 12, 0, 100, 0, 0, 0, 8212, 0, 'Highlord Bolvar Fordragon - SAY_BOLVAR_TO_ANDUINN'),
(@ENTRY, 1, 0, '%s gasps.', 16, 0, 100, 0, 0, 0, 8236, 0, 'Highlord Bolvar Fordragon - EMOTE_BOLVAR_GASP'),
(@ENTRY, 2, 0, 'Dragon filth! Guards! Guards! Seize this monster!', 14, 0, 100, 0, 0, 0, 8237, 3, 'Highlord Bolvar Fordragon - SAY_BOLVAR_TO_GUARDS'),
(@ENTRY, 3, 0, 'Reginald... I... I am sorry.', 12, 0, 100, 0, 0, 0, 8249, 0, 'Highlord Bolvar Fordragon - SAY_BOLVAR_REGINALD_DIES');

SET @ENTRY := 12756;
DELETE FROM `creature_text` WHERE `CreatureID` = @ENTRY;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(@ENTRY, 0, 0, 'Curious... Windsor, in this vision, did you survive? I only ask because one thing that I can and will assure is your death. Here and now.', 12, 0, 100, 0, 0, 0, 8235, 0, 'Lady Onyxia - SAY_ONYXIA_TO_WINDSOR'),
(@ENTRY, 1, 0, 'Yesss... Guards, come to your lord\'s aid!', 12, 0, 100, 0, 0, 0, 8239, 0, 'Lady Onyxia - SAY_ONYXIA_TO_WINDSOR_2'),
(@ENTRY, 2, 0, 'Was this fated, Windsor? If it was death that you came for, then the prophecy has been fulfilled. May your consciousness rot in the Twisting Nether. Finish the rest of these meddlesome insects, children. Bolvar, you have been a pleasurable puppet.', 12, 0, 100, 0, 0, 0, 8246, 0, 'Lady Onyxia - SAY_ONYXIA_TO_WINDSOR_3'),
(@ENTRY, 3, 0, 'You have failed him, mortalsss... Farewell!', 12, 0, 100, 0, 0, 0, 8248, 0, 'Lady Onyxia - SAY_ONYXIA_TO_WINDSOR_4');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=20465;
INSERT INTO `conditions`(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`Comment`) VALUES
(13,1,20465,31,3,12580,'Windsor Death hit only Reginald Windsor');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry`=20358;
INSERT INTO `conditions`(`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`ConditionTypeOrReference`,`ConditionValue1`,`ConditionValue2`,`Comment`) VALUES
(13,1,20358,31,3,1749,'Windsor Read Table hit only Katrana Prestor');

SET @ENTRY  := 68;
SET @ENTRY2 := 1756;
SET @ENTRY3 := 1976;
DELETE FROM `creature_text` WHERE `CreatureID` IN (68, 1756, 1976) AND `GroupID` = 10;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(@ENTRY, 10, 0, 'Light be with you, sir.', 12, 0, 100, 0, 0, 0, 8167, 0, ''),
(@ENTRY, 10, 1, 'We are but dirt beneath your feet, sir.', 12, 0, 100, 0, 0, 0, 8177, 0, ''),
(@ENTRY, 10, 2, '...nerves of thorium.', 12, 0, 100, 0, 0, 0, 8183, 0, ''),
(@ENTRY, 10, 3, 'Make way!', 12, 0, 100, 0, 0, 0, 8175, 0, ''),
(@ENTRY, 10, 4, 'A living legend...', 12, 0, 100, 0, 0, 0, 8184, 0, ''),
(@ENTRY, 10, 5, 'A moment I shall remember for always.', 12, 0, 100, 0, 0, 0, 8180, 0, ''),
(@ENTRY, 10, 6, 'You are an inspiration to us all, sir.', 12, 0, 100, 0, 0, 0, 8170, 0, ''),
(@ENTRY2, 10, 0, 'Light be with you, sir.', 12, 0, 100, 0, 0, 0, 8167, 0, ''),
(@ENTRY2, 10, 1, 'We are but dirt beneath your feet, sir.', 12, 0, 100, 0, 0, 0, 8177, 0, ''),
(@ENTRY2, 10, 2, '...nerves of thorium.', 12, 0, 100, 0, 0, 0, 8183, 0, ''),
(@ENTRY2, 10, 3, 'Make way!', 12, 0, 100, 0, 0, 0, 8175, 0, ''),
(@ENTRY2, 10, 4, 'A living legend...', 12, 0, 100, 0, 0, 0, 8184, 0, ''),
(@ENTRY2, 10, 5, 'A moment I shall remember for always.', 12, 0, 100, 0, 0, 0, 8180, 0, ''),
(@ENTRY2, 10, 6, 'You are an inspiration to us all, sir.', 12, 0, 100, 0, 0, 0, 8170, 0, ''),
(@ENTRY3, 10, 0, 'Light be with you, sir.', 12, 0, 100, 0, 0, 0, 8167, 0, ''),
(@ENTRY3, 10, 1, 'We are but dirt beneath your feet, sir.', 12, 0, 100, 0, 0, 0, 8177, 0, ''),
(@ENTRY3, 10, 2, '...nerves of thorium.', 12, 0, 100, 0, 0, 0, 8183, 0, ''),
(@ENTRY3, 10, 3, 'Make way!', 12, 0, 100, 0, 0, 0, 8175, 0, ''),
(@ENTRY3, 10, 4, 'A living legend...', 12, 0, 100, 0, 0, 0, 8184, 0, ''),
(@ENTRY3, 10, 5, 'A moment I shall remember for always.', 12, 0, 100, 0, 0, 0, 8180, 0, ''),
(@ENTRY3, 10, 6, 'You are an inspiration to us all, sir.', 12, 0, 100, 0, 0, 0, 8170, 0, '');

DELETE FROM `creature_questender` WHERE `quest` = 6402 AND `id` = 12580;
INSERT INTO `creature_questender` VALUES
(12580, 6402);

DELETE FROM `gossip_menu_option` WHERE `MenuID` = 7480;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextId`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextId`) VALUES
(7480, 0, 0, 'Let Marshal Windsor know that I am ready.', 14388, 1, 1, 0, 0, 0, 0, '', 0);

DELETE FROM `creature_text` WHERE `CreatureID` = 17804;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(17804, 0, 0, 'The signal has been sent. He should be arriving shortly.', 12, 7, 100, 0, 0, 0, 14389, 0, '');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 7480;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 7480, 0, 0, 0, 8, 0, 6403, 0, 0, 1, 0, 0, '', 'Squire Rowe - Require Stormwind Rendezvous'),
(15, 7480, 0, 0, 0, 8, 0, 6402, 0, 0, 0, 0, 0, '', 'Squire Rowe - Require Stormwind Rendezvous'),
(15, 7480, 0, 0, 1, 8, 0, 6403, 0, 0, 1, 0, 0, '', 'Squire Rowe - Require Stormwind Rendezvous'),
(15, 7480, 0, 0, 1, 28, 0, 6402, 0, 0, 0,0, 0, '', 'Squire Rowe - Require Stormwind Rendezvous');

DELETE FROM `gossip_menu` WHERE `MenuID` = 51749 AND `TextID` = 2693;
DELETE FROM `gossip_menu` WHERE `MenuID` = 51750 AND `TextID` = 2694;
DELETE FROM `gossip_menu` WHERE `MenuID` = 51751 AND `TextID` = 2695;
DELETE FROM `gossip_menu` WHERE `MenuID` = 51752 AND `TextID` = 2696;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES
(51749, 2693),
(51750, 2694),
(51751, 2695),
(51752, 2696);

UPDATE `creature_template` SET `gossip_menu_id` = 51749 WHERE `entry` = 1749;

DELETE FROM `gossip_menu_option` WHERE `MenuID` IN (51749, 51750, 51751, 51752);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcasttextId`) VALUES
(51749, 0, 0, 'Pardon the intrustion, Lady Prestor, but Highlord Bolvar suggested that I seek your advice.', 4991, 1, 1, 51750, 0, 0, 0, '', 0),
(51750, 0, 0, 'My apologies, Lady Prestor.', 4993, 1, 1, 51751, 0, 0, 0, '', 0),
(51751, 0, 0, 'Begging your pardon, Lady Prestor. That was not my intent.', 4995, 1, 1, 51752, 0, 0, 0, '', 0),
(51752, 0, 0, 'Thank you for your time, Lady Prestor.', 4997, 1, 1, 0, 0, 0, 0, '', 0);

DELETE FROM `conditions` WHERE `sourcetypeorreferenceId` = 14 AND `sourcegroup` = 51749;
DELETE FROM `conditions` WHERE `sourcetypeorreferenceId` = 15 AND `sourcegroup` = 51749;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
('14','51749','2693','0','0','9','0','4185','0','0','0','0','0','','Lady Prestor, require True Masters (3)'),
('15','51749','0','0','0','9','0','4185','0','0','0','0','0','','Lady Prestor, Require True Masters (3)');

DELETE FROM `gossip_menu` WHERE `MenuID` BETWEEN 59563 AND 59575 AND `TextID` BETWEEN 2713 AND 2725;
INSERT INTO `gossip_menu` (`MenuID`, `TextID`) VALUES
(59563, 2713),
(59564, 2714),
(59565, 2715),
(59566, 2716),
(59567, 2717),
(59568, 2718),
(59569, 2719),
(59570, 2720),
(59571, 2721),
(59572, 2722),
(59573, 2723),
(59574, 2725);

UPDATE `creature_template` SET `gossip_menu_id` = 59563 WHERE `entry` = 9563;

DELETE FROM `gossip_menu_option` WHERE `MenuID` BETWEEN 59563 AND 59575;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcasttextId`) VALUES
(59563, 0, 0, 'Official business, John. I need some information about Marshal Windsor. Tell me about the last time you saw him.', 5007, 1, 1, 59564, 0, 0, 0, '', 0),
(59564, 0, 0, 'So what did you do?', 5010, 1, 1, 59565, 0, 0, 0, '', 0),
(59565, 0, 0, 'Start making sense, dwarf. I don\'t want to have anything to do with your cracker, your pappy, or any sort of \'discreditin.\'', 5013, 1, 1, 59566, 0, 0, 0, '', 0),
(59566, 0, 0, 'Ironfoe?', 5015, 1, 1, 59567, 0, 0, 0, '', 0),
(59567, 0, 0, 'Interesting... continue, John.', 5017, 1, 1, 59568, 0, 0, 0, '', 0),
(59568, 0, 0, 'So that\'s how Windsor died...', 5019, 1, 1, 59569, 0, 0, 0, '', 0),
(59569, 0, 0, 'So how did he die?', 5021, 1, 1, 59570, 0, 0, 0, '', 0),
(59570, 0, 0, 'Ok, so where the hell is he? Wait a minute! Are you drunk?', 5024, 1, 1, 59571, 0, 0, 0, '', 0),
(59571, 0, 0, 'WHY is he in Blackrock Depths?', 5027, 1, 1, 59572, 0, 0, 0, '', 0),
(59572, 0, 0, '300? So the Dark Irons killed him and dragged him into the Depths?', 5030, 1, 1, 59573, 0, 0, 0, '', 0),
(59573, 0, 0, 'Ahhh... Ironfoe.', 5034, 1, 1, 59574, 0, 0, 0, '', 0),
(59574, 0, 0, 'Thanks, Ragged John. Your story was very uplifting and informative.', 5038, 1, 1, 0, 0, 0, 0, '', 0);

UPDATE `smart_scripts` SET `event_param1` = 59574 WHERE `entryorguid` = 9563 AND `id` = 3 AND `event_type` = 62; -- Ragged John quest credit

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 59563;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15,59563,0,0,0,9,0,4224,0,0,0,0,0,'','Ragged John - Require True Masters (6)');

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 1749;

DELETE FROM `smart_scripts` WHERE `entryorguid` = 1749 AND `Source_type` = 0;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) values
(1749, 0, 0, 1, 62, 0, 100, 0, 51752, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Lady Katrana Prestor - On Gossip Option Select - Close Gossip'),
(1749, 0, 1, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 15, 4185, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 'Lady Katrana Prestor - On Gossip Option Select - Complete Quest - The True Masters');

-- Spawn Lady Katrana Prestor
-- Positions are hand-made. There's a huge throne where she used to be spawned in classic...
DELETE FROM `creature` WHERE `guid` = 500800 AND `id1` = 1749;
INSERT INTO `creature` (`guid`, `id1`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(500800, 1749, 0, 0, 0, 1, 1, 1, -8435, 335.559, 122.163, 2.56468, 300, 0, 3497, 2568, 0, 0, 0, 0, '', 0);

# DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 30 AND `SourceEntry` = 1749;
# INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
# (30, 0, 1749, 0, 0, 47, 0, 4182, 64, 0, 0, 0, 0, '', 'Lady Katrana Prestor - Visibility - Require quest Dragonkin Menace rewarded.'),
# (30, 0, 1749, 0, 0, 47, 0, 6403, 64, 0, 1, 0, 0, '', 'Lady Katrana Prestor - Visibility - Require quest The Great Masquerade NOT rewarded.');

UPDATE `item_template` SET `startquest` = 4264 WHERE `entry` = 11446; -- A crumpled up note

-- Spawn Bolvar
DELETE FROM `creature` WHERE `guid` = 500801 AND `id1` = 1748;
INSERT INTO `creature` (`guid`, `id1`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`) VALUES
(500801, 1748, 0, 0, 0, 1, 1, 1, -8445.01, 329.85, 122.163, 2.12562, 300, 0, 1055700, 67740, 0, 0, 0, 0, '', 0);

# DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 30 AND `SourceEntry` = 1748;
# INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
# (30, 0, 1748, 0, 0, 47, 0, 4182, 64, 0, 0, 0, 0, '', 'Highlord Bolvar Fordring - Visibility - Require quest Dragonkin Menace rewarded.');

DELETE FROM `script_waypoint` WHERE `entry` = 9023;
INSERT INTO `script_waypoint` (`entry`, `pointid`, `location_x`, `location_y`, `location_z`, `waittime`, `point_comment`) VALUES
(9023, 1, 316.336, -225.528, -77.7258, 2000, 'SAY_WINDSOR_START'),
(9023, 2, 322.96, -207.13, -77.87, 0, ''),
(9023, 3, 281.05, -172.16, -75.12, 0, ''),
(9023, 4, 272.19, -139.14, -70.61, 0, ''),
(9023, 5, 283.62, -116.09, -70.21, 0, ''),
(9023, 6, 296.18, -94.3, -74.08, 0, ''),
(9023, 7, 294.57, -93.11, -74.08, 0, 'escort paused - SAY_WINDSOR_CELL_DUGHAL_1'),
(9023, 8, 294.57, -93.11, -74.08, 10000, ''),
(9023, 9, 294.57, -93.11, -74.08, 3000, 'SAY_WINDSOR_CELL_DUGHAL_3'),
(9023, 10, 314.31, -74.31, -76.09, 0, ''),
(9023, 11, 360.22, -62.93, -66.77, 0, ''),
(9023, 12, 383.38, -69.4, -63.25, 0, ''),
(9023, 13, 389.99, -67.86, -62.57, 0, ''),
(9023, 14, 400.98, -72.01, -62.31, 0, 'SAY_WINDSOR_EQUIPMENT_1'),
(9023, 15, 404.22, -62.3, -63.5, 2000, ''),
(9023, 16, 404.22, -62.3, -63.5, 1500, 'open supply door'),
(9023, 17, 407.65, -51.86, -63.96, 0, ''),
(9023, 18, 403.61, -51.71, -63.92, 1000, 'SAY_WINDSOR_EQUIPMENT_2'),
(9023, 19, 403.61, -51.71, -63.92, 2000, ''),
(9023, 20, 403.61, -51.71, -63.92, 1000, 'open supply crate'),
(9023, 21, 403.61, -51.71, -63.92, 1000, 'update entry to Reginald Windsor'),
(9023, 22, 403.61, -52.71, -63.92, 4000, 'SAY_WINDSOR_EQUIPMENT_3'),
(9023, 23, 403.61, -52.71, -63.92, 4000, 'SAY_WINDSOR_EQUIPMENT_4'),
(9023, 24, 406.33, -54.87, -63.95, 0, ''),
(9023, 25, 403.86, -73.88, -62.02, 0, ''),
(9023, 26, 428.8, -81.34, -64.91, 0, ''),
(9023, 27, 557.03, -119.71, -61.83, 0, ''),
(9023, 28, 573.4, -124.39, -65.07, 0, ''),
(9023, 29, 593.91, -130.29, -69.25, 0, ''),
(9023, 30, 593.21, -132.16, -69.25, 0, 'escort paused - SAY_WINDSOR_CELL_JAZ_1'),
(9023, 31, 593.21, -132.16, -69.25, 1000, ''),
(9023, 32, 593.21, -132.16, -69.25, 3000, 'SAY_WINDSOR_CELL_JAZ_2'),
(9023, 33, 622.81, -135.55, -71.92, 0, ''),
(9023, 34, 634.68, -151.29, -70.32, 0, ''),
(9023, 35, 635.06, -153.25, -70.32, 0, 'escort paused - SAY_WINDSOR_CELL_SHILL_1'),
(9023, 36, 635.06, -153.25, -70.32, 3000, ''),
(9023, 37, 635.06, -153.25, -70.32, 5000, 'SAY_WINDSOR_CELL_SHILL_2'),
(9023, 38, 635.06, -153.25, -70.32, 2000, 'SAY_WINDSOR_CELL_SHILL_3'),
(9023, 39, 655.25, -172.39, -73.72, 0, ''),
(9023, 40, 654.79, -226.3, -83.06, 0, ''),
(9023, 41, 622.85, -268.85, -83.96, 0, ''),
(9023, 42, 579.45, -275.56, -80.44, 0, ''),
(9023, 43, 561.19, -266.85, -75.59, 0, ''),
(9023, 44, 547.91, -253.92, -70.34, 0, ''),
(9023, 45, 549.2, -252.4, -70.34, 0, 'escort paused - SAY_WINDSOR_CELL_CREST_1'),
(9023, 46, 549.2, -252.4, -70.34, 1000, ''),
(9023, 47, 549.2, -252.4, -70.34, 4000, 'SAY_WINDSOR_CELL_CREST_2'),
(9023, 48, 555.33, -269.16, -74.4, 0, ''),
(9023, 49, 554.31, -270.88, -74.4, 0, 'escort paused - SAY_WINDSOR_CELL_TOBIAS_1'),
(9023, 50, 554.31, -270.88, -74.4, 10000, ''),
(9023, 51, 554.31, -270.88, -74.4, 4000, 'SAY_WINDSOR_CELL_TOBIAS_2'),
(9023, 52, 536.1, -249.6, -67.47, 0, ''),
(9023, 53, 520.94, -216.65, -59.28, 0, ''),
(9023, 54, 505.99, -148.74, -62.17, 0, ''),
(9023, 55, 484.21, -56.24, -62.43, 0, ''),
(9023, 56, 470.39, -6.01, -70.1, 0, ''),
(9023, 57, 452.45, 29.85, -70.37, 1500, 'SAY_WINDSOR_FREE_1'),
(9023, 58, 452.45, 29.85, -70.37, 15000, 'SAY_WINDSOR_FREE_2');

DELETE FROM `creature_text` WHERE `CreatureID` = 9023;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(9023, 0, 0, 'You locked up the wrong Marshal, $n. Prepare to be destroyed!', 12, 0, 100, 0, 0, 0, 5253, 0, 'Marshal Windsor - SAY_AGGRO'),
(9023, 0, 1, 'I bet you\'re sorry now, aren\'nt you!?!', 12, 0, 100, 0, 0, 0, 5252, 0, 'Marshal Windsor - SAY_AGGRO'),
(9023, 0, 2, 'You better hold me back or $n is going to feel some prison house beatings.', 12, 0, 100, 0, 0, 0, 5250, 0, 'Marshal Windsor - SAY_AGGRO'),
(9023, 0, 3, 'Administering fists of fury on $n!', 12, 0, 100, 0, 0, 0, 5249, 0, 'Marshal Windsor - SAY_AGGRO'),
(9023, 1, 0, 'Let\'s get a move on. My gear should be in the storage area up this way...', 12, 0, 100, 0, 0, 0, 5205, 0, 'Marshal Windsor - SAY_START_ESCORT'),
(9023, 2, 0, 'Check that cell, $n. If someone is alive in there, we need to get them out.', 12, 0, 100, 0, 0, 0, 5207, 0, 'Marshal Windsor - SAY_DUGHAL_CELL_1'),
(9023, 3, 0, 'Good work! We\'re almost there! This way.', 12, 0, 100, 0, 0, 0, 5213, 0, 'Marshal Windsor - SAY_DUGHAL_CELL_2'),
(9023, 4, 0, 'This is it, $n. My stuff should be in that room. Cover me, I\'m going in!', 12, 0, 100, 0, 0, 0, 5214, 0, 'Marshal Windsor - SAY_EQUIPMENT_1'),
(9023, 5, 0, 'Ah, there it is!', 12, 0, 100, 0, 0, 0, 5215, 0, 'Marshal Windsor - SAY_EQUIPMENT_2');

-- Windsor, armored up.
DELETE FROM `creature_text` WHERE `CreatureID` = 9682;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(9682, 0, 0, 'You locked up the wrong Marshal, $n. Prepare to be destroyed!', 12, 0, 100, 0, 0, 0, 5253, 0, 'Marshal Windsor - SAY_AGGRO'),
(9682, 0, 1, 'I bet you\'re sorry now, aren\'nt you!?!', 12, 0, 100, 0, 0, 0, 5252, 0, 'Marshal Windsor - SAY_AGGRO'),
(9682, 0, 2, 'You better hold me back or $n is going to feel some prison house beatings.', 12, 0, 100, 0, 0, 0, 5250, 0, 'Marshal Windsor - SAY_AGGRO'),
(9682, 0, 3, 'Administering fists of fury on $n!', 12, 0, 100, 0, 0, 0, 5249, 0, 'Marshal Windsor - SAY_AGGRO'),
(9682, 6, 0, 'Can you feel the power, $n??? It\'s time to ROCK!', 12, 0, 100, 0, 0, 0, 5216, 0, 'Reginald Windsor - SAY_EQUIPMENT_3'),
(9682, 7, 0, 'Now we just have to free Tobias and we can get out of here. This way!', 12, 0, 100, 0, 0, 0, 5217, 0, 'Reginald Windsor - SAY_EQUIPMENT_4'),
(9682, 8, 0, 'Open it.', 12, 0, 100, 0, 0, 0, 5222, 0, 'Reginald Windsor - SAY_JAZ_CELL_1'),
(9682, 9, 0, 'I never did like those two. Let\'s get moving.', 12, 0, 100, 0, 0, 0, 5223, 0, 'Reginald Windsor - SAY_JAZ_CELL2'),
(9682, 10, 0, 'Open it and be careful this time!', 12, 0, 100, 0, 0, 0, 5224, 0, 'Reginald Windsor - SAY_SHILL_CELL_1'),
(9682, 11, 0, 'That intolerant dirtbag finally got what was coming to him. Good riddance!', 12, 0, 100, 0, 0, 0, 5225, 0, 'Reginald Windsor - SAY_SHILL_CELL_2'),
(9682, 12, 0, 'Alright, let\'s go.', 12, 0, 100, 0, 0, 0, 5227, 0, 'Reginald Windsor - SAY_SHILL_CELL_3'),
(9682, 13, 0, 'Open it. We need to hurry up. I can smell those Dark Irons coming a mile away and I can tell you one thing, they\'re COMING!', 12, 0, 100, 0, 0, 0, 5228, 0, 'Reginald Windsor - SAY_CREST_CELL_1'),
(9682, 14, 0, 'He has to be in the last cell. Unless... they killed him.', 12, 0, 100, 0, 0, 0, 5229, 0, 'Reginald Windsor - SAY_CREST_CELL_2'),
(9682, 15, 0, 'Get him out of there!', 12, 0, 100, 0, 0, 0, 5230, 0, 'Reginald Windsor - SAY_TOBIAS_CELL_1'),
(9682, 16, 0, 'Excellent work, $n. Let\'s find the exit. I think I know the way. Follow me!', 12, 0, 100, 0, 0, 0, 5221, 0, 'Reginald Windsor - SAY_TOBIAS_CELL_2'),
(9682, 17, 0, 'We made it!', 12, 0, 100, 0, 0, 0, 5231, 0, 'Reginald Windsor - SAY_FREE_1'),
(9682, 18, 0, 'Meet me at Maxwell\'s encampment. We\'ll go over the next stages of the plan there and figure out a way to decode my tablets without the decryption ring.', 12, 0, 100, 0, 0, 0, 5232, 0, 'Reginald Windsor - SAY_FREE_2');

DELETE FROM `creature_text` WHERE `CreatureID` = 9022;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(9022, 0, 0, 'Thank you, $n! I\'m free!!!', 12, 0, 100, 0, 0, 0, 5210, 0,'Dughal Stormwing - On Gossip Select');

DELETE FROM `creature_text` WHERE `CreatureID` = 9679;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(9679, 0, 0, 'Finally!! I can leave this dump.', 12, 0, 100, 0, 0, 0, 5218, 0,'Tobias Seecher - SAY_FREED');

-- The Great Masquerade
DELETE FROM `creature_questender` WHERE `id` = 1748 AND `quest` = 6403;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(1748, 6403);

-- Disable mmaps for Reginald in stormwind
UPDATE `creature_template` SET `flags_extra` = `flags_extra` |536870912 WHERE `entry` = 12580;

DELETE FROM `creature_queststarter` WHERE `quest` = 6501;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(1748, 6501);

DELETE FROM `creature_queststarter` WHERE `quest` = 6501;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(1748, 6501);

DELETE FROM `creature_queststarter` WHERE `quest` = 6502;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(10929, 6502);

DELETE FROM `creature_questender` WHERE `quest` = 6501;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(10929, 6501);

DELETE FROM `creature_questender` WHERE `quest` = 6502;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(10929, 6502);

UPDATE creature_text SET TextRange = 2 WHERE CreatureID = 1748 AND GroupID = 2;
UPDATE creature_text SET TextRange = 2 WHERE CreatureID = 1749 AND GroupID = 0;
UPDATE creature_text SET TextRange = 2 WHERE CreatureID = 12580 AND GroupID = 3;
UPDATE creature_text SET TextRange = 2 WHERE CreatureID = 466 AND GroupID = 7;

UPDATE `creature_template` SET `npcflag` = `npcflag` |1|2 WHERE `entry` = 1749;

UPDATE `quest_template` SET `flags` = `flags`|2|8 WHERE `id` = 6403; -- The Great Masquerade, shareable & escort flag

-- Adjust quest Mother's Milk gossip option to work with changed Ragged John gossip menu
DELETE FROM `gossip_menu_option` WHERE `MenuID`=59563 AND `OptionID`=1;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES (59563, 1, 0, 'Milk me, John.', 5833, 1, 1, 2062, 0, 0, 0, '', 0, 0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=15 AND `SourceGroup`=59563 AND `SourceEntry`=1;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(15, 59563, 1, 0, 1, 1, 0, 16468, 0, 0, 0, 0, 0, '', 'Show Gossip 59563 option 1 only if player has aura 16468'),
(15, 59563, 1, 0, 1, 9, 0, 4866, 0, 0, 0, 0, 0, '', 'Show gossip 59563 option 1 if player does have quest 4866 taken');


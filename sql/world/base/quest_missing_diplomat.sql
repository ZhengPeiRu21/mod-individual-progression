-- Missing Diplomat Quests

UPDATE `quest_template` SET `RewardNextQuest` = 11222 WHERE ID = 11142;
UPDATE `quest_template` SET `RewardNextQuest` = 11223 WHERE ID = 11222;

UPDATE `quest_template_addon` SET `NextQuestID` = 11223 WHERE `ID` = 11222;

DELETE FROM `creature_queststarter` WHERE `id` = 4968 and `quest` = 11222;
DELETE FROM `creature_queststarter` WHERE `id` = 1748 and `quest` = 11223;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (4968, 11222);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (1748, 11223);

DELETE FROM `creature_questender` WHERE `id` = 1748 and `quest` = 11222;
DELETE FROM `creature_questender` WHERE `id` = 4968 and `quest` = 11223;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (1748, 11222);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (4968, 11223);

UPDATE `quest_offer_reward` SET 
`RewardText` = "<Lady Jaina listens intently as you report the results of your aerial survey.>$B$B
    A rune circle, dragonkin? The Defias have allied themselves with HER? The traitor?$B$B
    And why would the black dragonkin be interested in an island full of naga? There are many unanswered questions, 
    but I one thing is for certain: the Defias have a powerful ally in upper echelons of the Alliance."
WHERE `ID` = 11142;

UPDATE `quest_template` SET 
`LogTitle` = "Warn Bolvar!", 
`LogDescription` = "Speak to Highlord Bolvar Fordragon in Stormwind Keep.", 
`QuestDescription` = "Although we don't have all the answers we might like, it's imperative that you bring our findings to Highlord Bolvar Fordragon right away! 
    He needs to know that the Defias have a powerful patron in Stormwind and that they're involved in the disappearance of King Varian!$B$B
    I can use my magic to expedite your trip to Stormwind. Just speak to me when you're prepared to go, $N." 
WHERE `ID` = 11222;

UPDATE `quest_template` SET 
    `RewardMoney` = 4000, 
    `RewardChoiceItemID1` = 0,
    `RewardChoiceItemID2` = 0,
    `RewardChoiceItemID3` = 0,
    `RewardChoiceItemQuantity1` = 0,
    `RewardChoiceItemQuantity2` = 0,
    `RewardChoiceItemQuantity3` = 0
WHERE `ID` = 11142;

UPDATE `gossip_menu_option` SET `OptionText` = 'Can you send me to Theramore? I have an urgent message for Lady Jaina from Highlord Bolvar.' WHERE `MenuID` = 8846;
UPDATE `broadcast_text`     SET   `MaleText` = 'Can you send me to Theramore? I have an urgent message for Lady Jaina from Highlord Bolvar.', 
                                `FemaleText` = 'Can you send me to Theramore? I have an urgent message for Lady Jaina from Highlord Bolvar.' WHERE `ID` = 22524;


DELETE FROM `gossip_menu_option` WHERE `MenuID` = 2465 AND `OptionID` = 1;
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, 
`OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES 
(2465, 1, 0, 'I\'m ready to travel to Stormwind.', 22522, 1, 1, 0, 0, 0, 0, '', 0, 0);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 15 AND `SourceGroup` = 2465 AND `ConditionValue1` = 11222;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(15, 2465, 1, 0, 0, 28, 0, 11222, 0, 0, 0, 0, 0, '', '');

DELETE FROM `smart_scripts` WHERE `entryorguid` = 4968 AND `id` IN (9, 10);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
(4968, 0, 9, 10, 62, 0, 100, 512, 2465, 1, 0, 0, 0, 0, 72, 0, 0, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4968, 0, 10, 0, 61, 0, 100, 512, 0, 0, 0, 0, 0, 0, 11, 42710, 2, 0, 0, 0, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, '');


-- Lady Prestor, Bolvar and King Wrynn updates

DELETE FROM `creature_questender` WHERE `quest` = 396; -- An Audience with the King
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(1749, 396),  -- Lady Prestor is the Vanilla ender for this quest
(29611, 396); -- Also allow King Wrynn to complete the quest in person if he is back

DELETE FROM `creature_questender` WHERE `quest` = 4184; -- The True Masters
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(1748, 4184),  -- Bolvar is the Vanilla ender for this quest
(29611, 4184); -- Also allow King Wrynn to complete the quest in person if he is back

DELETE FROM `creature_queststarter` WHERE `quest` = 4185; -- The True Masters
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(1748, 4185),  -- Bolvar is Vanilla starter for this quest
(29611, 4185); -- Also allow King Wrynn to end it in person

DELETE FROM `creature_queststarter` WHERE `quest` = 6182; -- The First and the Last
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(1748, 6182),  -- Bolvar is Vanilla starter for this quest
(29611, 6182); -- Also allow King Wrynn to end it in person

UPDATE `creature_questender`   SET `id` = 1748 WHERE `quest` IN 
(6186,  -- The Blightcaller Cometh
 6187,  -- Order Must Be Restored
 7781); -- The Lord of Blackrock

UPDATE `creature_queststarter` SET `id` = 1748 WHERE `quest` = 6187; 
-- UPDATE creature_queststarter SET `id` = 1748 WHERE `quest` = 7782;

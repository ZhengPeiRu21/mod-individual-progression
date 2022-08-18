-- Missing Diplomat Quests
UPDATE quest_template SET RewardNextQuest=11222 WHERE ID=11142;
UPDATE quest_template SET RewardNextQuest=11223 WHERE ID=11222;
DELETE FROM creature_queststarter WHERE id = 4968 and quest = 11222;
DELETE FROM creature_queststarter WHERE id = 1748 and quest = 11223;
INSERT INTO creature_queststarter(id, quest) VALUES (4968, 11222);
INSERT INTO creature_queststarter(id, quest) VALUES (1748, 11223);
UPDATE quest_offer_reward SET RewardText="<Lady Jaina listens intently as you report the results of your aerial survey.>$B$BA rune circle, dragonkin? The Defias have allied themselves with HER? The traitor?$B$BAnd why would the black dragonkin be interested in an island full of naga? There are many unanswered questions, but I one thing is for certain: the Defias have a powerful ally in upper echelons of the Alliance."
WHERE ID=11142;
UPDATE quest_template SET LogTitle="Warn Bolvar!", LogDescription="Speak to Highlord Bolvar Fordragon in Stormwind Keep.", QuestDescription="Although we don't have all the answers we might like, it's imperative that you bring our findings to Highlord Bolvar Fordragon right away! He needs to know that the Defias have a powerful patron in Stormwind and that they're involved in the disappearance of King Varian!$B$BI can use my magic to expedite your trip to Stormwind. Just speak to me when you're prepared to go, $N." WHERE ID=11222;
UPDATE quest_template_addon SET NextQuestID=11223 WHERE ID=11222;
DELETE FROM creature_questender WHERE id = 1748 and quest = 11222;
DELETE FROM creature_questender WHERE id = 4968 and quest = 11223;
INSERT INTO creature_questender(id, quest) VALUES (1748, 11222);
INSERT INTO creature_questender(id, quest) VALUES (4968, 11223);

DELETE FROM creature_questender WHERE quest=396;
INSERT INTO creature_questender (`id`, `quest`) VALUES
(1749, 396), # Lady Prestor is the Vanilla ender for this quest
(29611, 396); # Also allow King Wrynn to complete the quest in person if he is back

DELETE FROM creature_questender WHERE quest=4184;
INSERT INTO creature_questender (`id`, `quest`) VALUES
(1748, 4184), # Bolvar is the Vanilla ender for this quest
(29611, 4184); # Also allow King Wrynn to complete the quest in person if he is back

UPDATE creature_questender SET id=1748 WHERE quest=6186;
UPDATE creature_questender SET id=1748 WHERE quest=6187;
UPDATE creature_questender SET id=1748 WHERE quest=7781;

DELETE FROM `creature_queststarter` WHERE `quest`=6182;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(1748, 6182), # Bolvar is Vanilla starter for this quest
(29611, 6182); # Also allow King Wrynn to end it in person

DELETE FROM `creature_queststarter` WHERE `quest`=4185;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(1748, 4185), # Bolvar is Vanilla starter for this quest
(29611, 4185); # Also allow King Wrynn to end it in person

UPDATE creature_queststarter SET id=1748 WHERE quest=6187;
# UPDATE creature_queststarter SET id=1748 WHERE quest=7782;

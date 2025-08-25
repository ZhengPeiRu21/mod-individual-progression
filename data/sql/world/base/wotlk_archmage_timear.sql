UPDATE `creature_template` SET `ScriptName`='npc_archmage_timear' WHERE `entry`=31439;

DELETE FROM `creature_questender` WHERE `id`=31439 AND `quest` IN (13245, 13246, 13247, 13248, 13249, 13250, 13251, 13252, 13253, 13254, 13255, 13256, 14199);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (31439, 13245);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (31439, 13246);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (31439, 13247);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (31439, 13248);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (31439, 13249);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (31439, 13250);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (31439, 13251);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (31439, 13252);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (31439, 13253);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (31439, 13254);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (31439, 13255);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (31439, 13256);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (31439, 14199);

DELETE FROM `creature_queststarter` WHERE `id`=31439 AND `quest` IN (13245, 13246, 13247, 13248, 13249, 13250, 13251, 13252, 13253, 13254, 13255, 13256, 14199);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (31439, 13245);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (31439, 13246);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (31439, 13247);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (31439, 13248);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (31439, 13249);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (31439, 13250);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (31439, 13251);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (31439, 13252);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (31439, 13253);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (31439, 13254);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (31439, 13255);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (31439, 13256);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (31439, 14199);

UPDATE `quest_template` SET `Flags`=4232 WHERE `ID` IN (13245, 13246, 13247, 13248, 13249, 13250, 13251, 13252, 13253, 13254, 13255, 13256, 14199);

UPDATE `quest_template` SET `LogDescription`='Archmage Timear in Dalaran wants you to return with the Axe of the Plunderer.$B$BThis quest may only be completed on Heroic difficulty.', `QuestCompletionLog`='Return to Archmage Timear at Forlorn Woods in Crystalsong Forest.' WHERE `ID`=13245;
UPDATE `quest_template` SET `LogDescription`='Archmage Timear in Dalaran wants you to return with Keristrasza\'s Broken Heart.$B$BThis quest may only be completed on Heroic difficulty.', `QuestCompletionLog`='Return to Archmage Timear at Forlorn Woods in Crystalsong Forest.' WHERE `ID`=13246;
UPDATE `quest_template` SET `LogDescription`='Archmage Timear in Dalaran wants you to return with a Ley Line Tuner.$B$BThis quest may only be completed on Heroic difficulty.', `QuestCompletionLog`='Return to Archmage Timear at Forlorn Woods in Crystalsong Forest.' WHERE `ID`=13247;
UPDATE `quest_template` SET `LogDescription`='Archmage Timear in Dalaran wants you to return with the Locket of the Deceased Queen.$B$BThis quest may only be completed on Heroic difficulty.', `QuestCompletionLog`='Return to Archmage Timear at Forlorn Woods in Crystalsong Forest.' WHERE `ID`=13248;
UPDATE `quest_template` SET `LogDescription`='Archmage Timear in Dalaran wants you to return with the Prophet\'s Enchanted Tiki.$B$BThis quest may only be completed on Heroic difficulty.', `QuestCompletionLog`='Return to Archmage Timear at Forlorn Woods in Crystalsong Forest.' WHERE `ID`=13249;
UPDATE `quest_template` SET `LogDescription`='Archmage Timear in Dalaran wants you to return with the Mojo Remnant of Akali.$B$BThis quest may only be completed on Heroic difficulty.', `QuestCompletionLog`='Return to Archmage Timear at Forlorn Woods in Crystalsong Forest.' WHERE `ID`=13250;
UPDATE `quest_template` SET `LogDescription`='Archmage Timear in Dalaran wants you to return with the Artifact from the Nathrezim Homeworld.$B$BThis quest may only be completed on Heroic difficulty.', `QuestCompletionLog`='Return to Archmage Timear at Forlorn Woods in Crystalsong Forest.' WHERE `ID`=13251;
UPDATE `quest_template` SET `LogDescription`='Archmage Timear in Dalaran wants you to return with the Curse of Flesh Disc.$B$BThis quest may only be completed on Heroic difficulty.', `QuestCompletionLog`='Return to Archmage Timear at Forlorn Woods in Crystalsong Forest.' WHERE `ID`=13252;
UPDATE `quest_template` SET `LogDescription`='Archmage Timear in Dalaran wants you to return with the Celestial Ruby Ring.$B$BThis quest may only be completed on Heroic difficulty.', `QuestCompletionLog`='Return to Archmage Timear at Forlorn Woods in Crystalsong Forest.' WHERE `ID`=13253;
UPDATE `quest_template` SET `LogDescription`='Archmage Timear in Dalaran wants you to return with the Idle Crown of Anub\'arak.$B$BThis quest may only be completed on Heroic difficulty.', `QuestCompletionLog`='Return to Archmage Timear at Forlorn Woods in Crystalsong Forest.' WHERE `ID`=13254;
UPDATE `quest_template` SET `LogDescription`='Archmage Timear in Dalaran wants you to return with the Faceless One\'s Withered Brain.$B$BThis quest may only be completed on Heroic difficulty.', `QuestCompletionLog`='Return to Archmage Timear at Forlorn Woods in Crystalsong Forest.' WHERE `ID`=13255;
UPDATE `quest_template` SET `LogDescription`='Archmage Timear in Dalaran wants you to return with the Head of Cyanigosa.$B$BThis quest may only be completed on Heroic difficulty.', `QuestCompletionLog`='Return to Archmage Timear at Forlorn Woods in Crystalsong Forest.' WHERE `ID`=13256;
UPDATE `quest_template` SET `LogDescription`='Archmage Timear in Dalaran wants you to return with a Fragment of the Black Knight\'s Soul.$B$BThis quest may only be completed on Heroic difficulty.', `QuestDescription`='My counterpart, Archmage Lan\'dalock, has asked me to warn you of something dire. Soon, you will be participating in the Trial of the Champions at the Argent Coliseum in Icecrown. You must beware of interference from one known only as the Black Knight.$B$BBring me a fragment of his soul that the Kirin Tor will know he is dealt with. I am told that failing to do so will be your own undoing.', `QuestCompletionLog`='Return to Archmage Timear at Forlorn Woods in Crystalsong Forest.' WHERE `ID`=14199;

UPDATE `quest_offer_reward` SET `RewardText`='<Archmage Timear breathes a sigh of relief.>$b$bTo be honest, I feared the worst had befallen you. It\'s difficult to stand idly by while others, such as yourself, deal with the matters of life and death which confront our world seemingly on a daily basis.$b$bNow what are we going to do with that gigantic ring?' WHERE `ID`=13253;
UPDATE `quest_offer_reward` SET `RewardText`='What horrors you must have faced while traversing the Upper City.$b$b<Timear glances down at the tarnished crown clutched in your fist.>$b$bPerhaps we should put that aside for their new king whenever the nerubians decide to coronate one?' WHERE `ID`=13254;

UPDATE `quest_request_items` SET `CompletionText`='Did the Black Knight appear unexpectedly as Lan\'dalock foresaw?' WHERE `ID`=14199;

UPDATE `quest_template_addon` SET `ExclusiveGroup`=13245 WHERE `ID`=14199;

DELETE FROM `pool_template` WHERE `entry`=90000;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (90000, 1, 'Heroic Dungeon Dailies');

DELETE FROM `pool_quest` WHERE `pool_entry`=90000;
INSERT INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES (13245, 90000, 'Proof of Demise: Ingvar the Plunderer');
INSERT INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES (13246, 90000, 'Proof of Demise: Keristrasza');
INSERT INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES (13247, 90000, 'Proof of Demise: Ley-Guardian Eregos');
INSERT INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES (13248, 90000, 'Proof of Demise: King Ymiron');
INSERT INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES (13249, 90000, 'Proof of Demise: The Prophet Tharon\'ja');
INSERT INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES (13250, 90000, 'Proof of Demise: Gal\'darah');
INSERT INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES (13251, 90000, 'Proof of Demise: Mal\'Ganis');
INSERT INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES (13252, 90000, 'Proof of Demise: Sjonnir The Ironshaper');
INSERT INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES (13253, 90000, 'Proof of Demise: Loken');
INSERT INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES (13254, 90000, 'Proof of Demise: Anub\'arak');
INSERT INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES (13255, 90000, 'Proof of Demise: Herald Volazj');
INSERT INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES (13256, 90000, 'Proof of Demise: Cyanigosa');
INSERT INTO `pool_quest` (`entry`, `pool_entry`, `description`) VALUES (14199, 90000, 'Proof of Demise: The Black Knight');

DELETE FROM `creature_template_addon` WHERE `entry`=31618;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES (31618, 0, 0, 50331648, 0, 0, 0, '');

DELETE FROM `creature_template_addon` WHERE `entry`=31629;
INSERT INTO `creature_template_addon` (`entry`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES (31629, 0, 0, 50331648, 0, 0, 0, '');

UPDATE `quest_template` SET `RewardItem1` = 40752 WHERE id IN (13245, 13246, 13247, 13248, 13249, 13250, 13251, 13252, 13253, 13254, 13255, 13256, 14199);

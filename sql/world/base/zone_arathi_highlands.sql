-- remove non elite Syndicate thief from Stromgarde
DELETE FROM `creature` WHERE `id1` = 24477;

-- delete all guids for id1 24477 from creature_addon
DELETE FROM `creature_addon` WHERE `guid` IN 
(11650, 11699, 11700, 14522, 14538, 14539, 14540, 
14548, 14553, 14554, 14555, 14567, 14569, 14580, 
14584, 14635, 14640, 14641, 14648, 14649, 14651);

-- set drop rate of sigil of strom to 5%, was 100%
UPDATE `creature_loot_template` SET `Chance` = 5 WHERE `Item` = 4440;

-- summoning the princess, quest 656, remove suggested player 2
UPDATE `quest_template` SET `SuggestedGroupNum` = 0 WHERE `ID` = 656;

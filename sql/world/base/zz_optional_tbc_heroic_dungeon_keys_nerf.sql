/* 
    Optional change. Obtaining keys for heroic dungeons in The Burning Crusade is conditional on having corresponding reputation at Revered rank.
    This reduces the reputation requirements to obtain keys to Honored and thus allows you to go to heroic dungeons more quickly. 
    This rep nerf was officially implemented in patch 2.3 (Zul'Aman raid content, 2008). 
    Sql edit example: RequiredReputationRank = 6 for Revered, 5 for Honored, 4 for Friendly 
*/

UPDATE `item_template` SET `RequiredReputationRank` = 5 WHERE `entry` = 30622; -- Honor Hold, Flamewrought Key
UPDATE `item_template` SET `RequiredReputationRank` = 5 WHERE `entry` = 30623; -- Cenarion Expedition, Reservoir Key
UPDATE `item_template` SET `RequiredReputationRank` = 5 WHERE `entry` = 30633; -- Lower City, Auchenai Key
UPDATE `item_template` SET `RequiredReputationRank` = 5 WHERE `entry` = 30634; -- The Sha'tar, Warpforged Key
UPDATE `item_template` SET `RequiredReputationRank` = 5 WHERE `entry` = 30635; -- Keepers of Time, Key of Time
UPDATE `item_template` SET `RequiredReputationRank` = 5 WHERE `entry` = 30637; -- Thrallmar, Flamewrought Key

/* Optional change. Obtaining keys for heroic dungeons in The Burning Crusade is conditional on having corresponding reputation at Revered rank.
   This reduces the reputation requirements to obtain keys to Honored and thus allows you to go to heroic dungeons more quickly. 
   This allows players to catch up fairly advanced server progression more easily.
   This rep nerf was officially implemented in patch 2.3 (Zul'Aman raid content, 2008). 
   Sql edit example: RequiredReputationRank = 6 for Revered, 5 for Honored, 4 for Friendly */
UPDATE `item_template` SET `RequiredReputationRank` = 5 WHERE (`entry` = 30622);
UPDATE `item_template` SET `RequiredReputationRank` = 5 WHERE (`entry` = 30637);
UPDATE `item_template` SET `RequiredReputationRank` = 5 WHERE (`entry` = 30633);
UPDATE `item_template` SET `RequiredReputationRank` = 5 WHERE (`entry` = 30634);
UPDATE `item_template` SET `RequiredReputationRank` = 5 WHERE (`entry` = 30623);
UPDATE `item_template` SET `RequiredReputationRank` = 5 WHERE (`entry` = 30635);

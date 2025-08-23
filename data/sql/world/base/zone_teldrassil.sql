-- Byancie <First Aid Trainer> 
DELETE FROM `npc_trainer` WHERE `ID`=6094; 
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (6094, -350000); 

UPDATE `creature_template` SET `faction` = 22 WHERE `entry` = 1986; -- Webwood Spider
UPDATE `creature_template` SET `faction` = 22 WHERE `entry` = 1994; -- Githyiss the Vile

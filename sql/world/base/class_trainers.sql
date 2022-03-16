/* Remove Summon Imp from Trainer - it is a quest reward instead */

DELETE FROM `npc_trainer` WHERE `ID`=200009 AND `SpellID`=688;

-- Remove starting dual wield skill for rogues, add to trainers at level 10
DELETE FROM `playercreateinfo_skills` WHERE `raceMask`=0 AND `classMask`=40 AND `skill`=118;
INSERT INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES (0, 32, 118, 0, 'Dual Wield');
DELETE FROM `npc_trainer` WHERE `ID` = 200015 AND `SpellID` = 674;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES (200015, 674, 300, 0, 0, 10);

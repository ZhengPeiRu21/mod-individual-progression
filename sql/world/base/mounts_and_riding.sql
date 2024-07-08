-- Re-enable Summon Felsteed (Warlock)
DELETE FROM `disables` WHERE `sourceType`=1 AND `entry` IN (3631, 4487, 4488, 4489, 4490);

-- Remove incorrect mail about riding which doesn't match Vanilla levels
DELETE FROM `mail_level_reward` WHERE `level` <= 60;

-- Move letter about cold weather flying to level 71 instead of 70, as in Wotlk classic
UPDATE `mail_level_reward` SET `level` = 71 WHERE `mailTemplateId` IN (285, 284);


-- Riding Skills
UPDATE npc_trainer SET ReqLevel=40 WHERE SpellID=33388;
UPDATE npc_trainer SET MoneyCost=800000 WHERE SpellID=33388;
UPDATE npc_trainer SET ReqLevel=60 WHERE SpellID=33391;
UPDATE npc_trainer SET MoneyCost=10000000 WHERE SpellID=33391;
UPDATE npc_trainer SET ReqLevel=70 WHERE SpellID=34090;
UPDATE npc_trainer SET MoneyCost=6000000 WHERE SpellID=34090;
DELETE FROM npc_trainer WHERE SpellID=13819; # Delete Summon Warhorse from trainer - it is a free reward from a quest instead
DELETE FROM npc_trainer WHERE SpellID=13820; # Delete Summon Warhorse from more trainers
DELETE FROM npc_trainer WHERE SpellID=23214;
DELETE FROM npc_trainer WHERE SpellID=34767;
DELETE FROM npc_trainer WHERE SpellID=23161;
UPDATE npc_trainer SET ReqLevel=40 WHERE SpellID=34768;
UPDATE npc_trainer SET ReqLevel=40 WHERE SpellID=1710;
UPDATE npc_trainer SET ReqLevel=68 WHERE SpellID=33950;

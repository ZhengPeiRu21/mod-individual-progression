-- Beginnings (Warlock)
DELETE FROM `creature_questender` WHERE `id`=460 AND `quest`=1599;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (460, 1599);

-- Beginnings (Warlock)
DELETE FROM `creature_queststarter` WHERE `id`=460 AND `quest`=1599;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (460, 1599);

-- Beginnings (Warlock)
UPDATE `quest_template` SET `Flags`=8 WHERE `ID`=1599;

-- Beginnings (Warlock)
UPDATE `quest_template_addon` SET `SpecialFlags`=0 WHERE `ID`=1599;

 -- Thamner Pol <Physician> 
 DELETE FROM `npc_trainer` WHERE `ID`=2326;
 INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (2326, -350000);

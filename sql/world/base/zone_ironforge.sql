-- Summon Felsteed (Warlock)
DELETE FROM `creature_queststarter` WHERE `id`=5172 AND `quest`=4487;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (5172, 4487);

-- Nissa Firestone <First Aid Trainer> 
DELETE FROM `npc_trainer` WHERE `ID`=5150; 
INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (5150, -350000); 

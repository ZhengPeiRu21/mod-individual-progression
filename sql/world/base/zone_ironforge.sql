-- Summon Felsteed (Warlock)
DELETE FROM `creature_queststarter` WHERE `id`=5172 AND `quest`=4487;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (5172, 4487);

-- Windows to the Source (Warlock)
DELETE FROM `creature_questender` WHERE `id`=15283 AND `quest`=8344;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (15283, 8344);

-- Windows to the Source (Warlock)
DELETE FROM `creature_queststarter` WHERE `id`=15283 AND `quest`=8344;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (15283, 8344);

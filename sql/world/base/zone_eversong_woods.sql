-- Windows to the Source (Warlock)
DELETE FROM `creature_questender` WHERE `id`=15283 AND `quest`=8344;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES (15283, 8344);

-- Windows to the Source (Warlock)
DELETE FROM `creature_queststarter` WHERE `id`=15283 AND `quest`=8344;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (15283, 8344);

DELETE FROM `creature_loot_template` WHERE `Entry`= 15298 AND `Item`=20935;
INSERT INTO `creature_loot_template` (Entry, Item, Reference, Chance, QuestRequired, LootMode, GroupId, MinCount, MaxCount, Comment) VALUES
(15298, 20935, 0, 80, 1, 1, 0, 1, 1, 'Tainted Arcane Wraith - Tainted Wraith Essence');

 -- Kanaria <First Aid Trainer> 
 DELETE FROM `npc_trainer` WHERE `ID`=16272; 
 INSERT INTO `npc_trainer` (`ID`, `SpellID`) VALUES (16272, -350000); 

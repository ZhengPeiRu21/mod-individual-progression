/*
    This optional file sets the required level to train certain class spells to the expansion they were introduced in
    Level 61/71 is required to prevent the spell from being available too early.
    This does not effect RNDbots, they don't learn their spells from trainers.
*/

-- Warrior
UPDATE `trainer_spell` SET `ReqLevel` = 62 WHERE `TrainerId` = 1 AND `SpellId` = 34428;  -- Victory Rush, level 6 -> 62
UPDATE `trainer_spell` SET `ReqLevel` = 62 WHERE `TrainerId` = 2 AND `SpellId` = 34428;  -- Victory Rush, level 6 -> 62

-- Paladin
UPDATE `trainer_spell` SET `ReqLevel` = 61 WHERE `TrainerId` = 3 AND `SpellId` = 31789;  -- Righteous Defense, level 14 -> 61
UPDATE `trainer_spell` SET `ReqLevel` = 71 WHERE `TrainerId` = 3 AND `SpellId` = 53407;  -- Judgement of Justice, level 28 -> 71
UPDATE `trainer_spell` SET `ReqLevel` = 71 WHERE `TrainerId` = 3 AND `SpellId` = 53408;  -- Judgement of Wisdom, level 12 -> 71
UPDATE `trainer_spell` SET `ReqLevel` = 71 WHERE `TrainerId` = 3 AND `SpellId` = 62124;  -- Hand of Reckoning, level 16 -> 71

-- Hunter
UPDATE `trainer_spell` SET `ReqLevel` = 64 WHERE `TrainerId` = 7 AND `SpellId` = 34074;  -- Aspect of the Viper, level 20 -> 64
UPDATE `trainer_spell` SET `ReqLevel` = 71 WHERE `TrainerId` = 7 AND `SpellId` = 34120;  -- Steady Shot (Rank 2), level 62 -> 71
UPDATE `trainer_spell` SET `ReqLevel` = 71 WHERE `TrainerId` = 7 AND `SpellId` = 56641;  -- Steady Shot (Rank 1), level 50 -> 71

-- Rogue
UPDATE `trainer_spell` SET `ReqLevel` = 71 WHERE `TrainerId` = 9 AND `SpellId` = 51722;  -- Dismantle, level 20 -> 71

-- Shaman
UPDATE `trainer_spell` SET `ReqLevel` = 61 WHERE `TrainerId` = 14 AND `SpellId` = 36936; -- Totemic Recall, level 30 -> 61
UPDATE `trainer_spell` SET `ReqLevel` = 71 WHERE `TrainerId` = 14 AND `SpellId` = 24398; -- Water Shield (Rank 7), level 62 -> 71
UPDATE `trainer_spell` SET `ReqLevel` = 71 WHERE `TrainerId` = 14 AND `SpellId` = 33736; -- Water Shield (Rank 8), level 69 -> 71
UPDATE `trainer_spell` SET `ReqLevel` = 71 WHERE `TrainerId` = 14 AND `SpellId` = 52127; -- Water Shield (Rank 1), level 20 -> 71
UPDATE `trainer_spell` SET `ReqLevel` = 71 WHERE `TrainerId` = 14 AND `SpellId` = 52129; -- Water Shield (Rank 2), level 28 -> 71
UPDATE `trainer_spell` SET `ReqLevel` = 71 WHERE `TrainerId` = 14 AND `SpellId` = 52131; -- Water Shield (Rank 3), level 34 -> 71
UPDATE `trainer_spell` SET `ReqLevel` = 71 WHERE `TrainerId` = 14 AND `SpellId` = 52134; -- Water Shield (Rank 4), level 41 -> 71
UPDATE `trainer_spell` SET `ReqLevel` = 71 WHERE `TrainerId` = 14 AND `SpellId` = 52136; -- Water Shield (Rank 5), level 48 -> 71
UPDATE `trainer_spell` SET `ReqLevel` = 71 WHERE `TrainerId` = 14 AND `SpellId` = 52138; -- Water Shield (Rank 6), level 55 -> 71
UPDATE `trainer_spell` SET `ReqLevel` = 71 WHERE `TrainerId` = 14 AND `SpellId` = 57994; -- Wind Shear, level 16 -> 71
UPDATE `trainer_spell` SET `ReqLevel` = 71 WHERE `TrainerId` = 14 AND `SpellId` = 66842; -- Call of the Elements, level 30 -> 71
UPDATE `trainer_spell` SET `ReqLevel` = 71 WHERE `TrainerId` = 14 AND `SpellId` = 66843; -- Call of the Ancestors, level 40 -> 71
UPDATE `trainer_spell` SET `ReqLevel` = 71 WHERE `TrainerId` = 14 AND `SpellId` = 66844; -- Call of the Spirits, level 50 -> 71

-- Druid
UPDATE `trainer_spell` SET `ReqLevel` = 71 WHERE `TrainerId` = 33 AND `SpellId` = 50764; -- Revive (Rank 6), level 69 -> 71
UPDATE `trainer_spell` SET `ReqLevel` = 71 WHERE `TrainerId` = 33 AND `SpellId` = 50765; -- Revive (Rank 5), level 60 -> 71
UPDATE `trainer_spell` SET `ReqLevel` = 71 WHERE `TrainerId` = 33 AND `SpellId` = 50766; -- Revive (Rank 4), level 48 -> 71
UPDATE `trainer_spell` SET `ReqLevel` = 71 WHERE `TrainerId` = 33 AND `SpellId` = 50767; -- Revive (Rank 3), level 36 -> 71
UPDATE `trainer_spell` SET `ReqLevel` = 71 WHERE `TrainerId` = 33 AND `SpellId` = 50768; -- Revive (Rank 2), level 24 -> 71
UPDATE `trainer_spell` SET `ReqLevel` = 71 WHERE `TrainerId` = 33 AND `SpellId` = 50769; -- Revive (Rank 1), level 12 -> 71
UPDATE `trainer_spell` SET `ReqLevel` = 71 WHERE `TrainerId` = 33 AND `SpellId` = 62600; -- Savage Defense, level 40 -> 71

-- remove spells from characters that had already learned them and shouldn't have them anymore
USE acore_characters;
DELETE FROM `character_spell` WHERE `spell` = 34428 AND `guid` IN (SELECT `guid` FROM `characters` WHERE `class` = 1 AND `level` < 62);
DELETE FROM `character_spell` WHERE `spell` = 31789 AND `guid` IN (SELECT `guid` FROM `characters` WHERE `class` = 2 AND `level` < 61);
DELETE FROM `character_spell` WHERE `spell` IN (53407, 53408, 62124) AND `guid` IN (SELECT `guid` FROM `characters` WHERE `class` = 2 AND `level` < 71);
DELETE FROM `character_spell` WHERE `spell` = 34074 AND `guid` IN (SELECT `guid` FROM `characters` WHERE `class` = 3 AND `level` < 64);
DELETE FROM `character_spell` WHERE `spell` IN (34120, 56641) AND `guid` IN (SELECT `guid` FROM `characters` WHERE `class` = 3 AND `level` < 71);
DELETE FROM `character_spell` WHERE `spell` = 51722 AND `guid` IN (SELECT `guid` FROM `characters` WHERE `class` = 4 AND `level` < 71);
DELETE FROM `character_spell` WHERE `spell` = 36936 AND `guid` IN (SELECT `guid` FROM `characters` WHERE `class` = 7 AND `level` < 61);
DELETE FROM `character_spell` WHERE `spell` IN (24398, 33736, 52127, 52129, 52131, 52134, 52136, 52138, 57994, 66842, 66843, 66844) AND `guid` IN (SELECT `guid` FROM `characters` WHERE `class` = 7 AND `level` < 71);
DELETE FROM `character_spell` WHERE `spell` IN (50764, 50765, 50766, 50767, 50768, 50769, 62600) AND `guid` IN (SELECT `guid` FROM `characters` WHERE `class` = 11 AND `level` < 71);

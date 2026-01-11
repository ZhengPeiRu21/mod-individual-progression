-- fix drop Mature Bone Sifter Carcass (didn't drop)
UPDATE `creature_loot_template` SET `GroupId` = 2 WHERE `Item` = 31814 AND `Entry` = 22482;

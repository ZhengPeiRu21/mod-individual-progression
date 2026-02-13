/* Restore Aquatic Form as a reward for Aquatic Form quests */
UPDATE `quest_template` SET `RewardSpell` = 1446 WHERE `ID` IN (31, 5061);

-- Remove starting dual wield skill for rogues
DELETE FROM `playercreateinfo_skills` WHERE `skill` = 118;
INSERT INTO `playercreateinfo_skills` (`raceMask`, `classMask`, `skill`, `rank`, `comment`) VALUES (0, 32, 118, 0, 'Dual Wield');

-- add dual wield to trainers at level 10 for rogues (even though this is already done in AC's trainer_spell.sql, which I think is a mistake)
DELETE FROM `trainer_spell` WHERE `TrainerId` = 9 AND `SpellID` = 674;
INSERT INTO `trainer_spell` (`TrainerId`, `SpellId`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`, `VerifiedBuild`) VALUES (9, 674, 300, 0, 0, 10, 0);

-- fix Mai'ah <Mage Trainer> in Valley of Trials.
UPDATE `creature_default_trainer` SET `TrainerId` = 17 WHERE `CreatureId` = 5884;

/* Restore Tome of Tranquilizing Shot to Lucifron */
UPDATE `item_template` SET `description` = 'Attempts to remove 1 Enrage and 1 Magic effect from an enemy target.' WHERE `entry` = 16665;
DELETE FROM `creature_loot_template` WHERE `Entry` = 12118 AND `Item` = 16665 AND `Reference` = 0 AND `GroupId` = 0;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
(12118, 16665, 0, 100, 0, 1, 0, 1, 1, 'Lucifron - Tome of Tranquilizing Shot');

-- Warrior
DELETE FROM `trainer_spell` WHERE `TrainerId` = 1 AND `SpellId` IN (25286, 25288, 25289);
INSERT INTO `trainer_spell` (`TrainerId`, `SpellId`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqAbility1`, `ReqAbility2`, `ReqAbility3`, `ReqLevel`, `VerifiedBuild`) VALUES
(1,25286,60000,0,0,11567,0,0,61,0), -- book, Heroic Strike (Rank 9), level 60 -> 61
(1,25288,60000,0,0,11601,0,0,61,0), -- book, Revenge (Rank 6), level 60 -> 61
(1,25289,65000,0,0,11551,0,0,61,0); -- book, Battle Shout (Rank 7), level 60 -> 61
-- (1,30016,3100,0,0,20243,0,0,60,0),  -- talent, Devastate (Rank 2), level 60 -> 61
-- (1,34428,100,0,0,0,0,0,6,0), -- optional, Victory Rush, level 6 -> 62

-- Paladin
DELETE FROM `trainer_spell` WHERE `TrainerId` = 3 AND `SpellId` IN (5502, 13820, 23214, 25290, 25291, 25292);
INSERT INTO `trainer_spell` (`TrainerId`, `SpellId`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqAbility1`, `ReqAbility2`, `ReqAbility3`, `ReqLevel`, `VerifiedBuild`) VALUES
-- (3,5502,4000,0,0,0,0,0,20,0), -- quest, Sense Undead
-- (3,13820,3500,0,0,0,0,0,40,0), -- quest, Summon Warhorse
-- (3,23214,3500,0,0,13819,33391,0,60,0), -- quest, Summon Charger
(3,25290,50000,0,0,19854,0,0,61,0), -- book, Blessing of Wisdom (Rank 6), level 60 -> 61
(3,25291,50000,0,0,19838,0,0,61,0), -- book, Blessing of Might (Rank 7), level 60 -> 61
(3,25292,46000,0,0,10329,0,0,61,0); -- book, Holy Light (Rank 9), level 60 -> 61
-- (3,31789,4000,0,0,0,0,0,14,0), -- optional, Righteous Defense, level 14 -> 61
-- (3,53407,9000,0,0,0,0,0,28,0), -- optional, Judgement of Justice, level 28 -> 71
-- (3,53408,1000,0,0,0,0,0,12,0), -- optional, Judgement of Wisdom, level 12 -> 71
-- (3,62124,3000,0,0,0,0,0,16,0), -- optional, Hand of Reckoning, level 16 -> 71

-- Hunter
DELETE FROM `trainer_spell` WHERE `TrainerId` = 7 AND `SpellId` IN (5118, 19801, 25294, 25295, 25296);
INSERT INTO `trainer_spell` (`TrainerId`, `SpellId`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqAbility1`, `ReqAbility2`, `ReqAbility3`, `ReqLevel`, `VerifiedBuild`) VALUES
(7,5118,2200,0,0,0,0,0,20,0), -- Aspect of the Cheetah, level 16 -> 20
(7,19801,50000,0,0,0,0,0,61,0), -- book, Tranquilizing Shot, level 60 -> 61
(7,25294,50000,0,0,14290,0,0,61,0), -- book, Multi-Shot (Rank 5), level 60 -> 61
(7,25295,50000,0,0,13555,0,0,61,0), -- book, Serpent Sting (Rank 9), level 60 -> 61
(7,25296,50000,0,0,14322,0,0,61,0); -- book, Aspect of the Hawk (Rank 7), level 60 -> 61
-- (7,34074,2200,0,0,0,0,0,20,0),      -- optional, Aspect of the Viper, level 20 -> 61
-- (7,34120,70000,0,0,56641,0,0,62,0), -- optional, Steady Shot (Rank 2), level 62 -> 71
-- (7,56641,36000,0,0,0,0,0,50,0), -- optional, Steady Shot (Rank 1), level 50 -> 71
-- (7,63668,1800,0,0,3674,0,0,57,0), -- talent, Black Arrow (Rank 2), level 57 -> 71

-- Rogue
DELETE FROM `trainer_spell` WHERE `TrainerId` = 9 AND `SpellId` IN (25300, 25302, 31016);
INSERT INTO `trainer_spell` (`TrainerId`, `SpellId`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqAbility1`, `ReqAbility2`, `ReqAbility3`, `ReqLevel`, `VerifiedBuild`) VALUES
(9,25300,72000,0,0,11281,0,0,61,0), -- book, Backstab (Rank 9), level 60 -> 61
(9,25302,50000,0,0,11303,0,0,61,0), -- book, Feint (Rank 5), level 60 -> 61
(9,31016,65000,0,0,11300,0,0,61,0); -- book, Eviscerate (Rank 9), level 60 -> 61
-- (9,34411,5500,0,0,1329,0,0,50,0),   -- talent, Mutilate (Rank 2), level 50 -> 61
-- (9,34412,6500,0,0,34411,0,0,60,0),  -- talent, Mutilate (Rank 3), level 60 -> 61
-- (9,51722,3000,0,0,0,0,0,20,0), -- optional, Dismantle, level 20 -> 71

-- Priest
DELETE FROM `trainer_spell` WHERE `TrainerId` = 11 AND `SpellId` IN (21562, 21564, 25314, 25315, 25316, 25392, 27683, 39374);
INSERT INTO `trainer_spell` (`TrainerId`, `SpellId`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqAbility1`, `ReqAbility2`, `ReqAbility3`, `ReqLevel`, `VerifiedBuild`) VALUES
(11,21562,28000,0,0,0,0,0,61,0),      -- book, Prayer of Fortitude (Rank 1), level 48 -> 61
(11,21564,46000,0,0,21562,0,0,61,0),  -- book, Prayer of Fortitude (Rank 2), level 60 -> 61
(11,25314,65000,0,0,10965,0,0,61,0),  -- book, Greater Heal (Rank 5), level 60 -> 61
(11,25315,6500,0,0,10929,0,0,61,0),   -- book, Renew (Rank 10), level 60 -> 61
(11,25316,6500,0,0,10961,0,0,61,0),   -- book, Prayer of Healing (Rank 5), level 60 -> 61
(11,25392,100000,0,0,21564,0,0,71,0), -- book, Prayer of Fortitude (Rank 3), level 70 -> 71
(11,27683,42000,0,0,0,0,0,61,0),      -- book, Prayer of Shadow Protection (Rank 1), level 56 -> 61
-- (11,34863,2100,0,0,34861,0,0,56,0), -- talent, Circle of Healing (Rank 2), level 56 -> 61
-- (11,34864,2300,0,0,34863,0,0,60,0), -- talent, Circle of Healing (Rank 3), level 60 -> 61
(11,39374,100000,0,0,27683,0,0,71,0); -- book, Prayer of Shadow Protection (Rank 2), level 70 -> 71

-- Shaman
DELETE FROM `trainer_spell` WHERE `TrainerId` = 14 AND `SpellId` IN (2645, 25357, 25361, 29228, 57994);
INSERT INTO `trainer_spell` (`TrainerId`, `SpellId`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqAbility1`, `ReqAbility2`, `ReqAbility3`, `ReqLevel`, `VerifiedBuild`) VALUES
(14,2645,2200,0,0,0,0,0,20,0), -- Ghost Wolf, level 16 -> 20
-- (14,24398,38000,0,0,52138,0,0,62,0), -- optional, Water Shield (Rank 7), level 62 -> 71
(14,25357,6500,0,0,10396,0,0,61,0),  -- book, Healing Wave (Rank 10), level 60 -> 61
(14,25361,34000,0,0,10442,0,0,61,0), -- book, Strength of Earth Totem (Rank 5), level 60 -> 61
(14,29228,65000,0,0,10448,0,0,61,0), -- book, Flame Shock (Rank 6), level 60 -> 61
-- (14,32593,1700,0,0,974,0,0,60,0),    -- talent, Earth Shield (Rank 2), level 60 -> 61
-- (14,33736,79000,0,0,24398,0,0,69,0), -- optional, Water Shield (Rank 8), level 69 -> 71
-- (14,36936,7000,0,0,0,0,0,30,0),      -- optional, Totemic Recall, level 30 -> 61
-- (14,52127,2200,0,0,0,0,0,20,0),      -- optional, Water Shield (Rank 1), level 20 -> 71
-- (14,52129,6000,0,0,52127,0,0,28,0),  -- optional, Water Shield (Rank 2), level 28 -> 71
-- (14,52131,9000,0,0,52129,0,0,34,0),  -- optional, Water Shield (Rank 3), level 34 -> 71
-- (14,52134,12000,0,0,52131,0,0,41,0), -- optional, Water Shield (Rank 4), level 41 -> 71
-- (14,52136,22000,0,0,52134,0,0,48,0), -- optional, Water Shield (Rank 5), level 48 -> 71
-- (14,52138,29000,0,0,52136,0,0,55,0), -- optional, Water Shield (Rank 6), level 55 -> 71
-- (14,57720,3400,0,0,30706,0,0,60,0),  -- talent, Totem of Wrath (Rank 2), level 60 -> 71
-- (14,57721,5200,0,0,57720,0,0,70,0),  -- talent, Totem of Wrath (Rank 3), level 70 -> 71
(14,57994,2500,0,0,0,0,0,16,0);      -- optional, Wind Shear, level 16 -> 71
-- (14,66842,700,0,0,0,0,0,30,0), -- optional, Call of the Elements, level 30 -> 71
-- (14,66843,700,0,0,0,0,0,40,0), -- optional, Call of the Ancestors, level 40 -> 71
-- (14,66844,700,0,0,0,0,0,50,0), -- optional, Call of the Spirits, level 50 -> 71

-- Mage
DELETE FROM `trainer_spell` WHERE `TrainerId` = 16 AND `SpellId` IN (10140, 23028, 25304, 25345, 27090, 27127, 28609, 28612, 33717);
INSERT INTO `trainer_spell` (`TrainerId`, `SpellId`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqAbility1`, `ReqAbility2`, `ReqAbility3`, `ReqLevel`, `VerifiedBuild`) VALUES
(16,10140,42000,0,0,10139,0,0,61,0),  -- quest, Conjure Water (Rank 7), level 60 -> 61
(16,23028,38000,0,0,0,0,0,61,0),      -- book, Arcane Brilliance (Rank 1), level 56 -> 61
(16,25304,42000,0,0,10181,0,0,61,0),  -- book, Frostbolt (Rank 11), level 60 -> 61
(16,25345,42000,0,0,10212,0,0,61,0),  -- book, Arcane Missiles (Rank 8), level 60 -> 61
(16,27090,150000,0,0,37420,0,0,71,0), -- book, Conjure Water (Rank 9), level 70 -> 71
(16,27127,100000,0,0,23028,0,0,71,0), -- book, Arcane Brilliance (Rank 2), level 70 -> 71
(16,28609,42000,0,0,10177,0,0,61,0),  -- book, Frost Ward (Rank 5), level 60 -> 61
(16,28612,42000,0,0,10145,0,0,61,0),  -- book, Conjure Food (Rank 7), level 60 -> 61
-- (16,33041,1900,0,0,31661,0,0,56,0),   -- talent, Dragon's Breath (Rank 2), level 56 -> 61
(16,33717,150000,0,0,28612,0,0,71,0); -- book, Conjure Food (Rank 8), level 70 -> 71

-- Warlock
DELETE FROM `trainer_spell` WHERE `TrainerId` = 31 AND `SpellId` IN (688, 1710, 23161, 25309, 25311, 28610);
INSERT INTO `trainer_spell` (`TrainerId`, `SpellId`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqAbility1`, `ReqAbility2`, `ReqAbility3`, `ReqLevel`, `VerifiedBuild`) VALUES
-- (31,688,100,0,0,0,0,0,1,0), -- quest, Summon Imp
-- (31,1710,10000,0,0,0,0,0,40,0), -- quest, Summon Felsteed
-- (31,23161,100000,0,0,5784,33391,0,40,0), -- quest, Summon Dreadsteed
(31,25309,26000,0,0,11668,0,0,61,0), -- book, Immolate (Rank 8), level 60 -> 61
(31,25311,26000,0,0,11672,0,0,61,0), -- book, Corruption (Rank 7), level 60 -> 61
(31,28610,34000,0,0,11740,0,0,61,0); -- book, Shadow Ward (Rank 4), level 60 -> 61
-- (31,30404,2500,0,0,30108,0,0,60,0),  -- talent, Unstable Affliction (Rank 2), level 60 -> 61
-- (31,30413,2500,0,0,30283,0,0,60,0),  -- talent, Shadowfury (Rank 2), level 60 -> 61

-- Druid
DELETE FROM `trainer_spell` WHERE `TrainerId` = 33 AND `SpellId` IN (783, 1066, 21849, 21850, 25297, 25298, 25299, 26991, 31018, 31709, 33950);
INSERT INTO `trainer_spell` (`TrainerId`, `SpellId`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqAbility1`, `ReqAbility2`, `ReqAbility3`, `ReqLevel`, `VerifiedBuild`) VALUES
(33,783,6000,0,0,0,0,0,30,0), -- Travel Form, level 16 -> 30
-- (33,1066,900,0,0,0,0,0,16,0), -- Aquatic Form is a quest reward
(33,21849,23000,0,0,0,0,0,61,0),      -- book, Gift of the Wild (Rank 1), level 50 -> 61
(33,21850,34000,0,0,21849,0,0,61,0),  -- book, Gift of the Wild (Rank 2), level 60 -> 61
(33,25297,34000,0,0,9889,0,0,61,0),   -- book, Healing Touch (Rank 11), level 60 -> 61
(33,25298,34000,0,0,9876,0,0,61,0),   -- book, Starfire (Rank 7), level 60 -> 61
(33,25299,34000,0,0,9841,0,0,61,0),   -- book, Rejuvenation (Rank 11), level 60 -> 61
(33,26991,100000,0,0,21850,0,0,71,0), -- book, Gift of the Wild (Rank 3), level 70 -> 71
(33,31018,30000,0,0,22829,0,0,61,0),  -- book, Ferocious Bite (Rank 5), level 60 -> 61
(33,31709,34000,0,0,9892,0,0,61,0),   -- book, Cower (Rank 4), level 60 -> 61
(33,33950,34000,0,0,33391,0,0,68,0);  -- Flight Form, level 60 -> 68
-- (33,33982,1700,0,0,33876,0,0,58,0),   -- talent, Mangle (Cat) (Rank 2), level 58 -> 61
-- (33,33986,1700,0,0,33878,0,0,58,0),   -- talent, Mangle (Bear) (Rank 2), level 58 -> 61
-- (33,50764,90000,0,0,50765,0,0,69,0),  -- optional, Revive (Rank 6), level 69 -> 71
-- (33,50765,34000,0,0,50766,0,0,60,0),  -- optional, Revive (Rank 5), level 60 -> 71
-- (33,50766,22000,0,0,50767,0,0,48,0),  -- optional, Revive (Rank 4), level 48 -> 71
-- (33,50767,11000,0,0,50768,0,0,36,0),  -- optional, Revive (Rank 3), level 36 -> 71
-- (33,50768,4000,0,0,50769,0,0,24,0),   -- optional, Revive (Rank 2), level 24 -> 71
-- (33,50769,800,0,0,0,0,0,12,0),        -- optional, Revive (Rank 1), level 12 -> 71
-- (33,53223,600,0,0,50516,0,0,60,0),    -- talent, Typhoon (Rank 2), level 60 -> 71
-- (33,62600,4500,0,0,0,0,0,40,0);       -- optional, Savage Defense, level 40 -> 71

/* Restore drops from Grimoire of Shadow Ward IV */
DELETE FROM `creature_loot_template` WHERE `Item` = 22891;
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Chance`, `GroupId`, `MinCount`, `MaxCount`) VALUES
(8895, 22891, 0.02, 0, 1, 1),
(8898, 22891, 0.02, 0, 1, 1),
(8899, 22891, 0.02, 0, 1, 1),
(8903, 22891, 0.02, 0, 1, 1),
(8906, 22891, 0.02, 0, 1, 1),
(8907, 22891, 0.04, 0, 1, 1),
(8908, 22891, 0.05, 0, 1, 1),
(8910, 22891, 0.02, 0, 1, 1),
(8911, 22891, 0.02, 0, 1, 1),
(8914, 22891, 0.02, 0, 1, 1),
(9044, 22891, 0.02, 0, 1, 1),
(9045, 22891, 0.03, 0, 1, 1),
(9096, 22891, 0.03, 0, 1, 1),
(9098, 22891, 0.02, 0, 1, 1),
(9197, 22891, 0.05, 0, 1, 1),
(9201, 22891, 0.02, 0, 1, 1),
(9216, 22891, 0.05, 0, 1, 1),
(9239, 22891, 0.05, 0, 1, 1),
(9240, 22891, 0.02, 0, 1, 1),
(9241, 22891, 0.02, 0, 1, 1),
(9257, 22891, 0.03, 0, 1, 1),
(9258, 22891, 0.02, 0, 1, 1),
(9259, 22891, 0.04, 0, 1, 1),
(9260, 22891, 0.03, 0, 1, 1),
(9261, 22891, 0.02, 0, 1, 1),
(9262, 22891, 0.04, 0, 1, 1),
(9263, 22891, 0.02, 0, 1, 1),
(9265, 22891, 0.02, 0, 1, 1),
(9266, 22891, 0.05, 0, 1, 1),
(9268, 22891, 0.02, 0, 1, 1),
(9269, 22891, 0.02, 0, 1, 1),
(9583, 22891, 0.03, 0, 1, 1),
(9692, 22891, 0.03, 0, 1, 1),
(9693, 22891, 0.06, 0, 1, 1),
(9716, 22891, 0.02, 0, 1, 1),
(9717, 22891, 0.02, 0, 1, 1),
(9817, 22891, 0.05, 0, 1, 1),
(9818, 22891, 0.03, 0, 1, 1),
(9819, 22891, 0.04, 0, 1, 1),
(10083, 22891, 0.02, 0, 1, 1),
(10317, 22891, 0.05, 0, 1, 1),
(10318, 22891, 0.04, 0, 1, 1),
(10319, 22891, 0.05, 0, 1, 1),
(10366, 22891, 0.03, 0, 1, 1),
(10372, 22891, 0.02, 0, 1, 1),
(10374, 22891, 0.02, 0, 1, 1),
(10381, 22891, 0.03, 0, 1, 1),
(10382, 22891, 0.02, 0, 1, 1),
(10384, 22891, 0.05, 0, 1, 1),
(10385, 22891, 0.09, 0, 1, 1),
(10390, 22891, 0.02, 0, 1, 1),
(10398, 22891, 0.02, 0, 1, 1),
(10399, 22891, 0.04, 0, 1, 1),
(10400, 22891, 0.02, 0, 1, 1),
(10405, 22891, 0.02, 0, 1, 1),
(10406, 22891, 0.03, 0, 1, 1),
(10407, 22891, 0.02, 0, 1, 1),
(10408, 22891, 0.04, 0, 1, 1),
(10409, 22891, 0.02, 0, 1, 1),
(10412, 22891, 0.02, 0, 1, 1),
(10413, 22891, 0.02, 0, 1, 1),
(10414, 22891, 0.02, 0, 1, 1),
(10416, 22891, 0.02, 0, 1, 1),
(10417, 22891, 0.02, 0, 1, 1),
(10418, 22891, 0.03, 0, 1, 1),
(10419, 22891, 0.02, 0, 1, 1),
(10420, 22891, 0.05, 0, 1, 1),
(10421, 22891, 0.04, 0, 1, 1),
(10422, 22891, 0.02, 0, 1, 1),
(10423, 22891, 0.04, 0, 1, 1),
(10424, 22891, 0.04, 0, 1, 1),
(10425, 22891, 0.05, 0, 1, 1),
(10426, 22891, 0.03, 0, 1, 1),
(10447, 22891, 0.03, 0, 1, 1),
(10463, 22891, 0.03, 0, 1, 1),
(10464, 22891, 0.02, 0, 1, 1),
(10469, 22891, 0.03, 0, 1, 1),
(10470, 22891, 0.04, 0, 1, 1),
(10471, 22891, 0.03, 0, 1, 1),
(10476, 22891, 0.04, 0, 1, 1),
(10477, 22891, 0.02, 0, 1, 1),
(10478, 22891, 0.03, 0, 1, 1),
(10486, 22891, 0.02, 0, 1, 1),
(10487, 22891, 0.02, 0, 1, 1),
(10488, 22891, 0.03, 0, 1, 1),
(10489, 22891, 0.06, 0, 1, 1),
(10491, 22891, 0.03, 0, 1, 1),
(10495, 22891, 0.02, 0, 1, 1),
(10498, 22891, 0.02, 0, 1, 1),
(10499, 22891, 0.03, 0, 1, 1),
(10500, 22891, 0.02, 0, 1, 1),
(10680, 22891, 0.02, 0, 1, 1),
(10681, 22891, 0.02, 0, 1, 1),
(10742, 22891, 0.03, 0, 1, 1),
(10762, 22891, 0.12, 0, 1, 1),
(11032, 22891, 0.02, 0, 1, 1),
(11043, 22891, 0.02, 0, 1, 1),
(11257, 22891, 0.03, 0, 1, 1),
(11441, 22891, 0.02, 0, 1, 1),
(11444, 22891, 0.02, 0, 1, 1),
(11450, 22891, 0.02, 0, 1, 1),
(11455, 22891, 0.03, 0, 1, 1),
(11456, 22891, 0.02, 0, 1, 1),
(11458, 22891, 0.02, 0, 1, 1),
(11459, 22891, 0.02, 0, 1, 1),
(11462, 22891, 0.02, 0, 1, 1),
(11472, 22891, 0.02, 0, 1, 1),
(11473, 22891, 0.02, 0, 1, 1),
(11483, 22891, 0.02, 0, 1, 1),
(11551, 22891, 0.04, 0, 1, 1),
(11582, 22891, 0.03, 0, 1, 1),
(12457, 22891, 0.02, 0, 1, 1),
(12460, 22891, 0.02, 0, 1, 1),
(12461, 22891, 0.03, 0, 1, 1),
(12463, 22891, 0.06, 0, 1, 1),
(12459, 22891, 0.02, 0, 1, 1),
(12465, 22891, 0.02, 0, 1, 1),
(12467, 22891, 0.02, 0, 1, 1),
(13197, 22891, 0.02, 0, 1, 1),
(13285, 22891, 0.02, 0, 1, 1),
(12397, 22891, 0.02, 0, 1, 1),
(10371, 22891, 0.02, 0, 1, 1),
(11471, 22891, 0.02, 0, 1, 1),
(11448, 22891, 0.02, 0, 1, 1),
(11480, 22891, 0.02, 0, 1, 1),
(10391, 22891, 0.03, 0, 1, 1);

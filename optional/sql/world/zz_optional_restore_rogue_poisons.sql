/* 
    In WotLK the Rogue Poisons crafting skill was removed and poisons were added to be simply bought from vendors instead.
    This file will remove these items from the vendors and restore the original skill for Rogues 
    Please note that this requires the optional files from the Optional directory to be installed, as several small client adjustments needed to be made!
*/

DELETE FROM `spell_dbc` WHERE `ID`= 2995;
INSERT INTO `spell_dbc` (`ID`, `Category`, `DispelType`, `Mechanic`, `Attributes`, `AttributesEx`, `AttributesEx2`, `AttributesEx3`, `AttributesEx4`, `AttributesEx5`, `AttributesEx6`, `AttributesEx7`, `ShapeshiftMask`, 
    `unk_320_2`, `ShapeshiftExclude`, `unk_320_3`, `Targets`, `TargetCreatureType`, `RequiresSpellFocus`, `FacingCasterFlags`, `CasterAuraState`, `TargetAuraState`, `ExcludeCasterAuraState`, `ExcludeTargetAuraState`, 
    `CasterAuraSpell`, `TargetAuraSpell`, `ExcludeCasterAuraSpell`, `ExcludeTargetAuraSpell`, `CastingTimeIndex`, `RecoveryTime`, `CategoryRecoveryTime`, `InterruptFlags`, `AuraInterruptFlags`, `ChannelInterruptFlags`, 
    `ProcTypeMask`, `ProcChance`, `ProcCharges`, `MaxLevel`, `BaseLevel`, `SpellLevel`, `DurationIndex`, `PowerType`, `ManaCost`, `ManaCostPerLevel`, `ManaPerSecond`, `ManaPerSecondPerLevel`, `RangeIndex`, `Speed`, 
    `ModalNextSpell`, `CumulativeAura`, `Totem_1`, `Totem_2`, `Reagent_1`, `Reagent_2`, `Reagent_3`, `Reagent_4`, `Reagent_5`, `Reagent_6`, `Reagent_7`, `Reagent_8`, `ReagentCount_1`, `ReagentCount_2`, `ReagentCount_3`,
    `ReagentCount_4`, `ReagentCount_5`, `ReagentCount_6`, `ReagentCount_7`, `ReagentCount_8`, `EquippedItemClass`, `EquippedItemSubclass`, `EquippedItemInvTypes`, `Effect_1`, `Effect_2`, `Effect_3`, `EffectDieSides_1`, 
    `EffectDieSides_2`, `EffectDieSides_3`, `EffectRealPointsPerLevel_1`, `EffectRealPointsPerLevel_2`, `EffectRealPointsPerLevel_3`, `EffectBasePoints_1`, `EffectBasePoints_2`, `EffectBasePoints_3`, `EffectMechanic_1`, 
    `EffectMechanic_2`, `EffectMechanic_3`, `ImplicitTargetA_1`, `ImplicitTargetA_2`, `ImplicitTargetA_3`, `ImplicitTargetB_1`, `ImplicitTargetB_2`, `ImplicitTargetB_3`, `EffectRadiusIndex_1`, `EffectRadiusIndex_2`,
    `EffectRadiusIndex_3`, `EffectAura_1`, `EffectAura_2`, `EffectAura_3`, `EffectAuraPeriod_1`, `EffectAuraPeriod_2`, `EffectAuraPeriod_3`, `EffectMultipleValue_1`, `EffectMultipleValue_2`, `EffectMultipleValue_3`, 
    `EffectChainTargets_1`, `EffectChainTargets_2`, `EffectChainTargets_3`, `EffectItemType_1`, `EffectItemType_2`, `EffectItemType_3`, `EffectMiscValue_1`, `EffectMiscValue_2`, `EffectMiscValue_3`, `EffectMiscValueB_1`, 
    `EffectMiscValueB_2`, `EffectMiscValueB_3`, `EffectTriggerSpell_1`, `EffectTriggerSpell_2`, `EffectTriggerSpell_3`, `EffectPointsPerCombo_1`, `EffectPointsPerCombo_2`, `EffectPointsPerCombo_3`, `EffectSpellClassMaskA_1`, 
    `EffectSpellClassMaskA_2`, `EffectSpellClassMaskA_3`, `EffectSpellClassMaskB_1`, `EffectSpellClassMaskB_2`, `EffectSpellClassMaskB_3`, `EffectSpellClassMaskC_1`, `EffectSpellClassMaskC_2`, `EffectSpellClassMaskC_3`, 
    `SpellVisualID_1`, `SpellVisualID_2`, `SpellIconID`, `ActiveIconID`, `SpellPriority`, `Name_Lang_enUS`, `Name_Lang_enGB`, `Name_Lang_koKR`, `Name_Lang_frFR`, `Name_Lang_deDE`, `Name_Lang_enCN`, `Name_Lang_zhCN`, 
    `Name_Lang_enTW`, `Name_Lang_zhTW`, `Name_Lang_esES`, `Name_Lang_esMX`, `Name_Lang_ruRU`, `Name_Lang_ptPT`, `Name_Lang_ptBR`, `Name_Lang_itIT`, `Name_Lang_Unk`, `Name_Lang_Mask`, `NameSubtext_Lang_enUS`, 
    `NameSubtext_Lang_enGB`, `NameSubtext_Lang_koKR`, `NameSubtext_Lang_frFR`, `NameSubtext_Lang_deDE`, `NameSubtext_Lang_enCN`, `NameSubtext_Lang_zhCN`, `NameSubtext_Lang_enTW`, `NameSubtext_Lang_zhTW`, 
    `NameSubtext_Lang_esES`, `NameSubtext_Lang_esMX`, `NameSubtext_Lang_ruRU`, `NameSubtext_Lang_ptPT`, `NameSubtext_Lang_ptBR`, `NameSubtext_Lang_itIT`, `NameSubtext_Lang_Unk`, `NameSubtext_Lang_Mask`, 
    `Description_Lang_enUS`, `Description_Lang_enGB`, `Description_Lang_koKR`, `Description_Lang_frFR`, `Description_Lang_deDE`, `Description_Lang_enCN`, `Description_Lang_zhCN`, `Description_Lang_enTW`, 
    `Description_Lang_zhTW`, `Description_Lang_esES`, `Description_Lang_esMX`, `Description_Lang_ruRU`, `Description_Lang_ptPT`, `Description_Lang_ptBR`, `Description_Lang_itIT`, `Description_Lang_Unk`, 
    `Description_Lang_Mask`, `AuraDescription_Lang_enUS`, `AuraDescription_Lang_enGB`, `AuraDescription_Lang_koKR`, `AuraDescription_Lang_frFR`, `AuraDescription_Lang_deDE`, `AuraDescription_Lang_enCN`, 
    `AuraDescription_Lang_zhCN`, `AuraDescription_Lang_enTW`, `AuraDescription_Lang_zhTW`, `AuraDescription_Lang_esES`, `AuraDescription_Lang_esMX`, `AuraDescription_Lang_ruRU`, `AuraDescription_Lang_ptPT`, 
    `AuraDescription_Lang_ptBR`, `AuraDescription_Lang_itIT`, `AuraDescription_Lang_Unk`, `AuraDescription_Lang_Mask`, `ManaCostPct`, `StartRecoveryCategory`, `StartRecoveryTime`, `MaxTargetLevel`, `SpellClassSet`, 
    `SpellClassMask_1`, `SpellClassMask_2`, `SpellClassMask_3`, `MaxTargets`, `DefenseType`, `PreventionType`, `StanceBarOrder`, `EffectChainAmplitude_1`, `EffectChainAmplitude_2`, `EffectChainAmplitude_3`, `MinFactionID`, 
    `MinReputation`, `RequiredAuraVision`, `RequiredTotemCategoryID_1`, `RequiredTotemCategoryID_2`, `RequiredAreasID`, `SchoolMask`, `RuneCostID`, `SpellMissileID`, `PowerDisplayID`, `EffectBonusMultiplier_1`, 
    `EffectBonusMultiplier_2`, `EffectBonusMultiplier_3`, `SpellDescriptionVariableID`, `SpellDifficultyID`) VALUES

(2995, 0, 0, 0, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
 -1, 0, 0, 36, 0, 36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2842, 0, 8681, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 107, 0, 342, 0, 0, 
 'Poisons', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712188, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 
 16712188, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0);


DELETE FROM `skilllineability_dbc` WHERE `SkillLine` = 40 and `Spell` = 2842;
INSERT INTO `skilllineability_dbc` (`ID`, `SkillLine`, `Spell`, `RaceMask`, `ClassMask`, `ExcludeRace`, `ExcludeClass`, `MinSkillLineRank`, `SupercededBySpell`, 
`AcquireMethod`, `TrivialSkillLineRankHigh`, `TrivialSkillLineRankLow`, `CharacterPoints_1`, `CharacterPoints_2`) VALUES 
(1687, 40, 2842, 0, 8, 0, 0, 0, 0, 2, 0, 0, 0, 0);

DELETE FROM `spell_dbc` WHERE `ID` = 11202;

UPDATE `item_template` SET `spellppmRate_1` = -1 WHERE `entry` = 3776;
UPDATE `item_template` SET `spellid_1` = 8693, `spellcharges_1` = -1 WHERE `entry` = 6951;
UPDATE `item_template` SET `Flags` = 2097216, `spellid_1` = 11399, `spellcharges_1` = -1 WHERE `entry` = 9186;
UPDATE `item_template` SET `class` = 0, `subclass` = 0 WHERE `entry` IN (3775, 3776, 10918, 10920, 10921, 10922, 22055, 2892, 2893, 8984, 8985, 20844, 22053, 22054, 6947, 6949, 6950, 8926, 8927, 8928, 21927, 5237, 6951, 9186, 21835);

UPDATE `item_template` SET `Quality` = 1, `class` = 7 WHERE `entry` IN
(2928,  -- Dust of Decay
 2930,  -- Essence of Pain
 3777,  -- Lethargy Root
 5173,  -- Deathweed
 8923,  -- Essence of Agony
 8924); -- Dust of Deterioration

-- add Poisons skill reward to rogue quests
UPDATE `quest_template` SET `RewardSpell` = 2995 WHERE `ID` IN (2480, 2359);

DELETE FROM `npc_vendor` WHERE `item` IN (3775, 2892, 2893, 5237, 6947, 6949, 6950, 6951, 8926, 8927, 8928, 8984, 8985, 3776, 9186, 10918, 10920, 10921, 10922, 20844, 21835, 21927, 22053, 22054, 22055);

DELETE FROM `trainer_spell` WHERE `TrainerId` = 9 AND `SpellID` In
(2835, 2837, 3420, 3421, 5763, 6510, 8687, 8691, 8694, 11341, 11342, 11343, 11357, 11358, 11400, 13220, 13228, 13229, 13230, 26786, 26892, 26969, 27282, 27283);
INSERT INTO `trainer_spell` (`TrainerId`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
--
(9, 2835, 10000, 40, 130, 30),
(9, 2837, 18000, 40, 170, 38),
(9, 3420, 3000, 40, 1, 20),
(9, 3421, 35000, 40, 230, 50),
(9, 5763, 5000, 40, 100, 24),
(9, 6510, 14000, 40, 150, 34),
(9, 8687, 8000, 40, 120, 28),
(9, 8691, 16000, 40, 160, 36),
(9, 8694, 18000, 40, 170, 38),
(9, 11341, 29000, 40, 200, 44),
(9, 11342, 46000, 40, 240, 52),
(9, 11343, 54000, 40, 280, 60),
(9, 11357, 31000, 40, 210, 46),
(9, 11358, 48000, 40, 250, 54),
(9, 11400, 46000, 40, 240, 52),
(9, 13220, 12000, 40, 140, 32),
(9, 13228, 20000, 40, 180, 40),
(9, 13229, 33000, 40, 220, 48),
(9, 13230, 50000, 40, 260, 56),
(9, 26786, 110000, 40, 320, 68),
(9, 26892, 110000, 40, 320, 68),
(9, 26969, 65000, 40, 290, 62),
(9, 27282, 140000, 40, 330, 70),
(9, 27283, 80000, 40, 300, 64);

-- add rogue book to AQ20 loot
DELETE FROM `reference_loot_template` WHERE `Entry`= 30424 AND `Item`= 21302;
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(30424, 21302, 0, 0, 0, 1, 1, 1, 1, 'Handbook of Deadly Poison V');

DELETE FROM `spell_ranks` WHERE `first_spell_id` IN (2835, 3420, 5763, 8681, 13220);
INSERT INTO `spell_ranks` (`first_spell_id`, `spell_id`, `rank`) VALUES
(2835, 2835, 1),
(2835, 2837, 2),
(2835, 11357, 3),
(2835, 11358, 4),
(2835, 25347, 5),
(2835, 26969, 6),
(2835, 27282, 7),
(3420, 3420, 1),
(3420, 3421, 2),
(5763, 5763, 1),
(5763, 8694, 2),
(5763, 11400, 3),
(8681, 8681, 1),
(8681, 8687, 2),
(8681, 8691, 3),
(8681, 11341, 4),
(8681, 11342, 5),
(8681, 11343, 6),
(8681, 26892, 7),
(13220, 13220, 1),
(13220, 13228, 2),
(13220, 13229, 3),
(13220, 13230, 4),
(13220, 27283, 5);

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

/* Blinding Powder */
UPDATE `item_template` SET `class` = 5, `subclass` = 0, `Quality` = 1, description = '' WHERE `entry` = 5530;

UPDATE `quest_template` SET `RewardSpell` = 2995 WHERE `ID` IN (2480, 2359);

DELETE FROM `npc_vendor` WHERE `item` IN (3775, 2892, 2893, 5237, 6947, 6949, 6950, 6951, 8926, 8927, 8928, 8984, 8985, 3776, 9186, 10918, 10920, 10921, 10922, 20844, 21835, 21927, 22053, 22054, 22055);

DELETE FROM `npc_trainer` WHERE `ReqSkillLine` = 40;
INSERT INTO `npc_trainer` (`ID`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
(1411, 2835, 10000, 40, 130, 30),
(1411, 2837, 18000, 40, 170, 38),
(1411, 3420, 3000, 40, 1, 20),
(1411, 3421, 35000, 40, 230, 50),
(1411, 5763, 5000, 40, 100, 24),
(1411, 6510, 14000, 40, 150, 34),
(1411, 8687, 8000, 40, 120, 28),
(1411, 8691, 16000, 40, 160, 36),
(1411, 8694, 18000, 40, 170, 38),
(1411, 11341, 29000, 40, 200, 44),
(1411, 11342, 46000, 40, 240, 52),
(1411, 11343, 54000, 40, 280, 60),
(1411, 11357, 31000, 40, 210, 46),
(1411, 11358, 48000, 40, 250, 54),
(1411, 11400, 46000, 40, 240, 52),
(1411, 13220, 12000, 40, 140, 32),
(1411, 13228, 20000, 40, 180, 40),
(1411, 13229, 33000, 40, 220, 48),
(1411, 13230, 50000, 40, 260, 56),
(1411, 26786, 110000, 40, 320, 68),
(1411, 26892, 110000, 40, 320, 68),
(1411, 26969, 65000, 40, 290, 62),
(1411, 27282, 140000, 40, 330, 70),
(1411, 27283, 80000, 40, 300, 64),
(2130, 2835, 10000, 40, 130, 30),
(2130, 2837, 18000, 40, 170, 38),
(2130, 3420, 3000, 40, 1, 20),
(2130, 3421, 35000, 40, 230, 50),
(2130, 5763, 5000, 40, 100, 24),
(2130, 6510, 14000, 40, 150, 34),
(2130, 8687, 8000, 40, 120, 28),
(2130, 8691, 16000, 40, 160, 36),
(2130, 8694, 18000, 40, 170, 38),
(2130, 11341, 29000, 40, 200, 44),
(2130, 11342, 46000, 40, 240, 52),
(2130, 11343, 54000, 40, 280, 60),
(2130, 11357, 31000, 40, 210, 46),
(2130, 11358, 48000, 40, 250, 54),
(2130, 11400, 46000, 40, 240, 52),
(2130, 13220, 12000, 40, 140, 32),
(2130, 13228, 20000, 40, 180, 40),
(2130, 13229, 33000, 40, 220, 48),
(2130, 13230, 50000, 40, 260, 56),
(2130, 26786, 110000, 40, 320, 68),
(2130, 26892, 110000, 40, 320, 68),
(2130, 26969, 65000, 40, 290, 62),
(2130, 27282, 140000, 40, 330, 70),
(2130, 27283, 80000, 40, 300, 64),
(3170, 2835, 10000, 40, 130, 30),
(3170, 2837, 18000, 40, 170, 38),
(3170, 3420, 3000, 40, 1, 20),
(3170, 3421, 35000, 40, 230, 50),
(3170, 5763, 5000, 40, 100, 24),
(3170, 6510, 14000, 40, 150, 34),
(3170, 8687, 8000, 40, 120, 28),
(3170, 8691, 16000, 40, 160, 36),
(3170, 8694, 18000, 40, 170, 38),
(3170, 11341, 29000, 40, 200, 44),
(3170, 11342, 46000, 40, 240, 52),
(3170, 11343, 54000, 40, 280, 60),
(3170, 11357, 31000, 40, 210, 46),
(3170, 11358, 48000, 40, 250, 54),
(3170, 11400, 46000, 40, 240, 52),
(3170, 13220, 12000, 40, 140, 32),
(3170, 13228, 20000, 40, 180, 40),
(3170, 13229, 33000, 40, 220, 48),
(3170, 13230, 50000, 40, 260, 56),
(3170, 26786, 110000, 40, 320, 68),
(3170, 26892, 110000, 40, 320, 68),
(3170, 26969, 65000, 40, 290, 62),
(3170, 27282, 140000, 40, 330, 70),
(3170, 27283, 80000, 40, 300, 64),
(3327, 2835, 10000, 40, 130, 30),
(3327, 2837, 18000, 40, 170, 38),
(3327, 3420, 3000, 40, 1, 20),
(3327, 3421, 35000, 40, 230, 50),
(3327, 5763, 5000, 40, 100, 24),
(3327, 6510, 14000, 40, 150, 34),
(3327, 8687, 8000, 40, 120, 28),
(3327, 8691, 16000, 40, 160, 36),
(3327, 8694, 18000, 40, 170, 38),
(3327, 11341, 29000, 40, 200, 44),
(3327, 11342, 46000, 40, 240, 52),
(3327, 11343, 54000, 40, 280, 60),
(3327, 11357, 31000, 40, 210, 46),
(3327, 11358, 48000, 40, 250, 54),
(3327, 11400, 46000, 40, 240, 52),
(3327, 13220, 12000, 40, 140, 32),
(3327, 13228, 20000, 40, 180, 40),
(3327, 13229, 33000, 40, 220, 48),
(3327, 13230, 50000, 40, 260, 56),
(3327, 26786, 110000, 40, 320, 68),
(3327, 26892, 110000, 40, 320, 68),
(3327, 26969, 65000, 40, 290, 62),
(3327, 27282, 140000, 40, 330, 70),
(3327, 27283, 80000, 40, 300, 64),
(3328, 2835, 10000, 40, 130, 30),
(3328, 2837, 18000, 40, 170, 38),
(3328, 3420, 3000, 40, 1, 20),
(3328, 3421, 35000, 40, 230, 50),
(3328, 5763, 5000, 40, 100, 24),
(3328, 6510, 14000, 40, 150, 34),
(3328, 8687, 8000, 40, 120, 28),
(3328, 8691, 16000, 40, 160, 36),
(3328, 8694, 18000, 40, 170, 38),
(3328, 11341, 29000, 40, 200, 44),
(3328, 11342, 46000, 40, 240, 52),
(3328, 11343, 54000, 40, 280, 60),
(3328, 11357, 31000, 40, 210, 46),
(3328, 11358, 48000, 40, 250, 54),
(3328, 11400, 46000, 40, 240, 52),
(3328, 13220, 12000, 40, 140, 32),
(3328, 13228, 20000, 40, 180, 40),
(3328, 13229, 33000, 40, 220, 48),
(3328, 13230, 50000, 40, 260, 56),
(3328, 26786, 110000, 40, 320, 68),
(3328, 26892, 110000, 40, 320, 68),
(3328, 26969, 65000, 40, 290, 62),
(3328, 27282, 140000, 40, 330, 70),
(3328, 27283, 80000, 40, 300, 64),
(3401, 2835, 10000, 40, 130, 30),
(3401, 2837, 18000, 40, 170, 38),
(3401, 3420, 3000, 40, 1, 20),
(3401, 3421, 35000, 40, 230, 50),
(3401, 5763, 5000, 40, 100, 24),
(3401, 6510, 14000, 40, 150, 34),
(3401, 8687, 8000, 40, 120, 28),
(3401, 8691, 16000, 40, 160, 36),
(3401, 8694, 18000, 40, 170, 38),
(3401, 11341, 29000, 40, 200, 44),
(3401, 11342, 46000, 40, 240, 52),
(3401, 11343, 54000, 40, 280, 60),
(3401, 11357, 31000, 40, 210, 46),
(3401, 11358, 48000, 40, 250, 54),
(3401, 11400, 46000, 40, 240, 52),
(3401, 13220, 12000, 40, 140, 32),
(3401, 13228, 20000, 40, 180, 40),
(3401, 13229, 33000, 40, 220, 48),
(3401, 13230, 50000, 40, 260, 56),
(3401, 26786, 110000, 40, 320, 68),
(3401, 26892, 110000, 40, 320, 68),
(3401, 26969, 65000, 40, 290, 62),
(3401, 27282, 140000, 40, 330, 70),
(3401, 27283, 80000, 40, 300, 64),
(4582, 2835, 10000, 40, 130, 30),
(4582, 2837, 18000, 40, 170, 38),
(4582, 3420, 3000, 40, 1, 20),
(4582, 3421, 35000, 40, 230, 50),
(4582, 5763, 5000, 40, 100, 24),
(4582, 6510, 14000, 40, 150, 34),
(4582, 8687, 8000, 40, 120, 28),
(4582, 8691, 16000, 40, 160, 36),
(4582, 8694, 18000, 40, 170, 38),
(4582, 11341, 29000, 40, 200, 44),
(4582, 11342, 46000, 40, 240, 52),
(4582, 11343, 54000, 40, 280, 60),
(4582, 11357, 31000, 40, 210, 46),
(4582, 11358, 48000, 40, 250, 54),
(4582, 11400, 46000, 40, 240, 52),
(4582, 13220, 12000, 40, 140, 32),
(4582, 13228, 20000, 40, 180, 40),
(4582, 13229, 33000, 40, 220, 48),
(4582, 13230, 50000, 40, 260, 56),
(4582, 26786, 110000, 40, 320, 68),
(4582, 26892, 110000, 40, 320, 68),
(4582, 26969, 65000, 40, 290, 62),
(4582, 27282, 140000, 40, 330, 70),
(4582, 27283, 80000, 40, 300, 64),
(4583, 2835, 10000, 40, 130, 30),
(4583, 2837, 18000, 40, 170, 38),
(4583, 3420, 3000, 40, 1, 20),
(4583, 3421, 35000, 40, 230, 50),
(4583, 5763, 5000, 40, 100, 24),
(4583, 6510, 14000, 40, 150, 34),
(4583, 8687, 8000, 40, 120, 28),
(4583, 8691, 16000, 40, 160, 36),
(4583, 8694, 18000, 40, 170, 38),
(4583, 11341, 29000, 40, 200, 44),
(4583, 11342, 46000, 40, 240, 52),
(4583, 11343, 54000, 40, 280, 60),
(4583, 11357, 31000, 40, 210, 46),
(4583, 11358, 48000, 40, 250, 54),
(4583, 11400, 46000, 40, 240, 52),
(4583, 13220, 12000, 40, 140, 32),
(4583, 13228, 20000, 40, 180, 40),
(4583, 13229, 33000, 40, 220, 48),
(4583, 13230, 50000, 40, 260, 56),
(4583, 26786, 110000, 40, 320, 68),
(4583, 26892, 110000, 40, 320, 68),
(4583, 26969, 65000, 40, 290, 62),
(4583, 27282, 140000, 40, 330, 70),
(4583, 27283, 80000, 40, 300, 64),
(4584, 2835, 10000, 40, 130, 30),
(4584, 2837, 18000, 40, 170, 38),
(4584, 3420, 3000, 40, 1, 20),
(4584, 3421, 35000, 40, 230, 50),
(4584, 5763, 5000, 40, 100, 24),
(4584, 6510, 14000, 40, 150, 34),
(4584, 8687, 8000, 40, 120, 28),
(4584, 8691, 16000, 40, 160, 36),
(4584, 8694, 18000, 40, 170, 38),
(4584, 11341, 29000, 40, 200, 44),
(4584, 11342, 46000, 40, 240, 52),
(4584, 11343, 54000, 40, 280, 60),
(4584, 11357, 31000, 40, 210, 46),
(4584, 11358, 48000, 40, 250, 54),
(4584, 11400, 46000, 40, 240, 52),
(4584, 13220, 12000, 40, 140, 32),
(4584, 13228, 20000, 40, 180, 40),
(4584, 13229, 33000, 40, 220, 48),
(4584, 13230, 50000, 40, 260, 56),
(4584, 26786, 110000, 40, 320, 68),
(4584, 26892, 110000, 40, 320, 68),
(4584, 26969, 65000, 40, 290, 62),
(4584, 27282, 140000, 40, 330, 70),
(4584, 27283, 80000, 40, 300, 64),
(26329, 2835, 10000, 40, 130, 30),
(26329, 2837, 18000, 40, 170, 38),
(26329, 3420, 3000, 40, 1, 20),
(26329, 3421, 35000, 40, 230, 50),
(26329, 5763, 5000, 40, 100, 24),
(26329, 6510, 14000, 40, 150, 34),
(26329, 8687, 8000, 40, 120, 28),
(26329, 8691, 16000, 40, 160, 36),
(26329, 8694, 18000, 40, 170, 38),
(26329, 11341, 29000, 40, 200, 44),
(26329, 11342, 46000, 40, 240, 52),
(26329, 11343, 54000, 40, 280, 60),
(26329, 11357, 31000, 40, 210, 46),
(26329, 11358, 48000, 40, 250, 54),
(26329, 11400, 46000, 40, 240, 52),
(26329, 13220, 12000, 40, 140, 32),
(26329, 13228, 20000, 40, 180, 40),
(26329, 13229, 33000, 40, 220, 48),
(26329, 13230, 50000, 40, 260, 56),
(26329, 26786, 110000, 40, 320, 68),
(26329, 26892, 110000, 40, 320, 68),
(26329, 26969, 65000, 40, 290, 62),
(26329, 27282, 140000, 40, 330, 70),
(26329, 27283, 80000, 40, 300, 64),
(200016, 2835, 10000, 40, 130, 30),
(200016, 2837, 18000, 40, 170, 38),
(200016, 3420, 3000, 40, 1, 20),
(200016, 3421, 35000, 40, 230, 50),
(200016, 5763, 5000, 40, 100, 24),
(200016, 6510, 14000, 40, 150, 34),
(200016, 8687, 8000, 40, 120, 28),
(200016, 8691, 16000, 40, 160, 36),
(200016, 8694, 18000, 40, 170, 38),
(200016, 11341, 29000, 40, 200, 44),
(200016, 11342, 46000, 40, 240, 52),
(200016, 11343, 54000, 40, 280, 60),
(200016, 11357, 31000, 40, 210, 46),
(200016, 11358, 48000, 40, 250, 54),
(200016, 11400, 46000, 40, 240, 52),
(200016, 13220, 12000, 40, 140, 32),
(200016, 13228, 20000, 40, 180, 40),
(200016, 13229, 33000, 40, 220, 48),
(200016, 13230, 50000, 40, 260, 56),
(200016, 26786, 110000, 40, 320, 68),
(200016, 26892, 110000, 40, 320, 68),
(200016, 26969, 65000, 40, 290, 62),
(200016, 27282, 140000, 40, 330, 70),
(200016, 27283, 80000, 40, 300, 64);


DELETE FROM `reference_loot_template` WHERE `Entry`= 34024 AND `Item`= 21302;
INSERT INTO `reference_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
(34024, 21302, 0, 0, 0, 1, 3, 1, 1, 'Handbook of Deadly Poison V');

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


/* NPC Amy Davenport - 777 */
DELETE FROM `npc_vendor` WHERE `entry` = 777 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(777, 2928, 0, 0); -- Dust of Decay

/* NPC Banalash - 989 */
DELETE FROM `npc_vendor` WHERE `entry` = 989 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(989, 2928, 0, 0), -- Dust of Decay
(989, 3777, 0, 0); -- Lethargy Root

/* NPC Nerrist - 1148 */
DELETE FROM `npc_vendor` WHERE `entry` = 1148 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(1148, 2928, 0, 0), -- Dust of Decay
(1148, 3777, 0, 0); -- Lethargy Root

/* NPC Edna Mullby - 1286 */
DELETE FROM `npc_vendor` WHERE `entry` = 1286 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(1286, 2928, 0, 0), -- Dust of Decay
(1286, 3777, 0, 0); -- Lethargy Root

/* NPC Jasper Fel - 1325 */
DELETE FROM `npc_vendor` WHERE `entry` = 1325 AND `item` IN (2928, 2930, 3777, 5140, 5173, 8923, 8924);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(1325, 2928, 0, 0), -- Dust of Decay
(1325, 2930, 0, 0), -- Essence of Pain
(1325, 3777, 0, 0), -- Lethargy Root
(1325, 5140, 0, 0), -- Flash Powder
(1325, 5173, 0, 0), -- Deathweed
(1325, 8923, 0, 0), -- Essence of Agony
(1325, 8924, 0, 0); -- Dust of Deterioration

/* NPC Sloan McCoy - 1326 */
DELETE FROM `npc_vendor` WHERE `entry` = 1326 AND `item` IN (2928, 2930, 3777, 5140, 5173, 8923, 8924);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(1326, 2928, 0, 0), -- Dust of Decay
(1326, 2930, 0, 0), -- Essence of Pain
(1326, 3777, 0, 0), -- Lethargy Root
(1326, 5140, 0, 0), -- Flash Powder
(1326, 5173, 0, 0), -- Deathweed
(1326, 8923, 0, 0), -- Essence of Agony
(1326, 8924, 0, 0); -- Dust of Deterioration

/* NPC Samor Festivus - 1457 */
DELETE FROM `npc_vendor` WHERE `entry` = 1457 AND `item` IN (2928, 2930, 3777, 5140, 5173, 8923, 8924);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(1457, 2928, 0, 0), -- Dust of Decay
(1457, 2930, 0, 0), -- Essence of Pain
(1457, 3777, 0, 0), -- Lethargy Root
(1457, 5140, 0, 0), -- Flash Powder
(1457, 5173, 0, 0), -- Deathweed
(1457, 8923, 0, 0), -- Essence of Agony
(1457, 8924, 0, 0); -- Dust of Deterioration

/* NPC Zora Guthrek - 2225 */
DELETE FROM `npc_vendor` WHERE `entry` = 2225 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(2225, 2928, 0, 0), -- Dust of Decay
(2225, 3777, 0, 0); -- Lethargy Root

/* NPC Sly Garrett - 2622 */
DELETE FROM `npc_vendor` WHERE `entry` = 2622 AND `item` IN (2928, 2930, 3777, 5140, 5173, 8923, 8924);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(2622, 2928, 0, 0), -- Dust of Decay
(2622, 2930, 0, 0), -- Essence of Pain
(2622, 3777, 0, 0), -- Lethargy Root
(2622, 5140, 0, 0), -- Flash Powder
(2622, 5173, 0, 0), -- Deathweed
(2622, 8923, 0, 0), -- Essence of Agony
(2622, 8924, 0, 0); -- Dust of Deterioration

/* NPC Hammon Karwn - 2810 */
DELETE FROM `npc_vendor` WHERE `entry` = 2810 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(2810, 2928, 0, 0), -- Dust of Decay
(2810, 3777, 0, 0); -- Lethargy Root

/* NPC Keena - 2821 */
DELETE FROM `npc_vendor` WHERE `entry` = 2821 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(2821, 2928, 0, 0), -- Dust of Decay
(2821, 3777, 0, 0); -- Lethargy Root

/* NPC Gerald Crawley - 3090 */
DELETE FROM `npc_vendor` WHERE `entry` = 3090 AND `item` IN (2928, 2930, 3777, 5140, 5173, 8923, 8924);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(3090, 2928, 0, 0), -- Dust of Decay
(3090, 2930, 0, 0), -- Essence of Pain
(3090, 3777, 0, 0), -- Lethargy Root
(3090, 5140, 0, 0), -- Flash Powder
(3090, 5173, 0, 0), -- Deathweed
(3090, 8923, 0, 0), -- Essence of Agony
(3090, 8924, 0, 0); -- Dust of Deterioration

/* NPC Malissa - 3135 */
DELETE FROM `npc_vendor` WHERE `entry` = 3135 AND `item` IN (2928, 2930, 3777, 5140, 5173, 8923, 8924);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(3135, 2928, 0, 0), -- Dust of Decay
(3135, 2930, 0, 0), -- Essence of Pain
(3135, 3777, 0, 0), -- Lethargy Root
(3135, 5140, 0, 0), -- Flash Powder
(3135, 5173, 0, 0), -- Deathweed
(3135, 8923, 0, 0), -- Essence of Agony
(3135, 8924, 0, 0); -- Dust of Deterioration

/* NPC Rekkul - 3334 */
DELETE FROM `npc_vendor` WHERE `entry` = 3334 AND `item` IN (2928, 2930, 3777, 5140, 5173, 8923, 8924);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(3334, 2928, 0, 0), -- Dust of Decay
(3334, 2930, 0, 0), -- Essence of Pain
(3334, 3777, 0, 0), -- Lethargy Root
(3334, 5140, 0, 0), -- Flash Powder
(3334, 5173, 0, 0), -- Deathweed
(3334, 8923, 0, 0), -- Essence of Agony
(3334, 8924, 0, 0); -- Dust of Deterioration

/* NPC Felika - 3367 */
DELETE FROM `npc_vendor` WHERE `entry` = 3367 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(3367, 2928, 0, 0), -- Dust of Decay
(3367, 3777, 0, 0); -- Lethargy Root

/* NPC Hula'mahi - 3490 */
DELETE FROM `npc_vendor` WHERE `entry` = 3490 AND `item` IN (2928, 2930, 3777, 5140, 5173, 8923, 8924);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(3490, 2928, 0, 0), -- Dust of Decay
(3490, 2930, 0, 0), -- Essence of Pain
(3490, 3777, 0, 0), -- Lethargy Root
(3490, 5140, 0, 0), -- Flash Powder
(3490, 5173, 0, 0), -- Deathweed
(3490, 8923, 0, 0), -- Essence of Agony
(3490, 8924, 0, 0); -- Dust of Deterioration

/* NPC Ranik - 3499 */
DELETE FROM `npc_vendor` WHERE `entry` = 3499 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(3499, 2928, 0, 0); -- Dust of Decay

/* NPC Jaysin Lanyda - 3542 */
DELETE FROM `npc_vendor` WHERE `entry` = 3551 AND `item` IN (2928, 2930, 3777, 5140, 5173, 8923, 8924);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(3542, 2928, 0, 0), -- Dust of Decay
(3542, 2930, 0, 0), -- Essence of Pain
(3542, 3777, 0, 0), -- Lethargy Root
(3542, 5140, 0, 0), -- Flash Powder
(3542, 5173, 0, 0), -- Deathweed
(3542, 8923, 0, 0), -- Essence of Agony
(3542, 8924, 0, 0); -- Dust of Deterioration

/* NPC Patrice Dwyer - 3551 */
DELETE FROM `npc_vendor` WHERE `entry` = 3551 AND `item` IN (2928, 2930, 3777, 5140, 5173, 8923, 8924);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(3551, 2928, 0, 0), -- Dust of Decay
(3551, 2930, 0, 0), -- Essence of Pain
(3551, 3777, 0, 0), -- Lethargy Root
(3551, 5140, 0, 0), -- Flash Powder
(3551, 5173, 0, 0), -- Deathweed
(3551, 8923, 0, 0), -- Essence of Agony
(3551, 8924, 0, 0); -- Dust of Deterioration

/* NPC Andrew Hilbert - 3556 */
DELETE FROM `npc_vendor` WHERE `entry` = 3556 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(3556, 2928, 0, 0); -- Dust of Decay

/* NPC Kyrai - 3561 */
DELETE FROM `npc_vendor` WHERE `entry` = 3561 AND `item` IN (2928, 2930, 3777, 5140, 5173, 8923, 8924);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(3561, 2928, 0, 0), -- Dust of Decay
(3561, 2930, 0, 0), -- Essence of Pain
(3561, 3777, 0, 0), -- Lethargy Root
(3561, 5140, 0, 0), -- Flash Powder
(3561, 5173, 0, 0), -- Deathweed
(3561, 8923, 0, 0), -- Essence of Agony
(3561, 8924, 0, 0); -- Dust of Deterioration

/* NPC Syurana - 3779 */
DELETE FROM `npc_vendor` WHERE `entry` = 3779 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(3779, 2928, 0, 0), -- Dust of Decay
(3779, 3777, 0, 0); -- Lethargy Root

/* NPC Dalria - 3954 */
DELETE FROM `npc_vendor` WHERE `entry` = 3954 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(3954, 2928, 0, 0), -- Dust of Decay
(3954, 3777, 0, 0); -- Lethargy Root

/* NPC Shandrina - 3955 */
DELETE FROM `npc_vendor` WHERE `entry` = 3955 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(3955, 2928, 0, 0), -- Dust of Decay
(3955, 3777, 0, 0); -- Lethargy Root

/* NPC Fahran Silentblade - 3969 */
DELETE FROM `npc_vendor` WHERE `entry` = 3969 AND `item` IN (2928, 2930, 3777, 5140, 5173, 8923, 8924);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(3969, 2928, 0, 0), -- Dust of Decay
(3969, 2930, 0, 0), -- Essence of Pain
(3969, 3777, 0, 0), -- Lethargy Root
(3969, 5140, 0, 0), -- Flash Powder
(3969, 5173, 0, 0), -- Deathweed
(3969, 8923, 0, 0), -- Essence of Agony
(3969, 8924, 0, 0); -- Dust of Deterioration

/* NPC Mythrin'dir - 4229 */
DELETE FROM `npc_vendor` WHERE `entry` = 4229 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(4229, 2928, 0, 0), -- Dust of Decay
(4229, 3777, 0, 0); -- Lethargy Root

/* NPC Daniel Bartlett - 4561 */
DELETE FROM `npc_vendor` WHERE `entry` = 4561 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(4561, 2928, 0, 0), -- Dust of Decay
(4561, 3777, 0, 0); -- Lethargy Root

/* NPC Ezekiel Graves - 4585 */
DELETE FROM `npc_vendor` WHERE `entry` = 4585 AND `item` IN (2928, 2930, 3777, 5140, 5173, 8923, 8924);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(4585, 2928, 0, 0), -- Dust of Decay
(4585, 2930, 0, 0), -- Essence of Pain
(4585, 3777, 0, 0), -- Lethargy Root
(4585, 5140, 0, 0), -- Flash Powder
(4585, 5173, 0, 0), -- Deathweed
(4585, 8923, 0, 0), -- Essence of Agony
(4585, 8924, 0, 0); -- Dust of Deterioration

/* NPC Felicia Doan - 4775 */
DELETE FROM `npc_vendor` WHERE `entry` = 4775 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(4775, 2928, 0, 0); -- Dust of Decay

/* NPC Helenia Olden - 4897 */
DELETE FROM `npc_vendor` WHERE `entry` = 4897 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(4897, 2928, 0, 0), -- Dust of Decay
(4897, 3777, 0, 0); -- Lethargy Root

/* NPC Svalbrad Farmountain - 5135 */
DELETE FROM `npc_vendor` WHERE `entry` = 5135 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(5135, 2928, 0, 0), -- Dust of Decay
(5135, 3777, 0, 0); -- Lethargy Root

/* NPC Kurdrum Barleybeard - 5139 */
DELETE FROM `npc_vendor` WHERE `entry` = 5139 AND `item` IN (2928, 2930, 3777, 5140, 5173, 8923, 8924);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(5139, 2928, 0, 0), -- Dust of Decay
(5139, 2930, 0, 0), -- Essence of Pain
(5139, 3777, 0, 0), -- Lethargy Root
(5139, 5140, 0, 0), -- Flash Powder
(5139, 5173, 0, 0), -- Deathweed
(5139, 8923, 0, 0), -- Essence of Agony
(5139, 8924, 0, 0); -- Dust of Deterioration

/* NPC Tynnus Venomsprout - 5169 */
DELETE FROM `npc_vendor` WHERE `entry` = 5169 AND `item` IN (2928, 2930, 3777, 5140, 5173, 8923, 8924);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(5169, 2928, 0, 0), -- Dust of Decay
(5169, 2930, 0, 0), -- Essence of Pain
(5169, 3777, 0, 0), -- Lethargy Root
(5169, 5140, 0, 0), -- Flash Powder
(5169, 5173, 0, 0), -- Deathweed
(5169, 8923, 0, 0), -- Essence of Agony
(5169, 8924, 0, 0); -- Dust of Deterioration

/* NPC Shimra - 5817 */
DELETE FROM `npc_vendor` WHERE `entry` = 5817 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(5817, 2928, 0, 0), -- Dust of Decay
(5817, 3777, 0, 0); -- Lethargy Root

/* NPC Gorbold Steelhand - 6301 */
DELETE FROM `npc_vendor` WHERE `entry` = 6301 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(6301, 2928, 0, 0), -- Dust of Decay
(6301, 3777, 0, 0); -- Lethargy Root

/* NPC Smudge Thunderwood - 6779 */
DELETE FROM `npc_vendor` WHERE `entry` = 6779 AND `item` IN (2928, 2930, 3777, 5140, 5173, 8923, 8924);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(6779, 2928, 0, 0), -- Dust of Decay
(6779, 2930, 0, 0), -- Essence of Pain
(6779, 3777, 0, 0), -- Lethargy Root
(6779, 5140, 0, 0), -- Flash Powder
(6779, 5173, 0, 0), -- Deathweed
(6779, 8923, 0, 0), -- Essence of Agony
(6779, 8924, 0, 0); -- Dust of Deterioration

/* NPC Vivianna - 7947 */
DELETE FROM `npc_vendor` WHERE `entry` = 7947 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(7947, 2928, 0, 0), -- Dust of Decay
(7947, 3777, 0, 0); -- Lethargy Root

/* NPC Sheendra Tallgrass - 8145 */
DELETE FROM `npc_vendor` WHERE `entry` = 8145 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(8145, 2928, 0, 0), -- Dust of Decay
(8145, 3777, 0, 0); -- Lethargy Root

/* NPC Shadi Mistrunner - 8363 */
DELETE FROM `npc_vendor` WHERE `entry` = 8363 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(8363, 2928, 0, 0), -- Dust of Decay
(8363, 3777, 0, 0); -- Lethargy Root

/* NPC Christopher Hewen - 8934 */
DELETE FROM `npc_vendor` WHERE `entry` = 8934 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(8934, 2928, 0, 0), -- Dust of Decay
(8934, 3777, 0, 0); -- Lethargy Root

/* NPC Kireena - 9636 */
DELETE FROM `npc_vendor` WHERE `entry` = 9636 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(9636, 2928, 0, 0), -- Dust of Decay
(9636, 3777, 0, 0); -- Lethargy Root

/* NPC Yaelika Farclaw - 10364 */
DELETE FROM `npc_vendor` WHERE `entry` = 10364 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(10364, 2928, 0, 0), -- Dust of Decay
(10364, 3777, 0, 0); -- Lethargy Root

/* NPC Qia - 11189 */
DELETE FROM `npc_vendor` WHERE `entry` = 11189 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(11189, 2928, 0, 0), -- Dust of Decay
(11189, 3777, 0, 0); -- Lethargy Root

/* NPC Lorelae Wintersong - 12022 */
DELETE FROM `npc_vendor` WHERE `entry` = 12022 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(12022, 2928, 0, 0), -- Dust of Decay
(12022, 3777, 0, 0); -- Lethargy Root

/* NPC Lah'Mawhani - 12028 */
DELETE FROM `npc_vendor` WHERE `entry` = 12028 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(12028, 2928, 0, 0), -- Dust of Decay
(12028, 3777, 0, 0); -- Lethargy Root

/* NPC Kulwia - 12043 */
DELETE FROM `npc_vendor` WHERE `entry` = 12043 AND `item` = 2928;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(12043, 2928, 0, 0); -- Dust of Decay

/* NPC Vendor-Tron 1000 - 12245 */
DELETE FROM `npc_vendor` WHERE `entry` = 12245 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(12245, 2928, 0, 0), -- Dust of Decay
(12245, 3777, 0, 0); -- Lethargy Root

/* NPC Jase Farlane - 12941 */
DELETE FROM `npc_vendor` WHERE `entry` = 12941 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(12941, 2928, 0, 0), -- Dust of Decay
(12941, 3777, 0, 0); -- Lethargy Root

/* NPC Blimo Gadgetspring - 12957 */
DELETE FROM `npc_vendor` WHERE `entry` = 12957 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(12957, 2928, 0, 0), -- Dust of Decay
(12957, 3777, 0, 0); -- Lethargy Root

/* NPC Gigget Zipcoil - 12958 */
DELETE FROM `npc_vendor` WHERE `entry` = 12958 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(12958, 2928, 0, 0), -- Dust of Decay
(12958, 3777, 0, 0); -- Lethargy Root

/* NPC Khur Hornstriker - 15175 */
DELETE FROM `npc_vendor` WHERE `entry` = 15175 AND `item` IN (2928, 2930, 3777, 5140, 5173, 8923, 8924);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(15175, 2928, 0, 0), -- Dust of Decay
(15175, 2930, 0, 0), -- Essence of Pain
(15175, 3777, 0, 0), -- Lethargy Root
(15175, 5140, 0, 0), -- Flash Powder
(15175, 5173, 0, 0), -- Deathweed
(15175, 8923, 0, 0), -- Essence of Agony
(15175, 8924, 0, 0); -- Dust of Deterioration

/* NPC Mishta - 15179 */
DELETE FROM `npc_vendor` WHERE `entry` = 15179 AND `item` IN (2928, 3777);
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES 
(15179, 2928, 0, 0), -- Dust of Decay
(15179, 3777, 0, 0); -- Lethargy Root

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

-- Earth Shock (rank 1-7), add Interrupt, remove attack slow down aura
DELETE FROM `spell_dbc` WHERE `ID` IN (8042, 8044, 8045, 8046, 10412, 10413, 10414);
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
--
(8042, 19, 0, 0, 327680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6000, 0, 0, 0, 0, 101, 0, 9, 4, 4, 39, 0, 30, 0, 0, 0, 34, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 68, 2, 0, 0, 3, 0, 0, 0.5, 0, 0, 16, 0, 26, 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3444, 0, 687, 0, 0, 
'Earth Shock', '', '', '', '大地震击', '大地震擊', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 'Rank 1', '', '', '', '等级 1', '等級 1', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 
'Instantly shocks the target with concussive force, causing $s2 Nature damage.  It also interrupts spellcasting and prevents any spell in that school from being cast for $d.', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 
'', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 0, 133, 1500, 0, 11, 1048576, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0.154, 0, 0, 0),
--
(8044, 19, 0, 0, 327680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6000, 0, 0, 0, 0, 101, 0, 13, 8, 8, 39, 0, 50, 0, 0, 0, 34, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 68, 2, 0, 0, 3, 0, 0, 0.7, 0, 0, 31, 0, 26, 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3444, 0, 687, 0, 0, 
'Earth Shock', '', '', '', '大地震击', '大地震擊', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 'Rank 2', '', '', '', '等级 2', '等級 2', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 
'Instantly shocks the target with concussive force, causing $s2 Nature damage.  It also interrupts spellcasting and prevents any spell in that school from being cast for $d.', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 
'', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 0, 133, 1500, 0, 11, 1048576, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0.212, 0, 0, 0),
--
(8045, 19, 0, 0, 327680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6000, 0, 0, 0, 0, 101, 0, 19, 14, 14, 39, 0, 85, 0, 0, 0, 34, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 68, 2, 0, 0, 5, 0, 0, 1, 0, 0, 59, 0, 26, 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3444, 0, 687, 0, 0, 
'Earth Shock', '', '', '', '大地震击', '大地震擊', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 'Rank 3', '', '', '', '等级 3', '等級 3', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 
'Instantly shocks the target with concussive force, causing $s2 Nature damage.  It also interrupts spellcasting and prevents any spell in that school from being cast for $d.', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 
'', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 0, 133, 1500, 0, 11, 1048576, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0.299, 0, 0, 0),
--
(8046, 19, 0, 0, 327680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6000, 0, 0, 0, 0, 101, 0, 29, 24, 24, 39, 0, 145, 0, 0, 0, 34, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 68, 2, 0, 0, 9, 0, 0, 1.4, 0, 0, 118, 0, 26, 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3444, 0, 687, 0, 0, 
'Earth Shock', '', '', '', '大地震击', '大地震擊', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 'Rank 4', '', '', '', '等级 4', '等級 4', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 
'Instantly shocks the target with concussive force, causing $s2 Nature damage.  It also interrupts spellcasting and prevents any spell in that school from being cast for $d.', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 
'', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 0, 133, 1500, 0, 11, 1048576, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0.386, 0, 0, 0),
--
(10412, 19, 0, 0, 327680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6000, 0, 0, 0, 0, 101, 0, 41, 36, 36, 39, 0, 240, 0, 0, 0, 34, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 68, 2, 0, 0, 15, 0, 0, 2, 0, 0, 224, 0, 26, 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3444, 0, 687, 0, 0, 
'Earth Shock', '', '', '', '大地震击', '大地震擊', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 'Rank 5', '', '', '', '等级 5', '等級 5', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 
'Instantly shocks the target with concussive force, causing $s2 Nature damage.  It also interrupts spellcasting and prevents any spell in that school from being cast for $d.', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 
'', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 0, 133, 1500, 0, 11, 1048576, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0.386, 0, 0, 0),
--
(10413, 19, 0, 0, 327680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6000, 0, 0, 0, 0, 101, 0, 53, 48, 48, 39, 0, 345, 0, 0, 0, 34, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 68, 2, 0, 0, 23, 0, 0, 2.6, 0, 0, 358, 0, 26, 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3444, 0, 687, 0, 0, 
'Earth Shock', '', '', '', '大地震击', '大地震擊', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 'Rank 6', '', '', '', '等级 6', '等級 6', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 
'Instantly shocks the target with concussive force, causing $s2 Nature damage.  It also interrupts spellcasting and prevents any spell in that school from being cast for $d.', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 
'', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 0, 133, 1500, 0, 11, 1048576, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0.386, 0, 0, 0),
--
(10414, 19, 0, 0, 327680, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 6000, 0, 0, 0, 0, 101, 0, 65, 60, 60, 39, 0, 450, 0, 0, 0, 34, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 68, 2, 0, 0, 29, 0, 0, 3.1, 0, 0, 516, 0, 26, 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3444, 0, 687, 0, 0, 
'Earth Shock', '', '', '', '大地震击', '大地震擊', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 'Rank 7', '', '', '', '等级 7', '等級 7', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 
'Instantly shocks the target with concussive force, causing $s2 Nature damage.  It also interrupts spellcasting and prevents any spell in that school from being cast for $d.', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 
'', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 0, 133, 1500, 0, 11, 1048576, 0, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0.386, 0, 0, 0);

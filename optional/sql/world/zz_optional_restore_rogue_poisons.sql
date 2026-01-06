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

UPDATE `quest_template` SET `RewardSpell` = 2995 WHERE `ID` IN (2480, 2359);

DELETE FROM `npc_vendor` WHERE `item` IN (3775, 2892, 2893, 5237, 6947, 6949, 6950, 6951, 8926, 8927, 8928, 8984, 8985, 3776, 9186, 10918, 10920, 10921, 10922, 20844, 21835, 21927, 22053, 22054, 22055);

SET @TRAINER_ID   := 600;
DELETE FROM `trainer_spell` WHERE `TrainerId` = @TRAINER_ID+50;
INSERT INTO `trainer_spell` (`TrainerId`, `SpellID`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqLevel`) VALUES
--
(@TRAINER_ID+50, 2835, 10000, 40, 130, 30),
(@TRAINER_ID+50, 2837, 18000, 40, 170, 38),
(@TRAINER_ID+50, 3420, 3000, 40, 1, 20),
(@TRAINER_ID+50, 3421, 35000, 40, 230, 50),
(@TRAINER_ID+50, 5763, 5000, 40, 100, 24),
(@TRAINER_ID+50, 6510, 14000, 40, 150, 34),
(@TRAINER_ID+50, 8687, 8000, 40, 120, 28),
(@TRAINER_ID+50, 8691, 16000, 40, 160, 36),
(@TRAINER_ID+50, 8694, 18000, 40, 170, 38),
(@TRAINER_ID+50, 11341, 29000, 40, 200, 44),
(@TRAINER_ID+50, 11342, 46000, 40, 240, 52),
(@TRAINER_ID+50, 11343, 54000, 40, 280, 60),
(@TRAINER_ID+50, 11357, 31000, 40, 210, 46),
(@TRAINER_ID+50, 11358, 48000, 40, 250, 54),
(@TRAINER_ID+50, 11400, 46000, 40, 240, 52),
(@TRAINER_ID+50, 13220, 12000, 40, 140, 32),
(@TRAINER_ID+50, 13228, 20000, 40, 180, 40),
(@TRAINER_ID+50, 13229, 33000, 40, 220, 48),
(@TRAINER_ID+50, 13230, 50000, 40, 260, 56),
(@TRAINER_ID+50, 26786, 110000, 40, 320, 68),
(@TRAINER_ID+50, 26892, 110000, 40, 320, 68),
(@TRAINER_ID+50, 26969, 65000, 40, 290, 62),
(@TRAINER_ID+50, 27282, 140000, 40, 330, 70),
(@TRAINER_ID+50, 27283, 80000, 40, 300, 64);

INSERT INTO `trainer_spell` (`TrainerId`, `SpellId`, `MoneyCost`, `ReqSkillLine`, `ReqSkillRank`, `ReqAbility1`, `ReqAbility2`, `ReqAbility3`, `ReqLevel`, `VerifiedBuild`) VALUES 
(@TRAINER_ID+50, 53, 100, 0, 0, 0, 0, 0, 4, 0),
(@TRAINER_ID+50, 408, 10000, 0, 0, 0, 0, 0, 30, 0),
(@TRAINER_ID+50, 674, 300, 0, 0, 0, 0, 0, 10, 0),
(@TRAINER_ID+50, 703, 1200, 0, 0, 0, 0, 0, 14, 0),
(@TRAINER_ID+50, 921, 100, 0, 0, 0, 0, 0, 4, 0),
(@TRAINER_ID+50, 1725, 4000, 0, 0, 0, 0, 0, 22, 0),
(@TRAINER_ID+50, 1757, 100, 0, 0, 1752, 0, 0, 6, 0),
(@TRAINER_ID+50, 1758, 1200, 0, 0, 1757, 0, 0, 14, 0),
(@TRAINER_ID+50, 1759, 4000, 0, 0, 1758, 0, 0, 22, 0),
(@TRAINER_ID+50, 1760, 10000, 0, 0, 1759, 0, 0, 30, 0),
(@TRAINER_ID+50, 1766, 800, 0, 0, 0, 0, 0, 12, 0),
(@TRAINER_ID+50, 1776, 100, 0, 0, 0, 0, 0, 6, 0),
(@TRAINER_ID+50, 1784, 10, 0, 0, 0, 0, 0, 1, 0),
(@TRAINER_ID+50, 1804, 1800, 0, 0, 0, 0, 0, 16, 0),
(@TRAINER_ID+50, 1833, 6000, 0, 0, 0, 0, 0, 26, 0),
(@TRAINER_ID+50, 1842, 10000, 0, 0, 0, 0, 0, 30, 0),
(@TRAINER_ID+50, 1856, 4000, 0, 0, 0, 0, 0, 22, 0),
(@TRAINER_ID+50, 1857, 27000, 0, 0, 1856, 0, 0, 42, 0),
(@TRAINER_ID+50, 1860, 20000, 0, 0, 0, 0, 0, 40, 0),
(@TRAINER_ID+50, 1943, 3000, 0, 0, 0, 0, 0, 20, 0),
(@TRAINER_ID+50, 1966, 1800, 0, 0, 0, 0, 0, 16, 0),
(@TRAINER_ID+50, 2070, 8000, 0, 0, 6770, 0, 0, 28, 0),
(@TRAINER_ID+50, 2094, 14000, 0, 0, 0, 0, 0, 34, 0),
(@TRAINER_ID+50, 2589, 800, 0, 0, 53, 0, 0, 12, 0),
(@TRAINER_ID+50, 2590, 3000, 0, 0, 2589, 0, 0, 20, 0),
(@TRAINER_ID+50, 2591, 8000, 0, 0, 2590, 0, 0, 28, 0),
(@TRAINER_ID+50, 2836, 5000, 0, 0, 0, 0, 0, 24, 0),
(@TRAINER_ID+50, 2983, 300, 0, 0, 0, 0, 0, 10, 0),
(@TRAINER_ID+50, 3127, 800, 0, 0, 0, 0, 0, 12, 0),
(@TRAINER_ID+50, 5171, 300, 0, 0, 0, 0, 0, 10, 0),
(@TRAINER_ID+50, 5277, 200, 0, 0, 0, 0, 0, 8, 0),
(@TRAINER_ID+50, 5938, 100000, 0, 0, 0, 0, 0, 70, 0),
(@TRAINER_ID+50, 6760, 200, 0, 0, 2098, 0, 0, 8, 0),
(@TRAINER_ID+50, 6761, 1800, 0, 0, 6760, 0, 0, 16, 0),
(@TRAINER_ID+50, 6762, 5000, 0, 0, 6761, 0, 0, 24, 0),
(@TRAINER_ID+50, 6768, 8000, 0, 0, 1966, 0, 0, 28, 0),
(@TRAINER_ID+50, 6770, 300, 0, 0, 0, 0, 0, 10, 0),
(@TRAINER_ID+50, 6774, 27000, 0, 0, 5171, 0, 0, 42, 0),
(@TRAINER_ID+50, 8621, 18000, 0, 0, 1760, 0, 0, 38, 0),
(@TRAINER_ID+50, 8623, 12000, 0, 0, 6762, 0, 0, 32, 0),
(@TRAINER_ID+50, 8624, 20000, 0, 0, 8623, 0, 0, 40, 0),
(@TRAINER_ID+50, 8631, 4000, 0, 0, 703, 0, 0, 22, 0),
(@TRAINER_ID+50, 8632, 10000, 0, 0, 8631, 0, 0, 30, 0),
(@TRAINER_ID+50, 8633, 18000, 0, 0, 8632, 0, 0, 38, 0),
(@TRAINER_ID+50, 8637, 20000, 0, 0, 6768, 0, 0, 40, 0),
(@TRAINER_ID+50, 8639, 8000, 0, 0, 1943, 0, 0, 28, 0),
(@TRAINER_ID+50, 8640, 16000, 0, 0, 8639, 0, 0, 36, 0),
(@TRAINER_ID+50, 8643, 35000, 0, 0, 408, 0, 0, 50, 0),
(@TRAINER_ID+50, 8647, 1200, 0, 0, 0, 0, 0, 14, 0),
(@TRAINER_ID+50, 8676, 2900, 0, 0, 0, 0, 0, 18, 0),
(@TRAINER_ID+50, 8696, 14000, 0, 0, 2983, 0, 0, 34, 0),
(@TRAINER_ID+50, 8721, 16000, 0, 0, 2591, 0, 0, 36, 0),
(@TRAINER_ID+50, 8724, 6000, 0, 0, 8676, 0, 0, 26, 0),
(@TRAINER_ID+50, 8725, 14000, 0, 0, 8724, 0, 0, 34, 0),
(@TRAINER_ID+50, 11267, 27000, 0, 0, 8725, 0, 0, 42, 0),
(@TRAINER_ID+50, 11268, 35000, 0, 0, 11267, 0, 0, 50, 0),
(@TRAINER_ID+50, 11269, 52000, 0, 0, 11268, 0, 0, 58, 0),
(@TRAINER_ID+50, 11273, 29000, 0, 0, 8640, 0, 0, 44, 0),
(@TRAINER_ID+50, 11274, 46000, 0, 0, 11273, 0, 0, 52, 0),
(@TRAINER_ID+50, 11275, 54000, 0, 0, 11274, 0, 0, 60, 0),
(@TRAINER_ID+50, 11279, 29000, 0, 0, 8721, 0, 0, 44, 0),
(@TRAINER_ID+50, 11280, 46000, 0, 0, 11279, 0, 0, 52, 0),
(@TRAINER_ID+50, 11281, 54000, 0, 0, 11280, 0, 0, 60, 0),
(@TRAINER_ID+50, 11289, 31000, 0, 0, 8633, 0, 0, 46, 0),
(@TRAINER_ID+50, 11290, 48000, 0, 0, 11289, 0, 0, 54, 0),
(@TRAINER_ID+50, 11293, 31000, 0, 0, 8621, 0, 0, 46, 0),
(@TRAINER_ID+50, 11294, 48000, 0, 0, 11293, 0, 0, 54, 0),
(@TRAINER_ID+50, 11297, 33000, 0, 0, 2070, 0, 0, 48, 0),
(@TRAINER_ID+50, 11299, 33000, 0, 0, 8624, 0, 0, 48, 0),
(@TRAINER_ID+50, 11300, 50000, 0, 0, 11299, 0, 0, 56, 0),
(@TRAINER_ID+50, 11303, 46000, 0, 0, 8637, 0, 0, 52, 0),
(@TRAINER_ID+50, 11305, 52000, 0, 0, 8696, 0, 0, 58, 0),
(@TRAINER_ID+50, 17347, 384, 0, 0, 16511, 0, 0, 46, 0),
(@TRAINER_ID+50, 17348, 650, 0, 0, 17347, 0, 0, 58, 0),
(@TRAINER_ID+50, 26669, 35000, 0, 0, 5277, 0, 0, 50, 0),
(@TRAINER_ID+50, 26679, 72000, 0, 0, 0, 0, 0, 64, 0),
(@TRAINER_ID+50, 26839, 50000, 0, 0, 11290, 0, 0, 61, 0),
(@TRAINER_ID+50, 26861, 50000, 0, 0, 11294, 0, 0, 62, 0),
(@TRAINER_ID+50, 26862, 100000, 0, 0, 26861, 0, 0, 70, 0),
(@TRAINER_ID+50, 26863, 110000, 0, 0, 25300, 0, 0, 68, 0),
(@TRAINER_ID+50, 26864, 2700, 0, 0, 17348, 0, 0, 70, 0),
(@TRAINER_ID+50, 26865, 140000, 0, 0, 31016, 0, 0, 64, 0),
(@TRAINER_ID+50, 26867, 120000, 0, 0, 11275, 0, 0, 68, 0),
(@TRAINER_ID+50, 26884, 100000, 0, 0, 26839, 0, 0, 70, 0),
(@TRAINER_ID+50, 26889, 59000, 0, 0, 1857, 0, 0, 62, 0),
(@TRAINER_ID+50, 27441, 80000, 0, 0, 11269, 0, 0, 66, 0),
(@TRAINER_ID+50, 27448, 72000, 0, 0, 25302, 0, 0, 64, 0),
(@TRAINER_ID+50, 31224, 89000, 0, 0, 0, 0, 0, 66, 0),
(@TRAINER_ID+50, 32645, 59000, 0, 0, 0, 0, 0, 62, 0),
(@TRAINER_ID+50, 32684, 100000, 0, 0, 32645, 0, 0, 69, 0),
(@TRAINER_ID+50, 34411, 5500, 0, 0, 1329, 0, 0, 50, 0),
(@TRAINER_ID+50, 34412, 6500, 0, 0, 34411, 0, 0, 60, 0),
(@TRAINER_ID+50, 34413, 7500, 0, 0, 34412, 0, 0, 70, 0),
(@TRAINER_ID+50, 48637, 300000, 0, 0, 26862, 0, 0, 76, 0),
(@TRAINER_ID+50, 48638, 300000, 0, 0, 48637, 0, 0, 80, 0),
(@TRAINER_ID+50, 48656, 300000, 0, 0, 26863, 0, 0, 74, 0),
(@TRAINER_ID+50, 48657, 300000, 0, 0, 48656, 0, 0, 80, 0),
(@TRAINER_ID+50, 48658, 300000, 0, 0, 27448, 0, 0, 72, 0),
(@TRAINER_ID+50, 48659, 300000, 0, 0, 48658, 0, 0, 78, 0),
(@TRAINER_ID+50, 48660, 15000, 0, 0, 26864, 0, 0, 80, 0),
(@TRAINER_ID+50, 48663, 15000, 0, 0, 34413, 0, 0, 75, 0),
(@TRAINER_ID+50, 48666, 15000, 0, 0, 48663, 0, 0, 80, 0),
(@TRAINER_ID+50, 48667, 300000, 0, 0, 26865, 0, 0, 73, 0),
(@TRAINER_ID+50, 48668, 300000, 0, 0, 48667, 0, 0, 79, 0),
(@TRAINER_ID+50, 48671, 300000, 0, 0, 26867, 0, 0, 74, 0),
(@TRAINER_ID+50, 48672, 300000, 0, 0, 48671, 0, 0, 79, 0),
(@TRAINER_ID+50, 48673, 100000, 0, 0, 26679, 0, 0, 70, 0),
(@TRAINER_ID+50, 48674, 300000, 0, 0, 48673, 0, 0, 76, 0),
(@TRAINER_ID+50, 48675, 300000, 0, 0, 26884, 0, 0, 75, 0),
(@TRAINER_ID+50, 48676, 300000, 0, 0, 48675, 0, 0, 80, 0),
(@TRAINER_ID+50, 48689, 140000, 0, 0, 27441, 0, 0, 70, 0),
(@TRAINER_ID+50, 48690, 300000, 0, 0, 48689, 0, 0, 75, 0),
(@TRAINER_ID+50, 48691, 300000, 0, 0, 48690, 0, 0, 80, 0),
(@TRAINER_ID+50, 51722, 3000, 0, 0, 0, 0, 0, 20, 0),
(@TRAINER_ID+50, 51723, 300000, 0, 0, 0, 0, 0, 80, 0),
(@TRAINER_ID+50, 51724, 300000, 0, 0, 11297, 0, 0, 71, 0),
(@TRAINER_ID+50, 57934, 300000, 0, 0, 0, 0, 0, 75, 0),
(@TRAINER_ID+50, 57992, 300000, 0, 0, 32684, 0, 0, 74, 0),
(@TRAINER_ID+50, 57993, 300000, 0, 0, 57992, 0, 0, 80, 0);

DELETE FROM `creature_default_trainer` WHERE `CreatureId` IN (1411, 2130, 3170, 3327, 3328, 3401, 4582, 4583, 4584, 26329);
INSERT INTO `creature_default_trainer` (`CreatureId`, `TrainerId`) VALUES
--
(1411,   @TRAINER_ID+50),
(2130,   @TRAINER_ID+50),
(3170,   @TRAINER_ID+50),
(3327,   @TRAINER_ID+50),
(3328,   @TRAINER_ID+50),
(3401,   @TRAINER_ID+50),
(4582,   @TRAINER_ID+50),
(4583,   @TRAINER_ID+50),
(4584,   @TRAINER_ID+50),
(26329,  @TRAINER_ID+50);

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

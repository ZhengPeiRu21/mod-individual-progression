-- Custom GUIDs
-- (29213, 'spell_noth_curse_of_the_plaguebringer_aura_40');
-- (29371, 'spell_heigan_eruption_40');
-- (29350, 'spell_heigan_plague_cloud_aura_40');
-- (28241, 'spell_grobbulus_poison_cloud_poison_damage_40');
-- (26234, 'spell_submerge_visual_aura'),
-- (28819, 'spell_submerge_visual_aura');
-- (55543, 'spell_razuvious_disrupting_shout_40');
-- (29107, 'spell_razuvious_disrupting_shout_40');
-- (28135, 'spell_feugen_static_field');
-- (28457, 'spell_kelthuzad_dark_blast_40');
-- (28479, 'spell_kelthuzad_frostbolt_40');
-- (28785, 'spell_anub_locust_swarm_aura_40');
-- (28450, 'spell_unholy_staff_arcane_explosion_40');
-- (28153, 'spell_disease_cloud_damage_40');
-- (28522, 'spell_sapphiron_icebolt_40');
-- (28531, 'spell_sapphiron_frost_aura_40');
-- `spell_dbc` [90001,90007}

-- Custom Spells
DELETE FROM `spell_dbc` WHERE `ID` BETWEEN 90001 AND 90007;
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

-- Anub'Arak
-- 29105 - Corpse Scarabs (5)
(90001, 0, 0, 0, 8388864, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21,
0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 28, 0, 0, 1, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 18,
0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 351083, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7626, 0, 1, 0, 0,
'Summon Corpse Scarabs (5)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712172,
'', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712188, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712188,
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
-- 28864 - Corpse Scarabs (10)
(90002, 0, 0, 0, 8388864, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 21,
0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 28, 0, 0, 1, 0, 0, 0, 0, 0, 9, 0, 0, 0, 0, 0, 18,
0, 0, 0, 0, 0, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 351083, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7626, 0, 1, 0, 0,
'Summon Corpse Scarabs (10)', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712190, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712172,
'', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712188, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16712188,
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),

-- Trash Construct Quarter
-- 28280 - Spell Bombard Slime - Sewage Slime (10)
(90003, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 26,
0, 0, 0, 0, 0, 6, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 28, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17,
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 351071, 0, 0, 64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 68, 0, 0,
"Bombard Slime", '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190,
'Bombards the area below with a Sewage Slime.', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190,
"", '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0),
    
-- Trash Military Quarter
-- 28383 - Portal of Shadows - Update summon to 351092 Ghost of Naxxramas
(90004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 3,
0, 0, 0, 0, 0, 1, 0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 28, 0, 0, 1, 0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 18, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 351092, 0, 0, 64, 0, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3459, 0, 1490, 0, 0, 
'Portal of Shadows', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 
'Opens a portal into the Twisting Nether that periodically summons demonic minions to aid the caster in battle for $d.', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 
'', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1.0, 1.0, 1.0, 0, 0),

-- 351024 - Living Monstrosity - Summon Lightning Totem with entry 351091
(90005, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 101, 0, 0, 29, 29, 3, 
0, 0, 0, 0, 0, 1, 0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 28, 0, 0, 1, 0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 32, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 351091, 0, 0, 61, 0, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 0, 62, 0, 0, 
'Lightning Totem', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 
'Summons an Lightning Totem that lasts $d and periodically damages nearby enemies.', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 
'', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0.0, 0.0, 0.0, 0, 0),

-- Loatheb
-- 29234 - Summon Spore - Spore entry to 351066
(90006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 23, 
0, 0, 0, 0, 0, 14, 0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 28, 0, 0, 1, 0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 73, 
0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 351066, 0, 0, 1362, 0, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 
'Summon Spore', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712188, 
'Summons a Spore that lasts for $d.', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712188, 
0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0.0, 0.0, 0.0, 0, 0),
    
-- Maexxna
-- 90007: Summon Web Wrap. custom summon entry: 16486 -> 351079
(90007, 0, 0, 0, 256, 268435456, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 265,
0, 0, 0, 0, 0, 1, 0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 28, 6, 0, 1, 0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 18, 1, 
0, 0, 0, 0, 0, 0, 0, 0, 56, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 351079, 17286, 0, 64, 0, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
'Summon Web Wrap', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 
NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 
NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0.0, 0.0, 0.0, 0, 0);


-- Update target of spell 90003, summon Sewage Slime
DELETE FROM `spell_target_position` WHERE (`ID` = 90003);
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `VerifiedBuild`) VALUES
(90003, 0, 533, 3128.96, -3312.96, 293.25, 0.0, 0);

-- Unholy Staff, reduce radius from 45yd to 20yd
DELETE FROM `spell_script_names` WHERE `spell_id` = 28450;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (28450, 'spell_unholy_staff_arcane_explosion_40');

-- Sewage Slime
-- 28153 Disease cloud 600->300
DELETE FROM `spell_script_names` WHERE `spell_id` = 28153;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (28153, 'spell_disease_cloud_damage_40');

-- Sapphiron
-- 28522 Icebolt: Reduce damage ~7125 to ~2625
DELETE FROM `spell_script_names` WHERE `spell_id` = 28522;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (28522, 'spell_sapphiron_icebolt_40');

-- 28531 Frost Aura 1200->600
DELETE FROM `spell_script_names` WHERE `spell_id` = 28531;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (28531, 'spell_sapphiron_frost_aura_40');

-- 28547 Chill (Blizzard)
DELETE FROM `spell_script_names` WHERE `spell_id` = 28547;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (28547, 'spell_sapphiron_chill_40');

-- 60960 War Stomp: Increase damage 500 to ~1000
DELETE FROM `spell_script_names` WHERE `spell_id` = 60960;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (60960, 'spell_patchwork_golem_war_stomp_40');

-- Anub'Arak
-- Locust Swarm: Reduce damage ~1500 to ~1000, increase radius 25yd to 30yd
DELETE FROM `spell_script_names` WHERE `spell_id` = 28785;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (28785, 'spell_anub_locust_swarm_aura_40');

-- Kel'Thuzad
-- Dark Blast: Reduce damage ~3.5k to ~2k
DELETE FROM `spell_script_names` WHERE `spell_id` = 28457;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (28457, 'spell_kelthuzad_dark_blast_40');

-- Frostbolt: Reduce damage ~4.5k to ~2550
DELETE FROM `spell_script_names` WHERE `spell_id` = 28479;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (28479, 'spell_kelthuzad_frostbolt_40');

-- Thaddius
-- Feugen - Static Field: Change to mana drain
DELETE FROM `spell_script_names` WHERE `spell_id` = 28135;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (28135, 'spell_feugen_static_field_40');

-- Razuvious
-- Mana Burn - alternative for Disrupting Shout
DELETE FROM `spell_script_names` WHERE `spell_id` = 26046;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (26046, 'spell_razuvious_disrupting_shout_40');

-- Generic Spell Submerge
-- relinquery of souls and eye stalk TC: https://github.com/search?q=repo%3ATrinityCore%2FTrinityCore%20spell_reliquary_of_souls_submerge&type=code
DELETE FROM `spell_script_names` WHERE `spell_id` IN (26234, 28819);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(26234, 'spell_submerge_visual_aura'),
(28819, 'spell_submerge_visual_aura');

-- Update heigan teleport player (unused in core)
UPDATE `spell_target_position` SET `PositionX`=2917.43, `PositionY`=-3769.18, `PositionZ`=273.62, `Orientation`=3.1415 WHERE `ID`=29273;

-- Grobbulus
-- Poison damage by Poison Cloud ~3k to ~1k
DELETE FROM `spell_script_names` WHERE `spell_id` = 28241;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (28241, 'spell_grobbulus_poison_cloud_poison_damage_40');

-- Heigan
-- Plague Cloud
DELETE FROM `spell_script_names` WHERE `spell_id` = 29350;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (29350, 'spell_heigan_plague_cloud_aura_40');
-- Eruption
DELETE FROM `spell_script_names` WHERE `spell_id` = 29371;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (29371, 'spell_heigan_eruption_40');

-- Noth
-- Wrath of the Plaguebringer, damage if failed to decurse
DELETE FROM `spell_script_names` WHERE `spell_id` = 29213;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (29213, 'spell_noth_curse_of_the_plaguebringer_aura_40');

-- Loatheb
-- Corrupted Mind
DELETE FROM `spell_script_names` WHERE `spell_id` = 29201;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (29201, 'spell_loatheb_corrupted_mind_40');

-- Corrupted Mind check - Druid
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'isAllowedToCastSpell' AND `spell_id` IN 
(740, 774, 1058, 1430, 2090, 2091, 2782, 2893, 3627, 5185, 5186, 5187, 5188, 5189, 6778, 8903, 8910, 8918, 8936, 8938, 8939, 8940, 8941, 8946, 
9750, 9758, 9839, 9840, 9841, 9856, 9857, 9858, 9862, 9863, 9888, 9889, 18562, 25297, 25299, 26978, 26979, 26980, 26981, 26982, 26983, 33763);

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(740,  'isAllowedToCastSpell'), (774,  'isAllowedToCastSpell'), (1058, 'isAllowedToCastSpell'), (1430, 'isAllowedToCastSpell'), (2090, 'isAllowedToCastSpell'), (2091, 'isAllowedToCastSpell'),
(2782, 'isAllowedToCastSpell'), (2893, 'isAllowedToCastSpell'), (3627, 'isAllowedToCastSpell'), (5185, 'isAllowedToCastSpell'), (5186, 'isAllowedToCastSpell'), (5187, 'isAllowedToCastSpell'),
(5188, 'isAllowedToCastSpell'), (5189, 'isAllowedToCastSpell'), (6778, 'isAllowedToCastSpell'), (8903, 'isAllowedToCastSpell'), (8910, 'isAllowedToCastSpell'), (8918, 'isAllowedToCastSpell'),
(8936, 'isAllowedToCastSpell'), (8938, 'isAllowedToCastSpell'), (8939, 'isAllowedToCastSpell'), (8940, 'isAllowedToCastSpell'), (8941, 'isAllowedToCastSpell'), (8946, 'isAllowedToCastSpell'),
(9750, 'isAllowedToCastSpell'), (9758, 'isAllowedToCastSpell'), (9839, 'isAllowedToCastSpell'), (9840, 'isAllowedToCastSpell'), (9841, 'isAllowedToCastSpell'), (9856, 'isAllowedToCastSpell'),
(9857, 'isAllowedToCastSpell'), (9858, 'isAllowedToCastSpell'), (9862, 'isAllowedToCastSpell'), (9863, 'isAllowedToCastSpell'), (9888, 'isAllowedToCastSpell'), (9889, 'isAllowedToCastSpell'),
(18562, 'isAllowedToCastSpell'), (25297, 'isAllowedToCastSpell'), (25299, 'isAllowedToCastSpell'), (26978, 'isAllowedToCastSpell'), (26979, 'isAllowedToCastSpell'), 
(26980, 'isAllowedToCastSpell'), (26981, 'isAllowedToCastSpell'), (26982, 'isAllowedToCastSpell'), (26983, 'isAllowedToCastSpell'), (33763, 'isAllowedToCastSpell');

-- Corrupted Mind check - Priest
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'isAllowedToCastSpell' AND `spell_id` IN 
(17, 139, 527, 528, 552, 592, 596, 600, 988, 996, 2050, 2052, 2053, 2054, 2055, 2060, 2061, 3747, 6063, 6064, 6065, 6066, 6074, 6075, 6076, 6077, 6078, 9472, 9473, 9474, 
10898, 10899, 10900, 10901, 10915, 10916, 10917, 10927, 10928, 10929, 10960, 10961, 10963, 10964, 10965, 15229, 15237, 15286, 15430, 15431, 19236, 19238, 19240, 19241, 19242, 19243, 
25210, 25213, 25217, 25218, 25221, 25222, 25233, 25235, 25308, 25314, 25315, 25316, 25331, 25437, 27799, 27800, 27801, 32546, 33076, 34865, 34866);

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(17,   'isAllowedToCastSpell'), (139,  'isAllowedToCastSpell'), (527,  'isAllowedToCastSpell'), (528,  'isAllowedToCastSpell'), (552,  'isAllowedToCastSpell'), (592,  'isAllowedToCastSpell'),
(596,  'isAllowedToCastSpell'), (600,  'isAllowedToCastSpell'), (988,  'isAllowedToCastSpell'), (996,  'isAllowedToCastSpell'), (2050, 'isAllowedToCastSpell'), (2052, 'isAllowedToCastSpell'),
(2053, 'isAllowedToCastSpell'), (2054, 'isAllowedToCastSpell'), (2055, 'isAllowedToCastSpell'), (2060, 'isAllowedToCastSpell'), (2061, 'isAllowedToCastSpell'), (3747, 'isAllowedToCastSpell'),
(6063, 'isAllowedToCastSpell'), (6064, 'isAllowedToCastSpell'), (6065, 'isAllowedToCastSpell'), (6066, 'isAllowedToCastSpell'), (6074, 'isAllowedToCastSpell'), (6075, 'isAllowedToCastSpell'),
(6076, 'isAllowedToCastSpell'), (6077, 'isAllowedToCastSpell'), (6078, 'isAllowedToCastSpell'), (9472, 'isAllowedToCastSpell'), (9473, 'isAllowedToCastSpell'), (9474, 'isAllowedToCastSpell'),
(10898, 'isAllowedToCastSpell'), (10899, 'isAllowedToCastSpell'), (10900, 'isAllowedToCastSpell'), (10901, 'isAllowedToCastSpell'), (10915, 'isAllowedToCastSpell'), (10916, 'isAllowedToCastSpell'),
(10917, 'isAllowedToCastSpell'), (10927, 'isAllowedToCastSpell'), (10928, 'isAllowedToCastSpell'), (10929, 'isAllowedToCastSpell'), (10960, 'isAllowedToCastSpell'), (10961, 'isAllowedToCastSpell'),
(10963, 'isAllowedToCastSpell'), (10964, 'isAllowedToCastSpell'), (10965, 'isAllowedToCastSpell'), (15229, 'isAllowedToCastSpell'), (15237, 'isAllowedToCastSpell'), (15286, 'isAllowedToCastSpell'), 
(15430, 'isAllowedToCastSpell'), (15431, 'isAllowedToCastSpell'), (19236, 'isAllowedToCastSpell'), (19238, 'isAllowedToCastSpell'), (19240, 'isAllowedToCastSpell'), (19241, 'isAllowedToCastSpell'), 
(19242, 'isAllowedToCastSpell'), (19243, 'isAllowedToCastSpell'), (25210, 'isAllowedToCastSpell'), (25213, 'isAllowedToCastSpell'), (25217, 'isAllowedToCastSpell'), (25218, 'isAllowedToCastSpell'), 
(25221, 'isAllowedToCastSpell'), (25222, 'isAllowedToCastSpell'), (25233, 'isAllowedToCastSpell'), (25235, 'isAllowedToCastSpell'), (25308, 'isAllowedToCastSpell'), 
(25314, 'isAllowedToCastSpell'), (25315, 'isAllowedToCastSpell'), (25316, 'isAllowedToCastSpell'), (25331, 'isAllowedToCastSpell'), (25437, 'isAllowedToCastSpell'), (27799, 'isAllowedToCastSpell'), 
(27800, 'isAllowedToCastSpell'), (27801, 'isAllowedToCastSpell'), (32546, 'isAllowedToCastSpell'), (33076, 'isAllowedToCastSpell'), (34865, 'isAllowedToCastSpell'), (34866, 'isAllowedToCastSpell');

-- Corrupted Mind check - Paladin
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'isAllowedToCastSpell' AND `spell_id` IN 
(633, 635, 639, 647, 1026, 1042, 1152, 2800, 3472, 4987, 10310, 10328, 10329, 19750, 19939, 19940, 19941, 19942, 19943, 20473, 20929, 20930, 25292, 27135, 27136, 27137, 27154, 27174, 33072);

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(633, 'isAllowedToCastSpell'), (635, 'isAllowedToCastSpell'), (639, 'isAllowedToCastSpell'), (647, 'isAllowedToCastSpell'), (1026, 'isAllowedToCastSpell'), (1042, 'isAllowedToCastSpell'), 
(1152, 'isAllowedToCastSpell'), (2800, 'isAllowedToCastSpell'), (3472, 'isAllowedToCastSpell'), (4987, 'isAllowedToCastSpell'), (10310, 'isAllowedToCastSpell'), (10328, 'isAllowedToCastSpell'), 
(10329, 'isAllowedToCastSpell'), (19750, 'isAllowedToCastSpell'), (19939, 'isAllowedToCastSpell'), (19940, 'isAllowedToCastSpell'), (19941, 'isAllowedToCastSpell'), (19942, 'isAllowedToCastSpell'), 
(19943, 'isAllowedToCastSpell'), (20473, 'isAllowedToCastSpell'), (20929, 'isAllowedToCastSpell'), (20930, 'isAllowedToCastSpell'), (25292, 'isAllowedToCastSpell'), (27135, 'isAllowedToCastSpell'), 
(27136, 'isAllowedToCastSpell'), (27137, 'isAllowedToCastSpell'), (27154, 'isAllowedToCastSpell'), (27174, 'isAllowedToCastSpell'), (33072, 'isAllowedToCastSpell');

-- Corrupted Mind check - Shaman
DELETE FROM `spell_script_names` WHERE `ScriptName` = 'isAllowedToCastSpell' AND `spell_id` IN 
(331, 332, 526, 547, 913, 939, 959, 974, 1064, 8004, 8005, 8008, 8010, 10395, 10396, 10466, 10467, 10468, 10622, 10623, 25357, 25391, 25396, 25420, 25422, 25423, 32593, 32594, 51886); 

INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(331, 'isAllowedToCastSpell'), (332, 'isAllowedToCastSpell'), (526, 'isAllowedToCastSpell'), (547, 'isAllowedToCastSpell'), 
(913, 'isAllowedToCastSpell'), (939, 'isAllowedToCastSpell'), (959, 'isAllowedToCastSpell'), (974, 'isAllowedToCastSpell'), 
(1064, 'isAllowedToCastSpell'),  (8004, 'isAllowedToCastSpell'), (8005, 'isAllowedToCastSpell'), (8008, 'isAllowedToCastSpell'), (8010, 'isAllowedToCastSpell'), 
(10395, 'isAllowedToCastSpell'), (10396, 'isAllowedToCastSpell'), (10466, 'isAllowedToCastSpell'), (10467, 'isAllowedToCastSpell'), (10468, 'isAllowedToCastSpell'), 
(10622, 'isAllowedToCastSpell'), (10623, 'isAllowedToCastSpell'), (25357, 'isAllowedToCastSpell'), (25391, 'isAllowedToCastSpell'), (25396, 'isAllowedToCastSpell'), 
(25420, 'isAllowedToCastSpell'), (25422, 'isAllowedToCastSpell'), (25423, 'isAllowedToCastSpell'), (32593, 'isAllowedToCastSpell'), (32594, 'isAllowedToCastSpell'), (51886, 'isAllowedToCastSpell');

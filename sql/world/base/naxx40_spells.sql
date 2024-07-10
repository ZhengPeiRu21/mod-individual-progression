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
-- (28785, 'spell_anub_locust_swarm_aura_40');
-- (28450, 'spell_unholy_staff_arcane_explosion_40');
-- (28153, 'spell_disease_cloud_damage_40');
-- `spell_dbc` [90001,90007}

-- Custom Spells
DELETE FROM `spell_dbc` WHERE `ID` BETWEEN 90001 AND 90007;
INSERT INTO `spell_dbc` (`ID`,`Category`,`DispelType`,`Mechanic`,`Attributes`,`AttributesEx`,`AttributesEx2`,`AttributesEx3`,`AttributesEx4`,`AttributesEx5`,`AttributesEx6`,`AttributesEx7`,`ShapeshiftMask`,`unk_320_2`,`ShapeshiftExclude`,`unk_320_3`,`Targets`,`TargetCreatureType`,`RequiresSpellFocus`,`FacingCasterFlags`,`CasterAuraState`,`TargetAuraState`,`ExcludeCasterAuraState`,`ExcludeTargetAuraState`,`CasterAuraSpell`,`TargetAuraSpell`,`ExcludeCasterAuraSpell`,`ExcludeTargetAuraSpell`,`CastingTimeIndex`,`RecoveryTime`,`CategoryRecoveryTime`,`InterruptFlags`,`AuraInterruptFlags`,`ChannelInterruptFlags`,`ProcTypeMask`,`ProcChance`,`ProcCharges`,`MaxLevel`,`BaseLevel`,`SpellLevel`,`DurationIndex`,`PowerType`,`ManaCost`,`ManaCostPerLevel`,`ManaPerSecond`,`ManaPerSecondPerLevel`,`RangeIndex`,`Speed`,`ModalNextSpell`,`CumulativeAura`,`Totem_1`,`Totem_2`,`Reagent_1`,`Reagent_2`,`Reagent_3`,`Reagent_4`,`Reagent_5`,`Reagent_6`,`Reagent_7`,`Reagent_8`,`ReagentCount_1`,`ReagentCount_2`,`ReagentCount_3`,`ReagentCount_4`,`ReagentCount_5`,`ReagentCount_6`,`ReagentCount_7`,`ReagentCount_8`,`EquippedItemClass`,`EquippedItemSubclass`,`EquippedItemInvTypes`,`Effect_1`,`Effect_2`,`Effect_3`,`EffectDieSides_1`,`EffectDieSides_2`,`EffectDieSides_3`,`EffectRealPointsPerLevel_1`,`EffectRealPointsPerLevel_2`,`EffectRealPointsPerLevel_3`,`EffectBasePoints_1`,`EffectBasePoints_2`,`EffectBasePoints_3`,`EffectMechanic_1`,`EffectMechanic_2`,`EffectMechanic_3`,`ImplicitTargetA_1`,`ImplicitTargetA_2`,`ImplicitTargetA_3`,`ImplicitTargetB_1`,`ImplicitTargetB_2`,`ImplicitTargetB_3`,`EffectRadiusIndex_1`,`EffectRadiusIndex_2`,`EffectRadiusIndex_3`,`EffectAura_1`,`EffectAura_2`,`EffectAura_3`,`EffectAuraPeriod_1`,`EffectAuraPeriod_2`,`EffectAuraPeriod_3`,`EffectMultipleValue_1`,`EffectMultipleValue_2`,`EffectMultipleValue_3`,`EffectChainTargets_1`,`EffectChainTargets_2`,`EffectChainTargets_3`,`EffectItemType_1`,`EffectItemType_2`,`EffectItemType_3`,`EffectMiscValue_1`,`EffectMiscValue_2`,`EffectMiscValue_3`,`EffectMiscValueB_1`,`EffectMiscValueB_2`,`EffectMiscValueB_3`,`EffectTriggerSpell_1`,`EffectTriggerSpell_2`,`EffectTriggerSpell_3`,`EffectPointsPerCombo_1`,`EffectPointsPerCombo_2`,`EffectPointsPerCombo_3`,`EffectSpellClassMaskA_1`,`EffectSpellClassMaskA_2`,`EffectSpellClassMaskA_3`,`EffectSpellClassMaskB_1`,`EffectSpellClassMaskB_2`,`EffectSpellClassMaskB_3`,`EffectSpellClassMaskC_1`,`EffectSpellClassMaskC_2`,`EffectSpellClassMaskC_3`,`SpellVisualID_1`,`SpellVisualID_2`,`SpellIconID`,`ActiveIconID`,`SpellPriority`,`Name_Lang_enUS`,`Name_Lang_enGB`,`Name_Lang_koKR`,`Name_Lang_frFR`,`Name_Lang_deDE`,`Name_Lang_enCN`,`Name_Lang_zhCN`,`Name_Lang_enTW`,`Name_Lang_zhTW`,`Name_Lang_esES`,`Name_Lang_esMX`,`Name_Lang_ruRU`,`Name_Lang_ptPT`,`Name_Lang_ptBR`,`Name_Lang_itIT`,`Name_Lang_Unk`,`Name_Lang_Mask`,`NameSubtext_Lang_enUS`,`NameSubtext_Lang_enGB`,`NameSubtext_Lang_koKR`,`NameSubtext_Lang_frFR`,`NameSubtext_Lang_deDE`,`NameSubtext_Lang_enCN`,`NameSubtext_Lang_zhCN`,`NameSubtext_Lang_enTW`,`NameSubtext_Lang_zhTW`,`NameSubtext_Lang_esES`,`NameSubtext_Lang_esMX`,`NameSubtext_Lang_ruRU`,`NameSubtext_Lang_ptPT`,`NameSubtext_Lang_ptBR`,`NameSubtext_Lang_itIT`,`NameSubtext_Lang_Unk`,`NameSubtext_Lang_Mask`,`Description_Lang_enUS`,`Description_Lang_enGB`,`Description_Lang_koKR`,`Description_Lang_frFR`,`Description_Lang_deDE`,`Description_Lang_enCN`,`Description_Lang_zhCN`,`Description_Lang_enTW`,`Description_Lang_zhTW`,`Description_Lang_esES`,`Description_Lang_esMX`,`Description_Lang_ruRU`,`Description_Lang_ptPT`,`Description_Lang_ptBR`,`Description_Lang_itIT`,`Description_Lang_Unk`,`Description_Lang_Mask`,`AuraDescription_Lang_enUS`,`AuraDescription_Lang_enGB`,`AuraDescription_Lang_koKR`,`AuraDescription_Lang_frFR`,`AuraDescription_Lang_deDE`,`AuraDescription_Lang_enCN`,`AuraDescription_Lang_zhCN`,`AuraDescription_Lang_enTW`,`AuraDescription_Lang_zhTW`,`AuraDescription_Lang_esES`,`AuraDescription_Lang_esMX`,`AuraDescription_Lang_ruRU`,`AuraDescription_Lang_ptPT`,`AuraDescription_Lang_ptBR`,`AuraDescription_Lang_itIT`,`AuraDescription_Lang_Unk`,`AuraDescription_Lang_Mask`,`ManaCostPct`,`StartRecoveryCategory`,`StartRecoveryTime`,`MaxTargetLevel`,`SpellClassSet`,`SpellClassMask_1`,`SpellClassMask_2`,`SpellClassMask_3`,`MaxTargets`,`DefenseType`,`PreventionType`,`StanceBarOrder`,`EffectChainAmplitude_1`,`EffectChainAmplitude_2`,`EffectChainAmplitude_3`,`MinFactionID`,`MinReputation`,`RequiredAuraVision`,`RequiredTotemCategoryID_1`,`RequiredTotemCategoryID_2`,`RequiredAreasID`,`SchoolMask`,`RuneCostID`,`SpellMissileID`,`PowerDisplayID`,`EffectBonusMultiplier_1`,`EffectBonusMultiplier_2`,`EffectBonusMultiplier_3`,`SpellDescriptionVariableID`,`SpellDifficultyID`) VALUES
-- Anub'Arak
-- 29105 - Corpse Scarabs (5)
(90001,0,0,0,8388864,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,101,0,0,0,0,21,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,28,0,0,1,0,0,0,0,0,4,0,0,0,0,0,18,0,0,0,0,0,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,351083,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7626,0,1,0,0,'Summon Corpse Scarabs (5)','','','','','','','','','','','','','','','',16712190,'','','','','','','','','','','','','','','','',16712172,'','','','','','','','','','','','','','','','',16712188,'','','','','','','','','','','','','','','','',16712188,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0),
-- 28864 - Corpse Scarabs (10)
(90002,0,0,0,8388864,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,101,0,0,0,0,21,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,28,0,0,1,0,0,0,0,0,9,0,0,0,0,0,18,0,0,0,0,0,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,351083,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7626,0,1,0,0,'Summon Corpse Scarabs (10)','','','','','','','','','','','','','','','',16712190,'','','','','','','','','','','','','','','','',16712172,'','','','','','','','','','','','','','','','',16712188,'','','','','','','','','','','','','','','','',16712188,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0),
-- Trash Construct Quarter
-- 28280 - Spell Bombard Slime - Sewage Slime (10)
(90003,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,101,0,0,0,0,26,0,0,0,0,0,6,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,28,0,0,1,0,0,0,0,0,0,0,0,0,0,0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,351071,0,0,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,68,0,0,"Bombard Slime","","","","","","","","",0,0,0,0,0,0,0,16712190,"","","","","","","","","",0,0,0,0,0,0,0,16712190,"Bombards the area below with a Sewage Slime.","","","","","","","","",0,0,0,0,0,0,0,16712190,"","","","","","","","","",0,0,0,0,0,0,0,16712190,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0),
-- Trash Military Quarter
-- 28383 - Portal of Shadows - Update summon to 351092 Ghost of Naxxramas
(90004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 1, 0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 28, 0, 0, 1, 0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 351092, 0, 0, 64, 0, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3459, 0, 1490, 0, 0, 'Portal of Shadows', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 'Opens a portal into the Twisting Nether that periodically summons demonic minions to aid the caster in battle for $d.', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1.0, 1.0, 1.0, 0, 0),
-- 351024 - Living Monstrosity - Summon Lightning Totem with entry 351091
(90005, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 101, 0, 0, 29, 29, 3, 0, 0, 0, 0, 0, 1, 0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 28, 0, 0, 1, 0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 351091, 0, 0, 61, 0, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 36, 0, 62, 0, 0, 'Lightning Totem', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 'Summons an Lightning Totem that lasts $d and periodically damages nearby enemies.', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0.0, 0.0, 0.0, 0, 0),
-- Loatheb
-- 29234 - Summon Spore - Spore entry to 351066
(90006, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 14, 0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 28, 0, 0, 1, 0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 73, 0, 0, 0, 0, 0, 23, 0, 0, 0, 0, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 351066, 0, 0, 1362, 0, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'Summon Spore', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712188, 'Summons a Spore that lasts for $d.', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712190, '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 16712188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 1.0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0.0, 0.0, 0.0, 0, 0),
-- Maexxna
-- 90007: Summon Web Wrap. custom summon entry: 16486 -> 351079
(90007, 0, 0, 0, 256, 268435456, 0, 268435456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 101, 0, 0, 0, 0, 265, 0, 0, 0, 0, 0, 1, 0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 28, 6, 0, 1, 0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 18, 1, 0, 0, 0, 0, 0, 0, 0, 0, 56, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 351079, 17286, 0, 64, 0, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Summon Web Wrap', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 1.0, 0.0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0.0, 0.0, 0.0, 0, 0);

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

-- Anub'Arak
-- Locust Swarm: Reduce damage ~1500 to ~1000, increase radius 25yd to 30yd
DELETE FROM `spell_script_names` WHERE `spell_id` = 28785;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (28785, 'spell_anub_locust_swarm_aura_40');

-- Kel'Thuzad
-- Dark Blast: Reduce damage ~3.5k to ~2k
DELETE FROM `spell_script_names` WHERE `spell_id` = 28457;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (28457, 'spell_kelthuzad_dark_blast_40');

-- Thaddius
-- Feugen - Static Field: Change to mana drain
DELETE FROM `spell_script_names` WHERE `spell_id` = 28135;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (28135, 'spell_feugen_static_field_40');

-- Razuvious
-- ? Script defines 29107? as target but only 55543 works
-- 29107: Disrupting Shout
DELETE FROM `spell_script_names` WHERE `spell_id` = 29107;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (29107, 'spell_razuvious_disrupting_shout_40');
-- 55543: 10 man version of Disrupting Shout
DELETE FROM `spell_script_names` WHERE `spell_id` = 55543;
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES (55543, 'spell_razuvious_disrupting_shout_40');

-- Generic Spell Submerge
-- relinquery of souls and eye stalk TC: https://github.com/search?q=repo%3ATrinityCore%2FTrinityCore%20spell_reliquary_of_souls_submerge&type=code
DELETE FROM `spell_script_names` WHERE `spell_id` IN (26234, 28819);
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(26234, 'spell_submerge_visual_aura'),
(28819, 'spell_submerge_visual_aura');

-- Update heigan teleport player (unused in core)
UPDATE `spell_target_position` SET `PositionX`=2917.43, `PositionY`=-3769.18, `PositionZ`=273.62, `Orientation`=3.1415 WHERE `ID`=29273;

-- Grobullus
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

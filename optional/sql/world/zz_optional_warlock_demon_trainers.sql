/* 
    These optional changes will restore warlock demon trainers in the Eastern Kingdoms and Kalimdor 
    In WotLK grimoires became absolete, new ranks and spells were now automatically learned on the respective levels.
    Using this file will restore Vanilla and TBC behavior so that grimoires need to be purchased.
*/


/* Label all vanilla warlock demon trainers as vendors  - npcflag was 2, set to 130 */
UPDATE `creature_template` SET `npcflag` = 130 WHERE `entry` IN 
(5520, 5749, 5750, 5753, 5815, 6027, 6328, 6373, 6374, 6376, 6382, 12776, 12807, 15494, 16267, 16649, 23535);


/* Add warlock pet spells to warlock pet trainer vendor inventories */
/* Three versions, because demon trainers sell 20, 46 or 83 grimoires */

/* Demon Trainer with 20 items */
DELETE FROM `npc_vendor` WHERE `entry` = 200001;
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES
(200001, 16302 ,0), (200001, 16316 ,0), (200001, 16317 ,0), (200001, 16318 ,0), (200001, 16319 ,0),
(200001, 16320 ,0), (200001, 16321 ,0), (200001, 16322 ,0), (200001, 16323 ,0), (200001, 16324 ,0),
(200001, 16325 ,0), (200001, 16326 ,0), (200001, 16327 ,0), (200001, 16328 ,0), (200001, 16329 ,0),
(200001, 16330 ,0), (200001, 16331 ,0), (200001, 22179 ,0), (200001, 22180 ,0), (200001, 22181 ,0);

/* Demon Trainer with 46 items */
DELETE FROM `npc_vendor` WHERE `entry` = 200002;
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES 
(200002, 16346 ,0), (200002, 16347 ,0), (200002, 16348 ,0), (200002, 16349 ,0), (200002, 16350 ,0),
(200002, 16351 ,0), (200002, 16352 ,0), (200002, 16353 ,0), (200002, 16354 ,0), (200002, 16355 ,0),
(200002, 16356 ,0), (200002, 16357 ,0), (200002, 16358 ,0), (200002, 16359 ,0), (200002, 16360 ,0),
(200002, 16361 ,0), (200002, 16362 ,0), (200002, 16363 ,0), (200002, 16364 ,0), (200002, 16365 ,0),
(200002, 16366 ,0), (200002, 22182 ,0), (200002, 22183 ,0), (200002, 22184 ,0), (200002, 22185 ,0),
(200002, 28068 ,0);

/* Demon Trainer with 83 items for sale */
DELETE FROM `npc_vendor` WHERE `entry` = 200003;
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES
(200003, 16368 ,0), (200003, 16371 ,0), (200003, 16372 ,0), (200003, 16373 ,0), (200003, 16374 ,0),
(200003, 16375 ,0), (200003, 16376 ,0), (200003, 16377 ,0), (200003, 16378 ,0), (200003, 16379 ,0),
(200003, 16380 ,0), (200003, 16381 ,0), (200003, 16382 ,0), (200003, 16383 ,0), (200003, 16384 ,0),
(200003, 16385 ,0), (200003, 16386 ,0), (200003, 16387 ,0), (200003, 16388 ,0), (200003, 16389 ,0),
(200003, 16390 ,0), (200003, 22186 ,0), (200003, 22187 ,0), (200003, 22188 ,0), (200003, 22189 ,0),
(200003, 22190 ,0), (200003, 23711 ,0), (200003, 23730 ,0), (200003, 23731 ,0), (200003, 23734 ,0),
(200003, 23745 ,0), (200003, 23755 ,0), (200003, 25469 ,0), (200003, 25900 ,0), (200003, 28071 ,0),
(200003, 28072 ,0), (200003, 28073 ,0);

/* Add correct amount of grimoires to Demon Trainers */
DELETE FROM `npc_vendor` WHERE `entry` IN (5520, 5749, 5750, 5753, 5815, 6027, 6328, 6373, 6374, 6376, 6382, 12776, 12807, 15494, 16267, 16649, 23535);
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES 
 (5520, -200001 ,0), (5520, -200002 ,0), (5520, -200003 ,0),
 (5749, -200001 ,0),
 (5750, -200001 ,0), (5750, -200002 ,0),
 (5753, -200001 ,0), (5753, -200002 ,0), (5753, -200003 ,0),
 (5815, -200001 ,0), (5815, -200002 ,0), (5815, -200003 ,0),
 (6027, -200001 ,0), (6027, -200002 ,0),
 (6328, -200001 ,0), (6328, -200002 ,0),
 (6373, -200001 ,0),
 (6374, -200001 ,0), (6374, -200002 ,0),
 (6376, -200001 ,0),
 (6382, -200001 ,0), (6382, -200002 ,0), (6382, -200003 ,0),
(12776, -200001 ,0),
(12807, -200001 ,0), (12807, -200002 ,0), (12807, -200003 ,0),
(15494, -200001 ,0),
(16267, -200001 ,0), (16267, -200002 ,0), (16267, -200003 ,0),
(16649, -200001 ,0), (16649, -200002 ,0), (16649, -200003 ,0),
(23535, -200001 ,0), (23535, -200002 ,0), (23535, -200003 ,0);


-- learn dummy spells after using grimoires
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620270, `spelltrigger_2` = 6 WHERE `entry` = 16302; -- Grimoire of Firebolt (Rank 2)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620312, `spelltrigger_2` = 6 WHERE `entry` = 16316; -- Grimoire of Firebolt (Rank 3)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620313, `spelltrigger_2` = 6 WHERE `entry` = 16317; -- Grimoire of Firebolt (Rank 4)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620314, `spelltrigger_2` = 6 WHERE `entry` = 16318; -- Grimoire of Firebolt (Rank 5)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620315, `spelltrigger_2` = 6 WHERE `entry` = 16319; -- Grimoire of Firebolt (Rank 6)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620316, `spelltrigger_2` = 6 WHERE `entry` = 16320; -- Grimoire of Firebolt (Rank 7)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 627487, `spelltrigger_2` = 6 WHERE `entry` = 22179; -- Grimoire of Firebolt (Rank 8)

UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620397, `spelltrigger_2` = 6 WHERE `entry` = 16321; -- Grimoire of Blood Pact (Rank 1)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620318, `spelltrigger_2` = 6 WHERE `entry` = 16322; -- Grimoire of Blood Pact (Rank 2)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620319, `spelltrigger_2` = 6 WHERE `entry` = 16323; -- Grimoire of Blood Pact (Rank 3)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620320, `spelltrigger_2` = 6 WHERE `entry` = 16324; -- Grimoire of Blood Pact (Rank 4)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620321, `spelltrigger_2` = 6 WHERE `entry` = 16325; -- Grimoire of Blood Pact (Rank 5)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 627488, `spelltrigger_2` = 6 WHERE `entry` = 22180; -- Grimoire of Blood Pact (Rank 6)

UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620322, `spelltrigger_2` = 6 WHERE `entry` = 16326; -- Grimoire of Fire Shield (Rank 1)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620323, `spelltrigger_2` = 6 WHERE `entry` = 16327; -- Grimoire of Fire Shield (Rank 2)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620324, `spelltrigger_2` = 6 WHERE `entry` = 16328; -- Grimoire of Fire Shield (Rank 3)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620326, `spelltrigger_2` = 6 WHERE `entry` = 16329; -- Grimoire of Fire Shield (Rank 4)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620327, `spelltrigger_2` = 6 WHERE `entry` = 16330; -- Grimoire of Fire Shield (Rank 5)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 627489, `spelltrigger_2` = 6 WHERE `entry` = 22181; -- Grimoire of Fire Shield (Rank 6)

UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620329, `spelltrigger_2` = 6 WHERE `entry` = 16331; -- Grimoire of Phase Shift

UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620317, `spelltrigger_2` = 6 WHERE `entry` = 16346; -- Grimoire of Torment (Rank 2)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620377, `spelltrigger_2` = 6 WHERE `entry` = 16347; -- Grimoire of Torment (Rank 3)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620378, `spelltrigger_2` = 6 WHERE `entry` = 16348; -- Grimoire of Torment (Rank 4)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620379, `spelltrigger_2` = 6 WHERE `entry` = 16349; -- Grimoire of Torment (Rank 5)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620380, `spelltrigger_2` = 6 WHERE `entry` = 16350; -- Grimoire of Torment (Rank 6)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 627490, `spelltrigger_2` = 6 WHERE `entry` = 22182; -- Grimoire of Torment (Rank 7)

UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620381, `spelltrigger_2` = 6 WHERE `entry` = 16351; -- Grimoire of Sacrifice (Rank 1)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620382, `spelltrigger_2` = 6 WHERE `entry` = 16352; -- Grimoire of Sacrifice (Rank 2)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620383, `spelltrigger_2` = 6 WHERE `entry` = 16353; -- Grimoire of Sacrifice (Rank 3)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620384, `spelltrigger_2` = 6 WHERE `entry` = 16354; -- Grimoire of Sacrifice (Rank 4)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620385, `spelltrigger_2` = 6 WHERE `entry` = 16355; -- Grimoire of Sacrifice (Rank 5)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620386, `spelltrigger_2` = 6 WHERE `entry` = 16356; -- Grimoire of Sacrifice (Rank 6)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 627492, `spelltrigger_2` = 6 WHERE `entry` = 22185; -- Grimoire of Sacrifice (Rank 7)

UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620387, `spelltrigger_2` = 6 WHERE `entry` = 16357; -- Grimoire of Consume Shadows (Rank 1)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620388, `spelltrigger_2` = 6 WHERE `entry` = 16358; -- Grimoire of Consume Shadows (Rank 2)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620389, `spelltrigger_2` = 6 WHERE `entry` = 16359; -- Grimoire of Consume Shadows (Rank 3)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620390, `spelltrigger_2` = 6 WHERE `entry` = 16360; -- Grimoire of Consume Shadows (Rank 4)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620391, `spelltrigger_2` = 6 WHERE `entry` = 16361; -- Grimoire of Consume Shadows (Rank 5)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620392, `spelltrigger_2` = 6 WHERE `entry` = 16362; -- Grimoire of Consume Shadows (Rank 6)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 627491, `spelltrigger_2` = 6 WHERE `entry` = 22184; -- Grimoire of Consume Shadows (Rank 7)

UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620393, `spelltrigger_2` = 6 WHERE `entry` = 16363; -- Grimoire of Suffering (Rank 1)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620394, `spelltrigger_2` = 6 WHERE `entry` = 16364; -- Grimoire of Suffering (Rank 2)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620395, `spelltrigger_2` = 6 WHERE `entry` = 16365; -- Grimoire of Suffering (Rank 3)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620396, `spelltrigger_2` = 6 WHERE `entry` = 16366; -- Grimoire of Suffering (Rank 4)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 627500, `spelltrigger_2` = 6 WHERE `entry` = 22183; -- Grimoire of Suffering (Rank 5)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 633703, `spelltrigger_2` = 6 WHERE `entry` = 28068; -- Grimoire of Suffering (Rank 6)

UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620398, `spelltrigger_2` = 6 WHERE `entry` = 16368; -- Grimoire of Lash of Pain (Rank 2)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620399, `spelltrigger_2` = 6 WHERE `entry` = 16371; -- Grimoire of Lash of Pain (Rank 3)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620400, `spelltrigger_2` = 6 WHERE `entry` = 16372; -- Grimoire of Lash of Pain (Rank 4)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620401, `spelltrigger_2` = 6 WHERE `entry` = 16373; -- Grimoire of Lash of Pain (Rank 5)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620402, `spelltrigger_2` = 6 WHERE `entry` = 16374; -- Grimoire of Lash of Pain (Rank 6)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 627493, `spelltrigger_2` = 6 WHERE `entry` = 22186; -- Grimoire of Lash of Pain (Rank 7)

UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620403, `spelltrigger_2` = 6 WHERE `entry` = 16375; -- Grimoire of Soothing Kiss (Rank 1)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620404, `spelltrigger_2` = 6 WHERE `entry` = 16376; -- Grimoire of Soothing Kiss (Rank 2)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620405, `spelltrigger_2` = 6 WHERE `entry` = 16377; -- Grimoire of Soothing Kiss (Rank 3)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620406, `spelltrigger_2` = 6 WHERE `entry` = 16378; -- Grimoire of Soothing Kiss (Rank 4)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 627494, `spelltrigger_2` = 6 WHERE `entry` = 22187; -- Grimoire of Soothing Kiss (Rank 5)

UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620426, `spelltrigger_2` = 6 WHERE `entry` = 16381; -- Grimoire of Devour Magic (Rank 2)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620427, `spelltrigger_2` = 6 WHERE `entry` = 16382; -- Grimoire of Devour Magic (Rank 3)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620428, `spelltrigger_2` = 6 WHERE `entry` = 16383; -- Grimoire of Devour Magic (Rank 4)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 627495, `spelltrigger_2` = 6 WHERE `entry` = 22188; -- Grimoire of Devour Magic (Rank 5)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 627496, `spelltrigger_2` = 6 WHERE `entry` = 22189; -- Grimoire of Devour Magic (Rank 6)

UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620429, `spelltrigger_2` = 6 WHERE `entry` = 16384; -- Grimoire of Tainted Blood (Rank 1)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620430, `spelltrigger_2` = 6 WHERE `entry` = 16385; -- Grimoire of Tainted Blood (Rank 2)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620431, `spelltrigger_2` = 6 WHERE `entry` = 16386; -- Grimoire of Tainted Blood (Rank 3)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620432, `spelltrigger_2` = 6 WHERE `entry` = 16387; -- Grimoire of Tainted Blood (Rank 4)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 627497, `spelltrigger_2` = 6 WHERE `entry` = 22190; -- Grimoire of Tainted Blood (Rank 5)

UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620433, `spelltrigger_2` = 6 WHERE `entry` = 16388; -- Grimoire of Spell Lock (Rank 1)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620434, `spelltrigger_2` = 6 WHERE `entry` = 16389; -- Grimoire of Spell Lock (Rank 2)

UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 630154, `spelltrigger_2` = 6 WHERE `entry` = 23711; -- Grimoire of Intercept (Rank 1)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 630199, `spelltrigger_2` = 6 WHERE `entry` = 23730; -- Grimoire of Intercept (Rank 2)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 630200, `spelltrigger_2` = 6 WHERE `entry` = 23731; -- Grimoire of Intercept (Rank 3)

UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 630214, `spelltrigger_2` = 6 WHERE `entry` = 23734; -- Grimoire of Cleave (Rank 1)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 630222, `spelltrigger_2` = 6 WHERE `entry` = 23745; -- Grimoire of Cleave (Rank 2)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 630224, `spelltrigger_2` = 6 WHERE `entry` = 23755; -- Grimoire of Cleave (Rank 3)

UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 633704, `spelltrigger_2` = 6 WHERE `entry` = 28071; -- Grimoire of Anguish (Rank 1)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 633705, `spelltrigger_2` = 6 WHERE `entry` = 28072; -- Grimoire of Anguish (Rank 2)
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 633706, `spelltrigger_2` = 6 WHERE `entry` = 28073; -- Grimoire of Anguish (Rank 3)

UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620407, `spelltrigger_2` = 6 WHERE `entry` = 16379; -- Grimoire of Seduction
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620408, `spelltrigger_2` = 6 WHERE `entry` = 16380; -- Grimoire of Lesser Invisibility
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 620435, `spelltrigger_2` = 6 WHERE `entry` = 16390; -- Grimoire of Paranoia
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 632234, `spelltrigger_2` = 6 WHERE `entry` = 25469; -- Grimoire of Avoidance
UPDATE `item_template` SET `spellid_1` = 483, `spellid_2` = 632852, `spelltrigger_2` = 6 WHERE `entry` = 25900; -- Grimoire of Demonic Frenzy


DELETE FROM `spell_dbc` WHERE `ID` IN (620270);

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

(620270,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
'Firebolt','','','','','','','','',0,0,0,0,0,0,0,0,'Rank 2','','','','','','','','',0,0,0,0,0,0,0,0,'','','','','','','','','',0,0,0,0,0,0,0,0,'','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);



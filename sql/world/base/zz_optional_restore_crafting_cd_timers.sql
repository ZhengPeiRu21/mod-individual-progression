/* This will restore cooldown timers for Vanilla and TBC crafting recipes. */
/* This may require a reset of the item WDB cache files. */


/* Vanilla */

/* Transmute: Iron to Gold */
DELETE FROM `spell_cooldown_overrides` WHERE `Id` = 11479;
INSERT INTO `spell_cooldown_overrides` (`Id`, `RecoveryTime`, `CategoryRecoveryTime`, `StartRecoveryTime`, `StartRecoveryCategory`, `Comment`) 
VALUES (11479, 86400000, 86400000, 0, 0, "Transmute: Iron to Gold - 1 day");

/* Transmute: Mithril to Truesilver */
DELETE FROM `spell_cooldown_overrides` WHERE `Id` = 11480;
INSERT INTO `spell_cooldown_overrides` (`Id`, `RecoveryTime`, `CategoryRecoveryTime`, `StartRecoveryTime`, `StartRecoveryCategory`, `Comment`) 
VALUES (11480, 172800000, 172800000, 0, 0, "Transmute: Mithril to Truesilver - 2 days");

/* Transmute: Arcanite */
DELETE FROM `spell_cooldown_overrides` WHERE `Id` = 17187;
INSERT INTO `spell_cooldown_overrides` (`Id`, `RecoveryTime`, `CategoryRecoveryTime`, `StartRecoveryTime`, `StartRecoveryCategory`, `Comment`) 
VALUES (17187, 172800000, 172800000, 0, 0, "Transmute: Arcanite - 2 days");

/* Transmute: Air to Fire */
DELETE FROM `spell_cooldown_overrides` WHERE `Id` = 17559;
INSERT INTO `spell_cooldown_overrides` (`Id`, `RecoveryTime`, `CategoryRecoveryTime`, `StartRecoveryTime`, `StartRecoveryCategory`, `Comment`) 
VALUES (17559, 86400000, 86400000, 0, 0, "Transmute: Air to Fire - 1 day");

/* Transmute: Fire to Earth */
DELETE FROM `spell_cooldown_overrides` WHERE `Id` = 17560;
INSERT INTO `spell_cooldown_overrides` (`Id`, `RecoveryTime`, `CategoryRecoveryTime`, `StartRecoveryTime`, `StartRecoveryCategory`, `Comment`) 
VALUES (17560, 86400000, 86400000, 0, 0, "Transmute: Fire to Earth - 1 day");

/* Transmute: Earth to Water */
DELETE FROM `spell_cooldown_overrides` WHERE `Id` = 17561;
INSERT INTO `spell_cooldown_overrides` (`Id`, `RecoveryTime`, `CategoryRecoveryTime`, `StartRecoveryTime`, `StartRecoveryCategory`, `Comment`) 
VALUES (17561, 86400000, 86400000, 0, 0, "Transmute: Earth to Water - 1 day");

/* Transmute: Water to Air */
DELETE FROM `spell_cooldown_overrides` WHERE `Id` = 17562;
INSERT INTO `spell_cooldown_overrides` (`Id`, `RecoveryTime`, `CategoryRecoveryTime`, `StartRecoveryTime`, `StartRecoveryCategory`, `Comment`) 
VALUES (17562, 86400000, 86400000, 0, 0, "Transmute: Water to Air - 1 day");

/* Transmute: Undeath to Water */
DELETE FROM `spell_cooldown_overrides` WHERE `Id` = 17563;
INSERT INTO `spell_cooldown_overrides` (`Id`, `RecoveryTime`, `CategoryRecoveryTime`, `StartRecoveryTime`, `StartRecoveryCategory`, `Comment`) 
VALUES (17563, 86400000, 86400000, 0, 0, "Transmute: Undeath to Water - 1 day");

/* Transmute: Water to Undeath */
DELETE FROM `spell_cooldown_overrides` WHERE `Id` = 17564;
INSERT INTO `spell_cooldown_overrides` (`Id`, `RecoveryTime`, `CategoryRecoveryTime`, `StartRecoveryTime`, `StartRecoveryCategory`, `Comment`) 
VALUES (17564, 86400000, 86400000, 0, 0, "Transmute: Water to Undeath - 1 day");

/* Transmute: Life to Earth */
DELETE FROM `spell_cooldown_overrides` WHERE `Id` = 17565;
INSERT INTO `spell_cooldown_overrides` (`Id`, `RecoveryTime`, `CategoryRecoveryTime`, `StartRecoveryTime`, `StartRecoveryCategory`, `Comment`) 
VALUES (17565, 86400000, 86400000, 0, 0, "Transmute: Life to Earth - 1 day");

/* Transmute: Earth to Life */
DELETE FROM `spell_cooldown_overrides` WHERE `Id` = 17566;
INSERT INTO `spell_cooldown_overrides` (`Id`, `RecoveryTime`, `CategoryRecoveryTime`, `StartRecoveryTime`, `StartRecoveryCategory`, `Comment`) 
VALUES (17566, 86400000, 86400000, 0, 0, "Transmute: Earth to Life - 1 day");

/* Transmute: Elemental Fire */
DELETE FROM `spell_cooldown_overrides` WHERE `Id` = 25146;
INSERT INTO `spell_cooldown_overrides` (`Id`, `RecoveryTime`, `CategoryRecoveryTime`, `StartRecoveryTime`, `StartRecoveryCategory`, `Comment`) 
VALUES (25146, 600000, 600000, 0, 0, "Transmute: Elemental Fire - 10 minutes");

/* Mooncloth */
DELETE FROM `spell_cooldown_overrides` WHERE `Id` = 18560;
INSERT INTO `spell_cooldown_overrides` (`Id`, `RecoveryTime`, `CategoryRecoveryTime`, `StartRecoveryTime`, `StartRecoveryCategory`, `Comment`) 
VALUES (18560, 345600000, 345600000, 0, 0, "Mooncloth - 4 days");

/* Salt Shaker (3 days) */
UPDATE `item_template` SET `spellcooldown_1` = 259200000, `spellcategorycooldown_1` = 259200000 WHERE entry = 15846;


/* TBC */

/* Transmute: Primal Air to Fire */
DELETE FROM `spell_cooldown_overrides` WHERE `Id` = 28566;
INSERT INTO `spell_cooldown_overrides` (`Id`, `RecoveryTime`, `CategoryRecoveryTime`, `StartRecoveryTime`, `StartRecoveryCategory`, `Comment`) 
VALUES (28566, 72000000, 72000000, 0, 0, "Transmute: Primal Air to Fire - 20 hours");

/* Transmute: Primal Earth to Water */
DELETE FROM `spell_cooldown_overrides` WHERE `Id` = 28567;
INSERT INTO `spell_cooldown_overrides` (`Id`, `RecoveryTime`, `CategoryRecoveryTime`, `StartRecoveryTime`, `StartRecoveryCategory`, `Comment`) 
VALUES (28567, 72000000, 72000000, 0, 0, "Transmute: Primal Earth to Water - 20 hours");

/* Transmute: Primal Fire to Earth */
DELETE FROM `spell_cooldown_overrides` WHERE `Id` = 28568;
INSERT INTO `spell_cooldown_overrides` (`Id`, `RecoveryTime`, `CategoryRecoveryTime`, `StartRecoveryTime`, `StartRecoveryCategory`, `Comment`) 
VALUES (28568, 72000000, 72000000, 0, 0, "Transmute: Primal Fire to Earth - 20 hours");

/* Transmute: Primal Water to Air */
DELETE FROM `spell_cooldown_overrides` WHERE `Id` = 28569;
INSERT INTO `spell_cooldown_overrides` (`Id`, `RecoveryTime`, `CategoryRecoveryTime`, `StartRecoveryTime`, `StartRecoveryCategory`, `Comment`) 
VALUES (28569, 72000000, 72000000, 0, 0, "Transmute: Primal Water to Air - 20 hours");

/* Transmute: Primal Might */
DELETE FROM `spell_cooldown_overrides` WHERE `Id` = 29688;
INSERT INTO `spell_cooldown_overrides` (`Id`, `RecoveryTime`, `CategoryRecoveryTime`, `StartRecoveryTime`, `StartRecoveryCategory`, `Comment`) 
VALUES (29688, 72000000, 72000000, 0, 0, "Transmute: Primal Might - 20 hours");

/* Transmute: Earthstorm Diamond */
DELETE FROM `spell_cooldown_overrides` WHERE `Id` = 32765;
INSERT INTO `spell_cooldown_overrides` (`Id`, `RecoveryTime`, `CategoryRecoveryTime`, `StartRecoveryTime`, `StartRecoveryCategory`, `Comment`) 
VALUES (32765, 72000000, 72000000, 0, 0, "Transmute: Earthstorm Diamond - 20 hours");

/* Transmute: Skyfire Diamond */
DELETE FROM `spell_cooldown_overrides` WHERE `Id` = 32766;
INSERT INTO `spell_cooldown_overrides` (`Id`, `RecoveryTime`, `CategoryRecoveryTime`, `StartRecoveryTime`, `StartRecoveryCategory`, `Comment`) 
VALUES (32766, 72000000, 72000000, 0, 0, "Transmute: Skyfire Diamond - 20 hours");

/* Primal Mooncloth */
DELETE FROM `spell_cooldown_overrides` WHERE `Id` = 26751;
INSERT INTO `spell_cooldown_overrides` (`Id`, `RecoveryTime`, `CategoryRecoveryTime`, `StartRecoveryTime`, `StartRecoveryCategory`, `Comment`) 
VALUES (26751, 331200000, 331200000, 0, 0, "Primal Mooncloth - 3 days 20 hours");

/* Spellcloth */
DELETE FROM `spell_cooldown_overrides` WHERE `Id` = 31373;
INSERT INTO `spell_cooldown_overrides` (`Id`, `RecoveryTime`, `CategoryRecoveryTime`, `StartRecoveryTime`, `StartRecoveryCategory`, `Comment`) 
VALUES (31373, 331200000, 331200000, 0, 0, "Spellcloth - 3 days 20 hours");

/* Shadowcloth */
DELETE FROM `spell_cooldown_overrides` WHERE `Id` = 36686;
INSERT INTO `spell_cooldown_overrides` (`Id`, `RecoveryTime`, `CategoryRecoveryTime`, `StartRecoveryTime`, `StartRecoveryCategory`, `Comment`) 
VALUES (36686, 331200000, 331200000, 0, 0, "Shadowcloth - 3 days 20 hours");


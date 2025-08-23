/* 
   This will restore cooldown timers for Vanilla and TBC crafting recipes.
   This may require a reset of the item WDB cache files. 
*/


/* Vanilla */

DELETE FROM `spell_cooldown_overrides` WHERE `Id` IN (11479, 11480, 17187, 17559, 17560, 17561, 17562, 17563, 17564, 17565, 17566, 18560, 25146);
INSERT INTO `spell_cooldown_overrides` (`Id`, `RecoveryTime`, `CategoryRecoveryTime`, `StartRecoveryTime`, `StartRecoveryCategory`, `Comment`) VALUES 
(11479, 86400000, 86400000, 0, 0, "Transmute: Iron to Gold - 1 day"),             -- Transmute: Iron to Gold
(11480, 172800000, 172800000, 0, 0, "Transmute: Mithril to Truesilver - 2 days"), -- Transmute: Mithril to Truesilver
(17187, 172800000, 172800000, 0, 0, "Transmute: Arcanite - 2 days"),              -- Transmute: Arcanite
(17559, 86400000, 86400000, 0, 0, "Transmute: Air to Fire - 1 day"),              -- Transmute: Air to Fire
(17560, 86400000, 86400000, 0, 0, "Transmute: Fire to Earth - 1 day"),            -- Transmute: Fire to Earth
(17561, 86400000, 86400000, 0, 0, "Transmute: Earth to Water - 1 day"),           -- Transmute: Earth to Water
(17562, 86400000, 86400000, 0, 0, "Transmute: Water to Air - 1 day"),             -- Transmute: Water to Air
(17563, 86400000, 86400000, 0, 0, "Transmute: Undeath to Water - 1 day"),         -- Transmute: Undeath to Water
(17564, 86400000, 86400000, 0, 0, "Transmute: Water to Undeath - 1 day"),         -- Transmute: Water to Undeath
(17565, 86400000, 86400000, 0, 0, "Transmute: Life to Earth - 1 day"),            -- Transmute: Life to Earth
(17566, 86400000, 86400000, 0, 0, "Transmute: Earth to Life - 1 day"),            -- Transmute: Earth to Life
(25146, 600000, 600000, 0, 0, "Transmute: Elemental Fire - 10 minutes"),          -- Transmute: Elemental Fire
(18560, 345600000, 345600000, 0, 0, "Mooncloth - 4 days");                        -- Mooncloth

/* Salt Shaker (3 days) */
UPDATE `item_template` SET `spellcooldown_1` = 259200000, `spellcategorycooldown_1` = 259200000 WHERE entry = 15846;


/* TBC */

DELETE FROM `spell_cooldown_overrides` WHERE `Id` IN (26751, 28566, 28567, 28568, 28569, 29688, 32765, 32766, 31373, 36686);
INSERT INTO `spell_cooldown_overrides` (`Id`, `RecoveryTime`, `CategoryRecoveryTime`, `StartRecoveryTime`, `StartRecoveryCategory`, `Comment`) VALUES 
(28566, 72000000, 72000000, 0, 0, "Transmute: Primal Air to Fire - 20 hours"),    -- Transmute: Primal Air to Fire
(28567, 72000000, 72000000, 0, 0, "Transmute: Primal Earth to Water - 20 hours"), -- Transmute: Primal Earth to Water
(28568, 72000000, 72000000, 0, 0, "Transmute: Primal Fire to Earth - 20 hours"),  -- Transmute: Primal Fire to Earth
(28569, 72000000, 72000000, 0, 0, "Transmute: Primal Water to Air - 20 hours"),   -- Transmute: Primal Water to Air
(29688, 72000000, 72000000, 0, 0, "Transmute: Primal Might - 20 hours"),          -- Transmute: Primal Might
(32765, 72000000, 72000000, 0, 0, "Transmute: Earthstorm Diamond - 20 hours"),    -- Transmute: Earthstorm Diamond
(32766, 72000000, 72000000, 0, 0, "Transmute: Skyfire Diamond - 20 hours"),       -- Transmute: Skyfire Diamond
(26751, 331200000, 331200000, 0, 0, "Primal Mooncloth - 3 days 20 hours"),        -- Primal Mooncloth
(31373, 331200000, 331200000, 0, 0, "Spellcloth - 3 days 20 hours"),              -- Spellcloth
(36686, 331200000, 331200000, 0, 0, "Shadowcloth - 3 days 20 hours");             -- Shadowcloth

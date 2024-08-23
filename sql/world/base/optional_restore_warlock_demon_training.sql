/* These optional changes will restore warlock demon trainers in the Eastern Kingdoms and Kalimdor */
/* (not yet) This will also disable the automatic learning of spells for warlock demon pets */


/* Label all vanilla warlock demon trainers as vendors  - npcflag was 2, set to 130 */
UPDATE `creature_template` SET `npcflag` = 130 WHERE `entry` IN (5520, 5749, 5750, 5753, 5815, 6027, 6328, 6373, 6374, 6376, 6382, 12776, 12807, 15494, 16267, 16649, 23535);


/* Add warlock pet spells to warlock pet trainer vendor inventories */
/* Three versions, because demon trainers sell 20, 46 or 83 grimoires */

/* Demon Trainer with 20 items */
DELETE FROM `npc_vendor` WHERE `entry` = 200001;
/* Add Grimoire of Firebolt (Rank 2) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200001, 16302 ,0);
/* Add Grimoire of Firebolt (Rank 3) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200001, 16316 ,0);
/* Add Grimoire of Firebolt (Rank 4) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200001, 16317 ,0);
/* Add Grimoire of Firebolt (Rank 5) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200001, 16318 ,0);
/* Add Grimoire of Firebolt (Rank 6) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200001, 16319 ,0);
/* Add Grimoire of Firebolt (Rank 7) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200001, 16320 ,0);
/* Add Grimoire of Blood Pact (Rank 1) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200001, 16321 ,0);
/* Add Grimoire of Blood Pact (Rank 2) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200001, 16322 ,0);
/* Add Grimoire of Blood Pact (Rank 3) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200001, 16323 ,0);
/* Add Grimoire of Blood Pact (Rank 4) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200001, 16324 ,0);
/* Add Grimoire of Blood Pact (Rank 5) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200001, 16325 ,0);
/* Add Grimoire of Fire Shield (Rank 1) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200001, 16326 ,0);
/* Add Grimoire of Fire Shield (Rank 2) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200001, 16327 ,0);
/* Add Grimoire of Fire Shield (Rank 3) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200001, 16328 ,0);
/* Add Grimoire of Fire Shield (Rank 4) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200001, 16329 ,0);
/* Add Grimoire of Fire Shield (Rank 5) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200001, 16330 ,0);
/* Add Grimoire of Phase Shift */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200001, 16331 ,0);
/* Add Grimoire of Firebolt (Rank 8) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200001, 22179 ,0);
/* Add Grimoire of Blood Pact (Rank 6) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200001, 22180 ,0);
/* Add Grimoire of Fire Shield (Rank 6) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200001, 22181 ,0);

/* Demon Trainer with 46 items */
DELETE FROM `npc_vendor` WHERE `entry` = 200002;
/* Add Grimoire of Torment (Rank 2) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200002, 16346 ,0);
/* Add Grimoire of Torment (Rank 3) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200002, 16347 ,0);
/* Add Grimoire of Torment (Rank 4) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200002, 16348 ,0);
/* Add Grimoire of Torment (Rank 5) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200002, 16349 ,0);
/* Add Grimoire of Torment (Rank 6) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200002, 16350 ,0);
/* Add Grimoire of Sacrifice (Rank 1) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200002, 16351 ,0);
/* Add Grimoire of Sacrifice (Rank 2) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200002, 16352 ,0);
/* Add Grimoire of Sacrifice (Rank 3) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200002, 16353 ,0);
/* Add Grimoire of Sacrifice (Rank 4) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200002, 16354 ,0);
/* Add Grimoire of Sacrifice (Rank 5) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200002, 16355 ,0);
/* Add Grimoire of Sacrifice (Rank 6) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200002, 16356 ,0);
/* Add Grimoire of Consume Shadows (Rank 1) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200002, 16357 ,0);
/* Add Grimoire of Consume Shadows (Rank 2) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200002, 16358 ,0);
/* Add Grimoire of Consume Shadows (Rank 3) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200002, 16359 ,0);
/* Add Grimoire of Consume Shadows (Rank 4) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200002, 16360 ,0);
/* Add Grimoire of Consume Shadows (Rank 5) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200002, 16361 ,0);
/* Add Grimoire of Consume Shadows (Rank 6) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200002, 16362 ,0);
/* Add Grimoire of Suffering (Rank 1) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200002, 16363 ,0);
/* Add Grimoire of Suffering (Rank 2) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200002, 16364 ,0);
/* Add Grimoire of Suffering (Rank 3) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200002, 16365 ,0);
/* Add Grimoire of Suffering (Rank 4) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200002, 16366 ,0);
/* Add Grimoire of Torment (Rank 7) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200002, 22182 ,0);
/* Add Grimoire of Suffering (Rank 5) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200002, 22183 ,0);
/* Add Grimoire of Consume Shadows (Rank 7) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200002, 22184 ,0);
/* Add Grimoire of Sacrifice (Rank 7) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200002, 22185 ,0);
/* Add Grimoire of Suffering (Rank 6) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200002, 28068 ,0);

/* Demon Trainer with 83 items for sale */
DELETE FROM `npc_vendor` WHERE `entry` = 200003;
/* Add Grimoire of Lash of Pain (Rank 2) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 16368 ,0);
/* Add Grimoire of Lash of Pain (Rank 3) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 16371 ,0);
/* Add Grimoire of Lash of Pain (Rank 4) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 16372 ,0);
/* Add Grimoire of Lash of Pain (Rank 5) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 16373 ,0);
/* Add Grimoire of Lash of Pain (Rank 6) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 16374 ,0);
/* Add Grimoire of Soothing Kiss (Rank 1) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 16375 ,0);
/* Add Grimoire of Soothing Kiss (Rank 2) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 16376 ,0);
/* Add Grimoire of Soothing Kiss (Rank 3) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 16377 ,0);
/* Add Grimoire of Soothing Kiss (Rank 4) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 16378 ,0);
/* Add Grimoire of Seduction */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 16379 ,0);
/* Add Grimoire of Lesser Invisibility */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 16380 ,0);
/* Add Grimoire of Devour Magic (Rank 2) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 16381 ,0);
/* Add Grimoire of Devour Magic (Rank 3) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 16382 ,0);
/* Add Grimoire of Devour Magic (Rank 4) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 16383 ,0);
/* Add Grimoire of Tainted Blood (Rank 1) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 16384 ,0);
/* Add Grimoire of Tainted Blood (Rank 2) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 16385 ,0);
/* Add Grimoire of Tainted Blood (Rank 3) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 16386 ,0);
/* Add Grimoire of Tainted Blood (Rank 4) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 16387 ,0);
/* Add Grimoire of Spell Lock (Rank 1) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 16388 ,0);
/* Add Grimoire of Spell Lock (Rank 2) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 16389 ,0);
/* Add Grimoire of Paranoia */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 16390 ,0);
/* Add Grimoire of Lash of Pain (Rank 7) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 22186 ,0);
/* Add Grimoire of Soothing Kiss (Rank 5) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 22187 ,0);
/* Add Grimoire of Devour Magic (Rank 5) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 22188 ,0);
/* Add Grimoire of Devour Magic (Rank 6) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 22189 ,0);
/* Add Grimoire of Tainted Blood (Rank 5) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 22190 ,0);
/* Add Grimoire of Intercept (Rank 1) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 23711 ,0);
/* Add Grimoire of Intercept (Rank 2) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 23730 ,0);
/* Add Grimoire of Intercept (Rank 3) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 23731 ,0);
/* Add Grimoire of Cleave (Rank 1) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 23734 ,0);
/* Add Grimoire of Cleave (Rank 2) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 23745 ,0);
/* Add Grimoire of Cleave (Rank 3) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 23755 ,0);
/* Add Grimoire of Avoidance */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 25469 ,0);
/* Add Grimoire of Demonic Frenzy */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 25900 ,0);
/* Add Grimoire of Anguish (Rank 1) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 28071 ,0);
/* Add Grimoire of Anguish (Rank 2) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 28072 ,0);
/* Add Grimoire of Anguish (Rank 3) */
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (200003, 28073 ,0);


/* Add correct amount of grimoires to Demon Trainers */
/* (5520, 5749, 5750, 5753, 5815, 6027, 6328, 6373, 6374, 6376, 6382, 12776, 12807, 15494, 16267, 16649, 23535) */

DELETE FROM `npc_vendor` WHERE `entry` = 5520;
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (5520, -200001 ,0);
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (5520, -200002 ,0);
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (5520, -200003 ,0);
DELETE FROM `npc_vendor` WHERE `entry` = 5749;
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (5749, -200001 ,0);
DELETE FROM `npc_vendor` WHERE `entry` = 5750;
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (5750, -200001 ,0);
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (5750, -200002 ,0);
DELETE FROM `npc_vendor` WHERE `entry` = 5753;
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (5753, -200001 ,0);
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (5753, -200002 ,0);
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (5753, -200003 ,0);
DELETE FROM `npc_vendor` WHERE `entry` = 5815;
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (5815, -200001 ,0);
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (5815, -200002 ,0);
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (5815, -200003 ,0);
DELETE FROM `npc_vendor` WHERE `entry` = 6027;
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (6027, -200001 ,0);
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (6027, -200002 ,0);
DELETE FROM `npc_vendor` WHERE `entry` = 6328;
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (6328, -200001 ,0);
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (6328, -200002 ,0);
DELETE FROM `npc_vendor` WHERE `entry` = 6373;
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (6373, -200001 ,0);
DELETE FROM `npc_vendor` WHERE `entry` = 6374;
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (6374, -200001 ,0);
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (6374, -200002 ,0);
DELETE FROM `npc_vendor` WHERE `entry` = 6376;
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (6376, -200001 ,0);
DELETE FROM `npc_vendor` WHERE `entry` = 6382;
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (6382, -200001 ,0);
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (6382, -200002 ,0);
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (6382, -200003 ,0);
DELETE FROM `npc_vendor` WHERE `entry` = 12776;
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (12776, -200001 ,0);
DELETE FROM `npc_vendor` WHERE `entry` = 12807;
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (12807, -200001 ,0);
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (12807, -200002 ,0);
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (12807, -200003 ,0);
DELETE FROM `npc_vendor` WHERE `entry` = 15494;
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (15494, -200001 ,0);
DELETE FROM `npc_vendor` WHERE `entry` = 16267;
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (16267, -200001 ,0);
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (16267, -200002 ,0);
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (16267, -200003 ,0);
DELETE FROM `npc_vendor` WHERE `entry` = 16649;
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (16649, -200001 ,0);
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (16649, -200002 ,0);
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (16649, -200003 ,0);
DELETE FROM `npc_vendor` WHERE `entry` = 23535;
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (23535, -200001 ,0);
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (23535, -200002 ,0);
INSERT INTO `npc_vendor` (`entry`, `item`, `VerifiedBuild`) VALUES (23535, -200003 ,0);


/* disable automatic learning of warlock pet spells */

/* not yet */

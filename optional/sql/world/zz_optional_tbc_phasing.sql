/*  
    This will phase TBC NPCs & Gobjects placed in TBC areas until they were originally added to the game.
*/

/* Patch 2.3 - Zul Aman */
/* Open world Zul Aman NPCs */
UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc_t4' WHERE `map` = 530 AND `id1` IN (
23559, -- Budd Nedreck, Ghostlands
23560, -- Provisioner Ameenah <Reagents>, Ghostlands
23565, -- Turgore, Ghostlands
23705, -- Catlord Corpse, Ghostlands
23716, -- Hexxer Corpse, Ghostlands
23718, -- Mack, Ghostlands
23724, -- Samir, Ghostlands
23745, -- Garg, Ghostlands
23747, -- Packhorse, Ghostlands
23748, -- Kurzel, Ghostlands
23761, -- Prigmon, Ghostlands
23762, -- Brend, Ghostlands
23764, -- Marge, Ghostlands
23766, -- Morgom, Ghostlands
23858, -- Donna Brascoe, Ghostlands
24851 -- Kiz Coilspanner <Flight Master>, Ghostlands
);
/* Guards as @IPPPHASE 65536 */
UPDATE `creature` SET `phaseMask` = 65536 WHERE `map` = 530 AND `id1` IN (
25145 -- Budd's Bodyguard, Ghostlands
);
/* Open world Zul Aman gobjects, including meeting stone */
UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_tbc_t4' WHERE `map` = 530 AND `id` IN (186251, 186280, 186285, 186286, 186302, 186323);
/* Quest phasing/unlock */
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 19 AND `SourceEntry` = 11130; -- https://www.wowhead.com/tbc/quest=11130 (Oooh, Shinies!)
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(19, 0, 11130, 0, 0, 8, 0, 66011, 0, 0, 0, 0, 0, '', 'Quest: Oooh, Shinies! only available AFTER the player completes the TBC T3');

/* 2.4 - Sunwell */
/* Open world Sunwell NPCs, including quest/daily NPCs to prevent ppl from building up reputation before Sunwell phase */
UPDATE `creature` SET `ScriptName` = 'npc_ipp_tbc_t5' WHERE `ScriptName` != 'npc_suns_reach_reclamation' AND `map` = 530 AND `id1` IN (
19202, -- Emissary Mordin, Shattrath
19475, -- Harbinger Haronem, Shattrath
24813, -- Exarch Larethor, Isle of Quel Danas
24923, -- Shattered Sun Channeler, Shattrath
24937, -- Magistrix Seyla, Hellfire Peninsula
25032, -- Eldara Dawnrunner, Isle of Quel Danas
25034, -- Tradesman Portanuus, Isle of Quel Danas
25088, -- Captain Valindria, Isle of Quel Danas
25133, -- Astromancer Darnarian, Isle of Quel Danas
25140, -- Lord Torvos, Shattrath
25142, -- Shattered Sun Marksman, Shattrath
25153, -- Shattered Sun Magi, Shattrath
25155, -- Shattered Sun Cleric, Shattrath
25167, -- General Tiras'alan, Shattrath
25885, -- Whirligig Wafflefry, Shattrath
26560, -- Ohura, Isle of Quel Danas
27666, -- Ontuvo, Shattrath
27667, -- Anwehu, Shattrath
37527 -- Halduron Brightwing, Isle of Quel Danas
);
/* NPCs with special behaviours as @IPPPHASE 65536 */
UPDATE `creature` SET `phaseMask` = 65536 WHERE `map` = 530 AND `id1` IN (
5202, -- Archery Target, Shattrath & Isle of Quel Danas
24932, -- Exarch Nasuun, Shattrath
24938, -- Shattered Sun Marksman, Shattrath + Isle of Quel Danas
24965, -- Vindicator Xayann, Isle of Quel Danas
24967, -- Captain Theris Dawnhearth, Isle of Quel Danas
24975, -- Mar nah, Isle of Quel Danas
24979, -- Dawnblade Marksman, Isle of Quel Danas
25036, -- Caregiver Inaara, Isle of Quel Danas
25046, -- Smith Hauthaa, Isle of Quel Danas
25057, -- Battlemage Arynna, Isle of Quel Danas
25061, -- Harbinger Inuuro, Isle of Quel Danas
25069, -- Magister Ilastar, Isle of Quel Danas
25108, -- Vindicator Kaalan, Isle of Quel Danas
25112, -- Anchorite Ayuri, Isle of Quel Danas
25115, -- Shattered Sun Warrior, Shattrath + Isle of Quel Danas
25134, -- Shattered Sun Trainee, Shattrath
25135, -- Shattered Sun Trainee, Shattrath
25136, -- Shattered Sun Trainee, Shattrath
25137, -- Shattered Sun Trainee, Shattrath
25138, -- Captain Dranarus, Shattrath
25141, -- Commander Steele, Shattrath
25143 -- Shattered Sun Veteran, Shattrath
);
/* Open world Sunwell gobjects, including meeting stone */
UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_tbc_t5' WHERE `map` = 530 AND `id` IN (187056, 187116, 187345, 187356, 187357, 188171, 188172);
/* Sunwell decorative gobjects in Shattrath */
UPDATE `gameobject` SET `ScriptName` = 'gobject_ipp_tbc_t5' WHERE `map` = 530 AND `id` IN (183318, 187057, 187058) AND `guid` IN (24152, 24154, 24155, 47197, 47198, 47199, 47200, 47201, 47202, 47203);

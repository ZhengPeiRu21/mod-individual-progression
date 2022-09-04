-- Summon Felsteed (Warlock)
DELETE FROM `creature_queststarter` WHERE `id`=4563 AND `quest`=4489;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES (4563, 4489);

/* Replace orc guards with pre-wrathgate abomination guards */
UPDATE `creature` SET `id1`=5624, `equipment_id`=0 WHERE `id1`=36213;

DELETE FROM `gossip_menu_option` WHERE (`MenuID`) IN (2847, 2848, 2849);
INSERT INTO `gossip_menu_option` (`MenuID`, `OptionID`, `OptionIcon`, `OptionText`, `OptionBroadcastTextID`, `OptionType`, `OptionNpcFlag`, `ActionMenuID`, `ActionPoiID`, `BoxCoded`, `BoxMoney`, `BoxText`, `BoxBroadcastTextID`, `VerifiedBuild`) VALUES
(2847, 0, 0, 'Alchemy', 3460, 1, 1, 2834, 336, 0, 0, NULL, 0, 0),
(2847, 1, 0, 'Blacksmithing', 3461, 1, 1, 2835, 337, 0, 0, NULL, 0, 0),
(2847, 2, 0, 'Cooking', 3462, 1, 1, 2836, 338, 0, 0, NULL, 0, 0),
(2847, 3, 0, 'Enchanting', 3463, 1, 1, 2837, 339, 0, 0, NULL, 0, 0),
(2847, 4, 0, 'Engineering', 4976, 1, 1, 2838, 340, 0, 0, NULL, 0, 0),
(2847, 5, 0, 'First Aid', 3464, 1, 1, 2839, 341, 0, 0, NULL, 0, 0),
(2847, 6, 0, 'Fishing', 3465, 1, 1, 2840, 342, 0, 0, NULL, 0, 0),
(2847, 7, 0, 'Herbalism', 3466, 1, 1, 2841, 343, 0, 0, NULL, 0, 0),
(2847, 9, 0, 'Leatherworking', 3467, 1, 1, 2842, 345, 0, 0, NULL, 0, 0),
(2847, 10, 0, 'Mining', 3468, 1, 1, 2843, 347, 0, 0, NULL, 0, 0),
(2847, 11, 0, 'Skinning', 3471, 1, 1, 2844, 346, 0, 0, NULL, 0, 0),
(2847, 12, 0, 'Tailoring', 3469, 1, 1, 2845, 348, 0, 0, NULL, 0, 0),
(2848, 0, 0, 'Mage', 3448, 1, 1, 2821, 331, 0, 0, NULL, 0, 0),
(2848, 2, 0, 'Priest', 3449, 1, 1, 2829, 332, 0, 0, NULL, 0, 0),
(2848, 3, 0, 'Rogue', 4885, 1, 1, 2830, 333, 0, 0, NULL, 0, 0),
(2848, 4, 0, 'Warlock', 4886, 1, 1, 2832, 334, 0, 0, NULL, 0, 0),
(2848, 5, 0, 'Warrior', 2910, 1, 1, 2833, 335, 0, 0, NULL, 0, 0),
(2849, 0, 0, 'The bank', 4888, 1, 1, 2822, 319, 0, 0, NULL, 0, 0),
(2849, 1, 0, 'The bat handler', 6790, 1, 1, 2823, 321, 0, 0, NULL, 0, 0),
(2849, 2, 0, 'The guild master', 3428, 1, 1, 2824, 323, 0, 0, NULL, 0, 0),
(2849, 3, 0, 'The inn', 5090, 1, 1, 2825, 324, 0, 0, NULL, 0, 0),
(2849, 4, 0, 'The mailbox', 5514, 1, 1, 2826, 326, 0, 0, NULL, 0, 0),
(2849, 5, 0, 'The auction house', 5515, 1, 1, 2827, 318, 0, 0, NULL, 0, 0),
(2849, 6, 0, 'The zeppelin master', 5518, 1, 1, 2828, 451, 0, 0, NULL, 0, 0),
(2849, 7, 0, 'The weapon master', 7253, 1, 1, 3726, 328, 0, 0, NULL, 0, 0),
(2849, 8, 0, 'The stable master', 8508, 1, 1, 4906, 327, 0, 0, NULL, 0, 0),
(2849, 9, 0, 'The battlemaster', 10359, 1, 1, 6334, 322, 0, 0, NULL, 0, 0),
(2849, 10, 0, 'A class trainer', 5338, 1, 1, 2848, 0, 0, 0, NULL, 0, 0),
(2849, 11, 0, 'A profession trainer', 6635, 1, 1, 2847, 0, 0, 0, NULL, 0, 0);

/* Restore Varimathras */
UPDATE `creature` SET `id1`=2425, `equipment_id`=0 WHERE `id1`=36273;

/* Wrathgate NPCs - just deleting for now, but maybe can implement a post-Wrathgate world state later */
DELETE FROM `creature` WHERE `guid` IN (43466, 79263);

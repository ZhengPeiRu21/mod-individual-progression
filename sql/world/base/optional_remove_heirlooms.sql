/* Heirloom items are antithetical to Individual Progression, as they are designed to skip progression and speed through content.
   This optional file removes Heirloom vendors with no other purpose, and removes heirlooms from all other vendors so they are not available.
   If you would like heirlooms to still be available, comment out, remove, or just do not run this file. */
DELETE FROM `creature` WHERE `id1` IN (32509, 35507, 35508);
DELETE FROM `creature_addon` WHERE `guid` IN (85227, 88108);
DELETE FROM `npc_vendor` WHERE `item` IN ( 38691, 42943, 42944, 42945, 42946,
42947, 42948, 42949, 42950, 42951, 42952, 42984, 42985, 42991, 42992, 44090,
44091, 44092, 44093, 44094, 44095, 44096, 44097, 44098, 44099, 44100, 44101,
44102, 44103, 44105, 44107, 48677, 48683, 48685, 48687, 48689, 48691, 48716,
48718, 50255);
UPDATE `quest_template` SET `RewardChoiceItemID1` = 0, `RewardChoiceItemQuantity1` = 0, `RewardChoiceItemID2` = 0, `RewardChoiceItemQuantity2` = 0,
`RewardItem1` = 50287, `RewardAmount1` = 1 WHERE `id` = 24803;
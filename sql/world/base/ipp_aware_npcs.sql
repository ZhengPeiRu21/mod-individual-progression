UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_tbc' WHERE `entry` IN (16841, 19254, 16840,
                                                                              20026, 20027, 20053, 20054, 20069, 18542, 20080, 20081, 20082, 21643, 20130,
                                                                              19934, 19936, 19950, 19951, 19959, 22889, 22902, 22835, 22837);

UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_aq' WHERE `entry` IN (15293,15270,15306,15191,15181,15182,15306,15599,15282,15183,15194,15176,15270,16091,15701,15612,15613,15540,15704,15693,15431,15903,15180, 15499);
# Two Cenarion Scouts - 15609 and 15610 - should be in this progression but they have some quest AI that we don't want to override, so leave them for now

# TODO: This is currently override SmartAI for the RP dialog of these NPCs
#  We will need a custom script to hide them and keep the dialog working properly
UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_naxx40' WHERE `entry` IN (11102, 16113, 16112, 16115, 16116, 16131, 16132, 16133, 16134, 16135, 16114, 16376, 16212, 16225, 16228, 16229,
                                                                                 16256, 16283, 16284, 16378);

UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_wotlk' WHERE `entry` IN (28602, 29611, 34084);

UPDATE `gameobject_template` SET `ScriptName` = 'gobject_ipp_tbc' WHERE `entry` IN (195141);

-- Drop source for 2.3 Jewelcrafting Recipe
UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_tbc_t4' WHERE `entry` = 19768;

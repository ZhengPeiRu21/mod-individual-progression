/*
    This will phase out Jewelcrafting Trainers and Vendors in Silvermoon and Exodar until TBC.
*/

/* 2.0+ - NPCs/Gobjects added in Eastern/Kalimdor during TBC pre-patch or more */
UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_tbc' WHERE `entry` IN (
17512, -- Arred, <JC Supplies> Exodar
19778, -- Farri, <JC Trainer> Exodar
16727, -- Padaar <Apprentice JC> Exodar
16624, -- Gelanthis, <JC Supplies> Silvermoon
19775, -- Kalinda, <JC Trainer> Silvermoon
16703  -- Amin <Apprentice JC> Silvermoon

);

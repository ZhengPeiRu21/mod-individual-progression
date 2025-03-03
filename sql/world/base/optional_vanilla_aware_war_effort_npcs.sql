/* Makes related AQ War Effort NPCs visible at progression stage 4 (pre aq stage)
See this GitHub repository for an AzerothCore AQ War Effort event module: https://github.com/azerothcore/mod-war-effort */
UPDATE `creature_template` SET `ScriptName` = 'npc_ipp_aq' WHERE `entry` IN (15383, 15431, 15432, 15434, 15437, 15445, 15446, 
                                                                             15448, 15450, 15451, 15452, 15453, 15455, 15456, 
                                                                             15457, 15700, 15701, 15459, 15460, 15469, 15477, 
                                                                             15508, 15512, 15515, 15522, 15525, 15528, 15529, 
                                                                             15532, 15533, 15534, 15535, 21968, 15738, 15737, 
                                                                             15739, 15736, 15731, 15733, 15735, 15734, 21969, 
                                                                             15810, 15813, 15742, 15741, 15740, 15758, 15818);

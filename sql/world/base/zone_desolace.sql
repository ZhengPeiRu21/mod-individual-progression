-- smart scripts
UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` IN (5402, 5602, 10182, 11787, 14225);
DELETE FROM `smart_scripts` WHERE `source_type` = 0 AND `entryorguid` IN (5402, 5602, 10182, 11787, 14225);
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, 
`event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `event_param6`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES 
--
(5402, 0, 0, 0, 0, 0, 100, 0, 1000, 3000, 30000, 30000, 0, 0, 11, 9128, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,    'Khan Hratha - In Combat - Cast Battle Shout'),
(5402, 0, 1, 0, 9, 0, 100, 0, 7700, 11000, 7000, 11000, 0, 5, 11, 15496, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Khan Hratha - Within 0-5 Range - Cast Cleave'),
--
(5602, 0, 0, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 7165, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                 'Khan Shaka - On Reset - Cast Battle Stance'),
(5602, 0, 1, 0, 9, 0, 100, 0, 3000, 4000, 17000, 23000, 0, 5, 11, 9080, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,    'Khan Shaka - Within 0-5 Range - Cast Hamstring'),
(5602, 0, 2, 0, 2, 0, 100, 1, 0, 15, 0, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,                    'Khan Shaka - Between 0-15% Health - Flee For Assist (No Repeat)'),
--
(10182, 0, 0, 0, 11, 0, 100, 0, 0, 0, 0, 0, 0, 0, 232, 101820, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,             'Rexxar - On Respawn - Waypoint Start'),
(10182, 0, 1, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 8876, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Rexxar - On Reset - Cast Thrash'),
(10182, 0, 2, 0, 25, 0, 100, 0, 0, 0, 0, 0, 0, 0, 11, 21911, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Rexxar - On Reset - Cast Puncture'),
(10182, 0, 3, 0, 9, 0, 100, 0, 7000, 9000, 12000, 16000, 0, 10, 11, 18813, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Rexxar - Within 0-10 Range - Cast Knock Away'),
(10182, 0, 4, 0, 9, 0, 100, 0, 4850, 18250, 4850, 18250, 0, 5, 11, 40504, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Rexxar - Within 0-5 Range - Cast Cleave'),
(10182, 0, 5, 0, 9, 0, 100, 0, 3000, 5000, 8000, 12000, 0, 5, 11, 17963, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,   'Rexxar - Within 0-5 Range - Cast Sundering Cleave'),
(10182, 0, 6, 7, 2, 0, 100, 1, 0, 25, 0, 0, 0, 0, 11, 30485, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,               'Rexxar - Between 0-25% Health - Cast Enrage (No Repeat)'),
(10182, 0, 7, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Rexxar - On Enrage - Say Line 0'),
(10182, 0, 8, 0, 74, 0, 100, 1, 0, 0, 0, 0, 20, 0, 11, 8602, 0, 0, 0, 0, 0, 9, 10204, 0, 0, 0, 0, 0, 0, 0,           'Rexxar - On Misha Between 0-20% Health - Cast Vengeance (No Repeat)'),
(10182, 0, 9, 0, 4, 0, 100, 0, 0, 0, 0, 0, 0, 0, 54, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                    'Rexxar - On Agrro - Waypoint Pause'),
(10182, 0, 10, 0, 1, 0, 100, 0, 0, 0, 0, 0, 0, 0, 65, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                   'Rexxar - OOC - Waypoint Resume'),
--
(11787, 0, 0, 0, 9, 0, 100, 0, 7000, 12000, 7000, 12000, 0, 5, 11, 14120, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0,  'Rock Borer - Within 0-5 Range - Cast Tunneler Acid'),
(14225, 0, 0, 0, 2, 0, 100, 0, 0, 30, 0, 0, 0, 0, 11, 8599, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0,                'Prince Kellen - Between 0-30% Health - Cast Enrage');


/* Restore Rexxar in Desolace. */
UPDATE `creature_template` SET `name` = 'Rexxar', `flags_extra` = 2050 WHERE `entry` = 10182;
UPDATE `creature_template` SET `unit_flags` = 37440 WHERE `entry` IN (10182, 10204);

UPDATE `creature_template_locale` SET `name` = 'Rexxar', `VerifiedBuild` = 11200 WHERE `entry` = 10182 AND `locale` = 'deDE';
UPDATE `creature_template_locale` SET `name` = 'Rexxar', `VerifiedBuild` = 11200 WHERE `entry` = 10182 AND `locale` = 'esES';
UPDATE `creature_template_locale` SET `name` = 'Rexxar', `VerifiedBuild` = 11200 WHERE `entry` = 10182 AND `locale` = 'esMX';
UPDATE `creature_template_locale` SET `name` = 'Rexxar', `VerifiedBuild` = 11200 WHERE `entry` = 10182 AND `locale` = 'frFR';
UPDATE `creature_template_locale` SET `name` = 'Рексар', `VerifiedBuild` = 11200 WHERE `entry` = 10182 AND `locale` = 'ruRU';
UPDATE `creature_template_locale` SET `name` = '렉사르', `VerifiedBuild` = 11200 WHERE `entry` = 10182 AND `locale` = 'koKR';
UPDATE `creature_template_locale` SET `name` = '雷克萨', `VerifiedBuild` = 11200 WHERE `entry` = 10182 AND `locale` = 'zhCN';
UPDATE `creature_template_locale` SET `name` = '雷克薩', `VerifiedBuild` = 11200 WHERE `entry` = 10182 AND `locale` = 'zhTW';

UPDATE `quest_template` SET 
`LogDescription` = 'Seek out Rexxar. The Warchief has instructed you as to his whereabouts. Search the paths of Desolace, between the Stonetalon Mountains and Feralas.',
`QuestDescription` = 'I have received word from one of my champions that a way into the lair of the dragon may exist. You are to seek him out.$B$B
Rexxar wanders the desert wasteland of Desolace, traveling between Stonetalon and Feralas. He awaits your arrival.', `VerifiedBuild` = 11200
WHERE `ID` = 6567;
UPDATE `quest_template_locale` SET
`Details` = 'L''un de mes champions m''a envoyé un mot pour dire qu''il existait peut-être un chemin dans la tanière du dragon. Vous devez le rejoindre. Rexxar se trouve sur la terre déserte de Désolace, entre les Serres-Rocheuses et Feralas. Il attend votre venue.',
`Objectives` = 'Chercher Rexxar. Le Chef de guerre vous a dit où il était. Chercher sur les chemins de Désolace, entre les Serres-Rocheuses et Feralas.', `CompletedText` = 'Trouvez Rexxar en Désolace.', `VerifiedBuild` = 11200
WHERE `ID` = 6567 AND `locale` = 'frFR';

UPDATE `quest_template` SET
`LogTitle` = 'The Testament of Rexxar', `LogDescription` = 'Deliver Rexxar''s Testament to Myranda the Hag in the Western Plaguelands.',
`QuestDescription` = 'What do you know of illusions? For you see, it is an illusion that you must create in order to circumvent the Black Flight''s defenses. I know of one that may be willing to assist you in your quest of deception. She has assisted our kind in the past when she has deemed the cause worthy. In the Western Plaguelands you will find Myranda the Hag, master illusionist - an exile of the Lordaeron alliance. Travel there and take with you this message.', `VerifiedBuild` = 11200
WHERE `ID` = 6568;
UPDATE `quest_template_locale` SET
`Details` = 'Que connaissez-vous des illusions? Parce que c''est une illusion que vous devez créer pour circonvenir les défenses du Vol noir. Je connais une personne qui acceptera de vous aider dans votre recherche de l''art de la tromperie. Elle a aidé les nôtres dans le passé, quand elle jugeait que la cause en était digne. Dans les Maleterres de l''ouest, vous trouverez Myranda la Sorcière, un Maître Illusionniste, exilée de l''Alliance de Lordaeron. Allez là-bas et prenez avec vous ce message.',
`Title` = 'Le testament de Rexxar', `Objectives` = 'Apporter le Testament de Rexxar à Myranda la Mégère, dans les Maleterres de l''ouest.', `VerifiedBuild` = 11200
WHERE `ID` = 6568 AND `locale` = 'frFR';
UPDATE `item_template` SET `name` = 'Rexxar''s Testament', `VerifiedBuild` = '11200' WHERE `entry` = '16785';
UPDATE `item_template_locale` SET `Name` = 'Rexxars Testament', `VerifiedBuild` = '11200' WHERE `ID` = '16785' AND `locale` = 'deDE';
UPDATE `item_template_locale` SET `Name` = 'Testamento de Rexxar', `VerifiedBuild` = '11200' WHERE `ID` = '16785' AND `locale` = 'esES';
UPDATE `item_template_locale` SET `Name` = 'Testamento de Rexxar', `VerifiedBuild` = '11200' WHERE `ID` = '16785' AND `locale` = 'esMX';
UPDATE `item_template_locale` SET `Name` = 'Testament de Rexxar', `VerifiedBuild` = '11200' WHERE `ID` = '16785' AND `locale` = 'frFR';
UPDATE `item_template_locale` SET `Name` = '렉사르의 유서', `VerifiedBuild` = '11200' WHERE `ID` = '16785' AND `locale` = 'koKR';
UPDATE `item_template_locale` SET `Name` = 'Письмо Рексара', `VerifiedBuild` = '11200' WHERE `ID` = '16785' AND `locale` = 'ruRU';
UPDATE `item_template_locale` SET `Name` = '雷克萨的证明', `VerifiedBuild` = '11200' WHERE `ID` = '16785' AND `locale` = 'zhCN';
UPDATE `item_template_locale` SET `Name` = '雷克薩的證明', `VerifiedBuild` = '11200' WHERE `ID` = '16785' AND `locale` = 'zhTW';

UPDATE `quest_template` SET 
`LogDescription` = 'It would appear as if the charade is over. 
You know that the Amulet of Draconic Subversion that Myranda the Hag created for you will not function inside Blackrock Spire. 
Perhaps you should find Rexxar and explain your predicament. Show him the Dull Drakefire Amulet. Hopefully he will know what to do next.', `VerifiedBuild` = 11200
WHERE `ID` = 6601;
UPDATE `quest_template_locale` SET
`Details` = 'Un médaillon a été façonné à partir des crânes de nos ennemis. Vous connaissez ce médaillon, n''est-ce pas ? Vous l''avez sûrement vu porté par vos aînés. Prenez cela. Retournez au Pic et présentez-le au général Drakkisath. Il y placera l''enchantement final pour mettre ce bibelot en phase avec votre esprit. Vous porterez ce médaillon avec honneur, en signe de votre accession à l''un de nos rangs les plus fermés : Gardien de la mère des couvées. Allez !',
`Objectives` = 'Il semble que la comédie soit finie. Vous savez que l''Amulette de subversion draconique, créée par Myranda la Mégère, ne fonctionnera pas à l''intérieur du pic Blackrock. Peut-être devriez-vous trouver Rexxar et lui exposer votre fâcheuse situation. Montrez-lui l''Amulette drakefeu terne. Avec un peu de chance, il saura quoi faire.', `VerifiedBuild` = 11200
WHERE `ID` = 6601 AND `locale` = 'frFR';

UPDATE `quest_template` SET 
`LogDescription` = 'Travel to Blackrock Spire and slay General Drakkisath. Gather his blood and return it to Rexxar.',
`QuestCompletionLog` = 'Return to Rexxar in Desolace.', `VerifiedBuild` = 11200
WHERE `ID` = 6602;
UPDATE `quest_template_locale` SET
`Details` = 'Vous irez rendre visite au général, mais pas en tant que dragon noir. Vous voyez, une cérémonie n''est qu''un autre terme pour permettre de verser du sang au Vol noir. L''amulette inachevée a simplement besoin du sang du général pour s''activer. Un de leurs mécanismes à sûreté intégrée. Retournez au pic Blackrock et détruisez Drakkisath. Rapportez son sang ici et j''activerai la clé du repaire d''Onyxia.',
`Objectives` = 'Aller au Pic Rochenoire, et tuer le général Drakkisath. Récupérer son sang et l''apporter à Rexxar.', `VerifiedBuild` = 11200
WHERE `ID` = 6602 AND `locale` = 'frFR';

UPDATE `npc_text` SET `text0_0` = 'Well met, $c. I am Rexxar.' WHERE `ID` = 6533;
UPDATE `broadcast_text` SET `MaleText` = 'Well met, $c. I am Rexxar.' WHERE `ID` = 9013;

UPDATE `npc_text_locale` SET `text0_0` = 'Seid gegrüßt, $C. Ich bin Rexxar.' WHERE `ID` = 6533 AND `Locale` = 'deDE';
UPDATE `npc_text_locale` SET `text0_0` = 'Salutations, $C. Je suis Rexxar.' WHERE `ID` = 6533 AND `Locale` = 'frFR';

UPDATE `broadcast_text_locale` SET `MaleText` = 'Seid gegrüßt, $C. Ich bin Rexxar.' WHERE `ID` = 9013 AND `locale` = 'deDE';
UPDATE `broadcast_text_locale` SET `MaleText` = 'Bien hecho, $c. Soy Rexxar.' WHERE `ID` = 9013 AND `locale` = 'esES';
UPDATE `broadcast_text_locale` SET `MaleText` = 'Bien hecho, $c. Soy Rexxar.' WHERE `ID` = 9013 AND `locale` = 'esMX';
UPDATE `broadcast_text_locale` SET `MaleText` = 'Salutations, $c. Je suis Rexxar.' WHERE `ID` = 9013 AND `locale` = 'frFR';

UPDATE `creature_template_model` SET `CreatureDisplayID` = 11660 WHERE `CreatureID` = 10182;

DELETE FROM `creature` WHERE `guid` IN (29113, 610204);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, 
`currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
(29113, 10182, 0, 0, 1, 0, 0, 1, 1, 1, 248.28, 1834.76, 86.2291, 3.32486, 550, 0, 0, 647400, 0, 0, 0, 0, 0, '', 0, 0, NULL),
(610204, 10204, 0, 0, 1, 0, 0, 1, 1, 0, 247.329, 1830.72, 86.2303, 3.36506, 550, 0, 0, 161850, 0, 0, 0, 0, 0, '', 0, 0, NULL);

DELETE FROM `creature_addon` WHERE `guid` = 29113;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `bytes1`, `bytes2`, `emote`, `visibilityDistanceType`, `auras`) VALUES 
(29113, 101820, 0, 0, 0, 0, 0, NULL);

DELETE FROM `creature_formations` WHERE `leaderGUID` = 29113;
INSERT INTO `creature_formations` (`leaderGUID`, `memberGUID`, `dist`, `angle`, `groupAI`, `point_1`, `point_2`) VALUES 
(29113, 29113, 0, 0, 519, 0, 0),
(29113, 610204, 4, 90, 519, 0, 0);

DELETE FROM `creature_text` WHERE `CreatureID` IN (10182);
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES 
(10182, 0, 0, '$s becomes enraged!', 16, 0, 100, 0, 0, 0, 24144, 0, 'Rexxar enrage at 30%');

DELETE FROM `waypoint_data` WHERE `id` = 101820;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`, `move_type`, `action`, `action_chance`, `wpguid`) VALUES 
(101820, 1, 241.215, 1833.28, 86.2291, 3.35878, 0, 0, 0, 100, 0),
(101820, 2, 224.89, 1826.93, 86.2299, 3.56298, 0, 0, 0, 100, 0),
(101820, 3, 210.148, 1817.78, 86.2299, 3.56298, 0, 0, 0, 100, 0),
(101820, 4, 183.043, 1806.97, 86.2299, 3.55119, 0, 0, 0, 100, 0),
(101820, 5, 137.37, 1790.74, 86.2299, 3.56298, 0, 0, 0, 100, 0),
(101820, 6, 104.424, 1767.25, 86.2299, 3.7609, 0, 0, 0, 100, 0),
(101820, 7, 67.7938, 1719.69, 88.2168, 3.99259, 0, 0, 0, 100, 0),
(101820, 8, 52.2092, 1707.69, 90.1321, 4.19051, 0, 0, 0, 100, 0),
(101820, 9, 45.3468, 1670.32, 95.462, 4.53844, 0, 0, 0, 100, 0),
(101820, 10, 40.8037, 1644.46, 99.0891, 4.53844, 0, 0, 0, 100, 0),
(101820, 11, 29.9817, 1622.95, 100.642, 4.24627, 0, 0, 0, 100, 0),
(101820, 12, 9.8247, 1594.34, 102.541, 4.09862, 0, 0, 0, 100, 0),
(101820, 13, -0.014937, 1568.88, 102.326, 4.34366, 0, 0, 0, 100, 0),
(101820, 14, -19.9628, 1533.74, 101.365, 4.19601, 0, 0, 0, 100, 0),
(101820, 15, -29.7092, 1516.58, 100.558, 3.80331, 0, 0, 0, 100, 0),
(101820, 16, -55.61, 1496.4, 99.6822, 3.80331, 0, 0, 0, 100, 0),
(101820, 17, -79.55, 1485.81, 99.2673, 3.55827, 0, 0, 0, 100, 0),
(101820, 18, -95.2674, 1467.56, 99.2042, 4.00123, 0, 0, 0, 100, 0),
(101820, 19, -109.289, 1445.37, 98.4824, 4.14888, 0, 0, 0, 100, 0),
(101820, 20, -130.801, 1430.39, 98.4183, 3.7499, 0, 0, 0, 100, 0),
(101820, 21, -158.563, 1424.31, 96.7104, 3.3572, 0, 0, 0, 100, 0),
(101820, 22, -186.664, 1419.62, 95.8805, 3.30694, 0, 0, 0, 100, 0),
(101820, 23, -212.556, 1415.3, 95.5048, 3.30694, 0, 0, 0, 100, 0),
(101820, 24, -232.616, 1409.84, 95.735, 3.40747, 0, 0, 0, 100, 0),
(101820, 25, -256.863, 1403.24, 95.6368, 3.40747, 0, 0, 0, 100, 0),
(101820, 26, -292.3, 1401.21, 95.1336, 3.45695, 0, 0, 0, 100, 0),
(101820, 27, -329.16, 1386.57, 95.8111, 3.45695, 0, 0, 0, 100, 0),
(101820, 28, -358.41, 1387.16, 96.0732, 2.97, 0, 0, 0, 100, 0),
(101820, 29, -395.205, 1401.28, 97.8349, 2.77522, 0, 0, 0, 100, 0),
(101820, 30, -406.446, 1405.59, 97.5606, 2.77522, 0, 0, 0, 100, 0),
(101820, 31, -458.535, 1418.15, 93.5802, 2.82549, 0, 0, 0, 100, 0),
(101820, 32, -506.078, 1437.08, 89.7523, 2.67783, 0, 0, 0, 100, 0),
(101820, 33, -519.162, 1436.7, 89.0663, 3.17106, 0, 0, 0, 100, 0),
(101820, 34, -520.944, 1410.51, 89.0815, 4.64447, 0, 0, 0, 100, 0),
(101820, 35, -524.212, 1362.46, 89.1612, 4.64447, 0, 0, 0, 100, 0),
(101820, 36, -538.219, 1313.7, 89.1342, 4.26434, 0, 0, 0, 100, 0),
(101820, 37, -550.076, 1289.03, 89.1594, 4.26434, 0, 0, 0, 100, 0),
(101820, 38, -592.404, 1278.6, 89.1192, 3.23704, 0, 0, 0, 100, 0),
(101820, 39, -627.44, 1266.19, 89.1691, 3.48208, 0, 0, 0, 100, 0),
(101820, 40, -672.005, 1245.15, 89.1695, 3.58261, 0, 0, 0, 100, 0),
(101820, 41, -702.005, 1225.12, 89.9948, 3.73027, 0, 0, 0, 100, 0),
(101820, 42, -728.282, 1214.3, 92.1814, 3.53235, 0, 0, 0, 100, 0),
(101820, 43, -752.682, 1199.72, 96.7729, 3.68, 0, 0, 0, 100, 0),
(101820, 44, -776.074, 1185.75, 98.1982, 3.68, 0, 0, 0, 100, 0),
(101820, 45, -806.147, 1179.78, 99.5781, 3.33757, 0, 0, 0, 100, 0),
(101820, 46, -833.726, 1186.64, 99.6656, 2.89774, 0, 0, 0, 100, 0),
(101820, 47, -864.349, 1188.15, 98.5124, 3.09252, 0, 0, 0, 100, 0),
(101820, 48, -906.916, 1187.76, 95.0718, 3.20326, 0, 0, 0, 100, 0),
(101820, 49, -936.33, 1185.95, 91.3467, 3.20326, 0, 0, 0, 100, 0),
(101820, 50, -959.518, 1184.59, 89.7418, 3.00849, 0, 0, 0, 100, 0),
(101820, 51, -989.002, 1182.77, 89.7397, 3.20326, 0, 0, 0, 100, 0),
(101820, 52, -1014.08, 1181.22, 89.7765, 3.20326, 0, 0, 0, 100, 0),
(101820, 53, -1051.97, 1186.29, 89.7582, 3.00849, 0, 0, 0, 100, 0),
(101820, 54, -1083.4, 1190.5, 89.7402, 3.00849, 0, 0, 0, 100, 0),
(101820, 55, -1119.33, 1191.9, 89.7428, 3.00849, 0, 0, 0, 100, 0),
(101820, 56, -1163.8, 1197.86, 93.5461, 3.00849, 0, 0, 0, 100, 0),
(101820, 57, -1188.56, 1211.29, 97.3248, 2.84905, 0, 0, 0, 100, 0),
(101820, 58, -1230.02, 1213.26, 104.96, 3.09409, 0, 0, 0, 100, 0),
(101820, 59, -1265.03, 1222.28, 108.323, 2.65113, 0, 0, 0, 100, 0),
(101820, 60, -1291.32, 1233.08, 109.192, 2.75166, 0, 0, 0, 100, 0),
(101820, 61, -1326.27, 1234.63, 110.405, 3.09724, 0, 0, 0, 100, 0),
(101820, 62, -1371.42, 1221.6, 111.432, 3.43967, 0, 0, 0, 100, 0),
(101820, 63, -1399.66, 1212.93, 111.743, 3.43967, 0, 0, 0, 100, 0),
(101820, 64, -1426.19, 1200.25, 111.836, 3.58733, 0, 0, 0, 100, 0),
(101820, 65, -1459.57, 1187.99, 110.993, 3.09488, 0, 0, 0, 100, 0),
(101820, 66, -1484.67, 1189.16, 107.674, 3.09488, 0, 0, 0, 100, 0),
(101820, 67, -1505.57, 1200.81, 100.414, 2.5396, 0, 0, 0, 100, 0),
(101820, 68, -1515.09, 1219.29, 92.4568, 2.04637, 0, 0, 0, 100, 0),
(101820, 69, -1520.77, 1243.84, 83.2385, 1.79819, 0, 0, 0, 100, 0),
(101820, 70, -1514.13, 1274.62, 71.6966, 1.3081, 0, 0, 0, 100, 0),
(101820, 71, -1509.82, 1317.63, 61.7577, 1.60969, 0, 0, 0, 100, 0),
(101820, 72, -1495.44, 1358.66, 58.9251, 1.32459, 0, 0, 0, 100, 0),
(101820, 73, -1486.98, 1382.32, 58.9256, 1.2272, 0, 0, 0, 100, 0),
(101820, 74, -1483.96, 1402.89, 58.9343, 1.42512, 0, 0, 0, 100, 0),
(101820, 75, -1484.01, 1428.08, 58.9657, 1.57278, 0, 0, 0, 100, 0),
(101820, 76, -1486.5, 1453.09, 58.925, 1.67017, 0, 0, 0, 100, 0),
(101820, 77, -1479, 1483.35, 58.925, 1.08269, 0, 0, 0, 100, 0),
(101820, 78, -1457.95, 1522.98, 58.9256, 1.08269, 0, 0, 0, 100, 0),
(101820, 79, -1441.04, 1564.38, 58.9256, 1.22013, 0, 0, 0, 100, 0),
(101820, 80, -1446.26, 1602.8, 58.9256, 1.76363, 0, 0, 0, 100, 0),
(101820, 81, -1457.84, 1631.19, 58.9256, 1.95841, 0, 0, 0, 100, 0),
(101820, 82, -1487.28, 1653.76, 58.9256, 2.4485, 0, 0, 0, 100, 0),
(101820, 83, -1524.68, 1676.46, 58.9256, 2.59615, 0, 0, 0, 100, 0),
(101820, 84, -1541.49, 1695.24, 58.9256, 2.30084, 0, 0, 0, 100, 0),
(101820, 85, -1564.08, 1720.48, 58.9256, 2.30084, 0, 0, 0, 100, 0),
(101820, 86, -1588.47, 1740.74, 58.9256, 2.4485, 0, 0, 0, 100, 0),
(101820, 87, -1626.71, 1780.94, 58.9253, 2.22702, 0, 0, 0, 100, 0),
(101820, 88, -1645.96, 1811.5, 58.9253, 2.13277, 0, 0, 0, 100, 0),
(101820, 89, -1666.62, 1835.56, 58.9253, 2.28042, 0, 0, 0, 100, 0),
(101820, 90, -1679.27, 1861.01, 58.9271, 2.03224, 0, 0, 0, 100, 0),
(101820, 91, -1684.61, 1892.26, 60.0011, 1.74007, 0, 0, 0, 100, 0),
(101820, 92, -1707.1, 1911.1, 60.8523, 2.62286, 0, 0, 0, 100, 0),
(101820, 93, -1750.86, 1921.04, 59.0036, 2.91817, 0, 0, 0, 100, 0),
(101820, 94, -1785.63, 1933.4, 60.1213, 2.65898, 0, 0, 0, 100, 0),
(101820, 95, -1802.62, 1951.91, 60.7252, 2.31341, 0, 0, 0, 100, 0),
(101820, 96, -1813.63, 1992.26, 59.128, 1.6254, 0, 0, 0, 100, 0),
(101820, 97, -1821.44, 2034.65, 60.7539, 1.42669, 0, 0, 0, 100, 0),
(101820, 98, -1809.89, 2069.86, 63.0876, 1.29396, 0, 0, 0, 100, 0),
(101820, 99, -1806.58, 2088.11, 63.1139, 1.39135, 0, 0, 0, 100, 0),
(101820, 100, -1802.08, 2112.91, 63.6797, 1.39135, 0, 0, 0, 100, 0),
(101820, 101, -1800.14, 2138.91, 63.06, 1.43848, 0, 0, 0, 100, 0),
(101820, 102, -1795.57, 2168.05, 60.2047, 1.38821, 0, 0, 0, 100, 0),
(101820, 103, -1797.6, 2197.51, 59.8227, 1.93877, 0, 0, 0, 100, 0),
(101820, 104, -1823.98, 2228.18, 59.823, 2.28121, 0, 0, 0, 100, 0),
(101820, 105, -1841.75, 2261.38, 59.8216, 1.99846, 0, 0, 0, 100, 0),
(101820, 106, -1847.32, 2291.53, 59.8216, 1.75342, 0, 0, 0, 100, 0),
(101820, 107, -1876.09, 2333.54, 59.8216, 1.95291, 0, 0, 0, 100, 0),
(101820, 108, -1885.85, 2357.83, 59.954, 1.95291, 0, 0, 0, 100, 0),
(101820, 109, -1894.41, 2379.14, 59.945, 1.95291, 0, 0, 0, 100, 0),
(101820, 110, -1903.78, 2402.45, 59.822, 1.2649, 0, 0, 0, 100, 0),
(101820, 111, -1899.15, 2435.96, 59.822, 2.42965, 0, 0, 0, 100, 0),
(101820, 112, -1938.9, 2448.24, 59.8217, 3.06739, 0, 0, 0, 100, 0),
(101820, 113, -1973.81, 2450.83, 59.8468, 3.06739, 0, 0, 0, 100, 0),
(101820, 114, -2000.17, 2443.49, 59.8408, 3.41297, 0, 0, 0, 100, 0),
(101820, 115, -2027.08, 2424.89, 59.8216, 3.84179, 0, 0, 0, 100, 0),
(101820, 116, -2047.95, 2407.3, 59.8216, 3.84179, 0, 0, 0, 100, 0),
(101820, 117, -2069.69, 2388.99, 59.8216, 3.84179, 0, 0, 0, 100, 0),
(101820, 118, -2097.25, 2365.76, 59.8276, 3.84179, 0, 0, 0, 100, 0),
(101820, 119, -2113.15, 2352.36, 60.214, 2.81135, 0, 0, 0, 100, 0),
(101820, 120, -2145.2, 2363.35, 58.5854, 2.81135, 0, 0, 0, 100, 0),
(101820, 121, -2170.39, 2373.7, 57.0907, 2.47913, 0, 0, 0, 100, 0),
(101820, 122, -2191.92, 2390.49, 55.4938, 2.47913, 0, 0, 0, 100, 0),
(101820, 123, -2224.06, 2407.6, 53.5184, 2.48227, 0, 0, 0, 100, 0),
(101820, 124, -2236, 2406.05, 54.7644, 3.58576, 0, 0, 0, 100, 0),
(101820, 125, -2266.54, 2394.6, 67.0648, 3.38784, 0, 0, 0, 100, 0),
(101820, 126, -2288.9, 2390.14, 76.956, 3.53549, 0, 0, 0, 100, 0),
(101820, 127, -2307.13, 2382.56, 85.4372, 3.53549, 0, 0, 0, 100, 0),
(101820, 128, -2325.94, 2377.32, 91.9665, 3.29045, 0, 0, 0, 100, 0),
(101820, 129, -2346.5, 2374.24, 99.8199, 3.29045, 0, 0, 0, 100, 0),
(101820, 130, -2355.61, 2370.45, 103.195, 3.53549, 0, 0, 0, 100, 0),
(101820, 131, -2373.45, 2365.63, 107.153, 3.29045, 0, 0, 0, 100, 0),
(101820, 132, -2390.76, 2363.03, 109.042, 3.29045, 0, 0, 0, 100, 0),
(101820, 133, -2412.95, 2357.31, 108.904, 3.48837, 0, 0, 0, 100, 0),
(101820, 134, -2427.94, 2348.29, 111.944, 3.68315, 0, 0, 0, 100, 0),
(101820, 135, -2438.29, 2335.59, 114.24, 4.02872, 0, 0, 0, 100, 0),
(101820, 136, -2456.26, 2325.46, 116.851, 3.53863, 0, 0, 0, 100, 0),
(101820, 137, -2475.37, 2317.45, 116.717, 3.53863, 0, 0, 0, 100, 0),
(101820, 138, -2491, 2291.15, 115.638, 4.17637, 0, 0, 0, 100, 0),
(101820, 139, -2500.26, 2283.46, 114.307, 3.83394, 0, 0, 0, 100, 0),
(101820, 140, -2515.55, 2273.01, 109.951, 3.44124, 0, 0, 0, 100, 0),
(101820, 141, -2531.2, 2268.18, 106.8, 3.44124, 0, 0, 0, 100, 0),
(101820, 142, -2548.52, 2258.84, 102.669, 3.63602, 0, 0, 0, 100, 0),
(101820, 143, -2563.3, 2255.08, 98.2992, 3.39098, 0, 0, 0, 100, 0),
(101820, 144, -2585.01, 2255.92, 91.5307, 3.18285, 0, 0, 0, 100, 0),
(101820, 145, -2618.49, 2268.37, 85.3292, 2.64249, 0, 0, 0, 100, 0),
(101820, 146, -2654.47, 2292.88, 80.3972, 2.53018, 0, 0, 0, 100, 0),
(101820, 147, -2670.52, 2304.13, 77.7898, 2.53018, 0, 0, 0, 100, 0),
(101820, 148, -2686.62, 2315.42, 74.7136, 2.53018, 0, 0, 0, 100, 0),
(101820, 149, -2705.32, 2321.54, 69.9211, 2.82549, 0, 0, 0, 100, 0),
(101820, 150, -2733.73, 2320.79, 62.7231, 3.16792, 0, 0, 0, 100, 0),
(101820, 151, -2754.51, 2320.24, 59.626, 3.16792, 0, 0, 0, 100, 0),
(101820, 152, -2777.53, 2319.64, 54.6887, 3.56062, 0, 0, 0, 100, 0),
(101820, 153, -2799.37, 2307.32, 52.4355, 3.75854, 0, 0, 0, 100, 0),
(101820, 154, -2823.53, 2290.19, 50.5407, 3.75854, 0, 0, 0, 100, 0),
(101820, 155, -2849.64, 2265.96, 48.4764, 3.75854, 0, 0, 0, 100, 0),
(101820, 156, -2882.87, 2254.05, 46.8388, 3.10431, 0, 0, 0, 100, 0),
(101820, 157, -2908.97, 2251.24, 46.3352, 3.24882, 0, 0, 0, 100, 0),
(101820, 158, -2931.2, 2254.27, 46.0007, 3.24882, 0, 0, 0, 100, 0),
(101820, 159, -2955.17, 2246.72, 44.4996, 3.44674, 0, 0, 0, 100, 0),
(101820, 160, -2981.28, 2238.5, 43.4726, 3.44674, 0, 0, 0, 100, 0),
(101820, 161, -3004.09, 2231.02, 44.5395, 3.45852, 0, 0, 0, 100, 0),
(101820, 162, -3026.97, 2223.51, 44.9073, 3.45852, 0, 0, 0, 100, 0),
(101820, 163, -3050.48, 2218.51, 43.1071, 3.31087, 0, 0, 0, 100, 0),
(101820, 164, -3077.45, 2213.9, 42.4607, 3.31087, 0, 0, 0, 100, 0),
(101820, 165, -3099.29, 2214.53, 41.1869, 3.11295, 0, 0, 0, 100, 0),
(101820, 166, -3137.49, 2215.62, 38.1633, 3.11295, 0, 0, 0, 100, 0),
(101820, 167, -3186.55, 2221.44, 34.935, 3.11295, 0, 0, 0, 100, 0),
(101820, 168, -3220.28, 2219.51, 33.6113, 3.33443, 0, 0, 0, 100, 0),
(101820, 169, -3238.87, 2220.48, 33.0825, 3.08939, 0, 0, 0, 100, 0),
(101820, 170, -3212.2, 2214.79, 33.9083, 0.020835, 0, 0, 0, 100, 0),
(101820, 171, -3178.34, 2217.2, 35.5771, 0.071101, 0, 0, 0, 100, 0),
(101820, 172, -3147.76, 2215.49, 37.2103, 0.007484, 0, 0, 0, 100, 0),
(101820, 173, -3094.57, 2211.44, 41.5447, 6.09589, 0, 0, 0, 100, 0),
(101820, 174, -3072.76, 2212.7, 42.5507, 0.057749, 0, 0, 0, 100, 0),
(101820, 175, -3031.68, 2219.13, 44.5808, 0.155139, 0, 0, 0, 100, 0),
(101820, 176, -2999.79, 2230.3, 44.5452, 0.40411, 0, 0, 0, 100, 0),
(101820, 177, -2957.65, 2245.46, 44.3247, 0.331068, 0, 0, 0, 100, 0),
(101820, 178, -2928.95, 2251.76, 46.0484, 0.109586, 0, 0, 0, 100, 0),
(101820, 179, -2895.26, 2252.72, 46.43, 0.05932, 0, 0, 0, 100, 0),
(101820, 180, -2873.43, 2254.02, 47.2277, 0.05932, 0, 0, 0, 100, 0),
(101820, 181, -2856.74, 2259.26, 47.7947, 0.304364, 0, 0, 0, 100, 0),
(101820, 182, -2826.07, 2283.75, 50.0736, 0.55098, 0, 0, 0, 100, 0),
(101820, 183, -2782.4, 2312.59, 53.9009, 0.514851, 0, 0, 0, 100, 0),
(101820, 184, -2752.83, 2319.22, 60.1355, 6.17443, 0, 0, 0, 100, 0),
(101820, 185, -2714.62, 2320.71, 67.424, 0.0389, 0, 0, 0, 100, 0),
(101820, 186, -2690.31, 2314.33, 73.8863, 6.02677, 0, 0, 0, 100, 0),
(101820, 187, -2666.01, 2297.64, 78.5276, 5.6812, 0, 0, 0, 100, 0),
(101820, 188, -2610.16, 2259.26, 86.3857, 5.6812, 0, 0, 0, 100, 0),
(101820, 189, -2583, 2251.85, 92.0153, 6.22155, 0, 0, 0, 100, 0),
(101820, 190, -2557.87, 2250.3, 100.379, 6.22155, 0, 0, 0, 100, 0),
(101820, 191, -2526.98, 2266.52, 107.674, 0.428457, 0, 0, 0, 100, 0),
(101820, 192, -2500.14, 2278.77, 113.244, 0.428457, 0, 0, 0, 100, 0),
(101820, 193, -2487.43, 2293.79, 115.858, 0.868281, 0, 0, 0, 100, 0),
(101820, 194, -2477.87, 2310.97, 116.316, 1.06306, 0, 0, 0, 100, 0),
(101820, 195, -2457.47, 2320.02, 117.076, 6.2781, 0, 0, 0, 100, 0),
(101820, 196, -2434.17, 2334.31, 114.228, 0.53213, 0, 0, 0, 100, 0),
(101820, 197, -2425.52, 2346.97, 111.974, 0.971953, 0, 0, 0, 100, 0),
(101820, 198, -2395.77, 2359.29, 109.47, 0.186555, 0, 0, 0, 100, 0),
(101820, 199, -2371.07, 2363.95, 106.883, 0.186555, 0, 0, 0, 100, 0),
(101820, 200, -2352.76, 2369.83, 102.753, 0.551765, 0, 0, 0, 100, 0),
(101820, 201, -2330.04, 2375.79, 93.3855, 0.259597, 0, 0, 0, 100, 0),
(101820, 202, -2308.34, 2378.23, 86.221, 0.111942, 0, 0, 0, 100, 0),
(101820, 203, -2292.51, 2382.44, 80.1208, 0.554907, 0, 0, 0, 100, 0),
(101820, 204, -2273.19, 2392.19, 69.9741, 0.259597, 0, 0, 0, 100, 0),
(101820, 205, -2250.37, 2394.75, 60.8083, 0.111942, 0, 0, 0, 100, 0),
(101820, 206, -2225.03, 2399.97, 54.8507, 6.04248, 0, 0, 0, 100, 0),
(101820, 207, -2197.54, 2389.73, 55.4388, 5.8477, 0, 0, 0, 100, 0),
(101820, 208, -2173.78, 2374.62, 56.8175, 5.85085, 0, 0, 0, 100, 0),
(101820, 209, -2141, 2359.5, 58.8745, 5.85085, 0, 0, 0, 100, 0),
(101820, 210, -2116.83, 2349.58, 60.2428, 5.9985, 0, 0, 0, 100, 0),
(101820, 211, -2105.93, 2350.21, 59.8216, 0.05775, 0, 0, 0, 100, 0),
(101820, 212, -2094.89, 2353.06, 59.8216, 0.792883, 0, 0, 0, 100, 0),
(101820, 213, -2075.44, 2376.58, 59.9378, 0.855715, 0, 0, 0, 100, 0),
(101820, 214, -2068.97, 2384.03, 59.8607, 0.855715, 0, 0, 0, 100, 0),
(101820, 215, -2044.03, 2405.38, 59.8215, 0.70806, 0, 0, 0, 100, 0),
(101820, 216, -2020.83, 2425.24, 59.8223, 0.70806, 0, 0, 0, 100, 0),
(101820, 217, -2002.59, 2440.86, 59.8284, 0.70806, 0, 0, 0, 100, 0),
(101820, 218, -1980.81, 2442.4, 59.8216, 0.070316, 0, 0, 0, 100, 0),
(101820, 219, -1956.79, 2444.09, 59.8609, 0.120582, 0, 0, 0, 100, 0),
(101820, 220, -1928.83, 2443.59, 59.9086, 5.91604, 0, 0, 0, 100, 0),
(101820, 221, -1909.42, 2436.13, 59.8217, 5.91604, 0, 0, 0, 100, 0),
(101820, 222, -1898.25, 2427.46, 59.8217, 5.62387, 0, 0, 0, 100, 0),
(101820, 223, -1904.94, 2403.24, 59.8217, 4.44263, 0, 0, 0, 100, 0),
(101820, 224, -1897.67, 2380.67, 60.0021, 5.13064, 0, 0, 0, 100, 0),
(101820, 225, -1890.18, 2354.46, 59.8845, 5.13064, 0, 0, 0, 100, 0),
(101820, 226, -1875.18, 2327.98, 59.8217, 5.37882, 0, 0, 0, 100, 0),
(101820, 227, -1852.43, 2294.69, 59.8216, 5.19504, 0, 0, 0, 100, 0),
(101820, 228, -1849.14, 2270.83, 59.8223, 4.84946, 0, 0, 0, 100, 0),
(101820, 229, -1845.26, 2242.68, 59.8223, 4.84946, 0, 0, 0, 100, 0),
(101820, 230, -1824.21, 2213.9, 59.8223, 5.48721, 0, 0, 0, 100, 0),
(101820, 231, -1809.71, 2199.09, 59.8223, 5.24216, 0, 0, 0, 100, 0),
(101820, 232, -1802.79, 2181.88, 59.8223, 5.09451, 0, 0, 0, 100, 0),
(101820, 233, -1801.88, 2164.41, 60.2086, 4.76465, 0, 0, 0, 100, 0),
(101820, 234, -1803.47, 2134.03, 63.4147, 4.86204, 0, 0, 0, 100, 0),
(101820, 235, -1806.8, 2111.31, 64.572, 4.56673, 0, 0, 0, 100, 0),
(101820, 236, -1813.5, 2077.13, 63.472, 4.46934, 0, 0, 0, 100, 0),
(101820, 237, -1823.24, 2037.86, 60.8311, 4.46934, 0, 0, 0, 100, 0),
(101820, 238, -1815.3, 1990.49, 59.0999, 4.81099, 0, 0, 0, 100, 0),
(101820, 239, -1804.4, 1955.07, 60.5061, 5.03011, 0, 0, 0, 100, 0),
(101820, 240, -1753.4, 1919.57, 58.9915, 5.7786, 0, 0, 0, 100, 0),
(101820, 241, -1722.38, 1912.98, 59.7615, 6.07391, 0, 0, 0, 100, 0),
(101820, 242, -1696.97, 1896.76, 60.7406, 5.36312, 0, 0, 0, 100, 0),
(101820, 243, -1683.61, 1856.53, 58.9281, 4.97042, 0, 0, 0, 100, 0),
(101820, 244, -1652.94, 1808.51, 58.9271, 5.38668, 0, 0, 0, 100, 0),
(101820, 245, -1636.14, 1788.34, 58.9252, 5.40709, 0, 0, 0, 100, 0),
(101820, 246, -1628.86, 1777.78, 58.9252, 5.43065, 0, 0, 0, 100, 0),
(101820, 247, -1600.54, 1743.14, 58.9262, 5.67569, 0, 0, 0, 100, 0),
(101820, 248, -1571.92, 1719.5, 58.9262, 5.90425, 0, 0, 0, 100, 0),
(101820, 249, -1554.42, 1719.74, 58.9262, 0.01376, 0, 0, 0, 100, 0),
(101820, 250, -1546.31, 1725.34, 60.0114, 0.60438, 0, 0, 0, 100, 0),
(101820, 251, -1531.57, 1739.99, 61.0739, 0.748108, 0, 0, 0, 100, 0),
(101820, 252, -1497.16, 1766.79, 61.8516, 0.106435, 0, 0, 0, 100, 0),
(101820, 253, -1476.54, 1768.78, 59.0567, 0.217176, 0, 0, 0, 100, 0),
(101820, 254, -1464.1, 1771.52, 50.389, 0.217176, 0, 0, 0, 100, 0),
(101820, 255, -1440.7, 1787.26, 50.1445, 0.660141, 0, 0, 0, 100, 0),
(101820, 256, -1433.72, 1792.53, 50.1445, 0.642864, 0, 0, 0, 100, 0),
(101820, 257, -1426.17, 1793.42, 50.1445, 5.85241, 0, 0, 0, 100, 0),
(101820, 258, -1413.26, 1787.49, 50.1445, 0.452012, 0, 0, 0, 100, 0),
(101820, 259, -1400.1, 1798.97, 50.2476, 0.64365, 0, 0, 0, 100, 0),
(101820, 260, -1372.47, 1808.5, 51.2239, 0.741039, 0, 0, 0, 100, 0),
(101820, 261, -1354.66, 1824.8, 51.0754, 0.741039, 0, 0, 0, 100, 0),
(101820, 262, -1333.43, 1832.98, 50.618, 0.239169, 0, 0, 0, 100, 0),
(101820, 263, -1320.86, 1839.59, 51.423, 0.484214, 0, 0, 0, 100, 0),
(101820, 264, -1310.85, 1840.35, 51.2472, 0.038108, 0, 0, 0, 100, 0),
(101820, 265, -1305.87, 1842.07, 53.3807, 0.333417, 0, 0, 0, 100, 0),
(101820, 266, -1295.87, 1840.93, 51.8952, 5.97886, 0, 0, 0, 100, 0),
(101820, 267, -1280.29, 1857.28, 50.7669, 1.21621, 0, 0, 0, 100, 0),
(101820, 268, -1275.97, 1880.95, 50.2167, 1.36386, 0, 0, 0, 100, 0),
(101820, 269, -1281.13, 1905.52, 50.5572, 1.75656, 0, 0, 0, 100, 0),
(101820, 270, -1282.41, 1928.02, 50.7274, 0.678993, 0, 0, 0, 100, 0),
(101820, 271, -1251.32, 1943.86, 50.1443, 0.924037, 0, 0, 0, 100, 0),
(101820, 272, -1243.25, 1963.02, 50.1443, 0.927179, 0, 0, 0, 100, 0),
(101820, 273, -1230.37, 1961.37, 50.2206, 6.03227, 0, 0, 0, 100, 0),
(101820, 274, -1219.23, 1971.97, 51.8311, 0.833713, 0, 0, 0, 100, 0),
(101820, 275, -1213.16, 1984.81, 51.5216, 1.12902, 0, 0, 0, 100, 0),
(101820, 276, -1207.08, 1997.66, 54.2484, 1.12902, 0, 0, 0, 100, 0),
(101820, 277, -1200.06, 1997.7, 57.8231, 0.686058, 0, 0, 0, 100, 0),
(101820, 278, -1192, 2006.59, 60.1776, 0.833713, 0, 0, 0, 100, 0),
(101820, 279, -1181.74, 2017.88, 60.5827, 0.243093, 0, 0, 0, 100, 0),
(101820, 280, -1159.81, 2027.44, 58.4938, 0.243093, 0, 0, 0, 100, 0),
(101820, 281, -1116.18, 2025.35, 58.4938, 6.23725, 0, 0, 0, 100, 0),
(101820, 282, -1080.17, 2023.7, 58.4938, 6.23725, 0, 0, 0, 100, 0),
(101820, 283, -1049.72, 2020.76, 58.4938, 6.18699, 0, 0, 0, 100, 0),
(101820, 284, -990.964, 2000.45, 58.4938, 5.98907, 0, 0, 0, 100, 0),
(101820, 285, -952.881, 1996.77, 59.0865, 6.20976, 0, 0, 0, 100, 0),
(101820, 286, -919.014, 1997.68, 64.7799, 0.027109, 0, 0, 0, 100, 0),
(101820, 287, -892.02, 1993.17, 70.0182, 6.11552, 0, 0, 0, 100, 0),
(101820, 288, -857.265, 1979.99, 77.8831, 5.92074, 0, 0, 0, 100, 0),
(101820, 289, -821.236, 1964.21, 85.4698, 5.87047, 0, 0, 0, 100, 0),
(101820, 290, -798.87, 1948.56, 88.4627, 5.67255, 0, 0, 0, 100, 0),
(101820, 291, -781.894, 1936.68, 88.451, 5.67255, 0, 0, 0, 100, 0),
(101820, 292, -750.131, 1906.59, 88.4412, 5.5249, 0, 0, 0, 100, 0),
(101820, 293, -729.393, 1888.84, 88.4412, 5.57516, 0, 0, 0, 100, 0),
(101820, 294, -708.545, 1871.11, 88.4414, 5.5783, 0, 0, 0, 100, 0),
(101820, 295, -687.751, 1853.42, 88.4414, 5.5783, 0, 0, 0, 100, 0),
(101820, 296, -670.584, 1829.41, 88.4414, 5.33326, 0, 0, 0, 100, 0),
(101820, 297, -665.881, 1809.16, 88.4864, 4.94056, 0, 0, 0, 100, 0),
(101820, 298, -665.285, 1768.89, 88.4413, 4.84317, 0, 0, 0, 100, 0),
(101820, 299, -667.813, 1736.17, 88.4413, 4.39942, 0, 0, 0, 100, 0),
(101820, 300, -680.27, 1697.68, 88.3751, 4.39942, 0, 0, 0, 100, 0),
(101820, 301, -693.4, 1671.22, 88.3751, 4.25177, 0, 0, 0, 100, 0),
(101820, 302, -699.268, 1636.71, 88.3751, 4.54393, 0, 0, 0, 100, 0),
(101820, 303, -697.291, 1605.07, 88.3751, 4.79212, 0, 0, 0, 100, 0),
(101820, 304, -689.508, 1570.95, 88.3751, 4.93663, 0, 0, 0, 100, 0),
(101820, 305, -683.422, 1544.27, 88.3751, 4.93663, 0, 0, 0, 100, 0),
(101820, 306, -674.325, 1522.26, 88.3751, 5.42358, 0, 0, 0, 100, 0),
(101820, 307, -657.876, 1503.17, 88.3745, 5.42358, 0, 0, 0, 100, 0),
(101820, 308, -642.202, 1493.25, 88.3745, 5.71889, 0, 0, 0, 100, 0),
(101820, 309, -622.23, 1484.41, 88.3745, 5.86655, 0, 0, 0, 100, 0),
(101820, 310, -586.71, 1478.26, 88.3745, 6.11159, 0, 0, 0, 100, 0),
(101820, 311, -571.37, 1472.32, 88.3754, 5.91367, 0, 0, 0, 100, 0),
(101820, 312, -554.007, 1465.59, 88.4037, 5.91367, 0, 0, 0, 100, 0),
(101820, 313, -529.013, 1447.83, 88.4273, 5.66548, 0, 0, 0, 100, 0),
(101820, 314, -507.684, 1432.68, 89.898, 5.66548, 0, 0, 0, 100, 0),
(101820, 315, -486.303, 1417.49, 91.7747, 6.00792, 0, 0, 0, 100, 0),
(101820, 316, -436.232, 1407.33, 95.3316, 6.11709, 0, 0, 0, 100, 0),
(101820, 317, -410.456, 1402.5, 97.3456, 5.9333, 0, 0, 0, 100, 0),
(101820, 318, -379.466, 1388.92, 97.3343, 5.74717, 0, 0, 0, 100, 0),
(101820, 319, -353.246, 1381.07, 95.997, 5.99221, 0, 0, 0, 100, 0),
(101820, 320, -319.423, 1383, 95.2401, 0.325561, 0, 0, 0, 100, 0),
(101820, 321, -287.256, 1393.86, 94.9527, 0.325561, 0, 0, 0, 100, 0),
(101820, 322, -261.65, 1395.67, 95.6656, 0.40096, 0, 0, 0, 100, 0),
(101820, 323, -236.214, 1401.54, 95.9988, 0.397818, 0, 0, 0, 100, 0),
(101820, 324, -201.781, 1412, 96.0017, 0.214035, 0, 0, 0, 100, 0),
(101820, 325, -169.701, 1418.98, 96.5132, 0.214035, 0, 0, 0, 100, 0),
(101820, 326, -153.397, 1420.16, 97.3084, 0.030252, 0, 0, 0, 100, 0),
(101820, 327, -135.494, 1425.28, 98.2235, 0.278438, 0, 0, 0, 100, 0),
(101820, 328, -118.584, 1437.37, 98.4093, 0.620871, 0, 0, 0, 100, 0),
(101820, 329, -100.855, 1451.68, 98.8248, 0.865916, 0, 0, 0, 100, 0),
(101820, 330, -89.623, 1471.76, 99.3934, 1.0607, 0, 0, 0, 100, 0),
(101820, 331, -69.8394, 1487.37, 99.6641, 0.667995, 0, 0, 0, 100, 0),
(101820, 332, -49.3073, 1497.8, 99.7479, 0.470075, 0, 0, 0, 100, 0),
(101820, 333, -27.2369, 1519, 100.687, 0.765385, 0, 0, 0, 100, 0),
(101820, 334, -0.100235, 1561.22, 102.212, 1.04734, 0, 0, 0, 100, 0),
(101820, 335, 8.64756, 1576.38, 102.675, 1.04734, 0, 0, 0, 100, 0),
(101820, 336, 19.5998, 1595.35, 102.192, 1.04734, 0, 0, 0, 100, 0),
(101820, 337, 31.6368, 1616.21, 101.034, 1.04734, 0, 0, 0, 100, 0),
(101820, 338, 45.8432, 1640.82, 99.2757, 1.04734, 0, 0, 0, 100, 0),
(101820, 339, 48.8384, 1668.01, 95.6133, 1.41727, 0, 0, 0, 100, 0),
(101820, 340, 61.7517, 1707.46, 89.747, 1.06148, 0, 0, 0, 100, 0),
(101820, 341, 85.9023, 1735.71, 86.6064, 0.86356, 0, 0, 0, 100, 0),
(101820, 342, 112.918, 1767.32, 86.2302, 0.86356, 0, 0, 0, 100, 0),
(101820, 343, 136.929, 1784.41, 86.2302, 0.618515, 0, 0, 0, 100, 0),
(101820, 344, 156.286, 1791.99, 86.2291, 0.373471, 0, 0, 0, 100, 0),
(101820, 345, 183.789, 1802.77, 86.2291, 0.373471, 0, 0, 0, 100, 0),
(101820, 346, 217.142, 1818.95, 86.2291, 0.521126, 0, 0, 0, 100, 0),
(101820, 347, 233.534, 1824.13, 86.3413, 0.178692, 0, 0, 0, 100, 0),
(101820, 348, 255.089, 1833.57, 86.2291, 0.178692, 0, 0, 0, 100, 0);

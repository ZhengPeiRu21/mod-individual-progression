/* SSC Bosses should only drop 2 pieces of loot - was changed to 3 pieces after WotLK release */
DELETE FROM `creature_loot_template` WHERE (`Entry` = 21215) AND (`Item` IN (34059));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
    (21215, 34059, 34059, 100, 0, 1, 0, 2, 2, 'Leotheras the Blind - (ReferenceTable)');

DELETE FROM `creature_loot_template` WHERE (`Entry` = 21214) AND (`Item` IN (34060));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
    (21214, 34060, 34060, 100, 0, 1, 0, 2, 2, 'Fathom-Lord Karathress - (ReferenceTable)');

DELETE FROM `creature_loot_template` WHERE (`Entry` = 21212) AND (`Item` IN (34062));
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES
    (21212, 34062, 34062, 100, 0, 1, 3, 2, 2, 'Lady Vashj - (ReferenceTable)');

/* Correct quest log text for SSC attunement quest "The Cudgel of Kar'desh" */
UPDATE `quest_template` SET `QuestCompletionLog` = 'Return to Skar''this the Heretic in the heroic Slave Pens of Coilfang Reservoir.' WHERE `ID` = 10901;
UPDATE `quest_template_locale` SET `CompletedText` = 'Kehrt zu Nar''biss dem Ketzer in den heroischen Sklavenunterkünften des Echsenkessels.' WHERE `ID` = 10901 AND `locale` = 'deDE';
UPDATE `quest_template_locale` SET `CompletedText` = 'Vuelve con: Skar''this el Herético. Zona: heroico Recinto de los Esclavos de la Reserva Colmillo Torcido.' WHERE `ID` = 10901 AND `locale` = 'esES';
UPDATE `quest_template_locale` SET `CompletedText` = 'Vuelve con: Skar''this el Herético. Zona: heroico Recinto de los Esclavos de la Reserva Colmillo Torcido.' WHERE `ID` = 10901 AND `locale` = 'esMX';
UPDATE `quest_template_locale` SET `CompletedText` = 'Retournez voir Skar''this l''Hérétique dans les Enclos aux esclaves héroïques du Réservoir de Glissecroc.' WHERE `ID` = 10901 AND `locale` = 'frFR';

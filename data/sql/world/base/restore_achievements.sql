/* Glory of the Raider removed rewards */
DELETE FROM `achievement_reward` WHERE `ID` in (2138, 2137);
INSERT INTO `achievement_reward` (`ID`, `TitleA`, `TitleH`, `ItemID`, `Sender`, `Subject`, `Body`, `MailTemplateID`) VALUES
(2138, 0, 0, 44164, 26917, 'Glory of the Raider', 'Champion,$B$BWord has traveled to Wyrmrest Temple of the great deeds you have accomplished since arriving in Northrend.$B$BYour bravery should not go unrecognized. Please accept this gift on behalf of the Aspects. Together we shall rid Azeroth of evil, once and for eternity.$B$BAlexstrasza the Life-Binder', 0),
(2137, 0, 0, 44175, 26917, 'Glory of the Raider', 'Champion,$B$BWord has traveled to Wyrmrest Temple of the great deeds you have accomplished since arriving in Northrend.$B$BYour bravery should not go unrecognized. Please accept this gift on behalf of the Aspects. Together we shall rid Azeroth of evil, once and for eternity.$B$BAlexstrasza the Life-Binder', 0);

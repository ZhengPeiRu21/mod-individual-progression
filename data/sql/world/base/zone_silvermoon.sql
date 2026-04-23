-- Restore M'uru
SET @MURU_GUID := 352043;
DELETE FROM `creature` WHERE `guid` = @MURU_GUID;
INSERT INTO `creature` (`guid`, `id1`, `map`, `position_x`, `position_y`, `position_z`, `orientation`) VALUES
(@MURU_GUID, 17544, 530, 9850.99, -7522.666, -9.157837, 1.537163);

UPDATE `creature_template` SET `rank` = 3, `type_flags` = 4 WHERE `entry` = 17544; -- M'uru

-- Restore Blood Knight quests to pre-2.4 state
DELETE FROM `quest_template` WHERE `ID` IN (9681, 9684, 109681, 109684);
INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `RewardNextQuest`, `RewardXPDifficulty`, `StartItem`, `Flags`, `AllowableRaces`, 
`LogTitle`, `QuestCompletionLog`, `RequiredItemId1`, `RequiredItemCount1`, `VerifiedBuild`) VALUES 
(9681,   2, -1, 12, -141, 9684, 3, 0, 136, 512, 'A Study in Power', NULL, 0, 0, 12340),
(9684,   2, -1, 12, -141, 9685, 3, 24157, 128, 512, 'Claiming the Light', 'Return to Knight-Lord Bloodvalor in Eversong Woods.', 24156, 1, 12340),
(109681, 2, -1, 12, -141, 9684, 3, 0, 136, 512, 'A Study in Power', NULL, 0, 0, 12340),
(109684, 2, -1, 12, -141, 9685, 3, 24157, 128, 512, 'Claiming the Light', 'Return to Knight-Lord Bloodvalor in Eversong Woods.', 24156, 1, 12340);

UPDATE `quest_template` SET 
`QuestDescription` = 'Do not think me unduly harsh, $N. Stillblade knew well what he was being sent to do. He understood and accepted his duty and is an example for all aspiring Blood Knights.$B$BMy words are no eulogy, $N. Stillblade\'s service to us is far from over and you will be the instrument of his resurrection.$B$BYour education in the order\'s ways has just begun. With the betrayal of Kael\'thas and the loss of our power source, you must learn new methods of wielding the Light. Seek out Magister Astalor Bloodsworn.'
WHERE `ID` = 9681;

UPDATE `quest_template` SET 
`LogDescription` = 'Use the Shimmering Vessel on the Blood Elf Magisters to fill it and return to Knight-Lord Bloodvalor in Silvermoon City.', 
`QuestDescription` = 'Take this vessel, $N. The enchantment it bears will allow you to draw the last vestiges of the Light surrounding these magisters. They once tended the captive naaru and some of its energy yet remains within them.$B$BIt will be just enough to restore your comrade to life.$B$BDo not worry about the magisters, $N. I have seen to their care, and Lord Solanar assures me that Lady Liadrin seeks a new source of power even now.'
WHERE `ID` = 9684;

UPDATE `quest_template` SET 
`QuestDescription` = "Do not think me unduly harsh, $N. Stillblade knew well what he was being sent to do. He understood and accepted his duty and is an example for all aspiring Blood Knights.$B$BMy words are no eulogy, $N. Stillblade's service to us is far from over and you will be the instrument of his resurrection.$B$BYour education in the use of the Light has focused on mere charms and parlor tricks thus far. The time has come for you to learn of the nature and breadth of our power. Seek out Magister Astalor Bloodsworn."
WHERE `ID` = 109681;

UPDATE `quest_template` SET 
`LogDescription` = "Use the Shimmering Vessel on M'uru to fill it and return to Knight-Lord Bloodvalor in Silvermoon City.", 
`QuestDescription` = "Take this vessel, $N. Invoking its magic will allow you to take this creature's power and claim it for yourself. With it, you will be able to restore your fallen comrade to life.$B$BThere are those who would say what we're doing is wrong, but much of what has befallen us is also wrong. Would they have us throw away such a gift?$B$BThey do not complain when our power is used to prevent the further destruction of Silvermoon. No, they object when they are safe from harm and indulging their magic addictions."
WHERE `ID` = 109684;

DELETE FROM `quest_template_addon` WHERE `ID` IN (109681, 109684);
INSERT INTO `quest_template_addon` (`ID`, `MaxLevel`, `AllowableClasses`, `SourceSpellID`, `PrevQuestID`, `NextQuestID`, `ExclusiveGroup`, `BreadcrumbForQuestId`, `RewardMailTemplateID`, `RewardMailDelay`, 
`RequiredSkillID`, `RequiredSkillPoints`, `RequiredMinRepFaction`, `RequiredMaxRepFaction`, `RequiredMinRepValue`, `RequiredMaxRepValue`, `ProvidedItemCount`, `SpecialFlags`) VALUES 
(109681, 0, 2, 0, 9678, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(109684, 0, 2, 0, 109681, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0);

DELETE FROM `quest_template_locale` WHERE `ID` IN (109681, 109684);
INSERT INTO `quest_template_locale` (`ID`, `locale`, `Title`, `Details`, `Objectives`, `EndText`, `CompletedText`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES 
(109681, 'deDE', 'Eine Studie der Macht', 'Haltet mich nicht für übermäßig grausam, $n. Stillstreich hat sehr wohl gewusst, worauf er sich einlässt. Er verstand und akzeptierte seine Pflicht und wurde so ein leuchtendes Vorbild für alle aufstrebenden Blutritter.$B$BMeine Worte sind nicht als Grabesrede gedacht, $n. Stillstreichs Dienste für uns gehören noch lange nicht der Vergangenheit an und Ihr werdet das Instrument seiner Wiederauferstehung sein.$B$BEure Ausbildung in der Kunst des Ordens hat gerade erst begonnen. Angesichts Kael\'thas\' Verrat und des Verlusts unserer Energiequelle, müsst Ihr neue Wege zur Beherrschung des Lichts erlernen. Sucht Magister Astalor Blutschwur auf.', 'Sprecht mit Magister Astalor Blutschwur in der Geheimen Kammer unter dem Hauptquartier der Blutelfen.', '', '', '', '', '', '', 18019),
(109681, 'esES', 'Un estudio sobre el poder', 'No creas que no lo siento, $n. Hojafirme sabía bien a lo que se enfrentaba. Aceptó su deber y es un ejemplo para todo aspirante a Caballero de sangre.$B$BNo hablo por hablar, $n. Hojafirme sigue a nuestro servicio y tú ayudarás a resucitarlo.$B$BHasta ahora, tu instrucción sobre la orden acaba de empezar. Tras la traición de Kael\'thas y la pérdida de nuestra fuente de poder, debes aprender nuevos métodos para ejercer la Luz. Busca al magister Astalor Jurasangre.', 'Habla con el magister Astalor Jurasangre en la cámara oculta debajo del cuartel general de los Caballeros de sangre.', '', '', '', '', '', '', 18019),
(109681, 'esMX', 'Un estudio sobre el poder', 'No creas que no lo siento, $n. Hojafirme sabía bien a lo que se enfrentaba. Aceptó su deber y es un ejemplo para todo aspirante a Caballero de sangre.$B$BNo hablo por hablar, $n. Hojafirme sigue a nuestro servicio y tú ayudarás a resucitarlo.$B$BHasta ahora, tu instrucción sobre la orden acaba de empezar. Tras la traición de Kael\'thas y la pérdida de nuestra fuente de poder, debes aprender nuevos métodos para ejercer la Luz. Busca al magister Astalor Jurasangre.', 'Habla con el magister Astalor Jurasangre en la cámara oculta debajo del cuartel general de los Caballeros de sangre.', '', '', '', '', '', '', 18019),
(109681, 'frFR', 'Une étude du pouvoir', 'N’allez pas croire que je sois excessivement dur, $n. Mortelame savait parfaitement ce pour quoi il était envoyé. Il avait compris et accepté sa mission, et il reste un exemple pour tous les aspirants chevaliers de sang.$B$BMes propos ne constituent pas une élégie, $n. Le service de Mortelame est loin d’être terminé, et vous allez être l’instrument de sa résurrection.$B$BVotre apprentissage des pratiques de notre ordre ne fait que commencer. En raison de la trahison de Kael\'thas et de la perte de notre source de puissance, il est essentiel que vous appreniez de nouvelles façons d\'utiliser la Lumière. Allez trouver le magistère Astalor Ligessang.', 'Parlez au magistère Astalor Ligessang dans la chambre secrète sous les quartiers généraux des chevaliers de sang.', '', '', '', '', '', '', 18019),
(109681, 'ruRU', 'Источник силы', 'Жестоко? Ну что ты, $n. Безмолвный клинок прекрасно знал, на что идет, и выполнил свой долг с честью и достоинством. Его самоотверженность должна послужить примером для всех нас.$B$BНо это далеко не последний подвиг Безмолвного Клинка, $n. Ему предстоят еще многие свершения. Да-да, ты не $gослышался:ослышалась; – нам нужно воскресить его. И займешься этим именно ты!$B$BДоселе ты $gограничивался:ограничивалась; простыми заклинаниями, но теперь, когда нас предал Кель\'тас, когда мы утеряли источник энергии, тебе придется научиться нести Свет по-новому. Отправляйся к магистру Асталору Кровавой Клятве.', 'Поговорите с магистром Асталором Кровавой Клятвой в тайной зале, расположенной под штабом рыцарей Крови.', '', '', '', '', '', '', 18019),
(109681, 'zhCN', '掌握力量', '不要认为我这样做很过分，$N。桑利亚斯·静刃很清楚地知道他被派过去的使命。他充分理解并接受了他的职责，他是所有热诚而积极的血骑士所要学习的榜样。$B$B我在这里说的话可不是在为他歌功颂德，$N。桑利亚斯·静刃对我们的卓越贡献远比这些要伟大，而你则是他获得新生的工具。$B$B你当前所学习到的所有圣光之道，不过是些上不得厅堂的小把戏小伎俩而已。在凯尔萨斯背叛了我们，并且夺走了我们的能量源之后，你必须学习掌控圣光的新方法。立刻去找阿斯塔洛·血誓吧。', '与血骑士总部楼下密室中的魔导师阿斯塔洛·血誓谈一谈。', '', '', '', '', '', '', 0),
(109684, 'deDE', 'Die Beherrschung des Lichts', 'Nehmt dieses Gefäß, $n. Durch die Erweckung seiner Verzauberung werdet Ihr in der Lage sein, die letzten Überreste des Lichts, das diese Magister umgibt, für Euch zu nutzen. Sie pflegten einst den gefangenen Naaru und tragen noch immer einen Teil von dessen Energie in sich.$B$BSorgt Euch nicht um die Magister, $n. Ich kümmere mich um ihr Wohlergehen. Lord Solanar hat mir versichert, dass Lady Liadrin selbst jetzt auf der Suche nach einer neuen Energiequelle ist.', 'Wendet das schimmernde Gefäß auf die Magister der Blutelfen an, um es zu füllen und kehrt anschließend zu Ritterfürst Heldenblut zurück.', '', 'Kehrt zu Ritterfürst Heldenblut im Immersangwald zurück.', '', '', '', '', 18019),
(109684, 'esES', 'Buscando la Luz', 'Toma esta vasija, $n. Su magia te permitirá obtener los últimos vestigios de la Luz que rodean a estos magistri. Una vez cuidaron del naaru cautivo y parte de su energía permanece aún en ellos.$b$bBastará para devolver a tu camarada a la vida.$b$bNo te preocupes por los magistri, $n. Me he ocupado de ellos, y Lord Solanar me garantiza que Lady Liadrin debe de estar buscando otra fuente de energía.', 'Llena la vasija refulgente en magistri elfos de sangre y llévasela al Lord caballero Sangrevalor a Ciudad de Lunargenta.', '', 'Vuelve con: Lord caballero Sangrevalor. Zona: Bosque Canción Eterna.', '', '', '', '', 18019),
(109684, 'esMX', 'Buscando la Luz', 'Toma esta vasija, $n. Su magia te permitirá obtener los últimos vestigios de la Luz que rodean a estos magistri. Una vez cuidaron del naaru cautivo y parte de su energía permanece aún en ellos.$b$bBastará para devolver a tu camarada a la vida.$b$bNo te preocupes por los magistri, $n. Me he ocupado de ellos, y Lord Solanar me garantiza que Lady Liadrin debe de estar buscando otra fuente de energía.', 'Llena la vasija refulgente en magistri elfos de sangre y llévasela al Lord caballero Sangrevalor a Ciudad de Lunargenta.', '', 'Vuelve con: Lord caballero Sangrevalor. Zona: Bosque Canción Eterna.', '', '', '', '', 18019),
(109684, 'frFR', 'Revendiquer la Lumière', 'Prenez ce calice, $n. Sa magie vous permettra de saisir les derniers vestiges de Lumière qui entourent ces magistères. Ils surveillaient autrefois le naaru captif et une partie de son énergie est demeurée en eux.$B$BElle suffira tout juste à rendre la vie à votre camarade défunt.$B$BNe vous en faites pas pour les magistères, $n. Je veille à ce qu’on s’occupe d’eux, et le seigneur Solanar m’assure que dame Liadrin est en ce moment même à la recherche d’une nouvelle source d’énergie.', 'Utilisez le Calice chatoyant sur les Magistères elfes de sang pour le remplir et retournez voir le chevalier-seigneur Vaillessang à Lune-d’Argent.', '', 'Retournez voir le Chevalier-seigneur Vaillessang dans le Bois des Chants éternels.', '', '', '', '', 18019),
(109684, 'ruRU', 'Получение силы Света', 'Прими этот зачарованный сосуд, $n, и наполни его магической силой, окружающей магистров, до краев. Когда-то эти магистры охраняли плененного наару, и часть его энергии еще находится в них. Этого сосуда хватит, чтобы вернуть к жизни падшего рыцаря.$B$BНе беспокойся о магистрах, за ними присмотрят. Лорд Соланар сообщил мне, что Леди Лиадрин занимается поиском нового источника магической силы.', 'Используйте мерцающий сосуд на эльфах крови-магистрах, чтобы наполнить его магической силой, и возвращайтесь к предводителю рыцарей Доблестной Крови в Луносвет.', '', 'Вернитесь к предводителю рыцарей Доблестной Крови в Леса Вечной Песни.', '', '', '', '', 18019),
(109684, 'zhCN', '驾驭圣光', '拿着这只瓶子，$N。启动其中的魔法，你就可以吸取这些魔导师身上残存的光明能量。他们曾经负责控制那个被我们捕获的纳鲁，因此纳鲁的能量还有一部分留在他们体内。$B$B这应该就足以让你的伙伴起死回生了。$B$B不用为这些魔导师担心，$N。我正在照料他们，而且索拉纳·血怒大人向我保证过，莉亚德琳大人正在积极寻找新的能量源。', '用血精灵魔导师身上的能量装满微光容器，然后向银月城的骑士领主布拉德瓦罗复命。', '', '去找永歌森林的骑士领主布拉德瓦罗。', '', '', '', '', 0);

DELETE FROM `quest_request_items_locale` WHERE `ID` = 109684;
INSERT INTO `quest_request_items_locale` (`ID`, `locale`, `CompletionText`, `VerifiedBuild`) VALUES 
(109684, 'deDE', 'Habt Ihr schon mit Magister Astalor Blutschwur gesprochen?', 18019),
(109684, 'esES', '¿Has hablado con el Magister Astalor Jurasangre?', 0),
(109684, 'esMX', '¿Has hablado con el Magister Astalor Jurasangre?', 0),
(109684, 'ruRU', 'Тебе удалось поговорить с магистром Асталором Кровавой Клятвой?', 0),
(109684, 'zhCN', '你和博学者阿斯塔洛·血誓谈过了吗？', 0);

DELETE FROM `quest_request_items` WHERE `ID` IN (109681, 109684);
INSERT INTO `quest_request_items` (`ID`, `EmoteOnComplete`, `EmoteOnIncomplete`, `CompletionText`, `VerifiedBuild`) VALUES 
(109681, 1, 0, NULL, 12340),
(109684, 1, 0, 'Have you spoken with Magister Astalor Bloodsworn?', 12340);

DELETE FROM `quest_poi` WHERE `QuestID` IN (109681, 109684);
INSERT INTO `quest_poi` (`QuestID`, `id`, `ObjectiveIndex`, `MapID`, `WorldMapAreaId`, `Floor`, `Priority`, `Flags`, `VerifiedBuild`) VALUES 
(109681, 0, -1, 530, 462, 0, 0, 1, 0),
(109684, 0, -1, 530, 462, 0, 0, 1, 0),
(109684, 1, 4, 530, 462, 0, 0, 1, 0);

DELETE FROM `quest_poi_points` WHERE `QuestID` IN (109681, 109684);
INSERT INTO `quest_poi_points` (`QuestID`, `Idx1`, `Idx2`, `X`, `Y`, `VerifiedBuild`) VALUES 
(109681, 0, 0, 9861, -7516, 0),
(109684, 0, 0, 9870, -7482, 0),
(109684, 1, 0, 9848, -7527, 0),
(109684, 1, 1, 9854, -7527, 0),
(109684, 1, 2, 9857, -7523, 0),
(109684, 1, 3, 9845, -7523, 0);

DELETE FROM `quest_offer_reward` WHERE `ID` IN (109681, 109684);
INSERT INTO `quest_offer_reward` (`ID`, `Emote1`, `Emote2`, `Emote3`, `Emote4`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `EmoteDelay4`, `RewardText`, `VerifiedBuild`) VALUES 
(109681, 0, 0, 0, 0, 0, 0, 0, 0, 'Welcome, young $c.$B$BThe power of the Blood Knights is taken from a being of immense power.$B$B<The magister gestures to the large, captive being in the center of the room.>$B$BIsn\'t it magnificent? \'Twas a gift from our beloved Prince Kael\'thas, and it is the foundation of the Blood Knights\' mastery of the Light. This creature begrudges us its power, so we have devised a method for claiming it on our own terms.', 12340),
(109684, 0, 0, 0, 0, 0, 0, 0, 0, 'Well done, $N. The powers granted by the Light will never come \'naturally\' to the Blood Knights, but we are not so naive as to be thwarted by the will of a single being, however powerful.$B$BOur mastery of the arcane has unlocked this path and these powers for you, initiate. Few have the stomach or the aptitude to wield them, but I know you will not disappoint the order.', 12340);

DELETE FROM `quest_offer_reward_locale` WHERE `ID` IN (109681, 109684);
INSERT INTO `quest_offer_reward_locale` (`ID`, `locale`, `RewardText`, `VerifiedBuild`) VALUES 
(109681, 'deDE', 'Willkommen, junger $C.$B$BAls der Orden gegründet wurde, machte uns Kael\'thas einen gefangenen Naaru zum Geschenk. Dieses Wesen besteht aus genau dem Licht, das wir beherrschen. Mithilfe unserer überragenden magischen Fähigkeiten lernten wir, wie man es kontrolliert und unterwirft, damit sich die Blutritter seiner Energie bedienen können.$B$BDoch Kael\'thas wurde von seiner eigenen Machtgier übermannt und verbündete sich mit unseren Feinden. Seine niederträchtigen Anhänger griffen uns an, nahmen den Naaru und schnitten uns von der Energiequelle ab. Unser Orden erlebt dunkle Zeiten, $N.', 18019),
(109681, 'esES', '$gBienvenido:Bienvenida;, joven $n.$B$BEl poder de los Caballeros de Sangre se toma de un ser de inmenso poder.$B$B<El magister señala al gran ser cautivo que está en el centro de la habitación.>$B$B¿No es magnífico? Fue un regalo de nuestro amado Príncipe Kael\'thas, y es la base del dominio de la Luz de los Caballeros de Sangre. Esta criatura nos limita su poder, por lo que hemos ideado un método para reclamarlo en nuestros propios términos.', 0),
(109681, 'esMX', '$gBienvenido:Bienvenida;, joven $n.$B$BEl poder de los Caballeros de Sangre se toma de un ser de inmenso poder.$B$B<El magister señala al gran ser cautivo que está en el centro de la habitación.>$B$B¿No es magnífico? Fue un regalo de nuestro amado Príncipe Kael\'thas, y es la base del dominio de la Luz de los Caballeros de Sangre. Esta criatura nos limita su poder, por lo que hemos ideado un método para reclamarlo en nuestros propios términos.', 0),
(109681, 'ruRU', 'Добро пожаловать, молодой $C. $B$BСила Рыцарей Крови взята у существа огромной силы. $B$B<Магистр указывает на большое пленное существо в центре комнаты.>$B$BРазве это не великолепно? Это подарок от нашего любимого принца Кель\'таса, и это основа мастерства Рыцарей крови Света. Это существо завидует нам своей мощью, поэтому мы разработали способ получить ее на своих условиях.', 0),
(109681, 'zhCN', '欢迎，年轻的$C。$B$B在骑士团刚成立时，凯尔萨斯送给我们一只被禁锢的纳鲁，一只由我们所使用的圣光所构成的生物。通过我们高超的魔法技巧，我们学会如何控制并且使它服从，好让血骑士能从它身上吸取能量。$B$B凯尔萨斯自己对力量的渴望让他自己痛苦万分，而他居然与我们的敌人联手。他邪恶的手下攻击我们，夺走了纳鲁，斩断了我们的能量来源。这是骑士团的黑暗时期，$N。', 0),
(109684, 'deDE', 'Gut gemacht, $N. Die vom Licht gewährten Kräfte sind niemals auf \'natürlichem\' Wege zu den Blutrittern gekommen, aber wir sind nicht so willensschwach, um unseren Weg von der Natur diktieren zu lassen.$B$BUnsere Beherrschung des Arkanen hat uns einen Pfad durch diese rauen Zeiten eröffnet. Die Kräfte fließen nicht mehr frei in diesen Hallen, doch sie sind da, für die hartnäckigen und willensstarken. Nur wenige sind heutzutage mutig genug, oder verfügen über die Begabung, sie zu meistern, aber ich weiß, dass Ihr den Orden nicht enttäuschen werdet.', 18019),
(109684, 'esES', 'Bien hecho, $n. Los poderes otorgados por la Luz nunca llegarán \'naturalmente\' a los Caballeros de Sangre, pero no somos tan ingenuos como para ser frustrados por la voluntad de un solo ser, por poderoso que sea.$B$BNuestro dominio de lo arcano ha desbloqueado este camino y estos poderes para ti, $giniciado:iniciada;. Pocos tienen el estómago o la capacidad para manejarlos, pero sé que no defraudarás a la orden.', 0),
(109684, 'esMX', 'Bien hecho, $n. Los poderes otorgados por la Luz nunca llegarán \'naturalmente\' a los Caballeros de Sangre, pero no somos tan ingenuos como para ser frustrados por la voluntad de un solo ser, por poderoso que sea.$B$BNuestro dominio de lo arcano ha desbloqueado este camino y estos poderes para ti, $giniciado:iniciada;. Pocos tienen el estómago o la capacidad para manejarlos, pero sé que no defraudarás a la orden.', 0),
(109684, 'ruRU', 'Неплохо, $N. Силы, дарованные светом, никогда не будут \'естественными\'для Рыцарей Крови. У немногих хватит смелости или способностей владеть ими, но я знаю, что вы не разочаруете нас.', 0),
(109684, 'zhCN', '做得好，$N。圣光所给予的力量永远不会是血骑士与生俱来的，但我们也不会软弱到任由命运来宰制我们。$B$B我们对秘法专精提供了这条道路，来帮助我们度过这段困难的时光。力量不再自由地弥漫于这些殿堂之间，但我们还是有坚定而强壮的意志力。如今很少有人有这样的兴趣与天赋来钻研此道，但我相信你不会让骑士团失望的。', 0);

DELETE FROM `creature_queststarter` WHERE `quest` IN (109681, 109684);
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES 
(17717, 109681),
(17718, 109684);

DELETE FROM `creature_questender` WHERE `quest` IN (109681, 109684);
INSERT INTO `creature_questender` (`id`, `quest`) VALUES 
(17717, 109684),
(17718, 109681);

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 19 AND `ConditionTypeOrReference` = 8 AND `SourceEntry` IN (9681, 9684, 109681, 109684);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(19, 0,   9681, 0, 0, 8, 0, 66012, 0, 0, 0, 0, 0, '', 'WotLK Blood Knight quest only available after TBC stage 4'),
(19, 0,   9684, 0, 0, 8, 0, 66012, 0, 0, 0, 0, 0, '', 'WotLK Blood Knight quest only available after TBC stage 4'),
(19, 0, 109681, 0, 0, 8, 0, 66012, 0, 0, 1, 0, 0, '', 'pre-2.4 Blood Knight quest only available before TBC stage 5'),
(19, 0, 109684, 0, 0, 8, 0, 66012, 0, 0, 1, 0, 0, '', 'pre-2.4 Blood Knight quest only available before TBC stage 5');

-- Blood Elf Magisters
UPDATE `creature` SET `position_x` = 9866.592, `position_y` = -7522.500, `position_z` = -0.49, `orientation` = 3.1878 WHERE `guid` = 96982;
UPDATE `creature` SET `position_x` = 9860.192, `position_y` = -7504.500, `position_z` = -4.00, `orientation` = 4.2694 WHERE `guid` = 96980;
UPDATE `creature` SET `position_x` = 9850.753, `position_y` = -7537.921, `position_z` = -0.49, `orientation` = 1.5488 WHERE `guid` = 96981;
UPDATE `creature` SET `position_x` = 9835.078, `position_y` = -7522.500, `position_z` = -0.49, `orientation` = 0.0015 WHERE `guid` = 96979;
UPDATE `creature` SET `position_x` = 9841.158, `position_y` = -7504.500, `position_z` = -4.00, `orientation` = 5.3532 WHERE `guid` = 96978;

UPDATE `creature_addon` SET `bytes1` = 0, `bytes2` = 0, `emote` = 0 WHERE `guid` IN (96978, 96979, 96980, 96981, 96982);

UPDATE `creature_template` SET `AIName` = 'SmartAI' WHERE `entry` = 17845;
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (-96982, -96980, -96981, -96979, -96978) AND `source_type` = 0 AND `action_param1` = 31324;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, 
`event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, 
`action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, 
`target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
--
(-96982, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 0, 0, 0, 11, 31324, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Blood Elf Magister - Out of Combat - Cast Drain Naaru Channel'),
(-96980, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 0, 0, 0, 11, 31324, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Blood Elf Magister - Out of Combat - Cast Drain Naaru Channel'),
(-96981, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 0, 0, 0, 11, 31324, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Blood Elf Magister - Out of Combat - Cast Drain Naaru Channel'),
(-96979, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 0, 0, 0, 11, 31324, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Blood Elf Magister - Out of Combat - Cast Drain Naaru Channel'),
(-96978, 0, 0, 0, 1, 0, 100, 0, 1000, 1000, 0, 0, 0, 11, 31324, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Blood Elf Magister - Out of Combat - Cast Drain Naaru Channel');

DELETE FROM `broadcast_text` WHERE `ID` = 14807;
INSERT INTO `broadcast_text` (`ID`, `LanguageID`, `MaleText`, `FemaleText`, `EmoteID1`, `EmoteID2`, `EmoteID3`, `EmoteDelay1`, `EmoteDelay2`, `EmoteDelay3`, `SoundEntriesId`, `EmotesID`, `Flags`, `VerifiedBuild`) VALUES
(14807, 1, 'Glory to the Sun King!', 'Glory to the Sun King!', 0, 0, 0, 0, 0, 0, 0, 0, 1, 18019);

DELETE FROM `creature_text` WHERE `CreatureID` = 16222 AND `GroupID` = 0 AND `ID` = 0;
INSERT INTO `creature_text` (`CreatureID`, `GroupID`, `ID`, `Text`, `Type`, `Language`, `Probability`, `Emote`, `Duration`, `Sound`, `BroadcastTextId`, `TextRange`, `comment`) VALUES
(16222, 0, 0, 'Glory to the Sun King!', 12, 1, 100, 0, 0, 0, 14807, 0, 'Silvermoon City Guardian');

DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 13 AND `SourceGroup` = 1 AND `SourceEntry` = 31324;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`,
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES
(13, 1, 31324, 0, 0, 31, 0, 3, 17544, 0, 0, 0, 0, "", "Naaru Drain Effect Condition"); -- set M'uru as target for drain effect spell

UPDATE `conditions` SET `ConditionValue2` = 17544 WHERE `SourceTypeOrReferenceId` = 13 AND `SourceEntry` = 45351;

-- Restore Lady Liadrin and move Magister Astalor Bloodsworn a bit.
DELETE FROM `creature` WHERE `guid` IN (96976, 617076);
INSERT INTO `creature` (`guid`, `id1`, `id2`, `id3`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, 
`wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `dynamicflags`, `ScriptName`, `VerifiedBuild`, `CreateObject`, `Comment`) VALUES 
(96976,  17718, 0, 0, 530, 0, 0, 1, 1, 0, 9859.45, -7519.19, -8.06573, 1.69273, 180, 0, 0, 3484, 5751, 0, 0, 0, 0, '', 0, 0, NULL),        -- Magister Astalor Bloodsworn
(617076, 17076, 0, 0, 530, 0, 0, 1, 1, 0, 9862.12, -7518.44, -8.06524, 1.86945, 300, 0, 0, 1214000, 33870, 0, 0, 0, 0, '', NULL, 0, NULL); -- Lady Liadrin

UPDATE `creature_template` SET `gossip_menu_id` = 0 WHERE `entry` = 17718; -- was 9142

-- Hide 'Lor'Themar's gossip menu until WotLK
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId` = 14 AND `SourceGroup` = 7632;
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, 
`ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(14, 7632, 9315, 0, 0, 8, 0, 66013, 0, 0, 0, 0, 0, '', 'Lor\'Themar - only show Gossip Menu after player reaches WotLK');

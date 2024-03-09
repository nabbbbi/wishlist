-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: games
-- ------------------------------------------------------
-- Server version	10.11.6-MariaDB-0+deb12u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary table structure for view `al`
--

DROP TABLE IF EXISTS `al`;
/*!50001 DROP VIEW IF EXISTS `al`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `al` AS SELECT
 1 AS `id`,
  1 AS `name`,
  1 AS `genre`,
  1 AS `type`,
  1 AS `platform`,
  1 AS `date`,
  1 AS `rate`,
  1 AS `val` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `developer`
--

DROP TABLE IF EXISTS `developer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `developer` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `staff` int(11) DEFAULT NULL,
  `engine` varchar(100) DEFAULT NULL,
  `founded` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developer`
--

LOCK TABLES `developer` WRITE;
/*!40000 ALTER TABLE `developer` DISABLE KEYS */;
INSERT INTO `developer` VALUES
(1,'Square Enix',4712,'Luminous','2003-04-01'),
(2,'Rockstar',2000,'Rage','1998-12-01');
/*!40000 ALTER TABLE `developer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `genre` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `platform` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `val` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES
(1,'Elden Ring','souls like','original','pc','2022-02-25',96,5),
(2,'Red Dead Redemption 2','open world','original','pc','2018-10-26',97,4),
(3,'Diablo','rpg','original','pc','1997-01-03',94,3),
(4,'Vampire: The Masquerade - Bloodlines','rpg','original','pc','2004-11-16',80,3),
(5,'TES III: Morrowind','rpg','original','pc','2002-05-01',89,3),
(6,'TES IV: Oblivion','rpg','original','pc','2006-03-20',94,3),
(7,'Fallout: New Vegas','rpg','original','pc','2010-10-19',84,3),
(8,'Lara Croft and the Guardian of Light','adventure','original','pc','2010-08-18',85,2),
(9,'Fallout 2','rpg','original','pc','1998-10-29',86,2),
(10,'Amnesia: The Dark Descent','horror','original','pc','2010-09-08',85,3),
(11,'Triangle Strategy','jrpg','original','switch','2022-03-04',82,3),
(12,'Shin Megami Tensei III: Nocturne','jrpg','remaster','switch','2003-02-20',82,4),
(13,'Sekiro: Shadows Die Twice','souls like','original','pc','2019-03-22',91,5),
(14,'God of War (2018)','slasher','original','pc','2018-04-20',94,5),
(15,'Devil May Cry 5','slasher','original','pc','2019-03-08',89,5),
(16,'Rule of Rose','horror','original','ps2','2006-01-19',59,4),
(17,'Folklore','rpg','original','ps3','2007-06-21',75,3),
(18,'Halo Infinite','shooter','original','pc','2021-12-08',87,4),
(19,'PUBG: Battlegrounds','f2p','original','pc','2017-12-20',86,3),
(20,'Call of Duty: Warzone','f2p','original','pc','2020-03-10',80,3),
(21,'Resident Evil 2','survival horror','remake','pc','2019-01-25',93,5),
(22,'Resident Evil 3','survival horror','remake','pc','2020-04-03',84,5),
(23,'Wanted: Dead','slasher','original','pc','2023-02-14',61,3),
(24,'Metal Gear Survive','open world','original','pc','2018-02-20',62,3),
(25,'Persona 5','jrpg','original','pc','2016-09-15',95,5),
(27,'Gothic','rpg','original','pc','2001-03-15',81,2),
(28,'KOTOR 2: The Sith Lords','rpg','original','pc','2004-12-06',86,3),
(29,'Metal Gear Rising: Revengeance','slasher','original','pc','2013-02-19',83,4),
(30,'Dying Light 2 Stay Human','survival horror','original','pc','2022-02-04',77,4),
(31,'Dying Light','survival horror','original','pc','2015-01-27',75,3),
(32,'Wasteland','rpg','remaster','pc','1988-01-02',62,3),
(33,'Wasteland 2','rpg','remaster','pc','2018-09-13',81,3),
(34,'Fable','rpg','remaster','pc','2004-09-14',85,3),
(35,'Fable 2','rpg','original','xbox360','2008-10-21',89,3),
(36,'Pillars of Eternity','rpg','original','pc','2015-03-26',89,2),
(37,'Pillars of Eternity II: Deadfire','rpg','original','pc','2018-05-08',88,3),
(38,'Black Mesa','shooter','original','pc','2020-03-06',86,4),
(39,'Rise of the Tomb Raider','adventure','original','pc','2015-11-10',88,4),
(40,'Shadow of the Tomb Raider','adventure','original','pc','2018-03-15',82,4),
(41,'The Legent of Heroes: Trails in the Sky SC','jrpg','original','psp','2006-03-09',80,4),
(42,'The Legent of Heroes: Trails in the Sky the 3rd','jrpg','original','psp','2007-06-28',83,4),
(43,'Uncharted: The Lost Legacy','adventure','original','pc','2017-08-22',84,3),
(44,'Uncharted 4: A Thief\'s End','adventure','original','pc','2016-05-10',93,4),
(45,'The Last of Us','survival horror','remake','pc','2013-06-14',95,5),
(46,'The Last of Us Part II','survival horror','original','ps4','2020-05-19',93,3),
(47,'Bloodborne','souls like','original','ps4','2015-03-24',92,5),
(48,'Marvel\'s Spider-Man','open world','original','pc','2018-09-07',87,4),
(49,'Marvel\'s Spider-Man: Miles Morales','open world','original','ps4','2020-11-12',85,4),
(50,'The Suffering','horror','original','pc','2004-03-08',80,2),
(51,'Borderlands 3','shooter','original','pc','2019-09-13',91,4),
(52,'Tiny Tina\'s Wonderlands','shooter','original','pc','2022-03-25',80,3),
(53,'Metroid Dread','metroidvania','original','switch','2021-10-08',88,4),
(54,'Deadly Premonition','survival horror','original','pc','2010-02-23',70,3),
(55,'Deadly Premonition 2','survival horror','original','switch','2020-07-10',56,3),
(56,'Metro Exodus','shooter','original','pc','2019-02-15',85,4),
(57,'Monster Hunter: World','open world','original','pc','2018-01-26',90,4),
(58,'Monster Hunter Rise','open world','original','pc','2021-03-26',88,3),
(59,'Monster Hunter World: Iceborne','open world','original','pc','2019-09-06',90,4),
(60,'Dead Rising','survival horror','remaster','pc','2006-08-08',85,3),
(61,'Baldur\'s Gate','rpg','remaster','pc','1998-12-21',91,4),
(62,'Baldur\'s Gate: Dark Alliance','rpg','remaster','pc','2001-12-04',87,4),
(63,'Baldur\'s Gate: Dark Alliance II','rpg','original','ps2','2004-01-20',78,3),
(64,'Baldur\'s Gate II','rpg','remaster','pc','2000-09-21',95,4),
(65,'Suicide Squad','adventure','original','pc','2024-02-02',61,5),
(66,'Ys: The Oath in Felghana','jrpg','remake','psp','2005-06-30',80,3),
(67,'Wasteland 3','rpg','original','pc','2020-08-28',85,4),
(68,'Undertale','rpg','original','pc','2015-09-15',93,4),
(69,'Factorio','strategy','original','pc','2020-07-14',90,3),
(70,'Civilization VI','strategy','original','pc','2016-10-21',92,4),
(71,'Absolver','online','original','pc','2017-08-29',75,3),
(72,'Final Fantasy XII','jrpg','original','pc','2006-03-16',92,5),
(73,'Darksiders III','slasher','original','pc','2018-11-27',70,4),
(74,'Darksiders II','slasher','original','pc','2012-08-14',85,4),
(75,'Darksiders Genesis','slasher','original','pc','2019-12-05',77,4),
(76,'GreedFall','rpg','original','pc','2019-09-10',78,3),
(77,'Journey','adventure','original','pc','2012-03-13',92,4),
(78,'Yakuza Kiwami','open world','remake','pc','2005-12-08',75,3),
(79,'Yakuza Kiwami 2','open world','remake','pc','2006-12-07',77,3),
(80,'Yakuza 0','open world','original','pc','2015-03-12',90,3),
(81,'Yakuza 3','open world','remaster','pc','2009-02-26',79,3),
(82,'Yakuza 4','open world','remaster','pc','2010-03-18',78,3),
(83,'Yakuza 5','open world','original','pc','2012-12-05',83,3),
(84,'Yakuza 6: The Song of Life','open world','original','pc','2016-12-08',87,4),
(85,'Yakuza: Like a Dragon','open world','original','pc','2020-01-16',89,4),
(86,'Code Vein','souls like','original','pc','2019-09-27',75,3),
(87,'Left Alive','stealth','original','pc','2019-02-28',40,3),
(88,'Shenmue II','adventure','original','pc','2001-09-06',88,3),
(89,'Shenmue III','adventure','original','pc','2019-11-19',69,2),
(90,'Roque Galaxy','jrpg','original','ps2','2005-12-08',83,3),
(91,'Assassin\'s Creed III','open world','remaster','pc','2012-10-30',85,2),
(92,'Assassin\'s Creed III: Liberation','open world','remaster','pc','2012-10-30',70,2),
(93,'Assassin\'s Creed IV: Black Flag','open world','original','pc','2013-10-29',88,4),
(94,'Assassin\'s Creed Rogue','open world','original','pc','2014-11-11',74,3),
(95,'Assassin\'s Creed Unity','open world','original','pc','2014-11-11',72,3),
(96,'Assassin\'s Creed Syndicate','open world','original','pc','2015-10-23',78,3),
(97,'Assassin\'s Creed Origins','open world','original','pc','2017-10-27',85,4),
(98,'Assassin\'s Creed Valhalla','open world','original','pc','2020-11-10',84,5),
(99,'Catherine','puzzle','remaster','pc','2011-02-17',82,4),
(100,'Portal 2','puzzle','original','pc','2011-04-18',95,4),
(101,'Drakengard','jrpg','original','ps2','2003-09-11',63,4),
(102,'Pandora Tower','jrpg','original','wii','2011-05-26',73,4),
(103,'Detroid: Become Human','interactive','original','pc','2018-05-25',80,5),
(104,'Amnesia: Rebirth','interactive','remake','pc','2020-10-20',80,5),
(105,'Halo: Combat Evolved','shooter','remaster','pc','2001-11-15',97,5),
(106,'Halo 2','shooter','remaster','pc','2004-11-09',95,5),
(107,'Halo 3','shooter','remaster','pc','2007-09-25',94,5),
(108,'Halo 4','shooter','original','pc','2012-11-06',87,4),
(109,'Halo 5','shooter','original','xboxone','2015-10-27',84,3),
(110,'Castlevania: Symphony of the Night','metroidvania','original','psp','1997-03-20',93,3),
(111,'Mafia','open world','remake','pc','2002-08-29',88,5),
(112,'Kingdoms of Amalur: Reckoning','rpg','remake','pc','2012-02-07',81,4),
(113,'Too Human','slasher','original','xbox360','2008-08-19',65,4),
(114,'Ori and the Will of the Wisps','metroidvania','original','pc','2020-03-11',93,3),
(115,'Gears of War 3','shooter','original','xbox360','2011-09-20',91,5),
(116,'Gears of War 4','shooter','original','pc','2016-10-11',86,4),
(117,'Gears 5','shooter','original','pc','2019-09-10',84,5),
(118,'Hades','adventure','original','pc','2020-09-17',93,5),
(119,'Fallout 76','online','original','pc','2018-11-14',53,5),
(120,'The Medium','horror','original','pc','2021-01-28',75,5),
(121,'Persona 5 Strikers','slasher','original','pc','2020-02-20',83,4),
(122,'Sleeping Dogs','open world','original','pc','2012-08-14',83,5),
(123,'Life Is Strange','interactive','original','pc','2015-01-30',85,4),
(124,'Might & Magic Heroes VII','strategy','original','pc','2015-09-29',67,4),
(125,'Life is Strange: Before the Storm','interactive','original','pc','2017-08-31',82,4),
(126,'Life if Strange 2','interactive','original','pc','2018-09-27',79,4),
(127,'Life if Strange: True Colors','interactive','original','pc','2021-09-10',84,4),
(128,'The Wolf Among Us','interactive','original','pc','2013-10-14',83,4),
(129,'Ghostwire: Tokio','survival horror','original','pc','2022-03-25',77,5),
(130,'Rain','adventure','original','ps3','2013-10-01',72,3),
(131,'Metroid: Zero Mission','metroidvania','remake','gameboy','1986-08-06',63,3),
(132,'Metroid II: Return of Samus','metroidvania','remake','gameboy','1992-01-21',85,3),
(133,'Super Metroid','metroidvania','original','snes','1994-03-19',95,3),
(134,'Metroid Prime','shooter','original','gamecube','2002-11-17',97,4),
(135,'Metroid Prime 2: Echoes','shooter','original','gamecube','2004-11-15',92,4),
(136,'Metroid Prime 3: Corruption','shooter','original','wii','2007-08-27',90,4),
(137,'Metroid: Other M','shooter','original','wii','2010-08-31',79,3),
(138,'Tyranny','rpg','original','pc','2016-11-10',80,3),
(139,'Call of Cthulhu','survival horror','original','pc','2018-10-30',68,4),
(140,'The Outer Worlds','rpg','original','pc','2019-10-25',85,5),
(141,'Scarlet Nexus','slasher','original','pc','2021-06-25',80,3),
(142,'Doom','shooter','original','pc','2016-03-13',87,5),
(143,'Doom Eternal','shooter','original','pc','2020-03-20',88,5),
(144,'Control','adventure','original','pc','2019-08-27',87,5),
(145,'Valheim','souls like','original','pc','2021-02-02',90,3),
(146,'Trials of Mana','jrpg','remake','pc','1995-09-30',74,3),
(147,'Enderal','rpg','original','pc','2016-07-03',89,5),
(148,'Nier','slasher','remake','pc','2010-04-22',83,5),
(149,'Star Wars Jedi: Fallen Order','souls like','original','pc','2019-11-15',81,5),
(150,'Legend of Mana','jrpg','original','pc','1999-08-15',72,4),
(151,'The Dark Pictures Anthology: House of Ashes','horror','original','pc','2021-10-22',74,5),
(152,'The Dark Pictures Anthology: Man of Medan','horror','original','pc','2019-08-30',75,5),
(153,'Valkyrie Profile','jrpg','original','psp','1999-12-22',81,5),
(154,'Valkyrie Profile 2: Silmeria','jrpg','original','ps2','2006-06-22',84,5),
(155,'Valkyrie Profile: Covenant of the Plume','jrpg','original','ds','2008-11-01',74,3),
(156,'Disciples II','strategy','original','pc','2002-01-22',84,3),
(157,'Disciples III: Renaissance','strategy','original','pc','2009-12-11',56,3),
(158,'Disciples: Liberation','strategy','original','pc','2021-11-18',72,4),
(159,'Dragon Quest XI','jrpg','original','pc','2017-07-29',92,5),
(160,'Forza Horizon 5','races','original','pc','2021-11-09',92,5),
(161,'Nioh 2','souls like','original','pc','2020-03-12',85,4),
(162,'Sifu','souls like','original','pc','2022-02-08',80,3),
(163,'Grand Theft Auto V','open world','original','pc','2013-09-17',97,3),
(164,'Mass Effect: Legendary Edition','rpg','remaster','pc','2020-11-07',90,5),
(165,'Syberia 3','adventure','original','pc','2017-04-21',51,4),
(166,'Syberia: The World Before','adventure','original','pc','2022-03-18',81,4),
(167,'Ninja Gaiden','slasher','remaster','pc','2004-03-02',94,4),
(168,'Ninja Gaiden II','slasher','remaster','pc','2008-06-03',81,4),
(169,'Ninja Gaiden III','slasher','remaster','pc','2012-03-20',58,3),
(170,'Hyrule Warriors: Age of Calamity','slasher','original','switch','2020-11-20',78,4),
(171,'Ys I & II','jrpg','remake','psp','1989-12-21',63,4),
(172,'The Legend of Zelda: Ocarina of Time','adventure','original','gamecube','1998-11-21',99,4),
(173,'The Legend of Zelda: Link\'s Awakening','adventure','remake','switch','1993-06-06',91,3),
(174,'Anno 1800','strategy','original','pc','2019-04-16',81,3),
(175,'Neverwinter Nights','rpg','remaster','pc','2002-06-18',91,4),
(176,'Neverwinter Nights 2','rpg','remaster','pc','2006-10-31',82,4),
(177,'Diablo II','rpg','remake','pc','2000-06-29',89,4),
(178,'Batman: The Telltale Series','interactive','original','pc','2016-08-02',72,3),
(179,'Batman: The Enemy Within','interactive','original','pc','2017-08-08',80,3),
(180,'Call of Duty: Black Ops II','shooter','original','pc','2012-11-13',83,3),
(181,'Clock Tower 3','survival horror','original','pc','2002-12-12',69,3),
(182,'Crash Bandicoot N. Sane Trilogy','adventure','remake','pc','2017-06-30',80,2),
(183,'Crash Bandicoot 4: It\'s About Time','adventure','original','pc','2020-10-02',85,3),
(184,'Devil May Cry 2','slasher','remaster','pc','2003-01-25',68,3),
(185,'Eternal Darkness','survival horror','original','gamecube','2002-06-24',92,4),
(186,'Fatal Frame','survival horror','original','ps2','2001-12-13',77,4),
(187,'Fatal Frame II: Crimson Butterfly','survival horror','remake','wii','2003-11-27',84,4),
(188,'Fatal Frame III: The Tormented','survival horror','original','ps2','2005-11-05',78,4),
(189,'Fatal Frame: Mask of the Lunar Eclipse','survival horror','original','wii','2008-07-31',67,3),
(190,'Fatal Frame: Maiden of Black Water','survival horror','original','switch','2014-09-27',67,3),
(191,'Final Fantasy 1','jrpg','remaster','psp','1987-12-18',79,5),
(192,'Final Fantasy II','jrpg','remaster','psp','1988-12-17',77,5),
(193,'Fire Emblem: Three Houses','jrpg','original','switch','2019-07-26',89,4),
(194,'Forbidden Siren 2','horror','original','ps2','2006-02-09',74,5),
(195,'Siren: Blood Curse','horror','remake','ps3','2008-07-24',78,5),
(196,'God of War','slasher','original','ps2','2005-03-22',94,3),
(197,'God of War II','slasher','original','ps2','2007-03-13',93,3),
(198,'God of War: Chains of Olympus','slasher','original','psp','2008-03-04',91,3),
(199,'God of War III','slasher','original','ps3','2010-03-16',92,3),
(200,'God of War: Ghost of Sparta','slasher','original','psp','2010-11-02',86,3),
(201,'God of War: Ascension','slasher','original','ps3','2013-03-12',80,3),
(202,'Godfall','slasher','original','pc','2020-11-12',61,3),
(203,'Halo 3: ODST','shooter','remaster','pc','2009-09-22',83,5),
(204,'Halo 3: Reach','shooter','remaster','pc','2010-09-14',91,5),
(205,'Haunting Ground','survival horror','original','ps2','2005-04-21',67,4),
(206,'Hitman: Absolution','stealth','original','pc','2012-11-20',83,3),
(207,'Hitman','stealth','original','pc','2016-03-11',85,4),
(208,'Hitman 2','stealth','original','pc','2018-11-13',84,4),
(209,'Hitman 3','stealth','original','pc','2021-01-20',87,4),
(210,'Ico','adventure','original','ps2','2001-09-24',90,3),
(211,'Immortals Fenyx Rising','adventure','original','pc','2020-12-03',81,3),
(212,'Infamous','open world','original','ps3','2009-05-26',85,4),
(213,'Infamous 2','open world','original','ps3','2011-06-07',83,4),
(214,'Kingdom Come: Deliverance','rpg','original','pc','2018-02-13',76,4),
(215,'Little Nightmares','adventure','original','pc','2017-04-28',83,3),
(216,'Terranigma','jrpg','original','snes','1995-10-20',74,3),
(217,'Metal Gear','stealth','original','snes','1987-07-13',75,4),
(218,'Mortal Shell','souls like','original','pc','2020-08-18',76,4),
(219,'Onimusha: Warlords','survival horror','original','ps2','2001-01-25',86,4),
(220,'Silent Hill: Downpour','horror','original','ps3','2012-03-13',68,5),
(221,'Sinking Island','adventure','original','pc','2007-10-04',68,3),
(222,'Subnautica','adventure','original','pc','2018-01-23',87,2),
(223,'Lufia II: Rise of the Sinistrals','jrpg','original','snes','1995-02-24',80,3),
(224,'The Sinking City','survival horror','original','pc','2019-06-27',77,2),
(225,'Titan Quest','rpg','remake','pc','2006-06-26',80,3),
(226,'Twin Mirror','adventure','original','pc','2020-12-01',65,4),
(227,'Valkyria Chronicles','strategy','original','pc','2008-04-24',86,3),
(228,'Xenosaga Episode I','jrpg','original','ps2','2002-02-28',83,4),
(229,'Tormented Souls','survival horror','original','pc','2021-08-27',94,4),
(230,'Alice: Madness Returns','slasher','original','pc','2011-06-14',75,4),
(231,'Ogre Battle 64','jrpg','original','n64','1999-07-14',82,3),
(232,'Astral Chain','slasher','original','switch','2019-08-30',87,3),
(233,'The Last Guardian','adventure','original','ps4','2016-12-06',82,4),
(234,'The Last Story','jrpg','original','wii','2011-01-27',80,5),
(235,'Ni no Kuni: Wrath of the White Witch','jrpg','original','pc','2011-11-17',86,2),
(236,'Condemned 2: Bloodshot','horror','original','ps3','2008-03-11',82,2),
(237,'Shadow of the Colossus','adventure','original','ps2','2005-10-18',91,5),
(238,'Deus Ex','stealth','original','pc','2000-06-23',90,3),
(239,'Digital Devil Saga','jrpg','original','ps2','2004-07-15',82,4),
(240,'Dragon Quest VIII','jrpg','original','ps2','2004-11-27',89,4),
(241,'Shadow Hearts','jrpg','original','ps2','2001-06-28',73,4),
(242,'Shin Megami Tensei V','jrpg','original','switch','2021-11-11',84,5),
(243,'Final Fantasy VII Remake','slasher','remake','pc','2020-04-10',89,5),
(244,'Ys IX: Monstrum Nox','jrpg','original','switch','2019-09-26',80,3),
(245,'.hack//G.U.','jrpg','remaster','switch','2006-05-18',69,3),
(246,'Arc the Lad: Twilight of the Spirits','jrpg','original','ps2','2003-03-20',72,3),
(247,'Resonance of Fate','jrpg','original','pc','2010-01-28',74,4),
(248,'Xenoblade Chronicles','open world','remaster','switch','2010-06-10',92,3),
(249,'Xenoblade Chronicles 2','open world','original','switch','2017-12-01',83,3),
(250,'Pathfinder: Kingmaker','rpg','original','pc','2018-09-25',74,4),
(251,'Pathfinder: Wrath of the Righteous','rpg','original','pc','2021-09-02',83,4),
(252,'Planescape: Torment','rpg','original','pc','1999-12-12',91,3),
(253,'Kirby and the Forgotten Land','adventure','original','switch','2022-03-25',85,2),
(254,'Enslaved: Odyssey to the West','slasher','original','pc','2010-10-05',82,3),
(255,'NeverDead','slasher','original','ps3','2012-01-31',52,3),
(256,'Cold fear','survival horror','original','pc','2005-03-15',71,4),
(257,'Shin Megami Tensei IV','jrpg','original','3ds','2013-05-23',83,2),
(258,'The Legend of Heroes: Trails in the Sky','jrpg','original','psp','2004-06-24',85,4),
(259,'13 Sentinels: Aegis Rim','jrpg','original','switch','2019-11-28',88,3),
(260,'Stranger of Paradise: Final Fantasy Origin','slasher','original','pc','2022-03-18',72,5),
(261,'Lego Star Wars: The Skywalker Saga','adventure','original','pc','2022-04-05',82,3),
(262,'Fate Extra','jrpg','original','psp','2010-07-22',58,4),
(263,'A Plaque Tale: Innocence','stealth','original','pc','2019-04-14',83,4),
(264,'Brothers: A Tale of Two Sons','adventure','original','pc','2013-08-07',90,4),
(265,'King\'s Bounty: Armored Princess','strategy','original','pc','2009-04-10',82,3),
(266,'Total War: Three Kingdoms','strategy','original','pc','2019-05-23',85,2),
(267,'Total War: Warhammer III','strategy','original','pc','2022-02-17',86,3),
(268,'Monark','jrpg','original','pc','2021-10-14',73,3),
(269,'Final Fantasy Tactics','jrpg','original','ps1','1997-06-20',83,5),
(270,'Dragon Quest V','jrpg','remake','ps2','1992-09-17',90,3),
(271,'Suikoden II','jrpg','original','ps1','1998-12-17',82,3),
(272,'Mass Effect: Andromeda','rpg','original','pc','2017-03-21',76,2),
(273,'Baldurs Gate III','rpg','original','pc','2023-08-03',99,5),
(275,'Kena: Bridge of Spirits','slasher','original','pc','2021-09-21',83,3),
(276,'The Elder Scrolls V: Skyrim','rpg','remaster','pc','2011-11-11',96,4),
(277,'Murdered: Soul Suspected','adventure','original','pc','2014-06-03',59,2),
(278,'Lords of the Fallen','souls like','original','pc','2014-10-28',73,3),
(279,'Wolfenstein: The New Order','shooter','original','pc','2014-05-20',81,4),
(280,'Wolfenstein: The Old Blood','shooter','original','pc','2015-05-14',76,3),
(281,'Wolfenstein II: The New Colossus','shooter','original','pc','2017-10-27',88,4),
(282,'Resident Evil 4','survival horror','remake','pc','2005-01-11',96,5),
(283,'Watch Dogs','open world','original','pc','2014-05-27',80,4),
(284,'Watch Dogs 2','open world','original','pc','2016-11-15',82,4),
(285,'Watch Dogs: Legion','open world','original','pc','2020-11-10',76,4),
(286,'Far Cry 6','open world','original','pc','2021-10-07',79,4),
(287,'Gears of War: Judgement','shooter','original','xbox360','2013-03-19',79,3),
(288,'The Quarry','horror','original','pc','2022-03-17',79,2),
(289,'Jeanne Dark','jrpg','original','psp','2006-11-22',87,3),
(290,'Solasta: Crown of the Magister','rpg','original','pc','2021-05-27',77,3),
(291,'System Shock','shooter','remake','pc','1994-10-23',96,5),
(295,'Half-life: Alyx. Levitation','shooter','mod','pc','2020-05-15',93,5),
(296,'Fallout 4 (London)','rpg','mod','pc','2015-11-10',88,5),
(297,'Enderal: Forgotten stories','rpg','mod','pc','2021-03-19',89,3),
(298,'Tony Hawk\'s Pro Skater','open world','remake','pc','1999-09-29',94,2),
(299,'Fallout. The Frointier','rpg','mod','pc','2010-10-19',62,3),
(300,'Chernobylite','survival horror','original','pc','2022-04-21',82,4),
(301,'Lollipop Chainsaw','slasher','remake','pc','2012-06-12',70,3),
(302,'Overwatch','f2p','original','pc','2016-05-24',91,2),
(303,'Neon White','shooter','original','pc','2022-06-16',89,2),
(304,'Like a Dragon: Infinite Wealth','jrpg','original','pc','2024-01-26',92,5),
(305,'Half-life 2 RTX','shooter','mod','pc','2004-11-16',96,3),
(306,'Ys VIII: Lacrimosa of Dawn','jrpg','remaster','pc','2016-07-21',86,3),
(307,'Granblue Fantasy: Relink','jrpg','original','pc','2024-02-01',81,4),
(308,'Radiand Historia','jrpg','original','ds','2010-11-03',85,4),
(309,'Horizon Forbidden West','adventure','original','pc','2022-02-18',88,5),
(310,'Dragon Dogma 2','adventure','original','pc',NULL,NULL,5),
(311,'Shin megami tensei: Strange Journey','jrpg','original','ds','2009-10-08',80,4),
(312,'Bayonetta 3','slasher','original','switch','2022-10-28',86,5),
(313,'Front Mission','jrpg','remake','switch','1995-02-24',72,3),
(314,'The Legend of Zelda: Tears of the Kingdom','adventure','original','switch','2023-05-12',96,5),
(315,'Kuon','survival horror','original','ps2','2004-04-01',57,4);
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr_1 BEFORE INSERT ON games FOR EACH ROW BEGIN IF NEW.platform = 'pc' THEN INSERT INTO trigger_text VALUES ('Added new PC game!'); END IF; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr_2 BEFORE INSERT ON games FOR EACH ROW BEGIN IF NEW.platform = 'xbox360' THEN INSERT INTO trigger_text VALUES ('Added new XBOX 360 game!'); END IF; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr_3 BEFORE INSERT ON games FOR EACH ROW BEGIN IF NEW.platform = 'xbox' THEN INSERT INTO trigger_text VALUES ('Added new XBOX game!'); END IF; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr_4 BEFORE INSERT ON games FOR EACH ROW BEGIN IF NEW.platform = 'ps1' THEN INSERT INTO trigger_text VALUES ('Added new PLAY STATION 1 game!'); END IF; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr_5 BEFORE INSERT ON games FOR EACH ROW BEGIN IF NEW.platform = 'ps2' THEN INSERT INTO trigger_text VALUES ('Added new PLAY STATION 2 game!'); END IF; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr_6 BEFORE INSERT ON games FOR EACH ROW BEGIN IF NEW.platform = 'ps3' THEN INSERT INTO trigger_text VALUES ('Added new PLAY STATION 3 game!'); END IF; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr_7 BEFORE INSERT ON games FOR EACH ROW BEGIN IF NEW.platform = 'ps4' THEN INSERT INTO trigger_text VALUES ('Added new PLAY STATION 4 game!'); END IF; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr_8 BEFORE INSERT ON games FOR EACH ROW BEGIN IF NEW.platform = 'ps5' THEN INSERT INTO trigger_text VALUES ('Added new PLAY STATION 5 game!'); END IF; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr_9 BEFORE INSERT ON games FOR EACH ROW BEGIN IF NEW.platform = 'dreamcast' THEN INSERT INTO trigger_text VALUES ('Added new SEGA Dreamcast game!'); END IF; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr_10 BEFORE INSERT ON games FOR EACH ROW BEGIN IF NEW.platform = 'saturn' THEN INSERT INTO trigger_text VALUES ('Added new SEGA Saturn game!'); END IF; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr_11 BEFORE INSERT ON games FOR EACH ROW BEGIN IF NEW.platform = 'switch' THEN INSERT INTO trigger_text VALUES ('Added new Nintendo Switch game!'); END IF; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr_12 BEFORE INSERT ON games FOR EACH ROW BEGIN IF NEW.platform = 'psp' THEN INSERT INTO trigger_text VALUES ('Added new PLAYSTATION PORTABLE game!'); END IF; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr_13 BEFORE INSERT ON games FOR EACH ROW BEGIN IF NEW.platform = 'snes' THEN INSERT INTO trigger_text VALUES ('Added new SUPER NINTENDO ENTERTAINMENT game!'); END IF; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr_14 BEFORE INSERT ON games FOR EACH ROW BEGIN IF NEW.platform = 'gameboy' THEN INSERT INTO trigger_text VALUES ('Added new Game boy game!');
END IF ;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr_15 BEFORE INSERT ON games FOR EACH ROW BEGIN IF NEW.platform = 'ds' THEN INSERT INTO trigger_text VALUES ('Added new Nintendo DS game!'); END IF ; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8mb3_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER tr_16 BEFORE INSERT ON games FOR EACH ROW BEGIN IF NEW.platform = '3ds' THEN INSERT INTO trigger_text VALUES ('Added new Nintendo 3DS game!'); END IF ; END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `trigger_text`
--

DROP TABLE IF EXISTS `trigger_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trigger_text` (
  `message` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trigger_text`
--

LOCK TABLES `trigger_text` WRITE;
/*!40000 ALTER TABLE `trigger_text` DISABLE KEYS */;
INSERT INTO `trigger_text` VALUES
('Added new PC game!'),
('Added new PC game!'),
('Added new XBOX 360 game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new Nintendo Switch game!'),
('Added new Nintendo Switch game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PLAY STATION 2 game!'),
('Added new PLAY STATION 3 game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PLAY STATION 3 game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new XBOX 360 game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PLAY STATION 3 game!'),
('Added new PLAY STATION 3 game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PLAY STATION 3 game!'),
('Added new PLAY STATION 4 game!'),
('Added new PLAY STATION 4 game!'),
('Added new PLAY STATION 4 game!'),
('Added new PLAY STATION 4 game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new Nintendo Switch game!'),
('Added new PC game!'),
('Added new Nintendo Switch game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PLAY STATION 2 game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PLAYSTATION PORTABLE game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new XBOX 360 game!'),
('Added new PC game!'),
('Added new XBOX 360 game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PLAY STATION 3 game!'),
('Added new SUPER NINTENDO ENTERTAINMENT game!'),
('Added new Game boy game!'),
('Added new SUPER NINTENDO ENTERTAINMENT game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PLAYSTATION PORTABLE game!'),
('Added new PLAY STATION 2 game!'),
('Added new Nintendo DS game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new Nintendo Switch game!'),
('Added new Nintendo Switch game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PLAY STATION 2 game!'),
('Added new PLAY STATION 2 game!'),
('Added new PLAY STATION 2 game!'),
('Added new Nintendo Switch game!'),
('Added new PLAYSTATION PORTABLE game!'),
('Added new PLAYSTATION PORTABLE game!'),
('Added new Nintendo Switch game!'),
('Added new PLAY STATION 2 game!'),
('Added new PLAY STATION 3 game!'),
('Added new PLAY STATION 2 game!'),
('Added new PLAY STATION 2 game!'),
('Added new PLAYSTATION PORTABLE game!'),
('Added new PLAY STATION 3 game!'),
('Added new PLAYSTATION PORTABLE game!'),
('Added new PLAY STATION 3 game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PLAY STATION 2 game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PLAY STATION 2 game!'),
('Added new PC game!'),
('Added new PLAY STATION 3 game!'),
('Added new PLAY STATION 3 game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new XBOX 360 game!'),
('Added new SUPER NINTENDO ENTERTAINMENT game!'),
('Added new PC game!'),
('Added new PLAY STATION 2 game!'),
('Added new PLAY STATION 3 game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PLAY STATION 3 game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PLAY STATION 2 game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new Nintendo Switch game!'),
('Added new Nintendo Switch game!'),
('Added new PLAY STATION 4 game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PLAY STATION 3 game!'),
('Added new PLAY STATION 2 game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PLAY STATION 2 game!'),
('Added new PLAY STATION 2 game!'),
('Added new Nintendo Switch game!'),
('Added new PC game!'),
('Added new PLAY STATION 1 game!'),
('Added new PLAYSTATION PORTABLE game!'),
('Added new PLAY STATION 2 game!'),
('Added new PC game!'),
('Added new Nintendo Switch game!'),
('Added new Nintendo Switch game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new Nintendo Switch game!'),
('Added new PC game!'),
('Added new PLAY STATION 3 game!'),
('Added new PC game!'),
('Added new Nintendo 3DS game!'),
('Added new PLAYSTATION PORTABLE game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PLAY STATION 1 game!'),
('Added new PLAY STATION 2 game!'),
('Added new PLAY STATION 1 game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new XBOX 360 game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PLAYSTATION PORTABLE game!'),
('Added new PLAYSTATION PORTABLE game!'),
('Added new Nintendo Switch game!'),
('Added new Nintendo Switch game!'),
('Added new Nintendo Switch game!'),
('Added new PLAY STATION 2 game!'),
('Added new PLAY STATION 2 game!'),
('Added new SUPER NINTENDO ENTERTAINMENT game!'),
('Added new SUPER NINTENDO ENTERTAINMENT game!'),
('Added new PLAY STATION 2 game!'),
('Added new PLAY STATION 2 game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new PLAYSTATION PORTABLE game!'),
('Added new PLAYSTATION PORTABLE game!'),
('Added new PLAYSTATION PORTABLE game!'),
('Added new PLAYSTATION PORTABLE game!'),
('Added new PC game!'),
('Added new Nintendo DS game!'),
('Added new PC game!'),
('Added new PC game!'),
('Added new Nintendo DS game!'),
('Added new Nintendo Switch game!'),
('Added new Nintendo Switch game!'),
('Added new Nintendo Switch game!'),
('Added new PLAY STATION 2 game!');
/*!40000 ALTER TABLE `trigger_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `v`
--

DROP TABLE IF EXISTS `v`;
/*!50001 DROP VIEW IF EXISTS `v`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v` AS SELECT
 1 AS `name` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v2`
--

DROP TABLE IF EXISTS `v2`;
/*!50001 DROP VIEW IF EXISTS `v2`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v2` AS SELECT
 1 AS `genre`,
  1 AS `COUNT(genre)` */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `al`
--

/*!50001 DROP VIEW IF EXISTS `al`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `al` AS select `games`.`id` AS `id`,`games`.`name` AS `name`,`games`.`genre` AS `genre`,`games`.`type` AS `type`,`games`.`platform` AS `platform`,`games`.`date` AS `date`,`games`.`rate` AS `rate`,`games`.`val` AS `val` from `games` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v`
--

/*!50001 DROP VIEW IF EXISTS `v`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v` AS select `games`.`name` AS `name` from `games` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v2`
--

/*!50001 DROP VIEW IF EXISTS `v2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v2` AS select `games`.`genre` AS `genre`,count(`games`.`genre`) AS `COUNT(genre)` from `games` group by `games`.`genre` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-09 12:33:40

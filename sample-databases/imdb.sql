-- MySQL dump 10.13  Distrib 5.6.28, for Win64 (x86_64)
--
-- Host: localhost    Database: imdb
-- ------------------------------------------------------
-- Server version	5.6.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `directors`
--

DROP TABLE IF EXISTS `directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `directors` (
  `directorID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(36) NOT NULL,
  `imdb` char(16) DEFAULT NULL,
  PRIMARY KEY (`directorID`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directors`
--

LOCK TABLES `directors` WRITE;
/*!40000 ALTER TABLE `directors` DISABLE KEYS */;
INSERT INTO `directors` VALUES (1,'Marc Webb','nm1989536'),(2,'Peter Hyams','nm0001382'),(3,'Mark Neveldine','nm0004410'),(4,'Brian Taylor','nm0962729'),(5,'Stephen Frears','nm0001241'),(6,'Oliver Parker','nm0662529'),(7,'Quentin Tarantino','nm0000233'),(8,'Clint Eastwood','nm0000142'),(9,'Nora Ephron','nm0001188'),(10,'Pedro Almodovar','nm0000264'),(11,'Gary Sinise','nm0000641'),(12,'Nimród Antal','nm0030735'),(13,'?nan Temelkuran','nm3692009'),(14,'Anne Fontaine','nm0284774'),(15,'Levent Semerci','nm2896395'),(16,'Pete Docter','nm0230032'),(17,'Dominic Sena','nm0784061'),(18,'Robert Schwentke','nm0777881'),(19,'Woody Allen','nm0000095'),(20,'Max Färberböck','nm0299621'),(21,'Ruben Fleischer','nm0281508'),(22,'Blayne Weaver','nm0915814'),(23,'Zack Snyder','nm0811583'),(24,'Paul Schrader','nm0001707'),(25,'Ron Howard','nm0000165'),(26,'Sam Mendes','nm0005222'),(27,'Glendyn Ivin','nm1380395'),(28,'Scott Hicks','nm0382956'),(29,'Rod Lurie','nm0527109'),(30,'Eric Red','nm0714599'),(31,'Scott Mann','nm1470993'),(32,'Philipp Stölzl','nm0836715'),(33,'Ethan Coen','nm0001053'),(34,'Joel Coen','nm0001054'),(35,'Kevin Greutert','nm0340436'),(36,'Marina de Van','nm0888418'),(37,'Neill Blomkamp','nm0088955'),(38,'Mike Judge','nm0431918'),(39,'Oliver Hirschbiegel','nm0386570'),(40,'Gary Yates','nm0946750'),(41,'Anne Fletcher','nm0281945'),(42,'Emily Young','nm1369721'),(43,'Richard Eyre','nm0264236'),(44,'Neal Brennan','nm0107366'),(45,'Todd Phillips','nm0680846'),(46,'Micheal Mann','nm0000520'),(47,'Jon Amiel','nm0000750'),(48,'Mira Nair','nm0619762'),(49,'Bart Freundlich','nm0294505'),(50,'Timothy Linh Bui','nm0119613'),(51,'Grant Heslov','nm0381416'),(52,'Jane Campion','nm0001005'),(53,'Christian Alvert','nm0023355'),(54,'Sophie Barthes','nm1754436'),(55,'Duncan Jones','nm1512910'),(56,'Bobcat Goldthwait','nm0001281'),(57,'Oren Peli','nm2305431'),(58,'Kevin Macdonald','nm0531817'),(59,'Andy DeEmmony','nm0214320'),(60,'Rian Johnson','nm0426059'),(61,'Richard Loncraine','nm0518644'),(62,'Niels Arden Oplev','nm0649117'),(63,'Adam Elliot','nm0254178'),(64,'Jim Jarmusch','nm0000464'),(65,'Christine Jeffs','nm0420422'),(66,'David Twohy','nm0878638'),(67,'Nick Cassavetes','nm0001024'),(68,'Martin Koolhoven','nm0465551'),(69,'Jorge Blanco','nm3360961'),(70,'Milcho Manchevski','nm0541391'),(71,'John Hamburg','nm0357453'),(72,'Costas Ferris','nm0002948'),(73,'Tom Hooper','nm0393799'),(74,'Paul Wilmshurst','nm0932882'),(75,'Fatih Akın','nm0015359'),(76,'Yvan Attal','nm0040939'),(77,'Andrea Arnold','nm0036349'),(78,'Steven Soderbergh','nm0001752'),(79,'John Kent Harrison','nm0006867'),(80,'Hans-Christian Schmid','nm0772691'),(81,'Sidney Lumet','nm0001486'),(82,'Christopher Smith','nm1247462'),(83,'John Sturges','nm0836328'),(84,'Roland Emmerich','nm0000386'),(85,'Jamie Thraves','nm0861899'),(86,'Vikram K. Kumar','nm3347823'),(87,'Billy Wilder','nm0000697'),(88,'George Roy Hill','nm0001351'),(89,'Juan José Campanella','nm0002728'),(90,'Andrzej Wajda','nm0906667'),(91,'Dennis Hopper','nm0000454'),(92,'Jonathan Mostow','nm0609236'),(93,'Elia Kazan','nm0001415'),(94,'Alfred Hitchcock','nm0000033'),(95,'Ki-duk Kim','nm1104118'),(96,'Gordon Douglas','nm0235066'),(97,'John H. Lee','nm0497565'),(98,'Hae-jun Lee','nm1536497'),(99,'Mahmut Fazıl Coşkun','nm3312722'),(100,'Michael Spierig','nm1294961'),(101,'Peter Spierig','nm1294962'),(102,'Chan-wook Park','nm0661791'),(103,'Ruba Nadda','nm0618779'),(104,'Ben Hopkins','nm0394114'),(105,'Louie Psihoyos','nm3174775'),(106,'John Polson','nm0689852'),(107,'Lasse Hallström','nm0002120'),(108,'John Huston','nm0001379'),(109,'Philippe de Broca','nm0003606'),(110,'Blake Edwards','nm0001175'),(111,'Richard Kelly','nm0446819'),(112,'Kirk Jones','nm0428600'),(113,'Jay DiPietro','nm2842549'),(114,'Sebastian Gutierrez','nm0349406'),(115,'Akira Kurosawa','nm0000041'),(116,'Jae-young Kwak','nm1030706'),(117,'Jacques Audiard','nm0002191'),(118,'Lee Toland Krieger','nm1767218'),(119,'Jason Reitman','nm0718646'),(120,'Nicolas Gessner','nm0004654'),(121,'F. Gary Gray','nm0336620'),(122,'Rob Marshall','nm0551128'),(123,'Kathryn Bigelow','nm0000941'),(124,'Joe Wright','m0942504'),(125,'Alejandro Amenábar','nm0024622'),(126,'Katherine Dieckmann','nm0225869'),(127,'Sam Peckinpah','nm0001603'),(128,'Yılmaz Erdoğan','nm0258784'),(129,'Shana Feste','nm0275277'),(130,'Reha Erdem','nm0258732'),(131,'Jonathan Kaplan','nm0438279'),(132,'Steven Spielberg','nm0000229'),(133,'Francis Ford Coppola','nm0000338'),(134,'Troy Duffy','nm0240627'),(135,'Pierre Morel','nm0603628'),(136,'Peter Jackson','nm0001392'),(137,'Rebecca Miller','nm0589182'),(138,'Terry Gilliam','nm0000416'),(139,'Phil Lord','nm0520488'),(140,'Chris Miller','nm0588087'),(141,'Ron Clements','nm0166256'),(142,'John Musker','nm0615780'),(143,'Lone Scherfig','nm0771054'),(144,'James Cameron','nm0000116'),(145,'Lee Daniels','nm0200005'),(146,'John Lee Hancock','nm0359387'),(147,'Chris Weitz','nm0919363'),(148,'Wes Anderson','nm0027572'),(149,'Guy Ritchie','nm0005363'),(150,'Gus Van Sant','nm0001814'),(151,'John Hillcoat','nm0384825'),(152,'Petr Zelenka','nm0954500'),(153,'Marcus Dunstan','nm1729303'),(154,'Majid Majidi','nm0006498'),(155,'Wai-keung Lau','nm0490487'),(156,'Tim Blake Nelson','nm0625789'),(157,'Brian De Palma','nm0000361'),(158,'Paul McGuigan','nm0006476'),(159,'Gilles Mimouni','nm0590813'),(160,'Antoine Fuqua','nm0298807'),(161,'Nick Willing','nm0932216'),(162,'Tony Gilroy','nm0006904'),(163,'Daniel Barber','nm2905562'),(164,'Yann Samuel','nm1367933'),(165,'Peter Stebbings','nm0824220'),(166,'Martin Campbell','nm0132709'),(167,'Mark Waters','nm0132709'),(168,'Kar Wai Wong','nm0939182'),(169,'Jim Sheridan','nm0006487'),(170,'Scott Cooper','nm0178376'),(171,'Martin Scorsese','nm0000217'),(172,'Zeki Demirkubuz','nm0218547'),(173,'Michael Haneke','nm0359734'),(174,'Kamen Kalev','nm1189816'),(175,'David Koepp','nm0462895'),(176,'Cameron Crowe','nm0001081'),(177,'Ivan Engler','nm1393530'),(178,'Stephen Poliakoff','nm0689081'),(179,'Kari Skogland','nm0804556'),(180,'Michael Sucsy','nm1302591'),(181,'Andy Tennant','nm0855035'),(182,'Durul Taylan','nm1533201'),(183,'Fritz Lang','nm0000485'),(184,'Samuel Maoz','nm1413443'),(185,'David Yates','nm0946734'),(186,'Damjan Kozole','nm0468995'),(187,'Igor Sterk','nm0827459'),(188,'Wim Wenders','nm0000694'),(189,'Chandler Tuttle','nm2459703'),(190,'Zoe R. Cassavetes','nm0144023'),(191,'Peter Weir','nm0001837'),(192,'Bertrand Tavernier','nm0851724'),(193,'Cheryl Hines','nm0385644'),(194,'Chris Wedge','nm0917188'),(195,'Carlos Saldanha','nm0757858'),(196,'Giuseppe Capotondi','nm3321297'),(197,'Tom Ford','nm1053530'),(198,'Jordan Scott','nm0779386'),(199,'Noah Buschel','nm1231757'),(200,'Nancy Meyers','nm0583600'),(201,'Tom Vaughan','nm0891114'),(202,'Anand Tucker','nm0875793'),(203,'Sam Taylor Wood','nm0939993'),(204,'Ömer Faruk Sorak','nm0814716'),(205,'Özcan Alper','nm3213296'),(206,'Garry Marshall','nm0005190'),(207,'George P. Cosmatos','nm0181902'),(208,'Giuseppe Toprnatore','nm0868153'),(209,'Glenn Ficarra','nm0275629'),(210,'John Requa','nm0720135'),(211,'Barry Levinson','nm0001469'),(212,'Koen Morties','nm0607831'),(213,'Wilson Yip','nm0948159'),(214,'Tim Burton','nm0000318'),(215,'Atom Egoyan','nm0000382'),(216,'Isabel Coixet','nm0170043'),(217,'Pavel Chukhraj','nm0161056'),(218,'Ketche','nm3773770'),(219,'Zülfü Livaneli','nm0515101'),(220,'Sam Raimi','nm0000600'),(221,'Brian Goodman','nm0329023'),(222,'Christophe Barratier','nm0056725'),(223,'Claude Berri','nm0001945'),(224,'Cary Fukunaga','nm1560977'),(225,'Jesus Garay','nm0304879'),(226,'İlksen Başarır','nm2079185'),(227,'Albert Hughes','nm0400436'),(228,'Allen Hughes','nm0400441'),(229,'Hirokazu Koreeda','nm0466153'),(230,'Ryûhei Kitamura','nm0457565'),(231,'Shusuke Kaneko','nm0437526'),(232,'Gregor Jordan','nm0429964'),(241,'Mike Mitchell','nm0593610');
/*!40000 ALTER TABLE `directors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dvds`
--

DROP TABLE IF EXISTS `dvds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dvds` (
  `dvdID` int(11) NOT NULL AUTO_INCREMENT,
  `movieID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`dvdID`),
  KEY `movieID` (`movieID`),
  KEY `userID` (`userID`),
  CONSTRAINT `dvds_ibfk_1` FOREIGN KEY (`movieID`) REFERENCES `movies` (`movieID`),
  CONSTRAINT `dvds_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dvds`
--

LOCK TABLES `dvds` WRITE;
/*!40000 ALTER TABLE `dvds` DISABLE KEYS */;
/*!40000 ALTER TABLE `dvds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres` (
  `genreID` int(11) NOT NULL AUTO_INCREMENT,
  `description` char(32) NOT NULL,
  PRIMARY KEY (`genreID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Comedy'),(2,'Drama'),(3,'Romance'),(4,'Mystery'),(5,'Action'),(6,'Sci-Fi'),(7,'Thriller'),(8,'War'),(9,'Biography'),(10,'History'),(11,'Adventure'),(12,'Animation'),(13,'Family'),(14,'Crime'),(15,'Horror'),(16,'Sport'),(17,'Fantasy'),(18,'Music'),(19,'Film-Noir'),(20,'Western'),(21,'Documentary'),(22,'Musical');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moviedirectors`
--

DROP TABLE IF EXISTS `moviedirectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moviedirectors` (
  `movieDirectorID` int(11) NOT NULL AUTO_INCREMENT,
  `movieID` int(11) NOT NULL,
  `directorID` int(11) NOT NULL,
  PRIMARY KEY (`movieDirectorID`),
  KEY `movieID` (`movieID`),
  KEY `directorID` (`directorID`),
  CONSTRAINT `moviedirectors_ibfk_1` FOREIGN KEY (`movieID`) REFERENCES `movies` (`movieID`),
  CONSTRAINT `moviedirectors_ibfk_2` FOREIGN KEY (`directorID`) REFERENCES `directors` (`directorID`)
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moviedirectors`
--

LOCK TABLES `moviedirectors` WRITE;
/*!40000 ALTER TABLE `moviedirectors` DISABLE KEYS */;
INSERT INTO `moviedirectors` VALUES (1,1,1),(2,2,2),(3,3,3),(4,3,4),(5,4,5),(6,5,6),(7,6,7),(8,7,8),(9,8,9),(10,9,10),(11,10,11),(12,11,12),(13,12,13),(14,13,14),(15,14,15),(16,15,16),(17,16,17),(18,17,18),(19,18,19),(20,19,20),(21,20,21),(22,21,22),(23,22,23),(24,23,24),(25,24,25),(26,25,26),(27,26,27),(28,27,28),(29,28,29),(30,29,30),(31,30,31),(32,31,32),(33,32,33),(34,32,34),(35,33,35),(36,34,36),(37,35,37),(38,36,38),(39,37,39),(40,38,40),(41,39,41),(42,40,42),(43,41,43),(44,42,44),(45,43,45),(46,44,46),(47,45,47),(48,46,48),(49,47,49),(50,48,50),(51,49,51),(52,50,52),(53,51,53),(54,52,54),(55,53,55),(56,54,56),(57,55,57),(58,56,58),(59,57,59),(60,58,60),(61,59,61),(62,60,62),(63,61,63),(64,62,64),(65,63,65),(66,64,66),(67,65,67),(68,66,68),(69,67,69),(70,68,70),(71,69,71),(72,70,72),(73,70,48),(74,72,73),(75,73,74),(76,74,75),(77,74,76),(78,75,77),(79,76,78),(80,77,79),(81,78,80),(82,79,81),(83,80,82),(84,81,83),(85,82,84),(86,83,85),(87,84,86),(88,85,87),(89,86,88),(90,87,89),(91,88,90),(92,89,91),(93,90,92),(94,91,81),(95,92,93),(96,93,87),(97,94,81),(98,95,94),(99,96,95),(100,97,96),(101,98,95),(102,99,97),(103,100,95),(104,101,98),(105,102,99),(106,103,100),(107,103,101),(108,104,95),(109,105,102),(110,106,103),(111,107,104),(112,108,105),(113,109,106),(114,110,107),(115,111,108),(116,112,109),(117,113,110),(118,114,111),(119,115,112),(120,116,113),(121,117,94),(122,118,114),(123,119,115),(124,120,116),(125,121,95),(126,122,94),(127,123,117),(128,124,118),(129,125,102),(130,126,119),(131,127,120),(132,128,121),(133,129,122),(134,131,123),(135,132,124),(136,133,125),(137,134,126),(138,135,127),(139,136,128),(140,137,129),(141,138,130),(142,139,131),(143,140,132),(144,141,133),(145,142,134),(146,143,135),(147,144,136),(148,145,137),(149,146,138),(150,146,51),(151,148,139),(152,148,140),(153,149,141),(154,149,142),(155,150,143),(156,151,144),(157,152,144),(158,153,145),(159,154,146),(160,155,147),(161,156,148),(162,157,149),(163,158,150),(164,159,151),(165,160,152),(166,160,62),(167,162,153),(168,163,154),(169,164,155),(170,165,156),(171,166,157),(172,167,158),(173,168,159),(174,169,160),(175,170,161),(176,171,162),(177,172,163),(178,173,164),(179,174,165),(180,175,166),(181,176,167),(182,177,168),(183,178,169),(184,179,170),(185,180,171),(186,181,172),(187,182,173),(188,183,136),(189,184,174),(190,185,175),(191,186,176),(192,187,177),(193,188,178),(194,189,179),(195,190,180),(196,191,181),(197,192,62),(198,193,182),(199,194,183),(200,195,184),(201,196,185),(202,197,186),(203,198,187),(204,199,188),(205,200,189),(206,201,107),(207,202,190),(208,203,191),(209,204,133),(210,205,116),(211,206,192),(212,207,193),(213,208,194),(214,209,195),(215,210,195),(216,211,196),(217,212,197),(218,213,198),(219,214,199),(220,214,200),(221,215,201),(222,216,202),(223,217,203),(224,218,204),(225,219,205),(226,219,206),(227,220,207),(228,221,208),(229,222,209),(230,222,210),(231,223,211),(232,224,212),(233,225,213),(234,226,213),(235,227,214),(236,228,215),(237,229,216),(238,230,217),(239,231,218),(240,232,219),(241,233,220),(242,234,87),(243,235,221),(244,236,222),(245,237,223),(246,238,169),(247,239,224),(248,240,225),(249,241,226),(250,242,227),(251,242,228),(252,243,229),(253,244,230),(254,245,231),(255,246,232),(261,255,241);
/*!40000 ALTER TABLE `moviedirectors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moviegenres`
--

DROP TABLE IF EXISTS `moviegenres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moviegenres` (
  `movieGenreID` int(11) NOT NULL AUTO_INCREMENT,
  `movieID` int(11) NOT NULL,
  `genreID` int(11) NOT NULL,
  PRIMARY KEY (`movieGenreID`),
  KEY `movieID` (`movieID`),
  KEY `genreID` (`genreID`),
  CONSTRAINT `moviegenres_ibfk_1` FOREIGN KEY (`movieID`) REFERENCES `movies` (`movieID`),
  CONSTRAINT `moviegenres_ibfk_2` FOREIGN KEY (`genreID`) REFERENCES `genres` (`genreID`)
) ENGINE=InnoDB AUTO_INCREMENT=642 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moviegenres`
--

LOCK TABLES `moviegenres` WRITE;
/*!40000 ALTER TABLE `moviegenres` DISABLE KEYS */;
INSERT INTO `moviegenres` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,2),(5,2,4),(6,3,5),(7,3,6),(8,3,7),(9,4,2),(10,4,3),(11,5,2),(12,6,2),(13,6,8),(14,7,9),(15,7,2),(16,7,10),(17,8,9),(18,8,2),(19,8,1),(20,8,3),(21,9,2),(22,9,7),(23,9,3),(24,10,2),(25,11,5),(26,11,2),(27,11,7),(28,12,2),(29,13,9),(30,13,2),(31,14,5),(32,14,11),(33,14,2),(34,14,8),(35,15,12),(36,15,11),(37,15,1),(38,15,13),(39,16,5),(40,16,14),(41,16,2),(42,16,4),(43,17,2),(44,17,6),(45,17,3),(46,18,1),(47,18,3),(48,19,2),(49,19,8),(50,20,5),(51,20,1),(52,20,15),(53,21,1),(54,22,5),(55,22,2),(56,22,4),(57,22,6),(58,22,7),(59,23,2),(60,23,8),(61,24,4),(62,24,7),(63,25,1),(64,25,2),(65,26,2),(66,27,2),(67,28,2),(68,28,7),(69,29,15),(70,29,7),(71,30,5),(72,31,11),(73,31,2),(74,31,10),(75,31,16),(76,32,1),(77,32,2),(78,33,14),(79,33,15),(80,33,4),(81,33,7),(82,34,2),(83,35,5),(84,35,2),(85,35,6),(86,35,7),(87,36,1),(88,37,2),(89,37,14),(90,37,7),(91,38,1),(92,38,2),(93,39,1),(94,39,2),(95,39,3),(96,40,2),(97,41,2),(98,42,1),(99,43,11),(100,43,1),(101,43,14),(102,44,9),(103,44,14),(104,44,2),(105,44,10),(106,44,7),(107,45,9),(108,45,2),(109,46,9),(110,46,2),(111,47,1),(112,47,3),(113,48,2),(114,49,1),(115,49,8),(116,50,9),(117,50,2),(118,50,3),(119,51,15),(120,51,7),(121,52,1),(122,52,2),(123,53,2),(124,53,4),(125,53,6),(126,53,7),(127,54,1),(128,54,2),(129,55,15),(130,55,7),(131,56,2),(132,56,4),(133,56,7),(134,57,2),(135,58,11),(136,58,1),(137,58,14),(138,58,2),(139,58,3),(140,59,1),(141,59,2),(142,60,14),(143,60,4),(144,60,7),(145,61,12),(146,61,1),(147,61,2),(148,62,14),(149,62,2),(150,62,7),(151,63,1),(152,63,2),(153,64,2),(154,64,15),(155,64,4),(156,64,7),(157,65,2),(158,66,2),(159,66,10),(160,66,8),(161,67,12),(162,67,11),(163,67,1),(164,67,13),(165,67,17),(166,68,2),(167,68,8),(168,69,1),(169,69,3),(170,70,9),(171,70,2),(172,70,10),(173,70,18),(174,70,8),(175,70,9),(176,70,2),(177,72,9),(178,72,2),(179,72,16),(180,73,10),(181,74,2),(182,74,3),(183,75,2),(184,76,1),(185,76,14),(186,76,2),(187,76,7),(188,77,9),(189,77,2),(190,78,2),(191,79,14),(192,79,2),(193,79,7),(194,80,15),(195,80,4),(196,80,7),(197,81,5),(198,81,11),(199,81,2),(200,81,7),(201,81,8),(202,81,15),(203,82,5),(204,82,11),(205,82,2),(206,82,6),(207,83,2),(208,83,7),(209,84,15),(210,84,4),(211,84,7),(212,85,14),(213,85,19),(214,85,7),(215,86,11),(216,86,14),(217,86,2),(218,86,20),(219,87,14),(220,87,2),(221,87,4),(222,87,3),(223,87,7),(224,88,9),(225,88,2),(226,88,10),(227,89,14),(228,89,2),(229,90,5),(230,90,6),(231,90,7),(232,91,14),(233,91,2),(234,91,7),(235,92,2),(236,93,2),(237,93,19),(238,94,2),(239,95,14),(240,95,4),(241,95,3),(242,95,7),(243,96,2),(244,97,6),(245,97,15),(246,98,14),(247,98,2),(248,98,3),(249,99,2),(250,99,3),(251,100,2),(252,100,3),(253,101,2),(254,102,2),(255,103,5),(256,103,2),(257,103,15),(258,103,6),(259,103,7),(260,104,2),(261,104,17),(262,104,4),(263,104,3),(264,105,2),(265,105,4),(266,105,7),(267,106,2),(268,106,3),(269,107,2),(270,108,21),(271,108,2),(272,109,14),(273,109,2),(274,109,7),(275,110,2),(276,110,13),(277,111,11),(278,111,2),(279,111,20),(280,111,5),(281,112,5),(282,112,1),(283,112,17),(284,112,3),(285,113,1),(286,114,2),(287,114,15),(288,114,4),(289,114,6),(290,115,2),(291,116,2),(292,116,3),(293,117,15),(294,117,4),(295,117,7),(296,118,1),(297,119,5),(298,119,11),(299,120,1),(300,120,2),(301,120,3),(302,121,2),(303,122,14),(304,122,4),(305,122,7),(306,123,14),(307,123,2),(308,124,1),(309,124,2),(310,125,2),(311,125,15),(312,125,3),(313,126,1),(314,126,2),(315,126,3),(316,127,2),(317,127,15),(318,127,4),(319,127,7),(320,128,14),(321,128,2),(322,128,7),(323,129,2),(324,129,22),(325,129,3),(326,130,12),(327,130,13),(328,131,5),(329,131,2),(330,131,7),(331,131,8),(332,132,2),(333,132,9),(334,132,18),(335,133,11),(336,133,2),(337,133,10),(338,133,3),(339,134,1),(340,135,5),(341,135,20),(342,136,1),(343,137,2),(344,138,2),(345,139,2),(346,139,7),(347,140,5),(348,140,2),(349,140,8),(350,141,14),(351,141,2),(352,141,3),(353,142,5),(354,142,14),(355,142,2),(356,142,7),(357,143,5),(358,143,14),(359,143,7),(360,144,14),(361,144,2),(362,144,3),(363,144,7),(364,145,2),(365,145,3),(366,146,11),(367,146,17),(368,146,4),(369,146,1),(370,146,8),(371,148,12),(372,148,13),(373,149,12),(374,149,13),(375,149,17),(376,149,22),(377,149,3),(378,150,2),(379,151,5),(380,151,11),(381,151,6),(382,152,5),(383,152,11),(384,152,6),(385,153,2),(386,154,2),(387,154,16),(388,155,2),(389,155,17),(390,155,15),(391,155,3),(392,156,12),(393,156,11),(394,156,1),(395,156,13),(396,157,5),(397,157,11),(398,157,14),(399,157,2),(400,157,4),(401,157,7),(402,158,2),(403,158,3),(404,159,11),(405,159,2),(406,159,7),(407,160,2),(408,160,14),(409,160,4),(410,160,7),(411,162,14),(412,162,15),(413,162,7),(414,163,1),(415,163,2),(416,163,13),(417,164,2),(418,164,3),(419,165,1),(420,165,14),(421,165,2),(422,165,7),(423,166,14),(424,166,2),(425,166,7),(426,167,2),(427,167,4),(428,167,3),(429,167,7),(430,168,2),(431,168,4),(432,168,3),(433,169,5),(434,169,14),(435,169,2),(436,169,7),(437,170,17),(438,171,3),(439,171,7),(440,172,14),(441,172,2),(442,172,7),(443,173,1),(444,173,2),(445,173,3),(446,174,1),(447,174,2),(448,175,2),(449,175,7),(450,176,1),(451,176,17),(452,176,3),(453,177,2),(454,177,17),(455,177,3),(456,177,6),(457,178,2),(458,178,7),(459,178,8),(460,179,2),(461,179,18),(462,179,3),(463,180,14),(464,180,2),(465,180,4),(466,180,7),(467,181,2),(468,182,14),(469,182,2),(470,182,4),(471,183,14),(472,183,2),(473,183,17),(474,183,15),(475,183,7),(476,184,2),(477,185,1),(478,185,17),(479,185,3),(480,186,2),(481,186,18),(482,187,6),(483,188,2),(484,188,10),(485,188,3),(486,188,7),(487,188,8),(488,189,2),(489,189,7),(490,190,9),(491,190,2),(492,191,5),(493,191,1),(494,191,14),(495,191,3),(496,192,2),(497,193,1),(498,193,2),(499,193,7),(500,194,20),(501,195,2),(502,195,8),(503,196,5),(504,196,11),(505,196,13),(506,196,17),(507,196,4),(508,196,3),(509,197,2),(510,198,2),(511,198,7),(512,199,14),(513,199,4),(514,199,7),(515,199,2),(516,200,5),(517,200,6),(518,201,2),(519,201,3),(520,201,8),(521,202,1),(522,202,2),(523,202,3),(524,203,2),(525,203,4),(526,203,7),(527,204,14),(528,204,2),(529,204,7),(530,205,3),(531,206,2),(532,206,4),(533,207,1),(534,207,2),(535,207,3),(536,208,12),(537,208,5),(538,208,11),(539,208,1),(540,208,13),(541,209,12),(542,209,5),(543,209,11),(544,209,1),(545,209,13),(546,210,12),(547,210,5),(548,210,11),(549,210,1),(550,210,13),(551,210,3),(552,211,2),(553,211,4),(554,211,7),(555,212,2),(556,213,2),(557,214,1),(558,214,2),(559,214,4),(560,214,1),(561,214,3),(562,215,2),(563,216,1),(564,216,3),(565,217,9),(566,217,2),(567,217,18),(568,218,1),(569,218,20),(570,219,2),(571,219,1),(572,219,3),(573,220,5),(574,220,2),(575,220,10),(576,220,3),(577,220,20),(578,221,2),(579,221,4),(580,221,7),(581,222,1),(582,222,2),(583,223,9),(584,223,2),(585,224,1),(586,224,14),(587,224,2),(588,224,18),(589,225,5),(590,225,9),(591,225,2),(592,226,5),(593,226,9),(594,226,10),(595,227,11),(596,227,13),(597,227,17),(598,228,2),(599,228,7),(600,229,2),(601,229,3),(602,230,2),(603,231,1),(604,231,3),(605,232,9),(606,232,2),(607,232,10),(608,232,8),(609,233,15),(610,233,7),(611,234,1),(612,234,2),(613,234,8),(614,235,14),(615,235,2),(616,236,2),(617,236,18),(618,237,2),(619,237,3),(620,238,9),(621,238,2),(622,239,11),(623,239,14),(624,239,2),(625,239,7),(626,240,2),(627,241,2),(628,242,5),(629,242,11),(630,242,2),(631,242,7),(632,242,20),(633,243,2),(634,244,5),(635,244,11),(636,244,2),(637,244,17),(638,244,7),(639,245,5),(640,246,2),(641,246,7);
/*!40000 ALTER TABLE `moviegenres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `movieID` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(255) NOT NULL,
  `year` int(11) NOT NULL DEFAULT '2010',
  `imdb` char(16) DEFAULT NULL,
  PRIMARY KEY (`movieID`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'500 Days Of Summer',2009,'tt1022603'),(2,'Beyond a Reasonable Doubt',2009,'tt1183251'),(3,'Gamer',2009,'tt1034032'),(4,'Cheri',2009,'tt1179258'),(5,'Dorian Gray',2009,'tt1235124'),(6,'Inglourious Basterds',2009,'tt0361748'),(7,'Invictus',2009,'tt1057500'),(8,'Julie and Julia',2009,'tt1135503'),(9,'Los abrazos rotos',2009,'tt0913425'),(10,'Of Mice and Men',1992,'tt0105046'),(11,'Armored',2009,'tt0913354'),(12,'Bornova Bornova',2009,'tt1548542'),(13,'Coco avant Chanel',2009,'tt1035736'),(14,'Nefes: Vatan sa?olsun',2009,'tt1171701'),(15,'Up',2009,'tt1049413'),(16,'Whiteout',2009,'tt0365929'),(17,'The Time Travelers Wife',2009,'tt0452694'),(18,'Whatever Works',2009,'tt1178663'),(19,'Anonyma - Eine Frau in Berlin',2009,'tt1035730'),(20,'Zombieland',2009,'tt1156398'),(21,'Weather Girl',2009,'tt1085515'),(22,'Watchmen',2009,'tt0409459'),(23,'Adam Resurrected',2008,'tt0479341'),(24,'Angels and Deamons',2009,'tt0808151'),(25,'Away We Go',2009,'tt1176740'),(26,'Last Ride',2009,'tt1235142'),(27,'The Boys Are Back',2009,'tt0926380'),(28,'Nothing But the Truth',2008,'tt1073241'),(29,'100 Feet',2008,'tt0899128'),(30,'The Tournament',2009,'tt0471041'),(31,'Nordwand',2008,'tt0844457'),(32,'A Serious Man',2009,'tt1019452'),(33,'Saw VI',2009,'tt1233227'),(34,'Ne te retourne pas',2009,'tt1075113'),(35,'District 9',2009,'tt1136608'),(36,'Extract',2009,'tt1225822'),(37,'Five Minutes of Haven',2009,'tt1238291'),(38,'High Life',2009,'tt1143110'),(39,'The Proposal',2009,'tt1041829'),(40,'Veronika Decides to Die',2009,'tt1068678'),(41,'The Other Man',2008,'tt0974613'),(42,'The Goods: Live Hard, Sell Hard',2009,'tt1092633'),(43,'The Hangover',2009,'tt1119646'),(44,'Public Enemies',2009,'tt1152836'),(45,'Creation',2009,'tt0974014'),(46,'Amelia',2009,'tt1129445'),(47,'The Rebound',2009,'tt1205535'),(48,'Powder Blue',2009,'tt1032819'),(49,'The Men Who Stare at Goats',2009,'tt1234548'),(50,'Bright Star',2009,'tt0810784'),(51,'Case 39',2009,'tt0795351'),(52,'Cold Souls',2009,'tt1127877'),(53,'Moon',2009,'tt1182345'),(54,'Worlds Greatest Dad',2009,'tt1262981'),(55,'Paranormal Activity',2007,'tt1179904'),(56,'State of Play',2009,'tt0473705'),(57,'God on Trial',2008,'tt1173494'),(58,'The Brothers Bloom',2009,'tt0844286'),(59,'My One and Only',2009,'tt1185431'),(60,'Män Som Hatar Kvinnor',2009,'tt1132620'),(61,'Mary and Max',2009,'tt0978762'),(62,'The Limits of Control',2009,'tt0978762'),(63,'Sunshine Cleaning',2008,'tt0862846'),(64,'A Perfect Getaway',2009,'tt0971209'),(65,'My Sisters Keeper',2009,'tt1078588'),(66,'Oorlogswinter',2008,'tt0795441'),(67,'Planet 51',2009,'tt0762125'),(68,'Before the Rain',1994,'tt0110882'),(69,'I Love You, Man',2009,'tt1155056'),(70,'Rembetiko',1983,'tt0086182'),(71,'Amelia',2009,'tt1129445'),(72,'The Damned United',2009,'tt1226271'),(73,'Hiroshima',2005,'tt0475296'),(74,'New York, I Love You',2009,'tt0808399'),(75,'Fish Tank',2009,'tt1232776'),(76,'The Informant!',2009,'tt1130080'),(77,'The Courageous Heart of Irena Sendler',2009,'tt1010278'),(78,'Storm',2009,'tt0768239'),(79,'Before the Devil Knows You are Dead',2007,'tt0292963'),(80,'Triangle',2009,'tt1187064'),(81,'The Great Escape',1963,'tt0057115'),(82,'2012',2009,'tt1190080'),(83,'The Cry of the Owl',2009,'tt1034302'),(84,'13B',2009,'tt1385824'),(85,'Double Indemnity',1944,'tt0036775'),(86,'Butch Cassidy and the Sundance Kid',1969,'tt0064115'),(87,'El secreto de sus ojos',2009,'tt1305806'),(88,'Danton',1983,'tt0083789'),(89,'Easy Rider',1969,'tt0064276'),(90,'Surrogates',2009,'tt0986263'),(91,'Dog Day Afternoon',1975,'tt0072890'),(92,'A Streetcar Named Desire',1951,'tt0044081'),(93,'Sunset Blvd.',1950,'tt0043014'),(94,'Network',1976,'tt0074958'),(95,'Vertigo',1958,'tt0052357'),(96,'Bom yeoreum gaeul gyeoul geurigo bom',2003,'tt0374546'),(97,'Them!',1954,'tt0047573'),(98,'Bin-jip',2004,'tt0423866'),(99,'Nae meorisokui jiwoogae',2004,'tt0428870'),(100,'Hwal',2005,'tt0456470'),(101,'Kimssi pyoryugi',2009,'tt1499666'),(102,'Uzak İhtimal',2009,'tt1366981'),(103,'Daybreakers',2009,'tt0433362'),(104,'Bin-mong',2008,'tt1165253'),(105,'Oldboy',2003,'tt0364569'),(106,'Cairo Time',2009,'tt0896529'),(107,'Pazar - Bir Ticaret Masalı',2008,'tt1286165'),(108,'The Cove',2009,'tt1313104'),(109,'Tenderness',2009,'tt0494864'),(110,'Hachiko: A Dogs Story',2009,'tt1028532'),(111,'The Treasure of the Sierra Madre',1948,'tt0040897'),(112,'Le magnifique',1973,'tt0070354'),(113,'The Party',1968,'tt0063415'),(114,'The Box',2009,'tt0362478'),(115,'Everybodys Fine',2009,'tt0780511'),(116,'Peter and Vandy',2009,'tt1144551'),(117,'Psycho',1960,'tt0054215'),(118,'Women in Trouble',2009,'tt1247704'),(119,'Shichinin no samurai',1954,'tt0047478'),(120,'Yeopgijeogin geunyeo',2001,'tt0293715'),(121,'Samaria',2004,'tt0397619'),(122,'Dial M for Murder',1954,'tt0046912'),(123,'Un prophète',2009,'tt1235166'),(124,'The Vicious Kind',2009,'tt1183921'),(125,'Bakjwi',2009,'tt0762073'),(126,'Up in the air',2009,'tt1193138'),(127,'The Little Girl Who Lives Down the Lane',1976,'tt0074806'),(128,'Law Abiding Citizen',2009,'tt1197624'),(129,'Nine',2009,'tt0875034'),(131,'The Hurt Locker',2008,'tt0887912'),(132,'The Soloist',2009,'tt0821642'),(133,'Agora',2009,'tt1186830'),(134,'Motherhood',2009,'tt1220220'),(135,'The Wild Brunch',1969,'tt0065214'),(136,'Neşeli Hayat',2009,'tt1523515'),(137,'The Greatest',2009,'tt1226232'),(138,'My Only Sunshine',2008,'tt1370212'),(139,'The Accused',1988,'tt0094608'),(140,'Empire of the Sun',1987,'tt0092965'),(141,'The Outsiders',1983,'tt0086066'),(142,'The Boondock Saints II: All Saints Day',2009,'tt1300851'),(143,'From Paris with Love',2010,'tt1179034'),(144,'Heavenly Creatures',1994,'tt0110005'),(145,'The Private Lives of Pippa Lee',2009,'tt1134629'),(146,'The Imaginarium of Doctor Parnassus',2009,'tt1054606'),(147,'The Men Who Stare at Goats',2009,'tt1234548'),(148,'Cloudy with a Chance of Meatballs',2009,'tt0844471'),(149,'The Princess and the Frog',2009,'tt0780521'),(150,'An Education',2009,'tt1174732'),(151,'Avatar',2009,'tt0499549'),(152,'Avatar 3D',2009,'tt0499549'),(153,'Precious: Based on the Novel Push by Sapphire',2009,'tt0929632'),(154,'The Blind Side',2009,'tt0878804'),(155,'New Moon',2009,'tt1259571'),(156,'Fantastic Mr. Fox',2009,'tt0432283'),(157,'Sherlock Holmes',2009,'tt0988045'),(158,'My Own Private Idaho',1991,'tt0102494'),(159,'The Road',2009,'tt0898367'),(160,'Karamazovi',2008,'tt1080716'),(161,'Män som hatar kvinnor',2009,'tt1132620'),(162,'The Collector',2009,'tt0844479'),(163,'Bacheha-Ye aseman',1997,'tt0118849'),(164,'Deiji',2006,'tt0468704'),(165,'Leaves of Grass',2009,'tt1151359'),(166,'Scarface',1983,'tt0086250'),(167,'Wicker Park',2004,'tt0324554'),(168,'L appartement',1996,'tt0115561'),(169,'Brooklyns Finest',2009,'tt1210042'),(170,'Alice',2009,'tt1461312'),(171,'Duplicity',2009,'tt1135487'),(172,'Harry Brown',2009,'tt1289406'),(173,'Jeux Denfants',2003,'tt0364517'),(174,'Defendor',2009,'tt1303828'),(175,'Edge of Darkness',2010,'tt1226273'),(176,'Just Like Heaven',2005,'tt0425123'),(177,'2046',2004,'tt0212712'),(178,'Brothers',2009,'tt0765010'),(179,'Crazy Heart',2009,'tt1263670'),(180,'Shutter Island',2010,'tt1130884'),(181,'Kıskanmak',2009,'tt1512894'),(182,'Das weisse Band - Eine deutsche Kindergeschichte',2009,'tt1149362'),(183,'The Lovely Bones',2009,'tt0380510'),(184,'Eastern Plays',2009,'tt1426361'),(185,'Ghost Town',2008,'tt0995039'),(186,'Almost Famous',2000,'tt0181875'),(187,'Cargo',2009,'tt0381940'),(188,'Glorious 39',2009,'tt1319694'),(189,'Fifty Dead Men Walking',2009,'tt1097643'),(190,'Grey Gardens',2009,'tt0758751'),(191,'The Bounty Hunter',2010,'tt1038919'),(192,'To Verdener',2008,'tt1065318'),(193,'Vavien',2009,'tt1558877'),(194,'The Return of Frank James',1940,'tt0032983'),(195,'Lebanon',2009,'tt1483831'),(196,'Harry Potter and the Half-Blood Prince',2009,'tt0417741'),(197,'Slovenka',2009,'tt1224373'),(198,'9:06',2009,'tt1361326'),(199,'Der amerikanische Freund',1977,'tt0075675'),(200,'2081',2009,'tt1282015'),(201,'Dear John',2010,'tt0989757'),(202,'Broken English',2007,'tt0772157'),(203,'The Last Wave',1977,'tt0076299'),(204,'The Rainmaker',1997,'tt0119978'),(205,'Keulraesik',2003,'tt0348568'),(206,'The Electric Mist',2009,'tt0910905'),(207,'Serious Moonlight',2009,'tt1133993'),(208,'Ice Age',2002,'tt0268380'),(209,'Ice Age: The Meltdown',2006,'tt0438097'),(210,'Ice Age: Dawn of the Dinosaurs',2009,'tt1080016'),(211,'La doppia ora',2009,'tt1379222'),(212,'A Single Man',2009,'tt1315981'),(213,'Cracks',2009,'tt1183665'),(214,'The Missing Person',2009,'tt1105512'),(215,'Extraordinary Measures',2010,'tt1244659'),(216,'Leap Year',2010,'tt1216492'),(217,'Nowhere Boy',2009,'tt1266029'),(218,'Yahşi Batı',2010,'tt1567448'),(219,'Sonbahar',2008,'tt1330591'),(220,'Tombstone',1993,'tt0108358'),(221,'La Sconosciuta',2006,'tt0494271'),(222,'I Love You Phillip Morris',2010,'tt1045772'),(223,'You Dont Know Jack',2010,'tt1132623'),(224,'Ex Drummer',2007,'tt0812243'),(225,'Yip Man',2008,'tt1220719'),(226,'Yip Man 2: Chung si chuen kei',2010,'tt1386932'),(227,'Alice in Wonderland',2010,'tt1014759'),(228,'Chloe',2009,'tt1352824'),(229,'Elegy',2008,'tt0974554'),(230,'Voditel dlya Very',2004,'tt0416292'),(231,'Romantik Komedi',2010,'tt1587263'),(232,'Veda',2010,'tt1586001'),(233,'Drag Me to Hell',2009,'tt1127180'),(234,'Stalag 17',1953,'tt0046359'),(235,'What Doesnt Kill You',2008,'tt1133991'),(236,'Faubourg 36',2008,'tt0948535'),(237,'Germinal',1993,'tt0107002'),(238,'My Left Foot: The Story of Christy Brown',1989,'tt0097937'),(239,'Sin Nombre',2010,'tt1127715'),(240,'Eloïse',2009,'tt1221188'),(241,'Başka Dilde Aşk',2009,'tt1513713'),(242,'The Book of Eli',2010,'tt1037705'),(243,'Air Doll',2009,'tt1371630'),(244,'Azumi',2003,'tt0384819'),(245,'Azumi 2: Death or Love',2005,'tt0431641'),(246,'Unthinkable',2010,'tt0914863'),(255,'Shrek Forever After',2010,'tt0892791');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(36) NOT NULL,
  `firstname` varchar(36) NOT NULL,
  `lastname` varchar(36) NOT NULL,
  `email` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `username` (`username`),
  KEY `username_2` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-01-15  9:17:13

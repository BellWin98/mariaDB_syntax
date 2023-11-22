-- MariaDB dump 10.19-11.3.0-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: board
-- ------------------------------------------------------
-- Server version	11.3.0-MariaDB

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
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('ADMIN','USER') NOT NULL DEFAULT 'USER',
  `address` varchar(255) DEFAULT NULL,
  `age` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `author_unique` (`email`),
  KEY `name_index` (`name`),
  KEY `name_email_index` (`name`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES
(1,'tim123',NULL,NULL,'USER',NULL,15),
(2,'한종승',NULL,NULL,'ADMIN',NULL,23),
(3,'bellwin',NULL,NULL,'USER',NULL,38),
(4,'gjalswl',NULL,NULL,'USER',NULL,52),
(5,'bellwin',NULL,NULL,'USER',NULL,25),
(6,'aa',NULL,NULL,'USER',NULL,NULL),
(7,'han7',NULL,NULL,'USER',NULL,NULL),
(8,'han8',NULL,NULL,'USER',NULL,NULL),
(9,'han9',NULL,NULL,'USER',NULL,NULL),
(10,'han10',NULL,NULL,'USER',NULL,NULL),
(11,'han11',NULL,NULL,'USER',NULL,NULL),
(12,'han12',NULL,NULL,'USER',NULL,NULL),
(13,'han13',NULL,NULL,'USER',NULL,NULL),
(14,'han14',NULL,NULL,'USER',NULL,NULL),
(15,'han15',NULL,NULL,'USER',NULL,NULL),
(16,'han16',NULL,NULL,'USER',NULL,NULL),
(17,'han17',NULL,NULL,'USER',NULL,NULL),
(18,'han18',NULL,NULL,'USER',NULL,NULL),
(19,'han19',NULL,NULL,'USER',NULL,NULL),
(20,'han20',NULL,NULL,'USER',NULL,NULL),
(21,'han21',NULL,NULL,'USER',NULL,NULL),
(22,'han22',NULL,NULL,'USER',NULL,NULL),
(23,'han23',NULL,NULL,'USER',NULL,NULL),
(24,'han24',NULL,NULL,'USER',NULL,NULL),
(25,'han25',NULL,NULL,'USER',NULL,NULL),
(26,'han26',NULL,NULL,'USER',NULL,NULL),
(27,'han27',NULL,NULL,'USER',NULL,NULL),
(28,'han28',NULL,NULL,'USER',NULL,NULL),
(29,'han29',NULL,NULL,'USER',NULL,NULL),
(30,'han30',NULL,NULL,'USER',NULL,NULL),
(31,'han31',NULL,NULL,'USER',NULL,NULL),
(32,'han32',NULL,NULL,'USER',NULL,NULL),
(33,'han33',NULL,NULL,'USER',NULL,NULL),
(34,'han34',NULL,NULL,'USER',NULL,NULL),
(35,'han35',NULL,NULL,'USER',NULL,NULL),
(36,'han36',NULL,NULL,'USER',NULL,NULL),
(37,'han37',NULL,NULL,'USER',NULL,NULL),
(38,'han38',NULL,NULL,'USER',NULL,NULL),
(39,'han39',NULL,NULL,'USER',NULL,NULL),
(40,'han40',NULL,NULL,'USER',NULL,NULL),
(41,'han41',NULL,NULL,'USER',NULL,NULL),
(42,'han42',NULL,NULL,'USER',NULL,NULL),
(43,'han43',NULL,NULL,'USER',NULL,NULL),
(44,'han44',NULL,NULL,'USER',NULL,NULL),
(45,'han45',NULL,NULL,'USER',NULL,NULL),
(46,'han46',NULL,NULL,'USER',NULL,NULL),
(47,'han47',NULL,NULL,'USER',NULL,NULL),
(48,'han48',NULL,NULL,'USER',NULL,NULL),
(49,'han49',NULL,NULL,'USER',NULL,NULL),
(50,'han50',NULL,NULL,'USER',NULL,NULL),
(51,'han51',NULL,NULL,'USER',NULL,NULL),
(52,'han52',NULL,NULL,'USER',NULL,NULL),
(53,'han53',NULL,NULL,'USER',NULL,NULL),
(54,'han54',NULL,NULL,'USER',NULL,NULL),
(55,'han55',NULL,NULL,'USER',NULL,NULL),
(56,'han56',NULL,NULL,'USER',NULL,NULL),
(57,'han57',NULL,NULL,'USER',NULL,NULL),
(58,'han58',NULL,NULL,'USER',NULL,NULL),
(59,'han59',NULL,NULL,'USER',NULL,NULL),
(60,'han60',NULL,NULL,'USER',NULL,NULL),
(61,'han61',NULL,NULL,'USER',NULL,NULL),
(62,'han62',NULL,NULL,'USER',NULL,NULL),
(63,'han63',NULL,NULL,'USER',NULL,NULL),
(64,'han64',NULL,NULL,'USER',NULL,NULL),
(65,'han65',NULL,NULL,'USER',NULL,NULL),
(66,'han66',NULL,NULL,'USER',NULL,NULL),
(67,'han67',NULL,NULL,'USER',NULL,NULL),
(68,'han68',NULL,NULL,'USER',NULL,NULL),
(69,'han69',NULL,NULL,'USER',NULL,NULL),
(70,'han70',NULL,NULL,'USER',NULL,NULL),
(71,'han71',NULL,NULL,'USER',NULL,NULL),
(72,'han72',NULL,NULL,'USER',NULL,NULL),
(73,'han73',NULL,NULL,'USER',NULL,NULL),
(74,'han74',NULL,NULL,'USER',NULL,NULL),
(75,'han75',NULL,NULL,'USER',NULL,NULL),
(76,'han76',NULL,NULL,'USER',NULL,NULL),
(77,'han77',NULL,NULL,'USER',NULL,NULL),
(78,'han78',NULL,NULL,'USER',NULL,NULL),
(79,'han79',NULL,NULL,'USER',NULL,NULL),
(80,'han80',NULL,NULL,'USER',NULL,NULL),
(81,'han81',NULL,NULL,'USER',NULL,NULL),
(82,'han82',NULL,NULL,'USER',NULL,NULL),
(83,'han83',NULL,NULL,'USER',NULL,NULL),
(84,'han84',NULL,NULL,'USER',NULL,NULL),
(85,'han85',NULL,NULL,'USER',NULL,NULL),
(86,'han86',NULL,NULL,'USER',NULL,NULL),
(87,'han87',NULL,NULL,'USER',NULL,NULL),
(88,'han88',NULL,NULL,'USER',NULL,NULL),
(89,'han89',NULL,NULL,'USER',NULL,NULL),
(90,'han90',NULL,NULL,'USER',NULL,NULL),
(91,'han91',NULL,NULL,'USER',NULL,NULL),
(92,'han92',NULL,NULL,'USER',NULL,NULL),
(93,'han93',NULL,NULL,'USER',NULL,NULL),
(94,'han94',NULL,NULL,'USER',NULL,NULL),
(95,'han95',NULL,NULL,'USER',NULL,NULL),
(96,'han96',NULL,NULL,'USER',NULL,NULL),
(97,'han97',NULL,NULL,'USER',NULL,NULL),
(98,'han98',NULL,NULL,'USER',NULL,NULL),
(99,'han99',NULL,NULL,'USER',NULL,NULL);
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `author_for_view`
--

DROP TABLE IF EXISTS `author_for_view`;
/*!50001 DROP VIEW IF EXISTS `author_for_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `author_for_view` AS SELECT
 1 AS `name`,
  1 AS `email` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `contents` varchar(3000) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `price` decimal(10,3) DEFAULT NULL,
  `created_time` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `post_author_fk` (`author_id`),
  CONSTRAINT `post_author_fk` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES
(2,'title1','contents2',1,1000.000,'2023-11-17 16:26:01'),
(3,'title3','contents3',1,2000.000,'2023-11-17 16:26:01'),
(4,'title4','contents4',2,3000.000,'2023-11-20 16:26:01'),
(5,'title5','contents5',3,4000.000,'2023-11-17 16:26:01'),
(6,'title6','contents6',3,5000.000,'2023-11-17 16:26:01'),
(7,'title7','content7',4,6000.000,'2023-11-20 16:26:17'),
(9,'title9','contents9',4,8000.000,'2023-11-20 11:32:56'),
(10,'title10','contents10',4,9000.000,'2023-11-20 11:35:43'),
(11,'title11','contents11',5,10000.000,'2023-11-20 11:36:02'),
(12,'title12','contents12',5,11000.000,'2023-11-20 11:36:21'),
(13,'title13','contents13',5,12000.000,'2023-11-20 11:37:23'),
(20,'testTitle','testContents',4,NULL,'2023-11-22 14:31:15'),
(21,'testTitle','testContents',4,NULL,'2023-11-22 14:31:44'),
(22,'title13','contents13',6,11000.000,'2023-11-22 15:27:23');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_blob`
--

DROP TABLE IF EXISTS `table_blob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `table_blob` (
  `id` int(11) DEFAULT NULL,
  `my_img` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_blob`
--

LOCK TABLES `table_blob` WRITE;
/*!40000 ALTER TABLE `table_blob` DISABLE KEYS */;
INSERT INTO `table_blob` VALUES
(1,NULL),
(2,NULL),
(3,NULL);
/*!40000 ALTER TABLE `table_blob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `author_for_view`
--

/*!50001 DROP VIEW IF EXISTS `author_for_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `author_for_view` AS select `author`.`name` AS `name`,`author`.`email` AS `email` from `author` */;
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

-- Dump completed on 2023-11-22 17:06:54

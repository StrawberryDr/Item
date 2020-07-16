-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: timetable
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `administrators`
--

DROP TABLE IF EXISTS `administrators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `administrators` (
  `administrators_number` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `administrators_password` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`administrators_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrators`
--

LOCK TABLES `administrators` WRITE;
/*!40000 ALTER TABLE `administrators` DISABLE KEYS */;
INSERT INTO `administrators` VALUES ('11111','11111');
/*!40000 ALTER TABLE `administrators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classroom`
--

DROP TABLE IF EXISTS `classroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `classroom` (
  `classroom_name` varchar(45) NOT NULL,
  `startweek` int(11) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `endweek` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classroom`
--

LOCK TABLES `classroom` WRITE;
/*!40000 ALTER TABLE `classroom` DISABLE KEYS */;
INSERT INTO `classroom` VALUES ('A110',NULL,NULL,NULL,NULL,5),('A111',NULL,NULL,NULL,NULL,6),('A112',NULL,NULL,NULL,NULL,7),('A113',NULL,NULL,NULL,NULL,8),('A114',NULL,NULL,NULL,NULL,9),('A115',NULL,NULL,NULL,NULL,10),('A116',NULL,NULL,NULL,NULL,11),('A110',1,'星期一','8:00-10:00',6,13),('A110',1,'星期三','8:00-10:00',6,14),('A110',3,'星期二','8:00-10:00',9,18);
/*!40000 ALTER TABLE `classroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `computer_major`
--

DROP TABLE IF EXISTS `computer_major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `computer_major` (
  `class_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `start_week` int(11) NOT NULL,
  `end_week` int(11) NOT NULL,
  `week1` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `classroom` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `teacher` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `week2` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `time1` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `time2` varchar(45) NOT NULL,
  PRIMARY KEY (`class_name`),
  UNIQUE KEY `class_name_UNIQUE` (`class_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `computer_major`
--

LOCK TABLES `computer_major` WRITE;
/*!40000 ALTER TABLE `computer_major` DISABLE KEYS */;
INSERT INTO `computer_major` VALUES ('大数据',3,9,'星期二','A110','小黑',' ','8:00-10:00',' '),('离散数学',1,6,'星期一','A110','小黑','星期三','8:00-10:00','8:00-10:00');
/*!40000 ALTER TABLE `computer_major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digitmedia_major`
--

DROP TABLE IF EXISTS `digitmedia_major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `digitmedia_major` (
  `class_name` varchar(45) NOT NULL,
  `start_week` int(11) NOT NULL,
  `end_week` int(11) NOT NULL,
  `week1` varchar(45) NOT NULL,
  `week2` varchar(45) NOT NULL,
  `classroom` varchar(45) NOT NULL,
  `teacher` varchar(45) NOT NULL,
  `time1` varchar(45) NOT NULL,
  `time2` varchar(45) NOT NULL,
  PRIMARY KEY (`class_name`),
  UNIQUE KEY `class_name_UNIQUE` (`class_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digitmedia_major`
--

LOCK TABLES `digitmedia_major` WRITE;
/*!40000 ALTER TABLE `digitmedia_major` DISABLE KEYS */;
/*!40000 ALTER TABLE `digitmedia_major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soft_major`
--

DROP TABLE IF EXISTS `soft_major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `soft_major` (
  `class_name` varchar(45) NOT NULL,
  `start_week` int(11) NOT NULL,
  `end_week` int(11) NOT NULL,
  `week1` varchar(45) NOT NULL,
  `week2` varchar(45) NOT NULL,
  `classroom` varchar(45) NOT NULL,
  `teacher` varchar(45) NOT NULL,
  `time1` varchar(45) NOT NULL,
  `time2` varchar(45) NOT NULL,
  PRIMARY KEY (`class_name`),
  UNIQUE KEY `class_name_UNIQUE` (`class_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soft_major`
--

LOCK TABLES `soft_major` WRITE;
/*!40000 ALTER TABLE `soft_major` DISABLE KEYS */;
/*!40000 ALTER TABLE `soft_major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `major` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `class` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `grade` int(11) NOT NULL,
  PRIMARY KEY (`sno`),
  UNIQUE KEY `sno_UNIQUE` (`sno`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (3,'123','软件工程','2','小黑',15);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `web_major`
--

DROP TABLE IF EXISTS `web_major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `web_major` (
  `class_name` varchar(45) NOT NULL,
  `start_week` int(11) NOT NULL,
  `end_week` int(11) NOT NULL,
  `week1` varchar(45) NOT NULL,
  `week2` varchar(45) NOT NULL,
  `classroom` varchar(45) NOT NULL,
  `teacher` varchar(45) NOT NULL,
  `time1` varchar(45) NOT NULL,
  `time2` varchar(45) NOT NULL,
  PRIMARY KEY (`class_name`),
  UNIQUE KEY `class_name_UNIQUE` (`class_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `web_major`
--

LOCK TABLES `web_major` WRITE;
/*!40000 ALTER TABLE `web_major` DISABLE KEYS */;
/*!40000 ALTER TABLE `web_major` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-30 22:47:11

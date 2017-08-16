-- MySQL dump 10.15  Distrib 10.0.23-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ss_silverstripe
-- ------------------------------------------------------
-- Server version	10.0.23-MariaDB-0+deb8u1

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
-- Current Database: `ss_silverstripe`
--

/*!40000 DROP DATABASE IF EXISTS `ss_silverstripe`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ss_silverstripe` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `ss_silverstripe`;

--
-- Table structure for table `AssistanceModule`
--

DROP TABLE IF EXISTS `AssistanceModule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssistanceModule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LeftTextID` int(11) NOT NULL DEFAULT '0',
  `CentreImageID` int(11) NOT NULL DEFAULT '0',
  `LeftText` mediumtext CHARACTER SET utf8,
  `RightText` mediumtext CHARACTER SET utf8,
  `CallToActionButtonID` int(11) NOT NULL DEFAULT '0',
  `Theme` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `LeftTextID` (`LeftTextID`),
  KEY `CentreImageID` (`CentreImageID`),
  KEY `CallToActionButtonID` (`CallToActionButtonID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssistanceModule`
--

LOCK TABLES `AssistanceModule` WRITE;
/*!40000 ALTER TABLE `AssistanceModule` DISABLE KEYS */;
INSERT INTO `AssistanceModule` VALUES (15,0,10,'<h6>Looking to deploy your services <strong>globally</strong>?</h6><p>Our friendly support team will guide you through the easy set-up and get any services up-and-running in less than 10 minutes.</p>',NULL,4,NULL);
/*!40000 ALTER TABLE `AssistanceModule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssistanceModule_Live`
--

DROP TABLE IF EXISTS `AssistanceModule_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssistanceModule_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LeftTextID` int(11) NOT NULL DEFAULT '0',
  `CentreImageID` int(11) NOT NULL DEFAULT '0',
  `RightTextID` int(11) NOT NULL DEFAULT '0',
  `LeftText` mediumtext CHARACTER SET utf8,
  `RightText` mediumtext CHARACTER SET utf8,
  `CallToActionButtonID` int(11) NOT NULL DEFAULT '0',
  `Theme` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `LeftTextID` (`LeftTextID`),
  KEY `CentreImageID` (`CentreImageID`),
  KEY `RightTextID` (`RightTextID`),
  KEY `CallToActionButtonID` (`CallToActionButtonID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssistanceModule_Live`
--

LOCK TABLES `AssistanceModule_Live` WRITE;
/*!40000 ALTER TABLE `AssistanceModule_Live` DISABLE KEYS */;
INSERT INTO `AssistanceModule_Live` VALUES (15,0,10,0,'<h6>Looking to deploy your services <strong>globally</strong>?</h6><p>Our friendly support team will guide you through the easy set-up and get any services up-and-running in less than 10 minutes.</p>',NULL,4,NULL);
/*!40000 ALTER TABLE `AssistanceModule_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssistanceModule_versions`
--

DROP TABLE IF EXISTS `AssistanceModule_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssistanceModule_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `LeftTextID` int(11) NOT NULL DEFAULT '0',
  `CentreImageID` int(11) NOT NULL DEFAULT '0',
  `RightTextID` int(11) NOT NULL DEFAULT '0',
  `LeftText` mediumtext CHARACTER SET utf8,
  `RightText` mediumtext CHARACTER SET utf8,
  `CallToActionButtonID` int(11) NOT NULL DEFAULT '0',
  `Theme` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `LeftTextID` (`LeftTextID`),
  KEY `CentreImageID` (`CentreImageID`),
  KEY `RightTextID` (`RightTextID`),
  KEY `CallToActionButtonID` (`CallToActionButtonID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssistanceModule_versions`
--

LOCK TABLES `AssistanceModule_versions` WRITE;
/*!40000 ALTER TABLE `AssistanceModule_versions` DISABLE KEYS */;
INSERT INTO `AssistanceModule_versions` VALUES (1,15,1,0,10,0,'<p>Dapibus Lorem <br>Condimentum Ipsum</p>','<p>Malesuada Nullam Tristique</p>',4,NULL),(2,15,2,0,10,0,'<p>Dapibus Lorem <br>Condimentum Ipsum</p>','<p>Malesuada Nullam Tristique</p>',4,NULL),(3,15,3,0,10,0,'<p>Dapibus Lorem <br>Condimentum Ipsum</p>','<p>Malesuada Nullam Tristique</p>',4,NULL),(4,15,4,0,10,0,'<p>Dapibus Lorem <br>Condimentum Ipsum</p>','<p>Malesuada Nullam Tristique</p>',4,NULL),(5,15,5,0,10,0,'<p>Dapibus Lorem <br>Condimentum Ipsum</p>','<p>Malesuada Nullam Tristique</p>',4,NULL),(6,15,6,0,10,0,'<p>Dapibus Lorem <br>Condimentum Ipsum</p>','<p>Malesuada Nullam Tristique</p>',4,NULL),(7,15,7,0,10,0,'<p>Dapibus Lorem <br>Condimentum Ipsum</p>','<p>Malesuada Nullam Tristique</p>',4,NULL),(8,15,8,0,10,0,'<p>Dapibus Lorem <br>Condimentum Ipsum</p>','<p>Malesuada Nullam Tristique</p>',4,NULL),(9,15,9,0,10,0,'<p>Dapibus Lorem <br>Condimentum Ipsum</p>','<p>Malesuada Nullam Tristique</p>',4,NULL),(10,15,10,0,10,0,'<p>Dapibus Lorem <br>Condimentum Ipsum</p>',NULL,4,NULL),(11,15,11,0,10,0,'<p>Dapibus Lorem <br>Condimentum Ipsum</p>',NULL,4,NULL),(12,15,12,0,10,0,'<h2>Looking to deploy your services <strong>globally</strong>?</h2><p>We offer access to Microsoft Azure public and support you with our CloudCare solutions.</p>',NULL,4,NULL),(13,15,13,0,10,0,'<h2>Looking to deploy your services <strong>globally</strong>?</h2><p>We offer access to Microsoft Azure public and support you with our CloudCare solutions.</p>',NULL,4,NULL),(14,15,14,0,10,0,'<h2>Looking to deploy your services <strong>globally</strong>?</h2><p>Our friendly support team will guide you through the easy set-up and get any services up-and-running in less than 10 minutes.</p>',NULL,4,NULL),(15,15,15,0,10,0,'<h2>Looking to deploy your services <strong>globally</strong>?</h2><p>Our friendly support team will guide you through the easy set-up and get any services up-and-running in less than 10 minutes.</p>',NULL,4,NULL),(16,15,16,0,10,0,'<h6>Looking to deploy your services <strong>globally</strong>?</h6><p>Our friendly support team will guide you through the easy set-up and get any services up-and-running in less than 10 minutes.</p>',NULL,4,NULL),(17,15,17,0,10,0,'<h6>Looking to deploy your services <strong>globally</strong>?</h6><p>Our friendly support team will guide you through the easy set-up and get any services up-and-running in less than 10 minutes.</p>',NULL,4,NULL);
/*!40000 ALTER TABLE `AssistanceModule_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Author`
--

DROP TABLE IF EXISTS `Author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Author` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Author') CHARACTER SET utf8 DEFAULT 'Author',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `FirstName` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `Surname` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Author`
--

LOCK TABLES `Author` WRITE;
/*!40000 ALTER TABLE `Author` DISABLE KEYS */;
INSERT INTO `Author` VALUES (1,'Author','2017-07-12 15:34:28','2017-07-12 15:34:28','Default Admin',NULL);
/*!40000 ALTER TABLE `Author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Block`
--

DROP TABLE IF EXISTS `Block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Block` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Block','ModuleBlock','ClientBlock','FeatureBlock','GridBlock','HTMLTextBlock','ImageBlock','RawHTMLTextBlock','DualColumnBlock','SingleColumnBlock','TriColumnBlock') CHARACTER SET utf8 DEFAULT 'Block',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `Description` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Block`
--

LOCK TABLES `Block` WRITE;
/*!40000 ALTER TABLE `Block` DISABLE KEYS */;
INSERT INTO `Block` VALUES (6,'HTMLTextBlock','2017-07-06 14:08:19','2017-07-02 13:24:36',1,'YYY xx x',12),(7,'ImageBlock','2017-07-06 14:08:19','2017-07-02 14:36:11',2,'pexels photo 87223',5),(8,'FeatureBlock','2017-07-02 16:10:06','2017-07-02 16:04:17',1,'Feature 1',8),(9,'FeatureBlock','2017-07-02 16:21:24','2017-07-02 16:21:06',2,'Feature 2',1),(10,'HTMLTextBlock','2017-07-03 18:16:57','2017-07-02 16:33:01',1,'Nibh Inceptos Aenean',4),(11,'GridBlock','2017-07-10 14:51:38','2017-07-03 09:34:49',1,'Grid block A',11),(12,'GridBlock','2017-07-03 09:38:54','2017-07-03 09:38:00',2,'Grid Block B',4),(13,'GridBlock','2017-07-03 09:38:43','2017-07-03 09:38:31',3,'Grid Block C',2),(14,'ClientBlock','2017-07-03 09:42:57','2017-07-03 09:42:15',1,'Client Block A',3),(15,'ClientBlock','2017-07-03 09:59:11','2017-07-03 09:51:08',2,'Client B',4),(16,'FeatureBlock','2017-07-06 10:34:34','2017-07-06 10:34:22',3,'Feature 3',1),(17,'FeatureBlock','2017-07-06 10:35:45','2017-07-06 10:35:27',4,'Feature 4',1),(18,'FeatureBlock','2017-07-06 10:38:06','2017-07-06 10:36:37',5,'Feature 5',1),(19,'GridBlock','2017-07-10 15:34:15','2017-07-10 15:34:12',4,'Grid Block D',1),(20,'HTMLTextBlock','2017-07-10 17:52:21','2017-07-10 17:33:36',1,'Block Title',4),(21,'HTMLTextBlock','2017-07-10 17:49:42','2017-07-10 17:48:01',2,NULL,2),(22,'GridBlock','2017-07-21 12:53:40','2017-07-11 14:57:35',1,'Umbrellar Cloud',14),(23,'GridBlock','2017-07-11 15:01:21','2017-07-11 15:01:20',2,'Managed Compute',1),(24,'GridBlock','2017-07-11 15:02:41','2017-07-11 15:02:40',3,'Cloud Connect',1),(25,'GridBlock','2017-07-11 15:11:09','2017-07-11 15:11:08',4,'Pro Services',1),(26,'ClientBlock','2017-07-11 15:24:35','2017-07-11 15:18:44',1,'BNZ',4),(27,'ClientBlock','2017-07-11 15:25:30','2017-07-11 15:25:07',2,'Finda',2),(28,'ClientBlock','2017-07-11 15:42:24','2017-07-11 15:37:49',3,'ACC',2),(29,'ClientBlock','2017-07-11 15:47:24','2017-07-11 15:45:09',4,'Auckland Council',2),(30,'ClientBlock','2017-07-11 15:49:45','2017-07-11 15:49:15',5,'Slingshot',2),(31,'GridBlock','2017-07-13 10:42:43','2017-07-13 10:42:33',1,'Compute',2),(32,'GridBlock','2017-07-13 13:19:05','2017-07-13 11:19:32',1,'Virtual Machines',4),(52,'FeatureBlock','2017-07-26 14:36:02','2017-07-26 14:36:02',5,'Feature 5',2),(51,'FeatureBlock','2017-07-26 14:36:02','2017-07-26 14:36:02',4,'Feature 4',2),(50,'FeatureBlock','2017-07-26 14:36:02','2017-07-26 14:36:02',3,'Feature 3',2),(49,'FeatureBlock','2017-07-26 14:36:02','2017-07-26 14:36:02',2,'Feature 2',2),(48,'FeatureBlock','2017-07-26 14:36:02','2017-07-26 14:36:02',1,'Feature 1',2),(38,'HTMLTextBlock','2017-07-26 13:57:04','2017-07-26 13:57:04',1,'YYY xx x',1),(39,'ImageBlock','2017-07-26 13:57:04','2017-07-26 13:57:04',2,'pexels photo 87223',1),(40,'HTMLTextBlock','2017-07-26 13:57:05','2017-07-26 13:57:05',1,'Block Title',1),(41,'HTMLTextBlock','2017-07-26 13:57:05','2017-07-26 13:57:05',2,NULL,1),(42,'GridBlock','2017-07-26 13:57:06','2017-07-26 13:57:06',1,'Grid block A',1),(43,'GridBlock','2017-07-26 13:57:06','2017-07-26 13:57:06',2,'Grid Block B',1),(44,'GridBlock','2017-07-26 13:57:06','2017-07-26 13:57:06',3,'Grid Block C',1),(45,'GridBlock','2017-07-26 13:57:06','2017-07-26 13:57:06',4,'Grid Block D',1),(46,'ClientBlock','2017-07-26 13:57:07','2017-07-26 13:57:07',1,'Client Block A',1),(47,'ClientBlock','2017-07-26 13:57:07','2017-07-26 13:57:07',2,'Client B',1),(53,'FeatureBlock','2017-07-26 14:38:20','2017-07-26 14:37:31',1,'Feature 1a',4),(54,'FeatureBlock','2017-07-26 14:37:31','2017-07-26 14:37:31',2,'Feature 2',2),(55,'FeatureBlock','2017-07-26 14:37:31','2017-07-26 14:37:31',3,'Feature 3',2),(56,'FeatureBlock','2017-07-26 14:37:31','2017-07-26 14:37:31',4,'Feature 4',2),(57,'FeatureBlock','2017-07-26 14:37:31','2017-07-26 14:37:31',5,'Feature 5',2),(58,'HTMLTextBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',1,'YYY xx x',2),(59,'HTMLTextBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',1,'YYY xx x',2),(60,'ImageBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',2,'pexels photo 87223',2),(61,'ImageBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',2,'pexels photo 87223',2),(62,'HTMLTextBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',1,'Block Title',2),(63,'HTMLTextBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',1,'Block Title',2),(64,'HTMLTextBlock','2017-07-26 14:37:33','2017-07-26 14:37:32',2,NULL,4),(65,'HTMLTextBlock','2017-07-26 14:37:33','2017-07-26 14:37:32',2,NULL,4),(66,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',1,'Grid block A',2),(67,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',1,'Grid block A',2),(68,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',2,'Grid Block B',2),(69,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',2,'Grid Block B',2),(70,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',3,'Grid Block C',2),(71,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',3,'Grid Block C',2),(72,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',4,'Grid Block D',2),(73,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',4,'Grid Block D',2),(74,'ClientBlock','2017-07-26 14:37:34','2017-07-26 14:37:34',1,'Client Block A',2),(75,'ClientBlock','2017-07-26 14:37:34','2017-07-26 14:37:34',1,'Client Block A',2),(76,'ClientBlock','2017-07-26 14:37:34','2017-07-26 14:37:34',2,'Client B',2),(77,'ClientBlock','2017-07-26 14:37:34','2017-07-26 14:37:34',2,'Client B',2);
/*!40000 ALTER TABLE `Block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockModule`
--

DROP TABLE IF EXISTS `BlockModule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockModule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Theme` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockModule`
--

LOCK TABLES `BlockModule` WRITE;
/*!40000 ALTER TABLE `BlockModule` DISABLE KEYS */;
INSERT INTO `BlockModule` VALUES (7,'black-squeeze'),(8,'module-theme-white'),(9,NULL),(10,'black-squeeze'),(11,NULL),(13,NULL),(16,NULL),(18,NULL),(23,'black-squeeze'),(24,NULL),(32,'module-theme-white'),(33,'black-squeeze'),(34,NULL),(35,'black-squeeze'),(36,NULL),(39,'module-theme-white'),(40,'black-squeeze'),(41,NULL),(42,'black-squeeze'),(43,NULL),(46,'module-theme-white'),(47,'black-squeeze'),(48,NULL),(49,'black-squeeze'),(50,NULL),(55,'module-theme-white'),(56,'black-squeeze'),(57,NULL),(58,'black-squeeze'),(59,NULL),(62,'module-theme-white'),(63,'black-squeeze'),(64,NULL),(65,'black-squeeze'),(66,NULL),(69,'module-theme-white'),(70,'black-squeeze'),(71,NULL),(72,'black-squeeze'),(73,NULL),(76,'module-theme-white'),(77,'black-squeeze'),(78,NULL),(79,'black-squeeze'),(80,NULL),(83,'module-theme-white'),(84,'black-squeeze'),(85,NULL),(86,'black-squeeze'),(87,NULL),(96,'module-theme-white'),(98,'module-theme-white'),(99,'black-squeeze'),(100,NULL),(101,'black-squeeze'),(102,NULL);
/*!40000 ALTER TABLE `BlockModule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockModule_Live`
--

DROP TABLE IF EXISTS `BlockModule_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockModule_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Theme` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockModule_Live`
--

LOCK TABLES `BlockModule_Live` WRITE;
/*!40000 ALTER TABLE `BlockModule_Live` DISABLE KEYS */;
INSERT INTO `BlockModule_Live` VALUES (7,'black-squeeze'),(8,'module-theme-white'),(9,NULL),(10,'black-squeeze'),(11,NULL),(13,NULL),(16,NULL),(18,NULL),(23,'black-squeeze'),(24,NULL),(32,'module-theme-white'),(33,'black-squeeze'),(34,NULL),(35,'black-squeeze'),(36,NULL),(39,'module-theme-white'),(40,'black-squeeze'),(41,NULL),(42,'black-squeeze'),(43,NULL),(46,'module-theme-white'),(47,'black-squeeze'),(48,NULL),(49,'black-squeeze'),(50,NULL),(55,'module-theme-white'),(56,'black-squeeze'),(57,NULL),(58,'black-squeeze'),(59,NULL),(62,'module-theme-white'),(63,'black-squeeze'),(64,NULL),(65,'black-squeeze'),(66,NULL),(69,'module-theme-white'),(70,'black-squeeze'),(71,NULL),(72,'black-squeeze'),(73,NULL),(76,'module-theme-white'),(77,'black-squeeze'),(78,NULL),(79,'black-squeeze'),(80,NULL),(83,'module-theme-white'),(84,'black-squeeze'),(85,NULL),(86,'black-squeeze'),(87,NULL),(98,'module-theme-white'),(99,'black-squeeze'),(100,NULL),(101,'black-squeeze'),(102,NULL);
/*!40000 ALTER TABLE `BlockModule_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlockModule_versions`
--

DROP TABLE IF EXISTS `BlockModule_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlockModule_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Theme` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlockModule_versions`
--

LOCK TABLES `BlockModule_versions` WRITE;
/*!40000 ALTER TABLE `BlockModule_versions` DISABLE KEYS */;
INSERT INTO `BlockModule_versions` VALUES (16,7,1,'light-grey'),(17,7,2,'light-grey'),(18,7,3,'light-grey'),(19,7,4,'light-grey'),(20,7,5,'light-grey'),(21,8,1,NULL),(22,8,2,NULL),(23,9,1,NULL),(24,9,2,NULL),(25,9,3,NULL),(26,10,1,NULL),(27,10,2,NULL),(28,10,3,NULL),(29,10,4,NULL),(30,10,5,NULL),(31,11,1,NULL),(32,11,2,NULL),(36,13,1,NULL),(37,13,2,NULL),(38,13,3,NULL),(39,9,4,NULL),(40,9,5,NULL),(41,9,6,NULL),(42,9,7,NULL),(43,8,3,'module-theme-sherpa-'),(44,8,4,'module-theme-sherpa-'),(45,8,5,'module-theme-black-s'),(46,8,6,'module-theme-black-s'),(47,8,7,'module-theme-sherpa-'),(48,8,8,'module-theme-sherpa-'),(49,8,9,'module-theme-sherpa-'),(50,8,10,'module-theme-sherpa-'),(51,8,11,'module-theme-black-s'),(52,8,12,'module-theme-black-s'),(53,8,13,'module-theme-white'),(54,8,14,'module-theme-white'),(55,7,6,'module-theme-black-s'),(56,7,7,'module-theme-black-s'),(57,7,8,'module-theme-black-s'),(58,7,9,'module-theme-black-s'),(59,10,6,'black-squeeze'),(60,10,7,'black-squeeze'),(61,10,8,'black-squeeze'),(62,10,9,'black-squeeze'),(63,10,10,'black-squeeze'),(64,10,11,'black-squeeze'),(65,10,12,'black-squeeze'),(66,10,13,'black-squeeze'),(67,10,14,'black-squeeze'),(68,10,15,'black-squeeze'),(69,10,16,'black-squeeze'),(70,10,17,'black-squeeze'),(71,13,4,NULL),(72,13,5,NULL),(73,7,10,'black-squeeze'),(74,7,11,'black-squeeze'),(75,11,3,NULL),(76,11,4,NULL),(77,16,1,NULL),(78,16,2,NULL),(79,16,3,NULL),(80,16,4,NULL),(81,18,1,NULL),(82,18,2,NULL),(83,10,18,'black-squeeze'),(84,10,19,'black-squeeze'),(85,10,20,'black-squeeze'),(86,10,21,'black-squeeze'),(87,23,1,NULL),(88,23,2,NULL),(89,23,3,NULL),(90,23,4,'black-squeeze'),(91,23,5,'black-squeeze'),(92,24,1,NULL),(93,24,2,NULL),(94,24,3,NULL),(95,32,1,'module-theme-white'),(96,32,2,'module-theme-white'),(97,33,1,'black-squeeze'),(98,33,2,'black-squeeze'),(99,34,1,NULL),(100,34,2,NULL),(101,35,1,'black-squeeze'),(102,35,2,'black-squeeze'),(103,36,1,NULL),(104,36,2,NULL),(105,39,1,'module-theme-white'),(106,39,2,'module-theme-white'),(107,40,1,'black-squeeze'),(108,40,2,'black-squeeze'),(109,41,1,NULL),(110,41,2,NULL),(111,42,1,'black-squeeze'),(112,42,2,'black-squeeze'),(113,43,1,NULL),(114,43,2,NULL),(115,46,1,'module-theme-white'),(116,46,2,'module-theme-white'),(117,46,3,'module-theme-white'),(118,47,1,'black-squeeze'),(119,47,2,'black-squeeze'),(120,47,3,'black-squeeze'),(121,48,1,NULL),(122,48,2,NULL),(123,48,3,NULL),(124,49,1,'black-squeeze'),(125,49,2,'black-squeeze'),(126,49,3,'black-squeeze'),(127,50,1,NULL),(128,50,2,NULL),(129,50,3,NULL),(130,55,1,'module-theme-white'),(131,55,2,'module-theme-white'),(132,56,1,'black-squeeze'),(133,56,2,'black-squeeze'),(134,57,1,NULL),(135,57,2,NULL),(136,58,1,'black-squeeze'),(137,58,2,'black-squeeze'),(138,59,1,NULL),(139,59,2,NULL),(140,62,1,'module-theme-white'),(141,62,2,'module-theme-white'),(142,63,1,'black-squeeze'),(143,63,2,'black-squeeze'),(144,64,1,NULL),(145,64,2,NULL),(146,65,1,'black-squeeze'),(147,65,2,'black-squeeze'),(148,66,1,NULL),(149,66,2,NULL),(150,69,1,'module-theme-white'),(151,69,2,'module-theme-white'),(152,70,1,'black-squeeze'),(153,70,2,'black-squeeze'),(154,71,1,NULL),(155,71,2,NULL),(156,72,1,'black-squeeze'),(157,72,2,'black-squeeze'),(158,73,1,NULL),(159,73,2,NULL),(160,76,1,'module-theme-white'),(161,76,2,'module-theme-white'),(162,77,1,'black-squeeze'),(163,77,2,'black-squeeze'),(164,78,1,NULL),(165,78,2,NULL),(166,79,1,'black-squeeze'),(167,79,2,'black-squeeze'),(168,80,1,NULL),(169,80,2,NULL),(170,83,1,'module-theme-white'),(171,83,2,'module-theme-white'),(172,84,1,'black-squeeze'),(173,84,2,'black-squeeze'),(174,85,1,NULL),(175,85,2,NULL),(176,86,1,'black-squeeze'),(177,86,2,'black-squeeze'),(178,87,1,NULL),(179,87,2,NULL),(180,96,1,'module-theme-white'),(181,98,1,'module-theme-white'),(182,98,2,'module-theme-white'),(183,99,1,'black-squeeze'),(184,99,2,'black-squeeze'),(185,100,1,NULL),(186,100,2,NULL),(187,101,1,'black-squeeze'),(188,101,2,'black-squeeze'),(189,102,1,NULL),(190,102,2,NULL);
/*!40000 ALTER TABLE `BlockModule_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Block_Live`
--

DROP TABLE IF EXISTS `Block_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Block_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Block','ModuleBlock','ClientBlock','FeatureBlock','GridBlock','HTMLTextBlock','ImageBlock','RawHTMLTextBlock','DualColumnBlock','SingleColumnBlock','TriColumnBlock') CHARACTER SET utf8 DEFAULT 'Block',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `Description` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Block_Live`
--

LOCK TABLES `Block_Live` WRITE;
/*!40000 ALTER TABLE `Block_Live` DISABLE KEYS */;
INSERT INTO `Block_Live` VALUES (6,'HTMLTextBlock','2017-07-06 14:08:19','2017-07-02 13:24:36',1,'YYY xx x',13),(7,'ImageBlock','2017-07-06 14:08:19','2017-07-02 14:36:11',2,'pexels photo 87223',6),(8,'FeatureBlock','2017-07-02 16:10:06','2017-07-02 16:04:17',1,'Feature 1',9),(9,'FeatureBlock','2017-07-02 16:21:24','2017-07-02 16:21:06',2,'Feature 2',2),(10,'HTMLTextBlock','2017-07-03 18:16:57','2017-07-02 16:33:01',1,'Nibh Inceptos Aenean',5),(11,'GridBlock','2017-07-10 14:51:38','2017-07-03 09:34:49',1,'Grid block A',12),(12,'GridBlock','2017-07-03 09:38:54','2017-07-03 09:38:00',2,'Grid Block B',5),(13,'GridBlock','2017-07-03 09:38:43','2017-07-03 09:38:31',3,'Grid Block C',3),(14,'ClientBlock','2017-07-03 09:42:57','2017-07-03 09:42:15',1,'Client Block A',4),(15,'ClientBlock','2017-07-03 09:59:11','2017-07-03 09:51:08',2,'Client B',5),(16,'FeatureBlock','2017-07-06 10:34:34','2017-07-06 10:34:22',3,'Feature 3',2),(17,'FeatureBlock','2017-07-06 10:35:45','2017-07-06 10:35:27',4,'Feature 4',2),(18,'FeatureBlock','2017-07-06 10:38:06','2017-07-06 10:36:37',5,'Feature 5',3),(19,'GridBlock','2017-07-10 15:34:15','2017-07-10 15:34:12',4,'Grid Block D',1),(20,'HTMLTextBlock','2017-07-10 17:52:21','2017-07-10 17:33:36',1,'Block Title',5),(21,'HTMLTextBlock','2017-07-10 17:49:42','2017-07-10 17:48:01',2,NULL,3),(22,'GridBlock','2017-07-21 12:53:40','2017-07-11 14:57:35',1,'Umbrellar Cloud',15),(23,'GridBlock','2017-07-11 15:01:21','2017-07-11 15:01:20',2,'Managed Compute',1),(24,'GridBlock','2017-07-11 15:02:41','2017-07-11 15:02:40',3,'Cloud Connect',1),(25,'GridBlock','2017-07-11 15:11:09','2017-07-11 15:11:08',4,'Pro Services',1),(26,'ClientBlock','2017-07-11 15:24:35','2017-07-11 15:18:44',1,'BNZ',5),(27,'ClientBlock','2017-07-11 15:25:30','2017-07-11 15:25:07',2,'Finda',3),(28,'ClientBlock','2017-07-11 15:42:24','2017-07-11 15:37:49',3,'ACC',3),(29,'ClientBlock','2017-07-11 15:47:24','2017-07-11 15:45:09',4,'Auckland Council',3),(30,'ClientBlock','2017-07-11 15:49:45','2017-07-11 15:49:15',5,'Slingshot',3),(31,'GridBlock','2017-07-13 10:42:43','2017-07-13 10:42:33',1,'Compute',3),(32,'GridBlock','2017-07-13 13:19:05','2017-07-13 11:19:32',1,'Virtual Machines',5),(52,'FeatureBlock','2017-07-26 14:36:02','2017-07-26 14:36:02',5,'Feature 5',3),(51,'FeatureBlock','2017-07-26 14:36:02','2017-07-26 14:36:02',4,'Feature 4',3),(50,'FeatureBlock','2017-07-26 14:36:02','2017-07-26 14:36:02',3,'Feature 3',3),(49,'FeatureBlock','2017-07-26 14:36:02','2017-07-26 14:36:02',2,'Feature 2',3),(48,'FeatureBlock','2017-07-26 14:36:02','2017-07-26 14:36:02',1,'Feature 1',3),(38,'HTMLTextBlock','2017-07-26 13:57:04','2017-07-26 13:57:04',1,'YYY xx x',2),(39,'ImageBlock','2017-07-26 13:57:05','2017-07-26 13:57:04',2,'pexels photo 87223',2),(40,'HTMLTextBlock','2017-07-26 13:57:05','2017-07-26 13:57:05',1,'Block Title',2),(41,'HTMLTextBlock','2017-07-26 13:57:05','2017-07-26 13:57:05',2,NULL,2),(42,'GridBlock','2017-07-26 13:57:06','2017-07-26 13:57:06',1,'Grid block A',2),(43,'GridBlock','2017-07-26 13:57:06','2017-07-26 13:57:06',2,'Grid Block B',2),(44,'GridBlock','2017-07-26 13:57:06','2017-07-26 13:57:06',3,'Grid Block C',2),(45,'GridBlock','2017-07-26 13:57:06','2017-07-26 13:57:06',4,'Grid Block D',2),(46,'ClientBlock','2017-07-26 13:57:07','2017-07-26 13:57:07',1,'Client Block A',2),(47,'ClientBlock','2017-07-26 13:57:07','2017-07-26 13:57:07',2,'Client B',2),(53,'FeatureBlock','2017-07-26 14:38:20','2017-07-26 14:37:31',1,'Feature 1a',5),(54,'FeatureBlock','2017-07-26 14:37:31','2017-07-26 14:37:31',2,'Feature 2',3),(55,'FeatureBlock','2017-07-26 14:37:31','2017-07-26 14:37:31',3,'Feature 3',3),(56,'FeatureBlock','2017-07-26 14:37:31','2017-07-26 14:37:31',4,'Feature 4',3),(57,'FeatureBlock','2017-07-26 14:37:31','2017-07-26 14:37:31',5,'Feature 5',3),(58,'HTMLTextBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',1,'YYY xx x',3),(59,'HTMLTextBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',1,'YYY xx x',3),(60,'ImageBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',2,'pexels photo 87223',3),(61,'ImageBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',2,'pexels photo 87223',3),(62,'HTMLTextBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',1,'Block Title',3),(63,'HTMLTextBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',1,'Block Title',3),(64,'HTMLTextBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',2,NULL,3),(65,'HTMLTextBlock','2017-07-26 14:37:33','2017-07-26 14:37:32',2,NULL,3),(66,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',1,'Grid block A',3),(67,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',1,'Grid block A',3),(68,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',2,'Grid Block B',3),(69,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',2,'Grid Block B',3),(70,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',3,'Grid Block C',3),(71,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',3,'Grid Block C',3),(72,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',4,'Grid Block D',3),(73,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',4,'Grid Block D',3),(74,'ClientBlock','2017-07-26 14:37:34','2017-07-26 14:37:34',1,'Client Block A',3),(75,'ClientBlock','2017-07-26 14:37:34','2017-07-26 14:37:34',1,'Client Block A',3),(76,'ClientBlock','2017-07-26 14:37:34','2017-07-26 14:37:34',2,'Client B',3),(77,'ClientBlock','2017-07-26 14:37:34','2017-07-26 14:37:34',2,'Client B',3);
/*!40000 ALTER TABLE `Block_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Block_Pages`
--

DROP TABLE IF EXISTS `Block_Pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Block_Pages` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BlockID` int(11) NOT NULL DEFAULT '0',
  `PageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `BlockID` (`BlockID`),
  KEY `PageID` (`PageID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Block_Pages`
--

LOCK TABLES `Block_Pages` WRITE;
/*!40000 ALTER TABLE `Block_Pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `Block_Pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Block_versions`
--

DROP TABLE IF EXISTS `Block_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Block_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('Block','ModuleBlock','ClientBlock','FeatureBlock','GridBlock','HTMLTextBlock','ImageBlock','RawHTMLTextBlock','DualColumnBlock','SingleColumnBlock','TriColumnBlock') CHARACTER SET utf8 DEFAULT 'Block',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `Description` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=MyISAM AUTO_INCREMENT=259 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Block_versions`
--

LOCK TABLES `Block_versions` WRITE;
/*!40000 ALTER TABLE `Block_versions` DISABLE KEYS */;
INSERT INTO `Block_versions` VALUES (12,6,1,0,3,0,'HTMLTextBlock','2017-07-02 13:24:36','2017-07-02 13:24:36',0,NULL),(13,6,2,0,3,0,'HTMLTextBlock','2017-07-02 14:06:27','2017-07-02 13:24:36',0,'YYY'),(14,6,3,0,3,0,'HTMLTextBlock','2017-07-02 14:06:27','2017-07-02 13:24:36',0,'YYY'),(15,6,4,0,3,0,'HTMLTextBlock','2017-07-02 14:06:34','2017-07-02 13:24:36',0,'YYY xx'),(16,6,5,0,3,0,'HTMLTextBlock','2017-07-02 14:06:34','2017-07-02 13:24:36',0,'YYY xx'),(17,6,6,0,3,0,'HTMLTextBlock','2017-07-02 14:06:42','2017-07-02 13:24:36',0,'YYY xx x'),(18,6,7,0,3,0,'HTMLTextBlock','2017-07-02 14:06:42','2017-07-02 13:24:36',0,'YYY xx x'),(19,6,8,0,3,0,'HTMLTextBlock','2017-07-02 14:06:54','2017-07-02 13:24:36',1,'YYY xx x'),(20,6,9,0,3,0,'HTMLTextBlock','2017-07-02 14:06:54','2017-07-02 13:24:36',1,'YYY xx x'),(21,6,10,0,3,0,'HTMLTextBlock','2017-07-02 14:13:51','2017-07-02 13:24:36',1,'YYY xx x'),(22,6,11,0,3,0,'HTMLTextBlock','2017-07-02 14:13:51','2017-07-02 13:24:36',1,'YYY xx x'),(23,7,1,0,3,0,'ImageBlock','2017-07-02 14:36:11','2017-07-02 14:36:11',0,'#0'),(24,7,2,0,3,0,'ImageBlock','2017-07-02 14:36:11','2017-07-02 14:36:11',0,'#7'),(25,7,3,0,3,0,'ImageBlock','2017-07-02 14:36:25','2017-07-02 14:36:11',0,'#7'),(26,7,4,0,3,0,'ImageBlock','2017-07-02 14:36:25','2017-07-02 14:36:11',0,'#7'),(27,8,1,0,3,0,'FeatureBlock','2017-07-02 16:04:17','2017-07-02 16:04:17',0,'Featured Block'),(28,8,2,0,3,0,'FeatureBlock','2017-07-02 16:04:54','2017-07-02 16:04:17',0,'Featured Block'),(29,8,3,0,3,0,'FeatureBlock','2017-07-02 16:04:54','2017-07-02 16:04:17',0,'Featured Block'),(30,8,4,0,3,0,'FeatureBlock','2017-07-02 16:05:18','2017-07-02 16:04:17',1,'Featured Block Test'),(31,8,5,0,3,0,'FeatureBlock','2017-07-02 16:05:18','2017-07-02 16:04:17',1,'Featured Block Test'),(32,8,6,0,3,0,'FeatureBlock','2017-07-02 16:06:34','2017-07-02 16:04:17',1,'Feature 1'),(33,8,7,0,3,0,'FeatureBlock','2017-07-02 16:06:34','2017-07-02 16:04:17',1,'Feature 1'),(34,8,8,0,3,0,'FeatureBlock','2017-07-02 16:10:06','2017-07-02 16:04:17',1,'Feature 1'),(35,8,9,0,3,0,'FeatureBlock','2017-07-02 16:10:06','2017-07-02 16:04:17',1,'Feature 1'),(36,9,1,0,3,0,'FeatureBlock','2017-07-02 16:21:06','2017-07-02 16:21:06',0,'Feature 2'),(37,9,2,0,3,0,'FeatureBlock','2017-07-02 16:21:10','2017-07-02 16:21:06',0,'Feature 2'),(38,10,1,0,3,0,'HTMLTextBlock','2017-07-02 16:33:01','2017-07-02 16:33:01',0,'Nibh Inceptos Aenean'),(39,10,2,0,3,0,'HTMLTextBlock','2017-07-02 16:33:08','2017-07-02 16:33:01',0,'Nibh Inceptos Aenean'),(40,10,3,0,3,0,'HTMLTextBlock','2017-07-02 16:33:08','2017-07-02 16:33:01',0,'Nibh Inceptos Aenean'),(41,11,1,0,3,0,'GridBlock','2017-07-03 09:34:49','2017-07-03 09:34:49',0,'Grid block A'),(42,11,2,0,3,0,'GridBlock','2017-07-03 09:34:56','2017-07-03 09:34:49',0,'Grid block A'),(43,11,3,0,3,0,'GridBlock','2017-07-03 09:34:56','2017-07-03 09:34:49',0,'Grid block A'),(44,11,4,0,3,0,'GridBlock','2017-07-03 09:36:05','2017-07-03 09:34:49',0,'Grid block A'),(45,11,5,0,3,0,'GridBlock','2017-07-03 09:36:07','2017-07-03 09:34:49',0,'Grid block A'),(46,11,6,0,3,0,'GridBlock','2017-07-03 09:36:07','2017-07-03 09:34:49',0,'Grid block A'),(47,11,7,0,3,0,'GridBlock','2017-07-03 09:36:27','2017-07-03 09:34:49',1,'Grid block A'),(48,11,8,0,3,0,'GridBlock','2017-07-03 09:36:27','2017-07-03 09:34:49',1,'Grid block A'),(49,11,9,0,3,0,'GridBlock','2017-07-03 09:37:38','2017-07-03 09:34:49',1,'Grid block A'),(50,11,10,0,3,0,'GridBlock','2017-07-03 09:37:38','2017-07-03 09:34:49',1,'Grid block A'),(51,12,1,0,3,0,'GridBlock','2017-07-03 09:38:00','2017-07-03 09:38:00',0,'Grid Module B'),(52,12,2,0,3,0,'GridBlock','2017-07-03 09:38:09','2017-07-03 09:38:00',0,'Grid Module B'),(53,12,3,0,3,0,'GridBlock','2017-07-03 09:38:09','2017-07-03 09:38:00',0,'Grid Module B'),(54,13,1,0,3,0,'GridBlock','2017-07-03 09:38:31','2017-07-03 09:38:31',0,'Grid Block C'),(55,13,2,0,3,0,'GridBlock','2017-07-03 09:38:39','2017-07-03 09:38:31',0,'Grid Block C'),(56,13,3,0,3,0,'GridBlock','2017-07-03 09:38:39','2017-07-03 09:38:31',0,'Grid Block C'),(57,12,4,0,3,0,'GridBlock','2017-07-03 09:38:54','2017-07-03 09:38:00',2,'Grid Block B'),(58,12,5,0,3,0,'GridBlock','2017-07-03 09:38:54','2017-07-03 09:38:00',2,'Grid Block B'),(59,14,1,0,3,0,'ClientBlock','2017-07-03 09:42:15','2017-07-03 09:42:15',0,'Client Block A'),(60,14,2,0,3,0,'ClientBlock','2017-07-03 09:42:33','2017-07-03 09:42:15',0,'Client Block A'),(61,14,3,0,3,0,'ClientBlock','2017-07-03 09:42:53','2017-07-03 09:42:15',0,'Client Block A'),(62,14,4,0,3,0,'ClientBlock','2017-07-03 09:42:53','2017-07-03 09:42:15',0,'Client Block A'),(63,15,1,0,3,0,'ClientBlock','2017-07-03 09:51:08','2017-07-03 09:51:08',0,'Client B'),(64,15,2,0,3,0,'ClientBlock','2017-07-03 09:51:33','2017-07-03 09:51:08',0,'Client B'),(65,15,3,0,3,0,'ClientBlock','2017-07-03 09:51:33','2017-07-03 09:51:08',0,'Client B'),(66,15,4,0,3,0,'ClientBlock','2017-07-03 09:59:11','2017-07-03 09:51:08',2,'Client B'),(67,15,5,0,3,0,'ClientBlock','2017-07-03 09:59:11','2017-07-03 09:51:08',2,'Client B'),(68,10,4,0,3,0,'HTMLTextBlock','2017-07-03 18:16:57','2017-07-02 16:33:01',1,'Nibh Inceptos Aenean'),(69,10,5,0,3,0,'HTMLTextBlock','2017-07-03 18:16:57','2017-07-02 16:33:01',1,'Nibh Inceptos Aenean'),(70,16,1,0,3,0,'FeatureBlock','2017-07-06 10:34:22','2017-07-06 10:34:22',0,'Feature 3'),(71,16,2,0,3,0,'FeatureBlock','2017-07-06 10:34:29','2017-07-06 10:34:22',0,'Feature 3'),(72,17,1,0,3,0,'FeatureBlock','2017-07-06 10:35:27','2017-07-06 10:35:27',0,'Feature 4'),(73,17,2,0,3,0,'FeatureBlock','2017-07-06 10:35:33','2017-07-06 10:35:27',0,'Feature 4'),(74,18,1,0,3,0,'FeatureBlock','2017-07-06 10:36:37','2017-07-06 10:36:37',0,'Feature 5'),(75,18,2,0,3,0,'FeatureBlock','2017-07-06 10:36:42','2017-07-06 10:36:37',0,'Feature 5'),(76,18,3,0,3,0,'FeatureBlock','2017-07-06 10:37:44','2017-07-06 10:36:37',0,'Feature 5'),(77,6,12,0,3,0,'HTMLTextBlock','2017-07-06 12:02:03','2017-07-02 13:24:36',1,'YYY xx x'),(78,6,13,0,3,0,'HTMLTextBlock','2017-07-06 12:02:03','2017-07-02 13:24:36',1,'YYY xx x'),(79,7,5,0,3,0,'ImageBlock','2017-07-06 14:04:17','2017-07-02 14:36:11',1,'pexels photo 87223'),(80,7,6,0,3,0,'ImageBlock','2017-07-06 14:04:18','2017-07-02 14:36:11',1,'pexels photo 87223'),(81,11,11,0,3,0,'GridBlock','2017-07-10 14:51:38','2017-07-03 09:34:49',1,'Grid block A'),(82,11,12,0,3,0,'GridBlock','2017-07-10 14:51:38','2017-07-03 09:34:49',1,'Grid block A'),(83,19,1,1,3,3,'GridBlock','2017-07-10 15:34:12','2017-07-10 15:34:12',0,'Grid Block D'),(84,20,1,1,3,3,'HTMLTextBlock','2017-07-10 17:33:36','2017-07-10 17:33:36',0,'Block Title'),(85,20,2,0,3,0,'HTMLTextBlock','2017-07-10 17:38:21','2017-07-10 17:33:36',1,'Block Title'),(86,20,3,0,3,0,'HTMLTextBlock','2017-07-10 17:38:21','2017-07-10 17:33:36',1,'Block Title'),(87,21,1,0,3,0,'HTMLTextBlock','2017-07-10 17:48:01','2017-07-10 17:48:01',0,NULL),(88,21,2,0,3,0,'HTMLTextBlock','2017-07-10 17:49:39','2017-07-10 17:48:01',0,NULL),(89,21,3,0,3,0,'HTMLTextBlock','2017-07-10 17:49:39','2017-07-10 17:48:01',0,NULL),(90,20,4,0,3,0,'HTMLTextBlock','2017-07-10 17:52:21','2017-07-10 17:33:36',1,'Block Title'),(91,20,5,0,3,0,'HTMLTextBlock','2017-07-10 17:52:21','2017-07-10 17:33:36',1,'Block Title'),(92,22,1,0,3,0,'GridBlock','2017-07-11 14:57:35','2017-07-11 14:57:35',0,'Umbrellar Cloud'),(93,22,2,0,3,0,'GridBlock','2017-07-11 14:57:43','2017-07-11 14:57:35',0,'Umbrellar Cloud'),(94,22,3,0,3,0,'GridBlock','2017-07-11 14:57:43','2017-07-11 14:57:35',0,'Umbrellar Cloud'),(95,23,1,1,3,3,'GridBlock','2017-07-11 15:01:20','2017-07-11 15:01:20',0,'Managed Compute'),(96,24,1,1,3,3,'GridBlock','2017-07-11 15:02:40','2017-07-11 15:02:40',0,'Cloud Connect'),(97,25,1,1,3,3,'GridBlock','2017-07-11 15:11:08','2017-07-11 15:11:08',0,'Pro Services'),(98,26,1,0,3,0,'ClientBlock','2017-07-11 15:18:44','2017-07-11 15:18:44',0,'BNZ'),(99,26,2,0,3,0,'ClientBlock','2017-07-11 15:18:59','2017-07-11 15:18:44',0,'BNZ'),(100,26,3,0,3,0,'ClientBlock','2017-07-11 15:18:59','2017-07-11 15:18:44',0,'BNZ'),(101,26,4,0,3,0,'ClientBlock','2017-07-11 15:24:35','2017-07-11 15:18:44',1,'BNZ'),(102,26,5,0,3,0,'ClientBlock','2017-07-11 15:24:35','2017-07-11 15:18:44',1,'BNZ'),(103,27,1,0,3,0,'ClientBlock','2017-07-11 15:25:07','2017-07-11 15:25:07',0,'Finda'),(104,27,2,0,3,0,'ClientBlock','2017-07-11 15:25:18','2017-07-11 15:25:07',0,'Finda'),(105,27,3,0,3,0,'ClientBlock','2017-07-11 15:25:18','2017-07-11 15:25:07',0,'Finda'),(106,28,1,0,3,0,'ClientBlock','2017-07-11 15:37:49','2017-07-11 15:37:49',0,'ACC'),(107,28,2,0,3,0,'ClientBlock','2017-07-11 15:42:20','2017-07-11 15:37:49',0,'ACC'),(108,28,3,0,3,0,'ClientBlock','2017-07-11 15:42:20','2017-07-11 15:37:49',0,'ACC'),(109,29,1,0,3,0,'ClientBlock','2017-07-11 15:45:09','2017-07-11 15:45:09',0,'Auckland Council'),(110,29,2,0,3,0,'ClientBlock','2017-07-11 15:47:12','2017-07-11 15:45:09',0,'Auckland Council'),(111,29,3,0,3,0,'ClientBlock','2017-07-11 15:47:12','2017-07-11 15:45:09',0,'Auckland Council'),(112,30,1,0,3,0,'ClientBlock','2017-07-11 15:49:15','2017-07-11 15:49:15',0,'Slingshot'),(113,30,2,0,3,0,'ClientBlock','2017-07-11 15:49:36','2017-07-11 15:49:15',0,'Slingshot'),(114,30,3,0,3,0,'ClientBlock','2017-07-11 15:49:36','2017-07-11 15:49:15',0,'Slingshot'),(115,31,1,0,3,0,'GridBlock','2017-07-13 10:42:33','2017-07-13 10:42:33',0,'Compute'),(116,31,2,0,3,0,'GridBlock','2017-07-13 10:42:36','2017-07-13 10:42:33',0,'Compute'),(117,31,3,0,3,0,'GridBlock','2017-07-13 10:42:36','2017-07-13 10:42:33',0,'Compute'),(118,32,1,0,3,0,'GridBlock','2017-07-13 11:19:32','2017-07-13 11:19:32',0,'Virtual Machines'),(119,32,2,0,3,0,'GridBlock','2017-07-13 11:19:36','2017-07-13 11:19:32',0,'Virtual Machines'),(120,32,3,0,3,0,'GridBlock','2017-07-13 11:19:36','2017-07-13 11:19:32',0,'Virtual Machines'),(121,32,4,0,3,0,'GridBlock','2017-07-13 13:19:05','2017-07-13 11:19:32',1,'Virtual Machines'),(122,32,5,0,3,0,'GridBlock','2017-07-13 13:19:05','2017-07-13 11:19:32',1,'Virtual Machines'),(123,22,4,0,3,0,'GridBlock','2017-07-21 12:28:51','2017-07-11 14:57:35',1,'Umbrellar Cloud'),(124,22,5,0,3,0,'GridBlock','2017-07-21 12:28:51','2017-07-11 14:57:35',1,'Umbrellar Cloud'),(125,22,6,0,3,0,'GridBlock','2017-07-21 12:40:11','2017-07-11 14:57:35',1,'Umbrellar Cloud'),(126,22,7,0,3,0,'GridBlock','2017-07-21 12:40:11','2017-07-11 14:57:35',1,'Umbrellar Cloud'),(127,22,8,0,3,0,'GridBlock','2017-07-21 12:40:23','2017-07-11 14:57:35',1,'Umbrellar Cloud'),(128,22,9,0,3,0,'GridBlock','2017-07-21 12:40:23','2017-07-11 14:57:35',1,'Umbrellar Cloud'),(129,22,10,0,3,0,'GridBlock','2017-07-21 12:51:03','2017-07-11 14:57:35',1,'Umbrellar Cloud'),(130,22,11,0,3,0,'GridBlock','2017-07-21 12:51:03','2017-07-11 14:57:35',1,'Umbrellar Cloud'),(131,22,12,0,3,0,'GridBlock','2017-07-21 12:53:26','2017-07-11 14:57:35',1,'Umbrellar Cloud'),(132,22,13,0,3,0,'GridBlock','2017-07-21 12:53:26','2017-07-11 14:57:35',1,'Umbrellar Cloud'),(133,22,14,0,3,0,'GridBlock','2017-07-21 12:53:40','2017-07-11 14:57:35',1,'Umbrellar Cloud'),(134,22,15,0,3,0,'GridBlock','2017-07-21 12:53:40','2017-07-11 14:57:35',1,'Umbrellar Cloud'),(174,51,1,0,3,0,'FeatureBlock','2017-07-26 14:36:02','2017-07-26 14:36:02',4,'Feature 4'),(173,50,3,0,3,0,'FeatureBlock','2017-07-26 14:36:02','2017-07-26 14:36:02',3,'Feature 3'),(172,50,2,0,3,0,'FeatureBlock','2017-07-26 14:36:02','2017-07-26 14:36:02',3,'Feature 3'),(171,50,1,0,3,0,'FeatureBlock','2017-07-26 14:36:02','2017-07-26 14:36:02',3,'Feature 3'),(170,49,3,0,3,0,'FeatureBlock','2017-07-26 14:36:02','2017-07-26 14:36:02',2,'Feature 2'),(169,49,2,0,3,0,'FeatureBlock','2017-07-26 14:36:02','2017-07-26 14:36:02',2,'Feature 2'),(168,49,1,0,3,0,'FeatureBlock','2017-07-26 14:36:02','2017-07-26 14:36:02',2,'Feature 2'),(167,48,3,0,3,0,'FeatureBlock','2017-07-26 14:36:02','2017-07-26 14:36:02',1,'Feature 1'),(166,48,2,0,3,0,'FeatureBlock','2017-07-26 14:36:02','2017-07-26 14:36:02',1,'Feature 1'),(165,48,1,0,3,0,'FeatureBlock','2017-07-26 14:36:02','2017-07-26 14:36:02',1,'Feature 1'),(145,38,1,0,3,0,'HTMLTextBlock','2017-07-26 13:57:04','2017-07-26 13:57:04',1,'YYY xx x'),(146,38,2,0,3,0,'HTMLTextBlock','2017-07-26 13:57:04','2017-07-26 13:57:04',1,'YYY xx x'),(147,39,1,0,3,0,'ImageBlock','2017-07-26 13:57:04','2017-07-26 13:57:04',2,'pexels photo 87223'),(148,39,2,0,3,0,'ImageBlock','2017-07-26 13:57:05','2017-07-26 13:57:04',2,'pexels photo 87223'),(149,40,1,0,3,0,'HTMLTextBlock','2017-07-26 13:57:05','2017-07-26 13:57:05',1,'Block Title'),(150,40,2,0,3,0,'HTMLTextBlock','2017-07-26 13:57:05','2017-07-26 13:57:05',1,'Block Title'),(151,41,1,0,3,0,'HTMLTextBlock','2017-07-26 13:57:05','2017-07-26 13:57:05',2,NULL),(152,41,2,0,3,0,'HTMLTextBlock','2017-07-26 13:57:05','2017-07-26 13:57:05',2,NULL),(153,42,1,0,3,0,'GridBlock','2017-07-26 13:57:06','2017-07-26 13:57:06',1,'Grid block A'),(154,42,2,0,3,0,'GridBlock','2017-07-26 13:57:06','2017-07-26 13:57:06',1,'Grid block A'),(155,43,1,0,3,0,'GridBlock','2017-07-26 13:57:06','2017-07-26 13:57:06',2,'Grid Block B'),(156,43,2,0,3,0,'GridBlock','2017-07-26 13:57:06','2017-07-26 13:57:06',2,'Grid Block B'),(157,44,1,0,3,0,'GridBlock','2017-07-26 13:57:06','2017-07-26 13:57:06',3,'Grid Block C'),(158,44,2,0,3,0,'GridBlock','2017-07-26 13:57:06','2017-07-26 13:57:06',3,'Grid Block C'),(159,45,1,0,3,0,'GridBlock','2017-07-26 13:57:06','2017-07-26 13:57:06',4,'Grid Block D'),(160,45,2,0,3,0,'GridBlock','2017-07-26 13:57:06','2017-07-26 13:57:06',4,'Grid Block D'),(161,46,1,0,3,0,'ClientBlock','2017-07-26 13:57:07','2017-07-26 13:57:07',1,'Client Block A'),(162,46,2,0,3,0,'ClientBlock','2017-07-26 13:57:07','2017-07-26 13:57:07',1,'Client Block A'),(163,47,1,0,3,0,'ClientBlock','2017-07-26 13:57:07','2017-07-26 13:57:07',2,'Client B'),(164,47,2,0,3,0,'ClientBlock','2017-07-26 13:57:07','2017-07-26 13:57:07',2,'Client B'),(175,51,2,0,3,0,'FeatureBlock','2017-07-26 14:36:02','2017-07-26 14:36:02',4,'Feature 4'),(176,51,3,0,3,0,'FeatureBlock','2017-07-26 14:36:02','2017-07-26 14:36:02',4,'Feature 4'),(177,52,1,0,3,0,'FeatureBlock','2017-07-26 14:36:02','2017-07-26 14:36:02',5,'Feature 5'),(178,52,2,0,3,0,'FeatureBlock','2017-07-26 14:36:02','2017-07-26 14:36:02',5,'Feature 5'),(179,52,3,0,3,0,'FeatureBlock','2017-07-26 14:36:02','2017-07-26 14:36:02',5,'Feature 5'),(180,53,1,0,3,0,'FeatureBlock','2017-07-26 14:37:31','2017-07-26 14:37:31',1,'Feature 1'),(181,53,2,0,3,0,'FeatureBlock','2017-07-26 14:37:31','2017-07-26 14:37:31',1,'Feature 1'),(182,53,3,0,3,0,'FeatureBlock','2017-07-26 14:37:31','2017-07-26 14:37:31',1,'Feature 1'),(183,54,1,0,3,0,'FeatureBlock','2017-07-26 14:37:31','2017-07-26 14:37:31',2,'Feature 2'),(184,54,2,0,3,0,'FeatureBlock','2017-07-26 14:37:31','2017-07-26 14:37:31',2,'Feature 2'),(185,54,3,0,3,0,'FeatureBlock','2017-07-26 14:37:31','2017-07-26 14:37:31',2,'Feature 2'),(186,55,1,0,3,0,'FeatureBlock','2017-07-26 14:37:31','2017-07-26 14:37:31',3,'Feature 3'),(187,55,2,0,3,0,'FeatureBlock','2017-07-26 14:37:31','2017-07-26 14:37:31',3,'Feature 3'),(188,55,3,0,3,0,'FeatureBlock','2017-07-26 14:37:31','2017-07-26 14:37:31',3,'Feature 3'),(189,56,1,0,3,0,'FeatureBlock','2017-07-26 14:37:31','2017-07-26 14:37:31',4,'Feature 4'),(190,56,2,0,3,0,'FeatureBlock','2017-07-26 14:37:31','2017-07-26 14:37:31',4,'Feature 4'),(191,56,3,0,3,0,'FeatureBlock','2017-07-26 14:37:31','2017-07-26 14:37:31',4,'Feature 4'),(192,57,1,0,3,0,'FeatureBlock','2017-07-26 14:37:31','2017-07-26 14:37:31',5,'Feature 5'),(193,57,2,0,3,0,'FeatureBlock','2017-07-26 14:37:31','2017-07-26 14:37:31',5,'Feature 5'),(194,57,3,0,3,0,'FeatureBlock','2017-07-26 14:37:31','2017-07-26 14:37:31',5,'Feature 5'),(195,58,1,0,3,0,'HTMLTextBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',1,'YYY xx x'),(196,58,2,0,3,0,'HTMLTextBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',1,'YYY xx x'),(197,58,3,0,3,0,'HTMLTextBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',1,'YYY xx x'),(198,59,1,0,3,0,'HTMLTextBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',1,'YYY xx x'),(199,59,2,0,3,0,'HTMLTextBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',1,'YYY xx x'),(200,59,3,0,3,0,'HTMLTextBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',1,'YYY xx x'),(201,60,1,0,3,0,'ImageBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',2,'pexels photo 87223'),(202,60,2,0,3,0,'ImageBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',2,'pexels photo 87223'),(203,60,3,0,3,0,'ImageBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',2,'pexels photo 87223'),(204,61,1,0,3,0,'ImageBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',2,'pexels photo 87223'),(205,61,2,0,3,0,'ImageBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',2,'pexels photo 87223'),(206,61,3,0,3,0,'ImageBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',2,'pexels photo 87223'),(207,62,1,0,3,0,'HTMLTextBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',1,'Block Title'),(208,62,2,0,3,0,'HTMLTextBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',1,'Block Title'),(209,62,3,0,3,0,'HTMLTextBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',1,'Block Title'),(210,63,1,0,3,0,'HTMLTextBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',1,'Block Title'),(211,63,2,0,3,0,'HTMLTextBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',1,'Block Title'),(212,63,3,0,3,0,'HTMLTextBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',1,'Block Title'),(213,64,1,0,3,0,'HTMLTextBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',2,NULL),(214,64,2,0,3,0,'HTMLTextBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',2,NULL),(215,64,3,0,3,0,'HTMLTextBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',2,NULL),(216,65,1,0,3,0,'HTMLTextBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',2,NULL),(217,65,2,0,3,0,'HTMLTextBlock','2017-07-26 14:37:32','2017-07-26 14:37:32',2,NULL),(218,65,3,0,3,0,'HTMLTextBlock','2017-07-26 14:37:33','2017-07-26 14:37:32',2,NULL),(219,64,4,0,3,0,'HTMLTextBlock','2017-07-26 14:37:33','2017-07-26 14:37:32',2,NULL),(220,65,4,0,3,0,'HTMLTextBlock','2017-07-26 14:37:33','2017-07-26 14:37:32',2,NULL),(221,66,1,0,3,0,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',1,'Grid block A'),(222,66,2,0,3,0,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',1,'Grid block A'),(223,66,3,0,3,0,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',1,'Grid block A'),(224,67,1,0,3,0,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',1,'Grid block A'),(225,67,2,0,3,0,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',1,'Grid block A'),(226,67,3,0,3,0,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',1,'Grid block A'),(227,68,1,0,3,0,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',2,'Grid Block B'),(228,68,2,0,3,0,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',2,'Grid Block B'),(229,68,3,0,3,0,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',2,'Grid Block B'),(230,69,1,0,3,0,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',2,'Grid Block B'),(231,69,2,0,3,0,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',2,'Grid Block B'),(232,69,3,0,3,0,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',2,'Grid Block B'),(233,70,1,0,3,0,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',3,'Grid Block C'),(234,70,2,0,3,0,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',3,'Grid Block C'),(235,70,3,0,3,0,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',3,'Grid Block C'),(236,71,1,0,3,0,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',3,'Grid Block C'),(237,71,2,0,3,0,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',3,'Grid Block C'),(238,71,3,0,3,0,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',3,'Grid Block C'),(239,72,1,0,3,0,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',4,'Grid Block D'),(240,72,2,0,3,0,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',4,'Grid Block D'),(241,72,3,0,3,0,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',4,'Grid Block D'),(242,73,1,0,3,0,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',4,'Grid Block D'),(243,73,2,0,3,0,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',4,'Grid Block D'),(244,73,3,0,3,0,'GridBlock','2017-07-26 14:37:33','2017-07-26 14:37:33',4,'Grid Block D'),(245,74,1,0,3,0,'ClientBlock','2017-07-26 14:37:34','2017-07-26 14:37:34',1,'Client Block A'),(246,74,2,0,3,0,'ClientBlock','2017-07-26 14:37:34','2017-07-26 14:37:34',1,'Client Block A'),(247,74,3,0,3,0,'ClientBlock','2017-07-26 14:37:34','2017-07-26 14:37:34',1,'Client Block A'),(248,75,1,0,3,0,'ClientBlock','2017-07-26 14:37:34','2017-07-26 14:37:34',1,'Client Block A'),(249,75,2,0,3,0,'ClientBlock','2017-07-26 14:37:34','2017-07-26 14:37:34',1,'Client Block A'),(250,75,3,0,3,0,'ClientBlock','2017-07-26 14:37:34','2017-07-26 14:37:34',1,'Client Block A'),(251,76,1,0,3,0,'ClientBlock','2017-07-26 14:37:34','2017-07-26 14:37:34',2,'Client B'),(252,76,2,0,3,0,'ClientBlock','2017-07-26 14:37:34','2017-07-26 14:37:34',2,'Client B'),(253,76,3,0,3,0,'ClientBlock','2017-07-26 14:37:34','2017-07-26 14:37:34',2,'Client B'),(254,77,1,0,3,0,'ClientBlock','2017-07-26 14:37:34','2017-07-26 14:37:34',2,'Client B'),(255,77,2,0,3,0,'ClientBlock','2017-07-26 14:37:34','2017-07-26 14:37:34',2,'Client B'),(256,77,3,0,3,0,'ClientBlock','2017-07-26 14:37:34','2017-07-26 14:37:34',2,'Client B'),(257,53,4,0,3,0,'FeatureBlock','2017-07-26 14:38:20','2017-07-26 14:37:31',1,'Feature 1a'),(258,53,5,0,3,0,'FeatureBlock','2017-07-26 14:38:20','2017-07-26 14:37:31',1,'Feature 1a');
/*!40000 ALTER TABLE `Block_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CallToActionHeaderModule`
--

DROP TABLE IF EXISTS `CallToActionHeaderModule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CallToActionHeaderModule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Text` mediumtext CHARACTER SET utf8,
  `CallToActionText` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Theme` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `CallToActionButtonID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CallToActionButtonID` (`CallToActionButtonID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CallToActionHeaderModule`
--

LOCK TABLES `CallToActionHeaderModule` WRITE;
/*!40000 ALTER TABLE `CallToActionHeaderModule` DISABLE KEYS */;
INSERT INTO `CallToActionHeaderModule` VALUES (27,'<h2>Finally a partner who delivers true cloud services; local and globally.</h2>','Need some help getting started?<br>\r\nGet in touch with our helpdesk.','spring-green',57);
/*!40000 ALTER TABLE `CallToActionHeaderModule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CallToActionHeaderModule_Live`
--

DROP TABLE IF EXISTS `CallToActionHeaderModule_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CallToActionHeaderModule_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Text` mediumtext CHARACTER SET utf8,
  `CallToActionText` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Theme` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `CallToActionButtonID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CallToActionButtonID` (`CallToActionButtonID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CallToActionHeaderModule_Live`
--

LOCK TABLES `CallToActionHeaderModule_Live` WRITE;
/*!40000 ALTER TABLE `CallToActionHeaderModule_Live` DISABLE KEYS */;
INSERT INTO `CallToActionHeaderModule_Live` VALUES (27,'<h2>Finally a partner who delivers true cloud services; local and globally.</h2>','Need some help getting started?<br>\r\nGet in touch with our helpdesk.','spring-green',57);
/*!40000 ALTER TABLE `CallToActionHeaderModule_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CallToActionHeaderModule_versions`
--

DROP TABLE IF EXISTS `CallToActionHeaderModule_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CallToActionHeaderModule_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Text` mediumtext CHARACTER SET utf8,
  `CallToActionText` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Theme` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `CallToActionButtonID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `CallToActionButtonID` (`CallToActionButtonID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CallToActionHeaderModule_versions`
--

LOCK TABLES `CallToActionHeaderModule_versions` WRITE;
/*!40000 ALTER TABLE `CallToActionHeaderModule_versions` DISABLE KEYS */;
INSERT INTO `CallToActionHeaderModule_versions` VALUES (1,27,1,'<h2>Finally a partner who delivers true cloud services; local and globally.</h2>','Need some help getting started?<br>\r\nGet in touch with our helpdesk.',NULL,57),(2,27,2,'<h2>Finally a partner who delivers true cloud services; local and globally.</h2>','Need some help getting started?<br>\r\nGet in touch with our helpdesk.',NULL,57),(3,27,3,'<h2>Finally a partner who delivers true cloud services; local and globally.</h2>','Need some help getting started?<br>\r\nGet in touch with our helpdesk.',NULL,57),(4,27,4,'<h2>Finally a partner who delivers true cloud services; local and globally.</h2>','Need some help getting started?<br>\r\nGet in touch with our helpdesk.','bright-turquoise',57),(5,27,5,'<h2>Finally a partner who delivers true cloud services; local and globally.</h2>','Need some help getting started?<br>\r\nGet in touch with our helpdesk.','bright-turquoise',57),(6,27,6,'<h2>Finally a partner who delivers true cloud services; local and globally.</h2>','Need some help getting started?<br>\r\nGet in touch with our helpdesk.','deep-sky-blue',57),(7,27,7,'<h2>Finally a partner who delivers true cloud services; local and globally.</h2>','Need some help getting started?<br>\r\nGet in touch with our helpdesk.','deep-sky-blue',57),(8,27,8,'<h2>Finally a partner who delivers true cloud services; local and globally.</h2>','Need some help getting started?<br>\r\nGet in touch with our helpdesk.','pastel-green',57),(9,27,9,'<h2>Finally a partner who delivers true cloud services; local and globally.</h2>','Need some help getting started?<br>\r\nGet in touch with our helpdesk.','pastel-green',57),(10,27,10,'<h2>Finally a partner who delivers true cloud services; local and globally.</h2>','Need some help getting started?<br>\r\nGet in touch with our helpdesk.','sherpa-blue',57),(11,27,11,'<h2>Finally a partner who delivers true cloud services; local and globally.</h2>','Need some help getting started?<br>\r\nGet in touch with our helpdesk.','sherpa-blue',57),(12,27,12,'<h2>Finally a partner who delivers true cloud services; local and globally.</h2>','Need some help getting started?<br>\r\nGet in touch with our helpdesk.','spring-green',57),(13,27,13,'<h2>Finally a partner who delivers true cloud services; local and globally.</h2>','Need some help getting started?<br>\r\nGet in touch with our helpdesk.','spring-green',57);
/*!40000 ALTER TABLE `CallToActionHeaderModule_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CallToActionPromoAddon`
--

DROP TABLE IF EXISTS `CallToActionPromoAddon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CallToActionPromoAddon` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('CallToActionPromoAddon','CallToActionPromoButton','CallToActionPromoImage') CHARACTER SET utf8 DEFAULT 'CallToActionPromoAddon',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `ModuleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ModuleID` (`ModuleID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CallToActionPromoAddon`
--

LOCK TABLES `CallToActionPromoAddon` WRITE;
/*!40000 ALTER TABLE `CallToActionPromoAddon` DISABLE KEYS */;
INSERT INTO `CallToActionPromoAddon` VALUES (1,'CallToActionPromoButton','2017-07-13 22:25:59','2017-07-13 22:25:48',1,26),(3,'CallToActionPromoImage','2017-07-13 22:27:32','2017-07-13 22:27:32',0,26);
/*!40000 ALTER TABLE `CallToActionPromoAddon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CallToActionPromoButton`
--

DROP TABLE IF EXISTS `CallToActionPromoButton`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CallToActionPromoButton` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CallToActionButtonID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CallToActionButtonID` (`CallToActionButtonID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CallToActionPromoButton`
--

LOCK TABLES `CallToActionPromoButton` WRITE;
/*!40000 ALTER TABLE `CallToActionPromoButton` DISABLE KEYS */;
INSERT INTO `CallToActionPromoButton` VALUES (1,56);
/*!40000 ALTER TABLE `CallToActionPromoButton` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CallToActionPromoImage`
--

DROP TABLE IF EXISTS `CallToActionPromoImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CallToActionPromoImage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ImageID` (`ImageID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CallToActionPromoImage`
--

LOCK TABLES `CallToActionPromoImage` WRITE;
/*!40000 ALTER TABLE `CallToActionPromoImage` DISABLE KEYS */;
INSERT INTO `CallToActionPromoImage` VALUES (3,15);
/*!40000 ALTER TABLE `CallToActionPromoImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CallToActionPromoModule`
--

DROP TABLE IF EXISTS `CallToActionPromoModule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CallToActionPromoModule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Text` mediumtext CHARACTER SET utf8,
  `CentreImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CentreImageID` (`CentreImageID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CallToActionPromoModule`
--

LOCK TABLES `CallToActionPromoModule` WRITE;
/*!40000 ALTER TABLE `CallToActionPromoModule` DISABLE KEYS */;
INSERT INTO `CallToActionPromoModule` VALUES (26,'<h2>Aenean eu leo quam. <strong>Pellentesque</strong> ornare sem lacinia quam venenatis vestibulum.</h2><p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>',16);
/*!40000 ALTER TABLE `CallToActionPromoModule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CallToActionPromoModule_Live`
--

DROP TABLE IF EXISTS `CallToActionPromoModule_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CallToActionPromoModule_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Text` mediumtext CHARACTER SET utf8,
  `CentreImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CentreImageID` (`CentreImageID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CallToActionPromoModule_Live`
--

LOCK TABLES `CallToActionPromoModule_Live` WRITE;
/*!40000 ALTER TABLE `CallToActionPromoModule_Live` DISABLE KEYS */;
INSERT INTO `CallToActionPromoModule_Live` VALUES (26,'<h2>Aenean eu leo quam. <strong>Pellentesque</strong> ornare sem lacinia quam venenatis vestibulum.</h2><p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>',16);
/*!40000 ALTER TABLE `CallToActionPromoModule_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CallToActionPromoModule_versions`
--

DROP TABLE IF EXISTS `CallToActionPromoModule_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CallToActionPromoModule_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Text` mediumtext CHARACTER SET utf8,
  `CentreImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `CentreImageID` (`CentreImageID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CallToActionPromoModule_versions`
--

LOCK TABLES `CallToActionPromoModule_versions` WRITE;
/*!40000 ALTER TABLE `CallToActionPromoModule_versions` DISABLE KEYS */;
INSERT INTO `CallToActionPromoModule_versions` VALUES (3,26,1,NULL,0),(4,26,2,NULL,0),(5,26,3,NULL,0),(6,26,4,'<h2>Aenean eu leo quam. <strong>Pellentesque</strong> ornare sem lacinia quam venenatis vestibulum.</h2><p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>',16),(7,26,5,'<h2>Aenean eu leo quam. <strong>Pellentesque</strong> ornare sem lacinia quam venenatis vestibulum.</h2><p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>',16),(8,26,6,'<h2>Aenean eu leo quam. <strong>Pellentesque</strong> ornare sem lacinia quam venenatis vestibulum.</h2><p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>',16),(9,26,7,'<h2>Aenean eu leo quam. <strong>Pellentesque</strong> ornare sem lacinia quam venenatis vestibulum.</h2><p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>',16),(10,26,8,'<h2>Aenean eu leo quam. <strong>Pellentesque</strong> ornare sem lacinia quam venenatis vestibulum.</h2><p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>',16),(11,26,9,'<h2>Aenean eu leo quam. <strong>Pellentesque</strong> ornare sem lacinia quam venenatis vestibulum.</h2><p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>',16),(12,26,10,'<h2>Aenean eu leo quam. <strong>Pellentesque</strong> ornare sem lacinia quam venenatis vestibulum.</h2><p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>',16),(13,26,11,'<h2>Aenean eu leo quam. <strong>Pellentesque</strong> ornare sem lacinia quam venenatis vestibulum.</h2><p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>',16);
/*!40000 ALTER TABLE `CallToActionPromoModule_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CareerLandingPage`
--

DROP TABLE IF EXISTS `CareerLandingPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CareerLandingPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Slogan` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `ContentHeading` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `VideoID` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `DefaultRecipient` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `ItemsPerPage` int(11) NOT NULL DEFAULT '0',
  `VideoPosterID` int(11) NOT NULL DEFAULT '0',
  `StatTilesID` int(11) NOT NULL DEFAULT '0',
  `PageHeroID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `VideoPosterID` (`VideoPosterID`),
  KEY `StatTilesID` (`StatTilesID`),
  KEY `PageHeroID` (`PageHeroID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CareerLandingPage`
--

LOCK TABLES `CareerLandingPage` WRITE;
/*!40000 ALTER TABLE `CareerLandingPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `CareerLandingPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CareerLandingPage_Live`
--

DROP TABLE IF EXISTS `CareerLandingPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CareerLandingPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Slogan` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `ContentHeading` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `VideoID` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `DefaultRecipient` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `ItemsPerPage` int(11) NOT NULL DEFAULT '0',
  `VideoPosterID` int(11) NOT NULL DEFAULT '0',
  `StatTilesID` int(11) NOT NULL DEFAULT '0',
  `PageHeroID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `VideoPosterID` (`VideoPosterID`),
  KEY `StatTilesID` (`StatTilesID`),
  KEY `PageHeroID` (`PageHeroID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CareerLandingPage_Live`
--

LOCK TABLES `CareerLandingPage_Live` WRITE;
/*!40000 ALTER TABLE `CareerLandingPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `CareerLandingPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CareerLandingPage_StaffPhotos`
--

DROP TABLE IF EXISTS `CareerLandingPage_StaffPhotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CareerLandingPage_StaffPhotos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CareerLandingPageID` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CareerLandingPageID` (`CareerLandingPageID`),
  KEY `ImageID` (`ImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CareerLandingPage_StaffPhotos`
--

LOCK TABLES `CareerLandingPage_StaffPhotos` WRITE;
/*!40000 ALTER TABLE `CareerLandingPage_StaffPhotos` DISABLE KEYS */;
/*!40000 ALTER TABLE `CareerLandingPage_StaffPhotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CareerLandingPage_versions`
--

DROP TABLE IF EXISTS `CareerLandingPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CareerLandingPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Slogan` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `ContentHeading` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `VideoID` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `DefaultRecipient` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `ItemsPerPage` int(11) NOT NULL DEFAULT '0',
  `VideoPosterID` int(11) NOT NULL DEFAULT '0',
  `StatTilesID` int(11) NOT NULL DEFAULT '0',
  `PageHeroID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `VideoPosterID` (`VideoPosterID`),
  KEY `StatTilesID` (`StatTilesID`),
  KEY `PageHeroID` (`PageHeroID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CareerLandingPage_versions`
--

LOCK TABLES `CareerLandingPage_versions` WRITE;
/*!40000 ALTER TABLE `CareerLandingPage_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `CareerLandingPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CareerLayoutPage`
--

DROP TABLE IF EXISTS `CareerLayoutPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CareerLayoutPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Slogan` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `ContentHeading` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `VideoID` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `VideoPosterID` int(11) NOT NULL DEFAULT '0',
  `StatTilesID` int(11) NOT NULL DEFAULT '0',
  `StatsModuleID` int(11) NOT NULL DEFAULT '0',
  `PageHeroID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `VideoPosterID` (`VideoPosterID`),
  KEY `StatTilesID` (`StatTilesID`),
  KEY `StatsModuleID` (`StatsModuleID`),
  KEY `PageHeroID` (`PageHeroID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CareerLayoutPage`
--

LOCK TABLES `CareerLayoutPage` WRITE;
/*!40000 ALTER TABLE `CareerLayoutPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `CareerLayoutPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CareerLayoutPage_Live`
--

DROP TABLE IF EXISTS `CareerLayoutPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CareerLayoutPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Slogan` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `ContentHeading` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `VideoID` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `VideoPosterID` int(11) NOT NULL DEFAULT '0',
  `StatTilesID` int(11) NOT NULL DEFAULT '0',
  `StatsModuleID` int(11) NOT NULL DEFAULT '0',
  `PageHeroID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `VideoPosterID` (`VideoPosterID`),
  KEY `StatTilesID` (`StatTilesID`),
  KEY `StatsModuleID` (`StatsModuleID`),
  KEY `PageHeroID` (`PageHeroID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CareerLayoutPage_Live`
--

LOCK TABLES `CareerLayoutPage_Live` WRITE;
/*!40000 ALTER TABLE `CareerLayoutPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `CareerLayoutPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CareerLayoutPage_Testimonials`
--

DROP TABLE IF EXISTS `CareerLayoutPage_Testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CareerLayoutPage_Testimonials` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CareerLayoutPageID` int(11) NOT NULL DEFAULT '0',
  `TestimonialID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CareerLayoutPageID` (`CareerLayoutPageID`),
  KEY `TestimonialID` (`TestimonialID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CareerLayoutPage_Testimonials`
--

LOCK TABLES `CareerLayoutPage_Testimonials` WRITE;
/*!40000 ALTER TABLE `CareerLayoutPage_Testimonials` DISABLE KEYS */;
/*!40000 ALTER TABLE `CareerLayoutPage_Testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CareerLayoutPage_versions`
--

DROP TABLE IF EXISTS `CareerLayoutPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CareerLayoutPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Slogan` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `ContentHeading` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `VideoID` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `VideoPosterID` int(11) NOT NULL DEFAULT '0',
  `StatTilesID` int(11) NOT NULL DEFAULT '0',
  `StatsModuleID` int(11) NOT NULL DEFAULT '0',
  `PageHeroID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `VideoPosterID` (`VideoPosterID`),
  KEY `StatTilesID` (`StatTilesID`),
  KEY `StatsModuleID` (`StatsModuleID`),
  KEY `PageHeroID` (`PageHeroID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CareerLayoutPage_versions`
--

LOCK TABLES `CareerLayoutPage_versions` WRITE;
/*!40000 ALTER TABLE `CareerLayoutPage_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `CareerLayoutPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClientBlock`
--

DROP TABLE IF EXISTS `ClientBlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClientBlock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ImageID` (`ImageID`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClientBlock`
--

LOCK TABLES `ClientBlock` WRITE;
/*!40000 ALTER TABLE `ClientBlock` DISABLE KEYS */;
INSERT INTO `ClientBlock` VALUES (14,'Client Block A',4),(15,'Client B',3),(26,'BNZ',18),(27,'Finda',19),(28,'ACC',23),(29,'Auckland Council',26),(30,'Slingshot',28),(46,'Client Block A',4),(47,'Client B',3),(74,'Client Block A',4),(75,'Client Block A',4),(76,'Client B',3),(77,'Client B',3);
/*!40000 ALTER TABLE `ClientBlock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClientBlock_Live`
--

DROP TABLE IF EXISTS `ClientBlock_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClientBlock_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ImageID` (`ImageID`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClientBlock_Live`
--

LOCK TABLES `ClientBlock_Live` WRITE;
/*!40000 ALTER TABLE `ClientBlock_Live` DISABLE KEYS */;
INSERT INTO `ClientBlock_Live` VALUES (14,'Client Block A',4),(15,'Client B',3),(26,'BNZ',18),(27,'Finda',19),(28,'ACC',23),(29,'Auckland Council',26),(30,'Slingshot',28),(46,'Client Block A',4),(47,'Client B',3),(74,'Client Block A',4),(75,'Client Block A',4),(76,'Client B',3),(77,'Client B',3);
/*!40000 ALTER TABLE `ClientBlock_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClientBlock_versions`
--

DROP TABLE IF EXISTS `ClientBlock_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClientBlock_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `ImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `ImageID` (`ImageID`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClientBlock_versions`
--

LOCK TABLES `ClientBlock_versions` WRITE;
/*!40000 ALTER TABLE `ClientBlock_versions` DISABLE KEYS */;
INSERT INTO `ClientBlock_versions` VALUES (1,14,1,'Client Block A',0),(2,14,2,'Client Block A',0),(3,14,3,'Client Block A',4),(4,14,4,'Client Block A',4),(5,15,1,'Client B',0),(6,15,2,'Client B',2),(7,15,3,'Client B',2),(8,15,4,'Client B',3),(9,15,5,'Client B',3),(10,26,1,'BNZ',0),(11,26,2,'BNZ',17),(12,26,3,'BNZ',17),(13,26,4,'BNZ',18),(14,26,5,'BNZ',18),(15,27,1,'Finda',0),(16,27,2,'Finda',19),(17,27,3,'Finda',19),(18,28,1,'ACC',0),(19,28,2,'ACC',23),(20,28,3,'ACC',23),(21,29,1,'Auckland Council',0),(22,29,2,'Auckland Council',26),(23,29,3,'Auckland Council',26),(24,30,1,'Slingshot',0),(25,30,2,'Slingshot',28),(26,30,3,'Slingshot',28),(27,46,1,'Client Block A',4),(28,46,2,'Client Block A',4),(29,47,1,'Client B',3),(30,47,2,'Client B',3),(31,74,1,'Client Block A',4),(32,74,2,'Client Block A',4),(33,74,3,'Client Block A',4),(34,75,1,'Client Block A',4),(35,75,2,'Client Block A',4),(36,75,3,'Client Block A',4),(37,76,1,'Client B',3),(38,76,2,'Client B',3),(39,76,3,'Client B',3),(40,77,1,'Client B',3),(41,77,2,'Client B',3),(42,77,3,'Client B',3);
/*!40000 ALTER TABLE `ClientBlock_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClientsModule`
--

DROP TABLE IF EXISTS `ClientsModule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClientsModule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClientsModule`
--

LOCK TABLES `ClientsModule` WRITE;
/*!40000 ALTER TABLE `ClientsModule` DISABLE KEYS */;
INSERT INTO `ClientsModule` VALUES (11,'Clients Module',0,'h2'),(18,'Our Clients',1,'h2'),(36,'Clients Module',0,'h2'),(43,'Clients Module',0,'h2'),(50,'Clients Module',0,'h2'),(59,'Clients Module',0,'h2'),(66,'Clients Module',0,'h2'),(73,'Clients Module',0,'h2'),(80,'Clients Module',0,'h2'),(87,'Clients Module',0,'h2'),(102,'Clients Module',0,'h2');
/*!40000 ALTER TABLE `ClientsModule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClientsModule_Live`
--

DROP TABLE IF EXISTS `ClientsModule_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClientsModule_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClientsModule_Live`
--

LOCK TABLES `ClientsModule_Live` WRITE;
/*!40000 ALTER TABLE `ClientsModule_Live` DISABLE KEYS */;
INSERT INTO `ClientsModule_Live` VALUES (11,'Clients Module',0,'h2'),(18,'Our Clients',1,'h2'),(36,'Clients Module',0,'h2'),(43,'Clients Module',0,'h2'),(50,'Clients Module',0,'h2'),(59,'Clients Module',0,'h2'),(66,'Clients Module',0,'h2'),(73,'Clients Module',0,'h2'),(80,'Clients Module',0,'h2'),(87,'Clients Module',0,'h2'),(102,'Clients Module',0,'h2');
/*!40000 ALTER TABLE `ClientsModule_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClientsModule_versions`
--

DROP TABLE IF EXISTS `ClientsModule_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClientsModule_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClientsModule_versions`
--

LOCK TABLES `ClientsModule_versions` WRITE;
/*!40000 ALTER TABLE `ClientsModule_versions` DISABLE KEYS */;
INSERT INTO `ClientsModule_versions` VALUES (1,11,1,'Clients Module',1,'h2'),(2,11,2,'Clients Module',1,'h2'),(3,11,3,'Clients Module',0,'h2'),(4,11,4,'Clients Module',0,'h2'),(5,18,1,'Our Clients',1,'h2'),(6,18,2,'Our Clients',1,'h2'),(7,36,1,'Clients Module',0,'h2'),(8,36,2,'Clients Module',0,'h2'),(9,43,1,'Clients Module',0,'h2'),(10,43,2,'Clients Module',0,'h2'),(11,50,1,'Clients Module',0,'h2'),(12,50,2,'Clients Module',0,'h2'),(13,50,3,'Clients Module',0,'h2'),(14,59,1,'Clients Module',0,'h2'),(15,59,2,'Clients Module',0,'h2'),(16,66,1,'Clients Module',0,'h2'),(17,66,2,'Clients Module',0,'h2'),(18,73,1,'Clients Module',0,'h2'),(19,73,2,'Clients Module',0,'h2'),(20,80,1,'Clients Module',0,'h2'),(21,80,2,'Clients Module',0,'h2'),(22,87,1,'Clients Module',0,'h2'),(23,87,2,'Clients Module',0,'h2'),(24,102,1,'Clients Module',0,'h2'),(25,102,2,'Clients Module',0,'h2');
/*!40000 ALTER TABLE `ClientsModule_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ContactPage`
--

DROP TABLE IF EXISTS `ContactPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ContactPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SupportTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `SupportText` mediumtext CHARACTER SET utf8,
  `InternationalNumbersTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `InternationalNumbers` mediumtext CHARACTER SET utf8,
  `HeaderTitle` mediumtext CHARACTER SET utf8,
  `UsePageTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `PageColour` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `HeroImageID` int(11) NOT NULL DEFAULT '0',
  `HeaderLogoID` int(11) NOT NULL DEFAULT '0',
  `FormTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `FormDescription` mediumtext CHARACTER SET utf8,
  `FormID` int(11) NOT NULL DEFAULT '0',
  `PardotFormID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroImageID` (`HeroImageID`),
  KEY `HeaderLogoID` (`HeaderLogoID`),
  KEY `FormID` (`FormID`),
  KEY `PardotFormID` (`PardotFormID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ContactPage`
--

LOCK TABLES `ContactPage` WRITE;
/*!40000 ALTER TABLE `ContactPage` DISABLE KEYS */;
INSERT INTO `ContactPage` VALUES (15,'Call Us Toll Free <br/> <strong>0800 344 493</strong>','<p><span>Support Hours: Monday - Friday: 8.30am - 5:30pm </span><br><span>Fees may apply outside of these times.</span></p>','International Numbers','<p>Ph: +64 3 961 9550 <br>Fax:+64 3 351 6705</p>',NULL,1,'deep-sky-blue',0,0,'Enquire here for more information','<h3><span>You can get in contact with us on any of the following channels or simply use the form on the right:</span></h3><ul class=\"address-block\">\n<li><strong>Free Phone: </strong><em>0800 344 493 (NZ Only)</em></li>\n<li><strong>Phone: </strong><em>+64 3 351 6713</em></li>\n<li><strong>Fax: </strong><em>+64 3 351 6705</em></li>\n<li><strong>Support: </strong><a href=\"mailto:support@umbrellar.com\">support@umbrellar.com</a></li>\n<li><strong>Billing:</strong> <a href=\"mailto:billing@umbrellar.com\">billing@umbrellar.com</a></li>\n<li><strong>Sales:</strong> <a href=\"mailto:sales@umbrellar.com\">sales@umbrellar.com</a></li>\n<li><strong>Careers:</strong> <a href=\"mailto:recruittalent@umbrellar.com\">recruittalent@umbrellar.com</a></li>\n</ul>',0,1);
/*!40000 ALTER TABLE `ContactPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ContactPage_Live`
--

DROP TABLE IF EXISTS `ContactPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ContactPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SupportTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `SupportText` mediumtext CHARACTER SET utf8,
  `InternationalNumbersTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `InternationalNumbers` mediumtext CHARACTER SET utf8,
  `HeaderTitle` mediumtext CHARACTER SET utf8,
  `UsePageTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `PageColour` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `HeroImageID` int(11) NOT NULL DEFAULT '0',
  `HeaderLogoID` int(11) NOT NULL DEFAULT '0',
  `FormTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `FormDescription` mediumtext CHARACTER SET utf8,
  `FormID` int(11) NOT NULL DEFAULT '0',
  `PardotFormID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroImageID` (`HeroImageID`),
  KEY `HeaderLogoID` (`HeaderLogoID`),
  KEY `FormID` (`FormID`),
  KEY `PardotFormID` (`PardotFormID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ContactPage_Live`
--

LOCK TABLES `ContactPage_Live` WRITE;
/*!40000 ALTER TABLE `ContactPage_Live` DISABLE KEYS */;
INSERT INTO `ContactPage_Live` VALUES (15,'Call Us Toll Free <br/> <strong>0800 344 493</strong>','<p><span>Support Hours: Monday - Friday: 8.30am - 5:30pm </span><br><span>Fees may apply outside of these times.</span></p>','International Numbers','<p>Ph: +64 3 961 9550 <br>Fax:+64 3 351 6705</p>',NULL,1,'deep-sky-blue',0,0,'Enquire here for more information','<h3><span>You can get in contact with us on any of the following channels or simply use the form on the right:</span></h3><ul class=\"address-block\">\n<li><strong>Free Phone: </strong><em>0800 344 493 (NZ Only)</em></li>\n<li><strong>Phone: </strong><em>+64 3 351 6713</em></li>\n<li><strong>Fax: </strong><em>+64 3 351 6705</em></li>\n<li><strong>Support: </strong><a href=\"mailto:support@umbrellar.com\">support@umbrellar.com</a></li>\n<li><strong>Billing:</strong> <a href=\"mailto:billing@umbrellar.com\">billing@umbrellar.com</a></li>\n<li><strong>Sales:</strong> <a href=\"mailto:sales@umbrellar.com\">sales@umbrellar.com</a></li>\n<li><strong>Careers:</strong> <a href=\"mailto:recruittalent@umbrellar.com\">recruittalent@umbrellar.com</a></li>\n</ul>',0,1);
/*!40000 ALTER TABLE `ContactPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ContactPage_versions`
--

DROP TABLE IF EXISTS `ContactPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ContactPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `SupportTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `SupportText` mediumtext CHARACTER SET utf8,
  `InternationalNumbersTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `InternationalNumbers` mediumtext CHARACTER SET utf8,
  `HeaderTitle` mediumtext CHARACTER SET utf8,
  `UsePageTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `PageColour` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `HeroImageID` int(11) NOT NULL DEFAULT '0',
  `HeaderLogoID` int(11) NOT NULL DEFAULT '0',
  `FormTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `FormDescription` mediumtext CHARACTER SET utf8,
  `FormID` int(11) NOT NULL DEFAULT '0',
  `PardotFormID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `HeroImageID` (`HeroImageID`),
  KEY `HeaderLogoID` (`HeaderLogoID`),
  KEY `FormID` (`FormID`),
  KEY `PardotFormID` (`PardotFormID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ContactPage_versions`
--

LOCK TABLES `ContactPage_versions` WRITE;
/*!40000 ALTER TABLE `ContactPage_versions` DISABLE KEYS */;
INSERT INTO `ContactPage_versions` VALUES (1,15,2,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL,0,0),(2,15,3,'Call Us Toll Free <br/> <strong>0800 344 493</strong>','<p><span>Support Hours: Monday - Friday: 8.30am - 5:30pm </span><br><span>Fees may apply outside of these times.</span></p>','International Numbers','<p>Ph: +64 3 961 9550 <br>Fax:+64 3 351 6705</p>',NULL,0,NULL,0,0,NULL,NULL,0,0),(3,15,4,'Call Us Toll Free <br/> <strong>0800 344 493</strong>','<p><span>Support Hours: Monday - Friday: 8.30am - 5:30pm </span><br><span>Fees may apply outside of these times.</span></p>','International Numbers','<p>Ph: +64 3 961 9550 <br>Fax:+64 3 351 6705</p>',NULL,0,'bright-turquoise',0,0,NULL,NULL,0,0),(4,15,5,'Call Us Toll Free <br/> <strong>0800 344 493</strong>','<p><span>Support Hours: Monday - Friday: 8.30am - 5:30pm </span><br><span>Fees may apply outside of these times.</span></p>','International Numbers','<p>Ph: +64 3 961 9550 <br>Fax:+64 3 351 6705</p>',NULL,1,'bright-turquoise',0,0,NULL,NULL,0,0),(5,15,6,'Call Us Toll Free <br/> <strong>0800 344 493</strong>','<p><span>Support Hours: Monday - Friday: 8.30am - 5:30pm </span><br><span>Fees may apply outside of these times.</span></p>','International Numbers','<p>Ph: +64 3 961 9550 <br>Fax:+64 3 351 6705</p>',NULL,1,'bright-turquoise',0,0,'Enquire here for more information','<h3><span>You can get in contact with us on any of the following channels or simply use the form on the right:</span></h3><ul>\n<li><strong>Free Phone:</strong> <em>0800 344 493 (NZ Only)</em></li>\n<li><strong>Phone:</strong> <em>+64 3 351 6713</em></li>\n<li><strong>Fax:</strong> <em>+64 3 351 6705</em></li>\n<li><strong>Support:</strong> <a href=\"mailto:support@umbrellar.com\">support@umbrellar.com</a></li>\n<li><strong>Billing:</strong> <a href=\"mailto:billing@umbrellar.com\">billing@umbrellar.com</a></li>\n<li><strong>Sales:</strong> <a href=\"mailto:sales@umbrellar.com\">sales@umbrellar.com</a></li>\n<li><strong>Careers:</strong> <a href=\"mailto:recruittalent@umbrellar.com\">recruittalent@umbrellar.com</a></li>\n</ul>',0,0),(6,15,7,'Call Us Toll Free <br/> <strong>0800 344 493</strong>','<p><span>Support Hours: Monday - Friday: 8.30am - 5:30pm </span><br><span>Fees may apply outside of these times.</span></p>','International Numbers','<p>Ph: +64 3 961 9550 <br>Fax:+64 3 351 6705</p>',NULL,1,'bright-turquoise',0,0,'Enquire here for more information','<h3><span>You can get in contact with us on any of the following channels or simply use the form on the right:</span></h3><ul class=\"address-block\">\n<li><strong>Free Phone:</strong> <em>0800 344 493 (NZ Only)</em></li>\n<li><strong>Phone:</strong> <em>+64 3 351 6713</em></li>\n<li><strong>Fax:</strong> <em>+64 3 351 6705</em></li>\n<li><strong>Support:</strong> <a href=\"mailto:support@umbrellar.com\">support@umbrellar.com</a></li>\n<li><strong>Billing:</strong> <a href=\"mailto:billing@umbrellar.com\">billing@umbrellar.com</a></li>\n<li><strong>Sales:</strong> <a href=\"mailto:sales@umbrellar.com\">sales@umbrellar.com</a></li>\n<li><strong>Careers:</strong> <a href=\"mailto:recruittalent@umbrellar.com\">recruittalent@umbrellar.com</a></li>\n</ul>',0,0),(7,15,8,'Call Us Toll Free <br/> <strong>0800 344 493</strong>','<p><span>Support Hours: Monday - Friday: 8.30am - 5:30pm </span><br><span>Fees may apply outside of these times.</span></p>','International Numbers','<p>Ph: +64 3 961 9550 <br>Fax:+64 3 351 6705</p>',NULL,1,'bright-turquoise',0,0,'Enquire here for more information','<h3><span>You can get in contact with us on any of the following channels or simply use the form on the right:</span></h3><ul class=\"address-block\">\n<li><strong>Free Phone: </strong><em>0800 344 493 (NZ Only)</em></li>\n<li><strong>Phone: </strong><em>+64 3 351 6713</em></li>\n<li><strong>Fax: </strong><em>+64 3 351 6705</em></li>\n<li><strong>Support: </strong><a href=\"mailto:support@umbrellar.com\">support@umbrellar.com</a></li>\n<li><strong>Billing:</strong> <a href=\"mailto:billing@umbrellar.com\">billing@umbrellar.com</a></li>\n<li><strong>Sales:</strong> <a href=\"mailto:sales@umbrellar.com\">sales@umbrellar.com</a></li>\n<li><strong>Careers:</strong> <a href=\"mailto:recruittalent@umbrellar.com\">recruittalent@umbrellar.com</a></li>\n</ul>',0,0),(8,15,9,'Call Us Toll Free <br/> <strong>0800 344 493</strong>','<p><span>Support Hours: Monday - Friday: 8.30am - 5:30pm </span><br><span>Fees may apply outside of these times.</span></p>','International Numbers','<p>Ph: +64 3 961 9550 <br>Fax:+64 3 351 6705</p>',NULL,1,'deep-sky-blue',0,0,'Enquire here for more information','<h3><span>You can get in contact with us on any of the following channels or simply use the form on the right:</span></h3><ul class=\"address-block\">\n<li><strong>Free Phone: </strong><em>0800 344 493 (NZ Only)</em></li>\n<li><strong>Phone: </strong><em>+64 3 351 6713</em></li>\n<li><strong>Fax: </strong><em>+64 3 351 6705</em></li>\n<li><strong>Support: </strong><a href=\"mailto:support@umbrellar.com\">support@umbrellar.com</a></li>\n<li><strong>Billing:</strong> <a href=\"mailto:billing@umbrellar.com\">billing@umbrellar.com</a></li>\n<li><strong>Sales:</strong> <a href=\"mailto:sales@umbrellar.com\">sales@umbrellar.com</a></li>\n<li><strong>Careers:</strong> <a href=\"mailto:recruittalent@umbrellar.com\">recruittalent@umbrellar.com</a></li>\n</ul>',0,0),(9,15,10,'Call Us Toll Free <br/> <strong>0800 344 493</strong>','<p><span>Support Hours: Monday - Friday: 8.30am - 5:30pm </span><br><span>Fees may apply outside of these times.</span></p>','International Numbers','<p>Ph: +64 3 961 9550 <br>Fax:+64 3 351 6705</p>',NULL,1,'deep-sky-blue',0,0,'Enquire here for more information','<h3><span>You can get in contact with us on any of the following channels or simply use the form on the right:</span></h3><ul class=\"address-block\">\n<li><strong>Free Phone: </strong><em>0800 344 493 (NZ Only)</em></li>\n<li><strong>Phone: </strong><em>+64 3 351 6713</em></li>\n<li><strong>Fax: </strong><em>+64 3 351 6705</em></li>\n<li><strong>Support: </strong><a href=\"mailto:support@umbrellar.com\">support@umbrellar.com</a></li>\n<li><strong>Billing:</strong> <a href=\"mailto:billing@umbrellar.com\">billing@umbrellar.com</a></li>\n<li><strong>Sales:</strong> <a href=\"mailto:sales@umbrellar.com\">sales@umbrellar.com</a></li>\n<li><strong>Careers:</strong> <a href=\"mailto:recruittalent@umbrellar.com\">recruittalent@umbrellar.com</a></li>\n</ul>',0,1),(10,15,11,'Call Us Toll Free <br/> <strong>0800 344 493</strong>','<p><span>Support Hours: Monday - Friday: 8.30am - 5:30pm </span><br><span>Fees may apply outside of these times.</span></p>','International Numbers','<p>Ph: +64 3 961 9550 <br>Fax:+64 3 351 6705</p>',NULL,1,'deep-sky-blue',0,0,'Enquire here for more information','<h3><span>You can get in contact with us on any of the following channels or simply use the form on the right:</span></h3><ul class=\"address-block\">\n<li><strong>Free Phone: </strong><em>0800 344 493 (NZ Only)</em></li>\n<li><strong>Phone: </strong><em>+64 3 351 6713</em></li>\n<li><strong>Fax: </strong><em>+64 3 351 6705</em></li>\n<li><strong>Support: </strong><a href=\"mailto:support@umbrellar.com\">support@umbrellar.com</a></li>\n<li><strong>Billing:</strong> <a href=\"mailto:billing@umbrellar.com\">billing@umbrellar.com</a></li>\n<li><strong>Sales:</strong> <a href=\"mailto:sales@umbrellar.com\">sales@umbrellar.com</a></li>\n<li><strong>Careers:</strong> <a href=\"mailto:recruittalent@umbrellar.com\">recruittalent@umbrellar.com</a></li>\n</ul>',0,1);
/*!40000 ALTER TABLE `ContactPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ContentModule`
--

DROP TABLE IF EXISTS `ContentModule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ContentModule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  `Alignment` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ContentModule`
--

LOCK TABLES `ContentModule` WRITE;
/*!40000 ALTER TABLE `ContentModule` DISABLE KEYS */;
INSERT INTO `ContentModule` VALUES (7,'Test X',0,'h2','left-aligned'),(13,'ksjdhjksd',0,'h2',NULL),(33,'Test X',0,'h2','left-aligned'),(34,'ksjdhjksd',0,'h2',NULL),(40,'Test X',0,'h2','left-aligned'),(41,'ksjdhjksd',0,'h2',NULL),(47,'Test X',0,'h2','left-aligned'),(48,'ksjdhjksd',0,'h2',NULL),(56,'Test X',0,'h2','left-aligned'),(57,'ksjdhjksd',0,'h2',NULL),(63,'Test X',0,'h2','left-aligned'),(64,'ksjdhjksd',0,'h2',NULL),(70,'Test X',0,'h2','left-aligned'),(71,'ksjdhjksd',0,'h2',NULL),(77,'Test X',0,'h2','left-aligned'),(78,'ksjdhjksd',0,'h2',NULL),(84,'Test X',0,'h2','left-aligned'),(85,'ksjdhjksd',0,'h2',NULL),(99,'Test X',0,'h2','left-aligned'),(100,'ksjdhjksd',0,'h2',NULL);
/*!40000 ALTER TABLE `ContentModule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ContentModule_Live`
--

DROP TABLE IF EXISTS `ContentModule_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ContentModule_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  `Alignment` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ContentModule_Live`
--

LOCK TABLES `ContentModule_Live` WRITE;
/*!40000 ALTER TABLE `ContentModule_Live` DISABLE KEYS */;
INSERT INTO `ContentModule_Live` VALUES (7,'Test X',0,'h2','left-aligned'),(13,'ksjdhjksd',0,'h2',NULL),(33,'Test X',0,'h2','left-aligned'),(34,'ksjdhjksd',0,'h2',NULL),(40,'Test X',0,'h2','left-aligned'),(41,'ksjdhjksd',0,'h2',NULL),(47,'Test X',0,'h2','left-aligned'),(48,'ksjdhjksd',0,'h2',NULL),(56,'Test X',0,'h2','left-aligned'),(57,'ksjdhjksd',0,'h2',NULL),(63,'Test X',0,'h2','left-aligned'),(64,'ksjdhjksd',0,'h2',NULL),(70,'Test X',0,'h2','left-aligned'),(71,'ksjdhjksd',0,'h2',NULL),(77,'Test X',0,'h2','left-aligned'),(78,'ksjdhjksd',0,'h2',NULL),(84,'Test X',0,'h2','left-aligned'),(85,'ksjdhjksd',0,'h2',NULL),(99,'Test X',0,'h2','left-aligned'),(100,'ksjdhjksd',0,'h2',NULL);
/*!40000 ALTER TABLE `ContentModule_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ContentModule_versions`
--

DROP TABLE IF EXISTS `ContentModule_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ContentModule_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  `Alignment` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ContentModule_versions`
--

LOCK TABLES `ContentModule_versions` WRITE;
/*!40000 ALTER TABLE `ContentModule_versions` DISABLE KEYS */;
INSERT INTO `ContentModule_versions` VALUES (11,7,1,'Test X',1,'h2',NULL),(12,7,2,'Test X',1,'h2','left-aligned'),(13,7,3,'Test X',1,'h2','left-aligned'),(14,7,4,'Test X',1,'h2','left-aligned'),(15,7,5,'Test X',1,'h2','left-aligned'),(19,13,1,'ksjdhjksd',0,'h2',NULL),(20,13,2,'ksjdhjksd',0,'h2',NULL),(21,13,3,'ksjdhjksd',0,'h2',NULL),(22,7,6,'Test X',1,'h2','left-aligned'),(23,7,7,'Test X',1,'h2','left-aligned'),(24,7,8,'Test X',0,'h2','left-aligned'),(25,7,9,'Test X',0,'h2','left-aligned'),(26,13,4,'ksjdhjksd',0,'h2',NULL),(27,13,5,'ksjdhjksd',0,'h2',NULL),(28,7,10,'Test X',0,'h2','left-aligned'),(29,7,11,'Test X',0,'h2','left-aligned'),(30,33,1,'Test X',0,'h2','left-aligned'),(31,33,2,'Test X',0,'h2','left-aligned'),(32,34,1,'ksjdhjksd',0,'h2',NULL),(33,34,2,'ksjdhjksd',0,'h2',NULL),(34,40,1,'Test X',0,'h2','left-aligned'),(35,40,2,'Test X',0,'h2','left-aligned'),(36,41,1,'ksjdhjksd',0,'h2',NULL),(37,41,2,'ksjdhjksd',0,'h2',NULL),(38,47,1,'Test X',0,'h2','left-aligned'),(39,47,2,'Test X',0,'h2','left-aligned'),(40,47,3,'Test X',0,'h2','left-aligned'),(41,48,1,'ksjdhjksd',0,'h2',NULL),(42,48,2,'ksjdhjksd',0,'h2',NULL),(43,48,3,'ksjdhjksd',0,'h2',NULL),(44,56,1,'Test X',0,'h2','left-aligned'),(45,56,2,'Test X',0,'h2','left-aligned'),(46,57,1,'ksjdhjksd',0,'h2',NULL),(47,57,2,'ksjdhjksd',0,'h2',NULL),(48,63,1,'Test X',0,'h2','left-aligned'),(49,63,2,'Test X',0,'h2','left-aligned'),(50,64,1,'ksjdhjksd',0,'h2',NULL),(51,64,2,'ksjdhjksd',0,'h2',NULL),(52,70,1,'Test X',0,'h2','left-aligned'),(53,70,2,'Test X',0,'h2','left-aligned'),(54,71,1,'ksjdhjksd',0,'h2',NULL),(55,71,2,'ksjdhjksd',0,'h2',NULL),(56,77,1,'Test X',0,'h2','left-aligned'),(57,77,2,'Test X',0,'h2','left-aligned'),(58,78,1,'ksjdhjksd',0,'h2',NULL),(59,78,2,'ksjdhjksd',0,'h2',NULL),(60,84,1,'Test X',0,'h2','left-aligned'),(61,84,2,'Test X',0,'h2','left-aligned'),(62,85,1,'ksjdhjksd',0,'h2',NULL),(63,85,2,'ksjdhjksd',0,'h2',NULL),(64,99,1,'Test X',0,'h2','left-aligned'),(65,99,2,'Test X',0,'h2','left-aligned'),(66,100,1,'ksjdhjksd',0,'h2',NULL),(67,100,2,'ksjdhjksd',0,'h2',NULL);
/*!40000 ALTER TABLE `ContentModule_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ContentPage`
--

DROP TABLE IF EXISTS `ContentPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ContentPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HeaderTitle` mediumtext CHARACTER SET utf8,
  `UsePageTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HeroImageID` int(11) NOT NULL DEFAULT '0',
  `HeaderLogoID` int(11) NOT NULL DEFAULT '0',
  `PageColour` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `HeroImageID` (`HeroImageID`),
  KEY `HeaderLogoID` (`HeaderLogoID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ContentPage`
--

LOCK TABLES `ContentPage` WRITE;
/*!40000 ALTER TABLE `ContentPage` DISABLE KEYS */;
INSERT INTO `ContentPage` VALUES (22,'Empowering\r\nNZ Tech.',0,0,0,'bright-turquoise'),(25,NULL,0,0,0,NULL),(26,NULL,0,0,0,NULL),(27,NULL,0,0,0,NULL),(28,NULL,0,0,0,NULL);
/*!40000 ALTER TABLE `ContentPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ContentPage_Live`
--

DROP TABLE IF EXISTS `ContentPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ContentPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `HeaderTitle` mediumtext CHARACTER SET utf8,
  `UsePageTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HeroImageID` int(11) NOT NULL DEFAULT '0',
  `HeaderLogoID` int(11) NOT NULL DEFAULT '0',
  `PageColour` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `HeroImageID` (`HeroImageID`),
  KEY `HeaderLogoID` (`HeaderLogoID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ContentPage_Live`
--

LOCK TABLES `ContentPage_Live` WRITE;
/*!40000 ALTER TABLE `ContentPage_Live` DISABLE KEYS */;
INSERT INTO `ContentPage_Live` VALUES (22,'Empowering\r\nNZ Tech.',0,0,0,'bright-turquoise'),(25,NULL,0,0,0,NULL);
/*!40000 ALTER TABLE `ContentPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ContentPage_versions`
--

DROP TABLE IF EXISTS `ContentPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ContentPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `HeaderTitle` mediumtext CHARACTER SET utf8,
  `UsePageTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HeroImageID` int(11) NOT NULL DEFAULT '0',
  `HeaderLogoID` int(11) NOT NULL DEFAULT '0',
  `PageColour` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `HeroImageID` (`HeroImageID`),
  KEY `HeaderLogoID` (`HeaderLogoID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ContentPage_versions`
--

LOCK TABLES `ContentPage_versions` WRITE;
/*!40000 ALTER TABLE `ContentPage_versions` DISABLE KEYS */;
INSERT INTO `ContentPage_versions` VALUES (1,22,1,NULL,0,0,0,NULL),(2,22,2,'Empowering\r\nNZ Tech.',0,0,0,NULL),(3,22,3,'Empowering\r\nNZ Tech.',0,0,0,'bright-turquoise');
/*!40000 ALTER TABLE `ContentPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DropDownSection`
--

DROP TABLE IF EXISTS `DropDownSection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DropDownSection` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Introduction` mediumtext CHARACTER SET utf8,
  `Title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Slug` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CallToActionButtonID` int(11) NOT NULL DEFAULT '0',
  `HideTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Theme` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CallToActionButtonID` (`CallToActionButtonID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DropDownSection`
--

LOCK TABLES `DropDownSection` WRITE;
/*!40000 ALTER TABLE `DropDownSection` DISABLE KEYS */;
INSERT INTO `DropDownSection` VALUES (1,'Umbrellar Cloud vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.','Our Vision','our-vision',9,0,'deep-sky-blue'),(2,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.','Knowledge','knowledge',0,0,NULL),(4,'Pricing Maecenas sed diam eget risus varius blandit sit amet non magna.','Pricing','pricing',44,0,'deep-sky-blue');
/*!40000 ALTER TABLE `DropDownSection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DualColumnBlock`
--

DROP TABLE IF EXISTS `DualColumnBlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DualColumnBlock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LeftColumn` mediumtext CHARACTER SET utf8,
  `RightColumn` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DualColumnBlock`
--

LOCK TABLES `DualColumnBlock` WRITE;
/*!40000 ALTER TABLE `DualColumnBlock` DISABLE KEYS */;
/*!40000 ALTER TABLE `DualColumnBlock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DualColumnBlock_Live`
--

DROP TABLE IF EXISTS `DualColumnBlock_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DualColumnBlock_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LeftColumn` mediumtext CHARACTER SET utf8,
  `RightColumn` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DualColumnBlock_Live`
--

LOCK TABLES `DualColumnBlock_Live` WRITE;
/*!40000 ALTER TABLE `DualColumnBlock_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `DualColumnBlock_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DualColumnBlock_versions`
--

DROP TABLE IF EXISTS `DualColumnBlock_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DualColumnBlock_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `LeftColumn` mediumtext CHARACTER SET utf8,
  `RightColumn` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DualColumnBlock_versions`
--

LOCK TABLES `DualColumnBlock_versions` WRITE;
/*!40000 ALTER TABLE `DualColumnBlock_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `DualColumnBlock_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EmbeddedObject`
--

DROP TABLE IF EXISTS `EmbeddedObject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EmbeddedObject` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('EmbeddedObject') CHARACTER SET utf8 DEFAULT 'EmbeddedObject',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Type` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `SourceURL` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Width` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Height` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8,
  `ThumbURL` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ExtraClass` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `EmbedHTML` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmbeddedObject`
--

LOCK TABLES `EmbeddedObject` WRITE;
/*!40000 ALTER TABLE `EmbeddedObject` DISABLE KEYS */;
/*!40000 ALTER TABLE `EmbeddedObject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ErrorPage`
--

DROP TABLE IF EXISTS `ErrorPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ErrorPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ErrorPage`
--

LOCK TABLES `ErrorPage` WRITE;
/*!40000 ALTER TABLE `ErrorPage` DISABLE KEYS */;
INSERT INTO `ErrorPage` VALUES (16,404),(17,500),(18,503);
/*!40000 ALTER TABLE `ErrorPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ErrorPage_Live`
--

DROP TABLE IF EXISTS `ErrorPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ErrorPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ErrorPage_Live`
--

LOCK TABLES `ErrorPage_Live` WRITE;
/*!40000 ALTER TABLE `ErrorPage_Live` DISABLE KEYS */;
INSERT INTO `ErrorPage_Live` VALUES (16,404),(17,500),(18,503);
/*!40000 ALTER TABLE `ErrorPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ErrorPage_versions`
--

DROP TABLE IF EXISTS `ErrorPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ErrorPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ErrorCode` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ErrorPage_versions`
--

LOCK TABLES `ErrorPage_versions` WRITE;
/*!40000 ALTER TABLE `ErrorPage_versions` DISABLE KEYS */;
INSERT INTO `ErrorPage_versions` VALUES (7,16,1,404),(8,17,1,500),(9,18,1,503);
/*!40000 ALTER TABLE `ErrorPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FeatureBlock`
--

DROP TABLE IF EXISTS `FeatureBlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FeatureBlock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Icon` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Text` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FeatureBlock`
--

LOCK TABLES `FeatureBlock` WRITE;
/*!40000 ALTER TABLE `FeatureBlock` DISABLE KEYS */;
INSERT INTO `FeatureBlock` VALUES (8,'Feature 1','app-centre','<p>Sed posuere consectetur est at lobortis. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Sed posuere consectetur est at lobortis. Aenean lacinia bibendum nulla sed consectetur.</p><p>Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Cras mattis consectetur purus sit amet fermentum.</p><p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper.</p>'),(9,'Feature 2','app-centre','<p>Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Donec ullamcorper nulla non metus auctor fringilla. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Maecenas faucibus mollis interdum. Vestibulum id ligula porta felis euismod semper. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Cras mattis consectetur purus sit amet fermentum. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>'),(16,'Feature 3','customisation','<p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.</p>'),(17,'Feature 4','domain-parking','<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec id elit non mi porta gravida at eget metus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(18,'Feature 5','data-sovereignty','<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Donec id elit non mi porta gravida at eget metus. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Maecenas faucibus mollis interdum. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nullam quis risus eget urna mollis ornare vel eu leo. Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>'),(50,'Feature 3','customisation','<p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.</p>'),(51,'Feature 4','domain-parking','<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec id elit non mi porta gravida at eget metus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(52,'Feature 5','data-sovereignty','<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Donec id elit non mi porta gravida at eget metus. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Maecenas faucibus mollis interdum. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nullam quis risus eget urna mollis ornare vel eu leo. Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>'),(49,'Feature 2','app-centre','<p>Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Donec ullamcorper nulla non metus auctor fringilla. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Maecenas faucibus mollis interdum. Vestibulum id ligula porta felis euismod semper. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Cras mattis consectetur purus sit amet fermentum. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>'),(48,'Feature 1','app-centre','<p>Sed posuere consectetur est at lobortis. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Sed posuere consectetur est at lobortis. Aenean lacinia bibendum nulla sed consectetur.</p><p>Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Cras mattis consectetur purus sit amet fermentum.</p><p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper.</p>'),(53,'Feature 1a','app-centre','<p>Sed posuere consectetur est at lobortis. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Sed posuere consectetur est at lobortis. Aenean lacinia bibendum nulla sed consectetur.</p><p>Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Cras mattis consectetur purus sit amet fermentum.</p><p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper.</p>'),(54,'Feature 2','app-centre','<p>Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Donec ullamcorper nulla non metus auctor fringilla. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Maecenas faucibus mollis interdum. Vestibulum id ligula porta felis euismod semper. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Cras mattis consectetur purus sit amet fermentum. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>'),(55,'Feature 3','customisation','<p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.</p>'),(56,'Feature 4','domain-parking','<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec id elit non mi porta gravida at eget metus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(57,'Feature 5','data-sovereignty','<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Donec id elit non mi porta gravida at eget metus. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Maecenas faucibus mollis interdum. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nullam quis risus eget urna mollis ornare vel eu leo. Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>');
/*!40000 ALTER TABLE `FeatureBlock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FeatureBlock_Live`
--

DROP TABLE IF EXISTS `FeatureBlock_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FeatureBlock_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Icon` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Text` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FeatureBlock_Live`
--

LOCK TABLES `FeatureBlock_Live` WRITE;
/*!40000 ALTER TABLE `FeatureBlock_Live` DISABLE KEYS */;
INSERT INTO `FeatureBlock_Live` VALUES (8,'Feature 1','app-centre','<p>Sed posuere consectetur est at lobortis. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Sed posuere consectetur est at lobortis. Aenean lacinia bibendum nulla sed consectetur.</p><p>Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Cras mattis consectetur purus sit amet fermentum.</p><p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper.</p>'),(9,'Feature 2','app-centre','<p>Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Donec ullamcorper nulla non metus auctor fringilla. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Maecenas faucibus mollis interdum. Vestibulum id ligula porta felis euismod semper. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Cras mattis consectetur purus sit amet fermentum. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>'),(16,'Feature 3','customisation','<p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.</p>'),(17,'Feature 4','domain-parking','<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec id elit non mi porta gravida at eget metus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(18,'Feature 5','data-sovereignty','<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Donec id elit non mi porta gravida at eget metus. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Maecenas faucibus mollis interdum. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nullam quis risus eget urna mollis ornare vel eu leo. Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>'),(50,'Feature 3','customisation','<p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.</p>'),(51,'Feature 4','domain-parking','<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec id elit non mi porta gravida at eget metus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(52,'Feature 5','data-sovereignty','<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Donec id elit non mi porta gravida at eget metus. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Maecenas faucibus mollis interdum. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nullam quis risus eget urna mollis ornare vel eu leo. Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>'),(49,'Feature 2','app-centre','<p>Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Donec ullamcorper nulla non metus auctor fringilla. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Maecenas faucibus mollis interdum. Vestibulum id ligula porta felis euismod semper. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Cras mattis consectetur purus sit amet fermentum. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>'),(48,'Feature 1','app-centre','<p>Sed posuere consectetur est at lobortis. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Sed posuere consectetur est at lobortis. Aenean lacinia bibendum nulla sed consectetur.</p><p>Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Cras mattis consectetur purus sit amet fermentum.</p><p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper.</p>'),(53,'Feature 1a','app-centre','<p>Sed posuere consectetur est at lobortis. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Sed posuere consectetur est at lobortis. Aenean lacinia bibendum nulla sed consectetur.</p><p>Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Cras mattis consectetur purus sit amet fermentum.</p><p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper.</p>'),(54,'Feature 2','app-centre','<p>Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Donec ullamcorper nulla non metus auctor fringilla. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Maecenas faucibus mollis interdum. Vestibulum id ligula porta felis euismod semper. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Cras mattis consectetur purus sit amet fermentum. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>'),(55,'Feature 3','customisation','<p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.</p>'),(56,'Feature 4','domain-parking','<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec id elit non mi porta gravida at eget metus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(57,'Feature 5','data-sovereignty','<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Donec id elit non mi porta gravida at eget metus. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Maecenas faucibus mollis interdum. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nullam quis risus eget urna mollis ornare vel eu leo. Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>');
/*!40000 ALTER TABLE `FeatureBlock_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FeatureBlock_versions`
--

DROP TABLE IF EXISTS `FeatureBlock_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FeatureBlock_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Icon` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Text` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FeatureBlock_versions`
--

LOCK TABLES `FeatureBlock_versions` WRITE;
/*!40000 ALTER TABLE `FeatureBlock_versions` DISABLE KEYS */;
INSERT INTO `FeatureBlock_versions` VALUES (4,8,1,'Featured Block',NULL,NULL),(5,8,2,'Featured Block',NULL,'<p>Sed posuere consectetur est at lobortis. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Sed posuere consectetur est at lobortis. Aenean lacinia bibendum nulla sed consectetur.</p><p>Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Cras mattis consectetur purus sit amet fermentum.</p><p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper.</p>'),(6,8,3,'Featured Block',NULL,'<p>Sed posuere consectetur est at lobortis. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Sed posuere consectetur est at lobortis. Aenean lacinia bibendum nulla sed consectetur.</p><p>Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Cras mattis consectetur purus sit amet fermentum.</p><p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper.</p>'),(7,8,4,'Featured Block Test',NULL,'<p>Sed posuere consectetur est at lobortis. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Sed posuere consectetur est at lobortis. Aenean lacinia bibendum nulla sed consectetur.</p><p>Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Cras mattis consectetur purus sit amet fermentum.</p><p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper.</p>'),(8,8,5,'Featured Block Test',NULL,'<p>Sed posuere consectetur est at lobortis. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Sed posuere consectetur est at lobortis. Aenean lacinia bibendum nulla sed consectetur.</p><p>Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Cras mattis consectetur purus sit amet fermentum.</p><p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper.</p>'),(9,8,6,'Feature 1',NULL,'<p>Sed posuere consectetur est at lobortis. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Sed posuere consectetur est at lobortis. Aenean lacinia bibendum nulla sed consectetur.</p><p>Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Cras mattis consectetur purus sit amet fermentum.</p><p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper.</p>'),(10,8,7,'Feature 1',NULL,'<p>Sed posuere consectetur est at lobortis. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Sed posuere consectetur est at lobortis. Aenean lacinia bibendum nulla sed consectetur.</p><p>Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Cras mattis consectetur purus sit amet fermentum.</p><p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper.</p>'),(11,8,8,'Feature 1','app-centre','<p>Sed posuere consectetur est at lobortis. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Sed posuere consectetur est at lobortis. Aenean lacinia bibendum nulla sed consectetur.</p><p>Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Cras mattis consectetur purus sit amet fermentum.</p><p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper.</p>'),(12,8,9,'Feature 1','app-centre','<p>Sed posuere consectetur est at lobortis. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Sed posuere consectetur est at lobortis. Aenean lacinia bibendum nulla sed consectetur.</p><p>Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Cras mattis consectetur purus sit amet fermentum.</p><p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper.</p>'),(13,9,1,'Feature 2','app-centre','<p>Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Donec ullamcorper nulla non metus auctor fringilla. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Maecenas faucibus mollis interdum. Vestibulum id ligula porta felis euismod semper. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Cras mattis consectetur purus sit amet fermentum. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>'),(14,9,2,'Feature 2','app-centre','<p>Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Donec ullamcorper nulla non metus auctor fringilla. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Maecenas faucibus mollis interdum. Vestibulum id ligula porta felis euismod semper. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Cras mattis consectetur purus sit amet fermentum. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>'),(15,16,1,'Feature 3','customisation','<p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.</p>'),(16,16,2,'Feature 3','customisation','<p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.</p>'),(17,17,1,'Feature 4','domain-parking','<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec id elit non mi porta gravida at eget metus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(18,17,2,'Feature 4','domain-parking','<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec id elit non mi porta gravida at eget metus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(19,18,1,'Feature 5','data-sovereignty','<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Donec id elit non mi porta gravida at eget metus. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Maecenas faucibus mollis interdum. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nullam quis risus eget urna mollis ornare vel eu leo. Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>'),(20,18,2,'Feature 5','data-sovereignty','<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Donec id elit non mi porta gravida at eget metus. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Maecenas faucibus mollis interdum. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nullam quis risus eget urna mollis ornare vel eu leo. Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>'),(21,18,3,'Feature 5','data-sovereignty','<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Donec id elit non mi porta gravida at eget metus. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Maecenas faucibus mollis interdum. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nullam quis risus eget urna mollis ornare vel eu leo. Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>'),(32,48,1,'Feature 1','app-centre','<p>Sed posuere consectetur est at lobortis. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Sed posuere consectetur est at lobortis. Aenean lacinia bibendum nulla sed consectetur.</p><p>Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Cras mattis consectetur purus sit amet fermentum.</p><p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper.</p>'),(33,48,2,'Feature 1','app-centre','<p>Sed posuere consectetur est at lobortis. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Sed posuere consectetur est at lobortis. Aenean lacinia bibendum nulla sed consectetur.</p><p>Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Cras mattis consectetur purus sit amet fermentum.</p><p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper.</p>'),(34,48,3,'Feature 1','app-centre','<p>Sed posuere consectetur est at lobortis. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Sed posuere consectetur est at lobortis. Aenean lacinia bibendum nulla sed consectetur.</p><p>Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Cras mattis consectetur purus sit amet fermentum.</p><p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper.</p>'),(35,49,1,'Feature 2','app-centre','<p>Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Donec ullamcorper nulla non metus auctor fringilla. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Maecenas faucibus mollis interdum. Vestibulum id ligula porta felis euismod semper. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Cras mattis consectetur purus sit amet fermentum. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>'),(36,49,2,'Feature 2','app-centre','<p>Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Donec ullamcorper nulla non metus auctor fringilla. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Maecenas faucibus mollis interdum. Vestibulum id ligula porta felis euismod semper. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Cras mattis consectetur purus sit amet fermentum. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>'),(37,49,3,'Feature 2','app-centre','<p>Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Donec ullamcorper nulla non metus auctor fringilla. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Maecenas faucibus mollis interdum. Vestibulum id ligula porta felis euismod semper. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Cras mattis consectetur purus sit amet fermentum. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>'),(38,50,1,'Feature 3','customisation','<p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.</p>'),(39,50,2,'Feature 3','customisation','<p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.</p>'),(40,50,3,'Feature 3','customisation','<p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.</p>'),(41,51,1,'Feature 4','domain-parking','<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec id elit non mi porta gravida at eget metus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(42,51,2,'Feature 4','domain-parking','<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec id elit non mi porta gravida at eget metus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(43,51,3,'Feature 4','domain-parking','<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec id elit non mi porta gravida at eget metus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(44,52,1,'Feature 5','data-sovereignty','<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Donec id elit non mi porta gravida at eget metus. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Maecenas faucibus mollis interdum. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nullam quis risus eget urna mollis ornare vel eu leo. Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>'),(45,52,2,'Feature 5','data-sovereignty','<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Donec id elit non mi porta gravida at eget metus. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Maecenas faucibus mollis interdum. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nullam quis risus eget urna mollis ornare vel eu leo. Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>'),(46,52,3,'Feature 5','data-sovereignty','<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Donec id elit non mi porta gravida at eget metus. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Maecenas faucibus mollis interdum. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nullam quis risus eget urna mollis ornare vel eu leo. Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>'),(47,53,1,'Feature 1','app-centre','<p>Sed posuere consectetur est at lobortis. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Sed posuere consectetur est at lobortis. Aenean lacinia bibendum nulla sed consectetur.</p><p>Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Cras mattis consectetur purus sit amet fermentum.</p><p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper.</p>'),(48,53,2,'Feature 1','app-centre','<p>Sed posuere consectetur est at lobortis. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Sed posuere consectetur est at lobortis. Aenean lacinia bibendum nulla sed consectetur.</p><p>Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Cras mattis consectetur purus sit amet fermentum.</p><p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper.</p>'),(49,53,3,'Feature 1','app-centre','<p>Sed posuere consectetur est at lobortis. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Sed posuere consectetur est at lobortis. Aenean lacinia bibendum nulla sed consectetur.</p><p>Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Cras mattis consectetur purus sit amet fermentum.</p><p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper.</p>'),(50,54,1,'Feature 2','app-centre','<p>Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Donec ullamcorper nulla non metus auctor fringilla. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Maecenas faucibus mollis interdum. Vestibulum id ligula porta felis euismod semper. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Cras mattis consectetur purus sit amet fermentum. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>'),(51,54,2,'Feature 2','app-centre','<p>Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Donec ullamcorper nulla non metus auctor fringilla. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Maecenas faucibus mollis interdum. Vestibulum id ligula porta felis euismod semper. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Cras mattis consectetur purus sit amet fermentum. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>'),(52,54,3,'Feature 2','app-centre','<p>Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Donec ullamcorper nulla non metus auctor fringilla. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Maecenas faucibus mollis interdum. Vestibulum id ligula porta felis euismod semper. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Donec sed odio dui. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Cras mattis consectetur purus sit amet fermentum. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper. Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</p>'),(53,55,1,'Feature 3','customisation','<p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.</p>'),(54,55,2,'Feature 3','customisation','<p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.</p>'),(55,55,3,'Feature 3','customisation','<p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur.</p>'),(56,56,1,'Feature 4','domain-parking','<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec id elit non mi porta gravida at eget metus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(57,56,2,'Feature 4','domain-parking','<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec id elit non mi porta gravida at eget metus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(58,56,3,'Feature 4','domain-parking','<p>Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec id elit non mi porta gravida at eget metus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(59,57,1,'Feature 5','data-sovereignty','<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Donec id elit non mi porta gravida at eget metus. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Maecenas faucibus mollis interdum. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nullam quis risus eget urna mollis ornare vel eu leo. Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>'),(60,57,2,'Feature 5','data-sovereignty','<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Donec id elit non mi porta gravida at eget metus. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Maecenas faucibus mollis interdum. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nullam quis risus eget urna mollis ornare vel eu leo. Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>'),(61,57,3,'Feature 5','data-sovereignty','<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Donec id elit non mi porta gravida at eget metus. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Maecenas faucibus mollis interdum. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nullam quis risus eget urna mollis ornare vel eu leo. Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.</p>'),(62,53,4,'Feature 1a','app-centre','<p>Sed posuere consectetur est at lobortis. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Sed posuere consectetur est at lobortis. Aenean lacinia bibendum nulla sed consectetur.</p><p>Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Cras mattis consectetur purus sit amet fermentum.</p><p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper.</p>'),(63,53,5,'Feature 1a','app-centre','<p>Sed posuere consectetur est at lobortis. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Sed posuere consectetur est at lobortis. Aenean lacinia bibendum nulla sed consectetur.</p><p>Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Nulla vitae elit libero, a pharetra augue. Cras mattis consectetur purus sit amet fermentum.</p><p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id ligula porta felis euismod semper.</p>');
/*!40000 ALTER TABLE `FeatureBlock_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FeaturesModule`
--

DROP TABLE IF EXISTS `FeaturesModule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FeaturesModule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FeaturesModule`
--

LOCK TABLES `FeaturesModule` WRITE;
/*!40000 ALTER TABLE `FeaturesModule` DISABLE KEYS */;
INSERT INTO `FeaturesModule` VALUES (8,'Features Module',1,'h2'),(32,'Features Module',1,'h2'),(39,'Features Module',1,'h2'),(46,'Features Module',1,'h2'),(55,'Features Module',1,'h2'),(62,'Features Module',1,'h2'),(69,'Features Module',1,'h2'),(76,'Features Module',1,'h2'),(83,'Features Module',1,'h2'),(96,'Features Module',1,'h2'),(98,'Features Module',1,'h2');
/*!40000 ALTER TABLE `FeaturesModule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FeaturesModule_Live`
--

DROP TABLE IF EXISTS `FeaturesModule_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FeaturesModule_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FeaturesModule_Live`
--

LOCK TABLES `FeaturesModule_Live` WRITE;
/*!40000 ALTER TABLE `FeaturesModule_Live` DISABLE KEYS */;
INSERT INTO `FeaturesModule_Live` VALUES (8,'Features Module',1,'h2'),(32,'Features Module',1,'h2'),(39,'Features Module',1,'h2'),(46,'Features Module',1,'h2'),(55,'Features Module',1,'h2'),(62,'Features Module',1,'h2'),(69,'Features Module',1,'h2'),(76,'Features Module',1,'h2'),(83,'Features Module',1,'h2'),(98,'Features Module',1,'h2');
/*!40000 ALTER TABLE `FeaturesModule_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FeaturesModule_versions`
--

DROP TABLE IF EXISTS `FeaturesModule_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FeaturesModule_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FeaturesModule_versions`
--

LOCK TABLES `FeaturesModule_versions` WRITE;
/*!40000 ALTER TABLE `FeaturesModule_versions` DISABLE KEYS */;
INSERT INTO `FeaturesModule_versions` VALUES (3,8,1,'Features Module',1,'h2'),(4,8,2,'Features Module',1,'h2'),(5,8,3,'Features Module',1,'h2'),(6,8,4,'Features Module',1,'h2'),(7,8,5,'Features Module',1,'h2'),(8,8,6,'Features Module',1,'h2'),(9,8,7,'Features Module',1,'h2'),(10,8,8,'Features Module',1,'h2'),(11,8,9,'Features Module',1,'h2'),(12,8,10,'Features Module',1,'h2'),(13,8,11,'Features Module',1,'h2'),(14,8,12,'Features Module',1,'h2'),(15,8,13,'Features Module',1,'h2'),(16,8,14,'Features Module',1,'h2'),(17,32,1,'Features Module',1,'h2'),(18,32,2,'Features Module',1,'h2'),(19,39,1,'Features Module',1,'h2'),(20,39,2,'Features Module',1,'h2'),(21,46,1,'Features Module',1,'h2'),(22,46,2,'Features Module',1,'h2'),(23,46,3,'Features Module',1,'h2'),(24,55,1,'Features Module',1,'h2'),(25,55,2,'Features Module',1,'h2'),(26,62,1,'Features Module',1,'h2'),(27,62,2,'Features Module',1,'h2'),(28,69,1,'Features Module',1,'h2'),(29,69,2,'Features Module',1,'h2'),(30,76,1,'Features Module',1,'h2'),(31,76,2,'Features Module',1,'h2'),(32,83,1,'Features Module',1,'h2'),(33,83,2,'Features Module',1,'h2'),(34,96,1,'Features Module',1,'h2'),(35,98,1,'Features Module',1,'h2'),(36,98,2,'Features Module',1,'h2');
/*!40000 ALTER TABLE `FeaturesModule_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `File`
--

DROP TABLE IF EXISTS `File`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `File` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('File','Folder','Image','Image_Cached') CHARACTER SET utf8 DEFAULT 'File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Filename` mediumtext CHARACTER SET utf8,
  `Content` mediumtext CHARACTER SET utf8,
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `OwnerID` (`OwnerID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `File`
--

LOCK TABLES `File` WRITE;
/*!40000 ALTER TABLE `File` DISABLE KEYS */;
INSERT INTO `File` VALUES (1,'Folder','2017-06-30 10:03:19','2017-06-30 10:03:19','Uploads','Uploads','assets/Uploads/',NULL,1,0,3),(2,'Image','2017-07-03 17:58:04','2017-06-30 10:03:19','Euramax-AluNatur-Massena-1-LR-1024x711.jpg','Euramax AluNatur Massena 1 LR 1024x711','assets/Uploads/Euramax-AluNatur-Massena-1-LR-1024x711.jpg',NULL,1,1,3),(3,'Image','2017-07-03 17:45:37','2017-07-02 14:36:21','building7.jpeg','building7','assets/Uploads/building7.jpeg',NULL,1,1,3),(4,'Image','2017-07-03 09:42:49','2017-07-03 09:42:49','Euramax-AluNatur-Massena-1-LR-1024x712.jpg','Euramax AluNatur Massena 1 LR 1024x712','assets/Uploads/Euramax-AluNatur-Massena-1-LR-1024x712.jpg',NULL,1,1,3),(5,'Folder','2017-07-03 17:45:37','2017-07-03 17:45:37','cropper-resamples','cropper-resamples','assets/Uploads/cropper-resamples/',NULL,1,1,3),(6,'Image','2017-07-03 17:57:14','2017-07-03 17:45:37','building7.jpeg','building7','assets/Uploads/cropper-resamples/building7.jpeg',NULL,1,5,3),(7,'Folder','2017-07-03 17:57:13','2017-07-03 17:57:13','cropper-resamples','cropper-resamples','assets/Uploads/cropper-resamples/cropper-resamples/',NULL,1,5,3),(8,'Image','2017-07-03 17:57:13','2017-07-03 17:57:13','building7.jpeg','building7','assets/Uploads/cropper-resamples/cropper-resamples/building7.jpeg',NULL,1,7,3),(9,'Image','2017-07-03 17:58:03','2017-07-03 17:58:03','euramax-alunatur-massena-1-lr-1024x711.jpg','euramax alunatur massena 1 lr 1024x711','assets/Uploads/cropper-resamples/euramax-alunatur-massena-1-lr-1024x711.jpg',NULL,1,5,3),(10,'Image','2017-07-05 09:55:41','2017-07-05 09:55:41','website-icon-8.png','website icon 8','assets/Uploads/website-icon-8.png',NULL,1,1,3),(11,'Image','2017-07-11 16:56:46','2017-07-05 13:26:03','pexels-photo-87223.jpeg','pexels photo 87223','assets/Uploads/pexels-photo-87223.jpeg',NULL,1,1,3),(13,'Image','2017-07-05 19:43:37','2017-07-05 19:43:37','pro-services-logo.png','pro services logo','assets/Uploads/pro-services-logo.png',NULL,1,1,3),(15,'Image','2017-07-11 15:14:30','2017-07-11 15:13:55','pexels-photo.jpg','pexels photo','assets/Uploads/pexels-photo.jpg',NULL,1,1,3),(16,'Image','2017-07-13 18:09:26','2017-07-11 15:14:29','pexels-photo.jpg','pexels photo','assets/Uploads/cropper-resamples/pexels-photo.jpg',NULL,1,5,3),(17,'Image','2017-07-11 15:18:56','2017-07-11 15:18:56','BNZ-logo.png','BNZ logo','assets/Uploads/BNZ-logo.png',NULL,1,1,3),(18,'Image','2017-07-11 15:31:15','2017-07-11 15:24:32','greyscale-BNZ.jpg','greyscale BNZ','assets/Uploads/greyscale-BNZ.jpg',NULL,1,1,3),(19,'Image','2017-07-11 15:42:48','2017-07-11 15:25:16','greyscaleFinda.jpg','greyscaleFinda','assets/Uploads/greyscaleFinda.jpg',NULL,1,1,3),(20,'Image','2017-07-11 15:31:15','2017-07-11 15:31:15','greyscale-bnz.jpg','greyscale bnz','assets/Uploads/cropper-resamples/greyscale-bnz.jpg',NULL,1,5,3),(22,'Image','2017-07-11 15:37:59','2017-07-11 15:37:59','greyscale-ACC.jpg','greyscale ACC','assets/Uploads/greyscale-ACC.jpg',NULL,1,1,3),(23,'Image','2017-07-11 15:42:12','2017-07-11 15:40:09','greyscale-ACC2.jpg','greyscale ACC2','assets/Uploads/greyscale-ACC2.jpg',NULL,1,1,3),(24,'Image','2017-07-11 15:42:12','2017-07-11 15:42:12','greyscale-acc2.jpg','greyscale acc2','assets/Uploads/cropper-resamples/greyscale-acc2.jpg',NULL,1,5,3),(25,'Image','2017-07-11 15:42:48','2017-07-11 15:42:48','greyscalefinda.jpg','greyscalefinda','assets/Uploads/cropper-resamples/greyscalefinda.jpg',NULL,1,5,3),(26,'Image','2017-07-11 15:47:05','2017-07-11 15:45:21','greyscale-Auckland-Council.jpg','greyscale Auckland Council','assets/Uploads/greyscale-Auckland-Council.jpg',NULL,1,1,3),(27,'Image','2017-07-11 15:47:05','2017-07-11 15:47:05','greyscale-auckland-council.jpg','greyscale auckland council','assets/Uploads/cropper-resamples/greyscale-auckland-council.jpg',NULL,1,5,3),(28,'Image','2017-07-11 15:49:25','2017-07-11 15:49:25','greyscale-Slingshot.jpg','greyscale Slingshot','assets/Uploads/greyscale-Slingshot.jpg',NULL,1,1,3),(29,'Image','2017-07-11 16:07:50','2017-07-11 16:06:12','pexels-photo2.jpg','pexels photo2','assets/Uploads/pexels-photo2.jpg',NULL,1,1,3),(30,'Image','2017-07-11 16:07:49','2017-07-11 16:07:49','pexels-photo2.jpg','pexels photo2','assets/Uploads/cropper-resamples/pexels-photo2.jpg',NULL,1,5,3),(32,'Image','2017-07-11 16:56:45','2017-07-11 16:56:45','pexels-photo-87223.jpeg','pexels photo 87223','assets/Uploads/cropper-resamples/pexels-photo-87223.jpeg',NULL,1,5,3),(33,'Image','2017-07-13 18:09:26','2017-07-13 18:09:26','pexels-photo.jpg','pexels photo','assets/Uploads/cropper-resamples/cropper-resamples/pexels-photo.jpg',NULL,1,7,3),(34,'Image','2017-07-18 11:16:03','2017-07-18 11:16:03','Product-VirtualMachines.jpg','Product VirtualMachines','assets/Uploads/Product-VirtualMachines.jpg',NULL,1,1,3),(35,'Image','2017-07-18 12:26:17','2017-07-18 12:25:53','pexels-photo-87224.jpeg','pexels photo 87224','assets/Uploads/pexels-photo-87224.jpeg',NULL,1,1,3),(36,'Image','2017-07-18 12:26:15','2017-07-18 12:26:15','pexels-photo-87224.jpeg','pexels photo 87224','assets/Uploads/cropper-resamples/pexels-photo-87224.jpeg',NULL,1,5,3),(37,'Image','2017-07-21 12:28:46','2017-07-21 12:28:46','blue-square.png','blue square','assets/Uploads/blue-square.png',NULL,1,1,3),(38,'Image','2017-07-21 14:24:25','2017-07-21 14:24:25','domains.png','domains','assets/Uploads/domains.png',NULL,1,1,3),(39,'Image','2017-07-21 14:24:34','2017-07-21 14:24:34','data-centres.png','data centres','assets/Uploads/data-centres.png',NULL,1,1,3),(40,'Image','2017-07-21 14:24:45','2017-07-21 14:24:45','customers.png','customers','assets/Uploads/customers.png',NULL,1,1,3);
/*!40000 ALTER TABLE `File` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FooterLink`
--

DROP TABLE IF EXISTS `FooterLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FooterLink` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('FooterLink') CHARACTER SET utf8 DEFAULT 'FooterLink',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `LinkID` int(11) NOT NULL DEFAULT '0',
  `￼FooterMenuGroupID` int(11) NOT NULL DEFAULT '0',
  `FooterMenuGroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkID` (`LinkID`),
  KEY `￼FooterMenuGroupID` (`￼FooterMenuGroupID`),
  KEY `ClassName` (`ClassName`),
  KEY `FooterMenuGroupID` (`FooterMenuGroupID`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FooterLink`
--

LOCK TABLES `FooterLink` WRITE;
/*!40000 ALTER TABLE `FooterLink` DISABLE KEYS */;
INSERT INTO `FooterLink` VALUES (1,'FooterLink','2017-08-08 19:05:51','2017-08-08 18:59:10',2,61,0,1),(2,'FooterLink','2017-08-08 19:05:51','2017-08-08 19:05:46',1,62,0,1),(65,'FooterLink',NULL,NULL,2,0,0,1),(66,'FooterLink',NULL,NULL,1,0,0,1),(68,'FooterLink',NULL,NULL,1,0,0,2);
/*!40000 ALTER TABLE `FooterLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FooterMenuGroup`
--

DROP TABLE IF EXISTS `FooterMenuGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FooterMenuGroup` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('FooterMenuGroup') CHARACTER SET utf8 DEFAULT 'FooterMenuGroup',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `HideFromMenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `LinkID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkID` (`LinkID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FooterMenuGroup`
--

LOCK TABLES `FooterMenuGroup` WRITE;
/*!40000 ALTER TABLE `FooterMenuGroup` DISABLE KEYS */;
INSERT INTO `FooterMenuGroup` VALUES (1,'FooterMenuGroup','2017-08-08 18:50:59','2017-08-08 18:47:56','Our Vision',1,0,60),(2,'FooterMenuGroup','2017-08-11 18:00:19','2017-08-11 18:00:18','Services',2,0,0);
/*!40000 ALTER TABLE `FooterMenuGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GalleryModule`
--

DROP TABLE IF EXISTS `GalleryModule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GalleryModule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GalleryModule`
--

LOCK TABLES `GalleryModule` WRITE;
/*!40000 ALTER TABLE `GalleryModule` DISABLE KEYS */;
INSERT INTO `GalleryModule` VALUES (15,'Gallery Test',1,'h2');
/*!40000 ALTER TABLE `GalleryModule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GalleryModule_Live`
--

DROP TABLE IF EXISTS `GalleryModule_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GalleryModule_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GalleryModule_Live`
--

LOCK TABLES `GalleryModule_Live` WRITE;
/*!40000 ALTER TABLE `GalleryModule_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `GalleryModule_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GalleryModule_versions`
--

DROP TABLE IF EXISTS `GalleryModule_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GalleryModule_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GalleryModule_versions`
--

LOCK TABLES `GalleryModule_versions` WRITE;
/*!40000 ALTER TABLE `GalleryModule_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `GalleryModule_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GridBlock`
--

DROP TABLE IF EXISTS `GridBlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GridBlock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Text` mediumtext CHARACTER SET utf8,
  `ImageID` int(11) NOT NULL DEFAULT '0',
  `CallToActionButtonID` int(11) NOT NULL DEFAULT '0',
  `DisplayBorderUnderImage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ImageID` (`ImageID`),
  KEY `CallToActionButtonID` (`CallToActionButtonID`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GridBlock`
--

LOCK TABLES `GridBlock` WRITE;
/*!40000 ALTER TABLE `GridBlock` DISABLE KEYS */;
INSERT INTO `GridBlock` VALUES (11,'Grid block A','<p>Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>',14,0,0,0),(12,'Grid Block B','<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam quis risus eget urna mollis ornare vel eu leo. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Maecenas sed diam eget risus varius blandit sit amet non magna. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>',0,0,0,0),(13,'Grid Block C','<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Etiam porta sem malesuada magna mollis euismod. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas sed diam eget risus varius blandit sit amet non magna. Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Etiam porta sem malesuada magna mollis euismod. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. Vestibulum id ligula porta felis euismod semper. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur. Donec ullamcorper nulla non metus auctor fringilla. Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>',0,0,0,0),(19,'Grid Block D','<p>Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas faucibus mollis interdum. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras mattis consectetur purus sit amet fermentum.</p>',11,45,0,0),(22,'Umbrellar Cloud','<p><strong>Deploy in New Zealand or deploy globally, our true cloud services... </strong></p><p>Et harum quidem rerum facilis est et expedita distinctio. Supported with 3 levels of CloudCare. Et harum quidem rerum facilis est et expedita distinctio.</p>',8,49,1,1),(23,'Managed Compute','<p><strong>Et harum quidem rerum facilis est et expedita distinctio. </strong></p><p>Nam libero tempore. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore. Et harum quidem rerum facilis est et expedita distinctio.</p>',0,50,0,0),(24,'Cloud Connect','<p><strong>Et harum quidem rerum facilis est et expedita distinctio. </strong></p><p>Nam libero tempore. Et harum quidem rerum facilis est et expedita distinctio. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore. Et harum quidem rerum facilis est et expedita distinctio.</p>',0,51,0,0),(25,'Pro Services','<p><strong>Et harum quidem rerum facilis est et expedita distinctio. </strong></p><p>Nam libero tempore. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore. Et harum quidem rerum facilis est et expedita distinctio.</p>',0,52,0,0),(31,'Compute','<p><strong>Cras justo odio, dapibus ac facilisis in, egestas eget quam. </strong></p><p>Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Donec id elit non mi porta gravida at eget metus. Nullam quis risus eget urna mollis ornare vel eu leo.</p>',11,54,0,0),(32,'Virtual Machines','<p><strong>Nullam id dolor id nibh ultricies vehicula ut id elit. </strong></p><p>Cras mattis consectetur purus sit amet fermentum. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>',16,55,0,0),(42,'Grid block A','<p>Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>',14,0,0,0),(43,'Grid Block B','<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam quis risus eget urna mollis ornare vel eu leo. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Maecenas sed diam eget risus varius blandit sit amet non magna. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>',0,0,0,0),(44,'Grid Block C','<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Etiam porta sem malesuada magna mollis euismod. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas sed diam eget risus varius blandit sit amet non magna. Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Etiam porta sem malesuada magna mollis euismod. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. Vestibulum id ligula porta felis euismod semper. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur. Donec ullamcorper nulla non metus auctor fringilla. Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>',0,0,0,0),(45,'Grid Block D','<p>Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas faucibus mollis interdum. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras mattis consectetur purus sit amet fermentum.</p>',11,45,0,0),(66,'Grid block A','<p>Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>',0,0,0,0),(67,'Grid block A','<p>Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>',0,0,0,0),(68,'Grid Block B','<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam quis risus eget urna mollis ornare vel eu leo. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Maecenas sed diam eget risus varius blandit sit amet non magna. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>',0,0,0,0),(69,'Grid Block B','<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam quis risus eget urna mollis ornare vel eu leo. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Maecenas sed diam eget risus varius blandit sit amet non magna. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>',0,0,0,0),(70,'Grid Block C','<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Etiam porta sem malesuada magna mollis euismod. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas sed diam eget risus varius blandit sit amet non magna. Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Etiam porta sem malesuada magna mollis euismod. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. Vestibulum id ligula porta felis euismod semper. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur. Donec ullamcorper nulla non metus auctor fringilla. Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>',0,0,0,0),(71,'Grid Block C','<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Etiam porta sem malesuada magna mollis euismod. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas sed diam eget risus varius blandit sit amet non magna. Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Etiam porta sem malesuada magna mollis euismod. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. Vestibulum id ligula porta felis euismod semper. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur. Donec ullamcorper nulla non metus auctor fringilla. Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>',0,0,0,0),(72,'Grid Block D','<p>Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas faucibus mollis interdum. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras mattis consectetur purus sit amet fermentum.</p>',11,45,0,0),(73,'Grid Block D','<p>Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas faucibus mollis interdum. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras mattis consectetur purus sit amet fermentum.</p>',11,45,0,0);
/*!40000 ALTER TABLE `GridBlock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GridBlock_Live`
--

DROP TABLE IF EXISTS `GridBlock_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GridBlock_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Text` mediumtext CHARACTER SET utf8,
  `ImageID` int(11) NOT NULL DEFAULT '0',
  `CallToActionButtonID` int(11) NOT NULL DEFAULT '0',
  `DisplayBorderUnderImage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ImageID` (`ImageID`),
  KEY `CallToActionButtonID` (`CallToActionButtonID`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GridBlock_Live`
--

LOCK TABLES `GridBlock_Live` WRITE;
/*!40000 ALTER TABLE `GridBlock_Live` DISABLE KEYS */;
INSERT INTO `GridBlock_Live` VALUES (11,'Grid block A','<p>Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>',14,0,0,0),(12,'Grid Block B','<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam quis risus eget urna mollis ornare vel eu leo. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Maecenas sed diam eget risus varius blandit sit amet non magna. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>',0,0,0,0),(13,'Grid Block C','<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Etiam porta sem malesuada magna mollis euismod. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas sed diam eget risus varius blandit sit amet non magna. Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Etiam porta sem malesuada magna mollis euismod. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. Vestibulum id ligula porta felis euismod semper. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur. Donec ullamcorper nulla non metus auctor fringilla. Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>',0,0,0,0),(19,'Grid Block D','<p>Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas faucibus mollis interdum. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras mattis consectetur purus sit amet fermentum.</p>',11,45,0,0),(22,'Umbrellar Cloud','<p><strong>Deploy in New Zealand or deploy globally, our true cloud services... </strong></p><p>Et harum quidem rerum facilis est et expedita distinctio. Supported with 3 levels of CloudCare. Et harum quidem rerum facilis est et expedita distinctio.</p>',8,49,1,1),(23,'Managed Compute','<p><strong>Et harum quidem rerum facilis est et expedita distinctio. </strong></p><p>Nam libero tempore. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore. Et harum quidem rerum facilis est et expedita distinctio.</p>',0,50,0,0),(24,'Cloud Connect','<p><strong>Et harum quidem rerum facilis est et expedita distinctio. </strong></p><p>Nam libero tempore. Et harum quidem rerum facilis est et expedita distinctio. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore. Et harum quidem rerum facilis est et expedita distinctio.</p>',0,51,0,0),(25,'Pro Services','<p><strong>Et harum quidem rerum facilis est et expedita distinctio. </strong></p><p>Nam libero tempore. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore. Et harum quidem rerum facilis est et expedita distinctio.</p>',0,52,0,0),(31,'Compute','<p><strong>Cras justo odio, dapibus ac facilisis in, egestas eget quam. </strong></p><p>Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Donec id elit non mi porta gravida at eget metus. Nullam quis risus eget urna mollis ornare vel eu leo.</p>',11,54,0,0),(32,'Virtual Machines','<p><strong>Nullam id dolor id nibh ultricies vehicula ut id elit. </strong></p><p>Cras mattis consectetur purus sit amet fermentum. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>',16,55,0,0),(42,'Grid block A','<p>Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>',0,0,0,0),(43,'Grid Block B','<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam quis risus eget urna mollis ornare vel eu leo. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Maecenas sed diam eget risus varius blandit sit amet non magna. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>',0,0,0,0),(44,'Grid Block C','<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Etiam porta sem malesuada magna mollis euismod. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas sed diam eget risus varius blandit sit amet non magna. Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Etiam porta sem malesuada magna mollis euismod. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. Vestibulum id ligula porta felis euismod semper. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur. Donec ullamcorper nulla non metus auctor fringilla. Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>',0,0,0,0),(45,'Grid Block D','<p>Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas faucibus mollis interdum. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras mattis consectetur purus sit amet fermentum.</p>',11,45,0,0),(66,'Grid block A','<p>Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>',0,0,0,0),(67,'Grid block A','<p>Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>',0,0,0,0),(68,'Grid Block B','<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam quis risus eget urna mollis ornare vel eu leo. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Maecenas sed diam eget risus varius blandit sit amet non magna. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>',0,0,0,0),(69,'Grid Block B','<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam quis risus eget urna mollis ornare vel eu leo. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Maecenas sed diam eget risus varius blandit sit amet non magna. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>',0,0,0,0),(70,'Grid Block C','<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Etiam porta sem malesuada magna mollis euismod. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas sed diam eget risus varius blandit sit amet non magna. Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Etiam porta sem malesuada magna mollis euismod. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. Vestibulum id ligula porta felis euismod semper. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur. Donec ullamcorper nulla non metus auctor fringilla. Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>',0,0,0,0),(71,'Grid Block C','<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Etiam porta sem malesuada magna mollis euismod. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas sed diam eget risus varius blandit sit amet non magna. Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Etiam porta sem malesuada magna mollis euismod. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. Vestibulum id ligula porta felis euismod semper. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur. Donec ullamcorper nulla non metus auctor fringilla. Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>',0,0,0,0),(72,'Grid Block D','<p>Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas faucibus mollis interdum. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras mattis consectetur purus sit amet fermentum.</p>',11,45,0,0),(73,'Grid Block D','<p>Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas faucibus mollis interdum. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras mattis consectetur purus sit amet fermentum.</p>',11,45,0,0);
/*!40000 ALTER TABLE `GridBlock_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GridBlock_versions`
--

DROP TABLE IF EXISTS `GridBlock_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GridBlock_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Text` mediumtext CHARACTER SET utf8,
  `ImageID` int(11) NOT NULL DEFAULT '0',
  `CallToActionButtonID` int(11) NOT NULL DEFAULT '0',
  `DisplayBorderUnderImage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HideTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `ImageID` (`ImageID`),
  KEY `CallToActionButtonID` (`CallToActionButtonID`)
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GridBlock_versions`
--

LOCK TABLES `GridBlock_versions` WRITE;
/*!40000 ALTER TABLE `GridBlock_versions` DISABLE KEYS */;
INSERT INTO `GridBlock_versions` VALUES (1,11,1,'Grid block A','<p>Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>',0,0,0,0),(2,11,2,'Grid block A','<p>Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>',0,0,0,0),(3,11,3,'Grid block A','<p>Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>',0,0,0,0),(4,11,4,'Grid block A','<p>Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>',0,0,0,0),(5,11,5,'Grid block A','<p>Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>',0,0,0,0),(6,11,6,'Grid block A','<p>Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>',0,0,0,0),(7,11,7,'Grid block A','<p>Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>',0,0,0,0),(8,11,8,'Grid block A','<p>Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>',0,0,0,0),(9,11,9,'Grid block A','<p>Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>',0,0,0,0),(10,11,10,'Grid block A','<p>Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>',0,0,0,0),(11,12,1,'Grid Module B','<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam quis risus eget urna mollis ornare vel eu leo. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Maecenas sed diam eget risus varius blandit sit amet non magna. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>',0,0,0,0),(12,12,2,'Grid Module B','<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam quis risus eget urna mollis ornare vel eu leo. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Maecenas sed diam eget risus varius blandit sit amet non magna. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>',0,0,0,0),(13,12,3,'Grid Module B','<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam quis risus eget urna mollis ornare vel eu leo. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Maecenas sed diam eget risus varius blandit sit amet non magna. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>',0,0,0,0),(14,13,1,'Grid Block C','<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Etiam porta sem malesuada magna mollis euismod. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas sed diam eget risus varius blandit sit amet non magna. Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Etiam porta sem malesuada magna mollis euismod. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. Vestibulum id ligula porta felis euismod semper. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur. Donec ullamcorper nulla non metus auctor fringilla. Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>',0,0,0,0),(15,13,2,'Grid Block C','<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Etiam porta sem malesuada magna mollis euismod. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas sed diam eget risus varius blandit sit amet non magna. Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Etiam porta sem malesuada magna mollis euismod. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. Vestibulum id ligula porta felis euismod semper. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur. Donec ullamcorper nulla non metus auctor fringilla. Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>',0,0,0,0),(16,13,3,'Grid Block C','<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Etiam porta sem malesuada magna mollis euismod. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas sed diam eget risus varius blandit sit amet non magna. Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Etiam porta sem malesuada magna mollis euismod. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. Vestibulum id ligula porta felis euismod semper. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur. Donec ullamcorper nulla non metus auctor fringilla. Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>',0,0,0,0),(17,12,4,'Grid Block B','<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam quis risus eget urna mollis ornare vel eu leo. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Maecenas sed diam eget risus varius blandit sit amet non magna. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>',0,0,0,0),(18,12,5,'Grid Block B','<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam quis risus eget urna mollis ornare vel eu leo. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Maecenas sed diam eget risus varius blandit sit amet non magna. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>',0,0,0,0),(19,11,11,'Grid block A','<p>Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>',14,0,0,0),(20,11,12,'Grid block A','<p>Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>',14,0,0,0),(21,19,1,'Grid Block D','<p>Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas faucibus mollis interdum. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras mattis consectetur purus sit amet fermentum.</p>',11,45,0,0),(22,22,1,'Umbrellar Cloud','<p><strong>Deploy in New Zealand or deploy globally, our true cloud services... </strong></p><p>Et harum quidem rerum facilis est et expedita distinctio. Supported with 3 levels of CloudCare. Et harum quidem rerum facilis est et expedita distinctio.</p>',0,49,0,0),(23,22,2,'Umbrellar Cloud','<p><strong>Deploy in New Zealand or deploy globally, our true cloud services... </strong></p><p>Et harum quidem rerum facilis est et expedita distinctio. Supported with 3 levels of CloudCare. Et harum quidem rerum facilis est et expedita distinctio.</p>',0,49,0,0),(24,22,3,'Umbrellar Cloud','<p><strong>Deploy in New Zealand or deploy globally, our true cloud services... </strong></p><p>Et harum quidem rerum facilis est et expedita distinctio. Supported with 3 levels of CloudCare. Et harum quidem rerum facilis est et expedita distinctio.</p>',0,49,0,0),(25,23,1,'Managed Compute','<p><strong>Et harum quidem rerum facilis est et expedita distinctio. </strong></p><p>Nam libero tempore. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore. Et harum quidem rerum facilis est et expedita distinctio.</p>',0,50,0,0),(26,24,1,'Cloud Connect','<p><strong>Et harum quidem rerum facilis est et expedita distinctio. </strong></p><p>Nam libero tempore. Et harum quidem rerum facilis est et expedita distinctio. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore. Et harum quidem rerum facilis est et expedita distinctio.</p>',0,51,0,0),(27,25,1,'Pro Services','<p><strong>Et harum quidem rerum facilis est et expedita distinctio. </strong></p><p>Nam libero tempore. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore. Et harum quidem rerum facilis est et expedita distinctio.</p>',0,52,0,0),(28,31,1,'Compute','<p><strong>Cras justo odio, dapibus ac facilisis in, egestas eget quam. </strong></p><p>Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Donec id elit non mi porta gravida at eget metus. Nullam quis risus eget urna mollis ornare vel eu leo.</p>',11,54,0,0),(29,31,2,'Compute','<p><strong>Cras justo odio, dapibus ac facilisis in, egestas eget quam. </strong></p><p>Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Donec id elit non mi porta gravida at eget metus. Nullam quis risus eget urna mollis ornare vel eu leo.</p>',11,54,0,0),(30,31,3,'Compute','<p><strong>Cras justo odio, dapibus ac facilisis in, egestas eget quam. </strong></p><p>Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Donec id elit non mi porta gravida at eget metus. Nullam quis risus eget urna mollis ornare vel eu leo.</p>',11,54,0,0),(31,32,1,'Virtual Machines','<p><strong>Nullam id dolor id nibh ultricies vehicula ut id elit. </strong></p><p>Cras mattis consectetur purus sit amet fermentum. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>',16,55,0,0),(32,32,2,'Virtual Machines','<p><strong>Nullam id dolor id nibh ultricies vehicula ut id elit. </strong></p><p>Cras mattis consectetur purus sit amet fermentum. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>',16,55,0,0),(33,32,3,'Virtual Machines','<p><strong>Nullam id dolor id nibh ultricies vehicula ut id elit. </strong></p><p>Cras mattis consectetur purus sit amet fermentum. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>',16,55,0,0),(34,32,4,'Virtual Machines','<p><strong>Nullam id dolor id nibh ultricies vehicula ut id elit. </strong></p><p>Cras mattis consectetur purus sit amet fermentum. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>',16,55,0,0),(35,32,5,'Virtual Machines','<p><strong>Nullam id dolor id nibh ultricies vehicula ut id elit. </strong></p><p>Cras mattis consectetur purus sit amet fermentum. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>',16,55,0,0),(36,22,4,'Umbrellar Cloud','<p><strong>Deploy in New Zealand or deploy globally, our true cloud services... </strong></p><p>Et harum quidem rerum facilis est et expedita distinctio. Supported with 3 levels of CloudCare. Et harum quidem rerum facilis est et expedita distinctio.</p>',37,49,0,0),(37,22,5,'Umbrellar Cloud','<p><strong>Deploy in New Zealand or deploy globally, our true cloud services... </strong></p><p>Et harum quidem rerum facilis est et expedita distinctio. Supported with 3 levels of CloudCare. Et harum quidem rerum facilis est et expedita distinctio.</p>',37,49,0,0),(38,22,6,'Umbrellar Cloud','<p><strong>Deploy in New Zealand or deploy globally, our true cloud services... </strong></p><p>Et harum quidem rerum facilis est et expedita distinctio. Supported with 3 levels of CloudCare. Et harum quidem rerum facilis est et expedita distinctio.</p>',37,49,0,1),(39,22,7,'Umbrellar Cloud','<p><strong>Deploy in New Zealand or deploy globally, our true cloud services... </strong></p><p>Et harum quidem rerum facilis est et expedita distinctio. Supported with 3 levels of CloudCare. Et harum quidem rerum facilis est et expedita distinctio.</p>',37,49,0,1),(40,22,8,'Umbrellar Cloud','<p><strong>Deploy in New Zealand or deploy globally, our true cloud services... </strong></p><p>Et harum quidem rerum facilis est et expedita distinctio. Supported with 3 levels of CloudCare. Et harum quidem rerum facilis est et expedita distinctio.</p>',37,49,1,1),(41,22,9,'Umbrellar Cloud','<p><strong>Deploy in New Zealand or deploy globally, our true cloud services... </strong></p><p>Et harum quidem rerum facilis est et expedita distinctio. Supported with 3 levels of CloudCare. Et harum quidem rerum facilis est et expedita distinctio.</p>',37,49,1,1),(42,22,10,'Umbrellar Cloud','<p><strong>Deploy in New Zealand or deploy globally, our true cloud services... </strong></p><p>Et harum quidem rerum facilis est et expedita distinctio. Supported with 3 levels of CloudCare. Et harum quidem rerum facilis est et expedita distinctio.</p>',37,49,0,1),(43,22,11,'Umbrellar Cloud','<p><strong>Deploy in New Zealand or deploy globally, our true cloud services... </strong></p><p>Et harum quidem rerum facilis est et expedita distinctio. Supported with 3 levels of CloudCare. Et harum quidem rerum facilis est et expedita distinctio.</p>',37,49,0,1),(44,22,12,'Umbrellar Cloud','<p><strong>Deploy in New Zealand or deploy globally, our true cloud services... </strong></p><p>Et harum quidem rerum facilis est et expedita distinctio. Supported with 3 levels of CloudCare. Et harum quidem rerum facilis est et expedita distinctio.</p>',8,49,0,1),(45,22,13,'Umbrellar Cloud','<p><strong>Deploy in New Zealand or deploy globally, our true cloud services... </strong></p><p>Et harum quidem rerum facilis est et expedita distinctio. Supported with 3 levels of CloudCare. Et harum quidem rerum facilis est et expedita distinctio.</p>',8,49,0,1),(46,22,14,'Umbrellar Cloud','<p><strong>Deploy in New Zealand or deploy globally, our true cloud services... </strong></p><p>Et harum quidem rerum facilis est et expedita distinctio. Supported with 3 levels of CloudCare. Et harum quidem rerum facilis est et expedita distinctio.</p>',8,49,1,1),(47,22,15,'Umbrellar Cloud','<p><strong>Deploy in New Zealand or deploy globally, our true cloud services... </strong></p><p>Et harum quidem rerum facilis est et expedita distinctio. Supported with 3 levels of CloudCare. Et harum quidem rerum facilis est et expedita distinctio.</p>',8,49,1,1),(48,42,1,'Grid block A','<p>Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>',14,0,0,0),(49,42,2,'Grid block A','<p>Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>',0,0,0,0),(50,43,1,'Grid Block B','<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam quis risus eget urna mollis ornare vel eu leo. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Maecenas sed diam eget risus varius blandit sit amet non magna. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>',0,0,0,0),(51,43,2,'Grid Block B','<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam quis risus eget urna mollis ornare vel eu leo. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Maecenas sed diam eget risus varius blandit sit amet non magna. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>',0,0,0,0),(52,44,1,'Grid Block C','<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Etiam porta sem malesuada magna mollis euismod. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas sed diam eget risus varius blandit sit amet non magna. Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Etiam porta sem malesuada magna mollis euismod. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. Vestibulum id ligula porta felis euismod semper. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur. Donec ullamcorper nulla non metus auctor fringilla. Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>',0,0,0,0),(53,44,2,'Grid Block C','<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Etiam porta sem malesuada magna mollis euismod. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas sed diam eget risus varius blandit sit amet non magna. Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Etiam porta sem malesuada magna mollis euismod. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. Vestibulum id ligula porta felis euismod semper. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur. Donec ullamcorper nulla non metus auctor fringilla. Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>',0,0,0,0),(54,45,1,'Grid Block D','<p>Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas faucibus mollis interdum. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras mattis consectetur purus sit amet fermentum.</p>',11,45,0,0),(55,45,2,'Grid Block D','<p>Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas faucibus mollis interdum. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras mattis consectetur purus sit amet fermentum.</p>',11,45,0,0),(56,66,1,'Grid block A','<p>Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>',14,0,0,0),(57,66,2,'Grid block A','<p>Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>',0,0,0,0),(58,66,3,'Grid block A','<p>Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>',0,0,0,0),(59,67,1,'Grid block A','<p>Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>',14,0,0,0),(60,67,2,'Grid block A','<p>Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>',0,0,0,0),(61,67,3,'Grid block A','<p>Curabitur blandit tempus porttitor. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>',0,0,0,0),(62,68,1,'Grid Block B','<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam quis risus eget urna mollis ornare vel eu leo. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Maecenas sed diam eget risus varius blandit sit amet non magna. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>',0,0,0,0),(63,68,2,'Grid Block B','<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam quis risus eget urna mollis ornare vel eu leo. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Maecenas sed diam eget risus varius blandit sit amet non magna. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>',0,0,0,0),(64,68,3,'Grid Block B','<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam quis risus eget urna mollis ornare vel eu leo. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Maecenas sed diam eget risus varius blandit sit amet non magna. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>',0,0,0,0),(65,69,1,'Grid Block B','<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam quis risus eget urna mollis ornare vel eu leo. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Maecenas sed diam eget risus varius blandit sit amet non magna. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>',0,0,0,0),(66,69,2,'Grid Block B','<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam quis risus eget urna mollis ornare vel eu leo. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Maecenas sed diam eget risus varius blandit sit amet non magna. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>',0,0,0,0),(67,69,3,'Grid Block B','<p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nullam quis risus eget urna mollis ornare vel eu leo. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Maecenas sed diam eget risus varius blandit sit amet non magna. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>',0,0,0,0),(68,70,1,'Grid Block C','<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Etiam porta sem malesuada magna mollis euismod. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas sed diam eget risus varius blandit sit amet non magna. Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Etiam porta sem malesuada magna mollis euismod. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. Vestibulum id ligula porta felis euismod semper. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur. Donec ullamcorper nulla non metus auctor fringilla. Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>',0,0,0,0),(69,70,2,'Grid Block C','<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Etiam porta sem malesuada magna mollis euismod. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas sed diam eget risus varius blandit sit amet non magna. Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Etiam porta sem malesuada magna mollis euismod. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. Vestibulum id ligula porta felis euismod semper. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur. Donec ullamcorper nulla non metus auctor fringilla. Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>',0,0,0,0),(70,70,3,'Grid Block C','<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Etiam porta sem malesuada magna mollis euismod. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas sed diam eget risus varius blandit sit amet non magna. Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Etiam porta sem malesuada magna mollis euismod. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. Vestibulum id ligula porta felis euismod semper. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur. Donec ullamcorper nulla non metus auctor fringilla. Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>',0,0,0,0),(71,71,1,'Grid Block C','<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Etiam porta sem malesuada magna mollis euismod. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas sed diam eget risus varius blandit sit amet non magna. Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Etiam porta sem malesuada magna mollis euismod. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. Vestibulum id ligula porta felis euismod semper. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur. Donec ullamcorper nulla non metus auctor fringilla. Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>',0,0,0,0),(72,71,2,'Grid Block C','<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Etiam porta sem malesuada magna mollis euismod. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas sed diam eget risus varius blandit sit amet non magna. Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Etiam porta sem malesuada magna mollis euismod. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. Vestibulum id ligula porta felis euismod semper. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur. Donec ullamcorper nulla non metus auctor fringilla. Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>',0,0,0,0),(73,71,3,'Grid Block C','<p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Etiam porta sem malesuada magna mollis euismod. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas sed diam eget risus varius blandit sit amet non magna. Donec sed odio dui. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Etiam porta sem malesuada magna mollis euismod. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. Vestibulum id ligula porta felis euismod semper. Donec id elit non mi porta gravida at eget metus. Nulla vitae elit libero, a pharetra augue. Aenean lacinia bibendum nulla sed consectetur. Donec ullamcorper nulla non metus auctor fringilla. Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam id dolor id nibh ultricies vehicula ut id elit. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>',0,0,0,0),(74,72,1,'Grid Block D','<p>Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas faucibus mollis interdum. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras mattis consectetur purus sit amet fermentum.</p>',11,45,0,0),(75,72,2,'Grid Block D','<p>Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas faucibus mollis interdum. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras mattis consectetur purus sit amet fermentum.</p>',11,45,0,0),(76,72,3,'Grid Block D','<p>Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas faucibus mollis interdum. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras mattis consectetur purus sit amet fermentum.</p>',11,45,0,0),(77,73,1,'Grid Block D','<p>Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas faucibus mollis interdum. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras mattis consectetur purus sit amet fermentum.</p>',11,45,0,0),(78,73,2,'Grid Block D','<p>Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas faucibus mollis interdum. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras mattis consectetur purus sit amet fermentum.</p>',11,45,0,0),(79,73,3,'Grid Block D','<p>Nullam quis risus eget urna mollis ornare vel eu leo. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Maecenas faucibus mollis interdum. Nullam id dolor id nibh ultricies vehicula ut id elit. Cras mattis consectetur purus sit amet fermentum.</p>',11,45,0,0);
/*!40000 ALTER TABLE `GridBlock_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GridModule`
--

DROP TABLE IF EXISTS `GridModule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GridModule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GridLayout` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GridModule`
--

LOCK TABLES `GridModule` WRITE;
/*!40000 ALTER TABLE `GridModule` DISABLE KEYS */;
INSERT INTO `GridModule` VALUES (10,'2,2','Grid Module 1',1,'h2'),(16,NULL,'Umbrellar services',1,'h2'),(23,NULL,'Explore our Cloud Services',1,'h2'),(24,NULL,'Explore our Compute Services',1,'h2'),(35,'2,2','Grid Module 1',1,'h2'),(42,'2,2','Grid Module 1',1,'h2'),(49,'2,2','Grid Module 1',1,'h2'),(58,'2,2','Grid Module 1',1,'h2'),(65,'2,2','Grid Module 1',1,'h2'),(72,'2,2','Grid Module 1',1,'h2'),(79,'2,2','Grid Module 1',1,'h2'),(86,'2,2','Grid Module 1',1,'h2'),(101,'2,2','Grid Module 1',1,'h2');
/*!40000 ALTER TABLE `GridModule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GridModule_Live`
--

DROP TABLE IF EXISTS `GridModule_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GridModule_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GridLayout` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GridModule_Live`
--

LOCK TABLES `GridModule_Live` WRITE;
/*!40000 ALTER TABLE `GridModule_Live` DISABLE KEYS */;
INSERT INTO `GridModule_Live` VALUES (10,'2,2','Grid Module 1',1,'h2'),(16,NULL,'Umbrellar services',1,'h2'),(23,NULL,'Explore our Cloud Services',1,'h2'),(24,NULL,'Explore our Compute Services',1,'h2'),(35,'2,2','Grid Module 1',1,'h2'),(42,'2,2','Grid Module 1',1,'h2'),(49,'2,2','Grid Module 1',1,'h2'),(58,'2,2','Grid Module 1',1,'h2'),(65,'2,2','Grid Module 1',1,'h2'),(72,'2,2','Grid Module 1',1,'h2'),(79,'2,2','Grid Module 1',1,'h2'),(86,'2,2','Grid Module 1',1,'h2'),(101,'2,2','Grid Module 1',1,'h2');
/*!40000 ALTER TABLE `GridModule_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GridModule_versions`
--

DROP TABLE IF EXISTS `GridModule_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GridModule_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `GridLayout` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GridModule_versions`
--

LOCK TABLES `GridModule_versions` WRITE;
/*!40000 ALTER TABLE `GridModule_versions` DISABLE KEYS */;
INSERT INTO `GridModule_versions` VALUES (1,10,1,NULL,'Grid Module 1',1,'h2'),(2,10,2,NULL,'Grid Module 1',1,'h2'),(3,10,3,NULL,'Grid Module 1',1,'h2'),(4,10,4,NULL,'Grid Module 1',1,'h2'),(5,10,5,NULL,'Grid Module 1',1,'h2'),(6,10,6,NULL,'Grid Module 1',1,'h2'),(7,10,7,NULL,'Grid Module 1',1,'h2'),(8,10,8,NULL,'Grid Module 1',0,'h2'),(9,10,9,NULL,'Grid Module 1',0,'h2'),(10,10,10,'3,1','Grid Module 1',0,'h2'),(11,10,11,'3,1','Grid Module 1',0,'h2'),(12,10,12,'3,1','Grid Module 1',1,'h2'),(13,10,13,'3,1','Grid Module 1',1,'h2'),(14,10,14,'1,2,1','Grid Module 1',1,'h2'),(15,10,15,'1,2,1','Grid Module 1',1,'h2'),(16,10,16,'2,2','Grid Module 1',1,'h2'),(17,10,17,'2,2','Grid Module 1',1,'h2'),(18,16,1,NULL,'Umbrellar services',0,'h2'),(19,16,2,NULL,'Umbrellar services',1,'h2'),(20,16,3,NULL,'Umbrellar services',1,'h2'),(21,16,4,NULL,'Umbrellar services',1,'h2'),(22,10,18,'3,1','Grid Module 1',1,'h2'),(23,10,19,'3,1','Grid Module 1',1,'h2'),(24,10,20,'2,2','Grid Module 1',1,'h2'),(25,10,21,'2,2','Grid Module 1',1,'h2'),(26,23,1,NULL,'Compute',1,'h3'),(27,23,2,NULL,'Explore our Cloud Services',1,'h2'),(28,23,3,NULL,'Explore our Cloud Services',1,'h2'),(29,23,4,NULL,'Explore our Cloud Services',1,'h2'),(30,23,5,NULL,'Explore our Cloud Services',1,'h2'),(31,24,1,NULL,'Explore our Compute Services',1,'h2'),(32,24,2,NULL,'Explore our Compute Services',1,'h2'),(33,24,3,NULL,'Explore our Compute Services',1,'h2'),(34,35,1,'2,2','Grid Module 1',1,'h2'),(35,35,2,'2,2','Grid Module 1',1,'h2'),(36,42,1,'2,2','Grid Module 1',1,'h2'),(37,42,2,'2,2','Grid Module 1',1,'h2'),(38,49,1,'2,2','Grid Module 1',1,'h2'),(39,49,2,'2,2','Grid Module 1',1,'h2'),(40,49,3,'2,2','Grid Module 1',1,'h2'),(41,58,1,'2,2','Grid Module 1',1,'h2'),(42,58,2,'2,2','Grid Module 1',1,'h2'),(43,65,1,'2,2','Grid Module 1',1,'h2'),(44,65,2,'2,2','Grid Module 1',1,'h2'),(45,72,1,'2,2','Grid Module 1',1,'h2'),(46,72,2,'2,2','Grid Module 1',1,'h2'),(47,79,1,'2,2','Grid Module 1',1,'h2'),(48,79,2,'2,2','Grid Module 1',1,'h2'),(49,86,1,'2,2','Grid Module 1',1,'h2'),(50,86,2,'2,2','Grid Module 1',1,'h2'),(51,101,1,'2,2','Grid Module 1',1,'h2'),(52,101,2,'2,2','Grid Module 1',1,'h2');
/*!40000 ALTER TABLE `GridModule_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group`
--

DROP TABLE IF EXISTS `Group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Group') CHARACTER SET utf8 DEFAULT 'Group',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` mediumtext CHARACTER SET utf8,
  `Code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HtmlEditorConfig` mediumtext CHARACTER SET utf8,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Group`
--

LOCK TABLES `Group` WRITE;
/*!40000 ALTER TABLE `Group` DISABLE KEYS */;
INSERT INTO `Group` VALUES (5,'Group','2017-06-29 21:32:28','2017-06-29 21:32:28','Content Authors',NULL,'content-authors',0,1,NULL,0),(6,'Group','2017-06-29 21:32:28','2017-06-29 21:32:28','Administrators',NULL,'administrators',0,0,NULL,0);
/*!40000 ALTER TABLE `Group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GroupLink`
--

DROP TABLE IF EXISTS `GroupLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GroupLink` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GroupLink`
--

LOCK TABLES `GroupLink` WRITE;
/*!40000 ALTER TABLE `GroupLink` DISABLE KEYS */;
INSERT INTO `GroupLink` VALUES (10,2,1),(12,0,2),(13,0,1),(15,5,1),(16,6,1),(17,6,2),(18,6,3),(19,6,4),(21,7,1),(22,7,2),(23,7,3),(24,7,4),(25,7,5),(26,7,6),(27,8,1),(28,9,1),(29,9,2),(30,9,3),(31,9,4),(32,10,1),(33,10,2),(34,11,1),(36,12,1),(40,13,1),(41,13,2),(42,13,3),(43,13,4);
/*!40000 ALTER TABLE `GroupLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group_Members`
--

DROP TABLE IF EXISTS `Group_Members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Group_Members` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `MemberID` (`MemberID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Group_Members`
--

LOCK TABLES `Group_Members` WRITE;
/*!40000 ALTER TABLE `Group_Members` DISABLE KEYS */;
INSERT INTO `Group_Members` VALUES (3,6,3);
/*!40000 ALTER TABLE `Group_Members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group_Roles`
--

DROP TABLE IF EXISTS `Group_Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Group_Roles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `PermissionRoleID` (`PermissionRoleID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Group_Roles`
--

LOCK TABLES `Group_Roles` WRITE;
/*!40000 ALTER TABLE `Group_Roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `Group_Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GuidanceModule`
--

DROP TABLE IF EXISTS `GuidanceModule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GuidanceModule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `parallax` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `GuidanceBackgroundID` int(11) NOT NULL DEFAULT '0',
  `Alignment` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Header` mediumtext CHARACTER SET utf8,
  `Content` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`),
  KEY `GuidanceBackgroundID` (`GuidanceBackgroundID`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GuidanceModule`
--

LOCK TABLES `GuidanceModule` WRITE;
/*!40000 ALTER TABLE `GuidanceModule` DISABLE KEYS */;
INSERT INTO `GuidanceModule` VALUES (9,1,11,'centre-aligned','Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(17,1,15,NULL,'At Umbrellar we take your data seriously. We understand that the platform for your website or app is mission critical.','<p>Whether you are looking for a simple hosting package or an architected cloud server our hosting solutions are designed to scale as you grow. Our team of engineers and service desk are on hand 24/7, making sure your website or app is up and running smoothly and guiding you with expert advice when you need it. </p>'),(30,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(31,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(38,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(45,1,11,NULL,'XX','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(52,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(53,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(54,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(61,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(68,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(75,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(82,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(89,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(90,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(91,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(92,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(93,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(94,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(95,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(97,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>');
/*!40000 ALTER TABLE `GuidanceModule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GuidanceModule_Live`
--

DROP TABLE IF EXISTS `GuidanceModule_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GuidanceModule_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `parallax` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `GuidanceBackgroundID` int(11) NOT NULL DEFAULT '0',
  `Alignment` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Header` mediumtext CHARACTER SET utf8,
  `Content` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`),
  KEY `GuidanceBackgroundID` (`GuidanceBackgroundID`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GuidanceModule_Live`
--

LOCK TABLES `GuidanceModule_Live` WRITE;
/*!40000 ALTER TABLE `GuidanceModule_Live` DISABLE KEYS */;
INSERT INTO `GuidanceModule_Live` VALUES (9,1,11,'centre-aligned','Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(17,1,15,NULL,'At Umbrellar we take your data seriously. We understand that the platform for your website or app is mission critical.','<p>Whether you are looking for a simple hosting package or an architected cloud server our hosting solutions are designed to scale as you grow. Our team of engineers and service desk are on hand 24/7, making sure your website or app is up and running smoothly and guiding you with expert advice when you need it. </p>'),(31,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(38,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(45,1,11,NULL,'XX','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(54,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(61,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(68,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(75,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(82,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(95,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(97,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>');
/*!40000 ALTER TABLE `GuidanceModule_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `GuidanceModule_versions`
--

DROP TABLE IF EXISTS `GuidanceModule_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GuidanceModule_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `parallax` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `GuidanceBackgroundID` int(11) NOT NULL DEFAULT '0',
  `Alignment` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Header` mediumtext CHARACTER SET utf8,
  `Content` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `GuidanceBackgroundID` (`GuidanceBackgroundID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GuidanceModule_versions`
--

LOCK TABLES `GuidanceModule_versions` WRITE;
/*!40000 ALTER TABLE `GuidanceModule_versions` DISABLE KEYS */;
INSERT INTO `GuidanceModule_versions` VALUES (4,9,1,0,0,NULL,NULL,NULL),(5,9,2,0,0,'centre-aligned',NULL,NULL),(6,9,3,0,0,'centre-aligned',NULL,NULL),(7,9,4,1,0,'centre-aligned',NULL,NULL),(8,9,5,1,0,'centre-aligned',NULL,NULL),(9,9,6,1,11,'centre-aligned',NULL,NULL),(10,9,7,1,11,'centre-aligned',NULL,NULL),(11,9,8,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(12,9,9,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(13,9,10,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(14,17,1,0,0,NULL,'At Umbrellar we take your data seriously. We understand that the platform for your website or app is mission critical.','<p>Whether you are looking for a simple hosting package or an architected cloud server our hosting solutions are designed to scale as you grow. Our team of engineers and service desk are on hand 24/7, making sure your website or app is up and running smoothly and guiding you with expert advice when you need it. </p>'),(15,17,2,0,15,NULL,'At Umbrellar we take your data seriously. We understand that the platform for your website or app is mission critical.','<p>Whether you are looking for a simple hosting package or an architected cloud server our hosting solutions are designed to scale as you grow. Our team of engineers and service desk are on hand 24/7, making sure your website or app is up and running smoothly and guiding you with expert advice when you need it. </p>'),(16,17,3,0,15,NULL,'At Umbrellar we take your data seriously. We understand that the platform for your website or app is mission critical.','<p>Whether you are looking for a simple hosting package or an architected cloud server our hosting solutions are designed to scale as you grow. Our team of engineers and service desk are on hand 24/7, making sure your website or app is up and running smoothly and guiding you with expert advice when you need it. </p>'),(17,17,4,1,15,NULL,'At Umbrellar we take your data seriously. We understand that the platform for your website or app is mission critical.','<p>Whether you are looking for a simple hosting package or an architected cloud server our hosting solutions are designed to scale as you grow. Our team of engineers and service desk are on hand 24/7, making sure your website or app is up and running smoothly and guiding you with expert advice when you need it. </p>'),(18,17,5,1,15,NULL,'At Umbrellar we take your data seriously. We understand that the platform for your website or app is mission critical.','<p>Whether you are looking for a simple hosting package or an architected cloud server our hosting solutions are designed to scale as you grow. Our team of engineers and service desk are on hand 24/7, making sure your website or app is up and running smoothly and guiding you with expert advice when you need it. </p>'),(20,30,1,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(21,31,1,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(22,31,2,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(23,38,1,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(24,38,2,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(25,45,1,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(26,45,2,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(27,45,3,1,11,NULL,'XX','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(28,45,4,1,11,NULL,'XX','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(29,52,1,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(30,53,1,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(31,54,1,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(32,54,2,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(33,61,1,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(34,61,2,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(35,68,1,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(36,68,2,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(37,75,1,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(38,75,2,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(39,82,1,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(40,82,2,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(41,89,1,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(42,90,1,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(43,91,1,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(44,92,1,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(45,93,1,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(46,94,1,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(47,95,1,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(48,95,2,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(49,97,1,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>'),(50,97,2,1,11,NULL,'Maecenas sed diam eget risus varius blandit sit amet non magna. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo.','<p>Nulla vitae elit libero, a pharetra augue. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam id dolor id nibh ultricies vehicula ut id elit. Curabitur blandit tempus porttitor. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Donec ullamcorper nulla non metus auctor fringilla. Curabitur blandit tempus porttitor. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>');
/*!40000 ALTER TABLE `GuidanceModule_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HTMLTextBlock`
--

DROP TABLE IF EXISTS `HTMLTextBlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HTMLTextBlock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Content` mediumtext CHARACTER SET utf8,
  `Title` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  `CallToActionButtonID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CallToActionButtonID` (`CallToActionButtonID`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HTMLTextBlock`
--

LOCK TABLES `HTMLTextBlock` WRITE;
/*!40000 ALTER TABLE `HTMLTextBlock` DISABLE KEYS */;
INSERT INTO `HTMLTextBlock` VALUES (6,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus.</p>','YYY xx x',1,'h3',2),(10,'<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Sed posuere consectetur est at lobortis. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Cras mattis consectetur purus sit amet fermentum. Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>','Nibh Inceptos Aenean',1,'h2',3),(20,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Nullam quis risus eget urna mollis ornare vel eu leo. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p><p>Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p><p>Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p><p>Aenean lacinia bibendum nulla sed consectetur. Aenean lacinia bibendum nulla sed consectetur. Curabitur blandit tempus porttitor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nulla vitae elit libero, a pharetra augue.</p>','Block Title',1,'h2',46),(21,'<p>Etiam porta sem malesuada magna mollis euismod. Aenean lacinia bibendum nulla sed consectetur. Donec id elit non mi porta gravida at eget metus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>',NULL,0,'h2',0),(38,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus.</p>','YYY xx x',1,'h3',2),(40,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Nullam quis risus eget urna mollis ornare vel eu leo. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p><p>Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p><p>Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p><p>Aenean lacinia bibendum nulla sed consectetur. Aenean lacinia bibendum nulla sed consectetur. Curabitur blandit tempus porttitor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nulla vitae elit libero, a pharetra augue.</p>','Block Title',1,'h2',46),(41,'<p>Etiam porta sem malesuada magna mollis euismod. Aenean lacinia bibendum nulla sed consectetur. Donec id elit non mi porta gravida at eget metus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>',NULL,0,'h2',0),(58,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus.</p>','YYY xx x',1,'h3',2),(59,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus.</p>','YYY xx x',1,'h3',2),(62,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Nullam quis risus eget urna mollis ornare vel eu leo. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p><p>Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p><p>Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p><p>Aenean lacinia bibendum nulla sed consectetur. Aenean lacinia bibendum nulla sed consectetur. Curabitur blandit tempus porttitor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nulla vitae elit libero, a pharetra augue.</p>','Block Title',1,'h2',46),(63,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Nullam quis risus eget urna mollis ornare vel eu leo. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p><p>Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p><p>Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p><p>Aenean lacinia bibendum nulla sed consectetur. Aenean lacinia bibendum nulla sed consectetur. Curabitur blandit tempus porttitor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nulla vitae elit libero, a pharetra augue.</p>','Block Title',1,'h2',46),(64,'<p>Etiam porta sem malesuada magna mollis euismod. Aenean lacinia bibendum nulla sed consectetur. Donec id elit non mi porta gravida at eget metus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>',NULL,0,'h2',0),(65,'<p>Etiam porta sem malesuada magna mollis euismod. Aenean lacinia bibendum nulla sed consectetur. Donec id elit non mi porta gravida at eget metus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>',NULL,0,'h2',0);
/*!40000 ALTER TABLE `HTMLTextBlock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HTMLTextBlock_Live`
--

DROP TABLE IF EXISTS `HTMLTextBlock_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HTMLTextBlock_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Content` mediumtext CHARACTER SET utf8,
  `Title` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  `CallToActionButtonID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CallToActionButtonID` (`CallToActionButtonID`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HTMLTextBlock_Live`
--

LOCK TABLES `HTMLTextBlock_Live` WRITE;
/*!40000 ALTER TABLE `HTMLTextBlock_Live` DISABLE KEYS */;
INSERT INTO `HTMLTextBlock_Live` VALUES (6,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus.</p>','YYY xx x',1,'h3',2),(10,'<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Sed posuere consectetur est at lobortis. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Cras mattis consectetur purus sit amet fermentum. Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>','Nibh Inceptos Aenean',1,'h2',3),(20,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Nullam quis risus eget urna mollis ornare vel eu leo. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p><p>Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p><p>Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p><p>Aenean lacinia bibendum nulla sed consectetur. Aenean lacinia bibendum nulla sed consectetur. Curabitur blandit tempus porttitor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nulla vitae elit libero, a pharetra augue.</p>','Block Title',1,'h2',46),(21,'<p>Etiam porta sem malesuada magna mollis euismod. Aenean lacinia bibendum nulla sed consectetur. Donec id elit non mi porta gravida at eget metus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>',NULL,0,'h2',0),(38,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus.</p>','YYY xx x',1,'h3',2),(40,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Nullam quis risus eget urna mollis ornare vel eu leo. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p><p>Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p><p>Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p><p>Aenean lacinia bibendum nulla sed consectetur. Aenean lacinia bibendum nulla sed consectetur. Curabitur blandit tempus porttitor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nulla vitae elit libero, a pharetra augue.</p>','Block Title',1,'h2',46),(41,'<p>Etiam porta sem malesuada magna mollis euismod. Aenean lacinia bibendum nulla sed consectetur. Donec id elit non mi porta gravida at eget metus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>',NULL,0,'h2',0),(58,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus.</p>','YYY xx x',1,'h3',2),(59,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus.</p>','YYY xx x',1,'h3',2),(62,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Nullam quis risus eget urna mollis ornare vel eu leo. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p><p>Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p><p>Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p><p>Aenean lacinia bibendum nulla sed consectetur. Aenean lacinia bibendum nulla sed consectetur. Curabitur blandit tempus porttitor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nulla vitae elit libero, a pharetra augue.</p>','Block Title',1,'h2',46),(63,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Nullam quis risus eget urna mollis ornare vel eu leo. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p><p>Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p><p>Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p><p>Aenean lacinia bibendum nulla sed consectetur. Aenean lacinia bibendum nulla sed consectetur. Curabitur blandit tempus porttitor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nulla vitae elit libero, a pharetra augue.</p>','Block Title',1,'h2',46),(64,'<p>Etiam porta sem malesuada magna mollis euismod. Aenean lacinia bibendum nulla sed consectetur. Donec id elit non mi porta gravida at eget metus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>',NULL,0,'h2',0),(65,'<p>Etiam porta sem malesuada magna mollis euismod. Aenean lacinia bibendum nulla sed consectetur. Donec id elit non mi porta gravida at eget metus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>',NULL,0,'h2',0);
/*!40000 ALTER TABLE `HTMLTextBlock_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HTMLTextBlock_versions`
--

DROP TABLE IF EXISTS `HTMLTextBlock_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HTMLTextBlock_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Content` mediumtext CHARACTER SET utf8,
  `Title` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  `CallToActionButtonID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `CallToActionButtonID` (`CallToActionButtonID`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HTMLTextBlock_versions`
--

LOCK TABLES `HTMLTextBlock_versions` WRITE;
/*!40000 ALTER TABLE `HTMLTextBlock_versions` DISABLE KEYS */;
INSERT INTO `HTMLTextBlock_versions` VALUES (9,6,1,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus.</p>','YYY',1,'h2',0),(10,6,2,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus.</p>','YYY',1,'h2',0),(11,6,3,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus.</p>','YYY',1,'h2',0),(12,6,4,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus.</p>','YYY xx',1,'h2',0),(13,6,5,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus.</p>','YYY xx',1,'h2',0),(14,6,6,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus.</p>','YYY xx x',1,'h2',0),(15,6,7,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus.</p>','YYY xx x',1,'h2',0),(16,6,8,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus.</p>','YYY xx x',1,'h2',0),(17,6,9,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus.</p>','YYY xx x',1,'h2',0),(18,6,10,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus.</p>','YYY xx x',1,'h2',2),(19,6,11,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus.</p>','YYY xx x',1,'h2',2),(20,10,1,'<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Sed posuere consectetur est at lobortis. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Cras mattis consectetur purus sit amet fermentum. Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>','Nibh Inceptos Aenean',1,'h2',0),(21,10,2,'<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Sed posuere consectetur est at lobortis. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Cras mattis consectetur purus sit amet fermentum. Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>','Nibh Inceptos Aenean',1,'h2',0),(22,10,3,'<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Sed posuere consectetur est at lobortis. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Cras mattis consectetur purus sit amet fermentum. Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>','Nibh Inceptos Aenean',1,'h2',0),(23,10,4,'<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Sed posuere consectetur est at lobortis. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Cras mattis consectetur purus sit amet fermentum. Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>','Nibh Inceptos Aenean',1,'h2',3),(24,10,5,'<p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Etiam porta sem malesuada magna mollis euismod. Nullam quis risus eget urna mollis ornare vel eu leo. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Sed posuere consectetur est at lobortis. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Cras mattis consectetur purus sit amet fermentum. Donec sed odio dui. Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus. Etiam porta sem malesuada magna mollis euismod. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>','Nibh Inceptos Aenean',1,'h2',3),(25,6,12,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus.</p>','YYY xx x',1,'h3',2),(26,6,13,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus.</p>','YYY xx x',1,'h3',2),(27,20,1,'<p>sxx</p>','Block Title',1,'h2',0),(28,20,2,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Nullam quis risus eget urna mollis ornare vel eu leo. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p><p>Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p><p>Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p><p>Aenean lacinia bibendum nulla sed consectetur. Aenean lacinia bibendum nulla sed consectetur. Curabitur blandit tempus porttitor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nulla vitae elit libero, a pharetra augue.</p>','Block Title',1,'h2',0),(29,20,3,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Nullam quis risus eget urna mollis ornare vel eu leo. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p><p>Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p><p>Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p><p>Aenean lacinia bibendum nulla sed consectetur. Aenean lacinia bibendum nulla sed consectetur. Curabitur blandit tempus porttitor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nulla vitae elit libero, a pharetra augue.</p>','Block Title',1,'h2',0),(30,21,1,NULL,NULL,0,'h2',0),(31,21,2,'<p>Etiam porta sem malesuada magna mollis euismod. Aenean lacinia bibendum nulla sed consectetur. Donec id elit non mi porta gravida at eget metus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>',NULL,0,'h2',0),(32,21,3,'<p>Etiam porta sem malesuada magna mollis euismod. Aenean lacinia bibendum nulla sed consectetur. Donec id elit non mi porta gravida at eget metus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>',NULL,0,'h2',0),(33,20,4,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Nullam quis risus eget urna mollis ornare vel eu leo. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p><p>Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p><p>Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p><p>Aenean lacinia bibendum nulla sed consectetur. Aenean lacinia bibendum nulla sed consectetur. Curabitur blandit tempus porttitor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nulla vitae elit libero, a pharetra augue.</p>','Block Title',1,'h2',46),(34,20,5,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Nullam quis risus eget urna mollis ornare vel eu leo. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p><p>Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p><p>Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p><p>Aenean lacinia bibendum nulla sed consectetur. Aenean lacinia bibendum nulla sed consectetur. Curabitur blandit tempus porttitor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nulla vitae elit libero, a pharetra augue.</p>','Block Title',1,'h2',46),(35,38,1,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus.</p>','YYY xx x',1,'h3',2),(36,38,2,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus.</p>','YYY xx x',1,'h3',2),(37,40,1,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Nullam quis risus eget urna mollis ornare vel eu leo. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p><p>Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p><p>Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p><p>Aenean lacinia bibendum nulla sed consectetur. Aenean lacinia bibendum nulla sed consectetur. Curabitur blandit tempus porttitor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nulla vitae elit libero, a pharetra augue.</p>','Block Title',1,'h2',46),(38,40,2,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Nullam quis risus eget urna mollis ornare vel eu leo. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p><p>Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p><p>Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p><p>Aenean lacinia bibendum nulla sed consectetur. Aenean lacinia bibendum nulla sed consectetur. Curabitur blandit tempus porttitor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nulla vitae elit libero, a pharetra augue.</p>','Block Title',1,'h2',46),(39,41,1,'<p>Etiam porta sem malesuada magna mollis euismod. Aenean lacinia bibendum nulla sed consectetur. Donec id elit non mi porta gravida at eget metus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>',NULL,0,'h2',0),(40,41,2,'<p>Etiam porta sem malesuada magna mollis euismod. Aenean lacinia bibendum nulla sed consectetur. Donec id elit non mi porta gravida at eget metus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>',NULL,0,'h2',0),(41,58,1,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus.</p>','YYY xx x',1,'h3',2),(42,58,2,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus.</p>','YYY xx x',1,'h3',2),(43,58,3,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus.</p>','YYY xx x',1,'h3',2),(44,59,1,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus.</p>','YYY xx x',1,'h3',2),(45,59,2,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus.</p>','YYY xx x',1,'h3',2),(46,59,3,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Aenean lacinia bibendum nulla sed consectetur. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Aenean lacinia bibendum nulla sed consectetur. Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur blandit tempus porttitor. Maecenas faucibus mollis interdum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec id elit non mi porta gravida at eget metus.</p>','YYY xx x',1,'h3',2),(47,62,1,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Nullam quis risus eget urna mollis ornare vel eu leo. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p><p>Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p><p>Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p><p>Aenean lacinia bibendum nulla sed consectetur. Aenean lacinia bibendum nulla sed consectetur. Curabitur blandit tempus porttitor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nulla vitae elit libero, a pharetra augue.</p>','Block Title',1,'h2',46),(48,62,2,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Nullam quis risus eget urna mollis ornare vel eu leo. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p><p>Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p><p>Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p><p>Aenean lacinia bibendum nulla sed consectetur. Aenean lacinia bibendum nulla sed consectetur. Curabitur blandit tempus porttitor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nulla vitae elit libero, a pharetra augue.</p>','Block Title',1,'h2',46),(49,62,3,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Nullam quis risus eget urna mollis ornare vel eu leo. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p><p>Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p><p>Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p><p>Aenean lacinia bibendum nulla sed consectetur. Aenean lacinia bibendum nulla sed consectetur. Curabitur blandit tempus porttitor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nulla vitae elit libero, a pharetra augue.</p>','Block Title',1,'h2',46),(50,63,1,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Nullam quis risus eget urna mollis ornare vel eu leo. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p><p>Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p><p>Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p><p>Aenean lacinia bibendum nulla sed consectetur. Aenean lacinia bibendum nulla sed consectetur. Curabitur blandit tempus porttitor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nulla vitae elit libero, a pharetra augue.</p>','Block Title',1,'h2',46),(51,63,2,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Nullam quis risus eget urna mollis ornare vel eu leo. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p><p>Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p><p>Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p><p>Aenean lacinia bibendum nulla sed consectetur. Aenean lacinia bibendum nulla sed consectetur. Curabitur blandit tempus porttitor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nulla vitae elit libero, a pharetra augue.</p>','Block Title',1,'h2',46),(52,63,3,'<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Nullam quis risus eget urna mollis ornare vel eu leo. Cras mattis consectetur purus sit amet fermentum. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p><p>Vestibulum id ligula porta felis euismod semper. Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p><p>Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Maecenas sed diam eget risus varius blandit sit amet non magna. Sed posuere consectetur est at lobortis. Cras mattis consectetur purus sit amet fermentum.</p><p>Aenean lacinia bibendum nulla sed consectetur. Aenean lacinia bibendum nulla sed consectetur. Curabitur blandit tempus porttitor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Nulla vitae elit libero, a pharetra augue.</p>','Block Title',1,'h2',46),(53,64,1,'<p>Etiam porta sem malesuada magna mollis euismod. Aenean lacinia bibendum nulla sed consectetur. Donec id elit non mi porta gravida at eget metus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>',NULL,0,'h2',0),(54,64,2,'<p>Etiam porta sem malesuada magna mollis euismod. Aenean lacinia bibendum nulla sed consectetur. Donec id elit non mi porta gravida at eget metus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>',NULL,0,'h2',0),(55,64,3,'<p>Etiam porta sem malesuada magna mollis euismod. Aenean lacinia bibendum nulla sed consectetur. Donec id elit non mi porta gravida at eget metus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>',NULL,0,'h2',0),(56,65,1,'<p>Etiam porta sem malesuada magna mollis euismod. Aenean lacinia bibendum nulla sed consectetur. Donec id elit non mi porta gravida at eget metus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>',NULL,0,'h2',0),(57,65,2,'<p>Etiam porta sem malesuada magna mollis euismod. Aenean lacinia bibendum nulla sed consectetur. Donec id elit non mi porta gravida at eget metus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>',NULL,0,'h2',0),(58,65,3,'<p>Etiam porta sem malesuada magna mollis euismod. Aenean lacinia bibendum nulla sed consectetur. Donec id elit non mi porta gravida at eget metus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>',NULL,0,'h2',0),(59,64,4,'<p>Etiam porta sem malesuada magna mollis euismod. Aenean lacinia bibendum nulla sed consectetur. Donec id elit non mi porta gravida at eget metus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>',NULL,0,'h2',0),(60,65,4,'<p>Etiam porta sem malesuada magna mollis euismod. Aenean lacinia bibendum nulla sed consectetur. Donec id elit non mi porta gravida at eget metus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>',NULL,0,'h2',0);
/*!40000 ALTER TABLE `HTMLTextBlock_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HeaderModule`
--

DROP TABLE IF EXISTS `HeaderModule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HeaderModule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `UsePageTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Introduction` mediumtext CHARACTER SET utf8,
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  `HeroImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroImageID` (`HeroImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HeaderModule`
--

LOCK TABLES `HeaderModule` WRITE;
/*!40000 ALTER TABLE `HeaderModule` DISABLE KEYS */;
/*!40000 ALTER TABLE `HeaderModule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HeaderModule_Live`
--

DROP TABLE IF EXISTS `HeaderModule_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HeaderModule_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `UsePageTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Introduction` mediumtext CHARACTER SET utf8,
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  `HeroImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroImageID` (`HeroImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HeaderModule_Live`
--

LOCK TABLES `HeaderModule_Live` WRITE;
/*!40000 ALTER TABLE `HeaderModule_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `HeaderModule_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HeaderModule_versions`
--

DROP TABLE IF EXISTS `HeaderModule_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HeaderModule_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `UsePageTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Introduction` mediumtext CHARACTER SET utf8,
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  `HeroImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `HeroImageID` (`HeroImageID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HeaderModule_versions`
--

LOCK TABLES `HeaderModule_versions` WRITE;
/*!40000 ALTER TABLE `HeaderModule_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `HeaderModule_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HomePage`
--

DROP TABLE IF EXISTS `HomePage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HomePage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Introduction` mediumtext CHARACTER SET utf8,
  `CallToActionButtonID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CallToActionButtonID` (`CallToActionButtonID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HomePage`
--

LOCK TABLES `HomePage` WRITE;
/*!40000 ALTER TABLE `HomePage` DISABLE KEYS */;
INSERT INTO `HomePage` VALUES (13,'Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.',48);
/*!40000 ALTER TABLE `HomePage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HomePage_Live`
--

DROP TABLE IF EXISTS `HomePage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HomePage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Introduction` mediumtext CHARACTER SET utf8,
  `CallToActionButtonID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CallToActionButtonID` (`CallToActionButtonID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HomePage_Live`
--

LOCK TABLES `HomePage_Live` WRITE;
/*!40000 ALTER TABLE `HomePage_Live` DISABLE KEYS */;
INSERT INTO `HomePage_Live` VALUES (13,'Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.',48);
/*!40000 ALTER TABLE `HomePage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HomePage_versions`
--

DROP TABLE IF EXISTS `HomePage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HomePage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Introduction` mediumtext CHARACTER SET utf8,
  `CallToActionButtonID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `CallToActionButtonID` (`CallToActionButtonID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HomePage_versions`
--

LOCK TABLES `HomePage_versions` WRITE;
/*!40000 ALTER TABLE `HomePage_versions` DISABLE KEYS */;
INSERT INTO `HomePage_versions` VALUES (1,13,6,NULL,48),(2,13,7,NULL,48),(3,13,8,'Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.',48),(4,13,9,'Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.',48),(5,13,10,'Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.',48),(6,13,11,'Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.',48),(7,13,12,'Sed posuere consectetur est at lobortis. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.',48);
/*!40000 ALTER TABLE `HomePage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Image`
--

DROP TABLE IF EXISTS `Image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Image` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ContainerX` int(11) NOT NULL DEFAULT '0',
  `ContainerY` int(11) NOT NULL DEFAULT '0',
  `ContainerWidth` int(11) NOT NULL DEFAULT '0',
  `ContainerHeight` int(11) NOT NULL DEFAULT '0',
  `CropperX` int(11) NOT NULL DEFAULT '0',
  `CropperY` int(11) NOT NULL DEFAULT '0',
  `CropperWidth` int(11) NOT NULL DEFAULT '0',
  `CropperHeight` int(11) NOT NULL DEFAULT '0',
  `SaltedCroppedImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SaltedCroppedImageID` (`SaltedCroppedImageID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Image`
--

LOCK TABLES `Image` WRITE;
/*!40000 ALTER TABLE `Image` DISABLE KEYS */;
INSERT INTO `Image` VALUES (2,0,0,666,458,0,164,666,266,9),(3,0,0,240,210,0,46,240,96,6),(4,0,0,0,0,0,0,0,0,0),(6,0,0,240,96,0,13,240,83,8),(8,0,0,0,0,0,0,0,0,0),(9,0,0,0,0,0,0,0,0,0),(10,0,0,0,0,0,0,0,0,0),(11,0,0,666,403,223,0,269,403,32),(13,0,0,0,0,0,0,0,0,0),(15,0,0,667,445,3,55,664,265,16),(16,0,0,666,266,203,0,266,266,33),(17,0,0,0,0,0,0,0,0,0),(18,0,0,364,222,18,30,336,168,20),(19,0,0,362,180,22,26,322,124,25),(20,0,0,0,0,0,0,0,0,0),(22,0,0,0,0,0,0,0,0,0),(23,0,0,290,236,31,23,223,192,24),(24,0,0,0,0,0,0,0,0,0),(25,0,0,0,0,0,0,0,0,0),(26,0,0,441,188,12,9,414,170,27),(27,0,0,0,0,0,0,0,0,0),(28,0,0,0,0,0,0,0,0,0),(29,0,0,667,445,187,0,297,445,30),(30,0,0,0,0,0,0,0,0,0),(32,0,0,0,0,0,0,0,0,0),(33,0,0,0,0,0,0,0,0,0),(34,0,0,0,0,0,0,0,0,0),(35,0,0,666,403,9,21,651,366,36),(36,0,0,0,0,0,0,0,0,0),(37,0,0,0,0,0,0,0,0,0),(38,0,0,0,0,0,0,0,0,0),(39,0,0,0,0,0,0,0,0,0),(40,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `Image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ImageBlock`
--

DROP TABLE IF EXISTS `ImageBlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ImageBlock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ImageID` (`ImageID`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ImageBlock`
--

LOCK TABLES `ImageBlock` WRITE;
/*!40000 ALTER TABLE `ImageBlock` DISABLE KEYS */;
INSERT INTO `ImageBlock` VALUES (7,11),(39,11),(60,11),(61,11);
/*!40000 ALTER TABLE `ImageBlock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ImageBlock_Live`
--

DROP TABLE IF EXISTS `ImageBlock_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ImageBlock_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ImageID` (`ImageID`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ImageBlock_Live`
--

LOCK TABLES `ImageBlock_Live` WRITE;
/*!40000 ALTER TABLE `ImageBlock_Live` DISABLE KEYS */;
INSERT INTO `ImageBlock_Live` VALUES (7,11),(39,11),(60,11),(61,11);
/*!40000 ALTER TABLE `ImageBlock_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ImageBlock_versions`
--

DROP TABLE IF EXISTS `ImageBlock_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ImageBlock_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `ImageID` (`ImageID`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ImageBlock_versions`
--

LOCK TABLES `ImageBlock_versions` WRITE;
/*!40000 ALTER TABLE `ImageBlock_versions` DISABLE KEYS */;
INSERT INTO `ImageBlock_versions` VALUES (1,7,1,0),(2,7,2,0),(3,7,3,3),(4,7,4,3),(5,7,5,11),(6,7,6,11),(7,39,1,11),(8,39,2,11),(9,60,1,11),(10,60,2,11),(11,60,3,11),(12,61,1,11),(13,61,2,11),(14,61,3,11);
/*!40000 ALTER TABLE `ImageBlock_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobCategory`
--

DROP TABLE IF EXISTS `JobCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobCategory` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('JobCategory') CHARACTER SET utf8 DEFAULT 'JobCategory',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `Slug` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobCategory`
--

LOCK TABLES `JobCategory` WRITE;
/*!40000 ALTER TABLE `JobCategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `JobCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobVacancyPage`
--

DROP TABLE IF EXISTS `JobVacancyPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobVacancyPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Excerpt` mediumtext CHARACTER SET utf8,
  `Location` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `ReportTo` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `Hours` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `EmailTo` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `SubmitMessage` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `CategoryID` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaKeywords` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `PageHeroID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CategoryID` (`CategoryID`),
  KEY `PageHeroID` (`PageHeroID`),
  FULLTEXT KEY `SearchFields` (`Title`,`Content`,`MetaKeywords`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobVacancyPage`
--

LOCK TABLES `JobVacancyPage` WRITE;
/*!40000 ALTER TABLE `JobVacancyPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `JobVacancyPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobVacancyPage_Live`
--

DROP TABLE IF EXISTS `JobVacancyPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobVacancyPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Excerpt` mediumtext CHARACTER SET utf8,
  `Location` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `ReportTo` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `Hours` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `EmailTo` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `SubmitMessage` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `CategoryID` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaKeywords` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `PageHeroID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CategoryID` (`CategoryID`),
  KEY `PageHeroID` (`PageHeroID`),
  FULLTEXT KEY `SearchFields` (`Title`,`Content`,`MetaKeywords`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobVacancyPage_Live`
--

LOCK TABLES `JobVacancyPage_Live` WRITE;
/*!40000 ALTER TABLE `JobVacancyPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `JobVacancyPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobVacancyPage_RelatedJobs`
--

DROP TABLE IF EXISTS `JobVacancyPage_RelatedJobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobVacancyPage_RelatedJobs` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `JobVacancyPageID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `JobVacancyPageID` (`JobVacancyPageID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobVacancyPage_RelatedJobs`
--

LOCK TABLES `JobVacancyPage_RelatedJobs` WRITE;
/*!40000 ALTER TABLE `JobVacancyPage_RelatedJobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `JobVacancyPage_RelatedJobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JobVacancyPage_versions`
--

DROP TABLE IF EXISTS `JobVacancyPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JobVacancyPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Excerpt` mediumtext CHARACTER SET utf8,
  `Location` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `ReportTo` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `Hours` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `EmailTo` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `SubmitMessage` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `CategoryID` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaKeywords` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `PageHeroID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `CategoryID` (`CategoryID`),
  KEY `PageHeroID` (`PageHeroID`),
  FULLTEXT KEY `SearchFields` (`Title`,`Content`,`MetaKeywords`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JobVacancyPage_versions`
--

LOCK TABLES `JobVacancyPage_versions` WRITE;
/*!40000 ALTER TABLE `JobVacancyPage_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `JobVacancyPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KnowledgeArticle`
--

DROP TABLE IF EXISTS `KnowledgeArticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KnowledgeArticle` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PublishDate` date DEFAULT NULL,
  `ExpiryDate` datetime DEFAULT NULL,
  `RemoveWhenExpire` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Excerpt` mediumtext CHARACTER SET utf8,
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PreviewImageID` int(11) NOT NULL DEFAULT '0',
  `CategoryID` int(11) NOT NULL DEFAULT '0',
  `PageHeroID` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaKeywords` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PreviewImageID` (`PreviewImageID`),
  KEY `CategoryID` (`CategoryID`),
  KEY `PageHeroID` (`PageHeroID`),
  FULLTEXT KEY `SearchFields` (`Title`,`Content`,`MetaKeywords`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KnowledgeArticle`
--

LOCK TABLES `KnowledgeArticle` WRITE;
/*!40000 ALTER TABLE `KnowledgeArticle` DISABLE KEYS */;
INSERT INTO `KnowledgeArticle` VALUES (28,'2017-07-18',NULL,0,'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. ',1,0,1,35,NULL,NULL,NULL);
/*!40000 ALTER TABLE `KnowledgeArticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KnowledgeArticle_Live`
--

DROP TABLE IF EXISTS `KnowledgeArticle_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KnowledgeArticle_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PublishDate` date DEFAULT NULL,
  `ExpiryDate` datetime DEFAULT NULL,
  `RemoveWhenExpire` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Excerpt` mediumtext CHARACTER SET utf8,
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PreviewImageID` int(11) NOT NULL DEFAULT '0',
  `CategoryID` int(11) NOT NULL DEFAULT '0',
  `PageHeroID` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaKeywords` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PreviewImageID` (`PreviewImageID`),
  KEY `CategoryID` (`CategoryID`),
  KEY `PageHeroID` (`PageHeroID`),
  FULLTEXT KEY `SearchFields` (`Title`,`Content`,`MetaKeywords`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KnowledgeArticle_Live`
--

LOCK TABLES `KnowledgeArticle_Live` WRITE;
/*!40000 ALTER TABLE `KnowledgeArticle_Live` DISABLE KEYS */;
INSERT INTO `KnowledgeArticle_Live` VALUES (28,'2017-07-18',NULL,0,'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. ',1,0,1,35,NULL,NULL,NULL);
/*!40000 ALTER TABLE `KnowledgeArticle_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KnowledgeArticle_Promos`
--

DROP TABLE IF EXISTS `KnowledgeArticle_Promos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KnowledgeArticle_Promos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `KnowledgeArticleID` int(11) NOT NULL DEFAULT '0',
  `PromoModuleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `KnowledgeArticleID` (`KnowledgeArticleID`),
  KEY `PromoModuleID` (`PromoModuleID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KnowledgeArticle_Promos`
--

LOCK TABLES `KnowledgeArticle_Promos` WRITE;
/*!40000 ALTER TABLE `KnowledgeArticle_Promos` DISABLE KEYS */;
/*!40000 ALTER TABLE `KnowledgeArticle_Promos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KnowledgeArticle_Related`
--

DROP TABLE IF EXISTS `KnowledgeArticle_Related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KnowledgeArticle_Related` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `KnowledgeArticleID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `KnowledgeArticleID` (`KnowledgeArticleID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KnowledgeArticle_Related`
--

LOCK TABLES `KnowledgeArticle_Related` WRITE;
/*!40000 ALTER TABLE `KnowledgeArticle_Related` DISABLE KEYS */;
/*!40000 ALTER TABLE `KnowledgeArticle_Related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KnowledgeArticle_versions`
--

DROP TABLE IF EXISTS `KnowledgeArticle_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KnowledgeArticle_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PublishDate` date DEFAULT NULL,
  `ExpiryDate` datetime DEFAULT NULL,
  `RemoveWhenExpire` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Excerpt` mediumtext CHARACTER SET utf8,
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PreviewImageID` int(11) NOT NULL DEFAULT '0',
  `CategoryID` int(11) NOT NULL DEFAULT '0',
  `PageHeroID` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaKeywords` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PreviewImageID` (`PreviewImageID`),
  KEY `CategoryID` (`CategoryID`),
  KEY `PageHeroID` (`PageHeroID`),
  FULLTEXT KEY `SearchFields` (`Title`,`Content`,`MetaKeywords`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KnowledgeArticle_versions`
--

LOCK TABLES `KnowledgeArticle_versions` WRITE;
/*!40000 ALTER TABLE `KnowledgeArticle_versions` DISABLE KEYS */;
INSERT INTO `KnowledgeArticle_versions` VALUES (1,28,1,'2017-07-18',NULL,0,'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. ',3,0,0,0,NULL,NULL,NULL),(2,28,2,'2017-07-18',NULL,0,'Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Curabitur non nulla sit amet nisl tempus convallis quis ac lectus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. ',1,0,1,35,NULL,NULL,NULL);
/*!40000 ALTER TABLE `KnowledgeArticle_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KnowledgeCategory`
--

DROP TABLE IF EXISTS `KnowledgeCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KnowledgeCategory` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('KnowledgeCategory') CHARACTER SET utf8 DEFAULT 'KnowledgeCategory',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KnowledgeCategory`
--

LOCK TABLES `KnowledgeCategory` WRITE;
/*!40000 ALTER TABLE `KnowledgeCategory` DISABLE KEYS */;
INSERT INTO `KnowledgeCategory` VALUES (1,'KnowledgeCategory','2017-07-18 12:21:17','2017-07-18 12:21:17','sub category 1');
/*!40000 ALTER TABLE `KnowledgeCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KnowledgeHubGroupPage`
--

DROP TABLE IF EXISTS `KnowledgeHubGroupPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KnowledgeHubGroupPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ItemsPerPage` int(11) NOT NULL DEFAULT '0',
  `AllowedChildTypes` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KnowledgeHubGroupPage`
--

LOCK TABLES `KnowledgeHubGroupPage` WRITE;
/*!40000 ALTER TABLE `KnowledgeHubGroupPage` DISABLE KEYS */;
INSERT INTO `KnowledgeHubGroupPage` VALUES (27,20,NULL);
/*!40000 ALTER TABLE `KnowledgeHubGroupPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KnowledgeHubGroupPage_Live`
--

DROP TABLE IF EXISTS `KnowledgeHubGroupPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KnowledgeHubGroupPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ItemsPerPage` int(11) NOT NULL DEFAULT '0',
  `AllowedChildTypes` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KnowledgeHubGroupPage_Live`
--

LOCK TABLES `KnowledgeHubGroupPage_Live` WRITE;
/*!40000 ALTER TABLE `KnowledgeHubGroupPage_Live` DISABLE KEYS */;
INSERT INTO `KnowledgeHubGroupPage_Live` VALUES (27,20,NULL);
/*!40000 ALTER TABLE `KnowledgeHubGroupPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KnowledgeHubGroupPage_versions`
--

DROP TABLE IF EXISTS `KnowledgeHubGroupPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KnowledgeHubGroupPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ItemsPerPage` int(11) NOT NULL DEFAULT '0',
  `AllowedChildTypes` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KnowledgeHubGroupPage_versions`
--

LOCK TABLES `KnowledgeHubGroupPage_versions` WRITE;
/*!40000 ALTER TABLE `KnowledgeHubGroupPage_versions` DISABLE KEYS */;
INSERT INTO `KnowledgeHubGroupPage_versions` VALUES (1,27,1,20,NULL),(2,27,2,20,NULL);
/*!40000 ALTER TABLE `KnowledgeHubGroupPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KnowledgeHubLandingPage`
--

DROP TABLE IF EXISTS `KnowledgeHubLandingPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KnowledgeHubLandingPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ItemsPerPage` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KnowledgeHubLandingPage`
--

LOCK TABLES `KnowledgeHubLandingPage` WRITE;
/*!40000 ALTER TABLE `KnowledgeHubLandingPage` DISABLE KEYS */;
INSERT INTO `KnowledgeHubLandingPage` VALUES (26,20);
/*!40000 ALTER TABLE `KnowledgeHubLandingPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KnowledgeHubLandingPage_Live`
--

DROP TABLE IF EXISTS `KnowledgeHubLandingPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KnowledgeHubLandingPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ItemsPerPage` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KnowledgeHubLandingPage_Live`
--

LOCK TABLES `KnowledgeHubLandingPage_Live` WRITE;
/*!40000 ALTER TABLE `KnowledgeHubLandingPage_Live` DISABLE KEYS */;
INSERT INTO `KnowledgeHubLandingPage_Live` VALUES (26,20);
/*!40000 ALTER TABLE `KnowledgeHubLandingPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KnowledgeHubLandingPage_versions`
--

DROP TABLE IF EXISTS `KnowledgeHubLandingPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KnowledgeHubLandingPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ItemsPerPage` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KnowledgeHubLandingPage_versions`
--

LOCK TABLES `KnowledgeHubLandingPage_versions` WRITE;
/*!40000 ALTER TABLE `KnowledgeHubLandingPage_versions` DISABLE KEYS */;
INSERT INTO `KnowledgeHubLandingPage_versions` VALUES (1,26,1,20),(2,26,2,20),(3,26,3,20),(4,26,4,20),(5,26,5,20);
/*!40000 ALTER TABLE `KnowledgeHubLandingPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LegalLink`
--

DROP TABLE IF EXISTS `LegalLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LegalLink` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LegalLink`
--

LOCK TABLES `LegalLink` WRITE;
/*!40000 ALTER TABLE `LegalLink` DISABLE KEYS */;
INSERT INTO `LegalLink` VALUES (63,0,3),(64,0,3);
/*!40000 ALTER TABLE `LegalLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Link`
--

DROP TABLE IF EXISTS `Link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Link` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Link','LegalLink','FooterLink','GroupLink') CHARACTER SET utf8 DEFAULT 'Link',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Type` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `URL` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `OpenInNewWindow` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Template` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Anchor` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `FileID` int(11) NOT NULL DEFAULT '0',
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `YoutubeVideo` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `DisplayInPopUp` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `FileID` (`FileID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Link`
--

LOCK TABLES `Link` WRITE;
/*!40000 ALTER TABLE `Link` DISABLE KEYS */;
INSERT INTO `Link` VALUES (1,'Link','2017-06-30 09:26:27','2017-06-30 09:26:27','Call to action 1','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(2,'Link','2017-07-02 14:13:47','2017-07-02 14:13:47','About Us','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,14,NULL,0),(3,'Link','2017-07-03 18:16:52','2017-07-03 18:16:52','Call to action label','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(4,'Link','2017-07-05 09:56:12','2017-07-05 09:56:12','Call to action','URL','https://support.umbrellar.com',NULL,NULL,1,NULL,NULL,0,0,NULL,0),(5,'Link','2017-07-07 17:09:06','2017-07-07 17:09:06','Login','URL','https://secure.umbrellar.com',NULL,NULL,1,NULL,NULL,0,0,NULL,0),(6,'Link','2017-07-07 17:09:32','2017-07-07 17:09:32','Get Started','URL','https://portal.umbrellar.com',NULL,NULL,1,NULL,NULL,0,0,NULL,0),(7,'Link','2017-07-07 18:50:31','2017-07-07 18:50:31','Module Page','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,19,NULL,0),(8,'Link','2017-07-07 18:53:29','2017-07-07 18:53:29','Module Page','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,19,NULL,0),(9,'Link','2017-07-07 19:04:27','2017-07-07 19:04:27','Module Page','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,19,NULL,0),(10,'GroupLink','2017-07-07 19:18:15','2017-07-07 19:13:01','Contact Us','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,15,NULL,0),(11,'Link','2017-07-09 13:22:38','2017-07-09 13:22:38','New Content Page','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,22,NULL,0),(12,'GroupLink','2017-07-09 17:02:36','2017-07-09 13:23:44','Module Page','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,19,NULL,0),(13,'GroupLink','2017-07-09 17:02:35','2017-07-09 13:24:17','Google it fool','URL','https://www.google.com',NULL,NULL,1,NULL,NULL,0,0,NULL,0),(14,'Link','2017-07-09 14:12:53','2017-07-09 14:12:53','contact me!','Email',NULL,'simon@saltedherring.com',NULL,0,NULL,NULL,0,0,NULL,0),(15,'GroupLink','2017-07-09 14:21:03','2017-07-09 14:20:58','Virtual Machines','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(16,'GroupLink','2017-07-09 17:33:32','2017-07-09 17:33:31','Why Umbrellar','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(17,'GroupLink','2017-07-09 17:34:02','2017-07-09 17:33:53','Lorem ipsum','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,19,NULL,0),(18,'GroupLink','2017-07-09 17:34:25','2017-07-09 17:34:24','Ipsum Lorem','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,19,NULL,0),(19,'GroupLink','2017-07-09 17:34:47','2017-07-09 17:34:46','Another','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(20,'Link','2017-07-13 10:21:14','2017-07-09 17:36:51','Learn More','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,23,NULL,0),(21,'GroupLink','2017-07-13 13:14:37','2017-07-09 17:37:57','Virtual Machines','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,25,NULL,0),(22,'GroupLink','2017-07-09 17:38:16','2017-07-09 17:38:16','Containers','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(23,'GroupLink','2017-07-09 17:38:38','2017-07-09 17:38:37','Network','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(24,'GroupLink','2017-07-09 17:39:01','2017-07-09 17:39:00','Storage','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(25,'GroupLink','2017-07-09 17:39:16','2017-07-09 17:39:16','Functions','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(26,'GroupLink','2017-07-09 17:39:34','2017-07-09 17:39:33','App Service','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(27,'GroupLink','2017-07-09 17:40:14','2017-07-09 17:40:14','Go there','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(28,'GroupLink','2017-07-09 17:40:48','2017-07-09 17:40:47','App Service','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(29,'GroupLink','2017-07-09 17:41:06','2017-07-09 17:41:05','Web Apps','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(30,'GroupLink','2017-07-09 17:41:27','2017-07-09 17:41:27','Mobile Apps','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(31,'GroupLink','2017-07-09 17:41:44','2017-07-09 17:41:43','API Apps','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(32,'GroupLink','2017-07-09 17:42:23','2017-07-09 17:42:22','SQL Database','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(33,'GroupLink','2017-07-09 17:42:47','2017-07-09 17:42:42','MSQL Database','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(34,'GroupLink','2017-07-09 17:43:23','2017-07-09 17:43:22','Go there','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(35,'Link','2017-07-09 17:45:02','2017-07-09 17:45:02','Learn more','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(36,'GroupLink','2017-07-09 17:46:02','2017-07-09 17:46:02','Go there','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(37,'Link','2017-07-09 17:47:01','2017-07-09 17:47:01','Learn more','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(38,'Link','2017-07-09 17:48:48','2017-07-09 17:48:48','Learn more','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(39,'Link','2017-07-09 17:51:23','2017-07-09 17:51:23','Learn More','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(40,'GroupLink','2017-07-09 17:55:42','2017-07-09 17:55:41','Case Studies','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(41,'GroupLink','2017-07-09 17:56:01','2017-07-09 17:56:00','Videos','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(42,'GroupLink','2017-07-09 17:56:25','2017-07-09 17:56:25','Library','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(43,'GroupLink','2017-07-09 17:56:42','2017-07-09 17:56:41','Blog','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(44,'Link','2017-07-09 17:59:34','2017-07-09 17:59:34','Learn more','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(45,'Link','2017-07-10 15:34:06','2017-07-10 15:34:05','Home','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(46,'Link','2017-07-10 17:52:17','2017-07-10 17:52:17','Home','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(47,'Link',NULL,'2017-07-11 11:06:12',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,0,0,NULL,0),(48,'Link','2017-07-11 13:33:04','2017-07-11 11:12:20','Watch Video','YoutubeVideo',NULL,NULL,NULL,0,NULL,NULL,0,0,'Cha62JzF4BI',1),(49,'Link','2017-07-11 14:57:15','2017-07-11 14:57:15','Learn more','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(50,'Link','2017-07-11 15:01:15','2017-07-11 15:01:15','Learn more','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(51,'Link','2017-07-11 15:02:37','2017-07-11 15:02:37','Learn more','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(52,'Link','2017-07-11 15:11:04','2017-07-11 15:10:53','Learn More','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(53,'Link','2017-07-11 16:57:21','2017-07-11 16:57:13','Learn More','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(54,'Link','2017-07-13 11:21:29','2017-07-13 10:42:29','Learn More','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,24,NULL,0),(55,'Link','2017-07-13 13:19:01','2017-07-13 11:19:31','Learn more','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,25,NULL,0),(56,'Link','2017-07-13 22:25:43','2017-07-13 22:25:43','CTA Test','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,14,NULL,0),(57,'Link','2017-07-21 10:27:43','2017-07-21 10:27:43','get started','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(58,'Link','2017-08-08 18:26:25','2017-08-08 18:26:25','About Us','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,14,NULL,0),(59,'Link','2017-08-08 18:29:49','2017-08-08 18:29:49','New Content Page','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,22,NULL,0),(60,'Link','2017-08-08 18:47:53','2017-08-08 18:47:53','Module Page','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,19,NULL,0),(61,'Link','2017-08-08 18:59:08','2017-08-08 18:59:08','About Us','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,14,NULL,0),(62,'Link','2017-08-08 19:05:45','2017-08-08 19:05:45','Home','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(63,'LegalLink','2017-08-09 15:15:03','2017-08-09 15:15:03','Terms and Conditions','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,19,NULL,0),(64,'LegalLink','2017-08-09 15:16:08','2017-08-09 15:16:08','Privacy','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,14,NULL,0),(65,'FooterLink','2017-08-09 15:41:00','2017-08-09 15:40:25','About Us','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,14,NULL,0),(66,'FooterLink','2017-08-09 19:09:36','2017-08-09 15:40:44','Homex','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,13,NULL,0),(67,'Link','2017-08-11 15:54:50','2017-08-11 15:54:50','New Content Page','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,22,NULL,0),(68,'FooterLink','2017-08-11 18:00:33','2017-08-11 18:00:32','Umbrellar Cloud','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,23,NULL,0),(69,'Link','2017-08-11 18:54:29','2017-08-11 18:54:29','New Content Page','SiteTree',NULL,NULL,NULL,0,NULL,NULL,0,22,NULL,0);
/*!40000 ALTER TABLE `Link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LinkSection`
--

DROP TABLE IF EXISTS `LinkSection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LinkSection` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Slug` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `LinkID` int(11) NOT NULL DEFAULT '0',
  `HideTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkID` (`LinkID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LinkSection`
--

LOCK TABLES `LinkSection` WRITE;
/*!40000 ALTER TABLE `LinkSection` DISABLE KEYS */;
/*!40000 ALTER TABLE `LinkSection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Location`
--

DROP TABLE IF EXISTS `Location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Location` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Location') CHARACTER SET utf8 DEFAULT 'Location',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `PhysicalStreetAddress` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `PhysicalSuburb` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `PhysicalCity` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `PhysicalPostCode` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `PhysicalCountry` enum('New Zealand') CHARACTER SET utf8 DEFAULT 'New Zealand',
  `PostalStreetAddress` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `PostalSuburb` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `PostalCity` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `PostalPostCode` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `PostalCountry` enum('New Zealand') CHARACTER SET utf8 DEFAULT 'New Zealand',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ContactPageID` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `GMapLat` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `GMapLon` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `GMapHeading` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `GMapPitch` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ContactPageID` (`ContactPageID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Location`
--

LOCK TABLES `Location` WRITE;
/*!40000 ALTER TABLE `Location` DISABLE KEYS */;
INSERT INTO `Location` VALUES (1,'Location','2017-08-09 17:42:58','2017-08-09 16:09:21','3/78 Apollo Drive','Rosedale','Auckland','0632','New Zealand','P.O. Box 302829','North Harbour','Auckland','0751','New Zealand',1,15,1,'-36.7387971','174.7261565',NULL,NULL),(2,'Location','2017-08-09 17:42:58','2017-08-09 16:10:19','Unit 5-7 Sir Gil Simpson Drive','Canterbury Technology Park','Christchurch','8053','New Zealand','P.O. Box 25-129',NULL,'Christchurch','8053','New Zealand',2,15,2,'-43.492153388591035','172.55977140370487',NULL,NULL);
/*!40000 ALTER TABLE `Location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Location_Live`
--

DROP TABLE IF EXISTS `Location_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Location_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Location') CHARACTER SET utf8 DEFAULT 'Location',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `PhysicalStreetAddress` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `PhysicalSuburb` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `PhysicalCity` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `PhysicalPostCode` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `PhysicalCountry` enum('New Zealand') CHARACTER SET utf8 DEFAULT 'New Zealand',
  `PostalStreetAddress` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `PostalSuburb` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `PostalCity` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `PostalPostCode` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `PostalCountry` enum('New Zealand') CHARACTER SET utf8 DEFAULT 'New Zealand',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ContactPageID` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `GMapLat` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `GMapLon` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `GMapHeading` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `GMapPitch` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ContactPageID` (`ContactPageID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Location_Live`
--

LOCK TABLES `Location_Live` WRITE;
/*!40000 ALTER TABLE `Location_Live` DISABLE KEYS */;
INSERT INTO `Location_Live` VALUES (1,'Location','2017-08-09 16:09:21','2017-08-09 16:09:21','3/78 Apollo Drive','Rosedale','Auckland','0632','New Zealand','P.O. Box 302829','North Harbour','Auckland','0751','New Zealand',1,15,0,'-36.7387971','174.7261565',NULL,NULL),(2,'Location','2017-08-09 16:10:47','2017-08-09 16:10:19','Unit 5-7 Sir Gil Simpson Drive','Canterbury Technology Park','Christchurch','8053','New Zealand','P.O. Box 25-129',NULL,'Christchurch','8053','New Zealand',2,15,2,'-43.492153388591035','172.55977140370487',NULL,NULL);
/*!40000 ALTER TABLE `Location_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Location_versions`
--

DROP TABLE IF EXISTS `Location_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Location_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('Location') CHARACTER SET utf8 DEFAULT 'Location',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `PhysicalStreetAddress` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `PhysicalSuburb` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `PhysicalCity` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `PhysicalPostCode` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `PhysicalCountry` enum('New Zealand') CHARACTER SET utf8 DEFAULT 'New Zealand',
  `PostalStreetAddress` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `PostalSuburb` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `PostalCity` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `PostalPostCode` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `PostalCountry` enum('New Zealand') CHARACTER SET utf8 DEFAULT 'New Zealand',
  `ContactPageID` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `GMapLat` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `GMapLon` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `GMapHeading` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `GMapPitch` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ContactPageID` (`ContactPageID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Location_versions`
--

LOCK TABLES `Location_versions` WRITE;
/*!40000 ALTER TABLE `Location_versions` DISABLE KEYS */;
INSERT INTO `Location_versions` VALUES (1,1,1,1,3,3,'Location','2017-08-09 16:09:21','2017-08-09 16:09:21','3/78 Apollo Drive','Rosedale','Auckland','0632','New Zealand','P.O. Box 302829','North Harbour','Auckland','0751','New Zealand',15,0,'-36.7387971','174.7261565',NULL,NULL),(2,2,1,1,3,3,'Location','2017-08-09 16:10:19','2017-08-09 16:10:19','Unit 5-7 Sir Gil Simpson Drive','Canterbury Technology Park','Christchurch','8053','New Zealand','P.O. Box 25-129',NULL,'Christchurch','8053','New Zealand',15,0,'51.511165','-0.119774',NULL,NULL),(3,2,2,1,3,3,'Location','2017-08-09 16:10:47','2017-08-09 16:10:19','Unit 5-7 Sir Gil Simpson Drive','Canterbury Technology Park','Christchurch','8053','New Zealand','P.O. Box 25-129',NULL,'Christchurch','8053','New Zealand',15,2,'-43.492153388591035','172.55977140370487',NULL,NULL);
/*!40000 ALTER TABLE `Location_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LoginAttempt`
--

DROP TABLE IF EXISTS `LoginAttempt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LoginAttempt` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('LoginAttempt') CHARACTER SET utf8 DEFAULT 'LoginAttempt',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Status` enum('Success','Failure') CHARACTER SET utf8 DEFAULT 'Success',
  `IP` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LoginAttempt`
--

LOCK TABLES `LoginAttempt` WRITE;
/*!40000 ALTER TABLE `LoginAttempt` DISABLE KEYS */;
INSERT INTO `LoginAttempt` VALUES (1,'LoginAttempt','2017-07-03 09:27:38','2017-07-03 09:27:38','defaultadmin','Success','172.21.0.1',3),(2,'LoginAttempt','2017-07-10 17:27:56','2017-07-10 17:27:56','defaultadmin','Success','172.21.0.1',3),(3,'LoginAttempt','2017-07-10 17:29:48','2017-07-10 17:29:48',NULL,'Success','172.21.0.1',3),(4,'LoginAttempt','2017-07-13 17:49:00','2017-07-13 17:49:00','defaultadmin','Success','172.21.0.1',3),(5,'LoginAttempt','2017-07-18 10:55:05','2017-07-18 10:55:05','defaultadmin','Success','172.21.0.1',3),(6,'LoginAttempt','2017-07-28 10:13:33','2017-07-28 10:13:33','defaultadmin','Success','172.19.0.1',3),(7,'LoginAttempt','2017-08-08 18:05:40','2017-08-08 18:05:40','defaultadmin','Success','172.19.0.1',3),(8,'LoginAttempt','2017-08-11 14:21:17','2017-08-11 14:21:17','defaultadmin','Success','172.19.0.1',3);
/*!40000 ALTER TABLE `LoginAttempt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MegaMenuSection`
--

DROP TABLE IF EXISTS `MegaMenuSection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MegaMenuSection` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Slug` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `HideTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MegaMenuSection`
--

LOCK TABLES `MegaMenuSection` WRITE;
/*!40000 ALTER TABLE `MegaMenuSection` DISABLE KEYS */;
INSERT INTO `MegaMenuSection` VALUES (3,'Services','services',0);
/*!40000 ALTER TABLE `MegaMenuSection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Member`
--

DROP TABLE IF EXISTS `Member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Member` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Member') CHARACTER SET utf8 DEFAULT 'Member',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `FirstName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Surname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Email` varchar(254) CHARACTER SET utf8 DEFAULT NULL,
  `TempIDHash` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `TempIDExpired` datetime DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `RememberLoginToken` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `NumVisit` int(11) NOT NULL DEFAULT '0',
  `LastVisited` datetime DEFAULT NULL,
  `AutoLoginHash` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  `DateFormat` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `TimeFormat` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `Email` (`Email`),
  KEY `ClassName` (`ClassName`),
  KEY `AuthorID` (`AuthorID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Member`
--

LOCK TABLES `Member` WRITE;
/*!40000 ALTER TABLE `Member` DISABLE KEYS */;
INSERT INTO `Member` VALUES (3,'Member','2017-08-11 14:21:17','2017-06-29 21:32:28','Default Admin',NULL,'defaultadmin','1d161c3982f23016dd626e9a22a3ff2eb0f4737d','2017-08-14 14:21:17',NULL,NULL,13,'2017-08-13 23:25:06',NULL,NULL,NULL,NULL,NULL,NULL,'en_US',0,NULL,NULL,1);
/*!40000 ALTER TABLE `Member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MemberPassword`
--

DROP TABLE IF EXISTS `MemberPassword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MemberPassword` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('MemberPassword') CHARACTER SET utf8 DEFAULT 'MemberPassword',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Password` varchar(160) CHARACTER SET utf8 DEFAULT NULL,
  `Salt` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `PasswordEncryption` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `MemberID` (`MemberID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MemberPassword`
--

LOCK TABLES `MemberPassword` WRITE;
/*!40000 ALTER TABLE `MemberPassword` DISABLE KEYS */;
/*!40000 ALTER TABLE `MemberPassword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MenuCategory`
--

DROP TABLE IF EXISTS `MenuCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MenuCategory` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('MenuCategory') CHARACTER SET utf8 DEFAULT 'MenuCategory',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Footer` mediumtext CHARACTER SET utf8,
  `Introduction` mediumtext CHARACTER SET utf8,
  `Title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Slug` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `IconID` int(11) NOT NULL DEFAULT '0',
  `SectionID` int(11) NOT NULL DEFAULT '0',
  `CallToActionButtonID` int(11) NOT NULL DEFAULT '0',
  `HideTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `Theme` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `HideFromMenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `CategoryLinkID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `IconID` (`IconID`),
  KEY `SectionID` (`SectionID`),
  KEY `CallToActionButtonID` (`CallToActionButtonID`),
  KEY `ClassName` (`ClassName`),
  KEY `CategoryLinkID` (`CategoryLinkID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MenuCategory`
--

LOCK TABLES `MenuCategory` WRITE;
/*!40000 ALTER TABLE `MenuCategory` DISABLE KEYS */;
INSERT INTO `MenuCategory` VALUES (1,'MenuCategory','2017-07-09 17:28:58','2017-07-09 14:13:32','<p>Powered by Microsoft Azure</p>','Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. \r\nNulla vitae elit libero, a pharetra augue. ','Umbrellar Cloud','umbrellar-cloud',0,0,14,0,1,'deep-sky-blue',0,0),(2,'MenuCategory','2017-07-13 15:58:43','2017-07-09 17:37:14','<p>Powered by Microsoft Azure Stack</p>','Umbrellar Cloud Cras justo odio, dapibus ac facilisis in, egestas eget quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.','Umbrellar Cloud','umbrellar-cloud',0,3,20,0,4,'deep-sky-blue',0,19),(3,'MenuCategory','2017-07-13 15:58:43','2017-07-09 17:45:18',NULL,'Managed Compute donec id elit non mi porta gravida at eget metus.','Managed Compute','managed-compute',0,3,35,0,6,'bright-turquoise',0,0),(4,'MenuCategory','2017-07-13 15:58:43','2017-07-09 17:47:06',NULL,'Cloud Connect cras mattis consectetur purus sit amet fermentum.','Cloud Connect','cloud-connect',0,3,37,0,1,'spring-green',0,0),(5,'MenuCategory','2017-07-13 15:58:43','2017-07-09 17:49:00',NULL,'Pro Services vestibulum id ligula porta felis euismod semper.','Pro Services','pro-services',0,3,38,0,2,'pastel-green',0,0),(6,'MenuCategory','2017-07-13 15:58:43','2017-07-09 17:51:29',NULL,'Cloud Care Nullam quis risus eget urna mollis ornare vel eu leo.','Cloud Care','cloud-care',0,3,39,0,5,'spring-green',0,0),(7,'MenuCategory','2017-07-13 15:58:43','2017-07-12 18:15:37',NULL,NULL,'Another','another',0,3,0,0,3,'deep-sky-blue',0,0);
/*!40000 ALTER TABLE `MenuCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MenuGroup`
--

DROP TABLE IF EXISTS `MenuGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MenuGroup` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('MenuGroup') CHARACTER SET utf8 DEFAULT 'MenuGroup',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Slug` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CategoryID` int(11) NOT NULL DEFAULT '0',
  `DropDownID` int(11) NOT NULL DEFAULT '0',
  `HideTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `GroupLinkID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CategoryID` (`CategoryID`),
  KEY `DropDownID` (`DropDownID`),
  KEY `ClassName` (`ClassName`),
  KEY `GroupLinkID` (`GroupLinkID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MenuGroup`
--

LOCK TABLES `MenuGroup` WRITE;
/*!40000 ALTER TABLE `MenuGroup` DISABLE KEYS */;
INSERT INTO `MenuGroup` VALUES (1,'MenuGroup','2017-07-07 19:12:17','2017-07-07 19:09:02',0,'Unknown','unknown',0,0,0,0),(2,'MenuGroup','2017-07-09 17:26:36','2017-07-07 19:12:31',1,'Unknown','unknown',0,0,0,0),(3,'MenuGroup','2017-07-09 17:26:37','2017-07-09 13:18:30',2,'Xx','xx',0,0,0,0),(4,'MenuGroup','2017-07-09 17:28:47','2017-07-09 13:23:25',1,NULL,'page-0',0,0,1,0),(5,'MenuGroup','2017-07-09 16:50:37','2017-07-09 14:20:09',1,'Compute','compute',1,0,0,0),(6,'MenuGroup','2017-07-09 17:33:03','2017-07-09 17:33:02',1,NULL,'page-0',0,1,1,0),(7,'MenuGroup','2017-07-13 11:00:21','2017-07-09 17:37:41',1,'Compute','compute',2,0,0,24),(8,'MenuGroup','2017-07-09 17:40:00','2017-07-09 17:40:00',2,'Storage','storage',2,0,0,0),(9,'MenuGroup','2017-07-09 17:40:29','2017-07-09 17:40:28',3,'Apps','apps',2,0,0,0),(10,'MenuGroup','2017-07-09 17:42:01','2017-07-09 17:42:00',4,'Database','database',2,0,0,0),(11,'MenuGroup','2017-07-09 17:43:05','2017-07-09 17:43:04',5,'Key Vault','key-vault',2,0,0,0),(12,'MenuGroup','2017-07-09 17:45:43','2017-07-09 17:45:42',1,'Data Centres','data-centres',3,0,0,0),(13,'MenuGroup','2017-07-09 17:55:24','2017-07-09 17:55:23',1,NULL,'page-0',0,2,0,0),(14,'MenuGroup','2017-07-13 15:27:22','2017-07-13 15:26:53',1,'Group A','group-a',5,0,0,0),(15,'MenuGroup','2017-07-13 15:27:33','2017-07-13 15:27:32',2,'Group B','group-b',5,0,0,0);
/*!40000 ALTER TABLE `MenuGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MenuSection`
--

DROP TABLE IF EXISTS `MenuSection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MenuSection` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('MenuSection','DropDownSection','LinkSection','MegaMenuSection') CHARACTER SET utf8 DEFAULT 'MenuSection',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Slug` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `SortOrderID` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `HideTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Theme` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `HideFromMenu` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `DisplayAsLinkOnly` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`),
  KEY `SortOrderID` (`SortOrderID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MenuSection`
--

LOCK TABLES `MenuSection` WRITE;
/*!40000 ALTER TABLE `MenuSection` DISABLE KEYS */;
INSERT INTO `MenuSection` VALUES (1,'DropDownSection','2017-07-09 18:46:28','2017-07-07 19:03:53','Our Vision','our-vision',0,1,0,'bright-turquoise',0,0),(2,'DropDownSection','2017-07-09 18:00:03','2017-07-09 13:22:41','Knowledge','knowledge',0,4,0,'spring-green',0,0),(3,'MegaMenuSection','2017-07-09 18:00:03','2017-07-09 13:39:07','Services','services',0,2,0,NULL,0,0),(4,'DropDownSection','2017-07-09 18:00:03','2017-07-09 17:59:43','Pricing','pricing',0,3,0,NULL,0,0);
/*!40000 ALTER TABLE `MenuSection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Module`
--

DROP TABLE IF EXISTS `Module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Module` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Module','AssistanceModule','BlockModule','ClientsModule','ContentModule','FeaturesModule','GridModule','CallToActionHeaderModule','CallToActionPromoModule','GalleryModule','GuidanceModule','PagePromoModule','PromoModule','StatsModule','TableModule') CHARACTER SET utf8 DEFAULT 'Module',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `Theme` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Module`
--

LOCK TABLES `Module` WRITE;
/*!40000 ALTER TABLE `Module` DISABLE KEYS */;
INSERT INTO `Module` VALUES (1,'ContentModule','2017-06-30 11:08:21','2017-06-30 09:25:22',3,NULL),(2,'FeaturesModule','2017-06-30 09:27:57','2017-06-30 09:27:57',1,NULL),(3,'GuidanceModule','2017-06-30 10:03:22','2017-06-30 10:03:11',2,NULL),(7,'ContentModule','2017-07-10 17:51:15','2017-07-02 13:24:01',10,'black-squeeze'),(8,'FeaturesModule','2017-07-06 12:01:01','2017-07-02 15:54:11',13,'module-theme-white'),(9,'GuidanceModule','2017-07-05 14:10:36','2017-07-02 16:31:57',8,NULL),(10,'GridModule','2017-07-12 18:22:35','2017-07-03 09:34:20',20,'black-squeeze'),(11,'ClientsModule','2017-07-10 18:08:26','2017-07-03 09:41:18',3,NULL),(13,'ContentModule','2017-07-10 17:49:57','2017-07-03 18:18:13',4,NULL),(14,'TableModule','2017-07-10 17:29:55','2017-07-04 11:49:28',19,'black-squeeze'),(15,'AssistanceModule','2017-07-10 14:42:55','2017-07-05 09:56:15',16,'deep-sky-blue'),(16,'GridModule','2017-07-11 15:15:03','2017-07-11 14:55:59',3,NULL),(17,'GuidanceModule','2017-07-11 16:23:41','2017-07-11 15:13:10',4,NULL),(18,'ClientsModule','2017-07-11 15:18:23','2017-07-11 15:18:23',1,NULL),(20,'PagePromoModule','2017-07-11 17:13:27','2017-07-11 16:42:02',4,'black-squeeze'),(21,'PromoModule','2017-07-11 18:12:02','2017-07-11 16:56:55',10,NULL),(22,'PagePromoModule','2017-07-18 11:35:27','2017-07-13 10:24:13',4,'white'),(23,'GridModule','2017-07-13 10:40:06','2017-07-13 10:35:30',4,'black-squeeze'),(24,'GridModule','2017-07-13 11:19:53','2017-07-13 11:10:14',2,NULL),(26,'CallToActionPromoModule','2017-07-13 18:11:29','2017-07-13 17:39:30',10,'sherpa-blue'),(27,'CallToActionHeaderModule','2017-07-21 11:18:54','2017-07-21 10:28:31',12,'spring-green'),(28,'StatsModule','2017-07-21 14:24:51','2017-07-21 14:24:51',1,NULL),(30,'GuidanceModule','2017-07-26 13:49:50','2017-07-26 13:49:50',1,NULL),(31,'GuidanceModule','2017-07-26 13:51:04','2017-07-26 13:51:04',1,NULL),(32,'FeaturesModule','2017-07-26 13:51:05','2017-07-26 13:51:05',1,'module-theme-white'),(33,'ContentModule','2017-07-26 13:51:05','2017-07-26 13:51:05',1,'black-squeeze'),(34,'ContentModule','2017-07-26 13:51:06','2017-07-26 13:51:06',1,NULL),(35,'GridModule','2017-07-26 13:51:06','2017-07-26 13:51:06',1,'black-squeeze'),(36,'ClientsModule','2017-07-26 13:51:07','2017-07-26 13:51:07',1,NULL),(37,'TableModule','2017-07-26 13:51:07','2017-07-26 13:51:07',1,'black-squeeze'),(38,'GuidanceModule','2017-07-26 13:52:42','2017-07-26 13:52:42',1,NULL),(39,'FeaturesModule','2017-07-26 13:52:42','2017-07-26 13:52:42',1,'module-theme-white'),(40,'ContentModule','2017-07-26 13:52:43','2017-07-26 13:52:43',1,'black-squeeze'),(41,'ContentModule','2017-07-26 13:52:43','2017-07-26 13:52:43',1,NULL),(42,'GridModule','2017-07-26 13:52:44','2017-07-26 13:52:44',1,'black-squeeze'),(43,'ClientsModule','2017-07-26 13:52:44','2017-07-26 13:52:44',1,NULL),(44,'TableModule','2017-07-26 13:52:45','2017-07-26 13:52:45',1,'black-squeeze'),(45,'GuidanceModule','2017-07-26 13:58:41','2017-07-26 13:57:03',3,NULL),(46,'FeaturesModule','2017-07-26 13:57:04','2017-07-26 13:57:03',2,'module-theme-white'),(47,'ContentModule','2017-07-26 13:57:05','2017-07-26 13:57:04',2,'black-squeeze'),(48,'ContentModule','2017-07-26 13:57:05','2017-07-26 13:57:05',2,NULL),(49,'GridModule','2017-07-26 13:57:06','2017-07-26 13:57:06',2,'black-squeeze'),(50,'ClientsModule','2017-07-26 13:57:07','2017-07-26 13:57:06',2,NULL),(51,'TableModule','2017-07-26 13:57:07','2017-07-26 13:57:07',1,'black-squeeze'),(52,'GuidanceModule','2017-07-26 14:05:56','2017-07-26 14:05:56',1,NULL),(53,'GuidanceModule','2017-07-26 14:06:09','2017-07-26 14:06:09',1,NULL),(54,'GuidanceModule','2017-07-26 14:08:15','2017-07-26 14:08:15',1,NULL),(55,'FeaturesModule','2017-07-26 14:08:16','2017-07-26 14:08:16',1,'module-theme-white'),(56,'ContentModule','2017-07-26 14:08:16','2017-07-26 14:08:16',1,'black-squeeze'),(57,'ContentModule','2017-07-26 14:08:17','2017-07-26 14:08:17',1,NULL),(58,'GridModule','2017-07-26 14:08:17','2017-07-26 14:08:17',1,'black-squeeze'),(59,'ClientsModule','2017-07-26 14:08:18','2017-07-26 14:08:18',1,NULL),(60,'TableModule','2017-07-26 14:08:18','2017-07-26 14:08:18',1,'black-squeeze'),(61,'GuidanceModule','2017-07-26 14:14:06','2017-07-26 14:14:06',1,NULL),(62,'FeaturesModule','2017-07-26 14:14:07','2017-07-26 14:14:07',1,'module-theme-white'),(63,'ContentModule','2017-07-26 14:14:07','2017-07-26 14:14:07',1,'black-squeeze'),(64,'ContentModule','2017-07-26 14:14:08','2017-07-26 14:14:08',1,NULL),(65,'GridModule','2017-07-26 14:14:08','2017-07-26 14:14:08',1,'black-squeeze'),(66,'ClientsModule','2017-07-26 14:14:09','2017-07-26 14:14:09',1,NULL),(67,'TableModule','2017-07-26 14:14:09','2017-07-26 14:14:09',1,'black-squeeze'),(68,'GuidanceModule','2017-07-26 14:22:13','2017-07-26 14:22:13',1,NULL),(69,'FeaturesModule','2017-07-26 14:22:14','2017-07-26 14:22:14',1,'module-theme-white'),(70,'ContentModule','2017-07-26 14:22:14','2017-07-26 14:22:14',1,'black-squeeze'),(71,'ContentModule','2017-07-26 14:22:15','2017-07-26 14:22:15',1,NULL),(72,'GridModule','2017-07-26 14:22:15','2017-07-26 14:22:15',1,'black-squeeze'),(73,'ClientsModule','2017-07-26 14:22:16','2017-07-26 14:22:16',1,NULL),(74,'TableModule','2017-07-26 14:22:16','2017-07-26 14:22:16',1,'black-squeeze'),(75,'GuidanceModule','2017-07-26 14:23:35','2017-07-26 14:23:35',1,NULL),(76,'FeaturesModule','2017-07-26 14:23:36','2017-07-26 14:23:36',1,'module-theme-white'),(77,'ContentModule','2017-07-26 14:23:36','2017-07-26 14:23:36',1,'black-squeeze'),(78,'ContentModule','2017-07-26 14:23:37','2017-07-26 14:23:37',1,NULL),(79,'GridModule','2017-07-26 14:23:37','2017-07-26 14:23:37',1,'black-squeeze'),(80,'ClientsModule','2017-07-26 14:23:38','2017-07-26 14:23:38',1,NULL),(81,'TableModule','2017-07-26 14:23:38','2017-07-26 14:23:38',1,'black-squeeze'),(82,'GuidanceModule','2017-07-26 14:27:41','2017-07-26 14:27:41',1,NULL),(83,'FeaturesModule','2017-07-26 14:27:41','2017-07-26 14:27:41',1,'module-theme-white'),(84,'ContentModule','2017-07-26 14:27:42','2017-07-26 14:27:42',1,'black-squeeze'),(85,'ContentModule','2017-07-26 14:27:42','2017-07-26 14:27:42',1,NULL),(86,'GridModule','2017-07-26 14:27:43','2017-07-26 14:27:43',1,'black-squeeze'),(87,'ClientsModule','2017-07-26 14:27:43','2017-07-26 14:27:43',1,NULL),(88,'TableModule','2017-07-26 14:27:44','2017-07-26 14:27:44',1,'black-squeeze'),(89,'GuidanceModule','2017-07-26 14:30:11','2017-07-26 14:30:11',1,NULL),(90,'GuidanceModule','2017-07-26 14:32:16','2017-07-26 14:32:16',1,NULL),(91,'GuidanceModule','2017-07-26 14:33:01','2017-07-26 14:33:01',1,NULL),(92,'GuidanceModule','2017-07-26 14:33:31','2017-07-26 14:33:31',1,NULL),(93,'GuidanceModule','2017-07-26 14:33:39','2017-07-26 14:33:39',1,NULL),(94,'GuidanceModule','2017-07-26 14:34:38','2017-07-26 14:34:38',1,NULL),(95,'GuidanceModule','2017-07-26 14:36:01','2017-07-26 14:36:01',1,NULL),(96,'FeaturesModule','2017-07-26 14:36:01','2017-07-26 14:36:01',1,'module-theme-white'),(97,'GuidanceModule','2017-07-26 14:37:30','2017-07-26 14:37:30',1,NULL),(98,'FeaturesModule','2017-07-26 14:37:31','2017-07-26 14:37:31',1,'module-theme-white'),(99,'ContentModule','2017-07-26 14:37:31','2017-07-26 14:37:31',1,'black-squeeze'),(100,'ContentModule','2017-07-26 14:37:32','2017-07-26 14:37:32',1,NULL),(101,'GridModule','2017-07-26 14:37:33','2017-07-26 14:37:33',1,'black-squeeze'),(102,'ClientsModule','2017-07-26 14:37:34','2017-07-26 14:37:34',1,NULL),(103,'TableModule','2017-07-26 14:37:34','2017-07-26 14:37:34',1,'black-squeeze');
/*!40000 ALTER TABLE `Module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ModuleBlock`
--

DROP TABLE IF EXISTS `ModuleBlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ModuleBlock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ModuleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ModuleID` (`ModuleID`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ModuleBlock`
--

LOCK TABLES `ModuleBlock` WRITE;
/*!40000 ALTER TABLE `ModuleBlock` DISABLE KEYS */;
INSERT INTO `ModuleBlock` VALUES (6,7),(7,7),(8,8),(9,8),(10,9),(11,10),(12,10),(13,10),(14,11),(15,11),(16,8),(17,8),(18,8),(19,10),(20,13),(21,13),(22,16),(23,16),(24,16),(25,16),(26,18),(27,18),(28,18),(29,18),(30,18),(31,23),(32,24),(52,96),(51,96),(50,96),(49,96),(48,96),(38,7),(39,7),(40,13),(41,13),(42,10),(43,10),(44,10),(45,10),(46,11),(47,11),(53,98),(54,98),(55,98),(56,98),(57,98),(58,99),(59,99),(60,99),(61,99),(62,100),(63,100),(64,100),(65,100),(66,101),(67,101),(68,101),(69,101),(70,101),(71,101),(72,101),(73,101),(74,102),(75,102),(76,102),(77,102);
/*!40000 ALTER TABLE `ModuleBlock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ModuleBlock_Live`
--

DROP TABLE IF EXISTS `ModuleBlock_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ModuleBlock_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ModuleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ModuleID` (`ModuleID`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ModuleBlock_Live`
--

LOCK TABLES `ModuleBlock_Live` WRITE;
/*!40000 ALTER TABLE `ModuleBlock_Live` DISABLE KEYS */;
INSERT INTO `ModuleBlock_Live` VALUES (6,7),(7,7),(8,8),(9,8),(10,9),(11,10),(12,10),(13,10),(14,11),(15,11),(16,8),(17,8),(18,8),(19,10),(20,13),(21,13),(22,16),(23,16),(24,16),(25,16),(26,18),(27,18),(28,18),(29,18),(30,18),(31,23),(32,24),(52,96),(51,96),(50,96),(49,96),(48,96),(38,47),(39,47),(40,48),(41,48),(42,49),(43,49),(44,49),(45,49),(46,50),(47,50),(53,98),(54,98),(55,98),(56,98),(57,98),(58,99),(59,99),(60,99),(61,99),(62,100),(63,100),(64,100),(65,100),(66,101),(67,101),(68,101),(69,101),(70,101),(71,101),(72,101),(73,101),(74,102),(75,102),(76,102),(77,102);
/*!40000 ALTER TABLE `ModuleBlock_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ModuleBlock_versions`
--

DROP TABLE IF EXISTS `ModuleBlock_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ModuleBlock_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ModuleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `ModuleID` (`ModuleID`)
) ENGINE=MyISAM AUTO_INCREMENT=259 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ModuleBlock_versions`
--

LOCK TABLES `ModuleBlock_versions` WRITE;
/*!40000 ALTER TABLE `ModuleBlock_versions` DISABLE KEYS */;
INSERT INTO `ModuleBlock_versions` VALUES (12,6,1,7),(13,6,2,7),(14,6,3,7),(15,6,4,7),(16,6,5,7),(17,6,6,7),(18,6,7,7),(19,6,8,7),(20,6,9,7),(21,6,10,7),(22,6,11,7),(23,7,1,7),(24,7,2,7),(25,7,3,7),(26,7,4,7),(27,8,1,8),(28,8,2,8),(29,8,3,8),(30,8,4,8),(31,8,5,8),(32,8,6,8),(33,8,7,8),(34,8,8,8),(35,8,9,8),(36,9,1,8),(37,9,2,8),(38,10,1,9),(39,10,2,9),(40,10,3,9),(41,11,1,10),(42,11,2,10),(43,11,3,10),(44,11,4,10),(45,11,5,10),(46,11,6,10),(47,11,7,10),(48,11,8,10),(49,11,9,10),(50,11,10,10),(51,12,1,10),(52,12,2,10),(53,12,3,10),(54,13,1,10),(55,13,2,10),(56,13,3,10),(57,12,4,10),(58,12,5,10),(59,14,1,11),(60,14,2,11),(61,14,3,11),(62,14,4,11),(63,15,1,11),(64,15,2,11),(65,15,3,11),(66,15,4,11),(67,15,5,11),(68,10,4,9),(69,10,5,9),(70,16,1,8),(71,16,2,8),(72,17,1,8),(73,17,2,8),(74,18,1,8),(75,18,2,8),(76,18,3,8),(77,6,12,7),(78,6,13,7),(79,7,5,7),(80,7,6,7),(81,11,11,10),(82,11,12,10),(83,19,1,10),(84,20,1,13),(85,20,2,13),(86,20,3,13),(87,21,1,13),(88,21,2,13),(89,21,3,13),(90,20,4,13),(91,20,5,13),(92,22,1,16),(93,22,2,16),(94,22,3,16),(95,23,1,16),(96,24,1,16),(97,25,1,16),(98,26,1,18),(99,26,2,18),(100,26,3,18),(101,26,4,18),(102,26,5,18),(103,27,1,18),(104,27,2,18),(105,27,3,18),(106,28,1,18),(107,28,2,18),(108,28,3,18),(109,29,1,18),(110,29,2,18),(111,29,3,18),(112,30,1,18),(113,30,2,18),(114,30,3,18),(115,31,1,23),(116,31,2,23),(117,31,3,23),(118,32,1,24),(119,32,2,24),(120,32,3,24),(121,32,4,24),(122,32,5,24),(123,22,4,16),(124,22,5,16),(125,22,6,16),(126,22,7,16),(127,22,8,16),(128,22,9,16),(129,22,10,16),(130,22,11,16),(131,22,12,16),(132,22,13,16),(133,22,14,16),(134,22,15,16),(145,38,1,7),(146,38,2,47),(147,39,1,7),(148,39,2,47),(149,40,1,13),(150,40,2,48),(151,41,1,13),(152,41,2,48),(153,42,1,10),(154,42,2,49),(155,43,1,10),(156,43,2,49),(157,44,1,10),(158,44,2,49),(159,45,1,10),(160,45,2,49),(161,46,1,11),(162,46,2,50),(163,47,1,11),(164,47,2,50),(165,48,1,8),(166,48,2,96),(167,48,3,96),(168,49,1,8),(169,49,2,96),(170,49,3,96),(171,50,1,8),(172,50,2,96),(173,50,3,96),(174,51,1,8),(175,51,2,96),(176,51,3,96),(177,52,1,8),(178,52,2,96),(179,52,3,96),(180,53,1,8),(181,53,2,98),(182,53,3,98),(183,54,1,8),(184,54,2,98),(185,54,3,98),(186,55,1,8),(187,55,2,98),(188,55,3,98),(189,56,1,8),(190,56,2,98),(191,56,3,98),(192,57,1,8),(193,57,2,98),(194,57,3,98),(195,58,1,7),(196,58,2,99),(197,58,3,99),(198,59,1,7),(199,59,2,99),(200,59,3,99),(201,60,1,7),(202,60,2,99),(203,60,3,99),(204,61,1,7),(205,61,2,99),(206,61,3,99),(207,62,1,13),(208,62,2,100),(209,62,3,100),(210,63,1,13),(211,63,2,100),(212,63,3,100),(213,64,1,13),(214,64,2,100),(215,64,3,100),(216,65,1,13),(217,65,2,100),(218,65,3,100),(219,64,4,100),(220,65,4,100),(221,66,1,10),(222,66,2,101),(223,66,3,101),(224,67,1,10),(225,67,2,101),(226,67,3,101),(227,68,1,10),(228,68,2,101),(229,68,3,101),(230,69,1,10),(231,69,2,101),(232,69,3,101),(233,70,1,10),(234,70,2,101),(235,70,3,101),(236,71,1,10),(237,71,2,101),(238,71,3,101),(239,72,1,10),(240,72,2,101),(241,72,3,101),(242,73,1,10),(243,73,2,101),(244,73,3,101),(245,74,1,11),(246,74,2,102),(247,74,3,102),(248,75,1,11),(249,75,2,102),(250,75,3,102),(251,76,1,11),(252,76,2,102),(253,76,3,102),(254,77,1,11),(255,77,2,102),(256,77,3,102),(257,53,4,98),(258,53,5,98);
/*!40000 ALTER TABLE `ModuleBlock_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ModulePage`
--

DROP TABLE IF EXISTS `ModulePage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ModulePage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ShowAssistanceModule` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HeaderID` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `UsePageTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Introduction` mediumtext CHARACTER SET utf8,
  `HeroImageID` int(11) NOT NULL DEFAULT '0',
  `HeaderTitle` mediumtext CHARACTER SET utf8,
  `TitleTags` enum('h1','h2','p','span') CHARACTER SET utf8 DEFAULT 'h1',
  `LogoID` int(11) NOT NULL DEFAULT '0',
  `HeaderLogoID` int(11) NOT NULL DEFAULT '0',
  `PageColour` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `HeaderID` (`HeaderID`),
  KEY `HeroImageID` (`HeroImageID`),
  KEY `LogoID` (`LogoID`),
  KEY `HeaderLogoID` (`HeaderLogoID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ModulePage`
--

LOCK TABLES `ModulePage` WRITE;
/*!40000 ALTER TABLE `ModulePage` DISABLE KEYS */;
INSERT INTO `ModulePage` VALUES (13,0,0,NULL,0,NULL,0,'Empowering<br>\r\n<b>NZ Tech.</b>','h1',0,0,'spring-green'),(14,0,0,NULL,0,NULL,0,NULL,'h1',0,0,'deep-sky-blue'),(19,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green'),(23,0,0,NULL,0,NULL,0,'Umbrellar Could services are...\r\nDolor Condimentum Quam\r\nVulputate Justo Lorem Amet Adipiscing','h1',0,0,'deep-sky-blue'),(24,0,0,NULL,0,NULL,0,'Compute \r\nServices','h1',0,0,'deep-sky-blue'),(25,0,0,NULL,1,NULL,34,NULL,'h1',0,0,'deep-sky-blue'),(48,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green');
/*!40000 ALTER TABLE `ModulePage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ModulePage_Live`
--

DROP TABLE IF EXISTS `ModulePage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ModulePage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ShowAssistanceModule` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HeaderID` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `UsePageTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Introduction` mediumtext CHARACTER SET utf8,
  `HeroImageID` int(11) NOT NULL DEFAULT '0',
  `HeaderTitle` mediumtext CHARACTER SET utf8,
  `TitleTags` enum('h1','h2','p','span') CHARACTER SET utf8 DEFAULT 'h1',
  `LogoID` int(11) NOT NULL DEFAULT '0',
  `HeaderLogoID` int(11) NOT NULL DEFAULT '0',
  `PageColour` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `HeaderID` (`HeaderID`),
  KEY `HeroImageID` (`HeroImageID`),
  KEY `LogoID` (`LogoID`),
  KEY `HeaderLogoID` (`HeaderLogoID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ModulePage_Live`
--

LOCK TABLES `ModulePage_Live` WRITE;
/*!40000 ALTER TABLE `ModulePage_Live` DISABLE KEYS */;
INSERT INTO `ModulePage_Live` VALUES (13,0,0,NULL,0,NULL,0,'Empowering<br>\r\n<b>NZ Tech.</b>','h1',0,0,'spring-green'),(14,0,0,NULL,0,NULL,0,NULL,'h1',0,0,'deep-sky-blue'),(19,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green'),(23,0,0,NULL,0,NULL,0,'Umbrellar Could services are...\r\nDolor Condimentum Quam\r\nVulputate Justo Lorem Amet Adipiscing','h1',0,0,'deep-sky-blue'),(24,0,0,NULL,0,NULL,0,'Compute \r\nServices','h1',0,0,'deep-sky-blue'),(25,0,0,NULL,1,NULL,34,NULL,'h1',0,0,'deep-sky-blue');
/*!40000 ALTER TABLE `ModulePage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ModulePage_Modules`
--

DROP TABLE IF EXISTS `ModulePage_Modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ModulePage_Modules` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ModulePageID` int(11) NOT NULL DEFAULT '0',
  `ModuleID` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ModulePageID` (`ModulePageID`),
  KEY `ModuleID` (`ModuleID`)
) ENGINE=InnoDB AUTO_INCREMENT=324 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ModulePage_Modules`
--

LOCK TABLES `ModulePage_Modules` WRITE;
/*!40000 ALTER TABLE `ModulePage_Modules` DISABLE KEYS */;
INSERT INTO `ModulePage_Modules` VALUES (7,19,7,3),(8,19,8,2),(9,19,9,1),(10,19,10,5),(11,19,11,6),(12,19,12,0),(13,19,13,4),(14,19,14,7),(15,13,16,1),(16,13,17,2),(17,13,18,4),(18,13,20,5),(19,23,22,1),(20,23,23,2),(21,24,24,1),(22,13,25,5),(23,13,26,6),(24,13,27,7),(25,13,28,3),(26,29,9,3),(27,29,8,2),(28,29,7,1),(29,29,13,6),(30,29,10,4),(31,29,11,5),(32,29,14,7),(33,19,29,8),(34,29,29,8),(35,30,9,3),(36,30,8,2),(37,30,7,1),(38,30,13,6),(39,30,10,4),(40,30,11,5),(41,30,14,7),(44,30,30,8),(45,31,9,3),(46,31,8,2),(47,31,7,1),(48,31,13,6),(49,31,10,4),(50,31,11,5),(51,31,14,7),(54,31,31,8),(57,31,32,9),(60,31,33,10),(63,31,34,11),(66,31,35,12),(69,31,36,13),(72,31,37,14),(81,32,38,1),(83,32,39,2),(85,32,40,3),(87,32,41,4),(89,32,42,5),(91,32,43,6),(93,32,44,7),(102,33,45,1),(104,33,46,2),(106,33,47,3),(108,33,48,4),(110,33,49,5),(112,33,50,6),(114,33,51,7),(123,34,52,0),(132,35,53,0),(141,36,54,1),(143,36,55,2),(145,36,56,3),(147,36,57,4),(149,36,58,5),(151,36,59,6),(153,36,60,7),(162,37,61,1),(164,37,62,2),(166,37,63,3),(168,37,64,4),(170,37,65,5),(172,37,66,6),(174,37,67,7),(183,38,68,1),(185,38,69,2),(187,38,70,3),(189,38,71,4),(191,38,72,5),(193,38,73,6),(195,38,74,7),(204,39,75,1),(206,39,76,2),(208,39,77,3),(210,39,78,4),(212,39,79,5),(214,39,80,6),(216,39,81,7),(225,40,82,1),(227,40,83,2),(229,40,84,3),(231,40,85,4),(233,40,86,5),(235,40,87,6),(237,40,88,7),(246,41,89,0),(255,42,90,0),(264,43,91,0),(273,44,92,0),(282,45,93,0),(291,46,94,0),(300,47,95,0),(302,47,96,0),(311,48,97,1),(313,48,98,2),(315,48,99,3),(317,48,100,4),(319,48,101,5),(321,48,102,6),(323,48,103,7);
/*!40000 ALTER TABLE `ModulePage_Modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ModulePage_versions`
--

DROP TABLE IF EXISTS `ModulePage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ModulePage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ShowAssistanceModule` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HeaderID` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `UsePageTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Introduction` mediumtext CHARACTER SET utf8,
  `HeroImageID` int(11) NOT NULL DEFAULT '0',
  `HeaderTitle` mediumtext CHARACTER SET utf8,
  `TitleTags` enum('h1','h2','p','span') CHARACTER SET utf8 DEFAULT 'h1',
  `LogoID` int(11) NOT NULL DEFAULT '0',
  `HeaderLogoID` int(11) NOT NULL DEFAULT '0',
  `PageColour` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `HeaderID` (`HeaderID`),
  KEY `HeroImageID` (`HeroImageID`),
  KEY `LogoID` (`LogoID`),
  KEY `HeaderLogoID` (`HeaderLogoID`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ModulePage_versions`
--

LOCK TABLES `ModulePage_versions` WRITE;
/*!40000 ALTER TABLE `ModulePage_versions` DISABLE KEYS */;
INSERT INTO `ModulePage_versions` VALUES (2,19,2,0,0,NULL,0,NULL,0,NULL,'h1',0,0,NULL),(3,19,3,0,0,NULL,0,'<p>Maecenas sed diam eget risus varius blandit sit amet non magna. Maecenas sed diam eget risus varius blandit sit amet non magna. Curabitur blandit tempus porttitor. Donec id elit non mi porta gravida at eget metus. Nullam quis risus eget urna mollis ornare vel eu leo. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Maecenas faucibus mollis interdum. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Nullam quis risus eget urna mollis ornare vel eu leo. Nullam id dolor id nibh ultricies vehicula ut id elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Nulla vitae elit libero, a pharetra augue. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Nulla vitae elit libero, a pharetra augue. Sed posuere consectetur est at lobortis. Sed posuere consectetur est at lobortis. Curabitur blandit tempus porttitor. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Donec id elit non mi porta gravida at eget metus. Maecenas faucibus mollis interdum. Donec id elit non mi porta gravida at eget metus.</p>',0,'This is the page title','h1',0,0,NULL),(4,19,4,0,0,NULL,0,NULL,0,'This is the page title','h1',0,0,NULL),(5,19,5,0,0,NULL,0,NULL,0,'This is the page title','h1',0,6,NULL),(6,19,6,0,0,NULL,0,NULL,2,'This is the page title','h1',0,6,NULL),(7,19,7,0,0,NULL,1,NULL,2,'This is the page title','h1',0,6,NULL),(8,19,8,0,0,NULL,1,NULL,2,'This is the page title','h1',0,6,NULL),(9,19,9,0,0,NULL,0,NULL,2,'This is the page title','h1',0,6,NULL),(10,19,10,0,0,NULL,0,NULL,0,'This is the page title','h1',0,6,NULL),(11,19,11,0,0,NULL,0,NULL,0,'This is the page title','h1',0,6,'bright-turquoise'),(12,19,12,0,0,NULL,0,NULL,0,'This is the page title','h1',0,6,'deep-sky-blue'),(13,19,13,0,0,NULL,0,NULL,0,'This is the page title','h1',0,6,'bright-turquoise'),(14,19,14,0,0,NULL,0,NULL,0,'This is the page title','h1',0,6,'spring-green'),(15,19,15,0,0,NULL,0,NULL,0,'This is the page title','h1',0,13,'spring-green'),(16,19,16,0,0,NULL,0,NULL,0,'Our professional Services are...','h1',0,13,'spring-green'),(17,19,17,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green'),(18,19,18,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green'),(19,19,19,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green'),(20,19,20,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green'),(21,19,21,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green'),(22,19,22,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green'),(23,13,3,0,0,NULL,0,NULL,0,'Empowering\r\n<b>NZ Tech.</b>','h1',0,0,NULL),(24,13,4,0,0,NULL,0,NULL,0,'Empowering\r\n<b>NZ Tech.</b>','h1',0,0,'bright-turquoise'),(25,13,5,0,0,NULL,0,NULL,0,'Empowering<br>\r\n<b>NZ Tech.</b>','h1',0,0,'bright-turquoise'),(26,13,6,0,0,NULL,0,NULL,0,'Empowering<br>\r\n<b>NZ Tech.</b>','h1',0,0,'bright-turquoise'),(27,13,7,0,0,NULL,0,NULL,0,'Empowering<br>\r\n<b>NZ Tech.</b>','h1',0,0,'bright-turquoise'),(28,13,8,0,0,NULL,0,NULL,0,'Empowering<br>\r\n<b>NZ Tech.</b>','h1',0,0,'bright-turquoise'),(29,13,9,0,0,NULL,0,NULL,0,'Empowering<br>\r\n<b>NZ Tech.</b>','h1',0,0,'bright-turquoise'),(30,23,1,0,0,NULL,0,NULL,0,NULL,'h1',0,0,NULL),(31,23,2,0,0,NULL,0,NULL,0,'Umbrellar Could services are...\r\nDolor Condimentum Quam\r\nVulputate Justo Lorem Amet Adipiscing','h1',0,0,'deep-sky-blue'),(32,24,1,0,0,NULL,0,NULL,0,NULL,'h1',0,0,NULL),(33,24,2,0,0,NULL,0,NULL,0,NULL,'h1',0,0,NULL),(34,24,3,0,0,NULL,0,NULL,0,NULL,'h1',0,0,'deep-sky-blue'),(35,24,4,0,0,NULL,0,NULL,0,NULL,'h1',0,0,'deep-sky-blue'),(36,24,5,0,0,NULL,0,NULL,0,NULL,'h1',0,0,'pastel-green'),(37,24,6,0,0,NULL,0,NULL,0,NULL,'h1',0,0,'deep-sky-blue'),(38,24,7,0,0,NULL,0,NULL,0,'Compute \r\nServices','h1',0,0,'deep-sky-blue'),(39,24,8,0,0,NULL,0,NULL,0,'Compute \r\nServices','h1',0,0,'deep-sky-blue'),(40,24,9,0,0,NULL,0,NULL,0,'Compute \r\nServices','h1',0,0,'deep-sky-blue'),(41,25,1,0,0,NULL,0,NULL,0,NULL,'h1',0,0,'deep-sky-blue'),(42,25,2,0,0,NULL,0,NULL,0,NULL,'h1',0,0,'deep-sky-blue'),(43,25,3,0,0,NULL,1,NULL,0,NULL,'h1',0,0,'deep-sky-blue'),(44,25,4,0,0,NULL,1,NULL,34,NULL,'h1',0,0,'deep-sky-blue'),(45,13,10,0,0,NULL,0,NULL,0,'Empowering<br>\r\n<b>NZ Tech.</b>','h1',0,0,'spring-green'),(46,29,1,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green'),(47,19,23,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green'),(48,30,1,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green'),(49,31,1,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green'),(50,32,1,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green'),(51,33,1,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green'),(52,33,2,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'deep-sky-blue'),(53,33,3,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'deep-sky-blue'),(54,34,1,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green'),(55,35,1,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green'),(56,36,1,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green'),(57,37,1,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green'),(58,38,1,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green'),(59,39,1,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green'),(60,40,1,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green'),(61,41,1,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green'),(62,42,1,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green'),(63,43,1,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green'),(64,44,1,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green'),(65,45,1,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green'),(66,46,1,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green'),(67,47,1,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green'),(68,48,1,0,0,NULL,0,NULL,0,'Our professional Services are...\r\nNullam id dolor id nibh ultricies vehicula ut id elit.\r\nVestibulum id ligula porta felis euismod semper.','h1',0,13,'spring-green'),(69,14,2,0,0,NULL,0,NULL,0,NULL,'h1',0,0,NULL),(70,14,3,0,0,NULL,0,NULL,0,NULL,'h1',0,0,'deep-sky-blue'),(71,14,4,0,0,NULL,0,NULL,0,NULL,'h1',0,0,'deep-sky-blue'),(72,14,5,0,0,NULL,0,NULL,0,NULL,'h1',0,0,'deep-sky-blue'),(73,13,11,0,0,NULL,0,NULL,0,'Empowering<br>\r\n<b>NZ Tech.</b>','h1',0,0,'spring-green'),(74,13,12,0,0,NULL,0,NULL,0,'Empowering<br>\r\n<b>NZ Tech.</b>','h1',0,0,'spring-green');
/*!40000 ALTER TABLE `ModulePage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Module_Live`
--

DROP TABLE IF EXISTS `Module_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Module_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Module','AssistanceModule','BlockModule','ClientsModule','ContentModule','FeaturesModule','GridModule','CallToActionHeaderModule','CallToActionPromoModule','GalleryModule','GuidanceModule','PagePromoModule','PromoModule','StatsModule','TableModule') CHARACTER SET utf8 DEFAULT 'Module',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `Theme` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Module_Live`
--

LOCK TABLES `Module_Live` WRITE;
/*!40000 ALTER TABLE `Module_Live` DISABLE KEYS */;
INSERT INTO `Module_Live` VALUES (7,'ContentModule','2017-07-10 17:51:16','2017-07-02 13:24:01',11,'black-squeeze'),(8,'FeaturesModule','2017-07-06 12:01:01','2017-07-02 15:54:11',14,'module-theme-white'),(9,'GuidanceModule','2017-07-05 14:14:15','2017-07-02 16:31:57',10,NULL),(10,'GridModule','2017-07-12 18:22:35','2017-07-03 09:34:20',21,'black-squeeze'),(11,'ClientsModule','2017-07-10 18:08:26','2017-07-03 09:41:18',4,NULL),(13,'ContentModule','2017-07-10 17:49:57','2017-07-03 18:18:13',5,NULL),(14,'TableModule','2017-07-10 17:29:55','2017-07-04 11:49:28',20,'black-squeeze'),(15,'AssistanceModule','2017-07-10 14:42:56','2017-07-05 09:56:15',17,'deep-sky-blue'),(16,'GridModule','2017-07-11 15:15:03','2017-07-11 14:55:59',4,NULL),(17,'GuidanceModule','2017-07-11 16:23:41','2017-07-11 15:13:10',5,NULL),(18,'ClientsModule','2017-07-11 15:19:11','2017-07-11 15:18:23',2,NULL),(20,'PagePromoModule','2017-07-11 17:13:27','2017-07-11 16:42:02',5,'black-squeeze'),(21,'PromoModule','2017-07-11 18:12:02','2017-07-11 16:56:55',11,NULL),(22,'PagePromoModule','2017-07-18 11:35:27','2017-07-13 10:24:13',5,'white'),(23,'GridModule','2017-07-13 10:40:07','2017-07-13 10:35:30',5,'black-squeeze'),(24,'GridModule','2017-07-13 11:19:53','2017-07-13 11:10:14',3,NULL),(26,'CallToActionPromoModule','2017-07-13 18:11:29','2017-07-13 17:39:30',11,'sherpa-blue'),(27,'CallToActionHeaderModule','2017-07-21 11:18:54','2017-07-21 10:28:31',13,'spring-green'),(28,'StatsModule','2017-07-21 14:25:01','2017-07-21 14:24:51',2,NULL),(31,'GuidanceModule','2017-07-26 13:51:05','2017-07-26 13:51:04',2,NULL),(32,'FeaturesModule','2017-07-26 13:51:05','2017-07-26 13:51:05',2,'module-theme-white'),(33,'ContentModule','2017-07-26 13:51:06','2017-07-26 13:51:05',2,'black-squeeze'),(34,'ContentModule','2017-07-26 13:51:06','2017-07-26 13:51:06',2,NULL),(35,'GridModule','2017-07-26 13:51:07','2017-07-26 13:51:06',2,'black-squeeze'),(36,'ClientsModule','2017-07-26 13:51:07','2017-07-26 13:51:07',2,NULL),(37,'TableModule','2017-07-26 13:51:08','2017-07-26 13:51:07',2,'black-squeeze'),(38,'GuidanceModule','2017-07-26 13:52:42','2017-07-26 13:52:42',2,NULL),(39,'FeaturesModule','2017-07-26 13:52:42','2017-07-26 13:52:42',2,'module-theme-white'),(40,'ContentModule','2017-07-26 13:52:43','2017-07-26 13:52:43',2,'black-squeeze'),(41,'ContentModule','2017-07-26 13:52:43','2017-07-26 13:52:43',2,NULL),(42,'GridModule','2017-07-26 13:52:44','2017-07-26 13:52:44',2,'black-squeeze'),(43,'ClientsModule','2017-07-26 13:52:44','2017-07-26 13:52:44',2,NULL),(44,'TableModule','2017-07-26 13:52:45','2017-07-26 13:52:45',2,'black-squeeze'),(45,'GuidanceModule','2017-07-26 13:58:41','2017-07-26 13:57:03',4,NULL),(46,'FeaturesModule','2017-07-26 13:57:04','2017-07-26 13:57:03',3,'module-theme-white'),(47,'ContentModule','2017-07-26 13:57:05','2017-07-26 13:57:04',3,'black-squeeze'),(48,'ContentModule','2017-07-26 13:57:05','2017-07-26 13:57:05',3,NULL),(49,'GridModule','2017-07-26 13:57:06','2017-07-26 13:57:06',3,'black-squeeze'),(50,'ClientsModule','2017-07-26 13:57:07','2017-07-26 13:57:06',3,NULL),(51,'TableModule','2017-07-26 13:57:07','2017-07-26 13:57:07',2,'black-squeeze'),(54,'GuidanceModule','2017-07-26 14:08:16','2017-07-26 14:08:15',2,NULL),(55,'FeaturesModule','2017-07-26 14:08:16','2017-07-26 14:08:16',2,'module-theme-white'),(56,'ContentModule','2017-07-26 14:08:16','2017-07-26 14:08:16',2,'black-squeeze'),(57,'ContentModule','2017-07-26 14:08:17','2017-07-26 14:08:17',2,NULL),(58,'GridModule','2017-07-26 14:08:17','2017-07-26 14:08:17',2,'black-squeeze'),(59,'ClientsModule','2017-07-26 14:08:18','2017-07-26 14:08:18',2,NULL),(60,'TableModule','2017-07-26 14:08:18','2017-07-26 14:08:18',2,'black-squeeze'),(61,'GuidanceModule','2017-07-26 14:14:07','2017-07-26 14:14:06',2,NULL),(62,'FeaturesModule','2017-07-26 14:14:07','2017-07-26 14:14:07',2,'module-theme-white'),(63,'ContentModule','2017-07-26 14:14:08','2017-07-26 14:14:07',2,'black-squeeze'),(64,'ContentModule','2017-07-26 14:14:08','2017-07-26 14:14:08',2,NULL),(65,'GridModule','2017-07-26 14:14:09','2017-07-26 14:14:08',2,'black-squeeze'),(66,'ClientsModule','2017-07-26 14:14:09','2017-07-26 14:14:09',2,NULL),(67,'TableModule','2017-07-26 14:14:09','2017-07-26 14:14:09',2,'black-squeeze'),(68,'GuidanceModule','2017-07-26 14:22:14','2017-07-26 14:22:13',2,NULL),(69,'FeaturesModule','2017-07-26 14:22:14','2017-07-26 14:22:14',2,'module-theme-white'),(70,'ContentModule','2017-07-26 14:22:15','2017-07-26 14:22:14',2,'black-squeeze'),(71,'ContentModule','2017-07-26 14:22:15','2017-07-26 14:22:15',2,NULL),(72,'GridModule','2017-07-26 14:22:16','2017-07-26 14:22:15',2,'black-squeeze'),(73,'ClientsModule','2017-07-26 14:22:16','2017-07-26 14:22:16',2,NULL),(74,'TableModule','2017-07-26 14:22:17','2017-07-26 14:22:16',2,'black-squeeze'),(75,'GuidanceModule','2017-07-26 14:23:35','2017-07-26 14:23:35',2,NULL),(76,'FeaturesModule','2017-07-26 14:23:36','2017-07-26 14:23:36',2,'module-theme-white'),(77,'ContentModule','2017-07-26 14:23:36','2017-07-26 14:23:36',2,'black-squeeze'),(78,'ContentModule','2017-07-26 14:23:37','2017-07-26 14:23:37',2,NULL),(79,'GridModule','2017-07-26 14:23:37','2017-07-26 14:23:37',2,'black-squeeze'),(80,'ClientsModule','2017-07-26 14:23:38','2017-07-26 14:23:38',2,NULL),(81,'TableModule','2017-07-26 14:23:38','2017-07-26 14:23:38',2,'black-squeeze'),(82,'GuidanceModule','2017-07-26 14:27:41','2017-07-26 14:27:41',2,NULL),(83,'FeaturesModule','2017-07-26 14:27:41','2017-07-26 14:27:41',2,'module-theme-white'),(84,'ContentModule','2017-07-26 14:27:42','2017-07-26 14:27:42',2,'black-squeeze'),(85,'ContentModule','2017-07-26 14:27:42','2017-07-26 14:27:42',2,NULL),(86,'GridModule','2017-07-26 14:27:43','2017-07-26 14:27:43',2,'black-squeeze'),(87,'ClientsModule','2017-07-26 14:27:43','2017-07-26 14:27:43',2,NULL),(88,'TableModule','2017-07-26 14:27:44','2017-07-26 14:27:44',2,'black-squeeze'),(95,'GuidanceModule','2017-07-26 14:36:01','2017-07-26 14:36:01',2,NULL),(97,'GuidanceModule','2017-07-26 14:37:30','2017-07-26 14:37:30',2,NULL),(98,'FeaturesModule','2017-07-26 14:37:31','2017-07-26 14:37:31',2,'module-theme-white'),(99,'ContentModule','2017-07-26 14:37:32','2017-07-26 14:37:31',2,'black-squeeze'),(100,'ContentModule','2017-07-26 14:37:33','2017-07-26 14:37:32',2,NULL),(101,'GridModule','2017-07-26 14:37:33','2017-07-26 14:37:33',2,'black-squeeze'),(102,'ClientsModule','2017-07-26 14:37:34','2017-07-26 14:37:34',2,NULL),(103,'TableModule','2017-07-26 14:37:35','2017-07-26 14:37:34',2,'black-squeeze');
/*!40000 ALTER TABLE `Module_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Module_versions`
--

DROP TABLE IF EXISTS `Module_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Module_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('Module','AssistanceModule','BlockModule','ClientsModule','ContentModule','FeaturesModule','GridModule','CallToActionHeaderModule','CallToActionPromoModule','GalleryModule','GuidanceModule','PagePromoModule','PromoModule','StatsModule','TableModule') CHARACTER SET utf8 DEFAULT 'Module',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Theme` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=342 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Module_versions`
--

LOCK TABLES `Module_versions` WRITE;
/*!40000 ALTER TABLE `Module_versions` DISABLE KEYS */;
INSERT INTO `Module_versions` VALUES (16,7,1,0,3,0,'ContentModule','2017-07-02 13:24:01','2017-07-02 13:24:01',NULL),(17,7,2,0,3,0,'ContentModule','2017-07-02 14:14:02','2017-07-02 13:24:01',NULL),(18,7,3,0,3,0,'ContentModule','2017-07-02 14:14:02','2017-07-02 13:24:01',NULL),(19,7,4,0,3,0,'ContentModule','2017-07-02 14:21:50','2017-07-02 13:24:01',NULL),(20,7,5,0,3,0,'ContentModule','2017-07-02 14:41:35','2017-07-02 13:24:01',NULL),(21,8,1,0,3,0,'FeaturesModule','2017-07-02 15:54:11','2017-07-02 15:54:11',NULL),(22,8,2,0,3,0,'FeaturesModule','2017-07-02 16:05:51','2017-07-02 15:54:11',NULL),(23,9,1,0,3,0,'GuidanceModule','2017-07-02 16:31:57','2017-07-02 16:31:57',NULL),(24,9,2,0,3,0,'GuidanceModule','2017-07-02 16:33:41','2017-07-02 16:31:57',NULL),(25,9,3,0,3,0,'GuidanceModule','2017-07-02 16:33:42','2017-07-02 16:31:57',NULL),(26,10,1,0,3,0,'GridModule','2017-07-03 09:34:20','2017-07-03 09:34:20',NULL),(27,10,2,0,3,0,'GridModule','2017-07-03 09:36:17','2017-07-03 09:34:20',NULL),(28,10,3,0,3,0,'GridModule','2017-07-03 09:36:17','2017-07-03 09:34:20',NULL),(29,10,4,0,3,0,'GridModule','2017-07-03 09:39:01','2017-07-03 09:34:20',NULL),(30,10,5,0,3,0,'GridModule','2017-07-03 09:39:02','2017-07-03 09:34:20',NULL),(31,11,1,0,3,0,'ClientsModule','2017-07-03 09:41:18','2017-07-03 09:41:18',NULL),(32,11,2,0,3,0,'ClientsModule','2017-07-03 09:43:03','2017-07-03 09:41:18',NULL),(36,13,1,0,3,0,'ContentModule','2017-07-03 18:18:13','2017-07-03 18:18:13',NULL),(37,13,2,0,3,0,'ContentModule','2017-07-04 09:25:18','2017-07-03 18:18:13',NULL),(38,13,3,0,3,0,'ContentModule','2017-07-04 09:25:18','2017-07-03 18:18:13',NULL),(39,14,1,0,3,0,'TableModule','2017-07-04 11:49:28','2017-07-04 11:49:28',NULL),(40,14,2,0,3,0,'TableModule','2017-07-04 11:49:35','2017-07-04 11:49:28',NULL),(41,15,1,0,3,0,'AssistanceModule','2017-07-05 09:56:15','2017-07-05 09:56:15',NULL),(42,15,2,0,3,0,'AssistanceModule','2017-07-05 09:56:18','2017-07-05 09:56:15',NULL),(43,15,3,0,3,0,'AssistanceModule','2017-07-05 09:56:18','2017-07-05 09:56:15',NULL),(44,9,4,0,3,0,'GuidanceModule','2017-07-05 13:19:51','2017-07-02 16:31:57',NULL),(45,9,5,0,3,0,'GuidanceModule','2017-07-05 13:19:52','2017-07-02 16:31:57',NULL),(46,9,6,0,3,0,'GuidanceModule','2017-07-05 13:26:09','2017-07-02 16:31:57',NULL),(47,9,7,0,3,0,'GuidanceModule','2017-07-05 13:26:09','2017-07-02 16:31:57',NULL),(48,9,8,0,3,0,'GuidanceModule','2017-07-05 14:10:36','2017-07-02 16:31:57',NULL),(49,9,9,0,3,0,'GuidanceModule','2017-07-05 14:10:36','2017-07-02 16:31:57',NULL),(50,9,10,0,3,0,'GuidanceModule','2017-07-05 14:14:15','2017-07-02 16:31:57',NULL),(51,8,3,0,3,0,'FeaturesModule','2017-07-06 10:53:24','2017-07-02 15:54:11',NULL),(52,8,4,0,3,0,'FeaturesModule','2017-07-06 10:53:24','2017-07-02 15:54:11',NULL),(53,8,5,0,3,0,'FeaturesModule','2017-07-06 11:10:51','2017-07-02 15:54:11',NULL),(54,8,6,0,3,0,'FeaturesModule','2017-07-06 11:10:52','2017-07-02 15:54:11',NULL),(55,8,7,0,3,0,'FeaturesModule','2017-07-06 11:21:40','2017-07-02 15:54:11',NULL),(56,8,8,0,3,0,'FeaturesModule','2017-07-06 11:21:40','2017-07-02 15:54:11',NULL),(57,8,9,0,3,0,'FeaturesModule','2017-07-06 11:25:28','2017-07-02 15:54:11','module-theme-sherpa-'),(58,8,10,0,3,0,'FeaturesModule','2017-07-06 11:25:29','2017-07-02 15:54:11','module-theme-sherpa-'),(59,8,11,0,3,0,'FeaturesModule','2017-07-06 11:25:56','2017-07-02 15:54:11','module-theme-black-s'),(60,8,12,0,3,0,'FeaturesModule','2017-07-06 11:25:56','2017-07-02 15:54:11','module-theme-black-s'),(61,8,13,0,3,0,'FeaturesModule','2017-07-06 12:01:01','2017-07-02 15:54:11','module-theme-white'),(62,8,14,0,3,0,'FeaturesModule','2017-07-06 12:01:01','2017-07-02 15:54:11','module-theme-white'),(63,7,6,0,3,0,'ContentModule','2017-07-06 12:06:02','2017-07-02 13:24:01','module-theme-black-s'),(64,7,7,0,3,0,'ContentModule','2017-07-06 12:06:02','2017-07-02 13:24:01','module-theme-black-s'),(65,7,8,0,3,0,'ContentModule','2017-07-06 15:04:05','2017-07-02 13:24:01','module-theme-black-s'),(66,7,9,0,3,0,'ContentModule','2017-07-06 15:04:05','2017-07-02 13:24:01','module-theme-black-s'),(67,15,4,0,3,0,'AssistanceModule','2017-07-10 12:47:59','2017-07-05 09:56:15','module-bright-turquoise'),(68,15,5,0,3,0,'AssistanceModule','2017-07-10 12:47:59','2017-07-05 09:56:15','module-bright-turquoise'),(69,15,6,0,3,0,'AssistanceModule','2017-07-10 13:52:36','2017-07-05 09:56:15','bright-turquoise'),(70,15,7,0,3,0,'AssistanceModule','2017-07-10 13:52:36','2017-07-05 09:56:15','bright-turquoise'),(71,15,8,0,3,0,'AssistanceModule','2017-07-10 13:53:16','2017-07-05 09:56:15','deep-sky-blue'),(72,15,9,0,3,0,'AssistanceModule','2017-07-10 13:53:17','2017-07-05 09:56:15','deep-sky-blue'),(73,15,10,0,3,0,'AssistanceModule','2017-07-10 14:09:06','2017-07-05 09:56:15','deep-sky-blue'),(74,15,11,0,3,0,'AssistanceModule','2017-07-10 14:09:06','2017-07-05 09:56:15','deep-sky-blue'),(75,15,12,0,3,0,'AssistanceModule','2017-07-10 14:34:23','2017-07-05 09:56:15','deep-sky-blue'),(76,15,13,0,3,0,'AssistanceModule','2017-07-10 14:34:24','2017-07-05 09:56:15','deep-sky-blue'),(77,15,14,0,3,0,'AssistanceModule','2017-07-10 14:42:25','2017-07-05 09:56:15','deep-sky-blue'),(78,15,15,0,3,0,'AssistanceModule','2017-07-10 14:42:25','2017-07-05 09:56:15','deep-sky-blue'),(79,15,16,0,3,0,'AssistanceModule','2017-07-10 14:42:55','2017-07-05 09:56:15','deep-sky-blue'),(80,15,17,0,3,0,'AssistanceModule','2017-07-10 14:42:56','2017-07-05 09:56:15','deep-sky-blue'),(81,10,6,0,3,0,'GridModule','2017-07-10 14:50:34','2017-07-03 09:34:20','black-squeeze'),(82,10,7,0,3,0,'GridModule','2017-07-10 14:50:34','2017-07-03 09:34:20','black-squeeze'),(83,10,8,0,3,0,'GridModule','2017-07-10 15:12:38','2017-07-03 09:34:20','black-squeeze'),(84,10,9,0,3,0,'GridModule','2017-07-10 15:12:38','2017-07-03 09:34:20','black-squeeze'),(85,10,10,0,3,0,'GridModule','2017-07-10 15:25:20','2017-07-03 09:34:20','black-squeeze'),(86,10,11,0,3,0,'GridModule','2017-07-10 15:25:20','2017-07-03 09:34:20','black-squeeze'),(87,10,12,0,3,0,'GridModule','2017-07-10 15:56:58','2017-07-03 09:34:20','black-squeeze'),(88,10,13,0,3,0,'GridModule','2017-07-10 15:56:58','2017-07-03 09:34:20','black-squeeze'),(89,10,14,0,3,0,'GridModule','2017-07-10 15:57:31','2017-07-03 09:34:20','black-squeeze'),(90,10,15,0,3,0,'GridModule','2017-07-10 15:57:31','2017-07-03 09:34:20','black-squeeze'),(91,14,3,0,3,0,'TableModule','2017-07-10 16:27:45','2017-07-04 11:49:28',NULL),(92,14,4,0,3,0,'TableModule','2017-07-10 16:27:45','2017-07-04 11:49:28',NULL),(93,10,16,0,3,0,'GridModule','2017-07-10 16:50:22','2017-07-03 09:34:20','black-squeeze'),(94,10,17,0,3,0,'GridModule','2017-07-10 16:50:22','2017-07-03 09:34:20','black-squeeze'),(95,14,5,0,3,0,'TableModule','2017-07-10 17:05:20','2017-07-04 11:49:28',NULL),(96,14,6,0,3,0,'TableModule','2017-07-10 17:05:20','2017-07-04 11:49:28',NULL),(97,14,7,0,3,0,'TableModule','2017-07-10 17:10:41','2017-07-04 11:49:28',NULL),(98,14,8,0,3,0,'TableModule','2017-07-10 17:10:41','2017-07-04 11:49:28',NULL),(99,14,9,0,3,0,'TableModule','2017-07-10 17:10:54','2017-07-04 11:49:28',NULL),(100,14,10,0,3,0,'TableModule','2017-07-10 17:10:54','2017-07-04 11:49:28',NULL),(101,14,11,0,3,0,'TableModule','2017-07-10 17:11:28','2017-07-04 11:49:28',NULL),(102,14,12,0,3,0,'TableModule','2017-07-10 17:11:28','2017-07-04 11:49:28',NULL),(103,14,13,0,3,0,'TableModule','2017-07-10 17:13:02','2017-07-04 11:49:28',NULL),(104,14,14,0,3,0,'TableModule','2017-07-10 17:13:02','2017-07-04 11:49:28',NULL),(105,14,15,0,3,0,'TableModule','2017-07-10 17:13:32','2017-07-04 11:49:28',NULL),(106,14,16,0,3,0,'TableModule','2017-07-10 17:13:32','2017-07-04 11:49:28',NULL),(107,14,17,0,3,0,'TableModule','2017-07-10 17:29:15','2017-07-04 11:49:28','black-squeeze'),(108,14,18,0,3,0,'TableModule','2017-07-10 17:29:15','2017-07-04 11:49:28','black-squeeze'),(109,14,19,0,3,0,'TableModule','2017-07-10 17:29:55','2017-07-04 11:49:28','black-squeeze'),(110,14,20,0,3,0,'TableModule','2017-07-10 17:29:55','2017-07-04 11:49:28','black-squeeze'),(111,13,4,0,3,0,'ContentModule','2017-07-10 17:49:57','2017-07-03 18:18:13',NULL),(112,13,5,0,3,0,'ContentModule','2017-07-10 17:49:57','2017-07-03 18:18:13',NULL),(113,7,10,0,3,0,'ContentModule','2017-07-10 17:51:15','2017-07-02 13:24:01','black-squeeze'),(114,7,11,0,3,0,'ContentModule','2017-07-10 17:51:16','2017-07-02 13:24:01','black-squeeze'),(115,11,3,0,3,0,'ClientsModule','2017-07-10 18:08:26','2017-07-03 09:41:18',NULL),(116,11,4,0,3,0,'ClientsModule','2017-07-10 18:08:26','2017-07-03 09:41:18',NULL),(117,16,1,0,3,0,'GridModule','2017-07-11 14:55:59','2017-07-11 14:55:59',NULL),(118,16,2,0,3,0,'GridModule','2017-07-11 14:56:07','2017-07-11 14:55:59',NULL),(119,17,1,0,3,0,'GuidanceModule','2017-07-11 15:13:10','2017-07-11 15:13:10',NULL),(120,17,2,0,3,0,'GuidanceModule','2017-07-11 15:14:36','2017-07-11 15:13:10',NULL),(121,17,3,0,3,0,'GuidanceModule','2017-07-11 15:14:36','2017-07-11 15:13:10',NULL),(122,16,3,0,3,0,'GridModule','2017-07-11 15:15:03','2017-07-11 14:55:59',NULL),(123,16,4,0,3,0,'GridModule','2017-07-11 15:15:03','2017-07-11 14:55:59',NULL),(124,18,1,0,3,0,'ClientsModule','2017-07-11 15:18:23','2017-07-11 15:18:23',NULL),(125,18,2,0,3,0,'ClientsModule','2017-07-11 15:19:11','2017-07-11 15:18:23',NULL),(129,17,4,0,3,0,'GuidanceModule','2017-07-11 16:23:41','2017-07-11 15:13:10',NULL),(130,17,5,0,3,0,'GuidanceModule','2017-07-11 16:23:41','2017-07-11 15:13:10',NULL),(131,20,1,0,3,0,'PagePromoModule','2017-07-11 16:42:02','2017-07-11 16:42:02',NULL),(132,21,1,0,3,0,'PromoModule','2017-07-11 16:56:55','2017-07-11 16:56:55',NULL),(133,21,2,0,3,0,'PromoModule','2017-07-11 16:56:59','2017-07-11 16:56:55',NULL),(134,21,3,0,3,0,'PromoModule','2017-07-11 16:57:00','2017-07-11 16:56:55',NULL),(135,21,4,0,3,0,'PromoModule','2017-07-11 16:57:24','2017-07-11 16:56:55',NULL),(136,21,5,0,3,0,'PromoModule','2017-07-11 16:57:24','2017-07-11 16:56:55',NULL),(137,20,2,0,3,0,'PagePromoModule','2017-07-11 16:57:43','2017-07-11 16:42:02',NULL),(138,20,3,0,3,0,'PagePromoModule','2017-07-11 16:57:44','2017-07-11 16:42:02',NULL),(139,20,4,0,3,0,'PagePromoModule','2017-07-11 17:13:27','2017-07-11 16:42:02','black-squeeze'),(140,20,5,0,3,0,'PagePromoModule','2017-07-11 17:13:27','2017-07-11 16:42:02','black-squeeze'),(141,21,6,0,3,0,'PromoModule','2017-07-11 17:52:42','2017-07-11 16:56:55',NULL),(142,21,7,0,3,0,'PromoModule','2017-07-11 17:52:42','2017-07-11 16:56:55',NULL),(143,21,8,0,3,0,'PromoModule','2017-07-11 18:11:29','2017-07-11 16:56:55',NULL),(144,21,9,0,3,0,'PromoModule','2017-07-11 18:11:29','2017-07-11 16:56:55',NULL),(145,21,10,0,3,0,'PromoModule','2017-07-11 18:12:02','2017-07-11 16:56:55',NULL),(146,21,11,0,3,0,'PromoModule','2017-07-11 18:12:02','2017-07-11 16:56:55',NULL),(147,10,18,0,3,0,'GridModule','2017-07-12 18:22:13','2017-07-03 09:34:20','black-squeeze'),(148,10,19,0,3,0,'GridModule','2017-07-12 18:22:13','2017-07-03 09:34:20','black-squeeze'),(149,10,20,0,3,0,'GridModule','2017-07-12 18:22:35','2017-07-03 09:34:20','black-squeeze'),(150,10,21,0,3,0,'GridModule','2017-07-12 18:22:35','2017-07-03 09:34:20','black-squeeze'),(151,22,1,0,3,0,'PagePromoModule','2017-07-13 10:24:13','2017-07-13 10:24:13',NULL),(152,22,2,0,3,0,'PagePromoModule','2017-07-13 10:24:16','2017-07-13 10:24:13',NULL),(153,22,3,0,3,0,'PagePromoModule','2017-07-13 10:24:17','2017-07-13 10:24:13',NULL),(154,23,1,0,3,0,'GridModule','2017-07-13 10:35:30','2017-07-13 10:35:30',NULL),(155,23,2,0,3,0,'GridModule','2017-07-13 10:39:08','2017-07-13 10:35:30',NULL),(156,23,3,0,3,0,'GridModule','2017-07-13 10:39:09','2017-07-13 10:35:30',NULL),(157,23,4,0,3,0,'GridModule','2017-07-13 10:40:06','2017-07-13 10:35:30','black-squeeze'),(158,23,5,0,3,0,'GridModule','2017-07-13 10:40:07','2017-07-13 10:35:30','black-squeeze'),(159,24,1,0,3,0,'GridModule','2017-07-13 11:10:14','2017-07-13 11:10:14',NULL),(160,24,2,0,3,0,'GridModule','2017-07-13 11:19:53','2017-07-13 11:10:14',NULL),(161,24,3,0,3,0,'GridModule','2017-07-13 11:19:53','2017-07-13 11:10:14',NULL),(168,26,1,0,3,0,'CallToActionPromoModule','2017-07-13 17:39:30','2017-07-13 17:39:30',NULL),(169,26,2,0,3,0,'CallToActionPromoModule','2017-07-13 17:41:35','2017-07-13 17:39:30',NULL),(170,26,3,0,3,0,'CallToActionPromoModule','2017-07-13 17:41:35','2017-07-13 17:39:30',NULL),(171,26,4,0,3,0,'CallToActionPromoModule','2017-07-13 17:57:24','2017-07-13 17:39:30',NULL),(172,26,5,0,3,0,'CallToActionPromoModule','2017-07-13 17:57:24','2017-07-13 17:39:30',NULL),(173,26,6,0,3,0,'CallToActionPromoModule','2017-07-13 17:57:38','2017-07-13 17:39:30','bright-turquoise'),(174,26,7,0,3,0,'CallToActionPromoModule','2017-07-13 17:57:38','2017-07-13 17:39:30','bright-turquoise'),(175,26,8,0,3,0,'CallToActionPromoModule','2017-07-13 18:11:12','2017-07-13 17:39:30','deep-sky-blue'),(176,26,9,0,3,0,'CallToActionPromoModule','2017-07-13 18:11:12','2017-07-13 17:39:30','deep-sky-blue'),(177,26,10,0,3,0,'CallToActionPromoModule','2017-07-13 18:11:29','2017-07-13 17:39:30','sherpa-blue'),(178,26,11,0,3,0,'CallToActionPromoModule','2017-07-13 18:11:29','2017-07-13 17:39:30','sherpa-blue'),(179,22,4,0,3,0,'PagePromoModule','2017-07-18 11:35:27','2017-07-13 10:24:13','white'),(180,22,5,0,3,0,'PagePromoModule','2017-07-18 11:35:27','2017-07-13 10:24:13','white'),(181,27,1,0,3,0,'CallToActionHeaderModule','2017-07-21 10:28:31','2017-07-21 10:28:31',NULL),(182,27,2,0,3,0,'CallToActionHeaderModule','2017-07-21 10:28:42','2017-07-21 10:28:31',NULL),(183,27,3,0,3,0,'CallToActionHeaderModule','2017-07-21 10:28:42','2017-07-21 10:28:31',NULL),(184,27,4,0,3,0,'CallToActionHeaderModule','2017-07-21 11:11:04','2017-07-21 10:28:31','bright-turquoise'),(185,27,5,0,3,0,'CallToActionHeaderModule','2017-07-21 11:11:04','2017-07-21 10:28:31','bright-turquoise'),(186,27,6,0,3,0,'CallToActionHeaderModule','2017-07-21 11:18:00','2017-07-21 10:28:31','deep-sky-blue'),(187,27,7,0,3,0,'CallToActionHeaderModule','2017-07-21 11:18:01','2017-07-21 10:28:31','deep-sky-blue'),(188,27,8,0,3,0,'CallToActionHeaderModule','2017-07-21 11:18:12','2017-07-21 10:28:31','pastel-green'),(189,27,9,0,3,0,'CallToActionHeaderModule','2017-07-21 11:18:13','2017-07-21 10:28:31','pastel-green'),(190,27,10,0,3,0,'CallToActionHeaderModule','2017-07-21 11:18:28','2017-07-21 10:28:31','sherpa-blue'),(191,27,11,0,3,0,'CallToActionHeaderModule','2017-07-21 11:18:28','2017-07-21 10:28:31','sherpa-blue'),(192,27,12,0,3,0,'CallToActionHeaderModule','2017-07-21 11:18:54','2017-07-21 10:28:31','spring-green'),(193,27,13,0,3,0,'CallToActionHeaderModule','2017-07-21 11:18:54','2017-07-21 10:28:31','spring-green'),(194,28,1,0,3,0,'StatsModule','2017-07-21 14:24:51','2017-07-21 14:24:51',NULL),(195,28,2,0,3,0,'StatsModule','2017-07-21 14:25:01','2017-07-21 14:24:51',NULL),(197,30,1,0,3,0,'GuidanceModule','2017-07-26 13:49:50','2017-07-26 13:49:50',NULL),(198,31,1,0,3,0,'GuidanceModule','2017-07-26 13:51:04','2017-07-26 13:51:04',NULL),(199,31,2,0,3,0,'GuidanceModule','2017-07-26 13:51:05','2017-07-26 13:51:04',NULL),(200,32,1,0,3,0,'FeaturesModule','2017-07-26 13:51:05','2017-07-26 13:51:05','module-theme-white'),(201,32,2,0,3,0,'FeaturesModule','2017-07-26 13:51:05','2017-07-26 13:51:05','module-theme-white'),(202,33,1,0,3,0,'ContentModule','2017-07-26 13:51:05','2017-07-26 13:51:05','black-squeeze'),(203,33,2,0,3,0,'ContentModule','2017-07-26 13:51:06','2017-07-26 13:51:05','black-squeeze'),(204,34,1,0,3,0,'ContentModule','2017-07-26 13:51:06','2017-07-26 13:51:06',NULL),(205,34,2,0,3,0,'ContentModule','2017-07-26 13:51:06','2017-07-26 13:51:06',NULL),(206,35,1,0,3,0,'GridModule','2017-07-26 13:51:06','2017-07-26 13:51:06','black-squeeze'),(207,35,2,0,3,0,'GridModule','2017-07-26 13:51:07','2017-07-26 13:51:06','black-squeeze'),(208,36,1,0,3,0,'ClientsModule','2017-07-26 13:51:07','2017-07-26 13:51:07',NULL),(209,36,2,0,3,0,'ClientsModule','2017-07-26 13:51:07','2017-07-26 13:51:07',NULL),(210,37,1,0,3,0,'TableModule','2017-07-26 13:51:07','2017-07-26 13:51:07','black-squeeze'),(211,37,2,0,3,0,'TableModule','2017-07-26 13:51:08','2017-07-26 13:51:07','black-squeeze'),(212,38,1,0,3,0,'GuidanceModule','2017-07-26 13:52:42','2017-07-26 13:52:42',NULL),(213,38,2,0,3,0,'GuidanceModule','2017-07-26 13:52:42','2017-07-26 13:52:42',NULL),(214,39,1,0,3,0,'FeaturesModule','2017-07-26 13:52:42','2017-07-26 13:52:42','module-theme-white'),(215,39,2,0,3,0,'FeaturesModule','2017-07-26 13:52:42','2017-07-26 13:52:42','module-theme-white'),(216,40,1,0,3,0,'ContentModule','2017-07-26 13:52:43','2017-07-26 13:52:43','black-squeeze'),(217,40,2,0,3,0,'ContentModule','2017-07-26 13:52:43','2017-07-26 13:52:43','black-squeeze'),(218,41,1,0,3,0,'ContentModule','2017-07-26 13:52:43','2017-07-26 13:52:43',NULL),(219,41,2,0,3,0,'ContentModule','2017-07-26 13:52:43','2017-07-26 13:52:43',NULL),(220,42,1,0,3,0,'GridModule','2017-07-26 13:52:44','2017-07-26 13:52:44','black-squeeze'),(221,42,2,0,3,0,'GridModule','2017-07-26 13:52:44','2017-07-26 13:52:44','black-squeeze'),(222,43,1,0,3,0,'ClientsModule','2017-07-26 13:52:44','2017-07-26 13:52:44',NULL),(223,43,2,0,3,0,'ClientsModule','2017-07-26 13:52:44','2017-07-26 13:52:44',NULL),(224,44,1,0,3,0,'TableModule','2017-07-26 13:52:45','2017-07-26 13:52:45','black-squeeze'),(225,44,2,0,3,0,'TableModule','2017-07-26 13:52:45','2017-07-26 13:52:45','black-squeeze'),(226,45,1,0,3,0,'GuidanceModule','2017-07-26 13:57:03','2017-07-26 13:57:03',NULL),(227,45,2,0,3,0,'GuidanceModule','2017-07-26 13:57:03','2017-07-26 13:57:03',NULL),(228,46,1,0,3,0,'FeaturesModule','2017-07-26 13:57:03','2017-07-26 13:57:03','module-theme-white'),(229,46,2,0,3,0,'FeaturesModule','2017-07-26 13:57:04','2017-07-26 13:57:03','module-theme-white'),(230,46,3,0,3,0,'FeaturesModule','2017-07-26 13:57:04','2017-07-26 13:57:03','module-theme-white'),(231,47,1,0,3,0,'ContentModule','2017-07-26 13:57:04','2017-07-26 13:57:04','black-squeeze'),(232,47,2,0,3,0,'ContentModule','2017-07-26 13:57:05','2017-07-26 13:57:04','black-squeeze'),(233,47,3,0,3,0,'ContentModule','2017-07-26 13:57:05','2017-07-26 13:57:04','black-squeeze'),(234,48,1,0,3,0,'ContentModule','2017-07-26 13:57:05','2017-07-26 13:57:05',NULL),(235,48,2,0,3,0,'ContentModule','2017-07-26 13:57:05','2017-07-26 13:57:05',NULL),(236,48,3,0,3,0,'ContentModule','2017-07-26 13:57:05','2017-07-26 13:57:05',NULL),(237,49,1,0,3,0,'GridModule','2017-07-26 13:57:06','2017-07-26 13:57:06','black-squeeze'),(238,49,2,0,3,0,'GridModule','2017-07-26 13:57:06','2017-07-26 13:57:06','black-squeeze'),(239,49,3,0,3,0,'GridModule','2017-07-26 13:57:06','2017-07-26 13:57:06','black-squeeze'),(240,50,1,0,3,0,'ClientsModule','2017-07-26 13:57:06','2017-07-26 13:57:06',NULL),(241,50,2,0,3,0,'ClientsModule','2017-07-26 13:57:07','2017-07-26 13:57:06',NULL),(242,50,3,0,3,0,'ClientsModule','2017-07-26 13:57:07','2017-07-26 13:57:06',NULL),(243,51,1,0,3,0,'TableModule','2017-07-26 13:57:07','2017-07-26 13:57:07','black-squeeze'),(244,51,2,0,3,0,'TableModule','2017-07-26 13:57:07','2017-07-26 13:57:07','black-squeeze'),(245,45,3,0,3,0,'GuidanceModule','2017-07-26 13:58:41','2017-07-26 13:57:03',NULL),(246,45,4,0,3,0,'GuidanceModule','2017-07-26 13:58:41','2017-07-26 13:57:03',NULL),(247,52,1,0,3,0,'GuidanceModule','2017-07-26 14:05:56','2017-07-26 14:05:56',NULL),(248,53,1,0,3,0,'GuidanceModule','2017-07-26 14:06:09','2017-07-26 14:06:09',NULL),(249,54,1,0,3,0,'GuidanceModule','2017-07-26 14:08:15','2017-07-26 14:08:15',NULL),(250,54,2,0,3,0,'GuidanceModule','2017-07-26 14:08:16','2017-07-26 14:08:15',NULL),(251,55,1,0,3,0,'FeaturesModule','2017-07-26 14:08:16','2017-07-26 14:08:16','module-theme-white'),(252,55,2,0,3,0,'FeaturesModule','2017-07-26 14:08:16','2017-07-26 14:08:16','module-theme-white'),(253,56,1,0,3,0,'ContentModule','2017-07-26 14:08:16','2017-07-26 14:08:16','black-squeeze'),(254,56,2,0,3,0,'ContentModule','2017-07-26 14:08:16','2017-07-26 14:08:16','black-squeeze'),(255,57,1,0,3,0,'ContentModule','2017-07-26 14:08:17','2017-07-26 14:08:17',NULL),(256,57,2,0,3,0,'ContentModule','2017-07-26 14:08:17','2017-07-26 14:08:17',NULL),(257,58,1,0,3,0,'GridModule','2017-07-26 14:08:17','2017-07-26 14:08:17','black-squeeze'),(258,58,2,0,3,0,'GridModule','2017-07-26 14:08:17','2017-07-26 14:08:17','black-squeeze'),(259,59,1,0,3,0,'ClientsModule','2017-07-26 14:08:18','2017-07-26 14:08:18',NULL),(260,59,2,0,3,0,'ClientsModule','2017-07-26 14:08:18','2017-07-26 14:08:18',NULL),(261,60,1,0,3,0,'TableModule','2017-07-26 14:08:18','2017-07-26 14:08:18','black-squeeze'),(262,60,2,0,3,0,'TableModule','2017-07-26 14:08:18','2017-07-26 14:08:18','black-squeeze'),(263,61,1,0,3,0,'GuidanceModule','2017-07-26 14:14:06','2017-07-26 14:14:06',NULL),(264,61,2,0,3,0,'GuidanceModule','2017-07-26 14:14:07','2017-07-26 14:14:06',NULL),(265,62,1,0,3,0,'FeaturesModule','2017-07-26 14:14:07','2017-07-26 14:14:07','module-theme-white'),(266,62,2,0,3,0,'FeaturesModule','2017-07-26 14:14:07','2017-07-26 14:14:07','module-theme-white'),(267,63,1,0,3,0,'ContentModule','2017-07-26 14:14:07','2017-07-26 14:14:07','black-squeeze'),(268,63,2,0,3,0,'ContentModule','2017-07-26 14:14:08','2017-07-26 14:14:07','black-squeeze'),(269,64,1,0,3,0,'ContentModule','2017-07-26 14:14:08','2017-07-26 14:14:08',NULL),(270,64,2,0,3,0,'ContentModule','2017-07-26 14:14:08','2017-07-26 14:14:08',NULL),(271,65,1,0,3,0,'GridModule','2017-07-26 14:14:08','2017-07-26 14:14:08','black-squeeze'),(272,65,2,0,3,0,'GridModule','2017-07-26 14:14:09','2017-07-26 14:14:08','black-squeeze'),(273,66,1,0,3,0,'ClientsModule','2017-07-26 14:14:09','2017-07-26 14:14:09',NULL),(274,66,2,0,3,0,'ClientsModule','2017-07-26 14:14:09','2017-07-26 14:14:09',NULL),(275,67,1,0,3,0,'TableModule','2017-07-26 14:14:09','2017-07-26 14:14:09','black-squeeze'),(276,67,2,0,3,0,'TableModule','2017-07-26 14:14:09','2017-07-26 14:14:09','black-squeeze'),(277,68,1,0,3,0,'GuidanceModule','2017-07-26 14:22:13','2017-07-26 14:22:13',NULL),(278,68,2,0,3,0,'GuidanceModule','2017-07-26 14:22:14','2017-07-26 14:22:13',NULL),(279,69,1,0,3,0,'FeaturesModule','2017-07-26 14:22:14','2017-07-26 14:22:14','module-theme-white'),(280,69,2,0,3,0,'FeaturesModule','2017-07-26 14:22:14','2017-07-26 14:22:14','module-theme-white'),(281,70,1,0,3,0,'ContentModule','2017-07-26 14:22:14','2017-07-26 14:22:14','black-squeeze'),(282,70,2,0,3,0,'ContentModule','2017-07-26 14:22:15','2017-07-26 14:22:14','black-squeeze'),(283,71,1,0,3,0,'ContentModule','2017-07-26 14:22:15','2017-07-26 14:22:15',NULL),(284,71,2,0,3,0,'ContentModule','2017-07-26 14:22:15','2017-07-26 14:22:15',NULL),(285,72,1,0,3,0,'GridModule','2017-07-26 14:22:15','2017-07-26 14:22:15','black-squeeze'),(286,72,2,0,3,0,'GridModule','2017-07-26 14:22:16','2017-07-26 14:22:15','black-squeeze'),(287,73,1,0,3,0,'ClientsModule','2017-07-26 14:22:16','2017-07-26 14:22:16',NULL),(288,73,2,0,3,0,'ClientsModule','2017-07-26 14:22:16','2017-07-26 14:22:16',NULL),(289,74,1,0,3,0,'TableModule','2017-07-26 14:22:16','2017-07-26 14:22:16','black-squeeze'),(290,74,2,0,3,0,'TableModule','2017-07-26 14:22:17','2017-07-26 14:22:16','black-squeeze'),(291,75,1,0,3,0,'GuidanceModule','2017-07-26 14:23:35','2017-07-26 14:23:35',NULL),(292,75,2,0,3,0,'GuidanceModule','2017-07-26 14:23:35','2017-07-26 14:23:35',NULL),(293,76,1,0,3,0,'FeaturesModule','2017-07-26 14:23:36','2017-07-26 14:23:36','module-theme-white'),(294,76,2,0,3,0,'FeaturesModule','2017-07-26 14:23:36','2017-07-26 14:23:36','module-theme-white'),(295,77,1,0,3,0,'ContentModule','2017-07-26 14:23:36','2017-07-26 14:23:36','black-squeeze'),(296,77,2,0,3,0,'ContentModule','2017-07-26 14:23:36','2017-07-26 14:23:36','black-squeeze'),(297,78,1,0,3,0,'ContentModule','2017-07-26 14:23:37','2017-07-26 14:23:37',NULL),(298,78,2,0,3,0,'ContentModule','2017-07-26 14:23:37','2017-07-26 14:23:37',NULL),(299,79,1,0,3,0,'GridModule','2017-07-26 14:23:37','2017-07-26 14:23:37','black-squeeze'),(300,79,2,0,3,0,'GridModule','2017-07-26 14:23:37','2017-07-26 14:23:37','black-squeeze'),(301,80,1,0,3,0,'ClientsModule','2017-07-26 14:23:38','2017-07-26 14:23:38',NULL),(302,80,2,0,3,0,'ClientsModule','2017-07-26 14:23:38','2017-07-26 14:23:38',NULL),(303,81,1,0,3,0,'TableModule','2017-07-26 14:23:38','2017-07-26 14:23:38','black-squeeze'),(304,81,2,0,3,0,'TableModule','2017-07-26 14:23:38','2017-07-26 14:23:38','black-squeeze'),(305,82,1,0,3,0,'GuidanceModule','2017-07-26 14:27:41','2017-07-26 14:27:41',NULL),(306,82,2,0,3,0,'GuidanceModule','2017-07-26 14:27:41','2017-07-26 14:27:41',NULL),(307,83,1,0,3,0,'FeaturesModule','2017-07-26 14:27:41','2017-07-26 14:27:41','module-theme-white'),(308,83,2,0,3,0,'FeaturesModule','2017-07-26 14:27:41','2017-07-26 14:27:41','module-theme-white'),(309,84,1,0,3,0,'ContentModule','2017-07-26 14:27:42','2017-07-26 14:27:42','black-squeeze'),(310,84,2,0,3,0,'ContentModule','2017-07-26 14:27:42','2017-07-26 14:27:42','black-squeeze'),(311,85,1,0,3,0,'ContentModule','2017-07-26 14:27:42','2017-07-26 14:27:42',NULL),(312,85,2,0,3,0,'ContentModule','2017-07-26 14:27:42','2017-07-26 14:27:42',NULL),(313,86,1,0,3,0,'GridModule','2017-07-26 14:27:43','2017-07-26 14:27:43','black-squeeze'),(314,86,2,0,3,0,'GridModule','2017-07-26 14:27:43','2017-07-26 14:27:43','black-squeeze'),(315,87,1,0,3,0,'ClientsModule','2017-07-26 14:27:43','2017-07-26 14:27:43',NULL),(316,87,2,0,3,0,'ClientsModule','2017-07-26 14:27:43','2017-07-26 14:27:43',NULL),(317,88,1,0,3,0,'TableModule','2017-07-26 14:27:44','2017-07-26 14:27:44','black-squeeze'),(318,88,2,0,3,0,'TableModule','2017-07-26 14:27:44','2017-07-26 14:27:44','black-squeeze'),(319,89,1,0,3,0,'GuidanceModule','2017-07-26 14:30:11','2017-07-26 14:30:11',NULL),(320,90,1,0,3,0,'GuidanceModule','2017-07-26 14:32:16','2017-07-26 14:32:16',NULL),(321,91,1,0,3,0,'GuidanceModule','2017-07-26 14:33:01','2017-07-26 14:33:01',NULL),(322,92,1,0,3,0,'GuidanceModule','2017-07-26 14:33:31','2017-07-26 14:33:31',NULL),(323,93,1,0,3,0,'GuidanceModule','2017-07-26 14:33:39','2017-07-26 14:33:39',NULL),(324,94,1,0,3,0,'GuidanceModule','2017-07-26 14:34:38','2017-07-26 14:34:38',NULL),(325,95,1,0,3,0,'GuidanceModule','2017-07-26 14:36:01','2017-07-26 14:36:01',NULL),(326,95,2,0,3,0,'GuidanceModule','2017-07-26 14:36:01','2017-07-26 14:36:01',NULL),(327,96,1,0,3,0,'FeaturesModule','2017-07-26 14:36:01','2017-07-26 14:36:01','module-theme-white'),(328,97,1,0,3,0,'GuidanceModule','2017-07-26 14:37:30','2017-07-26 14:37:30',NULL),(329,97,2,0,3,0,'GuidanceModule','2017-07-26 14:37:30','2017-07-26 14:37:30',NULL),(330,98,1,0,3,0,'FeaturesModule','2017-07-26 14:37:31','2017-07-26 14:37:31','module-theme-white'),(331,98,2,0,3,0,'FeaturesModule','2017-07-26 14:37:31','2017-07-26 14:37:31','module-theme-white'),(332,99,1,0,3,0,'ContentModule','2017-07-26 14:37:31','2017-07-26 14:37:31','black-squeeze'),(333,99,2,0,3,0,'ContentModule','2017-07-26 14:37:32','2017-07-26 14:37:31','black-squeeze'),(334,100,1,0,3,0,'ContentModule','2017-07-26 14:37:32','2017-07-26 14:37:32',NULL),(335,100,2,0,3,0,'ContentModule','2017-07-26 14:37:33','2017-07-26 14:37:32',NULL),(336,101,1,0,3,0,'GridModule','2017-07-26 14:37:33','2017-07-26 14:37:33','black-squeeze'),(337,101,2,0,3,0,'GridModule','2017-07-26 14:37:33','2017-07-26 14:37:33','black-squeeze'),(338,102,1,0,3,0,'ClientsModule','2017-07-26 14:37:34','2017-07-26 14:37:34',NULL),(339,102,2,0,3,0,'ClientsModule','2017-07-26 14:37:34','2017-07-26 14:37:34',NULL),(340,103,1,0,3,0,'TableModule','2017-07-26 14:37:34','2017-07-26 14:37:34','black-squeeze'),(341,103,2,0,3,0,'TableModule','2017-07-26 14:37:35','2017-07-26 14:37:34','black-squeeze');
/*!40000 ALTER TABLE `Module_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Page`
--

DROP TABLE IF EXISTS `Page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Page` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `OGType` enum('website','article','blog','product') CHARACTER SET utf8 DEFAULT 'website',
  `OGTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `OGDescription` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `TwitterCard` enum('summary','summary_large_image') CHARACTER SET utf8 DEFAULT 'summary',
  `TwitterTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `TwitterDescription` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `SEOPageSubject` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `MetaKeywords` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `MetaRobots` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `MetaTitle` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `OGImageID` int(11) NOT NULL DEFAULT '0',
  `TwitterImageID` int(11) NOT NULL DEFAULT '0',
  `ConanicalURL` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `ShowAssistanceModule` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `PardotFormID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `OGImageID` (`OGImageID`),
  KEY `TwitterImageID` (`TwitterImageID`),
  KEY `PardotFormID` (`PardotFormID`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Page`
--

LOCK TABLES `Page` WRITE;
/*!40000 ALTER TABLE `Page` DISABLE KEYS */;
INSERT INTO `Page` VALUES (13,'website','Home','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or','summary','Home','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(14,'website','About Us','You can fill this page out with your own content, or delete it and create your own pages.','summary','About Us','You can fill this page out with your own content, or delete it and create your own pages.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(15,'website','Contact Us','You can fill this page out with your own content, or delete it and create your own pages.','summary','Contact Us','You can fill this page out with your own content, or delete it and create your own pages.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,1),(16,'website','Page not found','Sorry, it seems you were trying to access a page that doesn\'t exist.Please check the spelling of the URL you were trying to access and try again.','summary','Page not found','Sorry, it seems you were trying to access a page that doesn\'t exist.Please check the spelling of the URL you were trying to access and try again.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(17,'website','Server error','Sorry, there was a problem with handling your request.','summary','Server error','Sorry, there was a problem with handling your request.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(18,'website','Undergoing Scheduled Maintenance','We will be back soon!Sorry for the inconvenience but our site is currently down for scheduled maintenance.','summary','Undergoing Scheduled Maintenance','We will be back soon!Sorry for the inconvenience but our site is currently down for scheduled maintenance.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(19,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(22,'website','New Content Page','Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Donec sed odio dui. Maecenas faucibus mollis interdum.','summary','New Content Page','Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Donec sed odio dui. Maecenas faucibus mollis interdum.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(23,'website','Umbrellar Cloud',NULL,'summary','Umbrellar Cloud',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(24,'website','Compute Services',NULL,'summary','Compute Services',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(25,'website','Virtual Machines',NULL,'summary','Virtual Machines',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(26,'website','Knowledge Hub','Knowledge Hub','summary','Knowledge Hub','Knowledge Hub',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(27,'website','Case Studies',NULL,'summary','Case Studies',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(28,'website','Case Study A',NULL,'summary','Case Study A',NULL,NULL,NULL,NULL,NULL,0,0,NULL,1,0),(48,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0);
/*!40000 ALTER TABLE `Page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePromoModule`
--

DROP TABLE IF EXISTS `PagePromoModule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePromoModule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PromoID` int(11) NOT NULL DEFAULT '0',
  `Theme` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `PromoID` (`PromoID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePromoModule`
--

LOCK TABLES `PagePromoModule` WRITE;
/*!40000 ALTER TABLE `PagePromoModule` DISABLE KEYS */;
INSERT INTO `PagePromoModule` VALUES (20,21,NULL),(22,21,NULL);
/*!40000 ALTER TABLE `PagePromoModule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePromoModule_Live`
--

DROP TABLE IF EXISTS `PagePromoModule_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePromoModule_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PromoID` int(11) NOT NULL DEFAULT '0',
  `Theme` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `PromoID` (`PromoID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePromoModule_Live`
--

LOCK TABLES `PagePromoModule_Live` WRITE;
/*!40000 ALTER TABLE `PagePromoModule_Live` DISABLE KEYS */;
INSERT INTO `PagePromoModule_Live` VALUES (20,21,NULL),(22,21,NULL);
/*!40000 ALTER TABLE `PagePromoModule_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PagePromoModule_versions`
--

DROP TABLE IF EXISTS `PagePromoModule_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PagePromoModule_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PromoID` int(11) NOT NULL DEFAULT '0',
  `Theme` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `PromoID` (`PromoID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PagePromoModule_versions`
--

LOCK TABLES `PagePromoModule_versions` WRITE;
/*!40000 ALTER TABLE `PagePromoModule_versions` DISABLE KEYS */;
INSERT INTO `PagePromoModule_versions` VALUES (1,20,1,19,NULL),(2,20,2,21,NULL),(3,20,3,21,NULL),(4,20,4,21,NULL),(5,20,5,21,NULL),(6,22,1,21,NULL),(7,22,2,21,NULL),(8,22,3,21,NULL),(9,22,4,21,NULL),(10,22,5,21,NULL);
/*!40000 ALTER TABLE `PagePromoModule_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Page_Live`
--

DROP TABLE IF EXISTS `Page_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Page_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `OGType` enum('website','article','blog','product') CHARACTER SET utf8 DEFAULT 'website',
  `OGTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `OGDescription` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `TwitterCard` enum('summary','summary_large_image') CHARACTER SET utf8 DEFAULT 'summary',
  `TwitterTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `TwitterDescription` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `SEOPageSubject` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `MetaKeywords` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `MetaRobots` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `MetaTitle` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `OGImageID` int(11) NOT NULL DEFAULT '0',
  `TwitterImageID` int(11) NOT NULL DEFAULT '0',
  `ConanicalURL` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `ShowAssistanceModule` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `PardotFormID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `OGImageID` (`OGImageID`),
  KEY `TwitterImageID` (`TwitterImageID`),
  KEY `PardotFormID` (`PardotFormID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Page_Live`
--

LOCK TABLES `Page_Live` WRITE;
/*!40000 ALTER TABLE `Page_Live` DISABLE KEYS */;
INSERT INTO `Page_Live` VALUES (13,'website','Home','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or','summary','Home','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(14,'website','About Us','You can fill this page out with your own content, or delete it and create your own pages.','summary','About Us','You can fill this page out with your own content, or delete it and create your own pages.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(15,'website','Contact Us','You can fill this page out with your own content, or delete it and create your own pages.','summary','Contact Us','You can fill this page out with your own content, or delete it and create your own pages.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,1),(16,'website','Page not found','Sorry, it seems you were trying to access a page that doesn\'t exist.Please check the spelling of the URL you were trying to access and try again.','summary','Page not found','Sorry, it seems you were trying to access a page that doesn\'t exist.Please check the spelling of the URL you were trying to access and try again.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(17,'website','Server error','Sorry, there was a problem with handling your request.','summary','Server error','Sorry, there was a problem with handling your request.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(18,'website','Undergoing Scheduled Maintenance','We will be back soon!Sorry for the inconvenience but our site is currently down for scheduled maintenance.','summary','Undergoing Scheduled Maintenance','We will be back soon!Sorry for the inconvenience but our site is currently down for scheduled maintenance.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(19,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(22,'website','New Content Page','Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Donec sed odio dui. Maecenas faucibus mollis interdum.','summary','New Content Page','Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Donec sed odio dui. Maecenas faucibus mollis interdum.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(23,'website','Umbrellar Cloud',NULL,'summary','Umbrellar Cloud',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(24,'website','Compute Services',NULL,'summary','Compute Services',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(25,'website','Virtual Machines',NULL,'summary','Virtual Machines',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(26,'website','Knowledge Hub','Knowledge Hub','summary','Knowledge Hub','Knowledge Hub',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(27,'website','Case Studies',NULL,'summary','Case Studies',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(28,'website','Case Study A',NULL,'summary','Case Study A',NULL,NULL,NULL,NULL,NULL,0,0,NULL,1,0);
/*!40000 ALTER TABLE `Page_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Page_versions`
--

DROP TABLE IF EXISTS `Page_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Page_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `OGType` enum('website','article','blog','product') CHARACTER SET utf8 DEFAULT 'website',
  `OGTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `OGDescription` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `TwitterCard` enum('summary','summary_large_image') CHARACTER SET utf8 DEFAULT 'summary',
  `TwitterTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `TwitterDescription` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `SEOPageSubject` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `MetaKeywords` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `MetaRobots` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `MetaTitle` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `OGImageID` int(11) NOT NULL DEFAULT '0',
  `TwitterImageID` int(11) NOT NULL DEFAULT '0',
  `ConanicalURL` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `ShowAssistanceModule` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `PardotFormID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `OGImageID` (`OGImageID`),
  KEY `TwitterImageID` (`TwitterImageID`),
  KEY `PardotFormID` (`PardotFormID`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Page_versions`
--

LOCK TABLES `Page_versions` WRITE;
/*!40000 ALTER TABLE `Page_versions` DISABLE KEYS */;
INSERT INTO `Page_versions` VALUES (13,13,1,'website','Home','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or','summary','Home','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(14,14,1,'website','About Us','You can fill this page out with your own content, or delete it and create your own pages.','summary','About Us','You can fill this page out with your own content, or delete it and create your own pages.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(15,15,1,'website','Contact Us','You can fill this page out with your own content, or delete it and create your own pages.','summary','Contact Us','You can fill this page out with your own content, or delete it and create your own pages.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(16,16,1,'website','Page not found','Sorry, it seems you were trying to access a page that doesn\'t exist.Please check the spelling of the URL you were trying to access and try again.','summary','Page not found','Sorry, it seems you were trying to access a page that doesn\'t exist.Please check the spelling of the URL you were trying to access and try again.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(17,17,1,'website','Server error','Sorry, there was a problem with handling your request.','summary','Server error','Sorry, there was a problem with handling your request.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(18,18,1,'website','Undergoing Scheduled Maintenance','We will be back soon!Sorry for the inconvenience but our site is currently down for scheduled maintenance.','summary','Undergoing Scheduled Maintenance','We will be back soon!Sorry for the inconvenience but our site is currently down for scheduled maintenance.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(19,19,1,'website','New Test Page',NULL,'summary','New Test Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(20,20,1,'website','New Page',NULL,'summary','New Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(21,21,1,'website','New Page',NULL,'summary','New Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(22,19,2,'website','New Test Page',NULL,'summary','New Test Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(23,19,3,'website','New Test Page',NULL,'summary','New Test Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(24,19,4,'website','New Test Page',NULL,'summary','New Test Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(25,19,5,'website','New Test Page',NULL,'summary','New Test Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(26,19,6,'website','New Test Page',NULL,'summary','New Test Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(27,19,7,'website','New Test Page',NULL,'summary','New Test Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(28,19,8,'website','New Test Page',NULL,'summary','New Test Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(29,19,9,'website','New Test Page',NULL,'summary','New Test Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(30,19,10,'website','New Test Page',NULL,'summary','New Test Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(31,19,11,'website','New Test Page',NULL,'summary','New Test Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(32,19,12,'website','New Test Page',NULL,'summary','New Test Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(33,19,13,'website','New Test Page',NULL,'summary','New Test Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(34,19,14,'website','New Test Page',NULL,'summary','New Test Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(35,19,15,'website','New Test Page',NULL,'summary','New Test Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(36,19,16,'website','New Test Page',NULL,'summary','New Test Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(37,19,17,'website','New Test Page',NULL,'summary','New Test Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(38,22,1,'website','New Content Page',NULL,'summary','New Content Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(39,22,2,'website','New Content Page','Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Donec sed odio dui. Maecenas faucibus mollis interdum.','summary','New Content Page','Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Donec sed odio dui. Maecenas faucibus mollis interdum.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(40,19,18,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(41,22,3,'website','New Content Page','Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Donec sed odio dui. Maecenas faucibus mollis interdum.','summary','New Content Page','Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Donec sed odio dui. Maecenas faucibus mollis interdum.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(42,19,19,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(43,19,20,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(44,19,21,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(45,19,22,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(46,13,2,'website','Home','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or','summary','Home','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(47,13,3,'website','Home','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or','summary','Home','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(48,13,4,'website','Home','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or','summary','Home','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(49,13,5,'website','Home','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or','summary','Home','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(50,13,6,'website','Home','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or','summary','Home','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(51,13,7,'website','Home','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or','summary','Home','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(52,13,8,'website','Home','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or','summary','Home','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(53,13,9,'website','Home','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or','summary','Home','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(54,23,1,'website','New Product Category Page',NULL,'summary','New Product Category Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(55,23,2,'website','Umbrellar Cloud',NULL,'summary','Umbrellar Cloud',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(56,24,1,'website','New Product Sub Category Page',NULL,'summary','New Product Sub Category Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(57,24,2,'website','Compute Services',NULL,'summary','Compute Services',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(58,24,3,'website','Compute Services',NULL,'summary','Compute Services',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(59,24,4,'website','Compute Services',NULL,'summary','Compute Services',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(60,24,5,'website','Compute Services',NULL,'summary','Compute Services',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(61,24,6,'website','Compute Services',NULL,'summary','Compute Services',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(62,24,7,'website','Compute Services',NULL,'summary','Compute Services',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(63,24,8,'website','Compute Services',NULL,'summary','Compute Services',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,0,0),(64,24,9,'website','Compute Services',NULL,'summary','Compute Services',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(65,25,1,'website','New Product Page',NULL,'summary','New Product Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(66,25,2,'website','Virtual Machines',NULL,'summary','Virtual Machines',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(67,25,3,'website','Virtual Machines',NULL,'summary','Virtual Machines',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(68,25,4,'website','Virtual Machines',NULL,'summary','Virtual Machines',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(69,26,1,'website','New Knowledge Hub Landing Page',NULL,'summary','New Knowledge Hub Landing Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(70,26,2,'website','New Knowledge Hub Landing Page','Knowledge Hub','summary','New Knowledge Hub Landing Page','Knowledge Hub',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(71,26,3,'website','New Knowledge Hub Landing Page','Knowledge Hub','summary','New Knowledge Hub Landing Page','Knowledge Hub',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(72,26,4,'website','Knowledge Hub','Knowledge Hub','summary','Knowledge Hub','Knowledge Hub',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(73,26,5,'website','Knowledge Hub','Knowledge Hub','summary','Knowledge Hub','Knowledge Hub',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(74,27,1,'website','New Knowledge Hub Group Page',NULL,'summary','New Knowledge Hub Group Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(75,27,2,'website','Case Studies',NULL,'summary','Case Studies',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(76,28,1,'website','New Knowledge Article',NULL,'summary','New Knowledge Article',NULL,NULL,NULL,NULL,NULL,0,0,NULL,1,0),(77,28,2,'website','Case Study A',NULL,'summary','Case Study A',NULL,NULL,NULL,NULL,NULL,0,0,NULL,1,0),(78,13,10,'website','Home','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or','summary','Home','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(79,29,1,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(80,19,23,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(81,30,1,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(82,31,1,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(83,32,1,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(84,33,1,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(85,33,2,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(86,33,3,'website','New Mod Page y\'all',NULL,'summary','New Mod Page y\'all',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(87,34,1,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(88,35,1,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(89,36,1,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(90,37,1,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(91,38,1,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(92,39,1,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(93,40,1,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(94,41,1,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(95,42,1,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(96,43,1,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(97,44,1,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(98,45,1,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(99,46,1,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(100,47,1,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(101,48,1,'website','Module Page',NULL,'summary','Module Page',NULL,NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(102,14,2,'website','About Us','You can fill this page out with your own content, or delete it and create your own pages.','summary','About Us','You can fill this page out with your own content, or delete it and create your own pages.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(103,14,3,'website','About Us','You can fill this page out with your own content, or delete it and create your own pages.','summary','About Us','You can fill this page out with your own content, or delete it and create your own pages.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(104,14,4,'website','About Us','You can fill this page out with your own content, or delete it and create your own pages.','summary','About Us','You can fill this page out with your own content, or delete it and create your own pages.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(105,14,5,'website','About Us','You can fill this page out with your own content, or delete it and create your own pages.','summary','About Us','You can fill this page out with your own content, or delete it and create your own pages.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(106,13,11,'website','Home','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or','summary','Home','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(107,13,12,'website','Home','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or','summary','Home','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(108,15,2,'website','Contact Us','You can fill this page out with your own content, or delete it and create your own pages.','summary','Contact Us','You can fill this page out with your own content, or delete it and create your own pages.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(109,15,3,'website','Contact Us','You can fill this page out with your own content, or delete it and create your own pages.','summary','Contact Us','You can fill this page out with your own content, or delete it and create your own pages.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(110,15,4,'website','Contact Us','You can fill this page out with your own content, or delete it and create your own pages.','summary','Contact Us','You can fill this page out with your own content, or delete it and create your own pages.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(111,15,5,'website','Contact Us','You can fill this page out with your own content, or delete it and create your own pages.','summary','Contact Us','You can fill this page out with your own content, or delete it and create your own pages.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(112,15,6,'website','Contact Us','You can fill this page out with your own content, or delete it and create your own pages.','summary','Contact Us','You can fill this page out with your own content, or delete it and create your own pages.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(113,15,7,'website','Contact Us','You can fill this page out with your own content, or delete it and create your own pages.','summary','Contact Us','You can fill this page out with your own content, or delete it and create your own pages.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(114,15,8,'website','Contact Us','You can fill this page out with your own content, or delete it and create your own pages.','summary','Contact Us','You can fill this page out with your own content, or delete it and create your own pages.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(115,15,9,'website','Contact Us','You can fill this page out with your own content, or delete it and create your own pages.','summary','Contact Us','You can fill this page out with your own content, or delete it and create your own pages.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(116,15,10,'website','Contact Us','You can fill this page out with your own content, or delete it and create your own pages.','summary','Contact Us','You can fill this page out with your own content, or delete it and create your own pages.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,0),(117,15,11,'website','Contact Us','You can fill this page out with your own content, or delete it and create your own pages.','summary','Contact Us','You can fill this page out with your own content, or delete it and create your own pages.',NULL,NULL,'INDEX, FOLLOW',NULL,0,0,NULL,1,1);
/*!40000 ALTER TABLE `Page_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PardotForm`
--

DROP TABLE IF EXISTS `PardotForm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PardotForm` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PardotForm') CHARACTER SET utf8 DEFAULT 'PardotForm',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Type` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Endpoint` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Template` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `PageID` int(11) NOT NULL DEFAULT '0',
  `SuccessURLID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `PageID` (`PageID`),
  KEY `SuccessURLID` (`SuccessURLID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PardotForm`
--

LOCK TABLES `PardotForm` WRITE;
/*!40000 ALTER TABLE `PardotForm` DISABLE KEYS */;
INSERT INTO `PardotForm` VALUES (1,'PardotForm','2017-08-11 15:56:48','2017-08-11 15:54:55','Contact Form','0','https://go.pardot.com/l/145411/2017-08-10/scgq4','ContactForm',0,67),(2,'PardotForm','2017-08-11 18:54:32','2017-08-11 18:54:32','Form Test','0','http://www2.umbrellar.nz/l/145411/2017-08-10/scgq4	','ContactForm',0,69);
/*!40000 ALTER TABLE `PardotForm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Permission`
--

DROP TABLE IF EXISTS `Permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Permission` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Permission') CHARACTER SET utf8 DEFAULT 'Permission',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `GroupID` (`GroupID`),
  KEY `Code` (`Code`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Permission`
--

LOCK TABLES `Permission` WRITE;
/*!40000 ALTER TABLE `Permission` DISABLE KEYS */;
INSERT INTO `Permission` VALUES (11,'Permission','2017-06-29 21:32:28','2017-06-29 21:32:28','CMS_ACCESS_CMSMain',0,1,5),(12,'Permission','2017-06-29 21:32:28','2017-06-29 21:32:28','CMS_ACCESS_AssetAdmin',0,1,5),(13,'Permission','2017-06-29 21:32:28','2017-06-29 21:32:28','CMS_ACCESS_ReportAdmin',0,1,5),(14,'Permission','2017-06-29 21:32:28','2017-06-29 21:32:28','SITETREE_REORGANISE',0,1,5),(15,'Permission','2017-06-29 21:32:28','2017-06-29 21:32:28','ADMIN',0,1,6);
/*!40000 ALTER TABLE `Permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionRole`
--

DROP TABLE IF EXISTS `PermissionRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionRole` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRole') CHARACTER SET utf8 DEFAULT 'PermissionRole',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionRole`
--

LOCK TABLES `PermissionRole` WRITE;
/*!40000 ALTER TABLE `PermissionRole` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionRoleCode`
--

DROP TABLE IF EXISTS `PermissionRoleCode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionRoleCode` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('PermissionRoleCode') CHARACTER SET utf8 DEFAULT 'PermissionRoleCode',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RoleID` (`RoleID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionRoleCode`
--

LOCK TABLES `PermissionRoleCode` WRITE;
/*!40000 ALTER TABLE `PermissionRoleCode` DISABLE KEYS */;
/*!40000 ALTER TABLE `PermissionRoleCode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PromoModule`
--

DROP TABLE IF EXISTS `PromoModule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PromoModule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CallToActionButtonID` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `Text` mediumtext CHARACTER SET utf8,
  `ImageID` int(11) NOT NULL DEFAULT '0',
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CallToActionButtonID` (`CallToActionButtonID`),
  KEY `ImageID` (`ImageID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PromoModule`
--

LOCK TABLES `PromoModule` WRITE;
/*!40000 ALTER TABLE `PromoModule` DISABLE KEYS */;
INSERT INTO `PromoModule` VALUES (21,53,'Increase Your \r\nWebsite Conversion Rates','<p>What would a 5%, 15%, 25% or even 50% increase in conversion rates mean for your business?</p><p>Download our ebook and ensure that your landing pages, product pages, checkout processes and shopping carts \'secure the transaction\' and turn a visitor into a paying customer or lead.</p>',11,1,'h2',0);
/*!40000 ALTER TABLE `PromoModule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PromoModule_Live`
--

DROP TABLE IF EXISTS `PromoModule_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PromoModule_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CallToActionButtonID` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `Text` mediumtext CHARACTER SET utf8,
  `ImageID` int(11) NOT NULL DEFAULT '0',
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CallToActionButtonID` (`CallToActionButtonID`),
  KEY `ImageID` (`ImageID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PromoModule_Live`
--

LOCK TABLES `PromoModule_Live` WRITE;
/*!40000 ALTER TABLE `PromoModule_Live` DISABLE KEYS */;
INSERT INTO `PromoModule_Live` VALUES (21,53,'Increase Your \r\nWebsite Conversion Rates','<p>What would a 5%, 15%, 25% or even 50% increase in conversion rates mean for your business?</p><p>Download our ebook and ensure that your landing pages, product pages, checkout processes and shopping carts \'secure the transaction\' and turn a visitor into a paying customer or lead.</p>',11,1,'h2',0);
/*!40000 ALTER TABLE `PromoModule_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PromoModule_versions`
--

DROP TABLE IF EXISTS `PromoModule_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PromoModule_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `CallToActionButtonID` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `Text` mediumtext CHARACTER SET utf8,
  `ImageID` int(11) NOT NULL DEFAULT '0',
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `CallToActionButtonID` (`CallToActionButtonID`),
  KEY `ImageID` (`ImageID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PromoModule_versions`
--

LOCK TABLES `PromoModule_versions` WRITE;
/*!40000 ALTER TABLE `PromoModule_versions` DISABLE KEYS */;
INSERT INTO `PromoModule_versions` VALUES (4,21,1,0,'Increase Your Website Conversion Rates','<p>What would a 5%, 15%, 25% or even 50% increase in conversion rates mean for your business?</p><p>Download our ebook and ensure that your landing pages, product pages, checkout processes and shopping carts \'secure the transaction\' and turn a visitor into a paying customer or lead.</p>',11,0,'h2',0),(5,21,2,0,'Increase Your Website Conversion Rates','<p>What would a 5%, 15%, 25% or even 50% increase in conversion rates mean for your business?</p><p>Download our ebook and ensure that your landing pages, product pages, checkout processes and shopping carts \'secure the transaction\' and turn a visitor into a paying customer or lead.</p>',11,0,'h2',0),(6,21,3,0,'Increase Your Website Conversion Rates','<p>What would a 5%, 15%, 25% or even 50% increase in conversion rates mean for your business?</p><p>Download our ebook and ensure that your landing pages, product pages, checkout processes and shopping carts \'secure the transaction\' and turn a visitor into a paying customer or lead.</p>',11,0,'h2',0),(7,21,4,53,'Increase Your Website Conversion Rates','<p>What would a 5%, 15%, 25% or even 50% increase in conversion rates mean for your business?</p><p>Download our ebook and ensure that your landing pages, product pages, checkout processes and shopping carts \'secure the transaction\' and turn a visitor into a paying customer or lead.</p>',11,0,'h2',0),(8,21,5,53,'Increase Your Website Conversion Rates','<p>What would a 5%, 15%, 25% or even 50% increase in conversion rates mean for your business?</p><p>Download our ebook and ensure that your landing pages, product pages, checkout processes and shopping carts \'secure the transaction\' and turn a visitor into a paying customer or lead.</p>',11,0,'h2',0),(9,21,6,53,'Increase Your Website Conversion Rates','<p>What would a 5%, 15%, 25% or even 50% increase in conversion rates mean for your business?</p><p>Download our ebook and ensure that your landing pages, product pages, checkout processes and shopping carts \'secure the transaction\' and turn a visitor into a paying customer or lead.</p>',11,1,'h2',0),(10,21,7,53,'Increase Your Website Conversion Rates','<p>What would a 5%, 15%, 25% or even 50% increase in conversion rates mean for your business?</p><p>Download our ebook and ensure that your landing pages, product pages, checkout processes and shopping carts \'secure the transaction\' and turn a visitor into a paying customer or lead.</p>',11,1,'h2',0),(11,21,8,53,'Increase Your Website \r\nConversion Rates','<p>What would a 5%, 15%, 25% or even 50% increase in conversion rates mean for your business?</p><p>Download our ebook and ensure that your landing pages, product pages, checkout processes and shopping carts \'secure the transaction\' and turn a visitor into a paying customer or lead.</p>',11,1,'h2',0),(12,21,9,53,'Increase Your Website \r\nConversion Rates','<p>What would a 5%, 15%, 25% or even 50% increase in conversion rates mean for your business?</p><p>Download our ebook and ensure that your landing pages, product pages, checkout processes and shopping carts \'secure the transaction\' and turn a visitor into a paying customer or lead.</p>',11,1,'h2',0),(13,21,10,53,'Increase Your \r\nWebsite Conversion Rates','<p>What would a 5%, 15%, 25% or even 50% increase in conversion rates mean for your business?</p><p>Download our ebook and ensure that your landing pages, product pages, checkout processes and shopping carts \'secure the transaction\' and turn a visitor into a paying customer or lead.</p>',11,1,'h2',0),(14,21,11,53,'Increase Your \r\nWebsite Conversion Rates','<p>What would a 5%, 15%, 25% or even 50% increase in conversion rates mean for your business?</p><p>Download our ebook and ensure that your landing pages, product pages, checkout processes and shopping carts \'secure the transaction\' and turn a visitor into a paying customer or lead.</p>',11,1,'h2',0);
/*!40000 ALTER TABLE `PromoModule_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RawHTMLTextBlock`
--

DROP TABLE IF EXISTS `RawHTMLTextBlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RawHTMLTextBlock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Content` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RawHTMLTextBlock`
--

LOCK TABLES `RawHTMLTextBlock` WRITE;
/*!40000 ALTER TABLE `RawHTMLTextBlock` DISABLE KEYS */;
INSERT INTO `RawHTMLTextBlock` VALUES (16,'<p>Nullam quis risus eget urna mollis ornare vel eu leo. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Donec ullamcorper nulla non metus auctor fringilla. Cras mattis consectetur purus sit amet fermentum.</p>'),(17,'<p>Aenean lacinia bibendum nulla sed consectetur. Nullam id dolor id nibh ultricies vehicula ut id elit. Donec ullamcorper nulla non metus auctor fringilla. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Aenean lacinia bibendum nulla sed consectetur. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Maecenas sed diam eget risus varius blandit sit amet non magna. Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Maecenas faucibus mollis interdum. Curabitur blandit tempus porttitor. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Sed posuere consectetur est at lobortis. Aenean lacinia bibendum nulla sed consectetur. Cras mattis consectetur purus sit amet fermentum. Nullam id dolor id nibh ultricies vehicula ut id elit. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed posuere consectetur est at lobortis.</p>');
/*!40000 ALTER TABLE `RawHTMLTextBlock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RawHTMLTextBlock_Live`
--

DROP TABLE IF EXISTS `RawHTMLTextBlock_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RawHTMLTextBlock_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Content` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RawHTMLTextBlock_Live`
--

LOCK TABLES `RawHTMLTextBlock_Live` WRITE;
/*!40000 ALTER TABLE `RawHTMLTextBlock_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `RawHTMLTextBlock_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RawHTMLTextBlock_versions`
--

DROP TABLE IF EXISTS `RawHTMLTextBlock_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RawHTMLTextBlock_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Content` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RawHTMLTextBlock_versions`
--

LOCK TABLES `RawHTMLTextBlock_versions` WRITE;
/*!40000 ALTER TABLE `RawHTMLTextBlock_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `RawHTMLTextBlock_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RedirectorPage`
--

DROP TABLE IF EXISTS `RedirectorPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RedirectorPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RedirectorPage`
--

LOCK TABLES `RedirectorPage` WRITE;
/*!40000 ALTER TABLE `RedirectorPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `RedirectorPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RedirectorPage_Live`
--

DROP TABLE IF EXISTS `RedirectorPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RedirectorPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RedirectorPage_Live`
--

LOCK TABLES `RedirectorPage_Live` WRITE;
/*!40000 ALTER TABLE `RedirectorPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `RedirectorPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RedirectorPage_versions`
--

DROP TABLE IF EXISTS `RedirectorPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RedirectorPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External') CHARACTER SET utf8 DEFAULT 'Internal',
  `ExternalURL` varchar(2083) CHARACTER SET utf8 DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `LinkToID` (`LinkToID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RedirectorPage_versions`
--

LOCK TABLES `RedirectorPage_versions` WRITE;
/*!40000 ALTER TABLE `RedirectorPage_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `RedirectorPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Resource`
--

DROP TABLE IF EXISTS `Resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Resource` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AttachedFileID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `AttachedFileID` (`AttachedFileID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Resource`
--

LOCK TABLES `Resource` WRITE;
/*!40000 ALTER TABLE `Resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `Resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Resource_Live`
--

DROP TABLE IF EXISTS `Resource_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Resource_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `AttachedFileID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `AttachedFileID` (`AttachedFileID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Resource_Live`
--

LOCK TABLES `Resource_Live` WRITE;
/*!40000 ALTER TABLE `Resource_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `Resource_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Resource_versions`
--

DROP TABLE IF EXISTS `Resource_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Resource_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `AttachedFileID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AttachedFileID` (`AttachedFileID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Resource_versions`
--

LOCK TABLES `Resource_versions` WRITE;
/*!40000 ALTER TABLE `Resource_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Resource_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SingleColumnBlock`
--

DROP TABLE IF EXISTS `SingleColumnBlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SingleColumnBlock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Content` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SingleColumnBlock`
--

LOCK TABLES `SingleColumnBlock` WRITE;
/*!40000 ALTER TABLE `SingleColumnBlock` DISABLE KEYS */;
/*!40000 ALTER TABLE `SingleColumnBlock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SingleColumnBlock_Live`
--

DROP TABLE IF EXISTS `SingleColumnBlock_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SingleColumnBlock_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Content` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SingleColumnBlock_Live`
--

LOCK TABLES `SingleColumnBlock_Live` WRITE;
/*!40000 ALTER TABLE `SingleColumnBlock_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `SingleColumnBlock_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SingleColumnBlock_versions`
--

DROP TABLE IF EXISTS `SingleColumnBlock_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SingleColumnBlock_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Content` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SingleColumnBlock_versions`
--

LOCK TABLES `SingleColumnBlock_versions` WRITE;
/*!40000 ALTER TABLE `SingleColumnBlock_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `SingleColumnBlock_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig`
--

DROP TABLE IF EXISTS `SiteConfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteConfig` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteConfig') CHARACTER SET utf8 DEFAULT 'SiteConfig',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Tagline` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Theme` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') CHARACTER SET utf8 DEFAULT 'LoggedInUsers',
  `GoogleSiteVerificationCode` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `GoogleAnalyticsCode` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `SiteVersion` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `GoogleCustomCode` mediumtext CHARACTER SET utf8,
  `OGType` enum('website','article','blog','product') CHARACTER SET utf8 DEFAULT 'website',
  `OGTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `OGDescription` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `TwitterCard` enum('summary','summary_large_image') CHARACTER SET utf8 DEFAULT 'summary',
  `TwitterTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `TwitterDescription` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `GMapsAPIKey` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `GMapsEnableStreetView` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `GoogleWebmasterMetaTag` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `MaintenanceMode` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `OGImageID` int(11) NOT NULL DEFAULT '0',
  `TwitterImageID` int(11) NOT NULL DEFAULT '0',
  `CanonicalURL` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `CopyrightNotice` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `VWOCode` mediumtext CHARACTER SET utf8,
  `SupportText` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `LoginLinkID` int(11) NOT NULL DEFAULT '0',
  `GetStartedID` int(11) NOT NULL DEFAULT '0',
  `SupportLinkID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `OGImageID` (`OGImageID`),
  KEY `TwitterImageID` (`TwitterImageID`),
  KEY `ClassName` (`ClassName`),
  KEY `LoginLinkID` (`LoginLinkID`),
  KEY `GetStartedID` (`GetStartedID`),
  KEY `SupportLinkID` (`SupportLinkID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteConfig`
--

LOCK TABLES `SiteConfig` WRITE;
/*!40000 ALTER TABLE `SiteConfig` DISABLE KEYS */;
INSERT INTO `SiteConfig` VALUES (3,'SiteConfig','2017-08-09 17:35:55','2017-06-29 21:32:30','Your Site Name','your tagline here','default','Anyone','LoggedInUsers','LoggedInUsers',NULL,NULL,NULL,NULL,'website',NULL,NULL,'summary',NULL,NULL,'AIzaSyDPNGGuISyBPUIx6rKMJAWL3arLUrrOVnI',0,NULL,0,0,0,NULL,NULL,NULL,'24/7 Support: 0800 UMBRELLAR',5,6,0);
/*!40000 ALTER TABLE `SiteConfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig_CreateTopLevelGroups`
--

DROP TABLE IF EXISTS `SiteConfig_CreateTopLevelGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteConfig_CreateTopLevelGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteConfig_CreateTopLevelGroups`
--

LOCK TABLES `SiteConfig_CreateTopLevelGroups` WRITE;
/*!40000 ALTER TABLE `SiteConfig_CreateTopLevelGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteConfig_CreateTopLevelGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig_EditorGroups`
--

DROP TABLE IF EXISTS `SiteConfig_EditorGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteConfig_EditorGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteConfig_EditorGroups`
--

LOCK TABLES `SiteConfig_EditorGroups` WRITE;
/*!40000 ALTER TABLE `SiteConfig_EditorGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteConfig_EditorGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteConfig_ViewerGroups`
--

DROP TABLE IF EXISTS `SiteConfig_ViewerGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteConfig_ViewerGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteConfig_ViewerGroups`
--

LOCK TABLES `SiteConfig_ViewerGroups` WRITE;
/*!40000 ALTER TABLE `SiteConfig_ViewerGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteConfig_ViewerGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree`
--

DROP TABLE IF EXISTS `SiteTree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTree` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteTree','Page','ErrorPage','UtilityPage','RedirectorPage','VirtualPage','CareerLayoutPage','CareerLandingPage','VisionPage','ContactPage','ContentPage','JobVacancyPage','KnowledgeHubGroupPage','KnowledgeHubLandingPage','TeamPage','KnowledgeArticle','Article','CaseStudy','Resource','Video','WhitePaper','ModulePage','GenericPage','HomePage','ProductCategoryPage','ProductPage','ProductSubCategoryPage') CHARACTER SET utf8 DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `Priority` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree`
--

LOCK TABLES `SiteTree` WRITE;
/*!40000 ALTER TABLE `SiteTree` DISABLE KEYS */;
INSERT INTO `SiteTree` VALUES (13,'HomePage','2017-08-09 15:42:42','2017-06-29 21:32:29','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or',NULL,0,1,1,0,0,NULL,'Inherit','Inherit',NULL,12,0),(14,'ProductSubCategoryPage','2017-08-09 15:18:26','2017-06-29 21:32:29','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>','You can fill this page out with your own content, or delete it and create your own pages.',NULL,1,1,2,0,0,NULL,'Inherit','Inherit',NULL,5,0),(15,'ContactPage','2017-08-11 19:06:10','2017-06-29 21:32:29','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>','You can fill this page out with your own content, or delete it and create your own pages.',NULL,1,1,3,0,0,NULL,'Inherit','Inherit',NULL,11,0),(16,'ErrorPage','2017-06-29 21:32:30','2017-06-29 21:32:30','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>','Sorry, it seems you were trying to access a page that doesn\'t exist.Please check the spelling of the URL you were trying to access and try again.',NULL,0,0,4,0,0,NULL,'Inherit','Inherit',NULL,1,0),(17,'ErrorPage','2017-06-29 21:32:30','2017-06-29 21:32:30','server-error','Server error',NULL,'<p>Sorry, there was a problem with handling your request.</p>','Sorry, there was a problem with handling your request.',NULL,0,0,5,0,0,NULL,'Inherit','Inherit',NULL,1,0),(18,'UtilityPage','2017-06-29 21:32:31','2017-06-29 21:32:31','offline','Undergoing Scheduled Maintenance','Utility Page','<h1>We will be back soon!</h1><p>Sorry for the inconvenience but our site is currently down for scheduled maintenance.</p>','We will be back soon!Sorry for the inconvenience but our site is currently down for scheduled maintenance.',NULL,0,0,6,0,0,NULL,'Inherit','Inherit',NULL,1,0),(19,'GenericPage','2017-07-26 13:49:33','2017-06-30 09:24:50','module-page','Module Page',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',NULL,23,0),(22,'ContentPage','2017-07-06 09:44:12','2017-07-06 09:27:29','new-content-page','New Content Page',NULL,'<p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Donec sed odio dui. Maecenas faucibus mollis interdum. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Donec ullamcorper nulla non metus auctor fringilla. Nullam id dolor id nibh ultricies vehicula ut id elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Aenean lacinia bibendum nulla sed consectetur. Nullam quis risus eget urna mollis ornare vel eu leo. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Donec id elit non mi porta gravida at eget metus.</p><p>Etiam porta sem malesuada magna mollis euismod. Sed posuere consectetur est at lobortis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla vitae elit libero, a pharetra augue.</p><ul class=\"tick-list\">\n<li>Nullam id dolor id nibh ultricies vehicula ut id elit.</li>\n<li>Nullam quis risus eget urna mollis ornare vel eu leo.</li>\n<li>Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</li>\n<li>Sed posuere consectetur est at lobortis.</li>\n<li>Nulla vitae elit libero, a pharetra augue.</li>\n</ul><blockquote>\n<p>Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Vestibulum id ligula porta felis euismod semper. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>\n</blockquote><p> </p>','Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Donec sed odio dui. Maecenas faucibus mollis interdum.',NULL,1,1,8,0,0,NULL,'Inherit','Inherit',NULL,3,0),(23,'ProductCategoryPage','2017-07-13 10:19:48','2017-07-13 10:18:36','umbrellar-cloud','Umbrellar Cloud',NULL,NULL,NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',NULL,2,0),(24,'ProductSubCategoryPage','2017-07-13 11:22:43','2017-07-13 10:55:00','compute-services','Compute Services',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,9,23),(25,'ProductPage','2017-07-18 11:16:06','2017-07-13 13:13:33','virtual-machines','Virtual Machines',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,4,24),(26,'KnowledgeHubLandingPage','2017-07-18 12:03:12','2017-07-18 11:57:53','knowledge-hub','Knowledge Hub',NULL,'Knowledge Hub','Knowledge Hub',NULL,1,1,10,0,0,NULL,'Inherit','Inherit',NULL,5,0),(27,'KnowledgeHubGroupPage','2017-07-18 12:11:27','2017-07-18 12:10:54','case-studies','Case Studies',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,2,26),(28,'KnowledgeArticle','2017-07-18 12:27:06','2017-07-18 12:19:54','case-study-a','Case Study A',NULL,NULL,NULL,NULL,0,0,1,0,0,NULL,'Inherit','Inherit',NULL,2,27),(48,'GenericPage','2017-07-26 14:37:30','2017-07-26 14:37:30','module-page-2','Module Page',NULL,NULL,NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',NULL,1,0);
/*!40000 ALTER TABLE `SiteTree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_EditorGroups`
--

DROP TABLE IF EXISTS `SiteTree_EditorGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTree_EditorGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_EditorGroups`
--

LOCK TABLES `SiteTree_EditorGroups` WRITE;
/*!40000 ALTER TABLE `SiteTree_EditorGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_EditorGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_ImageTracking`
--

DROP TABLE IF EXISTS `SiteTree_ImageTracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTree_ImageTracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `FileID` (`FileID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_ImageTracking`
--

LOCK TABLES `SiteTree_ImageTracking` WRITE;
/*!40000 ALTER TABLE `SiteTree_ImageTracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_ImageTracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_LinkTracking`
--

DROP TABLE IF EXISTS `SiteTree_LinkTracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTree_LinkTracking` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `ChildID` (`ChildID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_LinkTracking`
--

LOCK TABLES `SiteTree_LinkTracking` WRITE;
/*!40000 ALTER TABLE `SiteTree_LinkTracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_LinkTracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_Live`
--

DROP TABLE IF EXISTS `SiteTree_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTree_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SiteTree','Page','ErrorPage','UtilityPage','RedirectorPage','VirtualPage','CareerLayoutPage','CareerLandingPage','VisionPage','ContactPage','ContentPage','JobVacancyPage','KnowledgeHubGroupPage','KnowledgeHubLandingPage','TeamPage','KnowledgeArticle','Article','CaseStudy','Resource','Video','WhitePaper','ModulePage','GenericPage','HomePage','ProductCategoryPage','ProductPage','ProductSubCategoryPage') CHARACTER SET utf8 DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `Priority` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_Live`
--

LOCK TABLES `SiteTree_Live` WRITE;
/*!40000 ALTER TABLE `SiteTree_Live` DISABLE KEYS */;
INSERT INTO `SiteTree_Live` VALUES (13,'HomePage','2017-08-09 15:42:42','2017-06-29 21:32:29','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or',NULL,0,1,1,0,0,NULL,'Inherit','Inherit',NULL,12,0),(14,'ProductSubCategoryPage','2017-08-09 15:18:26','2017-06-29 21:32:29','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>','You can fill this page out with your own content, or delete it and create your own pages.',NULL,1,1,2,0,0,NULL,'Inherit','Inherit',NULL,5,0),(15,'ContactPage','2017-08-11 19:06:11','2017-06-29 21:32:29','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>','You can fill this page out with your own content, or delete it and create your own pages.',NULL,1,1,3,0,0,NULL,'Inherit','Inherit',NULL,11,0),(16,'ErrorPage','2017-06-29 21:32:30','2017-06-29 21:32:30','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>','Sorry, it seems you were trying to access a page that doesn\'t exist.Please check the spelling of the URL you were trying to access and try again.',NULL,0,0,4,0,0,NULL,'Inherit','Inherit',NULL,1,0),(17,'ErrorPage','2017-06-29 21:32:31','2017-06-29 21:32:30','server-error','Server error',NULL,'<p>Sorry, there was a problem with handling your request.</p>','Sorry, there was a problem with handling your request.',NULL,0,0,5,0,0,NULL,'Inherit','Inherit',NULL,1,0),(18,'UtilityPage','2017-06-29 21:32:31','2017-06-29 21:32:31','offline','Undergoing Scheduled Maintenance','Utility Page','<h1>We will be back soon!</h1><p>Sorry for the inconvenience but our site is currently down for scheduled maintenance.</p>','We will be back soon!Sorry for the inconvenience but our site is currently down for scheduled maintenance.',NULL,0,0,6,0,0,NULL,'Inherit','Inherit',NULL,1,0),(19,'GenericPage','2017-07-26 13:49:33','2017-06-30 09:24:50','module-page','Module Page',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',NULL,23,0),(22,'ContentPage','2017-07-06 09:44:12','2017-07-06 09:27:29','new-content-page','New Content Page',NULL,'<p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Donec sed odio dui. Maecenas faucibus mollis interdum. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Donec ullamcorper nulla non metus auctor fringilla. Nullam id dolor id nibh ultricies vehicula ut id elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Aenean lacinia bibendum nulla sed consectetur. Nullam quis risus eget urna mollis ornare vel eu leo. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Donec id elit non mi porta gravida at eget metus.</p><p>Etiam porta sem malesuada magna mollis euismod. Sed posuere consectetur est at lobortis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla vitae elit libero, a pharetra augue.</p><ul class=\"tick-list\">\n<li>Nullam id dolor id nibh ultricies vehicula ut id elit.</li>\n<li>Nullam quis risus eget urna mollis ornare vel eu leo.</li>\n<li>Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</li>\n<li>Sed posuere consectetur est at lobortis.</li>\n<li>Nulla vitae elit libero, a pharetra augue.</li>\n</ul><blockquote>\n<p>Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Vestibulum id ligula porta felis euismod semper. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>\n</blockquote><p> </p>','Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Donec sed odio dui. Maecenas faucibus mollis interdum.',NULL,1,1,8,0,0,NULL,'Inherit','Inherit',NULL,3,0),(23,'ProductCategoryPage','2017-07-13 10:19:48','2017-07-13 10:18:36','umbrellar-cloud','Umbrellar Cloud',NULL,NULL,NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',NULL,2,0),(24,'ProductSubCategoryPage','2017-07-13 11:22:43','2017-07-13 10:55:00','compute-services','Compute Services',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,9,23),(25,'ProductPage','2017-07-18 11:16:06','2017-07-13 13:13:33','virtual-machines','Virtual Machines',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,4,24),(26,'KnowledgeHubLandingPage','2017-07-18 12:03:13','2017-07-18 11:57:53','knowledge-hub','Knowledge Hub',NULL,'Knowledge Hub','Knowledge Hub',NULL,1,1,10,0,0,NULL,'Inherit','Inherit',NULL,5,0),(27,'KnowledgeHubGroupPage','2017-07-18 12:11:27','2017-07-18 12:10:54','case-studies','Case Studies',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,2,26),(28,'KnowledgeArticle','2017-07-18 12:27:06','2017-07-18 12:19:54','case-study-a','Case Study A',NULL,NULL,NULL,NULL,0,0,1,0,0,NULL,'Inherit','Inherit',NULL,2,27);
/*!40000 ALTER TABLE `SiteTree_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_ViewerGroups`
--

DROP TABLE IF EXISTS `SiteTree_ViewerGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTree_ViewerGroups` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteTreeID` (`SiteTreeID`),
  KEY `GroupID` (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_ViewerGroups`
--

LOCK TABLES `SiteTree_ViewerGroups` WRITE;
/*!40000 ALTER TABLE `SiteTree_ViewerGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `SiteTree_ViewerGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SiteTree_versions`
--

DROP TABLE IF EXISTS `SiteTree_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SiteTree_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SiteTree','Page','ErrorPage','UtilityPage','RedirectorPage','VirtualPage','CareerLayoutPage','CareerLandingPage','VisionPage','ContactPage','ContentPage','JobVacancyPage','KnowledgeHubGroupPage','KnowledgeHubLandingPage','TeamPage','KnowledgeArticle','Article','CaseStudy','Resource','Video','WhitePaper','ModulePage','GenericPage','HomePage','ProductCategoryPage','ProductPage','ProductSubCategoryPage') CHARACTER SET utf8 DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `MenuTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `MetaDescription` mediumtext CHARACTER SET utf8,
  `ExtraMeta` mediumtext CHARACTER SET utf8,
  `ShowInMenus` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') CHARACTER SET utf8 DEFAULT 'Inherit',
  `Priority` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ParentID` (`ParentID`),
  KEY `URLSegment` (`URLSegment`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SiteTree_versions`
--

LOCK TABLES `SiteTree_versions` WRITE;
/*!40000 ALTER TABLE `SiteTree_versions` DISABLE KEYS */;
INSERT INTO `SiteTree_versions` VALUES (13,13,1,1,0,0,'Page','2017-06-29 21:32:29','2017-06-29 21:32:29','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or',NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,0),(14,14,1,1,0,3,'Page','2017-06-29 21:32:29','2017-06-29 21:32:29','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>','You can fill this page out with your own content, or delete it and create your own pages.',NULL,1,1,2,0,0,NULL,'Inherit','Inherit',NULL,0),(15,15,1,1,0,0,'Page','2017-06-29 21:32:29','2017-06-29 21:32:29','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>','You can fill this page out with your own content, or delete it and create your own pages.',NULL,1,1,3,0,0,NULL,'Inherit','Inherit',NULL,0),(16,16,1,1,0,0,'ErrorPage','2017-06-29 21:32:30','2017-06-29 21:32:30','page-not-found','Page not found',NULL,'<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>','Sorry, it seems you were trying to access a page that doesn\'t exist.Please check the spelling of the URL you were trying to access and try again.',NULL,0,0,4,0,0,NULL,'Inherit','Inherit',NULL,0),(17,17,1,1,0,0,'ErrorPage','2017-06-29 21:32:30','2017-06-29 21:32:30','server-error','Server error',NULL,'<p>Sorry, there was a problem with handling your request.</p>','Sorry, there was a problem with handling your request.',NULL,0,0,5,0,0,NULL,'Inherit','Inherit',NULL,0),(18,18,1,1,0,0,'UtilityPage','2017-06-29 21:32:31','2017-06-29 21:32:31','offline','Undergoing Scheduled Maintenance','Utility Page','<h1>We will be back soon!</h1><p>Sorry for the inconvenience but our site is currently down for scheduled maintenance.</p>','We will be back soon!Sorry for the inconvenience but our site is currently down for scheduled maintenance.',NULL,0,0,6,0,0,NULL,'Inherit','Inherit',NULL,0),(19,19,1,1,3,3,'','2017-06-30 09:24:50','2017-06-30 09:24:50','new-test-page','New Test Page',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',NULL,0),(20,20,1,0,3,0,'Page','2017-07-03 09:27:50','2017-07-03 09:27:50','new-page','New Page',NULL,NULL,NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',NULL,0),(21,21,1,0,3,0,'Page','2017-07-03 09:32:50','2017-07-03 09:32:50','new-page-2','New Page',NULL,NULL,NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',NULL,0),(22,19,2,1,3,3,'GenericPage','2017-07-03 17:05:16','2017-06-30 09:24:50','new-test-page','New Test Page',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',NULL,0),(23,19,3,1,3,3,'GenericPage','2017-07-03 17:24:29','2017-06-30 09:24:50','new-test-page','New Test Page',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',NULL,0),(24,19,4,1,3,3,'GenericPage','2017-07-03 17:55:38','2017-06-30 09:24:50','new-test-page','New Test Page',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',NULL,0),(25,19,5,0,3,0,'GenericPage','2017-07-03 17:56:19','2017-06-30 09:24:50','new-test-page','New Test Page',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',NULL,0),(26,19,6,1,3,3,'GenericPage','2017-07-03 17:58:12','2017-06-30 09:24:50','new-test-page','New Test Page',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',NULL,0),(27,19,7,1,3,3,'GenericPage','2017-07-03 18:08:27','2017-06-30 09:24:50','new-test-page','New Test Page',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',NULL,0),(28,19,8,1,3,3,'GenericPage','2017-07-03 18:08:44','2017-06-30 09:24:50','new-test-page','New Test Page',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',NULL,0),(29,19,9,1,3,3,'GenericPage','2017-07-03 18:11:33','2017-06-30 09:24:50','new-test-page','New Test Page',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',NULL,0),(30,19,10,1,3,3,'GenericPage','2017-07-05 15:40:54','2017-06-30 09:24:50','new-test-page','New Test Page',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',NULL,0),(31,19,11,1,3,3,'GenericPage','2017-07-05 15:42:15','2017-06-30 09:24:50','new-test-page','New Test Page',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',NULL,0),(32,19,12,1,3,3,'GenericPage','2017-07-05 16:58:53','2017-06-30 09:24:50','new-test-page','New Test Page',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',NULL,0),(33,19,13,1,3,3,'GenericPage','2017-07-05 18:54:44','2017-06-30 09:24:50','new-test-page','New Test Page',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',NULL,0),(34,19,14,1,3,3,'GenericPage','2017-07-05 18:55:01','2017-06-30 09:24:50','new-test-page','New Test Page',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',NULL,0),(35,19,15,1,3,3,'GenericPage','2017-07-05 19:43:41','2017-06-30 09:24:50','new-test-page','New Test Page',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',NULL,0),(36,19,16,1,3,3,'GenericPage','2017-07-05 19:44:27','2017-06-30 09:24:50','new-test-page','New Test Page',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',NULL,0),(37,19,17,1,3,3,'GenericPage','2017-07-05 19:47:59','2017-06-30 09:24:50','new-test-page','New Test Page',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',NULL,0),(38,22,1,0,3,0,'ContentPage','2017-07-06 09:27:29','2017-07-06 09:27:29','new-content-page','New Content Page',NULL,NULL,NULL,NULL,1,1,8,0,0,NULL,'Inherit','Inherit',NULL,0),(39,22,2,1,3,3,'ContentPage','2017-07-06 09:29:38','2017-07-06 09:27:29','new-content-page','New Content Page',NULL,'<p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Donec sed odio dui. Maecenas faucibus mollis interdum. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Donec ullamcorper nulla non metus auctor fringilla. Nullam id dolor id nibh ultricies vehicula ut id elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Aenean lacinia bibendum nulla sed consectetur. Nullam quis risus eget urna mollis ornare vel eu leo. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Donec id elit non mi porta gravida at eget metus.</p><p>Etiam porta sem malesuada magna mollis euismod. Sed posuere consectetur est at lobortis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla vitae elit libero, a pharetra augue.</p><ul class=\"tick-list\">\n<li>Nullam id dolor id nibh ultricies vehicula ut id elit.</li>\n<li>Nullam quis risus eget urna mollis ornare vel eu leo.</li>\n<li>Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</li>\n<li>Sed posuere consectetur est at lobortis.</li>\n<li>Nulla vitae elit libero, a pharetra augue.</li>\n</ul><blockquote>\n<p>Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Vestibulum id ligula porta felis euismod semper. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>\n</blockquote><p> </p>','Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Donec sed odio dui. Maecenas faucibus mollis interdum.',NULL,1,1,8,0,0,NULL,'Inherit','Inherit',NULL,0),(40,19,18,1,3,3,'GenericPage','2017-07-06 09:34:59','2017-06-30 09:24:50','module-page','Module Page',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',NULL,0),(41,22,3,1,3,3,'ContentPage','2017-07-06 09:44:12','2017-07-06 09:27:29','new-content-page','New Content Page',NULL,'<p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Donec sed odio dui. Maecenas faucibus mollis interdum. Nullam quis risus eget urna mollis ornare vel eu leo.</p><p>Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Donec ullamcorper nulla non metus auctor fringilla. Nullam id dolor id nibh ultricies vehicula ut id elit. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Integer posuere erat a ante venenatis dapibus posuere velit aliquet. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec ullamcorper nulla non metus auctor fringilla.</p><p>Aenean lacinia bibendum nulla sed consectetur. Nullam quis risus eget urna mollis ornare vel eu leo. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Donec id elit non mi porta gravida at eget metus.</p><p>Etiam porta sem malesuada magna mollis euismod. Sed posuere consectetur est at lobortis. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla vitae elit libero, a pharetra augue.</p><ul class=\"tick-list\">\n<li>Nullam id dolor id nibh ultricies vehicula ut id elit.</li>\n<li>Nullam quis risus eget urna mollis ornare vel eu leo.</li>\n<li>Integer posuere erat a ante venenatis dapibus posuere velit aliquet.</li>\n<li>Sed posuere consectetur est at lobortis.</li>\n<li>Nulla vitae elit libero, a pharetra augue.</li>\n</ul><blockquote>\n<p>Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Vestibulum id ligula porta felis euismod semper. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>\n</blockquote><p> </p>','Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Donec sed odio dui. Maecenas faucibus mollis interdum.',NULL,1,1,8,0,0,NULL,'Inherit','Inherit',NULL,0),(42,19,19,1,3,3,'GenericPage','2017-07-09 18:47:24','2017-06-30 09:24:50','module-page','Module Page',NULL,NULL,NULL,NULL,0,1,7,0,0,NULL,'Inherit','Inherit',NULL,0),(43,19,20,1,3,3,'GenericPage','2017-07-09 18:59:02','2017-06-30 09:24:50','module-page','Module Page',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',NULL,0),(44,19,21,1,3,3,'GenericPage','2017-07-09 19:00:22','2017-06-30 09:24:50','module-page','Module Page',NULL,NULL,NULL,NULL,0,1,7,0,0,NULL,'Inherit','Inherit',NULL,0),(45,19,22,1,3,3,'GenericPage','2017-07-09 19:15:45','2017-06-30 09:24:50','module-page','Module Page',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',NULL,0),(46,13,2,1,3,3,'HomePage','2017-07-11 09:37:54','2017-06-29 21:32:29','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or',NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,0),(47,13,3,1,3,3,'HomePage','2017-07-11 10:17:11','2017-06-29 21:32:29','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or',NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,0),(48,13,4,1,3,3,'HomePage','2017-07-11 10:22:59','2017-06-29 21:32:29','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or',NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,0),(49,13,5,1,3,3,'HomePage','2017-07-11 10:23:27','2017-06-29 21:32:29','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or',NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,0),(50,13,6,1,3,3,'HomePage','2017-07-11 11:14:45','2017-06-29 21:32:29','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or',NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,0),(51,13,7,1,3,3,'HomePage','2017-07-11 11:37:22','2017-06-29 21:32:29','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or',NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,0),(52,13,8,1,3,3,'HomePage','2017-07-11 12:27:03','2017-06-29 21:32:29','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or',NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,0),(53,13,9,1,3,3,'HomePage','2017-07-11 14:51:07','2017-06-29 21:32:29','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or',NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,0),(54,23,1,0,3,0,'ProductCategoryPage','2017-07-13 10:18:36','2017-07-13 10:18:36','new-product-category-page','New Product Category Page',NULL,NULL,NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',NULL,0),(55,23,2,1,3,3,'ProductCategoryPage','2017-07-13 10:19:48','2017-07-13 10:18:36','umbrellar-cloud','Umbrellar Cloud',NULL,NULL,NULL,NULL,1,1,9,0,0,NULL,'Inherit','Inherit',NULL,0),(56,24,1,0,3,0,'ProductSubCategoryPage','2017-07-13 10:55:00','2017-07-13 10:55:00','new-product-sub-category-page','New Product Sub Category Page',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,23),(57,24,2,1,3,3,'ProductSubCategoryPage','2017-07-13 10:59:19','2017-07-13 10:55:00','compute-services','Compute Services',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,23),(58,24,3,1,3,3,'ProductSubCategoryPage','2017-07-13 11:01:57','2017-07-13 10:55:00','compute-services','Compute Services',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,23),(59,24,4,1,3,3,'ProductSubCategoryPage','2017-07-13 11:08:50','2017-07-13 10:55:00','compute-services','Compute Services',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,23),(60,24,5,1,3,3,'ProductSubCategoryPage','2017-07-13 11:08:56','2017-07-13 10:55:00','compute-services','Compute Services',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,23),(61,24,6,1,3,3,'ProductSubCategoryPage','2017-07-13 11:09:02','2017-07-13 10:55:00','compute-services','Compute Services',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,23),(62,24,7,1,3,3,'ProductSubCategoryPage','2017-07-13 11:20:33','2017-07-13 10:55:00','compute-services','Compute Services',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,23),(63,24,8,1,3,3,'ProductSubCategoryPage','2017-07-13 11:22:31','2017-07-13 10:55:00','compute-services','Compute Services',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,23),(64,24,9,1,3,3,'ProductSubCategoryPage','2017-07-13 11:22:43','2017-07-13 10:55:00','compute-services','Compute Services',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,23),(65,25,1,0,3,0,'ProductPage','2017-07-13 13:13:33','2017-07-13 13:13:33','new-product-page','New Product Page',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,24),(66,25,2,1,3,3,'ProductPage','2017-07-13 13:13:53','2017-07-13 13:13:33','virtual-machines','Virtual Machines',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,24),(67,25,3,1,3,3,'ProductPage','2017-07-13 13:19:51','2017-07-13 13:13:33','virtual-machines','Virtual Machines',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,24),(68,25,4,1,3,3,'ProductPage','2017-07-18 11:16:06','2017-07-13 13:13:33','virtual-machines','Virtual Machines',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,24),(69,26,1,0,3,0,'KnowledgeHubLandingPage','2017-07-18 11:57:53','2017-07-18 11:57:53','new-knowledge-hub-landing-page','New Knowledge Hub Landing Page',NULL,NULL,NULL,NULL,1,1,10,0,0,NULL,'Inherit','Inherit',NULL,0),(70,26,2,1,3,3,'KnowledgeHubLandingPage','2017-07-18 12:00:45','2017-07-18 11:57:53','new-knowledge-hub-landing-page','New Knowledge Hub Landing Page',NULL,'Knowledge Hub','Knowledge Hub',NULL,1,1,10,0,0,NULL,'Inherit','Inherit',NULL,0),(71,26,3,1,3,3,'KnowledgeHubLandingPage','2017-07-18 12:02:58','2017-07-18 11:57:53','new-knowledge-hub-landing-page','New Knowledge Hub Landing Page',NULL,'Knowledge Hub','Knowledge Hub',NULL,1,1,10,0,0,NULL,'Inherit','Inherit',NULL,0),(72,26,4,1,3,3,'KnowledgeHubLandingPage','2017-07-18 12:03:09','2017-07-18 11:57:53','knowledge-hub','Knowledge Hub',NULL,'Knowledge Hub','Knowledge Hub',NULL,1,1,10,0,0,NULL,'Inherit','Inherit',NULL,0),(73,26,5,1,3,3,'KnowledgeHubLandingPage','2017-07-18 12:03:12','2017-07-18 11:57:53','knowledge-hub','Knowledge Hub',NULL,'Knowledge Hub','Knowledge Hub',NULL,1,1,10,0,0,NULL,'Inherit','Inherit',NULL,0),(74,27,1,0,3,0,'KnowledgeHubGroupPage','2017-07-18 12:10:54','2017-07-18 12:10:54','new-knowledge-hub-group-page','New Knowledge Hub Group Page',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,26),(75,27,2,1,3,3,'KnowledgeHubGroupPage','2017-07-18 12:11:27','2017-07-18 12:10:54','case-studies','Case Studies',NULL,NULL,NULL,NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,26),(76,28,1,0,3,0,'KnowledgeArticle','2017-07-18 12:19:54','2017-07-18 12:19:54','new-knowledge-article','New Knowledge Article',NULL,NULL,NULL,NULL,0,0,1,0,0,NULL,'Inherit','Inherit',NULL,27),(77,28,2,1,3,3,'KnowledgeArticle','2017-07-18 12:26:49','2017-07-18 12:19:54','case-study-a','Case Study A',NULL,NULL,NULL,NULL,0,0,1,0,0,NULL,'Inherit','Inherit',NULL,27),(78,13,10,1,3,3,'HomePage','2017-07-21 13:55:53','2017-06-29 21:32:29','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or',NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,0),(79,29,1,0,3,0,'GenericPage','2017-07-26 13:46:48','2017-07-26 13:46:48','module-page-2','Module Page',NULL,NULL,NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',NULL,0),(80,19,23,1,3,3,'GenericPage','2017-07-26 13:49:33','2017-06-30 09:24:50','module-page','Module Page',NULL,NULL,NULL,NULL,1,1,7,0,0,NULL,'Inherit','Inherit',NULL,0),(81,30,1,0,3,0,'GenericPage','2017-07-26 13:49:49','2017-07-26 13:49:49','module-page-2','Module Page',NULL,NULL,NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',NULL,0),(82,31,1,0,3,0,'GenericPage','2017-07-26 13:51:04','2017-07-26 13:51:04','module-page-2','Module Page',NULL,NULL,NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',NULL,0),(83,32,1,0,3,0,'GenericPage','2017-07-26 13:52:41','2017-07-26 13:52:41','module-page-2','Module Page',NULL,NULL,NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',NULL,0),(84,33,1,0,3,0,'GenericPage','2017-07-26 13:57:02','2017-07-26 13:57:02','module-page-2','Module Page',NULL,NULL,NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',NULL,0),(85,33,2,1,3,3,'GenericPage','2017-07-26 13:57:41','2017-07-26 13:57:02','module-page-2','Module Page',NULL,NULL,NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',NULL,0),(86,33,3,1,3,3,'GenericPage','2017-07-26 13:58:14','2017-07-26 13:57:02','new-mod-page-yall','New Mod Page y\'all',NULL,NULL,NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',NULL,0),(87,34,1,0,3,0,'GenericPage','2017-07-26 14:05:55','2017-07-26 14:05:55','module-page-2','Module Page',NULL,NULL,NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',NULL,0),(88,35,1,0,3,0,'GenericPage','2017-07-26 14:06:09','2017-07-26 14:06:09','module-page-3','Module Page',NULL,NULL,NULL,NULL,1,1,12,0,0,NULL,'Inherit','Inherit',NULL,0),(89,36,1,0,3,0,'GenericPage','2017-07-26 14:08:15','2017-07-26 14:08:15','module-page-2','Module Page',NULL,NULL,NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',NULL,0),(90,37,1,0,3,0,'GenericPage','2017-07-26 14:14:06','2017-07-26 14:14:06','module-page-2','Module Page',NULL,NULL,NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',NULL,0),(91,38,1,0,3,0,'GenericPage','2017-07-26 14:22:13','2017-07-26 14:22:13','module-page-2','Module Page',NULL,NULL,NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',NULL,0),(92,39,1,0,3,0,'GenericPage','2017-07-26 14:23:34','2017-07-26 14:23:34','module-page-2','Module Page',NULL,NULL,NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',NULL,0),(93,40,1,0,3,0,'GenericPage','2017-07-26 14:27:40','2017-07-26 14:27:40','module-page-2','Module Page',NULL,NULL,NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',NULL,0),(94,41,1,0,3,0,'GenericPage','2017-07-26 14:30:10','2017-07-26 14:30:10','module-page-2','Module Page',NULL,NULL,NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',NULL,0),(95,42,1,0,3,0,'GenericPage','2017-07-26 14:32:15','2017-07-26 14:32:15','module-page-3','Module Page',NULL,NULL,NULL,NULL,1,1,12,0,0,NULL,'Inherit','Inherit',NULL,0),(96,43,1,0,3,0,'GenericPage','2017-07-26 14:33:01','2017-07-26 14:33:01','module-page-4','Module Page',NULL,NULL,NULL,NULL,1,1,13,0,0,NULL,'Inherit','Inherit',NULL,0),(97,44,1,0,3,0,'GenericPage','2017-07-26 14:33:30','2017-07-26 14:33:30','module-page-5','Module Page',NULL,NULL,NULL,NULL,1,1,14,0,0,NULL,'Inherit','Inherit',NULL,0),(98,45,1,0,3,0,'GenericPage','2017-07-26 14:33:38','2017-07-26 14:33:38','module-page-6','Module Page',NULL,NULL,NULL,NULL,1,1,15,0,0,NULL,'Inherit','Inherit',NULL,0),(99,46,1,0,3,0,'GenericPage','2017-07-26 14:34:37','2017-07-26 14:34:37','module-page-7','Module Page',NULL,NULL,NULL,NULL,1,1,16,0,0,NULL,'Inherit','Inherit',NULL,0),(100,47,1,0,3,0,'GenericPage','2017-07-26 14:36:00','2017-07-26 14:36:00','module-page-8','Module Page',NULL,NULL,NULL,NULL,1,1,17,0,0,NULL,'Inherit','Inherit',NULL,0),(101,48,1,0,3,0,'GenericPage','2017-07-26 14:37:30','2017-07-26 14:37:30','module-page-2','Module Page',NULL,NULL,NULL,NULL,1,1,11,0,0,NULL,'Inherit','Inherit',NULL,0),(102,14,2,1,3,3,'ProductSubCategoryPage','2017-08-09 10:40:20','2017-06-29 21:32:29','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>','You can fill this page out with your own content, or delete it and create your own pages.',NULL,0,1,2,0,0,NULL,'Inherit','Inherit',NULL,0),(103,14,3,1,3,3,'ProductSubCategoryPage','2017-08-09 10:42:06','2017-06-29 21:32:29','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>','You can fill this page out with your own content, or delete it and create your own pages.',NULL,1,1,2,0,0,NULL,'Inherit','Inherit',NULL,0),(104,14,4,1,3,3,'ProductSubCategoryPage','2017-08-09 10:42:17','2017-06-29 21:32:29','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>','You can fill this page out with your own content, or delete it and create your own pages.',NULL,0,1,2,0,0,NULL,'Inherit','Inherit',NULL,0),(105,14,5,1,3,3,'ProductSubCategoryPage','2017-08-09 15:18:26','2017-06-29 21:32:29','about-us','About Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>','You can fill this page out with your own content, or delete it and create your own pages.',NULL,1,1,2,0,0,NULL,'Inherit','Inherit',NULL,0),(106,13,11,1,3,3,'HomePage','2017-08-09 15:42:24','2017-06-29 21:32:29','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or',NULL,1,1,1,0,0,NULL,'Inherit','Inherit',NULL,0),(107,13,12,1,3,3,'HomePage','2017-08-09 15:42:42','2017-06-29 21:32:29','home','Home',NULL,'<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>','Welcome to SilverStripe! This is the default homepage. You can edit this page by opening the CMS.You can now access the developer documentation, or',NULL,0,1,1,0,0,NULL,'Inherit','Inherit',NULL,0),(108,15,2,1,3,3,'ContactPage','2017-08-09 15:50:54','2017-06-29 21:32:29','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>','You can fill this page out with your own content, or delete it and create your own pages.',NULL,1,1,3,0,0,NULL,'Inherit','Inherit',NULL,0),(109,15,3,1,3,3,'ContactPage','2017-08-09 16:04:52','2017-06-29 21:32:29','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>','You can fill this page out with your own content, or delete it and create your own pages.',NULL,1,1,3,0,0,NULL,'Inherit','Inherit',NULL,0),(110,15,4,1,3,3,'ContactPage','2017-08-09 16:21:57','2017-06-29 21:32:29','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>','You can fill this page out with your own content, or delete it and create your own pages.',NULL,1,1,3,0,0,NULL,'Inherit','Inherit',NULL,0),(111,15,5,1,3,3,'ContactPage','2017-08-09 16:36:30','2017-06-29 21:32:29','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>','You can fill this page out with your own content, or delete it and create your own pages.',NULL,1,1,3,0,0,NULL,'Inherit','Inherit',NULL,0),(112,15,6,1,3,3,'ContactPage','2017-08-09 18:11:16','2017-06-29 21:32:29','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>','You can fill this page out with your own content, or delete it and create your own pages.',NULL,1,1,3,0,0,NULL,'Inherit','Inherit',NULL,0),(113,15,7,1,3,3,'ContactPage','2017-08-09 18:48:00','2017-06-29 21:32:29','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>','You can fill this page out with your own content, or delete it and create your own pages.',NULL,1,1,3,0,0,NULL,'Inherit','Inherit',NULL,0),(114,15,8,1,3,3,'ContactPage','2017-08-09 18:52:00','2017-06-29 21:32:29','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>','You can fill this page out with your own content, or delete it and create your own pages.',NULL,1,1,3,0,0,NULL,'Inherit','Inherit',NULL,0),(115,15,9,1,3,3,'ContactPage','2017-08-09 19:04:24','2017-06-29 21:32:29','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>','You can fill this page out with your own content, or delete it and create your own pages.',NULL,1,1,3,0,0,NULL,'Inherit','Inherit',NULL,0),(116,15,10,1,3,3,'ContactPage','2017-08-11 15:54:55','2017-06-29 21:32:29','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>','You can fill this page out with your own content, or delete it and create your own pages.',NULL,1,1,3,0,0,NULL,'Inherit','Inherit',NULL,0),(117,15,11,1,3,3,'ContactPage','2017-08-11 19:06:10','2017-06-29 21:32:29','contact-us','Contact Us',NULL,'<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>','You can fill this page out with your own content, or delete it and create your own pages.',NULL,1,1,3,0,0,NULL,'Inherit','Inherit',NULL,0);
/*!40000 ALTER TABLE `SiteTree_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialChannel`
--

DROP TABLE IF EXISTS `SocialChannel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialChannel` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SocialChannel') CHARACTER SET utf8 DEFAULT 'SocialChannel',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Channel` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  `DisplayName` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `URL` varchar(512) CHARACTER SET utf8 DEFAULT NULL,
  `ExtraCSSClass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `SiteConfigID` (`SiteConfigID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialChannel`
--

LOCK TABLES `SocialChannel` WRITE;
/*!40000 ALTER TABLE `SocialChannel` DISABLE KEYS */;
INSERT INTO `SocialChannel` VALUES (1,'SocialChannel','2017-08-08 19:28:31','2017-08-08 19:28:31','linkedin',NULL,'http://www.google.com',NULL,3,0),(2,'SocialChannel','2017-08-08 19:29:26','2017-08-08 19:29:26','facebook',NULL,'http://www.google.com',NULL,3,0),(3,'SocialChannel','2017-08-08 19:30:27','2017-08-08 19:30:27','twitter',NULL,'http://www.google.com',NULL,3,0),(4,'SocialChannel','2017-08-08 19:30:44','2017-08-08 19:30:44','github',NULL,'http://www.google.com',NULL,3,0),(5,'SocialChannel','2017-08-08 19:31:06','2017-08-08 19:31:06','google-plus',NULL,'www.google.com',NULL,3,0);
/*!40000 ALTER TABLE `SocialChannel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SortableImage`
--

DROP TABLE IF EXISTS `SortableImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SortableImage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SortableImage') CHARACTER SET utf8 DEFAULT 'SortableImage',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0',
  `ModuleID` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ImageID` (`ImageID`),
  KEY `ModuleID` (`ModuleID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SortableImage`
--

LOCK TABLES `SortableImage` WRITE;
/*!40000 ALTER TABLE `SortableImage` DISABLE KEYS */;
INSERT INTO `SortableImage` VALUES (1,'SortableImage','2017-07-04 15:06:06','2017-07-04 15:04:10',1,4,15,2),(2,'SortableImage','2017-07-04 15:06:06','2017-07-04 15:05:42',1,3,15,1);
/*!40000 ALTER TABLE `SortableImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SortableImage_Live`
--

DROP TABLE IF EXISTS `SortableImage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SortableImage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('SortableImage') CHARACTER SET utf8 DEFAULT 'SortableImage',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Version` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0',
  `ModuleID` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ImageID` (`ImageID`),
  KEY `ModuleID` (`ModuleID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SortableImage_Live`
--

LOCK TABLES `SortableImage_Live` WRITE;
/*!40000 ALTER TABLE `SortableImage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `SortableImage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SortableImage_versions`
--

DROP TABLE IF EXISTS `SortableImage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SortableImage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SortableImage') CHARACTER SET utf8 DEFAULT 'SortableImage',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `ImageID` int(11) NOT NULL DEFAULT '0',
  `ModuleID` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ImageID` (`ImageID`),
  KEY `ModuleID` (`ModuleID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SortableImage_versions`
--

LOCK TABLES `SortableImage_versions` WRITE;
/*!40000 ALTER TABLE `SortableImage_versions` DISABLE KEYS */;
INSERT INTO `SortableImage_versions` VALUES (1,1,1,0,3,0,'SortableImage','2017-07-04 15:04:10','2017-07-04 15:04:10',4,15,0),(2,2,1,0,3,0,'SortableImage','2017-07-04 15:05:42','2017-07-04 15:05:42',3,15,0);
/*!40000 ALTER TABLE `SortableImage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StatTile`
--

DROP TABLE IF EXISTS `StatTile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StatTile` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('StatTile') CHARACTER SET utf8 DEFAULT 'StatTile',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `Subscript` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  `KSeparator` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `ColumnWidth` int(11) NOT NULL DEFAULT '0',
  `BgColour` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `FontColour` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `StatTilesID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `StatTilesID` (`StatTilesID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StatTile`
--

LOCK TABLES `StatTile` WRITE;
/*!40000 ALTER TABLE `StatTile` DISABLE KEYS */;
/*!40000 ALTER TABLE `StatTile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StatTiles`
--

DROP TABLE IF EXISTS `StatTiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StatTiles` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('StatTiles') CHARACTER SET utf8 DEFAULT 'StatTiles',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(16) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StatTiles`
--

LOCK TABLES `StatTiles` WRITE;
/*!40000 ALTER TABLE `StatTiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `StatTiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StatsModule`
--

DROP TABLE IF EXISTS `StatsModule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StatsModule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  `StatImageAID` int(11) NOT NULL DEFAULT '0',
  `StatImageBID` int(11) NOT NULL DEFAULT '0',
  `StatImageCID` int(11) NOT NULL DEFAULT '0',
  `ImageAID` int(11) NOT NULL DEFAULT '0',
  `ImageBID` int(11) NOT NULL DEFAULT '0',
  `ImageCID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `StatImageAID` (`StatImageAID`),
  KEY `StatImageBID` (`StatImageBID`),
  KEY `StatImageCID` (`StatImageCID`),
  KEY `ImageAID` (`ImageAID`),
  KEY `ImageBID` (`ImageBID`),
  KEY `ImageCID` (`ImageCID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StatsModule`
--

LOCK TABLES `StatsModule` WRITE;
/*!40000 ALTER TABLE `StatsModule` DISABLE KEYS */;
INSERT INTO `StatsModule` VALUES (28,'Stats Module',0,'h2',0,0,0,38,39,40);
/*!40000 ALTER TABLE `StatsModule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StatsModule_Live`
--

DROP TABLE IF EXISTS `StatsModule_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StatsModule_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  `StatImageAID` int(11) NOT NULL DEFAULT '0',
  `StatImageBID` int(11) NOT NULL DEFAULT '0',
  `StatImageCID` int(11) NOT NULL DEFAULT '0',
  `ImageAID` int(11) NOT NULL DEFAULT '0',
  `ImageBID` int(11) NOT NULL DEFAULT '0',
  `ImageCID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `StatImageAID` (`StatImageAID`),
  KEY `StatImageBID` (`StatImageBID`),
  KEY `StatImageCID` (`StatImageCID`),
  KEY `ImageAID` (`ImageAID`),
  KEY `ImageBID` (`ImageBID`),
  KEY `ImageCID` (`ImageCID`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StatsModule_Live`
--

LOCK TABLES `StatsModule_Live` WRITE;
/*!40000 ALTER TABLE `StatsModule_Live` DISABLE KEYS */;
INSERT INTO `StatsModule_Live` VALUES (28,'Stats Module',0,'h2',0,0,0,38,39,40);
/*!40000 ALTER TABLE `StatsModule_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StatsModule_versions`
--

DROP TABLE IF EXISTS `StatsModule_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StatsModule_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Title` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  `StatImageAID` int(11) NOT NULL DEFAULT '0',
  `StatImageBID` int(11) NOT NULL DEFAULT '0',
  `StatImageCID` int(11) NOT NULL DEFAULT '0',
  `ImageAID` int(11) NOT NULL DEFAULT '0',
  `ImageBID` int(11) NOT NULL DEFAULT '0',
  `ImageCID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `StatImageAID` (`StatImageAID`),
  KEY `StatImageBID` (`StatImageBID`),
  KEY `StatImageCID` (`StatImageCID`),
  KEY `ImageAID` (`ImageAID`),
  KEY `ImageBID` (`ImageBID`),
  KEY `ImageCID` (`ImageCID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StatsModule_versions`
--

LOCK TABLES `StatsModule_versions` WRITE;
/*!40000 ALTER TABLE `StatsModule_versions` DISABLE KEYS */;
INSERT INTO `StatsModule_versions` VALUES (1,28,1,'Stats Module',0,'h2',0,0,0,38,39,40),(2,28,2,'Stats Module',0,'h2',0,0,0,38,39,40);
/*!40000 ALTER TABLE `StatsModule_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TableModule`
--

DROP TABLE IF EXISTS `TableModule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TableModule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Content` mediumtext CHARACTER SET utf8,
  `Title` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TableModule`
--

LOCK TABLES `TableModule` WRITE;
/*!40000 ALTER TABLE `TableModule` DISABLE KEYS */;
INSERT INTO `TableModule` VALUES (14,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(37,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(44,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(51,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(60,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(67,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(74,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(81,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(88,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(103,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2');
/*!40000 ALTER TABLE `TableModule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TableModule_Live`
--

DROP TABLE IF EXISTS `TableModule_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TableModule_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Content` mediumtext CHARACTER SET utf8,
  `Title` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TableModule_Live`
--

LOCK TABLES `TableModule_Live` WRITE;
/*!40000 ALTER TABLE `TableModule_Live` DISABLE KEYS */;
INSERT INTO `TableModule_Live` VALUES (14,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(37,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(44,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(51,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(60,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(67,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(74,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(81,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(88,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(103,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2');
/*!40000 ALTER TABLE `TableModule_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TableModule_versions`
--

DROP TABLE IF EXISTS `TableModule_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TableModule_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Content` mediumtext CHARACTER SET utf8,
  `Title` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `DisplayTitle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `TitleTags` enum('h2','h3','h4','h5','h6','p','span') CHARACTER SET utf8 DEFAULT 'h2',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TableModule_versions`
--

LOCK TABLES `TableModule_versions` WRITE;
/*!40000 ALTER TABLE `TableModule_versions` DISABLE KEYS */;
INSERT INTO `TableModule_versions` VALUES (1,14,1,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>a</td>\n<td> </td>\n</tr>\n<tr>\n<td>b</td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Tabel 1',1,'h2'),(2,14,2,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>a</td>\n<td> </td>\n</tr>\n<tr>\n<td>b</td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Tabel 1',1,'h2'),(3,14,3,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>a</td>\n<td> </td>\n</tr>\n<tr>\n<td>b</td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(4,14,4,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>a</td>\n<td> </td>\n</tr>\n<tr>\n<td>b</td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(5,14,5,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>a</td>\n<td> </td>\n</tr>\n<tr>\n<td>b</td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',0,'h2'),(6,14,6,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>a</td>\n<td> </td>\n</tr>\n<tr>\n<td>b</td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',0,'h2'),(7,14,7,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</td>\n<td> </td>\n</tr>\n<tr>\n<td>b</td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',0,'h2'),(8,14,8,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</td>\n<td> </td>\n</tr>\n<tr>\n<td>b</td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',0,'h2'),(9,14,9,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>b</td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',0,'h2'),(10,14,10,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>b</td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',0,'h2'),(11,14,11,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',0,'h2'),(12,14,12,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',0,'h2'),(13,14,13,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td> <img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',0,'h2'),(14,14,14,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td> <img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',0,'h2'),(15,14,15,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',0,'h2'),(16,14,16,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',0,'h2'),(17,14,17,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',0,'h2'),(18,14,18,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',0,'h2'),(19,14,19,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(20,14,20,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(21,37,1,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(22,37,2,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(23,44,1,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(24,44,2,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(25,51,1,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(26,51,2,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(27,60,1,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(28,60,2,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(29,67,1,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(30,67,2,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(31,74,1,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(32,74,2,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(33,81,1,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(34,81,2,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(35,88,1,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(36,88,2,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(37,103,1,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2'),(38,103,2,'<table style=\"width: 100%;\" cellspacing=\"0\" cellpadding=\"0\">\n<thead>\n<tr>\n<td>Header 1</td>\n<td>Header 2</td>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet, consectetur adipiscing.</strong></td>\n<td><img class=\"leftAlone\" title=\"\" src=\"assets/Uploads/_resampled/ResizedImageWzYwMCw0MTNd/Euramax-AluNatur-Massena-1-LR-1024x711.jpg\" alt=\"Euramax AluNatur Massena 1 LR 1024x711\" width=\"600\" height=\"413\"></td>\n</tr>\n<tr>\n<td><strong>Feature one lorem ipsum dolor sit amet.</strong></td>\n<td> </td>\n</tr>\n<tr>\n<td>c</td>\n<td> </td>\n</tr>\n<tr>\n<td>d</td>\n<td> </td>\n</tr>\n<tr>\n<td>e</td>\n<td> </td>\n</tr>\n<tr>\n<td>f</td>\n<td> </td>\n</tr>\n<tr>\n<td>g</td>\n<td> </td>\n</tr>\n<tr>\n<td>h</td>\n<td> </td>\n</tr>\n<tr>\n<td>i</td>\n<td> </td>\n</tr>\n<tr>\n<td>j</td>\n<td> </td>\n</tr>\n<tr>\n<td>k</td>\n<td> </td>\n</tr>\n</tbody>\n</table>','Table 1',1,'h2');
/*!40000 ALTER TABLE `TableModule_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TeamMember`
--

DROP TABLE IF EXISTS `TeamMember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TeamMember` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('TeamMember') CHARACTER SET utf8 DEFAULT 'TeamMember',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `Role` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `Bio` mediumtext CHARACTER SET utf8,
  `Version` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ImageID` (`ImageID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TeamMember`
--

LOCK TABLES `TeamMember` WRITE;
/*!40000 ALTER TABLE `TeamMember` DISABLE KEYS */;
/*!40000 ALTER TABLE `TeamMember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TeamMember_Live`
--

DROP TABLE IF EXISTS `TeamMember_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TeamMember_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('TeamMember') CHARACTER SET utf8 DEFAULT 'TeamMember',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `Role` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `Bio` mediumtext CHARACTER SET utf8,
  `Version` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ImageID` (`ImageID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TeamMember_Live`
--

LOCK TABLES `TeamMember_Live` WRITE;
/*!40000 ALTER TABLE `TeamMember_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `TeamMember_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TeamMember_versions`
--

DROP TABLE IF EXISTS `TeamMember_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TeamMember_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('TeamMember') CHARACTER SET utf8 DEFAULT 'TeamMember',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `Role` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `Bio` mediumtext CHARACTER SET utf8,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `AuthorID` (`AuthorID`),
  KEY `PublisherID` (`PublisherID`),
  KEY `ImageID` (`ImageID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TeamMember_versions`
--

LOCK TABLES `TeamMember_versions` WRITE;
/*!40000 ALTER TABLE `TeamMember_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `TeamMember_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TeamPage`
--

DROP TABLE IF EXISTS `TeamPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TeamPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PageColour` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TeamPage`
--

LOCK TABLES `TeamPage` WRITE;
/*!40000 ALTER TABLE `TeamPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `TeamPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TeamPage_Live`
--

DROP TABLE IF EXISTS `TeamPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TeamPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PageColour` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TeamPage_Live`
--

LOCK TABLES `TeamPage_Live` WRITE;
/*!40000 ALTER TABLE `TeamPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `TeamPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TeamPage_versions`
--

DROP TABLE IF EXISTS `TeamPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TeamPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PageColour` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TeamPage_versions`
--

LOCK TABLES `TeamPage_versions` WRITE;
/*!40000 ALTER TABLE `TeamPage_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `TeamPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Testimonial`
--

DROP TABLE IF EXISTS `Testimonial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Testimonial` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('Testimonial') CHARACTER SET utf8 DEFAULT 'Testimonial',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `Position` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `Content` mediumtext CHARACTER SET utf8,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `HeroImageID` int(11) NOT NULL DEFAULT '0',
  `CareerSectionID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `HeroImageID` (`HeroImageID`),
  KEY `CareerSectionID` (`CareerSectionID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Testimonial`
--

LOCK TABLES `Testimonial` WRITE;
/*!40000 ALTER TABLE `Testimonial` DISABLE KEYS */;
/*!40000 ALTER TABLE `Testimonial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TriColumnBlock`
--

DROP TABLE IF EXISTS `TriColumnBlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TriColumnBlock` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LeftColumn` mediumtext CHARACTER SET utf8,
  `MiddleColumn` mediumtext CHARACTER SET utf8,
  `RightColumn` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TriColumnBlock`
--

LOCK TABLES `TriColumnBlock` WRITE;
/*!40000 ALTER TABLE `TriColumnBlock` DISABLE KEYS */;
/*!40000 ALTER TABLE `TriColumnBlock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TriColumnBlock_Live`
--

DROP TABLE IF EXISTS `TriColumnBlock_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TriColumnBlock_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LeftColumn` mediumtext CHARACTER SET utf8,
  `MiddleColumn` mediumtext CHARACTER SET utf8,
  `RightColumn` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TriColumnBlock_Live`
--

LOCK TABLES `TriColumnBlock_Live` WRITE;
/*!40000 ALTER TABLE `TriColumnBlock_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `TriColumnBlock_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TriColumnBlock_versions`
--

DROP TABLE IF EXISTS `TriColumnBlock_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TriColumnBlock_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `LeftColumn` mediumtext CHARACTER SET utf8,
  `MiddleColumn` mediumtext CHARACTER SET utf8,
  `RightColumn` mediumtext CHARACTER SET utf8,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TriColumnBlock_versions`
--

LOCK TABLES `TriColumnBlock_versions` WRITE;
/*!40000 ALTER TABLE `TriColumnBlock_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `TriColumnBlock_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UtilityPage`
--

DROP TABLE IF EXISTS `UtilityPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UtilityPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RenderingTemplate` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UtilityPage`
--

LOCK TABLES `UtilityPage` WRITE;
/*!40000 ALTER TABLE `UtilityPage` DISABLE KEYS */;
INSERT INTO `UtilityPage` VALUES (18,NULL);
/*!40000 ALTER TABLE `UtilityPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UtilityPage_Live`
--

DROP TABLE IF EXISTS `UtilityPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UtilityPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RenderingTemplate` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UtilityPage_Live`
--

LOCK TABLES `UtilityPage_Live` WRITE;
/*!40000 ALTER TABLE `UtilityPage_Live` DISABLE KEYS */;
INSERT INTO `UtilityPage_Live` VALUES (18,NULL);
/*!40000 ALTER TABLE `UtilityPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UtilityPage_versions`
--

DROP TABLE IF EXISTS `UtilityPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UtilityPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RenderingTemplate` varchar(64) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UtilityPage_versions`
--

LOCK TABLES `UtilityPage_versions` WRITE;
/*!40000 ALTER TABLE `UtilityPage_versions` DISABLE KEYS */;
INSERT INTO `UtilityPage_versions` VALUES (3,18,1,NULL);
/*!40000 ALTER TABLE `UtilityPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VirtualPage`
--

DROP TABLE IF EXISTS `VirtualPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VirtualPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VirtualPage`
--

LOCK TABLES `VirtualPage` WRITE;
/*!40000 ALTER TABLE `VirtualPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `VirtualPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VirtualPage_Live`
--

DROP TABLE IF EXISTS `VirtualPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VirtualPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VirtualPage_Live`
--

LOCK TABLES `VirtualPage_Live` WRITE;
/*!40000 ALTER TABLE `VirtualPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `VirtualPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VirtualPage_versions`
--

DROP TABLE IF EXISTS `VirtualPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VirtualPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `CopyContentFromID` (`CopyContentFromID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VirtualPage_versions`
--

LOCK TABLES `VirtualPage_versions` WRITE;
/*!40000 ALTER TABLE `VirtualPage_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `VirtualPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VisionPage`
--

DROP TABLE IF EXISTS `VisionPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VisionPage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PromoID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `PromoID` (`PromoID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VisionPage`
--

LOCK TABLES `VisionPage` WRITE;
/*!40000 ALTER TABLE `VisionPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `VisionPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VisionPage_Live`
--

DROP TABLE IF EXISTS `VisionPage_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VisionPage_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PromoID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `PromoID` (`PromoID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VisionPage_Live`
--

LOCK TABLES `VisionPage_Live` WRITE;
/*!40000 ALTER TABLE `VisionPage_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `VisionPage_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VisionPage_versions`
--

DROP TABLE IF EXISTS `VisionPage_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VisionPage_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PromoID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `PromoID` (`PromoID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VisionPage_versions`
--

LOCK TABLES `VisionPage_versions` WRITE;
/*!40000 ALTER TABLE `VisionPage_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `VisionPage_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WhitePaper`
--

DROP TABLE IF EXISTS `WhitePaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WhitePaper` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `WhitePaperTitle` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `WhitePaperIntro` mediumtext CHARACTER SET utf8,
  `WhitePaperCoverID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `WhitePaperCoverID` (`WhitePaperCoverID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WhitePaper`
--

LOCK TABLES `WhitePaper` WRITE;
/*!40000 ALTER TABLE `WhitePaper` DISABLE KEYS */;
/*!40000 ALTER TABLE `WhitePaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WhitePaperGalleryItem`
--

DROP TABLE IF EXISTS `WhitePaperGalleryItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WhitePaperGalleryItem` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` enum('WhitePaperGalleryItem') CHARACTER SET utf8 DEFAULT 'WhitePaperGalleryItem',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Caption` varchar(1024) CHARACTER SET utf8 DEFAULT NULL,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0',
  `WhitePaperID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `ImageID` (`ImageID`),
  KEY `WhitePaperID` (`WhitePaperID`),
  KEY `ClassName` (`ClassName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WhitePaperGalleryItem`
--

LOCK TABLES `WhitePaperGalleryItem` WRITE;
/*!40000 ALTER TABLE `WhitePaperGalleryItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `WhitePaperGalleryItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WhitePaper_Live`
--

DROP TABLE IF EXISTS `WhitePaper_Live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WhitePaper_Live` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `WhitePaperTitle` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `WhitePaperIntro` mediumtext CHARACTER SET utf8,
  `WhitePaperCoverID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `WhitePaperCoverID` (`WhitePaperCoverID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WhitePaper_Live`
--

LOCK TABLES `WhitePaper_Live` WRITE;
/*!40000 ALTER TABLE `WhitePaper_Live` DISABLE KEYS */;
/*!40000 ALTER TABLE `WhitePaper_Live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WhitePaper_versions`
--

DROP TABLE IF EXISTS `WhitePaper_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WhitePaper_versions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WhitePaperTitle` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `WhitePaperIntro` mediumtext CHARACTER SET utf8,
  `WhitePaperCoverID` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  KEY `RecordID` (`RecordID`),
  KEY `Version` (`Version`),
  KEY `WhitePaperCoverID` (`WhitePaperCoverID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WhitePaper_versions`
--

LOCK TABLES `WhitePaper_versions` WRITE;
/*!40000 ALTER TABLE `WhitePaper_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `WhitePaper_versions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-13 23:25:14

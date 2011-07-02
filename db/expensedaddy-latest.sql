-- MySQL dump 10.13  Distrib 5.1.41, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: expensedaddy_production
-- ------------------------------------------------------
-- Server version	5.1.41-3ubuntu12.10

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,'Ormond','Ormond Street Finances.\r\n\r\nSavings account and VISA with the Commonwealth\r\n\r\nNess and Ben','2011-06-17 12:30:26','2011-06-17 12:32:37'),(2,'LogicBox','Business account for Rich and Ben\r\n','2011-06-17 12:32:25','2011-06-17 12:32:25');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'General','2011-06-13 13:31:55','2011-06-13 13:31:55'),(2,'Tech','2011-06-13 13:31:59','2011-06-13 13:31:59'),(3,'Transport','2011-06-13 13:32:05','2011-06-13 13:32:05'),(4,'Food','2011-06-13 13:32:09','2011-06-13 13:32:09'),(5,'Bills','2011-06-13 13:32:13','2011-06-13 13:32:13'),(6,'Car / Petrol','2011-06-13 13:32:19','2011-06-19 08:33:05'),(7,'Health / Wellbeing','2011-06-13 13:32:26','2011-06-19 08:32:58'),(8,'Alcohol','2011-06-13 13:32:31','2011-06-13 13:32:31'),(9,'Entertainment','2011-06-13 13:32:35','2011-06-13 13:32:35'),(10,'House','2011-06-13 13:32:39','2011-06-13 13:32:39'),(11,'Medical','2011-06-13 13:32:44','2011-06-13 13:32:44'),(12,'Clothes','2011-06-19 11:59:08','2011-06-19 11:59:08'),(13,'Fines','2011-06-19 11:59:25','2011-06-19 11:59:25'),(14,'Groceries','2011-06-19 11:59:51','2011-06-19 11:59:51'),(15,'Income','2011-06-25 10:52:46','2011-06-25 10:52:46');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rails_admin_histories`
--

DROP TABLE IF EXISTS `rails_admin_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rails_admin_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `item` int(11) DEFAULT NULL,
  `table` varchar(255) DEFAULT NULL,
  `month` smallint(6) DEFAULT NULL,
  `year` bigint(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_histories_on_item_and_table_and_month_and_year` (`item`,`table`,`month`,`year`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rails_admin_histories`
--

LOCK TABLES `rails_admin_histories` WRITE;
/*!40000 ALTER TABLE `rails_admin_histories` DISABLE KEYS */;
INSERT INTO `rails_admin_histories` VALUES (1,'Changed lastname, firstname, encrypted_password','benbruscella@gmail.com',1,'User',6,2011,'2011-06-13 12:49:11','2011-06-13 12:49:11'),(2,'Created Vanessa Brown','benbruscella@gmail.com',2,'User',6,2011,'2011-06-13 12:54:00','2011-06-13 12:54:00'),(3,'Created General','benbruscella@gmail.com',1,'Category',6,2011,'2011-06-13 13:31:55','2011-06-13 13:31:55'),(4,'Created Tech','benbruscella@gmail.com',2,'Category',6,2011,'2011-06-13 13:31:59','2011-06-13 13:31:59'),(5,'Created Transport','benbruscella@gmail.com',3,'Category',6,2011,'2011-06-13 13:32:05','2011-06-13 13:32:05'),(6,'Created Food','benbruscella@gmail.com',4,'Category',6,2011,'2011-06-13 13:32:09','2011-06-13 13:32:09'),(7,'Created Bills','benbruscella@gmail.com',5,'Category',6,2011,'2011-06-13 13:32:13','2011-06-13 13:32:13'),(8,'Created Car/Petrol','benbruscella@gmail.com',6,'Category',6,2011,'2011-06-13 13:32:19','2011-06-13 13:32:19'),(9,'Created Health/Wellbeing','benbruscella@gmail.com',7,'Category',6,2011,'2011-06-13 13:32:26','2011-06-13 13:32:26'),(10,'Created Alcohol','benbruscella@gmail.com',8,'Category',6,2011,'2011-06-13 13:32:31','2011-06-13 13:32:31'),(11,'Created Entertainment','benbruscella@gmail.com',9,'Category',6,2011,'2011-06-13 13:32:35','2011-06-13 13:32:35'),(12,'Created House','benbruscella@gmail.com',10,'Category',6,2011,'2011-06-13 13:32:39','2011-06-13 13:32:39'),(13,'Created Medical','benbruscella@gmail.com',11,'Category',6,2011,'2011-06-13 13:32:44','2011-06-13 13:32:44'),(14,'Created Joint spend','benbruscella@gmail.com',3,'User',6,2011,'2011-06-13 13:33:20','2011-06-13 13:33:20'),(15,'Created 3175.0','benbruscella@gmail.com',1,'Expense',6,2011,'2011-06-13 13:34:09','2011-06-13 13:34:09'),(16,'Created 128.5','benbruscella@gmail.com',2,'Expense',6,2011,'2011-06-13 13:34:43','2011-06-13 13:34:43'),(17,'Created 80.3','benbruscella@gmail.com',3,'Expense',6,2011,'2011-06-13 13:35:27','2011-06-13 13:35:27'),(18,'Created 140.0','benbruscella@gmail.com',4,'Expense',6,2011,'2011-06-13 13:35:50','2011-06-13 13:35:50'),(19,'Created 29.3','benbruscella@gmail.com',5,'Expense',6,2011,'2011-06-13 13:36:14','2011-06-13 13:36:14'),(20,'Created 185.0','benbruscella@gmail.com',6,'Expense',6,2011,'2011-06-13 13:40:56','2011-06-13 13:40:56'),(21,'Created 42.5','benbruscella@gmail.com',7,'Expense',6,2011,'2011-06-13 13:44:57','2011-06-13 13:44:57'),(22,'Created 40.0','benbruscella@gmail.com',8,'Expense',6,2011,'2011-06-13 13:45:18','2011-06-13 13:45:18'),(23,'Created 27.4','benbruscella@gmail.com',9,'Expense',6,2011,'2011-06-13 13:45:38','2011-06-13 13:45:38'),(24,'Created 10.95','benbruscella@gmail.com',10,'Expense',6,2011,'2011-06-13 13:46:18','2011-06-13 13:46:18'),(25,'Created 54.89','benbruscella@gmail.com',11,'Expense',6,2011,'2011-06-13 13:46:55','2011-06-13 13:46:55'),(26,'Created 12.5','benbruscella@gmail.com',12,'Expense',6,2011,'2011-06-13 13:47:19','2011-06-13 13:47:19'),(27,'Created 20.0','benbruscella@gmail.com',13,'Expense',6,2011,'2011-06-13 13:48:00','2011-06-13 13:48:00'),(28,'Created 15.0','benbruscella@gmail.com',14,'Expense',6,2011,'2011-06-13 13:48:28','2011-06-13 13:48:28'),(29,'Created 10.95','benbruscella@gmail.com',15,'Expense',6,2011,'2011-06-13 13:48:47','2011-06-13 13:48:47'),(30,'Created 89.8','benbruscella@gmail.com',16,'Expense',6,2011,'2011-06-13 13:49:15','2011-06-13 13:49:15'),(31,'Created 3.8','benbruscella@gmail.com',17,'Expense',6,2011,'2011-06-13 13:49:34','2011-06-13 13:49:34'),(32,'Created 14.95','benbruscella@gmail.com',18,'Expense',6,2011,'2011-06-13 13:49:58','2011-06-13 13:49:58'),(33,'Created 3.8','benbruscella@gmail.com',19,'Expense',6,2011,'2011-06-13 13:50:25','2011-06-13 13:50:25'),(34,'Created 9.95','benbruscella@gmail.com',20,'Expense',6,2011,'2011-06-13 13:50:55','2011-06-13 13:50:55'),(35,'Created 3.0','benbruscella@gmail.com',21,'Expense',6,2011,'2011-06-13 13:51:18','2011-06-13 13:51:18'),(36,'Created 4.0','benbruscella@gmail.com',22,'Expense',6,2011,'2011-06-13 13:51:46','2011-06-13 13:51:46'),(37,'Created 9.95','benbruscella@gmail.com',23,'Expense',6,2011,'2011-06-13 13:53:54','2011-06-13 13:53:54'),(38,'Created 10.9','benbruscella@gmail.com',24,'Expense',6,2011,'2011-06-13 13:54:23','2011-06-13 13:54:23'),(39,'Created 4.0','benbruscella@gmail.com',25,'Expense',6,2011,'2011-06-13 13:54:56','2011-06-13 13:54:56'),(40,'Created 3.0','benbruscella@gmail.com',26,'Expense',6,2011,'2011-06-13 13:56:32','2011-06-13 13:56:32'),(41,'Created 17.95','benbruscella@gmail.com',27,'Expense',6,2011,'2011-06-13 13:57:04','2011-06-13 13:57:04'),(42,'Created 32.69','benbruscella@gmail.com',28,'Expense',6,2011,'2011-06-13 13:57:23','2011-06-13 13:57:23'),(43,'Created 7.99','benbruscella@gmail.com',29,'Expense',6,2011,'2011-06-13 13:57:55','2011-06-13 13:57:55'),(44,'Created 59.88','benbruscella@gmail.com',30,'Expense',6,2011,'2011-06-13 13:58:19','2011-06-13 13:58:19'),(45,'Created 3.0','benbruscella@gmail.com',31,'Expense',6,2011,'2011-06-13 14:00:48','2011-06-13 14:00:48'),(46,'Created 4.0','benbruscella@gmail.com',32,'Expense',6,2011,'2011-06-13 14:01:15','2011-06-13 14:01:15'),(47,'Created 33.14','benbruscella@gmail.com',33,'Expense',6,2011,'2011-06-13 14:01:35','2011-06-13 14:01:35'),(48,'Created 245.0','benbruscella@gmail.com',34,'Expense',6,2011,'2011-06-13 14:01:55','2011-06-13 14:01:55'),(49,'Created 4.0','benbruscella@gmail.com',35,'Expense',6,2011,'2011-06-13 14:02:18','2011-06-13 14:02:18'),(50,'Created 3.0','benbruscella@gmail.com',36,'Expense',6,2011,'2011-06-13 14:02:50','2011-06-13 14:02:50'),(51,'Created 9.5','benbruscella@gmail.com',37,'Expense',6,2011,'2011-06-13 14:03:27','2011-06-13 14:03:27'),(52,'Created 23.59','benbruscella@gmail.com',38,'Expense',6,2011,'2011-06-13 14:04:12','2011-06-13 14:04:12'),(53,'Created 4.0','benbruscella@gmail.com',39,'Expense',6,2011,'2011-06-13 14:04:30','2011-06-13 14:04:30'),(54,'Created 15.0','benbruscella@gmail.com',40,'Expense',6,2011,'2011-06-13 14:05:00','2011-06-13 14:05:00'),(55,'Created 37.0','benbruscella@gmail.com',41,'Expense',6,2011,'2011-06-13 14:05:19','2011-06-13 14:05:19'),(56,'Created 3.8','benbruscella@gmail.com',42,'Expense',6,2011,'2011-06-13 14:05:40','2011-06-13 14:05:40'),(57,'Created 22.5','benbruscella@gmail.com',43,'Expense',6,2011,'2011-06-13 14:06:02','2011-06-13 14:06:02'),(58,'Created 86.0','benbruscella@gmail.com',44,'Expense',6,2011,'2011-06-13 14:06:21','2011-06-13 14:06:21'),(59,'Created 9.3','benbruscella@gmail.com',45,'Expense',6,2011,'2011-06-13 14:06:38','2011-06-13 14:06:38'),(60,'Changed description, associated Category','benbruscella@gmail.com',45,'Expense',6,2011,'2011-06-13 14:06:49','2011-06-13 14:06:49'),(61,'Created 9.0','benbruscella@gmail.com',46,'Expense',6,2011,'2011-06-13 14:07:15','2011-06-13 14:07:15'),(62,'Created 53.0','benbruscella@gmail.com',47,'Expense',6,2011,'2011-06-13 14:07:47','2011-06-13 14:07:47'),(63,'Created 80.69','benbruscella@gmail.com',48,'Expense',6,2011,'2011-06-13 14:08:12','2011-06-13 14:08:12'),(64,'Created 39.95','benbruscella@gmail.com',49,'Expense',6,2011,'2011-06-13 14:08:30','2011-06-13 14:08:30'),(65,'Created 11.0','benbruscella@gmail.com',50,'Expense',6,2011,'2011-06-13 14:08:52','2011-06-13 14:08:52'),(66,'Created 27.28','benbruscella@gmail.com',51,'Expense',6,2011,'2011-06-13 14:09:10','2011-06-13 14:09:10'),(67,'Created 60.94','benbruscella@gmail.com',52,'Expense',6,2011,'2011-06-13 14:09:29','2011-06-13 14:09:29'),(68,'Created 43.0','benbruscella@gmail.com',53,'Expense',6,2011,'2011-06-13 14:09:45','2011-06-13 14:09:45'),(69,'Created 6.6','benbruscella@gmail.com',54,'Expense',6,2011,'2011-06-13 14:10:08','2011-06-13 14:10:08'),(70,'Created 8.0','benbruscella@gmail.com',55,'Expense',6,2011,'2011-06-13 14:10:39','2011-06-13 14:10:39'),(71,'Created 20.17','benbruscella@gmail.com',56,'Expense',6,2011,'2011-06-13 14:11:00','2011-06-13 14:11:00'),(72,'Created 65.66','benbruscella@gmail.com',57,'Expense',6,2011,'2011-06-13 14:11:24','2011-06-13 14:11:24'),(73,'Changed associated Category','benbruscella@gmail.com',57,'Expense',6,2011,'2011-06-13 14:13:03','2011-06-13 14:13:03'),(74,'Changed associated Category','benbruscella@gmail.com',16,'Expense',6,2011,'2011-06-13 14:15:55','2011-06-13 14:15:55'),(75,'Changed associated Category','benbruscella@gmail.com',25,'Expense',6,2011,'2011-06-13 14:16:27','2011-06-13 14:16:27'),(76,'Created 28.47','benbruscella@gmail.com',58,'Expense',6,2011,'2011-06-13 14:19:33','2011-06-13 14:19:33'),(77,'Created 24.88','benbruscella@gmail.com',59,'Expense',6,2011,'2011-06-13 14:20:10','2011-06-13 14:20:10'),(78,'Created 41.0','benbruscella@gmail.com',60,'Expense',6,2011,'2011-06-14 13:07:28','2011-06-14 13:07:28'),(79,'Created 4.0','benbruscella@gmail.com',61,'Expense',6,2011,'2011-06-15 03:19:37','2011-06-15 03:19:37'),(80,'Created 10.95','benbruscella@gmail.com',62,'Expense',6,2011,'2011-06-15 03:20:02','2011-06-15 03:20:02'),(81,'Created 21.0','benbruscella@gmail.com',63,'Expense',6,2011,'2011-06-15 14:22:15','2011-06-15 14:22:15'),(82,'Created 251.0','kianeness@gmail.com',64,'Transaction',6,2011,'2011-06-15 23:22:42','2011-06-15 23:22:42'),(83,'Created 81.5','kianeness@gmail.com',65,'Transaction',6,2011,'2011-06-15 23:23:07','2011-06-15 23:23:07'),(84,'Created 81.5','kianeness@gmail.com',66,'Transaction',6,2011,'2011-06-15 23:23:29','2011-06-15 23:23:29'),(85,'Created 8.0','benbruscella@gmail.com',67,'Transaction',6,2011,'2011-06-16 09:18:48','2011-06-16 09:18:48'),(86,'Created 11.95','benbruscella@gmail.com',68,'Transaction',6,2011,'2011-06-16 09:19:09','2011-06-16 09:19:09'),(87,'Created 18.0','kianeness@gmail.com',69,'Transaction',6,2011,'2011-06-16 11:03:37','2011-06-16 11:03:37'),(88,'Created 127.42','kianeness@gmail.com',70,'Transaction',6,2011,'2011-06-16 11:09:09','2011-06-16 11:09:09'),(89,'Created 55.22','kianeness@gmail.com',71,'Transaction',6,2011,'2011-06-16 11:09:39','2011-06-16 11:09:39'),(90,'Created 201.14','kianeness@gmail.com',72,'Transaction',6,2011,'2011-06-16 11:10:19','2011-06-16 11:10:19'),(91,'Created 6.0','kianeness@gmail.com',73,'Transaction',6,2011,'2011-06-16 11:12:28','2011-06-16 11:12:28'),(92,'Changed associated Category','kianeness@gmail.com',71,'Transaction',6,2011,'2011-06-16 11:14:15','2011-06-16 11:14:15'),(93,'Changed associated Category','kianeness@gmail.com',68,'Transaction',6,2011,'2011-06-16 11:15:21','2011-06-16 11:15:21'),(94,'Changed associated Category','kianeness@gmail.com',70,'Transaction',6,2011,'2011-06-16 11:17:09','2011-06-16 11:17:09'),(95,'Created 10.95','benbruscella@gmail.com',74,'Transaction',6,2011,'2011-06-17 08:40:54','2011-06-17 08:40:54'),(96,'Changed spent_at','benbruscella@gmail.com',63,'Transaction',6,2011,'2011-06-17 08:41:11','2011-06-17 08:41:11'),(97,'Created 26.0','kianeness@gmail.com',75,'Transaction',6,2011,'2011-06-17 10:29:12','2011-06-17 10:29:12'),(98,'Created 30.0','kianeness@gmail.com',76,'Transaction',6,2011,'2011-06-17 10:29:33','2011-06-17 10:29:33'),(99,'Created 500.0','benbruscella@gmail.com',77,'Transaction',6,2011,'2011-06-17 11:49:56','2011-06-17 11:49:56'),(100,'Created Ormond','benbruscella@gmail.com',1,'Account',6,2011,'2011-06-17 12:30:26','2011-06-17 12:30:26'),(101,'Changed name','benbruscella@gmail.com',1,'Account',6,2011,'2011-06-17 12:30:40','2011-06-17 12:30:40'),(102,'Changed name','benbruscella@gmail.com',1,'Account',6,2011,'2011-06-17 12:30:50','2011-06-17 12:30:50'),(103,'Changed description','benbruscella@gmail.com',1,'Account',6,2011,'2011-06-17 12:31:07','2011-06-17 12:31:07'),(104,'Created LogicBox','benbruscella@gmail.com',2,'Account',6,2011,'2011-06-17 12:32:25','2011-06-17 12:32:25'),(105,'Changed name','benbruscella@gmail.com',1,'Account',6,2011,'2011-06-17 12:32:37','2011-06-17 12:32:37'),(106,'Created 23.3','kianeness@gmail.com',78,'Transaction',6,2011,'2011-06-18 10:08:54','2011-06-18 10:08:54'),(107,'Created 48.38','kianeness@gmail.com',79,'Transaction',6,2011,'2011-06-18 10:09:41','2011-06-18 10:09:41'),(108,'Created 177.35','kianeness@gmail.com',80,'Transaction',6,2011,'2011-06-18 10:10:19','2011-06-18 10:10:19'),(109,'Created 29.3','kianeness@gmail.com',81,'Transaction',6,2011,'2011-06-18 10:12:22','2011-06-18 10:12:22'),(110,'Created 40.0','kianeness@gmail.com',82,'Transaction',6,2011,'2011-06-18 10:13:30','2011-06-18 10:13:30'),(111,'Changed associated Category','kianeness@gmail.com',72,'Transaction',6,2011,'2011-06-18 10:15:26','2011-06-18 10:15:26'),(112,'Created 9.0','benbruscella@gmail.com',83,'Transaction',6,2011,'2011-06-19 03:06:20','2011-06-19 03:06:20'),(113,'Changed name','benbruscella@gmail.com',7,'Category',6,2011,'2011-06-19 08:32:25','2011-06-19 08:32:25'),(114,'Changed name','benbruscella@gmail.com',6,'Category',6,2011,'2011-06-19 08:32:34','2011-06-19 08:32:34'),(115,'Changed name','benbruscella@gmail.com',7,'Category',6,2011,'2011-06-19 08:32:58','2011-06-19 08:32:58'),(116,'Changed name','benbruscella@gmail.com',6,'Category',6,2011,'2011-06-19 08:33:05','2011-06-19 08:33:05'),(117,'Created 19.95','benbruscella@gmail.com',84,'Transaction',6,2011,'2011-06-19 11:55:00','2011-06-19 11:55:00'),(118,'Changed associated Category','benbruscella@gmail.com',12,'Transaction',6,2011,'2011-06-19 11:58:16','2011-06-19 11:58:16'),(119,'Changed associated Category','benbruscella@gmail.com',11,'Transaction',6,2011,'2011-06-19 11:58:36','2011-06-19 11:58:36'),(120,'Created Clothes','benbruscella@gmail.com',12,'Category',6,2011,'2011-06-19 11:59:08','2011-06-19 11:59:08'),(121,'Created Fines','benbruscella@gmail.com',13,'Category',6,2011,'2011-06-19 11:59:25','2011-06-19 11:59:25'),(122,'Created Groceries','benbruscella@gmail.com',14,'Category',6,2011,'2011-06-19 11:59:51','2011-06-19 11:59:51'),(123,'Changed associated Category','benbruscella@gmail.com',65,'Transaction',6,2011,'2011-06-19 12:00:12','2011-06-19 12:00:12'),(124,'Changed associated Category','benbruscella@gmail.com',66,'Transaction',6,2011,'2011-06-19 12:00:16','2011-06-19 12:00:16'),(125,'Created 3.7','benbruscella@gmail.com',85,'Transaction',6,2011,'2011-06-20 02:34:49','2011-06-20 02:34:49'),(126,'Created 45.18','kianeness@gmail.com',86,'Transaction',6,2011,'2011-06-21 10:50:05','2011-06-21 10:50:05'),(127,'Created 171.0','benbruscella@gmail.com',87,'Transaction',6,2011,'2011-06-22 10:43:15','2011-06-22 10:43:15'),(128,'Created 3.7','benbruscella@gmail.com',88,'Transaction',6,2011,'2011-06-22 10:43:41','2011-06-22 10:43:41'),(129,'Changed associated User','benbruscella@gmail.com',87,'Transaction',6,2011,'2011-06-22 10:43:48','2011-06-22 10:43:48'),(130,'Created 600.0','benbruscella@gmail.com',89,'Transaction',6,2011,'2011-06-22 10:44:18','2011-06-22 10:44:18'),(131,'Created 100.0','benbruscella@gmail.com',90,'Transaction',6,2011,'2011-06-22 10:44:53','2011-06-22 10:44:53'),(132,'Created 11.0','benbruscella@gmail.com',91,'Transaction',6,2011,'2011-06-22 10:45:42','2011-06-22 10:45:42'),(133,'Created 16.0','benbruscella@gmail.com',92,'Transaction',6,2011,'2011-06-22 10:46:06','2011-06-22 10:46:06'),(134,'Created 28.0','benbruscella@gmail.com',93,'Transaction',6,2011,'2011-06-23 08:12:51','2011-06-23 08:12:51'),(135,'Created 80.0','benbruscella@gmail.com',94,'Transaction',6,2011,'2011-06-23 08:13:17','2011-06-23 08:13:17'),(136,'Created 59.99','benbruscella@gmail.com',95,'Transaction',6,2011,'2011-06-23 08:13:50','2011-06-23 08:13:50'),(137,'Created 89.55','benbruscella@gmail.com',96,'Transaction',6,2011,'2011-06-23 08:14:37','2011-06-23 08:14:37'),(138,'Created 15.04','kianeness@gmail.com',97,'Transaction',6,2011,'2011-06-23 11:46:15','2011-06-23 11:46:15'),(139,'Created 31.65','kianeness@gmail.com',98,'Transaction',6,2011,'2011-06-23 11:47:50','2011-06-23 11:47:50'),(140,'Created 60.0','kianeness@gmail.com',99,'Transaction',6,2011,'2011-06-23 21:45:04','2011-06-23 21:45:04'),(141,'Created 40.0','kianeness@gmail.com',100,'Transaction',6,2011,'2011-06-23 21:45:35','2011-06-23 21:45:35'),(142,'Created 76.0','benbruscella@gmail.com',101,'Transaction',6,2011,'2011-06-24 07:17:15','2011-06-24 07:17:15'),(143,'Created 250.0','benbruscella@gmail.com',102,'Transaction',6,2011,'2011-06-24 07:17:47','2011-06-24 07:17:47'),(144,'Created 3.7','benbruscella@gmail.com',103,'Transaction',6,2011,'2011-06-24 07:18:11','2011-06-24 07:18:11'),(145,'Created 92.79','benbruscella@gmail.com',104,'Transaction',6,2011,'2011-06-24 10:03:41','2011-06-24 10:03:41'),(146,'Created 40.0','kianeness@gmail.com',105,'Transaction',6,2011,'2011-06-25 01:10:01','2011-06-25 01:10:01'),(147,'Created 11.5','kianeness@gmail.com',106,'Transaction',6,2011,'2011-06-25 03:29:21','2011-06-25 03:29:21'),(148,'Created 3.0','benbruscella@gmail.com',107,'Transaction',6,2011,'2011-06-25 10:34:17','2011-06-25 10:34:17'),(149,'Created 9.5','benbruscella@gmail.com',108,'Transaction',6,2011,'2011-06-25 10:34:54','2011-06-25 10:34:54'),(150,'Created Income','kianeness@gmail.com',15,'Category',6,2011,'2011-06-25 10:52:46','2011-06-25 10:52:46'),(151,'Created 710.0','kianeness@gmail.com',109,'Transaction',6,2011,'2011-06-25 10:52:49','2011-06-25 10:52:49'),(152,'Changed associated Category','kianeness@gmail.com',2,'Transaction',6,2011,'2011-06-25 23:25:53','2011-06-25 23:25:53'),(153,'Changed associated Category','kianeness@gmail.com',56,'Transaction',6,2011,'2011-06-25 23:26:26','2011-06-25 23:26:26'),(154,'Changed associated Category','kianeness@gmail.com',78,'Transaction',6,2011,'2011-06-25 23:26:57','2011-06-25 23:26:57'),(155,'Changed associated Category','kianeness@gmail.com',58,'Transaction',6,2011,'2011-06-25 23:27:23','2011-06-25 23:27:23'),(156,'Changed associated Category','kianeness@gmail.com',51,'Transaction',6,2011,'2011-06-25 23:28:05','2011-06-25 23:28:05'),(157,'Changed associated Category','kianeness@gmail.com',48,'Transaction',6,2011,'2011-06-25 23:28:49','2011-06-25 23:28:49'),(158,'Changed associated Category','kianeness@gmail.com',9,'Transaction',6,2011,'2011-06-25 23:29:27','2011-06-25 23:29:27'),(159,'Changed associated Category','kianeness@gmail.com',16,'Transaction',6,2011,'2011-06-25 23:29:52','2011-06-25 23:29:52'),(160,'Changed associated Category','kianeness@gmail.com',27,'Transaction',6,2011,'2011-06-25 23:31:36','2011-06-25 23:31:36'),(161,'Changed associated Category','kianeness@gmail.com',53,'Transaction',6,2011,'2011-06-25 23:32:57','2011-06-25 23:32:57'),(162,'Changed associated Category','kianeness@gmail.com',86,'Transaction',6,2011,'2011-06-25 23:33:30','2011-06-25 23:33:30'),(163,'Changed associated Category','kianeness@gmail.com',69,'Transaction',6,2011,'2011-06-25 23:34:20','2011-06-25 23:34:20'),(164,'Changed associated Category','kianeness@gmail.com',80,'Transaction',6,2011,'2011-06-25 23:35:22','2011-06-25 23:35:22'),(165,'Changed associated Category','kianeness@gmail.com',49,'Transaction',6,2011,'2011-06-25 23:36:34','2011-06-25 23:36:34'),(166,'Changed associated Category','kianeness@gmail.com',33,'Transaction',6,2011,'2011-06-25 23:37:16','2011-06-25 23:37:16'),(167,'Changed associated Category','kianeness@gmail.com',39,'Transaction',6,2011,'2011-06-26 00:01:02','2011-06-26 00:01:02'),(168,'Destroyed 710.0','kianeness@gmail.com',109,'Transaction',6,2011,'2011-06-28 00:53:14','2011-06-28 00:53:14'),(169,'Created 59.38','kianeness@gmail.com',110,'Transaction',6,2011,'2011-06-28 00:54:06','2011-06-28 00:54:06'),(170,'Created 59.49','kianeness@gmail.com',111,'Transaction',6,2011,'2011-06-28 00:54:53','2011-06-28 00:54:53'),(171,'Created 193.25','kianeness@gmail.com',112,'Transaction',6,2011,'2011-06-28 00:58:50','2011-06-28 00:58:50'),(172,'Created 5.5','kianeness@gmail.com',113,'Transaction',6,2011,'2011-06-28 00:59:35','2011-06-28 00:59:35'),(173,'Created 14.5','kianeness@gmail.com',114,'Transaction',6,2011,'2011-06-28 01:00:35','2011-06-28 01:00:35'),(174,'Created 20.0','kianeness@gmail.com',115,'Transaction',6,2011,'2011-06-28 01:01:26','2011-06-28 01:01:26'),(175,'Changed associated Category','kianeness@gmail.com',115,'Transaction',6,2011,'2011-06-28 01:02:12','2011-06-28 01:02:12'),(176,'Created 15.0','benbruscella@gmail.com',116,'Transaction',6,2011,'2011-06-28 04:45:01','2011-06-28 04:45:01'),(177,'Created 120.0','kianeness@gmail.com',117,'Transaction',6,2011,'2011-06-28 23:14:55','2011-06-28 23:14:55'),(178,'Created 40.0','kianeness@gmail.com',118,'Transaction',6,2011,'2011-06-28 23:15:29','2011-06-28 23:15:29'),(179,'Created 79.37','kianeness@gmail.com',119,'Transaction',6,2011,'2011-06-28 23:15:57','2011-06-28 23:15:57'),(180,'Created 60.0','kianeness@gmail.com',120,'Transaction',6,2011,'2011-06-28 23:18:44','2011-06-28 23:18:44'),(181,'Created 30.3','kianeness@gmail.com',121,'Transaction',6,2011,'2011-06-29 08:47:22','2011-06-29 08:47:22'),(182,'Created 105.0','kianeness@gmail.com',122,'Transaction',6,2011,'2011-06-30 09:52:52','2011-06-30 09:52:52');
/*!40000 ALTER TABLE `rails_admin_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20110606131643'),('20110606131653'),('20110606131654'),('20110606131723'),('20110606141715'),('20110606141738'),('20110611005207'),('20110611020733'),('20110615142616'),('20110617121011'),('20110625095101'),('20110625095226');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_types`
--

DROP TABLE IF EXISTS `transaction_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typename` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_types`
--

LOCK TABLES `transaction_types` WRITE;
/*!40000 ALTER TABLE `transaction_types` DISABLE KEYS */;
INSERT INTO `transaction_types` VALUES (1,'Debit','2011-06-25 10:31:33','2011-06-25 10:31:33'),(2,'Credit','2011-06-25 10:31:33','2011-06-25 10:31:33');
/*!40000 ALTER TABLE `transaction_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `spent_at` datetime DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `category_id` int(11) DEFAULT '1',
  `transaction_type_id` int(11) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,3,'2011-06-01 00:00:00',3175,'House Repayment','2011-06-13 13:34:09','2011-06-13 13:34:09',5,1),(2,3,'2011-06-01 00:00:00',128.5,'Food','2011-06-13 13:34:43','2011-06-25 23:25:53',14,1),(3,3,'2011-06-01 00:00:00',80.3,'RACV Car Insurance','2011-06-13 13:35:27','2011-06-13 13:35:27',5,1),(4,3,'2011-06-01 00:00:00',140,'White Wine','2011-06-13 13:35:50','2011-06-13 13:35:50',8,1),(5,2,'2011-06-02 00:00:00',29.3,'YMCA Membership ','2011-06-13 13:36:14','2011-06-13 13:36:14',7,1),(6,2,'2011-06-03 00:00:00',185,'Bikram Month Membership','2011-06-13 13:40:56','2011-06-13 13:40:56',7,1),(7,3,'2011-06-03 20:00:00',42.5,'Dinner At Sori','2011-06-13 13:44:57','2011-06-13 13:44:57',9,1),(8,3,'2011-06-04 00:00:00',40,'CityLink','2011-06-13 13:45:18','2011-06-13 13:45:18',6,1),(9,3,'2011-06-04 00:00:00',27.4,'Food','2011-06-13 13:45:38','2011-06-25 23:29:27',14,1),(10,1,'2011-06-04 00:00:00',10.95,'XBOX','2011-06-13 13:46:18','2011-06-13 13:46:18',2,1),(11,2,'2011-06-06 08:00:00',54.89,'Vera Wang plates & cutlery ','2011-06-13 13:46:55','2011-06-19 11:58:36',10,1),(12,1,'2011-06-06 13:00:00',12.5,'Lunch','2011-06-13 13:47:19','2011-06-19 11:58:16',4,1),(13,1,'2011-06-06 18:00:00',20,'Parking','2011-06-13 13:48:00','2011-06-13 13:48:00',1,1),(14,1,'2011-06-06 20:00:00',15,'Indoor Cricket','2011-06-13 13:48:28','2011-06-13 13:48:28',7,1),(15,1,'2011-06-07 00:00:00',10.95,'XBOX','2011-06-13 13:48:47','2011-06-13 13:48:47',2,1),(16,3,'2011-06-07 00:00:00',89.8,'Food','2011-06-13 13:49:15','2011-06-25 23:29:52',14,1),(17,2,'2011-06-07 00:00:00',3.8,'Bottle of Water','2011-06-13 13:49:34','2011-06-13 13:49:34',4,1),(18,2,'2011-06-07 00:00:00',14.95,'Magazine','2011-06-13 13:49:58','2011-06-13 13:49:58',1,1),(19,2,'2011-06-07 00:00:00',3.8,'Train','2011-06-13 13:50:25','2011-06-13 13:50:25',3,1),(20,1,'2011-06-07 00:30:00',9.95,'expense daddy domain','2011-06-13 13:50:55','2011-06-13 13:50:55',2,1),(21,1,'2011-06-07 10:00:00',3,'Train','2011-06-13 13:51:17','2011-06-13 13:51:17',3,1),(22,1,'2011-06-07 10:30:00',4,'Coffee','2011-06-13 13:51:46','2011-06-13 13:51:46',4,1),(23,1,'2011-06-07 13:00:00',9.95,'spendulator domain ','2011-06-13 13:53:54','2011-06-13 13:53:54',2,1),(24,1,'2011-06-07 14:00:00',10.9,'Lunch soup and sandwich ','2011-06-13 13:54:23','2011-06-13 13:54:23',4,1),(25,1,'2011-06-07 16:00:00',4,'Coffee','2011-06-13 13:54:56','2011-06-13 14:16:27',4,1),(26,1,'2011-06-07 20:00:00',3,'Train trip home','2011-06-13 13:56:32','2011-06-13 13:56:32',3,1),(27,3,'2011-06-08 00:00:00',17.95,'Food','2011-06-13 13:57:04','2011-06-25 23:31:36',14,1),(28,2,'2011-06-08 00:00:00',32.69,'Monthly Donation to Sea Sheperd ','2011-06-13 13:57:23','2011-06-13 13:57:23',1,1),(29,3,'2011-06-08 00:00:00',7.99,'Stickers to stop hallrunner moving ','2011-06-13 13:57:55','2011-06-13 13:57:55',10,1),(30,2,'2011-06-08 00:00:00',59.88,'Bathers - Brandexclusive ','2011-06-13 13:58:19','2011-06-13 13:58:19',1,1),(31,1,'2011-06-08 10:00:00',3,'Train to city','2011-06-13 14:00:48','2011-06-13 14:00:48',3,1),(32,1,'2011-06-08 10:45:00',4,'Coffee','2011-06-13 14:01:15','2011-06-13 14:01:15',4,1),(33,3,'2011-06-09 00:00:00',33.14,'Food','2011-06-13 14:01:35','2011-06-25 23:37:16',14,1),(34,2,'2011-06-09 00:00:00',245,'Irma','2011-06-13 14:01:55','2011-06-13 14:01:55',7,1),(35,1,'2011-06-09 10:00:00',4,'Coffee','2011-06-13 14:02:18','2011-06-13 14:02:18',4,1),(36,1,'2011-06-09 10:00:00',3,'Train to city','2011-06-13 14:02:50','2011-06-13 14:02:50',3,1),(37,1,'2011-06-09 13:00:00',9.5,'Lunch','2011-06-13 14:03:27','2011-06-13 14:03:27',4,1),(38,1,'2011-06-10 00:00:00',23.59,'SliceHost','2011-06-13 14:04:12','2011-06-13 14:04:12',2,1),(39,3,'2011-06-10 00:00:00',4,'Soap','2011-06-13 14:04:30','2011-06-26 00:01:02',14,1),(40,2,'2011-06-10 00:00:00',15,'Medicine','2011-06-13 14:05:00','2011-06-13 14:05:00',11,1),(41,2,'2011-06-10 00:00:00',37,'Taxi','2011-06-13 14:05:19','2011-06-13 14:05:19',1,1),(42,2,'2011-06-10 00:00:00',3.8,'Train ticket','2011-06-13 14:05:40','2011-06-13 14:05:40',3,1),(43,2,'2011-06-10 00:00:00',22.5,'Dinner at glenferrie hotel ','2011-06-13 14:06:02','2011-06-13 14:06:02',9,1),(44,2,'2011-06-10 00:00:00',86,'Alcohol','2011-06-13 14:06:21','2011-06-13 14:06:21',8,1),(45,1,'2011-06-10 10:00:00',9.3,'Bread and Coffee','2011-06-13 14:06:38','2011-06-13 14:06:49',4,1),(46,1,'2011-06-10 13:00:00',9,'Phatty Bumba Lunch, but large serving so 2for1 ','2011-06-13 14:07:15','2011-06-13 14:07:15',4,1),(47,1,'2011-06-10 20:00:00',53,'Health and Well being ','2011-06-13 14:07:47','2011-06-13 14:07:47',8,1),(48,3,'2011-06-11 00:00:00',80.69,'Food','2011-06-13 14:08:12','2011-06-25 23:28:49',14,1),(49,3,'2011-06-11 00:00:00',39.95,'Cat Food','2011-06-13 14:08:30','2011-06-25 23:36:34',14,1),(50,1,'2011-06-11 18:45:00',11,'Beer With Enz','2011-06-13 14:08:52','2011-06-13 14:08:52',9,1),(51,3,'2011-06-12 00:00:00',27.28,'Food','2011-06-13 14:09:10','2011-06-25 23:28:05',14,1),(52,3,'2011-06-12 00:00:00',60.94,'Internode','2011-06-13 14:09:29','2011-06-13 14:09:29',5,1),(53,3,'2011-06-12 00:00:00',43,'Food','2011-06-13 14:09:45','2011-06-25 23:32:57',14,1),(54,3,'2011-06-12 00:00:00',6.6,'Medicine','2011-06-13 14:10:08','2011-06-13 14:10:08',11,1),(55,3,'2011-06-12 00:00:00',8,'Alcohol Wine','2011-06-13 14:10:39','2011-06-13 14:10:39',8,1),(56,3,'2011-06-13 00:00:00',20.17,'Food','2011-06-13 14:11:00','2011-06-25 23:26:26',14,1),(57,3,'2011-06-13 00:00:00',65.66,'AAMI Insurance','2011-06-13 14:11:24','2011-06-13 14:13:03',5,1),(58,3,'2011-06-13 18:00:00',28.47,'Cake, beans, foil','2011-06-13 14:19:33','2011-06-25 23:27:23',14,1),(59,3,'2011-06-13 17:30:00',24.88,'Non slip mats','2011-06-13 14:20:10','2011-06-13 14:20:10',10,1),(60,1,'2011-06-14 22:00:00',41,'night cap','2011-06-14 13:07:28','2011-06-14 13:07:28',8,1),(61,1,'2011-06-15 10:00:00',4,'Coffee','2011-06-15 03:19:37','2011-06-15 03:19:37',4,1),(62,1,'2011-06-15 13:00:00',10.95,'Lunch chicken and miso','2011-06-15 03:20:02','2011-06-15 03:20:02',4,1),(63,1,'2011-06-16 00:30:00',21,'Indoor Cricket and Beer','2011-06-15 14:22:15','2011-06-17 08:41:11',7,1),(64,3,'2011-06-09 00:00:00',251,'Phone Bill (2months worth)','2011-06-15 23:22:42','2011-06-15 23:22:42',5,1),(65,1,'2011-06-16 00:00:00',81.5,'Car Parking Fine','2011-06-15 23:23:07','2011-06-19 12:00:12',13,1),(66,2,'2011-06-16 00:00:00',81.5,'Car Parking Fine','2011-06-15 23:23:29','2011-06-19 12:00:16',13,1),(67,1,'2011-06-16 10:00:00',8,'Coffee x 2','2011-06-16 09:18:48','2011-06-16 09:18:48',4,1),(68,1,'2011-06-16 13:00:00',11.95,'Lunch Chicken and Rice','2011-06-16 09:19:09','2011-06-16 11:15:21',4,1),(69,3,'2011-06-16 00:00:00',18,'Food','2011-06-16 11:03:37','2011-06-25 23:34:20',14,1),(70,3,'2011-06-16 00:00:00',127.42,'GIO','2011-06-16 11:09:09','2011-06-16 11:17:09',5,1),(71,3,'2011-06-16 00:00:00',55.22,'GIO','2011-06-16 11:09:39','2011-06-16 11:14:15',5,1),(72,3,'2011-06-16 00:00:00',201.14,'Defence Health','2011-06-16 11:10:19','2011-06-18 10:15:26',5,1),(73,1,'2011-06-16 00:00:00',6,'Train','2011-06-16 11:12:28','2011-06-16 11:12:28',3,1),(74,1,'2011-06-17 13:00:00',10.95,'Lunch','2011-06-17 08:40:54','2011-06-17 08:40:54',4,1),(75,3,'2011-06-17 00:00:00',26,'Alcohol','2011-06-17 10:29:12','2011-06-17 10:29:12',8,1),(76,3,'2011-06-17 00:00:00',30,'Indian','2011-06-17 10:29:33','2011-06-17 10:29:33',9,1),(77,3,'2011-06-17 21:50:00',500,'Robbo plumbing ','2011-06-17 11:49:56','2011-06-17 11:49:56',10,1),(78,3,'2011-06-18 00:00:00',23.3,'Food','2011-06-18 10:08:54','2011-06-25 23:26:57',14,1),(79,3,'2011-06-18 00:00:00',48.38,'Vodka and Wine','2011-06-18 10:09:41','2011-06-18 10:09:41',8,1),(80,3,'2011-06-18 00:00:00',177.35,'Food','2011-06-18 10:10:18','2011-06-25 23:35:22',14,1),(81,2,'2011-06-18 00:00:00',29.3,'YMCA','2011-06-18 10:12:22','2011-06-18 10:12:22',7,1),(82,3,'2011-06-18 00:00:00',40,'Citilink','2011-06-18 10:13:30','2011-06-18 10:13:30',6,1),(83,1,'2011-06-18 17:00:00',9,'Beer@Indoor','2011-06-19 03:06:20','2011-06-19 03:06:20',4,1),(84,1,'2011-06-19 17:00:00',19.95,'Stainless Steel Water Bottle','2011-06-19 11:55:00','2011-06-19 11:55:00',10,1),(85,1,'2011-06-20 12:00:00',3.7,'Coffee','2011-06-20 02:34:49','2011-06-20 02:34:49',4,1),(86,3,'2011-06-21 00:00:00',45.18,'Food','2011-06-21 10:50:05','2011-06-25 23:33:30',14,1),(87,3,'2011-06-22 18:00:00',171,'Beer, Wine and Spirits','2011-06-22 10:43:15','2011-06-22 10:43:48',8,1),(88,1,'2011-06-22 15:00:00',3.7,'Coffee','2011-06-22 10:43:41','2011-06-22 10:43:41',4,1),(89,1,'2011-06-20 17:00:00',600,'Car Repairs','2011-06-22 10:44:18','2011-06-22 10:44:18',6,1),(90,1,'2011-06-18 15:00:00',100,'Towing','2011-06-22 10:44:53','2011-06-22 10:44:53',6,1),(91,1,'2011-06-21 13:00:00',11,'Lunch','2011-06-22 10:45:42','2011-06-22 10:45:42',4,1),(92,1,'2011-06-21 20:00:00',16,'Coffee x 2','2011-06-22 10:46:06','2011-06-22 10:46:06',4,1),(93,3,'2011-06-23 18:00:00',28,'ebay Packing material','2011-06-23 08:12:51','2011-06-23 08:12:51',10,1),(94,1,'2011-06-23 18:00:00',80,'Petrol','2011-06-23 08:13:17','2011-06-23 08:13:17',6,1),(95,3,'2011-06-23 17:00:00',59.99,'Frying Pan Skillet','2011-06-23 08:13:50','2011-06-23 08:13:50',10,1),(96,3,'2011-06-23 14:00:00',89.55,'Postage for ebay items','2011-06-23 08:14:37','2011-06-23 08:14:37',10,1),(97,3,'2011-06-22 00:00:00',15.04,'Food','2011-06-23 11:46:15','2011-06-23 11:46:15',14,1),(98,3,'2011-06-23 00:00:00',31.65,'Food','2011-06-23 11:47:50','2011-06-23 11:47:50',14,1),(99,3,'2011-06-24 00:00:00',60,'Brand Exclusive Sheets','2011-06-23 21:45:04','2011-06-23 21:45:04',10,1),(100,2,'2011-06-24 00:00:00',40,'Brand Exclusive Shoes','2011-06-23 21:45:35','2011-06-23 21:45:35',12,1),(101,1,'2011-06-24 15:15:00',76,'Cluade x 2 sessions','2011-06-24 07:17:15','2011-06-24 07:17:15',7,1),(102,1,'2011-06-24 17:00:00',250,'Laptop Backpack - will reimburse','2011-06-24 07:17:47','2011-06-24 07:17:47',2,1),(103,1,'2011-06-24 13:15:00',3.7,'Coffee','2011-06-24 07:18:11','2011-06-24 07:18:11',4,1),(104,3,'2011-06-24 20:00:00',92.79,'shopping','2011-06-24 10:03:41','2011-06-24 10:03:41',14,1),(105,2,'2011-06-24 00:00:00',40,'Dinner with the girls','2011-06-25 01:10:01','2011-06-25 01:10:01',9,1),(106,2,'2011-06-25 00:00:00',11.5,'Lunch','2011-06-25 03:29:21','2011-06-25 03:29:21',4,1),(107,1,'2011-06-25 12:00:00',3,'Train to city','2011-06-25 10:34:17','2011-06-25 10:34:17',3,1),(108,1,'2011-06-25 13:00:00',9.5,'Lunch','2011-06-25 10:34:54','2011-06-25 10:34:54',4,1),(110,2,'2011-06-27 00:00:00',59.38,'Petrol','2011-06-28 00:54:06','2011-06-28 00:54:06',6,1),(111,3,'2011-06-23 00:00:00',59.49,'Ebay Costs','2011-06-28 00:54:53','2011-06-28 00:54:53',1,1),(112,3,'2011-06-24 00:00:00',193.25,'Postage/Package for Ebay','2011-06-28 00:58:50','2011-06-28 00:58:50',10,1),(113,2,'2011-06-27 00:00:00',5.5,'Lunch','2011-06-28 00:59:35','2011-06-28 00:59:35',4,1),(114,3,'2011-06-27 00:00:00',14.5,'Food for dinner','2011-06-28 01:00:35','2011-06-28 01:00:35',14,1),(115,2,'2011-06-26 00:00:00',20,'Community Cup','2011-06-28 01:01:26','2011-06-28 01:02:12',9,1),(116,1,'2011-06-27 20:45:00',15,'Indoor Cricket','2011-06-28 04:45:01','2011-06-28 04:45:01',7,1),(117,2,'2011-06-28 00:00:00',120,'Irma','2011-06-28 23:14:55','2011-06-28 23:14:55',7,1),(118,1,'2011-06-29 00:00:00',40,'Citilink','2011-06-28 23:15:29','2011-06-28 23:15:29',6,1),(119,3,'2011-06-28 00:00:00',79.37,'Food','2011-06-28 23:15:57','2011-06-28 23:15:57',14,1),(120,2,'2011-06-29 00:00:00',60,'Fine','2011-06-28 23:18:44','2011-06-28 23:18:44',13,1),(121,3,'2011-06-29 00:00:00',30.3,'Food','2011-06-29 08:47:22','2011-06-29 08:47:22',14,1),(122,2,'2011-06-30 00:00:00',105,'Hair','2011-06-30 09:52:52','2011-06-30 09:52:52',1,1);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `lastname` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `encrypted_password` varchar(128) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'benbruscella@gmail.com','Bruscella','Ben','$2a$10$9Jra/ihBLrlVisnNTP7VeO871aDpKwZLfyiytPvM9kDwv51LpQcPC',NULL,NULL,'2011-06-15 21:15:55',14,'2011-07-02 11:51:37','2011-06-25 09:31:53','118.209.20.107','118.209.20.107','2011-06-13 12:43:09','2011-07-02 11:51:37'),(2,'kianeness@gmail.com','Brown','Vanessa','$2a$10$MDh0vJek5HzyL.692rqlhujz822kWhBnh/jUILvBm55HtkIsf7NZi',NULL,NULL,NULL,12,'2011-06-30 00:23:32','2011-06-28 23:14:22','125.7.50.202','125.7.50.202','2011-06-13 12:54:00','2011-06-30 00:23:32'),(3,'joint@131ormondstreets.com','spend','Joint','$2a$10$E6pFiPPG0kOFyRlnwckssu6d.WOqArRY0uS/6lVHmdruroEH/P11m',NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2011-06-13 13:33:20','2011-06-13 13:33:20');
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

-- Dump completed on 2011-07-02 22:11:19

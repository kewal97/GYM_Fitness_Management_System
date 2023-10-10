-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: project
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Create Project Schema 
--
CREATE SCHEMA `project` ;

--
-- Table structure for table `admins`
--

USE project;

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `admin_id` int NOT NULL,
  `admin_first_name` varchar(20) DEFAULT NULL,
  `admin_last_name` varchar(20) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `zipcode` char(5) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Knox','Baglow','94961 Tennessee Parkway','Orlando','Florida','+1 (407) 146-7875','32808'),(2,'Sawyere','Rawne','0497 Stephen Place','Lansing','Michigan','+1 (517) 495-2352','48930'),(3,'Grenville','de la Tremoille','5 Merry Terrace','El Paso','Texas','+1 (915) 532-7084','79940'),(4,'Marissa','Cottesford','772 Waywood Plaza','Atlanta','Georgia','+1 (404) 269-4642','31132'),(5,'Benjie','Labbet','14 Lawn Trail','Tampa','Florida','+1 (813) 491-4027','33694');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `member_id` int NOT NULL,
  `seq_id` int NOT NULL,
  `clock_in` datetime DEFAULT NULL,
  `clock_out` datetime DEFAULT NULL,
  PRIMARY KEY (`member_id`,`seq_id`),
  CONSTRAINT `member_id` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,1,'2023-01-21 18:12:32','2023-01-21 22:08:46'),(1,2,'2023-01-22 08:23:21','2023-01-22 10:11:33'),(1,3,'2023-01-23 22:34:10','2023-01-24 01:13:05'),(1,4,'2023-01-24 12:44:59','2023-01-24 13:51:32'),(1,5,'2023-01-22 08:23:21','2023-01-22 09:22:44'),(1,6,'2023-01-23 22:34:10','2023-01-24 00:53:24'),(1,7,'2023-01-24 12:44:59','2023-01-24 14:04:27'),(1,8,'2023-01-22 08:23:21','2023-01-22 11:12:38'),(1,9,'2023-01-23 22:34:10','2023-01-23 23:35:08'),(1,10,'2023-01-24 12:44:59','2023-01-24 16:36:30'),(2,1,'2023-01-21 18:12:32','2023-01-21 18:30:08'),(2,2,'2023-01-22 08:23:21','2023-01-22 08:28:35'),(2,3,'2023-01-22 22:34:10','2023-01-22 23:02:17'),(2,4,'2023-01-23 12:44:59','2023-01-23 14:08:47'),(2,5,'2023-01-24 02:55:48','2023-01-24 03:40:36'),(2,6,'2023-01-24 17:06:37','2023-01-24 20:38:18'),(3,1,'2023-01-23 20:34:10','2023-01-23 22:47:55'),(3,2,'2023-01-24 22:34:10','2023-01-25 02:09:03'),(3,3,'2023-01-25 09:34:10','2023-01-25 12:03:42'),(3,4,'2023-01-26 20:34:10','2023-01-26 23:12:31'),(3,5,'2023-01-27 09:34:10','2023-01-27 11:39:24'),(3,6,'2023-01-28 17:06:37','2023-01-28 18:33:39'),(3,7,'2023-01-24 17:06:37','2023-01-24 18:20:43'),(3,8,'2023-01-29 20:34:10','2023-01-30 00:09:44'),(4,1,'2023-01-24 17:06:37','2023-01-24 19:10:54'),(4,2,'2023-01-25 12:44:59','2023-01-25 15:32:16'),(4,3,'2023-01-26 12:44:59','2023-01-26 15:30:40'),(4,4,'2023-01-27 09:34:10','2023-01-27 11:52:12'),(4,5,'2023-01-28 17:06:37','2023-01-28 18:43:18'),(4,6,'2023-01-29 12:44:59','2023-01-29 15:16:10'),(4,7,'2023-01-30 12:44:59','2023-01-30 13:51:16'),(5,1,'2023-01-21 18:12:32','2023-01-21 18:16:38'),(5,2,'2023-01-22 18:12:32','2023-01-22 20:38:52'),(5,3,'2023-01-23 20:34:10','2023-01-24 00:12:31'),(5,4,'2023-01-24 18:12:32','2023-01-24 20:58:23'),(5,5,'2023-01-25 18:12:32','2023-01-25 19:01:03'),(5,6,'2023-01-26 20:34:10','2023-01-26 23:24:52'),(5,7,'2023-01-27 18:12:32','2023-01-27 22:01:35'),(5,8,'2023-01-28 18:12:32','2023-01-28 21:03:13'),(5,9,'2023-01-29 20:34:10','2023-01-30 00:04:06'),(5,10,'2023-01-30 18:12:32','2023-01-30 19:42:44'),(6,1,'2023-01-21 18:12:32','2023-01-21 18:45:06'),(6,2,'2023-01-22 18:12:32','2023-01-22 21:56:13'),(6,3,'2023-01-23 20:34:10','2023-01-23 20:49:15'),(6,4,'2023-01-24 18:12:32','2023-01-24 21:46:44'),(6,5,'2023-01-25 18:12:32','2023-01-25 20:15:41'),(6,6,'2023-01-26 20:34:10','2023-01-26 23:45:29'),(6,7,'2023-01-27 18:12:32','2023-01-27 18:34:00'),(6,8,'2023-01-28 18:12:32','2023-01-28 20:07:19'),(6,9,'2023-01-29 20:34:10','2023-01-29 21:06:03'),(6,10,'2023-01-30 18:12:32','2023-01-30 22:02:54'),(7,1,'2023-01-21 09:36:14','2023-01-21 13:22:50'),(7,2,'2023-01-22 09:36:14','2023-01-22 12:30:26'),(7,3,'2023-01-23 09:36:14','2023-01-23 13:34:48'),(7,4,'2023-01-24 09:36:14','2023-01-24 13:19:33'),(7,5,'2023-01-25 18:12:32','2023-01-25 18:20:33'),(7,6,'2023-01-26 18:12:32','2023-01-26 18:55:03'),(7,7,'2023-01-27 18:12:32','2023-01-27 21:44:47'),(7,8,'2023-01-28 18:12:32','2023-01-28 22:05:44'),(7,9,'2023-01-29 18:12:32','2023-01-29 19:17:40'),(7,10,'2023-01-30 18:12:32','2023-01-30 20:50:12'),(8,1,'2023-01-21 20:34:10','2023-01-21 20:37:47'),(8,2,'2023-01-22 20:34:10','2023-01-22 23:46:00'),(8,3,'2023-01-23 20:34:10','2023-01-23 21:24:45'),(8,4,'2023-01-24 20:34:10','2023-01-24 22:24:33'),(8,5,'2023-01-25 20:34:10','2023-01-25 22:22:37'),(8,6,'2023-01-26 20:34:10','2023-01-26 21:18:46'),(8,7,'2023-01-27 20:34:10','2023-01-27 20:37:53'),(8,8,'2023-01-28 20:34:10','2023-01-28 23:52:42'),(8,9,'2023-01-29 20:34:10','2023-01-29 21:03:08'),(8,10,'2023-01-30 20:34:10','2023-01-31 00:11:54'),(9,1,'2023-01-21 20:34:10','2023-01-22 00:08:53'),(9,2,'2023-01-22 20:34:10','2023-01-22 22:07:52'),(9,3,'2023-01-23 20:34:10','2023-01-23 23:07:44'),(9,4,'2023-01-24 20:34:10','2023-01-24 22:53:14'),(9,5,'2023-01-25 20:34:10','2023-01-25 23:24:52'),(9,6,'2023-01-26 20:34:10','2023-01-26 23:51:02'),(9,7,'2023-01-27 20:34:10','2023-01-27 21:08:12'),(9,8,'2023-01-28 20:34:10','2023-01-28 23:32:04'),(9,9,'2023-01-29 20:34:10','2023-01-29 21:39:47'),(9,10,'2023-01-30 20:34:10','2023-01-30 23:18:25'),(10,1,'2023-01-21 09:36:14','2023-01-21 13:25:34'),(10,2,'2023-01-22 09:36:14','2023-01-22 11:25:08'),(10,3,'2023-01-23 09:36:14','2023-01-23 11:15:16'),(10,4,'2023-01-24 09:36:14','2023-01-24 11:35:04'),(10,5,'2023-01-25 09:36:14','2023-01-25 12:44:17'),(10,6,'2023-01-26 20:34:10','2023-01-26 23:26:32'),(10,7,'2023-01-27 20:34:10','2023-01-27 21:26:48'),(10,8,'2023-01-28 20:34:10','2023-01-28 23:35:46'),(10,9,'2023-01-29 20:34:10','2023-01-29 22:40:56'),(10,10,'2023-01-30 20:34:10','2023-01-30 20:50:08'),(11,1,'2023-01-21 20:34:10','2023-01-22 00:22:08'),(11,2,'2023-01-22 20:34:10','2023-01-22 22:16:53'),(11,3,'2023-01-23 20:34:10','2023-01-23 21:51:47'),(11,4,'2023-01-24 09:36:14','2023-01-24 10:10:54'),(11,5,'2023-01-25 09:36:14','2023-01-25 09:40:11'),(11,6,'2023-01-26 09:36:14','2023-01-26 12:25:48'),(11,7,'2023-01-27 09:36:14','2023-01-27 13:02:59'),(11,8,'2023-01-28 09:36:14','2023-01-28 13:02:58'),(11,9,'2023-01-29 09:36:14','2023-01-29 11:45:07'),(11,10,'2023-01-30 09:36:14','2023-01-30 12:46:00'),(12,1,'2023-01-21 18:12:32','2023-01-21 18:12:53'),(12,2,'2023-01-22 18:12:32','2023-01-22 21:59:41'),(12,3,'2023-01-23 18:12:32','2023-01-23 20:39:39'),(12,4,'2023-01-24 18:12:32','2023-01-24 19:25:16'),(12,5,'2023-01-25 18:12:32','2023-01-25 21:37:52'),(12,6,'2023-01-26 18:12:32','2023-01-26 20:36:37'),(12,7,'2023-01-27 18:12:32','2023-01-27 19:12:57'),(12,8,'2023-01-28 09:36:14','2023-01-28 10:24:19'),(12,9,'2023-01-29 09:36:14','2023-01-29 12:11:19'),(12,10,'2023-01-30 09:36:14','2023-01-30 10:07:34'),(13,1,'2023-01-21 20:34:10','2023-01-21 22:33:35'),(13,2,'2023-01-22 20:34:10','2023-01-22 23:13:08'),(13,3,'2023-01-23 20:34:10','2023-01-23 20:55:57'),(13,4,'2023-01-24 20:34:10','2023-01-24 22:05:06'),(13,5,'2023-01-25 20:34:10','2023-01-25 21:13:45'),(13,6,'2023-01-26 20:34:10','2023-01-27 00:24:34'),(13,7,'2023-01-27 20:34:10','2023-01-27 22:31:45'),(13,8,'2023-01-28 20:34:10','2023-01-28 23:40:41'),(13,9,'2023-01-29 20:34:10','2023-01-29 22:16:45'),(13,10,'2023-01-30 20:34:10','2023-01-30 22:15:02'),(13,11,'2023-01-26 02:19:46','2023-01-26 06:19:41'),(14,1,'2023-01-21 02:19:46','2023-01-21 05:51:39'),(14,2,'2023-01-22 02:19:46','2023-01-22 02:26:10'),(14,3,'2023-01-23 02:19:46','2023-01-23 04:46:17'),(14,4,'2023-01-24 02:19:46','2023-01-24 03:37:12'),(14,5,'2023-01-25 02:19:46','2023-01-25 05:26:43'),(14,6,'2023-01-26 02:19:46','2023-01-26 04:55:34'),(14,7,'2023-01-27 02:19:46','2023-01-27 02:45:37'),(14,8,'2023-01-28 02:19:46','2023-01-28 05:35:32'),(14,9,'2023-01-29 02:19:46','2023-01-29 04:49:16'),(15,1,'2023-01-21 09:36:14','2023-01-21 12:58:35'),(15,2,'2023-01-22 09:36:14','2023-01-22 12:55:59'),(15,3,'2023-01-23 09:36:14','2023-01-23 12:01:43'),(15,4,'2023-01-24 09:36:14','2023-01-24 12:06:49'),(15,5,'2023-01-25 09:36:14','2023-01-25 12:58:48'),(15,6,'2023-01-26 09:36:14','2023-01-26 12:34:04'),(15,7,'2023-01-27 09:36:14','2023-01-27 13:20:27'),(15,8,'2023-01-28 09:36:14','2023-01-28 12:12:01'),(15,9,'2023-01-29 09:36:14','2023-01-29 11:57:43'),(15,10,'2023-01-30 09:36:14','2023-01-30 13:04:53'),(15,11,'2023-01-21 02:19:46','2023-01-21 04:32:37'),(16,1,'2023-01-22 02:19:46','2023-01-22 05:31:12'),(16,2,'2023-01-23 02:19:46','2023-01-23 04:57:39'),(16,3,'2023-01-24 02:19:46','2023-01-24 04:04:29'),(16,4,'2023-01-25 02:19:46','2023-01-25 04:15:44'),(16,5,'2023-01-26 02:19:46','2023-01-26 06:01:50'),(16,6,'2023-01-27 02:19:46','2023-01-27 04:36:24'),(16,7,'2023-01-28 02:19:46','2023-01-28 02:57:04'),(16,8,'2023-01-29 02:19:46','2023-01-29 02:36:44'),(16,9,'2023-01-30 02:19:46','2023-01-30 03:50:00'),(16,10,'2023-01-31 02:19:46','2023-01-31 03:01:29'),(17,1,'2023-01-21 20:34:10','2023-01-21 23:18:17'),(17,2,'2023-01-22 20:34:10','2023-01-23 00:08:30'),(17,3,'2023-01-23 20:34:10','2023-01-23 20:58:49'),(17,4,'2023-01-24 20:34:10','2023-01-25 00:25:29'),(17,5,'2023-01-25 20:34:10','2023-01-25 23:07:29'),(17,6,'2023-01-26 20:34:10','2023-01-27 00:05:52'),(17,7,'2023-01-27 20:34:10','2023-01-27 23:58:04'),(17,8,'2023-01-28 20:34:10','2023-01-29 00:31:07'),(17,9,'2023-01-29 20:34:10','2023-01-29 20:37:29'),(17,10,'2023-01-30 20:34:10','2023-01-30 21:55:43'),(18,1,'2023-01-21 20:34:10','2023-01-21 22:12:00'),(18,2,'2023-01-22 20:34:10','2023-01-22 20:38:49'),(18,3,'2023-01-23 20:34:10','2023-01-23 20:40:05'),(18,4,'2023-01-24 20:34:10','2023-01-24 21:24:42'),(18,5,'2023-01-25 20:34:10','2023-01-26 00:07:38'),(18,6,'2023-01-26 20:34:10','2023-01-26 22:53:09'),(18,7,'2023-01-27 20:34:10','2023-01-27 21:02:57'),(18,8,'2023-01-28 20:34:10','2023-01-28 23:27:44'),(18,9,'2023-01-29 20:34:10','2023-01-29 21:43:41'),(19,1,'2023-01-21 20:34:10','2023-01-21 23:35:02'),(19,2,'2023-01-22 09:36:14','2023-01-22 10:15:46'),(19,3,'2023-01-23 09:36:14','2023-01-23 12:57:12'),(19,4,'2023-01-24 09:36:14','2023-01-24 13:01:38'),(19,5,'2023-01-25 09:36:14','2023-01-25 09:49:17'),(19,6,'2023-01-26 09:36:14','2023-01-26 12:14:24'),(19,7,'2023-01-27 09:36:14','2023-01-27 11:15:41'),(19,8,'2023-01-28 09:36:14','2023-01-28 13:28:13'),(19,9,'2023-01-29 09:36:14','2023-01-29 09:56:10'),(19,10,'2023-01-30 09:36:14','2023-01-30 12:32:17'),(20,1,'2023-01-22 09:36:14','2023-01-22 10:07:27'),(20,2,'2023-01-23 09:36:14','2023-01-23 10:32:17'),(20,3,'2023-01-24 09:36:14','2023-01-24 12:34:53'),(20,4,'2023-01-25 09:36:14','2023-01-25 11:56:42'),(20,5,'2023-01-26 09:36:14','2023-01-26 10:38:10'),(20,6,'2023-01-27 09:36:14','2023-01-27 13:09:03'),(20,7,'2023-01-28 09:36:14','2023-01-28 10:33:38'),(20,8,'2023-01-29 09:36:14','2023-01-29 10:58:05'),(20,9,'2023-01-30 09:36:14','2023-01-30 10:32:39'),(20,10,'2023-01-31 09:36:14','2023-01-31 11:51:38');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expenses` (
  `expense_id` int NOT NULL,
  `admin_id` int NOT NULL,
  `trainer_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  `payment_amount` double(8,2) DEFAULT NULL,
  `payment_method` enum('credit_card','debit_card','paypal','cheque','apple_pay','venmo') DEFAULT NULL,
  `transaction_status` enum('pending','complete','fail') DEFAULT NULL,
  PRIMARY KEY (`expense_id`,`admin_id`),
  KEY `order_id_idx` (`order_id`),
  KEY `admin_id_idx` (`admin_id`),
  KEY `trainer_id_idx` (`trainer_id`),
  CONSTRAINT `admin_id` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`admin_id`) ON UPDATE CASCADE,
  CONSTRAINT `order_id` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `trainer_id` FOREIGN KEY (`trainer_id`) REFERENCES `trainer` (`trainer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` VALUES (1,1,NULL,1,422.46,'credit_card','complete'),(2,1,NULL,2,1334.70,'credit_card','complete'),(3,2,NULL,3,1228.09,'credit_card','complete'),(4,5,NULL,4,1089.80,'credit_card','complete'),(5,3,NULL,5,888.60,'credit_card','complete'),(6,4,NULL,6,951.02,'credit_card','complete'),(7,5,NULL,7,708.96,'credit_card','complete'),(8,5,NULL,8,365.78,'credit_card','fail'),(9,4,NULL,9,440.48,'credit_card','fail'),(10,5,NULL,10,1074.75,'credit_card','fail'),(11,2,NULL,11,703.60,'credit_card','fail'),(12,4,NULL,12,1088.12,'debit_card','fail'),(13,3,NULL,13,1020.46,'debit_card','fail'),(14,4,NULL,14,1695.08,'debit_card','fail'),(15,2,NULL,15,920.48,'debit_card','pending'),(16,1,NULL,16,1822.31,'debit_card','pending'),(17,3,NULL,17,110.83,'debit_card','pending'),(18,2,NULL,18,1104.35,'venmo','pending'),(19,4,NULL,19,1808.25,'venmo','pending'),(20,2,NULL,20,139.11,'venmo','pending'),(21,4,NULL,21,190.66,'venmo','pending'),(22,5,NULL,22,1939.26,'venmo','pending'),(23,1,NULL,23,480.22,'venmo','pending'),(24,1,NULL,24,397.93,'venmo','pending'),(25,3,NULL,25,1727.17,'apple_pay','pending'),(26,5,NULL,26,294.83,'apple_pay','pending'),(27,2,NULL,27,1275.93,'apple_pay','pending'),(28,2,NULL,28,1378.00,'apple_pay','pending'),(29,5,NULL,29,1424.20,'apple_pay','complete'),(30,5,NULL,30,1531.56,'apple_pay','complete'),(31,3,7,NULL,508.88,'apple_pay','complete'),(32,4,5,NULL,188.69,'cheque','complete'),(33,4,8,NULL,822.52,'cheque','complete'),(34,1,10,NULL,278.09,'cheque','complete'),(35,4,5,NULL,342.34,'cheque','complete'),(36,2,3,NULL,1033.76,'cheque','complete'),(37,1,9,NULL,666.67,'cheque','complete'),(38,4,2,NULL,1600.30,'cheque','complete'),(39,4,5,NULL,1922.03,'cheque','complete'),(40,3,10,NULL,692.83,'cheque','complete'),(41,5,2,NULL,799.56,'credit_card','complete'),(42,5,5,NULL,1987.51,'credit_card','complete'),(43,1,10,NULL,594.74,'credit_card','complete'),(44,4,6,NULL,1791.27,'credit_card','complete'),(45,3,3,NULL,513.31,'debit_card','fail'),(46,3,8,NULL,1941.66,'debit_card','fail'),(47,1,6,NULL,158.17,'debit_card','fail'),(48,2,5,NULL,1682.74,'cheque','fail'),(49,4,6,NULL,834.26,'cheque','fail'),(50,2,8,NULL,1474.36,'apple_pay','fail');
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gym_equipments`
--

DROP TABLE IF EXISTS `gym_equipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gym_equipments` (
  `gym_equipments_id` int NOT NULL,
  `equipment_name` varchar(45) DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `equipment_description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`gym_equipments_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym_equipments`
--

LOCK TABLES `gym_equipments` WRITE;
/*!40000 ALTER TABLE `gym_equipments` DISABLE KEYS */;
INSERT INTO `gym_equipments` VALUES (1,'Training bench',6391.85,10,'Used for performing weight training exercises or even sit-ups.'),(2,'Dumbbell set',15053.93,8,'It ranges from light to heavy in order to accommodate to everyone.'),(3,'Treadmill',5331.69,4,'Best for cardio exercise with varying inclines, speeds and provides heart rate monitoring.'),(4,'Stationary bicycle ',9421.68,5,'Used for cardiovascular training. An alternative to treadmill for working cardiovascular endurance.'),(5,'Barbell set',5721.89,8,'Used to increase their bone density.'),(6,'Rowing machine',6597.49,6,'Used for a strong aerobic workout. Helps to burn a ton of calories.'),(7,'Low impact treadmills',3912.09,3,'It is a must-have for seniors. They are designed to spare vulnerable joints.'),(8,'Ellipticals',4880.84,6,'Non-impact in nature and protects the back, knee and ankels.'),(9,'Resistance bands',4905.96,20,'Elastic resistance training is effective for increasing muscle strength in a low imapct way.'),(10,'Horizontal seated leg press',3456.78,4,'Helpful while working for quads, glutes, hamstrings and calves'),(11,'Lat pulldown',3435.56,3,'Helpful while working for muscle of the back, shoulder girdle.'),(12,'Cable biceps bar',8768.56,8,'Helpful while working for biceps.'),(13,'Cable triceps bar',7854.89,8,'Helpful while working for triceps.'),(14,'Chest press',3543.78,4,'Helpful while working for chest, biceps and triceps.'),(15,'Hanging leg raise',32512.56,3,'Helpful while working for core, hip flexors');
/*!40000 ALTER TABLE `gym_equipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `member_id` int NOT NULL,
  `membership_id` int NOT NULL,
  `member_first_name` varchar(20) DEFAULT NULL,
  `member_last_name` varchar(20) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `zipcode` char(5) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `plan_id` int DEFAULT NULL,
  PRIMARY KEY (`member_id`,`membership_id`),
  KEY `membership_id_idx` (`membership_id`),
  KEY `plan_id_idx` (`plan_id`),
  CONSTRAINT `membership_id` FOREIGN KEY (`membership_id`) REFERENCES `membership_plan` (`membership_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `plan_id` FOREIGN KEY (`plan_id`) REFERENCES `trainer_workout` (`plan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,2,'Ameline','Lamas','784 Dwight Parkway','Tacoma','Washington','98481','2022-12-26',3),(2,4,'Chere','Marshland','82225 Cottonwood Circle','Vancouver','Washington','98664','2022-09-17',6),(3,10,'Pedro','Ragsdale','3 Autumn Leaf Park','Vancouver','Washington','98682','2022-09-24',7),(4,3,'Chrissy','Bromhead','4817 Prairieview Crossing','Seattle','Washington','98148','2022-12-17',3),(5,9,'Cathy','Celli','5949 Park Meadow Trail','Seattle','Washington','98104','2022-09-25',11),(6,3,'Jere','Tschursch','1513 Stephen Trail','Seattle','Washington','98195','2022-10-18',6),(7,1,'Bryna','Cosley','3 Elgar Pass','Bellevue','Washington','98008','2022-10-02',10),(8,7,'Devonna','Subhan','677 Nevada Parkway','Seattle','Washington','98148','2022-09-07',14),(9,7,'Sara-ann','Laval','88034 Chinook Crossing','Seattle','Washington','98104','2022-08-19',11),(10,4,'Karilynn','Kigelman','6490 Mallory Plaza','Tacoma','Washington','98442','2022-11-02',4),(11,10,'Natividad','Pett','5 Maryland Road','Seattle','Washington','98175','2022-10-21',3),(12,3,'Zachary','Shelf','194 Clarendon Street','Yakima','Washington','98907','2023-01-02',8),(13,10,'Tania','Tammadge','0059 Mcguire Way','Spokane','Washington','99252','2022-11-02',8),(14,5,'Dinnie','Francesconi','601 Declaration Hill','Tacoma','Washington','98447','2022-11-10',10),(15,1,'Johannes','Outerbridge','42 Dixon Center','Spokane','Washington','99260','2022-10-02',3),(16,7,'Mozes','Shattock','62 Walton Lane','Lakewood','Washington','98498','2022-12-20',20),(17,4,'Alva','Guerro','8627 Bobwhite Hill','Yakima','Washington','98907','2022-12-10',20),(18,3,'Lizzie','Iuorio','50 Comanche Street','Olympia','Washington','98506','2022-11-27',12),(19,7,'Sim','Langham','759 Northwestern Junction','Olympia','Washington','98516','2022-12-25',6),(20,9,'Dolli','Glashby','18034 Granby Park','Tacoma','Washington','98481','2023-01-12',10);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership_plan`
--

DROP TABLE IF EXISTS `membership_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membership_plan` (
  `membership_id` int NOT NULL,
  `membership_price` double(6,2) DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `payment_frequency` int DEFAULT NULL,
  PRIMARY KEY (`membership_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership_plan`
--

LOCK TABLES `membership_plan` WRITE;
/*!40000 ALTER TABLE `membership_plan` DISABLE KEYS */;
INSERT INTO `membership_plan` VALUES (1,500.00,3,'3 months membership plan with single payment',1),(2,600.00,3,'3 months membership plan with montly payment',3),(3,900.00,6,'Half yearly membership plan with single payment',1),(4,1000.00,6,'Half yearly membership plan with 3 months payment',2),(5,1100.00,6,'Half yearly membership plan with monthly payment',6),(6,1500.00,12,'Yearly membership plan with single payment',1),(7,1600.00,12,'Yearly membership plan with half yearly payment',2),(8,1600.00,12,'Yearly membership plan with quarterly payment',3),(9,1650.00,12,'Yearly membership plan with 3 months payment',4),(10,1700.00,12,'Yearly membership plan with monthly payment',12);
/*!40000 ALTER TABLE `membership_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `gym_equipments_id` int NOT NULL,
  `price` double(8,2) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `delivery_date` date DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`order_id`,`gym_equipments_id`),
  KEY `gym_equipments_id_idx` (`gym_equipments_id`),
  CONSTRAINT `gym_equipments_id` FOREIGN KEY (`gym_equipments_id`) REFERENCES `gym_equipments` (`gym_equipments_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1116.71,2,'2022-03-03','2022-04-03','Delivered'),(2,1,1268.06,2,'2022-06-13','2022-06-20','Delivered'),(3,1,492.47,1,'2022-06-05','2022-07-05','Cancelled'),(4,1,1347.80,2,'2022-07-06','2022-07-28','Delivered'),(5,1,2166.81,3,'2022-07-07','2022-08-07','Delivered'),(6,2,4039.62,2,'2022-07-08','2022-07-08','Cancelled'),(7,2,4982.97,2,'2022-06-09','2022-07-09','Delivered'),(8,2,1061.57,1,'2022-06-10','2022-07-10','Delivered'),(9,2,1722.51,1,'2022-07-11','2022-07-20','Delivered'),(10,2,3247.26,2,'2022-07-12','2022-08-12','Delivered'),(11,3,2917.71,2,'2022-07-13','2022-08-13','Delivered'),(12,3,2413.98,2,'2022-09-14','2022-10-14','Delivered'),(13,4,4547.70,2,'2022-09-15','2022-10-15','Delivered'),(14,4,4873.98,3,'2022-09-16','2022-10-16','cancelled'),(15,5,4574.99,5,'2022-10-17','2022-10-25','cancelled'),(16,5,1146.90,3,'2022-10-18','2022-11-18','Delivered'),(17,6,3183.01,3,'2022-10-19','2022-11-19','Delivered'),(18,6,2507.65,2,'2022-10-20','2022-11-20','Delivered'),(19,6,906.83,1,'2022-10-21','2022-11-21','Delivered'),(20,7,1333.86,1,'2022-10-22','2022-11-22','Delivered'),(21,7,2578.23,2,'2022-11-23','2022-12-23','Cancelled'),(22,8,4880.84,6,'2022-11-24','2022-12-24','Cancelled'),(23,9,2452.98,10,'2022-11-25','2022-12-25','cancelled'),(24,9,2452.98,10,'2022-11-26','2022-12-26','Delivered'),(25,10,3456.78,4,'2023-01-27','2022-03-05','Shipped'),(26,11,3435.56,3,'2023-01-28','2022-03-06','Shipped'),(27,12,8768.56,8,'2023-01-29','2022-03-07','Shipped'),(28,13,7854.89,8,'2023-01-30','2022-03-08','Shipped'),(29,14,3543.78,4,'2023-02-01','2022-03-09','Shipped'),(30,15,32512.56,3,'2023-02-02','2022-03-10','Shipped');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `payment_id` int NOT NULL,
  `member_id` int NOT NULL,
  `payment_amount` double(6,2) DEFAULT NULL,
  `payment_method` enum('credit_card','debit_card','paypal','cheque','apple_pay','venmo') DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `transaction_status` enum('pending','complete','fail') DEFAULT NULL,
  PRIMARY KEY (`payment_id`,`member_id`),
  KEY `member_id_idx` (`member_id`),
  CONSTRAINT `fk_members_payment` FOREIGN KEY (`member_id`) REFERENCES `members` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,20,699.00,'credit_card','2022-03-25','complete'),(2,15,752.00,'credit_card','2022-04-26','complete'),(3,20,404.00,'credit_card','2022-04-27','complete'),(4,12,1817.00,'credit_card','2022-04-28','complete'),(5,7,1711.00,'credit_card','2022-04-29','complete'),(6,11,910.00,'credit_card','2022-04-30','complete'),(7,3,1687.00,'debit_card','2022-05-01','complete'),(8,11,755.00,'debit_card','2022-05-02','complete'),(9,15,1138.00,'debit_card','2022-05-03','complete'),(10,1,924.00,'debit_card','2022-05-04','complete'),(11,9,76.00,'debit_card','2022-05-05','complete'),(12,4,1870.00,'debit_card','2022-05-06','complete'),(13,10,1366.00,'debit_card','2022-05-07','complete'),(14,12,434.00,'debit_card','2022-05-08','complete'),(15,6,169.00,'debit_card','2022-05-09','complete'),(16,19,1645.00,'debit_card','2022-05-10','complete'),(17,11,755.00,'apple_pay','2022-05-11','complete'),(18,4,1865.00,'apple_pay','2022-05-12','complete'),(19,8,801.00,'apple_pay','2022-05-13','complete'),(20,18,1099.00,'apple_pay','2022-05-14','complete'),(21,2,878.00,'apple_pay','2022-05-15','complete'),(22,6,188.00,'apple_pay','2022-05-16','complete'),(23,11,129.00,'apple_pay','2022-05-17','complete'),(24,17,1089.00,'apple_pay','2022-05-18','complete'),(25,2,1982.00,'apple_pay','2022-07-19','complete'),(26,6,1040.00,'paypal','2022-07-20','complete'),(27,3,1686.00,'paypal','2022-07-21','complete'),(28,11,840.00,'paypal','2022-07-22','fail'),(29,14,1580.00,'paypal','2022-07-23','fail'),(30,12,1358.00,'paypal','2022-07-24','fail'),(31,5,713.00,'paypal','2022-07-25','fail'),(32,8,400.00,'paypal','2022-07-26','fail'),(33,14,396.00,'paypal','2022-07-27','fail'),(34,7,1234.00,'paypal','2022-07-28','fail'),(35,20,465.00,'paypal','2022-07-29','fail'),(36,3,1247.00,'paypal','2022-07-30','fail'),(37,6,1243.00,'paypal','2022-07-31','fail'),(38,3,1599.00,'paypal','2022-08-01','fail'),(39,7,1761.00,'paypal','2022-08-02','fail'),(40,11,1169.00,'paypal','2022-08-03','fail'),(41,17,1302.00,'cheque','2022-08-04','fail'),(42,12,206.00,'cheque','2022-08-05','fail'),(43,9,682.00,'cheque','2022-08-06','fail'),(44,20,768.00,'cheque','2022-08-07','fail'),(45,11,240.00,'cheque','2022-08-08','fail'),(46,16,211.00,'cheque','2022-08-09','fail'),(47,16,265.00,'cheque','2022-04-10','fail'),(48,6,60.00,'cheque','2022-04-11','fail'),(49,19,1977.00,'cheque','2022-04-12','fail'),(50,13,346.00,'cheque','2022-04-13','fail'),(51,6,332.00,'cheque','2022-04-14','fail'),(52,7,439.00,'cheque','2022-04-15','fail'),(53,17,872.00,'cheque','2022-04-16','fail'),(54,14,1077.00,'cheque','2022-04-17','fail'),(55,1,1094.00,'cheque','2022-04-18','fail'),(56,5,1620.00,'cheque','2022-04-19','complete'),(57,1,1605.00,'cheque','2022-04-20','complete'),(58,12,1681.00,'cheque','2022-04-21','complete'),(59,17,992.00,'venmo','2022-04-22','complete'),(60,1,299.00,'venmo','2022-04-23','complete'),(61,19,578.00,'venmo','2022-04-24','complete'),(62,4,769.00,'venmo','2022-04-25','complete'),(63,1,1581.00,'venmo','2022-08-26','complete'),(64,12,1905.00,'venmo','2022-08-27','complete'),(65,8,771.00,'venmo','2022-08-28','complete'),(66,1,1222.00,'venmo','2022-08-29','complete'),(67,15,1234.00,'venmo','2022-08-30','complete'),(68,15,1479.00,'venmo','2022-08-31','complete'),(69,17,1205.00,'venmo','2022-09-01','complete'),(70,4,313.00,'venmo','2022-09-02','complete'),(71,6,813.00,'venmo','2022-09-03','complete'),(72,17,1960.00,'venmo','2022-09-04','complete'),(73,2,832.00,'venmo','2022-09-05','complete'),(74,7,1862.00,'venmo','2022-09-06','complete'),(75,9,1407.00,'venmo','2022-09-07','complete'),(76,19,68.00,'venmo','2023-02-08','pending'),(77,12,1225.00,'venmo','2023-02-09','pending'),(78,8,418.00,'venmo','2023-02-10','pending'),(79,2,77.00,'venmo','2023-02-11','pending'),(80,6,820.00,'venmo','2023-02-12','pending'),(81,9,1769.00,'credit_card','2023-02-13','pending'),(82,12,1646.00,'credit_card','2023-02-14','pending'),(83,2,1132.00,'credit_card','2023-02-15','pending'),(84,11,1909.00,'credit_card','2023-02-16','pending'),(85,9,167.00,'credit_card','2023-02-17','pending'),(86,9,267.00,'credit_card','2023-02-18','pending'),(87,20,314.00,'debit_card','2023-02-19','pending'),(88,13,1840.00,'debit_card','2023-02-20','pending'),(89,12,527.00,'debit_card','2023-02-21','pending'),(90,7,1673.00,'debit_card','2023-02-22','pending'),(91,1,1400.00,'debit_card','2022-12-05','complete'),(92,11,795.00,'debit_card','2022-12-06','complete'),(93,10,1045.00,'debit_card','2022-12-07','complete'),(94,8,1922.00,'cheque','2022-12-08','complete'),(95,17,1377.00,'cheque','2022-12-09','complete'),(96,1,1177.00,'cheque','2022-12-10','complete'),(97,9,1928.00,'cheque','2022-12-11','complete'),(98,8,631.00,'apple_pay','2022-12-12','complete'),(99,4,1396.00,'apple_pay','2022-08-13','fail'),(100,12,312.00,'apple_pay','2022-11-14','fail');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainer`
--

DROP TABLE IF EXISTS `trainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainer` (
  `trainer_id` int NOT NULL,
  `trainer_first_name` varchar(20) DEFAULT NULL,
  `trainer_last_name` varchar(20) DEFAULT NULL,
  `street` varchar(45) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `zipcode` char(5) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `salary` double(8,2) DEFAULT NULL,
  PRIMARY KEY (`trainer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainer`
--

LOCK TABLES `trainer` WRITE;
/*!40000 ALTER TABLE `trainer` DISABLE KEYS */;
INSERT INTO `trainer` VALUES (1,'Karry','Copello','4984 Sullivan Junction','Omaha','Nebraska','68179','402-997-1144',33433.00),(2,'Gracie','Edington','350 Mitchell Center','Fort Smith','Arkansas','72905','479-332-5763',112058.00),(3,'Frasquito','Pershouse','81438 North Parkway','Atlanta','Georgia','31106','404-442-8208',174745.00),(4,'Velvet','Goeff','31295 Donald Avenue','San Diego','California','92165','619-646-9431',57968.00),(5,'Bunni','Pavelka','05178 Bartelt Trail','Young America','Minnesota','55551','952-278-2246',183911.00),(6,'Erhard','Absolem','2 Vahlen Road','Littleton','Colorado','80127','720-621-3712',60118.00),(7,'Maud','Palmer','61 Center Hill','Glendale','Arizona','85311','602-431-4960',103369.00),(8,'Shae','Lawson','374 Bunting Street','Harrisburg','Pennsylvania','17121','717-577-1902',181149.00),(9,'Meyer','Fetherstonhaugh','4 5th Circle','Fairbanks','Alaska','99709','907-736-9987',171980.00),(10,'Doralin','Giacubbo','05 Larry Pass','Seattle','Washington','98140','206-775-7527',52895.00);
/*!40000 ALTER TABLE `trainer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainer_workout`
--

DROP TABLE IF EXISTS `trainer_workout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trainer_workout` (
  `plan_id` int NOT NULL,
  `trainer_id` int NOT NULL,
  `schedule_hrs` int DEFAULT NULL,
  `diet_plan` varchar(50) DEFAULT NULL,
  `price` double(6,2) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`plan_id`,`trainer_id`),
  KEY `trainer_id_idx` (`trainer_id`),
  CONSTRAINT `fk_trainer_workout` FOREIGN KEY (`trainer_id`) REFERENCES `trainer` (`trainer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainer_workout`
--

LOCK TABLES `trainer_workout` WRITE;
/*!40000 ALTER TABLE `trainer_workout` DISABLE KEYS */;
INSERT INTO `trainer_workout` VALUES (1,3,15,'Keto',46.74,'A workout plan with a lot of cardio to burn calories. A diet that cuts out all carbohydrates for fast weight loss.'),(2,6,8,'High Protein',26.02,'A workout plan to build muscle. A diet that is high in protein to build muscle.'),(3,4,18,'Low Fat',47.84,'A workout plan that as a lot of cardio for a healthy heart and a low fat diet to supplement.'),(4,1,19,'High Protein Non Veg',15.42,'A workout plan with a lot of heavy weight lifting and high protein to fuel muscle growth.'),(5,7,13,'Diabetic',45.03,'A workout plan with a mix of weights and cardio and a meal plan designed to be diabetic safe.'),(6,1,3,'Low Fat',34.80,'A low fat diet combined with cross fit to create a toned look'),(7,8,20,'High Protein',31.20,'A high protein diet to fuel muscle growth and extremely intense weight lifting for body builders.'),(8,2,18,'High Protein Non Veg',25.34,'A high proten diet and a lot of weights to look good at the beach.'),(9,2,19,'High Protein',33.24,'High protein, lots of reps'),(10,4,16,'Diabetic',38.05,'A workout plan with a lot of cardio(running, swimming etc) and a meal plan for diabetics.'),(11,7,9,'Keto',38.94,'A workout plan with a lot of cardio to burn calories. A diet that cuts out all carbohydrates for fast weight loss.'),(12,8,11,'Low Fat',18.25,'A low fat plan and a lot of running to slim down fast.'),(13,9,5,'Low Fat',36.02,'A plan designed for swimmers, slim down and burn calories in the pool for hydrodynamic build.'),(14,3,4,'Diabetic',16.24,'A plan for aging diabetics, low intensity and diabetes safe diet'),(15,6,8,'High Protein',44.71,'A high protein diet and some lifting for people getting into weight lifting'),(16,4,13,'Diabetic',13.65,'A diet plan for diabetes patients who are in good shape'),(17,3,5,'Low Fat',29.87,'A low fat, low intensity diet for people starting a weight loss journey'),(18,1,7,'Low Fat',38.53,'Low fat, medium intensity'),(19,5,19,'High Protein',32.57,'A high protein, high intensity workout plan'),(20,8,3,'Keto',21.80,'A workout plan with a lot of cardio to burn calories. A diet that cuts out all carbohydrates for fast weight loss.');
/*!40000 ALTER TABLE `trainer_workout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'project'
--
/*!50003 DROP PROCEDURE IF EXISTS `get_member_details` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_member_details`(IN member_id INT)
BEGIN
    SELECT 
        members.member_first_name, 
        membership_plan.membership_price, 
        membership_plan.duration, 
        trainer_workout.diet_plan, 
        trainer_workout.schedule_hrs 
    FROM 
        members 
        INNER JOIN membership_plan ON members.membership_id = membership_plan.membership_id 
        INNER JOIN trainer_workout ON members.plan_id = trainer_workout.plan_id 
    WHERE 
        members.member_id = member_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-23  0:18:40

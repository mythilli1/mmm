-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: online_banking
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `customer_id` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(256) NOT NULL,
  `role_name` varchar(20) NOT NULL,
  `failed_attempts` int DEFAULT '0',
  `account_locked` tinyint(1) DEFAULT '0',
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `reset_token` varchar(100) DEFAULT NULL,
  `token_expiry` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `username` (`username`),
  KEY `role_name` (`role_name`),
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_name`) REFERENCES `roles` (`role_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('CUST001','alice','5e884898da28047151d0e56f8dc62927','Customer',3,1,'9876543210','alice@gmail.com','2026-01-01 04:30:00',NULL,NULL),('CUST002','bob','5e884898da28047151d0e56f8dc62927','Customer',0,0,'9123456789','bob@gmail.com','2026-01-01 04:35:00',NULL,NULL),('CUST003','charlie','5e884898da28047151d0e56f8dc62927','Teller',0,0,'9012345678','charlie@gmail.com','2026-01-01 04:40:00',NULL,NULL),('CUST004','david','5e884898da28047151d0e56f8dc62927','Customer',0,0,'9988776655','david@gmail.com','2026-01-01 04:45:00',NULL,NULL),('CUST005','eva','5e884898da28047151d0e56f8dc62927','Customer',0,0,'9876501234','eva@gmail.com','2026-01-01 04:50:00',NULL,NULL),('CUST006','frank','5e884898da28047151d0e56f8dc62927','Customer',0,0,'9765432109','frank@gmail.com','2026-01-01 04:55:00',NULL,NULL),('CUST007','grace','5e884898da28047151d0e56f8dc62927','Customer',0,0,'9654321098','grace@gmail.com','2026-01-01 05:00:00',NULL,NULL),('CUST008','harry','5e884898da28047151d0e56f8dc62927','Teller',0,0,'9543210987','harry@gmail.com','2026-01-01 05:05:00',NULL,NULL),('CUST009','irene','5e884898da28047151d0e56f8dc62927','Customer',0,0,'9432109876','irene@gmail.com','2026-01-01 05:10:00',NULL,NULL),('CUST010','jack','5e884898da28047151d0e56f8dc62927','Customer',0,0,'9321098765','jack@gmail.com','2026-01-01 05:15:00',NULL,NULL),('CUST011','kate','5e884898da28047151d0e56f8dc62927','Customer',0,0,'9210987654','kate@gmail.com','2026-01-01 05:20:00',NULL,NULL),('CUST012','leo','5e884898da28047151d0e56f8dc62927','Customer',0,0,'9109876543','leo@gmail.com','2026-01-01 05:25:00',NULL,NULL),('CUST013','mia','5e884898da28047151d0e56f8dc62927','Customer',0,0,'9098765432','mia@gmail.com','2026-01-01 05:30:00',NULL,NULL),('CUST014','nick','5e884898da28047151d0e56f8dc62927','Customer',0,0,'9087654321','nick@gmail.com','2026-01-01 05:35:00',NULL,NULL),('CUST015','olivia','5e884898da28047151d0e56f8dc62927','Admin',0,0,'9076543210','olivia@gmail.com','2026-01-01 05:40:00',NULL,NULL);
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

-- Dump completed on 2026-01-05 10:30:02

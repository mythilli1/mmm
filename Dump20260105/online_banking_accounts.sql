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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `account_id` varchar(10) NOT NULL,
  `customer_id` varchar(10) DEFAULT NULL,
  `account_number` varchar(20) NOT NULL,
  `account_type` varchar(20) DEFAULT NULL,
  `balance` decimal(15,2) DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`account_id`),
  UNIQUE KEY `account_number` (`account_number`),
  KEY `customer_id` (`customer_id`),
  KEY `account_type` (`account_type`),
  CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`customer_id`),
  CONSTRAINT `accounts_ibfk_2` FOREIGN KEY (`account_type`) REFERENCES `account_type` (`type_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('ACC001','CUST001','ACC1001','Savings',10000.00,'2026-01-01 04:30:00'),('ACC002','CUST002','ACC1002','Current',32000.00,'2026-01-01 04:35:00'),('ACC003','CUST003','ACC1003','Savings',10000.00,'2026-01-01 04:40:00'),('ACC004','CUST004','ACC1004','Fixed',20000.00,'2026-01-01 04:45:00'),('ACC005','CUST005','ACC1005','Savings',1500.00,'2026-01-01 04:50:00'),('ACC006','CUST006','ACC1006','Current',8000.00,'2026-01-01 04:55:00'),('ACC007','CUST007','ACC1007','Savings',12000.00,'2026-01-01 05:00:00'),('ACC008','CUST008','ACC1008','Current',9000.00,'2026-01-01 05:05:00'),('ACC009','CUST009','ACC1009','Fixed',30000.00,'2026-01-01 05:10:00'),('ACC010','CUST010','ACC1010','Savings',4000.00,'2026-01-01 05:15:00'),('ACC011','CUST011','ACC1011','Savings',6000.00,'2026-01-01 05:20:00'),('ACC012','CUST012','ACC1012','Current',10000.00,'2026-01-01 05:25:00'),('ACC013','CUST013','ACC1013','Fixed',50000.00,'2026-01-01 05:30:00'),('ACC014','CUST014','ACC1014','Savings',7500.00,'2026-01-01 05:35:00'),('ACC015','CUST015','ACC1015','Current',20000.00,'2026-01-01 05:38:00');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-05 10:30:00

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
-- Table structure for table `otp_validation`
--

DROP TABLE IF EXISTS `otp_validation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otp_validation` (
  `otp_id` varchar(36) NOT NULL,
  `account_id` varchar(10) DEFAULT NULL,
  `otp_code` varchar(6) DEFAULT NULL,
  `expiry_time` timestamp NULL DEFAULT NULL,
  `is_used` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`otp_id`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `otp_validation_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp_validation`
--

LOCK TABLES `otp_validation` WRITE;
/*!40000 ALTER TABLE `otp_validation` DISABLE KEYS */;
INSERT INTO `otp_validation` VALUES ('09805e84-e93d-11f0-a128-f8b46a1af961','ACC001','123456','2026-01-04 07:19:41',1),('2d31befe-e942-11f0-a128-f8b46a1af961','ACC001','123456','2026-01-04 07:56:28',0),('55455387-e942-11f0-a128-f8b46a1af961','ACC001','123456','2026-01-04 07:57:35',0),('84ca3988-e940-11f0-a128-f8b46a1af961','ACC001','123456','2026-01-04 07:44:36',1),('97698012-e943-11f0-a128-f8b46a1af961','ACC001','123456','2026-01-04 08:06:36',0),('c338804b-e941-11f0-a128-f8b46a1af961','ACC001','123456','2026-01-04 07:53:30',1),('d57fdab8-e941-11f0-a128-f8b46a1af961','ACC001','123456','2026-01-04 07:54:01',1),('eb5354f6-e943-11f0-a128-f8b46a1af961','ACC001','123456','2026-01-04 08:08:56',0),('f05fbdcf-e941-11f0-a128-f8b46a1af961','ACC001','123456','2026-01-04 07:54:46',0);
/*!40000 ALTER TABLE `otp_validation` ENABLE KEYS */;
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

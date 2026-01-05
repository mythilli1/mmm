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
-- Temporary view structure for view `vw_daily_transfer_summary`
--

DROP TABLE IF EXISTS `vw_daily_transfer_summary`;
/*!50001 DROP VIEW IF EXISTS `vw_daily_transfer_summary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_daily_transfer_summary` AS SELECT 
 1 AS `transfer_date`,
 1 AS `account_number`,
 1 AS `username`,
 1 AS `total_amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_locked_accounts`
--

DROP TABLE IF EXISTS `vw_locked_accounts`;
/*!50001 DROP VIEW IF EXISTS `vw_locked_accounts`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_locked_accounts` AS SELECT 
 1 AS `username`,
 1 AS `phone`,
 1 AS `email`,
 1 AS `failed_attempts`,
 1 AS `account_locked`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_pending_kyc`
--

DROP TABLE IF EXISTS `vw_pending_kyc`;
/*!50001 DROP VIEW IF EXISTS `vw_pending_kyc`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_pending_kyc` AS SELECT 
 1 AS `username`,
 1 AS `id_type`,
 1 AS `id_number`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_recent_transactions`
--

DROP TABLE IF EXISTS `vw_recent_transactions`;
/*!50001 DROP VIEW IF EXISTS `vw_recent_transactions`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_recent_transactions` AS SELECT 
 1 AS `transaction_id`,
 1 AS `account_number`,
 1 AS `username`,
 1 AS `transaction_type`,
 1 AS `amount`,
 1 AS `transaction_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_daily_transfer_summary`
--

/*!50001 DROP VIEW IF EXISTS `vw_daily_transfer_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_daily_transfer_summary` AS select `dt`.`transfer_date` AS `transfer_date`,`a`.`account_number` AS `account_number`,`u`.`username` AS `username`,`dt`.`total_amount` AS `total_amount` from ((`daily_transfers` `dt` join `accounts` `a` on((`dt`.`account_id` = `a`.`account_id`))) join `users` `u` on((`a`.`customer_id` = `u`.`customer_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_locked_accounts`
--

/*!50001 DROP VIEW IF EXISTS `vw_locked_accounts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_locked_accounts` AS select `users`.`username` AS `username`,`users`.`phone` AS `phone`,`users`.`email` AS `email`,`users`.`failed_attempts` AS `failed_attempts`,`users`.`account_locked` AS `account_locked` from `users` where (`users`.`account_locked` = true) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_pending_kyc`
--

/*!50001 DROP VIEW IF EXISTS `vw_pending_kyc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_pending_kyc` AS select `u`.`username` AS `username`,`k`.`id_type` AS `id_type`,`k`.`id_number` AS `id_number` from (`kyc_details` `k` join `users` `u` on((`k`.`customer_id` = `u`.`customer_id`))) where (`k`.`verified` = false) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_recent_transactions`
--

/*!50001 DROP VIEW IF EXISTS `vw_recent_transactions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_recent_transactions` AS select `t`.`transaction_id` AS `transaction_id`,`a`.`account_number` AS `account_number`,`u`.`username` AS `username`,`t`.`transaction_type` AS `transaction_type`,`t`.`amount` AS `amount`,`t`.`transaction_date` AS `transaction_date` from ((`transactions` `t` join `accounts` `a` on((`t`.`account_id` = `a`.`account_id`))) join `users` `u` on((`a`.`customer_id` = `u`.`customer_id`))) order by `t`.`transaction_date` desc limit 50 */;
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

-- Dump completed on 2026-01-05 10:30:02

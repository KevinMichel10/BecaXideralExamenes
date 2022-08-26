-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: employee_directory
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `batch_job_execution`
--

DROP TABLE IF EXISTS `batch_job_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch_job_execution` (
  `JOB_EXECUTION_ID` bigint NOT NULL,
  `VERSION` bigint DEFAULT NULL,
  `JOB_INSTANCE_ID` bigint NOT NULL,
  `CREATE_TIME` datetime(6) NOT NULL,
  `START_TIME` datetime(6) DEFAULT NULL,
  `END_TIME` datetime(6) DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `EXIT_CODE` varchar(2500) DEFAULT NULL,
  `EXIT_MESSAGE` varchar(2500) DEFAULT NULL,
  `LAST_UPDATED` datetime(6) DEFAULT NULL,
  `JOB_CONFIGURATION_LOCATION` varchar(2500) DEFAULT NULL,
  PRIMARY KEY (`JOB_EXECUTION_ID`),
  KEY `JOB_INST_EXEC_FK` (`JOB_INSTANCE_ID`),
  CONSTRAINT `JOB_INST_EXEC_FK` FOREIGN KEY (`JOB_INSTANCE_ID`) REFERENCES `batch_job_instance` (`JOB_INSTANCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_job_execution`
--

LOCK TABLES `batch_job_execution` WRITE;
/*!40000 ALTER TABLE `batch_job_execution` DISABLE KEYS */;
INSERT INTO `batch_job_execution` VALUES (1,2,1,'2022-08-23 17:44:27.881000','2022-08-23 17:44:28.013000','2022-08-23 17:44:35.830000','COMPLETED','COMPLETED','','2022-08-23 17:44:35.830000',NULL),(2,2,2,'2022-08-23 21:35:23.336000','2022-08-23 21:35:23.483000','2022-08-23 21:35:27.632000','COMPLETED','COMPLETED','','2022-08-23 21:35:27.633000',NULL),(3,2,3,'2022-08-23 23:01:09.857000','2022-08-23 23:01:09.969000','2022-08-23 23:01:13.611000','COMPLETED','COMPLETED','','2022-08-23 23:01:13.612000',NULL),(4,2,4,'2022-08-25 14:57:42.997000','2022-08-25 14:57:43.568000','2022-08-25 14:57:44.693000','UNKNOWN','UNKNOWN','','2022-08-25 14:57:44.694000',NULL),(5,2,5,'2022-08-25 15:02:33.452000','2022-08-25 15:02:33.763000','2022-08-25 15:02:34.711000','UNKNOWN','UNKNOWN','','2022-08-25 15:02:34.713000',NULL),(6,2,6,'2022-08-25 15:02:51.885000','2022-08-25 15:02:51.901000','2022-08-25 15:02:52.296000','UNKNOWN','UNKNOWN','','2022-08-25 15:02:52.297000',NULL),(7,2,7,'2022-08-25 15:11:30.715000','2022-08-25 15:11:30.936000','2022-08-25 15:11:31.975000','FAILED','FAILED','','2022-08-25 15:11:31.976000',NULL),(8,2,8,'2022-08-25 15:12:53.164000','2022-08-25 15:12:53.365000','2022-08-25 15:12:54.031000','UNKNOWN','UNKNOWN','','2022-08-25 15:12:54.031000',NULL),(9,2,9,'2022-08-25 15:14:23.518000','2022-08-25 15:14:23.616000','2022-08-25 15:14:24.544000','FAILED','FAILED','','2022-08-25 15:14:24.545000',NULL),(10,2,10,'2022-08-25 15:18:01.325000','2022-08-25 15:18:01.428000','2022-08-25 15:18:01.964000','FAILED','FAILED','','2022-08-25 15:18:01.965000',NULL),(11,2,11,'2022-08-25 15:18:52.354000','2022-08-25 15:18:52.383000','2022-08-25 15:18:52.899000','FAILED','FAILED','','2022-08-25 15:18:52.899000',NULL),(12,2,12,'2022-08-25 15:24:44.032000','2022-08-25 15:24:44.161000','2022-08-25 15:24:44.830000','UNKNOWN','UNKNOWN','','2022-08-25 15:24:44.833000',NULL),(13,2,13,'2022-08-25 15:26:00.617000','2022-08-25 15:26:00.635000','2022-08-25 15:26:01.214000','UNKNOWN','UNKNOWN','','2022-08-25 15:26:01.215000',NULL),(14,2,14,'2022-08-25 15:40:43.767000','2022-08-25 15:40:44.019000','2022-08-25 15:40:48.352000','COMPLETED','COMPLETED','','2022-08-25 15:40:48.354000',NULL),(15,2,15,'2022-08-26 01:27:50.978000','2022-08-26 01:27:51.072000','2022-08-26 01:27:53.705000','COMPLETED','COMPLETED','','2022-08-26 01:27:53.706000',NULL),(16,2,16,'2022-08-26 01:29:02.486000','2022-08-26 01:29:02.576000','2022-08-26 01:29:04.369000','COMPLETED','COMPLETED','','2022-08-26 01:29:04.369000',NULL),(17,2,17,'2022-08-26 01:33:25.998000','2022-08-26 01:33:26.106000','2022-08-26 01:33:28.069000','COMPLETED','COMPLETED','','2022-08-26 01:33:28.069000',NULL),(18,2,18,'2022-08-26 01:36:02.936000','2022-08-26 01:36:03.030000','2022-08-26 01:36:05.789000','COMPLETED','COMPLETED','','2022-08-26 01:36:05.789000',NULL),(19,2,19,'2022-08-26 01:45:02.824000','2022-08-26 01:45:02.932000','2022-08-26 01:45:05.526000','COMPLETED','COMPLETED','','2022-08-26 01:45:05.527000',NULL),(20,2,20,'2022-08-26 01:56:01.238000','2022-08-26 01:56:01.339000','2022-08-26 01:56:03.229000','COMPLETED','COMPLETED','','2022-08-26 01:56:03.229000',NULL),(21,2,21,'2022-08-26 02:00:01.507000','2022-08-26 02:00:01.618000','2022-08-26 02:00:02.412000','FAILED','FAILED','','2022-08-26 02:00:02.414000',NULL),(22,2,22,'2022-08-26 02:04:13.345000','2022-08-26 02:04:13.452000','2022-08-26 02:04:14.276000','UNKNOWN','UNKNOWN','','2022-08-26 02:04:14.276000',NULL),(23,2,23,'2022-08-26 02:23:49.970000','2022-08-26 02:23:50.076000','2022-08-26 02:23:50.777000','UNKNOWN','UNKNOWN','','2022-08-26 02:23:50.778000',NULL),(24,2,24,'2022-08-26 02:43:06.611000','2022-08-26 02:43:06.713000','2022-08-26 02:43:09.107000','COMPLETED','COMPLETED','','2022-08-26 02:43:09.108000',NULL),(25,2,25,'2022-08-26 02:48:30.445000','2022-08-26 02:48:30.579000','2022-08-26 02:48:33.042000','COMPLETED','COMPLETED','','2022-08-26 02:48:33.042000',NULL),(26,2,26,'2022-08-26 02:49:48.693000','2022-08-26 02:49:48.796000','2022-08-26 02:49:50.886000','COMPLETED','COMPLETED','','2022-08-26 02:49:50.887000',NULL),(27,2,27,'2022-08-26 03:27:41.211000','2022-08-26 03:27:41.328000','2022-08-26 03:27:43.809000','COMPLETED','COMPLETED','','2022-08-26 03:27:43.810000',NULL),(28,2,28,'2022-08-26 03:29:03.845000','2022-08-26 03:29:03.998000','2022-08-26 03:29:06.345000','COMPLETED','COMPLETED','','2022-08-26 03:29:06.346000',NULL),(29,2,29,'2022-08-26 03:41:47.463000','2022-08-26 03:41:47.565000','2022-08-26 03:41:50.174000','COMPLETED','COMPLETED','','2022-08-26 03:41:50.174000',NULL),(30,2,30,'2022-08-26 17:34:18.780000','2022-08-26 17:34:18.924000','2022-08-26 17:34:22.407000','COMPLETED','COMPLETED','','2022-08-26 17:34:22.408000',NULL);
/*!40000 ALTER TABLE `batch_job_execution` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-26 13:06:05

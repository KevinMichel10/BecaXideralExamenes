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
-- Table structure for table `batch_job_execution_params`
--

DROP TABLE IF EXISTS `batch_job_execution_params`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch_job_execution_params` (
  `JOB_EXECUTION_ID` bigint NOT NULL,
  `TYPE_CD` varchar(6) NOT NULL,
  `KEY_NAME` varchar(100) NOT NULL,
  `STRING_VAL` varchar(250) DEFAULT NULL,
  `DATE_VAL` datetime(6) DEFAULT NULL,
  `LONG_VAL` bigint DEFAULT NULL,
  `DOUBLE_VAL` double DEFAULT NULL,
  `IDENTIFYING` char(1) NOT NULL,
  KEY `JOB_EXEC_PARAMS_FK` (`JOB_EXECUTION_ID`),
  CONSTRAINT `JOB_EXEC_PARAMS_FK` FOREIGN KEY (`JOB_EXECUTION_ID`) REFERENCES `batch_job_execution` (`JOB_EXECUTION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_job_execution_params`
--

LOCK TABLES `batch_job_execution_params` WRITE;
/*!40000 ALTER TABLE `batch_job_execution_params` DISABLE KEYS */;
INSERT INTO `batch_job_execution_params` VALUES (1,'LONG','startAt','','1970-01-01 00:00:00.000000',1661276667819,0,'Y'),(2,'LONG','startAt','','1970-01-01 00:00:00.000000',1661290523275,0,'Y'),(3,'LONG','startAt','','1970-01-01 00:00:00.000000',1661295669800,0,'Y'),(4,'LONG','startAt','','1970-01-01 00:00:00.000000',1661439462897,0,'Y'),(5,'LONG','startAt','','1970-01-01 00:00:00.000000',1661439753351,0,'Y'),(6,'LONG','startAt','','1970-01-01 00:00:00.000000',1661439771860,0,'Y'),(7,'LONG','startAt','','1970-01-01 00:00:00.000000',1661440290598,0,'Y'),(8,'LONG','startAt','','1970-01-01 00:00:00.000000',1661440373075,0,'Y'),(9,'LONG','startAt','','1970-01-01 00:00:00.000000',1661440463457,0,'Y'),(10,'LONG','startAt','','1970-01-01 00:00:00.000000',1661440681243,0,'Y'),(11,'LONG','startAt','','1970-01-01 00:00:00.000000',1661440732299,0,'Y'),(12,'LONG','startAt','','1970-01-01 00:00:00.000000',1661441083929,0,'Y'),(13,'LONG','startAt','','1970-01-01 00:00:00.000000',1661441160596,0,'Y'),(14,'LONG','startAt','','1970-01-01 00:00:00.000000',1661442043697,0,'Y'),(15,'LONG','startAt','','1970-01-01 00:00:00.000000',1661477270928,0,'Y'),(16,'LONG','startAt','','1970-01-01 00:00:00.000000',1661477342440,0,'Y'),(17,'LONG','startAt','','1970-01-01 00:00:00.000000',1661477605933,0,'Y'),(18,'LONG','startAt','','1970-01-01 00:00:00.000000',1661477762892,0,'Y'),(19,'LONG','startAt','','1970-01-01 00:00:00.000000',1661478302764,0,'Y'),(20,'LONG','startAt','','1970-01-01 00:00:00.000000',1661478961188,0,'Y'),(21,'LONG','startAt','','1970-01-01 00:00:00.000000',1661479201439,0,'Y'),(22,'LONG','startAt','','1970-01-01 00:00:00.000000',1661479453289,0,'Y'),(23,'LONG','startAt','','1970-01-01 00:00:00.000000',1661480629913,0,'Y'),(24,'LONG','startAt','','1970-01-01 00:00:00.000000',1661481786550,0,'Y'),(25,'LONG','startAt','','1970-01-01 00:00:00.000000',1661482110381,0,'Y'),(26,'LONG','startAt','','1970-01-01 00:00:00.000000',1661482188651,0,'Y'),(27,'LONG','startAt','','1970-01-01 00:00:00.000000',1661484461155,0,'Y'),(28,'LONG','startAt','','1970-01-01 00:00:00.000000',1661484543775,0,'Y'),(29,'LONG','startAt','','1970-01-01 00:00:00.000000',1661485307388,0,'Y'),(30,'LONG','startAt','','1970-01-01 00:00:00.000000',1661535258710,0,'Y');
/*!40000 ALTER TABLE `batch_job_execution_params` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-26 13:06:07

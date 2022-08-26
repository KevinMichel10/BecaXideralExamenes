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
-- Table structure for table `batch_job_instance`
--

DROP TABLE IF EXISTS `batch_job_instance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch_job_instance` (
  `JOB_INSTANCE_ID` bigint NOT NULL,
  `VERSION` bigint DEFAULT NULL,
  `JOB_NAME` varchar(100) NOT NULL,
  `JOB_KEY` varchar(32) NOT NULL,
  PRIMARY KEY (`JOB_INSTANCE_ID`),
  UNIQUE KEY `JOB_INST_UN` (`JOB_NAME`,`JOB_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch_job_instance`
--

LOCK TABLES `batch_job_instance` WRITE;
/*!40000 ALTER TABLE `batch_job_instance` DISABLE KEYS */;
INSERT INTO `batch_job_instance` VALUES (1,0,'importCustomers','992890028d6b9ae204a32bdcc569ae13'),(2,0,'importCustomers','91a4937cb324580535023f49344fb5f5'),(3,0,'importEstudiante','f4edfe1355d51f6843234dd054187725'),(4,0,'importEstudiante','938fbaf0dde32a093d8800675b7dbef5'),(5,0,'importEstudiante','a39adb28010718e748e768760c383f82'),(6,0,'importEstudiante','fd0075dacde517f15475340a42253818'),(7,0,'importEstudiante','6bcbe035d5bb09299903ded20e9e55d6'),(8,0,'importEstudiante','64a05268092859f116c0036b741cc603'),(9,0,'importEstudiante','0da63d26eda7101f10360982366ae6ae'),(10,0,'importEstudiante','20c0f4fc777d65bda377ceae8468653c'),(11,0,'importEstudiante','0d2f2ed743b8d04d41e8d969bf956beb'),(12,0,'importEstudiante','7d425f077f5148eaca5d3977211ce959'),(13,0,'importEstudiante','2d35d83b7a11b323f3308d3e483e36c6'),(14,0,'importCustomers','85ccf0cb72dc54e4051be2ea8e89f67c'),(15,0,'importCustomers','156a43b123ee86d847a26148e13e33f1'),(16,0,'importCustomers','5ff86aeadb6005c5a8182fec63fdd0c6'),(17,0,'importCustomers','387d99935c2aa603588c1fd0344bf23b'),(18,0,'importCustomers','fcde171c857e3dbf3aaf48f749f240e8'),(19,0,'importCustomers','b94af7b5b43e941f8e97c1a4065e462d'),(20,0,'importCustomers','a21ac96e1c665e0673470551c22028d3'),(21,0,'importCustomers','29f3990eba04609fbc1e592cab9e3b88'),(22,0,'importCustomers','b918860d903b6adc73bd3d81a75ec8d0'),(23,0,'importEstudiante','c67e81b1eea27f924866a4aed8c2b343'),(24,0,'importCustomers','0b2da237b30d63af162d989fd2772161'),(25,0,'importEstudiante','6b7db65b0c13996b990ba9b29500cafc'),(26,0,'importEstudiante','06e44bab34323dc65045b5715cb4cbf1'),(27,0,'importEstudiante','80f21ed08f7cff9ddfa9371de59c3b7b'),(28,0,'importEstudiante','856c75996249142f26e6b602dcc6d25c'),(29,0,'importEstudiante','a53f2dc8fd75d3baadd45797b6239164'),(30,0,'importEstudiante','7d9a9e8b08764959faaf88e57c54269f');
/*!40000 ALTER TABLE `batch_job_instance` ENABLE KEYS */;
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

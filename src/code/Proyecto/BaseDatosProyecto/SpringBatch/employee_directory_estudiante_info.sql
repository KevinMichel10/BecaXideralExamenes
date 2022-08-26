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
-- Table structure for table `estudiante_info`
--

DROP TABLE IF EXISTS `estudiante_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiante_info` (
  `estudiante_id` int NOT NULL,
  `escuela` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`estudiante_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante_info`
--

LOCK TABLES `estudiante_info` WRITE;
/*!40000 ALTER TABLE `estudiante_info` DISABLE KEYS */;
INSERT INTO `estudiante_info` VALUES (3,'IPN','Joan','Ayala','joan@gmail.com'),(12,'IPN','Adria','Berengueras','adria@gmail.com'),(16,'IPN','Luis','Zambudio','luis@gmail.com'),(19,'IPN','Dounya','Zafra','dounya@gmail.com'),(24,'IPN','Aran','Alvarez','aran@gmail.com'),(50,'IPN','Raquel','Avila','raquel@gmail.com'),(51,'IPN','Enric','Parramon','enric@gmail.com'),(54,'IPN','Maria Noelia','Alvarez','maria noelia@gmail.com'),(55,'IPN','Cristina','Alins','cristina@gmail.com'),(68,'IPN','Marta','Aguilar','marta@gmail.com'),(79,'IPN','Ingrid','Aloy','ingrid@gmail.com'),(84,'IPN','M�nica','Artigas','m�nica@gmail.com'),(98,'IPN','Anna','Rivero','anna@gmail.com'),(109,'IPN','Daniel','Alins','daniel@gmail.com'),(113,'IPN','Jairo','Morales','jairo@gmail.com'),(124,'IPN','Audrie','Gilabert','audrie@gmail.com'),(126,'IPN','Hagen','Tejado','hagen@gmail.com'),(129,'IPN','Carolann','Aloy','carolann@gmail.com'),(143,'IPN','Nari','Torn�','nari@gmail.com'),(152,'IPN','Shayna','Torn�','shayna@gmail.com'),(163,'IPN','Louie','Compte','louie@gmail.com'),(169,'IPN','Archambault','Garcia','archambault@gmail.com'),(176,'IPN','Hilary','Troyano','hilary@gmail.com'),(183,'IPN','Killian','Rodriguez','killian@gmail.com'),(188,'IPN','Enriqueta','Baena','enriqueta@gmail.com'),(197,'IPN','Georgy','Hermoso','georgy@gmail.com'),(205,'IPN','Steffane','G�mez','steffane@gmail.com'),(220,'IPN','Gannon','Florido','gannon@gmail.com'),(223,'IPN','Beverlee','Gasset','beverlee@gmail.com'),(228,'IPN','Rockwell','Franch','rockwell@gmail.com'),(265,'IPN','Marget','Onn','marget@gmail.com'),(283,'IPN','Torrence','Guillard','torrence@gmail.com'),(304,'IPN','Sascha','Cornfoot','sascha@gmail.com'),(308,'IPN','Antonio','Leachman','antonio@gmail.com'),(353,'IPN','Tonye','Corley','tonye@gmail.com'),(357,'IPN','Essy','Reisk','essy@gmail.com'),(359,'IPN','Demetria','Sedgwick','demetria@gmail.com'),(366,'IPN','Isidore','Bezants','isidore@gmail.com'),(386,'IPN','Hyacinthia','Sturney','hyacinthia@gmail.com'),(397,'IPN','Clementia','Barwick','clementia@gmail.com'),(400,'IPN','Pippa','Cousin','pippa@gmail.com'),(405,'IPN','Larissa','Rubes','larissa@gmail.com'),(419,'IPN','Maje','Astles','maje@gmail.com'),(427,'IPN','Rina','Vawton','rina@gmail.com'),(436,'IPN','Wallis','Gregoletti','wallis@gmail.com'),(465,'IPN','Gherardo','Gatecliff','gherardo@gmail.com'),(466,'IPN','Dermot','Adamowitz','dermot@gmail.com'),(467,'IPN','Monroe','Stit','monroe@gmail.com'),(469,'IPN','Niven','Annes','niven@gmail.com'),(470,'IPN','Alfy','Gissing','alfy@gmail.com'),(480,'IPN','Barclay','Branca','barclay@gmail.com'),(481,'IPN','Horatio','McEvay','horatio@gmail.com'),(488,'IPN','Cassaundra','Spier','cassaundra@gmail.com'),(513,'IPN','Beverlie','Achrameev','beverlie@gmail.com'),(518,'IPN','Maggi','Chippendale','maggi@gmail.com'),(521,'IPN','Shaine','Svanini','shaine@gmail.com'),(531,'IPN','Salvidor','Schubuser','salvidor@gmail.com'),(538,'IPN','Hardy','Prati','hardy@gmail.com'),(541,'IPN','Roland','Rubinshtein','roland@gmail.com'),(555,'IPN','Therine','Housegoe','therine@gmail.com'),(556,'IPN','Carlin','Smallsman','carlin@gmail.com'),(560,'IPN','Chase','Oakland','chase@gmail.com'),(561,'IPN','Dagny','Cardon','dagny@gmail.com'),(567,'IPN','Maitilde','Sacase','maitilde@gmail.com'),(571,'IPN','Norton','Geard','norton@gmail.com'),(578,'IPN','Tasha','Saffin','tasha@gmail.com'),(597,'IPN','Trumaine','Franzotto','trumaine@gmail.com'),(601,'IPN','Pooh','Jori','pooh@gmail.com'),(612,'IPN','Damaris','Saiger','damaris@gmail.com'),(621,'IPN','Yuri','Lodevick','yuri@gmail.com'),(627,'IPN','Tanya','Broadbere','tanya@gmail.com'),(641,'IPN','Sadella','Buntain','sadella@gmail.com'),(655,'IPN','Peggy','Bosnell','peggy@gmail.com'),(659,'IPN','Todd','Frankling','todd@gmail.com'),(673,'IPN','Amargo','Cheatle','amargo@gmail.com'),(677,'IPN','Shani','Astley','shani@gmail.com'),(685,'IPN','Ransom','Gianilli','ransom@gmail.com'),(686,'IPN','Emelen','Fanner','emelen@gmail.com'),(701,'IPN','Yevette','Skeats','yevette@gmail.com'),(706,'IPN','Gil','Bazeley','gil@gmail.com'),(710,'IPN','Farlee','Clemo','farlee@gmail.com'),(711,'IPN','Haroun','Millier','haroun@gmail.com'),(713,'IPN','Starr','Feild','starr@gmail.com'),(717,'IPN','Clerissa','McGilbon','clerissa@gmail.com'),(727,'IPN','Alisander','Laffling','alisander@gmail.com'),(735,'IPN','Aida','Crutchley','aida@gmail.com'),(736,'IPN','Cally','Blaszczyk','cally@gmail.com'),(739,'IPN','Dalt','Neno','dalt@gmail.com'),(740,'IPN','Duke','Mordecai','duke@gmail.com'),(744,'IPN','Aggy','Cobley','aggy@gmail.com'),(745,'IPN','Stefano','Dowdell','stefano@gmail.com'),(749,'IPN','Dame','Lippett','dame@gmail.com'),(753,'IPN','Dory','Percy','dory@gmail.com'),(762,'IPN','Langsdon','Crocker','langsdon@gmail.com'),(764,'IPN','Tymothy','Donn','tymothy@gmail.com'),(776,'IPN','Wallis','Paula','wallis@gmail.com'),(781,'IPN','Michaeline','Caldera','michaeline@gmail.com'),(787,'IPN','Kirstyn','Whitmell','kirstyn@gmail.com'),(790,'IPN','Dee dee','Burney','dee dee@gmail.com'),(792,'IPN','Harley','Verbeke','harley@gmail.com'),(799,'IPN','Celia','Matchett','celia@gmail.com'),(801,'IPN','Florida','Rraundl','florida@gmail.com'),(807,'IPN','Rasla','Clement','rasla@gmail.com'),(809,'IPN','Ramona','Tenney','ramona@gmail.com'),(810,'IPN','Guinna','Ulyat','guinna@gmail.com'),(816,'IPN','Vidovic','Dwight','vidovic@gmail.com'),(820,'IPN','Shelley','Blowen','shelley@gmail.com'),(836,'IPN','Saba','Freegard','saba@gmail.com'),(838,'IPN','Delly','Ching','delly@gmail.com'),(850,'IPN','Tanney','Ornillos','tanney@gmail.com'),(854,'IPN','Oates','Lille','oates@gmail.com'),(867,'IPN','Maurise','Leason','maurise@gmail.com'),(869,'IPN','Ruthann','Hullbrook','ruthann@gmail.com'),(870,'IPN','Joletta','Tytcomb','joletta@gmail.com'),(876,'IPN','Catrina','Millwater','catrina@gmail.com'),(886,'IPN','Cindelyn','Matzkaitis','cindelyn@gmail.com'),(891,'IPN','Evonne','Aspinell','evonne@gmail.com'),(896,'IPN','Georg','Fitter','georg@gmail.com'),(897,'IPN','Ralph','Chedgey','ralph@gmail.com'),(899,'IPN','Alyce','Eggerton','alyce@gmail.com'),(926,'IPN','Sibelle','Beautyman','sibelle@gmail.com'),(937,'IPN','Felicle','Few','felicle@gmail.com'),(945,'IPN','Cassie','Spaven','cassie@gmail.com'),(948,'IPN','Maryl','Branford','maryl@gmail.com'),(949,'IPN','Charley','Millis','charley@gmail.com'),(951,'IPN','Caria','Horsefield','caria@gmail.com'),(959,'IPN','Nathalia','Raddin','nathalia@gmail.com'),(966,'IPN','Davin','Rapley','davin@gmail.com'),(994,'IPN','Patricio','Davidovic','patricio@gmail.com');
/*!40000 ALTER TABLE `estudiante_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-26 13:06:06

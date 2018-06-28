CREATE DATABASE  IF NOT EXISTS `nutripower` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `nutripower`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: nutripower
-- ------------------------------------------------------
-- Server version	5.6.40-log

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
-- Table structure for table `avaliacao_fisica`
--

DROP TABLE IF EXISTS `avaliacao_fisica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avaliacao_fisica` (
  `id_avaliacao` int(11) NOT NULL AUTO_INCREMENT,
  `id_paciente` int(11) DEFAULT NULL,
  `porcentagem_gordura` double DEFAULT NULL,
  `metabolismo_basal` double DEFAULT NULL,
  `porcentagem_massa_muscular` double DEFAULT NULL,
  `altura` double DEFAULT NULL,
  `imc` double DEFAULT NULL,
  `porcentagem_massa_magra` double DEFAULT NULL,
  `pressao` double DEFAULT NULL,
  `objetivo` varchar(450) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `peso` double DEFAULT NULL,
  `observacoes` varchar(450) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_avaliacao`),
  KEY `id_paciente` (`id_paciente`),
  CONSTRAINT `avaliacao_fisica_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `paciente` (`id_paciente`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliacao_fisica`
--

LOCK TABLES `avaliacao_fisica` WRITE;
/*!40000 ALTER TABLE `avaliacao_fisica` DISABLE KEYS */;
INSERT INTO `avaliacao_fisica` VALUES (6,36,29,10,20,1.59,21.3599145603418,25,12.8,'emagrecer','12/10/2017',54,'acima do peso'),(7,35,29,10,20,1.9,24.9307479224377,25,12.8,'emagrecer','12/10/2017',90,'acima do peso');
/*!40000 ALTER TABLE `avaliacao_fisica` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-28 17:55:43

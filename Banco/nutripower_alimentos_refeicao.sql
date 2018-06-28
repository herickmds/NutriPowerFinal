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
-- Table structure for table `alimentos_refeicao`
--

DROP TABLE IF EXISTS `alimentos_refeicao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alimentos_refeicao` (
  `id_alimentos_refeicao` int(11) NOT NULL AUTO_INCREMENT,
  `id_refeicao` int(11) DEFAULT NULL,
  `id_alimento` int(11) DEFAULT NULL,
  `porcao` double DEFAULT NULL,
  PRIMARY KEY (`id_alimentos_refeicao`),
  KEY `id_refeicao_idx` (`id_refeicao`),
  KEY `id_alimento_idx` (`id_alimento`),
  CONSTRAINT `id_alimento` FOREIGN KEY (`id_alimento`) REFERENCES `alimento` (`id_alimento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `id_refeicao` FOREIGN KEY (`id_refeicao`) REFERENCES `refeicao` (`id_refeicao`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alimentos_refeicao`
--

LOCK TABLES `alimentos_refeicao` WRITE;
/*!40000 ALTER TABLE `alimentos_refeicao` DISABLE KEYS */;
INSERT INTO `alimentos_refeicao` VALUES (3,93,15,200),(4,94,15,100),(6,95,7,30),(7,93,537,200),(8,96,48,3),(9,96,485,6),(10,96,443,6),(11,96,252,1000);
/*!40000 ALTER TABLE `alimentos_refeicao` ENABLE KEYS */;
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

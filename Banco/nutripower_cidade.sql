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
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidade` (
  `id_cidade` int(11) NOT NULL AUTO_INCREMENT,
  `id_estado` int(11) DEFAULT NULL,
  `nome_cidade` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_cidade`),
  KEY `id_estado` (`id_estado`),
  CONSTRAINT `cidade_ibfk_1` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,1,'Cachoeiro de Itapemirim'),(2,2,'Cachoeiro de Itapemirim'),(3,3,'Cachoeiro de Itapemirim'),(4,4,'Cachoeiro de Itapemirim'),(5,5,'Cachoeiro de Itapemirim'),(6,6,'Cachoeiro de Itapemirim'),(7,7,'Cachoeiro de Itapemirim'),(8,8,'Cachoeiro de Itapemirim'),(9,9,'Cachoeiro de Itapemirim'),(10,10,'Cachoeiro de Itapemirim'),(11,11,'Cachoeiro de Itapemirim'),(12,12,'Cachoeiro de Itapemirim'),(13,13,'Cachoeiro de Itapemirim'),(14,14,'Cachoeiro de Itapemirim'),(15,15,'Cachoeiro de Itapemirim'),(16,16,'Cachoeiro de Itapemirim'),(17,17,'Cachoeiro de Itapemirim'),(18,18,'Cachoeiro de Itapemirim'),(19,19,'Cachoeiro de Itapemirim'),(20,20,'Cachoeiro de Itapemirim'),(21,21,'Cachoeiro de Itapemirim'),(22,22,'Cachoeiro de Itapemirim'),(23,23,'Cachoeiro de Itapemirim'),(24,24,'Cachoeiro de Itapemirim'),(25,25,'Cachoeiro de Itapemirim'),(26,26,'Cachoeiro de Itapemirim'),(27,27,'Cachoeiro de Itapemirim'),(28,28,'Cachoeiro de Itapemirim'),(29,29,'Cachoeiro de Itapemirim'),(30,30,'Cachoeiro de Itapemirim'),(31,31,'Cachoeiro de Itapemirim'),(32,32,'Cachoeiro de Itapemirim'),(33,33,'Cachoeiro de Itapemirim'),(34,34,'Cachoeiro de Itapemirim'),(35,35,'Cachoeiro de Itapemirim'),(36,36,'Cachoeiro de Itapemirim'),(37,37,'Cachoeiro de Itapemirim'),(38,38,'Cachoeiro de Itapemirim'),(39,39,'Cachoeiro de Itapemirim'),(40,40,'Cachoeiro de Itapemirim'),(41,41,'Cachoeiro de Itapemirim'),(42,42,'Cachoeiro de Itapemirim'),(43,43,'Cachoeiro de Itapemirim'),(44,44,'Cachoeiro de Itapemirim'),(45,45,'Cachoeiro de Itapemirim'),(46,46,''),(47,47,'Venda Nova do Imigrante'),(48,48,'Venda Nova do Imigrante'),(49,49,'Cachoeiro de Itapemirim'),(50,50,''),(51,51,''),(52,52,''),(53,53,'Cachoeiro de Itapemirim'),(54,54,''),(55,55,'Cachoeiro de Itapemirim'),(56,56,'Cachoeiro de Itapemirim'),(57,57,'Cachoeiro de Itapemirim'),(58,58,'Cachoeiro de Itapemirim');
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-28 17:55:44

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
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `endereco` (
  `id_endereco` int(11) NOT NULL AUTO_INCREMENT,
  `id_pais` int(11) DEFAULT NULL,
  `id_estado` int(11) DEFAULT NULL,
  `id_cidade` int(11) DEFAULT NULL,
  `id_bairro` int(11) DEFAULT NULL,
  `cep` int(11) DEFAULT NULL,
  `nome_rua` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero_casa` int(11) DEFAULT NULL,
  `complemento` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_endereco`),
  KEY `id_cidade` (`id_cidade`),
  KEY `id_pais` (`id_pais`),
  KEY `id_estado` (`id_estado`),
  KEY `id_bairro` (`id_bairro`),
  CONSTRAINT `endereco_ibfk_1` FOREIGN KEY (`id_cidade`) REFERENCES `cidade` (`id_cidade`),
  CONSTRAINT `endereco_ibfk_2` FOREIGN KEY (`id_pais`) REFERENCES `pais` (`id_pais`),
  CONSTRAINT `endereco_ibfk_3` FOREIGN KEY (`id_estado`) REFERENCES `estado` (`id_estado`),
  CONSTRAINT `endereco_ibfk_4` FOREIGN KEY (`id_bairro`) REFERENCES `bairro` (`id_bairro`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,1,1,1,1,29313667,'Rua Alzemira Marques da Silva',35,'adigboefs'),(2,2,2,2,2,29313667,'Rua Alzemira Marques da Silva',35,'adigboefs'),(3,3,3,3,3,29313667,'Rua Alzemira Marques da Silva',35,'adigboefs'),(4,4,4,4,4,29313667,'Rua Alzemira Marques da Silva',35,'adigboefs'),(5,5,5,5,5,29313667,'Rua Alzemira Marques da Silva',35,'n'),(6,6,6,6,6,29313667,'Rua Alzemira Marques da Silva',35,'n'),(7,7,7,7,7,29313667,'Rua Alzemira Marques da Silva',35,'n'),(8,8,8,8,8,29313667,'Rua Alzemira Marques da Silva',35,'n'),(9,9,9,9,9,29313668,'Rua Horacy Amarantes Mattos',22,'snnojenvw'),(10,10,10,10,10,29313667,'Rua Alzemira Marques da Silva',35,'adigboefs'),(11,11,11,11,11,29313667,'Rua Alzemira Marques da Silva',35,'adigboefs'),(12,12,12,12,12,29313667,'Rua Alzemira Marques da Silva',35,'adigboefs'),(13,13,13,13,13,29313667,'Rua Alzemira Marques da Silva',35,'adigboefs'),(14,14,14,14,14,29313667,'Rua Alzemira Marques da Silva',35,'adigboefs'),(15,15,15,15,15,29313667,'Rua Alzemira Marques da Silva',35,'adigboefs'),(16,16,16,16,16,29313667,'Rua Alzemira Marques da Silva',35,'adigboefs'),(17,17,17,17,17,29313667,'Rua Alzemira Marques da Silva',22,'adigboefs'),(18,18,18,18,18,29313667,'Rua Alzemira Marques da Silva',22,'adigboefs'),(19,19,19,19,19,29313667,'Rua Alzemira Marques da Silva',22,'adigboefs'),(20,20,20,20,20,29313668,'Rua Horacy Amarantes Mattos',35,'adigboefs'),(21,21,21,21,21,29313668,'Rua Horacy Amarantes Mattos',22,'adigboefs'),(22,22,22,22,22,29313667,'Rua Alzemira Marques da Silva',35,'sqswdqeqe'),(23,23,23,23,23,29313667,'Rua Alzemira Marques da Silva',35,'adigboefs'),(24,24,24,24,24,29313669,'Rua Irmã Giovanna Menechini',11,'sqswd'),(25,25,25,25,25,29313669,'Rua Irmã Giovanna Menechini',11,'sqswd'),(26,26,26,26,26,29313669,'Rua Irmã Giovanna Menechini',11,'sqswd'),(27,27,27,27,27,29313669,'Rua Irmã Giovanna Menechini',11,'sqswd'),(28,28,28,28,28,29313669,'Rua Irmã Giovanna Menechini',11,'sqswd'),(29,29,29,29,29,29313669,'Rua Irmã Giovanna Menechini',11,'sqswd'),(30,30,30,30,30,29313668,'Rua Horacy Amarantes Mattos',22,'adigboefs'),(31,31,31,31,31,29313669,'Rua Irmã Giovanna Menechini',121,'121212'),(32,32,32,32,32,29313667,'Rua Alzemira Marques da Silva',22,'xc'),(33,33,33,33,33,29313667,'Rua Alzemira Marques da Silva',22,'xc'),(34,34,34,34,34,29313667,'Rua Alzemira Marques da Silva',22,'xc'),(35,35,35,35,35,29313668,'Rua Horacy Amarantes Mattos',112,'wqwe\''),(36,36,36,36,36,29313667,'Rua Alzemira Marques da Silva',11,'n'),(37,37,37,37,37,29313667,'Rua Alzemira Marques da Silva',22,'adigboefs'),(38,38,38,38,38,29313667,'Rua Alzemira Marques da Silva',23,'sdw'),(39,39,39,39,39,29313666,'Rua Zélia Machado',33,'n'),(40,40,40,40,40,29313669,'Rua Irmã Giovanna Menechini',33,'n'),(41,41,41,41,41,29313669,'Rua Irmã Giovanna Menechini',33,'n'),(42,42,42,42,42,29313667,'Rua Alzemira Marques da Silva',33,'n'),(43,43,43,43,43,29313667,'Rua Alzemira Marques da Silva',35,'n'),(44,44,44,44,44,29313667,'Rua Alzemira Marques da Silva',35,'n'),(45,45,45,45,45,29313667,'Rua Alzemira Marques da Silva',35,'n'),(46,49,49,49,49,29313667,'Rua Alzemira Marques da Silva',35,'n'),(47,53,53,53,53,29313667,'Rua Alzemira Marques da Silva',35,'n'),(48,55,55,55,55,29315438,'Rua Maria Ribeiro da Silva',6,'Casa '),(49,56,56,56,56,29313667,'Rua Alzemira Marques da Silva',35,'n'),(50,57,57,57,57,29313667,'Rua Alzemira Marques da Silva',35,'N'),(51,58,58,58,58,29315438,'Rua Maria Ribeiro da Silva',2,'rua');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
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

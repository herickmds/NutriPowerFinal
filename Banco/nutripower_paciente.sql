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
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paciente` (
  `id_paciente` int(11) NOT NULL AUTO_INCREMENT,
  `id_endereco` int(11) DEFAULT NULL,
  `peso` double DEFAULT NULL,
  `sexo` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cpf` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `altura` double DEFAULT NULL,
  `telefone` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nome` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `email` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `atividade_fisica` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_paciente`),
  KEY `id_endereco` (`id_endereco`),
  CONSTRAINT `paciente_ibfk_1` FOREIGN KEY (`id_endereco`) REFERENCES `endereco` (`id_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (25,38,75,'M','22222222',1.74,'999999999','herick',24,'herick.mds@gmail.com','Sedentário:(pouco ou nenhum exercício diário)','/static/dist/img/img.jpg'),(31,43,90,'M','2222222222222',1.9,'111111111111111111','a',21,'h@gmail.com','Moderadamente Ativo:(exercício moderado 3 a 5 dias na semana)','/static/dist/img/CAM00955.jpg'),(32,44,80,'M','121212121212',1.74,'9999999999','teste',21,'herick.mds@gmail.com','Muito Ativo:(exercício pesado todos os dias da semana ou 2 vezes ao dia)','/static/dist/img/CAM00964.jpg'),(33,45,80,'M','121212121212',1.74,'9999999999','teste',21,'herick.mds@gmail.com','Muito Ativo:(exercício pesado todos os dias da semana ou 2 vezes ao dia)','/static/dist/img/CAM00964.jpg'),(34,47,80,'M','2222222222222',1.74,'9999999999','t',22,'herick.mds@gmail.com','Moderadamente Ativo:(exercício moderado 3 a 5 dias na semana)','/static/dist/img/112082-entenda-os-riscos-de-fazer-dieta-e-exercicios-sem-acompanhamento-profissional-e1505317415980.jpg'),(35,49,90,'M','2222222222222',1.9,'9999999999','carlos',22,'herick.mds@gmail.com','Moderadamente Ativo:(exercício moderado 3 a 5 dias na semana)','/static/dist/img/15285013949642035050020.jpg'),(36,50,54,'F','11111',1.59,'35118530','Ana maria',52,'Anamaria@gmail.com','Levemente Ativo:(exercício leve 1 a 3 dias na semana)','/static/dist/img/20180417_133938.jpg');
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-28 17:55:42

-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: db_pokemon
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `armazena`
--

DROP TABLE IF EXISTS `armazena`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `armazena` (
  `id_pokebola` int(11) NOT NULL,
  `id_pokemon` int(11) NOT NULL,
  `data_captura` datetime DEFAULT NULL,
  PRIMARY KEY (`id_pokebola`),
  KEY `id_pokemon` (`id_pokemon`),
  CONSTRAINT `armazena_ibfk_1` FOREIGN KEY (`id_pokebola`) REFERENCES `pokebola` (`id`),
  CONSTRAINT `armazena_ibfk_2` FOREIGN KEY (`id_pokemon`) REFERENCES `pokemon` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `armazena`
--

LOCK TABLES `armazena` WRITE;
/*!40000 ALTER TABLE `armazena` DISABLE KEYS */;
/*!40000 ALTER TABLE `armazena` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ataque`
--

DROP TABLE IF EXISTS `ataque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ataque` (
  `id` int(11) NOT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `ccuracy` int(11) NOT NULL,
  `dano` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ataque`
--

LOCK TABLES `ataque` WRITE;
/*!40000 ALTER TABLE `ataque` DISABLE KEYS */;
/*!40000 ALTER TABLE `ataque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `box`
--

DROP TABLE IF EXISTS `box`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `box` (
  `id_box` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_ambiente` varchar(50) NOT NULL,
  `num_suportado` int(11) NOT NULL,
  `id_prof` int(11) NOT NULL,
  `id_treinador` int(11) NOT NULL,
  PRIMARY KEY (`id_box`),
  KEY `id_prof` (`id_prof`),
  KEY `id_treinador` (`id_treinador`),
  CONSTRAINT `box_ibfk_1` FOREIGN KEY (`id_prof`) REFERENCES `professorcarvalho` (`id_professor`),
  CONSTRAINT `box_ibfk_2` FOREIGN KEY (`id_treinador`) REFERENCES `treinador` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `box`
--

LOCK TABLES `box` WRITE;
/*!40000 ALTER TABLE `box` DISABLE KEYS */;
/*!40000 ALTER TABLE `box` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evolucao1`
--

DROP TABLE IF EXISTS `evolucao1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evolucao1` (
  `id_pokemon` int(11) NOT NULL,
  `peso` int(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `CP` int(11) NOT NULL,
  PRIMARY KEY (`id_pokemon`),
  CONSTRAINT `evolucao1_ibfk_1` FOREIGN KEY (`id_pokemon`) REFERENCES `pokemon` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evolucao1`
--

LOCK TABLES `evolucao1` WRITE;
/*!40000 ALTER TABLE `evolucao1` DISABLE KEYS */;
/*!40000 ALTER TABLE `evolucao1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evolucao2`
--

DROP TABLE IF EXISTS `evolucao2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evolucao2` (
  `id_pokemon` int(11) NOT NULL,
  `peso` int(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `CP` int(11) NOT NULL,
  `tipo2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_pokemon`),
  CONSTRAINT `evolucao2_ibfk_1` FOREIGN KEY (`id_pokemon`) REFERENCES `pokemon` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evolucao2`
--

LOCK TABLES `evolucao2` WRITE;
/*!40000 ALTER TABLE `evolucao2` DISABLE KEYS */;
/*!40000 ALTER TABLE `evolucao2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evolucao3`
--

DROP TABLE IF EXISTS `evolucao3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evolucao3` (
  `id_pokemon` int(11) NOT NULL,
  `peso` int(11) NOT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `CP` int(11) NOT NULL,
  `tipo2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_pokemon`),
  CONSTRAINT `evolucao3_ibfk_1` FOREIGN KEY (`id_pokemon`) REFERENCES `pokemon` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evolucao3`
--

LOCK TABLES `evolucao3` WRITE;
/*!40000 ALTER TABLE `evolucao3` DISABLE KEYS */;
/*!40000 ALTER TABLE `evolucao3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pokebola`
--

DROP TABLE IF EXISTS `pokebola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pokebola` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ocupada` tinyint(1) DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `id_box` int(11) NOT NULL,
  `id_treinador` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_treinador` (`id_treinador`),
  KEY `id_box` (`id_box`),
  CONSTRAINT `pokebola_ibfk_1` FOREIGN KEY (`id_treinador`) REFERENCES `treinador` (`id`),
  CONSTRAINT `pokebola_ibfk_2` FOREIGN KEY (`id_box`) REFERENCES `box` (`id_box`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokebola`
--

LOCK TABLES `pokebola` WRITE;
/*!40000 ALTER TABLE `pokebola` DISABLE KEYS */;
/*!40000 ALTER TABLE `pokebola` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pokemon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nivel_felicidade` int(11) NOT NULL,
  `nivel` int(11) NOT NULL,
  `hp` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon`
--

LOCK TABLES `pokemon` WRITE;
/*!40000 ALTER TABLE `pokemon` DISABLE KEYS */;
/*!40000 ALTER TABLE `pokemon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professorcarvalho`
--

DROP TABLE IF EXISTS `professorcarvalho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professorcarvalho` (
  `id_professor` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `idade` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_professor`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professorcarvalho`
--

LOCK TABLES `professorcarvalho` WRITE;
/*!40000 ALTER TABLE `professorcarvalho` DISABLE KEYS */;
INSERT INTO `professorcarvalho` VALUES (1,'Samuel Carvalho',64);
/*!40000 ALTER TABLE `professorcarvalho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tem`
--

DROP TABLE IF EXISTS `tem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tem` (
  `id_pokemon` int(11) NOT NULL,
  `id_ataque` int(11) NOT NULL,
  KEY `id_pokemon` (`id_pokemon`),
  KEY `id_ataque` (`id_ataque`),
  CONSTRAINT `tem_ibfk_1` FOREIGN KEY (`id_pokemon`) REFERENCES `pokemon` (`id`),
  CONSTRAINT `tem_ibfk_2` FOREIGN KEY (`id_ataque`) REFERENCES `ataque` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tem`
--

LOCK TABLES `tem` WRITE;
/*!40000 ALTER TABLE `tem` DISABLE KEYS */;
/*!40000 ALTER TABLE `tem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treinador`
--

DROP TABLE IF EXISTS `treinador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treinador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `idade` int(11) NOT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treinador`
--

LOCK TABLES `treinador` WRITE;
/*!40000 ALTER TABLE `treinador` DISABLE KEYS */;
/*!40000 ALTER TABLE `treinador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-27 18:16:03

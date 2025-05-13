-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: vms
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ballot`
--

DROP TABLE IF EXISTS `ballot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ballot` (
  `ballotID` int(11) NOT NULL AUTO_INCREMENT,
  `votersID` int(11) NOT NULL,
  `candidateID` int(11) NOT NULL,
  `timestamp` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`ballotID`),
  KEY `votersID` (`votersID`),
  KEY `candidateID` (`candidateID`),
  CONSTRAINT `ballot_ibfk_1` FOREIGN KEY (`votersID`) REFERENCES `voters` (`votersID`),
  CONSTRAINT `ballot_ibfk_2` FOREIGN KEY (`candidateID`) REFERENCES `candidate` (`candidateID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ballot`
--

LOCK TABLES `ballot` WRITE;
/*!40000 ALTER TABLE `ballot` DISABLE KEYS */;
INSERT INTO `ballot` VALUES (4,16,8,'2025-05-12 20:59:25');
/*!40000 ALTER TABLE `ballot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `candidate` (
  `candidateID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `votes` int(11) DEFAULT 0,
  PRIMARY KEY (`candidateID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES (1,'Kiko Barzaga',0),(2,'Tarah Pacardo',0),(3,'Carl Brynne',0),(4,'Michael Cabs',0),(5,'Zhey ann-chan',0),(6,'AJ Salcedo',0),(7,'Rameses Moises',0),(8,'Tarah Barzaga',1);
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `election`
--

DROP TABLE IF EXISTS `election`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `election` (
  `electionID` int(11) NOT NULL AUTO_INCREMENT,
  `baranggay` varchar(255) NOT NULL,
  PRIMARY KEY (`electionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `election`
--

LOCK TABLES `election` WRITE;
/*!40000 ALTER TABLE `election` DISABLE KEYS */;
/*!40000 ALTER TABLE `election` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voters`
--

DROP TABLE IF EXISTS `voters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `voters` (
  `votersID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `has_voted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`votersID`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voters`
--

LOCK TABLES `voters` WRITE;
/*!40000 ALTER TABLE `voters` DISABLE KEYS */;
INSERT INTO `voters` VALUES (1,'Admin','240be518fabd2724ddb6f04eeb1da5967448d7e831c08c8fa822809f74c720a9','admin@vms.com','111111111111',0),(16,'kiko barzaga','d0cc4101c015609d3e6e9bff2cfcf643ec4b05330949c658472516e2220afae1','kiko@gmail.com','123456789102',1);
/*!40000 ALTER TABLE `voters` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-13 10:30:43

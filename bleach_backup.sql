-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: database-3.c86vlzibcknu.us-east-1.rds.amazonaws.com    Database: bleach
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `Affiliation_Zanpakuto`
--

DROP TABLE IF EXISTS `Affiliation_Zanpakuto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Affiliation_Zanpakuto` (
  `id_affiliation` int DEFAULT NULL,
  `id_zanpakuto` int DEFAULT NULL,
  KEY `id_affiliation` (`id_affiliation`),
  KEY `id_zanpakuto` (`id_zanpakuto`),
  CONSTRAINT `Affiliation_Zanpakuto_ibfk_1` FOREIGN KEY (`id_affiliation`) REFERENCES `Affiliations` (`id_affiliations`),
  CONSTRAINT `Affiliation_Zanpakuto_ibfk_2` FOREIGN KEY (`id_zanpakuto`) REFERENCES `Zanpakuto` (`id_zanpakuto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Affiliation_Zanpakuto`
--

LOCK TABLES `Affiliation_Zanpakuto` WRITE;
/*!40000 ALTER TABLE `Affiliation_Zanpakuto` DISABLE KEYS */;
INSERT INTO `Affiliation_Zanpakuto` VALUES (4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(7,8),(9,9),(9,10),(9,11),(9,12),(9,13),(9,14),(4,15);
/*!40000 ALTER TABLE `Affiliation_Zanpakuto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Affiliations`
--

DROP TABLE IF EXISTS `Affiliations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Affiliations` (
  `id_affiliations` int NOT NULL AUTO_INCREMENT,
  `nom_affilition` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_affiliations`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Affiliations`
--

LOCK TABLES `Affiliations` WRITE;
/*!40000 ALTER TABLE `Affiliations` DISABLE KEYS */;
INSERT INTO `Affiliations` VALUES (1,'Soul Society'),(2,'Karakura Town'),(3,'Espada'),(4,'Gotei 13'),(5,'Hueco Mundo'),(6,'Fullbringers'),(7,'Vizards'),(8,'WandenReich'),(9,'Division 0'),(10,'Fracción');
/*!40000 ALTER TABLE `Affiliations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Personnage_Affiliations`
--

DROP TABLE IF EXISTS `Personnage_Affiliations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Personnage_Affiliations` (
  `id_personnage` int DEFAULT NULL,
  `id_affiliation` int DEFAULT NULL,
  `rang` varchar(20) DEFAULT NULL,
  KEY `id_personnage` (`id_personnage`),
  KEY `id_affiliation` (`id_affiliation`),
  CONSTRAINT `Personnage_Affiliations_ibfk_1` FOREIGN KEY (`id_personnage`) REFERENCES `Personnages` (`id_personnage`),
  CONSTRAINT `Personnage_Affiliations_ibfk_2` FOREIGN KEY (`id_affiliation`) REFERENCES `Affiliations` (`id_affiliations`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Personnage_Affiliations`
--

LOCK TABLES `Personnage_Affiliations` WRITE;
/*!40000 ALTER TABLE `Personnage_Affiliations` DISABLE KEYS */;
INSERT INTO `Personnage_Affiliations` VALUES (1,1,'Membre'),(1,4,'Shinigami Remplaçant'),(1,2,'Résident'),(1,7,'Membre'),(2,2,'Résident'),(3,8,'Sternritter A'),(3,2,'Résident'),(4,1,'Membre'),(4,4,'Lieutenant'),(5,3,'Espada 4'),(5,5,'Membre'),(6,3,'Espada 6'),(6,5,'Membre'),(7,3,'Espada 3'),(7,5,'Membre'),(8,5,'Membre'),(9,5,'Membre'),(10,5,'Membre'),(11,1,'Membre'),(11,4,'Lieutenant'),(12,1,'Membre'),(12,4,'Capitaine'),(13,1,'Ex-Membre'),(13,4,'Ex-Capitaine'),(14,1,'Membre'),(14,4,'Capitaine'),(15,1,'Membre'),(15,4,'Lieutenant'),(16,1,'Ex-Membre'),(16,4,'Ex-Capitaine'),(16,7,'Leader'),(17,3,'Espada 3'),(17,5,'Membre'),(18,3,'Fracción'),(18,5,'Membre'),(18,10,'Membre'),(19,2,'Résident'),(19,6,'Membre'),(20,2,'Résident'),(20,6,'Membre'),(21,2,'Résident'),(21,6,'Membre'),(22,1,'Membre'),(22,9,'Garde Royale'),(23,1,'Membre'),(23,9,'Garde Royale'),(24,1,'Membre'),(24,9,'Garde Royale'),(25,8,'Sternritter B'),(26,8,'Sternritter P'),(27,8,'Sternritter Y'),(28,8,'Sternritter F'),(29,1,'Membre'),(29,9,'Garde Royale'),(30,1,'Membre'),(30,4,'Membre'),(31,1,'Membre'),(31,9,'Garde Royale'),(32,8,'Sternritter E'),(33,8,'Emperor'),(34,8,'Sternritter H'),(35,2,'Résident'),(36,2,'Résident'),(36,6,'Membre'),(37,1,'Ex-Membre'),(37,4,'Ex-Capitaine'),(37,9,'Ex-Garde Royale'),(38,1,'Membre'),(38,4,'Capitaine'),(39,2,'Résident'),(40,3,'Espada 5'),(40,5,'Membre');
/*!40000 ALTER TABLE `Personnage_Affiliations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Personnage_Zanpakuto`
--

DROP TABLE IF EXISTS `Personnage_Zanpakuto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Personnage_Zanpakuto` (
  `id_personnage` int DEFAULT NULL,
  `id_zanpakuto` int DEFAULT NULL,
  KEY `id_personnage` (`id_personnage`),
  KEY `id_zanpakuto` (`id_zanpakuto`),
  CONSTRAINT `Personnage_Zanpakuto_ibfk_1` FOREIGN KEY (`id_personnage`) REFERENCES `Personnages` (`id_personnage`),
  CONSTRAINT `Personnage_Zanpakuto_ibfk_2` FOREIGN KEY (`id_zanpakuto`) REFERENCES `Zanpakuto` (`id_zanpakuto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Personnage_Zanpakuto`
--

LOCK TABLES `Personnage_Zanpakuto` WRITE;
/*!40000 ALTER TABLE `Personnage_Zanpakuto` DISABLE KEYS */;
INSERT INTO `Personnage_Zanpakuto` VALUES (4,1),(11,2),(12,3),(1,4),(13,5),(14,6),(15,7),(16,8),(22,9),(31,14),(38,15),(23,10),(30,13),(37,10);
/*!40000 ALTER TABLE `Personnage_Zanpakuto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Personnages`
--

DROP TABLE IF EXISTS `Personnages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Personnages` (
  `id_personnage` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) DEFAULT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `id_race` int DEFAULT NULL,
  PRIMARY KEY (`id_personnage`),
  KEY `id_race` (`id_race`),
  CONSTRAINT `Personnages_ibfk_1` FOREIGN KEY (`id_race`) REFERENCES `Race` (`id_race`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Personnages`
--

LOCK TABLES `Personnages` WRITE;
/*!40000 ALTER TABLE `Personnages` DISABLE KEYS */;
INSERT INTO `Personnages` VALUES (1,'Kurosaki','Ichigo',10),(2,'Inoue','Orihime',2),(3,'Ishida','Uryuu',3),(4,'Kushiki','Rukia',1),(5,'Ulquiorra','Shieffer',5),(6,'Jaggerjack','Grimmjow',5),(7,'Tu Odershwank','Neliel',5),(8,'Inoue','Sora',4),(9,'D','Fishbone',4),(10,'','Shrieker',4),(11,'Matusmoto','Rangiku',1),(12,'Genryûsai Shignkuni','Yamamoto',1),(13,'Sosuke','Aizen',1),(14,'Kenpachi','Zaraki',1),(15,'Sarukagi','Hiyori',1),(16,'Shinji','Hirako',1),(17,'Tier','Hallibel',5),(18,'Apacci','Emilou',5),(19,'Dokugamine','Riruka',2),(20,'Ginjô','Kûgo',2),(21,'Tsukishima','Shûkurô',2),(22,'Shutara','Senjumaru',1),(23,'Hikifune','Kirio',1),(24,'Kirinji','Tenjiro',1),(25,'Jugram','Hashwalch',3),(26,'Meninas','McAllon',3),(27,'Litotto','Lamperd',3),(28,'As','Nodt',3),(29,'Nimaiya','Oetsu',1),(30,'Shihoin','Yushiro Sakimune',1),(31,'Hyosube','Ichibei',1),(32,'Bambietta','Basterbine',3),(33,'','Yhwach',3),(34,'Bazzard','Black',3),(35,'Asano','Keigo',2),(36,'Sado','Yasutora',2),(37,'Shihoin','Yoruichi',1),(38,'Kyôraku','Shunsui',1),(39,'','kon',8),(40,'Nnoitra','Gilga',5);
/*!40000 ALTER TABLE `Personnages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Race`
--

DROP TABLE IF EXISTS `Race`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Race` (
  `id_race` int NOT NULL AUTO_INCREMENT,
  `race` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id_race`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Race`
--

LOCK TABLES `Race` WRITE;
/*!40000 ALTER TABLE `Race` DISABLE KEYS */;
INSERT INTO `Race` VALUES (1,'Soul Reaper'),(2,'Humain'),(3,'Quincy'),(4,'Hollow'),(5,'Arrancar'),(6,'Bount'),(8,'Soul'),(10,'Hybrid');
/*!40000 ALTER TABLE `Race` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Zanpakuto`
--

DROP TABLE IF EXISTS `Zanpakuto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Zanpakuto` (
  `id_zanpakuto` int NOT NULL,
  `nom` varchar(25) DEFAULT NULL,
  `stade` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_zanpakuto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Zanpakuto`
--

LOCK TABLES `Zanpakuto` WRITE;
/*!40000 ALTER TABLE `Zanpakuto` DISABLE KEYS */;
INSERT INTO `Zanpakuto` VALUES (1,'Sode no Shirayuki','Bankai'),(2,'Haineko','Shikai'),(3,'Ryujin Jakka','Bankai'),(4,'Zangetsu','T_Bankai'),(5,'Kyoka Suigetsu','Bankai'),(6,'Nozarashi','Shikai'),(7,'Kubikiri Orochi','Shikai'),(8,'Sakanade no Sekai','Bankai'),(9,'Shigarami','Bankai'),(10,'Unknown','Bankai'),(11,'Kinpika','Bankai'),(12,'Sayafushi','Bankai'),(13,'Unknown','Base'),(14,'Ichimonji','Bankai'),(15,'Katen Kyokotsu','Bankai');
/*!40000 ALTER TABLE `Zanpakuto` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-21 19:39:42

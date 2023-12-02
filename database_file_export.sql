-- MySQL dump 10.13  Distrib 5.7.42, for Linux (x86_64)
--
-- Host: peerappdb.mysql.database.azure.com    Database: demo
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `eval_groups`
--

DROP TABLE IF EXISTS `eval_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eval_groups` (
  `group_id` varchar(255) COLLATE utf8mb4_0900_as_cs NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_0900_as_cs NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eval_groups`
--

LOCK TABLES `eval_groups` WRITE;
/*!40000 ALTER TABLE `eval_groups` DISABLE KEYS */;
INSERT INTO `eval_groups` VALUES ('admin','admin'),('Team 1','Peer Eval App'),('Team 2A','Literature Database'),('Team 2B','Literature Database'),('Team 2C','Literatrue Database'),('Team 3','OwlExpress Mobile Web'),('Team 5A','IT Course Profile'),('Team 5B','IT Course Profile'),('Team 6','Traffic Pattern Analysis'),('Team 7','Bioengineering Database'),('Team 8','ChatGPT');
/*!40000 ALTER TABLE `eval_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evaluations`
--

DROP TABLE IF EXISTS `evaluations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `evaluations` (
  `rand` int NOT NULL,
  `evaluatee_name` varchar(45) COLLATE utf8mb4_0900_as_cs DEFAULT NULL,
  `evaluatee_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs DEFAULT NULL,
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs DEFAULT NULL,
  `group_id` varchar(45) COLLATE utf8mb4_0900_as_cs DEFAULT NULL,
  `Contribution` int DEFAULT NULL,
  `Communication` int DEFAULT NULL,
  `Motivation` int DEFAULT NULL,
  `Teamwork` int DEFAULT NULL,
  `General` int DEFAULT NULL,
  `Comment` varchar(60) COLLATE utf8mb4_0900_as_cs DEFAULT NULL,
  PRIMARY KEY (`rand`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluations`
--

LOCK TABLES `evaluations` WRITE;
/*!40000 ALTER TABLE `evaluations` DISABLE KEYS */;
INSERT INTO `evaluations` VALUES (1,'Felton Strickland','fstrick2','tgibbs28','Team 1',5,5,5,5,5,NULL),(2,'','fstrick2','srobe216','Team 1',NULL,NULL,NULL,NULL,NULL,NULL),(3,'','fstrick2','ktiller5','Team 1',NULL,NULL,NULL,NULL,NULL,NULL),(4,'','fstrick2','jrobe394','Team 1',NULL,NULL,NULL,NULL,NULL,NULL),(5,'Justin Roberts','jrobe394','fstrick2','Team 1',5,5,5,5,3,'This is a demo.'),(6,'','jrobe394','ktiller5','Team 1',NULL,NULL,NULL,NULL,NULL,NULL),(7,'','jrobe394','srobe216','Team 1',NULL,NULL,NULL,NULL,NULL,NULL),(8,'','jrobe394','tgibbs27','Team 1',NULL,NULL,NULL,NULL,NULL,NULL),(9,'Kaylee Tillery','ktiller5','jrobe394','Team 1',NULL,NULL,NULL,NULL,NULL,NULL),(10,'','ktiller5','fstrick2','Team 1',NULL,NULL,NULL,NULL,NULL,NULL),(11,'','ktiller5','tgibbs27','Team 1',NULL,NULL,NULL,NULL,NULL,NULL),(12,'','ktiller5','srobe216','Team 1',NULL,NULL,NULL,NULL,NULL,NULL),(13,'Shannon Roberts','srobe216','ktiller5','Team 1',NULL,NULL,NULL,NULL,NULL,NULL),(14,'','srobe216','jrobe394','Team 1',NULL,NULL,NULL,NULL,NULL,NULL),(15,'','srobe216','fstrick2','Team 1',NULL,NULL,NULL,NULL,NULL,NULL),(16,'','srobe216','tgibbs27','Team 1',NULL,NULL,NULL,NULL,NULL,NULL),(17,'Tamiera Gibbs','tgibbs27','fstrick2','Team 1',NULL,NULL,NULL,NULL,NULL,NULL),(18,'','tgibbs27','ktiller5','Team 1',NULL,NULL,NULL,NULL,NULL,NULL),(19,'','tgibbs27','jrobe394','Team 1',NULL,NULL,NULL,NULL,NULL,NULL),(20,'','tgibbs27','fstrick2','Team 1',NULL,NULL,NULL,NULL,NULL,NULL),(21,'X','aelekwa','tbrow200','Team 2A',NULL,NULL,NULL,NULL,NULL,NULL),(22,'','aelekwa','jcosby10','Team 2A',NULL,NULL,NULL,NULL,NULL,NULL),(23,'','aelekwa','dpiment1','Team 2A',NULL,NULL,NULL,NULL,NULL,NULL),(24,'','aelekwa','bdelane4','Team 2A',NULL,NULL,NULL,NULL,NULL,NULL),(25,'Brandon Delaney','bdelane4','tbrow200','Team 2A',NULL,NULL,NULL,NULL,NULL,NULL),(26,'','bdelane4','jcosby10','Team 2A',NULL,NULL,NULL,NULL,NULL,NULL),(27,'','bdelane4','dpiment1','Team 2A',NULL,NULL,NULL,NULL,NULL,NULL),(28,'','bdelane4','aelekwa','Team 2A',NULL,NULL,NULL,NULL,NULL,NULL),(29,'Daniel Pimentel','dpiment1','bdelane4','Team 2A',NULL,NULL,NULL,NULL,NULL,NULL),(30,'','dpiment1','aelekwa','Team 2A',NULL,NULL,NULL,NULL,NULL,NULL),(31,'','dpiment1','tbrow200','Team 2A',NULL,NULL,NULL,NULL,NULL,NULL),(32,'','dpiment1','jcosby10','Team 2A',NULL,NULL,NULL,NULL,NULL,NULL),(33,'Julie Cochrane','jcosby10','dpiment1','Team 2A',NULL,NULL,NULL,NULL,NULL,NULL),(34,'','jcosby10','bdelane4','Team 2A',NULL,NULL,NULL,NULL,NULL,NULL),(35,'','jcosby10','aelekwa','Team 2A',NULL,NULL,NULL,NULL,NULL,NULL),(36,'','jcosby10','tbrow200','Team 2A',NULL,NULL,NULL,NULL,NULL,NULL),(37,'Troy Brown','tbrow200','jcosby10','Team 2A',NULL,NULL,NULL,NULL,NULL,NULL),(38,'','tbrow200','dpiment1','Team 2A',NULL,NULL,NULL,NULL,NULL,NULL),(39,'','tbrow200','bdelane4','Team 2A',NULL,NULL,NULL,NULL,NULL,NULL),(40,'','tbrow200','aelekwa','Team 2A',NULL,NULL,NULL,NULL,NULL,NULL),(41,'Holden Zenker','hzenker','pmampane','Team 2B',NULL,NULL,NULL,NULL,NULL,NULL),(42,'','hzenker','zhildebr','Team 2B',NULL,NULL,NULL,NULL,NULL,NULL),(43,'','hzenker','vmetuge','Team 2B',NULL,NULL,NULL,NULL,NULL,NULL),(44,'','hzenker','ubobbitt','Team 2B',NULL,NULL,NULL,NULL,NULL,NULL),(45,'Polokego Mampane','pmampane','zhildebr','Team 2B',NULL,NULL,NULL,NULL,NULL,NULL),(46,'','pmampane','vmetuge','Team 2B',NULL,NULL,NULL,NULL,NULL,NULL),(47,'','pmampane','ubobbitt','Team 2B',NULL,NULL,NULL,NULL,NULL,NULL),(48,'','pmampane','hzenker','Team 2B',NULL,NULL,NULL,NULL,NULL,NULL),(49,'X','ubobbitt','zhildebr','Team 2B',NULL,NULL,NULL,NULL,NULL,NULL),(50,'','ubobbitt','vmetuge','Team 2B',NULL,NULL,NULL,NULL,NULL,NULL),(51,'','ubobbitt','hzenker','Team 2B',NULL,NULL,NULL,NULL,NULL,NULL),(52,'','ubobbitt','pmampane','Team 2B',NULL,NULL,NULL,NULL,NULL,NULL),(53,'Victoire Metuge','vmetuge','zhildebr','Team 2B',NULL,NULL,NULL,NULL,NULL,NULL),(54,'','vmetuge','ubobbitt','Team 2B',NULL,NULL,NULL,NULL,NULL,NULL),(55,'','vmetuge','hzenker','Team 2B',NULL,NULL,NULL,NULL,NULL,NULL),(56,'','vmetuge','pmampane','Team 2B',NULL,NULL,NULL,NULL,NULL,NULL),(57,'Zach Hilderbrand','zhildebr','vmetuge','Team 2B',NULL,NULL,NULL,NULL,NULL,NULL),(58,'','zhildebr','ubobbitt','Team 2B',NULL,NULL,NULL,NULL,NULL,NULL),(59,'','zhildebr','hzenker','Team 2B',NULL,NULL,NULL,NULL,NULL,NULL),(60,'','zhildebr','pmampane','Team 2B',NULL,NULL,NULL,NULL,NULL,NULL),(61,'Dheeraj Adapa','dadapa','dpydi','Team 2C',NULL,NULL,NULL,NULL,NULL,NULL),(62,'','dadapa','nkamanu','Team 2C',NULL,NULL,NULL,NULL,NULL,NULL),(63,'','dadapa','slawal3','Team 2C',NULL,NULL,NULL,NULL,NULL,NULL),(64,'','dadapa','holadele','Team 2C',NULL,NULL,NULL,NULL,NULL,NULL),(65,'Deviprasad Pydi','dpydi','nkamanu','Team 2C',NULL,NULL,NULL,NULL,NULL,NULL),(66,'','dpydi','slawal3','Team 2C',NULL,NULL,NULL,NULL,NULL,NULL),(67,'','dpydi','holadele','Team 2C',NULL,NULL,NULL,NULL,NULL,NULL),(68,'','dpydi','dadapa','Team 2C',NULL,NULL,NULL,NULL,NULL,NULL),(69,'Hamed Oladele','holadele','dadapa','Team 2C',NULL,NULL,NULL,NULL,NULL,NULL),(70,'','holadele','dpydi','Team 2C',NULL,NULL,NULL,NULL,NULL,NULL),(71,'','holadele','nkamanu','Team 2C',NULL,NULL,NULL,NULL,NULL,NULL),(72,'','holadele','slawal3','Team 2C',NULL,NULL,NULL,NULL,NULL,NULL),(73,'Nkemdirim Kamanu','nkamanu','slawal3','Team 2C',NULL,NULL,NULL,NULL,NULL,NULL),(74,'','nkamanu','holadele','Team 2C',NULL,NULL,NULL,NULL,NULL,NULL),(75,'','nkamanu','dadapa','Team 2C',NULL,NULL,NULL,NULL,NULL,NULL),(76,'','nkamanu','dpydi','Team 2C',NULL,NULL,NULL,NULL,NULL,NULL),(77,'Sarat Lawal','slawal3','nkamanu','Team 2C',NULL,NULL,NULL,NULL,NULL,NULL),(78,'','slawal3','holadele','Team 2C',NULL,NULL,NULL,NULL,NULL,NULL),(79,'','slawal3','dadapa','Team 2C',NULL,NULL,NULL,NULL,NULL,NULL),(80,'','slawal3','dpydi','Team 2C',NULL,NULL,NULL,NULL,NULL,NULL),(81,'Anusha Bhimana','abhimana','tcox39','Team 3',NULL,NULL,NULL,NULL,NULL,NULL),(82,'','abhimana','svempati','Team 3',NULL,NULL,NULL,NULL,NULL,NULL),(83,'','abhimana','rchiluku','Team 3',NULL,NULL,NULL,NULL,NULL,NULL),(84,'','abhimana','nkyathag','Team 3',NULL,NULL,NULL,NULL,NULL,NULL),(85,'Nayanashree Kyathag','nkyathag','tcox39','Team 3',NULL,NULL,NULL,NULL,NULL,NULL),(86,'','nkyathag','svempati','Team 3',NULL,NULL,NULL,NULL,NULL,NULL),(87,'','nkyathag','rchiluku','Team 3',NULL,NULL,NULL,NULL,NULL,NULL),(88,'','nkyathag','abhimana','Team 3',NULL,NULL,NULL,NULL,NULL,NULL),(89,'Ramya Chilikuri','rchiluku','nkyathag','Team 3',NULL,NULL,NULL,NULL,NULL,NULL),(90,'','rchiluku','abhimana','Team 3',NULL,NULL,NULL,NULL,NULL,NULL),(91,'','rchiluku','tcox39','Team 3',NULL,NULL,NULL,NULL,NULL,NULL),(92,'','rchiluku','svempati','Team 3',NULL,NULL,NULL,NULL,NULL,NULL),(93,'Sathvik Vempati','svempati','rchiluku','Team 3',NULL,NULL,NULL,NULL,NULL,NULL),(94,'','svempati','nkyathag','Team 3',NULL,NULL,NULL,NULL,NULL,NULL),(95,'','svempati','abhimana','Team 3',NULL,NULL,NULL,NULL,NULL,NULL),(96,'','svempati','tcox39','Team 3',NULL,NULL,NULL,NULL,NULL,NULL),(97,'Tyler Cox','tcox39','svempati','Team 3',NULL,NULL,NULL,NULL,NULL,NULL),(98,'','tcox39','rchiluku','Team 3',NULL,NULL,NULL,NULL,NULL,NULL),(99,'','tcox39','nkyathag','Team 3',NULL,NULL,NULL,NULL,NULL,NULL),(100,'','tcox39','abhimana','Team 3',NULL,NULL,NULL,NULL,NULL,NULL),(101,'Aravind Allenki','aallenki','spatha','Team 5A',NULL,NULL,NULL,NULL,NULL,NULL),(102,'','aallenki','ryarava','Team 5A',NULL,NULL,NULL,NULL,NULL,NULL),(103,'','aallenki','mvorugan','Team 5A',NULL,NULL,NULL,NULL,NULL,NULL),(104,'','aallenki','dvarri','Team 5A',NULL,NULL,NULL,NULL,NULL,NULL),(105,'X','dvarri','spatha','Team 5A',NULL,NULL,NULL,NULL,NULL,NULL),(106,'','dvarri','ryarava','Team 5A',NULL,NULL,NULL,NULL,NULL,NULL),(107,'','dvarri','mvorugan','Team 5A',NULL,NULL,NULL,NULL,NULL,NULL),(108,'','dvarri','aallenki','Team 5A',NULL,NULL,NULL,NULL,NULL,NULL),(109,'Manikanta Voruganti','mvorugan','dvarri','Team 5A',NULL,NULL,NULL,NULL,NULL,NULL),(110,'','mvorugan','aallenki','Team 5A',NULL,NULL,NULL,NULL,NULL,NULL),(111,'','mvorugan','spatha','Team 5A',NULL,NULL,NULL,NULL,NULL,NULL),(112,'','mvorugan','ryarava','Team 5A',NULL,NULL,NULL,NULL,NULL,NULL),(113,'Ramya Yarava','ryarava','spatha','Team 5A',NULL,NULL,NULL,NULL,NULL,NULL),(114,'','ryarava','mvorugan','Team 5A',NULL,NULL,NULL,NULL,NULL,NULL),(115,'','ryarava','dvarri','Team 5A',NULL,NULL,NULL,NULL,NULL,NULL),(116,'','ryarava','aallenki','Team 5A',NULL,NULL,NULL,NULL,NULL,NULL),(117,'Siddartha Patha','spatha','ryarava','Team 5A',NULL,NULL,NULL,NULL,NULL,NULL),(118,'','spatha','mvorugan','Team 5A',NULL,NULL,NULL,NULL,NULL,NULL),(119,'','spatha','dvarri','Team 5A',NULL,NULL,NULL,NULL,NULL,NULL),(120,'','spatha','aallenki','Team 5A',NULL,NULL,NULL,NULL,NULL,NULL),(121,'Adedamola Adeyemo','aadeyem5','lanimasa','Team 5B',NULL,NULL,NULL,NULL,NULL,NULL),(122,'','aadeyem5','cboakyed','Team 5B',NULL,NULL,NULL,NULL,NULL,NULL),(123,'','aadeyem5','athack10','Team 5B',NULL,NULL,NULL,NULL,NULL,NULL),(124,'','aadeyem5','andiay11','Team 5B',NULL,NULL,NULL,NULL,NULL,NULL),(125,'Abdoulaye Ndiaye','andiay11','lanimasa','Team 5B',NULL,NULL,NULL,NULL,NULL,NULL),(126,'','andiay11','cboakyed','Team 5B',NULL,NULL,NULL,NULL,NULL,NULL),(127,'','andiay11','athack10','Team 5B',NULL,NULL,NULL,NULL,NULL,NULL),(128,'','andiay11','aadeyem5','Team 5B',NULL,NULL,NULL,NULL,NULL,NULL),(129,'Alex Thacker','athack10','aadeyem5','Team 5B',NULL,NULL,NULL,NULL,NULL,NULL),(130,'','athack10','andiay11','Team 5B',NULL,NULL,NULL,NULL,NULL,NULL),(131,'','athack10','lanimasa','Team 5B',NULL,NULL,NULL,NULL,NULL,NULL),(132,'','athack10','cboakyed','Team 5B',NULL,NULL,NULL,NULL,NULL,NULL),(133,'Cedric Boakye','cboakyed','lanimasa','Team 5B',NULL,NULL,NULL,NULL,NULL,NULL),(134,'','cboakyed','athack10','Team 5B',NULL,NULL,NULL,NULL,NULL,NULL),(135,'','cboakyed','aadeyem5','Team 5B',NULL,NULL,NULL,NULL,NULL,NULL),(136,'','cboakyed','andiay11','Team 5B',NULL,NULL,NULL,NULL,NULL,NULL),(137,'Lydia Anim','lanimasa','cboakyed','Team 5B',NULL,NULL,NULL,NULL,NULL,NULL),(138,'','lanimasa','athack10','Team 5B',NULL,NULL,NULL,NULL,NULL,NULL),(139,'','lanimasa','aadeyem5','Team 5B',NULL,NULL,NULL,NULL,NULL,NULL),(140,'','lanimasa','andiay11','Team 5B',NULL,NULL,NULL,NULL,NULL,NULL),(141,'Christian Taylor','ctayl199','sdundoo','Team 6',NULL,NULL,NULL,NULL,NULL,NULL),(142,'','ctayl199','nnemmika','Team 6',NULL,NULL,NULL,NULL,NULL,NULL),(143,'','ctayl199','jpate140','Team 6',NULL,NULL,NULL,NULL,NULL,NULL),(144,'','ctayl199','dsharma8','Team 6',NULL,NULL,NULL,NULL,NULL,NULL),(145,'Desh Sharma','dsharma8','ctayl199','Team 6',NULL,NULL,NULL,NULL,NULL,NULL),(146,'','dsharma8','sdundoo','Team 6',NULL,NULL,NULL,NULL,NULL,NULL),(147,'','dsharma8','nnemmika','Team 6',NULL,NULL,NULL,NULL,NULL,NULL),(148,'','dsharma8','jpate140','Team 6',NULL,NULL,NULL,NULL,NULL,NULL),(149,'Janki Patel','jpate140','dsharma8','Team 6',NULL,NULL,NULL,NULL,NULL,NULL),(150,'','jpate140','ctayl199','Team 6',NULL,NULL,NULL,NULL,NULL,NULL),(151,'','jpate140','sdundoo','Team 6',NULL,NULL,NULL,NULL,NULL,NULL),(152,'','jpate140','nnemmika','Team 6',NULL,NULL,NULL,NULL,NULL,NULL),(153,'Nikhil Sai','nnemmika','sdundoo','Team 6',NULL,NULL,NULL,NULL,NULL,NULL),(154,'','nnemmika','jpate140','Team 6',NULL,NULL,NULL,NULL,NULL,NULL),(155,'','nnemmika','dsharma8','Team 6',NULL,NULL,NULL,NULL,NULL,NULL),(156,'','nnemmika','ctayl199','Team 6',NULL,NULL,NULL,NULL,NULL,NULL),(157,'Surya Harshith','sdundoo','nnemmika','Team 6',NULL,NULL,NULL,NULL,NULL,NULL),(158,'','sdundoo','jpate140','Team 6',NULL,NULL,NULL,NULL,NULL,NULL),(159,'','sdundoo','dsharma8','Team 6',NULL,NULL,NULL,NULL,NULL,NULL),(160,'','sdundoo','ctayl199','Team 6',NULL,NULL,NULL,NULL,NULL,NULL),(161,'Ashley Gaie','agaie','mdenni34','Team 8',NULL,NULL,NULL,NULL,NULL,NULL),(162,'','agaie','jhopki45','Team 8',NULL,NULL,NULL,NULL,NULL,NULL),(163,'','agaie','bdurden4','Team 8',NULL,NULL,NULL,NULL,NULL,NULL),(164,'Bradley Durden','bdurden4','agaie','Team 8',NULL,NULL,NULL,NULL,NULL,NULL),(165,'','bdurden4','mdenni34','Team 8',NULL,NULL,NULL,NULL,NULL,NULL),(166,'','bdurden4','jhopki45','Team 8',NULL,NULL,NULL,NULL,NULL,NULL),(167,'Julia Hopkins','jhopki45','mdenni34','Team 8',NULL,NULL,NULL,NULL,NULL,NULL),(168,'','jhopki45','bdurden4','Team 8',NULL,NULL,NULL,NULL,NULL,NULL),(169,'','jhopki45','agaie','Team 8',NULL,NULL,NULL,NULL,NULL,NULL),(170,'X','mdenni34','jhopki45','Team 8',NULL,NULL,NULL,NULL,NULL,NULL),(171,'','mdenni35','bdurden4','Team 8',NULL,NULL,NULL,NULL,NULL,NULL),(172,'','mdenni36','agaie','Team 8',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `evaluations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score_reports`
--

DROP TABLE IF EXISTS `score_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `score_reports` (
  `fname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs DEFAULT NULL,
  `lname` varchar(40) COLLATE utf8mb4_0900_as_cs DEFAULT NULL,
  `user_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs NOT NULL,
  `group_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs DEFAULT NULL,
  `raw_score` int DEFAULT NULL,
  `total_score` int DEFAULT NULL,
  `penalized_score` int DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score_reports`
--

LOCK TABLES `score_reports` WRITE;
/*!40000 ALTER TABLE `score_reports` DISABLE KEYS */;
INSERT INTO `score_reports` VALUES ('Adedamola','Adeyemo','aadeyem5','Team 5B',NULL,NULL,NULL),('Aravind','Allenki','aallenki','Team 5A',NULL,NULL,NULL),('Anusha Rani','Bhimana','abhimana','Team 3',NULL,NULL,NULL),('Alex','Elekwa','aelekwa','Team 2A',NULL,NULL,NULL),('Ashley','Gaie','agaie','Team 8',NULL,NULL,NULL),('Abdoulaye','Ndiaye','andiay11','Team 5B',NULL,NULL,NULL),('Alex','Thacker','athack10','Team 5B',NULL,NULL,NULL),('Brandon','Delaney','bdelane4','Team 2A',NULL,NULL,NULL),('Bradley','Durden','bdurden4','Team 8',NULL,NULL,NULL),('Cedric','Boakye-Danquah','cboakyed','Team 5B',NULL,NULL,NULL),('Christian','Taylor','ctayl199','Team 6',NULL,NULL,NULL),('Dheeraj Pavan','Adapa','dadapa','Team 2C',NULL,NULL,NULL),('Daniel','Pimentel-stein','dpiment1','Team 2A',NULL,NULL,NULL),('Deviprasad','Pydi','dpydi','Team 2C',NULL,NULL,NULL),('Desh','Sharma','dsharma8','Team 6',NULL,NULL,NULL),('Dimple Preethi','Varri','dvarri','Team 5A',NULL,NULL,NULL),('Felton','Strickland','fstrick2','Team 1',25,20,15),('Hamed','Oladele','holadele','Team 2C',NULL,NULL,NULL),('Holden','Zenker','hzenker','Team 2B',NULL,NULL,NULL),('Julie','Cochrane','jcosby10','Team 2A',NULL,NULL,NULL),('Julia','Hopkins','jhopki45','Team 8',NULL,NULL,NULL),('Janki','Patel','jpate140','Team 6',NULL,NULL,NULL),('Justin','Roberts','jrobe394','Team 1',23,18,13),('Kaylee','Tillery','ktiller5','Team 1',NULL,NULL,NULL),('Lydia','Anim Asante','lanimasa','Team 5B',NULL,NULL,NULL),('Marcus','Dennis','mdenni34','Team 8',NULL,NULL,NULL),('Manikanta','Voruganti','mvorugan','Team 5A',NULL,NULL,NULL),('NkemdirimKamanu','','nkamanu','Team 2C',NULL,NULL,NULL),('Nayanashree','Kyathaganahalli Srirangaiah','nkyathag','Team 3',NULL,NULL,NULL),('Nikhil Sai','Nemmikanti','nnemmika','Team 6',NULL,NULL,NULL),('Polokego','Mampane','pmampane','Team 2B',NULL,NULL,NULL),('Ramya','Chilukuri','rchiluku','Team 3',NULL,NULL,NULL),('Ramya Sree','Yarava','ryarava','Team 5A',NULL,NULL,NULL),('Surya Harshith','Dundoo','sdundoo','Team 6',NULL,NULL,NULL),('Sarat','Lawal','slawal3','Team 2C',NULL,NULL,NULL),('Siddartha','Patha','spatha','Team 5A',NULL,NULL,NULL),('Shannon','Roberts','srobe216','Team 1',NULL,NULL,NULL),('Sathvik','Vempati','svempati','Team 3',NULL,NULL,NULL),('Troy','Brown','tbrow200','Team 2A',NULL,NULL,NULL),('Tyler','Cox','tcox39','Team 3',NULL,NULL,NULL),('Tamiera','Gibbs','tgibbs27','Team 1',NULL,NULL,NULL),('Ursula','Bobbitt','ubobbitt','Team 2B',NULL,NULL,NULL),('Victoire','Metuge','vmetuge','Team 2B',NULL,NULL,NULL),('Zach','Hilderbrand','zhildebr','Team 2B',NULL,NULL,NULL);
/*!40000 ALTER TABLE `score_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group_mapping`
--

DROP TABLE IF EXISTS `user_group_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_group_mapping` (
  `user_id` varchar(20) COLLATE utf8mb4_0900_as_cs NOT NULL,
  `group_id` varchar(255) COLLATE utf8mb4_0900_as_cs NOT NULL,
  `password` varchar(8) COLLATE utf8mb4_0900_as_cs NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`),
  KEY `group_id` (`group_id`),
  CONSTRAINT `user_group_mapping_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `user_group_mapping_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `eval_groups` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group_mapping`
--

LOCK TABLES `user_group_mapping` WRITE;
/*!40000 ALTER TABLE `user_group_mapping` DISABLE KEYS */;
INSERT INTO `user_group_mapping` VALUES ('aadeyem5','Team 5B','123456'),('aallenki','Team 5A',''),('abhimana','Team 3',''),('admin','admin','admin'),('aelekwa','Team 2A',''),('agaie','Team 8',''),('andiay11','Team 5B',''),('athack10','Team 5B',''),('bdelane4','Team 2A',''),('bdurden4','Team 8',''),('cboakyed','Team 5B',''),('ctayl199','Team 6',''),('dadapa','Team 2C',''),('dpiment1','Team 2A',''),('dpydi','Team 2C',''),('dsharma8','Team 6',''),('dvarri','Team 5A',''),('fstrick2','Team 1','123456'),('holadele','Team 2C',''),('hzenker','Team 2B',''),('jcosby10','Team 2A',''),('jhopki45','Team 8',''),('jpate140','Team 6',''),('jrobe394','Team 1','123456'),('ktiller5','Team 1','123456'),('lanimasa','Team 5B',''),('mdenni34','Team 8',''),('mvorugan','Team 5A',''),('nkamanu','Team 2C',''),('nkyathag','Team 3',''),('nnemmika','Team 6',''),('pmampane','Team 2B',''),('rchiluku','Team 3',''),('ryarava','Team 5A',''),('sdundoo','Team 6',''),('slawal3','Team 2C',''),('spatha','Team 5A',''),('srobe216','Team 1','123456'),('svempati','Team 3',''),('tbrow200','Team 2A',''),('tcox39','Team 3',''),('tgibbs27','Team 1','123456'),('ubobbitt','Team 2B',''),('vmetuge','Team 2B',''),('zhildebr','Team 2B','');
/*!40000 ALTER TABLE `user_group_mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` varchar(20) COLLATE utf8mb4_0900_as_cs NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_0900_as_cs NOT NULL,
  `lname` varchar(255) COLLATE utf8mb4_0900_as_cs NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_as_cs;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('aadeyem5','Adedamola','Adeyemo'),('aallenki','Aravind','Allenki'),('abhimana','Anusha Rani','Bhimana'),('admin','admin','admin'),('aelekwa','Alex','Elekwa'),('agaie','Ashley','Gaie'),('andiay11','Abdoulaye','Ndiaye'),('athack10','Alex','Thacker'),('bdelane4','Brandon','Delaney'),('bdurden4','Bradley','Durden'),('cboakyed','Cedric','Boakye-Danquah'),('ctayl199','Christian','Taylor'),('dadapa','Dheeraj Pavan','Adapa'),('dpiment1','Daniel','Pimentel-stein'),('dpydi','Deviprasad','Pydi'),('dsharma8','Desh','Sharma'),('dvarri','Dimple Preethi','Varri'),('fstrick2','Felton','Strickland'),('holadele','Hamed','Oladele'),('hzenker','Holden','Zenker'),('jcosby10','Julie','Cochrane'),('jhopki45','Julia','Hopkins'),('jpate140','Janki','Patel'),('jrobe394','Justin','Roberts'),('ktiller5','Kaylee','Tillery'),('lanimasa','Lydia','Anim Asante'),('mdenni34','Marcus','Dennis'),('mvorugan','Manikanta','Voruganti'),('nkamanu','Nkemdirim','Kamanu'),('nkyathag','Nayanashree','Kyathaganahalli Srirangaiah'),('nnemmika','Nikhil Sai','Nemmikanti'),('pmampane','Polokego','Mampane'),('rchiluku','Ramya','Chilukuri'),('ryarava','Ramya Sree','Yarava'),('sdundoo','Surya Harshith','Dundoo'),('slawal3','Sarat','Lawal'),('spatha','Siddartha','Patha'),('srobe216','Shannon','Roberts'),('svempati','Sathvik','Vempati'),('tbrow200','Troy','Brown'),('tcox39','Tyler','Cox'),('tgibbs27','Tamiera','Gibbs'),('ubobbitt','Ursula','Bobbitt'),('vmetuge','Victoire','Metuge'),('zhildebr','Zach','Hilderbrand');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-02 20:34:42

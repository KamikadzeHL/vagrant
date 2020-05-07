-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: usersdb
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `id` int(11) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `created` date DEFAULT NULL,
  `updated` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'Stepanova Valentina ','Stepanova.V@mycompan','nIa3NZF7ab','General manager','1990-01-01','2020-01-01'),(2,'Tkachenko Victor Pav','Tkachenko.V@mycompan','5EAjdIXtHB','Executive Director','1990-01-01','2020-02-10'),(3,'Bondarenko Oleg Petr','Bondarenko.O@mycompa','YASpDfm41o','CFO','1990-01-01','2010-10-10'),(4,'Ivashkina Galina Vas','Ivashkina.G@mycompan','wsmQZVNzI4','Commercial Director','1990-01-01','2009-05-04'),(5,'Zaitov Amit Geldemur','Zaitov.A@mycompany.c','InA713w5ek','HR Director','1990-01-01','2011-01-02'),(6,'Karya Grigory Vasili','Karya.G@mycompany.co','vHH4oAxhzb','Marketing director','1990-01-01','1999-05-08'),(7,'Storm Lidia Ivanovna','Storm.L@mycompany.co','13ArexgdF0','Director of quality','1990-01-01','2020-04-20'),(8,'Galinskaya Tamara Se','Galinskaya.T@mycompa','qUI7lDUdZY','Retail Operations Di','1990-01-01','1990-02-02'),(9,'Oleneva Lyudmila Vas','Oleneva.L@mycompany.','tUREvJwhNw','Branch Manager','1990-01-01','2000-08-15'),(10,'Smirnova Marina Vasi','Smirnova.M@mycompany','pF0xMbUwnP','Technical Director','1990-01-01','2020-02-02'),(11,'Garbar Irina Leonido','Garbar.I@mycompany.c','tKDAVwORg4','Investor Relations D','1990-01-01','2000-01-01'),(12,'Kovalenko Natalya Ya','Kovalenko.N@mycompan','eDAGwONyPN','HR Manager','1990-01-01','2000-11-20'),(13,'Voskresenskaya Anna ','Voskresenskaya.A@myc','lwFFlf8MDk','Advertising Manager','1990-01-01','2000-09-18'),(14,'Chernaya Adel Vladis','Chernaya.A@mycompany','f3LD0MBzDo','Manager','1990-01-01','1990-10-20'),(15,'Plyashko Alexander I','Plyashko.A@mycompany','JWUXqXk4Vn','Cleaner','1990-01-01','2020-04-20');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-26 21:06:12

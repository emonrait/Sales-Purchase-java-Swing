CREATE DATABASE  IF NOT EXISTS `myshop` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `myshop`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: myshop
-- ------------------------------------------------------
-- Server version	5.7.15-log

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `pid` int(11) NOT NULL,
  `pname` varchar(45) DEFAULT NULL,
  `brand` varchar(45) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (101,'milk','pran',58,100),(102,'sugar','akij',27,60),(103,'salt','molla',92,35),(104,'rice','mijan',65,55),(105,'oil','rupcada',30,105);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `pname` varchar(45) NOT NULL,
  `brand` varchar(45) NOT NULL,
  `uprice` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` double NOT NULL,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,101,'milk','pran',100,2,200,'Sale'),(2,101,'milk','pran',100,10,1000,'Purchase'),(3,101,'milk','pran',100,25,2500,'Purchase'),(4,101,'milk','pran',100,25,2500,'Sale'),(5,103,'salt','molla',35,20,700,'Purchase'),(6,103,'salt','molla',35,20,700,'Sale'),(7,102,'sugar','akij',60,3,180,'Sale'),(8,104,'rice','mijan',55,5,275,'Purchase'),(9,101,'milk','pran',100,2,200,'Sale'),(10,101,'milk','pran',100,2,200,'Purchase'),(11,104,'rice','mijan',55,5,275,'Sale'),(12,103,'salt','molla',35,2,70,'Purchase'),(13,101,'milk','pran',100,2,200,'Sale'),(14,101,'milk','pran',100,2,200,'Purchase');
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-04 16:51:28

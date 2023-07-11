CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `purchase_invoice_goods`
--

DROP TABLE IF EXISTS `purchase_invoice_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_invoice_goods` (
  `ID_PS` int NOT NULL AUTO_INCREMENT,
  `Purchase_Invoice_ID` int NOT NULL,
  `Goods_ID` int NOT NULL,
  `Kol_P` decimal(15,3) NOT NULL,
  `PCena` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`ID_PS`,`Purchase_Invoice_ID`,`Goods_ID`),
  UNIQUE KEY `ID_PS_UNIQUE` (`ID_PS`),
  KEY `fk_Purchase_Invoice_Goods_Purchase_Invoice1_idx` (`Purchase_Invoice_ID`),
  KEY `fk_Purchase_Invoice_Goods_Goods1_idx` (`Goods_ID`),
  CONSTRAINT `fk_Purchase_Invoice_Goods_Goods1` FOREIGN KEY (`Goods_ID`) REFERENCES `goods` (`ID_G`),
  CONSTRAINT `fk_Purchase_Invoice_Goods_Purchase_Invoice1` FOREIGN KEY (`Purchase_Invoice_ID`) REFERENCES `purchase_invoice` (`ID_PI`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_invoice_goods`
--

LOCK TABLES `purchase_invoice_goods` WRITE;
/*!40000 ALTER TABLE `purchase_invoice_goods` DISABLE KEYS */;
INSERT INTO `purchase_invoice_goods` VALUES (7,3,9,5.000,100.00),(8,3,1,27.000,40.00),(9,3,10,10.000,20.00),(11,10,2,30.000,92.25),(13,10,4,1000.000,10.00),(14,10,5,350.000,45.00),(15,10,6,80.000,80.00),(16,11,3,10000.000,1.00),(20,11,7,14.000,23.00);
/*!40000 ALTER TABLE `purchase_invoice_goods` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-11  8:41:56

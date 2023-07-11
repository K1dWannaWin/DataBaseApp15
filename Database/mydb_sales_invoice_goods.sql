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
-- Table structure for table `sales_invoice_goods`
--

DROP TABLE IF EXISTS `sales_invoice_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_invoice_goods` (
  `ID_PS` int NOT NULL AUTO_INCREMENT,
  `Sales_Invoice_ID` int NOT NULL,
  `Goods_ID` int NOT NULL,
  `Kol_P` decimal(15,3) NOT NULL,
  PRIMARY KEY (`ID_PS`,`Sales_Invoice_ID`,`Goods_ID`),
  UNIQUE KEY `ID_PS_UNIQUE` (`ID_PS`),
  KEY `fk_Sales_Invoce_Goods_Sales_Invoice1_idx` (`Sales_Invoice_ID`),
  KEY `fk_Sales_Invoce_Goods_Goods1_idx` (`Goods_ID`),
  CONSTRAINT `fk_Sales_Invoce_Goods_Goods1` FOREIGN KEY (`Goods_ID`) REFERENCES `goods` (`ID_G`),
  CONSTRAINT `fk_Sales_Invoce_Goods_Sales_Invoice1` FOREIGN KEY (`Sales_Invoice_ID`) REFERENCES `sales_invoice` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_invoice_goods`
--

LOCK TABLES `sales_invoice_goods` WRITE;
/*!40000 ALTER TABLE `sales_invoice_goods` DISABLE KEYS */;
INSERT INTO `sales_invoice_goods` VALUES (9,1,1,15.000),(10,1,2,30.000),(11,1,3,70.000),(19,4,5,1500.000),(20,4,4,248.000),(21,4,9,1200.000),(22,5,6,1234.000),(23,5,10,7893.000),(24,5,7,111.000);
/*!40000 ALTER TABLE `sales_invoice_goods` ENABLE KEYS */;
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

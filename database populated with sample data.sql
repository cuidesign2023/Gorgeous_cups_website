-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: tafesunnies
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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

--
-- Table structure for table `adminusers`
--

DROP TABLE IF EXISTS `adminusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminusers` (
  `AdminusersID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Role` varchar(45) NOT NULL,
  PRIMARY KEY (`AdminusersID`),
  UNIQUE KEY `AdminusersID_UNIQUE` (`AdminusersID`),
  UNIQUE KEY `Username_UNIQUE` (`Username`),
  UNIQUE KEY `Password_UNIQUE` (`Password`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminusers`
--

LOCK TABLES `adminusers` WRITE;
/*!40000 ALTER TABLE `adminusers` DISABLE KEYS */;
INSERT INTO `adminusers` VALUES (1,'Admin1','password1','manager'),(2,'Admin2','password2','user'),(3,'Admin3','password3','user');
/*!40000 ALTER TABLE `adminusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `CategoryID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(45) NOT NULL,
  `Description` text NOT NULL,
  PRIMARY KEY (`CategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Classic','Classic design for everyday use. Timeless style sunglasses.'),(2,'Aviator','Cool design, one of the best sell style.'),(3,'Sporty','Sporty sunglasses, fit for outdoor activities.');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CustomerName` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`),
  UNIQUE KEY `CustomerID_UNIQUE` (`CustomerID`),
  UNIQUE KEY `Email_UNIQUE` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'John Simth','john_simth@gmail.com','4123657230'),(2,'Helen Davis','helen_davis@gmail.com','1136742345'),(3,'James Browns','james.browns@outlook.com','2334657723'),(4,'Jessica Jackson','jessica_2015@yahoo.com','9887658742'),(5,'Daniel Johnson','johnson369@gmail.com','9308202345');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `ImageID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ProductID` int(10) unsigned NOT NULL,
  `Imagepath` varchar(45) NOT NULL,
  PRIMARY KEY (`ImageID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` VALUES (1,1,'C:\\Desktop\\Images_AT2\\1.jpg'),(2,2,'C:\\Desktop\\Images_AT2\\2.jpg'),(3,3,'C:\\Desktop\\Images_AT2\\3.jpg'),(4,4,'C:\\Desktop\\Images_AT2\\4.jpg'),(5,5,'C:\\Desktop\\Images_AT2\\5.jpg');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `OrderdetailsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `OrderID` int(10) unsigned NOT NULL,
  `ProductID` int(10) unsigned NOT NULL,
  `Quantity` int(10) unsigned NOT NULL,
  PRIMARY KEY (`OrderdetailsID`),
  UNIQUE KEY `OrderdetailsID_UNIQUE` (`OrderdetailsID`),
  KEY `fk_Orderdetails_Orders1_idx` (`OrderID`),
  CONSTRAINT `fk_Orderdetails_Orders1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` VALUES (1,1,1,2),(2,2,1,3),(3,3,3,1),(4,4,5,2),(5,5,4,1),(6,6,3,2),(7,7,5,3);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CustomerID` int(10) unsigned NOT NULL,
  `OrderDate` date NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `fk_Orders_Customers1_idx` (`CustomerID`),
  CONSTRAINT `fk_Orders_Customers1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2023-09-01'),(2,2,'2023-09-02'),(3,5,'2023-09-02'),(4,1,'2023-09-03'),(5,3,'2023-09-04'),(6,2,'2023-09-03'),(7,4,'2023-09-04');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProductID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(45) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Description` text DEFAULT NULL,
  `CategoryID` int(10) unsigned NOT NULL,
  `Colour` varchar(45) NOT NULL,
  `Active/Inactive` tinyint(4) NOT NULL,
  `ImageID` int(10) unsigned NOT NULL,
  `Adminusers_AdminusersID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ProductID`),
  UNIQUE KEY `ProductID_UNIQUE` (`ProductID`),
  KEY `fk_Products_Images_idx` (`ImageID`),
  KEY `fk_Products_Category1_idx` (`CategoryID`),
  KEY `fk_Products_Adminusers1_idx` (`Adminusers_AdminusersID`),
  CONSTRAINT `fk_Products_Adminusers1` FOREIGN KEY (`Adminusers_AdminusersID`) REFERENCES `adminusers` (`AdminusersID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Products_Category1` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Products_Images` FOREIGN KEY (`ImageID`) REFERENCES `images` (`ImageID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Classic sunglasses',99.99,'Timeless design, best for everyday use.',1,'Black',1,1,2),(2,'Rounded-classic sunglasses',129.99,'Rounded-classic sunglasses, fashion design.',1,'Red',1,2,2),(3,'Aviator sunglasses',159.99,'Cool design, one of the best sell sunglasses.',2,'Silver',0,3,1),(4,'Outdoor activity sunglasses',199.99,'Fit for outdoor activity use.',3,'Yellow',1,3,2),(5,'Wayfarer sunglasses',69.99,'Classic wayfarer design, most popular style.',1,'Blue',1,5,2);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_has_shoppingcart`
--

DROP TABLE IF EXISTS `products_has_shoppingcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_has_shoppingcart` (
  `Products_ProductID` int(10) unsigned NOT NULL,
  `Shoppingcart_ShoppingcartID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Products_ProductID`,`Shoppingcart_ShoppingcartID`),
  KEY `fk_Products_has_Shoppingcart_Products1_idx` (`Products_ProductID`),
  KEY `fk_Products_has_Shoppingcart_Shoppingcart1_idx` (`Shoppingcart_ShoppingcartID`),
  CONSTRAINT `fk_Products_has_Shoppingcart_Products1` FOREIGN KEY (`Products_ProductID`) REFERENCES `products` (`ProductID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Products_has_Shoppingcart_Shoppingcart1` FOREIGN KEY (`Shoppingcart_ShoppingcartID`) REFERENCES `shoppingcart` (`ShoppingcartID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_has_shoppingcart`
--

LOCK TABLES `products_has_shoppingcart` WRITE;
/*!40000 ALTER TABLE `products_has_shoppingcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_has_shoppingcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesrecords`
--

DROP TABLE IF EXISTS `salesrecords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salesrecords` (
  `SalesrecordsID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `OrderdetailsID` int(10) unsigned NOT NULL,
  `SaleDate` date NOT NULL,
  `SaleAmount` decimal(10,2) NOT NULL,
  `Orders_OrderID` int(10) unsigned NOT NULL,
  `Products_ProductID` int(10) unsigned NOT NULL,
  `Customers_CustomerID` int(10) unsigned NOT NULL,
  `Adminusers_AdminusersID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`SalesrecordsID`,`Customers_CustomerID`),
  UNIQUE KEY `SalesrecordsID_UNIQUE` (`SalesrecordsID`),
  KEY `fk_Salesrecords_Orders1_idx` (`Orders_OrderID`),
  KEY `fk_Salesrecords_Products1_idx` (`Products_ProductID`),
  KEY `fk_Salesrecords_Customers1_idx` (`Customers_CustomerID`),
  KEY `fk_Salesrecords_Adminusers1_idx` (`Adminusers_AdminusersID`),
  CONSTRAINT `fk_Salesrecords_Adminusers1` FOREIGN KEY (`Adminusers_AdminusersID`) REFERENCES `adminusers` (`AdminusersID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Salesrecords_Customers1` FOREIGN KEY (`Customers_CustomerID`) REFERENCES `customers` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Salesrecords_Orders1` FOREIGN KEY (`Orders_OrderID`) REFERENCES `orders` (`OrderID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Salesrecords_Products1` FOREIGN KEY (`Products_ProductID`) REFERENCES `products` (`ProductID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesrecords`
--

LOCK TABLES `salesrecords` WRITE;
/*!40000 ALTER TABLE `salesrecords` DISABLE KEYS */;
INSERT INTO `salesrecords` VALUES (1,1,'2023-09-01',199.98,1,1,1,1),(2,2,'2023-09-02',299.97,2,1,2,1),(3,3,'2023-09-02',159.99,3,3,5,1),(4,4,'2023-09-03',139.98,4,5,1,1),(5,5,'2023-09-04',199.99,5,4,3,1),(6,6,'2023-09-03',319.98,6,3,2,1),(7,7,'2023-09-04',209.97,7,5,4,1);
/*!40000 ALTER TABLE `salesrecords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingcart`
--

DROP TABLE IF EXISTS `shoppingcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shoppingcart` (
  `ShoppingcartID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CustomerID` int(10) unsigned NOT NULL,
  `ProductID` int(10) unsigned NOT NULL,
  `Quantity` int(10) unsigned NOT NULL,
  `Orders_OrderID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ShoppingcartID`),
  UNIQUE KEY `ShoppingcartID_UNIQUE` (`ShoppingcartID`),
  KEY `fk_Shoppingcart_Customers1_idx` (`CustomerID`),
  KEY `fk_Shoppingcart_Orders1_idx` (`Orders_OrderID`),
  CONSTRAINT `fk_Shoppingcart_Customers1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Shoppingcart_Orders1` FOREIGN KEY (`Orders_OrderID`) REFERENCES `orders` (`OrderID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcart`
--

LOCK TABLES `shoppingcart` WRITE;
/*!40000 ALTER TABLE `shoppingcart` DISABLE KEYS */;
INSERT INTO `shoppingcart` VALUES (1,1,1,2,1),(2,2,1,3,2),(3,5,3,1,3),(4,1,5,2,4),(5,3,4,1,5),(6,2,3,2,6),(7,4,5,3,7);
/*!40000 ALTER TABLE `shoppingcart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-16 23:12:28

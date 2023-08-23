-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: union
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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addresses` (
  `AddressID` int DEFAULT NULL,
  `CustomerID` int DEFAULT NULL,
  `StreetAddress` text,
  `City` text,
  `State` text,
  `PostalCode` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,1,'00421 Sean Isle','Stevenmouth','Nebraska',35014),(2,2,'8379 Burton Stravenue','New Sarah','South Carolina',57387),(3,3,'4921 Paul Prairie','Fisherfort','Wisconsin',28931),(4,4,'6731 Nixon Rapid','Beasleytown','New Jersey',29334),(5,5,'67832 Vicki Burgs','Reeseside','Oklahoma',74739),(6,6,'198 Robert Wells Apt. 137','North Stephenmouth','Missouri',72813),(7,7,'21254 Williams Square','Bishopview','Texas',58067),(8,8,'419 Brown Lake','North Lindaburgh','Colorado',1094),(9,9,'7669 Julia Junction Apt. 802','Lake Kimberlymouth','Minnesota',57575),(10,10,'17344 Justin Lodge Apt. 366','Reneeside','Iowa',39292);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` int DEFAULT NULL,
  `Name` text,
  `Email` text,
  `ContactNumber` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Justin Hogan','sparkstina@example.org','001-972-568-5689x59761'),(2,'Robert Jones','amartin@example.net','001-865-362-9939x792'),(3,'Jeffrey Shannon','connor14@example.net','+1-244-549-9605x1833'),(4,'Andre Harrison','rojasfrancis@example.com','373-688-6759'),(5,'Taylor Mitchell','marcus38@example.com','001-760-366-3009'),(6,'Leslie Robinson','psparks@example.org','913.553.9818'),(7,'Katie Bray','kellie09@example.net','401-363-4397'),(8,'Steven Hammond','jwilliams@example.net','-5973'),(9,'Dillon Steele','zkirby@example.net','855.893.5918x260'),(10,'Yvonne Gray','aaronhenry@example.com','+1-485-426-0096x65129');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `OrderDetailID` double DEFAULT NULL,
  `OrderID` double DEFAULT NULL,
  `ProductID` double DEFAULT NULL,
  `VariantID` double DEFAULT NULL,
  `Quantity` double DEFAULT NULL,
  `UnitPrice` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,3,6,4,2,59.984387949754336),(2,5,8,10,3,55.86257321896408),(3,9,7,8,5,31.631062112002034),(4,8,4,2,5,65.59102888873957),(5,6,10,10,4,41.21824654026665),(6,2,2,9,3,58.23933330807637),(7,10,9,2,5,95.01669807057934),(8,3,7,2,3,14.226147619318587),(9,8,3,4,4,92.69447442712577),(10,6,5,3,3,39.54605207062173),(11,2,7,7,3,70.62687549989789),(12,10,5,9,2,71.02303400940048),(13,7,8,8,3,10.449930327616379),(14,4,9,6,4,21.30292525714529),(15,3,7,9,2,45.19868515725762),(16,5,6,5,1,72.49174486504452),(17,9,10,10,1,72.0472664798811),(18,5,5,2,5,81.84707577800295),(19,3,10,4,2,73.56555048174903),(20,3,9,10,2,19.030395684175218);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int DEFAULT NULL,
  `CustomerID` int DEFAULT NULL,
  `OrderDate` text,
  `ShippingAddressID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,7,'2022-09-28',2),(2,4,'2021-10-27',6),(3,3,'2023-05-10',10),(4,7,'2023-07-29',4),(5,5,'2022-08-03',5),(6,6,'2022-12-31',2),(7,8,'2023-06-24',10),(8,7,'2022-04-15',9),(9,3,'2022-04-18',2),(10,6,'2022-02-11',8);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS `prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prices` (
  `PriceID` int DEFAULT NULL,
  `ProductID` int DEFAULT NULL,
  `VariantID` int DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `StartDate` text,
  `EndDate` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prices`
--

LOCK TABLES `prices` WRITE;
/*!40000 ALTER TABLE `prices` DISABLE KEYS */;
INSERT INTO `prices` VALUES (1,10,7,30.18801825,'2022-02-10','2022-02-13'),(2,7,8,51.14352149,'2021-12-04','2021-12-07'),(3,7,7,97.58265023,'2022-08-09','2022-08-13'),(4,2,5,24.60006836,'2022-01-24','2022-02-01'),(5,7,9,67.49779207,'2021-12-07','2022-01-03'),(6,1,10,11.73524156,'2021-09-22','2021-10-04'),(7,9,10,80.03887034,'2021-11-15','2021-11-24'),(8,7,10,58.42163113,'2022-03-02','2022-03-06'),(9,9,8,80.47642568,'2022-03-14','2022-03-28'),(10,3,7,44.6284967,'2022-10-12','2022-10-19');
/*!40000 ALTER TABLE `prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProductID` int DEFAULT NULL,
  `Name` text,
  `Description` text,
  `Category` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'myself','Ever important perform fast community.','ten'),(2,'try','Order research record late concern.','down'),(3,'drive','Minute suffer plan win other civil rest.','while'),(4,'wife','Operation also account civil wind century site.','TV'),(5,'benefit','These source hear despite like join hope.','through'),(6,'simple','Again possible win.','best'),(7,'big','Forward painting huge.','site'),(8,'what','Difference model drug sing station but short.','TRUE'),(9,'night','Food support American wear.','admit'),(10,'program','Still key exist agent way in.','poor');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `variants`
--

DROP TABLE IF EXISTS `variants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `variants` (
  `VariantID` int DEFAULT NULL,
  `ProductID` int DEFAULT NULL,
  `Color` text,
  `Size` text,
  `Weight` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `variants`
--

LOCK TABLES `variants` WRITE;
/*!40000 ALTER TABLE `variants` DISABLE KEYS */;
INSERT INTO `variants` VALUES (1,1,'SandyBrown','Large',3.3342158461922624),(2,2,'MediumOrchid','Medium',0.6205274771647977),(3,3,'OldLace','Small',2.2392589500608393),(4,4,'AntiqueWhite','Small',1.0111357128690366),(5,5,'PapayaWhip','Large',3.3194818471760197),(6,6,'OrangeRed','Medium',4.324001089647026),(7,7,'LightCoral','Large',0.2840906662196764),(8,8,'WhiteSmoke','Large',5.634457109610255),(9,9,'White','Large',3.957565846691708),(10,10,'LightCyan','Medium',4.042187436352805);
/*!40000 ALTER TABLE `variants` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-23 12:33:48

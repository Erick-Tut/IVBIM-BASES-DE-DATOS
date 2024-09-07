-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: libreria_bressani
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `COD_CLIENTES` int NOT NULL,
  `NOMBRE` varchar(80) DEFAULT NULL,
  `APELLIDO` varchar(80) DEFAULT NULL,
  `DIRECCIÓN` varchar(120) DEFAULT NULL,
  `NIT` int DEFAULT NULL,
  `TELEFONO` int DEFAULT NULL,
  PRIMARY KEY (`COD_CLIENTES`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Ana','López','3ª Calle 6-45, Barrio La Esperanza',6789013,32145678),(2,'Juan','Pérez','2ª Avenida 8-12, Zona 2',8901235,59230451),(3,'María','Ramírez','4ª Calle 9-78, Barrio San Francisco',3291635,47329012),(4,'Jorge','Morales','1ª Avenida 5-67, Zona 1',1384746,58942673),(5,'Isabel','Fernández','6ª Calle 7-89, Barrio La Cumbre',2492057,31579804),(6,'Roberto','Castillo','8ª Avenida 2-34, Zona 3',7259080,72481930),(7,'Fernando','Guzmán','10ª Avenida 1-23, Zona 5',7945202,56129348),(8,'Ricardo','Méndez','7ª Calle 5-67, Barrio Los Pinos',9167424,34126790),(9,'Oscar','Herrera','7ª Calle 9-78, Barrio El Rosario',7715202,69248175),(10,'Teresa','Jiménez','4ª Avenida 1-23, Zona 10',6934191,87432165),(11,'Emilio','López','2ª Avenida 6-45, Barrio La Reforma',1467814,25437629),(12,'Francisco','Rivera','5ª Calle 3-89, Zona 4',2681925,38479621),(13,'Alejandro','Martínez','8ª Avenida 9-12, Zona 7',3892636,46782314),(14,'Gabriela','Morales','3ª Calle 7-56, Barrio El Progreso',4903547,27934852),(15,'Mariana','Ortega','6ª Avenida 2-34, Zona 3',5318058,39875410);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `COD_PRODUCTOS` int NOT NULL,
  `NOMBRE_PRODUCTO` varchar(45) DEFAULT NULL,
  `MARCA` varchar(45) DEFAULT NULL,
  `COLOR` varchar(45) DEFAULT NULL,
  `STOCK` int DEFAULT NULL,
  `PRECIO` int DEFAULT NULL,
  PRIMARY KEY (`COD_PRODUCTOS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (101,'CUADERNO DE LINEA','MATEL','ROJO',40,15),(102,'CUADERNO CUADRICULA','MATEL','AZUL',40,20),(103,'CUADERNO UNIVERSAL','MATEL','AZUL MARINO',50,40),(104,'PORTAMINAS','PILOT','NEGRO',24,13),(105,'MINAS 0.7 2B','FABER CASTELL','VERDE',40,5),(106,'MINAS 0.5 2B','FABER CASTELL','VERDE',40,5),(107,'RAPIDOGRAFO','CASTILLO','GRIS',40,10),(108,'LAPICERO NEGRO','CASTILLO','GRIS',30,5),(109,'LAPICERO AZUL','CASTILLO','GRIS',30,5),(110,'LAPICERO ROJO','CASTILLO','GRIS',30,5);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `COD_PROVEEDORES` int NOT NULL,
  `NOMBRE` varchar(45) DEFAULT NULL,
  `APELLIDO` varchar(45) DEFAULT NULL,
  `EMPRESA` varchar(45) DEFAULT NULL,
  `TELEFONO` int DEFAULT NULL,
  PRIMARY KEY (`COD_PROVEEDORES`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Andrea','Ramirez','FaberCastell',57214823),(2,'Luis','Fernandez','Bic',45592376),(3,'Javier','Hernandéz','Pilot',45614782),(4,'Rafael','López','Bic',67572371),(5,'Clara','Ruiz','FaberCastell',33984234),(6,'Lucía','Martinez','Matel',54385476),(7,'Sergio','Delgado','Sharpie',42359742),(8,'Alejandro','Muñoz','Crayola',79842387),(9,'Pablo','Hernandéz','Uniball',23875237),(10,'Marta','Gonzáles','Pentel',58932398);
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-07 15:44:56

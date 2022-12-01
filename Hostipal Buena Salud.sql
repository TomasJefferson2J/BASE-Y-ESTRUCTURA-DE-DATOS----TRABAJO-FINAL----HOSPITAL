-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: buena_salud
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dept` (
  `Dept_No` int NOT NULL,
  `DNombre` varchar(50) DEFAULT NULL,
  `Loc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Dept_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept`
--

LOCK TABLES `dept` WRITE;
/*!40000 ALTER TABLE `dept` DISABLE KEYS */;
INSERT INTO `dept` VALUES (10,'Anatomía','Ohio'),(20,'BioquímicaN','SanMartin'),(30,'Embriología','Barcelona'),(40,'Fisiología','Salas'),(50,'Histología','Peru'),(60,'Microbiología','Lima'),(70,'Cirugía','Lomas'),(80,'Pediatría','Arica'),(90,'Psiquiatría','Avelino'),(100,'Emergencias','Lazaro'),(110,'Ginecologia','Huanuco');
/*!40000 ALTER TABLE `dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emp`
--

DROP TABLE IF EXISTS `emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp` (
  `Emp_No` int NOT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `Oficio` varchar(50) DEFAULT NULL,
  `Dir` int DEFAULT NULL,
  `Fecha_Alt` datetime DEFAULT NULL,
  `Salario` decimal(9,2) DEFAULT NULL,
  `Comision` decimal(9,2) DEFAULT NULL,
  `Dept_No` int DEFAULT NULL,
  PRIMARY KEY (`Emp_No`),
  KEY `FK_Emp` (`Dept_No`),
  CONSTRAINT `FK_Emp` FOREIGN KEY (`Dept_No`) REFERENCES `dept` (`Dept_No`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp`
--

LOCK TABLES `emp` WRITE;
/*!40000 ALTER TABLE `emp` DISABLE KEYS */;
INSERT INTO `emp` VALUES (1000,'Cervantez','Limpieza',2698,'2010-08-11 18:20:03',1950.00,0.00,30),(1111,'Ortega','Medico',1902,'2025-05-21 10:15:31',1002.00,0.00,20),(1200,'Alonso','Cocinero',3788,'2018-02-02 02:02:03',1430.00,0.00,20),(1300,'Ramon','Medico',4698,'2005-05-02 04:52:34',1235.00,0.00,30),(1400,'Guzman','Enfermera',1566,'2022-06-04 02:13:34',3904.00,0.00,20),(1500,'Castillo','Paramedico',2782,'1990-07-31 12:52:34',1690.00,0.00,10),(1600,'Moros','Camillera',3839,'1997-12-10 00:20:11',2231.00,39000.00,20),(1700,'Rodriguez','Medico',2119,'1999-07-30 20:52:34',1290.00,0.00,20),(2222,'Maria','Bionalista',2698,'2000-03-20 12:15:31',2080.00,39000.00,30),(3333,'Salas','Enfermera',489,'2017-09-10 10:30:10',1623.00,65000.00,30),(4444,'Jimenez','Camillera',5839,'1999-01-01 12:40:12',3844.00,0.00,20),(5555,'Marin','Paramedico',6698,'2005-05-15 00:01:23',2422.00,182000.00,30),(6666,'Lionel','Contador',8839,'1990-07-31 12:52:34',1234.00,0.00,30),(7777,'Rivera','Director',9839,'1990-07-31 12:52:34',3123.00,0.00,10),(8888,'Sanchez','Administrador',1566,'2010-02-04 09:10:04',3900.00,0.00,20),(9999,'Lopez','Chofer',0,'2012-01-31 02:09:34',6500.00,0.00,10);
/*!40000 ALTER TABLE `emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enfermo`
--

DROP TABLE IF EXISTS `enfermo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enfermo` (
  `Inscripcion` int NOT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `Direccion` varchar(50) DEFAULT NULL,
  `Fecha_Nac` varchar(50) DEFAULT NULL,
  `S` varchar(2) DEFAULT NULL,
  `NSS` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermo`
--

LOCK TABLES `enfermo` WRITE;
/*!40000 ALTER TABLE `enfermo` DISABLE KEYS */;
INSERT INTO `enfermo` VALUES (23412,'Lara','San Martin 20','16-may-56','M',180862422),(12312,'Fernandez','Leoncio Prado 50','21-may-60','F',384991452),(34322,'Oscar','Ramon Castillo 12','23-jun-67','F',331790059),(45435,'Dominguez','Libertador 71','01-ene-42','M',123654471),(51232,'Lopez','Amarilis 11','18-jun-40','F',380010212),(21232,'Horacio','Huanuco 38','29-feb-52','M',440294390),(55044,'Griffin','Constantinopla 2','16-sep-45','F',444969044),(12303,'Brow','Arica 103','26-dic-80','M',100973231),(12402,'Glen','Raulito 3','10-jul-80','F',243341231),(73443,'Pedro','Argentina','05-oct-57','M',123235555);
/*!40000 ALTER TABLE `enfermo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-01  0:35:59

-- MySQL dump 10.17  Distrib 10.3.17-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: escuela
-- ------------------------------------------------------
-- Server version	10.3.17-MariaDB-0+deb10u1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `DatosCabeceraAlumno`
--

DROP TABLE IF EXISTS `DatosCabeceraAlumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DatosCabeceraAlumno` (
  `numerocontrol` varchar(11) NOT NULL,
  `clavecarrera` varchar(5) NOT NULL,
  `semestre` int(2) NOT NULL,
  PRIMARY KEY (`numerocontrol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DatosCabeceraAlumno`
--

LOCK TABLES `DatosCabeceraAlumno` WRITE;
/*!40000 ALTER TABLE `DatosCabeceraAlumno` DISABLE KEYS */;
INSERT INTO `DatosCabeceraAlumno` VALUES ('16370101','18',1),('16370202','3',1);
/*!40000 ALTER TABLE `DatosCabeceraAlumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DatosGrupo`
--

DROP TABLE IF EXISTS `DatosGrupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DatosGrupo` (
  `clavegrupo` varchar(11) NOT NULL,
  `clavemateria` varchar(11) NOT NULL,
  `periodo` varchar(4) NOT NULL,
  `clavedocente` varchar(11) NOT NULL,
  `horario` varchar(50) NOT NULL,
  PRIMARY KEY (`clavegrupo`,`clavemateria`,`periodo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DatosGrupo`
--

LOCK TABLES `DatosGrupo` WRITE;
/*!40000 ALTER TABLE `DatosGrupo` DISABLE KEYS */;
/*!40000 ALTER TABLE `DatosGrupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DatosListas`
--

DROP TABLE IF EXISTS `DatosListas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DatosListas` (
  `periodo` varchar(4) NOT NULL,
  `clavemateria` varchar(11) NOT NULL,
  `clavegrupo` varchar(11) NOT NULL,
  `numerocontrol` varchar(11) NOT NULL,
  PRIMARY KEY (`periodo`,`clavemateria`,`clavegrupo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DatosListas`
--

LOCK TABLES `DatosListas` WRITE;
/*!40000 ALTER TABLE `DatosListas` DISABLE KEYS */;
/*!40000 ALTER TABLE `DatosListas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DatosMateria`
--

DROP TABLE IF EXISTS `DatosMateria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DatosMateria` (
  `clavemateria` varchar(11) NOT NULL,
  `nombremateria` varchar(50) NOT NULL,
  PRIMARY KEY (`clavemateria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DatosMateria`
--

LOCK TABLES `DatosMateria` WRITE;
/*!40000 ALTER TABLE `DatosMateria` DISABLE KEYS */;
/*!40000 ALTER TABLE `DatosMateria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DatosPersonal`
--

DROP TABLE IF EXISTS `DatosPersonal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DatosPersonal` (
  `clavedocente` varchar(11) NOT NULL,
  `apellidopaterno` varchar(50) NOT NULL,
  `apellidomaterno` varchar(50) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`clavedocente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DatosPersonal`
--

LOCK TABLES `DatosPersonal` WRITE;
/*!40000 ALTER TABLE `DatosPersonal` DISABLE KEYS */;
/*!40000 ALTER TABLE `DatosPersonal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datosalumno`
--

DROP TABLE IF EXISTS `datosalumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datosalumno` (
  `numerocontrol` varchar(11) NOT NULL,
  `apellidopaterno` varchar(50) NOT NULL,
  `apellidomaterno` varchar(50) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  PRIMARY KEY (`numerocontrol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datosalumno`
--

LOCK TABLES `datosalumno` WRITE;
/*!40000 ALTER TABLE `datosalumno` DISABLE KEYS */;
INSERT INTO `datosalumno` VALUES ('16370101','patiño','guarneros','luisdavid'),('16370202','torres','hernandez','gonzalo');
/*!40000 ALTER TABLE `datosalumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datoscarrera`
--

DROP TABLE IF EXISTS `datoscarrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datoscarrera` (
  `clavecarrera` varchar(5) NOT NULL,
  `nombrecarrera` varchar(30) NOT NULL,
  PRIMARY KEY (`clavecarrera`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datoscarrera`
--

LOCK TABLES `datoscarrera` WRITE;
/*!40000 ALTER TABLE `datoscarrera` DISABLE KEYS */;
INSERT INTO `datoscarrera` VALUES ('18','tics'),('3','civil');
/*!40000 ALTER TABLE `datoscarrera` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-07 11:14:47

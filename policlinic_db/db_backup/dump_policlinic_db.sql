CREATE DATABASE  IF NOT EXISTS `policlinic_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `policlinic_db`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: policlinic_db
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Temporary view structure for view `doctor_consultation_quantity`
--

DROP TABLE IF EXISTS `doctor_consultation_quantity`;
/*!50001 DROP VIEW IF EXISTS `doctor_consultation_quantity`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `doctor_consultation_quantity` AS SELECT 
 1 AS `doctor_id`,
 1 AS `doctor_name`,
 1 AS `total_consults`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `doctor_id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `specialty` varchar(100) NOT NULL,
  `license_number` varchar(50) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`doctor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'Andrés','Fernández','Cardiología','LIC123456','555-1122','andres.fernandez@example.com'),(2,'Laura','Martín','Pediatría','LIC789012','555-3344','laura.martin@example.com'),(3,'Miguel','Sánchez','Neurología','LIC345678','555-5566','miguel.sanchez@example.com'),(4,'Carmen','Romero','Ginecología','LIC901234','555-7788','carmen.romero@example.com'),(5,'José','Ramírez','Dermatología','LIC567890','555-9900','jose.ramirez@example.com'),(6,'Raúl','Castro','Ortopedia','LIC123789','555-2233','raul.castro@example.com'),(7,'Isabel','Ortiz','Oftalmología','LIC456901','555-4455','isabel.ortiz@example.com'),(8,'Alberto','Moreno','Psiquiatría','LIC789345','555-6677','alberto.moreno@example.com'),(9,'Clara','Jiménez','Endocrinología','LIC890123','555-8899','clara.jimenez@example.com'),(10,'Luis','Núñez','Urología','LIC234567','555-1123','luis.nunez@example.com'),(11,'Javier','López','Cardiología','LIC567123','555-2244','javier.lopez@example.com'),(12,'Verónica','Morales','Pediatría','LIC678234','555-3355','veronica.morales@example.com'),(13,'Roberto','Herrera','Neurología','LIC789345','555-4466','roberto.herrera@example.com'),(14,'Ana','Pérez','Ginecología','LIC890456','555-5577','ana.perez@example.com'),(15,'Emilio','González','Dermatología','LIC901567','555-6688','emilio.gonzalez@example.com'),(16,'Gabriela','Hidalgo','Ortopedia','LIC012678','555-7799','gabriela.hidalgo@example.com'),(17,'Martín','Luna','Oftalmología','LIC123789','555-8800','martin.luna@example.com'),(18,'Patricia','Soler','Psiquiatría','LIC234890','555-9911','patricia.soler@example.com'),(19,'Esteban','Muñoz','Endocrinología','LIC345901','555-1124','esteban.munoz@example.com'),(20,'Victoria','Vargas','Urología','LIC456012','555-2235','victoria.vargas@example.com'),(21,'Mario','Navarro','Cardiología','LIC567234','555-3346','mario.navarro@example.com'),(22,'Claudia','Ríos','Pediatría','LIC678345','555-4457','claudia.rios@example.com'),(23,'Fernando','Molina','Neurología','LIC789456','555-5568','fernando.molina@example.com'),(24,'Elena','Cruz','Ginecología','LIC890567','555-6679','elena.cruz@example.com'),(25,'Carlos','Santos','Dermatología','LIC901678','555-7780','carlos.santos@example.com'),(26,'Nuria','Vega','Ortopedia','LIC012789','555-8891','nuria.vega@example.com'),(27,'Ricardo','Blanco','Oftalmología','LIC123890','555-9902','ricardo.blanco@example.com'),(28,'Lorena','Cano','Psiquiatría','LIC234901','555-1125','lorena.cano@example.com'),(29,'Alfredo','Campos','Endocrinología','LIC345012','555-2236','alfredo.campos@example.com'),(30,'Silvia','Mendoza','Urología','LIC456123','555-3347','silvia.mendoza@example.com');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_consults`
--

DROP TABLE IF EXISTS `medical_consults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_consults` (
  `medical_consult_id` int unsigned NOT NULL AUTO_INCREMENT,
  `medical_consult_date` date NOT NULL,
  `medical_consult_time` time NOT NULL,
  `patient_id` int unsigned NOT NULL,
  `doctor_id` int unsigned NOT NULL,
  `medical_consult_type` enum('General','Especializado') NOT NULL,
  PRIMARY KEY (`medical_consult_id`),
  KEY `FK_patient_medical_consult` (`patient_id`),
  KEY `FK_doctor_medical_consult` (`doctor_id`),
  CONSTRAINT `FK_doctor_medical_consult` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`doctor_id`),
  CONSTRAINT `FK_patient_medical_consult` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_consults`
--

LOCK TABLES `medical_consults` WRITE;
/*!40000 ALTER TABLE `medical_consults` DISABLE KEYS */;
INSERT INTO `medical_consults` VALUES (1,'2024-07-01','10:00:00',1,1,'General'),(2,'2024-07-02','11:30:00',2,2,'Especializado'),(3,'2024-07-03','14:00:00',3,2,'General'),(4,'2024-07-04','15:30:00',4,4,'Especializado'),(5,'2024-07-05','09:00:00',5,4,'General'),(6,'2024-07-06','10:45:00',6,6,'Especializado'),(7,'2024-07-07','12:15:00',7,7,'General'),(8,'2024-07-08','13:30:00',8,8,'Especializado'),(9,'2024-07-09','16:00:00',9,9,'General'),(10,'2024-07-10','17:15:00',10,10,'Especializado'),(11,'2024-07-11','08:45:00',1,1,'General'),(12,'2024-07-12','09:30:00',2,1,'Especializado'),(13,'2024-07-13','10:15:00',3,1,'General'),(14,'2024-07-14','11:00:00',4,4,'Especializado'),(15,'2024-07-15','11:45:00',5,5,'General'),(16,'2024-07-16','12:30:00',6,6,'Especializado'),(17,'2024-07-17','13:15:00',7,7,'General'),(18,'2024-07-18','14:00:00',8,8,'Especializado'),(19,'2024-07-19','14:45:00',9,9,'General'),(20,'2024-07-20','15:30:00',10,1,'Especializado'),(21,'2024-07-21','08:30:00',4,3,'General'),(22,'2024-07-22','09:15:00',5,7,'Especializado'),(23,'2024-07-23','10:00:00',6,21,'General'),(24,'2024-07-24','10:45:00',7,4,'Especializado'),(25,'2024-07-25','11:30:00',8,6,'General'),(26,'2024-07-26','12:15:00',9,1,'Especializado'),(27,'2024-07-27','13:00:00',10,9,'General'),(28,'2024-07-28','13:45:00',12,5,'Especializado'),(29,'2024-07-29','14:30:00',2,8,'General'),(30,'2024-07-30','15:15:00',23,10,'Especializado'),(31,'2024-07-31','16:00:00',14,23,'General'),(32,'2024-08-01','16:45:00',5,7,'Especializado'),(33,'2024-08-02','17:30:00',6,3,'General'),(34,'2024-08-03','08:00:00',7,8,'Especializado'),(35,'2024-08-04','08:45:00',18,16,'General'),(36,'2024-08-05','09:30:00',9,4,'Especializado'),(37,'2024-08-06','10:15:00',10,9,'General'),(38,'2024-08-07','11:00:00',1,1,'Especializado'),(39,'2024-08-08','11:45:00',2,5,'General'),(40,'2024-08-09','12:30:00',3,10,'Especializado');
/*!40000 ALTER TABLE `medical_consults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_records`
--

DROP TABLE IF EXISTS `medical_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medical_records` (
  `record_id` int unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int unsigned NOT NULL,
  `consult_date` date NOT NULL,
  `diagnosis` text NOT NULL,
  `treatment` text,
  `notes` text,
  PRIMARY KEY (`record_id`),
  KEY `FK_patient_medical_record` (`patient_id`),
  CONSTRAINT `FK_patient_medical_record` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_records`
--

LOCK TABLES `medical_records` WRITE;
/*!40000 ALTER TABLE `medical_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `medical_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_audit`
--

DROP TABLE IF EXISTS `patient_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_audit` (
  `audit_id` int unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int unsigned DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `action_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`audit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_audit`
--

LOCK TABLES `patient_audit` WRITE;
/*!40000 ALTER TABLE `patient_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `patient_consultations`
--

DROP TABLE IF EXISTS `patient_consultations`;
/*!50001 DROP VIEW IF EXISTS `patient_consultations`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `patient_consultations` AS SELECT 
 1 AS `patient_id`,
 1 AS `patient_name`,
 1 AS `consult_id`,
 1 AS `consult_date`,
 1 AS `consult_type`,
 1 AS `technician_id`,
 1 AS `technician_name`,
 1 AS `doctor_first_name`,
 1 AS `doctor_last_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `patient_payments`
--

DROP TABLE IF EXISTS `patient_payments`;
/*!50001 DROP VIEW IF EXISTS `patient_payments`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `patient_payments` AS SELECT 
 1 AS `patient_id`,
 1 AS `patient_name`,
 1 AS `total_medical_payments`,
 1 AS `total_technical_payments`,
 1 AS `Total pagado por paciente`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `patient_id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `birth_date` date NOT NULL,
  `gender` enum('M','F','O') NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`patient_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
INSERT INTO `patients` VALUES (1,'Juan','Pérez','1985-06-15','M','Calle Falsa 123','555-1234','juan.perez@example.com'),(2,'María','García','1990-09-23','F','Avenida Siempreviva 456','555-5678','maria.garcia@example.com'),(3,'Carlos','Martínez','1978-02-17','M','Carrera 7 #89-45','555-9876','carlos.martinez@example.com'),(4,'Ana','López','1982-03-29','F','Calle 8 #34-67','555-4321','ana.lopez@example.com'),(5,'Luis','Rodríguez','1975-12-05','M','Avenida Central 12','555-3456','luis.rodriguez@example.com'),(6,'Sofía','Hernández','1993-07-14','F','Carrera 15 #20-30','555-6789','sofia.hernandez@example.com'),(7,'Pedro','Gómez','1988-11-11','M','Calle 10 #50-60','555-7890','pedro.gomez@example.com'),(8,'Lucía','Díaz','1995-05-20','F','Avenida Las Palmas 90','555-2345','lucia.diaz@example.com'),(9,'José','Torres','1983-08-19','M','Carrera 3 #22-44','555-9870','jose.torres@example.com'),(10,'Elena','Ramos','1979-04-25','F','Calle 9 #76-88','555-8765','elena.ramos@example.com'),(11,'Miguel','Ruiz','1986-01-10','M','Calle 20 #15-25','555-1122','miguel.ruiz@example.com'),(12,'Laura','Mendoza','1992-12-03','F','Avenida Los Pinos 50','555-3344','laura.mendoza@example.com'),(13,'Andrés','Castro','1980-08-07','M','Carrera 45 #32-15','555-5566','andres.castro@example.com'),(14,'Paula','Vargas','1994-02-22','F','Calle 13 #26-89','555-7788','paula.vargas@example.com'),(15,'Fernando','Morales','1973-11-30','M','Avenida 5 de Mayo 89','555-9900','fernando.morales@example.com'),(16,'Isabel','Gutiérrez','1989-03-11','F','Carrera 9 #14-78','555-2233','isabel.gutierrez@example.com'),(17,'Ricardo','Sánchez','1977-10-05','M','Calle 25 #8-12','555-4455','ricardo.sanchez@example.com'),(18,'Gabriela','Jiménez','1991-06-25','F','Avenida Libertador 13','555-6677','gabriela.jimenez@example.com'),(19,'Alejandro','Pérez','1984-04-18','M','Carrera 16 #9-45','555-8899','alejandro.perez@example.com'),(20,'Daniela','Ortiz','1996-09-30','F','Calle 2 #17-64','555-0011','daniela.ortiz@example.com'),(21,'Sergio','Flores','1987-07-21','M','Avenida 7 de Agosto 76','555-2234','sergio.flores@example.com'),(22,'Mónica','Cárdenas','1981-05-13','F','Carrera 28 #4-39','555-5567','monica.cardenas@example.com'),(23,'Héctor','Rojas','1972-11-09','M','Calle 18 #12-21','555-7789','hector.rojas@example.com'),(24,'Patricia','Álvarez','1993-02-15','F','Avenida El Sol 43','555-9911','patricia.alvarez@example.com'),(25,'Roberto','Navarro','1983-03-08','M','Carrera 13 #29-16','555-0022','roberto.navarro@example.com'),(26,'Sara','Romero','1982-07-19','F','Calle 30 #15-37','555-2244','sara.romero@example.com'),(27,'Víctor','Molina','1978-10-25','M','Avenida Libertad 98','555-3355','victor.molina@example.com'),(28,'Natalia','Acosta','1990-08-11','F','Carrera 31 #8-56','555-4466','natalia.acosta@example.com'),(29,'Oscar','Reyes','1985-12-07','M','Calle 14 #23-68','555-5577','oscar.reyes@example.com'),(30,'Claudia','Vega','1979-06-22','F','Avenida Las Flores 27','555-7799','claudia.vega@example.com');
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `patient_insert_audit` AFTER INSERT ON `patients` FOR EACH ROW BEGIN
    -- Auditar inserción
    INSERT INTO PATIENT_AUDIT (patient_id, action)
    VALUES (NEW.patient_id, 'INSERT');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `patient_delete_audit` AFTER DELETE ON `patients` FOR EACH ROW BEGIN
    -- Auditar borrado
    INSERT INTO PATIENT_AUDIT (patient_id, action)
    VALUES (OLD.patient_id, 'DELETE');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `payment_id` int unsigned NOT NULL AUTO_INCREMENT,
  `payment_date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` enum('Efectivo','Credito','Debito','Seguro') NOT NULL,
  `medical_consult_id` int unsigned DEFAULT NULL,
  `technical_consult_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `FK_med_consult_payment` (`medical_consult_id`),
  KEY `FK_tech_consult_payment` (`technical_consult_id`),
  CONSTRAINT `FK_med_consult_payment` FOREIGN KEY (`medical_consult_id`) REFERENCES `medical_consults` (`medical_consult_id`),
  CONSTRAINT `FK_tech_consult_payment` FOREIGN KEY (`technical_consult_id`) REFERENCES `technical_consults` (`technical_consult_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,'2024-07-01',100.00,'Efectivo',1,NULL),(2,'2024-07-02',150.00,'Credito',2,NULL),(3,'2024-07-03',200.00,'Debito',3,NULL),(4,'2024-07-04',250.00,'Seguro',4,NULL),(5,'2024-07-05',120.00,'Efectivo',5,NULL),(6,'2024-07-06',180.00,'Credito',6,NULL),(7,'2024-07-07',220.00,'Debito',7,NULL),(8,'2024-07-08',300.00,'Seguro',8,NULL),(9,'2024-07-09',130.00,'Efectivo',9,NULL),(10,'2024-07-10',170.00,'Credito',10,NULL),(11,'2024-07-11',90.00,'Debito',NULL,1),(12,'2024-07-12',110.00,'Efectivo',NULL,2),(13,'2024-07-13',140.00,'Credito',NULL,3),(14,'2024-07-14',160.00,'Seguro',NULL,4),(15,'2024-07-15',130.00,'Debito',NULL,5),(16,'2024-07-16',115.00,'Efectivo',NULL,6),(17,'2024-07-17',145.00,'Credito',NULL,7),(18,'2024-07-18',175.00,'Seguro',NULL,8),(19,'2024-07-19',125.00,'Debito',NULL,9),(20,'2024-07-20',135.00,'Efectivo',NULL,10),(21,'2024-07-21',131.00,'Efectivo',21,NULL),(22,'2024-07-22',270.00,'Credito',22,NULL),(23,'2024-07-23',110.00,'Debito',23,NULL),(24,'2024-07-24',260.00,'Seguro',24,NULL),(25,'2024-07-25',125.00,'Efectivo',25,NULL),(26,'2024-07-26',279.00,'Credito',26,NULL),(27,'2024-07-27',131.00,'Debito',27,NULL),(28,'2024-07-28',340.00,'Seguro',28,NULL),(29,'2024-07-29',110.00,'Efectivo',29,NULL),(30,'2024-07-30',280.00,'Credito',30,NULL),(31,'2024-07-31',120.00,'Debito',31,NULL),(32,'2024-08-01',250.00,'Efectivo',32,NULL),(33,'2024-08-02',150.00,'Credito',33,NULL),(34,'2024-08-03',250.00,'Seguro',34,NULL),(35,'2024-08-04',150.00,'Debito',35,NULL),(36,'2024-08-05',250.00,'Efectivo',36,NULL),(37,'2024-08-06',150.00,'Credito',37,NULL),(38,'2024-08-07',299.00,'Seguro',38,NULL),(39,'2024-08-08',100.00,'Debito',39,NULL),(40,'2024-08-09',700.00,'Efectivo',40,NULL),(41,'2024-07-21',90.00,'Efectivo',NULL,21),(42,'2024-07-22',110.00,'Credito',NULL,22),(43,'2024-07-23',140.00,'Debito',NULL,23),(44,'2024-07-24',160.00,'Seguro',NULL,24),(45,'2024-07-25',130.00,'Efectivo',NULL,25),(46,'2024-07-26',115.00,'Credito',NULL,26),(47,'2024-07-27',145.00,'Debito',NULL,27),(48,'2024-07-28',175.00,'Seguro',NULL,28),(49,'2024-07-29',125.00,'Efectivo',NULL,29),(50,'2024-07-30',135.00,'Credito',NULL,30),(51,'2024-07-31',90.00,'Debito',NULL,31),(52,'2024-08-01',110.00,'Efectivo',NULL,32),(53,'2024-08-02',140.00,'Credito',NULL,33),(54,'2024-08-03',160.00,'Seguro',NULL,34),(55,'2024-08-04',130.00,'Debito',NULL,35),(56,'2024-08-05',115.00,'Efectivo',NULL,36),(57,'2024-08-06',145.00,'Credito',NULL,37),(58,'2024-08-07',175.00,'Seguro',NULL,38),(59,'2024-08-08',125.00,'Debito',NULL,39),(60,'2024-08-09',135.00,'Efectivo',NULL,40);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technical_consults`
--

DROP TABLE IF EXISTS `technical_consults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technical_consults` (
  `technical_consult_id` int unsigned NOT NULL AUTO_INCREMENT,
  `technical_consult_date` date NOT NULL,
  `technical_consult_time` time NOT NULL,
  `patient_id` int unsigned NOT NULL,
  `technician_id` int unsigned NOT NULL,
  `notes` text,
  PRIMARY KEY (`technical_consult_id`),
  KEY `FK_patient_technical_consult` (`patient_id`),
  KEY `FK_technician_technical_consult` (`technician_id`),
  CONSTRAINT `FK_patient_technical_consult` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`patient_id`),
  CONSTRAINT `FK_technician_technical_consult` FOREIGN KEY (`technician_id`) REFERENCES `technicians` (`technician_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technical_consults`
--

LOCK TABLES `technical_consults` WRITE;
/*!40000 ALTER TABLE `technical_consults` DISABLE KEYS */;
INSERT INTO `technical_consults` VALUES (1,'2024-07-01','10:30:00',1,1,'Radiografía de tórax realizada.'),(2,'2024-07-02','12:00:00',2,2,'Muestra de sangre recolectada.'),(3,'2024-07-03','14:30:00',3,3,'Resonancia magnética del cerebro.'),(4,'2024-07-04','16:00:00',4,4,'Ecografía abdominal realizada.'),(5,'2024-07-05','09:30:00',5,5,'Prueba de glucosa en sangre.'),(6,'2024-07-06','11:00:00',6,6,'Radioterapia aplicada.'),(7,'2024-07-07','12:30:00',7,7,'Radiografía de columna realizada.'),(8,'2024-07-08','13:45:00',10,8,'Tomografía computarizada de tórax.'),(9,'2024-07-09','16:30:00',9,9,'Ultrasonido abdominal realizado.'),(10,'2024-07-10','17:45:00',1,10,'Análisis de tejido patológico.'),(11,'2024-07-11','08:30:00',1,1,'Radiografía de muñeca realizada.'),(12,'2024-07-12','10:00:00',7,2,'Muestra de orina recolectada.'),(13,'2024-07-13','11:30:00',3,3,'Resonancia magnética de rodilla.'),(14,'2024-07-14','13:00:00',4,4,'Ecografía renal realizada.'),(15,'2024-07-15','14:30:00',7,5,'Prueba de colesterol en sangre.'),(16,'2024-07-16','15:00:00',6,6,'Radioterapia aplicada en área lumbar.'),(17,'2024-07-17','16:30:00',7,7,'Radiografía de cadera realizada.'),(18,'2024-07-18','17:00:00',8,9,'Tomografía computarizada de abdomen.'),(19,'2024-07-19','18:30:00',9,9,'Ultrasonido pélvico realizado.'),(20,'2024-07-20','19:00:00',10,10,'Análisis de muestra de tejido óseo.'),(21,'2024-07-21','09:00:00',12,20,'Radiografía de tórax realizada.'),(22,'2024-07-22','10:30:00',8,3,'Muestra de sangre recolectada.'),(23,'2024-07-23','12:00:00',27,13,'Resonancia magnética del cerebro.'),(24,'2024-07-24','13:30:00',17,5,'Ecografía abdominal realizada.'),(25,'2024-07-25','15:00:00',11,14,'Prueba de glucosa en sangre.'),(26,'2024-07-26','16:30:00',24,9,'Radioterapia aplicada.'),(27,'2024-07-27','09:30:00',23,16,'Radiografía de columna realizada.'),(28,'2024-07-28','11:00:00',28,21,'Tomografía computarizada de tórax.'),(29,'2024-07-29','12:30:00',21,10,'Ultrasonido abdominal realizado.'),(30,'2024-07-30','14:00:00',19,27,'Análisis de tejido patológico.'),(31,'2024-07-31','15:30:00',4,25,'Radiografía de muñeca realizada.'),(32,'2024-08-01','17:00:00',30,30,'Muestra de orina recolectada.'),(33,'2024-08-02','08:45:00',26,6,'Resonancia magnética de rodilla.'),(34,'2024-08-03','10:15:00',6,11,'Ecografía renal realizada.'),(35,'2024-08-04','11:45:00',29,12,'Prueba de colesterol en sangre.'),(36,'2024-08-05','13:15:00',1,1,'Radioterapia aplicada en área lumbar.'),(37,'2024-08-06','14:45:00',18,22,'Radiografía de cadera realizada.'),(38,'2024-08-07','16:15:00',5,26,'Tomografía computarizada de abdomen.'),(39,'2024-08-08','17:45:00',14,7,'Ultrasonido pélvico realizado.'),(40,'2024-08-09','19:00:00',9,4,'Análisis de muestra de tejido óseo.');
/*!40000 ALTER TABLE `technical_consults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `technician_consultation_quantity`
--

DROP TABLE IF EXISTS `technician_consultation_quantity`;
/*!50001 DROP VIEW IF EXISTS `technician_consultation_quantity`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `technician_consultation_quantity` AS SELECT 
 1 AS `technician_id`,
 1 AS `technician_name`,
 1 AS `total_consults`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `technicians`
--

DROP TABLE IF EXISTS `technicians`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `technicians` (
  `technician_id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `technician_type` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`technician_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technicians`
--

LOCK TABLES `technicians` WRITE;
/*!40000 ALTER TABLE `technicians` DISABLE KEYS */;
INSERT INTO `technicians` VALUES (1,'Ricardo','Muñoz','Técnico de Rayos X','555-3345','ricardo.munoz@example.com'),(2,'Paula','Navarro','Técnico de Laboratorio','555-5567','paula.navarro@example.com'),(3,'Javier','Ríos','Técnico de Resonancia','555-7789','javier.rios@example.com'),(4,'Silvia','Pérez','Técnico de Ecografía','555-9901','silvia.perez@example.com'),(5,'Manuel','Gutiérrez','Técnico de Laboratorio','555-2234','manuel.gutierrez@example.com'),(6,'Marta','López','Técnico de Radioterapia','555-4456','marta.lopez@example.com'),(7,'Fernando','Álvarez','Técnico de Radiología','555-6678','fernando.alvarez@example.com'),(8,'Cristina','Vargas','Técnico de Tomografía','555-8890','cristina.vargas@example.com'),(9,'Juan','Serrano','Técnico de Ultrasonido','555-9902','juan.serrano@example.com'),(10,'Raquel','Ruiz','Técnico de Patología','555-2235','raquel.ruiz@example.com'),(11,'Daniel','Mendoza','Técnico de Rayos X','555-3346','daniel.mendoza@example.com'),(12,'Verónica','Santos','Técnico de Laboratorio','555-5568','veronica.santos@example.com'),(13,'Alberto','Lara','Técnico de Resonancia','555-7780','alberto.lara@example.com'),(14,'Lucía','Morales','Técnico de Ecografía','555-9903','lucia.morales@example.com'),(15,'David','Blanco','Técnico de Radioterapia','555-2236','david.blanco@example.com'),(16,'Rocío','Hernández','Técnico de Laboratorio','555-4457','rocio.hernandez@example.com'),(17,'Miguel','Gil','Técnico de Radiología','555-6679','miguel.gil@example.com'),(18,'Elena','Moya','Técnico de Tomografía','555-8891','elena.moya@example.com'),(19,'Francisco','Ortega','Técnico de Ultrasonido','555-9904','francisco.ortega@example.com'),(20,'Beatriz','Pérez','Técnico de Patología','555-2237','beatriz.perez@example.com'),(21,'Pablo','Ramírez','Técnico de Rayos X','555-3347','pablo.ramirez@example.com'),(22,'Lorena','Vega','Técnico de Laboratorio','555-5569','lorena.vega@example.com'),(23,'Carlos','Navarro','Técnico de Resonancia','555-7781','carlos.navarro@example.com'),(24,'Mónica','Rivas','Técnico de Ecografía','555-9905','monica.rivas@example.com'),(25,'Álvaro','Suárez','Técnico de Radioterapia','555-2238','alvaro.suarez@example.com'),(26,'Patricia','Díaz','Técnico de Laboratorio','555-4458','patricia.diaz@example.com'),(27,'Rubén','Cabrera','Técnico de Radiología','555-6680','ruben.cabrera@example.com'),(28,'Sergio','Fernández','Técnico de Tomografía','555-8892','sergio.fernandez@example.com'),(29,'Carmen','López','Técnico de Ultrasonido','555-9906','carmen.lopez@example.com'),(30,'Iván','Reyes','Técnico de Patología','555-2239','ivan.reyes@example.com');
/*!40000 ALTER TABLE `technicians` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'policlinic_db'
--

--
-- Dumping routines for database 'policlinic_db'
--
/*!50003 DROP FUNCTION IF EXISTS `get_total_payment` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `get_total_payment`(patient_id_input INT) RETURNS decimal(10,2)
    DETERMINISTIC
BEGIN
    DECLARE total_payments DECIMAL(10, 2) DEFAULT 0.00;
    DECLARE medical_payments DECIMAL(10, 2) DEFAULT 0.00;
    DECLARE technical_payments DECIMAL(10, 2) DEFAULT 0.00;
    
    -- Sumar los pagos para consultas médicas
    SELECT COALESCE(SUM(amount), 0.00)
    INTO medical_payments
    FROM PAYMENTS
    WHERE medical_consult_id IN (
        SELECT medical_consult_id 
        FROM policlinic_db.MEDICAL_CONSULTS 
        WHERE patient_id = patient_id_input
    );
    
    -- Sumar los pagos para consultas técnicas
    SELECT COALESCE(SUM(amount), 0.00)
    INTO technical_payments
    FROM PAYMENTS
    WHERE technical_consult_id IN (
        SELECT technical_consult_id 
        FROM policlinic_db.TECHNICAL_CONSULTS 
        WHERE patient_id = patient_id_input
    );
    
    -- Calcular el total de pagos sumando ambas cantidades
    SET total_payments = medical_payments + technical_payments;
    
    -- Retornar el total de pagos
    RETURN total_payments;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `patients_by_doctor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `patients_by_doctor`(p_doctor_id INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE patient_count INT;

    SELECT COUNT(DISTINCT patient_id)
    INTO patient_count
    FROM policlinic_db.MEDICAL_CONSULTS
    WHERE doctor_id = p_doctor_id;

    RETURN patient_count;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_patient_payments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_patient_payments`(
    IN patientId INT
)
BEGIN
    SELECT 
        p.patient_id,
        CONCAT(p.first_name, ' ', p.last_name) AS patient_name,
        COALESCE(SUM(py.amount), 0) AS total_payments,
        COALESCE(SUM(CASE 
            WHEN py.medical_consult_id IS NOT NULL THEN py.amount 
            ELSE 0 
        END), 0) AS total_medical_payments,
        COALESCE(SUM(CASE 
            WHEN py.technical_consult_id IS NOT NULL THEN py.amount 
            ELSE 0 
        END), 0) AS total_technical_payments
    FROM 
        PATIENTS p
    LEFT JOIN 
        MEDICAL_CONSULTS mc ON p.patient_id = mc.patient_id
    LEFT JOIN 
        PAYMENTS py ON (
            py.medical_consult_id = mc.medical_consult_id 
            OR py.technical_consult_id IN (
                SELECT technical_consult_id 
                FROM TECHNICAL_CONSULTS 
                WHERE patient_id = p.patient_id
            )
        )
    WHERE 
        p.patient_id = patientId
    GROUP BY 
        p.patient_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insert_patient` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_patient`(
    IN firstName VARCHAR(100),
    IN lastName VARCHAR(100),
    IN birthDate DATE,
    IN gender ENUM('M', 'F', 'O'),
    IN address VARCHAR(255),
    IN phone VARCHAR(20),
    IN email VARCHAR(255)
)
BEGIN
    INSERT INTO PATIENTS (first_name, last_name, birth_date, gender, address, phone, email)
    VALUES (firstName, lastName, birthDate, gender, address, phone, email);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `doctor_consultation_quantity`
--

/*!50001 DROP VIEW IF EXISTS `doctor_consultation_quantity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `doctor_consultation_quantity` AS select `d`.`doctor_id` AS `doctor_id`,concat(`d`.`first_name`,' ',`d`.`last_name`) AS `doctor_name`,count(`mc`.`medical_consult_id`) AS `total_consults` from (`doctors` `d` left join `medical_consults` `mc` on((`d`.`doctor_id` = `mc`.`doctor_id`))) group by `d`.`doctor_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `patient_consultations`
--

/*!50001 DROP VIEW IF EXISTS `patient_consultations`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `patient_consultations` AS select `p`.`patient_id` AS `patient_id`,concat(`p`.`first_name`,' ',`p`.`last_name`) AS `patient_name`,`mc`.`medical_consult_id` AS `consult_id`,`mc`.`medical_consult_date` AS `consult_date`,'Medical' AS `consult_type`,NULL AS `technician_id`,NULL AS `technician_name`,`d`.`first_name` AS `doctor_first_name`,`d`.`last_name` AS `doctor_last_name` from ((`patients` `p` join `medical_consults` `mc` on((`p`.`patient_id` = `mc`.`patient_id`))) join `doctors` `d` on((`mc`.`doctor_id` = `d`.`doctor_id`))) union all select `p`.`patient_id` AS `patient_id`,concat(`p`.`first_name`,' ',`p`.`last_name`) AS `patient_name`,`tc`.`technical_consult_id` AS `consult_id`,`tc`.`technical_consult_date` AS `consult_date`,'Technical' AS `consult_type`,`tc`.`technician_id` AS `technician_id`,concat(`t`.`first_name`,' ',`t`.`last_name`) AS `technician_name`,NULL AS `doctor_first_name`,NULL AS `doctor_last_name` from ((`patients` `p` join `technical_consults` `tc` on((`p`.`patient_id` = `tc`.`patient_id`))) join `technicians` `t` on((`tc`.`technician_id` = `t`.`technician_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `patient_payments`
--

/*!50001 DROP VIEW IF EXISTS `patient_payments`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `patient_payments` AS select `p`.`patient_id` AS `patient_id`,concat(`p`.`first_name`,' ',`p`.`last_name`) AS `patient_name`,coalesce(`medical`.`total_medical_payments`,0) AS `total_medical_payments`,coalesce(`tech`.`total_technical_payments`,0) AS `total_technical_payments`,(coalesce(`medical`.`total_medical_payments`,0) + coalesce(`tech`.`total_technical_payments`,0)) AS `Total pagado por paciente` from ((`patients` `p` left join (select `mc`.`patient_id` AS `patient_id`,sum(`py`.`amount`) AS `total_medical_payments` from (`medical_consults` `mc` left join `payments` `py` on((`py`.`medical_consult_id` = `mc`.`medical_consult_id`))) group by `mc`.`patient_id`) `medical` on((`medical`.`patient_id` = `p`.`patient_id`))) left join (select `tc`.`patient_id` AS `patient_id`,sum(`py_tech`.`amount`) AS `total_technical_payments` from (`technical_consults` `tc` left join `payments` `py_tech` on((`py_tech`.`technical_consult_id` = `tc`.`technical_consult_id`))) group by `tc`.`patient_id`) `tech` on((`tech`.`patient_id` = `p`.`patient_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `technician_consultation_quantity`
--

/*!50001 DROP VIEW IF EXISTS `technician_consultation_quantity`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `technician_consultation_quantity` AS select `t`.`technician_id` AS `technician_id`,concat(`t`.`first_name`,' ',`t`.`last_name`) AS `technician_name`,count(`tc`.`technical_consult_id`) AS `total_consults` from (`technicians` `t` left join `technical_consults` `tc` on((`t`.`technician_id` = `tc`.`technician_id`))) group by `t`.`technician_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-28 14:08:39

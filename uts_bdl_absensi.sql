-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: absensi_karyawan
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

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
-- Current Database: `absensi_karyawan`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `absensi_karyawan` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `absensi_karyawan`;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance` (
  `attendance_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `attendance_date` date NOT NULL,
  `check_in` datetime DEFAULT NULL,
  `check_out` datetime DEFAULT NULL,
  `work_location` enum('WFO','WFA','absent') NOT NULL DEFAULT 'absent',
  `status` enum('present','absent','late','on_leave','overtime') NOT NULL DEFAULT 'absent',
  `overtime_minutes` int(11) DEFAULT 0,
  `modified_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`attendance_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,1,'2025-04-10','2025-04-10 08:05:00','2025-04-10 17:00:00','WFO','present',0,'2025-04-12 21:37:49'),(2,2,'2025-04-10','2025-04-10 08:15:00','2025-04-10 17:05:00','WFO','present',0,'2025-04-12 21:37:49'),(3,3,'2025-04-10',NULL,NULL,'WFA','on_leave',0,'2025-04-12 21:37:49'),(4,4,'2025-04-10','2025-04-10 09:00:00','2025-04-10 17:00:00','WFA','late',0,'2025-04-12 21:37:49'),(5,5,'2025-04-10','2025-04-10 08:00:00','2025-04-10 18:00:00','WFO','overtime',60,'2025-04-12 21:37:49'),(6,6,'2025-04-11','2025-04-11 08:10:00','2025-04-11 17:00:00','WFA','present',0,'2025-04-12 21:37:49'),(7,7,'2025-04-11',NULL,NULL,'absent','absent',0,'2025-04-12 21:37:49'),(8,8,'2025-04-11','2025-04-11 08:05:00','2025-04-11 17:00:00','WFO','present',0,'2025-04-12 21:37:49'),(9,9,'2025-04-11','2025-04-11 09:10:00','2025-04-11 17:00:00','WFA','late',0,'2025-04-12 21:37:49'),(10,10,'2025-04-11','2025-04-11 08:00:00','2025-04-11 17:05:00','WFO','present',0,'2025-04-12 21:37:49'),(11,1,'2025-04-12','2025-04-12 08:05:00','2025-04-12 17:00:00','WFO','present',0,'2025-04-12 21:37:49'),(12,2,'2025-04-12','2025-04-12 08:20:00','2025-04-12 17:00:00','WFA','late',0,'2025-04-12 21:37:49'),(13,3,'2025-04-12','2025-04-12 08:00:00','2025-04-12 17:00:00','WFO','present',0,'2025-04-12 21:37:49'),(14,4,'2025-04-12',NULL,NULL,'absent','absent',0,'2025-04-12 21:37:49'),(15,5,'2025-04-12','2025-04-12 08:10:00','2025-04-12 18:00:00','WFO','overtime',60,'2025-04-12 21:37:49'),(16,6,'2025-04-13','2025-04-13 08:05:00','2025-04-13 17:00:00','WFA','present',0,'2025-04-12 21:37:49'),(17,7,'2025-04-13','2025-04-13 08:30:00','2025-04-13 17:00:00','WFO','late',0,'2025-04-12 21:37:49'),(18,8,'2025-04-13','2025-04-13 08:00:00','2025-04-13 17:00:00','WFO','present',0,'2025-04-12 21:37:49'),(19,9,'2025-04-13','2025-04-13 08:45:00','2025-04-13 17:00:00','WFA','late',0,'2025-04-12 21:37:49'),(20,10,'2025-04-13','2025-04-13 08:00:00','2025-04-13 17:00:00','WFO','present',0,'2025-04-12 21:37:49');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trg_prevent_double_checkin
BEFORE INSERT ON Attendance
FOR EACH ROW
BEGIN
    IF (SELECT COUNT(*) FROM Attendance
        WHERE employee_id = NEW.employee_id
          AND attendance_date = NEW.attendance_date
          AND check_in IS NOT NULL) > 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Karyawan sudah melakukan check-in hari ini.';
    END IF;
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
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trg_update_overtime_status
BEFORE UPDATE ON Attendance
FOR EACH ROW
BEGIN
    IF NEW.overtime_minutes > 0 THEN
        SET NEW.status = 'overtime';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `department_id` int(11) NOT NULL AUTO_INCREMENT,
  `department_name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Engineering','Divisi pengembangan dan pemeliharaan produk software'),(2,'Human Resources','Mengelola rekrutmen dan kesejahteraan karyawan'),(3,'Product','Perencanaan dan pengembangan produk'),(4,'Finance','Mengatur keuangan dan laporan keuangan perusahaan'),(5,'Sales','Menangani penjualan dan relasi dengan klien');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','employee') NOT NULL DEFAULT 'employee',
  `position_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `status` enum('active','resign','leave','layoff') NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `email` (`email`),
  KEY `position_id` (`position_id`),
  KEY `department_id` (`department_id`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`position_id`) REFERENCES `jobposition` (`position_id`),
  CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Andi Saputra','andi.saputra@company.com','passAndi','admin',1,1,'active','2025-04-12 21:37:49'),(2,'Budi Santoso','budi.santoso@company.com','passBudi','employee',2,1,'active','2025-04-12 21:37:49'),(3,'Citra Lestari','citra.lestari@company.com','passCitra','employee',3,1,'active','2025-04-12 21:37:49'),(4,'Dewi Anggraini','dewi.anggraini@company.com','passDewi','employee',4,1,'active','2025-04-12 21:37:49'),(5,'Eka Prasetyo','eka.prasetyo@company.com','passEka','employee',5,2,'active','2025-04-12 21:37:49'),(6,'Fajar Hidayat','fajar.hidayat@company.com','passFajar','employee',6,3,'active','2025-04-12 21:37:49'),(7,'Gita Puspita','gita.puspita@company.com','passGita','employee',7,4,'active','2025-04-12 21:37:49'),(8,'Hendra Wijaya','hendra.wijaya@company.com','passHendra','employee',8,5,'active','2025-04-12 21:37:49'),(9,'Ika Mariana','ika.mariana@company.com','passIka','employee',2,1,'active','2025-04-12 21:37:49'),(10,'Joko Susilo','joko.susilo@company.com','passJoko','employee',3,1,'active','2025-04-12 21:37:49');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobposition`
--

DROP TABLE IF EXISTS `jobposition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobposition` (
  `position_id` int(11) NOT NULL AUTO_INCREMENT,
  `position_title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobposition`
--

LOCK TABLES `jobposition` WRITE;
/*!40000 ALTER TABLE `jobposition` DISABLE KEYS */;
INSERT INTO `jobposition` VALUES (1,'Backend Engineer','Mengembangkan logika server dan API'),(2,'Frontend Engineer','Membuat antarmuka pengguna yang responsif'),(3,'QA Engineer','Melakukan pengujian kualitas software'),(4,'DevOps Engineer','Mengelola deployment dan infrastruktur'),(5,'HR Specialist','Mengelola proses rekrutmen dan administrasi karyawan'),(6,'Product Manager','Mengatur roadmap dan fitur produk'),(7,'Accountant','Mengelola laporan keuangan dan budgeting'),(8,'Technical Support','Mendukung troubleshooting bagi klien');
/*!40000 ALTER TABLE `jobposition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave`
--

DROP TABLE IF EXISTS `leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leave` (
  `leave_id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL,
  `start_datetime` datetime NOT NULL,
  `end_datetime` datetime NOT NULL,
  `leave_type` enum('sick','personal','other') NOT NULL,
  `reason` text DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `submitted_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`leave_id`),
  KEY `employee_id` (`employee_id`),
  CONSTRAINT `leave_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave`
--

LOCK TABLES `leave` WRITE;
/*!40000 ALTER TABLE `leave` DISABLE KEYS */;
INSERT INTO `leave` VALUES (1,3,'2025-04-10 00:00:00','2025-04-11 23:59:59','sick','Demam tinggi dan batuk','doc3.pdf','2025-04-12 21:37:49'),(2,4,'2025-04-11 13:00:00','2025-04-11 17:00:00','personal','Keperluan keluarga mendadak','doc4.pdf','2025-04-12 21:37:49'),(3,2,'2025-04-12 00:00:00','2025-04-12 23:59:59','personal','Acara penting keluarga','doc2.pdf','2025-04-12 21:37:49'),(4,5,'2025-04-12 08:00:00','2025-04-12 12:00:00','sick','Sakit perut mendadak','doc5.pdf','2025-04-12 21:37:49'),(5,7,'2025-04-13 00:00:00','2025-04-13 23:59:59','personal','Keperluan pribadi','doc7.pdf','2025-04-12 21:37:49'),(6,9,'2025-04-11 10:00:00','2025-04-11 23:59:59','sick','Sakit kepala parah','doc9.pdf','2025-04-12 21:37:49'),(7,10,'2025-04-13 14:00:00','2025-04-13 18:00:00','personal','Kunjungan keluarga','doc10.pdf','2025-04-12 21:37:49'),(8,1,'2025-04-12 00:00:00','2025-04-12 23:59:59','sick','Flu ringan','doc1.pdf','2025-04-12 21:37:49'),(9,6,'2025-04-13 08:00:00','2025-04-13 12:00:00','other','Keperluan mendadak','doc6.pdf','2025-04-12 21:37:49'),(10,8,'2025-04-11 14:00:00','2025-04-11 18:00:00','other','Acara penting kantor','doc8.pdf','2025-04-12 21:37:49');
/*!40000 ALTER TABLE `leave` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER trg_auto_mark_attendance_on_leave
AFTER INSERT ON `Leave`
FOR EACH ROW
BEGIN
    UPDATE Attendance
    SET status = 'on_leave'
    WHERE employee_id = NEW.employee_id
      AND attendance_date = DATE(NEW.start_datetime);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary table structure for view `vw_attendance_summary`
--

DROP TABLE IF EXISTS `vw_attendance_summary`;
/*!50001 DROP VIEW IF EXISTS `vw_attendance_summary`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_attendance_summary` AS SELECT
 1 AS `employee_id`,
  1 AS `name`,
  1 AS `attendance_date`,
  1 AS `check_in`,
  1 AS `check_out`,
  1 AS `work_location`,
  1 AS `status`,
  1 AS `overtime_minutes` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_leave_details`
--

DROP TABLE IF EXISTS `vw_leave_details`;
/*!50001 DROP VIEW IF EXISTS `vw_leave_details`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_leave_details` AS SELECT
 1 AS `leave_id`,
  1 AS `employee_id`,
  1 AS `name`,
  1 AS `start_datetime`,
  1 AS `end_datetime`,
  1 AS `leave_type`,
  1 AS `reason`,
  1 AS `document`,
  1 AS `submitted_at`,
  1 AS `leave_duration_hours` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_summary_attendance_monthly`
--

DROP TABLE IF EXISTS `vw_summary_attendance_monthly`;
/*!50001 DROP VIEW IF EXISTS `vw_summary_attendance_monthly`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_summary_attendance_monthly` AS SELECT
 1 AS `employee_id`,
  1 AS `name`,
  1 AS `bulan`,
  1 AS `tahun`,
  1 AS `total_hadir`,
  1 AS `total_telat`,
  1 AS `total_lembur`,
  1 AS `total_cuti`,
  1 AS `total_alpha` */;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'absensi_karyawan'
--
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_get_leave_count` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_get_leave_count`(p_employee_id INT,
    p_month INT,
    p_year INT
) RETURNS int(11)
    DETERMINISTIC
BEGIN
    DECLARE jumlah INT;

    SELECT COUNT(*) INTO jumlah
    FROM `Leave`
    WHERE employee_id = p_employee_id
      AND MONTH(start_datetime) = p_month
      AND YEAR(start_datetime) = p_year;

    RETURN jumlah;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_get_leave_duration` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_get_leave_duration`(p_leave_id INT) RETURNS int(11)
    DETERMINISTIC
BEGIN
    DECLARE duration INT;
    SELECT TIMESTAMPDIFF(HOUR, start_datetime, end_datetime)
    INTO duration
    FROM `Leave`
    WHERE leave_id = p_leave_id;
    RETURN duration;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_get_total_attendance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_get_total_attendance`(p_employee_id INT,
    p_month INT,
    p_year INT
) RETURNS int(11)
    DETERMINISTIC
BEGIN
    DECLARE total INT;
    SELECT COUNT(*) INTO total
    FROM Attendance
    WHERE employee_id = p_employee_id
      AND MONTH(attendance_date) = p_month
      AND YEAR(attendance_date) = p_year
      AND status IN ('present', 'late', 'overtime');
    RETURN total;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_get_total_overtime` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_get_total_overtime`(p_employee_id INT,
    p_month INT,
    p_year INT
) RETURNS int(11)
    DETERMINISTIC
BEGIN
    DECLARE total INT;
    SELECT SUM(overtime_minutes) INTO total
    FROM Attendance
    WHERE employee_id = p_employee_id
      AND MONTH(attendance_date) = p_month
      AND YEAR(attendance_date) = p_year;
    RETURN IFNULL(total, 0);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_record_attendance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_record_attendance`(
    IN p_employee_id INT,
    IN p_attendance_date DATE,
    IN p_check_in DATETIME,
    IN p_work_location ENUM('WFO', 'WFA', 'absent')
)
BEGIN
    INSERT INTO Attendance (
        employee_id, attendance_date, check_in, work_location, status
    )
    VALUES (
        p_employee_id, p_attendance_date, p_check_in, p_work_location,
        IF(p_check_in IS NOT NULL, 'present', 'absent')
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_submit_leave_request` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_submit_leave_request`(
    IN p_employee_id INT,
    IN p_start_datetime DATETIME,
    IN p_end_datetime DATETIME,
    IN p_leave_type ENUM('sick', 'personal', 'other'),
    IN p_reason TEXT,
    IN p_document VARCHAR(255)
)
BEGIN
    INSERT INTO `Leave` (
        employee_id, start_datetime, end_datetime, leave_type, reason, document
    )
    VALUES (
        p_employee_id, p_start_datetime, p_end_datetime, p_leave_type, p_reason, p_document
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `absensi_karyawan`
--

USE `absensi_karyawan`;

--
-- Final view structure for view `vw_attendance_summary`
--

/*!50001 DROP VIEW IF EXISTS `vw_attendance_summary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_attendance_summary` AS select `e`.`employee_id` AS `employee_id`,`e`.`name` AS `name`,`a`.`attendance_date` AS `attendance_date`,`a`.`check_in` AS `check_in`,`a`.`check_out` AS `check_out`,`a`.`work_location` AS `work_location`,`a`.`status` AS `status`,`a`.`overtime_minutes` AS `overtime_minutes` from (`employee` `e` join `attendance` `a` on(`e`.`employee_id` = `a`.`employee_id`)) where `a`.`attendance_date` = curdate() */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_leave_details`
--

/*!50001 DROP VIEW IF EXISTS `vw_leave_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_leave_details` AS select `l`.`leave_id` AS `leave_id`,`e`.`employee_id` AS `employee_id`,`e`.`name` AS `name`,`l`.`start_datetime` AS `start_datetime`,`l`.`end_datetime` AS `end_datetime`,`l`.`leave_type` AS `leave_type`,`l`.`reason` AS `reason`,`l`.`document` AS `document`,`l`.`submitted_at` AS `submitted_at`,timestampdiff(HOUR,`l`.`start_datetime`,`l`.`end_datetime`) AS `leave_duration_hours` from (`leave` `l` join `employee` `e` on(`l`.`employee_id` = `e`.`employee_id`)) order by `l`.`submitted_at` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_summary_attendance_monthly`
--

/*!50001 DROP VIEW IF EXISTS `vw_summary_attendance_monthly`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_summary_attendance_monthly` AS select `e`.`employee_id` AS `employee_id`,`e`.`name` AS `name`,month(`a`.`attendance_date`) AS `bulan`,year(`a`.`attendance_date`) AS `tahun`,sum(`a`.`status` = 'present') AS `total_hadir`,sum(`a`.`status` = 'late') AS `total_telat`,sum(`a`.`status` = 'overtime') AS `total_lembur`,sum(`a`.`status` = 'on_leave') AS `total_cuti`,sum(`a`.`status` = 'absent') AS `total_alpha` from (`attendance` `a` join `employee` `e` on(`a`.`employee_id` = `e`.`employee_id`)) group by `e`.`employee_id`,month(`a`.`attendance_date`),year(`a`.`attendance_date`) */;
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

-- Dump completed on 2025-04-13 16:38:06

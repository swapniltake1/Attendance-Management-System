-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: attendance_management
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `subcode` varchar(10) NOT NULL,
  `studentid` varchar(10) NOT NULL,
  `session` varchar(20) NOT NULL,
  `course` varchar(20) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `month` varchar(20) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(30) NOT NULL,
  `attendance` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES ('BTCS604','1731857','2019-20','B.Tech(CSE)','6th','May','11/05/2020','13:29:37','Present'),('BTCS604','1731857','2019-20','B.Tech(CSE)','6th','January','11/05/2020','13:30:04','Absent'),('BTCS604','1731857','2019-20','B.Tech(CSE)','6th','January','11/05/2020','13:30:31','Present'),('BTCS604','1731857','2019-20','B.Tech(CSE)','6th','January','11/05/2020','13:30:34','Absent'),('BTCS604','1731857','2019-20','B.Tech(CSE)','6th','January','11/05/2020','13:30:36','Present'),('BTCS604','1731857','2019-20','B.Tech(CSE)','6th','January','11/05/2020','13:30:39','Present'),('BTCS604','1731857','2019-20','B.Tech(CSE)','6th','January','11/05/2020','13:30:42','Present'),('BTCS604','1731857','2019-20','B.Tech(CSE)','6th','January','11/05/2020','13:30:45','Absent'),('BTCS604','1731857','2019-20','B.Tech(CSE)','6th','January','11/05/2020','13:30:47','Present'),('BTCS604','1731857','2019-20','B.Tech(CSE)','6th','January','11/05/2020','13:30:49','Present'),('BTCS604','1731857','2019-20','B.Tech(CSE)','6th','January','11/05/2020','13:30:51','Present'),('BTCS604','1731857','2019-20','B.Tech(CSE)','6th','January','11/05/2020','13:30:54','Present'),('BTCS604','1731857','2019-20','B.Tech(CSE)','6th','January','11/05/2020','13:30:57','Absent'),('BTCS604','1731865','2019-20','B.Tech(CSE)','6th','January','11/05/2020','13:31:14','Present'),('BTCS604','1731857','2019-20','B.Tech(CSE)','6th','May','11/05/2020','13:32:27','Present');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faculty` (
  `facultyid` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `emailid` varchar(30) NOT NULL,
  PRIMARY KEY (`facultyid`),
  UNIQUE KEY `mobile` (`mobile`),
  UNIQUE KEY `email` (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES ('10001','10001','Pooja Sharma','Female','Jalandhar, Punjab','9876543210','poojasharma@gmail.com'),('10002','10002','Dinesh Gupta','Male','Jalandhar, Punjab','9878654123','dineshgupta@gmail.com'),('10003','10003','Raman Kumar','Male','Jalandhar, Punjab','9887963254','raman@gmail.com'),('10004','10004','Ezoo Sachdev','Female','Jalandhar, Punjab','8745961230','ezoo@gmail.com'),('10005','10005','Ankit Titoriya','Male','Uttar Pradesh','9658741235','ankit@gmail.com');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `studentid` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `name` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `course` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`studentid`),
  UNIQUE KEY `mobile` (`mobile`),
  UNIQUE KEY `email` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('1731857','1234','Robin Kumar','Surendra Prasad','Male','B.Tech(CSE)','Nalanda, Bihar','9955883101','kumarrobin99@gmail.com'),('1731858','1731858','Sanamdeep Singh','Jaswinder Singh','Male','B.Tech(CSE)','Ludhiana, Punjab','8794561230','sanam@gmail.com'),('1731865','1731865','Vasu Kaushik','Vipul Kaushik','Male','B.Tech(CSE)','Firozpur, Punjab','9632587410','vasuofficial@gmail.com'),('1818600','1818600','Atul Sandal','Gurbachan Singh','Male','B.Tech(CE)','Himachal','8569741230','atul@gmail.com');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `subcode` varchar(10) NOT NULL,
  `subname` varchar(30) NOT NULL,
  PRIMARY KEY (`subcode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES ('BTCS502','RDBMS I'),('BTCS601','Simulation & Modeling'),('BTCS602','RDBMS II'),('BTCS603','Software Engineering'),('BTCS604','RDBMS-II Lab');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-06 19:17:36

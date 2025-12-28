-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: spring
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS books;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE books (
  book_id varchar(255) NOT NULL,
  author varchar(255) NOT NULL,
  available_copies int NOT NULL,
  category varchar(30) NOT NULL,
  isbn varchar(255) NOT NULL,
  title varchar(50) NOT NULL,
  total_copies int NOT NULL,
  student_id varchar(255) NOT NULL,
  PRIMARY KEY (book_id),
  UNIQUE KEY UKkibbepcitr0a3cpk3rfr7nihn (isbn),
  KEY FKogot0942ocpdhd9c3bi1fbtbk (student_id),
  CONSTRAINT FKogot0942ocpdhd9c3bi1fbtbk FOREIGN KEY (student_id) REFERENCES students (student_id),
  CONSTRAINT books_chk_1 CHECK ((`available_copies` >= 0)),
  CONSTRAINT books_chk_2 CHECK ((`total_copies` >= 1))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES books WRITE;
/*!40000 ALTER TABLE books DISABLE KEYS */;
INSERT INTO books VALUES ('BOOK-229FE5','Raghu Ramakrishnan',5,'Databases','7956090885912','Database Systems',5,'STU-4CC1AF'),('BOOK-2C814E','Alan Beaulieu',4,'Databases','3546574832344','SQL Fundamentals',4,'STU-4CC1AF'),('BOOK-327ADB','Gavin King',3,'ORM','8499597750887','Hibernate Basics',3,'STU-0E0FF5'),('BOOK-3339E5','Erich Gamma',5,'Architecture','7977768252478','Design Patterns',5,'STU-2DA40B'),('BOOK-38663B','Joshua Bloch',4,'Programming','3427868168055','Effective Java',4,'STU-06BFC3'),('BOOK-478424','Andrew Tanenbaum',3,'Networking','9577027968591','Computer Networks',3,'STU-40D33F'),('BOOK-50EFDA','Abraham Silberschatz',4,'Systems','8604644022898','Operating Systems',4,'STU-3FB1FD'),('BOOK-6FA415','Stuart Russell',5,'The AI','1128021194398','Artificial Intelligence',5,'STU-DAA6C8'),('BOOK-7264B0','Rajkumar Buyya',4,'Cloud','8993934574873','Cloud Computing',4,'STU-911490'),('BOOK-7367D6','Robert Martin',5,'Programming','2193267751885','Clean Code',5,'STU-06BFC3'),('BOOK-7DB96F','Brian Goetz',4,'Advanced Java','6009530865073','Java Concurrency',4,'STU-2DA40B'),('BOOK-A1436F','Craig Walls',6,'Framework','6505152109108','Spring in Action',6,'STU-0E0FF5'),('BOOK-B1794D','Sam Newman',3,'Architecture','8415588794312','Microservices Architecture',3,'STU-68D778'),('BOOK-BBD215','Tom Mitchell',4,'The AI','5316039140714','Machine Learning',4,'STU-DAA6C8'),('BOOK-BDA1DE','Mark Allen',6,'Computer Science','2597808038345','Data Structures',6,'STU-36650C'),('BOOK-CF3BD7','Robert Sedgewick',5,'Computer Science','6330762889930','Algorithms',5,'STU-36650C');
/*!40000 ALTER TABLE books ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marks_table`
--

DROP TABLE IF EXISTS marks_table;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE marks_table (
  marks_id varchar(255) NOT NULL,
  computers int DEFAULT NULL,
  english int DEFAULT NULL,
  exam_title varchar(50) NOT NULL,
  maths int DEFAULT NULL,
  result varchar(255) DEFAULT NULL,
  science int DEFAULT NULL,
  total int DEFAULT NULL,
  student_id varchar(255) NOT NULL,
  PRIMARY KEY (marks_id),
  UNIQUE KEY UK1vm642u6fiqceys0nvb8kdcm7 (student_id),
  CONSTRAINT FKs2kfwiobdtl3d8a2vtkxqnjy0 FOREIGN KEY (student_id) REFERENCES students (student_id),
  CONSTRAINT marks_table_chk_1 CHECK (((`computers` >= 0) and (`computers` <= 100))),
  CONSTRAINT marks_table_chk_2 CHECK (((`english` >= 0) and (`english` <= 100))),
  CONSTRAINT marks_table_chk_3 CHECK (((`maths` >= 0) and (`maths` <= 100))),
  CONSTRAINT marks_table_chk_4 CHECK (((`science` >= 0) and (`science` <= 100))),
  CONSTRAINT marks_table_chk_5 CHECK ((`total` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marks_table`
--

LOCK TABLES marks_table WRITE;
/*!40000 ALTER TABLE marks_table DISABLE KEYS */;
INSERT INTO marks_table VALUES ('MARKS-49D0B3',80,70,'Mid Term Examination',72,'PASS',75,297,'STU-0E0FF5'),('MARKS-51C61A',96,90,'Final Examination',92,'PASS',94,372,'STU-DAA6C8'),('MARKS-67B43F',92,85,'Unit Test 2',90,'PASS',88,355,'STU-4CC1AF'),('MARKS-901DEC',85,80,'Final Examination',81,'PASS',79,325,'STU-36650C'),('MARKS-A1CE25',58,62,'Unit Test 1',65,'PASS',60,245,'STU-3FB1FD'),('MARKS-AB2FCA',70,68,'Unit Test 2',66,'PASS',64,268,'STU-68D778'),('MARKS-B33A2C',96,90,'Final Examination',92,'PASS',94,372,'STU-911490'),('MARKS-C0671D',95,89,'Final Examination',88,'PASS',91,363,'STU-2DA40B'),('MARKS-CBE5A7',90,75,'Mid Term Examination',78,'PASS',82,325,'STU-06BFC3'),('MARKS-E1C77D',72,66,'Unit Test 1',70,'PASS',68,276,'STU-40D33F');
/*!40000 ALTER TABLE marks_table ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS students;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE students (
  student_id varchar(255) NOT NULL,
  email varchar(255) NOT NULL,
  mobile varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  semester int NOT NULL,
  PRIMARY KEY (student_id),
  CONSTRAINT students_chk_1 CHECK (((`semester` >= 1) and (`semester` <= 8)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES students WRITE;
/*!40000 ALTER TABLE students DISABLE KEYS */;
INSERT INTO students VALUES ('STU-06BFC3','pranav.joshi@gmail.com','9876543210','Pranav Joshi',2),('STU-0E0FF5','karthik.kumar@gmail.com','9876543203','Karthik Kumar',3),('STU-2DA40B','aishwarya.iyer@gmail.com','9876543207','Aishwarya Iyer',7),('STU-36650C','nithin.shetty@gmail.com','9876543206','Nithin Shetty',6),('STU-3FB1FD','manoj.das@gmail.com','9876543208','Manoj Das',8),('STU-40D33F','ritika.malhotra@gmail.com','9876543209','Ritika Malhotra',1),('STU-4CC1AF','arjun.reddy@gmail.com','9876543201','Arjun Reddy',1),('STU-68D778','meera.nair@gmail.com','9876543202','Meera Nair',2),('STU-911490','suresh.rao@gmail.com','9876543205','Suresh Rao',5),('STU-DAA6C8','divya.patel@gmail.com','9876543204','Divya Patel',4);
/*!40000 ALTER TABLE students ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-28 23:03:24

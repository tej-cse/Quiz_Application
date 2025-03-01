-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: quiz_app
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `book_id` int NOT NULL,
  `book_name` varchar(10) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(255) DEFAULT NULL,
  `option1` varchar(255) DEFAULT NULL,
  `option2` varchar(255) DEFAULT NULL,
  `option3` varchar(255) DEFAULT NULL,
  `option4` varchar(255) DEFAULT NULL,
  `right_answer` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` VALUES (1,'Which of the following is not a Java feature?','Object-Oriented','Use of pointers','Portable','Dynamic','Use of pointers','Java'),(2,'Which data type is used to store text in Java?','int','String','char','float','String','Java'),(3,'What is the default value of a boolean in Java?','true','false','null','0','false','Java'),(4,'Which method is used to find the length of a string in Java?','length()','size()','getLength()','count()','length()','Java'),(5,'Which keyword is used to create a subclass in Java?','extend','extends','inherit','inherits','extends','Java'),(6,'Which of these is a valid way to start a main method in Java?','public static void main(String args[])','static public void main(String args[])','public static void main(String[] args)','All of the above','All of the above','Java'),(7,'Which access modifier makes a member accessible only within its own package?','public','protected','default','private','default','Java'),(8,'What is the size of an int data type in Java?','8 bytes','4 bytes','2 bytes','1 byte','4 bytes','Java'),(9,'Which class is the parent of all classes in Java?','Object','Class','Parent','Super','Object','Java'),(10,'What is the output of 10 + 20 + \"30\" in Java?','1030','102030','30','50','1030','Java'),(11,'What is Redux?','Redux is State Management System','Redux is State','Redux is Data Type','Redux is a part of HTML','Redux is State Management System','react'),(12,'What is the primary use of Redux?','To manage and centralize application state','To create CSS styles','To handle API requests','To manage HTML templates','To manage and centralize application state','react'),(13,'What are the core principles of Redux?','Single source of truth, state is read-only, changes are made with pure functions','State is shared, changes are made with impure functions','State is distributed, changes are automatic','None of the above','Single source of truth, state is read-only, changes are made with pure functions','react'),(14,'What is an action in Redux?','A plain JavaScript object describing an event','A method to update state directly','A function to fetch data','A way to define HTML templates','A plain JavaScript object describing an event','react'),(15,'What is a reducer in Redux?','A pure function that specifies how the state changes in response to an action','A component that reduces the app size','A function to enhance CSS styles','A method to fetch data from the server','A pure function that specifies how the state changes in response to an action','react'),(16,'What is the Redux store?','An object that holds the entire state of the application','A place to store API data','A cache for CSS files','A storage for HTML templates','An object that holds the entire state of the application','react'),(17,'What is middleware in Redux?','A function that intercepts actions and performs side effects','A tool to design UI components','A database query handler','A method to store images','A function that intercepts actions and performs side effects','react'),(18,'What is the purpose of the combineReducers function in Redux?','To combine multiple reducers into one','To merge multiple states','To fetch and combine API responses','To split the state into multiple parts','To combine multiple reducers into one','react'),(19,'What is the purpose of the applyMiddleware function in Redux?','To apply middleware to the Redux store','To apply styles to components','To handle state updates directly','To combine reducers','To apply middleware to the Redux store','react'),(20,'What is the role of the Redux DevTools?','To debug and inspect Redux state changes','To style the application','To fetch API data','To optimize database queries','To debug and inspect Redux state changes','react'),(21,'What is the output of print(2 ** 3)?','5','6','8','10','8','Python'),(22,'Which of the following is a mutable data type in Python?','Tuple','List','String','Integer','List','Python'),(23,'What is the default return value of a function in Python if no return statement is specified?','0','None','False','Empty String','None','Python'),(24,'Which of the following is used to define a block of code in Python?','{}','()','[]','Indentation','Indentation','Python'),(25,'Which function is used to get the length of a list in Python?','size()','count()','length()','len()','len()','Python'),(26,'What will be the output of print(bool(\"\"))?','True','False','None','Error','False','Python'),(27,'How do you define a function in Python?','def my_function():','function my_function():','define my_function():','func my_function():','def my_function():','Python'),(28,'Which keyword is used to exit a loop in Python?','exit','return','break','stop','break','Python'),(29,'What will be the output of print(type([]))?','list','tuple','dict','set','list','Python'),(30,'What is the correct way to open a file named \"data.txt\" in read mode?','open(\"data.txt\", \"r\")','open(\"data.txt\", \"w\")','open(\"data.txt\", \"rw\")','open(\"data.txt\", \"read\")','open(\"data.txt\", \"r\")','Python'),(31,'Which command is used to start a new Django project?','django-admin startproject','django startproject','python manage.py startproject','django-admin createproject','django-admin startproject','Django'),(32,'Which file contains the settings for a Django project?','views.py','settings.py','models.py','urls.py','settings.py','Django'),(33,'Which of the following is used to define a URL pattern in Django?','path()','url()','route()','link()','path()','Django'),(34,'Which command is used to apply migrations in Django?','django makemigrations','django migrate','python manage.py migrate','python manage.py migrations','python manage.py migrate','Django'),(35,'Which of the following is the default database used in Django?','MySQL','PostgreSQL','SQLite','MongoDB','SQLite','Django'),(36,'Which Django ORM method is used to retrieve all objects from a model?','find_all()','select()','all()','get_all()','all()','Django'),(37,'Which of the following is used to render an HTML template in Django?','render()','render_template()','load_template()','generate_template()','render()','Django'),(38,'Which Django model field is used for storing large text?','CharField','TextField','BigTextField','LargeField','TextField','Django'),(39,'Which file is responsible for defining URL routing in Django?','views.py','urls.py','settings.py','models.py','urls.py','Django'),(40,'Which command is used to create a new Django app?','django-admin startapp','django startapp','python manage.py startapp','python createapp','python manage.py startapp','Django'),(41,'Which annotation is used to mark a Spring Boot main application class?','@Component','@Service','@SpringBootApplication','@Configuration','@SpringBootApplication','spring'),(42,'Which file is used to configure properties in a Spring Boot application?','application.properties','config.xml','settings.yaml','application.yml','application.properties','spring'),(43,'Which starter dependency is used for building web applications in Spring Boot?','spring-boot-starter-data','spring-boot-starter-web','spring-boot-starter-jpa','spring-boot-starter-security','spring-boot-starter-web','spring'),(44,'Which annotation is used to define a RESTful API in Spring Boot?','@Controller','@RestController','@Service','@Repository','@RestController','spring'),(45,'Which dependency is required for working with JPA in Spring Boot?','spring-boot-starter-web','spring-boot-starter-jpa','spring-boot-starter-security','spring-boot-starter-test','spring-boot-starter-jpa','spring'),(46,'Which command is used to run a Spring Boot application?','spring run app','java -jar app.jar','spring-boot start','spring start application','java -jar app.jar','spring'),(47,'Which annotation is used to inject dependencies in Spring Boot?','@Autowired','@Inject','@Component','@Service','@Autowired','spring'),(48,'Which of the following is the default embedded server in Spring Boot?','Tomcat','Jetty','Undertow','GlassFish','Tomcat','spring'),(49,'What is the default scope of a Spring Bean?','Prototype','Request','Singleton','Session','Singleton','spring'),(50,'Which annotation is used to handle exceptions globally in Spring Boot?','@ExceptionHandler','@ControllerAdvice','@RestController','@ErrorHandler','@ControllerAdvice','spring'),(51,'What does HTML stand for?','HyperText Markup Language','HighText Machine Language','Hyperlink and Text Markup Language','Home Tool Markup Language','HyperText Markup Language','HTML'),(52,'Which HTML tag is used to define an unordered list?','<ol>','<ul>','<li>','<list>','<ul>','HTML'),(53,'Which attribute is used to provide a unique identifier to an HTML element?','name','id','class','key','id','HTML'),(54,'Which HTML tag is used to create a hyperlink?','<link>','<a>','<href>','<url>','<a>','HTML'),(55,'What is the correct HTML tag for inserting a line break?','<break>','<lb>','<br>','<newline>','<br>','HTML'),(56,'Which tag is used to define a table row in HTML?','<table>','<tr>','<td>','<th>','<tr>','HTML'),(57,'Which tag is used to insert an image in HTML?','<image>','<img>','<src>','<pic>','<img>','HTML'),(58,'Which HTML attribute is used to define inline styles?','style','class','css','font','style','HTML'),(59,'Which of the following is the correct way to add a comment in HTML?','<!-- This is a comment -->','// This is a comment','/* This is a comment */','# This is a comment','<!-- This is a comment -->','HTML'),(60,'Which HTML element is used to define important text?','<strong>','<b>','<i>','<u>','<strong>','HTML'),(61,'Which keyword is used to declare a variable in JavaScript?','var','let','const','All of the above','All of the above','JavaScript'),(62,'Which method is used to display data in the browser console?','console.log()','print()','log()','display()','console.log()','JavaScript'),(63,'Which symbol is used for single-line comments in JavaScript?','//','/* */','<!-- -->','#','//','JavaScript'),(64,'Which JavaScript method is used to select an element by its ID?','getElementByClass()','getElementById()','querySelector()','getElementsByTagName()','getElementById()','JavaScript'),(65,'Which operator is used to compare values and data types in JavaScript?','==','===','=','!=','===','JavaScript'),(66,'Which function is used to parse a string into an integer in JavaScript?','parseInt()','parseFloat()','Number()','toInteger()','parseInt()','JavaScript'),(67,'Which JavaScript data type is used to store multiple values in a single variable?','String','Object','Array','Function','Array','JavaScript'),(68,'Which method is used to remove the last element from an array in JavaScript?','pop()','push()','shift()','splice()','pop()','JavaScript'),(69,'Which event is triggered when a user clicks on an HTML element?','onmouseover','onchange','onkeyup','onclick','onclick','JavaScript'),(70,'Which JavaScript keyword is used to define a function?','function','define','method','create','function','JavaScript'),(71,'What does CSS stand for?','Computer Style Sheets','Creative Style Sheets','Cascading Style Sheets','Colorful Style Sheets','Cascading Style Sheets','CSS'),(72,'Which CSS property is used to change the text color of an element?','background-color','color','text-color','font-color','color','CSS'),(73,'Which CSS property is used to set the background color of an element?','color','background-color','bgcolor','background','background-color','CSS'),(74,'Which CSS property controls the text size?','text-style','font-size','text-size','font-style','font-size','CSS'),(75,'Which property is used to make text bold in CSS?','text-style: bold','font: bold','font-weight: bold','style: bold','font-weight: bold','CSS'),(76,'Which CSS property is used to create space between elements?','margin','padding','spacing','border-spacing','margin','CSS'),(77,'Which unit is NOT relative in CSS?','px','em','rem','%','px','CSS'),(78,'Which property is used to set the space inside an element, between the content and the border?','margin','padding','border','spacing','padding','CSS'),(79,'Which CSS property is used to control the visibility of an element?','display','visibility','opacity','hide','visibility','CSS'),(80,'Which property is used to make a webpage responsive?','grid','flexbox','media queries','animation','media queries','CSS');
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question_seq`
--

DROP TABLE IF EXISTS `question_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `question_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question_seq`
--

LOCK TABLES `question_seq` WRITE;
/*!40000 ALTER TABLE `question_seq` DISABLE KEYS */;
INSERT INTO `question_seq` VALUES (101);
/*!40000 ALTER TABLE `question_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `topic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz`
--

LOCK TABLES `quiz` WRITE;
/*!40000 ALTER TABLE `quiz` DISABLE KEYS */;
INSERT INTO `quiz` VALUES (1,'ReactQuiz_1','react');
/*!40000 ALTER TABLE `quiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quiz_question`
--

DROP TABLE IF EXISTS `quiz_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quiz_question` (
  `quiz_id` int NOT NULL,
  `question_id` int NOT NULL,
  KEY `FK62empq7vfu15qv1kci624f1js` (`question_id`),
  KEY `FKdtynvfjgh6e7fd8l0wk37nrpc` (`quiz_id`),
  CONSTRAINT `FK62empq7vfu15qv1kci624f1js` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`),
  CONSTRAINT `FKdtynvfjgh6e7fd8l0wk37nrpc` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quiz_question`
--

LOCK TABLES `quiz_question` WRITE;
/*!40000 ALTER TABLE `quiz_question` DISABLE KEYS */;
INSERT INTO `quiz_question` VALUES (1,12),(1,18),(1,14),(1,15),(1,13);
/*!40000 ALTER TABLE `quiz_question` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-23 22:33:56

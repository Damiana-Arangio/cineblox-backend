CREATE DATABASE  IF NOT EXISTS `db_movies` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_movies`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: db_movies
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `director` varchar(255) NOT NULL,
  `genre` varchar(255) DEFAULT NULL,
  `release_year` year DEFAULT NULL,
  `abstract` text,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Inception','Christopher Nolan','Science Fiction',2010,'A skilled thief is given a chance at redemption if he can successfully perform inception.','inception.jpg','2024-11-29 10:40:13','2025-05-22 10:55:27'),(2,'The Godfather','Francis Ford Coppola','Crime',1972,'The story of a powerful Italian-American crime family and their struggles.','the_godfather.png','2024-11-29 10:40:13','2026-05-23 16:54:56'),(3,'Titanic','James Cameron','Romance',1997,'A romantic story set against the tragic sinking of the RMS Titanic.','titanic.png','2024-11-29 10:40:13','2026-05-23 16:54:56'),(4,'The Matrix','The Wachowskis','Action',1999,'A hacker discovers the truth about his reality and his role in the war against its controllers.','matrix.png','2024-11-29 10:40:13','2026-05-23 16:54:56'),(5,'Interstellar','Christopher Nolan','Science Fiction',2014,'A team of explorers travels through a wormhole in space to save humanity.','interstellar.jpg','2024-11-29 10:40:13','2025-11-05 19:21:53'),(27,'Joker','Todd Phillips','Drama',2019,'A failed comedian descends into madness and becomes a symbol of chaos in Gotham City.','joker.png','2026-05-23 16:34:50','2026-05-23 16:34:50'),(28,'Forrest Gump','Robert Zemeckis','Drama',1994,'The extraordinary life of a kind-hearted man who witnesses and influences important historical events.','forrest-gump.png','2026-05-23 16:34:50','2026-05-23 16:34:50'),(29,'Pulp Fiction','Quentin Tarantino','Crime',1994,'The lives of criminals, a boxer and other characters intertwine in a series of unexpected events.','pulp-fiction.png','2026-05-23 16:34:50','2026-05-23 16:34:50'),(30,'Fight Club','David Fincher','Drama',1999,'An insomniac office worker forms an underground fight club that evolves into something much bigger.','fight-club.png','2026-05-23 16:34:50','2026-05-23 16:34:50'),(31,'Avatar','James Cameron','Science Fiction',2009,'A former Marine joins the world of Pandora and becomes torn between duty and a new way of life.','avatar.png','2026-05-23 16:34:50','2026-05-23 16:34:50'),(32,'Gladiator','Ridley Scott','Action',2000,'A betrayed Roman general seeks revenge after being forced to become a gladiator.','gladiator.png','2026-05-23 16:34:50','2026-05-23 16:34:50'),(33,'The Lord of the Rings: The Fellowship of the Ring','Peter Jackson','Fantasy',2001,'A young hobbit begins a dangerous journey to destroy a powerful ring.','the-lord-of-the-rings.png','2026-05-23 16:34:50','2026-05-23 16:34:50'),(34,'La La Land','Damien Chazelle','Musical',2016,'An aspiring actress and a jazz musician fall in love while chasing their dreams in Los Angeles.','la-la-land.png','2026-05-23 16:34:50','2026-05-23 16:34:50'),(35,'The Silence of the Lambs','Jonathan Demme','Thriller',1991,'A young FBI trainee seeks the help of a brilliant imprisoned killer to catch another serial murderer.','the-silence-of-the-lambs.png','2026-05-23 16:34:50','2026-05-23 16:34:50'),(36,'The Truman Show','Peter Weir','Drama',1998,'A man slowly discovers that his entire life is part of a carefully controlled television show.','the-truman-show.png','2026-05-23 16:34:50','2026-05-23 16:34:50'),(41,'Il 7 e l\'8','Giambattista Avellino, Ficarra & Picone',NULL,NULL,'Two Sicilian men discover they were accidentally switched at birth and begin a hilarious journey to uncover the truth about their past.','1779709487009-il-7-e-l-8.png','2026-05-25 11:44:47','2026-05-25 11:44:47');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `movie_id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `vote` tinyint NOT NULL,
  `text` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_movie` (`movie_id`),
  CONSTRAINT `fk_movie` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE,
  CONSTRAINT `reviews_chk_1` CHECK ((`vote` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,1,'Alice',5,'A mind-bending masterpiece.','2024-11-29 10:40:13','2024-11-29 10:40:13'),(2,1,'Bob',4,'Great visuals and a compelling story.','2024-11-29 10:40:13','2024-11-29 10:40:13'),(3,1,'Charlie',3,'Confusing at times, but worth watching.','2024-11-29 10:40:13','2024-11-29 10:40:13'),(4,2,'Diana',5,'The best crime movie ever made.','2024-11-29 10:40:13','2024-11-29 10:40:13'),(5,2,'Eve',5,'A cinematic classic that never gets old.','2024-11-29 10:40:13','2024-11-29 10:40:13'),(8,3,'Hank',4,'Beautiful visuals and a moving plot.','2024-11-29 10:40:13','2024-11-29 10:40:13'),(9,3,'Ivy',3,'A bit too melodramatic for my taste.','2024-11-29 10:40:13','2024-11-29 10:40:13'),(10,4,'Jack',5,'A revolutionary film in every sense.','2024-11-29 10:40:13','2024-11-29 10:40:13'),(11,4,'Karen',4,'Great action and a thought-provoking plot.','2024-11-29 10:40:13','2024-11-29 10:40:13'),(12,4,'Liam',4,'A unique take on reality and perception.','2024-11-29 10:40:13','2024-11-29 10:40:13'),(13,5,'Mia',5,'Visually stunning and emotionally resonant.','2024-11-29 10:40:13','2024-11-29 10:40:13'),(14,5,'Noah',3,'Interesting ideas but too long.','2024-11-29 10:40:13','2024-11-29 10:40:13'),(15,5,'Olivia',4,'A beautiful story about love and survival.','2024-11-29 10:40:13','2024-11-29 10:40:13'),(46,27,'Ethan',5,'A dark and disturbing performance that perfectly captures the character.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(47,27,'Sophia',4,'Emotionally intense and visually stunning.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(48,27,'Lucas',5,'A unique origin story with incredible acting.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(49,28,'Emma',5,'Heartwarming, emotional and unforgettable.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(50,28,'Daniel',5,'One of the most inspiring movies ever made.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(51,28,'Olivia',4,'Simple story but incredibly powerful.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(52,29,'Noah',5,'Brilliant dialogues and iconic scenes.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(53,29,'Mia',5,'A masterpiece of modern cinema.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(54,29,'James',4,'Strange at times, but absolutely original.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(55,30,'Ava',5,'Mind-blowing plot twist and amazing atmosphere.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(56,30,'Benjamin',5,'A cult classic that never gets old.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(57,30,'Charlotte',4,'Dark, chaotic and incredibly smart.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(58,31,'Henry',5,'Visually breathtaking world and effects.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(59,31,'Amelia',4,'A beautiful cinematic experience.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(60,31,'Jack',4,'Amazing visuals even if the story feels familiar.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(61,32,'Alexander',5,'Epic battles and unforgettable performances.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(62,32,'Grace',5,'Powerful story of revenge and honor.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(63,32,'Samuel',4,'One of the best historical movies ever.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(64,33,'Ella',5,'An incredible fantasy adventure from start to finish.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(65,33,'William',5,'Massive world-building and emotional moments.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(66,33,'Harper',5,'Timeless fantasy masterpiece.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(67,34,'Emily',5,'Beautiful music and emotional storytelling.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(68,34,'Michael',4,'A modern musical with fantastic chemistry.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(69,34,'Sofia',5,'Bittersweet ending but absolutely beautiful.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(70,35,'David',5,'Suspenseful and brilliantly acted.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(71,35,'Victoria',5,'Anthony Hopkins was terrifying and unforgettable.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(72,35,'Matthew',4,'One of the greatest thrillers ever made.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(73,36,'Lily',5,'Smart, emotional and surprisingly relevant today.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(74,36,'Christopher',4,'Jim Carrey delivers an incredible performance.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(75,36,'Zoe',5,'A thought-provoking story about reality and freedom.','2026-05-25 08:55:48','2026-05-25 08:55:48'),(76,41,'Damiana',5,'A funny and light-hearted comedy with the unmistakable style of Ficarra and Picone.','2026-05-25 11:48:50','2026-05-25 11:48:50');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-25 19:28:15

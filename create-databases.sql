DROP DATABASE IF EXISTS `sql_universities`;
CREATE DATABASE `sql_universities`;
USE `sql_universities`;

SET NAMES utf8 ;
SET character_set_client = utf8mb4 ;


CREATE TABLE `universities` (
  `university_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `established` date DEFAULT NULL,
  PRIMARY KEY (`university_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `universities` VALUES (1,'Universidade de Coimbra','Coimbra','1290-01-01');
INSERT INTO `universities` VALUES (2,'Universidade do Porto','Porto','1836-01-01');
INSERT INTO `universities` VALUES (3,'Universidade de Lisboa','Lisboa','1911-01-01');
INSERT INTO `universities` VALUES (4,'Universidade do Algarve','Faro','1976-01-01');


CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `university_id` int(11) NOT NULL,
  PRIMARY KEY (`course_id`),
  KEY `FK_university_id` (`university_id`),
  CONSTRAINT `FK_university_id` FOREIGN KEY (`university_id`) REFERENCES `universities` (`university_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `courses` VALUES (1, 'Engenharia Informatica', 1);
INSERT INTO `courses` VALUES (2, 'Engenharia Fisica', 1);
INSERT INTO `courses` VALUES (3, 'Engenharia Biomedica', 2);
INSERT INTO `courses` VALUES (4, 'Medicina', 2);
INSERT INTO `courses` VALUES (5, 'Engenharia Informatica', 3);
INSERT INTO `courses` VALUES (6, 'Medicina', 4);

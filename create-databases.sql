DROP DATABASE IF EXISTS `sql_universities`;
CREATE DATABASE `sql_universities`;
USE `sql_universities`;


CREATE TABLE `universities` (
  `university_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `established` date DEFAULT NULL,
  PRIMARY KEY (`university_id`)
);
INSERT INTO `universities` (name, city, established) VALUES ('Universidade de Coimbra', 'Coimbra', '1290-01-01');
INSERT INTO `universities` (name, city, established) VALUES ('Universidade do Porto', 'Porto','1836-01-01');
INSERT INTO `universities` (name, city, established) VALUES ('Universidade de Lisboa', 'Lisboa','1911-01-01');
INSERT INTO `universities` (name, city, established) VALUES ('Universidade do Algarve', 'Faro', '1976-01-01');


CREATE TABLE `courses` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `university_id` int(11) NOT NULL,
  PRIMARY KEY (`course_id`),
	FOREIGN KEY (`university_id`) REFERENCES universities(`university_id`)
);
INSERT INTO `courses` (name, university_id) VALUES ('Engenharia Informatica', 1);
INSERT INTO `courses` (name, university_id) VALUES ('Engenharia Fisica', 1);
INSERT INTO `courses` (name, university_id) VALUES ('Engenharia Biomedica', 2);
INSERT INTO `courses` (name, university_id) VALUES ('Medicina', 2);
INSERT INTO `courses` (name, university_id) VALUES ('Engenharia Informatica', 3);
INSERT INTO `courses` (name, university_id) VALUES ('Medicina', 4);

SELECT * FROM universities;

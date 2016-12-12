/*
SQLyog Enterprise - MySQL GUI v6.15
MySQL - 5.0.82-community-nt : Database - web
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `web`;

USE `web`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `course_id` bigint(50) NOT NULL,
  `course_name` varchar(50) default NULL,
  `course_startdate` date default NULL,
  `course_enddate` date default NULL,
  `course_schedulingday` int(1) default NULL,
  `course_startlesson` int(2) default NULL,
  `course_endlesson` int(2) default NULL,
  `course_place` varchar(1000) default NULL,
  `course_description` varchar(10000) default NULL,
  `course_outline` varchar(100) default NULL,
  PRIMARY KEY  (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `course` */

/*Table structure for table `course_user` */

DROP TABLE IF EXISTS `course_user`;

CREATE TABLE `course_user` (
  `id` bigint(20) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`id`,`course_id`),
  KEY `FK_course_user2` (`course_id`),
  CONSTRAINT `FK_course_user` FOREIGN KEY (`id`) REFERENCES `user_info` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_course_user2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `course_user` */

/*Table structure for table `course_waiting` */

DROP TABLE IF EXISTS `course_waiting`;

CREATE TABLE `course_waiting` (
  `course_waiting_id` bigint(50) NOT NULL,
  `user_id` bigint(50) default NULL,
  `course_id` bigint(50) default NULL,
  `time_register` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`course_waiting_id`),
  KEY `FK_course_waiting` (`user_id`),
  KEY `FK_course_waiting2` (`course_id`),
  CONSTRAINT `FK_course_waiting2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  CONSTRAINT `FK_course_waiting` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `course_waiting` */

/*Table structure for table `exercise` */

DROP TABLE IF EXISTS `exercise`;

CREATE TABLE `exercise` (
  `exercise_id` bigint(50) NOT NULL,
  `exercise_name` varchar(100) default NULL,
  `exersice_content` varchar(1000) default NULL,
  `exercise_startdate` date default NULL,
  `exercise_starttime` time default NULL,
  `exercise_enddate` date default NULL,
  `exercise_endtime` time default NULL,
  `section_id` bigint(50) default NULL,
  PRIMARY KEY  (`exercise_id`),
  KEY `FK_exercise` (`section_id`),
  CONSTRAINT `FK_exercise` FOREIGN KEY (`section_id`) REFERENCES `section` (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `exercise` */

/*Table structure for table `exercise_user` */

DROP TABLE IF EXISTS `exercise_user`;

CREATE TABLE `exercise_user` (
  `result_id` bigint(50) NOT NULL,
  `exercise_id` bigint(50) default NULL,
  `user_id` bigint(50) default NULL,
  `user_name` varchar(100) default NULL,
  `course_id` bigint(50) default NULL,
  `section_name` varchar(100) default NULL,
  `exercise_name` varchar(100) default NULL,
  `filesubmit` varchar(100) default NULL,
  `timesubmit` timestamp NULL default NULL,
  `description` varchar(100) default NULL,
  `score` double default NULL,
  `review` varchar(100) default NULL,
  PRIMARY KEY  (`result_id`),
  KEY `FK_exercise_user` (`exercise_id`),
  KEY `FK_exercise_user2` (`user_id`),
  CONSTRAINT `FK_exercise_user2` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`),
  CONSTRAINT `FK_exercise_user` FOREIGN KEY (`exercise_id`) REFERENCES `exercise` (`exercise_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `exercise_user` */

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id_message` bigint(100) NOT NULL,
  `NoiDung` varchar(1000) default NULL,
  `id_NguoiGui` bigint(50) default NULL,
  `id_NguoiNhan` bigint(50) default NULL,
  `ThoiGian` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `DaXem` tinyint(1) default NULL,
  PRIMARY KEY  (`id_message`),
  KEY `FK_message` (`id_NguoiGui`),
  KEY `FK_message2` (`id_NguoiNhan`),
  CONSTRAINT `FK_message` FOREIGN KEY (`id_NguoiGui`) REFERENCES `user_info` (`id`),
  CONSTRAINT `FK_message2` FOREIGN KEY (`id_NguoiNhan`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `message` */

insert  into `message`(`id_message`,`NoiDung`,`id_NguoiGui`,`id_NguoiNhan`,`ThoiGian`,`DaXem`) values (12313,'đsfsd',1,2,'2016-12-09 23:43:42',NULL),(45435,'sfdsf',2,1,'2016-12-09 23:43:45',NULL),(345435,'fsfsdfdsf',2,1,'2016-12-09 23:43:49',1),(43543543,'dfsfsdfdsf',0,1,'2016-12-09 23:43:47',NULL),(1481306015435,'con mẹ mày',1,2,'2016-12-10 00:53:35',0),(1481306093467,'ádsad',1,2,'2016-12-10 00:54:53',0),(1481306351465,'đasadasd',1,0,'2016-12-10 00:59:11',0),(1481306447320,'ádsad',1,0,'2016-12-10 01:00:47',0),(1481306565131,' sadsadsad',1,0,'2016-12-10 01:02:45',0),(1481306595236,' ',1,0,'2016-12-10 01:03:15',0),(1481306864931,' ádsad',1,2,'2016-12-10 01:07:44',0),(1481306978124,'ádsadsad',1,0,'2016-12-10 01:09:38',0),(1481336440502,'ádsadsa',1,0,'2016-12-10 09:20:40',0),(1481337053999,'adasdsad',1,1,'2016-12-10 09:30:53',0),(1481337073580,'ádsad',2,2,'2016-12-10 09:31:13',0),(1481337430903,'hglj',2,1,'2016-12-10 09:37:10',0),(1481337457912,'hvgkhg',1,2,'2016-12-10 09:37:37',0),(1481351509556,'xfgg',2,0,'2016-12-10 13:31:49',0),(1481351653954,'dsadsa',2,0,'2016-12-10 13:34:13',0),(1481351871090,'ádsadsd',1,0,'2016-12-10 13:37:51',0),(1481351888509,' adsad',1,0,'2016-12-10 13:38:08',0),(1481351909561,'ádsad',1,0,'2016-12-10 13:38:29',0),(1481352484812,'a',2,0,'2016-12-10 13:48:04',0),(1481352492152,' adsa',2,0,'2016-12-10 13:48:12',0);

/*Table structure for table `quiz` */

DROP TABLE IF EXISTS `quiz`;

CREATE TABLE `quiz` (
  `id` bigint(50) NOT NULL auto_increment,
  `quiz_name` varchar(1000) collate utf8_unicode_ci default NULL,
  `start_date` date default NULL,
  `end_date` date default NULL,
  `time` time default NULL,
  `count` int(11) default NULL,
  `description` varchar(10000) collate utf8_unicode_ci default NULL,
  `section_id` bigint(50) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_quiz` (`section_id`),
  CONSTRAINT `FK_quiz` FOREIGN KEY (`section_id`) REFERENCES `section` (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `quiz` */

/*Table structure for table `quiz_question` */

DROP TABLE IF EXISTS `quiz_question`;

CREATE TABLE `quiz_question` (
  `id` bigint(50) NOT NULL auto_increment,
  `number` int(11) default NULL,
  `question` varchar(1000) collate utf8_unicode_ci default NULL,
  `option1` varchar(500) collate utf8_unicode_ci default NULL,
  `option2` varchar(500) collate utf8_unicode_ci default NULL,
  `option3` varchar(500) collate utf8_unicode_ci default NULL,
  `option4` varchar(500) collate utf8_unicode_ci default NULL,
  `answer` varchar(10) collate utf8_unicode_ci default NULL,
  `quiz_id` bigint(50) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_quiz_question` (`quiz_id`),
  CONSTRAINT `FK_quiz_question` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `quiz_question` */

/*Table structure for table `quiz_result` */

DROP TABLE IF EXISTS `quiz_result`;

CREATE TABLE `quiz_result` (
  `result_id` bigint(50) NOT NULL,
  `socaudung` int(10) default NULL,
  `tongsocau` int(10) default NULL,
  `scores` double default NULL,
  `timework` time default NULL,
  `timesubmit` timestamp NULL default NULL,
  `quiz_id` bigint(50) default NULL,
  `user_id` bigint(50) default NULL,
  PRIMARY KEY  (`result_id`),
  KEY `FK_quiz_result` (`quiz_id`),
  KEY `FK_quiz_result2` (`user_id`),
  CONSTRAINT `FK_quiz_result2` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`),
  CONSTRAINT `FK_quiz_result` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `quiz_result` */

/*Table structure for table `register_course` */

DROP TABLE IF EXISTS `register_course`;

CREATE TABLE `register_course` (
  `user_id` bigint(50) NOT NULL default '0',
  `course_id` bigint(50) NOT NULL default '0',
  `register_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`user_id`,`course_id`),
  CONSTRAINT `KN_register_course` FOREIGN KEY (`user_id`) REFERENCES `course` (`course_id`),
  CONSTRAINT `KN_register_user_info` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `register_course` */

/*Table structure for table `resources` */

DROP TABLE IF EXISTS `resources`;

CREATE TABLE `resources` (
  `resources_id` bigint(50) NOT NULL,
  `resources_name` varchar(1000) default NULL,
  `resources_type` varchar(100) default NULL,
  `section_id` bigint(50) default NULL,
  PRIMARY KEY  (`resources_id`),
  KEY `FK_resources` (`section_id`),
  CONSTRAINT `FK_resources` FOREIGN KEY (`section_id`) REFERENCES `section` (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `resources` */

/*Table structure for table `review` */

DROP TABLE IF EXISTS `review`;

CREATE TABLE `review` (
  `review_id` bigint(50) default NULL,
  `student_id` bigint(50) NOT NULL,
  `course_id` bigint(50) NOT NULL,
  `teacher_id` bigint(50) default NULL,
  `opinion` varchar(1000) default NULL,
  PRIMARY KEY  (`student_id`,`course_id`),
  KEY `FK_review3` (`course_id`),
  KEY `FK_review4` (`teacher_id`),
  KEY `FK_review` (`review_id`),
  CONSTRAINT `FK_review` FOREIGN KEY (`review_id`) REFERENCES `review_answer` (`review_id`),
  CONSTRAINT `FK_review2` FOREIGN KEY (`student_id`) REFERENCES `user_info` (`id`),
  CONSTRAINT `FK_review3` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  CONSTRAINT `FK_review4` FOREIGN KEY (`teacher_id`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `review` */

/*Table structure for table `review_answer` */

DROP TABLE IF EXISTS `review_answer`;

CREATE TABLE `review_answer` (
  `review_id` bigint(50) NOT NULL,
  `review_option` int(50) default NULL,
  `review_question_id` bigint(50) default NULL,
  PRIMARY KEY  (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `review_answer` */

/*Table structure for table `review_question` */

DROP TABLE IF EXISTS `review_question`;

CREATE TABLE `review_question` (
  `number` int(10) NOT NULL,
  `question` varchar(1000) default NULL,
  PRIMARY KEY  (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `review_question` */

/*Table structure for table `section` */

DROP TABLE IF EXISTS `section`;

CREATE TABLE `section` (
  `section_id` bigint(50) NOT NULL,
  `section_name` varchar(100) default NULL,
  `section_content` varchar(10000) default NULL,
  `course_id` bigint(50) default NULL,
  PRIMARY KEY  (`section_id`),
  KEY `FK_section` (`course_id`),
  CONSTRAINT `FK_section` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `section` */

/*Table structure for table `url` */

DROP TABLE IF EXISTS `url`;

CREATE TABLE `url` (
  `url_id` bigint(50) NOT NULL,
  `url_name` varchar(1000) default NULL,
  `section_id` bigint(50) default NULL,
  PRIMARY KEY  (`url_id`),
  KEY `FK_url` (`section_id`),
  CONSTRAINT `FK_url` FOREIGN KEY (`section_id`) REFERENCES `section` (`section_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `url` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_name` varchar(50) NOT NULL,
  `user_pass` varchar(50) default NULL,
  `user_email` varchar(100) default NULL,
  `user_id` bigint(50) default NULL,
  PRIMARY KEY  (`user_name`),
  KEY `FK_user` (`user_id`),
  CONSTRAINT `FK_user` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user_name`,`user_pass`,`user_email`,`user_id`) values ('admin','123','admin@gmail.com',0),('ngochai','123','congtuhot9.9@gmail.com',1),('ngochai1','123','dfdsf@dfdsf',1479556785432),('ngochai2','123','sdsadasd@gmail.com',1479808415578),('sadsadsad','123','sdsad@gmail.com',1479809609519),('tuananh','123','tuananh@gmail.com',2);

/*Table structure for table `user_info` */

DROP TABLE IF EXISTS `user_info`;

CREATE TABLE `user_info` (
  `id` bigint(50) NOT NULL,
  `ten` varchar(100) default NULL,
  `sodienthoai` varchar(11) default NULL,
  `gioitinh` int(1) default NULL,
  `ngaysinh` date default NULL,
  `email` varchar(100) default NULL,
  `anhdaidien` varchar(1000) default NULL,
  `diachi` varchar(1000) default NULL,
  `quyen` int(1) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_info` */

insert  into `user_info`(`id`,`ten`,`sodienthoai`,`gioitinh`,`ngaysinh`,`email`,`anhdaidien`,`diachi`,`quyen`) values (0,'Admin','sadsadsad',0,'1946-01-01','sdsad@gmail.com',NULL,NULL,0),(1,'Nguyễn Ngọc Hải','1123',0,'1995-09-25','congtuhot9.9@gmail.com','ImagesWithdrawalSchedule.jpg','Đồng Nai',1),(2,'Nguyễn Tuấn Anh','44545',1,'1996-01-01','tuananh@gmail.com','15233587_632067590311636_101693172_o.jpg','NEw YORK',2),(5435435,'ádsadsa','dsadsadsad',0,'1946-01-01','sdsad@gmail.com',NULL,NULL,1),(23432432,'sadsa','dsadsad',0,'1946-01-01','sdsad@gmail.com',NULL,NULL,1),(32132132,'sdadsadsa','dsadada',0,'1946-01-01','sdsad@gmail.com',NULL,NULL,1),(1479556785432,'ngochai1','123213',0,'2010-02-02','dfdsf@dfdsf',NULL,NULL,2),(1479808415578,'hai','567',1,'1948-01-01','sdsadasd@gmail.com',NULL,NULL,2),(1479809609519,'sadsa','dsadsad',0,'1946-01-01','sdsad@gmail.com',NULL,NULL,2);

/* Procedure structure for procedure `sp_getquesttionid` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_getquesttionid` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getquesttionid`(OUT id int)
BEGIN
declare temp  INT DEFAULT 1;  
set id = 0;
 while temp!=0 DO
	select id = id +1 ;
	select COUNT(*) into @temp from quiz_question where quiz_question.id= @id;
	end WHILE;
  END */$$
DELIMITER ;

/* Procedure structure for procedure `sp_questionid` */

/*!50003 DROP PROCEDURE IF EXISTS  `sp_questionid` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_questionid`()
BEGIN   
    DECLARE temp  INT DEFAULT 1;  
    DECLARE id INT DEFAULT 0;
    while temp!=0 DO
	set id=id+1;
	select temp=COUNT(*) from quiz_question where quiz_question.id= id;
end WHILE;
select id;
END */$$
DELIMITER ;

/* Function  structure for function  `f_questionid` */

/*!50003 DROP FUNCTION IF EXISTS `f_questionid` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `f_questionid`() RETURNS int(11)
    READS SQL DATA
begin
   declare temp  INT DEFAULT 1;  
DECLARE id INT DEFAULT 0;
   while temp!=0 DO
	select @id +1 into @id;
	select COUNT(*) into @temp from quiz_question where quiz_question.id= @id;
	end WHILE;
  return @id; 
end */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

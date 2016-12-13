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
  PRIMARY KEY  (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `course` */

LOCK TABLES `course` WRITE;

insert  into `course`(`course_id`,`course_name`,`course_startdate`,`course_enddate`,`course_schedulingday`,`course_startlesson`,`course_endlesson`,`course_place`,`course_description`) values (1481535157691,'Kỹ Thuật Lập Trình','2016-12-12','2016-12-12',1,1,2,'TPHCM','học lập trình'),(1481535201060,'Hệ quản trị cơ sở dữ liệu','1931-02-01','1931-02-02',1,2,1,'sd','á'),(1481540701085,'Toán cao cấp A1','2011-08-22','2011-12-15',1,7,11,'C404',''),(1481546597939,'Lập trình web','2011-02-01','2011-07-05',1,2,5,'nhà trung tâm','');

UNLOCK TABLES;

/*Table structure for table `course_user` */

DROP TABLE IF EXISTS `course_user`;

CREATE TABLE `course_user` (
  `id` bigint(20) NOT NULL,
  `course_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`id`,`course_id`),
  KEY `FK_course_user2` (`course_id`),
  CONSTRAINT `FK_course_user` FOREIGN KEY (`id`) REFERENCES `user_info` (`id`),
  CONSTRAINT `FK_course_user2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `course_user` */

LOCK TABLES `course_user` WRITE;

insert  into `course_user`(`id`,`course_id`) values (1481534619210,1481535157691),(1481534619210,1481535201060),(1481536424246,1481535201060),(1481534619210,1481540701085),(1481534619210,1481546597939),(1481536424246,1481546597939);

UNLOCK TABLES;

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
  CONSTRAINT `FK_course_waiting` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`),
  CONSTRAINT `FK_course_waiting2` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `course_waiting` */

LOCK TABLES `course_waiting` WRITE;

insert  into `course_waiting`(`course_waiting_id`,`user_id`,`course_id`,`time_register`) values (1481634824343,1481536424246,1481535157691,'2016-12-13 20:13:44');

UNLOCK TABLES;

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

LOCK TABLES `exercise` WRITE;

insert  into `exercise`(`exercise_id`,`exercise_name`,`exersice_content`,`exercise_startdate`,`exercise_starttime`,`exercise_enddate`,`exercise_endtime`,`section_id`) values (1481541347342,'Bài tập chương 1','Hoàn thành toàn bộ 10 câu tích phân','2016-12-09','00:00:00','2016-12-19','12:00:00',1481537044915),(1481541864336,'Bài tập chương 1','Hoàn thành 10 câu tích phân.','2016-12-12','00:00:00','2016-12-19','12:00:00',1481540763669),(1481546674934,'Bài tập chương 1','Các em làm bài tập về html','2016-12-13','11:11:00','2016-12-14','21:09:00',1481546629651),(1481638603687,'ds','ada','2016-12-13','15:34:00','2016-12-13','02:13:00',1481638576733);

UNLOCK TABLES;

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
  CONSTRAINT `FK_exercise_user` FOREIGN KEY (`exercise_id`) REFERENCES `exercise` (`exercise_id`),
  CONSTRAINT `FK_exercise_user2` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `exercise_user` */

LOCK TABLES `exercise_user` WRITE;

insert  into `exercise_user`(`result_id`,`exercise_id`,`user_id`,`user_name`,`course_id`,`section_name`,`exercise_name`,`filesubmit`,`timesubmit`,`description`,`score`,`review`) values (1481543333320,1481541864336,1481536424246,'Nguyễn Tuấn Anh',1481540701085,'Chương 1 - Tích phân ','Bài tập chương 1','BTChuong1.txt','2016-12-12 18:53:05','em chua lam du 10 cau.',9,'lần sau em cố gắng hơn nhé !'),(1481547506434,1481546674934,1481536424246,'Nguyễn Tuấn Anh2',1481546597939,'Chương 1','Bài tập chương 1','chuyen-de-html.pdf','2016-12-12 19:59:41','em chua xong',9,'lần sau làm tốt hơn nhé e!'),(1481638746558,1481638603687,1481536424246,'Nguyễn Tuấn Anh2',1481535201060,'lịch biểu','ds','ltweb.docx','2016-12-13 21:19:06','',0,' ');

UNLOCK TABLES;

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

LOCK TABLES `message` WRITE;

insert  into `message`(`id_message`,`NoiDung`,`id_NguoiGui`,`id_NguoiNhan`,`ThoiGian`,`DaXem`) values (1481543080066,'chào admin',1481534619210,0,'2016-12-12 18:44:40',0),(1481545209978,'Em nói lớp mai được nghỉ dùm thầy nha!',1481534619210,1481536424246,'2016-12-12 19:20:09',0),(1481545334316,'Mai họp nha thầy!',0,1481534619210,'2016-12-12 19:22:14',0),(1481547045119,'chào',1481534619210,0,'2016-12-12 19:50:45',0),(1481547100557,'xin chào',1481534619210,0,'2016-12-12 19:51:40',0),(1481547111328,' chào em!',1481534619210,1481536424246,'2016-12-12 19:51:51',0),(1481547128219,'chào',1481536424246,0,'2016-12-12 19:52:08',0),(1481636489710,'Admin đã chấp nhận đăng ký khóa học của bạn!',0,1481536424246,'2016-12-13 20:41:29',0),(1481650442356,'ádsad',1481534619210,1481536424246,'2016-12-14 00:34:02',0),(1481651053561,' xcx',1481534619210,1481536424246,'2016-12-14 00:44:13',0);

UNLOCK TABLES;

/*Table structure for table `outline` */

DROP TABLE IF EXISTS `outline`;

CREATE TABLE `outline` (
  `outline` varchar(100) default NULL,
  `type` varchar(10) default NULL,
  `course_id` bigint(50) default NULL,
  KEY `FK_outline` (`course_id`),
  CONSTRAINT `FK_outline` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `outline` */

LOCK TABLES `outline` WRITE;

insert  into `outline`(`outline`,`type`,`course_id`) values ('NDungPPChuong1.docx','ocx',1481546597939);

UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=1481638670419 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `quiz` */

LOCK TABLES `quiz` WRITE;

insert  into `quiz`(`id`,`quiz_name`,`start_date`,`end_date`,`time`,`count`,`description`,`section_id`) values (1481542698524,'Bài thi trắc nghiệm số 1','2016-12-12','2016-12-19','00:15:00',3,'Bài thi trắc nghiệm đầu tay',1481540763669),(1481546946497,'Bài trắc nghiệm 1','2016-12-12','2016-12-12','01:00:00',2,'',1481546629651),(1481638670418,'qưewq','2016-12-13','2016-12-13','01:00:00',1,'qeqw',1481638576733);

UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=1481638670420 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `quiz_question` */

LOCK TABLES `quiz_question` WRITE;

insert  into `quiz_question`(`id`,`number`,`question`,`option1`,`option2`,`option3`,`option4`,`answer`,`quiz_id`) values (1481542698525,1,'Tích phân là gì','một hiện tượng vật lý','Một hiện tượng thời tiết','Tính nết con người','Kiến thức toán học','D',1481542698524),(1481542698528,2,'Albert Enstein là ai?','Bác sĩ','Thợ hồ','Nhà bác học ','Thợ sửa xe','C',1481542698524),(1481542698529,3,'1 + 1 - 2 * 3 + 4 = ?','0','4','8','12','A',1481542698524),(1481546946499,1,'thẻ a là gì','1 thẻ văn bản','thẻ hình','hàm','đường đãn','D',1481546946497),(1481546946647,2,'thẻ img là gì','thẻ hình','hàm','đường dẫn','văn bản','A',1481546946497),(1481638670419,1,'qưeqw','eqw','eq','eq','qeqw','D',1481638670418);

UNLOCK TABLES;

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
  CONSTRAINT `FK_quiz_result` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`id`),
  CONSTRAINT `FK_quiz_result2` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `quiz_result` */

LOCK TABLES `quiz_result` WRITE;

insert  into `quiz_result`(`result_id`,`socaudung`,`tongsocau`,`scores`,`timework`,`timesubmit`,`quiz_id`,`user_id`) values (1481542751956,2,3,6.66666666666667,'00:00:17','2016-12-12 18:39:11',1481542698524,1481536424246),(1481542830619,0,3,0,'00:00:09','2016-12-12 18:40:30',1481542698524,1481536424246),(1481547621060,1,2,5,'00:00:08','2016-12-12 20:00:21',1481546946497,1481536424246),(1481638775844,0,1,0,'00:00:02','2016-12-13 21:19:35',1481638670418,1481536424246);

UNLOCK TABLES;

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

LOCK TABLES `register_course` WRITE;

UNLOCK TABLES;

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

LOCK TABLES `resources` WRITE;

insert  into `resources`(`resources_id`,`resources_name`,`resources_type`,`section_id`) values (1481542091175,'chuyen-de-tich-phan.pdf','pdf',1481540763669),(1481546690881,'HDSD Phần Mềm.docx','ocx',1481546629651),(1481638650644,'ltweb.docx','ocx',1481638576733);

UNLOCK TABLES;

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
  CONSTRAINT `FK_review2` FOREIGN KEY (`student_id`) REFERENCES `user_info` (`id`),
  CONSTRAINT `FK_review3` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  CONSTRAINT `FK_review4` FOREIGN KEY (`teacher_id`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `review` */

LOCK TABLES `review` WRITE;

UNLOCK TABLES;

/*Table structure for table `review_answer` */

DROP TABLE IF EXISTS `review_answer`;

CREATE TABLE `review_answer` (
  `review_id` bigint(50) default NULL,
  `review_option` int(50) default NULL,
  `review_question_id` bigint(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `review_answer` */

LOCK TABLES `review_answer` WRITE;

UNLOCK TABLES;

/*Table structure for table `review_question` */

DROP TABLE IF EXISTS `review_question`;

CREATE TABLE `review_question` (
  `number` int(10) NOT NULL,
  `question` varchar(1000) default NULL,
  PRIMARY KEY  (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `review_question` */

LOCK TABLES `review_question` WRITE;

insert  into `review_question`(`number`,`question`) values (1,' Tôi được giới thiệu rõ ràng về đề cương chi tiết môn học'),(2,' Giảng viên dạy dễ hiểu'),(3,' Giảng viên nhiệt tình trả lời mọi câu hỏi của sinh viên'),(4,'Giảng viên thường liên hệ thực tế trong quá trình giảng dạy'),(5,'Giảng viên công bằng, khách quan trong đánh giá sinh viên và giải quyết khiếu nại thỏa đáng (nếu có)'),(6,' Nội dung giảng dạy bám sát đề cương chi tiết'),(7,' Giảng viên lên lớp đúng giờ, dạy đủ số tiết theo qui định'),(8,' Giảng viên quan tâm và giúp đỡ khi sinh viên gặp khó khăn'),(9,'Giảng viên tự tin trên lớp'),(10,'Nhìn chung, tôi hài lòng với giảng viên');

UNLOCK TABLES;

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

LOCK TABLES `section` WRITE;

insert  into `section`(`section_id`,`section_name`,`section_content`,`course_id`) values (1481537044915,'Chương 1 - Tích phân','Học những kiến thức cơ bản về tích phân.',1481535157691),(1481540763669,'Chương 1 - Tích phân ','',1481540701085),(1481546629651,'Chương 1','HTML cơ bản',1481546597939),(1481638576733,'lịch biểu','tài liệu lịch biể bên dưới',1481535201060);

UNLOCK TABLES;

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

LOCK TABLES `url` WRITE;

insert  into `url`(`url_id`,`url_name`,`section_id`) values (1481542190056,'T15aqfVozM8',1481540763669),(1481546820445,'XAPPTnAJ5Pk',1481546629651);

UNLOCK TABLES;

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

LOCK TABLES `user` WRITE;

insert  into `user`(`user_name`,`user_pass`,`user_email`,`user_id`) values ('admin','admin','14110045@student.hcmute.edu.vn',0),('hanh','123','hanh@gmail.com',1481636869179),('khanh','123','khanh@gmail.com',1481642857875),('ngochai','123','ngochai@student.hcmute.edu.vn',1481534619210),('quang','123','quang@gmail.com',1481636441743),('trungdung','123','trungdung@gmail.com',1481642819106),('tuananh','123','tuananh@gmail.com',1481536424246);

UNLOCK TABLES;

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

LOCK TABLES `user_info` WRITE;

insert  into `user_info`(`id`,`ten`,`sodienthoai`,`gioitinh`,`ngaysinh`,`email`,`anhdaidien`,`diachi`,`quyen`) values (0,'Admin','01678868567',0,'1995-09-25','14110045@student.hcmute.edu.vn',NULL,'Đồng Nai',0),(1481534619210,'Nguyễn Ngọc Hải','01678868523',0,'1995-09-25','14110045@student.hcmute.edu.vn','183433.jpg','Đồng Nai',1),(1481536424246,'Nguyễn Tuấn Anh','0167545312',0,'1996-04-09','tuananh@gmail.com','659389.jpg','TPHCM2',2),(1481636441743,'Trần Đại Quang','01654723213',0,'1999-01-01','quang@gmail.com',NULL,NULL,0),(1481636869179,'Hạnh Nguyễn','01654323456',1,'1933-01-01','hanh@gmail.com','null','Cần Giờ',2),(1481642819106,'Nguyễn Trung Dũng','01654231234',0,'1995-01-01','trungdung@gmail.com',NULL,NULL,0),(1481642857875,'Nguyễn Văn Khánh','01654982354',0,'1995-01-01','khanh@gmail.com',NULL,NULL,2);

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;

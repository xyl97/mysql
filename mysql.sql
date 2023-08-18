/*
SQLyog Ultimate v8.32 
MySQL - 5.5.27 : Database - hungli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`hungli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `hungli`;

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(20) DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`id`,`role_name`) values (1,'管理员'),(2,'用户');

/*Table structure for table `staff` */

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(30) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL COMMENT '可选范围[男，女]',
  `age` varchar(2) DEFAULT NULL,
  `dept_name` varchar(20) DEFAULT NULL COMMENT '可选范围[业务部，后勤部，人事部]',
  `emp_degree_name` varchar(20) DEFAULT NULL COMMENT '可选范围[大专，本科，研究生]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=750 DEFAULT CHARSET=utf8;

/*Data for the table `staff` */

insert  into `staff`(`id`,`emp_name`,`sex`,`age`,`dept_name`,`emp_degree_name`) values (737,'张一','男','25','业务部','本科'),(738,'张二','女','26','人事部','本科'),(739,'张三','男','27','后勤部','大专'),(740,'张四','女','28','人事部','大专'),(741,'张五','男','29','后勤部','大专'),(742,'张六','女','29','后勤部','本科'),(743,'张七','男','33','业务部','研究生'),(744,'张八','男','33','业务部','本科'),(745,'张九','女','33','业务部','大专'),(746,'李一','女','45','业务部','研究生'),(747,'李二','女','19','人事部','本科'),(748,'李三','男','28','业务部','研究生'),(749,'王一二','男','45','后勤部','本科');

/*Table structure for table `test` */

DROP TABLE IF EXISTS `test`;

CREATE TABLE `test` (
  `emp_name` varchar(20) DEFAULT NULL,
  `sex` varchar(20) DEFAULT NULL,
  `age` varchar(20) DEFAULT NULL,
  `dept_name` varchar(20) DEFAULT NULL,
  `emp_degree_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `test` */

insert  into `test`(`emp_name`,`sex`,`age`,`dept_name`,`emp_degree_name`) values ('emp_name','sex','age','dept_name','emp_degree_name\r'),('','','25','ҵ',''),('','Ů','26','',''),('','','27','',''),('','Ů','28','',''),('','','29','',''),('','Ů','29','',''),('','','33','ҵ',''),('','','32','ҵ',''),('','Ů','33','ҵ',''),('','Ů','45','ҵ',''),('','Ů','19','',''),('','','28','ҵ',''),('','Ů','46','',''),('','','58','ҵ',''),('','Ů','22','',''),('','','26','',''),('','','25','',''),('','Ů','29','',''),('','','45','',''),('','Ů','21','ҵ',''),('','','21','ҵ',''),('','','23','ҵ',''),('','Ů','33','ҵ',''),('','','45','',''),('','','35','ҵ',''),('','','41','',''),('','Ů','25','ҵ',''),('','','26','',''),('','','20','',''),('','Ů','21','',''),('','','19','',''),('','Ů','35','',''),('','','24','ҵ',''),('','','29','ҵ',''),('','Ů','33','ҵ',''),('','','45','ҵ','');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT NULL,
  `user_password` varchar(20) DEFAULT NULL,
  `user_role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`user_name`,`user_password`,`user_role`) values (1,'admin','123','1'),(2,'rr','222','2');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

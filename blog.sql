/*
SQLyog Professional v12.08 (64 bit)
MySQL - 8.0.20 : Database - blog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`blog` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `blog`;

/*Table structure for table `article` */

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '文章标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT '文章内容',
  `pubtime` timestamp NOT NULL DEFAULT '2000-01-20 10:00:00' COMMENT '发布时间',
  `date` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '存档时间',
  `brief` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT '简介',
  `tag_id` tinyint NOT NULL COMMENT '分类id',
  `hits` int NOT NULL DEFAULT '0' COMMENT '点击次数',
  `bad` int NOT NULL DEFAULT '0' COMMENT '不好',
  `good` int NOT NULL DEFAULT '0' COMMENT '点赞',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '文章logo',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `article` */

insert  into `article`(`id`,`title`,`content`,`pubtime`,`date`,`brief`,`tag_id`,`hits`,`bad`,`good`,`image`) values (4,'SpringBoot','\n                    \n> * 最近开始学习 springboot , 进行基本框架的搭建。\n\n* 1.访问 https://start.spring.io\n\n* 2.生成zip包下载到本地\n\n* 3.解压项目包，并用IDE以Maven项目导入\n* 4.Idea导入设置:\n    ```\n    菜单中选择File–>New–>Project from Existing Sources...\n    选择解压后的项目文件夹，点击OK\n    点击Import project from external model并选择Maven，点击Next到底为止。\n    若你的环境有多个版本的JDK，注意到选择Java SDK的时候请选择Java 7以上的版本\n    ```\n* 5.引入web模块\n    spring-boot-starter：核心模块，包括自动配置支持、日志和YAML\n    spring-boot-starter-test：测试模块，包括JUnit、Hamcrest、Mockito\n    ```\n    <dependencies>\n        <dependency>\n            <groupId>org.springframework.boot</groupId>\n            <artifactId>spring-boot-starter</artifactId>\n        </dependency>\n        <dependency>\n            <groupId>org.springframework.boot</groupId>\n            <artifactId>spring-boot-starter-test</artifactId>\n            <scope>test</scope>\n        </dependency>\n        <dependency>\n        <groupId>org.springframework.boot</groupId>\n        <artifactId>spring-boot-starter-web</artifactId>\n        </dependency>\n    </dependencies>\n    ```\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n                \n                \n                \n                \n                ','2020-05-17 10:45:47','2020年05月','SpringBoot',1,18,0,6,'/images/php.jpg');

/*Table structure for table `resource` */

DROP TABLE IF EXISTS `resource`;

CREATE TABLE `resource` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '资源名称',
  `brief` text COMMENT '资源简介 ',
  `links` varchar(255) DEFAULT NULL COMMENT '资源链接',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `resource` */

/*Table structure for table `tags` */

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tagname` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '分类名称',
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT 'tag的图片',
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tags` */

insert  into `tags`(`id`,`tagname`,`logo`,`created_at`) values (1,'JAVA','/images/java.jpg','2020-05-17 21:55:11'),(4,'NodeJs','/images/nodejs.png','2020-05-17 21:33:58');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT '' COMMENT '登录名称',
  `password` varchar(255) DEFAULT '' COMMENT '密码',
  `created_at` int DEFAULT NULL,
  `updated_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`created_at`,`updated_at`) values (1,'gaoxuxu','123456',NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

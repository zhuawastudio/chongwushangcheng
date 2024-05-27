/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - chongwushangcheng
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`chongwushangcheng` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `chongwushangcheng`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,2,'收货人1','17703786901','地址1',1,'2023-04-04 10:17:21','2023-04-04 10:17:21','2023-04-04 10:17:21'),(2,2,'收货人2','17703786902','地址2',1,'2023-04-04 10:17:21','2023-04-04 10:17:21','2023-04-04 10:17:21'),(3,2,'收货人3','17703786903','地址3',1,'2023-04-04 10:17:21','2023-04-04 10:17:21','2023-04-04 10:17:21'),(4,2,'收货人4','17703786904','地址4',1,'2023-04-04 10:17:21','2023-04-04 10:17:21','2023-04-04 10:17:21'),(5,3,'收货人5','17703786905','地址5',1,'2023-04-04 10:17:21','2023-04-04 10:17:21','2023-04-04 10:17:21'),(6,2,'收货人6','17703786906','地址6',1,'2023-04-04 10:17:21','2023-04-04 10:17:21','2023-04-04 10:17:21'),(7,1,'收货人7','17703786907','地址7',1,'2023-04-04 10:17:21','2023-04-04 10:17:21','2023-04-04 10:17:21'),(8,1,'收货人8','17703786908','地址8',1,'2023-04-04 10:17:21','2023-04-04 10:17:21','2023-04-04 10:17:21'),(9,2,'收货人9','17703786909','地址9',1,'2023-04-04 10:17:21','2023-04-04 10:17:21','2023-04-04 10:17:21'),(10,3,'收货人10','17703786910','地址10',1,'2023-04-04 10:17:21','2023-04-04 10:17:21','2023-04-04 10:17:21'),(11,1,'收货人11','17703786911','地址11',1,'2023-04-04 10:17:21','2023-04-04 10:17:21','2023-04-04 10:17:21'),(12,2,'收货人12','17703786912','地址12',1,'2023-04-04 10:17:21','2023-04-04 10:17:21','2023-04-04 10:17:21'),(13,2,'收货人13','17703786913','地址13',1,'2023-04-04 10:17:21','2023-04-04 10:17:21','2023-04-04 10:17:21'),(14,1,'收货人14','17703786914','地址14',1,'2023-04-04 10:17:21','2023-04-04 10:17:21','2023-04-04 10:17:21');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-04 10:16:27'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-04 10:16:27'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-04 10:16:27'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-04 10:16:27'),(5,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-04 10:16:27'),(6,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-04 10:16:27'),(7,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-04-04 10:16:27'),(8,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-04-04 10:16:27'),(9,'shangjia_xingji_types','商家信用类型',1,'一级',NULL,NULL,'2023-04-04 10:16:27'),(10,'shangjia_xingji_types','商家信用类型',2,'二级',NULL,NULL,'2023-04-04 10:16:27'),(11,'shangjia_xingji_types','商家信用类型',3,'三级',NULL,NULL,'2023-04-04 10:16:27'),(12,'shangpin_types','宠物用品分类',1,'宠物用品分类1',NULL,NULL,'2023-04-04 10:16:27'),(13,'shangpin_types','宠物用品分类',2,'宠物用品分类2',NULL,NULL,'2023-04-04 10:16:27'),(14,'shangpin_types','宠物用品分类',3,'宠物用品分类3',NULL,NULL,'2023-04-04 10:16:27'),(15,'shangpin_types','宠物用品分类',4,'宠物用品分类4',NULL,NULL,'2023-04-04 10:16:27'),(16,'shangpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-04 10:16:27'),(17,'shangpin_order_types','订单类型',101,'已支付',NULL,NULL,'2023-04-04 10:16:27'),(18,'shangpin_order_types','订单类型',102,'已退款',NULL,NULL,'2023-04-04 10:16:27'),(19,'shangpin_order_types','订单类型',103,'已发货',NULL,NULL,'2023-04-04 10:16:27'),(20,'shangpin_order_types','订单类型',104,'已收货',NULL,NULL,'2023-04-04 10:16:27'),(21,'shangpin_order_types','订单类型',105,'已评价',NULL,NULL,'2023-04-04 10:16:27');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='宠物论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`shangjia_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,NULL,'发布内容1',3,1,'2023-04-04 10:17:21','2023-04-04 10:17:21','2023-04-04 10:17:21'),(2,'帖子标题2',1,NULL,NULL,'发布内容2',58,1,'2023-04-04 10:17:21','2023-04-04 10:17:21','2023-04-04 10:17:21'),(3,'帖子标题3',3,NULL,NULL,'发布内容3',262,1,'2023-04-04 10:17:21','2023-04-04 10:17:21','2023-04-04 10:17:21'),(4,'帖子标题4',3,NULL,NULL,'发布内容4',349,1,'2023-04-04 10:17:21','2023-04-04 10:17:21','2023-04-04 10:17:21'),(5,'帖子标题5',3,NULL,NULL,'发布内容5',236,1,'2023-04-04 10:17:21','2023-04-04 10:17:21','2023-04-04 10:17:21'),(6,'帖子标题6',2,NULL,NULL,'发布内容6',278,1,'2023-04-04 10:17:21','2023-04-04 10:17:21','2023-04-04 10:17:21'),(7,'帖子标题7',2,NULL,NULL,'发布内容7',386,1,'2023-04-04 10:17:21','2023-04-04 10:17:21','2023-04-04 10:17:21'),(8,'帖子标题8',3,NULL,NULL,'发布内容8',66,1,'2023-04-04 10:17:21','2023-04-04 10:17:21','2023-04-04 10:17:21'),(9,'帖子标题9',1,NULL,NULL,'发布内容9',244,1,'2023-04-04 10:17:21','2023-04-04 10:17:21','2023-04-04 10:17:21'),(10,'帖子标题10',1,NULL,NULL,'发布内容10',432,1,'2023-04-04 10:17:21','2023-04-04 10:17:21','2023-04-04 10:17:21'),(11,'帖子标题11',3,NULL,NULL,'发布内容11',208,1,'2023-04-04 10:17:21','2023-04-04 10:17:21','2023-04-04 10:17:21'),(12,'帖子标题12',3,NULL,NULL,'发布内容12',355,1,'2023-04-04 10:17:21','2023-04-04 10:17:21','2023-04-04 10:17:21'),(13,'帖子标题13',1,NULL,NULL,'发布内容13',175,1,'2023-04-04 10:17:21','2023-04-04 10:17:21','2023-04-04 10:17:21'),(14,'帖子标题14',2,NULL,NULL,'发布内容14',130,1,'2023-04-04 10:17:21','2023-04-04 10:17:21','2023-04-04 10:17:21'),(15,'帖子',1,NULL,NULL,'<p>帖子111</p>',NULL,1,'2023-04-04 10:52:39',NULL,'2023-04-04 10:52:39'),(16,NULL,NULL,1,NULL,'123456',15,2,'2023-04-04 10:54:40',NULL,'2023-04-04 10:54:40');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',2,'2023-04-04 10:17:21','公告详情1','2023-04-04 10:17:21'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-04-04 10:17:21','公告详情2','2023-04-04 10:17:21'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-04-04 10:17:21','公告详情3','2023-04-04 10:17:21'),(4,'公告名称4','upload/gonggao4.jpg',1,'2023-04-04 10:17:21','公告详情4','2023-04-04 10:17:21'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-04-04 10:17:21','公告详情5','2023-04-04 10:17:21'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-04-04 10:17:21','公告详情6','2023-04-04 10:17:21'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-04-04 10:17:21','公告详情7','2023-04-04 10:17:21'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-04-04 10:17:21','公告详情8','2023-04-04 10:17:21'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-04-04 10:17:21','公告详情9','2023-04-04 10:17:21'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-04-04 10:17:21','公告详情10','2023-04-04 10:17:21'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-04-04 10:17:21','公告详情11','2023-04-04 10:17:21'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-04-04 10:17:21','公告详情12','2023-04-04 10:17:21'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-04-04 10:17:21','公告详情13','2023-04-04 10:17:21'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-04-04 10:17:21','公告详情14','2023-04-04 10:17:21');

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `shangjia_name` varchar(200) DEFAULT NULL COMMENT '商家名称 Search111 ',
  `shangjia_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangjia_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shangjia_photo` varchar(200) DEFAULT NULL COMMENT '营业执照展示 ',
  `shangjia_xingji_types` int(11) DEFAULT NULL COMMENT '商家信用类型',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `shangjia_content` longtext COMMENT '商家介绍 ',
  `shangjia_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商家';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`username`,`password`,`shangjia_name`,`shangjia_phone`,`shangjia_email`,`shangjia_photo`,`shangjia_xingji_types`,`new_money`,`shangjia_content`,`shangjia_delete`,`create_time`) values (1,'a1','123456','商家名称1','17703786901','1@qq.com','upload/shangjia1.jpg',1,'1998.02','商家介绍1',1,'2023-04-04 10:17:21'),(2,'a2','123456','商家名称2','17703786902','2@qq.com','upload/shangjia2.jpg',3,'501.90','商家介绍2',1,'2023-04-04 10:17:21'),(3,'a3','123456','商家名称3','17703786903','3@qq.com','upload/shangjia3.jpg',2,'390.51','商家介绍3',1,'2023-04-04 10:17:21');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '宠物用品分类 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '库存',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '金额',
  `shangpin_content` longtext COMMENT '商品介绍 ',
  `shangpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`shangjia_id`,`shangpin_name`,`shangpin_uuid_number`,`shangpin_photo`,`shangpin_types`,`shangpin_kucun_number`,`shangpin_new_money`,`shangpin_content`,`shangpin_delete`,`insert_time`,`create_time`) values (1,3,'商品名称1','1680574641715','upload/shangpin1.jpg',4,101,'430.69','商品介绍1',1,'2023-04-04 10:17:21','2023-04-04 10:17:21'),(2,2,'商品名称2','1680574641739','upload/shangpin2.jpg',4,102,'248.07','商品介绍2',1,'2023-04-04 10:17:21','2023-04-04 10:17:21'),(3,2,'商品名称3','1680574641654','upload/shangpin3.jpg',1,103,'21.12','商品介绍3',1,'2023-04-04 10:17:21','2023-04-04 10:17:21'),(4,3,'商品名称4','1680574641671','upload/shangpin4.jpg',4,104,'241.84','商品介绍4',1,'2023-04-04 10:17:21','2023-04-04 10:17:21'),(5,3,'商品名称5','1680574641703','upload/shangpin5.jpg',3,105,'38.72','商品介绍5',1,'2023-04-04 10:17:21','2023-04-04 10:17:21'),(6,3,'商品名称6','1680574641729','upload/shangpin6.jpg',3,106,'345.69','商品介绍6',1,'2023-04-04 10:17:21','2023-04-04 10:17:21'),(7,3,'商品名称7','1680574641737','upload/shangpin7.jpg',4,107,'434.95','商品介绍7',1,'2023-04-04 10:17:21','2023-04-04 10:17:21'),(8,3,'商品名称8','1680574641688','upload/shangpin8.jpg',4,108,'363.67','商品介绍8',1,'2023-04-04 10:17:21','2023-04-04 10:17:21'),(9,3,'商品名称9','1680574641716','upload/shangpin9.jpg',2,109,'450.93','商品介绍9',1,'2023-04-04 10:17:21','2023-04-04 10:17:21'),(10,1,'商品名称10','1680574641714','upload/shangpin10.jpg',3,1010,'390.94','商品介绍10',1,'2023-04-04 10:17:21','2023-04-04 10:17:21'),(11,1,'商品名称11','1680574641655','upload/shangpin11.jpg',4,1011,'192.01','商品介绍11',1,'2023-04-04 10:17:21','2023-04-04 10:17:21'),(12,3,'商品名称12','1680574641643','upload/shangpin12.jpg',2,1012,'79.53','商品介绍12',1,'2023-04-04 10:17:21','2023-04-04 10:17:21'),(13,3,'商品名称13','1680574641655','upload/shangpin13.jpg',4,1013,'314.27','商品介绍13',1,'2023-04-04 10:17:21','2023-04-04 10:17:21'),(14,1,'商品名称14','1680574641723','upload/shangpin14.jpg',3,1010,'404.96','商品介绍14',1,'2023-04-04 10:17:21','2023-04-04 10:17:21'),(15,1,'商品','1680576935458','/upload/1680576946904.jpg',1,800,'50.00','<p>介绍1123</p>',1,'2023-04-04 10:56:00','2023-04-04 10:56:00');

/*Table structure for table `shangpin_collection` */

DROP TABLE IF EXISTS `shangpin_collection`;

CREATE TABLE `shangpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `shangpin_collection` */

insert  into `shangpin_collection`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-04-04 10:17:21','2023-04-04 10:17:21'),(2,2,3,1,'2023-04-04 10:17:21','2023-04-04 10:17:21'),(3,3,2,1,'2023-04-04 10:17:21','2023-04-04 10:17:21'),(4,4,2,1,'2023-04-04 10:17:21','2023-04-04 10:17:21'),(5,5,3,1,'2023-04-04 10:17:21','2023-04-04 10:17:21'),(6,6,3,1,'2023-04-04 10:17:21','2023-04-04 10:17:21'),(7,7,3,1,'2023-04-04 10:17:21','2023-04-04 10:17:21'),(8,8,2,1,'2023-04-04 10:17:21','2023-04-04 10:17:21'),(9,9,2,1,'2023-04-04 10:17:21','2023-04-04 10:17:21'),(10,10,2,1,'2023-04-04 10:17:21','2023-04-04 10:17:21'),(11,11,3,1,'2023-04-04 10:17:21','2023-04-04 10:17:21'),(12,12,1,1,'2023-04-04 10:17:21','2023-04-04 10:17:21'),(13,13,3,1,'2023-04-04 10:17:21','2023-04-04 10:17:21'),(15,14,1,1,'2023-04-04 10:52:24','2023-04-04 10:52:24');

/*Table structure for table `shangpin_commentback` */

DROP TABLE IF EXISTS `shangpin_commentback`;

CREATE TABLE `shangpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `shangpin_commentback` */

insert  into `shangpin_commentback`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,3,'评价内容1','2023-04-04 10:17:21','回复信息1','2023-04-04 10:17:21','2023-04-04 10:17:21'),(2,2,3,'评价内容2','2023-04-04 10:17:21','回复信息2','2023-04-04 10:17:21','2023-04-04 10:17:21'),(3,3,1,'评价内容3','2023-04-04 10:17:21','回复信息3','2023-04-04 10:17:21','2023-04-04 10:17:21'),(4,4,1,'评价内容4','2023-04-04 10:17:21','回复信息4','2023-04-04 10:17:21','2023-04-04 10:17:21'),(5,5,1,'评价内容5','2023-04-04 10:17:21','回复信息5','2023-04-04 10:17:21','2023-04-04 10:17:21'),(6,6,3,'评价内容6','2023-04-04 10:17:21','回复信息6','2023-04-04 10:17:21','2023-04-04 10:17:21'),(7,7,3,'评价内容7','2023-04-04 10:17:21','回复信息7','2023-04-04 10:17:21','2023-04-04 10:17:21'),(8,8,2,'评价内容8','2023-04-04 10:17:21','回复信息8','2023-04-04 10:17:21','2023-04-04 10:17:21'),(9,9,1,'评价内容9','2023-04-04 10:17:21','回复信息9','2023-04-04 10:17:21','2023-04-04 10:17:21'),(10,10,1,'评价内容10','2023-04-04 10:17:21','回复信息10','2023-04-04 10:17:21','2023-04-04 10:17:21'),(11,11,2,'评价内容11','2023-04-04 10:17:21','回复信息11','2023-04-04 10:17:21','2023-04-04 10:17:21'),(12,12,3,'评价内容12','2023-04-04 10:17:21','回复信息12','2023-04-04 10:17:21','2023-04-04 10:17:21'),(13,13,3,'评价内容13','2023-04-04 10:17:21','回复信息13','2023-04-04 10:17:21','2023-04-04 10:17:21'),(14,14,2,'评价内容14','2023-04-04 10:17:21','回复信息14','2023-04-04 10:17:21','2023-04-04 10:17:21'),(15,14,1,'不错','2023-04-04 10:53:19','谢谢','2023-04-04 10:54:13','2023-04-04 10:53:19');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `shangpin_order_courier_number` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `shangpin_order_courier_beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`address_id`,`shangpin_id`,`yonghu_id`,`buy_number`,`shangpin_order_true_price`,`shangpin_order_courier_name`,`shangpin_order_courier_number`,`shangpin_order_courier_beizhu`,`shangpin_order_types`,`insert_time`,`create_time`) values (1,'1680575915431',7,14,1,1,'404.96','123','321','阿萨德阿萨德sad',105,'2023-04-04 10:38:35','2023-04-04 10:38:35'),(2,'1680576783841',7,14,1,3,'1214.88',NULL,NULL,'null',102,'2023-04-04 10:53:04','2023-04-04 10:53:04'),(3,'1680576805809',7,14,1,3,'1214.88','123456','654321','呀呀呀呀',103,'2023-04-04 10:53:26','2023-04-04 10:53:26');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','kd863drmuu1grsqre016vcjnzw5a494u','2023-04-04 10:30:32','2023-04-04 11:54:57'),(2,1,'a1','yonghu','用户','alz9y3ntw6sj2iekj1uiuggchl6gponq','2023-04-04 10:36:14','2023-04-04 11:52:11'),(3,1,'a1','shangjia','商家','z4qxvomnz7npkxe4xrnytsiq9jh7bmng','2023-04-04 10:36:41','2023-04-04 11:53:43');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-04 10:16:27');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','5637.21','2023-04-04 10:17:21'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','784.62','2023-04-04 10:17:21'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','593.05','2023-04-04 10:17:21');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

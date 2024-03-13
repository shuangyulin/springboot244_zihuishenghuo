/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zhihuishenghuoshangcheng
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zhihuishenghuoshangcheng` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zhihuishenghuoshangcheng`;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,1,'收货人1','17703786901','地址1',1,'2022-04-21 17:30:02','2022-04-21 17:30:02','2022-04-21 17:30:02'),(2,2,'收货人2','17703786902','地址2',1,'2022-04-21 17:30:02','2022-04-21 17:30:02','2022-04-21 17:30:02'),(3,2,'收货人3','17703786903','地址3',2,'2022-04-21 17:30:02','2022-04-21 20:05:59','2022-04-21 17:30:02'),(4,3,'收货人4','17703786904','地址4',1,'2022-04-21 17:30:02','2022-04-21 17:30:02','2022-04-21 17:30:02'),(5,2,'收货人5','17703786905','地址5',1,'2022-04-21 17:30:02','2022-04-21 20:05:54','2022-04-21 17:30:02');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/zhihuishenghuoshangcheng/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/zhihuishenghuoshangcheng/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/zhihuishenghuoshangcheng/upload/config3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-04-21 17:29:04'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-04-21 17:29:04'),(3,'huiyuandengji_types','会员等级类型',1,'青铜会员',NULL,'0.98','2022-04-21 17:29:04'),(4,'huiyuandengji_types','会员等级类型',2,'白银会员',NULL,'0.96','2022-04-21 17:29:04'),(5,'huiyuandengji_types','会员等级类型',3,'黄金会员',NULL,'0.95','2022-04-21 17:29:04'),(6,'shangxia_types','上下架',1,'上架',NULL,NULL,'2022-04-21 17:29:04'),(7,'shangxia_types','上下架',2,'下架',NULL,NULL,'2022-04-21 17:29:04'),(8,'shangpin_types','商品类型',1,'商品类型1',NULL,NULL,'2022-04-21 17:29:04'),(9,'shangpin_types','商品类型',2,'商品类型2',NULL,NULL,'2022-04-21 17:29:04'),(10,'shangpin_types','商品类型',3,'商品类型3',NULL,NULL,'2022-04-21 17:29:04'),(11,'shangpin_types','商品类型',4,'商品类型4',NULL,NULL,'2022-04-21 17:29:04'),(12,'shangpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2022-04-21 17:29:04'),(13,'shangpin_order_types','订单类型',1,'已支付',NULL,NULL,'2022-04-21 17:29:04'),(14,'shangpin_order_types','订单类型',2,'退款',NULL,NULL,'2022-04-21 17:29:04'),(15,'shangpin_order_types','订单类型',3,'已发货',NULL,NULL,'2022-04-21 17:29:04'),(16,'shangpin_order_types','订单类型',4,'已收货',NULL,NULL,'2022-04-21 17:29:04'),(17,'shangpin_order_types','订单类型',5,'已评价',NULL,NULL,'2022-04-21 17:29:04'),(18,'shangpin_order_types','订单类型',6,'申请退货中',NULL,NULL,'2022-04-21 17:29:04'),(19,'shangpin_order_types','订单类型',7,'拒绝退货',NULL,NULL,'2022-04-21 17:29:04'),(20,'shangpin_order_types','订单类型',8,'退货已完成',NULL,NULL,'2022-04-21 17:29:04'),(21,'shangpin_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2022-04-21 17:29:05'),(22,'shangpin_tuihuo_yesno_types','审核状态',1,'待审核',NULL,NULL,'2022-04-21 17:29:05'),(23,'shangpin_tuihuo_yesno_types','审核状态',2,'同意',NULL,NULL,'2022-04-21 17:29:05'),(24,'shangpin_tuihuo_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2022-04-21 17:29:05'),(25,'shangpin_tuihuo_types','退货状态',1,'已申请',NULL,NULL,'2022-04-21 17:29:05'),(26,'shangpin_tuihuo_types','退货状态',2,'申请通过',NULL,NULL,'2022-04-21 17:29:05'),(27,'shangpin_tuihuo_types','退货状态',3,'申请被拒绝',NULL,NULL,'2022-04-21 17:29:05'),(28,'shangpin_tuihuo_types','退货状态',4,'用户已发出快递',NULL,NULL,'2022-04-21 17:29:05'),(29,'shangpin_tuihuo_types','退货状态',5,'快递已到达',NULL,NULL,'2022-04-21 17:29:05'),(30,'shangpin_tuihuo_types','退货状态',6,'退货成功',NULL,NULL,'2022-04-21 17:29:05'),(31,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2022-04-21 17:29:05'),(32,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2022-04-21 17:29:05'),(33,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2022-04-21 17:29:05'),(34,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2022-04-21 17:29:05'),(35,'shangpin_types','商品类型',5,'商品类型5',NULL,'','2022-04-21 20:08:32');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/zhihuishenghuoshangcheng/upload/gonggao1.jpg',2,'2022-04-21 17:30:02','公告详情1','2022-04-21 17:30:02'),(2,'公告名称2','http://localhost:8080/zhihuishenghuoshangcheng/upload/gonggao2.jpg',1,'2022-04-21 17:30:02','公告详情2','2022-04-21 17:30:02'),(3,'公告名称3','http://localhost:8080/zhihuishenghuoshangcheng/upload/gonggao3.jpg',2,'2022-04-21 17:30:02','公告详情3','2022-04-21 17:30:02'),(4,'公告名称4','http://localhost:8080/zhihuishenghuoshangcheng/upload/gonggao4.jpg',1,'2022-04-21 17:30:02','公告详情4','2022-04-21 17:30:02'),(5,'公告名称5','http://localhost:8080/zhihuishenghuoshangcheng/upload/gonggao5.jpg',2,'2022-04-21 17:30:02','公告详情5','2022-04-21 17:30:02');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号  Search111 ',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `shangpin_price` int(11) DEFAULT NULL COMMENT '购买获得积分 ',
  `shangpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `shangpin_clicknum` int(11) DEFAULT NULL COMMENT '点击次数 ',
  `shangpin_content` text COMMENT '商品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `shangpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`shangpin_name`,`shangpin_uuid_number`,`shangpin_photo`,`shangpin_types`,`shangpin_kucun_number`,`shangpin_price`,`shangpin_old_money`,`shangpin_new_money`,`shangpin_clicknum`,`shangpin_content`,`shangxia_types`,`shangpin_delete`,`create_time`) values (1,'商品名称1','165053340299023','http://localhost:8080/zhihuishenghuoshangcheng/upload/shangpin1.jpg',2,99,120,'899.79','22.74',297,'商品介绍1',1,1,'2022-04-21 17:30:02'),(2,'商品名称2','165053340299123','http://localhost:8080/zhihuishenghuoshangcheng/upload/shangpin2.jpg',1,100,387,'974.69','143.93',337,'商品介绍2',1,1,'2022-04-21 17:30:02'),(3,'商品名称3','165053340299125','http://localhost:8080/zhihuishenghuoshangcheng/upload/shangpin3.jpg',4,102,385,'922.27','359.69',486,'商品介绍3',1,1,'2022-04-21 17:30:02'),(4,'商品名称4','165053340299186','http://localhost:8080/zhihuishenghuoshangcheng/upload/shangpin4.jpg',4,102,121,'509.58','121.10',426,'商品介绍4',1,1,'2022-04-21 17:30:02'),(5,'商品名称5','165053340299132','http://localhost:8080/zhihuishenghuoshangcheng/upload/shangpin5.jpg',1,103,346,'752.64','462.55',469,'商品介绍5',1,1,'2022-04-21 17:30:02');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `shangpin_collection` */

insert  into `shangpin_collection`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_collection_types`,`insert_time`,`create_time`) values (1,1,2,1,'2022-04-21 17:30:02','2022-04-21 17:30:02'),(2,2,1,1,'2022-04-21 17:30:02','2022-04-21 17:30:02'),(3,3,2,1,'2022-04-21 17:30:02','2022-04-21 17:30:02'),(4,4,2,1,'2022-04-21 17:30:02','2022-04-21 17:30:02'),(5,5,1,1,'2022-04-21 17:30:02','2022-04-21 17:30:02'),(6,5,2,1,'2022-04-21 20:05:09','2022-04-21 20:05:09');

/*Table structure for table `shangpin_commentback` */

DROP TABLE IF EXISTS `shangpin_commentback`;

CREATE TABLE `shangpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `shangpin_commentback` */

insert  into `shangpin_commentback`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'评价内容1','2022-04-21 17:30:02','回复信息1','2022-04-21 17:30:02','2022-04-21 17:30:02'),(2,2,2,'评价内容2','2022-04-21 17:30:02','回复信息2','2022-04-21 17:30:02','2022-04-21 17:30:02'),(3,3,1,'评价内容3','2022-04-21 17:30:02','回复信息3','2022-04-21 17:30:02','2022-04-21 17:30:02'),(4,4,3,'评价内容4','2022-04-21 17:30:02','回复信息4','2022-04-21 17:30:02','2022-04-21 17:30:02'),(5,5,1,'评价内容5','2022-04-21 17:30:02','回复信息5','2022-04-21 17:30:02','2022-04-21 17:30:02'),(6,5,1,'是多少','2022-04-21 17:41:57',NULL,NULL,'2022-04-21 17:41:57'),(7,5,2,'aadhda的撒啊哈','2022-04-21 20:11:35',NULL,NULL,'2022-04-21 20:11:35');

/*Table structure for table `shangpin_liuyan` */

DROP TABLE IF EXISTS `shangpin_liuyan`;

CREATE TABLE `shangpin_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_liuyan_text` text COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='商品留言';

/*Data for the table `shangpin_liuyan` */

insert  into `shangpin_liuyan`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'留言内容1','2022-04-21 17:30:02','回复信息1','2022-04-21 17:30:02','2022-04-21 17:30:02'),(2,2,1,'留言内容2','2022-04-21 17:30:02','回复信息2','2022-04-21 17:30:02','2022-04-21 17:30:02'),(3,3,3,'留言内容3','2022-04-21 17:30:02','回复信息3','2022-04-21 17:30:02','2022-04-21 17:30:02'),(4,4,1,'留言内容4','2022-04-21 17:30:02','回复信息4','2022-04-21 17:30:02','2022-04-21 17:30:02'),(5,5,2,'留言内容5','2022-04-21 17:30:02','回复信息5','2022-04-21 17:30:02','2022-04-21 17:30:02'),(6,5,1,'大活动','2022-04-21 17:39:43',NULL,NULL,'2022-04-21 17:39:43');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `shangpin_order_courier_number` varchar(200) DEFAULT NULL COMMENT '订单快递单号',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `shangpin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`address_id`,`shangpin_id`,`yonghu_id`,`buy_number`,`shangpin_order_true_price`,`shangpin_order_courier_name`,`shangpin_order_courier_number`,`shangpin_order_types`,`shangpin_order_payment_types`,`insert_time`,`create_time`) values (1,'1650534017655',1,1,1,1,'22.29',NULL,NULL,1,1,'2022-04-21 17:40:18','2022-04-21 17:40:18'),(2,'1650534031415',1,1,1,1,'22.29',NULL,NULL,1,1,'2022-04-21 17:40:31','2022-04-21 17:40:31'),(3,'1650534031415',1,2,1,1,'141.05','圆通快递','53451654',3,1,'2022-04-21 17:40:31','2022-04-21 17:40:31'),(4,'1650534031415',1,4,1,1,'118.68','申通快递','53742684',6,1,'2022-04-21 17:40:31','2022-04-21 17:40:31'),(5,'1650534031415',1,5,1,1,'453.30','圆通快递','544894',8,1,'2022-04-21 17:40:31','2022-04-21 17:40:31'),(6,'1650542722010',2,2,2,1,'141.05',NULL,NULL,2,1,'2022-04-21 20:05:22','2022-04-21 20:05:22'),(7,'1650542768895',2,3,2,1,'352.50',NULL,NULL,1,1,'2022-04-21 20:06:09','2022-04-21 20:06:09'),(8,'1650542768895',2,2,2,1,'141.05',NULL,NULL,1,1,'2022-04-21 20:06:09','2022-04-21 20:06:09'),(9,'1650542768895',2,4,2,1,'118.68','顺丰快递','24984687498',4,1,'2022-04-21 20:06:09','2022-04-21 20:06:09'),(10,'1650542768895',2,5,2,1,'453.30','圆通快递','35498464',7,1,'2022-04-21 20:06:09','2022-04-21 20:06:09'),(11,'1650542835145',3,5,2,1,'453.30','申通快递','6546849848',8,1,'2022-04-21 20:07:15','2022-04-21 20:07:15');

/*Table structure for table `shangpin_tuihuo` */

DROP TABLE IF EXISTS `shangpin_tuihuo`;

CREATE TABLE `shangpin_tuihuo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_tuihuo_uuid_number` varchar(200) DEFAULT NULL COMMENT '退货流水号 Search111 ',
  `shangpin_order_id` int(11) DEFAULT NULL COMMENT '商品订单',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_tuihuo_content` text COMMENT '退货原因',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请退货时间',
  `shangpin_tuihuo_courier_name` varchar(200) DEFAULT NULL COMMENT '退货快递公司',
  `shangpin_tuihuo_courier_number` varchar(200) DEFAULT NULL COMMENT '退货单号',
  `shangpin_tuihuo_types` int(11) DEFAULT NULL COMMENT '退货状态 Search111 ',
  `shangpin_tuihuo_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态 Search111 ',
  `shangpin_tuihuo_yesno_text` text COMMENT '审核意见',
  `shangpin_tuihuo_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='商品退货';

/*Data for the table `shangpin_tuihuo` */

insert  into `shangpin_tuihuo`(`id`,`shangpin_tuihuo_uuid_number`,`shangpin_order_id`,`yonghu_id`,`shangpin_tuihuo_content`,`insert_time`,`shangpin_tuihuo_courier_name`,`shangpin_tuihuo_courier_number`,`shangpin_tuihuo_types`,`shangpin_tuihuo_yesno_types`,`shangpin_tuihuo_yesno_text`,`shangpin_tuihuo_shenhe_time`,`create_time`) values (6,'1650539603095',4,1,'<p>退货原因1111</p>','2022-04-21 19:13:32','','',2,2,'对对对','2022-04-21 19:14:18','2022-04-21 19:13:32'),(7,'1650539622270',5,1,'<p>萨嘎回答书法家</p>','2022-04-21 19:13:50','圆通快递','45854694',6,2,'dsah','2022-04-21 19:14:09','2022-04-21 19:13:50'),(8,'1650543101213',10,2,'<p>质量不好</p>','2022-04-21 20:12:27','','',3,3,'百度打电话','2022-04-21 20:13:25','2022-04-21 20:12:27'),(9,'1650543153556',11,2,'<p>发过来都烂了</p>','2022-04-21 20:12:46','顺丰快递','534731586491',6,2,'嗯 发过来吧','2022-04-21 20:13:13','2022-04-21 20:12:46');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','bab9qprkojmfu60vj8hlcd8bultapq4s','2022-04-21 17:34:31','2022-04-21 21:14:56'),(2,1,'a1','yonghu','用户','eisxvs0sfoq4rniy0zwqv1e65gsciy5h','2022-04-21 17:39:34','2022-04-21 21:10:46'),(3,2,'a2','yonghu','用户','0yt54htx5jj67ea883t6dxm5kk71z04n','2022-04-21 20:04:53','2022-04-21 21:14:18');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

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
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_sum_jifen` decimal(10,2) DEFAULT NULL COMMENT '总积分',
  `yonghu_new_jifen` decimal(10,2) DEFAULT NULL COMMENT '现积分',
  `huiyuandengji_types` int(11) DEFAULT NULL COMMENT '会员等级',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`yonghu_sum_jifen`,`yonghu_new_jifen`,`huiyuandengji_types`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199610232001','http://localhost:8080/zhihuishenghuoshangcheng/upload/yonghu1.jpg',2,'1@qq.com','2610.49','1790.07','1442.15',1,'2022-04-21 17:30:02'),(2,'a2','123456','用户姓名2','17703786902','410224199610232002','http://localhost:8080/zhihuishenghuoshangcheng/upload/yonghu2.jpg',1,'2@qq.com','9729.79','1949.36','1591.42',1,'2022-04-21 17:30:02'),(3,'a3','123456','用户姓名3','17703786903','410224199610232003','http://localhost:8080/zhihuishenghuoshangcheng/upload/yonghu3.jpg',2,'3@qq.com','871.52','911.67','329.52',1,'2022-04-21 17:30:02');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

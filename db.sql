/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm394a7
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm394a7` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm394a7`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616515743116 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-03-23 23:49:55',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-23 23:49:55',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-23 23:49:55',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-23 23:49:55',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-23 23:49:55',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-23 23:49:55',6,'宇宙银河系月球1号','月某','13823888886','是'),(1616515743115,'2021-03-24 00:09:02',1616515656859,'广东省揭阳市榕城区东兴街道玉马路188号','11','11111111111','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'tushuxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616515707872 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616515815648 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (71,'2021-03-23 23:49:55',1,1,'提问1','回复1',1),(72,'2021-03-23 23:49:55',2,2,'提问2','回复2',2),(73,'2021-03-23 23:49:55',3,3,'提问3','回复3',3),(74,'2021-03-23 23:49:55',4,4,'提问4','回复4',4),(75,'2021-03-23 23:49:55',5,5,'提问5','回复5',5),(76,'2021-03-23 23:49:55',6,6,'提问6','回复6',6),(1616515783310,'2021-03-24 00:09:42',1616515656859,NULL,'阿达阿萨德',NULL,0),(1616515815647,'2021-03-24 00:10:14',1616515656859,1,NULL,'胜多负少发送到',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm394a7/upload/1616515823081.jpg'),(2,'picture2','http://localhost:8080/ssm394a7/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm394a7/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `dingdanpingjia` */

DROP TABLE IF EXISTS `dingdanpingjia`;

CREATE TABLE `dingdanpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pingjiabianhao` varchar(200) DEFAULT NULL COMMENT '评价编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `tushupingjia` varchar(200) DEFAULT NULL COMMENT '图书评价',
  `tushuzhiliang` varchar(200) DEFAULT NULL COMMENT '图书质量',
  `zonghepingfen` varchar(200) DEFAULT NULL COMMENT '综合评分',
  `pingyu` longtext COMMENT '评语',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pingjiabianhao` (`pingjiabianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616515968493 DEFAULT CHARSET=utf8 COMMENT='订单评价';

/*Data for the table `dingdanpingjia` */

insert  into `dingdanpingjia`(`id`,`addtime`,`pingjiabianhao`,`tushumingcheng`,`tushupingjia`,`tushuzhiliang`,`zonghepingfen`,`pingyu`,`zhanghao`,`xingming`) values (51,'2021-03-23 23:49:55','评价编号1','图书名称1','1星','1星','6','评语1','账号1','姓名1'),(52,'2021-03-23 23:49:55','评价编号2','图书名称2','1星','1星','6','评语2','账号2','姓名2'),(53,'2021-03-23 23:49:55','评价编号3','图书名称3','1星','1星','6','评语3','账号3','姓名3'),(54,'2021-03-23 23:49:55','评价编号4','图书名称4','1星','1星','6','评语4','账号4','姓名4'),(55,'2021-03-23 23:49:55','评价编号5','图书名称5','1星','1星','6','评语5','账号5','姓名5'),(56,'2021-03-23 23:49:55','评价编号6','图书名称6','1星','1星','6','评语6','账号6','姓名6'),(1616515968492,'2021-03-24 00:12:48','1616515932065','撒撒地方','4星','5星','8','水电费水电费水电费','11','萨达');

/*Table structure for table `discusstushuxinxi` */

DROP TABLE IF EXISTS `discusstushuxinxi`;

CREATE TABLE `discusstushuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616515985828 DEFAULT CHARSET=utf8 COMMENT='图书信息评论表';

/*Data for the table `discusstushuxinxi` */

insert  into `discusstushuxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (131,'2021-03-23 23:49:55',1,1,'用户名1','评论内容1','回复内容1'),(132,'2021-03-23 23:49:55',2,2,'用户名2','评论内容2','回复内容2'),(133,'2021-03-23 23:49:55',3,3,'用户名3','评论内容3','回复内容3'),(134,'2021-03-23 23:49:55',4,4,'用户名4','评论内容4','回复内容4'),(135,'2021-03-23 23:49:55',5,5,'用户名5','评论内容5','回复内容5'),(136,'2021-03-23 23:49:55',6,6,'用户名6','评论内容6','回复内容6'),(1616515700088,'2021-03-24 00:08:19',1616515634254,1616515656859,'11','萨达阿萨德',NULL),(1616515985827,'2021-03-24 00:13:05',25,1616515656859,'11','傻傻的阿萨德',NULL);

/*Table structure for table `erjifenlei` */

DROP TABLE IF EXISTS `erjifenlei`;

CREATE TABLE `erjifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `erjifenlei` varchar(200) DEFAULT NULL COMMENT '二级分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='二级分类';

/*Data for the table `erjifenlei` */

insert  into `erjifenlei`(`id`,`addtime`,`erjifenlei`) values (41,'2021-03-23 23:49:55','水电费'),(42,'2021-03-23 23:49:55','二级分类2'),(43,'2021-03-23 23:49:55','二级分类3'),(44,'2021-03-23 23:49:55','二级分类4'),(45,'2021-03-23 23:49:55','二级分类5'),(46,'2021-03-23 23:49:55','二级分类6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616515836633 DEFAULT CHARSET=utf8 COMMENT='通知公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (121,'2021-03-23 23:49:55','标题1','简介1','http://localhost:8080/ssm394a7/upload/news_picture1.jpg','内容1'),(122,'2021-03-23 23:49:55','标题2','简介2','http://localhost:8080/ssm394a7/upload/news_picture2.jpg','内容2'),(123,'2021-03-23 23:49:55','标题3','简介3','http://localhost:8080/ssm394a7/upload/news_picture3.jpg','内容3'),(124,'2021-03-23 23:49:55','标题4','简介4','http://localhost:8080/ssm394a7/upload/news_picture4.jpg','内容4'),(125,'2021-03-23 23:49:55','标题5','简介5','http://localhost:8080/ssm394a7/upload/news_picture5.jpg','内容5'),(126,'2021-03-23 23:49:55','标题6','简介6','http://localhost:8080/ssm394a7/upload/news_picture6.jpg','内容6'),(1616515836632,'2021-03-24 00:10:36','萨达大','水电费第三方fsd','http://localhost:8080/ssm394a7/upload/1616515829898.jpg','<p>水电费水电费删掉是否删掉<img src=\"http://localhost:8080/ssm394a7/upload/1616515835064.jpg\"></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'tushuxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1616515766430 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1616515757495,'2021-03-24 00:09:16','2021324084867816752','tushuxinxi',1616515656859,25,'图书名称5','http://localhost:8080/ssm394a7/upload/tushuxinxi_tupian5.jpg',1,99.9,99.9,99.9,99.9,1,'已退款','广东省揭阳市榕城区东兴街道玉马路188号'),(1616515766429,'2021-03-24 00:09:25','2021324085739216686','tushuxinxi',1616515656859,1616515634254,'水电费水电费','http://localhost:8080/ssm394a7/upload/1616515614810.jpg',3,15,15,45,45,1,'已完成','广东省揭阳市榕城区东兴街道玉马路188号');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616516010119 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1616516010118,'2021-03-24 00:13:29',1616515656859,25,'tushuxinxi','图书名称5','http://localhost:8080/ssm394a7/upload/tushuxinxi_tupian5.jpg');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','wbtasw3ayeuj3fmi3hri7ih7argr9m27','2021-03-24 00:06:27','2021-03-24 01:13:39'),(2,1616515656859,'11','yonghu','用户','dc154f5xxn9tnjmypgtjf33suunqcdwl','2021-03-24 00:07:42','2021-03-24 01:10:50');

/*Table structure for table `tushutongji` */

DROP TABLE IF EXISTS `tushutongji`;

CREATE TABLE `tushutongji` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tongjibianhao` varchar(200) DEFAULT NULL COMMENT '统计编号',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) DEFAULT NULL COMMENT '图书名称',
  `xiaoshouliang` int(11) DEFAULT NULL COMMENT '销售量',
  `dianjiliang` varchar(200) DEFAULT NULL COMMENT '点击量',
  `dengjishijian` date DEFAULT NULL COMMENT '登记时间',
  `dengjiren` varchar(200) DEFAULT NULL COMMENT '登记人',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tongjibianhao` (`tongjibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616516042228 DEFAULT CHARSET=utf8 COMMENT='图书统计';

/*Data for the table `tushutongji` */

insert  into `tushutongji`(`id`,`addtime`,`tongjibianhao`,`tushubianhao`,`tushumingcheng`,`xiaoshouliang`,`dianjiliang`,`dengjishijian`,`dengjiren`,`beizhu`) values (61,'2021-03-23 23:49:55','统计编号1','图书编号1','图书名称1',1,'点击量1','2021-03-23','登记人1','备注1'),(62,'2021-03-23 23:49:55','统计编号2','图书编号2','图书名称2',2,'点击量2','2021-03-23','登记人2','备注2'),(63,'2021-03-23 23:49:55','统计编号3','图书编号3','图书名称3',3,'点击量3','2021-03-23','登记人3','备注3'),(64,'2021-03-23 23:49:55','统计编号4','图书编号4','图书名称4',4,'点击量4','2021-03-23','登记人4','备注4'),(65,'2021-03-23 23:49:55','统计编号5','图书编号5','图书名称5',5,'点击量5','2021-03-23','登记人5','备注5'),(66,'2021-03-23 23:49:55','统计编号6','图书编号6','图书名称6',6,'点击量6','2021-03-23','登记人6','备注6'),(1616516042227,'2021-03-24 00:14:01','1616516003566','1616515579429','水电费水电费',2222,'1111','2021-03-24','撒打算大','萨达萨大飒飒大');

/*Table structure for table `tushuxinxi` */

DROP TABLE IF EXISTS `tushuxinxi`;

CREATE TABLE `tushuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tushubianhao` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushumingcheng` varchar(200) NOT NULL COMMENT '图书名称',
  `yijifenlei` varchar(200) DEFAULT NULL COMMENT '一级分类',
  `erjifenlei` varchar(200) DEFAULT NULL COMMENT '二级分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zuozhe` varchar(200) DEFAULT NULL COMMENT '作者',
  `chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社',
  `chubanshijian` varchar(200) DEFAULT NULL COMMENT '出版时间',
  `jianjie` longtext COMMENT '简介',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `tushubianhao` (`tushubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616515634255 DEFAULT CHARSET=utf8 COMMENT='图书信息';

/*Data for the table `tushuxinxi` */

insert  into `tushuxinxi`(`id`,`addtime`,`tushubianhao`,`tushumingcheng`,`yijifenlei`,`erjifenlei`,`tupian`,`zuozhe`,`chubanshe`,`chubanshijian`,`jianjie`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`,`price`) values (21,'2021-03-23 23:49:55','图书编号1','图书名称1','一级分类1','二级分类1','http://localhost:8080/ssm394a7/upload/tushuxinxi_tupian1.jpg','作者1','出版社1','出版时间1','简介1',1,1,'2021-03-23 23:49:55',1,99.9),(22,'2021-03-23 23:49:55','图书编号2','图书名称2','一级分类2','二级分类2','http://localhost:8080/ssm394a7/upload/tushuxinxi_tupian2.jpg','作者2','出版社2','出版时间2','简介2',2,2,'2021-03-24 00:13:11',3,99.9),(23,'2021-03-23 23:49:55','图书编号3','图书名称3','一级分类3','二级分类3','http://localhost:8080/ssm394a7/upload/tushuxinxi_tupian3.jpg','作者3','出版社3','出版时间3','简介3',3,3,'2021-03-23 23:49:55',3,99.9),(24,'2021-03-23 23:49:55','图书编号4','图书名称4','一级分类4','二级分类4','http://localhost:8080/ssm394a7/upload/tushuxinxi_tupian4.jpg','作者4','出版社4','出版时间4','简介4',4,4,'2021-03-24 00:08:06',6,99.9),(25,'2021-03-23 23:49:55','图书编号5','图书名称5','一级分类5','二级分类5','http://localhost:8080/ssm394a7/upload/tushuxinxi_tupian5.jpg','作者5','出版社5','出版时间5','简介5',5,6,'2021-03-24 00:13:31',13,99.9),(26,'2021-03-23 23:49:55','图书编号6','图书名称6','一级分类6','二级分类6','http://localhost:8080/ssm394a7/upload/tushuxinxi_tupian6.jpg','作者6','出版社6','出版时间6','简介6',6,6,'2021-03-23 23:49:55',6,99.9),(1616515634254,'2021-03-24 00:07:13','1616515579429','水电费水电费','一级分类4','水电费','http://localhost:8080/ssm394a7/upload/1616515614810.jpg','水电费','水电费','水电费','<p>发过的电饭锅的g<img src=\"http://localhost:8080/ssm394a7/upload/1616515627614.jpg\"><img src=\"http://localhost:8080/ssm394a7/upload/1616515631619.png\"></p>',1,0,'2021-03-24 00:09:25',7,15);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-23 23:49:55');

/*Table structure for table `yijifenlei` */

DROP TABLE IF EXISTS `yijifenlei`;

CREATE TABLE `yijifenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yijifenlei` varchar(200) DEFAULT NULL COMMENT '一级分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616515600676 DEFAULT CHARSET=utf8 COMMENT='一级分类';

/*Data for the table `yijifenlei` */

insert  into `yijifenlei`(`id`,`addtime`,`yijifenlei`) values (31,'2021-03-23 23:49:55','一级分类1'),(32,'2021-03-23 23:49:55','一级分类2'),(33,'2021-03-23 23:49:55','一级分类3'),(34,'2021-03-23 23:49:55','一级分类4'),(35,'2021-03-23 23:49:55','一级分类5'),(36,'2021-03-23 23:49:55','一级分类6'),(1616515600675,'2021-03-24 00:06:39','第三方');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1616515656860 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`zhanghao`,`mima`,`xingming`,`xingbie`,`shouji`,`youxiang`,`zhaopian`,`dizhi`,`money`) values (11,'2021-03-23 23:49:55','用户1','123456','姓名1','男','13823888881','773890001@qq.com','http://localhost:8080/ssm394a7/upload/yonghu_zhaopian1.jpg','地址1',100),(12,'2021-03-23 23:49:55','用户2','123456','姓名2','男','13823888882','773890002@qq.com','http://localhost:8080/ssm394a7/upload/yonghu_zhaopian2.jpg','地址2',100),(13,'2021-03-23 23:49:55','用户3','123456','姓名3','男','13823888883','773890003@qq.com','http://localhost:8080/ssm394a7/upload/yonghu_zhaopian3.jpg','地址3',100),(14,'2021-03-23 23:49:55','用户4','123456','姓名4','男','13823888884','773890004@qq.com','http://localhost:8080/ssm394a7/upload/yonghu_zhaopian4.jpg','地址4',100),(15,'2021-03-23 23:49:55','用户5','123456','姓名5','男','13823888885','773890005@qq.com','http://localhost:8080/ssm394a7/upload/yonghu_zhaopian5.jpg','地址5',100),(16,'2021-03-23 23:49:55','用户6','123456','姓名6','男','13823888886','773890006@qq.com','http://localhost:8080/ssm394a7/upload/yonghu_zhaopian6.jpg','地址6',100),(1616515656859,'2021-03-24 00:07:36','11','11','萨达','女','11111112222','11@qq.com','http://localhost:8080/ssm394a7/upload/1616515717388.jpg','撒打算d',4955);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

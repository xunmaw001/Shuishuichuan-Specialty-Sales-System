-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm80z17
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612442303740 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-02-04 12:25:57',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-02-04 12:25:57',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-02-04 12:25:57',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-02-04 12:25:57',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-02-04 12:25:57',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-02-04 12:25:57',6,'宇宙银河系月球1号','月某','13823888886','是'),(1612442303739,'2021-02-04 12:38:23',1612442247539,'江西省吉安市泰和县塘洲镇泰和黄冈学校','小邹','16459878988','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'techanxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612442381017 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612442572904 DEFAULT CHARSET=utf8 COMMENT='客服聊天';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (51,'2021-02-04 12:25:57',1,1,'提问1','回复1',1),(52,'2021-02-04 12:25:57',2,2,'提问2','回复2',2),(53,'2021-02-04 12:25:57',3,3,'提问3','回复3',3),(54,'2021-02-04 12:25:57',4,4,'提问4','回复4',4),(55,'2021-02-04 12:25:57',5,5,'提问5','回复5',5),(56,'2021-02-04 12:25:57',6,6,'提问6','回复6',6),(1612442413354,'2021-02-04 12:40:12',1612442247539,NULL,'这里可以向管理员咨询',NULL,0),(1612442572903,'2021-02-04 12:42:52',1612442247539,1,NULL,'这里回复用户咨询',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssm80z17/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm80z17/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm80z17/upload/picture3.jpg'),(6,'homepage',NULL),(7,'picture4','http://localhost:8080/ssm80z17/upload/1612442594389.png');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanpingjia`
--

DROP TABLE IF EXISTS `dingdanpingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `pingjiabiaoti` varchar(200) NOT NULL COMMENT '评价标题',
  `dingdanpingfen` varchar(200) DEFAULT NULL COMMENT '订单评分',
  `dingdanpingjia` longtext COMMENT '订单评价',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612442658879 DEFAULT CHARSET=utf8 COMMENT='订单评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanpingjia`
--

LOCK TABLES `dingdanpingjia` WRITE;
/*!40000 ALTER TABLE `dingdanpingjia` DISABLE KEYS */;
INSERT INTO `dingdanpingjia` VALUES (1612442658878,'2021-02-04 12:44:18','2021242039509243363','这里评价订单信息','5','<p>666</p>','2021-03-13','666','16459878982','是','这里回复订单信息');
/*!40000 ALTER TABLE `dingdanpingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusstechanxinxi`
--

DROP TABLE IF EXISTS `discusstechanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusstechanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612442358574 DEFAULT CHARSET=utf8 COMMENT='特产信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusstechanxinxi`
--

LOCK TABLES `discusstechanxinxi` WRITE;
/*!40000 ALTER TABLE `discusstechanxinxi` DISABLE KEYS */;
INSERT INTO `discusstechanxinxi` VALUES (111,'2021-02-04 12:25:57',1,1,'评论内容1','回复内容1'),(112,'2021-02-04 12:25:57',2,2,'评论内容2','回复内容2'),(113,'2021-02-04 12:25:57',3,3,'评论内容3','回复内容3'),(114,'2021-02-04 12:25:57',4,4,'评论内容4','回复内容4'),(115,'2021-02-04 12:25:57',5,5,'评论内容5','回复内容5'),(116,'2021-02-04 12:25:57',6,6,'评论内容6','回复内容6'),(1612442358573,'2021-02-04 12:39:18',21,1612442247539,'登录后可以收藏  评论  购买  客服聊天等操作','这里可以查看并回复评论');
/*!40000 ALTER TABLE `discusstechanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612442556680 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-02-04 12:25:57','中国最美梯田之乡——遂川梯田','　“中国最美梯田之乡”——遂川梯田主要有珠田乡珠溪梯田，禾源镇严塘梯田，左安镇桃源梯田、鹤坑梯田、瓜塘梯田，大汾镇桃坪梯田、米岭梯田，高坪镇车下梯田、卷旋梯田等梯田群落点。其中全球十大最美梯田之一的遂川左安镇桃源梯田为该县梯田旅游开发的之首。','http://localhost:8080/ssm80z17/upload/news_picture1.jpg','<p><strong>全球十大最美梯田--遂川左安镇桃源梯田</strong></p><p>桃源梯田景区位于左安境内最高峰海拔1442米的神女峰(轿子顶)脚下的桃源村和鹤坑村，总面积10平方公里，有梯田5000余亩，其中集中连片的就有2000余亩。梯田小如碟、大如盆、长如带、弯如月、婉如天上瑶池，人间仙境。这里群山环绕、峰峦起伏、环境优美，生态良好，全村森林覆盖率达90%以上，是一个天然的氧吧。桃源梯田起源于明末、盛于清朝，已有400余年历史。在遂川县境内居住着很多客家人，他们的祖先为逃避战乱从从广东、福建、山东等地迁徙而来，为不与本地原住民争田争地，客家人就在大山里开山辟地，造田种粮。左安客籍是桃源梯田这个人间奇迹的始创者，是客家先民创造的伟大成就和稻作文化遗存，充分展示了客家人与自然和谐共处的稻作文化。桃源梯田，规模不算宏大、气势也不算磅礴，但桃源梯田是原汁原味的，这里没有喧哗，有的是自然质朴，有的是清新宁静。漫步在田埂上，看看青山，哼哼山歌，听听蛙鸣，吹吹山风。热情的客家人还会邀你到屋里坐坐，尝一下山里人家特有的茶点。</p>'),(102,'2021-02-04 12:25:57','遂川板鸭——腊味之王，咸香味美','俗话说得好，“民以食为天”，中国地大物博，孕育了各种独具特色的地方特产，而板鸭，则是遂川最有名的特产。','http://localhost:8080/ssm80z17/upload/1612441926905.jpeg','<p class=\"ql-align-justify\"><strong>特产文化</strong></p><p class=\"ql-align-justify\">遂川板鸭是江西吉安遂川县一大传统特色产品，有上百年的加工历史，深受港、澳、南洋消费者青睐，有“腊味之王”之美称。</p><p class=\"ql-align-justify\">遂川板鸭曾多次荣获“江西省外贸优质特产奖”、“江西省食品学会优质奖”、“全国星火计划博览会银奖”。</p><p><img src=\"http://localhost:8080/ssm80z17/upload/1612441938289.jpeg\"></p>'),(103,'2021-02-04 12:25:57','遂川县产业扶贫成果展示','中国江西网吉安讯 记者曾风、刘笑澜报道：1月6日上午，遂川县产业扶贫成果展示在步行街举办，本展示为期三天。现场展出了包括“狗牯脑”等在内的遂川县特有土特产，琳琅满目，众多市民给力地买买买，并对此展示点赞。','http://localhost:8080/ssm80z17/upload/1612441951402.jpg','<p>	上午八时，吉州步行街已有不少市民等候。简短开展仪式后，几十个摊位前人头攒动，购销两旺，“年味浓了”。记者粗略看了一下，本产业扶贫成果展示了茶叶、板鸭、金桔、山货、金桔酒、竹筒酒、米果、蜂蜜、山茶油等遂川县特有的土特产，甚至有风味独特的霉豆腐、竹筒腌菜、土猪腊肉。据了解，参展的人员很多是父子拍档、夫妻拍档、家庭拍档。</p><p>	“外地工作的儿子前两天就打电话给我们，他从网上晓得今天开幕，还‘指定’要买这种板鸭，说这个厂家生产板鸭几十年了，有保证，味道好。”在珠田板鸭厂的摊子前，一对从井冈山赶来的50多岁的夫妇笑呵呵对记者说，“春节快到了，现场挑选好，热闹，有年味！”另一个市民彭阿姨拎着一袋山货一壶山茶油，走出几步倒回来对记者称，这种土特产家门口展示好，方便她这样岁数的老人办年货。</p><p>	据悉，遂川县产业扶贫已经形成了特色产业“一带两廊三区”格局，采用“龙头企业(合作社)＋基地＋农户”发展模式。目前，该县市级以上农业产业化龙头企业49家，其中省级农业产业化龙头企业9家，带动农户10.4万户；农民专业合作社602家，家庭农场300家，种养大户865家；已建成茶叶、金桔、油茶、毛竹基地面积156.2万亩，年加工板鸭850万只。本次展示为期三天(2017年1月6—2017年1月8日)，展出绿色食品、有机农产品、无公害农产品、农产品地理标志等。</p>'),(104,'2021-02-04 12:25:57','离开吉安带什么回家？这14种土特产够吗？','中国吉安网讯（记者春风）每年过年的时候，都有网友问，吉安有什么土特产可以带回家啊','http://localhost:8080/ssm80z17/upload/1612442030539.jpg','<p>	为了应对朋友们的这种疑问，记者也在愁呀，不是愁没东西，而是愁东西太多，不知道介绍哪样？这不，正好，国家替记者选出来了。这14种土特产，相信可以给你选择。吉安14种产品被授予国家地理标志保护产品。它们是：泰和乌鸡、遂川狗牯脑茶、遂川板鸭、遂川金桔、安福县陈山红心杉、安福火腿、永丰辣椒、永丰茶油、万安玻璃红鲤鱼、井冈山竹笋、井冈山红米、登龙粉芋、吉安红毛鸭、三湖红桔。什么是国家地理标志保护产品呢？根据国家定义，地理标志保护产品一般产自特定地区，且极具当地特色，经审核批准，以地理名称进而命名的产品，是优良品质的代表。过年离开吉安，你还不知道带什么走吗？相信这14种产品的单子可以帮到你吧！</p><p><img src=\"http://localhost:8080/ssm80z17/upload/1612442027744.jpg\"></p>'),(1612442556679,'2021-02-04 12:42:35','这里添加公告信息','11111111111','http://localhost:8080/ssm80z17/upload/1612442553586.jpg','<p><img src=\"http://localhost:8080/ssm80z17/upload/1612442551560.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'techanxinxi' COMMENT '商品表名',
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
) ENGINE=InnoDB AUTO_INCREMENT=1612442391173 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1612442367843,'2021-02-04 12:39:27','20212420392694837907','techanxinxi',1612442247539,21,'商品名称1','http://localhost:8080/ssm80z17/upload/1612441840268.jpg',1,36,36,36,36,1,'已完成','江西省吉安市泰和县塘洲镇泰和黄冈学校'),(1612442391172,'2021-02-04 12:39:50','2021242039509243363','techanxinxi',1612442247539,23,'商品名称3','http://localhost:8080/ssm80z17/upload/1612441873280.jpg',2,100,100,200,200,1,'已完成','江西省吉安市泰和县塘洲镇泰和黄冈学校');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612442382532 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1612442344838,'2021-02-04 12:39:03',1612442247539,21,'techanxinxi','商品名称1','http://localhost:8080/ssm80z17/upload/1612441840268.jpg'),(1612442382531,'2021-02-04 12:39:42',1612442247539,23,'techanxinxi','商品名称3','http://localhost:8080/ssm80z17/upload/1612441873280.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `techanfenlei`
--

DROP TABLE IF EXISTS `techanfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `techanfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fenlei` (`fenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1612442448545 DEFAULT CHARSET=utf8 COMMENT='特产分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `techanfenlei`
--

LOCK TABLES `techanfenlei` WRITE;
/*!40000 ALTER TABLE `techanfenlei` DISABLE KEYS */;
INSERT INTO `techanfenlei` VALUES (11,'2021-02-04 12:25:57','食品'),(12,'2021-02-04 12:25:57','首饰'),(13,'2021-02-04 12:25:57','衣服'),(14,'2021-02-04 12:25:57','鞋子'),(15,'2021-02-04 12:25:57','包包'),(16,'2021-02-04 12:25:57','山货'),(1612442448544,'2021-02-04 12:40:48','这里添加特产分类');
/*!40000 ALTER TABLE `techanfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `techanxinxi`
--

DROP TABLE IF EXISTS `techanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `techanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `fenlei` varchar(200) NOT NULL COMMENT '分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `chanqu` varchar(200) NOT NULL COMMENT '产区',
  `xiangqing` longtext COMMENT '详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1612442500955 DEFAULT CHARSET=utf8 COMMENT='特产信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `techanxinxi`
--

LOCK TABLES `techanxinxi` WRITE;
/*!40000 ALTER TABLE `techanxinxi` DISABLE KEYS */;
INSERT INTO `techanxinxi` VALUES (21,'2021-02-04 12:25:57','商品名称1','食品','http://localhost:8080/ssm80z17/upload/1612441840268.jpg','规格1','品牌1','产区1','<p><img src=\"http://localhost:8080/ssm80z17/upload/1612441847772.jpg\"></p>','2021-02-04 20:43:37',6,36),(22,'2021-02-04 12:25:57','商品名称2','食品','http://localhost:8080/ssm80z17/upload/1612441856359.jpg','规格2','品牌2','产区2','<p><img src=\"http://localhost:8080/ssm80z17/upload/1612441863985.jpg\"></p>','2021-02-04 20:38:45',5,36),(23,'2021-02-04 12:25:57','商品名称3','山货','http://localhost:8080/ssm80z17/upload/1612441873280.jpg','规格3','品牌3','产区3','<p><img src=\"http://localhost:8080/ssm80z17/upload/1612441884737.jpg\"></p>','2021-02-04 20:39:50',7,100),(24,'2021-02-04 12:25:57','商品名称4','分类4','http://localhost:8080/ssm80z17/upload/1612442050498.jpg','规格4','品牌4','产区4','<p>详情4</p>','2021-02-04 20:34:03',5,99.9),(25,'2021-02-04 12:25:57','商品名称5','分类5','http://localhost:8080/ssm80z17/upload/1612442059464.jpg','规格5','品牌5','产区5','<p>详情5</p>','2021-02-04 20:34:15',6,99.9),(26,'2021-02-04 12:25:57','商品名称6','分类6','http://localhost:8080/ssm80z17/upload/1612442067054.jpg','规格6','品牌6','产区6','<p>详情6</p>','2021-02-04 20:34:23',7,99.9),(1612442500954,'2021-02-04 12:41:40','这里添加特产信息','山货','http://localhost:8080/ssm80z17/upload/1612442483588.jpg','盒','AA','遂川','<p><img src=\"http://localhost:8080/ssm80z17/upload/1612442498704.jpg\"></p>','2021-02-04 20:43:44',2,128);
/*!40000 ALTER TABLE `techanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','x5h1nnin5qn6rf2kt4f6tl9wdxd1k4th','2021-02-04 12:28:38','2021-02-04 13:44:27'),(2,1612442247539,'666','yonghu','用户','77i6sp62zz88xgu4ptgf21w9ekkib815','2021-02-04 12:37:31','2021-02-04 13:44:43');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-02-04 12:25:57'),(2,'000','000','管理员','2021-02-04 12:42:11');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1612442247540 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (31,'2021-02-04 12:25:57','用户1','123456','姓名1','男','http://localhost:8080/ssm80z17/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com',100),(32,'2021-02-04 12:25:57','用户2','123456','姓名2','男','http://localhost:8080/ssm80z17/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com',100),(33,'2021-02-04 12:25:57','用户3','123456','姓名3','男','http://localhost:8080/ssm80z17/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com',100),(34,'2021-02-04 12:25:57','用户4','123456','姓名4','男','http://localhost:8080/ssm80z17/upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com',100),(35,'2021-02-04 12:25:57','用户5','123456','姓名5','男','http://localhost:8080/ssm80z17/upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com',100),(36,'2021-02-04 12:25:57','用户6','123456','姓名6','男','http://localhost:8080/ssm80z17/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com',100),(1612442247539,'2021-02-04 12:37:27','666','666','小邹','女','http://localhost:8080/ssm80z17/upload/1612442258007.jpeg','16459878982','1623@123.com',364);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-04 21:47:25

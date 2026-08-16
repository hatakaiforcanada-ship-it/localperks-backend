/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50622
 Source Host           : localhost:3306
 Source Schema         : localperks

 Target Server Type    : MySQL
 Target Server Version : 50622
 File Encoding         : 65001

 Date: 14/03/2022 21:38:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_blog
-- ----------------------------
DROP TABLE IF EXISTS `tb_blog`;
CREATE TABLE `tb_blog`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` bigint(20) NOT NULL COMMENT '商户id',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '标题',
  `images` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '探店的照片，最多9张，多张以\",\"隔开',
  `content` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '探店的文字描述',
  `liked` int(8) UNSIGNED NULL DEFAULT 0 COMMENT '点赞数量',
  `comments` int(8) UNSIGNED NULL DEFAULT NULL COMMENT '评论数量',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_blog
-- ----------------------------
INSERT INTO `tb_blog` VALUES (4, 4, 2, '无尽浪漫的夜晚丨在万花丛中摇晃着红酒杯🍷品战斧牛排🥩', '/imgs/blogs/7/14/4771fefb-1a87-4252-816c-9f7ec41ffa4a.jpg,/imgs/blogs/4/10/2f07e3c9-ddce-482d-9ea7-c21450f8d7cd.jpg,/imgs/blogs/2/6/b0756279-65da-4f2d-b62a-33f74b06454a.jpg,/imgs/blogs/10/7/7e97f47d-eb49-4dc9-a583-95faa7aed287.jpg,/imgs/blogs/1/2/4a7b496b-2a08-4af7-aa95-df2c3bd0ef97.jpg,/imgs/blogs/14/3/52b290eb-8b5d-403b-8373-ba0bb856d18e.jpg', '生活就是一半烟火·一半诗意<br/>手执烟火谋生活·心怀诗意以谋爱·<br/>当然<br/>\r\n男朋友给不了的浪漫要学会自己给🍒<br/>\n无法重来的一生·尽量快乐.<br/><br/>🏰「小筑里·神秘浪漫花园餐厅」🏰<br/><br/>\n💯这是一家最最最美花园的西餐厅·到处都是花餐桌上是花前台是花  美好无处不在\n品一口葡萄酒，维亚红酒马瑟兰·微醺上头工作的疲惫消失无际·生如此多娇🍃<br/><br/>📍地址:延安路200号(家乐福面)<br/><br/>🚌交通:地铁①号线定安路B口出右转过下通道右转就到啦～<br/><br/>--------------🥣菜品详情🥣---------------<br/><br/>「战斧牛排]<br/>\n超大一块战斧牛排经过火焰的炙烤发出阵阵香，外焦里嫩让人垂涎欲滴，切开牛排的那一刻，牛排的汁水顺势流了出来，分熟的牛排肉质软，简直细嫩到犯规，一刻都等不了要放入嘴里咀嚼～<br/><br/>「奶油培根意面」<br/>太太太好吃了💯<br/>我真的无法形容它的美妙，意面混合奶油香菇的香味真的太太太香了，我真的舔盘了，一丁点美味都不想浪费‼️<br/><br/><br/>「香菜汁烤鲈鱼」<br/>这个酱是辣的 真的绝好吃‼️<br/>鲈鱼本身就很嫩没什么刺，烤过之后外皮酥酥的，鱼肉蘸上酱料根本停不下来啊啊啊啊<br/>能吃辣椒的小伙伴一定要尝尝<br/><br/>非常可 好吃子🍽\n<br/>--------------🍃个人感受🍃---------------<br/><br/>【👩🏻‍🍳服务】<br/>小姐姐特别耐心的给我们介绍彩票 <br/>推荐特色菜品，拍照需要帮忙也是尽心尽力配合，太爱他们了<br/><br/>【🍃环境】<br/>比较有格调的西餐厅 整个餐厅的布局可称得上的万花丛生 有种在人间仙境的感觉🌸<br/>集美食美酒与鲜花为一体的风格店铺 令人向往<br/>烟火皆是生活 人间皆是浪漫<br/>', 1, 104, '2021-12-28 19:50:01', '2022-03-10 14:26:34');
INSERT INTO `tb_blog` VALUES (5, 1, 2, '人均30💰杭州这家港式茶餐厅我疯狂打call‼️', '/imgs/blogs/4/7/863cc302-d150-420d-a596-b16e9232a1a6.jpg,/imgs/blogs/11/12/8b37d208-9414-4e78-b065-9199647bb3e3.jpg,/imgs/blogs/4/1/fa74a6d6-3026-4cb7-b0b6-35abb1e52d11.jpg,/imgs/blogs/9/12/ac2ce2fb-0605-4f14-82cc-c962b8c86688.jpg,/imgs/blogs/4/0/26a7cd7e-6320-432c-a0b4-1b7418f45ec7.jpg,/imgs/blogs/15/9/cea51d9b-ac15-49f6-b9f1-9cf81e9b9c85.jpg', '又吃到一家好吃的茶餐厅🍴环境是怀旧tvb港风📺边吃边拍照片📷几十种菜品均价都在20+💰可以是很平价了！<br>·<br>店名：九记冰厅(远洋店)<br>地址：杭州市丽水路远洋乐堤港负一楼（溜冰场旁边）<br>·<br>✔️黯然销魂饭（38💰）<br>这碗饭我吹爆！米饭上盖满了甜甜的叉烧 还有两颗溏心蛋🍳每一粒米饭都裹着浓郁的酱汁 光盘了<br>·<br>✔️铜锣湾漏奶华（28💰）<br>黄油吐司烤的脆脆的 上面洒满了可可粉🍫一刀切开 奶盖流心像瀑布一样流出来  满足<br>·<br>✔️神仙一口西多士士（16💰）<br>简简单单却超级好吃！西多士烤的很脆 黄油味浓郁 面包体超级柔软 上面淋了炼乳<br>·<br>✔️怀旧五柳炸蛋饭（28💰）<br>四个鸡蛋炸成蓬松的炸蛋！也太好吃了吧！还有大块鸡排 上淋了酸甜的酱汁 太合我胃口了！！<br>·<br>✔️烧味双拼例牌（66💰）<br>选了烧鹅➕叉烧 他家烧腊品质真的惊艳到我！据说是每日广州发货 到店现烧现卖的黑棕鹅 每口都是正宗的味道！肉质很嫩 皮超级超级酥脆！一口爆油！叉烧肉也一点都不柴 甜甜的很入味 搭配梅子酱很解腻 ！<br>·<br>✔️红烧脆皮乳鸽（18.8💰）<br>乳鸽很大只 这个价格也太划算了吧， 肉质很有嚼劲 脆皮很酥 越吃越香～<br>·<br>✔️大满足小吃拼盘（25💰）<br>翅尖➕咖喱鱼蛋➕蝴蝶虾➕盐酥鸡<br>zui喜欢里面的咖喱鱼！咖喱酱香甜浓郁！鱼蛋很q弹～<br>·<br>✔️港式熊仔丝袜奶茶（19💰）<br>小熊🐻造型的奶茶冰也太可爱了！颜值担当 很地道的丝袜奶茶 茶味特别浓郁～<br>·', 1, 0, '2021-12-28 20:57:49', '2022-03-10 09:21:39');
INSERT INTO `tb_blog` VALUES (6, 10, 1, '杭州周末好去处｜💰50就可以骑马啦🐎', '/imgs/blogs/blog1.jpg', '杭州周末好去处｜💰50就可以骑马啦🐎', 1, 0, '2022-01-11 16:05:47', '2022-03-10 09:21:41');
INSERT INTO `tb_blog` VALUES (7, 10, 1, '杭州周末好去处｜💰50就可以骑马啦🐎', '/imgs/blogs/blog1.jpg', '杭州周末好去处｜💰50就可以骑马啦🐎', 1, 0, '2022-01-11 16:05:47', '2022-03-10 09:21:42');

-- ----------------------------
-- Table structure for tb_blog_comments
-- ----------------------------
DROP TABLE IF EXISTS `tb_blog_comments`;
CREATE TABLE `tb_blog_comments`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户id',
  `blog_id` bigint(20) UNSIGNED NOT NULL COMMENT '探店id',
  `parent_id` bigint(20) UNSIGNED NOT NULL COMMENT '关联的1级评论id，如果是一级评论，则值为0',
  `answer_id` bigint(20) UNSIGNED NOT NULL COMMENT '回复的评论id',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '回复的内容',
  `liked` int(8) UNSIGNED NULL DEFAULT NULL COMMENT '点赞数',
  `status` tinyint(1) UNSIGNED NULL DEFAULT NULL COMMENT '状态，0：正常，1：被举报，2：禁止查看',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_blog_comments
-- ----------------------------

-- ----------------------------
-- Table structure for tb_follow
-- ----------------------------
DROP TABLE IF EXISTS `tb_follow`;
CREATE TABLE `tb_follow`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户id',
  `follow_user_id` bigint(20) UNSIGNED NOT NULL COMMENT '关联的用户id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_follow
-- ----------------------------

-- ----------------------------
-- Table structure for tb_seckill_voucher
-- ----------------------------
DROP TABLE IF EXISTS `tb_seckill_voucher`;
CREATE TABLE `tb_seckill_voucher`  (
  `voucher_id` bigint(20) UNSIGNED NOT NULL COMMENT '关联的优惠券的id',
  `stock` int(8) NOT NULL COMMENT '库存',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `begin_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '生效时间',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '失效时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`voucher_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '秒杀优惠券表，与优惠券是一对一关系' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_seckill_voucher
-- ----------------------------

-- ----------------------------
-- Table structure for tb_shop
-- ----------------------------
DROP TABLE IF EXISTS `tb_shop`;
CREATE TABLE `tb_shop`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商铺名称',
  `type_id` bigint(20) UNSIGNED NOT NULL COMMENT '商铺类型的id',
  `images` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '商铺图片，多个图片以\',\'隔开',
  `area` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '商圈，例如陆家嘴',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '地址',
  `x` double UNSIGNED NOT NULL COMMENT '经度',
  `y` double UNSIGNED NOT NULL COMMENT '维度',
  `avg_price` bigint(10) UNSIGNED NULL DEFAULT NULL COMMENT '均价，取整数',
  `sold` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT '销量',
  `comments` int(10) UNSIGNED ZEROFILL NOT NULL COMMENT '评论数量',
  `score` int(2) UNSIGNED ZEROFILL NOT NULL COMMENT '评分，1~5分，乘10保存，避免小数',
  `open_hours` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '营业时间，例如 10:00-22:00',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `foreign_key_type`(`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_shop
-- ----------------------------
INSERT INTO `tb_shop` VALUES (1, '103茶餐厅', 1, 'https://qcloud.dpfile.com/pc/jiclIsCKmOI2arxKN1Uf0Hx3PucIJH8q0QSz-Z8llzcN56-_QiKuOvyio1OOxsRtFoXqu0G3iT2T27qat3WhLVEuLYk00OmSS1IdNpm8K8sG4JN9RIm2mTKcbLtc2o2vfCF2ubeXzk49OsGrXt_KYDCngOyCwZK-s3fqawWswzk.jpg,https://qcloud.dpfile.com/pc/IOf6VX3qaBgFXFVgp75w-KKJmWZjFc8GXDU8g9bQC6YGCpAmG00QbfT4vCCBj7njuzFvxlbkWx5uwqY2qcjixFEuLYk00OmSS1IdNpm8K8sG4JN9RIm2mTKcbLtc2o2vmIU_8ZGOT1OjpJmLxG6urQ.jpg', '大关', '金华路锦昌文华苑29号', 120.149192, 30.316078, 80, 0000004215, 0000003035, 37, '10:00-22:00', '2021-12-22 18:10:39', '2022-01-13 17:32:19');
INSERT INTO `tb_shop` VALUES (2, '蔡馬洪涛烤肉·老北京铜锅涮羊肉', 1, 'https://p0.meituan.net/bbia/c1870d570e73accbc9fee90b48faca41195272.jpg,http://p0.meituan.net/mogu/397e40c28fc87715b3d5435710a9f88d706914.jpg,https://qcloud.dpfile.com/pc/MZTdRDqCZdbPDUO0Hk6lZENRKzpKRF7kavrkEI99OxqBZTzPfIxa5E33gBfGouhFuzFvxlbkWx5uwqY2qcjixFEuLYk00OmSS1IdNpm8K8sG4JN9RIm2mTKcbLtc2o2vmIU_8ZGOT1OjpJmLxG6urQ.jpg', '拱宸桥/上塘', '上塘路1035号（中国工商银行旁）', 120.151505, 30.333422, 85, 0000002160, 0000001460, 46, '11:30-03:00', '2021-12-22 19:00:13', '2022-01-11 16:12:26');
INSERT INTO `tb_shop` VALUES (3, '新白鹿餐厅(运河上街店)', 1, 'https://p0.meituan.net/biztone/694233_1619500156517.jpeg,https://img.meituan.net/msmerchant/876ca8983f7395556eda9ceb064e6bc51840883.png,https://img.meituan.net/msmerchant/86a76ed53c28eff709a36099aefe28b51554088.png', '运河上街', '台州路2号运河上街购物中心F5', 120.151954, 30.32497, 61, 0000012035, 0000008045, 47, '10:30-21:00', '2021-12-22 19:10:05', '2022-01-11 16:12:42');
INSERT INTO `tb_shop` VALUES (4, 'Mamala(杭州远洋乐堤港店)', 1, 'https://img.meituan.net/msmerchant/232f8fdf09050838bd33fb24e79f30f9606056.jpg,https://qcloud.dpfile.com/pc/rDe48Xe15nQOHCcEEkmKUp5wEKWbimt-HDeqYRWsYJseXNncvMiXbuED7x1tXqN4uzFvxlbkWx5uwqY2qcjixFEuLYk00OmSS1IdNpm8K8sG4JN9RIm2mTKcbLtc2o2vmIU_8ZGOT1OjpJmLxG6urQ.jpg', '拱宸桥/上塘', '丽水路66号远洋乐堤港商城2期1层B115号', 120.146659, 30.312742, 290, 0000013519, 0000009529, 49, '11:00-22:00', '2021-12-22 19:17:15', '2022-01-11 16:12:51');
INSERT INTO `tb_shop` VALUES (5, '海底捞火锅(水晶城购物中心店）', 1, 'https://img.meituan.net/msmerchant/054b5de0ba0b50c18a620cc37482129a45739.jpg,https://img.meituan.net/msmerchant/59b7eff9b60908d52bd4aea9ff356e6d145920.jpg,https://qcloud.dpfile.com/pc/Qe2PTEuvtJ5skpUXKKoW9OQ20qc7nIpHYEqJGBStJx0mpoyeBPQOJE4vOdYZwm9AuzFvxlbkWx5uwqY2qcjixFEuLYk00OmSS1IdNpm8K8sG4JN9RIm2mTKcbLtc2o2vmIU_8ZGOT1OjpJmLxG6urQ.jpg', '大关', '上塘路458号水晶城购物中心F6', 120.15778, 30.310633, 104, 0000004125, 0000002764, 49, '10:00-07:00', '2021-12-22 19:20:58', '2022-01-11 16:13:01');
INSERT INTO `tb_shop` VALUES (6, '幸福里老北京涮锅（丝联店）', 1, 'https://img.meituan.net/msmerchant/e71a2d0d693b3033c15522c43e03f09198239.jpg,https://img.meituan.net/msmerchant/9f8a966d60ffba00daf35458522273ca658239.jpg,https://img.meituan.net/msmerchant/ef9ca5ef6c05d381946fe4a9aa7d9808554502.jpg', '拱宸桥/上塘', '金华南路189号丝联166号', 120.148603, 30.318618, 130, 0000009531, 0000007324, 46, '11:00-13:50,17:00-20:50', '2021-12-22 19:24:53', '2022-01-11 16:13:09');
INSERT INTO `tb_shop` VALUES (7, '炉鱼(拱墅万达广场店)', 1, 'https://img.meituan.net/msmerchant/909434939a49b36f340523232924402166854.jpg,https://img.meituan.net/msmerchant/32fd2425f12e27db0160e837461c10303700032.jpg,https://img.meituan.net/msmerchant/f7022258ccb8dabef62a0514d3129562871160.jpg', '北部新城', '杭行路666号万达商业中心4幢2单元409室(铺位号4005)', 120.124691, 30.336819, 85, 0000002631, 0000001320, 47, '00:00-24:00', '2021-12-22 19:40:52', '2022-01-11 16:13:19');
INSERT INTO `tb_shop` VALUES (8, '浅草屋寿司（运河上街店）', 1, 'https://img.meituan.net/msmerchant/cf3dff697bf7f6e11f4b79c4e7d989e4591290.jpg,https://img.meituan.net/msmerchant/0b463f545355c8d8f021eb2987dcd0c8567811.jpg,https://img.meituan.net/msmerchant/c3c2516939efaf36c4ccc64b0e629fad587907.jpg', '运河上街', '拱墅区金华路80号运河上街B1', 120.150526, 30.325231, 88, 0000002406, 0000001206, 46, ' 11:00-21:30', '2021-12-22 19:51:06', '2022-01-11 16:13:25');
INSERT INTO `tb_shop` VALUES (9, '羊老三羊蝎子牛仔排北派炭火锅(运河上街店)', 1, 'https://p0.meituan.net/biztone/163160492_1624251899456.jpeg,https://img.meituan.net/msmerchant/e478eb16f7e31a7f8b29b5e3bab6de205500837.jpg,https://img.meituan.net/msmerchant/6173eb1d18b9d70ace7fdb3f2dd939662884857.jpg', '运河上街', '台州路2号运河上街购物中心F5', 120.150598, 30.325251, 101, 0000002763, 0000001363, 44, '11:00-21:30', '2021-12-22 19:53:59', '2022-01-11 16:13:34');
INSERT INTO `tb_shop` VALUES (10, '开乐迪KTV（运河上街店）', 2, 'https://p0.meituan.net/joymerchant/a575fd4adb0b9099c5c410058148b307-674435191.jpg,https://p0.meituan.net/merchantpic/68f11bf850e25e437c5f67decfd694ab2541634.jpg,https://p0.meituan.net/dpdeal/cb3a12225860ba2875e4ea26c6d14fcc197016.jpg', '运河上街', '台州路2号运河上街购物中心F4', 120.149093, 30.324666, 67, 0000026891, 0000000902, 37, '00:00-24:00', '2021-12-22 20:25:16', '2021-12-22 20:25:16');
INSERT INTO `tb_shop` VALUES (11, 'INLOVE KTV(水晶城店)', 2, 'https://p0.meituan.net/dpmerchantpic/53e74b200211d68988a4f02ae9912c6c1076826.jpg,https://qcloud.dpfile.com/pc/4iWtIvzLzwM2MGgyPu1PCDb4SWEaKqUeHm--YAt1EwR5tn8kypBcqNwHnjg96EvT_Gd2X_f-v9T8Yj4uLt25Gg.jpg,https://qcloud.dpfile.com/pc/WZsJWRI447x1VG2x48Ujgu7vwqksi_9WitdKI4j3jvIgX4MZOpGNaFtM93oSSizbGybIjx5eX6WNgCPvcASYAw.jpg', '水晶城', '上塘路458号水晶城购物中心6层', 120.15853, 30.310002, 75, 0000035977, 0000005684, 47, '11:30-06:00', '2021-12-22 20:29:02', '2021-12-22 20:39:00');
INSERT INTO `tb_shop` VALUES (12, '魅(杭州远洋乐堤港店)', 2, 'https://p0.meituan.net/dpmerchantpic/63833f6ba0393e2e8722420ef33f3d40466664.jpg,https://p0.meituan.net/dpmerchantpic/ae3c94cc92c529c4b1d7f68cebed33fa105810.png,', '远洋乐堤港', '丽水路58号远洋乐堤港F4', 120.14983, 30.31211, 88, 0000006444, 0000000235, 46, '10:00-02:00', '2021-12-22 20:34:34', '2021-12-22 20:34:34');
INSERT INTO `tb_shop` VALUES (13, '讴K拉量贩KTV(北城天地店)', 2, 'https://p1.meituan.net/merchantpic/598c83a8c0d06fe79ca01056e214d345875600.jpg,https://qcloud.dpfile.com/pc/HhvI0YyocYHRfGwJWqPQr34hRGRl4cWdvlNwn3dqghvi4WXlM2FY1te0-7pE3Wb9_Gd2X_f-v9T8Yj4uLt25Gg.jpg,https://qcloud.dpfile.com/pc/F5ZVzZaXFE27kvQzPnaL4V8O9QCpVw2nkzGrxZE8BqXgkfyTpNExfNG5CEPQX4pjGybIjx5eX6WNgCPvcASYAw.jpg', 'D32天阳购物中心', '湖州街567号北城天地5层', 120.130453, 30.327655, 58, 0000018997, 0000001857, 41, '12:00-02:00', '2021-12-22 20:38:54', '2021-12-22 20:40:04');
INSERT INTO `tb_shop` VALUES (14, '星聚会KTV(拱墅区万达店)', 2, 'https://p0.meituan.net/dpmerchantpic/f4cd6d8d4eb1959c3ea826aa05a552c01840451.jpg,https://p0.meituan.net/dpmerchantpic/2efc07aed856a8ab0fc75c86f4b9b0061655777.jpg,https://qcloud.dpfile.com/pc/zWfzzIorCohKT0bFwsfAlHuayWjI6DBEMPHHncmz36EEMU9f48PuD9VxLLDAjdoU_Gd2X_f-v9T8Yj4uLt25Gg.jpg', '北部新城', '杭行路666号万达广场C座1-2F', 120.128958, 30.337252, 60, 0000017771, 0000000685, 47, '10:00-22:00', '2021-12-22 20:48:54', '2021-12-22 20:48:54');

-- ----------------------------
-- Table structure for tb_shop_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_shop_type`;
CREATE TABLE `tb_shop_type`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型名称',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图标',
  `sort` int(3) UNSIGNED NULL DEFAULT NULL COMMENT '顺序',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_shop_type
-- ----------------------------
INSERT INTO `tb_shop_type` VALUES (1, '美食', '/types/ms.png', 1, '2021-12-22 20:17:47', '2021-12-23 11:24:31');
INSERT INTO `tb_shop_type` VALUES (2, 'KTV', '/types/KTV.png', 2, '2021-12-22 20:18:27', '2021-12-23 11:24:31');
INSERT INTO `tb_shop_type` VALUES (3, '丽人·美发', '/types/lrmf.png', 3, '2021-12-22 20:18:48', '2021-12-23 11:24:31');
INSERT INTO `tb_shop_type` VALUES (4, '健身运动', '/types/jsyd.png', 10, '2021-12-22 20:19:04', '2021-12-23 11:24:31');
INSERT INTO `tb_shop_type` VALUES (5, '按摩·足疗', '/types/amzl.png', 5, '2021-12-22 20:19:27', '2021-12-23 11:24:31');
INSERT INTO `tb_shop_type` VALUES (6, '美容SPA', '/types/spa.png', 6, '2021-12-22 20:19:35', '2021-12-23 11:24:31');
INSERT INTO `tb_shop_type` VALUES (7, '亲子游乐', '/types/qzyl.png', 7, '2021-12-22 20:19:53', '2021-12-23 11:24:31');
INSERT INTO `tb_shop_type` VALUES (8, '酒吧', '/types/jiuba.png', 8, '2021-12-22 20:20:02', '2021-12-23 11:24:31');
INSERT INTO `tb_shop_type` VALUES (9, '轰趴馆', '/types/hpg.png', 9, '2021-12-22 20:20:08', '2021-12-23 11:24:31');
INSERT INTO `tb_shop_type` VALUES (10, '美睫·美甲', '/types/mjmj.png', 4, '2021-12-22 20:21:46', '2021-12-23 11:24:31');

-- ----------------------------
-- Table structure for tb_sign
-- ----------------------------
DROP TABLE IF EXISTS `tb_sign`;
CREATE TABLE `tb_sign`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '用户id',
  `year` year NOT NULL COMMENT '签到的年',
  `month` tinyint(2) NOT NULL COMMENT '签到的月',
  `date` date NOT NULL COMMENT '签到的日期',
  `is_backup` tinyint(1) UNSIGNED NULL DEFAULT NULL COMMENT '是否补签',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_sign
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `phone` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'Phone number in E.164 format',
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '密码，加密存储',
  `nick_name` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '昵称，默认是用户id',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '人物头像',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uniqe_key_phone`(`phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1010 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, '+12025550001', '', '小鱼同学', '/imgs/blogs/blog1.jpg', '2021-12-24 10:27:19', '2022-01-11 16:04:00');
INSERT INTO `tb_user` VALUES (2, '+12025550002', '', '可可今天不吃肉', '/imgs/icons/kkjtbcr.jpg', '2021-12-24 15:14:39', '2021-12-28 19:58:04');
INSERT INTO `tb_user` VALUES (4, '+12025550004', '', 'user_slxaxy2au9f3tanffaxr', '', '2022-01-07 12:07:53', '2022-01-07 12:07:53');
INSERT INTO `tb_user` VALUES (5, '+12025550005', '', '可爱多', '/imgs/icons/user5-icon.png', '2022-01-07 16:11:33', '2022-03-11 09:09:20');
INSERT INTO `tb_user` VALUES (6, '+12025550006', '', 'user_xn5wr3hpsv', '', '2022-02-07 17:54:10', '2022-02-07 17:54:10');
INSERT INTO `tb_user` VALUES (10, '+12025550010', '', 'user_88arndojw9', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (11, '+12025550011', '', 'user_qcfr2k1lmi', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (12, '+12025550012', '', 'user_ffsk4hli07', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (13, '+12025550013', '', 'user_r62q62ijef', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (14, '+12025550014', '', 'user_f3rymyt1q5', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (15, '+12025550015', '', 'user_hnyhc3mjat', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (16, '+12025550016', '', 'user_2spo35f5rl', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (17, '+12025550017', '', 'user_q3r70baqe1', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (18, '+12025550018', '', 'user_v73ottjqxt', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (19, '+12025550019', '', 'user_tmh8o4r11q', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (20, '+12025550020', '', 'user_4epgb7b5u1', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (21, '+12025550021', '', 'user_g474zoujxj', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (22, '+12025550022', '', 'user_r3kh1g6aah', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (23, '+12025550023', '', 'user_u3uuo7l5fo', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (24, '+12025550024', '', 'user_9o93lbsojt', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (25, '+12025550025', '', 'user_jbhmr43wpq', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (26, '+12025550026', '', 'user_nevyd3c5ux', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (27, '+12025550027', '', 'user_oow4frmjp3', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (28, '+12025550028', '', 'user_cvmknmec74', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (29, '+12025550029', '', 'user_0t2x5njbz7', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (30, '+12025550030', '', 'user_y5x09783hp', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (31, '+12025550031', '', 'user_owe4eyuhhh', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (32, '+12025550032', '', 'user_j76auh0ggg', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (33, '+12025550033', '', 'user_aal5w9rm33', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (34, '+12025550034', '', 'user_a2pgu8cr21', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (35, '+12025550035', '', 'user_nle60p846v', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (36, '+12025550036', '', 'user_w1mck7c7yv', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (37, '+12025550037', '', 'user_bnpiybumlk', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (38, '+12025550038', '', 'user_4w7xeo2yyt', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (39, '+12025550039', '', 'user_99u4voj7xl', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (40, '+12025550040', '', 'user_g03is27pd6', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (41, '+12025550041', '', 'user_3j9erfkl0p', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (42, '+12025550042', '', 'user_l7rs56ah9y', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (43, '+12025550043', '', 'user_p3655ctliy', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (44, '+12025550044', '', 'user_qi1qze1yp1', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (45, '+12025550045', '', 'user_vrd5ir0rj0', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (46, '+12025550046', '', 'user_tubboh1byc', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (47, '+12025550047', '', 'user_j2bdj3d2eo', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (48, '+12025550048', '', 'user_ncj7r0vu1h', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (49, '+12025550049', '', 'user_63rhqjqa0a', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (50, '+12025550050', '', 'user_80ue5cywnk', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (51, '+12025550051', '', 'user_j4q037vhpi', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (52, '+12025550052', '', 'user_ms0uat5bf0', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (53, '+12025550053', '', 'user_oqep16bdel', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (54, '+12025550054', '', 'user_vjtvjjdqh7', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (55, '+12025550055', '', 'user_0168i9hv5g', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (56, '+12025550056', '', 'user_vh1j6zw1q4', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (57, '+12025550057', '', 'user_rkf2nxouof', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (58, '+12025550058', '', 'user_whlt2chtv3', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (59, '+12025550059', '', 'user_lpqr90wbeo', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (60, '+12025550060', '', 'user_h40y3ipk9k', '', '2022-02-28 10:50:47', '2022-02-28 10:50:47');
INSERT INTO `tb_user` VALUES (61, '+12025550061', '', 'user_awdqkmbkt7', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (62, '+12025550062', '', 'user_1xgbg9v4r5', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (63, '+12025550063', '', 'user_7vf5fgiu68', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (64, '+12025550064', '', 'user_lsgiz015vf', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (65, '+12025550065', '', 'user_0nqjvanruk', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (66, '+12025550066', '', 'user_8alg1taath', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (67, '+12025550067', '', 'user_q45ykjgpxe', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (68, '+12025550068', '', 'user_4hy0o6ir0r', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (69, '+12025550069', '', 'user_q6rh7e6zo9', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (70, '+12025550070', '', 'user_1wp3ygfyn2', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (71, '+12025550071', '', 'user_13vjvo6flp', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (72, '+12025550072', '', 'user_glyshbbwin', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (73, '+12025550073', '', 'user_3ewzgsnhzj', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (74, '+12025550074', '', 'user_ky481zf1fs', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (75, '+12025550075', '', 'user_o5yzu0epev', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (76, '+12025550076', '', 'user_ycbracmsi3', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (77, '+12025550077', '', 'user_974wwi1283', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (78, '+12025550078', '', 'user_1y0xokmk9w', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (79, '+12025550079', '', 'user_nd74cho3tu', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (80, '+12025550080', '', 'user_5z7u2eysa4', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (81, '+12025550081', '', 'user_yvf8hfu5yy', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (82, '+12025550082', '', 'user_2poi4wvpms', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (83, '+12025550083', '', 'user_v4ysxjt1yu', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (84, '+12025550084', '', 'user_kbvn4gpgk6', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (85, '+12025550085', '', 'user_23niik1tyg', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (86, '+12025550086', '', 'user_uf2zz6ispe', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (87, '+12025550087', '', 'user_5k19vf7c4o', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (88, '+12025550088', '', 'user_5ahdd98xbr', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (89, '+12025550089', '', 'user_a5cnfnoopx', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (90, '+12025550090', '', 'user_utnmcyfg13', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (91, '+12025550091', '', 'user_0k6n8ikb95', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (92, '+12025550092', '', 'user_zqk5maqtmi', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (93, '+12025550093', '', 'user_9i9suwd3nd', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (94, '+12025550094', '', 'user_u0y0ngrdjo', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (95, '+12025550095', '', 'user_stvijjwvzu', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (96, '+12025550096', '', 'user_7if7tttays', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (97, '+12025550097', '', 'user_f9hmz0ngdu', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (98, '+12025550098', '', 'user_wuhs2nq9d0', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (99, '+12025550099', '', 'user_1u3rlntd5s', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (100, '+12025550100', '', 'user_ywe62vhu7u', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (101, '+12025550101', '', 'user_rbfpzdt6tg', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (102, '+12025550102', '', 'user_jv69l0d1kg', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (103, '+12025550103', '', 'user_dg6hwl48r6', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (104, '+12025550104', '', 'user_8rwl92pixr', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (105, '+12025550105', '', 'user_k5dek2os3m', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (106, '+12025550106', '', 'user_kw1nr2scyz', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (107, '+12025550107', '', 'user_h81c5g0t7s', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (108, '+12025550108', '', 'user_jar6djas5e', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (109, '+12025550109', '', 'user_f9x2qm4grh', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (110, '+12025550110', '', 'user_mg5h6c4bcu', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (111, '+12025550111', '', 'user_hcg7ocbnus', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (112, '+12025550112', '', 'user_rsbxx7g2yz', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (113, '+12025550113', '', 'user_bi3fhutbd1', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (114, '+12025550114', '', 'user_o4pjkkyu3q', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (115, '+12025550115', '', 'user_7zfs7g5vqb', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (116, '+12025550116', '', 'user_oq71inq541', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (117, '+12025550117', '', 'user_u9zoiadq6l', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (118, '+12025550118', '', 'user_4elguvu5pz', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (119, '+12025550119', '', 'user_90dclmdv94', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (120, '+12025550120', '', 'user_v2of3k1liq', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (121, '+12025550121', '', 'user_bg04b99iqn', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (122, '+12025550122', '', 'user_6fo9sul3q6', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (123, '+12025550123', '', 'user_vl7ajjlhnn', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (124, '+12025550124', '', 'user_df3kaj5zi1', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (125, '+12025550125', '', 'user_yo6iohe5s2', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (126, '+12025550126', '', 'user_2iss3wrcm1', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (127, '+12025550127', '', 'user_7y8qm8sv4r', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (128, '+12025550128', '', 'user_f825rhknpq', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (129, '+12025550129', '', 'user_3bigm0aauz', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (130, '+12025550130', '', 'user_ib9eo5dtgk', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (131, '+12025550131', '', 'user_ci5hhnufj9', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (132, '+12025550132', '', 'user_cc56u62rny', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (133, '+12025550133', '', 'user_i8fg7azvnt', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (134, '+12025550134', '', 'user_bw5dqkv6d9', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (135, '+12025550135', '', 'user_1n1o9ri5oz', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (136, '+12025550136', '', 'user_1b0zexoldy', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (137, '+12025550137', '', 'user_lz9dr6wxkw', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (138, '+12025550138', '', 'user_zfpfscu53e', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (139, '+12025550139', '', 'user_5kldn59nn9', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (140, '+12025550140', '', 'user_p0mjswjh9x', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (141, '+12025550141', '', 'user_z4jcqggm11', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (142, '+12025550142', '', 'user_pv9yctbxza', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (143, '+12025550143', '', 'user_u702tikvol', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (144, '+12025550144', '', 'user_sy4a5f3qmy', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (145, '+12025550145', '', 'user_n6g293r60l', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (146, '+12025550146', '', 'user_uylyp6ttqz', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (147, '+12025550147', '', 'user_h2zmzefha3', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (148, '+12025550148', '', 'user_5outop6hz2', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (149, '+12025550149', '', 'user_vp8l74sadq', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (150, '+12025550150', '', 'user_n9ww3of8fg', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (151, '+12025550151', '', 'user_rfm7pfgkv8', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (152, '+12025550152', '', 'user_h7298xuo0u', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (153, '+12025550153', '', 'user_72s0smb2wz', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (154, '+12025550154', '', 'user_twhphih9nd', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (155, '+12025550155', '', 'user_vfocakn5gl', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (156, '+12025550156', '', 'user_tfwe1v2x82', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (157, '+12025550157', '', 'user_eyrq375qgg', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (158, '+12025550158', '', 'user_rg2obilrot', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (159, '+12025550159', '', 'user_rzfwln2aw2', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (160, '+12025550160', '', 'user_rzfgzeshe1', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (161, '+12025550161', '', 'user_c67s0sjbmv', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (162, '+12025550162', '', 'user_fkyp652kkn', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (163, '+12025550163', '', 'user_sv1i552okx', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (164, '+12025550164', '', 'user_fsrmh6e0d3', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (165, '+12025550165', '', 'user_jey7gkjesn', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (166, '+12025550166', '', 'user_00xdq55r0f', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (167, '+12025550167', '', 'user_wkb6tveg4e', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (168, '+12025550168', '', 'user_51ong6aunx', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (169, '+12025550169', '', 'user_ke4h0uxthm', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (170, '+12025550170', '', 'user_oswyb9opx5', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (171, '+12025550171', '', 'user_iy8itbwg6q', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (172, '+12025550172', '', 'user_g1mk023p9r', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (173, '+12025550173', '', 'user_2507p7kvzs', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (174, '+12025550174', '', 'user_piixbanfxl', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (175, '+12025550175', '', 'user_w2d2is43jc', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (176, '+12025550176', '', 'user_lrk4it56lt', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (177, '+12025550177', '', 'user_3273q3j2ft', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (178, '+12025550178', '', 'user_ltf42q0vy4', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (179, '+12025550179', '', 'user_7npp13snqp', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (180, '+12025550180', '', 'user_slxftqmjp9', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (181, '+12025550181', '', 'user_il4dsuvdfr', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (182, '+12025550182', '', 'user_esm2d4uh7a', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (183, '+12025550183', '', 'user_te4prs2y3j', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (184, '+12025550184', '', 'user_dycwcufgj0', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (185, '+12025550185', '', 'user_jjo4dvsgag', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (186, '+12025550186', '', 'user_9opl0t1sd2', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (187, '+12025550187', '', 'user_hbm1dnssq6', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (188, '+12025550188', '', 'user_tx88zar5cs', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (189, '+12025550189', '', 'user_1p206nyupm', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (190, '+12025550190', '', 'user_8lnbd2ao5u', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (191, '+12025550191', '', 'user_v4uwls1wg7', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (192, '+12025550192', '', 'user_z1bkh9lnjj', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (193, '+12025550193', '', 'user_r7u852ex1n', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (194, '+12025550194', '', 'user_yqr54gdh8t', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (195, '+12025550195', '', 'user_x4kngjjng7', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (196, '+12025550196', '', 'user_xvtxjocno2', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (197, '+12025550197', '', 'user_1zj77q03tf', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (198, '+12025550198', '', 'user_0q8yjtlp7a', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (199, '+12025550199', '', 'user_nt2ogdyl73', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (200, '+12025550200', '', 'user_6w0ex6afsz', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (201, '+12025550201', '', 'user_qpm2vyflc3', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (202, '+12025550202', '', 'user_dzvf9xujj1', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (203, '+12025550203', '', 'user_aiypeaeupd', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (204, '+12025550204', '', 'user_5iznj0t5hg', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (205, '+12025550205', '', 'user_4t1flvqz2h', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (206, '+12025550206', '', 'user_542t36rd41', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (207, '+12025550207', '', 'user_kmhowbydu6', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (208, '+12025550208', '', 'user_e8nz64jbym', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (209, '+12025550209', '', 'user_zjbr3zq6we', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (210, '+12025550210', '', 'user_ptk6qaspna', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (211, '+12025550211', '', 'user_jei7tqtu1j', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (212, '+12025550212', '', 'user_8x7cyv5ey8', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (213, '+12025550213', '', 'user_mx3l4tj2jq', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (214, '+12025550214', '', 'user_ba6e9l6exg', '', '2022-02-28 10:50:48', '2022-02-28 10:50:48');
INSERT INTO `tb_user` VALUES (215, '+12025550215', '', 'user_vlku3rop6e', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (216, '+12025550216', '', 'user_hsff9net6q', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (217, '+12025550217', '', 'user_mbaficnzfe', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (218, '+12025550218', '', 'user_b3wglh40dk', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (219, '+12025550219', '', 'user_dvi1yllk48', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (220, '+12025550220', '', 'user_cxv8smu642', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (221, '+12025550221', '', 'user_ze5exti1z5', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (222, '+12025550222', '', 'user_b6524nuosz', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (223, '+12025550223', '', 'user_jw3xmz31ss', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (224, '+12025550224', '', 'user_3fqrglyqj0', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (225, '+12025550225', '', 'user_uf9dy1kfmg', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (226, '+12025550226', '', 'user_nn4ss4oupv', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (227, '+12025550227', '', 'user_khse5vlch8', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (228, '+12025550228', '', 'user_xfpqrk3hea', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (229, '+12025550229', '', 'user_0sfyf9o74l', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (230, '+12025550230', '', 'user_936vlojcwy', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (231, '+12025550231', '', 'user_wq9m8aqmay', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (232, '+12025550232', '', 'user_uqw0c5ilp5', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (233, '+12025550233', '', 'user_qjucgt4ar1', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (234, '+12025550234', '', 'user_sry5bqf8ev', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (235, '+12025550235', '', 'user_9csdwveeh8', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (236, '+12025550236', '', 'user_y9kl1yd7fk', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (237, '+12025550237', '', 'user_mahwf66irm', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (238, '+12025550238', '', 'user_tud2i4itlr', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (239, '+12025550239', '', 'user_p1s640kfny', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (240, '+12025550240', '', 'user_2tyzfj49r6', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (241, '+12025550241', '', 'user_wjswilvpou', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (242, '+12025550242', '', 'user_yuushg7x44', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (243, '+12025550243', '', 'user_pb0fas6tob', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (244, '+12025550244', '', 'user_3k4nn4dhuh', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (245, '+12025550245', '', 'user_lljtt3ttml', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (246, '+12025550246', '', 'user_weftqlsasg', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (247, '+12025550247', '', 'user_1lo78exvpl', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (248, '+12025550248', '', 'user_qzbukb32cm', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (249, '+12025550249', '', 'user_k80i5kfvoj', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (250, '+12025550250', '', 'user_ggx53ve2zp', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (251, '+12025550251', '', 'user_yz0fmlzjxv', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (252, '+12025550252', '', 'user_jh6epyjgiw', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (253, '+12025550253', '', 'user_0k0ly383fy', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (254, '+12025550254', '', 'user_ibc8pgs2jc', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (255, '+12025550255', '', 'user_ys8yxdm6cr', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (256, '+12025550256', '', 'user_7zdagyyymi', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (257, '+12025550257', '', 'user_9q7fiiqwzm', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (258, '+12025550258', '', 'user_64qzvesiku', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (259, '+12025550259', '', 'user_5fi8fsc9e5', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (260, '+12025550260', '', 'user_1wo4aktp89', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (261, '+12025550261', '', 'user_5mis2rucuh', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (262, '+12025550262', '', 'user_pghkcw4cog', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (263, '+12025550263', '', 'user_ymh7a5t69k', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (264, '+12025550264', '', 'user_58qypl26r3', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (265, '+12025550265', '', 'user_oknszihfil', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (266, '+12025550266', '', 'user_rx5qu0277b', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (267, '+12025550267', '', 'user_4mwekx3q8z', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (268, '+12025550268', '', 'user_ie9qzfwu27', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (269, '+12025550269', '', 'user_l80r6phxur', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (270, '+12025550270', '', 'user_np6iqqeuql', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (271, '+12025550271', '', 'user_5c27qgw2o3', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (272, '+12025550272', '', 'user_ujpa6juatc', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (273, '+12025550273', '', 'user_van4fds7cx', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (274, '+12025550274', '', 'user_ox11o9krp9', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (275, '+12025550275', '', 'user_c7o3u0usf2', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (276, '+12025550276', '', 'user_cq7hojlerq', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (277, '+12025550277', '', 'user_kphis0ntao', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (278, '+12025550278', '', 'user_nd12v2tdpj', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (279, '+12025550279', '', 'user_5far04rjm0', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (280, '+12025550280', '', 'user_f33abomjs2', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (281, '+12025550281', '', 'user_1qty1oyawt', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (282, '+12025550282', '', 'user_9l463o7me2', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (283, '+12025550283', '', 'user_0seyfs8ou8', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (284, '+12025550284', '', 'user_7uhqt2zf11', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (285, '+12025550285', '', 'user_wy2jtbkr1t', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (286, '+12025550286', '', 'user_yjf1kbl6r8', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (287, '+12025550287', '', 'user_r98pel35gn', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (288, '+12025550288', '', 'user_u2eg1jcwvz', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (289, '+12025550289', '', 'user_5z7d4fr9ye', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (290, '+12025550290', '', 'user_kl0p0ku6zv', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (291, '+12025550291', '', 'user_dsdocfa64r', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (292, '+12025550292', '', 'user_gbygsd03kc', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (293, '+12025550293', '', 'user_dj1xqos2is', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (294, '+12025550294', '', 'user_il6yctz040', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (295, '+12025550295', '', 'user_y4zn043gvj', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (296, '+12025550296', '', 'user_oh9tjoxq8c', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (297, '+12025550297', '', 'user_6xlq088asi', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (298, '+12025550298', '', 'user_0sepghh66s', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (299, '+12025550299', '', 'user_dzo7q333x7', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (300, '+12025550300', '', 'user_n7j3j68agt', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (301, '+12025550301', '', 'user_b99vc3qr3d', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (302, '+12025550302', '', 'user_o2uu01ngfw', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (303, '+12025550303', '', 'user_q0yy8pvku3', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (304, '+12025550304', '', 'user_lipi4iyiv9', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (305, '+12025550305', '', 'user_x2dq9i90ms', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (306, '+12025550306', '', 'user_bz9twrcx01', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (307, '+12025550307', '', 'user_iun0ocev18', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (308, '+12025550308', '', 'user_uob3pxr062', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (309, '+12025550309', '', 'user_nxuwi8q3n5', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (310, '+12025550310', '', 'user_g6si4hwe4r', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (311, '+12025550311', '', 'user_v4xud6pxnh', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (312, '+12025550312', '', 'user_n3vq5a4c49', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (313, '+12025550313', '', 'user_6qdfn8dkja', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (314, '+12025550314', '', 'user_872mdw0ibu', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (315, '+12025550315', '', 'user_s426pmlnno', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (316, '+12025550316', '', 'user_n7d3fcnlqf', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (317, '+12025550317', '', 'user_d1euhpgvjt', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (318, '+12025550318', '', 'user_luwqlqye4n', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (319, '+12025550319', '', 'user_m9khstqle0', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (320, '+12025550320', '', 'user_7u54hoeh5p', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (321, '+12025550321', '', 'user_hndxi8iyg7', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (322, '+12025550322', '', 'user_csagq8b16v', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (323, '+12025550323', '', 'user_sa979r5vfr', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (324, '+12025550324', '', 'user_gojbeoieko', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (325, '+12025550325', '', 'user_vrxmccmk36', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (326, '+12025550326', '', 'user_kwzzzxile8', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (327, '+12025550327', '', 'user_8ik6wmzcs3', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (328, '+12025550328', '', 'user_x9f4po6eok', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (329, '+12025550329', '', 'user_vn0g3rywt0', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (330, '+12025550330', '', 'user_0h0hqnoqvv', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (331, '+12025550331', '', 'user_ne3rvn4cim', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (332, '+12025550332', '', 'user_bz20tomja0', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (333, '+12025550333', '', 'user_7k5d8324tm', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (334, '+12025550334', '', 'user_5va74it1op', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (335, '+12025550335', '', 'user_gc21xkfgph', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (336, '+12025550336', '', 'user_rv1o0ousua', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (337, '+12025550337', '', 'user_lkp3hk0t8q', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (338, '+12025550338', '', 'user_e2kjjqo7ee', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (339, '+12025550339', '', 'user_ja24gfl42z', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (340, '+12025550340', '', 'user_5sxrarxxd2', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (341, '+12025550341', '', 'user_lzilfx23jr', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (342, '+12025550342', '', 'user_4healeh2sq', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (343, '+12025550343', '', 'user_txh60qz6xe', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (344, '+12025550344', '', 'user_ofie8fobtu', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (345, '+12025550345', '', 'user_wxfngmqndc', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (346, '+12025550346', '', 'user_n11kdqn95y', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (347, '+12025550347', '', 'user_7b9etto6jl', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (348, '+12025550348', '', 'user_sa23n9pacw', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (349, '+12025550349', '', 'user_1lhe46upfz', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (350, '+12025550350', '', 'user_jioft4gdiu', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (351, '+12025550351', '', 'user_jta7ld4vty', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (352, '+12025550352', '', 'user_5tkaejhk7g', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (353, '+12025550353', '', 'user_fkoe771g9p', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (354, '+12025550354', '', 'user_snv802ujrx', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (355, '+12025550355', '', 'user_4szkwdl3hw', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (356, '+12025550356', '', 'user_qq4cteo33l', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (357, '+12025550357', '', 'user_hwn4ofw0dp', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (358, '+12025550358', '', 'user_2r4xhcvxp2', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (359, '+12025550359', '', 'user_iphgurk3nk', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (360, '+12025550360', '', 'user_ih9kbl5kzb', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (361, '+12025550361', '', 'user_2odlf3rqex', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (362, '+12025550362', '', 'user_i9jalo3ouw', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (363, '+12025550363', '', 'user_whbqd8vhr2', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (364, '+12025550364', '', 'user_bzlvvy10mp', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (365, '+12025550365', '', 'user_pe7y2zyii7', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (366, '+12025550366', '', 'user_cnk071ghc7', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (367, '+12025550367', '', 'user_21cue7tpm0', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (368, '+12025550368', '', 'user_nidneujm1x', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (369, '+12025550369', '', 'user_tx2y3v0pb0', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (370, '+12025550370', '', 'user_i8ikz0nufr', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (371, '+12025550371', '', 'user_omq8bsw2ij', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (372, '+12025550372', '', 'user_ffpuo977gj', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (373, '+12025550373', '', 'user_jcgx7mukv0', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (374, '+12025550374', '', 'user_gn6k43jfx8', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (375, '+12025550375', '', 'user_esfv726lun', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (376, '+12025550376', '', 'user_l7vh3qyhnk', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (377, '+12025550377', '', 'user_aqo9nsp13v', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (378, '+12025550378', '', 'user_45z1cjwo34', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (379, '+12025550379', '', 'user_cukuugiquc', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (380, '+12025550380', '', 'user_cmzben5ql1', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (381, '+12025550381', '', 'user_fm136hckhd', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (382, '+12025550382', '', 'user_4neww35d6t', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (383, '+12025550383', '', 'user_p4e2t04dl0', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (384, '+12025550384', '', 'user_3s22mzjlgl', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (385, '+12025550385', '', 'user_kf0pbo00lp', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (386, '+12025550386', '', 'user_7tan2lj2jn', '', '2022-02-28 10:50:49', '2022-02-28 10:50:49');
INSERT INTO `tb_user` VALUES (387, '+12025550387', '', 'user_w88q6nof2r', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (388, '+12025550388', '', 'user_9aze983wkj', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (389, '+12025550389', '', 'user_wtioxpbho1', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (390, '+12025550390', '', 'user_yf70g0cjfu', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (391, '+12025550391', '', 'user_i1w18vru0l', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (392, '+12025550392', '', 'user_6lr3w5npe5', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (393, '+12025550393', '', 'user_9n8rjbb9gp', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (394, '+12025550394', '', 'user_fe3u4g7p1f', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (395, '+12025550395', '', 'user_618vib46zb', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (396, '+12025550396', '', 'user_mj4b8uxpu3', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (397, '+12025550397', '', 'user_3jq7brld6h', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (398, '+12025550398', '', 'user_8577262ob3', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (399, '+12025550399', '', 'user_x63u1e3sap', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (400, '+12025550400', '', 'user_o2c2l1j9zs', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (401, '+12025550401', '', 'user_rtupie4qut', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (402, '+12025550402', '', 'user_othsv0bkha', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (403, '+12025550403', '', 'user_4wqa1vn3kw', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (404, '+12025550404', '', 'user_xmhuythdnn', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (405, '+12025550405', '', 'user_alzyibl549', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (406, '+12025550406', '', 'user_3nhqsa0htg', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (407, '+12025550407', '', 'user_vn81ys9n64', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (408, '+12025550408', '', 'user_iz6t7kpxz2', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (409, '+12025550409', '', 'user_7gnmjhg1rh', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (410, '+12025550410', '', 'user_r2i71mq5lk', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (411, '+12025550411', '', 'user_gevxv4bfda', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (412, '+12025550412', '', 'user_hqneva0vaz', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (413, '+12025550413', '', 'user_8fvquxjm0t', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (414, '+12025550414', '', 'user_9u8dxzs9nk', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (415, '+12025550415', '', 'user_8mwcrg9ez9', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (416, '+12025550416', '', 'user_erzqptr80b', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (417, '+12025550417', '', 'user_97xgccgwaf', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (418, '+12025550418', '', 'user_5rz6s0zuoh', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (419, '+12025550419', '', 'user_8o7cg6rp05', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (420, '+12025550420', '', 'user_rhftetybs4', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (421, '+12025550421', '', 'user_mjh9uzi92z', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (422, '+12025550422', '', 'user_bvaub566b3', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (423, '+12025550423', '', 'user_e97b0z12jc', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (424, '+12025550424', '', 'user_mcc1pteaw5', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (425, '+12025550425', '', 'user_gz1ymib0dl', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (426, '+12025550426', '', 'user_owszpn6jem', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (427, '+12025550427', '', 'user_nyqxiekdus', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (428, '+12025550428', '', 'user_ilr27xnuxu', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (429, '+12025550429', '', 'user_mhzftdfxi4', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (430, '+12025550430', '', 'user_kavgc8r8f6', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (431, '+12025550431', '', 'user_svztbpgr9w', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (432, '+12025550432', '', 'user_fdjhoysgy8', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (433, '+12025550433', '', 'user_drssks7627', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (434, '+12025550434', '', 'user_53kuim78p1', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (435, '+12025550435', '', 'user_tpjaw9ygl6', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (436, '+12025550436', '', 'user_zlj9ao4lbw', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (437, '+12025550437', '', 'user_9nsckyz0k8', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (438, '+12025550438', '', 'user_rkyjx5n0k9', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (439, '+12025550439', '', 'user_e47mr17jmo', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (440, '+12025550440', '', 'user_gdouwxu8bm', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (441, '+12025550441', '', 'user_7odu05tcri', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (442, '+12025550442', '', 'user_x6dga1y84j', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (443, '+12025550443', '', 'user_ubzwoytroz', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (444, '+12025550444', '', 'user_brivojp5b1', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (445, '+12025550445', '', 'user_q5sluitgii', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (446, '+12025550446', '', 'user_bbqazzzawl', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (447, '+12025550447', '', 'user_82fbd0oo0u', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (448, '+12025550448', '', 'user_87ft14as7t', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (449, '+12025550449', '', 'user_diabg787km', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (450, '+12025550450', '', 'user_oo1gf0pxln', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (451, '+12025550451', '', 'user_4fc1q8u2f3', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (452, '+12025550452', '', 'user_hgny53jwpn', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (453, '+12025550453', '', 'user_5m75miuy6r', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (454, '+12025550454', '', 'user_qx5ohjcayd', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (455, '+12025550455', '', 'user_cff2zkpu62', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (456, '+12025550456', '', 'user_dsb1rk9dsr', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (457, '+12025550457', '', 'user_50h3ylhjnz', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (458, '+12025550458', '', 'user_i02f5rjdab', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (459, '+12025550459', '', 'user_3vwdqpif1l', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (460, '+12025550460', '', 'user_g6xewzg33w', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (461, '+12025550461', '', 'user_63u60u6o7f', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (462, '+12025550462', '', 'user_m6ikxcr92q', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (463, '+12025550463', '', 'user_yzd5lmecur', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (464, '+12025550464', '', 'user_m3163uc9al', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (465, '+12025550465', '', 'user_1x6f94jq0v', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (466, '+12025550466', '', 'user_keo0udy60g', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (467, '+12025550467', '', 'user_87y52es2uw', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (468, '+12025550468', '', 'user_1zkkz9j0e6', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (469, '+12025550469', '', 'user_baznwk8x5q', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (470, '+12025550470', '', 'user_b4hnhsmpxw', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (471, '+12025550471', '', 'user_1hr6wbd939', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (472, '+12025550472', '', 'user_4w7dhr290a', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (473, '+12025550473', '', 'user_tkxg6jo3xa', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (474, '+12025550474', '', 'user_saosjqptnq', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (475, '+12025550475', '', 'user_wjge9hxzfv', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (476, '+12025550476', '', 'user_8ex8ynmec4', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (477, '+12025550477', '', 'user_beih06msot', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (478, '+12025550478', '', 'user_e4tuso2fad', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (479, '+12025550479', '', 'user_iolxs2wbfs', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (480, '+12025550480', '', 'user_5trre9akf1', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (481, '+12025550481', '', 'user_y3l832hamq', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (482, '+12025550482', '', 'user_gs7kvt65y8', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (483, '+12025550483', '', 'user_8rda39nfpx', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (484, '+12025550484', '', 'user_wix6t6g14l', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (485, '+12025550485', '', 'user_s2k023vtn7', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (486, '+12025550486', '', 'user_qc3nhavb9f', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (487, '+12025550487', '', 'user_98eoecfe9s', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (488, '+12025550488', '', 'user_kknik7xw80', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (489, '+12025550489', '', 'user_17d7bifhpp', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (490, '+12025550490', '', 'user_04vbus432n', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (491, '+12025550491', '', 'user_3e1xl0tvss', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (492, '+12025550492', '', 'user_jpvv20rmfk', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (493, '+12025550493', '', 'user_51jd3tfl3e', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (494, '+12025550494', '', 'user_agt44szvcb', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (495, '+12025550495', '', 'user_pr7icguenq', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (496, '+12025550496', '', 'user_2jl0qaecm0', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (497, '+12025550497', '', 'user_m1fxzx8i0u', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (498, '+12025550498', '', 'user_fh7a1j0vaz', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (499, '+12025550499', '', 'user_ty7afbm01v', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (500, '+12025550500', '', 'user_bwazk1tt71', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (501, '+12025550501', '', 'user_c1wrwmqzfi', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (502, '+12025550502', '', 'user_nbfyg2pfql', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (503, '+12025550503', '', 'user_h85lj9y0jy', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (504, '+12025550504', '', 'user_e0r5gg439j', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (505, '+12025550505', '', 'user_k0s8h8v8wt', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (506, '+12025550506', '', 'user_0v423qhiz2', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (507, '+12025550507', '', 'user_zgze48neoq', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (508, '+12025550508', '', 'user_un4nppmh7k', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (509, '+12025550509', '', 'user_knr2flv5mr', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (510, '+12025550510', '', 'user_cvhg3r8aqj', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (511, '+12025550511', '', 'user_92xh46mlff', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (512, '+12025550512', '', 'user_vhp8pxmhk6', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (513, '+12025550513', '', 'user_hc4c7z9y3k', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (514, '+12025550514', '', 'user_03ikpqtn96', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (515, '+12025550515', '', 'user_g0l23kj1ta', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (516, '+12025550516', '', 'user_hdd1qkfbjy', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (517, '+12025550517', '', 'user_vmc478haq2', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (518, '+12025550518', '', 'user_g16kk9w1jp', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (519, '+12025550519', '', 'user_vlviloabak', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (520, '+12025550520', '', 'user_f4t9c9x0qs', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (521, '+12025550521', '', 'user_uhd0vskqux', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (522, '+12025550522', '', 'user_uidqqwety9', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (523, '+12025550523', '', 'user_ijqz4fb077', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (524, '+12025550524', '', 'user_d16wfogt38', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (525, '+12025550525', '', 'user_50cj7qxejp', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (526, '+12025550526', '', 'user_w0mawjfxbf', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (527, '+12025550527', '', 'user_vihcs8gddy', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (528, '+12025550528', '', 'user_1io84j51kb', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (529, '+12025550529', '', 'user_sac23jn0ct', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (530, '+12025550530', '', 'user_84saoi0eaq', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (531, '+12025550531', '', 'user_bqfd0lusff', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (532, '+12025550532', '', 'user_a717jzadbk', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (533, '+12025550533', '', 'user_3e6nd805yp', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (534, '+12025550534', '', 'user_bgkv3zjjsy', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (535, '+12025550535', '', 'user_4lzfuo6hcl', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (536, '+12025550536', '', 'user_y748pleoq8', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (537, '+12025550537', '', 'user_ciyuki97of', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (538, '+12025550538', '', 'user_kaulf89rnl', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (539, '+12025550539', '', 'user_h0dan7ux0u', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (540, '+12025550540', '', 'user_fvmx4u2re0', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (541, '+12025550541', '', 'user_njomftlkps', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (542, '+12025550542', '', 'user_2ezx5lxtc4', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (543, '+12025550543', '', 'user_161mxzchbt', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (544, '+12025550544', '', 'user_f8e3enit63', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (545, '+12025550545', '', 'user_j1ygvb30zr', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (546, '+12025550546', '', 'user_lskpl9geya', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (547, '+12025550547', '', 'user_feww9njnhi', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (548, '+12025550548', '', 'user_e8x6u5i9ca', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (549, '+12025550549', '', 'user_17al8oqa4w', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (550, '+12025550550', '', 'user_nbo1m8bazt', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (551, '+12025550551', '', 'user_rqfyp2isyr', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (552, '+12025550552', '', 'user_epr1i52q5x', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (553, '+12025550553', '', 'user_x154dr8sch', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (554, '+12025550554', '', 'user_i5lvnupsu6', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (555, '+12025550555', '', 'user_qsnre265gc', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (556, '+12025550556', '', 'user_7f3zwt1uso', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (557, '+12025550557', '', 'user_qgkrbv1r7p', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (558, '+12025550558', '', 'user_b39j58u8ql', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (559, '+12025550559', '', 'user_wby0tn39v5', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (560, '+12025550560', '', 'user_9vt11wm6wb', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (561, '+12025550561', '', 'user_y4rokt5rzh', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (562, '+12025550562', '', 'user_lyarwzepjm', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (563, '+12025550563', '', 'user_er844jel5s', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (564, '+12025550564', '', 'user_2gkdrbu7rd', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (565, '+12025550565', '', 'user_fnks15rgap', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (566, '+12025550566', '', 'user_fe79dtlbf3', '', '2022-02-28 10:50:50', '2022-02-28 10:50:50');
INSERT INTO `tb_user` VALUES (567, '+12025550567', '', 'user_jrl1kdhopy', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (568, '+12025550568', '', 'user_p5h5hfw0h5', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (569, '+12025550569', '', 'user_756lckggox', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (570, '+12025550570', '', 'user_9w56lad204', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (571, '+12025550571', '', 'user_kjfvuonq64', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (572, '+12025550572', '', 'user_k1i16oya8x', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (573, '+12025550573', '', 'user_z4wz2wq9oj', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (574, '+12025550574', '', 'user_jotms6c1vz', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (575, '+12025550575', '', 'user_29iu6j1olp', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (576, '+12025550576', '', 'user_rfkqpu7bs1', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (577, '+12025550577', '', 'user_yecqp8c38k', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (578, '+12025550578', '', 'user_1mbkrz4rng', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (579, '+12025550579', '', 'user_bx6h4wu47y', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (580, '+12025550580', '', 'user_usub0nsxez', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (581, '+12025550581', '', 'user_2vvxjpuwgr', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (582, '+12025550582', '', 'user_9tmhy4nfm1', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (583, '+12025550583', '', 'user_q1gyjoatnm', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (584, '+12025550584', '', 'user_vaqe3soyoz', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (585, '+12025550585', '', 'user_bz81fj51ul', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (586, '+12025550586', '', 'user_pwp8w2oife', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (587, '+12025550587', '', 'user_6i8a8jpc4a', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (588, '+12025550588', '', 'user_e19oms872y', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (589, '+12025550589', '', 'user_7jnvjujuk5', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (590, '+12025550590', '', 'user_1brabvuxfp', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (591, '+12025550591', '', 'user_w25xjchkmt', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (592, '+12025550592', '', 'user_qc38678j1q', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (593, '+12025550593', '', 'user_5wqfc087pg', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (594, '+12025550594', '', 'user_l921wy6ghf', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (595, '+12025550595', '', 'user_qgdwy1c8ya', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (596, '+12025550596', '', 'user_2ftowbar49', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (597, '+12025550597', '', 'user_e0rqhfdde9', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (598, '+12025550598', '', 'user_vpswd32xps', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (599, '+12025550599', '', 'user_ec479wdojq', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (600, '+12025550600', '', 'user_6kz95u775k', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (601, '+12025550601', '', 'user_iyyh1jdjvk', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (602, '+12025550602', '', 'user_jbv97r3zcf', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (603, '+12025550603', '', 'user_1t7nmmwx2g', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (604, '+12025550604', '', 'user_fb8j6mb1cn', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (605, '+12025550605', '', 'user_ld0b3fd8uk', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (606, '+12025550606', '', 'user_sv8tt0fhb0', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (607, '+12025550607', '', 'user_ovqhhaqzfs', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (608, '+12025550608', '', 'user_mdybbx800t', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (609, '+12025550609', '', 'user_dy1n5yoxhv', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (610, '+12025550610', '', 'user_xefu4y7d2d', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (611, '+12025550611', '', 'user_4aun9z96dn', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (612, '+12025550612', '', 'user_guva8ofunq', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (613, '+12025550613', '', 'user_6l4gzaotnf', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (614, '+12025550614', '', 'user_ngbcy6a2zk', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (615, '+12025550615', '', 'user_dqqj7ti3pd', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (616, '+12025550616', '', 'user_5zq4rzlbik', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (617, '+12025550617', '', 'user_7e0qi512hf', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (618, '+12025550618', '', 'user_jpmnhzwesi', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (619, '+12025550619', '', 'user_00xb9uvv0m', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (620, '+12025550620', '', 'user_nxn2ldt3gl', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (621, '+12025550621', '', 'user_cyd1a9zfqw', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (622, '+12025550622', '', 'user_0nhklq4xie', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (623, '+12025550623', '', 'user_rtf3z1wptn', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (624, '+12025550624', '', 'user_ov4uix8csm', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (625, '+12025550625', '', 'user_lxi5i68cdf', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (626, '+12025550626', '', 'user_do1slgl1ph', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (627, '+12025550627', '', 'user_qj8pbsjpl5', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (628, '+12025550628', '', 'user_ygrl56l48d', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (629, '+12025550629', '', 'user_maynz9h3vn', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (630, '+12025550630', '', 'user_m7qnvuej5k', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (631, '+12025550631', '', 'user_ceg7kezzrd', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (632, '+12025550632', '', 'user_v7ky9w9v6f', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (633, '+12025550633', '', 'user_kk8rzbittq', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (634, '+12025550634', '', 'user_mskczihgi8', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (635, '+12025550635', '', 'user_0tmadlzf1j', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (636, '+12025550636', '', 'user_oeui72807w', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (637, '+12025550637', '', 'user_ad49besbbs', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (638, '+12025550638', '', 'user_huzzpviaax', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (639, '+12025550639', '', 'user_b0p11t8qon', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (640, '+12025550640', '', 'user_14k8fje63n', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (641, '+12025550641', '', 'user_bl5rc085pr', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (642, '+12025550642', '', 'user_938covh4nt', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (643, '+12025550643', '', 'user_olt9qfefvw', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (644, '+12025550644', '', 'user_bhkdwtkfdg', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (645, '+12025550645', '', 'user_we6790rc8v', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (646, '+12025550646', '', 'user_wqmiqbrj3a', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (647, '+12025550647', '', 'user_ccdo9ncgzt', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (648, '+12025550648', '', 'user_pk3l58b3cf', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (649, '+12025550649', '', 'user_meqr7dxbog', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (650, '+12025550650', '', 'user_x70v1uaf0g', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (651, '+12025550651', '', 'user_yijawdxi8k', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (652, '+12025550652', '', 'user_qlv8jnv927', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (653, '+12025550653', '', 'user_2tkj1s7aex', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (654, '+12025550654', '', 'user_5vbfw1gln6', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (655, '+12025550655', '', 'user_zseyyi59z2', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (656, '+12025550656', '', 'user_8ch1tq5bfp', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (657, '+12025550657', '', 'user_gdgb5nbkqn', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (658, '+12025550658', '', 'user_rr5448qo4l', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (659, '+12025550659', '', 'user_e6zwifzqhw', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (660, '+12025550660', '', 'user_7ytv4vd6he', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (661, '+12025550661', '', 'user_pc84newj49', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (662, '+12025550662', '', 'user_h4wpk3e9ht', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (663, '+12025550663', '', 'user_d3vt4vqim8', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (664, '+12025550664', '', 'user_eqr14mgaz2', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (665, '+12025550665', '', 'user_ldd4kzq961', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (666, '+12025550666', '', 'user_w4qu1bb2lk', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (667, '+12025550667', '', 'user_0627bn8px3', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (668, '+12025550668', '', 'user_64aj20cdf1', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (669, '+12025550669', '', 'user_l7u34b3ler', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (670, '+12025550670', '', 'user_2ze9tl9994', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (671, '+12025550671', '', 'user_m5phoejixm', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (672, '+12025550672', '', 'user_8ogdovuirm', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (673, '+12025550673', '', 'user_wfk4ebck83', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (674, '+12025550674', '', 'user_oupbnni466', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (675, '+12025550675', '', 'user_89967wcevq', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (676, '+12025550676', '', 'user_xr6g2q08cm', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (677, '+12025550677', '', 'user_m313bjckeq', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (678, '+12025550678', '', 'user_x25nq1ss14', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (679, '+12025550679', '', 'user_jeidzxzp6y', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (680, '+12025550680', '', 'user_l7dkffo3n0', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (681, '+12025550681', '', 'user_pqio9ol2ln', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (682, '+12025550682', '', 'user_k1cbsqi4gt', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (683, '+12025550683', '', 'user_p1i9b4p4sv', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (684, '+12025550684', '', 'user_07yfm6qtl1', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (685, '+12025550685', '', 'user_y3mmmk1kak', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (686, '+12025550686', '', 'user_lkxjnwtqa7', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (687, '+12025550687', '', 'user_v5w9pm18iq', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (688, '+12025550688', '', 'user_364l5poxpw', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (689, '+12025550689', '', 'user_trlfkptv3g', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (690, '+12025550690', '', 'user_rkheg82tnp', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (691, '+12025550691', '', 'user_5zmzrjgo5o', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (692, '+12025550692', '', 'user_6uacx6cqhp', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (693, '+12025550693', '', 'user_wnats1phoj', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (694, '+12025550694', '', 'user_dcm1w7674v', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (695, '+12025550695', '', 'user_r7ik7ae272', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (696, '+12025550696', '', 'user_xk77qyl4gl', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (697, '+12025550697', '', 'user_989d1fsji4', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (698, '+12025550698', '', 'user_macs32vcct', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (699, '+12025550699', '', 'user_z5mahfpa9r', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (700, '+12025550700', '', 'user_tn1bnk3zir', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (701, '+12025550701', '', 'user_95ajn6osry', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (702, '+12025550702', '', 'user_qff1n375uc', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (703, '+12025550703', '', 'user_gdjqlq4i6n', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (704, '+12025550704', '', 'user_w6tsnpzfqn', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (705, '+12025550705', '', 'user_lqp4c4j2ch', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (706, '+12025550706', '', 'user_1raii40ps1', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (707, '+12025550707', '', 'user_0r9izz201x', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (708, '+12025550708', '', 'user_vlrp22q0rk', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (709, '+12025550709', '', 'user_f7kvbzb8i4', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (710, '+12025550710', '', 'user_yn8nntyyur', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (711, '+12025550711', '', 'user_p58nxqajou', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (712, '+12025550712', '', 'user_61msspy26k', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (713, '+12025550713', '', 'user_fqb0ch1hh1', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (714, '+12025550714', '', 'user_oyq3nszclx', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (715, '+12025550715', '', 'user_ggybvkn73t', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (716, '+12025550716', '', 'user_po0gph6jgp', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (717, '+12025550717', '', 'user_hlzvh6wl1y', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (718, '+12025550718', '', 'user_btb024hqic', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (719, '+12025550719', '', 'user_wqasvon847', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (720, '+12025550720', '', 'user_rdp7fvaz3z', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (721, '+12025550721', '', 'user_oh5q9kfkvc', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (722, '+12025550722', '', 'user_ae21kmiles', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (723, '+12025550723', '', 'user_b1ouyw3sww', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (724, '+12025550724', '', 'user_9o5qz4s17l', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (725, '+12025550725', '', 'user_6urs1iwti9', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (726, '+12025550726', '', 'user_80pnfhyqyi', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (727, '+12025550727', '', 'user_mynvmq4zcn', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (728, '+12025550728', '', 'user_q09fj27oc4', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (729, '+12025550729', '', 'user_v4e7hkfw63', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (730, '+12025550730', '', 'user_x4sol5dj4f', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (731, '+12025550731', '', 'user_v53dsicdtx', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (732, '+12025550732', '', 'user_fcoezs141i', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (733, '+12025550733', '', 'user_viv3l4o52c', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (734, '+12025550734', '', 'user_8j4m80dj76', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (735, '+12025550735', '', 'user_r65xyt3opb', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (736, '+12025550736', '', 'user_moi9x442th', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (737, '+12025550737', '', 'user_qxkltii6ec', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (738, '+12025550738', '', 'user_72vsybd20b', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (739, '+12025550739', '', 'user_eai1g9ltu9', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (740, '+12025550740', '', 'user_h47ubi7f36', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (741, '+12025550741', '', 'user_yxo46519hp', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (742, '+12025550742', '', 'user_499diayvwn', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (743, '+12025550743', '', 'user_ytomkocl3c', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (744, '+12025550744', '', 'user_271mt5x5uo', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (745, '+12025550745', '', 'user_h5s36mj609', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (746, '+12025550746', '', 'user_sklzx3z3nq', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (747, '+12025550747', '', 'user_9v2ikjkwm8', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (748, '+12025550748', '', 'user_w5jjd49ipx', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (749, '+12025550749', '', 'user_3rzokm18yo', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (750, '+12025550750', '', 'user_vm6zz6ejs7', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (751, '+12025550751', '', 'user_r494p0jlle', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (752, '+12025550752', '', 'user_c50thdpyv0', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (753, '+12025550753', '', 'user_hc4qi0sfo2', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (754, '+12025550754', '', 'user_w8y4nebzxs', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (755, '+12025550755', '', 'user_mxxqu6isy9', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (756, '+12025550756', '', 'user_sd3f76mtg3', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (757, '+12025550757', '', 'user_6zb026vsmm', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (758, '+12025550758', '', 'user_mzya91331l', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (759, '+12025550759', '', 'user_adu5gmym2g', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (760, '+12025550760', '', 'user_31bidh90w5', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (761, '+12025550761', '', 'user_iectlacbk7', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (762, '+12025550762', '', 'user_by8vl07035', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (763, '+12025550763', '', 'user_n8ii3p3b6z', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (764, '+12025550764', '', 'user_eopvczuyzq', '', '2022-02-28 10:50:51', '2022-02-28 10:50:51');
INSERT INTO `tb_user` VALUES (765, '+12025550765', '', 'user_2m36qy9yht', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (766, '+12025550766', '', 'user_re1q80zze2', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (767, '+12025550767', '', 'user_lelhu217ad', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (768, '+12025550768', '', 'user_dyv7ll1h9r', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (769, '+12025550769', '', 'user_7zws9wi4cp', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (770, '+12025550770', '', 'user_tvseis2smv', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (771, '+12025550771', '', 'user_975ls201ra', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (772, '+12025550772', '', 'user_0416smxpjc', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (773, '+12025550773', '', 'user_dkdw3wuvxt', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (774, '+12025550774', '', 'user_d1z5jtfh2g', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (775, '+12025550775', '', 'user_yg9r3ws35z', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (776, '+12025550776', '', 'user_9cos7jzgmy', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (777, '+12025550777', '', 'user_679sq0b6eb', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (778, '+12025550778', '', 'user_kzk5m1pgqv', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (779, '+12025550779', '', 'user_28qetr02oe', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (780, '+12025550780', '', 'user_peazcxx51i', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (781, '+12025550781', '', 'user_roghf2lerp', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (782, '+12025550782', '', 'user_sth9xhgsoj', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (783, '+12025550783', '', 'user_38ejcd1npp', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (784, '+12025550784', '', 'user_m0y48rqbxs', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (785, '+12025550785', '', 'user_a0f919rrdw', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (786, '+12025550786', '', 'user_veddhmnfa7', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (787, '+12025550787', '', 'user_ltexwx6bm6', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (788, '+12025550788', '', 'user_euqn9si8dg', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (789, '+12025550789', '', 'user_wm4s4v0o87', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (790, '+12025550790', '', 'user_mthbqaorve', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (791, '+12025550791', '', 'user_k63cindeeh', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (792, '+12025550792', '', 'user_kz30acb48r', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (793, '+12025550793', '', 'user_1jmeyd8a28', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (794, '+12025550794', '', 'user_su5oi3kpfx', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (795, '+12025550795', '', 'user_4eurdp0387', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (796, '+12025550796', '', 'user_orxdegd4d4', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (797, '+12025550797', '', 'user_50vxeli8rd', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (798, '+12025550798', '', 'user_vqsnl66ot5', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (799, '+12025550799', '', 'user_en3q7qyiqb', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (800, '+12025550800', '', 'user_0yyk9mnng0', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (801, '+12025550801', '', 'user_l48qjtjmxl', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (802, '+12025550802', '', 'user_1wvigh2hxq', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (803, '+12025550803', '', 'user_gr0bhwfvhu', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (804, '+12025550804', '', 'user_qpku5s9nr6', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (805, '+12025550805', '', 'user_kyhepj12kd', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (806, '+12025550806', '', 'user_3x99ypxvqy', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (807, '+12025550807', '', 'user_np8bk7b07w', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (808, '+12025550808', '', 'user_dnu8kswk6o', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (809, '+12025550809', '', 'user_u01mnauofu', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (810, '+12025550810', '', 'user_48sv36r3xs', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (811, '+12025550811', '', 'user_6ojf6nhxch', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (812, '+12025550812', '', 'user_wd32jqla7r', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (813, '+12025550813', '', 'user_zsdxxcpkuq', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (814, '+12025550814', '', 'user_ib97xw8nl2', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (815, '+12025550815', '', 'user_b7qb56z1p0', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (816, '+12025550816', '', 'user_i7jmrgmisg', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (817, '+12025550817', '', 'user_5nf21zmos7', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (818, '+12025550818', '', 'user_mck6nqe55g', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (819, '+12025550819', '', 'user_6xnadvfus7', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (820, '+12025550820', '', 'user_450u8mqe4z', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (821, '+12025550821', '', 'user_hv55cq5n1w', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (822, '+12025550822', '', 'user_qiy3ulbyd0', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (823, '+12025550823', '', 'user_sx58542ugn', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (824, '+12025550824', '', 'user_9xs0uuyds5', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (825, '+12025550825', '', 'user_zveuo0azp4', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (826, '+12025550826', '', 'user_qwt4x5faay', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (827, '+12025550827', '', 'user_ztzuqeybvp', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (828, '+12025550828', '', 'user_kh5n7wfie8', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (829, '+12025550829', '', 'user_dwxkvw03b7', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (830, '+12025550830', '', 'user_3tyhv91k7p', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (831, '+12025550831', '', 'user_0jwdppbvdk', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (832, '+12025550832', '', 'user_twx4z08vzb', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (833, '+12025550833', '', 'user_lly5v9ibpk', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (834, '+12025550834', '', 'user_kkho7xpu2u', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (835, '+12025550835', '', 'user_l51d2os1wh', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (836, '+12025550836', '', 'user_i6gkyfawkv', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (837, '+12025550837', '', 'user_v2k5vdh4he', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (838, '+12025550838', '', 'user_7k9ql2go9e', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (839, '+12025550839', '', 'user_tnz3f99w2c', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (840, '+12025550840', '', 'user_833zw6fgxz', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (841, '+12025550841', '', 'user_f4hq0ga1oj', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (842, '+12025550842', '', 'user_uxuxrig26t', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (843, '+12025550843', '', 'user_grn37re7bg', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (844, '+12025550844', '', 'user_5msjf8z2fj', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (845, '+12025550845', '', 'user_53x3w7l7mv', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (846, '+12025550846', '', 'user_pyolvy8m0v', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (847, '+12025550847', '', 'user_12i4hpk09n', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (848, '+12025550848', '', 'user_zjhyyt7zfq', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (849, '+12025550849', '', 'user_avv8zgw4qk', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (850, '+12025550850', '', 'user_khxmnqb6ni', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (851, '+12025550851', '', 'user_i80iu0pb5k', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (852, '+12025550852', '', 'user_lqkx9uurmj', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (853, '+12025550853', '', 'user_ewiswre8fm', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (854, '+12025550854', '', 'user_d0nwznn64y', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (855, '+12025550855', '', 'user_v7wyz44u6m', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (856, '+12025550856', '', 'user_ipkx0z0nno', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (857, '+12025550857', '', 'user_64tnyqwxun', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (858, '+12025550858', '', 'user_r9bjp3fegg', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (859, '+12025550859', '', 'user_i36s8hsq72', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (860, '+12025550860', '', 'user_cqe1zvq4dr', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (861, '+12025550861', '', 'user_omdgisd0ls', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (862, '+12025550862', '', 'user_3mgz8z636y', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (863, '+12025550863', '', 'user_ts3qtzwp68', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (864, '+12025550864', '', 'user_56seol3kxp', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (865, '+12025550865', '', 'user_4x55muo0si', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (866, '+12025550866', '', 'user_ny46fscq78', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (867, '+12025550867', '', 'user_raano2keb9', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (868, '+12025550868', '', 'user_31m00sj2bt', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (869, '+12025550869', '', 'user_2ovmzeq4f3', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (870, '+12025550870', '', 'user_dis12x5ko3', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (871, '+12025550871', '', 'user_jx9defd5pu', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (872, '+12025550872', '', 'user_k3u9zems0n', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (873, '+12025550873', '', 'user_o84aucm31f', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (874, '+12025550874', '', 'user_h4msccd8qo', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (875, '+12025550875', '', 'user_6sk051bxed', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (876, '+12025550876', '', 'user_1s1r4kks05', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (877, '+12025550877', '', 'user_2pfvfdb27x', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (878, '+12025550878', '', 'user_k5nxhuil69', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (879, '+12025550879', '', 'user_6wu2vujv7x', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (880, '+12025550880', '', 'user_05jr9c63o0', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (881, '+12025550881', '', 'user_cc2l1lrlw5', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (882, '+12025550882', '', 'user_ieeqrlof8f', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (883, '+12025550883', '', 'user_6m5ermqkua', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (884, '+12025550884', '', 'user_mh99rug0nh', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (885, '+12025550885', '', 'user_n55ceoc392', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (886, '+12025550886', '', 'user_72vzhk8py3', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (887, '+12025550887', '', 'user_bthii5wt36', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (888, '+12025550888', '', 'user_mut3q0vunf', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (889, '+12025550889', '', 'user_symgsydmbd', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (890, '+12025550890', '', 'user_7qs7kedl19', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (891, '+12025550891', '', 'user_uwyx1i29m0', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (892, '+12025550892', '', 'user_ls2p6sldmi', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (893, '+12025550893', '', 'user_1kmmkpegso', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (894, '+12025550894', '', 'user_4zp483y1e7', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (895, '+12025550895', '', 'user_nr78kan9c3', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (896, '+12025550896', '', 'user_0r0m7ngv6x', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (897, '+12025550897', '', 'user_lknjznxmau', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (898, '+12025550898', '', 'user_v9g6j6h0ah', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (899, '+12025550899', '', 'user_wuyim37fx5', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (900, '+12025550900', '', 'user_l0lfqjjzs0', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (901, '+12025550901', '', 'user_6uyxk7pa4u', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (902, '+12025550902', '', 'user_f17o0qymn9', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (903, '+12025550903', '', 'user_ogpqk1b39a', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (904, '+12025550904', '', 'user_9jpofrgda1', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (905, '+12025550905', '', 'user_n298v8udm3', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (906, '+12025550906', '', 'user_0biwjc5wwt', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (907, '+12025550907', '', 'user_xbbdx6wq53', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (908, '+12025550908', '', 'user_nh79qly5ir', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (909, '+12025550909', '', 'user_v86oajknbs', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (910, '+12025550910', '', 'user_e13odsshad', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (911, '+12025550911', '', 'user_6cvwrirdtl', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (912, '+12025550912', '', 'user_nqr7bpgz67', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (913, '+12025550913', '', 'user_wn1ae0p6gw', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (914, '+12025550914', '', 'user_te48rluimb', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (915, '+12025550915', '', 'user_p2r85n4k8g', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (916, '+12025550916', '', 'user_ca8fdlrbty', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (917, '+12025550917', '', 'user_toque00p0i', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (918, '+12025550918', '', 'user_uiti5cdbhf', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (919, '+12025550919', '', 'user_8pgku7viy8', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (920, '+12025550920', '', 'user_cdafki4cwc', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (921, '+12025550921', '', 'user_fyyk2yfpk5', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (922, '+12025550922', '', 'user_78e1meevls', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (923, '+12025550923', '', 'user_qzwls7m33b', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (924, '+12025550924', '', 'user_jxuw8ixefk', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (925, '+12025550925', '', 'user_1xye60infx', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (926, '+12025550926', '', 'user_gvccna2mni', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (927, '+12025550927', '', 'user_tftvpegd2c', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (928, '+12025550928', '', 'user_6ihh78vpox', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (929, '+12025550929', '', 'user_46qroyojdl', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (930, '+12025550930', '', 'user_wwi4i2wb77', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (931, '+12025550931', '', 'user_s28l0bryil', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (932, '+12025550932', '', 'user_4lgib8jvrx', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (933, '+12025550933', '', 'user_fczpz5s31b', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (934, '+12025550934', '', 'user_3cvkn9pv9w', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (935, '+12025550935', '', 'user_wtvk7gx8ar', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (936, '+12025550936', '', 'user_yrel6rbyyd', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (937, '+12025550937', '', 'user_hmxjnsbnon', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (938, '+12025550938', '', 'user_cuxcl0d2oo', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (939, '+12025550939', '', 'user_1ax8x9zw0c', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (940, '+12025550940', '', 'user_p7v98oe5nm', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (941, '+12025550941', '', 'user_m90rt3bwsz', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (942, '+12025550942', '', 'user_xhty5jm1hy', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (943, '+12025550943', '', 'user_7h88k22eo0', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (944, '+12025550944', '', 'user_5a75z9jcqa', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (945, '+12025550945', '', 'user_3t0twwq0nh', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (946, '+12025550946', '', 'user_861ywr4gfr', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (947, '+12025550947', '', 'user_iwkz8k1zpx', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (948, '+12025550948', '', 'user_vzmhyoz1ap', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (949, '+12025550949', '', 'user_5tmpddukgq', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (950, '+12025550950', '', 'user_h6siyam4hb', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (951, '+12025550951', '', 'user_n5yqq6mgka', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (952, '+12025550952', '', 'user_an9epa7f2r', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (953, '+12025550953', '', 'user_5vr0cdy8sz', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (954, '+12025550954', '', 'user_xpanlhqjbq', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (955, '+12025550955', '', 'user_3cfykc172m', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (956, '+12025550956', '', 'user_1n0jceyzim', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (957, '+12025550957', '', 'user_4ixi7efxtr', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (958, '+12025550958', '', 'user_5adpp336iy', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (959, '+12025550959', '', 'user_mflzjd6e6b', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (960, '+12025550960', '', 'user_80bwfj72p7', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (961, '+12025550961', '', 'user_i3anusitco', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (962, '+12025550962', '', 'user_yj4pcsrkl9', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (963, '+12025550963', '', 'user_7v9x6gxjdz', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (964, '+12025550964', '', 'user_2ahufmnyzp', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (965, '+12025550965', '', 'user_1oel6c441t', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (966, '+12025550966', '', 'user_qxzcv0ib6g', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (967, '+12025550967', '', 'user_9uyh0i8ykg', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (968, '+12025550968', '', 'user_tb01d4d9ql', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (969, '+12025550969', '', 'user_hwpkx6ovii', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (970, '+12025550970', '', 'user_pqd04q9hq2', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (971, '+12025550971', '', 'user_4t7wkgkufh', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (972, '+12025550972', '', 'user_834e4vzf0e', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (973, '+12025550973', '', 'user_pxk4urlnmo', '', '2022-02-28 10:50:52', '2022-02-28 10:50:52');
INSERT INTO `tb_user` VALUES (974, '+12025550974', '', 'user_e3x6n0ff0d', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (975, '+12025550975', '', 'user_wxnvsvb5ut', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (976, '+12025550976', '', 'user_ehi7k4zpjb', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (977, '+12025550977', '', 'user_om0pzyh3z1', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (978, '+12025550978', '', 'user_9asdqbe7od', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (979, '+12025550979', '', 'user_seuabngxt9', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (980, '+12025550980', '', 'user_b0qvb27eiy', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (981, '+12025550981', '', 'user_63sjue2tkh', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (982, '+12025550982', '', 'user_cc3lvxfr1u', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (983, '+12025550983', '', 'user_in37hfw5tk', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (984, '+12025550984', '', 'user_jtg0c9tyqn', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (985, '+12025550985', '', 'user_qzpipaj50w', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (986, '+12025550986', '', 'user_ppnb4ljetq', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (987, '+12025550987', '', 'user_zbcui7783k', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (988, '+12025550988', '', 'user_ki4dxb9q9b', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (989, '+12025550989', '', 'user_27b5dxktn0', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (990, '+12025550990', '', 'user_fxvb2av882', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (991, '+12025550991', '', 'user_6vp3uflnwm', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (992, '+12025550992', '', 'user_7ix7djbg30', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (993, '+12025550993', '', 'user_vx8r39tjiu', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (994, '+12025550994', '', 'user_l2wdiwule0', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (995, '+12025550995', '', 'user_z4qe1up5zx', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (996, '+12025550996', '', 'user_bklo4b32lu', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (997, '+12025550997', '', 'user_ax0y473ndh', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (998, '+12025550998', '', 'user_yx2p44qww3', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (999, '+12025550999', '', 'user_bnw9bzib34', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1000, '+12025551000', '', 'user_cdj4ojh4pc', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1001, '+12025551001', '', 'user_l7o3r96hn3', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1002, '+12025551002', '', 'user_zbehzrz279', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1003, '+12025551003', '', 'user_tql21zepcx', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1004, '+12025551004', '', 'user_jnxnrk8qt0', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1005, '+12025551005', '', 'user_8e5twg6q0k', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1006, '+12025551006', '', 'user_gfeusukbpp', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1007, '+12025551007', '', 'user_sveivfswhn', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1008, '+12025551008', '', 'user_qgf4t8jkx0', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');
INSERT INTO `tb_user` VALUES (1009, '+12025551009', '', 'user_4qh6bofkol', '', '2022-02-28 10:50:53', '2022-02-28 10:50:53');

-- ----------------------------
-- Table structure for tb_user_info
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_info`;
CREATE TABLE `tb_user_info`  (
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '主键，用户id',
  `city` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '城市名称',
  `introduce` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '个人介绍，不要超过128个字符',
  `fans` int(8) UNSIGNED NULL DEFAULT 0 COMMENT '粉丝数量',
  `followee` int(8) UNSIGNED NULL DEFAULT 0 COMMENT '关注的人的数量',
  `gender` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '性别，0：男，1：女',
  `birthday` date NULL DEFAULT NULL COMMENT '生日',
  `credits` int(8) UNSIGNED NULL DEFAULT 0 COMMENT '积分',
  `level` tinyint(1) UNSIGNED NULL DEFAULT 0 COMMENT '会员级别，0~9级,0代表未开通会员',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_user_info
-- ----------------------------

-- ----------------------------
-- Table structure for tb_voucher
-- ----------------------------
DROP TABLE IF EXISTS `tb_voucher`;
CREATE TABLE `tb_voucher`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shop_id` bigint(20) UNSIGNED NULL DEFAULT NULL COMMENT '商铺id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '代金券标题',
  `sub_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '副标题',
  `rules` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '使用规则',
  `pay_value` bigint(10) UNSIGNED NOT NULL COMMENT '支付金额，单位是分。例如200代表2元',
  `actual_value` bigint(10) NOT NULL COMMENT '抵扣金额，单位是分。例如200代表2元',
  `currency` char(3) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT 'USD' COMMENT 'ISO 4217 currency code',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0,普通券；1,秒杀券',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1,上架; 2,下架; 3,过期',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_voucher_order_user_voucher`(`user_id`, `voucher_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_voucher
-- ----------------------------
INSERT INTO `tb_voucher` VALUES (1, 1, '50元代金券', '周一至周日均可使用', '全场通用\\n无需预约\\n可无限叠加\\不兑现、不找零\\n仅限堂食', 4750, 5000, 'CNY', 0, 1, '2022-01-04 09:42:39', '2022-01-04 09:43:31');

-- ----------------------------
-- Table structure for tb_voucher_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_voucher_order`;
CREATE TABLE `tb_voucher_order`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT '下单的用户id',
  `voucher_id` bigint(20) UNSIGNED NOT NULL COMMENT '购买的代金券id',
  `pay_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '支付方式 1：余额支付；2：支付宝；3：微信',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '订单状态，1：未支付；2：已支付；3：已核销；4：已取消；5：退款中；6：已退款',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '下单时间',
  `pay_time` timestamp NULL DEFAULT NULL COMMENT '支付时间',
  `use_time` timestamp NULL DEFAULT NULL COMMENT '核销时间',
  `refund_time` timestamp NULL DEFAULT NULL COMMENT '退款时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_voucher_order
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;

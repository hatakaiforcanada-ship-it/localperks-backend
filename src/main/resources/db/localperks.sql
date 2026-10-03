-- LocalPerks database schema and portfolio demo data.
-- All businesses, users, addresses, and posts below are fictional.

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

DROP TABLE IF EXISTS `tb_voucher_order`;
DROP TABLE IF EXISTS `tb_seckill_voucher`;
DROP TABLE IF EXISTS `tb_voucher`;
DROP TABLE IF EXISTS `tb_sign`;
DROP TABLE IF EXISTS `tb_follow`;
DROP TABLE IF EXISTS `tb_blog_comments`;
DROP TABLE IF EXISTS `tb_blog`;
DROP TABLE IF EXISTS `tb_user_info`;
DROP TABLE IF EXISTS `tb_user`;
DROP TABLE IF EXISTS `tb_shop`;
DROP TABLE IF EXISTS `tb_shop_type`;

CREATE TABLE `tb_shop_type` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `name` varchar(32) NOT NULL COMMENT 'Display name',
  `icon` varchar(255) DEFAULT NULL COMMENT 'Icon URL or path',
  `sort` int(3) UNSIGNED DEFAULT NULL COMMENT 'Display order',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last update time',
  PRIMARY KEY (`id`),
  KEY `idx_shop_type_sort` (`sort`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Business categories';

CREATE TABLE `tb_shop` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `name` varchar(128) NOT NULL COMMENT 'Business name',
  `type_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Business category ID',
  `images` varchar(1024) NOT NULL COMMENT 'Comma-separated image URLs',
  `area` varchar(128) DEFAULT NULL COMMENT 'Neighborhood or commercial district',
  `address` varchar(255) NOT NULL COMMENT 'Street address',
  `x` double UNSIGNED NOT NULL COMMENT 'Longitude',
  `y` double UNSIGNED NOT NULL COMMENT 'Latitude',
  `avg_price` bigint(10) UNSIGNED DEFAULT NULL COMMENT 'Average price in the smallest currency unit',
  `sold` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Number of purchases',
  `comments` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Number of reviews',
  `score` int(2) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Rating multiplied by 10',
  `open_hours` varchar(32) DEFAULT NULL COMMENT 'Opening hours',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last update time',
  PRIMARY KEY (`id`),
  KEY `idx_shop_type_id` (`type_id`),
  KEY `idx_shop_score` (`score`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Local businesses';

CREATE TABLE `tb_user` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `phone` varchar(16) NOT NULL COMMENT 'Phone number in E.164 format',
  `password` varchar(128) DEFAULT '' COMMENT 'Encrypted password when password login is enabled',
  `nick_name` varchar(32) DEFAULT '' COMMENT 'Display name',
  `icon` varchar(255) DEFAULT '' COMMENT 'Avatar URL or path',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last update time',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_user_phone` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Users';

CREATE TABLE `tb_user_info` (
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'User ID',
  `city` varchar(64) DEFAULT '' COMMENT 'City',
  `introduce` varchar(128) DEFAULT NULL COMMENT 'Short biography',
  `fans` int(8) UNSIGNED DEFAULT 0 COMMENT 'Follower count',
  `followee` int(8) UNSIGNED DEFAULT 0 COMMENT 'Following count',
  `gender` tinyint(1) UNSIGNED DEFAULT 0 COMMENT '0: unspecified, 1: female',
  `birthday` date DEFAULT NULL COMMENT 'Birthday',
  `credits` int(8) UNSIGNED DEFAULT 0 COMMENT 'Reward points',
  `level` tinyint(1) UNSIGNED DEFAULT 0 COMMENT 'Membership level from 0 to 9',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last update time',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='User profiles';

CREATE TABLE `tb_blog` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `shop_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Business ID',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Author ID',
  `title` varchar(255) NOT NULL COMMENT 'Post title',
  `images` varchar(2048) NOT NULL COMMENT 'Comma-separated image URLs',
  `content` varchar(2048) NOT NULL COMMENT 'Post content',
  `liked` int(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Like count',
  `comments` int(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Comment count',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last update time',
  PRIMARY KEY (`id`),
  KEY `idx_blog_user_id` (`user_id`),
  KEY `idx_blog_shop_id` (`shop_id`),
  KEY `idx_blog_liked` (`liked`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Community posts';

CREATE TABLE `tb_blog_comments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Author ID',
  `blog_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Post ID',
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Parent comment ID, or 0 for a root comment',
  `answer_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Comment being replied to',
  `content` varchar(255) NOT NULL COMMENT 'Comment content',
  `liked` int(8) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Like count',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0: visible, 1: hidden',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last update time',
  PRIMARY KEY (`id`),
  KEY `idx_comment_blog_id` (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Post comments';

CREATE TABLE `tb_follow` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Follower ID',
  `follow_user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Followed user ID',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation time',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_follow_relation` (`user_id`, `follow_user_id`),
  KEY `idx_follow_user_id` (`follow_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='User follow relationships';

CREATE TABLE `tb_sign` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'User ID',
  `year` year NOT NULL COMMENT 'Check-in year',
  `month` tinyint(2) NOT NULL COMMENT 'Check-in month',
  `date` date NOT NULL COMMENT 'Check-in date',
  `is_backup` tinyint(1) UNSIGNED DEFAULT 0 COMMENT 'Whether this is a retroactive check-in',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_sign_user_date` (`user_id`, `date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Daily check-ins';

CREATE TABLE `tb_voucher` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `shop_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'Business ID',
  `title` varchar(255) NOT NULL COMMENT 'Offer title',
  `sub_title` varchar(255) DEFAULT NULL COMMENT 'Offer subtitle',
  `rules` varchar(1024) DEFAULT NULL COMMENT 'Redemption rules',
  `pay_value` bigint(10) UNSIGNED NOT NULL COMMENT 'Purchase price in the smallest currency unit',
  `actual_value` bigint(10) UNSIGNED NOT NULL COMMENT 'Face value in the smallest currency unit',
  `currency` char(3) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL DEFAULT 'JPY' COMMENT 'ISO 4217 currency code',
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0: standard, 1: limited-time',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1: active, 2: inactive, 3: expired',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last update time',
  PRIMARY KEY (`id`),
  KEY `idx_voucher_shop_id` (`shop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Business offers';

CREATE TABLE `tb_seckill_voucher` (
  `voucher_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Offer ID',
  `stock` int(8) UNSIGNED NOT NULL COMMENT 'Available stock',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation time',
  `begin_time` timestamp NOT NULL COMMENT 'Claim window start',
  `end_time` timestamp NOT NULL COMMENT 'Claim window end',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last update time',
  PRIMARY KEY (`voucher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Limited-time offer inventory';

CREATE TABLE `tb_voucher_order` (
  `id` bigint(20) NOT NULL COMMENT 'Primary key generated by Redis',
  `user_id` bigint(20) UNSIGNED NOT NULL COMMENT 'User ID',
  `voucher_id` bigint(20) UNSIGNED NOT NULL COMMENT 'Offer ID',
  `pay_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1: card, 2: QR payment, 3: cash',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1: pending, 2: paid, 3: redeemed, 4: cancelled, 5: refunding, 6: refunded',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Creation time',
  `pay_time` timestamp NULL DEFAULT NULL COMMENT 'Payment time',
  `use_time` timestamp NULL DEFAULT NULL COMMENT 'Redemption time',
  `refund_time` timestamp NULL DEFAULT NULL COMMENT 'Refund time',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last update time',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_voucher_order_user_voucher` (`user_id`, `voucher_id`),
  KEY `idx_voucher_order_voucher_id` (`voucher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Offer orders';

-- Japanese portfolio demo data. Image URLs intentionally use neutral placeholders
-- so the repository does not redistribute third-party course assets.

INSERT INTO `tb_shop_type` (`id`, `name`, `icon`, `sort`) VALUES
  (1, 'カフェ・グルメ', '/types/ms.png', 1),
  (2, 'ビューティー', '/types/lrmf.png', 2),
  (3, 'フィットネス', '/types/jsyd.png', 3),
  (4, 'エンタメ', '/types/KTV.png', 4),
  (5, 'ファミリー', '/types/qzyl.png', 5),
  (6, 'リラクゼーション', '/types/spa.png', 6),
  (7, 'バー', '/types/jiuba.png', 7),
  (8, 'ネイル', '/types/mjmj.png', 8);

INSERT INTO `tb_shop` (`id`, `name`, `type_id`, `images`, `area`, `address`, `x`, `y`, `avg_price`, `sold`, `comments`, `score`, `open_hours`) VALUES
  (1, 'Sakura Table 渋谷', 1, 'https://placehold.co/800x600?text=Sakura+Table', '渋谷', '東京都渋谷区神南1-10-1', 139.701636, 35.661777, 1800, 428, 96, 47, '11:00-22:00'),
  (2, '喫茶あおぞら', 1, 'https://placehold.co/800x600?text=Aozora+Cafe', '吉祥寺', '東京都武蔵野市吉祥寺本町2-8-3', 139.579812, 35.705612, 950, 312, 74, 46, '08:00-19:00'),
  (3, 'Nagi Hair Studio', 2, 'https://placehold.co/800x600?text=Nagi+Hair', '表参道', '東京都渋谷区神宮前4-12-8', 139.710166, 35.667285, 6200, 185, 51, 48, '10:00-20:00'),
  (4, 'Urban Motion Gym', 3, 'https://placehold.co/800x600?text=Urban+Motion', '恵比寿', '東京都渋谷区恵比寿西1-5-5', 139.708554, 35.647071, 3500, 204, 43, 45, '06:30-23:00'),
  (5, 'Kumo Karaoke 池袋', 4, 'https://placehold.co/800x600?text=Kumo+Karaoke', '池袋', '東京都豊島区西池袋1-18-6', 139.708793, 35.730150, 2200, 517, 128, 44, '12:00-05:00'),
  (6, 'Little Planet Workshop', 5, 'https://placehold.co/800x600?text=Little+Planet', '二子玉川', '東京都世田谷区玉川2-21-1', 139.626792, 35.611507, 1600, 146, 39, 47, '10:00-18:00');

INSERT INTO `tb_user` (`id`, `phone`, `password`, `nick_name`, `icon`) VALUES
  (1, '+819000000001', '', 'Mika', 'https://placehold.co/160x160?text=M'),
  (2, '+819000000002', '', 'Haruto', 'https://placehold.co/160x160?text=H'),
  (3, '+819000000003', '', 'Aoi', 'https://placehold.co/160x160?text=A');

INSERT INTO `tb_user_info` (`user_id`, `city`, `introduce`, `fans`, `followee`, `gender`, `credits`, `level`) VALUES
  (1, '東京', '週末は新しいカフェを探しています。', 18, 12, 1, 120, 1),
  (2, '東京', 'ローカルなお店とランニングが好きです。', 11, 9, 0, 80, 1),
  (3, '横浜', '家族で楽しめる場所を紹介します。', 25, 15, 1, 160, 2);

INSERT INTO `tb_blog` (`id`, `shop_id`, `user_id`, `title`, `images`, `content`, `liked`, `comments`) VALUES
  (1, 1, 1, '渋谷で見つけた落ち着くランチスポット', 'https://placehold.co/800x600?text=Tokyo+Lunch', '駅から歩いて行ける静かなレストラン。季節の野菜を使ったランチが印象的でした。', 42, 1),
  (2, 2, 2, '吉祥寺の朝におすすめの喫茶店', 'https://placehold.co/800x600?text=Morning+Cafe', '自家焙煎コーヒーと厚切りトーストを楽しめます。朝の作業にも使いやすい雰囲気です。', 35, 1),
  (3, 6, 3, '雨の日でも楽しめる親子ワークショップ', 'https://placehold.co/800x600?text=Family+Workshop', 'スタッフが丁寧にサポートしてくれるので、初めてでも安心して参加できました。', 29, 0);

INSERT INTO `tb_blog_comments` (`id`, `user_id`, `blog_id`, `content`, `liked`) VALUES
  (1, 2, 1, '次の週末に行ってみたいです！', 3),
  (2, 1, 2, 'モーニングの時間帯も気になります。', 2);

INSERT INTO `tb_follow` (`user_id`, `follow_user_id`) VALUES
  (1, 2),
  (2, 1),
  (3, 1);

INSERT INTO `tb_voucher` (`id`, `shop_id`, `title`, `sub_title`, `rules`, `pay_value`, `actual_value`, `currency`, `type`, `status`) VALUES
  (1, 1, '1,000円分のお食事券', '毎日利用可能', '店内飲食のみ\n他のクーポンとの併用不可\n現金への交換不可', 900, 1000, 'JPY', 0, 1),
  (2, 2, 'ドリンク100円OFF', '平日限定', '月曜日から金曜日まで利用可能\n1回の来店につき1枚まで', 0, 100, 'JPY', 0, 1);

-- Limited-time offers are intentionally not seeded here. Create them through
-- POST /api/v1/offers/seckill so MySQL and Redis stock are initialized together.

SET FOREIGN_KEY_CHECKS = 1;

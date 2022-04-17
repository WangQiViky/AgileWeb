/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100505
 Source Host           : localhost:3306
 Source Schema         : cinema

 Target Server Type    : MySQL
 Target Server Version : 100505
 File Encoding         : 65001

 Date: 17/04/2022 21:34:36
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `a_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `end_time` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  `coupon_id` int(11) NULL DEFAULT NULL,
  `start_time` timestamp(0) NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES (2, '春季外卖节', '春季外卖节', '2019-07-01 17:55:59', 5, '2019-04-20 17:55:59');
INSERT INTO `activity` VALUES (3, '春季外卖节', '春季外卖节', '2019-04-23 17:55:59', 6, '2019-04-20 17:55:59');
INSERT INTO `activity` VALUES (4, '测试活动', '测试活动', '2019-07-01 16:00:00', 8, '2019-04-20 16:00:00');

-- ----------------------------
-- Table structure for activity_movie
-- ----------------------------
DROP TABLE IF EXISTS `activity_movie`;
CREATE TABLE `activity_movie`  (
  `activity_id` int(11) NULL DEFAULT NULL,
  `movie_id` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity_movie
-- ----------------------------
INSERT INTO `activity_movie` VALUES (2, 10);
INSERT INTO `activity_movie` VALUES (2, 11);
INSERT INTO `activity_movie` VALUES (2, 16);
INSERT INTO `activity_movie` VALUES (4, 10);

-- ----------------------------
-- Table structure for coupon
-- ----------------------------
DROP TABLE IF EXISTS `coupon`;
CREATE TABLE `coupon`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `target_amount` double NULL DEFAULT NULL,
  `discount_amount` double NULL DEFAULT NULL,
  `start_time` timestamp(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `end_time` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupon
-- ----------------------------
INSERT INTO `coupon` VALUES (5, '测试优惠券', '品质联盟', 30, 4, '2019-06-12 23:04:59', '2019-07-01 17:55:59');
INSERT INTO `coupon` VALUES (6, '春节电影节优惠券', '电影节优惠券', 50, 10, '2019-06-12 23:04:59', '2019-04-23 17:55:59');
INSERT INTO `coupon` VALUES (8, '测试优惠券', '123', 100, 99, '2019-06-12 23:04:59', '2019-07-01 16:00:00');
INSERT INTO `coupon` VALUES (10, '无门槛优惠券', 'liuqin', 0, 30, '2019-06-11 00:35:41', '2020-12-31 23:59:59');

-- ----------------------------
-- Table structure for coupon_user
-- ----------------------------
DROP TABLE IF EXISTS `coupon_user`;
CREATE TABLE `coupon_user`  (
  `coupon_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coupon_user
-- ----------------------------
INSERT INTO `coupon_user` VALUES (5, 15);
INSERT INTO `coupon_user` VALUES (8, 15);
INSERT INTO `coupon_user` VALUES (5, 15);
INSERT INTO `coupon_user` VALUES (8, 15);

-- ----------------------------
-- Table structure for hall
-- ----------------------------
DROP TABLE IF EXISTS `hall`;
CREATE TABLE `hall`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `column` int(11) NULL DEFAULT NULL,
  `row` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hall
-- ----------------------------
INSERT INTO `hall` VALUES (1, '1号厅', 10, 5);
INSERT INTO `hall` VALUES (2, '2号厅', 12, 8);

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image`  (
  `page_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hash_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `wav_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES ('page1', 'FiI9pqKjSctbYrQ30lvXUHfXNOtB', '小女孩遇到了外婆。');

-- ----------------------------
-- Table structure for movie
-- ----------------------------
DROP TABLE IF EXISTS `movie`;
CREATE TABLE `movie`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poster_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `director` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `screen_writer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `starring` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `length` int(11) NOT NULL,
  `start_date` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `status` int(11) NULL DEFAULT 0,
  `score` int(11) NULL DEFAULT NULL,
  `like` int(11) NULL DEFAULT NULL,
  `money` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movie
-- ----------------------------
INSERT INTO `movie` VALUES (1, 'https://p1.meituan.net/moviemachine/5cbf9a626b7ed27c96ca3c748655b3ec2550103.jpg@160w_220h_1e_1c', '管虎，郭帆', '管虎', '张译,吴京,李九霄', '战争 剧情 历史', '中国大陆', '汉语', 122, '2022-04-30 14:56:30', '金刚川', '1953年，抗美援朝战争进入最终阶段，志愿军在金城发动最后一场大型战役。为在指定时间到达，向 金城前线投放更多战力，志愿军战士们在物资匮乏、武装悬殊的情况下，不断抵御敌机狂轰滥炸，以血肉之躯一次次修补战火中的木桥。一段鲜为人知的历史，在暗流涌动的金刚川上徐徐展开......', 0, 89, 1000, 5656565);
INSERT INTO `movie` VALUES (2, 'https://p0.meituan.net/movie/202ea88abd2abf2aa1964487d61edab64556414.jpg@160w_220h_1e_1c', '宁浩，徐峥', '刘吾驷，王昂，白俞眉', '葛优,黄渤,范伟', '剧情 喜剧', '中国大陆', '汉语', 155, '2022-04-06 14:56:31', '我和我的家乡', '电影《我和我的家乡》定档2020年国庆，延续《我和我的祖国》集体创作的方式，由张艺谋担当总监制，宁浩担任总导演，张一白担任总策划，宁浩、徐峥、陈思诚、闫非&彭大魔、邓超&俞白眉分别执导五个故事。', 0, 90, 345, 56565);
INSERT INTO `movie` VALUES (3, 'https://p0.meituan.net/movie/458c8679e048149b7fe31b42823e2e5c470774.jpg@464w_644h_1e_1c', '陈传兴', '毛继鸿，廖美立', '叶嘉莹，白先勇，席慕容', '传记 纪录片', '中国大陆', '汉语', 120, '2022-04-06 14:56:33', '掬水月在手', '陈传兴在执导诗人郑愁予纪录电影《如雾起时》、诗人周梦蝶纪录电影《化城再来人》后，开启了他文学纪录片“诗的三部曲”的创作。作为诗词的女儿——叶嘉莹先生的纪录片《掬水月在手》是陈传兴创作“诗的三部曲”的最终章。纪录片从叶嘉莹先生的生平娓娓叙来，以北京四合院的结构模式展现她坎坷坚韧仍不渝追寻初心的一生。叙事音乐中暗含杜甫的秋兴八首，从古到今，将诗词的历史时空和音韵相通。', 0, 78, 789, 3424);
INSERT INTO `movie` VALUES (4, 'https://p0.meituan.net/moviemachine/cf7d6942f2aa9189cce20519b490b6b1879487.jpg@160w_220h_1e_1c', '克里斯·桑德斯', '迈克尔·格林，杰克·伦敦', '哈里森·福特,丹·史蒂文斯,凯伦·吉兰', '剧情 冒险', '美国', '中英双语', 100, '2022-04-30 14:56:35', '野性的呼唤', '巴克是一只体型庞大、脾气暴躁的圣伯纳犬与苏格兰牧羊犬混血，它和米勒法官一家在美国加州的圣克拉拉市一起居住。但巴克不幸被绑架，并被卖了出去，成了一只奴役狗。后来巴克成了佩罗（奥马·希 饰）的狗拉雪橇队中一员，佩罗是一个生性温和的邮递员，他的工作任务是在被冰雪覆盖、自然环境严酷恶劣的育空冻原上投递信件。巴克很快融入到这只狗狗团队中，而且逐渐变成了狗狗们的领袖，但是电报系统的出现，让佩罗的工作变得过时了。后来巴克又遇到了一系列新的主人，这里面有残酷的采矿者哈尔（丹·史蒂文斯 饰），还有善良的好人约翰·桑顿（哈里森·福特 饰）。巴克很喜欢约翰，随着约翰旅程的持续进行，本来是被高度驯化的巴克发现自己逐渐显露出动物天性，而且越来越多展现出动物冲动的本性，并被其所驱使。', 0, 67, 567, 34356);
INSERT INTO `movie` VALUES (5, 'https://p0.meituan.net/movie/303c2e671cc4df875c151d688ecbd8962085989.jpg@464w_644h_1e_1c', '宋灏霖，伊力奇', '冉平，冉甲男，杨薇薇，李慧研', '陈立农，李现，哈尼克孜', '奇幻 古装 喜剧', '中国大陆', '汉语', 125, '2022-04-06 14:56:37', '赤狐书生', '清贫书生王子进（陈立农 饰）进京赶考，被来到人界取丹的狐妖白十三（李现 饰）盯上。为了骗取书生信任，狐妖联合各路妖鬼，设下重重陷阱。一场奇幻旅程等待着他们……', 0, 56, 456, 878787);
INSERT INTO `movie` VALUES (6, 'https://p1.meituan.net/movie/38dd31a0e1b18e1b00aeb2170c5a65b13885486.jpg@160w_220h_1e_1c', '刘浩良', '刘浩良，洪亮', '王千源,吴彦祖,春夏', '犯罪 剧情 动作', '中国大陆，中国香港', '汉语', 95, '2022-05-01 14:56:39', '除暴', '上世纪90年代，刑警钟诚受命追捕悍匪集团“老鹰帮”。这群悍匪犯下惊天连环劫案，训练有素且纪律严明，首领张隼更屡次恶意挑衅，矛头直指钟诚。为将“老鹰帮”捉拿归案，钟诚带领刑警小队咬死不放，誓与恶势力斗争到底。数年间，警匪上演了一次次紧张刺激的较量，悍匪愈加猖獗，警方步步逼近，双方展开殊死对决……', 0, 98, 345, 33424);
INSERT INTO `movie` VALUES (7, 'https://p0.meituan.net/movie/c083e5a14fcddd5a3428b304e0c6fc86924782.jpg@464w_644h_1e_1c', '郭敬明', '郭敬明', '赵又廷，邓伦，王子文，春夏', '奇幻 剧情', '中国大陆', '汉语', 125, '2022-04-06 14:56:41', '晴雅集', '晴明承师父遗命，前往天都参加祭天大典，与博雅不打不相识，从对手成为搭档挚友，两人一同破解离奇案件，揭开一段尘封百年的秘密，拯救苍生。', 0, 56, 34, 45656);
INSERT INTO `movie` VALUES (8, 'https://p0.meituan.net/movie/4638e9d10d35520042ff5885693643944796607.jpg@464w_644h_1e_1c', '落落', '郭敬明，落落', '章若楠，孙晨俊，王彦霖，章若楠，孙晨竣，王彦霖', '爱情 青春 奇幻', '中国大陆', '汉语', 102, '2022-04-06 14:56:43', '如果声音不记得', '如果你喜欢的女孩，得了抑郁症，你该怎么办？辛唐（孙晨竣 饰）拥有通过声音给他人制造快乐的能力，但对同一人使用三次后，性命就会和此人绑定，只有对方开心，辛唐才能活命。偶然，辛唐救下准备自杀的同校网络红人吉择（章若楠 饰），两人借此绑定。吉择表面开朗，但实际患了抑郁症。辛唐最初为了活下去，费尽心思让吉择开心，而后续也真的投入深情。遗憾辛唐的秘密总会败露，而吉择暗黑的过往也在网络上被人揭开....愿爱情的温暖，能治愈抑郁的青春。', 0, 34, 121, 5433241);
INSERT INTO `movie` VALUES (9, 'https://p0.meituan.net/movie/34ffd6e8f0119b362b5862521c296ecd5010552.jpg@160w_220h_1e_1c', '田口智久', '大和屋晓，本乡昭由，杰夫·尼蒙', '花江夏树,细谷佳正,三森铃子', '动画 冒险', '日本', '中日双语', 95, '2022-04-06 14:56:45', '数码宝贝：最后的进化', '《数码宝贝》系列动画，历经20年的成长终于迎来20周年纪念剧场版《数码宝贝：最后的进化》。2020年，被选召的孩子们都长大成人。伴随着未知数码兽的出现，平静的生活被打破，世界即将再次掀起异变。在所有人的命运即将改变之时，八神太一等人再次集结。然而，伴随着战斗的拉响，他们面临与数码宝贝的分别。自1991年夏天开始的漫长冒险，即将迎来终结之时。这是八神太一和数码宝贝们故事的最终篇章，这是他们最后的冒险。', 0, 54, 23334, 355353);
INSERT INTO `movie` VALUES (10, 'https://p0.meituan.net/moviemachine/b52b48d495405a86cdeeedcfed13a206267343.jpg@464w_644h_1e_1c', '保罗·安德森', '保罗·安德森，藤冈要', '米拉·乔沃维奇，托尼·贾，欧阳靖，山崎纮菜', '动作 奇幻', '美国', '中英双语', 103, '2022-04-25 14:56:46', '怪物猎人', '阿蒂米斯（米拉·乔沃维奇 饰）是联合国维和部队的军人，在一次执行任务的途中她和突击小队被绿色闪电的“异象”传送到了异世界。这个异世界里怪物横生、危机四伏，她和小队成员极尽全力和怪物抵抗，但还是损失惨重，只有她一人靠着顽强的意志力和惊人的体力活下来。同时她发现在怪物世界里生存的还有一个神秘的猎人，不知是敌是友。经过初期的试探，她和猎人（托尼·贾 饰）从敌对到逐渐建立信任，一起结伴度过种种危机。猎人也成为了阿蒂米斯在怪物世界中的“导师”，教会她怪物的习性和与他们周旋生存的智慧。当阿蒂米斯和猎人最终设法通过“异象”回到现实世界中，发现已经太迟了，怪兽也通过传送来到了现实世界，到处残垣断壁一片荒芜。阿蒂米斯成为了真正的“怪物猎人”，她和猎人一起搜寻幸存者，并训练他们一同成为“怪物猎人”。', 0, 43, 23, 535353);
INSERT INTO `movie` VALUES (11, 'https://p1.meituan.net/movie/c16b0a68f95d884d428f339f8eacce834410200.jpg@160w_220h_1e_1c', '许宏宇', '张冀，周运海', '刘昊然,彭昱畅,尹昉', '青春', '中国大陆', '汉语', 97, '2022-04-06 14:56:48', '一点就到家', '魏晋北（刘昊然 饰）、彭秀兵（彭昱畅 饰）、李绍群（尹昉 饰）三个性格迥异的年轻人从大城市回到云南千年古寨，机缘巧合下共同创业，与古寨“格格不入”的他们用真诚改变了所有人，开启了一段非常疯狂、纯真的梦想之旅。', 0, 54, 231, 767676);
INSERT INTO `movie` VALUES (12, 'https://p0.meituan.net/movie/35a2550fdf6ca5088087a685e9ec8c791613927.jpg@464w_644h_1e_1c', '王丹阳', '亦舒，王丹阳，梁璐璐', '郭采洁，张国柱，高仁', '剧情 爱情', '中国大陆', '汉语', 112, '2022-04-06 14:56:49', '喜宝', '喜宝（郭采洁 饰）因家庭困境中止了英国学业返回国内，在飞机上结识了单纯可爱的富家千金勖聪慧（李彦漫 饰），回国后先后遭遇了母亲过世、从未见过的父亲上门索要钱财，被房东赶出无家可归。勖家帮助喜宝摆脱了困境，同时喜宝也深陷勖家男人的感情旋涡。曾经想要很多很多爱的喜宝，忽然拥有了选择很多很多钱的机会，年轻的喜宝能否明白爱情的真谛……', 0, 54, 323, 767676);
INSERT INTO `movie` VALUES (13, 'https://p1.meituan.net/movie/e99458a34ee7845d7bc90b71b5b86cbf3364271.jpg@464w_644h_1e_1c', '尼尔·马歇尔', '克里斯托弗·戈登，迈克·米格诺拉，安德鲁·考斯比', '大卫·哈伯，米拉·乔沃维奇，伊恩·麦柯肖恩', '动作 奇幻 冒险', '美国', '中英双语', 115, '2022-04-06 14:56:54', '地狱男爵：血皇后崛起', '地狱男爵在二战期间被纳粹当做最后的武器召唤至人间，但布鲁姆教授却从纳粹手中夺下了这个刚出生的“恶魔之子”，并将其养育成人。长大后的地狱男爵在养父的影响下加入超自然调查防御局（B.P.R.D），成为专门处理各种超自然事件，守护人类社会的超级英雄。在一次处理超自然力量犯罪的过程中，镇压千年的邪恶女巫“血皇后”冲破封印再度复活，召唤出的地狱巨怪冲出地表占领伦敦，席卷全球。地狱男爵在通灵少女爱丽丝、上校本·戴米奥的帮助下，开启了阻止血皇后毁灭人类世界的最后一战。', 0, 23, 345, 767676);

-- ----------------------------
-- Table structure for movie_like
-- ----------------------------
DROP TABLE IF EXISTS `movie_like`;
CREATE TABLE `movie_like`  (
  `movie_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `like_time` timestamp(0) NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`movie_id`, `user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movie_like
-- ----------------------------
INSERT INTO `movie_like` VALUES (2, 17, '2022-04-06 21:47:30');
INSERT INTO `movie_like` VALUES (3, 16, '2022-04-06 15:55:49');
INSERT INTO `movie_like` VALUES (9, 16, '2022-04-06 21:43:34');
INSERT INTO `movie_like` VALUES (10, 12, '2019-03-25 02:40:19');
INSERT INTO `movie_like` VALUES (11, 1, '2019-03-22 09:38:12');
INSERT INTO `movie_like` VALUES (11, 2, '2019-03-23 09:38:12');
INSERT INTO `movie_like` VALUES (11, 3, '2019-03-22 08:38:12');
INSERT INTO `movie_like` VALUES (12, 1, '2019-03-23 09:48:46');
INSERT INTO `movie_like` VALUES (12, 3, '2019-03-25 06:36:22');
INSERT INTO `movie_like` VALUES (13, 16, '2022-04-06 21:36:27');
INSERT INTO `movie_like` VALUES (14, 1, '2019-03-23 09:38:12');
INSERT INTO `movie_like` VALUES (16, 12, '2019-03-23 15:27:48');

-- ----------------------------
-- Table structure for schedule
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hall_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `start_time` timestamp(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `end_time` timestamp(0) NOT NULL,
  `fare` double NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 71 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of schedule
-- ----------------------------
INSERT INTO `schedule` VALUES (69, 1, 10, '2019-06-09 21:00:00', '2019-06-09 23:00:00', 70);
INSERT INTO `schedule` VALUES (70, 1, 10, '2019-06-13 02:00:00', '2019-06-13 04:00:00', 60);

-- ----------------------------
-- Table structure for ticket
-- ----------------------------
DROP TABLE IF EXISTS `ticket`;
CREATE TABLE `ticket`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `schedule_id` int(11) NULL DEFAULT NULL,
  `column_index` int(11) NULL DEFAULT NULL,
  `row_index` int(11) NULL DEFAULT NULL,
  `state` tinyint(4) NULL DEFAULT NULL,
  `time` timestamp(0) NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ticket
-- ----------------------------
INSERT INTO `ticket` VALUES (17, 15, 70, 7, 2, 2, '2019-06-10 23:37:28');
INSERT INTO `ticket` VALUES (18, 15, 70, 8, 2, 2, '2019-06-10 23:37:28');
INSERT INTO `ticket` VALUES (19, 15, 70, 7, 4, 2, '2019-06-10 23:37:45');
INSERT INTO `ticket` VALUES (20, 15, 70, 8, 4, 2, '2019-06-10 23:37:45');
INSERT INTO `ticket` VALUES (21, 15, 70, 7, 3, 2, '2019-06-11 08:19:16');
INSERT INTO `ticket` VALUES (22, 15, 70, 8, 3, 2, '2019-06-11 08:19:16');

-- ----------------------------
-- Table structure for ticket_order
-- ----------------------------
DROP TABLE IF EXISTS `ticket_order`;
CREATE TABLE `ticket_order`  (
  `order_id` int(11) NOT NULL,
  `ticket_id` int(11) NULL DEFAULT NULL,
  `coupon_id` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ticket_order
-- ----------------------------
INSERT INTO `ticket_order` VALUES (0, NULL, NULL);
INSERT INTO `ticket_order` VALUES (8, 13, 0);
INSERT INTO `ticket_order` VALUES (8, 14, 0);
INSERT INTO `ticket_order` VALUES (9, 15, 0);
INSERT INTO `ticket_order` VALUES (9, 16, 0);
INSERT INTO `ticket_order` VALUES (10, 17, 0);
INSERT INTO `ticket_order` VALUES (10, 18, 0);
INSERT INTO `ticket_order` VALUES (11, 19, 0);
INSERT INTO `ticket_order` VALUES (11, 20, 0);
INSERT INTO `ticket_order` VALUES (12, 21, 0);
INSERT INTO `ticket_order` VALUES (12, 22, 0);

-- ----------------------------
-- Table structure for ticket_refund
-- ----------------------------
DROP TABLE IF EXISTS `ticket_refund`;
CREATE TABLE `ticket_refund`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rate` double NULL DEFAULT NULL,
  `limit_hours` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ticket_refund
-- ----------------------------
INSERT INTO `ticket_refund` VALUES (1, 0.2, 2);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `user_id_uindex`(`id`) USING BTREE,
  UNIQUE INDEX `user_username_uindex`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'testname', '123456');
INSERT INTO `user` VALUES (3, 'test', '123456');
INSERT INTO `user` VALUES (5, 'test1', '123456');
INSERT INTO `user` VALUES (7, 'test121', '123456');
INSERT INTO `user` VALUES (8, 'root', '123456');
INSERT INTO `user` VALUES (10, 'roottt', '123123');
INSERT INTO `user` VALUES (12, 'zhourui', '123456');
INSERT INTO `user` VALUES (13, 'abc123', 'abc123');
INSERT INTO `user` VALUES (15, 'dd', '123');
INSERT INTO `user` VALUES (16, 'wangqi77', '123456');
INSERT INTO `user` VALUES (17, 'wangqi123', '123456');

-- ----------------------------
-- Table structure for view
-- ----------------------------
DROP TABLE IF EXISTS `view`;
CREATE TABLE `view`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of view
-- ----------------------------
INSERT INTO `view` VALUES (1, 7);

-- ----------------------------
-- Table structure for vip_card
-- ----------------------------
DROP TABLE IF EXISTS `vip_card`;
CREATE TABLE `vip_card`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `balance` float NULL DEFAULT NULL,
  `join_time` timestamp(0) NOT NULL DEFAULT current_timestamp() ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `vip_card_user_id_uindex`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vip_card
-- ----------------------------
INSERT INTO `vip_card` VALUES (1, 15, 150, '2019-06-11 08:19:27');
INSERT INTO `vip_card` VALUES (2, 12, 660, '2019-04-17 18:47:42');
INSERT INTO `vip_card` VALUES (3, 3, 0, '2019-06-10 10:52:42');
INSERT INTO `vip_card` VALUES (4, 16, 110, '2022-04-06 21:24:02');

-- ----------------------------
-- Table structure for vip_charge_history
-- ----------------------------
DROP TABLE IF EXISTS `vip_charge_history`;
CREATE TABLE `vip_charge_history`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `charge` double NULL DEFAULT NULL,
  `balance` double NULL DEFAULT NULL,
  `time` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vip_charge_history
-- ----------------------------
INSERT INTO `vip_charge_history` VALUES (1, 15, 50, 400, '2019-06-07 00:02:04');
INSERT INTO `vip_charge_history` VALUES (2, 15, 320, 720, '2019-06-07 00:03:23');
INSERT INTO `vip_charge_history` VALUES (3, 16, 110, 110, '2022-04-06 21:24:02');

-- ----------------------------
-- Table structure for vip_info
-- ----------------------------
DROP TABLE IF EXISTS `vip_info`;
CREATE TABLE `vip_info`  (
  `price` double NULL DEFAULT NULL,
  `charge` double NULL DEFAULT NULL,
  `bonus` double NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vip_info
-- ----------------------------
INSERT INTO `vip_info` VALUES (25, 100, 10);

SET FOREIGN_KEY_CHECKS = 1;

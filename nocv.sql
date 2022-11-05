/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : nocv

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2022-06-11 13:16:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ban_ji
-- ----------------------------
DROP TABLE IF EXISTS `ban_ji`;
CREATE TABLE `ban_ji` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `xue_yuan_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `xue_yuan_id` (`xue_yuan_id`),
  CONSTRAINT `ban_ji_ibfk_1` FOREIGN KEY (`xue_yuan_id`) REFERENCES `xue_yuan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ban_ji
-- ----------------------------
INSERT INTO `ban_ji` VALUES ('1', '软件工程1班', '1');
INSERT INTO `ban_ji` VALUES ('2', '软件工程3班', null);
INSERT INTO `ban_ji` VALUES ('3', '计算机技术1班', null);

-- ----------------------------
-- Table structure for china_total
-- ----------------------------
DROP TABLE IF EXISTS `china_total`;
CREATE TABLE `china_total` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `confirm` int(255) DEFAULT NULL,
  `input` int(255) DEFAULT NULL,
  `severe` int(255) DEFAULT NULL,
  `heal` int(255) DEFAULT NULL,
  `dead` int(255) DEFAULT NULL,
  `suspect` int(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of china_total
-- ----------------------------
INSERT INTO `china_total` VALUES ('1', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 06:34:12');
INSERT INTO `china_total` VALUES ('2', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 06:34:12');
INSERT INTO `china_total` VALUES ('3', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 06:34:12');
INSERT INTO `china_total` VALUES ('4', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 06:34:12');
INSERT INTO `china_total` VALUES ('5', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 06:34:12');
INSERT INTO `china_total` VALUES ('6', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 06:34:12');
INSERT INTO `china_total` VALUES ('7', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 06:34:12');
INSERT INTO `china_total` VALUES ('8', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 06:34:12');
INSERT INTO `china_total` VALUES ('9', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('10', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('11', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('12', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('13', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('14', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('15', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('16', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('17', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('18', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('19', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('20', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('21', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('22', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('23', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('24', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('25', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('26', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('27', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('28', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('29', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('30', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('31', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('32', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('33', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('34', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('35', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('36', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('37', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('38', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('39', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('40', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('41', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('42', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('43', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('44', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 07:19:13');
INSERT INTO `china_total` VALUES ('45', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 08:34:15');
INSERT INTO `china_total` VALUES ('46', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 08:34:15');
INSERT INTO `china_total` VALUES ('47', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 08:34:15');
INSERT INTO `china_total` VALUES ('48', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 08:34:15');
INSERT INTO `china_total` VALUES ('49', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 08:34:15');
INSERT INTO `china_total` VALUES ('50', '2677949', '18705', '0', '293039', '16982', '0', '2022-06-02 08:34:15');
INSERT INTO `china_total` VALUES ('51', '2677954', '18705', '0', '293039', '16982', '0', '2022-06-02 13:24:21');
INSERT INTO `china_total` VALUES ('52', '2677954', '18705', '0', '293039', '16982', '0', '2022-06-02 13:24:21');
INSERT INTO `china_total` VALUES ('53', '2677954', '18705', '0', '293039', '16982', '0', '2022-06-02 13:24:21');
INSERT INTO `china_total` VALUES ('54', '2677954', '18705', '0', '293039', '16982', '0', '2022-06-02 13:24:21');
INSERT INTO `china_total` VALUES ('55', '2677954', '18705', '0', '293039', '16982', '0', '2022-06-02 13:24:21');
INSERT INTO `china_total` VALUES ('56', '2677954', '18705', '0', '293039', '16982', '0', '2022-06-02 13:24:21');
INSERT INTO `china_total` VALUES ('57', '2677954', '18705', '0', '293039', '16982', '0', '2022-06-02 13:24:21');
INSERT INTO `china_total` VALUES ('58', '2677954', '18705', '0', '293039', '16982', '0', '2022-06-02 13:24:21');
INSERT INTO `china_total` VALUES ('59', '2677954', '18705', '0', '293039', '16982', '0', '2022-06-02 13:24:21');
INSERT INTO `china_total` VALUES ('60', '2677954', '18705', '0', '293039', '16982', '0', '2022-06-02 13:24:21');
INSERT INTO `china_total` VALUES ('61', '2677954', '18705', '0', '293039', '16982', '0', '2022-06-02 13:24:21');
INSERT INTO `china_total` VALUES ('62', '2677954', '18705', '0', '293039', '16982', '0', '2022-06-02 13:24:21');
INSERT INTO `china_total` VALUES ('63', '2677954', '18705', '0', '293039', '16982', '0', '2022-06-02 13:24:21');
INSERT INTO `china_total` VALUES ('64', '2754999', '18722', '0', '293315', '17127', '0', '2022-06-03 02:44:37');
INSERT INTO `china_total` VALUES ('65', '2754999', '18722', '0', '293315', '17127', '0', '2022-06-03 02:44:37');
INSERT INTO `china_total` VALUES ('66', '2754999', '18722', '0', '293315', '17127', '0', '2022-06-03 02:44:37');
INSERT INTO `china_total` VALUES ('67', '2754999', '18722', '0', '293315', '17127', '0', '2022-06-03 02:44:37');
INSERT INTO `china_total` VALUES ('68', '2754999', '18722', '0', '293315', '17127', '0', '2022-06-03 02:44:37');
INSERT INTO `china_total` VALUES ('69', '2754999', '18722', '0', '293315', '17127', '0', '2022-06-03 04:19:39');
INSERT INTO `china_total` VALUES ('70', '2754999', '18722', '0', '293315', '17127', '0', '2022-06-03 23:25:03');
INSERT INTO `china_total` VALUES ('71', '2754999', '18722', '0', '293315', '17127', '0', '2022-06-03 23:25:03');
INSERT INTO `china_total` VALUES ('72', '2754999', '18722', '0', '293315', '17127', '0', '2022-06-03 23:25:03');
INSERT INTO `china_total` VALUES ('73', '2754999', '18722', '0', '293315', '17127', '0', '2022-06-04 00:25:02');
INSERT INTO `china_total` VALUES ('74', '2754999', '18722', '0', '293315', '17127', '0', '2022-06-04 00:25:02');
INSERT INTO `china_total` VALUES ('75', '2754999', '18722', '0', '293315', '17127', '0', '2022-06-04 00:25:02');
INSERT INTO `china_total` VALUES ('76', '2754999', '18722', '0', '293315', '17127', '0', '2022-06-04 00:25:02');
INSERT INTO `china_total` VALUES ('77', '2754999', '18722', '0', '293315', '17127', '0', '2022-06-04 00:25:02');
INSERT INTO `china_total` VALUES ('78', '2754999', '18722', '0', '293315', '17127', '0', '2022-06-04 00:25:02');
INSERT INTO `china_total` VALUES ('79', '2754999', '18722', '0', '293315', '17127', '0', '2022-06-04 00:25:02');
INSERT INTO `china_total` VALUES ('80', '2754999', '18722', '0', '293315', '17127', '0', '2022-06-04 00:25:02');
INSERT INTO `china_total` VALUES ('81', '2754999', '18722', '0', '293315', '17127', '0', '2022-06-04 00:25:02');
INSERT INTO `china_total` VALUES ('82', '2754999', '18722', '0', '293315', '17127', '0', '2022-06-04 00:25:02');
INSERT INTO `china_total` VALUES ('83', '2754999', '18722', '0', '293315', '17127', '0', '2022-06-04 00:25:02');
INSERT INTO `china_total` VALUES ('84', '2754999', '18722', '0', '293315', '17127', '0', '2022-06-04 00:25:02');
INSERT INTO `china_total` VALUES ('85', '2754999', '18722', '0', '293315', '17127', '0', '2022-06-04 00:25:02');
INSERT INTO `china_total` VALUES ('86', '2754999', '18722', '0', '293315', '17127', '0', '2022-06-04 01:30:04');
INSERT INTO `china_total` VALUES ('87', '2754999', '18722', '0', '293315', '17127', '0', '2022-06-04 01:30:04');
INSERT INTO `china_total` VALUES ('88', '2831622', '18747', '0', '293675', '17271', '0', '2022-06-04 01:30:04');
INSERT INTO `china_total` VALUES ('89', '2831622', '18747', '0', '293675', '17271', '0', '2022-06-04 01:30:04');
INSERT INTO `china_total` VALUES ('90', '2831622', '18747', '0', '293675', '17271', '0', '2022-06-04 01:30:04');
INSERT INTO `china_total` VALUES ('91', '2831622', '18747', '0', '293675', '17271', '0', '2022-06-04 01:30:04');
INSERT INTO `china_total` VALUES ('92', '2831622', '18747', '0', '293675', '17271', '0', '2022-06-04 01:30:04');
INSERT INTO `china_total` VALUES ('93', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 02:20:34');
INSERT INTO `china_total` VALUES ('94', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 02:20:34');
INSERT INTO `china_total` VALUES ('95', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 02:20:34');
INSERT INTO `china_total` VALUES ('96', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 02:20:34');
INSERT INTO `china_total` VALUES ('97', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 02:35:35');
INSERT INTO `china_total` VALUES ('98', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 02:50:35');
INSERT INTO `china_total` VALUES ('99', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 02:50:35');
INSERT INTO `china_total` VALUES ('100', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 02:50:35');
INSERT INTO `china_total` VALUES ('101', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 02:50:35');
INSERT INTO `china_total` VALUES ('102', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 02:50:35');
INSERT INTO `china_total` VALUES ('103', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 02:50:35');
INSERT INTO `china_total` VALUES ('104', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 02:50:35');
INSERT INTO `china_total` VALUES ('105', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 03:35:37');
INSERT INTO `china_total` VALUES ('106', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 03:35:37');
INSERT INTO `china_total` VALUES ('107', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 03:35:37');
INSERT INTO `china_total` VALUES ('108', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 03:35:37');
INSERT INTO `china_total` VALUES ('109', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 03:35:37');
INSERT INTO `china_total` VALUES ('110', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 03:35:37');
INSERT INTO `china_total` VALUES ('111', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 03:35:37');
INSERT INTO `china_total` VALUES ('112', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 03:35:37');
INSERT INTO `china_total` VALUES ('113', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 03:35:37');
INSERT INTO `china_total` VALUES ('114', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 03:35:37');
INSERT INTO `china_total` VALUES ('115', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 03:35:37');
INSERT INTO `china_total` VALUES ('116', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 03:35:37');
INSERT INTO `china_total` VALUES ('117', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 05:40:38');
INSERT INTO `china_total` VALUES ('118', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 05:40:38');
INSERT INTO `china_total` VALUES ('119', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 05:40:38');
INSERT INTO `china_total` VALUES ('120', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 05:40:38');
INSERT INTO `china_total` VALUES ('121', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 05:40:38');
INSERT INTO `china_total` VALUES ('122', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 05:40:38');
INSERT INTO `china_total` VALUES ('123', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 05:40:38');
INSERT INTO `china_total` VALUES ('124', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 05:40:38');
INSERT INTO `china_total` VALUES ('125', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 05:40:38');
INSERT INTO `china_total` VALUES ('126', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 05:40:38');
INSERT INTO `china_total` VALUES ('127', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 05:40:38');
INSERT INTO `china_total` VALUES ('128', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 05:40:38');
INSERT INTO `china_total` VALUES ('129', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 05:40:38');
INSERT INTO `china_total` VALUES ('130', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 05:40:38');
INSERT INTO `china_total` VALUES ('131', '2899852', '18770', '0', '293988', '17423', '0', '2022-06-05 05:40:38');

-- ----------------------------
-- Table structure for health_clock
-- ----------------------------
DROP TABLE IF EXISTS `health_clock`;
CREATE TABLE `health_clock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `morning_temp` varchar(255) DEFAULT NULL,
  `afternoon_temp` varchar(255) DEFAULT NULL,
  `night_temp` varchar(255) DEFAULT NULL,
  `fever_and_cough` varchar(255) DEFAULT NULL,
  `recent_home` varchar(255) DEFAULT NULL,
  `risk_zone` varchar(255) DEFAULT NULL,
  `recent_zone` varchar(255) DEFAULT NULL,
  `health_status` varchar(255) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of health_clock
-- ----------------------------
INSERT INTO `health_clock` VALUES ('1', '9999', '男', '63', '18333603859', '36.5', '36.5', '36.5', '不发烧咳嗽', '西数', '高风险', '从西川到北京来玩', '健康', '2022-05-26 20:06:12');
INSERT INTO `health_clock` VALUES ('3', '曹阿瞒', '男', '65', '1833654', '36.5', '36.5', '36.5', '不发烧咳嗽', '北京', '低风险', '台湾 北京，峰态', '健康', '2022-05-26 20:06:50');
INSERT INTO `health_clock` VALUES ('4', '公共', '男', '36', '183336.3856', '36.5', '36.5', '36.5', '多分', '是的大幅度', '地方发的', '大幅度发到付', '健康', '2022-05-26 12:07:25');
INSERT INTO `health_clock` VALUES ('5', '孙尚香', '女', '26', '1788888888', '37', '37', '36.5', '不发烧', '西川 谈上', '低风险', '撒大大奥术大师大撒多', '健康', null);
INSERT INTO `health_clock` VALUES ('6', '孙尚香', '女', '26', '1788888888', '37', '37', '36.5', '不发烧', '西川 谈上', '低风险', '撒大大奥术大师大撒多', '不健康', null);

-- ----------------------------
-- Table structure for hesuan
-- ----------------------------
DROP TABLE IF EXISTS `hesuan`;
CREATE TABLE `hesuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `card` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hesuan
-- ----------------------------
INSERT INTO `hesuan` VALUES ('1', '王心凌', '25', '18333603843', '131022199804251122', '混检', '阴性', '2022-06-11 09:59:56', '2022-06-11 09:59:59');
INSERT INTO `hesuan` VALUES ('3', '诸葛孔明', '54', '18333603843', '121212121', '个测', '阴性', '2022-06-10 16:00:00', '2022-06-10 16:00:00');
INSERT INTO `hesuan` VALUES ('4', '刘玄德', '25', '18333603843', '1310121212', '咽式嗓子', '阳性', '2022-06-10 16:00:00', '2022-06-10 16:00:00');

-- ----------------------------
-- Table structure for line_trend
-- ----------------------------
DROP TABLE IF EXISTS `line_trend`;
CREATE TABLE `line_trend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `confirm` int(11) DEFAULT NULL,
  `isolation` int(11) DEFAULT NULL,
  `cure` int(11) DEFAULT NULL,
  `dead` int(11) DEFAULT NULL,
  `similar` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of line_trend
-- ----------------------------
INSERT INTO `line_trend` VALUES ('1', '786', '456', '79', '53', '123', '2022-05-18 19:12:52');
INSERT INTO `line_trend` VALUES ('2', '1000', '563', '96', '78', '213', '2022-05-19 19:13:59');
INSERT INTO `line_trend` VALUES ('3', '1200', '653', '115', '98', '312', '2022-05-20 19:14:26');
INSERT INTO `line_trend` VALUES ('4', '1563', '759', '165', '110', '320', '2022-05-21 19:14:48');
INSERT INTO `line_trend` VALUES ('5', '1789', '865', '220', '210', '365', '2022-05-22 19:15:13');
INSERT INTO `line_trend` VALUES ('6', '2134', '987', '276', '256', '400', '2022-05-23 19:15:37');
INSERT INTO `line_trend` VALUES ('7', '2563', '1100', '350', '320', '456', '2022-05-24 19:16:14');
INSERT INTO `line_trend` VALUES ('8', '1563', '563', '220', '123', '243', '2022-05-25 19:50:26');
INSERT INTO `line_trend` VALUES ('9', '3000', '123', '456', '321', '156', '2022-05-26 19:54:25');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  `open` int(11) DEFAULT NULL,
  `ordernum` int(11) DEFAULT NULL,
  `available` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '0', 'menu', '疫情数据可视化', null, '&#xe629;', '', '0', '1', '1');
INSERT INTO `menu` VALUES ('2', '1', 'menu', '中国疫情地图', null, '&#xe62c;', '/toChina', '0', '2', '1');
INSERT INTO `menu` VALUES ('3', '1', 'menu', '疫情饼图', null, '&#xe62c;', '/toPie', '0', '3', '1');
INSERT INTO `menu` VALUES ('4', '1', 'menu', '疫情柱状图', null, '&#xe62c;', '/toBar', '0', '4', '1');
INSERT INTO `menu` VALUES ('5', '1', 'menu', '疫情折线图', null, '&#xe62c;', '/toLine', '0', '5', '1');
INSERT INTO `menu` VALUES ('6', '1', 'menu', '全球疫情地图', null, '&#xe62c;', '/toGlobal', '0', '6', '1');
INSERT INTO `menu` VALUES ('7', '0', 'menu', '疫情数据管理', null, '&#xe62d;', null, '0', '7', '1');
INSERT INTO `menu` VALUES ('8', '7', 'menu', '中国疫情数据管理', null, '&#xe62d;', '/toChinaManager', '0', '8', '1');
INSERT INTO `menu` VALUES ('9', '0', 'menu', '校园防疫管理', null, '&#xe679;', '', '0', '9', '1');
INSERT INTO `menu` VALUES ('10', '9', 'menu', '健康打卡记录', null, '&#xe62a;', '/toHealthClock', '0', '10', '1');
INSERT INTO `menu` VALUES ('11', '0', 'menu', '系统管理', null, '&#xe716;', null, '1', '17', '1');
INSERT INTO `menu` VALUES ('12', '11', 'menu', '菜单管理', null, '&#xe649;', '/menu/toMenu', '0', '18', '1');
INSERT INTO `menu` VALUES ('14', '11', 'menu', '角色管理', null, '&#xe6af;', '/role/toRole', '1', '19', '1');
INSERT INTO `menu` VALUES ('18', '11', 'menu', '用户管理', null, '&#xe613;', '/user/toUser', '1', '20', '1');
INSERT INTO `menu` VALUES ('20', '7', 'menu', '疫情新闻管理', null, '&#xe7ae;', '/news/toNews', '1', '15', '1');
INSERT INTO `menu` VALUES ('21', '0', 'menu', '校园系统管理', null, '&#xe66c;', null, '0', '16', '1');
INSERT INTO `menu` VALUES ('22', '21', 'menu', '学院管理', null, '&#xe62e;', '/xueyuan/toXueYuan', '1', '21', '1');
INSERT INTO `menu` VALUES ('23', '21', 'menu', '班级管理', null, '&#xe62b;', '/banji/toBanJi', '1', '22', '1');
INSERT INTO `menu` VALUES ('24', '9', 'menu', '核酸检测管理', null, '&#xe642;', '/hesuan/toHeSuan', '1', '23', '1');
INSERT INTO `menu` VALUES ('25', '9', 'menu', '疫苗接种管理', null, '&#xe6b1;', '/vaccine/toVaccine', '1', '24', '1');

-- ----------------------------
-- Table structure for nocv_data
-- ----------------------------
DROP TABLE IF EXISTS `nocv_data`;
CREATE TABLE `nocv_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1959 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nocv_data
-- ----------------------------
INSERT INTO `nocv_data` VALUES ('1', '澳门', '95', null);
INSERT INTO `nocv_data` VALUES ('2', '香港', '35', null);
INSERT INTO `nocv_data` VALUES ('3', '台湾', '153', null);
INSERT INTO `nocv_data` VALUES ('4', '新疆', '56', null);
INSERT INTO `nocv_data` VALUES ('5', '宁夏', '26', null);
INSERT INTO `nocv_data` VALUES ('6', '青海', '26', null);
INSERT INTO `nocv_data` VALUES ('7', '甘肃', '39', null);
INSERT INTO `nocv_data` VALUES ('8', '陕西', '3265', null);
INSERT INTO `nocv_data` VALUES ('9', '西藏', '0', null);
INSERT INTO `nocv_data` VALUES ('10', '云南', '255', null);
INSERT INTO `nocv_data` VALUES ('11', '贵州', '130', null);
INSERT INTO `nocv_data` VALUES ('12', '四川', '333', null);
INSERT INTO `nocv_data` VALUES ('13', '重庆', '125', null);
INSERT INTO `nocv_data` VALUES ('14', '海南', '1236', null);
INSERT INTO `nocv_data` VALUES ('15', '广西', '1324', null);
INSERT INTO `nocv_data` VALUES ('16', '广东', '1111', null);
INSERT INTO `nocv_data` VALUES ('17', '湖南', '231', null);
INSERT INTO `nocv_data` VALUES ('18', '湖北', '124', null);
INSERT INTO `nocv_data` VALUES ('19', '河南', '32655', null);
INSERT INTO `nocv_data` VALUES ('20', '山东', '35888', null);
INSERT INTO `nocv_data` VALUES ('21', '江西', '336', null);
INSERT INTO `nocv_data` VALUES ('22', '福建', '129', null);
INSERT INTO `nocv_data` VALUES ('23', '安徽', '666', null);
INSERT INTO `nocv_data` VALUES ('24', '浙江', '1357', null);
INSERT INTO `nocv_data` VALUES ('25', '江苏', '633', null);
INSERT INTO `nocv_data` VALUES ('27', '黑龙江', '365', null);
INSERT INTO `nocv_data` VALUES ('28', '吉林', '59', null);
INSERT INTO `nocv_data` VALUES ('29', '辽宁', '3265', null);
INSERT INTO `nocv_data` VALUES ('30', '内蒙古', '236', null);
INSERT INTO `nocv_data` VALUES ('31', '山西', '132', null);
INSERT INTO `nocv_data` VALUES ('32', '河北', '22', null);
INSERT INTO `nocv_data` VALUES ('33', '天津', '159', null);
INSERT INTO `nocv_data` VALUES ('34', '北京', '620', null);
INSERT INTO `nocv_data` VALUES ('35', '上海', '9999', null);
INSERT INTO `nocv_data` VALUES ('36', '上市', '9898', null);
INSERT INTO `nocv_data` VALUES ('37', 'ssss', '20', null);
INSERT INTO `nocv_data` VALUES ('38', '台湾省', '9696', null);
INSERT INTO `nocv_data` VALUES ('39', '积极', '9999', null);
INSERT INTO `nocv_data` VALUES ('40', '山东', '6666', null);
INSERT INTO `nocv_data` VALUES ('41', '城市名称', '52', null);
INSERT INTO `nocv_data` VALUES ('42', '安可乔内', '1200', null);
INSERT INTO `nocv_data` VALUES ('43', '北大', '1100', null);
INSERT INTO `nocv_data` VALUES ('44', '情话', '120', null);
INSERT INTO `nocv_data` VALUES ('45', '城市名称', '52', null);
INSERT INTO `nocv_data` VALUES ('46', '安可乔内', '1200', null);
INSERT INTO `nocv_data` VALUES ('47', '北大', '1100', null);
INSERT INTO `nocv_data` VALUES ('48', '情话', '120', null);
INSERT INTO `nocv_data` VALUES ('49', '大不列颠', '99999', null);
INSERT INTO `nocv_data` VALUES ('50', '英格兰', '99999', null);
INSERT INTO `nocv_data` VALUES ('51', '非洲', '99999', null);
INSERT INTO `nocv_data` VALUES ('52', '巴拿马', '120', null);
INSERT INTO `nocv_data` VALUES ('53', '香港大学', '1111', null);
INSERT INTO `nocv_data` VALUES ('54', '台湾大学', '22222', null);
INSERT INTO `nocv_data` VALUES ('55', '台湾', '2198161', null);
INSERT INTO `nocv_data` VALUES ('56', '香港', '332547', null);
INSERT INTO `nocv_data` VALUES ('57', '湖北', '68399', null);
INSERT INTO `nocv_data` VALUES ('58', '上海', '63026', null);
INSERT INTO `nocv_data` VALUES ('59', '吉林', '40293', null);
INSERT INTO `nocv_data` VALUES ('60', '广东', '7307', null);
INSERT INTO `nocv_data` VALUES ('61', '北京', '3401', null);
INSERT INTO `nocv_data` VALUES ('62', '陕西', '3283', null);
INSERT INTO `nocv_data` VALUES ('63', '福建', '3278', null);
INSERT INTO `nocv_data` VALUES ('64', '河南', '3183', null);
INSERT INTO `nocv_data` VALUES ('65', '浙江', '3137', null);
INSERT INTO `nocv_data` VALUES ('66', '黑龙江', '2984', null);
INSERT INTO `nocv_data` VALUES ('67', '山东', '2735', null);
INSERT INTO `nocv_data` VALUES ('68', '四川', '2339', null);
INSERT INTO `nocv_data` VALUES ('69', '江苏', '2235', null);
INSERT INTO `nocv_data` VALUES ('70', '云南', '2150', null);
INSERT INTO `nocv_data` VALUES ('71', '河北', '2005', null);
INSERT INTO `nocv_data` VALUES ('72', '天津', '1975', null);
INSERT INTO `nocv_data` VALUES ('73', '内蒙古', '1756', null);
INSERT INTO `nocv_data` VALUES ('74', '辽宁', '1675', null);
INSERT INTO `nocv_data` VALUES ('75', '广西', '1638', null);
INSERT INTO `nocv_data` VALUES ('76', '湖南', '1393', null);
INSERT INTO `nocv_data` VALUES ('77', '江西', '1383', null);
INSERT INTO `nocv_data` VALUES ('78', '安徽', '1065', null);
INSERT INTO `nocv_data` VALUES ('79', '新疆', '1008', null);
INSERT INTO `nocv_data` VALUES ('80', '重庆', '713', null);
INSERT INTO `nocv_data` VALUES ('81', '甘肃', '681', null);
INSERT INTO `nocv_data` VALUES ('82', '山西', '421', null);
INSERT INTO `nocv_data` VALUES ('83', '海南', '288', null);
INSERT INTO `nocv_data` VALUES ('84', '贵州', '185', null);
INSERT INTO `nocv_data` VALUES ('85', '青海', '147', null);
INSERT INTO `nocv_data` VALUES ('86', '宁夏', '122', null);
INSERT INTO `nocv_data` VALUES ('87', '澳门', '83', null);
INSERT INTO `nocv_data` VALUES ('88', '西藏', '1', null);
INSERT INTO `nocv_data` VALUES ('89', '台湾', '2198161', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('90', '香港', '332547', '2022-06-04 00:18:24');
INSERT INTO `nocv_data` VALUES ('91', '湖北', '68399', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('92', '上海', '63033', '2022-06-04 00:19:22');
INSERT INTO `nocv_data` VALUES ('93', '吉林', '40293', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('94', '广东', '7311', '2022-06-04 00:59:25');
INSERT INTO `nocv_data` VALUES ('95', '北京', '3410', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('96', '陕西', '3283', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('97', '福建', '3278', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('98', '河南', '3183', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('99', '浙江', '3137', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('100', '黑龙江', '2984', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('101', '山东', '2735', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('102', '四川', '2339', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('103', '江苏', '2235', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('104', '云南', '2152', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('105', '河北', '2005', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('106', '天津', '1975', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('107', '内蒙古', '1756', '2022-06-04 00:18:24');
INSERT INTO `nocv_data` VALUES ('108', '辽宁', '1675', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('109', '广西', '1639', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('110', '湖南', '1393', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('111', '江西', '1383', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('112', '安徽', '1065', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('113', '新疆', '1008', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('114', '重庆', '713', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('115', '甘肃', '681', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('116', '山西', '421', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('117', '海南', '288', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('118', '贵州', '185', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('119', '青海', '147', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('120', '宁夏', '122', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('121', '澳门', '83', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('122', '西藏', '1', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('123', '台湾', '2198161', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('124', '香港', '332547', '2022-06-04 00:18:24');
INSERT INTO `nocv_data` VALUES ('125', '湖北', '68399', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('126', '上海', '63033', '2022-06-04 00:19:22');
INSERT INTO `nocv_data` VALUES ('127', '吉林', '40293', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('128', '广东', '7311', '2022-06-04 00:59:25');
INSERT INTO `nocv_data` VALUES ('129', '北京', '3410', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('130', '陕西', '3283', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('131', '福建', '3278', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('132', '河南', '3183', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('133', '浙江', '3137', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('134', '黑龙江', '2984', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('135', '山东', '2735', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('136', '四川', '2339', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('137', '江苏', '2235', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('138', '云南', '2152', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('139', '河北', '2005', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('140', '天津', '1975', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('141', '内蒙古', '1756', '2022-06-04 00:18:24');
INSERT INTO `nocv_data` VALUES ('142', '辽宁', '1675', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('143', '广西', '1639', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('144', '湖南', '1393', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('145', '江西', '1383', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('146', '安徽', '1065', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('147', '新疆', '1008', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('148', '重庆', '713', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('149', '甘肃', '681', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('150', '山西', '421', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('151', '海南', '288', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('152', '贵州', '185', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('153', '青海', '147', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('154', '宁夏', '122', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('155', '澳门', '83', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('156', '西藏', '1', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('157', '台湾', '2198161', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('158', '香港', '332547', '2022-06-04 00:18:24');
INSERT INTO `nocv_data` VALUES ('159', '湖北', '68399', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('160', '上海', '63033', '2022-06-04 00:19:22');
INSERT INTO `nocv_data` VALUES ('161', '吉林', '40293', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('162', '广东', '7311', '2022-06-04 00:59:25');
INSERT INTO `nocv_data` VALUES ('163', '北京', '3410', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('164', '陕西', '3283', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('165', '福建', '3278', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('166', '河南', '3183', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('167', '浙江', '3137', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('168', '黑龙江', '2984', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('169', '山东', '2735', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('170', '四川', '2339', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('171', '江苏', '2235', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('172', '云南', '2152', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('173', '河北', '2005', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('174', '天津', '1975', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('175', '内蒙古', '1756', '2022-06-04 00:18:24');
INSERT INTO `nocv_data` VALUES ('176', '辽宁', '1675', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('177', '广西', '1639', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('178', '湖南', '1393', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('179', '江西', '1383', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('180', '安徽', '1065', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('181', '新疆', '1008', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('182', '重庆', '713', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('183', '甘肃', '681', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('184', '山西', '421', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('185', '海南', '288', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('186', '贵州', '185', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('187', '青海', '147', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('188', '宁夏', '122', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('189', '澳门', '83', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('190', '西藏', '1', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('191', '台湾', '2198161', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('192', '香港', '332547', '2022-06-04 00:18:24');
INSERT INTO `nocv_data` VALUES ('193', '湖北', '68399', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('194', '上海', '63033', '2022-06-04 00:19:22');
INSERT INTO `nocv_data` VALUES ('195', '吉林', '40293', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('196', '广东', '7311', '2022-06-04 00:59:25');
INSERT INTO `nocv_data` VALUES ('197', '北京', '3410', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('198', '陕西', '3283', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('199', '福建', '3278', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('200', '河南', '3183', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('201', '浙江', '3137', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('202', '黑龙江', '2984', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('203', '山东', '2735', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('204', '四川', '2339', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('205', '江苏', '2235', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('206', '云南', '2152', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('207', '河北', '2005', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('208', '天津', '1975', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('209', '内蒙古', '1756', '2022-06-04 00:18:24');
INSERT INTO `nocv_data` VALUES ('210', '辽宁', '1675', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('211', '广西', '1639', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('212', '湖南', '1393', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('213', '江西', '1383', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('214', '安徽', '1065', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('215', '新疆', '1008', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('216', '重庆', '713', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('217', '甘肃', '681', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('218', '山西', '421', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('219', '海南', '288', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('220', '贵州', '185', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('221', '青海', '147', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('222', '宁夏', '122', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('223', '澳门', '83', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('224', '西藏', '1', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('225', '台湾', '2198161', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('226', '香港', '332547', '2022-06-04 00:18:24');
INSERT INTO `nocv_data` VALUES ('227', '湖北', '68399', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('228', '上海', '63033', '2022-06-04 00:19:22');
INSERT INTO `nocv_data` VALUES ('229', '吉林', '40293', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('230', '广东', '7311', '2022-06-04 00:59:25');
INSERT INTO `nocv_data` VALUES ('231', '北京', '3410', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('232', '陕西', '3283', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('233', '福建', '3278', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('234', '河南', '3183', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('235', '浙江', '3137', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('236', '黑龙江', '2984', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('237', '山东', '2735', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('238', '四川', '2339', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('239', '江苏', '2235', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('240', '云南', '2152', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('241', '河北', '2005', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('242', '天津', '1975', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('243', '内蒙古', '1756', '2022-06-04 00:18:24');
INSERT INTO `nocv_data` VALUES ('244', '辽宁', '1675', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('245', '广西', '1639', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('246', '湖南', '1393', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('247', '江西', '1383', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('248', '安徽', '1065', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('249', '新疆', '1008', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('250', '重庆', '713', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('251', '甘肃', '681', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('252', '山西', '421', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('253', '海南', '288', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('254', '贵州', '185', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('255', '青海', '147', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('256', '宁夏', '122', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('257', '澳门', '83', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('258', '西藏', '1', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('259', '台湾', '2198161', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('260', '香港', '332547', '2022-06-04 00:18:24');
INSERT INTO `nocv_data` VALUES ('261', '湖北', '68399', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('262', '上海', '63033', '2022-06-04 00:19:22');
INSERT INTO `nocv_data` VALUES ('263', '吉林', '40293', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('264', '广东', '7311', '2022-06-04 00:59:25');
INSERT INTO `nocv_data` VALUES ('265', '北京', '3410', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('266', '陕西', '3283', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('267', '福建', '3278', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('268', '河南', '3183', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('269', '浙江', '3137', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('270', '黑龙江', '2984', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('271', '山东', '2735', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('272', '四川', '2339', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('273', '江苏', '2235', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('274', '云南', '2152', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('275', '河北', '2005', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('276', '天津', '1975', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('277', '内蒙古', '1756', '2022-06-04 00:18:24');
INSERT INTO `nocv_data` VALUES ('278', '辽宁', '1675', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('279', '广西', '1639', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('280', '湖南', '1393', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('281', '江西', '1383', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('282', '安徽', '1065', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('283', '新疆', '1008', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('284', '重庆', '713', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('285', '甘肃', '681', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('286', '山西', '421', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('287', '海南', '288', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('288', '贵州', '185', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('289', '青海', '147', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('290', '宁夏', '122', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('291', '澳门', '83', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('292', '西藏', '1', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('293', '台湾', '2198161', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('294', '香港', '332547', '2022-06-04 00:18:24');
INSERT INTO `nocv_data` VALUES ('295', '湖北', '68399', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('296', '上海', '63033', '2022-06-04 00:19:22');
INSERT INTO `nocv_data` VALUES ('297', '吉林', '40293', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('298', '广东', '7311', '2022-06-04 00:59:25');
INSERT INTO `nocv_data` VALUES ('299', '北京', '3410', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('300', '陕西', '3283', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('301', '福建', '3278', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('302', '河南', '3183', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('303', '浙江', '3137', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('304', '黑龙江', '2984', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('305', '山东', '2735', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('306', '四川', '2339', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('307', '江苏', '2235', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('308', '云南', '2152', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('309', '河北', '2005', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('310', '天津', '1975', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('311', '内蒙古', '1756', '2022-06-04 00:18:24');
INSERT INTO `nocv_data` VALUES ('312', '辽宁', '1675', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('313', '广西', '1639', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('314', '湖南', '1393', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('315', '江西', '1383', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('316', '安徽', '1065', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('317', '新疆', '1008', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('318', '重庆', '713', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('319', '甘肃', '681', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('320', '山西', '421', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('321', '海南', '288', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('322', '贵州', '185', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('323', '青海', '147', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('324', '宁夏', '122', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('325', '澳门', '83', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('326', '西藏', '1', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('327', '台湾', '2198161', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('328', '香港', '332547', '2022-06-04 00:18:24');
INSERT INTO `nocv_data` VALUES ('329', '湖北', '68399', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('330', '上海', '63033', '2022-06-04 00:19:22');
INSERT INTO `nocv_data` VALUES ('331', '吉林', '40293', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('332', '广东', '7311', '2022-06-04 00:59:25');
INSERT INTO `nocv_data` VALUES ('333', '北京', '3410', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('334', '陕西', '3283', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('335', '福建', '3278', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('336', '河南', '3183', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('337', '浙江', '3137', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('338', '黑龙江', '2984', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('339', '山东', '2735', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('340', '四川', '2339', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('341', '江苏', '2235', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('342', '云南', '2152', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('343', '河北', '2005', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('344', '天津', '1975', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('345', '内蒙古', '1756', '2022-06-04 00:18:24');
INSERT INTO `nocv_data` VALUES ('346', '辽宁', '1675', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('347', '广西', '1639', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('348', '湖南', '1393', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('349', '江西', '1383', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('350', '安徽', '1065', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('351', '新疆', '1008', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('352', '重庆', '713', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('353', '甘肃', '681', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('354', '山西', '421', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('355', '海南', '288', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('356', '贵州', '185', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('357', '青海', '147', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('358', '宁夏', '122', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('359', '澳门', '83', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('360', '西藏', '1', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('361', '台湾', '2198161', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('362', '香港', '332547', '2022-06-04 00:18:24');
INSERT INTO `nocv_data` VALUES ('363', '湖北', '68399', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('364', '上海', '63033', '2022-06-04 00:19:22');
INSERT INTO `nocv_data` VALUES ('365', '吉林', '40293', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('366', '广东', '7311', '2022-06-04 00:59:25');
INSERT INTO `nocv_data` VALUES ('367', '北京', '3410', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('368', '福建', '3285', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('369', '陕西', '3283', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('370', '河南', '3183', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('371', '浙江', '3138', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('372', '黑龙江', '2984', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('373', '山东', '2735', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('374', '四川', '2343', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('375', '江苏', '2235', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('376', '云南', '2152', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('377', '河北', '2005', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('378', '天津', '1975', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('379', '内蒙古', '1767', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('380', '辽宁', '1675', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('381', '广西', '1639', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('382', '湖南', '1393', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('383', '江西', '1383', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('384', '安徽', '1065', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('385', '新疆', '1008', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('386', '重庆', '713', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('387', '甘肃', '681', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('388', '山西', '421', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('389', '海南', '288', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('390', '贵州', '185', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('391', '青海', '147', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('392', '宁夏', '122', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('393', '澳门', '83', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('394', '西藏', '1', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('395', '台湾', '2198161', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('396', '香港', '332547', '2022-06-04 00:18:24');
INSERT INTO `nocv_data` VALUES ('397', '湖北', '68399', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('398', '上海', '63033', '2022-06-04 00:19:22');
INSERT INTO `nocv_data` VALUES ('399', '吉林', '40293', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('400', '广东', '7311', '2022-06-04 00:59:25');
INSERT INTO `nocv_data` VALUES ('401', '北京', '3410', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('402', '福建', '3285', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('403', '陕西', '3283', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('404', '河南', '3183', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('405', '浙江', '3138', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('406', '黑龙江', '2984', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('407', '山东', '2735', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('408', '四川', '2343', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('409', '江苏', '2235', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('410', '云南', '2152', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('411', '河北', '2005', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('412', '天津', '1975', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('413', '内蒙古', '1767', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('414', '辽宁', '1675', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('415', '广西', '1639', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('416', '湖南', '1393', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('417', '江西', '1383', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('418', '安徽', '1065', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('419', '新疆', '1008', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('420', '重庆', '713', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('421', '甘肃', '681', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('422', '山西', '421', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('423', '海南', '288', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('424', '贵州', '185', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('425', '青海', '147', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('426', '宁夏', '122', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('427', '澳门', '83', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('428', '西藏', '1', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('429', '台湾', '2198161', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('430', '香港', '332547', '2022-06-04 00:18:24');
INSERT INTO `nocv_data` VALUES ('431', '湖北', '68399', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('432', '上海', '63033', '2022-06-04 00:19:22');
INSERT INTO `nocv_data` VALUES ('433', '吉林', '40293', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('434', '广东', '7311', '2022-06-04 00:59:25');
INSERT INTO `nocv_data` VALUES ('435', '北京', '3410', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('436', '福建', '3285', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('437', '陕西', '3283', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('438', '河南', '3183', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('439', '浙江', '3138', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('440', '黑龙江', '2984', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('441', '山东', '2735', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('442', '四川', '2343', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('443', '江苏', '2235', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('444', '云南', '2152', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('445', '河北', '2005', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('446', '天津', '1975', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('447', '内蒙古', '1767', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('448', '辽宁', '1675', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('449', '广西', '1639', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('450', '湖南', '1393', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('451', '江西', '1383', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('452', '安徽', '1065', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('453', '新疆', '1008', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('454', '重庆', '713', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('455', '甘肃', '681', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('456', '山西', '421', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('457', '海南', '288', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('458', '贵州', '185', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('459', '青海', '147', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('460', '宁夏', '122', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('461', '澳门', '83', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('462', '西藏', '1', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('463', '台湾', '2198161', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('464', '香港', '332547', '2022-06-04 00:18:24');
INSERT INTO `nocv_data` VALUES ('465', '湖北', '68399', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('466', '上海', '63033', '2022-06-04 00:19:22');
INSERT INTO `nocv_data` VALUES ('467', '吉林', '40293', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('468', '广东', '7311', '2022-06-04 00:59:25');
INSERT INTO `nocv_data` VALUES ('469', '北京', '3410', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('470', '福建', '3285', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('471', '陕西', '3283', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('472', '河南', '3183', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('473', '浙江', '3138', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('474', '黑龙江', '2984', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('475', '山东', '2735', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('476', '四川', '2343', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('477', '江苏', '2235', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('478', '云南', '2152', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('479', '河北', '2005', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('480', '天津', '1975', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('481', '内蒙古', '1767', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('482', '辽宁', '1675', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('483', '广西', '1639', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('484', '湖南', '1393', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('485', '江西', '1383', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('486', '安徽', '1065', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('487', '新疆', '1008', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('488', '重庆', '713', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('489', '甘肃', '681', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('490', '山西', '421', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('491', '海南', '288', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('492', '贵州', '185', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('493', '青海', '147', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('494', '宁夏', '122', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('495', '澳门', '83', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('496', '西藏', '1', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('497', '台湾', '2198161', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('498', '香港', '332547', '2022-06-04 00:18:24');
INSERT INTO `nocv_data` VALUES ('499', '湖北', '68399', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('500', '上海', '63033', '2022-06-04 00:19:22');
INSERT INTO `nocv_data` VALUES ('501', '吉林', '40293', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('502', '广东', '7311', '2022-06-04 00:59:25');
INSERT INTO `nocv_data` VALUES ('503', '北京', '3410', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('504', '福建', '3285', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('505', '陕西', '3283', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('506', '河南', '3183', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('507', '浙江', '3138', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('508', '黑龙江', '2984', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('509', '山东', '2735', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('510', '四川', '2343', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('511', '江苏', '2235', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('512', '云南', '2152', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('513', '河北', '2005', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('514', '天津', '1975', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('515', '内蒙古', '1767', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('516', '辽宁', '1675', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('517', '广西', '1639', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('518', '湖南', '1393', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('519', '江西', '1383', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('520', '安徽', '1065', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('521', '新疆', '1008', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('522', '重庆', '713', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('523', '甘肃', '681', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('524', '山西', '421', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('525', '海南', '288', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('526', '贵州', '185', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('527', '青海', '147', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('528', '宁夏', '122', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('529', '澳门', '83', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('530', '西藏', '1', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('531', '台湾', '2198161', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('532', '香港', '332547', '2022-06-04 00:18:24');
INSERT INTO `nocv_data` VALUES ('533', '湖北', '68399', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('534', '上海', '63033', '2022-06-04 00:19:22');
INSERT INTO `nocv_data` VALUES ('535', '吉林', '40293', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('536', '广东', '7311', '2022-06-04 00:59:25');
INSERT INTO `nocv_data` VALUES ('537', '北京', '3410', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('538', '福建', '3285', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('539', '陕西', '3283', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('540', '河南', '3183', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('541', '浙江', '3138', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('542', '黑龙江', '2984', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('543', '山东', '2735', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('544', '四川', '2343', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('545', '江苏', '2235', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('546', '云南', '2152', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('547', '河北', '2005', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('548', '天津', '1975', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('549', '内蒙古', '1767', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('550', '辽宁', '1675', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('551', '广西', '1639', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('552', '湖南', '1393', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('553', '江西', '1383', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('554', '安徽', '1065', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('555', '新疆', '1008', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('556', '重庆', '713', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('557', '甘肃', '681', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('558', '山西', '421', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('559', '海南', '288', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('560', '贵州', '185', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('561', '青海', '147', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('562', '宁夏', '122', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('563', '澳门', '83', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('564', '西藏', '1', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('565', '台湾', '2274666', '2022-06-04 01:58:28');
INSERT INTO `nocv_data` VALUES ('566', '香港', '332619', '2022-06-04 01:58:29');
INSERT INTO `nocv_data` VALUES ('567', '湖北', '68399', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('568', '上海', '63033', '2022-06-04 00:19:22');
INSERT INTO `nocv_data` VALUES ('569', '吉林', '40293', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('570', '广东', '7311', '2022-06-04 00:59:25');
INSERT INTO `nocv_data` VALUES ('571', '北京', '3410', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('572', '福建', '3285', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('573', '陕西', '3283', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('574', '河南', '3183', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('575', '浙江', '3138', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('576', '黑龙江', '2984', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('577', '山东', '2735', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('578', '四川', '2343', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('579', '江苏', '2235', '2022-06-04 01:58:29');
INSERT INTO `nocv_data` VALUES ('580', '云南', '2152', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('581', '河北', '2005', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('582', '天津', '1975', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('583', '内蒙古', '1767', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('584', '辽宁', '1675', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('585', '广西', '1639', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('586', '湖南', '1393', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('587', '江西', '1383', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('588', '安徽', '1065', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('589', '新疆', '1008', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('590', '重庆', '713', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('591', '甘肃', '681', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('592', '山西', '421', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('593', '海南', '288', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('594', '贵州', '185', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('595', '青海', '147', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('596', '宁夏', '122', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('597', '澳门', '83', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('598', '西藏', '1', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('599', '台湾', '2258261', '2022-06-04 01:58:28');
INSERT INTO `nocv_data` VALUES ('600', '香港', '260800', '2022-06-04 01:58:29');
INSERT INTO `nocv_data` VALUES ('601', '湖北', '1', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('602', '上海', '449', '2022-06-04 00:19:22');
INSERT INTO `nocv_data` VALUES ('603', '吉林', '146', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('604', '广东', '33', '2022-06-04 00:59:25');
INSERT INTO `nocv_data` VALUES ('605', '北京', '308', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('606', '福建', '65', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('607', '陕西', '2', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('608', '河南', '48', '2022-06-04 00:59:23');
INSERT INTO `nocv_data` VALUES ('609', '浙江', '19', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('610', '黑龙江', '1', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('611', '山东', '1', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('612', '四川', '113', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('613', '江苏', '11', '2022-06-04 01:58:29');
INSERT INTO `nocv_data` VALUES ('614', '云南', '20', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('615', '河北', '1', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('616', '天津', '148', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('617', '内蒙古', '14', '2022-06-04 01:27:27');
INSERT INTO `nocv_data` VALUES ('618', '辽宁', '2', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('619', '广西', '14', '2022-06-04 00:59:24');
INSERT INTO `nocv_data` VALUES ('620', '湖南', '0', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('621', '江西', '0', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('622', '安徽', '0', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('623', '新疆', '0', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('624', '重庆', '3', '2022-06-04 00:19:23');
INSERT INTO `nocv_data` VALUES ('625', '甘肃', '0', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('626', '山西', '1', '2022-06-04 00:18:23');
INSERT INTO `nocv_data` VALUES ('627', '海南', '0', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('628', '贵州', '0', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('629', '青海', '0', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('630', '宁夏', '0', '2022-06-03 16:00:55');
INSERT INTO `nocv_data` VALUES ('631', '澳门', '1', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('632', '西藏', '0', '2022-06-03 16:00:54');
INSERT INTO `nocv_data` VALUES ('633', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('634', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('635', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('636', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('637', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('638', '广东', '33', '2022-06-04 16:04:18');
INSERT INTO `nocv_data` VALUES ('639', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('640', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('641', '陕西', '2', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('642', '河南', '48', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('643', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('644', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('645', '山东', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('646', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('647', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('648', '云南', '20', '2022-06-04 16:04:18');
INSERT INTO `nocv_data` VALUES ('649', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('650', '天津', '149', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('651', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('652', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('653', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('654', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('655', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('656', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('657', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('658', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('659', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('660', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('661', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('662', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('663', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('664', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('665', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('666', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('667', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('668', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('669', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('670', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('671', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('672', '广东', '33', '2022-06-04 16:04:18');
INSERT INTO `nocv_data` VALUES ('673', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('674', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('675', '陕西', '2', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('676', '河南', '48', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('677', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('678', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('679', '山东', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('680', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('681', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('682', '云南', '20', '2022-06-04 16:04:18');
INSERT INTO `nocv_data` VALUES ('683', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('684', '天津', '149', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('685', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('686', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('687', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('688', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('689', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('690', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('691', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('692', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('693', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('694', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('695', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('696', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('697', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('698', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('699', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('700', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('701', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('702', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('703', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('704', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('705', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('706', '广东', '33', '2022-06-04 16:04:18');
INSERT INTO `nocv_data` VALUES ('707', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('708', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('709', '陕西', '2', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('710', '河南', '48', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('711', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('712', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('713', '山东', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('714', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('715', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('716', '云南', '20', '2022-06-04 16:04:18');
INSERT INTO `nocv_data` VALUES ('717', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('718', '天津', '149', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('719', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('720', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('721', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('722', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('723', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('724', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('725', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('726', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('727', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('728', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('729', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('730', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('731', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('732', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('733', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('734', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('736', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('737', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('738', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('739', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('740', '广东', '33', '2022-06-04 16:04:18');
INSERT INTO `nocv_data` VALUES ('741', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('742', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('743', '陕西', '2', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('744', '河南', '48', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('745', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('746', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('747', '山东', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('748', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('749', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('750', '云南', '20', '2022-06-04 16:04:18');
INSERT INTO `nocv_data` VALUES ('751', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('752', '天津', '149', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('753', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('754', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('755', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('756', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('757', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('758', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('759', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('760', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('761', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('762', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('763', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('764', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('765', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('766', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('767', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('768', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('769', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('770', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('771', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('772', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('773', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('774', '广东', '33', '2022-06-04 16:04:18');
INSERT INTO `nocv_data` VALUES ('775', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('776', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('777', '陕西', '2', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('778', '河南', '48', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('779', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('780', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('781', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('782', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('783', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('784', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('785', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('786', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('787', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('788', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('789', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('790', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('791', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('792', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('793', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('794', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('795', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('796', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('797', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('798', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('799', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('800', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('801', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('802', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('803', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('804', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('805', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('806', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('807', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('808', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('809', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('810', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('811', '陕西', '2', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('812', '河南', '48', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('813', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('814', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('815', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('816', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('817', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('818', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('819', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('820', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('821', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('822', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('823', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('824', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('825', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('826', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('827', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('828', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('829', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('830', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('831', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('832', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('833', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('834', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('835', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('836', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('837', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('838', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('839', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('840', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('841', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('842', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('843', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('844', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('845', '陕西', '2', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('846', '河南', '48', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('847', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('848', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('849', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('850', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('851', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('852', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('853', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('854', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('855', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('856', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('857', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('858', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('859', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('860', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('861', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('862', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('863', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('864', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('865', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('866', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('867', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('868', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('869', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('870', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('871', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('872', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('873', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('874', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('875', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('876', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('877', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('878', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('879', '陕西', '2', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('880', '河南', '48', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('881', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('882', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('883', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('884', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('885', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('886', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('887', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('888', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('889', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('890', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('891', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('892', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('893', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('894', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('895', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('896', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('897', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('898', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('899', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('900', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('901', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('902', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('903', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('904', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('905', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('906', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('907', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('908', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('909', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('910', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('911', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('912', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('913', '陕西', '2', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('914', '河南', '48', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('915', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('916', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('917', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('918', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('919', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('920', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('921', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('922', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('923', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('924', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('925', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('926', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('927', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('928', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('929', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('930', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('931', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('932', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('933', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('934', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('935', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('936', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('937', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('938', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('939', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('940', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('941', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('942', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('943', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('944', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('945', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('946', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('947', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('948', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('949', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('950', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('951', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('952', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('953', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('954', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('955', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('956', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('957', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('958', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('959', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('960', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('961', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('962', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('963', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('964', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('965', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('966', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('967', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('968', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('969', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('970', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('971', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('972', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('973', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('974', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('975', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('976', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('977', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('978', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('979', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('980', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('981', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('982', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('983', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('984', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('985', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('986', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('987', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('988', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('989', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('990', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('991', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('992', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('993', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('994', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('995', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('996', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('997', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('998', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('999', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1000', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1001', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1002', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1003', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1004', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1005', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1006', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1007', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('1008', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1009', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1010', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('1011', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('1012', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('1013', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('1014', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1015', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('1016', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('1017', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1018', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1019', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('1020', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('1021', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('1022', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('1023', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1024', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('1025', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('1026', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1027', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('1028', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1029', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1030', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1031', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1032', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1033', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1034', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1035', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1036', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1037', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1038', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1039', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1040', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1041', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('1042', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1043', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1044', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('1045', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('1046', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('1047', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('1048', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1049', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('1050', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('1051', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1052', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1053', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('1054', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('1055', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('1056', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('1057', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1058', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('1059', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('1060', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1061', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('1062', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1063', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1064', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1065', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1066', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1067', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1068', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1069', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1070', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1071', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1072', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1073', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1074', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1075', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('1076', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1077', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1078', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('1079', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('1080', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('1081', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('1082', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1083', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('1084', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('1085', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1086', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1087', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('1088', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('1089', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('1090', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('1091', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1092', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('1093', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('1094', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1095', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('1096', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1097', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1098', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1099', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1100', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1101', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1102', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1103', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1104', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1105', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1106', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1107', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1108', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1109', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('1110', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1111', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1112', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('1113', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('1114', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('1115', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('1116', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1117', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('1118', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('1119', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1120', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1121', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('1122', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('1123', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('1124', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('1125', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1126', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('1127', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('1128', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1129', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('1130', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1131', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1132', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1133', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1134', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1135', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1136', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1137', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1138', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1139', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1140', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1141', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1142', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1143', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('1144', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1145', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1146', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('1147', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('1148', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('1149', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('1150', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1151', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('1152', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('1153', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1154', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1155', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('1156', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('1157', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('1158', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('1159', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1160', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('1161', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('1162', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1163', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('1164', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1165', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1166', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1167', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1168', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1169', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1170', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1171', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1172', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1173', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1174', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1175', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1176', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1177', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('1178', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1179', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1180', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('1181', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('1182', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('1183', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('1184', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1185', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('1186', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('1187', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1188', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1189', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('1190', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('1191', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('1192', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('1193', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1194', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('1195', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('1196', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1197', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('1198', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1199', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1200', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1201', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1202', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1203', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1204', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1205', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1206', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1207', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1208', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1209', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1210', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1211', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('1212', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1213', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1214', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('1215', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('1216', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('1217', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('1218', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1219', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('1220', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('1221', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1222', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1223', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('1224', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('1225', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('1226', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('1227', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1228', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('1229', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('1230', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1231', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('1232', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1233', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1234', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1235', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1236', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1237', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1238', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1239', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1240', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1241', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1242', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1243', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1244', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1245', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('1246', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1247', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1248', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('1249', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('1250', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('1251', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('1252', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1253', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('1254', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('1255', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1256', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1257', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('1258', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('1259', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('1260', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('1261', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1262', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('1263', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('1264', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1265', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('1266', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1267', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1268', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1269', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1270', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1271', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1272', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1273', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1274', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1275', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1276', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1277', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1278', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1279', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('1280', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1281', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1282', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('1283', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('1284', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('1285', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('1286', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1287', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('1288', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('1289', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1290', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1291', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('1292', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('1293', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('1294', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('1295', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1296', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('1297', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('1298', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1299', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('1300', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1301', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1302', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1303', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1304', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1305', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1306', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1307', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1308', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1309', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1310', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1311', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1312', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1313', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('1314', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1315', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1316', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('1317', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('1318', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('1319', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('1320', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1321', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('1322', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('1323', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1324', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1325', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('1326', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('1327', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('1328', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('1329', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1330', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('1331', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('1332', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1333', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('1334', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1335', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1336', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1337', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1338', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1339', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1340', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1341', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1342', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1343', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1344', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1345', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1346', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1347', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('1348', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1349', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1350', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('1351', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('1352', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('1353', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('1354', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1355', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('1356', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('1357', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1358', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1359', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('1360', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('1361', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('1362', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('1363', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1364', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('1365', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('1366', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1367', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('1368', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1369', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1370', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1371', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1372', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1373', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1374', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1375', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1376', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1377', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1378', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1379', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1380', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1381', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('1382', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1383', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1384', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('1385', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('1386', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('1387', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('1388', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1389', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('1390', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('1391', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1392', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1393', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('1394', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('1395', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('1396', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('1397', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1398', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('1399', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('1400', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1401', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('1402', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1403', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1404', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1405', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1406', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1407', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1408', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1409', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1410', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1411', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1412', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1413', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1414', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1415', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('1416', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1417', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1418', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('1419', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('1420', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('1421', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('1422', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1423', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('1424', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('1425', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1426', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1427', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('1428', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('1429', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('1430', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('1431', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1432', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('1433', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('1434', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1435', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('1436', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1437', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1438', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1439', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1440', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1441', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1442', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1443', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1444', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1445', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1446', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1447', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1448', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1449', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('1450', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1451', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1452', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('1453', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('1454', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('1455', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('1456', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1457', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('1458', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('1459', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1460', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1461', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('1462', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('1463', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('1464', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('1465', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1466', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('1467', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('1468', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1469', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('1470', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1471', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1472', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1473', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1474', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1475', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1476', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1477', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1478', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1479', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1480', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1481', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1482', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1483', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('1484', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1485', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1486', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('1487', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('1488', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('1489', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('1490', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1491', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('1492', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('1493', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1494', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1495', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('1496', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('1497', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('1498', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('1499', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1500', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('1501', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('1502', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1503', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('1504', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1505', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1506', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1507', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1508', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1509', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1510', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1511', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1512', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1513', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1514', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1515', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1516', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1517', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('1518', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1519', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1520', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('1521', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('1522', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('1523', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('1524', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1525', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('1526', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('1527', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1528', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1529', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('1530', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('1531', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('1532', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('1533', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1534', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('1535', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('1536', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1537', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('1538', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1539', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1540', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1541', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1542', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1543', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1544', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1545', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1546', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1547', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1548', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1549', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1550', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1551', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('1552', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1553', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1554', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('1555', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('1556', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('1557', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('1558', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1559', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('1560', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('1561', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1562', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1563', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('1564', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('1565', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('1566', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('1567', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1568', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('1569', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('1570', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1571', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('1572', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1573', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1574', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1575', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1576', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1577', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1578', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1579', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1580', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1581', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1582', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1583', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1584', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1585', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('1586', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1587', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1588', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('1589', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('1590', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('1591', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('1592', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1593', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('1594', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('1595', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1596', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1597', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('1598', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('1599', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('1600', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('1601', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1602', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('1603', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('1604', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1605', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('1606', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1607', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1608', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1609', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1610', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1611', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1612', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1613', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1614', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1615', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1616', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1617', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1618', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1619', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('1620', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1621', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1622', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('1623', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('1624', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('1625', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('1626', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1627', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('1628', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('1629', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1630', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1631', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('1632', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('1633', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('1634', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('1635', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1636', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('1637', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('1638', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1639', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('1640', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1641', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1642', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1643', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1644', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1645', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1646', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1647', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1648', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1649', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1650', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1651', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1652', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1653', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('1654', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1655', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1656', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('1657', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('1658', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('1659', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('1660', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1661', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('1662', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('1663', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1664', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1665', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('1666', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('1667', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('1668', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('1669', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1670', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('1671', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('1672', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1673', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('1674', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1675', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1676', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1677', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1678', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1679', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1680', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1681', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1682', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1683', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1684', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1685', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1686', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1687', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('1688', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1689', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1690', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('1691', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('1692', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('1693', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('1694', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1695', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('1696', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('1697', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1698', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1699', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('1700', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('1701', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('1702', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('1703', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1704', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('1705', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('1706', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1707', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('1708', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1709', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1710', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1711', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1712', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1713', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1714', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1715', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1716', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1717', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1718', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1719', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1720', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1721', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('1722', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1723', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1724', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('1725', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('1726', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('1727', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('1728', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1729', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('1730', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('1731', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1732', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1733', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('1734', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('1735', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('1736', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('1737', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1738', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('1739', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('1740', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1741', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('1742', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1743', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1744', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1745', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1746', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1747', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1748', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1749', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1750', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1751', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1752', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1753', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1754', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1755', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('1756', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1757', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1758', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('1759', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('1760', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('1761', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('1762', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1763', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('1764', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('1765', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1766', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1767', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('1768', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('1769', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('1770', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('1771', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1772', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('1773', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('1774', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1775', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('1776', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1777', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1778', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1779', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1780', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1781', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1782', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1783', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1784', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1785', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1786', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1787', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1788', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1789', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('1790', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1791', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1792', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('1793', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('1794', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('1795', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('1796', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1797', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('1798', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('1799', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1800', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1801', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('1802', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('1803', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('1804', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('1805', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1806', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('1807', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('1808', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1809', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('1810', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1811', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1812', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1813', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1814', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1815', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1816', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1817', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1818', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1819', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1820', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1821', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1822', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1823', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('1824', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1825', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1826', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('1827', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('1828', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('1829', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('1830', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1831', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('1832', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('1833', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1834', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1835', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('1836', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('1837', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('1838', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('1839', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1840', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('1841', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('1842', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1843', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('1844', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1845', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1846', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1847', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1848', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1849', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1850', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1851', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1852', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1853', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1854', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1855', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1856', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1857', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('1858', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1859', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1860', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('1861', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('1862', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('1863', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('1864', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1865', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('1866', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('1867', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1868', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1869', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('1870', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('1871', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('1872', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('1873', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1874', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('1875', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('1876', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1877', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('1878', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1879', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1880', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1881', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1882', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1883', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1884', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1885', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1886', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1887', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1888', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1889', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1890', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1891', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('1892', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1893', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1894', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('1895', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('1896', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('1897', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('1898', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1899', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('1900', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('1901', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1902', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1903', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('1904', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('1905', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('1906', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('1907', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1908', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('1909', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('1910', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1911', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('1912', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1913', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1914', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1915', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1916', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1917', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1918', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1919', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1920', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1921', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1922', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1923', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1924', '西藏', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1925', '台湾', '2326237', '2022-06-05 02:00:49');
INSERT INTO `nocv_data` VALUES ('1926', '香港', '260798', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1927', '湖北', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1928', '上海', '294', '2022-06-05 00:10:43');
INSERT INTO `nocv_data` VALUES ('1929', '吉林', '132', '2022-06-05 02:22:50');
INSERT INTO `nocv_data` VALUES ('1930', '广东', '35', '2022-06-05 02:50:56');
INSERT INTO `nocv_data` VALUES ('1931', '北京', '281', '2022-06-05 00:18:44');
INSERT INTO `nocv_data` VALUES ('1932', '福建', '67', '2022-06-05 01:54:51');
INSERT INTO `nocv_data` VALUES ('1933', '陕西', '1', '2022-06-05 03:20:53');
INSERT INTO `nocv_data` VALUES ('1934', '河南', '39', '2022-06-05 03:20:52');
INSERT INTO `nocv_data` VALUES ('1935', '浙江', '19', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1936', '黑龙江', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1937', '山东', '2', '2022-06-05 02:26:50');
INSERT INTO `nocv_data` VALUES ('1938', '四川', '109', '2022-06-05 01:14:45');
INSERT INTO `nocv_data` VALUES ('1939', '江苏', '7', '2022-06-05 01:37:52');
INSERT INTO `nocv_data` VALUES ('1940', '云南', '17', '2022-06-05 02:28:50');
INSERT INTO `nocv_data` VALUES ('1941', '河北', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1942', '天津', '136', '2022-06-05 02:28:49');
INSERT INTO `nocv_data` VALUES ('1943', '内蒙古', '25', '2022-06-05 01:26:46');
INSERT INTO `nocv_data` VALUES ('1944', '辽宁', '2', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1945', '广西', '13', '2022-06-05 00:48:45');
INSERT INTO `nocv_data` VALUES ('1946', '湖南', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1947', '江西', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1948', '安徽', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1949', '新疆', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1950', '重庆', '3', '2022-06-04 16:04:17');
INSERT INTO `nocv_data` VALUES ('1951', '甘肃', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1952', '山西', '1', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1953', '海南', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1954', '贵州', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1955', '青海', '0', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1956', '宁夏', '0', '2022-06-04 16:00:14');
INSERT INTO `nocv_data` VALUES ('1957', '澳门', '1', '2022-06-04 16:00:13');
INSERT INTO `nocv_data` VALUES ('1958', '西藏', '0', '2022-06-04 16:00:13');

-- ----------------------------
-- Table structure for nocv_global_data
-- ----------------------------
DROP TABLE IF EXISTS `nocv_global_data`;
CREATE TABLE `nocv_global_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nocv_global_data
-- ----------------------------
INSERT INTO `nocv_global_data` VALUES ('1', 'United States', '2055555');
INSERT INTO `nocv_global_data` VALUES ('2', 'China', '88888');
INSERT INTO `nocv_global_data` VALUES ('3', 'Brazil', '691750008');
INSERT INTO `nocv_global_data` VALUES ('4', 'Russia', '10000000');
INSERT INTO `nocv_global_data` VALUES ('5', 'United Kingdom', '5000000');
INSERT INTO `nocv_global_data` VALUES ('6', 'Spain', '653256');
INSERT INTO `nocv_global_data` VALUES ('7', 'France', '195686');
INSERT INTO `nocv_global_data` VALUES ('8', 'Germany', '1568956');
INSERT INTO `nocv_global_data` VALUES ('9', 'Canada', '1000000');
INSERT INTO `nocv_global_data` VALUES ('10', 'Australia', '2000000');
INSERT INTO `nocv_global_data` VALUES ('11', 'Japan', '8000000');
INSERT INTO `nocv_global_data` VALUES ('12', 'Sudan', '9000000');

-- ----------------------------
-- Table structure for nocv_news
-- ----------------------------
DROP TABLE IF EXISTS `nocv_news`;
CREATE TABLE `nocv_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `publishby` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nocv_news
-- ----------------------------
INSERT INTO `nocv_news` VALUES ('1', '辟谣：词条新闻为川建国造假', '和消毒液可以防止新冠病毒', '2022-06-09 08:25:53', 'xxx卫健委');
INSERT INTO `nocv_news` VALUES ('2', '某省份新闻', '新冠病毒在逐渐减少，人们欢呼', '2022-06-09 08:54:59', 'xxx省份卫健委');
INSERT INTO `nocv_news` VALUES ('3', '耨耨省份清零', '撒娇坎大哈数据库的哈尖括号大家肯', null, 'xxxx官网');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '管理员', '拥有所有的权限');
INSERT INTO `role` VALUES ('2', '教师', '拥有增删改查');
INSERT INTO `role` VALUES ('3', '学生', '拥有查询');
INSERT INTO `role` VALUES ('5', '学院院长', '拥有所有菜单栏的增删改查');

-- ----------------------------
-- Table structure for role_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu` (
  `rid` int(11) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES ('1', '1');
INSERT INTO `role_menu` VALUES ('1', '2');
INSERT INTO `role_menu` VALUES ('1', '3');
INSERT INTO `role_menu` VALUES ('1', '4');
INSERT INTO `role_menu` VALUES ('1', '5');
INSERT INTO `role_menu` VALUES ('1', '6');
INSERT INTO `role_menu` VALUES ('1', '7');
INSERT INTO `role_menu` VALUES ('1', '8');
INSERT INTO `role_menu` VALUES ('1', '20');
INSERT INTO `role_menu` VALUES ('1', '9');
INSERT INTO `role_menu` VALUES ('1', '10');
INSERT INTO `role_menu` VALUES ('1', '11');
INSERT INTO `role_menu` VALUES ('1', '12');
INSERT INTO `role_menu` VALUES ('1', '14');
INSERT INTO `role_menu` VALUES ('1', '18');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `card` varchar(255) DEFAULT '',
  `ban_ji_id` int(11) DEFAULT NULL,
  `xue_yuan_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ban_ji_id` (`ban_ji_id`),
  KEY `xue_yuan_id` (`xue_yuan_id`),
  CONSTRAINT `user_ibfk_2` FOREIGN KEY (`ban_ji_id`) REFERENCES `ban_ji` (`id`),
  CONSTRAINT `user_ibfk_3` FOREIGN KEY (`xue_yuan_id`) REFERENCES `xue_yuan` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123456', '1', '25', '北京市', '/images/login.jpg', '18333603846', '1313134131', '1', '1', '1', null);
INSERT INTO `user` VALUES ('2', '王同学', '123456', '1', '99', '河北省保定市莲池区韩庄乡华电路689号华北电力大学二校区', null, '', '1313131313131', '1', '1', null, null);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `uid` int(11) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1');
INSERT INTO `user_role` VALUES ('1', '2');
INSERT INTO `user_role` VALUES ('1', '5');

-- ----------------------------
-- Table structure for vaccine
-- ----------------------------
DROP TABLE IF EXISTS `vaccine`;
CREATE TABLE `vaccine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `card` varchar(255) DEFAULT NULL,
  `zhenci` varchar(255) DEFAULT NULL,
  `pici` varchar(255) DEFAULT NULL,
  `changjia` varchar(255) DEFAULT NULL,
  `danwei` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vaccine
-- ----------------------------
INSERT INTO `vaccine` VALUES ('1', '周瑜打嘟嘟', '66', '18333603843', '131313131', '三针', 'HBAHSDGH1212', '北京生物', '某某剖医院', '2022-06-02 16:00:00');
INSERT INTO `vaccine` VALUES ('2', '王一宁', '25', '18333603843', '131202264515545', '三针', '第二批次', '北京生物', '华北电力大学', '2022-06-10 16:00:00');

-- ----------------------------
-- Table structure for xue_yuan
-- ----------------------------
DROP TABLE IF EXISTS `xue_yuan`;
CREATE TABLE `xue_yuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xue_yuan
-- ----------------------------
INSERT INTO `xue_yuan` VALUES ('1', '计算机系');
INSERT INTO `xue_yuan` VALUES ('2', '计算机2系');
INSERT INTO `xue_yuan` VALUES ('3', '软件工程系');

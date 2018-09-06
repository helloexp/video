/*
Navicat MySQL Data Transfer

Source Server         : video
Source Server Version : 50639
Source Host           : 166.62.28.144:3306
Source Database       : 1se0x

Target Server Type    : MYSQL
Target Server Version : 50639
File Encoding         : 65001

Date: 2018-09-04 18:03:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for vd_admin
-- ----------------------------
DROP TABLE IF EXISTS `vd_admin`;
CREATE TABLE `vd_admin` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL COMMENT '管理员账号',
  `password` varchar(32) NOT NULL COMMENT '管理员密码',
  `login_ip` varchar(32) DEFAULT NULL COMMENT '登录ip',
  `login_count` int(8) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `create_time` int(32) unsigned DEFAULT NULL COMMENT '账号创建时间',
  `update_time` int(32) DEFAULT NULL COMMENT '更新时间',
  `deleted_time` int(32) DEFAULT NULL COMMENT '账号删除时间',
  PRIMARY KEY (`id`,`username`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='后台管理';

-- ----------------------------
-- Records of vd_admin
-- ----------------------------
INSERT INTO `vd_admin` VALUES ('2', 'user_1se0x', '68be2bae8c7710482a5d2f1aa1fc5cbe', '49.156.2.67', '0', '1535598221', '1535688907', null);
INSERT INTO `vd_admin` VALUES ('3', 'user_1se0x_1', '68be2bae8c7710482a5d2f1aa1fc5cbe', '49.156.2.67', '0', '1535598221', null, null);

-- ----------------------------
-- Table structure for vd_slider
-- ----------------------------
DROP TABLE IF EXISTS `vd_slider`;
CREATE TABLE `vd_slider` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  `sort` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '排序',
  `jump` varchar(255) DEFAULT NULL COMMENT '跳转地址',
  `create_time` int(32) DEFAULT NULL,
  `deleted_time` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='轮播图管理';

-- ----------------------------
-- Records of vd_slider
-- ----------------------------
INSERT INTO `vd_slider` VALUES ('15', '/uploads/images/20180901/a96c8d471fbaa4d9b30cf56f1c1f6c4c.jpg', '1', 'http://1se01.com/play?playid=20', '1535857907', null);
INSERT INTO `vd_slider` VALUES ('16', '/uploads/images/20180901/487d4c3e8b8f73f4c70cbeefd200853e.jpg', '2', 'http://1se01.com/play?playid=19', '1535857974', null);

-- ----------------------------
-- Table structure for vd_statistics
-- ----------------------------
DROP TABLE IF EXISTS `vd_statistics`;
CREATE TABLE `vd_statistics` (
  `id` int(16) unsigned NOT NULL AUTO_INCREMENT,
  `browse_ip` varchar(64) DEFAULT NULL COMMENT '浏览人ip',
  `stop_time` int(32) DEFAULT NULL COMMENT '停留网站时间',
  `create_time` int(32) DEFAULT NULL,
  `deleted_time` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=567 DEFAULT CHARSET=utf8 COMMENT='数据统计表';

-- ----------------------------
-- Records of vd_statistics
-- ----------------------------
INSERT INTO `vd_statistics` VALUES ('120', '49.156.2.67', null, '1535703528', null);
INSERT INTO `vd_statistics` VALUES ('121', '49.156.2.67', null, '1535703532', null);
INSERT INTO `vd_statistics` VALUES ('122', '49.156.2.67', null, '1535703543', null);
INSERT INTO `vd_statistics` VALUES ('123', '49.156.2.67', null, '1535703553', null);
INSERT INTO `vd_statistics` VALUES ('124', '49.156.2.67', null, '1535703574', null);
INSERT INTO `vd_statistics` VALUES ('125', '49.156.2.67', null, '1535703580', null);
INSERT INTO `vd_statistics` VALUES ('126', '49.156.2.67', null, '1535703609', null);
INSERT INTO `vd_statistics` VALUES ('127', '49.156.2.67', null, '1535704098', null);
INSERT INTO `vd_statistics` VALUES ('128', '49.156.2.67', null, '1535704104', null);
INSERT INTO `vd_statistics` VALUES ('129', '49.156.2.67', null, '1535704112', null);
INSERT INTO `vd_statistics` VALUES ('130', '49.156.2.67', null, '1535704198', null);
INSERT INTO `vd_statistics` VALUES ('131', '49.156.2.67', null, '1535704247', null);
INSERT INTO `vd_statistics` VALUES ('132', '49.156.2.67', null, '1535704351', null);
INSERT INTO `vd_statistics` VALUES ('133', '49.156.2.67', null, '1535704405', null);
INSERT INTO `vd_statistics` VALUES ('134', '49.156.2.67', null, '1535704542', null);
INSERT INTO `vd_statistics` VALUES ('135', '49.156.2.67', null, '1535704559', null);
INSERT INTO `vd_statistics` VALUES ('136', '49.156.2.67', null, '1535704573', null);
INSERT INTO `vd_statistics` VALUES ('137', '123.151.77.49', null, '1535704624', null);
INSERT INTO `vd_statistics` VALUES ('138', '123.151.77.49', null, '1535704735', null);
INSERT INTO `vd_statistics` VALUES ('139', '49.156.2.67', null, '1535704751', null);
INSERT INTO `vd_statistics` VALUES ('140', '49.156.2.67', null, '1535705291', null);
INSERT INTO `vd_statistics` VALUES ('141', '123.151.77.49', null, '1535705331', null);
INSERT INTO `vd_statistics` VALUES ('142', '49.156.2.67', null, '1535705580', null);
INSERT INTO `vd_statistics` VALUES ('143', '49.156.2.67', null, '1535706379', null);
INSERT INTO `vd_statistics` VALUES ('144', '123.151.77.49', null, '1535706408', null);
INSERT INTO `vd_statistics` VALUES ('145', '117.20.118.212', null, '1535706751', null);
INSERT INTO `vd_statistics` VALUES ('146', '49.156.2.67', null, '1535706891', null);
INSERT INTO `vd_statistics` VALUES ('147', '49.156.2.67', null, '1535707111', null);
INSERT INTO `vd_statistics` VALUES ('148', '117.20.115.26', null, '1535707481', null);
INSERT INTO `vd_statistics` VALUES ('149', '117.20.115.26', null, '1535707854', null);
INSERT INTO `vd_statistics` VALUES ('150', '117.20.115.26', null, '1535707904', null);
INSERT INTO `vd_statistics` VALUES ('151', '123.151.77.49', null, '1535708079', null);
INSERT INTO `vd_statistics` VALUES ('152', '49.156.2.67', null, '1535708137', null);
INSERT INTO `vd_statistics` VALUES ('153', '49.156.2.67', null, '1535708148', null);
INSERT INTO `vd_statistics` VALUES ('154', '117.20.115.219', null, '1535708320', null);
INSERT INTO `vd_statistics` VALUES ('155', '49.156.2.67', null, '1535713833', null);
INSERT INTO `vd_statistics` VALUES ('156', '49.156.2.67', null, '1535717356', null);
INSERT INTO `vd_statistics` VALUES ('157', '49.156.2.67', null, '1535718188', null);
INSERT INTO `vd_statistics` VALUES ('158', '49.156.2.67', null, '1535718299', null);
INSERT INTO `vd_statistics` VALUES ('159', '49.156.2.67', null, '1535718493', null);
INSERT INTO `vd_statistics` VALUES ('160', '49.156.2.67', null, '1535718619', null);
INSERT INTO `vd_statistics` VALUES ('161', '49.156.2.67', null, '1535718700', null);
INSERT INTO `vd_statistics` VALUES ('162', '49.156.2.67', null, '1535719110', null);
INSERT INTO `vd_statistics` VALUES ('163', '49.156.2.67', null, '1535719589', null);
INSERT INTO `vd_statistics` VALUES ('164', '49.156.2.67', null, '1535719993', null);
INSERT INTO `vd_statistics` VALUES ('165', '49.156.2.67', null, '1535720006', null);
INSERT INTO `vd_statistics` VALUES ('166', '49.156.2.67', null, '1535720022', null);
INSERT INTO `vd_statistics` VALUES ('167', '49.156.2.67', null, '1535720047', null);
INSERT INTO `vd_statistics` VALUES ('168', '49.156.2.67', null, '1535720054', null);
INSERT INTO `vd_statistics` VALUES ('169', '49.156.2.67', null, '1535720155', null);
INSERT INTO `vd_statistics` VALUES ('170', '49.156.2.67', null, '1535720800', null);
INSERT INTO `vd_statistics` VALUES ('171', '49.156.2.67', null, '1535721319', null);
INSERT INTO `vd_statistics` VALUES ('172', '49.156.2.67', null, '1535721346', null);
INSERT INTO `vd_statistics` VALUES ('173', '49.156.2.67', null, '1535721377', null);
INSERT INTO `vd_statistics` VALUES ('174', '49.156.2.67', null, '1535722864', null);
INSERT INTO `vd_statistics` VALUES ('175', '123.151.77.49', null, '1535722911', null);
INSERT INTO `vd_statistics` VALUES ('176', '49.156.2.67', null, '1535723291', null);
INSERT INTO `vd_statistics` VALUES ('177', '117.20.115.219', null, '1535723293', null);
INSERT INTO `vd_statistics` VALUES ('178', '49.156.2.67', null, '1535723324', null);
INSERT INTO `vd_statistics` VALUES ('179', '117.20.115.219', null, '1535723364', null);
INSERT INTO `vd_statistics` VALUES ('180', '117.20.115.219', null, '1535723426', null);
INSERT INTO `vd_statistics` VALUES ('181', '49.156.2.67', null, '1535724346', null);
INSERT INTO `vd_statistics` VALUES ('182', '117.20.118.212', null, '1535731825', null);
INSERT INTO `vd_statistics` VALUES ('183', '117.20.118.212', null, '1535731985', null);
INSERT INTO `vd_statistics` VALUES ('184', '123.151.77.49', null, '1535732130', null);
INSERT INTO `vd_statistics` VALUES ('185', '111.231.218.16', null, '1535746063', null);
INSERT INTO `vd_statistics` VALUES ('186', '49.156.2.67', null, '1535773125', null);
INSERT INTO `vd_statistics` VALUES ('187', '49.156.2.67', null, '1535773223', null);
INSERT INTO `vd_statistics` VALUES ('188', '49.156.2.67', null, '1535773237', null);
INSERT INTO `vd_statistics` VALUES ('189', '49.156.2.67', null, '1535773241', null);
INSERT INTO `vd_statistics` VALUES ('190', '49.156.2.67', null, '1535774583', null);
INSERT INTO `vd_statistics` VALUES ('191', '49.156.2.67', null, '1535774986', null);
INSERT INTO `vd_statistics` VALUES ('192', '49.156.2.67', null, '1535777862', null);
INSERT INTO `vd_statistics` VALUES ('193', '49.156.2.67', null, '1535782377', null);
INSERT INTO `vd_statistics` VALUES ('194', '49.156.2.67', null, '1535786978', null);
INSERT INTO `vd_statistics` VALUES ('195', '49.156.2.67', null, '1535787026', null);
INSERT INTO `vd_statistics` VALUES ('196', '49.156.2.67', null, '1535790475', null);
INSERT INTO `vd_statistics` VALUES ('197', '49.156.2.67', null, '1535791565', null);
INSERT INTO `vd_statistics` VALUES ('198', '49.156.2.67', null, '1535791675', null);
INSERT INTO `vd_statistics` VALUES ('199', '64.233.173.40', null, '1535791830', null);
INSERT INTO `vd_statistics` VALUES ('200', '49.156.2.67', null, '1535792486', null);
INSERT INTO `vd_statistics` VALUES ('201', '64.233.173.44', null, '1535794045', null);
INSERT INTO `vd_statistics` VALUES ('202', '49.156.2.67', null, '1535794282', null);
INSERT INTO `vd_statistics` VALUES ('203', '49.156.2.67', null, '1535799696', null);
INSERT INTO `vd_statistics` VALUES ('204', '49.156.2.67', null, '1535799712', null);
INSERT INTO `vd_statistics` VALUES ('205', '49.156.2.67', null, '1535799895', null);
INSERT INTO `vd_statistics` VALUES ('206', '49.156.2.67', null, '1535800181', null);
INSERT INTO `vd_statistics` VALUES ('207', '49.156.2.67', null, '1535800465', null);
INSERT INTO `vd_statistics` VALUES ('208', '49.156.2.67', null, '1535800554', null);
INSERT INTO `vd_statistics` VALUES ('209', '49.156.2.67', null, '1535801186', null);
INSERT INTO `vd_statistics` VALUES ('210', '49.156.2.67', null, '1535801526', null);
INSERT INTO `vd_statistics` VALUES ('211', '49.156.2.67', null, '1535801757', null);
INSERT INTO `vd_statistics` VALUES ('212', '49.156.2.67', null, '1535801774', null);
INSERT INTO `vd_statistics` VALUES ('213', '49.156.2.67', null, '1535803026', null);
INSERT INTO `vd_statistics` VALUES ('214', '49.156.2.67', null, '1535803035', null);
INSERT INTO `vd_statistics` VALUES ('215', '49.156.2.67', null, '1535803064', null);
INSERT INTO `vd_statistics` VALUES ('216', '49.156.2.67', null, '1535803075', null);
INSERT INTO `vd_statistics` VALUES ('217', '49.156.2.67', null, '1535803161', null);
INSERT INTO `vd_statistics` VALUES ('218', '49.156.2.67', null, '1535803589', null);
INSERT INTO `vd_statistics` VALUES ('219', '49.156.2.67', null, '1535804288', null);
INSERT INTO `vd_statistics` VALUES ('220', '49.156.2.67', null, '1535804545', null);
INSERT INTO `vd_statistics` VALUES ('221', '49.156.2.67', null, '1535805285', null);
INSERT INTO `vd_statistics` VALUES ('222', '49.156.2.67', null, '1535810391', null);
INSERT INTO `vd_statistics` VALUES ('223', '49.156.2.67', null, '1535811279', null);
INSERT INTO `vd_statistics` VALUES ('224', '49.156.2.67', null, '1535811375', null);
INSERT INTO `vd_statistics` VALUES ('225', '49.156.2.67', null, '1535811387', null);
INSERT INTO `vd_statistics` VALUES ('226', '49.156.2.67', null, '1535811422', null);
INSERT INTO `vd_statistics` VALUES ('227', '49.156.2.67', null, '1535811543', null);
INSERT INTO `vd_statistics` VALUES ('228', '49.156.2.67', null, '1535811956', null);
INSERT INTO `vd_statistics` VALUES ('229', '49.156.2.67', null, '1535813424', null);
INSERT INTO `vd_statistics` VALUES ('230', '49.156.2.67', null, '1535813439', null);
INSERT INTO `vd_statistics` VALUES ('231', '49.156.2.67', null, '1535813504', null);
INSERT INTO `vd_statistics` VALUES ('232', '49.156.2.67', null, '1535813566', null);
INSERT INTO `vd_statistics` VALUES ('233', '49.156.2.67', null, '1535813706', null);
INSERT INTO `vd_statistics` VALUES ('234', '49.156.2.67', null, '1535813792', null);
INSERT INTO `vd_statistics` VALUES ('235', '49.156.2.67', null, '1535814081', null);
INSERT INTO `vd_statistics` VALUES ('236', '27.109.114.251', null, '1535814696', null);
INSERT INTO `vd_statistics` VALUES ('237', '66.249.82.170', null, '1535816484', null);
INSERT INTO `vd_statistics` VALUES ('238', '27.109.114.26', null, '1535824038', null);
INSERT INTO `vd_statistics` VALUES ('239', '66.249.82.168', null, '1535828118', null);
INSERT INTO `vd_statistics` VALUES ('240', '49.156.2.67', null, '1535857181', null);
INSERT INTO `vd_statistics` VALUES ('241', '49.156.2.67', null, '1535858029', null);
INSERT INTO `vd_statistics` VALUES ('242', '49.156.2.67', null, '1535858034', null);
INSERT INTO `vd_statistics` VALUES ('243', '49.156.2.67', null, '1535858086', null);
INSERT INTO `vd_statistics` VALUES ('244', '49.156.2.67', null, '1535858115', null);
INSERT INTO `vd_statistics` VALUES ('245', '49.156.2.67', null, '1535858142', null);
INSERT INTO `vd_statistics` VALUES ('246', '49.156.2.67', null, '1535858852', null);
INSERT INTO `vd_statistics` VALUES ('247', '49.156.2.67', null, '1535858886', null);
INSERT INTO `vd_statistics` VALUES ('248', '49.156.2.67', null, '1535858938', null);
INSERT INTO `vd_statistics` VALUES ('249', '49.156.2.67', null, '1535861362', null);
INSERT INTO `vd_statistics` VALUES ('250', '49.156.2.67', null, '1535861956', null);
INSERT INTO `vd_statistics` VALUES ('251', '49.156.2.76', null, '1535861994', null);
INSERT INTO `vd_statistics` VALUES ('252', '49.156.2.76', null, '1535862062', null);
INSERT INTO `vd_statistics` VALUES ('253', '49.156.2.67', null, '1535862133', null);
INSERT INTO `vd_statistics` VALUES ('254', '49.156.2.67', null, '1535862148', null);
INSERT INTO `vd_statistics` VALUES ('255', '117.20.116.102', null, '1535862164', null);
INSERT INTO `vd_statistics` VALUES ('256', '27.109.114.138', null, '1535862182', null);
INSERT INTO `vd_statistics` VALUES ('257', '49.156.2.67', null, '1535865958', null);
INSERT INTO `vd_statistics` VALUES ('258', '49.156.2.67', null, '1535865979', null);
INSERT INTO `vd_statistics` VALUES ('259', '138.68.29.214', null, '1535868155', null);
INSERT INTO `vd_statistics` VALUES ('260', '49.156.2.67', null, '1535869086', null);
INSERT INTO `vd_statistics` VALUES ('261', '49.156.2.67', null, '1535871922', null);
INSERT INTO `vd_statistics` VALUES ('262', '49.156.2.67', null, '1535872259', null);
INSERT INTO `vd_statistics` VALUES ('263', '106.2.232.28', null, '1535872329', null);
INSERT INTO `vd_statistics` VALUES ('264', '49.156.2.67', null, '1535872489', null);
INSERT INTO `vd_statistics` VALUES ('265', '49.156.2.67', null, '1535872528', null);
INSERT INTO `vd_statistics` VALUES ('266', '106.2.232.28', null, '1535873115', null);
INSERT INTO `vd_statistics` VALUES ('267', '49.156.2.67', null, '1535873743', null);
INSERT INTO `vd_statistics` VALUES ('268', '118.213.101.119', null, '1535873892', null);
INSERT INTO `vd_statistics` VALUES ('269', '58.100.92.215', null, '1535875093', null);
INSERT INTO `vd_statistics` VALUES ('270', '117.152.246.82', null, '1535875181', null);
INSERT INTO `vd_statistics` VALUES ('271', '117.172.54.140', null, '1535875206', null);
INSERT INTO `vd_statistics` VALUES ('272', '58.100.92.215', null, '1535875222', null);
INSERT INTO `vd_statistics` VALUES ('273', '117.152.246.82', null, '1535875308', null);
INSERT INTO `vd_statistics` VALUES ('274', '117.172.54.140', null, '1535875335', null);
INSERT INTO `vd_statistics` VALUES ('275', '117.152.246.82', null, '1535875372', null);
INSERT INTO `vd_statistics` VALUES ('276', '180.97.35.218', null, '1535875396', null);
INSERT INTO `vd_statistics` VALUES ('277', '61.129.6.225', null, '1535875418', null);
INSERT INTO `vd_statistics` VALUES ('278', '101.89.29.94', null, '1535875424', null);
INSERT INTO `vd_statistics` VALUES ('279', '117.152.246.82', null, '1535875453', null);
INSERT INTO `vd_statistics` VALUES ('280', '101.91.60.104', null, '1535875480', null);
INSERT INTO `vd_statistics` VALUES ('281', '61.151.178.166', null, '1535875486', null);
INSERT INTO `vd_statistics` VALUES ('282', '58.100.92.215', null, '1535875516', null);
INSERT INTO `vd_statistics` VALUES ('283', '58.100.92.215', null, '1535875529', null);
INSERT INTO `vd_statistics` VALUES ('284', '58.100.92.215', null, '1535875548', null);
INSERT INTO `vd_statistics` VALUES ('285', '58.100.92.215', null, '1535875569', null);
INSERT INTO `vd_statistics` VALUES ('286', '117.152.246.82', null, '1535875760', null);
INSERT INTO `vd_statistics` VALUES ('287', '110.18.247.161', null, '1535876188', null);
INSERT INTO `vd_statistics` VALUES ('288', '49.156.2.67', null, '1535876234', null);
INSERT INTO `vd_statistics` VALUES ('289', '49.156.2.67', null, '1535876252', null);
INSERT INTO `vd_statistics` VALUES ('290', '49.156.2.67', null, '1535876262', null);
INSERT INTO `vd_statistics` VALUES ('291', '66.220.149.24', null, '1535877423', null);
INSERT INTO `vd_statistics` VALUES ('292', '101.199.110.109', null, '1535877661', null);
INSERT INTO `vd_statistics` VALUES ('293', '180.163.220.61', null, '1535877690', null);
INSERT INTO `vd_statistics` VALUES ('294', '110.18.247.161', null, '1535878034', null);
INSERT INTO `vd_statistics` VALUES ('295', '49.156.2.67', null, '1535881600', null);
INSERT INTO `vd_statistics` VALUES ('296', '70.42.131.170', null, '1535882045', null);
INSERT INTO `vd_statistics` VALUES ('297', '49.156.2.67', null, '1535882102', null);
INSERT INTO `vd_statistics` VALUES ('298', '49.156.2.67', null, '1535882774', null);
INSERT INTO `vd_statistics` VALUES ('299', '180.163.220.66', null, '1535883152', null);
INSERT INTO `vd_statistics` VALUES ('300', '180.163.220.100', null, '1535883187', null);
INSERT INTO `vd_statistics` VALUES ('301', '64.74.215.1', null, '1535883672', null);
INSERT INTO `vd_statistics` VALUES ('302', '123.151.77.49', null, '1535884185', null);
INSERT INTO `vd_statistics` VALUES ('303', '49.156.2.67', null, '1535884231', null);
INSERT INTO `vd_statistics` VALUES ('304', '148.251.45.254', null, '1535886491', null);
INSERT INTO `vd_statistics` VALUES ('305', '91.103.66.202', null, '1535886529', null);
INSERT INTO `vd_statistics` VALUES ('306', '8.28.16.254', null, '1535886530', null);
INSERT INTO `vd_statistics` VALUES ('307', '91.103.66.202', null, '1535886530', null);
INSERT INTO `vd_statistics` VALUES ('308', '87.112.175.7', null, '1535886743', null);
INSERT INTO `vd_statistics` VALUES ('309', '49.156.2.67', null, '1535886864', null);
INSERT INTO `vd_statistics` VALUES ('310', '121.227.129.17', null, '1535888054', null);
INSERT INTO `vd_statistics` VALUES ('311', '121.227.129.17', null, '1535888415', null);
INSERT INTO `vd_statistics` VALUES ('312', '121.227.129.17', null, '1535888825', null);
INSERT INTO `vd_statistics` VALUES ('313', '49.156.2.67', null, '1535889395', null);
INSERT INTO `vd_statistics` VALUES ('314', '101.199.121.77', null, '1535889593', null);
INSERT INTO `vd_statistics` VALUES ('315', '42.236.10.106', null, '1535889603', null);
INSERT INTO `vd_statistics` VALUES ('316', '180.163.220.99', null, '1535889623', null);
INSERT INTO `vd_statistics` VALUES ('317', '101.199.110.108', null, '1535890011', null);
INSERT INTO `vd_statistics` VALUES ('318', '49.156.2.67', null, '1535890157', null);
INSERT INTO `vd_statistics` VALUES ('319', '49.156.2.67', null, '1535890180', null);
INSERT INTO `vd_statistics` VALUES ('320', '49.156.2.67', null, '1535890642', null);
INSERT INTO `vd_statistics` VALUES ('321', '49.156.2.67', null, '1535890680', null);
INSERT INTO `vd_statistics` VALUES ('322', '101.199.108.120', null, '1535890760', null);
INSERT INTO `vd_statistics` VALUES ('323', '49.156.2.67', null, '1535891612', null);
INSERT INTO `vd_statistics` VALUES ('324', '203.144.88.58', null, '1535892258', null);
INSERT INTO `vd_statistics` VALUES ('325', '49.156.2.67', null, '1535893342', null);
INSERT INTO `vd_statistics` VALUES ('326', '103.112.241.103', null, '1535893787', null);
INSERT INTO `vd_statistics` VALUES ('327', '101.89.239.232', null, '1535893847', null);
INSERT INTO `vd_statistics` VALUES ('328', '49.156.2.67', null, '1535893967', null);
INSERT INTO `vd_statistics` VALUES ('329', '49.156.2.67', null, '1535897654', null);
INSERT INTO `vd_statistics` VALUES ('330', '148.251.45.254', null, '1535897914', null);
INSERT INTO `vd_statistics` VALUES ('331', '42.236.10.124', null, '1535898064', null);
INSERT INTO `vd_statistics` VALUES ('332', '161.202.75.37', null, '1535899420', null);
INSERT INTO `vd_statistics` VALUES ('333', '202.131.82.67', null, '1535901833', null);
INSERT INTO `vd_statistics` VALUES ('334', '202.131.82.67', null, '1535902272', null);
INSERT INTO `vd_statistics` VALUES ('335', '66.249.82.170', null, '1535902545', null);
INSERT INTO `vd_statistics` VALUES ('336', '111.30.142.233', null, '1535905463', null);
INSERT INTO `vd_statistics` VALUES ('337', '123.151.77.71', null, '1535907002', null);
INSERT INTO `vd_statistics` VALUES ('338', '123.151.77.71', null, '1535907090', null);
INSERT INTO `vd_statistics` VALUES ('339', '103.115.254.189', null, '1535907811', null);
INSERT INTO `vd_statistics` VALUES ('340', '123.151.77.71', null, '1535907874', null);
INSERT INTO `vd_statistics` VALUES ('341', '115.231.230.227', null, '1535909631', null);
INSERT INTO `vd_statistics` VALUES ('342', '49.7.6.151', null, '1535910321', null);
INSERT INTO `vd_statistics` VALUES ('343', '66.249.82.170', null, '1535910337', null);
INSERT INTO `vd_statistics` VALUES ('344', '66.249.82.168', null, '1535910605', null);
INSERT INTO `vd_statistics` VALUES ('345', '37.124.129.80', null, '1535916009', null);
INSERT INTO `vd_statistics` VALUES ('346', '117.20.117.54', null, '1535916035', null);
INSERT INTO `vd_statistics` VALUES ('347', '37.124.129.80', null, '1535916222', null);
INSERT INTO `vd_statistics` VALUES ('348', '37.228.224.208', null, '1535918829', null);
INSERT INTO `vd_statistics` VALUES ('349', '108.35.194.95', null, '1535919998', null);
INSERT INTO `vd_statistics` VALUES ('350', '108.35.194.95', null, '1535920003', null);
INSERT INTO `vd_statistics` VALUES ('351', '37.228.224.208', null, '1535922056', null);
INSERT INTO `vd_statistics` VALUES ('352', '179.159.57.180', null, '1535927912', null);
INSERT INTO `vd_statistics` VALUES ('353', '47.89.15.119', null, '1535928224', null);
INSERT INTO `vd_statistics` VALUES ('354', '106.9.93.120', null, '1535933874', null);
INSERT INTO `vd_statistics` VALUES ('355', '51.38.83.177', null, '1535935319', null);
INSERT INTO `vd_statistics` VALUES ('356', '110.18.247.161', null, '1535936474', null);
INSERT INTO `vd_statistics` VALUES ('357', '110.18.247.161', null, '1535936552', null);
INSERT INTO `vd_statistics` VALUES ('358', '110.18.247.161', null, '1535936902', null);
INSERT INTO `vd_statistics` VALUES ('359', '110.18.247.161', null, '1535936953', null);
INSERT INTO `vd_statistics` VALUES ('360', '110.18.247.161', null, '1535936994', null);
INSERT INTO `vd_statistics` VALUES ('361', '220.195.64.174', null, '1535937146', null);
INSERT INTO `vd_statistics` VALUES ('362', '103.49.156.120', null, '1535938036', null);
INSERT INTO `vd_statistics` VALUES ('363', '60.249.15.106', null, '1535938316', null);
INSERT INTO `vd_statistics` VALUES ('364', '103.49.156.120', null, '1535938485', null);
INSERT INTO `vd_statistics` VALUES ('365', '66.133.76.70', null, '1535939867', null);
INSERT INTO `vd_statistics` VALUES ('366', '51.38.83.177', null, '1535940646', null);
INSERT INTO `vd_statistics` VALUES ('367', '119.28.51.25', null, '1535941768', null);
INSERT INTO `vd_statistics` VALUES ('368', '65.49.68.158', null, '1535942264', null);
INSERT INTO `vd_statistics` VALUES ('369', '27.17.16.18', null, '1535942309', null);
INSERT INTO `vd_statistics` VALUES ('370', '49.156.2.67', null, '1535943740', null);
INSERT INTO `vd_statistics` VALUES ('371', '106.9.93.120', null, '1535948355', null);
INSERT INTO `vd_statistics` VALUES ('372', '10.37.96.244', null, '1535954834', null);
INSERT INTO `vd_statistics` VALUES ('373', '10.32.61.200', null, '1535954881', null);
INSERT INTO `vd_statistics` VALUES ('374', '10.37.109.144', null, '1535955018', null);
INSERT INTO `vd_statistics` VALUES ('375', '10.32.41.17', null, '1535955032', null);
INSERT INTO `vd_statistics` VALUES ('376', '10.37.109.144', null, '1535955040', null);
INSERT INTO `vd_statistics` VALUES ('377', '10.36.157.164', null, '1535955092', null);
INSERT INTO `vd_statistics` VALUES ('378', '10.32.42.40', null, '1535955110', null);
INSERT INTO `vd_statistics` VALUES ('379', '10.37.89.215', null, '1535955114', null);
INSERT INTO `vd_statistics` VALUES ('380', '10.32.61.200', null, '1535955118', null);
INSERT INTO `vd_statistics` VALUES ('381', '37.124.129.80', null, '1535956262', null);
INSERT INTO `vd_statistics` VALUES ('382', '64.233.173.42', null, '1535956329', null);
INSERT INTO `vd_statistics` VALUES ('383', '106.79.232.210', null, '1535956765', null);
INSERT INTO `vd_statistics` VALUES ('384', '37.39.161.190', null, '1535956803', null);
INSERT INTO `vd_statistics` VALUES ('385', '162.243.69.215', null, '1535956804', null);
INSERT INTO `vd_statistics` VALUES ('386', '49.156.2.67', null, '1535957129', null);
INSERT INTO `vd_statistics` VALUES ('387', '179.217.174.197', null, '1535957203', null);
INSERT INTO `vd_statistics` VALUES ('388', '64.233.173.42', null, '1535957262', null);
INSERT INTO `vd_statistics` VALUES ('389', '42.109.128.226', null, '1535957281', null);
INSERT INTO `vd_statistics` VALUES ('390', '117.20.115.246', null, '1535957356', null);
INSERT INTO `vd_statistics` VALUES ('391', '27.97.44.26', null, '1535957877', null);
INSERT INTO `vd_statistics` VALUES ('392', '49.156.2.67', null, '1535957976', null);
INSERT INTO `vd_statistics` VALUES ('393', '194.230.155.149', null, '1535958486', null);
INSERT INTO `vd_statistics` VALUES ('394', '180.248.145.211', null, '1535958540', null);
INSERT INTO `vd_statistics` VALUES ('395', '180.248.145.211', null, '1535958550', null);
INSERT INTO `vd_statistics` VALUES ('396', '178.244.68.215', null, '1535958725', null);
INSERT INTO `vd_statistics` VALUES ('397', '103.242.23.191', null, '1535958783', null);
INSERT INTO `vd_statistics` VALUES ('398', '201.175.134.7', null, '1535958998', null);
INSERT INTO `vd_statistics` VALUES ('399', '176.17.58.3', null, '1535959458', null);
INSERT INTO `vd_statistics` VALUES ('400', '37.237.65.16', null, '1535960063', null);
INSERT INTO `vd_statistics` VALUES ('401', '37.237.65.16', null, '1535960112', null);
INSERT INTO `vd_statistics` VALUES ('402', '37.237.65.16', null, '1535960168', null);
INSERT INTO `vd_statistics` VALUES ('403', '37.237.65.16', null, '1535960214', null);
INSERT INTO `vd_statistics` VALUES ('404', '82.145.223.10', null, '1535960870', null);
INSERT INTO `vd_statistics` VALUES ('405', '82.145.223.10', null, '1535960870', null);
INSERT INTO `vd_statistics` VALUES ('406', '49.156.2.67', null, '1535961439', null);
INSERT INTO `vd_statistics` VALUES ('407', '66.249.82.172', null, '1535961475', null);
INSERT INTO `vd_statistics` VALUES ('408', '151.236.179.144', null, '1535961564', null);
INSERT INTO `vd_statistics` VALUES ('409', '65.18.124.247', null, '1535961756', null);
INSERT INTO `vd_statistics` VALUES ('410', '117.136.92.68', null, '1535961819', null);
INSERT INTO `vd_statistics` VALUES ('411', '106.79.232.247', null, '1535963202', null);
INSERT INTO `vd_statistics` VALUES ('412', '49.156.2.67', null, '1535963603', null);
INSERT INTO `vd_statistics` VALUES ('413', '49.156.2.67', null, '1535963680', null);
INSERT INTO `vd_statistics` VALUES ('414', '117.136.92.68', null, '1535963917', null);
INSERT INTO `vd_statistics` VALUES ('415', '182.140.177.243', null, '1535964128', null);
INSERT INTO `vd_statistics` VALUES ('416', '223.90.31.75', null, '1535965173', null);
INSERT INTO `vd_statistics` VALUES ('417', '5.24.222.216', null, '1535965331', null);
INSERT INTO `vd_statistics` VALUES ('418', '49.156.2.67', null, '1535965614', null);
INSERT INTO `vd_statistics` VALUES ('419', '119.84.153.163', null, '1535966257', null);
INSERT INTO `vd_statistics` VALUES ('420', '49.156.2.67', null, '1535966273', null);
INSERT INTO `vd_statistics` VALUES ('421', '14.116.142.73', null, '1535966522', null);
INSERT INTO `vd_statistics` VALUES ('422', '49.34.108.111', null, '1535966885', null);
INSERT INTO `vd_statistics` VALUES ('423', '65.18.124.247', null, '1535966939', null);
INSERT INTO `vd_statistics` VALUES ('424', '65.18.124.247', null, '1535967104', null);
INSERT INTO `vd_statistics` VALUES ('425', '65.18.124.247', null, '1535967140', null);
INSERT INTO `vd_statistics` VALUES ('426', '115.164.181.106', null, '1535969097', null);
INSERT INTO `vd_statistics` VALUES ('427', '49.156.2.67', null, '1535969306', null);
INSERT INTO `vd_statistics` VALUES ('428', '115.164.181.106', null, '1535969457', null);
INSERT INTO `vd_statistics` VALUES ('429', '115.164.181.106', null, '1535969490', null);
INSERT INTO `vd_statistics` VALUES ('430', '115.164.181.106', null, '1535969780', null);
INSERT INTO `vd_statistics` VALUES ('431', '211.25.116.240', null, '1535969980', null);
INSERT INTO `vd_statistics` VALUES ('432', '196.154.2.186', null, '1535970229', null);
INSERT INTO `vd_statistics` VALUES ('433', '157.43.19.84', null, '1535970543', null);
INSERT INTO `vd_statistics` VALUES ('434', '37.111.130.98', null, '1535970859', null);
INSERT INTO `vd_statistics` VALUES ('435', '37.111.130.98', null, '1535970910', null);
INSERT INTO `vd_statistics` VALUES ('436', '37.111.130.98', null, '1535971004', null);
INSERT INTO `vd_statistics` VALUES ('437', '37.111.130.98', null, '1535971235', null);
INSERT INTO `vd_statistics` VALUES ('438', '154.121.7.27', null, '1535973666', null);
INSERT INTO `vd_statistics` VALUES ('439', '154.121.7.27', null, '1535973666', null);
INSERT INTO `vd_statistics` VALUES ('440', '37.124.129.80', null, '1535973811', null);
INSERT INTO `vd_statistics` VALUES ('441', '37.124.129.80', null, '1535973811', null);
INSERT INTO `vd_statistics` VALUES ('442', '5.24.222.216', null, '1535974553', null);
INSERT INTO `vd_statistics` VALUES ('443', '8.37.235.34', null, '1535975449', null);
INSERT INTO `vd_statistics` VALUES ('444', '61.223.11.142', null, '1535975520', null);
INSERT INTO `vd_statistics` VALUES ('445', '27.247.4.65', null, '1535975608', null);
INSERT INTO `vd_statistics` VALUES ('446', '27.247.4.65', null, '1535975721', null);
INSERT INTO `vd_statistics` VALUES ('447', '113.96.218.51', null, '1535975750', null);
INSERT INTO `vd_statistics` VALUES ('448', '27.247.4.65', null, '1535975898', null);
INSERT INTO `vd_statistics` VALUES ('449', '36.231.242.57', null, '1535976138', null);
INSERT INTO `vd_statistics` VALUES ('450', '113.96.218.51', null, '1535976485', null);
INSERT INTO `vd_statistics` VALUES ('451', '49.156.2.67', null, '1535976808', null);
INSERT INTO `vd_statistics` VALUES ('452', '151.236.179.175', null, '1535978822', null);
INSERT INTO `vd_statistics` VALUES ('453', '106.39.191.115', null, '1535978979', null);
INSERT INTO `vd_statistics` VALUES ('454', '157.36.173.89', null, '1535979001', null);
INSERT INTO `vd_statistics` VALUES ('455', '103.112.241.103', null, '1535979573', null);
INSERT INTO `vd_statistics` VALUES ('456', '103.211.244.174', null, '1535979599', null);
INSERT INTO `vd_statistics` VALUES ('457', '61.151.178.217', null, '1535979633', null);
INSERT INTO `vd_statistics` VALUES ('458', '118.182.133.221', null, '1535979877', null);
INSERT INTO `vd_statistics` VALUES ('459', '49.156.2.67', null, '1535980027', null);
INSERT INTO `vd_statistics` VALUES ('460', '49.156.2.67', null, '1535980047', null);
INSERT INTO `vd_statistics` VALUES ('461', '212.174.188.245', null, '1535980097', null);
INSERT INTO `vd_statistics` VALUES ('462', '223.104.1.125', null, '1535980241', null);
INSERT INTO `vd_statistics` VALUES ('463', '223.104.1.125', null, '1535980289', null);
INSERT INTO `vd_statistics` VALUES ('464', '8.37.235.162', null, '1535980542', null);
INSERT INTO `vd_statistics` VALUES ('465', '69.4.87.74', null, '1535980667', null);
INSERT INTO `vd_statistics` VALUES ('466', '93.119.227.91', null, '1535981179', null);
INSERT INTO `vd_statistics` VALUES ('467', '202.62.49.72', null, '1535982734', null);
INSERT INTO `vd_statistics` VALUES ('468', '117.20.116.180', null, '1535983326', null);
INSERT INTO `vd_statistics` VALUES ('469', '178.153.226.151', null, '1535983988', null);
INSERT INTO `vd_statistics` VALUES ('470', '106.77.139.22', null, '1535984037', null);
INSERT INTO `vd_statistics` VALUES ('471', '178.153.226.151', null, '1535984088', null);
INSERT INTO `vd_statistics` VALUES ('472', '183.95.75.91', null, '1535984246', null);
INSERT INTO `vd_statistics` VALUES ('473', '106.77.142.171', null, '1535984456', null);
INSERT INTO `vd_statistics` VALUES ('474', '178.153.226.151', null, '1535984779', null);
INSERT INTO `vd_statistics` VALUES ('475', '106.66.59.14', null, '1535985636', null);
INSERT INTO `vd_statistics` VALUES ('476', '14.215.160.165', null, '1535985638', null);
INSERT INTO `vd_statistics` VALUES ('477', '112.51.7.80', null, '1535986032', null);
INSERT INTO `vd_statistics` VALUES ('478', '196.152.7.31', null, '1535987102', null);
INSERT INTO `vd_statistics` VALUES ('479', '69.4.87.74', null, '1535987280', null);
INSERT INTO `vd_statistics` VALUES ('480', '117.20.117.124', null, '1535987415', null);
INSERT INTO `vd_statistics` VALUES ('481', '154.59.44.173', null, '1535987678', null);
INSERT INTO `vd_statistics` VALUES ('482', '101.199.110.107', null, '1535987827', null);
INSERT INTO `vd_statistics` VALUES ('483', '93.119.227.91', null, '1535988242', null);
INSERT INTO `vd_statistics` VALUES ('484', '223.104.1.125', null, '1535988390', null);
INSERT INTO `vd_statistics` VALUES ('485', '157.32.215.136', null, '1535989685', null);
INSERT INTO `vd_statistics` VALUES ('486', '61.223.11.142', null, '1535989874', null);
INSERT INTO `vd_statistics` VALUES ('487', '66.249.82.104', null, '1535990630', null);
INSERT INTO `vd_statistics` VALUES ('488', '27.18.84.198', null, '1535990760', null);
INSERT INTO `vd_statistics` VALUES ('489', '66.249.79.14', null, '1535991650', null);
INSERT INTO `vd_statistics` VALUES ('490', '106.209.187.250', null, '1535992375', null);
INSERT INTO `vd_statistics` VALUES ('491', '66.249.82.104', null, '1535992422', null);
INSERT INTO `vd_statistics` VALUES ('492', '37.155.170.94', null, '1535993696', null);
INSERT INTO `vd_statistics` VALUES ('493', '183.95.34.179', null, '1535995118', null);
INSERT INTO `vd_statistics` VALUES ('494', '123.151.77.71', null, '1535995120', null);
INSERT INTO `vd_statistics` VALUES ('495', '111.30.142.186', null, '1535995503', null);
INSERT INTO `vd_statistics` VALUES ('496', '8.37.235.44', null, '1535996070', null);
INSERT INTO `vd_statistics` VALUES ('497', '8.37.235.157', null, '1535997255', null);
INSERT INTO `vd_statistics` VALUES ('498', '111.30.142.186', null, '1535997526', null);
INSERT INTO `vd_statistics` VALUES ('499', '66.102.8.200', null, '1536000111', null);
INSERT INTO `vd_statistics` VALUES ('500', '101.199.110.112', null, '1536003153', null);
INSERT INTO `vd_statistics` VALUES ('501', '66.249.81.168', null, '1536003809', null);
INSERT INTO `vd_statistics` VALUES ('502', '66.249.93.76', null, '1536003810', null);
INSERT INTO `vd_statistics` VALUES ('503', '72.14.199.188', null, '1536003831', null);
INSERT INTO `vd_statistics` VALUES ('504', '37.210.159.125', null, '1536009373', null);
INSERT INTO `vd_statistics` VALUES ('505', '37.210.159.125', null, '1536010494', null);
INSERT INTO `vd_statistics` VALUES ('506', '37.210.159.125', null, '1536010513', null);
INSERT INTO `vd_statistics` VALUES ('507', '37.210.159.125', null, '1536014493', null);
INSERT INTO `vd_statistics` VALUES ('508', '140.243.241.205', null, '1536018500', null);
INSERT INTO `vd_statistics` VALUES ('509', '140.243.241.205', null, '1536018611', null);
INSERT INTO `vd_statistics` VALUES ('510', '140.243.246.198', null, '1536022253', null);
INSERT INTO `vd_statistics` VALUES ('511', '117.136.78.235', null, '1536022999', null);
INSERT INTO `vd_statistics` VALUES ('512', '14.152.68.73', null, '1536024318', null);
INSERT INTO `vd_statistics` VALUES ('513', '206.189.44.192', null, '1536026907', null);
INSERT INTO `vd_statistics` VALUES ('514', '14.116.141.128', null, '1536028349', null);
INSERT INTO `vd_statistics` VALUES ('515', '49.156.2.67', null, '1536030218', null);
INSERT INTO `vd_statistics` VALUES ('516', '8.37.234.188', null, '1536030321', null);
INSERT INTO `vd_statistics` VALUES ('517', '31.218.12.118', null, '1536030393', null);
INSERT INTO `vd_statistics` VALUES ('518', '117.152.121.4', null, '1536033194', null);
INSERT INTO `vd_statistics` VALUES ('519', '49.156.2.67', null, '1536034265', null);
INSERT INTO `vd_statistics` VALUES ('520', '49.156.2.67', null, '1536034856', null);
INSERT INTO `vd_statistics` VALUES ('521', '49.156.2.67', null, '1536035116', null);
INSERT INTO `vd_statistics` VALUES ('522', '223.104.187.69', null, '1536035986', null);
INSERT INTO `vd_statistics` VALUES ('523', '58.71.38.129', null, '1536036320', null);
INSERT INTO `vd_statistics` VALUES ('524', '37.210.159.125', null, '1536040243', null);
INSERT INTO `vd_statistics` VALUES ('525', '70.42.131.170', null, '1536040464', null);
INSERT INTO `vd_statistics` VALUES ('526', '14.152.68.13', null, '1536043369', null);
INSERT INTO `vd_statistics` VALUES ('527', '14.152.68.42', null, '1536044392', null);
INSERT INTO `vd_statistics` VALUES ('528', '36.102.227.228', null, '1536044957', null);
INSERT INTO `vd_statistics` VALUES ('529', '14.116.142.72', null, '1536045746', null);
INSERT INTO `vd_statistics` VALUES ('530', '36.23.180.66', null, '1536046111', null);
INSERT INTO `vd_statistics` VALUES ('531', '171.210.209.22', null, '1536046119', null);
INSERT INTO `vd_statistics` VALUES ('532', '171.210.209.22', null, '1536046190', null);
INSERT INTO `vd_statistics` VALUES ('533', '115.239.212.138', null, '1536046242', null);
INSERT INTO `vd_statistics` VALUES ('534', '78.161.94.8', null, '1536046243', null);
INSERT INTO `vd_statistics` VALUES ('535', '49.156.2.67', null, '1536046263', null);
INSERT INTO `vd_statistics` VALUES ('536', '49.156.2.67', null, '1536046291', null);
INSERT INTO `vd_statistics` VALUES ('537', '111.206.36.145', null, '1536046355', null);
INSERT INTO `vd_statistics` VALUES ('538', '66.249.82.104', null, '1536046586', null);
INSERT INTO `vd_statistics` VALUES ('539', '78.161.94.8', null, '1536046737', null);
INSERT INTO `vd_statistics` VALUES ('540', '37.210.159.125', null, '1536046795', null);
INSERT INTO `vd_statistics` VALUES ('541', '36.23.180.66', null, '1536046807', null);
INSERT INTO `vd_statistics` VALUES ('542', '37.210.159.125', null, '1536047251', null);
INSERT INTO `vd_statistics` VALUES ('543', '37.210.159.125', null, '1536047621', null);
INSERT INTO `vd_statistics` VALUES ('544', '219.133.46.84', null, '1536048239', null);
INSERT INTO `vd_statistics` VALUES ('545', '117.136.0.137', null, '1536048656', null);
INSERT INTO `vd_statistics` VALUES ('546', '110.166.135.102', null, '1536048831', null);
INSERT INTO `vd_statistics` VALUES ('547', '202.62.59.106', null, '1536049096', null);
INSERT INTO `vd_statistics` VALUES ('548', '110.166.135.102', null, '1536049123', null);
INSERT INTO `vd_statistics` VALUES ('549', '14.215.176.19', null, '1536049264', null);
INSERT INTO `vd_statistics` VALUES ('550', '49.156.2.67', null, '1536049338', null);
INSERT INTO `vd_statistics` VALUES ('551', '49.156.2.67', null, '1536049461', null);
INSERT INTO `vd_statistics` VALUES ('552', '49.156.2.67', null, '1536050270', null);
INSERT INTO `vd_statistics` VALUES ('553', '49.7.3.73', null, '1536050356', null);
INSERT INTO `vd_statistics` VALUES ('554', '49.156.2.67', null, '1536050416', null);
INSERT INTO `vd_statistics` VALUES ('555', '202.62.59.106', null, '1536051064', null);
INSERT INTO `vd_statistics` VALUES ('556', '49.156.2.67', null, '1536051296', null);
INSERT INTO `vd_statistics` VALUES ('557', '202.62.59.106', null, '1536051558', null);
INSERT INTO `vd_statistics` VALUES ('558', '14.116.142.78', null, '1536051891', null);
INSERT INTO `vd_statistics` VALUES ('559', '123.150.182.197', null, '1536052070', null);
INSERT INTO `vd_statistics` VALUES ('560', '49.156.2.67', null, '1536052462', null);
INSERT INTO `vd_statistics` VALUES ('561', '49.156.2.67', null, '1536053449', null);
INSERT INTO `vd_statistics` VALUES ('562', '106.39.189.25', null, '1536053510', null);
INSERT INTO `vd_statistics` VALUES ('563', '106.39.189.26', null, '1536053518', null);
INSERT INTO `vd_statistics` VALUES ('564', '49.156.2.67', null, '1536053565', null);
INSERT INTO `vd_statistics` VALUES ('565', '171.44.103.32', null, '1536053880', null);
INSERT INTO `vd_statistics` VALUES ('566', '180.163.226.69', null, '1536055273', null);

-- ----------------------------
-- Table structure for vd_type
-- ----------------------------
DROP TABLE IF EXISTS `vd_type`;
CREATE TABLE `vd_type` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL COMMENT '类别名称',
  `sort` int(4) unsigned NOT NULL DEFAULT '1' COMMENT '排序',
  `create_time` int(32) DEFAULT NULL COMMENT '创建日期',
  `update_time` int(32) DEFAULT NULL COMMENT '更新时间',
  `deleted_time` int(32) DEFAULT NULL COMMENT '删除时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='类别表';

-- ----------------------------
-- Records of vd_type
-- ----------------------------
INSERT INTO `vd_type` VALUES ('9', '日韩', '1', '1535704242', '1535704242', null);
INSERT INTO `vd_type` VALUES ('10', '欧美', '2', '1535704262', '1535704262', null);
INSERT INTO `vd_type` VALUES ('11', '国产', '3', '1535704271', '1535704271', null);
INSERT INTO `vd_type` VALUES ('12', '偷拍', '4', '1535704279', '1535704279', null);
INSERT INTO `vd_type` VALUES ('13', '动漫', '5', '1535773201', '1535773201', null);
INSERT INTO `vd_type` VALUES ('14', '三级', '6', '1535773217', '1535773217', null);

-- ----------------------------
-- Table structure for vd_video
-- ----------------------------
DROP TABLE IF EXISTS `vd_video`;
CREATE TABLE `vd_video` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `url` text NOT NULL COMMENT '视频地址',
  `img` text COMMENT '封面地址',
  `time` varchar(32) DEFAULT NULL COMMENT '视频播放时间',
  `title` varchar(255) DEFAULT NULL COMMENT '视频标题',
  `desc` text COMMENT '视频描述',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '视频类型（根据类型表来定）',
  `fabulous` int(16) NOT NULL DEFAULT '0' COMMENT '点赞',
  `step_on` int(16) NOT NULL DEFAULT '0' COMMENT '踩',
  `watch_count` int(32) NOT NULL DEFAULT '0' COMMENT '观看次数',
  `is_hd` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-代表高清  0-代表不是高清',
  `recommend` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '特别推荐',
  `create_time` int(32) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(32) DEFAULT NULL COMMENT '更新时间',
  `deleted_time` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 COMMENT='视频表';

-- ----------------------------
-- Records of vd_video
-- ----------------------------
INSERT INTO `vd_video` VALUES ('19', '/videos/rihan/1.mp4', '/uploads/images/20180901/487d4c3e8b8f73f4c70cbeefd200853e.jpg', '01:02:10', 'ド変态子持ちママととことんヤリまくる ド', '<p>演员：暧羽裸ゆめ</p><p>风格：[高清]pacopaco</p><p>大小：724.97 MB</p><p>介绍：122217_191-paco</p>', '9', '1', '1', '39', '1', '0', '1535704533', '1535789682', null);
INSERT INTO `vd_video` VALUES ('20', '/videos/rihan/2.mp4', '/uploads/images/20180901/a96c8d471fbaa4d9b30cf56f1c1f6c4c.jpg', '01:01:47', '中出しサンタ2018', '<p>类别：日本无码</p><p>演员：神田るな</p><p>风格：[高清]加勒比</p><p>大小：722.29 MB</p><p>介绍：122217-561-carib</p>', '9', '1', '0', '63', '1', '0', '1535705273', '1535789750', null);
INSERT INTO `vd_video` VALUES ('21', '/videos/toupai/FTM/1.mp4', '/uploads/images/20180902/8524759e704fae09266301db32ea23e9.jpg', '00:04:49', 'FTM1', '福利自己看', '12', '0', '0', '37', '0', '0', '1535716654', '1535890492', null);
INSERT INTO `vd_video` VALUES ('22', '/videos/toupai/FTM/2.mp4', '/uploads/images/20180902/bc552a992a0bc1ad111a31c40e5f7253.jpg', '00:04:48', 'FTM2', '<p>大小：8.85M</p>', '12', '0', '0', '3', '0', '0', '1535774461', '1535890604', null);
INSERT INTO `vd_video` VALUES ('23', '/videos/toupai/FTM/3.mp4', '/uploads/images/20180902/84a1261869541b5bcd759bd0b527f614.jpg', '00:04:48', 'FTM3', '大小：9.61M', '12', '0', '0', '7', '0', '0', '1535774521', '1535890619', null);
INSERT INTO `vd_video` VALUES ('24', '/videos/toupai/FTM/4.mp4', '/uploads/images/20180902/1fd401be6a831b50df96aae5f09064e5.jpg', '00:04:48', 'FTM4', '大小：13.2M', '12', '1', '0', '11', '0', '0', '1535774572', '1535890631', null);
INSERT INTO `vd_video` VALUES ('25', '/videos/guochan/njdxs/1.mp4', '/uploads/images/20180902/4d667d828c16407005d4b08192ac7f02.jpg', '00:04:06', '南京大学生1', '<p>风格：国产自拍</p><p>大小：9.18M</p>', '11', '1', '0', '5', '0', '0', '1535793644', '1535891529', null);
INSERT INTO `vd_video` VALUES ('26', '/videos/guochan/njdxs/2.mp4', '/uploads/images/20180902/2d0e73e277859e86efdd2403ae815537.jpg', '00:04:08', '南京大学生2', '<p>风格：国产自拍</p><p>大小：9.76M</p>', '11', '0', '0', '7', '0', '0', '1535793703', '1535891540', null);
INSERT INTO `vd_video` VALUES ('27', '/videos/guochan/njdxs/3.mp4', '/uploads/images/20180902/ea186cd75be7c56e009acf9501228961.jpg', '00:04:08', '南京大学生3', '<p>风格：国产自拍</p><p>大小：9.77M</p>', '11', '0', '0', '7', '0', '0', '1535793757', '1535891550', null);
INSERT INTO `vd_video` VALUES ('28', '/videos/guochan/njdxs/4.mp4', '/uploads/images/20180902/58cc9dbca4b21beac3a497d434b2fdac.jpg', '00:04:08', '南京大学生4', '<p>风格：国产自拍</p><p>大小：9.47M</p>', '11', '0', '0', '7', '0', '0', '1535793838', '1535891560', null);
INSERT INTO `vd_video` VALUES ('29', '/videos/guochan/njdxs/5.mp4', '/uploads/images/20180902/1af618cafc3cbeecdaba378694473aa6.jpg', '00:04:12', '南京大学生5', '<p>风格：国产自拍</p><p>大小：10.0M</p>', '11', '1', '0', '6', '0', '0', '1535793884', '1535891569', null);
INSERT INTO `vd_video` VALUES ('30', '/videos/rihan/dymjzk.mp4', '/uploads/images/20180902/b95686b80c52f7171521b63ee735681e.jpg', '01:12:14', '到姨妈家做客', '<p>字幕：【中文简字】</p><p>大小：169M</p>', '9', '0', '0', '13', '0', '0', '1535799618', '1535891243', null);
INSERT INTO `vd_video` VALUES ('32', '/videos/rihan/dskfxyz.mp4', '/uploads/images/20180902/d0607b915da0ad0e3c44e9a355c32037.jpg', '00:53:43', '独守空房小姨子', '<p>字幕：【中文简字】</p><p>大小：145MB</p>', '9', '0', '0', '34', '0', '1', '1535801669', '1535891259', null);
INSERT INTO `vd_video` VALUES ('31', '/videos/rihan/cjk.mp4', '/uploads/images/20180902/fefa9899f40d9113c3106b0d21b9b6e6.jpg', '00:36:32', '苍井空', '<p>字幕：【中文简字】</p><p>大小：62.0M</p>', '9', '0', '0', '36', '0', '1', '1535799882', '1535891229', null);
INSERT INTO `vd_video` VALUES ('33', '/videos/dongman/1.mp4', 'https://tu.169rr.com/javboxpic/playpic/1789.jpg', '00:13:04', '[日语简字有修] 武想少女队ぶれいど☆ブライダーズ THE ANIMATION', '<p>大小：105.20M</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"140\" class=\"layui-table\"><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl64\" width=\"140\">介绍：[日语简字修]\n  武想少女队ぶれいど☆ブライダーズ THE ANIMATION</td></tr></tbody></table>', '13', '0', '0', '1', '0', '0', '1535802797', '1535802810', null);
INSERT INTO `vd_video` VALUES ('34', '/videos/dongman/2.mp4', 'https://tu.169rr.com/javboxpic/playpic/1788.jpg', '00:16:35', '[日语简字有修] ラブビッチ～优しい女…～', '<p>大小：133.46M</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"140\" class=\"layui-table\"><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl66\" width=\"140\">介绍：[日语简字修]\n  ラブビッチ～优しい女…～</td></tr></tbody></table>', '13', '1', '0', '1', '0', '0', '1535802879', '1535802879', null);
INSERT INTO `vd_video` VALUES ('35', '/videos/dongman/3.mp4', 'https://tu.169rr.com/javboxpic/playpic/1787.jpg', '00:23:29', '[日语繁字有修] 新・圣ヤリマン学园援交日记 THE ANIMATION', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"140\" class=\"layui-table\"><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl66\" width=\"140\">介绍：[日语繁字修]\n  新・圣ヤリマン学园援交日记 THE ANIMATION</td></tr></tbody></table>', '13', '0', '0', '1', '0', '0', '1535802929', '1535802929', null);
INSERT INTO `vd_video` VALUES ('36', '/videos/dongman/4.mp4', 'https://tu.169rr.com/javboxpic/playpic/1786.jpg', '00:13:57', '[日语简字无修] 雪夜一夜物语 第一夜 盗人', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"140\" class=\"layui-table\"><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl66\" width=\"140\">介绍：[日语简字修]\n  雪夜一夜物语 第一夜 盗人</td></tr></tbody></table>', '13', '0', '0', '3', '0', '0', '1535802979', '1535802979', null);
INSERT INTO `vd_video` VALUES ('37', '/videos/oumei/171203-001.mp4', 'https://tu.169rr.com/javboxpic/playpic/3812.jpg', '00:25:39', 'Popping Candy＂s Cherry', '<p>大小：298.65M</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"140\" class=\"layui-table\"><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl63\" width=\"140\">介绍：171203-001</td></tr></tbody></table>', '10', '1', '0', '2', '1', '0', '1535804045', '1535804045', null);
INSERT INTO `vd_video` VALUES ('38', '/videos/oumei/171203-002.mp4', 'https://tu.169rr.com/javboxpic/playpic/3811.jpg', '00:24:59', 'BDSM Newbie Humiliated', '大小：292.22M', '10', '0', '0', '4', '1', '0', '1535804095', '1535804095', null);
INSERT INTO `vd_video` VALUES ('39', '/videos/oumei/171203-003.mp4', 'https://tu.169rr.com/javboxpic/playpic/3810.jpg', '00:12:58', 'Blow That Cock， Get That Job', '大小：151.63M', '10', '0', '0', '3', '1', '0', '1535804143', '1535804143', null);
INSERT INTO `vd_video` VALUES ('40', '/videos/oumei/171203-004.mp4', 'https://tu.169rr.com/javboxpic/playpic/3809.jpg', '00:17:05', 'Naughty For You', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"140\" class=\"layui-table\"><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl65\" width=\"140\">大小：198.67\n  MB</td></tr></tbody></table>', '10', '0', '0', '16', '1', '0', '1535804184', '1535804184', null);
INSERT INTO `vd_video` VALUES ('41', '/videos/guochan/dxslcb.mp4', '/uploads/images/20180902/c7713eaf6e64ac82c8499103506dc24d.jpg', '00:56:54', '大学生绿茶婊', '大小：458M', '11', '0', '0', '10', '0', '0', '1535806325', '1535891423', null);
INSERT INTO `vd_video` VALUES ('42', '/videos/oumei/wzsnpc.mp4', '/uploads/images/20180902/c75010cb8187bd8b854f0480c33b0fd0.jpg', '00:29:52', '维族少女破处', '大小：107M', '10', '0', '0', '1', '0', '0', '1535806448', '1535892164', null);
INSERT INTO `vd_video` VALUES ('43', '/videos/sanji/1.mp4', 'https://tu.169rr.com/javboxpic/playpic/823.jpg', '01:16:31', '(中文字幕)顶楼的偷窃狂 江戸川乱歩猟奇馆 屋根里の散歩者  ', '<p><font size=\"3\">大小：608.76MB<br></font><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"140\" class=\"layui-table\"><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl64\" width=\"140\"><p>演员：&nbsp;宫下顺子</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"166\" class=\"layui-table\"></table></td></tr></tbody></table></p><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl65\" width=\"166\">介绍：顶楼的偷窃狂\n  江戸川乱歩猟奇馆 屋根里の散歩者 &nbsp;</td></tr></tbody><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"140\" class=\"layui-table\"><tbody><tr height=\"20\"><td height=\"20\" class=\"xl64\" width=\"140\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"166\" class=\"layui-table\"></table></td></tr></tbody></table>', '14', '0', '0', '2', '0', '0', '1535807298', '1535807298', null);
INSERT INTO `vd_video` VALUES ('44', '/videos/sanji/2.mp4', 'https://tu.169rr.com/javboxpic/playpic/822.jpg', '01:02:55', '(中文字幕)性爱体位暖春宫 セックスの悩み、体位で解决! ~カーマスートラから日本の48手まで~', '<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"112\" class=\"layui-table\"><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl65\" width=\"112\"><p>大小：487.93M</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"140\" class=\"layui-table\"><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl65\" width=\"140\"><p>演员：&nbsp;樱井ゆうこ</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"310\" class=\"layui-table\"><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl65\" width=\"310\">介绍：性爱体位暖春宫\n  セックスの悩み、体位で解决! ~カーマスートラから日本の48手まで~</td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table>', '14', '0', '0', '0', '0', '0', '1535807351', '1535807351', null);
INSERT INTO `vd_video` VALUES ('45', '/videos/sanji/3.mp4', 'https://tu.169rr.com/javboxpic/playpic/821.jpg', '02:09:22', '(中文字幕)爱恋 Love  ', '<p><font size=\"3\">大小：1014.55MB</font></p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"140\" class=\"layui-table\"><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl65\" width=\"140\"><p>演员：&nbsp;卡尔·格洛斯曼</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"310\" class=\"layui-table\"><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl65\" width=\"310\">介绍：爱恋\n  Love&nbsp;&nbsp;</td></tr></tbody></table></td></tr></tbody></table>', '14', '0', '0', '1', '0', '0', '1535807437', '1535807437', null);
INSERT INTO `vd_video` VALUES ('46', '/videos/sanji/4.mp4', 'https://tu.169rr.com/javboxpic/playpic/820.jpg', '01:25:58', '(中文字幕)红色假期 黑色婚礼 赤いバカンス、黒いウェディング', '<p>大小：666.93MB</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"140\" class=\"layui-table\"><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl65\" width=\"140\"><p>演员：チョ</p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"310\" class=\"layui-table\"><tbody><tr height=\"20\">\n  <td height=\"20\" class=\"xl65\" width=\"310\">介绍：红色假期\n  黑色婚礼 赤いバカンス、黒いウェディング</td></tr></tbody></table></td></tr></tbody></table>', '14', '0', '0', '2', '0', '0', '1535807487', '1535807487', null);
INSERT INTO `vd_video` VALUES ('47', '/videos/dongman/5.mp4', 'https://tu.169rr.com/javboxpic/playpic/1791.jpg', '00:30:11', '[日语简字无修] もみじ－「ワタシ…人形じゃありません…」第2巻 色づきはじめた若叶たち テレカなし', '<p>大小：242.99MB</p><p><font size=\"3\">介绍：[日语简字无修]&nbsp;</font></p><p><font size=\"3\">もみじ－「ワタシ…人形じゃありません…」</font></p><p><font size=\"3\">第2巻 色づきはじめた若叶たち テレカなし</font></p><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"140\" class=\"layui-table\"><tbody><tr height=\"20\"></tr></tbody></table>', '13', '0', '0', '0', '0', '0', '1535808544', '1535808865', null);
INSERT INTO `vd_video` VALUES ('48', '/videos/dongman/6.mp4', 'https://tu.169rr.com/javboxpic/playpic/1790.jpg', '00:29:58', '[日语简字无修] もみじ－「ワタシ…人形じゃありません…」第3巻 芽吹きはじめた若叶たち テレカ付き', '<p>大小：241.29MB</p><p>介绍：[日语简字无修] もみじ－「ワタシ…人形じゃありません…」第3巻 芽吹きはじめた若叶たち テレカ付き</p>', '13', '0', '0', '0', '0', '0', '1535808610', '1535808875', null);
INSERT INTO `vd_video` VALUES ('49', '/videos/dongman/7.mp4', 'https://tu.169rr.com/javboxpic/playpic/1793.jpg', '00:15:51', '[日语繁字有修] OVA妹ビッチに榨られたい ＃2 妹は生オナホ ～サヤカはお兄ちゃん専用性玩具～', '<p>大小：127.50MB</p><p>介绍：[日语繁字有修] OVA妹ビッチに榨られたい ＃2 妹は生オナホ ～サヤカはお兄ちゃん専用性玩具～</p>', '13', '0', '0', '0', '0', '0', '1535808734', '1535808885', null);
INSERT INTO `vd_video` VALUES ('50', '/videos/dongman/8.mp4', 'https://tu.169rr.com/javboxpic/playpic/1792.jpg', '00:30:15', '[日语简字无修] もみじ－「ワタシ…人形じゃありません…」第1巻 季节はずれの落叶 テレカ付', '<p>大小：243.49MB</p><p>介绍：[日语简字无修] もみじ－「ワタシ…人形じゃありません…」第1巻 季节はずれの落叶 テレカ付</p><div><br></div>', '13', '0', '0', '2', '0', '0', '1535808955', '1535808955', null);
INSERT INTO `vd_video` VALUES ('51', '/videos/dongman/9.mp4', 'https://tu.169rr.com/javboxpic/playpic/1795.jpg', '00:20:45', '[日语繁字有修] 転生剣奴の子作り闘技场（ハーレムコロッセオ） ケモ耳ちっぱい?ライティウス～ケダモノ迫るマイクロボディ', '<p>大小：166.97MB</p><p>介绍：[日语繁字有修] 転生剣奴の子作り闘技场（ハーレムコロッセオ） ケモ耳ちっぱい?ライティウス～ケダモノ迫るマイクロボディ</p><div><br></div>', '13', '0', '0', '3', '0', '0', '1535809005', '1535809025', null);
INSERT INTO `vd_video` VALUES ('52', '/videos/dongman/10.mp4', 'https://tu.169rr.com/javboxpic/playpic/1794.jpg', '00:30:08', '[日语简字无修] もみじ－「ワタシ…人形じゃありません…」第4巻 落つることのないもみじ テレカ付', '<p>大小：242.52MB</p><p>介绍：[日语简字无修] もみじ－「ワタシ…人形じゃありません…」第4巻 落つることのないもみじ テレカ付</p><div><br></div>', '13', '0', '0', '2', '0', '0', '1535809093', '1535809093', null);
INSERT INTO `vd_video` VALUES ('53', '/videos/dongman/11.mp4', 'https://tu.169rr.com/javboxpic/playpic/1797.jpg', '00:28:47', '[日语繁字有修] 龙堂寺士门の淫谋 前编 性奴隶调教', '<p>大小：231.60MB</p><p>介绍：[日语繁字有修] 龙堂寺士门の淫谋 前编 性奴隶调教</p><div><br></div>', '13', '0', '0', '0', '0', '0', '1535809596', '1535809596', null);
INSERT INTO `vd_video` VALUES ('54', '/videos/dongman/12.mp4', 'https://tu.169rr.com/javboxpic/playpic/1796.jpg', '00:26:05', '[日语繁字有修] は～とふるママン THE ANIMATION', '<p>大小：209.97MB</p><p>介绍：[日语繁字有修] は～とふるママン THE ANIMATION</p><div><br></div>', '13', '0', '0', '1', '0', '0', '1535809700', '1535809700', null);
INSERT INTO `vd_video` VALUES ('55', '/videos/dongman/13.mp4', 'https://tu.169rr.com/javboxpic/playpic/1799.jpg', '00:15:33', '[日语繁字有修] 気に入った膣にいきなり中出しOKなリゾート岛 part1', '<p>大小：125.16MB</p><p>介绍：[日语繁字有修] 気に入った膣にいきなり中出しOKなリゾート岛 part1</p><div><br></div>', '13', '0', '0', '1', '0', '0', '1535810205', '1535810205', null);
INSERT INTO `vd_video` VALUES ('56', '/videos/dongman/14.mp4', 'https://tu.169rr.com/javboxpic/playpic/1798.jpg', '00:22:50', '[日语简字有修] 一求乳魂 前编［ごばん］', '<p>大小：183.73MB</p><p>介绍：[日语简字有修] 一求乳魂 前编［ごばん］</p><div><br></div>', '13', '0', '0', '2', '0', '0', '1535810284', '1535810284', null);
INSERT INTO `vd_video` VALUES ('57', '/videos/dongman/15.mp4', 'https://tu.169rr.com/javboxpic/playpic/1801.jpg', '00:15:50', '[日语简字有修] さきゅばみすと?すとーりー ～のんひゅーまあんらいふ～ THE ANIMATION', '<p>大小：127.49MB</p><p>介绍：[日语简字有修] さきゅばみすと?すとーりー ～のんひゅーまあんらいふ～ THE ANIMATION</p><div><br></div>', '13', '1', '0', '5', '0', '0', '1535810344', '1535810344', null);
INSERT INTO `vd_video` VALUES ('58', '/videos/rihan/1_1.mp4', 'https://tu.169rr.com/javboxpic/playpic/7816.jpg', '00:26:26', '期间限定配信 圣夜に突然やってきたスレンダーエロ可爱サンタ Merry Christmas Vol1 Tera', '<p>大小：305.25MB</p><p>演员：テラ</p><div><br></div><p><br></p>', '9', '0', '0', '1', '1', '0', '1535811069', '1535811187', null);
INSERT INTO `vd_video` VALUES ('59', '/videos/rihan/2_1.mp4', 'https://tu.169rr.com/javboxpic/playpic/7815.jpg', '00:30:57', '东热激情 串刺しぶち込み特集 part1', '<p>大小：364.01MB</p><p>演员：森高七海|高桥亜弥|结城花梨|西川彩|小仓优</p>', '9', '1', '0', '7', '1', '0', '1535811150', '1535811150', null);
INSERT INTO `vd_video` VALUES ('60', '/videos/toupai/1.mp4', 'https://tu.169rr.com/javboxpic/playpic/2672.jpg', '00:40:05', '大学生情侣酒店开房真搞不懂这美女怎么会被这猥琐四眼田鸡泡到108P高清无水印', '<p>大小：322.51MB</p><p>介绍：大学生情侣酒店开房真搞不懂这美女怎么会被这猥琐四眼田鸡泡到108P高清无水印<br><br></p>', '12', '0', '0', '6', '1', '0', '1535858246', '1535858246', null);
INSERT INTO `vd_video` VALUES ('63', '/videos/guochan/gzbm.mp4', '/uploads/images/20180902/f8251609ce1a7ca5f0037f6fd723d624.jpg', '00:51:39', '广州保姆', '大小：233MB', '11', '1', '0', '11', '0', '0', '1535863560', '1535891407', null);
INSERT INTO `vd_video` VALUES ('64', '/videos/oumei/5.mp4', 'https://tu.169rr.com/javboxpic/playpic/3814.jpg', '00:38:16', 'Babes In Toyland', '大小：447.36MB', '10', '0', '0', '5', '1', '0', '1535872184', '1535872184', null);
INSERT INTO `vd_video` VALUES ('65', '/videos/oumei/6.mp4', 'https://tu.169rr.com/javboxpic/playpic/3813.jpg', '00:29:53', 'Busty Boss Fucked Hard', '大小：349.51MB', '10', '0', '0', '6', '1', '0', '1535872238', '1535872238', null);
INSERT INTO `vd_video` VALUES ('62', '/videos/toupai/2.mp4', 'https://tu.169rr.com/javboxpic/playpic/2671.jpg', '00:06:25', '大学时暗恋的美女同学多年后再见面时被我带到宾馆啪啪，看见她吃鸡巴的样子，忍不住狠狠的干她！', '<p>大小：51.76MB</p><p>介绍：大学时暗恋的美女同学多年后再见面时被我带到宾馆啪啪，看见她吃鸡巴的样子，忍不住狠狠的干她！<br><br></p>', '12', '0', '0', '11', '0', '0', '1535858428', '1535858428', null);
INSERT INTO `vd_video` VALUES ('66', '/videos/rihan/negybb.mp4', '/uploads/images/20180902/a0ae42d03065a6174cc4dbbbbd8bebd7.jpg', '01:01:20', '女儿勾引爸爸', '大小：216MB', '9', '2', '0', '11', '0', '0', '1535891908', '1535891908', null);
INSERT INTO `vd_video` VALUES ('67', '/videos/toupai/3.mp4', 'https://tu.169rr.com/javboxpic/playpic/2670.jpg', '00:16:31', '大屌彪哥宿舍各种姿势温柔的插插新泡的花都夜总会女领班720P高清无水', '<p>大小：132.98MB</p><p>介绍：大屌彪哥宿舍各种姿势温柔的插插新泡的花都夜总会女领班720P高清无水</p>', '12', '0', '0', '4', '0', '0', '1535944518', '1535944518', null);
INSERT INTO `vd_video` VALUES ('68', '/videos/toupai/4.mp4', 'https://tu.169rr.com/javboxpic/playpic/2669.jpg', '00:29:47', '小彬哥约炮身材苗条的美女大学生妹子到家里啪啪', '大小：239.79MB', '12', '0', '0', '2', '0', '0', '1535944568', '1535944568', null);
INSERT INTO `vd_video` VALUES ('69', '/videos/dongman/16.mp4', 'https://tu.169rr.com/javboxpic/playpic/1800.jpg', '00:16:15', '[日语简字有修] OVA-妹ビッチに榨られたい-＃1-妹DE王様ゲーム-～合コンで妹とバッタリで王様ゲームする话～', '大小：130.82MB', '13', '1', '0', '2', '0', '0', '1535946744', '1535946744', null);
INSERT INTO `vd_video` VALUES ('70', '/videos/dongman/17.mp4', 'https://tu.169rr.com/javboxpic/playpic/1804.jpg', '00:19:36', '[日语简字有修] 魂インサート 下巻神様の身体へおじゃまします', '大小：151.71MB', '13', '0', '0', '1', '0', '0', '1535946812', '1535946812', null);
INSERT INTO `vd_video` VALUES ('71', '/videos/sanji/6.mp4', 'https://tu.169rr.com/javboxpic/playpic/824.jpg', '00:48:59', '(中文字幕)淫乱游戏 Sexspiele Teil', '<p>大小：153 MB</p><p>演员：明星</p>', '14', '0', '0', '12', '0', '0', '1535948769', '1535950601', null);
INSERT INTO `vd_video` VALUES ('72', '/videos/sanji/5.mp4', 'https://tu.169rr.com/javboxpic/playpic/825.jpg', '01:58:22', '(中文字幕)雌性诱惑', '<p>大小：372 MB</p><p>演员：池内博之</p>', '14', '0', '0', '2', '0', '0', '1535948813', '1535950616', null);
INSERT INTO `vd_video` VALUES ('73', '/videos/oumei/7.mp4', 'https://tu.169rr.com/javboxpic/playpic/3816.jpg', '00:34:06', 'Mia Martinez， Kyle Mason', '大小：106MB', '10', '0', '0', '2', '0', '0', '1535951384', '1536034152', null);
INSERT INTO `vd_video` VALUES ('74', '/videos/oumei/8.mp4', 'https://tu.169rr.com/javboxpic/playpic/3815.jpg', '00:40:43', 'Epic Morning Glory Footjob', '大小：128.48MB', '10', '0', '0', '2', '0', '0', '1535951455', '1535951455', null);
INSERT INTO `vd_video` VALUES ('75', '/videos/rihan/3.mp4', 'https://tu.169rr.com/javboxpic/playpic/7814.jpg', '00:51:15', '极上セレブ妇人 Vol.14', '<p>大小：589.25MB</p><p>演员：仲间あずみ</p><p><br></p>', '9', '0', '0', '2', '1', '0', '1535952286', '1535952376', null);
INSERT INTO `vd_video` VALUES ('76', '/videos/rihan/4.mp4', 'https://tu.169rr.com/javboxpic/playpic/7813.jpg', '01:04:23', '2017 下半期 ベスト', '<p>大小：733.52MB</p><p>演员：柳川みどり|一ノ瀬兰|逢沢はるか|菊池よしの|大沢まなみ|本条彩乃</p><p><br></p>', '9', '2', '0', '30', '0', '1', '1535952351', '1535952351', null);
INSERT INTO `vd_video` VALUES ('77', '/videos/rihan/jndbtml.mp4', '/uploads/images/20180903/c7b88270304ba928bf3bbd3d11cc596f.jpg', '01:03:12', '姐你的波太美了', '<p>大小：148MB</p><p>介绍：【日语无字】</p>', '9', '1', '0', '10', '0', '0', '1535954347', '1535954347', null);
INSERT INTO `vd_video` VALUES ('78', '/videos/rihan/5.mp4', 'https://tu.169rr.com/javboxpic/playpic/7817.jpg', '01:03:26', 'M痴女 米仓のあ', '<p>大小：724.26MB</p><p>演员：米仓のあ</p><div><br></div>', '9', '0', '0', '3', '1', '0', '1536034078', '1536034078', null);
INSERT INTO `vd_video` VALUES ('79', '/videos/rihan/6.mp4', 'https://tu.169rr.com/javboxpic/playpic/7819.jpg', '01:00:30', '可爱いサンタさんが贵方の梦を叶えます', '<p>大小：701.01MB</p><p>演员：铃木凛花</p><div><br></div>', '9', '0', '0', '2', '1', '1', '1536034131', '1536034131', null);
INSERT INTO `vd_video` VALUES ('80', '/videos/dongman/18.mp4', 'https://tu.169rr.com/javboxpic/playpic/1803.jpg', '00:26:50', '[日语简字有修] 学园侵触 ×× of the Dead 下巻', '大小：215.98MB', '13', '0', '0', '0', '0', '0', '1536034788', '1536034788', null);
INSERT INTO `vd_video` VALUES ('81', '/videos/dongman/19.mp4', 'https://tu.169rr.com/javboxpic/playpic/1802.jpg', '00:20:45', '[日语简字有修] 転生剣奴の子作り闘技场（ハーレムコロッセオ） ケモ耳ちっぱい?ライティウス～ケダモノ迫るマイクロボディ', '大小：166.96MB', '13', '0', '0', '0', '0', '0', '1536034838', '1536034838', null);
INSERT INTO `vd_video` VALUES ('82', '/videos/oumei/9.mp4', 'https://tu.169rr.com/javboxpic/playpic/3818.jpg', '00:34:19', 'Aali Kali， Damon Dice', '大小：399.36MB', '10', '0', '0', '0', '0', '0', '1536035048', '1536035048', null);
INSERT INTO `vd_video` VALUES ('83', '/videos/oumei/10.mp4', 'https://tu.169rr.com/javboxpic/playpic/3817.jpg', '00:25:26', 'Mia Pearl， Tyler Steel', '大小：297.42MB', '10', '0', '0', '0', '0', '0', '1536035093', '1536035093', null);
INSERT INTO `vd_video` VALUES ('84', '/videos/sanji/7.mp4', 'https://tu.169rr.com/javboxpic/playpic/827.jpg', '01:35:26', '(中文字幕)楼上的女孩 위층 여자  ', '<p>大小：750.55MB</p><p>演员： 徐宥利</p><div><br></div>', '14', '0', '0', '0', '0', '0', '1536035306', '1536035306', null);
INSERT INTO `vd_video` VALUES ('85', '/videos/sanji/8.mp4', 'https://tu.169rr.com/javboxpic/playpic/826.jpg', '01:42:48', '(中文字幕)裸雕师欲火重生路', '<p>大小：815.70MB</p><p>演员： 朴埇佑</p>', '14', '0', '0', '0', '0', '0', '1536035385', '1536035385', null);
INSERT INTO `vd_video` VALUES ('86', '/videos/toupai/5.mp4', 'https://tu.169rr.com/javboxpic/playpic/2674.jpg', '00:04:24', '大干身材一流的校花级白皙漂亮女孩', '大小：35.46MB', '12', '0', '0', '4', '0', '0', '1536036127', '1536036127', null);
INSERT INTO `vd_video` VALUES ('87', '/videos/toupai/6.mp4', 'https://tu.169rr.com/javboxpic/playpic/2673.jpg', '00:19:36', '大鸡巴哥酒店双飞两个制服妹子2其', '大小：157.71MB', '12', '0', '0', '1', '0', '0', '1536036167', '1536036167', null);
INSERT INTO `vd_video` VALUES ('88', '/videos/rihan/cjkd2b.mp4', '/uploads/images/20180904/4eaaa0d39f4796daf09ee2c9de8ba7cb.jpg', '00:59:06', '[有码]苍井空第二部', '大小：133.MB', '9', '0', '0', '2', '0', '0', '1536036778', '1536036778', null);
INSERT INTO `vd_video` VALUES ('89', '/videos/rihan/bdyjy.mp4', '/uploads/images/20180904/d834b4f5661bd48bcfe31f07f3471e4b.jpg', '01:58:17', '巨乳家政婦波多野结衣', '<p>大小：268MB</p><p>演员：波多野结衣</p>', '9', '0', '0', '5', '0', '0', '1536050516', '1536050516', null);

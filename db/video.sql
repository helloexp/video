/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : video

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-08-25 12:16:03
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='后台管理';

-- ----------------------------
-- Records of vd_admin
-- ----------------------------
INSERT INTO `vd_admin` VALUES ('1', 'admin', 'admin', '127.0.0.1', '0', null, null, null);

-- ----------------------------
-- Table structure for vd_recommend
-- ----------------------------
DROP TABLE IF EXISTS `vd_recommend`;
CREATE TABLE `vd_recommend` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `video_id` int(8) NOT NULL COMMENT '视频id',
  `create_time` int(32) DEFAULT NULL,
  `update_time` int(32) DEFAULT NULL,
  `deleted_time` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='推荐表';

-- ----------------------------
-- Records of vd_recommend
-- ----------------------------

-- ----------------------------
-- Table structure for vd_related
-- ----------------------------
DROP TABLE IF EXISTS `vd_related`;
CREATE TABLE `vd_related` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `video_id` int(8) NOT NULL COMMENT '视频id',
  `create_time` int(32) DEFAULT NULL,
  `update_time` int(32) DEFAULT NULL,
  `deleted_time` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='相关视频';

-- ----------------------------
-- Records of vd_related
-- ----------------------------

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='数据统计表';

-- ----------------------------
-- Records of vd_statistics
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='类别表';

-- ----------------------------
-- Records of vd_type
-- ----------------------------
INSERT INTO `vd_type` VALUES ('1', '欧美', '1', '1535167724', null, null);
INSERT INTO `vd_type` VALUES ('2', '日韩', '2', '1535167724', null, null);
INSERT INTO `vd_type` VALUES ('3', '国产', '3', '1535167724', null, null);
INSERT INTO `vd_type` VALUES ('4', '三级', '4', '1535167724', null, null);
INSERT INTO `vd_type` VALUES ('5', '动漫', '5', '1535167724', null, null);
INSERT INTO `vd_type` VALUES ('6', '偷拍', '6', '1535167724', null, null);

-- ----------------------------
-- Table structure for vd_video
-- ----------------------------
DROP TABLE IF EXISTS `vd_video`;
CREATE TABLE `vd_video` (
  `id` int(8) NOT NULL,
  `url` varchar(255) NOT NULL COMMENT '视频地址',
  `img` varchar(255) DEFAULT NULL COMMENT '封面地址',
  `time` int(32) DEFAULT NULL COMMENT '视频播放时间',
  `title` varchar(255) DEFAULT NULL COMMENT '视频标题',
  `desc` text COMMENT '视频描述',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '视频类型（根据类型表来定）',
  `fabulous` int(16) NOT NULL DEFAULT '0' COMMENT '点赞',
  `step_on` int(16) NOT NULL DEFAULT '0' COMMENT '踩',
  `watch_count` int(32) NOT NULL DEFAULT '0' COMMENT '观看次数',
  `is_hd` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-代表高清  0-代表不是高清',
  `create_time` int(32) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(32) DEFAULT NULL COMMENT '更新时间',
  `deleted_time` int(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='视频表';

-- ----------------------------
-- Records of vd_video
-- ----------------------------

/*
Navicat MySQL Data Transfer

Source Server         : xp
Source Server Version : 50018
Source Host           : localhost:3306
Source Database       : watch

Target Server Type    : MYSQL
Target Server Version : 50018
File Encoding         : 65001

Date: 2016-07-23 11:29:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `orderdetail`
-- ----------------------------
DROP TABLE IF EXISTS `orderdetail`;
CREATE TABLE `orderdetail` (
  `odid` varchar(200) NOT NULL COMMENT '明细id',
  `orderid` varchar(100) NOT NULL COMMENT '订单编号',
  `watchcode` varchar(100) NOT NULL COMMENT '编号',
  `number` int(11) NOT NULL COMMENT '手表数量',
  PRIMARY KEY  (`odid`),
  KEY `orderid` (`orderid`),
  KEY `watchcode` (`watchcode`),
  CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`watchcode`) REFERENCES `watch` (`watchcode`),
  CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`orderid`) REFERENCES `orders` (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderdetail
-- ----------------------------

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orderid` varchar(100) NOT NULL COMMENT '订单编号',
  `userid` varchar(30) NOT NULL COMMENT '账户id',
  `tousername` varchar(255) NOT NULL COMMENT '收货人姓名',
  `tousertel` varchar(11) NOT NULL COMMENT '收货人电话',
  `touseraddrs` varchar(255) NOT NULL COMMENT '收货人地址',
  `totalprice` decimal(10,0) NOT NULL COMMENT '总金额',
  `ordertime` datetime NOT NULL COMMENT '下单时间',
  `orderStatus` int(11) NOT NULL COMMENT '订单状态',
  `remark` varchar(255) NOT NULL COMMENT '备注',
  PRIMARY KEY  (`orderid`),
  KEY `userid` (`userid`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `userid` varchar(255) NOT NULL COMMENT '账户id',
  `username` varchar(255) NOT NULL COMMENT '用户名称',
  `password` varchar(255) NOT NULL COMMENT '密码',
  `tel` varchar(255) NOT NULL COMMENT '手机',
  `regtime` datetime NOT NULL COMMENT '注册时间',
  PRIMARY KEY  (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------

-- ----------------------------
-- Table structure for `watch`
-- ----------------------------
DROP TABLE IF EXISTS `watch`;
CREATE TABLE `watch` (
  `watchcode` varchar(100) NOT NULL COMMENT '编号',
  `watchname` varchar(50) NOT NULL COMMENT '名称',
  `style` varchar(255) NOT NULL COMMENT '款式',
  `material` varchar(255) NOT NULL COMMENT '材料',
  `image` varchar(255) NOT NULL COMMENT '图片',
  `price` decimal(10,0) NOT NULL COMMENT '市场价',
  `cprice` decimal(10,0) NOT NULL COMMENT '现价',
  `deliverArea` varchar(255) NOT NULL COMMENT '配送范围',
  `noteTime` datetime NOT NULL COMMENT '上架时间',
  `status` int(11) NOT NULL default '1' COMMENT '状态',
  PRIMARY KEY  (`watchcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of watch
-- ----------------------------
INSERT INTO `watch` VALUES ('1000001', '蓝气球系列机械表', '男款', '不锈钢', '200510323403971311.jpg', '48500', '37998', '全国', '2016-06-23 12:30:32', '0');
INSERT INTO `watch` VALUES ('1000002', '蓝气球系列机械表', '女款', '精钢', '200510323403971312.jpg', '52500', '47998', '全国', '2016-06-23 12:30:32', '0');
INSERT INTO `watch` VALUES ('1000003', '卡地亚系列机械表', '女款', '18K玫瑰金', '200510323403971313.jpg', '37800', '30998', '全国', '2016-06-23 12:30:32', '0');
INSERT INTO `watch` VALUES ('1000004', '卡地亚系列机械表', '男款', '精钢', '200510323403971314.jpg', '16000', '15598', '全国', '2016-06-23 12:30:32', '0');
INSERT INTO `watch` VALUES ('1000005', '蓝气球系列机械表', '女款', '不锈钢', '200510323403971315.jpg', '47700', '45098', '全国', '2016-06-23 12:30:32', '0');
INSERT INTO `watch` VALUES ('1000006', '卡地亚系列机械表', '男款', '精钢', '200510323403971316.jpg', '46900', '40700', '全国', '2016-06-23 12:30:32', '0');
INSERT INTO `watch` VALUES ('1000007', '卡地亚系列机械表', '女款', '精钢', '200510323403971317.jpg', '34400', '30400', '全国', '2016-06-23 12:30:32', '0');
INSERT INTO `watch` VALUES ('1000008', '卡地亚系列机械表', '男款', '精钢', '200510323403971318.jpg', '144000', '156000', '全国', '2016-06-23 12:30:32', '0');

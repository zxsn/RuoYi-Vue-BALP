/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80033 (8.0.33)
 Source Host           : localhost:3306
 Source Schema         : ruoyi

 Target Server Type    : MySQL
 Target Server Version : 80033 (8.0.33)
 File Encoding         : 65001

 Date: 06/05/2023 00:51:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for balp_parts
-- ----------------------------
DROP TABLE IF EXISTS `balp_parts`;
CREATE TABLE `balp_parts`  (
  `id` char(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '序号',
  `project_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '项目编号',
  `parts_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '零组件名称',
  `parts_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '零组件号',
  `model_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '模型号',
  `number` int NULL DEFAULT NULL COMMENT '数量',
  `version` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '版次',
  `sort` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类',
  `deal_shop` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分配车间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `project_id`(`project_id` ASC) USING BTREE,
  CONSTRAINT `balp_parts_ibfk_1` FOREIGN KEY (`project_id`) REFERENCES `balp_project` (`project_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '零组件表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of balp_parts
-- ----------------------------

-- ----------------------------
-- Table structure for balp_project
-- ----------------------------
DROP TABLE IF EXISTS `balp_project`;
CREATE TABLE `balp_project`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '编号',
  `project_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '项目编号',
  `project_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '项目名称',
  `customer` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '客户',
  `offer_node` date NOT NULL COMMENT '报价节点',
  `offer_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '报价状态',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `project_name`(`project_name` ASC) USING BTREE,
  INDEX `project_id`(`project_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '项目表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of balp_project
-- ----------------------------
INSERT INTO `balp_project` VALUES (1, 'BALP12', '发动机部件项目', '崔記有限责任公司', '2017-03-27', '0', '史宇宁', '2010-09-26 22:16:11', '史宇宁', '2023-05-02 17:30:33', 'If you wait, all that happens is you get older. The first step is as good as half over. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated.');
INSERT INTO `balp_project` VALUES (2, 'BALP13', '火车轨道项目', '孔有限责任公司', '2018-12-04', '1', '杨云熙', '2000-01-05 10:20:40', '杨云熙', '2023-05-02 17:30:42', 'To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane.');
INSERT INTO `balp_project` VALUES (3, 'BALP14', '组装厂项目', '孟記有限责任公司', '2017-01-24', '1', '林晓明', '2020-11-26 16:55:25', '林晓明', '2023-05-02 17:30:49', 'Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud.');
INSERT INTO `balp_project` VALUES (4, 'BALP15', '汽车刹车项目', '子韬物业代理有限责任公司', '2013-04-16', '0', '龙震南', '2005-07-27 06:08:10', '龙震南', '2023-05-02 17:30:57', 'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s shell without compromising security. SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s shell without compromising security.');
INSERT INTO `balp_project` VALUES (5, 'BALP16', '飞机机翼项目', '璐系统有限责任公司', '2013-04-16', '1', '石安琪', '2023-02-23 19:21:44', '石安琪', '2023-05-02 17:31:04', 'To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords                ');

SET FOREIGN_KEY_CHECKS = 1;

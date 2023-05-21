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

 Date: 18/05/2023 01:16:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for balp_external_parts
-- ----------------------------
DROP TABLE IF EXISTS `balp_external_parts`;
CREATE TABLE `balp_external_parts`  (
  `seqno` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '序号',
  `external_parts` int NULL DEFAULT NULL COMMENT '是否外购件',
  `inquiry_dept` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '负责询价部门',
  `unit_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '单价'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '外购件表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of balp_external_parts
-- ----------------------------

-- ----------------------------
-- Table structure for balp_parts
-- ----------------------------
DROP TABLE IF EXISTS `balp_parts`;
CREATE TABLE `balp_parts`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `seqno` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '序号',
  `project_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '项目编号',
  `parts_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '零组件名称',
  `parts_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '零组件号',
  `model_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '模型号',
  `number` int NULL DEFAULT NULL COMMENT '数量',
  `version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '版次',
  `sort` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类',
  `deal_shop` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分配车间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `project_id`(`project_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '零组件表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of balp_parts
-- ----------------------------
INSERT INTO `balp_parts` VALUES (1, '3', 'BALP12', '支架座组件', '7262C1A9801G03', '1', 1, '1', '2', '1', NULL, '2023-05-13 00:06:20', NULL, NULL, '121');
INSERT INTO `balp_parts` VALUES (17, '2', 'BALP12', '1', '1', '1', 1, 'C', '1', '2', NULL, '2023-05-13 00:31:44', NULL, NULL, NULL);
INSERT INTO `balp_parts` VALUES (19, '1', NULL, '123', '123', '123', 1, 'C', '1', '精密', NULL, '2023-05-13 00:51:42', NULL, NULL, '123123');
INSERT INTO `balp_parts` VALUES (20, '1', NULL, '支架座组件', '7262C1A9801G03', '13188300374285', 1, 'C', '1', '结构', NULL, '2023-05-13 01:04:15', NULL, NULL, '支架座组件');

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
INSERT INTO `balp_project` VALUES (1, 'BALP12', '发动机部件项目', '崔記有限责任公司', '2023-06-07', '0', '史宇宁', '2010-09-26 22:16:11', '史宇宁', '2023-05-07 22:30:24', 'If you wait, all that happens is you get older. The first step is as good as half over. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated.');
INSERT INTO `balp_project` VALUES (2, 'BALP13', '火车轨道项目', '孔有限责任公司', '2018-12-04', '1', '杨云熙', '2000-01-05 10:20:40', '杨云熙', '2023-05-02 17:30:42', 'To get a secure connection, the first thing you need to do is to install OpenSSL Library and download Database Source. After logged in the Navicat Cloud feature, the Navigation pane will be divided into Navicat Cloud and My Connections sections. You can select any connections, objects or projects, and then select the corresponding buttons on the Information Pane.');
INSERT INTO `balp_project` VALUES (3, 'BALP14', '组装厂项目', '孟記有限责任公司', '2017-01-24', '1', '林晓明', '2020-11-26 16:55:25', '林晓明', '2023-05-02 17:30:49', 'Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords and data (e.g. tables, views, etc) will not be stored to Navicat Cloud.');
INSERT INTO `balp_project` VALUES (4, 'BALP15', '汽车刹车项目', '子韬物业代理有限责任公司', '2023-07-10', '0', '龙震南', '2005-07-27 06:08:10', '龙震南', '2023-05-07 22:30:38', 'SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s shell without compromising security. SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s shell without compromising security.');
INSERT INTO `balp_project` VALUES (5, 'BALP16', '飞机机翼项目', '璐系统有限责任公司', '2013-04-16', '1', '石安琪', '2023-02-23 19:21:44', '石安琪', '2023-05-02 17:31:04', 'To start working with your server in Navicat, you should first establish a connection or several connections using the Connection window. The Navigation pane employs tree structure which allows you to take action upon the database and their objects through their pop-up menus quickly and easily. Navicat Cloud could not connect and access your databases. By which it means, it could only store your connection settings, queries, model files, and virtual group; your database passwords                ');

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (3, 'balp_project', '项目表', NULL, NULL, 'BalpProject', 'crud', 'com.ruoyi.balp', 'balp', 'project', '项目管理', 'hdc', '0', '/', '{\"parentMenuId\":2013}', 'admin', '2023-05-07 21:45:43', '', '2023-05-07 21:57:57', NULL);
INSERT INTO `gen_table` VALUES (4, 'balp_parts', '零组件表', NULL, NULL, 'BalpParts', 'crud', 'com.hdc.parts', 'balp', 'parts', '零组件', 'hdc', '0', '/', '{\"parentMenuId\":\"2013\"}', 'admin', '2023-05-07 22:51:35', '', '2023-05-13 23:57:38', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (26, '3', 'id', '编号', 'int', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-05-07 21:45:43', '', '2023-05-07 21:57:57');
INSERT INTO `gen_table_column` VALUES (27, '3', 'project_id', '项目编号', 'varchar(32)', 'String', 'projectId', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-05-07 21:45:43', '', '2023-05-07 21:57:57');
INSERT INTO `gen_table_column` VALUES (28, '3', 'project_name', '项目名称', 'varchar(200)', 'String', 'projectName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-05-07 21:45:43', '', '2023-05-07 21:57:57');
INSERT INTO `gen_table_column` VALUES (29, '3', 'customer', '客户', 'varchar(100)', 'String', 'customer', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2023-05-07 21:45:43', '', '2023-05-07 21:57:57');
INSERT INTO `gen_table_column` VALUES (30, '3', 'offer_node', '报价节点', 'date', 'Date', 'offerNode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2023-05-07 21:45:43', '', '2023-05-07 21:57:57');
INSERT INTO `gen_table_column` VALUES (31, '3', 'offer_status', '报价状态', 'char(1)', 'String', 'offerStatus', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'sys_project_status', 6, 'admin', '2023-05-07 21:45:43', '', '2023-05-07 21:57:57');
INSERT INTO `gen_table_column` VALUES (32, '3', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2023-05-07 21:45:43', '', '2023-05-07 21:57:57');
INSERT INTO `gen_table_column` VALUES (33, '3', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-05-07 21:45:43', '', '2023-05-07 21:57:57');
INSERT INTO `gen_table_column` VALUES (34, '3', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2023-05-07 21:45:43', '', '2023-05-07 21:57:57');
INSERT INTO `gen_table_column` VALUES (35, '3', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2023-05-07 21:45:43', '', '2023-05-07 21:57:57');
INSERT INTO `gen_table_column` VALUES (36, '3', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '0', NULL, 'EQ', 'textarea', '', 11, 'admin', '2023-05-07 21:45:43', '', '2023-05-07 21:57:57');
INSERT INTO `gen_table_column` VALUES (37, '4', 'id', '主键', 'char(6)', 'Long', 'id', '0', '0', '0', '1', '0', '0', '0', 'EQ', 'input', '', 1, 'admin', '2023-05-07 22:51:35', '', '2023-05-13 23:57:38');
INSERT INTO `gen_table_column` VALUES (38, '4', 'project_id', '项目编号', 'varchar(32)', 'String', 'projectId', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-05-07 22:51:35', '', '2023-05-13 23:57:38');
INSERT INTO `gen_table_column` VALUES (39, '4', 'parts_name', '零组件名称', 'varchar(255)', 'String', 'partsName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2023-05-07 22:51:35', '', '2023-05-13 23:57:38');
INSERT INTO `gen_table_column` VALUES (40, '4', 'parts_no', '零组件号', 'varchar(100)', 'String', 'partsNo', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-05-07 22:51:35', '', '2023-05-13 23:57:38');
INSERT INTO `gen_table_column` VALUES (41, '4', 'model_no', '模型号', 'varchar(100)', 'String', 'modelNo', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-05-07 22:51:35', '', '2023-05-13 23:57:38');
INSERT INTO `gen_table_column` VALUES (42, '4', 'number', '数量', 'int', 'Long', 'number', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-05-07 22:51:35', '', '2023-05-13 23:57:38');
INSERT INTO `gen_table_column` VALUES (43, '4', 'version', '版次', 'char(1)', 'String', 'version', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-05-07 22:51:35', '', '2023-05-13 23:57:38');
INSERT INTO `gen_table_column` VALUES (44, '4', 'sort', '分类', 'varchar(100)', 'String', 'sort', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'sys_parts_classfication', 9, 'admin', '2023-05-07 22:51:35', '', '2023-05-13 23:57:38');
INSERT INTO `gen_table_column` VALUES (45, '4', 'deal_shop', '分配车间', 'varchar(100)', 'String', 'dealShop', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'sys_deal_shop', 10, 'admin', '2023-05-07 22:51:35', '', '2023-05-13 23:57:38');
INSERT INTO `gen_table_column` VALUES (46, '4', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2023-05-07 22:51:35', '', '2023-05-13 23:57:38');
INSERT INTO `gen_table_column` VALUES (47, '4', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2023-05-07 22:51:35', '', '2023-05-13 23:57:38');
INSERT INTO `gen_table_column` VALUES (48, '4', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2023-05-07 22:51:35', '', '2023-05-13 23:57:38');
INSERT INTO `gen_table_column` VALUES (49, '4', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2023-05-07 22:51:35', '', '2023-05-13 23:57:38');
INSERT INTO `gen_table_column` VALUES (50, '4', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 15, 'admin', '2023-05-07 22:51:35', '', '2023-05-13 23:57:38');
INSERT INTO `gen_table_column` VALUES (51, '4', 'seqno', '序号', 'varchar(255)', 'String', 'seqno', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, '', '2023-05-12 23:49:56', '', '2023-05-13 23:57:38');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name` ASC, `job_name` ASC, `job_group` ASC) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2023-05-05 23:59:50', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2023-05-05 23:59:50', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2023-05-05 23:59:50', '', NULL, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2023-05-05 23:59:50', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2023-05-05 23:59:50', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (6, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2023-05-05 23:59:50', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-05-05 23:59:47', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-05-05 23:59:47', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-05-05 23:59:47', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-05-05 23:59:47', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-05-05 23:59:47', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-05-05 23:59:47', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-05-05 23:59:47', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-05-05 23:59:47', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-05-05 23:59:47', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2023-05-05 23:59:47', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-05-05 23:59:50', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-05-05 23:59:50', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-05-05 23:59:50', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-05-05 23:59:50', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-05-05 23:59:50', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-05-05 23:59:50', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-05-05 23:59:50', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2023-05-05 23:59:50', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2023-05-05 23:59:50', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2023-05-05 23:59:50', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2023-05-05 23:59:50', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-05-05 23:59:50', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-05-05 23:59:50', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-05-05 23:59:50', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-05-05 23:59:50', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-05-05 23:59:50', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-05-05 23:59:50', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-05-05 23:59:50', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-05-05 23:59:50', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-05-05 23:59:50', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-05-05 23:59:50', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-05-05 23:59:50', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-05-05 23:59:50', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-05-05 23:59:50', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-05-05 23:59:50', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-05-05 23:59:50', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-05-05 23:59:50', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-05-05 23:59:50', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-05-05 23:59:50', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 1, '已完成', '1', 'sys_project_status', '', 'success', 'N', '0', 'admin', '2023-05-06 00:17:33', 'admin', '2023-05-06 01:30:22', '已完成');
INSERT INTO `sys_dict_data` VALUES (101, 2, '进行中', '0', 'sys_project_status', 'badge-success', 'primary', 'N', '0', 'admin', '2023-05-06 00:19:55', 'admin', '2023-05-06 01:30:29', '进行中');
INSERT INTO `sys_dict_data` VALUES (102, 1, '标准件', '1', 'sys_parts_classfication', NULL, 'default', 'N', '0', 'admin', '2023-05-12 23:46:08', '', NULL, '标准件');
INSERT INTO `sys_dict_data` VALUES (103, 2, '普通件', '2', 'sys_parts_classfication', NULL, 'default', 'N', '0', 'admin', '2023-05-12 23:46:45', '', NULL, '普通件');
INSERT INTO `sys_dict_data` VALUES (104, 1, '结构', '1', 'sys_deal_shop', NULL, 'info', 'N', '0', 'admin', '2023-05-13 01:12:19', 'admin', '2023-05-13 01:14:31', '结构');
INSERT INTO `sys_dict_data` VALUES (105, 2, '精密', '2', 'sys_deal_shop', NULL, 'primary', 'N', '0', 'admin', '2023-05-13 01:12:30', 'admin', '2023-05-13 01:14:54', '精密');
INSERT INTO `sys_dict_data` VALUES (106, 1, '是', '1', 'sys_external_parts', NULL, 'primary', 'N', '0', 'admin', '2023-05-14 00:09:56', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (107, 2, '否', '2', 'sys_external_parts', NULL, 'primary', 'N', '0', 'admin', '2023-05-14 00:10:06', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (108, 1, '营销部', '1', 'sys_inquiry_dept', NULL, 'success', 'N', '0', 'admin', '2023-05-14 00:10:38', '', NULL, '营销部');
INSERT INTO `sys_dict_data` VALUES (109, 2, '技术部', '2', 'sys_inquiry_dept', NULL, 'success', 'N', '0', 'admin', '2023-05-14 00:10:48', '', NULL, '技术部');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2023-05-05 23:59:49', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2023-05-05 23:59:49', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2023-05-05 23:59:49', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2023-05-05 23:59:49', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2023-05-05 23:59:49', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2023-05-05 23:59:49', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2023-05-05 23:59:49', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2023-05-05 23:59:49', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2023-05-05 23:59:49', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2023-05-05 23:59:49', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '项目状态', 'sys_project_status', '0', 'admin', '2023-05-06 00:15:22', 'admin', '2023-05-06 00:19:16', '项目状态列表');
INSERT INTO `sys_dict_type` VALUES (101, '零组件分类', 'sys_parts_classfication', '0', 'admin', '2023-05-12 23:44:26', '', NULL, '零组件分类');
INSERT INTO `sys_dict_type` VALUES (102, '分配车间', 'sys_deal_shop', '0', 'admin', '2023-05-13 01:11:36', '', NULL, '分配车间');
INSERT INTO `sys_dict_type` VALUES (103, '是否外购件', 'sys_external_parts', '0', 'admin', '2023-05-14 00:08:55', '', NULL, '是否外购件');
INSERT INTO `sys_dict_type` VALUES (104, '负责询价部门', 'sys_inquiry_dept', '0', 'admin', '2023-05-14 00:09:31', '', NULL, '负责询价部门');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2023-05-05 23:59:50', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2023-05-05 23:59:50', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2023-05-05 23:59:50', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 135 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-06 00:00:47');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-06 01:09:36');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-06 01:09:42');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-06 01:10:04');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-06 01:10:07');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-06 01:31:23');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-06 01:49:13');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-07 13:41:15');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-07 16:08:41');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-07 21:24:15');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-08 01:26:28');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-08 02:22:55');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-08 02:22:58');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-08 02:28:44');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-08 02:28:47');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-08 02:49:28');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-08 23:43:04');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-09 00:15:05');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-10 03:04:42');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-10 21:31:28');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-10 23:29:34');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-11 01:06:34');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-11 01:06:39');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-11 02:01:23');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-12 22:50:50');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-12 23:49:39');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-05-12 23:49:43');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-05-12 23:49:44');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-12 23:49:47');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-13 20:26:44');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-13 21:50:56');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-05-14 00:20:40');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-14 00:20:53');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-16 22:45:47');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-05-17 00:02:15');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2032 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2023-05-05 23:59:48', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2023-05-05 23:59:48', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2023-05-05 23:59:48', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2023-05-05 23:59:48', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2023-05-05 23:59:48', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2023-05-05 23:59:48', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2023-05-05 23:59:48', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2023-05-05 23:59:48', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2023-05-05 23:59:48', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2023-05-05 23:59:48', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2023-05-05 23:59:48', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2023-05-05 23:59:48', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2023-05-05 23:59:48', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2023-05-05 23:59:48', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2023-05-05 23:59:48', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2023-05-05 23:59:48', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2023-05-05 23:59:48', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2023-05-05 23:59:48', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2023-05-05 23:59:48', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2023-05-05 23:59:48', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2023-05-05 23:59:48', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2023-05-05 23:59:48', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2023-05-05 23:59:48', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2023-05-05 23:59:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2023-05-05 23:59:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2023-05-05 23:59:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2023-05-05 23:59:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2023-05-05 23:59:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2023-05-05 23:59:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2023-05-05 23:59:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2023-05-05 23:59:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2023-05-05 23:59:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2013, '报价系统', 0, 0, 'balp', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'shopping', 'admin', '2023-05-07 21:50:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2020, '项目管理', 2013, 1, 'project', 'balp/project/index', NULL, 1, 0, 'C', '0', '0', 'balp:project:list', 'form', 'admin', '2023-05-07 22:00:59', 'admin', '2023-05-07 22:01:49', '项目管理菜单');
INSERT INTO `sys_menu` VALUES (2021, '项目管理查询', 2020, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'balp:project:query', '#', 'admin', '2023-05-07 22:00:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2022, '项目管理新增', 2020, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'balp:project:add', '#', 'admin', '2023-05-07 22:00:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '项目管理修改', 2020, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'balp:project:edit', '#', 'admin', '2023-05-07 22:00:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2024, '项目管理删除', 2020, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'balp:project:remove', '#', 'admin', '2023-05-07 22:00:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2025, '项目管理导出', 2020, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'balp:project:export', '#', 'admin', '2023-05-07 22:00:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2026, '零组件', 2013, 1, 'parts', 'balp/parts/index', NULL, 1, 0, 'C', '1', '0', 'balp:parts:list', 'tab', 'admin', '2023-05-07 23:03:05', 'admin', '2023-05-13 01:52:00', '零组件菜单');
INSERT INTO `sys_menu` VALUES (2027, '零组件查询', 2026, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'balp:parts:query', '#', 'admin', '2023-05-07 23:03:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2028, '零组件新增', 2026, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'balp:parts:add', '#', 'admin', '2023-05-07 23:03:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2029, '零组件修改', 2026, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'balp:parts:edit', '#', 'admin', '2023-05-07 23:03:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2030, '零组件删除', 2026, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'balp:parts:remove', '#', 'admin', '2023-05-07 23:03:05', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2031, '零组件导出', 2026, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'balp:parts:export', '#', 'admin', '2023-05-07 23:03:05', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2023-05-05 23:59:50', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2023-05-05 23:59:50', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 227 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"balp_project,balp_parts\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-06 00:12:34', 75);
INSERT INTO `sys_oper_log` VALUES (101, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"项目状态\",\"dictType\":\"sys_project_status\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-06 00:15:22', 7);
INSERT INTO `sys_oper_log` VALUES (102, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"已完成\",\"dictSort\":1,\"dictType\":\"sys_project_status\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"remark\":\"已完成\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-06 00:17:33', 15);
INSERT INTO `sys_oper_log` VALUES (103, '字典类型', 2, 'com.ruoyi.web.controller.system.SysDictTypeController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-05-06 00:15:22\",\"dictId\":100,\"dictName\":\"项目状态\",\"dictType\":\"sys_project_status\",\"params\":{},\"remark\":\"项目状态列表\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-06 00:19:16', 11);
INSERT INTO `sys_oper_log` VALUES (104, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"进行中\",\"dictSort\":2,\"dictType\":\"sys_project_status\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"remark\":\"进行中\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-06 00:19:55', 17);
INSERT INTO `sys_oper_log` VALUES (105, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-05-06 00:17:33\",\"cssClass\":\"badge-primary\",\"default\":false,\"dictCode\":100,\"dictLabel\":\"已完成\",\"dictSort\":1,\"dictType\":\"sys_project_status\",\"dictValue\":\"1\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"remark\":\"已完成\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-06 00:22:46', 15);
INSERT INTO `sys_oper_log` VALUES (106, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-05-06 00:19:55\",\"cssClass\":\"badge-success\",\"default\":false,\"dictCode\":101,\"dictLabel\":\"进行中\",\"dictSort\":2,\"dictType\":\"sys_project_status\",\"dictValue\":\"0\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"remark\":\"进行中\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-06 00:23:00', 7);
INSERT INTO `sys_oper_log` VALUES (107, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"shopping\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"报价系统\",\"menuType\":\"M\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"path\":\"balp\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-06 00:26:30', 17);
INSERT INTO `sys_oper_log` VALUES (108, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"project\",\"className\":\"BalpProject\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":15,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-06 00:12:34\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ProjectId\",\"columnComment\":\"项目编号\",\"columnId\":16,\"columnName\":\"project_id\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-06 00:12:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"projectId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ProjectName\",\"columnComment\":\"项目名称\",\"columnId\":17,\"columnName\":\"project_name\",\"columnType\":\"varchar(200)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-06 00:12:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"projectName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Customer\",\"columnComment\":\"客户\",\"columnId\":18,\"columnName\":\"customer\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-06 00:12:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"cu', NULL, 1, '树编码字段不能为空', '2023-05-06 00:26:45', 6);
INSERT INTO `sys_oper_log` VALUES (109, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"project\",\"className\":\"BalpProject\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":15,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-06 00:12:34\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ProjectId\",\"columnComment\":\"项目编号\",\"columnId\":16,\"columnName\":\"project_id\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-06 00:12:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"projectId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ProjectName\",\"columnComment\":\"项目名称\",\"columnId\":17,\"columnName\":\"project_name\",\"columnType\":\"varchar(200)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-06 00:12:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"projectName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Customer\",\"columnComment\":\"客户\",\"columnId\":18,\"columnName\":\"customer\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-06 00:12:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"cu', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-06 00:27:22', 23);
INSERT INTO `sys_oper_log` VALUES (110, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"project\",\"className\":\"BalpProject\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":15,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-06 00:12:34\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-05-06 00:27:22\",\"usableColumn\":false},{\"capJavaField\":\"ProjectId\",\"columnComment\":\"项目编号\",\"columnId\":16,\"columnName\":\"project_id\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-06 00:12:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"projectId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-05-06 00:27:22\",\"usableColumn\":false},{\"capJavaField\":\"ProjectName\",\"columnComment\":\"项目名称\",\"columnId\":17,\"columnName\":\"project_name\",\"columnType\":\"varchar(200)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-06 00:12:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"projectName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-05-06 00:27:22\",\"usableColumn\":false},{\"capJavaField\":\"Customer\",\"columnComment\":\"客户\",\"columnId\":18,\"columnName\":\"customer\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-06 00:12:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-06 00:28:15', 24);
INSERT INTO `sys_oper_log` VALUES (111, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"project\",\"className\":\"BalpProject\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":15,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-06 00:12:34\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-05-06 00:28:15\",\"usableColumn\":false},{\"capJavaField\":\"ProjectId\",\"columnComment\":\"项目编号\",\"columnId\":16,\"columnName\":\"project_id\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-06 00:12:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"projectId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-05-06 00:28:15\",\"usableColumn\":false},{\"capJavaField\":\"ProjectName\",\"columnComment\":\"项目名称\",\"columnId\":17,\"columnName\":\"project_name\",\"columnType\":\"varchar(200)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-06 00:12:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"projectName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-05-06 00:28:15\",\"usableColumn\":false},{\"capJavaField\":\"Customer\",\"columnComment\":\"客户\",\"columnId\":18,\"columnName\":\"customer\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-06 00:12:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-06 00:40:31', 30);
INSERT INTO `sys_oper_log` VALUES (112, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"parts\",\"className\":\"BalpParts\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"序号\",\"columnId\":1,\"columnName\":\"id\",\"columnType\":\"char(6)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-06 00:12:34\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ProjectId\",\"columnComment\":\"项目编号\",\"columnId\":2,\"columnName\":\"project_id\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-06 00:12:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"projectId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PartsName\",\"columnComment\":\"零组件名称\",\"columnId\":3,\"columnName\":\"parts_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-06 00:12:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"partsName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PartsNo\",\"columnComment\":\"零组件号\",\"columnId\":4,\"columnName\":\"parts_no\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-06 00:12:34\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"partsNo\",\"javaType\":\"St', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-06 00:42:12', 17);
INSERT INTO `sys_oper_log` VALUES (113, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"balp_project\"}', NULL, 0, NULL, '2023-05-06 00:42:54', 29);
INSERT INTO `sys_oper_log` VALUES (114, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"balp_parts\"}', NULL, 0, NULL, '2023-05-06 00:48:39', 26);
INSERT INTO `sys_oper_log` VALUES (115, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2023-05-06 01:14:39', 6);
INSERT INTO `sys_oper_log` VALUES (116, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-05-05 23:59:48\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[3,1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,115,116,1055,1056,1057,1058,1059,1060,117],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-06 01:15:18', 40);
INSERT INTO `sys_oper_log` VALUES (117, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-06 01:15:23', 8);
INSERT INTO `sys_oper_log` VALUES (118, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-05-06 00:17:33\",\"cssClass\":\"\",\"default\":false,\"dictCode\":100,\"dictLabel\":\"已完成\",\"dictSort\":1,\"dictType\":\"sys_project_status\",\"dictValue\":\"1\",\"isDefault\":\"N\",\"listClass\":\"success\",\"params\":{},\"remark\":\"已完成\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-06 01:30:22', 8);
INSERT INTO `sys_oper_log` VALUES (119, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-05-06 00:19:55\",\"cssClass\":\"badge-success\",\"default\":false,\"dictCode\":101,\"dictLabel\":\"进行中\",\"dictSort\":2,\"dictType\":\"sys_project_status\",\"dictValue\":\"0\",\"isDefault\":\"N\",\"listClass\":\"primary\",\"params\":{},\"remark\":\"进行中\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-06 01:30:29', 15);
INSERT INTO `sys_oper_log` VALUES (120, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/1,2', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-07 21:45:02', 17);
INSERT INTO `sys_oper_log` VALUES (121, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"balp_project\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-07 21:45:43', 40);
INSERT INTO `sys_oper_log` VALUES (122, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"project\",\"className\":\"BalpProject\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":26,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 21:45:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ProjectId\",\"columnComment\":\"项目编号\",\"columnId\":27,\"columnName\":\"project_id\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 21:45:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"projectId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ProjectName\",\"columnComment\":\"项目名称\",\"columnId\":28,\"columnName\":\"project_name\",\"columnType\":\"varchar(200)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 21:45:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"projectName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Customer\",\"columnComment\":\"客户\",\"columnId\":29,\"columnName\":\"customer\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 21:45:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-07 21:49:02', 27);
INSERT INTO `sys_oper_log` VALUES (123, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"shopping\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"报价系统\",\"menuType\":\"M\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"path\":\"balp\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-07 21:50:15', 20);
INSERT INTO `sys_oper_log` VALUES (124, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"balp_project\"}', NULL, 0, NULL, '2023-05-07 21:51:19', 35);
INSERT INTO `sys_oper_log` VALUES (125, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"project\",\"className\":\"BalpProject\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"编号\",\"columnId\":26,\"columnName\":\"id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 21:45:43\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2023-05-07 21:49:02\",\"usableColumn\":false},{\"capJavaField\":\"ProjectId\",\"columnComment\":\"项目编号\",\"columnId\":27,\"columnName\":\"project_id\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 21:45:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"projectId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2023-05-07 21:49:02\",\"usableColumn\":false},{\"capJavaField\":\"ProjectName\",\"columnComment\":\"项目名称\",\"columnId\":28,\"columnName\":\"project_name\",\"columnType\":\"varchar(200)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 21:45:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"projectName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"updateTime\":\"2023-05-07 21:49:02\",\"usableColumn\":false},{\"capJavaField\":\"Customer\",\"columnComment\":\"客户\",\"columnId\":29,\"columnName\":\"customer\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 21:45:43\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-07 21:57:57', 67);
INSERT INTO `sys_oper_log` VALUES (126, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2014', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', 0, NULL, '2023-05-07 21:59:10', 3);
INSERT INTO `sys_oper_log` VALUES (127, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2015', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-07 21:59:15', 23);
INSERT INTO `sys_oper_log` VALUES (128, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2016', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-07 21:59:19', 6);
INSERT INTO `sys_oper_log` VALUES (129, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2017', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-07 21:59:22', 8);
INSERT INTO `sys_oper_log` VALUES (130, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2018', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-07 21:59:25', 16);
INSERT INTO `sys_oper_log` VALUES (131, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2019', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-07 21:59:29', 7);
INSERT INTO `sys_oper_log` VALUES (132, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2014', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-07 21:59:32', 7);
INSERT INTO `sys_oper_log` VALUES (133, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"balp_project\"}', NULL, 0, NULL, '2023-05-07 21:59:45', 30);
INSERT INTO `sys_oper_log` VALUES (134, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"balp/project/index\",\"createTime\":\"2023-05-07 22:00:59\",\"icon\":\"form\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2020,\"menuName\":\"项目管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2013,\"path\":\"project\",\"perms\":\"balp:project:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-07 22:01:49', 19);
INSERT INTO `sys_oper_log` VALUES (135, '项目管理', 2, 'com.ruoyi.balp.controller.BalpProjectController.edit()', 'PUT', 1, 'admin', NULL, '/balp/project', '127.0.0.1', '内网IP', '{\"createBy\":\"史宇宁\",\"createTime\":\"2010-09-26 22:16:11\",\"customer\":\"崔記有限责任公司\",\"id\":1,\"offerNode\":\"2023-06-07\",\"offerStatus\":\"0\",\"params\":{},\"projectId\":\"BALP12\",\"projectName\":\"发动机部件项目\",\"remark\":\"If you wait, all that happens is you get older. The first step is as good as half over. Such sessions are also susceptible to session hijacking, where a malicious user takes over your session once you have authenticated.\",\"updateBy\":\"史宇宁\",\"updateTime\":\"2023-05-07 22:30:23\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-07 22:30:23', 32);
INSERT INTO `sys_oper_log` VALUES (136, '项目管理', 2, 'com.ruoyi.balp.controller.BalpProjectController.edit()', 'PUT', 1, 'admin', NULL, '/balp/project', '127.0.0.1', '内网IP', '{\"createBy\":\"龙震南\",\"createTime\":\"2005-07-27 06:08:10\",\"customer\":\"子韬物业代理有限责任公司\",\"id\":4,\"offerNode\":\"2023-07-10\",\"offerStatus\":\"0\",\"params\":{},\"projectId\":\"BALP15\",\"projectName\":\"汽车刹车项目\",\"remark\":\"SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s shell without compromising security. SSH serves to prevent such vulnerabilities and allows you to access a remote server\'s shell without compromising security.\",\"updateBy\":\"龙震南\",\"updateTime\":\"2023-05-07 22:30:38\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-07 22:30:38', 5);
INSERT INTO `sys_oper_log` VALUES (137, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"balp_parts\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-07 22:51:35', 58);
INSERT INTO `sys_oper_log` VALUES (138, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"parts\",\"className\":\"BalpParts\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"序号\",\"columnId\":37,\"columnName\":\"id\",\"columnType\":\"char(6)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"id\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ProjectId\",\"columnComment\":\"项目编号\",\"columnId\":38,\"columnName\":\"project_id\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"projectId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PartsName\",\"columnComment\":\"零组件名称\",\"columnId\":39,\"columnName\":\"parts_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"partsName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PartsNo\",\"columnComment\":\"零组件号\",\"columnId\":40,\"columnName\":\"parts_no\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQu', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-07 22:54:50', 33);
INSERT INTO `sys_oper_log` VALUES (139, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"project/parts\",\"className\":\"BalpParts\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"序号\",\"columnId\":37,\"columnName\":\"id\",\"columnType\":\"char(6)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"id\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-05-07 22:54:50\",\"usableColumn\":false},{\"capJavaField\":\"ProjectId\",\"columnComment\":\"项目编号\",\"columnId\":38,\"columnName\":\"project_id\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"projectId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-05-07 22:54:50\",\"usableColumn\":false},{\"capJavaField\":\"PartsName\",\"columnComment\":\"零组件名称\",\"columnId\":39,\"columnName\":\"parts_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"partsName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-05-07 22:54:50\",\"usableColumn\":false},{\"capJavaField\":\"PartsNo\",\"columnComment\":\"零组件号\",\"columnId\":40,\"columnName\":\"parts_no\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"i', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-07 22:55:30', 36);
INSERT INTO `sys_oper_log` VALUES (140, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/balp_parts', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-07 22:56:10', 18);
INSERT INTO `sys_oper_log` VALUES (141, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"parts\",\"className\":\"BalpParts\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"序号\",\"columnId\":37,\"columnName\":\"id\",\"columnType\":\"char(6)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"id\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-05-07 22:56:10\",\"usableColumn\":false},{\"capJavaField\":\"ProjectId\",\"columnComment\":\"项目编号\",\"columnId\":38,\"columnName\":\"project_id\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"projectId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-05-07 22:56:10\",\"usableColumn\":false},{\"capJavaField\":\"PartsName\",\"columnComment\":\"零组件名称\",\"columnId\":39,\"columnName\":\"parts_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"partsName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-05-07 22:56:10\",\"usableColumn\":false},{\"capJavaField\":\"PartsNo\",\"columnComment\":\"零组件号\",\"columnId\":40,\"columnName\":\"parts_no\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"inc', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-07 22:57:02', 22);
INSERT INTO `sys_oper_log` VALUES (142, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"parts\",\"className\":\"BalpParts\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"序号\",\"columnId\":37,\"columnName\":\"id\",\"columnType\":\"char(6)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"id\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-05-07 22:57:02\",\"usableColumn\":false},{\"capJavaField\":\"ProjectId\",\"columnComment\":\"项目编号\",\"columnId\":38,\"columnName\":\"project_id\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"projectId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-05-07 22:57:02\",\"usableColumn\":false},{\"capJavaField\":\"PartsName\",\"columnComment\":\"零组件名称\",\"columnId\":39,\"columnName\":\"parts_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"partsName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-05-07 22:57:02\",\"usableColumn\":false},{\"capJavaField\":\"PartsNo\",\"columnComment\":\"零组件号\",\"columnId\":40,\"columnName\":\"parts_no\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"inc', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-07 23:00:23', 37);
INSERT INTO `sys_oper_log` VALUES (143, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"parts\",\"className\":\"BalpParts\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"序号\",\"columnId\":37,\"columnName\":\"id\",\"columnType\":\"char(6)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"id\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-05-07 23:00:23\",\"usableColumn\":false},{\"capJavaField\":\"ProjectId\",\"columnComment\":\"项目编号\",\"columnId\":38,\"columnName\":\"project_id\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"projectId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-05-07 23:00:23\",\"usableColumn\":false},{\"capJavaField\":\"PartsName\",\"columnComment\":\"零组件名称\",\"columnId\":39,\"columnName\":\"parts_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"partsName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-05-07 23:00:23\",\"usableColumn\":false},{\"capJavaField\":\"PartsNo\",\"columnComment\":\"零组件号\",\"columnId\":40,\"columnName\":\"parts_no\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"inc', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-07 23:00:49', 23);
INSERT INTO `sys_oper_log` VALUES (144, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"balp_parts\"}', NULL, 0, NULL, '2023-05-07 23:02:07', 34);
INSERT INTO `sys_oper_log` VALUES (145, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"balp/parts/index\",\"createTime\":\"2023-05-07 23:03:05\",\"icon\":\"tab\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2026,\"menuName\":\"零组件\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2013,\"path\":\"parts\",\"perms\":\"balp:parts:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-07 23:04:47', 13);
INSERT INTO `sys_oper_log` VALUES (146, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"id\":\"1.1\",\"modelNo\":\"13188300374285\",\"number\":1,\"params\":{},\"partsName\":\"支架座组件\",\"partsNo\":\"7262C1A9801G03\",\"remark\":\"1\",\"sort\":\"1\",\"updateTime\":\"2023-05-12 23:33:58\",\"version\":\"A\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-05-12 23:33:58', 6);
INSERT INTO `sys_oper_log` VALUES (147, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"id\":\"1.1\",\"modelNo\":\"13188300374285\",\"number\":1,\"params\":{},\"partsName\":\"支架座组件\",\"partsNo\":\"7262C1A9801G03\",\"remark\":\"1\",\"sort\":\"1\",\"updateTime\":\"2023-05-12 23:34:11\",\"version\":\"A\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-05-12 23:34:11', 2);
INSERT INTO `sys_oper_log` VALUES (148, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"id\":\"1.1\",\"modelNo\":\"13188300374285\",\"number\":1,\"params\":{},\"partsName\":\"支架座组件\",\"partsNo\":\"7262C1A9801G03\",\"remark\":\"1\",\"sort\":\"1\",\"updateTime\":\"2023-05-12 23:35:22\",\"version\":\"A\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-05-12 23:35:22', 2);
INSERT INTO `sys_oper_log` VALUES (149, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"零组件分类\",\"dictType\":\"sys_parts_classfication\",\"params\":{},\"remark\":\"零组件分类\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-12 23:44:26', 8);
INSERT INTO `sys_oper_log` VALUES (150, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"标准件\",\"dictSort\":1,\"dictType\":\"sys_parts_classfication\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"remark\":\"标准件\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-12 23:46:08', 17);
INSERT INTO `sys_oper_log` VALUES (151, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"普通件\",\"dictSort\":2,\"dictType\":\"sys_parts_classfication\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"remark\":\"普通件\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-12 23:46:46', 8);
INSERT INTO `sys_oper_log` VALUES (152, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/balp_parts', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-12 23:49:56', 54);
INSERT INTO `sys_oper_log` VALUES (153, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"parts\",\"className\":\"BalpParts\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":37,\"columnName\":\"id\",\"columnType\":\"char(6)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-05-12 23:49:56\",\"usableColumn\":false},{\"capJavaField\":\"Seqno\",\"columnComment\":\"序号\",\"columnId\":51,\"columnName\":\"seqno\",\"columnType\":\"varchar(255)\",\"createBy\":\"\",\"createTime\":\"2023-05-12 23:49:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"seqno\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"ProjectId\",\"columnComment\":\"项目编号\",\"columnId\":38,\"columnName\":\"project_id\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"projectId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-05-12 23:49:56\",\"usableColumn\":false},{\"capJavaField\":\"PartsName\",\"columnComment\":\"零组件名称\",\"columnId\":39,\"columnName\":\"parts_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isI', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-12 23:52:23', 27);
INSERT INTO `sys_oper_log` VALUES (154, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"parts\",\"className\":\"BalpParts\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":37,\"columnName\":\"id\",\"columnType\":\"char(6)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"String\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-05-12 23:52:23\",\"usableColumn\":false},{\"capJavaField\":\"Seqno\",\"columnComment\":\"序号\",\"columnId\":51,\"columnName\":\"seqno\",\"columnType\":\"varchar(255)\",\"createBy\":\"\",\"createTime\":\"2023-05-12 23:49:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"seqno\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-05-12 23:52:23\",\"usableColumn\":false},{\"capJavaField\":\"ProjectId\",\"columnComment\":\"项目编号\",\"columnId\":38,\"columnName\":\"project_id\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"projectId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-05-12 23:52:23\",\"usableColumn\":false},{\"capJavaField\":\"PartsName\",\"columnComment\":\"零组件名称\",\"columnId\":39,\"columnName\":\"parts_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-12 23:52:44', 28);
INSERT INTO `sys_oper_log` VALUES (155, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"id\":\"1\",\"modelNo\":\"\'13188300374285\",\"number\":3,\"params\":{},\"partsName\":\"支架座组件\",\"partsNo\":\"7262C1A9801G03\",\"remark\":\"支架座组件\",\"sort\":\"1\",\"updateTime\":\"2023-05-13 00:00:18\",\"version\":\"C\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-05-13 00:00:18', 2);
INSERT INTO `sys_oper_log` VALUES (156, '零组件', 1, 'com.ruoyi.balp.parts.controller.BalpPartsController.add()', 'POST', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-05-13 00:00:58\",\"modelNo\":\"1\",\"number\":1,\"params\":{},\"partsName\":\"支架座组件\",\"partsNo\":\"7262C1A9801G03\",\"remark\":\"121\",\"sort\":\"2\",\"version\":\"1\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\Java\\RuoYi-Vue-BALP\\ruoyi-balp\\target\\classes\\mapper\\balp\\BalpPartsMapper.xml]\r\n### The error may involve com.ruoyi.balp.parts.mapper.BalpPartsMapper.insertBalpParts-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into balp_parts          ( parts_name,             parts_no,             model_no,             number,             version,             sort,                                       create_time,                                       remark )           values ( ?,             ?,             ?,             ?,             ?,             ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2023-05-13 00:00:58', 41);
INSERT INTO `sys_oper_log` VALUES (157, '零组件', 1, 'com.ruoyi.balp.parts.controller.BalpPartsController.add()', 'POST', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-05-13 00:01:46\",\"modelNo\":\"1\",\"number\":1,\"params\":{},\"partsName\":\"支架座组件\",\"partsNo\":\"7262C1A9801G03\",\"remark\":\"121\",\"sort\":\"2\",\"version\":\"1\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\Java\\RuoYi-Vue-BALP\\ruoyi-balp\\target\\classes\\mapper\\balp\\BalpPartsMapper.xml]\r\n### The error may involve com.ruoyi.balp.parts.mapper.BalpPartsMapper.insertBalpParts-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into balp_parts          ( parts_name,             parts_no,             model_no,             number,             version,             sort,                                       create_time,                                       remark )           values ( ?,             ?,             ?,             ?,             ?,             ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2023-05-13 00:01:46', 2);
INSERT INTO `sys_oper_log` VALUES (158, '零组件', 1, 'com.ruoyi.balp.parts.controller.BalpPartsController.add()', 'POST', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-05-13 00:03:13\",\"modelNo\":\"1\",\"number\":1,\"params\":{},\"partsName\":\"支架座组件\",\"partsNo\":\"7262C1A9801G03\",\"remark\":\"121\",\"sort\":\"2\",\"version\":\"1\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\Java\\RuoYi-Vue-BALP\\ruoyi-balp\\target\\classes\\mapper\\balp\\BalpPartsMapper.xml]\r\n### The error may involve com.ruoyi.balp.parts.mapper.BalpPartsMapper.insertBalpParts-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into balp_parts          ( parts_name,             parts_no,             model_no,             number,             version,             sort,                                       create_time,                                       remark )           values ( ?,             ?,             ?,             ?,             ?,             ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2023-05-13 00:03:13', 7);
INSERT INTO `sys_oper_log` VALUES (159, '零组件', 1, 'com.ruoyi.balp.parts.controller.BalpPartsController.add()', 'POST', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-05-13 00:06:19\",\"modelNo\":\"1\",\"number\":1,\"params\":{},\"partsName\":\"支架座组件\",\"partsNo\":\"7262C1A9801G03\",\"remark\":\"121\",\"sort\":\"2\",\"version\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 00:06:19', 4);
INSERT INTO `sys_oper_log` VALUES (160, '零组件', 1, 'com.ruoyi.balp.parts.controller.BalpPartsController.add()', 'POST', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-05-13 00:08:26\",\"modelNo\":\"4\",\"number\":4,\"params\":{},\"partsName\":\"2\",\"partsNo\":\"3\",\"remark\":\"asd \",\"sort\":\"2\",\"version\":\"C\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 00:08:26', 107);
INSERT INTO `sys_oper_log` VALUES (161, '零组件', 1, 'com.ruoyi.balp.parts.controller.BalpPartsController.add()', 'POST', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-05-13 00:10:48\",\"modelNo\":\"1\",\"number\":2,\"params\":{},\"partsName\":\"1\",\"partsNo\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 00:10:48', 14);
INSERT INTO `sys_oper_log` VALUES (162, '零组件', 1, 'com.ruoyi.balp.parts.controller.BalpPartsController.add()', 'POST', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-05-13 00:13:23\",\"modelNo\":\"3\",\"number\":3,\"params\":{},\"partsName\":\"3\",\"partsNo\":\"3\",\"seqno\":\"3\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 00:13:23', 27742);
INSERT INTO `sys_oper_log` VALUES (163, '零组件', 1, 'com.ruoyi.balp.parts.controller.BalpPartsController.add()', 'POST', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-05-13 00:14:15\",\"modelNo\":\"11\",\"number\":1,\"params\":{},\"partsName\":\"123\",\"partsNo\":\"12312\",\"seqno\":\"21\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 00:14:15', 5803);
INSERT INTO `sys_oper_log` VALUES (164, '零组件', 1, 'com.ruoyi.balp.parts.controller.BalpPartsController.add()', 'POST', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-05-13 00:14:49\",\"modelNo\":\"11\",\"number\":1,\"params\":{},\"partsName\":\"11\",\"partsNo\":\"11\",\"seqno\":\"12\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 00:14:49', 13464);
INSERT INTO `sys_oper_log` VALUES (165, '零组件', 1, 'com.ruoyi.balp.parts.controller.BalpPartsController.add()', 'POST', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-05-13 00:15:35\",\"modelNo\":\"1\",\"params\":{},\"partsName\":\"1\",\"partsNo\":\"1\",\"seqno\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 00:15:35', 17339);
INSERT INTO `sys_oper_log` VALUES (166, '零组件', 1, 'com.ruoyi.balp.parts.controller.BalpPartsController.add()', 'POST', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-05-13 00:16:21\",\"modelNo\":\"1\",\"number\":1,\"params\":{},\"partsName\":\"1\",\"partsNo\":\"1\",\"seqno\":\"1\",\"sort\":\"1\",\"version\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 00:16:21', 26634);
INSERT INTO `sys_oper_log` VALUES (167, '零组件', 1, 'com.ruoyi.balp.parts.controller.BalpPartsController.add()', 'POST', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-05-13 00:18:11\",\"modelNo\":\"123\",\"number\":1,\"params\":{},\"partsName\":\"123\",\"partsNo\":\"123\",\"seqno\":\"123\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 00:18:11', 11711);
INSERT INTO `sys_oper_log` VALUES (168, '零组件', 1, 'com.ruoyi.balp.parts.controller.BalpPartsController.add()', 'POST', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-05-13 00:22:08\",\"modelNo\":\"1\",\"params\":{},\"partsName\":\"1\",\"partsNo\":\"1\",\"seqno\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 00:22:08', 44645);
INSERT INTO `sys_oper_log` VALUES (169, '零组件', 1, 'com.ruoyi.balp.parts.controller.BalpPartsController.add()', 'POST', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-05-13 00:22:51\",\"modelNo\":\"11\",\"number\":1,\"params\":{},\"partsName\":\"1\",\"partsNo\":\"1\",\"seqno\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 00:22:51', 15119);
INSERT INTO `sys_oper_log` VALUES (170, '零组件', 1, 'com.ruoyi.balp.parts.controller.BalpPartsController.add()', 'POST', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-05-13 00:23:35\",\"modelNo\":\"1\",\"params\":{},\"partsName\":\"1\",\"partsNo\":\"1\",\"seqno\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 00:23:35', 35127);
INSERT INTO `sys_oper_log` VALUES (171, '零组件', 1, 'com.ruoyi.balp.parts.controller.BalpPartsController.add()', 'POST', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-05-13 00:24:19\",\"modelNo\":\"1\",\"params\":{},\"partsName\":\"1\",\"partsNo\":\"1\",\"projectId\":\"BALP12\",\"seqno\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 00:24:19', 8852);
INSERT INTO `sys_oper_log` VALUES (172, '零组件', 1, 'com.ruoyi.balp.parts.controller.BalpPartsController.add()', 'POST', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-05-13 00:25:35\",\"modelNo\":\"1\",\"number\":1,\"params\":{},\"partsName\":\"1\",\"partsNo\":\"1\",\"projectId\":\"BALP12\",\"seqno\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 00:25:35', 3593);
INSERT INTO `sys_oper_log` VALUES (173, '零组件', 1, 'com.ruoyi.balp.parts.controller.BalpPartsController.add()', 'POST', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-05-13 00:26:38\",\"modelNo\":\"212\",\"number\":11,\"params\":{},\"partsName\":\"122\",\"partsNo\":\"121\",\"projectId\":\"BALP12\",\"seqno\":\"1212121\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 00:26:38', 12695);
INSERT INTO `sys_oper_log` VALUES (174, '零组件', 1, 'com.ruoyi.balp.parts.controller.BalpPartsController.add()', 'POST', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-05-13 00:29:54\",\"modelNo\":\"1\",\"number\":111112,\"params\":{},\"partsName\":\"1\",\"partsNo\":\"1\",\"projectId\":\"BALP12\",\"seqno\":\"1\",\"version\":\"121\"}', NULL, 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'version\' at row 1\r\n### The error may exist in file [D:\\Java\\RuoYi-Vue-BALP\\ruoyi-balp\\target\\classes\\mapper\\balp\\BalpPartsMapper.xml]\r\n### The error may involve com.ruoyi.balp.parts.mapper.BalpPartsMapper.insertBalpParts-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into balp_parts          ( seqno,             project_id,             parts_name,             parts_no,             model_no,             number,             version,                                                    create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,                                                    ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'version\' at row 1\n; Data truncation: Data too long for column \'version\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'version\' at row 1', '2023-05-13 00:29:54', 5125);
INSERT INTO `sys_oper_log` VALUES (175, '零组件', 1, 'com.ruoyi.balp.parts.controller.BalpPartsController.add()', 'POST', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-05-13 00:30:39\",\"modelNo\":\"1\",\"number\":111112,\"params\":{},\"partsName\":\"1\",\"partsNo\":\"1\",\"projectId\":\"BALP12\",\"seqno\":\"1\",\"version\":\"121\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 00:30:39', 6351);
INSERT INTO `sys_oper_log` VALUES (176, '零组件', 1, 'com.ruoyi.balp.parts.controller.BalpPartsController.add()', 'POST', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-05-13 00:31:44\",\"modelNo\":\"1\",\"number\":1,\"params\":{},\"partsName\":\"1\",\"partsNo\":\"1\",\"seqno\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 00:31:44', 6830);
INSERT INTO `sys_oper_log` VALUES (177, '零组件', 1, 'com.ruoyi.balp.parts.controller.BalpPartsController.add()', 'POST', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-05-13 00:33:12\",\"modelNo\":\"12312\",\"number\":1123,\"params\":{},\"partsName\":\"23\",\"partsNo\":\"123\",\"projectId\":\"BALP12\",\"seqno\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 00:33:12', 6658);
INSERT INTO `sys_oper_log` VALUES (178, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-05-13 00:33:13\",\"id\":18,\"modelNo\":\"12312\",\"number\":1123,\"params\":{},\"partsName\":\"23\",\"partsNo\":\"123\",\"projectId\":\"BALP12\",\"remark\":\"wqeqwe\",\"seqno\":\"1\",\"sort\":\"1\",\"updateTime\":\"2023-05-13 00:38:27\",\"version\":\"C\"}', NULL, 1, 'nested exception is org.apache.ibatis.builder.BuilderException: An invalid property \'#             project_id\' was found in mapping #{seqno,\n#             project_id = #{projectId}.  Valid properties are javaType,jdbcType,mode,numericScale,resultMap,typeHandler,jdbcTypeName', '2023-05-13 00:38:27', 7);
INSERT INTO `sys_oper_log` VALUES (179, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"params\":{},\"seqno\":\"\",\"updateBy\":\"admin\",\"updateTime\":\"2023-05-13 00:41:00\"}', NULL, 1, 'nested exception is org.apache.ibatis.builder.BuilderException: An invalid property \'#             \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            update_by\' was found in mapping #{seqno,\n#             \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            update_by = #{updateBy}.  Valid properties are javaType,jdbcType,mode,numericScale,resultMap,typeHandler,jdbcTypeName', '2023-05-13 00:41:00', 2);
INSERT INTO `sys_oper_log` VALUES (180, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"params\":{},\"seqno\":\"\",\"updateBy\":\"admin\",\"updateTime\":\"2023-05-13 00:43:25\"}', NULL, 1, 'nested exception is org.apache.ibatis.builder.BuilderException: An invalid property \'#             \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            update_by\' was found in mapping #{seqno,\n#             \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            update_by = #{updateBy}.  Valid properties are javaType,jdbcType,mode,numericScale,resultMap,typeHandler,jdbcTypeName', '2023-05-13 00:43:25', 9);
INSERT INTO `sys_oper_log` VALUES (181, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"params\":{},\"seqno\":\"\",\"updateBy\":\"admin\",\"updateTime\":\"2023-05-13 00:44:32\"}', NULL, 1, 'nested exception is org.apache.ibatis.builder.BuilderException: An invalid property \'#             \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            update_by\' was found in mapping #{seqno,\n#             \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            update_by = #{updateBy}.  Valid properties are javaType,jdbcType,mode,numericScale,resultMap,typeHandler,jdbcTypeName', '2023-05-13 00:44:32', 18589);
INSERT INTO `sys_oper_log` VALUES (182, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"params\":{},\"seqno\":\"\",\"updateBy\":\"admin\",\"updateTime\":\"2023-05-13 00:45:00\"}', NULL, 1, 'nested exception is org.apache.ibatis.builder.BuilderException: An invalid property \'#             \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            update_by\' was found in mapping #{seqno,\n#             \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            update_by = #{updateBy}.  Valid properties are javaType,jdbcType,mode,numericScale,resultMap,typeHandler,jdbcTypeName', '2023-05-13 00:45:00', 6463);
INSERT INTO `sys_oper_log` VALUES (183, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"params\":{},\"seqno\":\"\",\"updateTime\":\"2023-05-13 00:45:16\"}', NULL, 1, 'nested exception is org.apache.ibatis.builder.BuilderException: An invalid property \'#             \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            update_time\' was found in mapping #{seqno,\n#             \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            update_time = #{updateTime}.  Valid properties are javaType,jdbcType,mode,numericScale,resultMap,typeHandler,jdbcTypeName', '2023-05-13 00:45:16', 3602);
INSERT INTO `sys_oper_log` VALUES (184, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"params\":{},\"seqno\":\"\",\"updateTime\":\"2023-05-13 00:45:57\"}', NULL, 1, 'nested exception is org.apache.ibatis.builder.BuilderException: An invalid property \'#             \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            update_time\' was found in mapping #{seqno,\n#             \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            \n            update_time = #{updateTime}.  Valid properties are javaType,jdbcType,mode,numericScale,resultMap,typeHandler,jdbcTypeName', '2023-05-13 00:45:57', 2607);
INSERT INTO `sys_oper_log` VALUES (185, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"params\":{},\"seqno\":\"\"}', NULL, 1, 'nested exception is org.apache.ibatis.builder.BuilderException: An invalid property \'# \n        where id\' was found in mapping #{seqno,\n# \n        where id = #{id}.  Valid properties are javaType,jdbcType,mode,numericScale,resultMap,typeHandler,jdbcTypeName', '2023-05-13 00:47:11', 7);
INSERT INTO `sys_oper_log` VALUES (186, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"id\":18,\"params\":{},\"seqno\":\"\"}', NULL, 1, 'nested exception is org.apache.ibatis.builder.BuilderException: An invalid property \'# \n        where id\' was found in mapping #{seqno,\n# \n        where id = #{id}.  Valid properties are javaType,jdbcType,mode,numericScale,resultMap,typeHandler,jdbcTypeName', '2023-05-13 00:49:47', 2);
INSERT INTO `sys_oper_log` VALUES (187, '零组件', 1, 'com.ruoyi.balp.parts.controller.BalpPartsController.add()', 'POST', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-05-13 00:51:41\",\"modelNo\":\"123\",\"number\":1,\"params\":{},\"partsName\":\"123\",\"partsNo\":\"123\",\"remark\":\"123123\",\"seqno\":\"123\",\"sort\":\"1\",\"version\":\"C\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 00:51:41', 3924);
INSERT INTO `sys_oper_log` VALUES (188, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"id\":18,\"params\":{},\"seqno\":\"\"}', NULL, 1, 'nested exception is org.apache.ibatis.builder.BuilderException: An invalid property \'# \n        where id\' was found in mapping #{seqno,\n# \n        where id = #{id,jdbcType=INTEGER}.  Valid properties are javaType,jdbcType,mode,numericScale,resultMap,typeHandler,jdbcTypeName', '2023-05-13 00:52:43', 2);
INSERT INTO `sys_oper_log` VALUES (189, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"id\":18,\"params\":{},\"seqno\":\"\"}', NULL, 1, 'nested exception is org.apache.ibatis.builder.BuilderException: An invalid property \'# \n        where id\' was found in mapping #{seqno,\n# \n        where id = #{id,jdbcType=INTEGER}.  Valid properties are javaType,jdbcType,mode,numericScale,resultMap,typeHandler,jdbcTypeName', '2023-05-13 00:54:13', 1);
INSERT INTO `sys_oper_log` VALUES (190, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"id\":18,\"params\":{},\"seqno\":\"\"}', NULL, 1, 'nested exception is org.apache.ibatis.builder.BuilderException: An invalid property \'# \n        where seqno\' was found in mapping #{seqno,\n# \n        where seqno = #{seqno}.  Valid properties are javaType,jdbcType,mode,numericScale,resultMap,typeHandler,jdbcTypeName', '2023-05-13 00:55:43', 11);
INSERT INTO `sys_oper_log` VALUES (191, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"id\":18,\"params\":{},\"seqno\":\"\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where seqno = \'\'\' at line 4\r\n### The error may exist in file [D:\\Java\\RuoYi-Vue-BALP\\ruoyi-balp\\target\\classes\\mapper\\balp\\BalpPartsMapper.xml]\r\n### The error may involve com.ruoyi.balp.parts.mapper.BalpPartsMapper.updateBalpParts-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update balp_parts          SET seqno = ?, #          where seqno = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where seqno = \'\'\' at line 4\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where seqno = \'\'\' at line 4', '2023-05-13 00:56:58', 30);
INSERT INTO `sys_oper_log` VALUES (192, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"id\":18,\"params\":{},\"seqno\":\"\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where id = 18\' at line 4\r\n### The error may exist in file [D:\\Java\\RuoYi-Vue-BALP\\ruoyi-balp\\target\\classes\\mapper\\balp\\BalpPartsMapper.xml]\r\n### The error may involve com.ruoyi.balp.parts.mapper.BalpPartsMapper.updateBalpParts-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update balp_parts          SET seqno = ?, #          where id = ?\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where id = 18\' at line 4\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'where id = 18\' at line 4', '2023-05-13 00:57:38', 31);
INSERT INTO `sys_oper_log` VALUES (193, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"id\":18,\"params\":{},\"seqno\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 01:01:03', 24);
INSERT INTO `sys_oper_log` VALUES (194, '零组件', 3, 'com.ruoyi.balp.parts.controller.BalpPartsController.remove()', 'DELETE', 1, 'admin', NULL, '/balp/parts/18', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 01:01:30', 16);
INSERT INTO `sys_oper_log` VALUES (195, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"id\":18,\"params\":{},\"seqno\":\"\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-05-13 01:02:14', 3);
INSERT INTO `sys_oper_log` VALUES (196, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"id\":18,\"params\":{},\"seqno\":\"\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-05-13 01:02:25', 3);
INSERT INTO `sys_oper_log` VALUES (197, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"id\":18,\"params\":{},\"seqno\":\"\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-05-13 01:02:34', 4);
INSERT INTO `sys_oper_log` VALUES (198, '零组件', 1, 'com.ruoyi.balp.parts.controller.BalpPartsController.add()', 'POST', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-05-13 01:04:15\",\"modelNo\":\"\'13188300374285\",\"number\":1,\"params\":{},\"partsName\":\"支架座组件\",\"partsNo\":\"7262C1A9801G03\",\"remark\":\"支架座组件\",\"seqno\":\"1\",\"sort\":\"1\",\"version\":\"C\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 01:04:15', 2022);
INSERT INTO `sys_oper_log` VALUES (199, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"params\":{},\"seqno\":\"\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-05-13 01:04:23', 2);
INSERT INTO `sys_oper_log` VALUES (200, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"id\":19,\"params\":{},\"seqno\":\"\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 01:04:59', 4);
INSERT INTO `sys_oper_log` VALUES (201, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"dealShop\":\"结构\",\"id\":20,\"modelNo\":\"\'13188300374285\",\"number\":1,\"params\":{},\"partsName\":\"支架座组件\",\"partsNo\":\"7262C1A9801G03\",\"remark\":\"支架座组件\",\"seqno\":\"\",\"sort\":\"1\",\"version\":\"C\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 01:08:43', 5);
INSERT INTO `sys_oper_log` VALUES (202, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"dealShop\":\"结构\",\"id\":20,\"modelNo\":\"\'13188300374285\",\"number\":1,\"params\":{},\"partsName\":\"支架座组件\",\"partsNo\":\"7262C1A9801G03\",\"remark\":\"支架座组件\",\"seqno\":\"\",\"sort\":\"1\",\"version\":\"C\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 01:08:52', 2);
INSERT INTO `sys_oper_log` VALUES (203, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"dealShop\":\"结构\",\"id\":20,\"modelNo\":\"\'13188300374285\",\"number\":1,\"params\":{},\"partsName\":\"支架座组件\",\"partsNo\":\"7262C1A9801G03\",\"remark\":\"支架座组件\",\"seqno\":\"1\",\"sort\":\"1\",\"version\":\"C\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 01:09:20', 11);
INSERT INTO `sys_oper_log` VALUES (204, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"dealShop\":\"精密\",\"id\":19,\"modelNo\":\"123\",\"number\":1,\"params\":{},\"partsName\":\"123\",\"partsNo\":\"123\",\"remark\":\"123123\",\"seqno\":\"1\",\"sort\":\"1\",\"version\":\"C\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 01:09:35', 5);
INSERT INTO `sys_oper_log` VALUES (205, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"分配车间\",\"dictType\":\"sys_deal_shop\",\"params\":{},\"remark\":\"分配车间\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 01:11:36', 13);
INSERT INTO `sys_oper_log` VALUES (206, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"结构\",\"dictSort\":1,\"dictType\":\"sys_deal_shop\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"remark\":\"结构\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 01:12:19', 10);
INSERT INTO `sys_oper_log` VALUES (207, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"精密\",\"dictSort\":2,\"dictType\":\"sys_deal_shop\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"remark\":\"精密\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 01:12:30', 14);
INSERT INTO `sys_oper_log` VALUES (208, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-05-13 01:12:19\",\"default\":false,\"dictCode\":104,\"dictLabel\":\"结构\",\"dictSort\":1,\"dictType\":\"sys_deal_shop\",\"dictValue\":\"1\",\"isDefault\":\"N\",\"listClass\":\"info\",\"params\":{},\"remark\":\"结构\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 01:14:31', 9);
INSERT INTO `sys_oper_log` VALUES (209, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-05-13 01:12:30\",\"default\":false,\"dictCode\":105,\"dictLabel\":\"精密\",\"dictSort\":2,\"dictType\":\"sys_deal_shop\",\"dictValue\":\"2\",\"isDefault\":\"N\",\"listClass\":\"primary\",\"params\":{},\"remark\":\"精密\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 01:14:54', 16);
INSERT INTO `sys_oper_log` VALUES (210, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"balp/parts/index\",\"createTime\":\"2023-05-07 23:03:05\",\"icon\":\"tab\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2026,\"menuName\":\"零组件\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2013,\"path\":\"parts\",\"perms\":\"balp:parts:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 01:52:00', 17);
INSERT INTO `sys_oper_log` VALUES (211, '项目管理', 5, 'com.ruoyi.balp.project.controller.BalpProjectController.export()', 'POST', 1, 'admin', NULL, '/balp/project/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2023-05-13 20:39:55', 396);
INSERT INTO `sys_oper_log` VALUES (212, '项目管理', 5, 'com.ruoyi.balp.project.controller.BalpProjectController.export()', 'POST', 1, 'admin', NULL, '/balp/project/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2023-05-13 20:40:02', 31);
INSERT INTO `sys_oper_log` VALUES (213, '项目管理', 5, 'com.ruoyi.balp.project.controller.BalpProjectController.export()', 'POST', 1, 'admin', NULL, '/balp/project/export', '127.0.0.1', '内网IP', '{\"pageSize\":\"10\",\"pageNum\":\"1\"}', NULL, 0, NULL, '2023-05-13 20:40:04', 21);
INSERT INTO `sys_oper_log` VALUES (214, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"dealShop\":\"结构\",\"id\":20,\"modelNo\":\"13188300374285\",\"number\":1,\"params\":{},\"partsName\":\"支架座组件\",\"partsNo\":\"7262C1A9801G03\",\"remark\":\"支架座组件\",\"seqno\":\"1\",\"sort\":\"1\",\"version\":\"C\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 22:26:55', 11);
INSERT INTO `sys_oper_log` VALUES (215, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"dealShop\":\"精密\",\"id\":19,\"modelNo\":\"123\",\"number\":1,\"params\":{},\"partsName\":\"123\",\"partsNo\":\"123\",\"remark\":\"123123\",\"seqno\":\"1\",\"sort\":\"1\",\"version\":\"C\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 22:27:19', 2);
INSERT INTO `sys_oper_log` VALUES (216, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/balp_parts', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 23:55:38', 76);
INSERT INTO `sys_oper_log` VALUES (217, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"parts\",\"className\":\"BalpParts\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":37,\"columnName\":\"id\",\"columnType\":\"char(6)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-05-13 23:55:38\",\"usableColumn\":false},{\"capJavaField\":\"Seqno\",\"columnComment\":\"序号\",\"columnId\":51,\"columnName\":\"seqno\",\"columnType\":\"varchar(255)\",\"createBy\":\"\",\"createTime\":\"2023-05-12 23:49:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"seqno\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-05-13 23:55:38\",\"usableColumn\":false},{\"capJavaField\":\"ProjectId\",\"columnComment\":\"项目编号\",\"columnId\":38,\"columnName\":\"project_id\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"projectId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-05-13 23:55:38\",\"usableColumn\":false},{\"capJavaField\":\"PartsName\",\"columnComment\":\"零组件名称\",\"columnId\":39,\"columnName\":\"parts_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"i', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 23:56:12', 27);
INSERT INTO `sys_oper_log` VALUES (218, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/balp_parts', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 23:56:37', 26);
INSERT INTO `sys_oper_log` VALUES (219, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"parts\",\"className\":\"BalpParts\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"主键\",\"columnId\":37,\"columnName\":\"id\",\"columnType\":\"char(6)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"0\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"0\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"0\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-05-13 23:56:37\",\"usableColumn\":false},{\"capJavaField\":\"Seqno\",\"columnComment\":\"序号\",\"columnId\":51,\"columnName\":\"seqno\",\"columnType\":\"varchar(255)\",\"createBy\":\"\",\"createTime\":\"2023-05-12 23:49:56\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"seqno\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-05-13 23:56:37\",\"usableColumn\":false},{\"capJavaField\":\"ProjectId\",\"columnComment\":\"项目编号\",\"columnId\":38,\"columnName\":\"project_id\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"projectId\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"updateTime\":\"2023-05-13 23:56:37\",\"usableColumn\":false},{\"capJavaField\":\"PartsName\",\"columnComment\":\"零组件名称\",\"columnId\":39,\"columnName\":\"parts_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-07 22:51:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"i', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 23:57:38', 29);
INSERT INTO `sys_oper_log` VALUES (220, '零组件', 2, 'com.ruoyi.balp.parts.controller.BalpPartsController.edit()', 'PUT', 1, 'admin', NULL, '/balp/parts', '127.0.0.1', '内网IP', '{\"dealShop\":\"2\",\"id\":17,\"modelNo\":\"1\",\"number\":1,\"params\":{},\"partsName\":\"1\",\"partsNo\":\"1\",\"seqno\":\"2\",\"sort\":\"1\",\"version\":\"C\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-13 23:59:25', 13);
INSERT INTO `sys_oper_log` VALUES (221, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"是否外购件\",\"dictType\":\"sys_external_parts\",\"params\":{},\"remark\":\"是否外购件\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-14 00:08:55', 25);
INSERT INTO `sys_oper_log` VALUES (222, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"负责询价部门\",\"dictType\":\"sys_inquiry_dept\",\"params\":{},\"remark\":\"负责询价部门\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-14 00:09:31', 5);
INSERT INTO `sys_oper_log` VALUES (223, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"是\",\"dictSort\":1,\"dictType\":\"sys_external_parts\",\"dictValue\":\"1\",\"listClass\":\"primary\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-14 00:09:56', 15);
INSERT INTO `sys_oper_log` VALUES (224, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"否\",\"dictSort\":2,\"dictType\":\"sys_external_parts\",\"dictValue\":\"2\",\"listClass\":\"primary\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-14 00:10:06', 11);
INSERT INTO `sys_oper_log` VALUES (225, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"营销部\",\"dictSort\":1,\"dictType\":\"sys_inquiry_dept\",\"dictValue\":\"1\",\"listClass\":\"success\",\"params\":{},\"remark\":\"营销部\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-14 00:10:38', 4);
INSERT INTO `sys_oper_log` VALUES (226, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"技术部\",\"dictSort\":2,\"dictType\":\"sys_inquiry_dept\",\"dictValue\":\"2\",\"listClass\":\"success\",\"params\":{},\"remark\":\"技术部\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-05-14 00:10:48', 13);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2023-05-05 23:59:48', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2023-05-05 23:59:48', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2023-05-05 23:59:48', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2023-05-05 23:59:48', 'admin', '2023-05-06 01:15:18', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 117);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-05-17 00:02:16', 'admin', '2023-05-05 23:59:48', '', '2023-05-17 00:02:15', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-05-05 23:59:48', 'admin', '2023-05-05 23:59:48', '', NULL, '测试员');

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_german2_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

SET FOREIGN_KEY_CHECKS = 1;

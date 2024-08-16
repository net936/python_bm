/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50744
 Source Host           : localhost:3306
 Source Schema         : python_bm

 Target Server Type    : MySQL
 Target Server Version : 50744
 File Encoding         : 65001

 Date: 30/07/2024 20:25:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 73 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add ad', 7, 'add_ad');
INSERT INTO `auth_permission` VALUES (26, 'Can change ad', 7, 'change_ad');
INSERT INTO `auth_permission` VALUES (27, 'Can delete ad', 7, 'delete_ad');
INSERT INTO `auth_permission` VALUES (28, 'Can view ad', 7, 'view_ad');
INSERT INTO `auth_permission` VALUES (29, 'Can add classification', 8, 'add_classification');
INSERT INTO `auth_permission` VALUES (30, 'Can change classification', 8, 'change_classification');
INSERT INTO `auth_permission` VALUES (31, 'Can delete classification', 8, 'delete_classification');
INSERT INTO `auth_permission` VALUES (32, 'Can view classification', 8, 'view_classification');
INSERT INTO `auth_permission` VALUES (33, 'Can add error log', 9, 'add_errorlog');
INSERT INTO `auth_permission` VALUES (34, 'Can change error log', 9, 'change_errorlog');
INSERT INTO `auth_permission` VALUES (35, 'Can delete error log', 9, 'delete_errorlog');
INSERT INTO `auth_permission` VALUES (36, 'Can view error log', 9, 'view_errorlog');
INSERT INTO `auth_permission` VALUES (37, 'Can add login log', 10, 'add_loginlog');
INSERT INTO `auth_permission` VALUES (38, 'Can change login log', 10, 'change_loginlog');
INSERT INTO `auth_permission` VALUES (39, 'Can delete login log', 10, 'delete_loginlog');
INSERT INTO `auth_permission` VALUES (40, 'Can view login log', 10, 'view_loginlog');
INSERT INTO `auth_permission` VALUES (41, 'Can add notice', 11, 'add_notice');
INSERT INTO `auth_permission` VALUES (42, 'Can change notice', 11, 'change_notice');
INSERT INTO `auth_permission` VALUES (43, 'Can delete notice', 11, 'delete_notice');
INSERT INTO `auth_permission` VALUES (44, 'Can view notice', 11, 'view_notice');
INSERT INTO `auth_permission` VALUES (45, 'Can add op log', 12, 'add_oplog');
INSERT INTO `auth_permission` VALUES (46, 'Can change op log', 12, 'change_oplog');
INSERT INTO `auth_permission` VALUES (47, 'Can delete op log', 12, 'delete_oplog');
INSERT INTO `auth_permission` VALUES (48, 'Can view op log', 12, 'view_oplog');
INSERT INTO `auth_permission` VALUES (49, 'Can add user', 13, 'add_user');
INSERT INTO `auth_permission` VALUES (50, 'Can change user', 13, 'change_user');
INSERT INTO `auth_permission` VALUES (51, 'Can delete user', 13, 'delete_user');
INSERT INTO `auth_permission` VALUES (52, 'Can view user', 13, 'view_user');
INSERT INTO `auth_permission` VALUES (53, 'Can add thing', 14, 'add_thing');
INSERT INTO `auth_permission` VALUES (54, 'Can change thing', 14, 'change_thing');
INSERT INTO `auth_permission` VALUES (55, 'Can delete thing', 14, 'delete_thing');
INSERT INTO `auth_permission` VALUES (56, 'Can view thing', 14, 'view_thing');
INSERT INTO `auth_permission` VALUES (57, 'Can add record', 15, 'add_record');
INSERT INTO `auth_permission` VALUES (58, 'Can change record', 15, 'change_record');
INSERT INTO `auth_permission` VALUES (59, 'Can delete record', 15, 'delete_record');
INSERT INTO `auth_permission` VALUES (60, 'Can view record', 15, 'view_record');
INSERT INTO `auth_permission` VALUES (61, 'Can add order', 16, 'add_order');
INSERT INTO `auth_permission` VALUES (62, 'Can change order', 16, 'change_order');
INSERT INTO `auth_permission` VALUES (63, 'Can delete order', 16, 'delete_order');
INSERT INTO `auth_permission` VALUES (64, 'Can view order', 16, 'view_order');
INSERT INTO `auth_permission` VALUES (65, 'Can add comment', 17, 'add_comment');
INSERT INTO `auth_permission` VALUES (66, 'Can change comment', 17, 'change_comment');
INSERT INTO `auth_permission` VALUES (67, 'Can delete comment', 17, 'delete_comment');
INSERT INTO `auth_permission` VALUES (68, 'Can view comment', 17, 'view_comment');
INSERT INTO `auth_permission` VALUES (69, 'Can add feedback', 18, 'add_feedback');
INSERT INTO `auth_permission` VALUES (70, 'Can change feedback', 18, 'change_feedback');
INSERT INTO `auth_permission` VALUES (71, 'Can delete feedback', 18, 'delete_feedback');
INSERT INTO `auth_permission` VALUES (72, 'Can view feedback', 18, 'view_feedback');

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_groups_user_id_group_id_94350c0c_uniq`(`user_id`, `group_id`) USING BTREE,
  INDEX `auth_user_groups_group_id_97559544_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq`(`user_id`, `permission_id`) USING BTREE,
  INDEX `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for b_ad
-- ----------------------------
DROP TABLE IF EXISTS `b_ad`;
CREATE TABLE `b_ad`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `link` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_ad
-- ----------------------------
INSERT INTO `b_ad` VALUES (1, 'ad/1722341609330.jpeg', 'https://m3u8player.org', '2024-07-30 20:13:32.544262');
INSERT INTO `b_ad` VALUES (2, 'ad/1722341617598.jpeg', 'https://gitapp.cn/', '2024-07-30 20:13:40.104473');

-- ----------------------------
-- Table structure for b_classification
-- ----------------------------
DROP TABLE IF EXISTS `b_classification`;
CREATE TABLE `b_classification`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_classification
-- ----------------------------
INSERT INTO `b_classification` VALUES (1, '体育类', '2024-07-29 20:30:47.177456');
INSERT INTO `b_classification` VALUES (2, '科技类', '2024-07-29 20:30:52.172055');
INSERT INTO `b_classification` VALUES (3, '文艺类', '2024-07-29 20:30:57.395464');
INSERT INTO `b_classification` VALUES (4, '学术类', '2024-07-29 20:31:25.759095');

-- ----------------------------
-- Table structure for b_comment
-- ----------------------------
DROP TABLE IF EXISTS `b_comment`;
CREATE TABLE `b_comment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `comment_time` datetime(6) NULL DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_comment_thing_id_57ab492b_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_comment_user_id_46f0670f_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_comment_thing_id_57ab492b_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_comment_user_id_46f0670f_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_comment
-- ----------------------------

-- ----------------------------
-- Table structure for b_error_log
-- ----------------------------
DROP TABLE IF EXISTS `b_error_log`;
CREATE TABLE `b_error_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_error_log
-- ----------------------------

-- ----------------------------
-- Table structure for b_feedback
-- ----------------------------
DROP TABLE IF EXISTS `b_feedback`;
CREATE TABLE `b_feedback`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_feedback
-- ----------------------------
INSERT INTO `b_feedback` VALUES (1, '测试反馈221111', '1111111111111111', '武松', '222011@gmail.com', '2221534', '2024-07-30 20:14:12.002695');

-- ----------------------------
-- Table structure for b_login_log
-- ----------------------------
DROP TABLE IF EXISTS `b_login_log`;
CREATE TABLE `b_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_login_log
-- ----------------------------
INSERT INTO `b_login_log` VALUES (1, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-29 20:29:35.232170');
INSERT INTO `b_login_log` VALUES (2, 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-29 21:02:09.016835');
INSERT INTO `b_login_log` VALUES (3, 'admin123', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-30 20:17:14.299717');
INSERT INTO `b_login_log` VALUES (4, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-30 20:17:22.661712');
INSERT INTO `b_login_log` VALUES (5, 'test004', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-30 20:22:49.398920');
INSERT INTO `b_login_log` VALUES (6, 'admin', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', '2024-07-30 20:24:19.195680');

-- ----------------------------
-- Table structure for b_notice
-- ----------------------------
DROP TABLE IF EXISTS `b_notice`;
CREATE TABLE `b_notice`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_notice
-- ----------------------------
INSERT INTO `b_notice` VALUES (1, '测试通知', '11111111111', '2024-07-30 20:13:46.484002');

-- ----------------------------
-- Table structure for b_op_log
-- ----------------------------
DROP TABLE IF EXISTS `b_op_log`;
CREATE TABLE `b_op_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `re_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_time` datetime(6) NULL DEFAULT NULL,
  `re_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `re_content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `access_time` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1179 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_op_log
-- ----------------------------
INSERT INTO `b_op_log` VALUES (1161, '127.0.0.1', '2024-07-30 20:24:47.827020', '/myapp/admin/opLog/clear', 'POST', NULL, '28');
INSERT INTO `b_op_log` VALUES (1162, '127.0.0.1', '2024-07-30 20:24:48.897460', '/myapp/admin/loginLog/list', 'GET', NULL, '16');
INSERT INTO `b_op_log` VALUES (1163, '127.0.0.1', '2024-07-30 20:24:49.433764', '/myapp/admin/opLog/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1164, '127.0.0.1', '2024-07-30 20:24:50.316382', '/myapp/admin/loginLog/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1165, '127.0.0.1', '2024-07-30 20:24:50.982286', '/myapp/admin/opLog/list', 'GET', NULL, '12');
INSERT INTO `b_op_log` VALUES (1166, '127.0.0.1', '2024-07-30 20:24:51.820844', '/myapp/admin/errorLog/list', 'GET', NULL, '11');
INSERT INTO `b_op_log` VALUES (1167, '127.0.0.1', '2024-07-30 20:24:52.447078', '/myapp/admin/opLog/list', 'GET', NULL, '13');
INSERT INTO `b_op_log` VALUES (1168, '127.0.0.1', '2024-07-30 20:24:53.060010', '/myapp/admin/loginLog/list', 'GET', NULL, '35');
INSERT INTO `b_op_log` VALUES (1169, '127.0.0.1', '2024-07-30 20:24:58.438778', '/myapp/admin/classification/list', 'GET', NULL, '14');
INSERT INTO `b_op_log` VALUES (1170, '127.0.0.1', '2024-07-30 20:24:58.589651', '/myapp/admin/classification/list', 'GET', NULL, '165');
INSERT INTO `b_op_log` VALUES (1171, '127.0.0.1', '2024-07-30 20:24:58.821123', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1172, '127.0.0.1', '2024-07-30 20:24:59.316778', '/myapp/admin/user/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1173, '127.0.0.1', '2024-07-30 20:24:59.979876', '/myapp/admin/opLog/list', 'GET', NULL, '18');
INSERT INTO `b_op_log` VALUES (1174, '127.0.0.1', '2024-07-30 20:25:03.009383', '/myapp/admin/loginLog/list', 'GET', NULL, '31');
INSERT INTO `b_op_log` VALUES (1175, '127.0.0.1', '2024-07-30 20:25:04.225064', '/myapp/admin/overview/count', 'GET', NULL, '30');
INSERT INTO `b_op_log` VALUES (1176, '127.0.0.1', '2024-07-30 20:25:04.876576', '/myapp/admin/feedback/list', 'GET', NULL, '27');
INSERT INTO `b_op_log` VALUES (1177, '127.0.0.1', '2024-07-30 20:25:06.075090', '/myapp/admin/classification/list', 'GET', NULL, '10');
INSERT INTO `b_op_log` VALUES (1178, '127.0.0.1', '2024-07-30 20:25:06.204530', '/myapp/admin/classification/list', 'GET', NULL, '134');

-- ----------------------------
-- Table structure for b_order
-- ----------------------------
DROP TABLE IF EXISTS `b_order`;
CREATE TABLE `b_order`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_number` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `count` int(11) NOT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `order_time` datetime(6) NULL DEFAULT NULL,
  `receiver_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `chengji` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiver_school` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_order_thing_id_4e345e2c_fk_b_thing_id`(`thing_id`) USING BTREE,
  INDEX `b_order_user_id_64854046_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_order_thing_id_4e345e2c_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_order_user_id_64854046_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_order
-- ----------------------------
INSERT INTO `b_order` VALUES (1, '1722259524564', 0, '1', '2024-07-29 21:25:24.000000', '刘德华', '8888899999', '111', 2, 4, '99', '389909988888888', '清华大学');
INSERT INTO `b_order` VALUES (2, '1722341371874', 0, '2', '2024-07-30 20:09:31.890739', '武松', '888899999', '', 4, 4, NULL, '98887766666', '河北大学');
INSERT INTO `b_order` VALUES (3, '1722341689699', 0, '1', '2024-07-30 20:14:49.000000', '武松', '88889999', '222333', 7, 4, '88', '999988888', '浙江大学');

-- ----------------------------
-- Table structure for b_record
-- ----------------------------
DROP TABLE IF EXISTS `b_record`;
CREATE TABLE `b_record`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NULL DEFAULT NULL,
  `score` int(11) NOT NULL,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_record_thing_id_d8e773c0_fk_b_thing_id`(`thing_id`) USING BTREE,
  CONSTRAINT `b_record_thing_id_d8e773c0_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_record
-- ----------------------------
INSERT INTO `b_record` VALUES (1, 2, 18, '127.0.0.1');
INSERT INTO `b_record` VALUES (2, 10, 2, '127.0.0.2');
INSERT INTO `b_record` VALUES (3, 9, 25, '127.0.0.2');
INSERT INTO `b_record` VALUES (4, 11, 12, '127.0.0.2');
INSERT INTO `b_record` VALUES (5, 1, 2, '127.0.0.2');
INSERT INTO `b_record` VALUES (6, 3, 17, '127.0.0.2');
INSERT INTO `b_record` VALUES (7, 4, 5, '127.0.0.2');
INSERT INTO `b_record` VALUES (8, 7, 2, '127.0.0.2');
INSERT INTO `b_record` VALUES (9, 6, 1, '127.0.0.2');
INSERT INTO `b_record` VALUES (10, 3, 2, '127.0.0.1');
INSERT INTO `b_record` VALUES (11, 6, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (12, 10, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (13, 9, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (14, 12, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (15, 8, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (16, 5, 1, '127.0.0.1');
INSERT INTO `b_record` VALUES (17, 11, 1, '127.0.0.1');

-- ----------------------------
-- Table structure for b_thing
-- ----------------------------
DROP TABLE IF EXISTS `b_thing`;
CREATE TABLE `b_thing`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `bmsj` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `location` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `pv` int(11) NOT NULL,
  `recommend_count` int(11) NOT NULL,
  `wish_count` int(11) NOT NULL,
  `collect_count` int(11) NOT NULL,
  `classification_id` bigint(20) NULL DEFAULT NULL,
  `user_id` bigint(20) NULL DEFAULT NULL,
  `jsdd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `jssj` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `level` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rate` int(11) NOT NULL,
  `zzf` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `b_thing_classification_id_47675ac4_fk_b_classification_id`(`classification_id`) USING BTREE,
  INDEX `b_thing_user_id_9918a633_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_classification_id_47675ac4_fk_b_classification_id` FOREIGN KEY (`classification_id`) REFERENCES `b_classification` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_user_id_9918a633_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing
-- ----------------------------
INSERT INTO `b_thing` VALUES (1, '大学生英语竞赛', 'cover/1722257293000.jpeg', '在当今竞争激烈的社会中，大学生竞赛已成为培养创新意识、实践能力和团队协作精神的重要平台。各类竞赛不仅为学生提供了展示自我才华的机会，也为他们的学术和职业发展打下坚实的基础。\r\n\r\n大学生竞赛的种类繁多，涵盖了学术、科技、文化艺术、体育等多个领域。学术类竞赛如全国大学生数学建模竞赛、英语竞赛等，鼓励学生在学术研究中探索和实践，提高他们的专业素养和思维能力。科技类竞赛如中国大学生程序设计竞赛和机器人竞赛，不仅考验学生的科技创新能力，也通过团队合作提升他们的问题解决能力。这些竞赛帮助学生将理论知识与实际应用相结合，激发他们的创新思维。\r\n\r\n此外，文化艺术类竞赛如文艺汇演和摄影比赛，为学生提供了一个展示个性和才华的舞台，促进了校园文化的多样性和活力。体育类竞赛如田径运动会和校园篮球联赛，不仅增强了学生的身体素质，还培养了团队精神和竞争意识，增进了同学之间的友谊。\r\n\r\n参与竞赛的学生通常会经历从准备到参赛的全流程，这一过程不仅锻炼了他们的组织和协调能力，还提高了他们的应变和决策能力。同时，获奖经历也为学生的简历增添了光彩，增加了在求职时的竞争力。\r\n\r\n总之，大学生竞赛是一个多元化、富有挑战性的活动平台，激励学生不断追求卓越，锻炼他们的综合素质。通过参与各类竞赛，学生不仅能提升自身能力，也能培养团队合作精神，迎接未来的各种挑战。无论是学术研究还是人文艺术，竞赛都为学生打开了新的视野，成为他们成长道路上不可或缺的一部分。', '2024-09-01至2025-12-12', NULL, NULL, NULL, NULL, '0', '2024-07-29 20:41:21.154517', 11, 0, 0, 0, 4, NULL, '北京大学教学楼3号楼', '2025年12月15日', '省级', 3, '英语学习协会');
INSERT INTO `b_thing` VALUES (2, '大学生物理竞赛', 'cover/1722257377868.jpeg', '在当今竞争激烈的社会中，大学生竞赛已成为培养创新意识、实践能力和团队协作精神的重要平台。各类竞赛不仅为学生提供了展示自我才华的机会，也为他们的学术和职业发展打下坚实的基础。\r\n\r\n大学生竞赛的种类繁多，涵盖了学术、科技、文化艺术、体育等多个领域。学术类竞赛如全国大学生数学建模竞赛、英语竞赛等，鼓励学生在学术研究中探索和实践，提高他们的专业素养和思维能力。科技类竞赛如中国大学生程序设计竞赛和机器人竞赛，不仅考验学生的科技创新能力，也通过团队合作提升他们的问题解决能力。这些竞赛帮助学生将理论知识与实际应用相结合，激发他们的创新思维。\r\n\r\n此外，文化艺术类竞赛如文艺汇演和摄影比赛，为学生提供了一个展示个性和才华的舞台，促进了校园文化的多样性和活力。体育类竞赛如田径运动会和校园篮球联赛，不仅增强了学生的身体素质，还培养了团队精神和竞争意识，增进了同学之间的友谊。\r\n\r\n参与竞赛的学生通常会经历从准备到参赛的全流程，这一过程不仅锻炼了他们的组织和协调能力，还提高了他们的应变和决策能力。同时，获奖经历也为学生的简历增添了光彩，增加了在求职时的竞争力。\r\n\r\n总之，大学生竞赛是一个多元化、富有挑战性的活动平台，激励学生不断追求卓越，锻炼他们的综合素质。通过参与各类竞赛，学生不仅能提升自身能力，也能培养团队合作精神，迎接未来的各种挑战。无论是学术研究还是人文艺术，竞赛都为学生打开了新的视野，成为他们成长道路上不可或缺的一部分。', '2024-09-01至2025-12-12', NULL, NULL, NULL, NULL, '0', '2024-07-29 20:41:21.154517', 27, 0, 1, 1, 4, NULL, '北京大学教学楼3号楼', '2025年12月15日', '省级', 3, '物理学习协会');
INSERT INTO `b_thing` VALUES (3, '全国研究生演讲大赛', 'cover/1722257396444.jpeg', '在当今竞争激烈的社会中，大学生竞赛已成为培养创新意识、实践能力和团队协作精神的重要平台。各类竞赛不仅为学生提供了展示自我才华的机会，也为他们的学术和职业发展打下坚实的基础。\r\n\r\n大学生竞赛的种类繁多，涵盖了学术、科技、文化艺术、体育等多个领域。学术类竞赛如全国大学生数学建模竞赛、英语竞赛等，鼓励学生在学术研究中探索和实践，提高他们的专业素养和思维能力。科技类竞赛如中国大学生程序设计竞赛和机器人竞赛，不仅考验学生的科技创新能力，也通过团队合作提升他们的问题解决能力。这些竞赛帮助学生将理论知识与实际应用相结合，激发他们的创新思维。\r\n\r\n此外，文化艺术类竞赛如文艺汇演和摄影比赛，为学生提供了一个展示个性和才华的舞台，促进了校园文化的多样性和活力。体育类竞赛如田径运动会和校园篮球联赛，不仅增强了学生的身体素质，还培养了团队精神和竞争意识，增进了同学之间的友谊。\r\n\r\n参与竞赛的学生通常会经历从准备到参赛的全流程，这一过程不仅锻炼了他们的组织和协调能力，还提高了他们的应变和决策能力。同时，获奖经历也为学生的简历增添了光彩，增加了在求职时的竞争力。\r\n\r\n总之，大学生竞赛是一个多元化、富有挑战性的活动平台，激励学生不断追求卓越，锻炼他们的综合素质。通过参与各类竞赛，学生不仅能提升自身能力，也能培养团队合作精神，迎接未来的各种挑战。无论是学术研究还是人文艺术，竞赛都为学生打开了新的视野，成为他们成长道路上不可或缺的一部分。', '2024-09-01至2025-12-12', NULL, NULL, NULL, NULL, '0', '2024-07-29 20:41:21.154517', 28, 0, 1, 1, 3, NULL, '北京大学教学楼3号楼', '2025年12月15日', '国家级', 4, '口才学习协会');
INSERT INTO `b_thing` VALUES (4, '大学生设计竞赛', 'cover/1722257426618.jpeg', '在当今竞争激烈的社会中，大学生竞赛已成为培养创新意识、实践能力和团队协作精神的重要平台。各类竞赛不仅为学生提供了展示自我才华的机会，也为他们的学术和职业发展打下坚实的基础。\r\n\r\n大学生竞赛的种类繁多，涵盖了学术、科技、文化艺术、体育等多个领域。学术类竞赛如全国大学生数学建模竞赛、英语竞赛等，鼓励学生在学术研究中探索和实践，提高他们的专业素养和思维能力。科技类竞赛如中国大学生程序设计竞赛和机器人竞赛，不仅考验学生的科技创新能力，也通过团队合作提升他们的问题解决能力。这些竞赛帮助学生将理论知识与实际应用相结合，激发他们的创新思维。\r\n\r\n此外，文化艺术类竞赛如文艺汇演和摄影比赛，为学生提供了一个展示个性和才华的舞台，促进了校园文化的多样性和活力。体育类竞赛如田径运动会和校园篮球联赛，不仅增强了学生的身体素质，还培养了团队精神和竞争意识，增进了同学之间的友谊。\r\n\r\n参与竞赛的学生通常会经历从准备到参赛的全流程，这一过程不仅锻炼了他们的组织和协调能力，还提高了他们的应变和决策能力。同时，获奖经历也为学生的简历增添了光彩，增加了在求职时的竞争力。\r\n\r\n总之，大学生竞赛是一个多元化、富有挑战性的活动平台，激励学生不断追求卓越，锻炼他们的综合素质。通过参与各类竞赛，学生不仅能提升自身能力，也能培养团队合作精神，迎接未来的各种挑战。无论是学术研究还是人文艺术，竞赛都为学生打开了新的视野，成为他们成长道路上不可或缺的一部分。', '2024-09-01至2025-12-12', NULL, NULL, NULL, NULL, '0', '2024-07-29 20:41:21.154517', 14, 0, 1, 1, 2, NULL, '北京大学教学楼3号楼', '2025年12月15日', '省级', 3, '科技协会');
INSERT INTO `b_thing` VALUES (5, '大学生化学竞赛', 'cover/1722257449467.jpeg', '在当今竞争激烈的社会中，大学生竞赛已成为培养创新意识、实践能力和团队协作精神的重要平台。各类竞赛不仅为学生提供了展示自我才华的机会，也为他们的学术和职业发展打下坚实的基础。\r\n\r\n大学生竞赛的种类繁多，涵盖了学术、科技、文化艺术、体育等多个领域。学术类竞赛如全国大学生数学建模竞赛、英语竞赛等，鼓励学生在学术研究中探索和实践，提高他们的专业素养和思维能力。科技类竞赛如中国大学生程序设计竞赛和机器人竞赛，不仅考验学生的科技创新能力，也通过团队合作提升他们的问题解决能力。这些竞赛帮助学生将理论知识与实际应用相结合，激发他们的创新思维。\r\n\r\n此外，文化艺术类竞赛如文艺汇演和摄影比赛，为学生提供了一个展示个性和才华的舞台，促进了校园文化的多样性和活力。体育类竞赛如田径运动会和校园篮球联赛，不仅增强了学生的身体素质，还培养了团队精神和竞争意识，增进了同学之间的友谊。\r\n\r\n参与竞赛的学生通常会经历从准备到参赛的全流程，这一过程不仅锻炼了他们的组织和协调能力，还提高了他们的应变和决策能力。同时，获奖经历也为学生的简历增添了光彩，增加了在求职时的竞争力。\r\n\r\n总之，大学生竞赛是一个多元化、富有挑战性的活动平台，激励学生不断追求卓越，锻炼他们的综合素质。通过参与各类竞赛，学生不仅能提升自身能力，也能培养团队合作精神，迎接未来的各种挑战。无论是学术研究还是人文艺术，竞赛都为学生打开了新的视野，成为他们成长道路上不可或缺的一部分。', '2024-09-01至2025-12-12', NULL, NULL, NULL, NULL, '0', '2024-07-29 20:41:21.154517', 10, 0, 0, 0, 2, NULL, '北京大学教学楼3号楼', '2025年12月15日', '省级', 3, '化学学习协会');
INSERT INTO `b_thing` VALUES (6, '无人机组装大赛', 'cover/1722257477802.jpeg', '在当今竞争激烈的社会中，大学生竞赛已成为培养创新意识、实践能力和团队协作精神的重要平台。各类竞赛不仅为学生提供了展示自我才华的机会，也为他们的学术和职业发展打下坚实的基础。\r\n\r\n大学生竞赛的种类繁多，涵盖了学术、科技、文化艺术、体育等多个领域。学术类竞赛如全国大学生数学建模竞赛、英语竞赛等，鼓励学生在学术研究中探索和实践，提高他们的专业素养和思维能力。科技类竞赛如中国大学生程序设计竞赛和机器人竞赛，不仅考验学生的科技创新能力，也通过团队合作提升他们的问题解决能力。这些竞赛帮助学生将理论知识与实际应用相结合，激发他们的创新思维。\r\n\r\n此外，文化艺术类竞赛如文艺汇演和摄影比赛，为学生提供了一个展示个性和才华的舞台，促进了校园文化的多样性和活力。体育类竞赛如田径运动会和校园篮球联赛，不仅增强了学生的身体素质，还培养了团队精神和竞争意识，增进了同学之间的友谊。\r\n\r\n参与竞赛的学生通常会经历从准备到参赛的全流程，这一过程不仅锻炼了他们的组织和协调能力，还提高了他们的应变和决策能力。同时，获奖经历也为学生的简历增添了光彩，增加了在求职时的竞争力。\r\n\r\n总之，大学生竞赛是一个多元化、富有挑战性的活动平台，激励学生不断追求卓越，锻炼他们的综合素质。通过参与各类竞赛，学生不仅能提升自身能力，也能培养团队合作精神，迎接未来的各种挑战。无论是学术研究还是人文艺术，竞赛都为学生打开了新的视野，成为他们成长道路上不可或缺的一部分。', '2024-09-01至2025-12-12', NULL, NULL, NULL, NULL, '0', '2024-07-29 20:41:21.154517', 11, 0, 0, 0, 2, NULL, '北京大学教学楼3号楼', '2025年12月15日', '市级', 3, '科技学习协会');
INSERT INTO `b_thing` VALUES (7, '音乐演唱大赛', 'cover/1722257505429.jpeg', '在当今竞争激烈的社会中，大学生竞赛已成为培养创新意识、实践能力和团队协作精神的重要平台。各类竞赛不仅为学生提供了展示自我才华的机会，也为他们的学术和职业发展打下坚实的基础。\r\n\r\n大学生竞赛的种类繁多，涵盖了学术、科技、文化艺术、体育等多个领域。学术类竞赛如全国大学生数学建模竞赛、英语竞赛等，鼓励学生在学术研究中探索和实践，提高他们的专业素养和思维能力。科技类竞赛如中国大学生程序设计竞赛和机器人竞赛，不仅考验学生的科技创新能力，也通过团队合作提升他们的问题解决能力。这些竞赛帮助学生将理论知识与实际应用相结合，激发他们的创新思维。\r\n\r\n此外，文化艺术类竞赛如文艺汇演和摄影比赛，为学生提供了一个展示个性和才华的舞台，促进了校园文化的多样性和活力。体育类竞赛如田径运动会和校园篮球联赛，不仅增强了学生的身体素质，还培养了团队精神和竞争意识，增进了同学之间的友谊。\r\n\r\n参与竞赛的学生通常会经历从准备到参赛的全流程，这一过程不仅锻炼了他们的组织和协调能力，还提高了他们的应变和决策能力。同时，获奖经历也为学生的简历增添了光彩，增加了在求职时的竞争力。\r\n\r\n总之，大学生竞赛是一个多元化、富有挑战性的活动平台，激励学生不断追求卓越，锻炼他们的综合素质。通过参与各类竞赛，学生不仅能提升自身能力，也能培养团队合作精神，迎接未来的各种挑战。无论是学术研究还是人文艺术，竞赛都为学生打开了新的视野，成为他们成长道路上不可或缺的一部分。', '2024-09-01至2025-12-12', NULL, NULL, NULL, NULL, '0', '2024-07-29 20:41:21.154517', 11, 0, 0, 0, 3, NULL, '北京大学教学楼3号楼', '2025年12月15日', '市级', 3, '音律协会');
INSERT INTO `b_thing` VALUES (8, '大学生篮球大赛', 'cover/1722257532961.jpeg', '在当今竞争激烈的社会中，大学生竞赛已成为培养创新意识、实践能力和团队协作精神的重要平台。各类竞赛不仅为学生提供了展示自我才华的机会，也为他们的学术和职业发展打下坚实的基础。\r\n\r\n大学生竞赛的种类繁多，涵盖了学术、科技、文化艺术、体育等多个领域。学术类竞赛如全国大学生数学建模竞赛、英语竞赛等，鼓励学生在学术研究中探索和实践，提高他们的专业素养和思维能力。科技类竞赛如中国大学生程序设计竞赛和机器人竞赛，不仅考验学生的科技创新能力，也通过团队合作提升他们的问题解决能力。这些竞赛帮助学生将理论知识与实际应用相结合，激发他们的创新思维。\r\n\r\n此外，文化艺术类竞赛如文艺汇演和摄影比赛，为学生提供了一个展示个性和才华的舞台，促进了校园文化的多样性和活力。体育类竞赛如田径运动会和校园篮球联赛，不仅增强了学生的身体素质，还培养了团队精神和竞争意识，增进了同学之间的友谊。\r\n\r\n参与竞赛的学生通常会经历从准备到参赛的全流程，这一过程不仅锻炼了他们的组织和协调能力，还提高了他们的应变和决策能力。同时，获奖经历也为学生的简历增添了光彩，增加了在求职时的竞争力。\r\n\r\n总之，大学生竞赛是一个多元化、富有挑战性的活动平台，激励学生不断追求卓越，锻炼他们的综合素质。通过参与各类竞赛，学生不仅能提升自身能力，也能培养团队合作精神，迎接未来的各种挑战。无论是学术研究还是人文艺术，竞赛都为学生打开了新的视野，成为他们成长道路上不可或缺的一部分。', '2024-09-01至2025-12-12', NULL, NULL, NULL, NULL, '0', '2024-07-29 20:41:21.154517', 10, 0, 0, 0, 1, NULL, '清华大学教学楼3号楼', '2025年12月15日', '市级', 3, '运动协会');
INSERT INTO `b_thing` VALUES (9, '无线电零件组装比赛', 'cover/1722257570776.jpeg', '在当今竞争激烈的社会中，大学生竞赛已成为培养创新意识、实践能力和团队协作精神的重要平台。各类竞赛不仅为学生提供了展示自我才华的机会，也为他们的学术和职业发展打下坚实的基础。\r\n\r\n大学生竞赛的种类繁多，涵盖了学术、科技、文化艺术、体育等多个领域。学术类竞赛如全国大学生数学建模竞赛、英语竞赛等，鼓励学生在学术研究中探索和实践，提高他们的专业素养和思维能力。科技类竞赛如中国大学生程序设计竞赛和机器人竞赛，不仅考验学生的科技创新能力，也通过团队合作提升他们的问题解决能力。这些竞赛帮助学生将理论知识与实际应用相结合，激发他们的创新思维。\r\n\r\n此外，文化艺术类竞赛如文艺汇演和摄影比赛，为学生提供了一个展示个性和才华的舞台，促进了校园文化的多样性和活力。体育类竞赛如田径运动会和校园篮球联赛，不仅增强了学生的身体素质，还培养了团队精神和竞争意识，增进了同学之间的友谊。\r\n\r\n参与竞赛的学生通常会经历从准备到参赛的全流程，这一过程不仅锻炼了他们的组织和协调能力，还提高了他们的应变和决策能力。同时，获奖经历也为学生的简历增添了光彩，增加了在求职时的竞争力。\r\n\r\n总之，大学生竞赛是一个多元化、富有挑战性的活动平台，激励学生不断追求卓越，锻炼他们的综合素质。通过参与各类竞赛，学生不仅能提升自身能力，也能培养团队合作精神，迎接未来的各种挑战。无论是学术研究还是人文艺术，竞赛都为学生打开了新的视野，成为他们成长道路上不可或缺的一部分。', '2024-09-01至2025-12-12', NULL, NULL, NULL, NULL, '0', '2024-07-29 20:41:21.154517', 35, 0, 1, 1, 2, NULL, '北京大学教学楼3号楼', '2025年12月15日', '国家级', 4, '科技学习协会');
INSERT INTO `b_thing` VALUES (10, '大学生物理大奖赛', 'cover/1722257604924.jpeg', '在当今竞争激烈的社会中，大学生竞赛已成为培养创新意识、实践能力和团队协作精神的重要平台。各类竞赛不仅为学生提供了展示自我才华的机会，也为他们的学术和职业发展打下坚实的基础。\r\n\r\n大学生竞赛的种类繁多，涵盖了学术、科技、文化艺术、体育等多个领域。学术类竞赛如全国大学生数学建模竞赛、英语竞赛等，鼓励学生在学术研究中探索和实践，提高他们的专业素养和思维能力。科技类竞赛如中国大学生程序设计竞赛和机器人竞赛，不仅考验学生的科技创新能力，也通过团队合作提升他们的问题解决能力。这些竞赛帮助学生将理论知识与实际应用相结合，激发他们的创新思维。\r\n\r\n此外，文化艺术类竞赛如文艺汇演和摄影比赛，为学生提供了一个展示个性和才华的舞台，促进了校园文化的多样性和活力。体育类竞赛如田径运动会和校园篮球联赛，不仅增强了学生的身体素质，还培养了团队精神和竞争意识，增进了同学之间的友谊。\r\n\r\n参与竞赛的学生通常会经历从准备到参赛的全流程，这一过程不仅锻炼了他们的组织和协调能力，还提高了他们的应变和决策能力。同时，获奖经历也为学生的简历增添了光彩，增加了在求职时的竞争力。\r\n\r\n总之，大学生竞赛是一个多元化、富有挑战性的活动平台，激励学生不断追求卓越，锻炼他们的综合素质。通过参与各类竞赛，学生不仅能提升自身能力，也能培养团队合作精神，迎接未来的各种挑战。无论是学术研究还是人文艺术，竞赛都为学生打开了新的视野，成为他们成长道路上不可或缺的一部分。', '2024-09-01至2025-12-12', NULL, NULL, NULL, NULL, '0', '2024-07-29 20:41:21.154517', 12, 0, 0, 0, 2, NULL, '北京大学教学楼3号楼', '2025年12月15日', '省级', 3, '物理学习协会');
INSERT INTO `b_thing` VALUES (11, '测试比赛222', 'cover/1722257638121.jpeg', '在当今竞争激烈的社会中，大学生竞赛已成为培养创新意识、实践能力和团队协作精神的重要平台。各类竞赛不仅为学生提供了展示自我才华的机会，也为他们的学术和职业发展打下坚实的基础。\r\n\r\n大学生竞赛的种类繁多，涵盖了学术、科技、文化艺术、体育等多个领域。学术类竞赛如全国大学生数学建模竞赛、英语竞赛等，鼓励学生在学术研究中探索和实践，提高他们的专业素养和思维能力。科技类竞赛如中国大学生程序设计竞赛和机器人竞赛，不仅考验学生的科技创新能力，也通过团队合作提升他们的问题解决能力。这些竞赛帮助学生将理论知识与实际应用相结合，激发他们的创新思维。\r\n\r\n此外，文化艺术类竞赛如文艺汇演和摄影比赛，为学生提供了一个展示个性和才华的舞台，促进了校园文化的多样性和活力。体育类竞赛如田径运动会和校园篮球联赛，不仅增强了学生的身体素质，还培养了团队精神和竞争意识，增进了同学之间的友谊。\r\n\r\n参与竞赛的学生通常会经历从准备到参赛的全流程，这一过程不仅锻炼了他们的组织和协调能力，还提高了他们的应变和决策能力。同时，获奖经历也为学生的简历增添了光彩，增加了在求职时的竞争力。\r\n\r\n总之，大学生竞赛是一个多元化、富有挑战性的活动平台，激励学生不断追求卓越，锻炼他们的综合素质。通过参与各类竞赛，学生不仅能提升自身能力，也能培养团队合作精神，迎接未来的各种挑战。无论是学术研究还是人文艺术，竞赛都为学生打开了新的视野，成为他们成长道路上不可或缺的一部分。', '2024-09-01至2025-12-12', NULL, NULL, NULL, NULL, '0', '2024-07-29 20:41:21.154517', 22, 0, 0, 1, 3, NULL, '北京大学教学楼3号楼', '2025年12月15日', '省级', 3, '山东学习协会');
INSERT INTO `b_thing` VALUES (12, '语文演讲比赛', 'cover/1722257293000.jpeg', '在当今竞争激烈的社会中，大学生竞赛已成为培养创新意识、实践能力和团队协作精神的重要平台。各类竞赛不仅为学生提供了展示自我才华的机会，也为他们的学术和职业发展打下坚实的基础。\r\n\r\n大学生竞赛的种类繁多，涵盖了学术、科技、文化艺术、体育等多个领域。学术类竞赛如全国大学生数学建模竞赛、英语竞赛等，鼓励学生在学术研究中探索和实践，提高他们的专业素养和思维能力。科技类竞赛如中国大学生程序设计竞赛和机器人竞赛，不仅考验学生的科技创新能力，也通过团队合作提升他们的问题解决能力。这些竞赛帮助学生将理论知识与实际应用相结合，激发他们的创新思维。\r\n\r\n此外，文化艺术类竞赛如文艺汇演和摄影比赛，为学生提供了一个展示个性和才华的舞台，促进了校园文化的多样性和活力。体育类竞赛如田径运动会和校园篮球联赛，不仅增强了学生的身体素质，还培养了团队精神和竞争意识，增进了同学之间的友谊。\r\n\r\n参与竞赛的学生通常会经历从准备到参赛的全流程，这一过程不仅锻炼了他们的组织和协调能力，还提高了他们的应变和决策能力。同时，获奖经历也为学生的简历增添了光彩，增加了在求职时的竞争力。\r\n\r\n总之，大学生竞赛是一个多元化、富有挑战性的活动平台，激励学生不断追求卓越，锻炼他们的综合素质。通过参与各类竞赛，学生不仅能提升自身能力，也能培养团队合作精神，迎接未来的各种挑战。无论是学术研究还是人文艺术，竞赛都为学生打开了新的视野，成为他们成长道路上不可或缺的一部分。', '2024-09-01至2025-12-12', NULL, NULL, NULL, NULL, '0', '2024-07-29 20:41:21.154517', 10, 0, 0, 0, 3, NULL, '北京大学教学楼3号楼', '2025年12月15日', '省级', 3, '口才学习协会');

-- ----------------------------
-- Table structure for b_thing_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_collect`;
CREATE TABLE `b_thing_collect`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_collect_thing_id_user_id_45b9f252_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_collect_user_id_e5d69968_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_collect_thing_id_8edce8b3_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_collect_user_id_e5d69968_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_collect
-- ----------------------------
INSERT INTO `b_thing_collect` VALUES (1, 2, 4);
INSERT INTO `b_thing_collect` VALUES (3, 3, 4);
INSERT INTO `b_thing_collect` VALUES (2, 4, 4);
INSERT INTO `b_thing_collect` VALUES (4, 9, 4);
INSERT INTO `b_thing_collect` VALUES (5, 11, 4);

-- ----------------------------
-- Table structure for b_thing_wish
-- ----------------------------
DROP TABLE IF EXISTS `b_thing_wish`;
CREATE TABLE `b_thing_wish`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `thing_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `b_thing_wish_thing_id_user_id_9d647bbb_uniq`(`thing_id`, `user_id`) USING BTREE,
  INDEX `b_thing_wish_user_id_e2d94f6c_fk_b_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `b_thing_wish_thing_id_f0864b16_fk_b_thing_id` FOREIGN KEY (`thing_id`) REFERENCES `b_thing` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `b_thing_wish_user_id_e2d94f6c_fk_b_user_id` FOREIGN KEY (`user_id`) REFERENCES `b_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_thing_wish
-- ----------------------------
INSERT INTO `b_thing_wish` VALUES (1, 2, 4);
INSERT INTO `b_thing_wish` VALUES (3, 3, 4);
INSERT INTO `b_thing_wish` VALUES (2, 4, 4);
INSERT INTO `b_thing_wish` VALUES (4, 9, 4);

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nickname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mobile` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `score` int(11) NULL DEFAULT NULL,
  `push_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `push_switch` tinyint(1) NULL DEFAULT NULL,
  `admin_token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of b_user
-- ----------------------------
INSERT INTO `b_user` VALUES (1, 'admin', '78aafd3207ec4ef6d16f9fc07e95ebc3', '1', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-05-04 16:37:10.143202', 0, NULL, 0, '21232f297a57a5a743894a0e4a801fc3', NULL);
INSERT INTO `b_user` VALUES (2, 'admin123', '0192023a7bbd73250516f069df18b500', '3', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-29 20:29:44.909844', 0, NULL, 0, '0192023a7bbd73250516f069df18b500', NULL);
INSERT INTO `b_user` VALUES (3, 'test003', 'db270e0074bad27c1177f31627818618', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-29 20:29:56.633650', 0, NULL, 0, NULL, NULL);
INSERT INTO `b_user` VALUES (4, 'ddd', '77963b7a931377ad4ab5ad6a9cd718aa', '2', '0', 'jhhgjkk', 'avatar/1722341723837.png', '888888', NULL, NULL, '666666', '2024-07-29 21:02:06.557416', 0, NULL, 0, NULL, '77963b7a931377ad4ab5ad6a9cd718aa');
INSERT INTO `b_user` VALUES (5, 'test004', 'b990a1577e88882a43f26b232d85632b', '2', '0', NULL, '', NULL, NULL, NULL, NULL, '2024-07-30 20:20:48.134252', 0, NULL, 0, NULL, 'b990a1577e88882a43f26b232d85632b');

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `object_repr` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content_type_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `django_admin_log_content_type_id_c4bce8eb_fk_django_co`(`content_type_id`) USING BTREE,
  INDEX `django_admin_log_user_id_c564eba6_fk_auth_user_id`(`user_id`) USING BTREE,
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (7, 'myapp', 'ad');
INSERT INTO `django_content_type` VALUES (8, 'myapp', 'classification');
INSERT INTO `django_content_type` VALUES (17, 'myapp', 'comment');
INSERT INTO `django_content_type` VALUES (9, 'myapp', 'errorlog');
INSERT INTO `django_content_type` VALUES (18, 'myapp', 'feedback');
INSERT INTO `django_content_type` VALUES (10, 'myapp', 'loginlog');
INSERT INTO `django_content_type` VALUES (11, 'myapp', 'notice');
INSERT INTO `django_content_type` VALUES (12, 'myapp', 'oplog');
INSERT INTO `django_content_type` VALUES (16, 'myapp', 'order');
INSERT INTO `django_content_type` VALUES (15, 'myapp', 'record');
INSERT INTO `django_content_type` VALUES (14, 'myapp', 'thing');
INSERT INTO `django_content_type` VALUES (13, 'myapp', 'user');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2024-07-29 20:25:31.232075');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2024-07-29 20:25:32.044696');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2024-07-29 20:25:32.211267');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2024-07-29 20:25:32.228937');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2024-07-29 20:25:32.243938');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2024-07-29 20:25:32.399803');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2024-07-29 20:25:32.474845');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2024-07-29 20:25:32.545042');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2024-07-29 20:25:32.558041');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2024-07-29 20:25:32.622565');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2024-07-29 20:25:32.629701');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2024-07-29 20:25:32.646704');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2024-07-29 20:25:32.710734');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2024-07-29 20:25:32.785269');
INSERT INTO `django_migrations` VALUES (15, 'auth', '0010_alter_group_name_max_length', '2024-07-29 20:25:32.858081');
INSERT INTO `django_migrations` VALUES (16, 'auth', '0011_update_proxy_permissions', '2024-07-29 20:25:32.873441');
INSERT INTO `django_migrations` VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2024-07-29 20:25:32.940683');
INSERT INTO `django_migrations` VALUES (18, 'myapp', '0001_initial', '2024-07-29 20:25:34.950666');
INSERT INTO `django_migrations` VALUES (19, 'myapp', '0002_thing_user', '2024-07-29 20:25:35.036573');
INSERT INTO `django_migrations` VALUES (20, 'myapp', '0003_auto_20240504_1643', '2024-07-29 20:25:35.337550');
INSERT INTO `django_migrations` VALUES (21, 'myapp', '0004_auto_20240504_1700', '2024-07-29 20:25:35.478838');
INSERT INTO `django_migrations` VALUES (22, 'myapp', '0005_auto_20240729_2025', '2024-07-29 20:25:36.490812');
INSERT INTO `django_migrations` VALUES (23, 'sessions', '0001_initial', '2024-07-29 20:25:36.617270');

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session`  (
  `session_key` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `session_data` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`) USING BTREE,
  INDEX `django_session_expire_date_a5c62663`(`expire_date`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_session
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;

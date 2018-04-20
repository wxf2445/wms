/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost
 Source Database       : wms

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : utf-8

 Date: 04/19/2018 16:17:11 PM
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `x_authority`
-- ----------------------------
DROP TABLE IF EXISTS `x_authority`;
CREATE TABLE `x_authority` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `code` varchar(255) DEFAULT '',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `x_authority`
-- ----------------------------
BEGIN;
INSERT INTO `x_authority` VALUES ('1', '创建文件', 'create_file', '创建文件');
COMMIT;

-- ----------------------------
--  Table structure for `x_role`
-- ----------------------------
DROP TABLE IF EXISTS `x_role`;
CREATE TABLE `x_role` (
  `id` varchar(32) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 DEFAULT '',
  `code` varchar(32) NOT NULL,
  `description` varchar(32) CHARACTER SET utf8 DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `x_role`
-- ----------------------------
BEGIN;
INSERT INTO `x_role` VALUES ('1', '超级管理员', 'SUPER_ADMIN', ''), ('2', '管理员', 'ADMIN', '');
COMMIT;

-- ----------------------------
--  Table structure for `x_role_authority`
-- ----------------------------
DROP TABLE IF EXISTS `x_role_authority`;
CREATE TABLE `x_role_authority` (
  `id` int(11) NOT NULL,
  `role_id` varchar(32) NOT NULL,
  `authority_id` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `x_role_authority`
-- ----------------------------
BEGIN;
INSERT INTO `x_role_authority` VALUES ('1', '1', '1');
COMMIT;

-- ----------------------------
--  Table structure for `x_user`
-- ----------------------------
DROP TABLE IF EXISTS `x_user`;
CREATE TABLE `x_user` (
  `id` varchar(32) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  `is_deleted` tinyint(2) NOT NULL DEFAULT '0',
  `is_locked` tinyint(2) NOT NULL DEFAULT '0',
  `last_login` varchar(255) DEFAULT NULL,
  `last_ip` varchar(255) DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
--  Records of `x_user`
-- ----------------------------
BEGIN;
INSERT INTO `x_user` VALUES ('1', '超级管理员', 'superadmin', 'AC497CFABA23C4184CB03B97E8C51E0A', null, null, null, '1', '0', '0', null, null, null, null, '2018-04-18 16:27:58', '2018-04-18 16:59:42'), ('1ulDvyLIV1Q89r3ErU1_5U', '11', '112', '7E2DC464248A306C5E43CA48E9D9488B', null, '2', '22', '1', '0', '0', null, null, '', '', '2018-04-18 16:46:46', null), ('1VqeGvJiJ3bWyCfFuJNWEp', '11', '112', '7E2DC464248A306C5E43CA48E9D9488B', null, '2', '22', '1', '0', '0', null, null, '', '', '2018-04-18 16:46:49', null), ('208wWxCAF5ToO9pyyqHHcR', '11', '112', '7E2DC464248A306C5E43CA48E9D9488B', null, '2', '22', '1', '0', '0', null, null, '', '', '2018-04-18 16:46:46', null), ('2i4OwxCFFe5b3-R7ucYt_a', '11', '112', '7E2DC464248A306C5E43CA48E9D9488B', null, '2', '22', '1', '0', '0', null, null, '', '', '2018-04-18 16:46:44', null), ('2i5-cpK4N4RW7hO-bmmbBL', '11', '22', '3323FE11E9595C09AF38FE67567A9394', null, '', '11112312312', '1', '0', '0', null, null, '', '', '2018-04-18 16:28:16', null), ('2LIsfAWcF2nGOoBgoKITre', '11', '22', '3D2172418CE305C7D16D4B05597C6A59', null, '11', '11', '1', '0', '0', null, null, '', '11', '2018-04-18 16:46:23', null), ('2SUr1paud9lbK5McsJjvqQ', '11', '112', '7E2DC464248A306C5E43CA48E9D9488B', null, '2', '22', '1', '0', '0', null, null, '', '', '2018-04-18 16:46:48', null), ('2TIQ9PSk98IoHZe2iG0pB4', '11', '112', '7E2DC464248A306C5E43CA48E9D9488B', null, '2', '22', '1', '0', '0', null, null, '', '', '2018-04-18 16:46:47', null), ('2xnMbyiTl8PqECeGKvg8Se', '11', '112', '7E2DC464248A306C5E43CA48E9D9488B', null, '2', '22', '1', '0', '0', null, null, '', '', '2018-04-18 16:46:46', null), ('37nlKg6iVb2V5RjlS1dC2w', '11', '112', '7E2DC464248A306C5E43CA48E9D9488B', null, '2', '22', '1', '0', '0', null, null, '', '', '2018-04-18 16:46:45', null), ('3ACBblE351fWKRvRIj0Xjx', '11', '112', '7E2DC464248A306C5E43CA48E9D9488B', null, '2', '22', '1', '0', '0', null, null, '', '', '2018-04-18 16:46:48', null), ('3bITGHRKlaZ8A3bfQ-ms7V', '11', '112', '7E2DC464248A306C5E43CA48E9D9488B', null, '2', '22', '1', '0', '0', null, null, '', '', '2018-04-18 16:46:49', null), ('3cNKFXiA17gq281qoJUKSd', '11', '112', '7E2DC464248A306C5E43CA48E9D9488B', null, '2', '22', '1', '0', '0', null, null, '', '', '2018-04-18 16:46:49', null), ('3FhNg_0UJaeobIZ02GWi24', '11', '112', '7E2DC464248A306C5E43CA48E9D9488B', null, '2', '22', '1', '0', '0', null, null, '', '', '2018-04-18 16:46:45', null), ('3nuo-c1I5bwVCPWC2imXiw', '11', '112', '7E2DC464248A306C5E43CA48E9D9488B', null, '2', '22', '1', '0', '0', null, null, '', '', '2018-04-18 16:46:49', null), ('3OkLklPpd9xHtm0BfOIaYo', '11', '112', '7E2DC464248A306C5E43CA48E9D9488B', null, '2', '22', '1', '0', '0', null, null, '', '', '2018-04-18 16:46:46', null), ('3TDVOUCMhbCbEI9KSfmGxA', '11', '112', '7E2DC464248A306C5E43CA48E9D9488B', null, '2', '22', '1', '0', '0', null, null, '', '', '2018-04-18 16:46:48', null), ('3vF6fq7G52YpEuxE4lyt-d', '11', '112', '7E2DC464248A306C5E43CA48E9D9488B', null, '2', '22', '1', '0', '0', null, null, '', '', '2018-04-18 16:46:49', null);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
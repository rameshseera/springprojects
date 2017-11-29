/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 100116
Source Host           : localhost:3306
Source Database       : techeval_db

Target Server Type    : MYSQL
Target Server Version : 100116
File Encoding         : 65001

Date: 2017-11-29 15:55:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sste_persistent_logins
-- ----------------------------
DROP TABLE IF EXISTS `sste_persistent_logins`;
CREATE TABLE `sste_persistent_logins` (
  `username` varchar(64) NOT NULL,
  `series` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `last_used` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`series`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sste_persistent_logins
-- ----------------------------

-- ----------------------------
-- Table structure for sste_roles
-- ----------------------------
DROP TABLE IF EXISTS `sste_roles`;
CREATE TABLE `sste_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sste_roles
-- ----------------------------
INSERT INTO `sste_roles` VALUES ('2', 'ADMIN');
INSERT INTO `sste_roles` VALUES ('3', 'DBA');
INSERT INTO `sste_roles` VALUES ('1', 'USER');

-- ----------------------------
-- Table structure for sste_users
-- ----------------------------
DROP TABLE IF EXISTS `sste_users`;
CREATE TABLE `sste_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sso_id` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sso_id` (`sso_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sste_users
-- ----------------------------
INSERT INTO `sste_users` VALUES ('1', 'admin', '$2a$10$jEJ2FAur9Gao0VSxwlNO0.nsThpiNcIlZJZ0KybACZ9MBzI/btUz6', 'Seerasoft', 'Admin', 'info@seerasoft.com');
INSERT INTO `sste_users` VALUES ('2', 'rseera', '$2a$10$3YZaNkHtCnoc6GLAXWKr1OqwZ5WqtA5l/XoElUkbFGmiHMdWA8ORm', 'Ramesh', 'Seera', 'rseera@gmail.com');
INSERT INTO `sste_users` VALUES ('3', 'dba', '$2a$10$uHg84a2HIyE.MEU4aWFMZe9z/gDPb5gtn3hppUW609EdWMBzGIaxe', 'DBA', 'DBA', 'dba@seerasoft.com');
INSERT INTO `sste_users` VALUES ('4', 'gdonthoju', '$2a$10$Ppr4KfMYgvC7IsaB6u2gcuPqBQpRVG052JBooYbLQ3UkzfJmzyBzK', 'Girish', 'Donthoju', 'gdonthoju@gmail.com');

-- ----------------------------
-- Table structure for sste_user_roles
-- ----------------------------
DROP TABLE IF EXISTS `sste_user_roles`;
CREATE TABLE `sste_user_roles` (
  `user_id` bigint(20) NOT NULL,
  `user_profile_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`user_profile_id`),
  KEY `FK_USER_PROFILE` (`user_profile_id`) USING BTREE,
  CONSTRAINT `sste_user_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `sste_users` (`id`),
  CONSTRAINT `sste_user_roles_ibfk_2` FOREIGN KEY (`user_profile_id`) REFERENCES `sste_roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of sste_user_roles
-- ----------------------------
INSERT INTO `sste_user_roles` VALUES ('1', '2');
INSERT INTO `sste_user_roles` VALUES ('2', '1');
INSERT INTO `sste_user_roles` VALUES ('3', '2');
INSERT INTO `sste_user_roles` VALUES ('4', '1');

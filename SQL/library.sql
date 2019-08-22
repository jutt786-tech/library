/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50726
Source Host           : localhost:3306
Source Database       : library

Target Server Type    : MYSQL
Target Server Version : 50726
File Encoding         : 65001

Date: 2019-08-22 12:43:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'tech squad', 'phpgurukulofficial@gmail.com', 'admin', '$P$BxF0n4KTnhOkwCdpQjFQF1i.wTlH6/0', '2019-05-16 14:14:26');
INSERT INTO `admin` VALUES ('2', 'khanna', 'admin@gmail.com', 'admin', 'admin', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `tblauthors`
-- ----------------------------
DROP TABLE IF EXISTS `tblauthors`;
CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblauthors
-- ----------------------------
INSERT INTO `tblauthors` VALUES ('1', 'ali', '2019-07-07 16:36:30', null);

-- ----------------------------
-- Table structure for `tblbooks`
-- ----------------------------
DROP TABLE IF EXISTS `tblbooks`;
CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblbooks
-- ----------------------------
INSERT INTO `tblbooks` VALUES ('1', '9th Physics', '1', '1', '2', '200', '2019-07-07 16:41:25', null);

-- ----------------------------
-- Table structure for `tblcategory`
-- ----------------------------
DROP TABLE IF EXISTS `tblcategory`;
CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblcategory
-- ----------------------------
INSERT INTO `tblcategory` VALUES ('1', 'physics', '1', '2019-07-07 16:35:52', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for `tblissuedbookdetails`
-- ----------------------------
DROP TABLE IF EXISTS `tblissuedbookdetails`;
CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `RetrunStatus` int(1) NOT NULL,
  `fine` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblissuedbookdetails
-- ----------------------------
INSERT INTO `tblissuedbookdetails` VALUES ('1', '1', '1', '2019-07-07 16:41:47', '2019-07-07 16:42:34', '1', '22');

-- ----------------------------
-- Table structure for `tblstudents`
-- ----------------------------
DROP TABLE IF EXISTS `tblstudents`;
CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `StudentId` (`StudentId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tblstudents
-- ----------------------------
INSERT INTO `tblstudents` VALUES ('1', '39', 'ali ss', 'user@gmail.com', '0308551578', '21232f297a57a5a743894a0e4a801fc3', '1', '2019-07-07 13:06:11', '2019-08-20 13:20:44');
INSERT INTO `tblstudents` VALUES ('2', '40', 'salman', 'ali@gmail.com', '0345678987', '21232f297a57a5a743894a0e4a801fc3', '1', '2019-07-07 13:17:42', null);
INSERT INTO `tblstudents` VALUES ('3', '1', 'salman', 's@gmail.com', '0346756341', '21232f297a57a5a743894a0e4a801fc3', '1', '2019-07-07 13:19:08', null);
INSERT INTO `tblstudents` VALUES ('4', '2', 'user', 'users@gmail.com', '090989', 'ce0541e816ab829c1b6a454344297fa2', '1', '2019-08-09 12:30:38', null);

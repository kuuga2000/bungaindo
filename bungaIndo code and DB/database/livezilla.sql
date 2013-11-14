-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 27, 2013 at 04:26 PM
-- Server version: 5.5.29
-- PHP Version: 5.3.10-1ubuntu3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `livezilla`
--

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_administration_log`
--

CREATE TABLE IF NOT EXISTS `livezilla_administration_log` (
  `id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `value` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `user` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `livezilla_administration_log`
--

INSERT INTO `livezilla_administration_log` (`id`, `type`, `value`, `time`, `user`) VALUES
('db83d24e08bd8022e1f08010ca095b3a', 'createFile', './stats/day/2013_08_14_0af691c37d77', 1376967253, ''),
('76d6e747c72a918866aa42a14e9ec1f5', 'createFile', './stats/day/2013_08_14_u_0af691c37d77', 1376967253, ''),
('2cc1809f7f478476a3b33207a7b225c4', 'createFile', './stats/day/2013_08_20_0af691c37d77', 1377057123, ''),
('7ec5cf9c5b3823eb45c3aa110443d0f1', 'createFile', './stats/day/2013_08_22_0af691c37d77', 1377231003, ''),
('20acfbc50473364221777f6c6360dd5a', 'createFile', './stats/day/2013_08_21_u_0af691c37d77', 1377154080, ''),
('d136e7bbd62331a20a342ccc6fb6a38c', 'createFile', './stats/day/2013_08_20_u_0af691c37d77', 1377057123, ''),
('f7bc7c85a146be2caa80878166cdf6c9', 'createFile', './stats/day/2013_08_21_0af691c37d77', 1377154080, ''),
('00cb2e86f8af64e993fc749f4f6f2c52', 'createFile', './stats/day/2013_08_22_u_0af691c37d77', 1377231003, ''),
('e1d6c3ac250c5fe164ec46137e532a61', 'createFile', './stats/day/2013_08_23_0af691c37d77', 1377496585, ''),
('3489dee4e8e1da25d435e8c6678e7ddc', 'createFile', './stats/day/2013_07_26_0af691c37d77', 1375070157, ''),
('1a3b185739e1049c34faacba33a7f2d2', 'createFile', './stats/day/2013_08_23_u_0af691c37d77', 1377496585, ''),
('327873e290db7a69826a46814f83721b', 'createFile', './stats/day/2013_08_26_0af691c37d77', 1377572831, ''),
('1662db1bfb8f79cea4052290c93806ab', 'createFile', './stats/day/2013_08_26_u_0af691c37d77', 1377572831, ''),
('707214eaeda7b8ef79f7be12db91bdb8', 'createFile', './stats/day/2013_07_31_0af691c37d77', 1375329362, ''),
('5e392dd041100907b52c84ff8f0d4bcc', 'createFile', './stats/day/2013_07_30_u_0af691c37d77', 1375242571, ''),
('bb632d19a15204da0368bdfb3f5136c1', 'createFile', './stats/day/2013_07_30_0af691c37d77', 1375242571, ''),
('46b30c725ec1d8b91685f64a1275d2c5', 'createFile', './stats/day/2013_07_29_u_0af691c37d77', 1375156527, ''),
('980b40cdadc771a7b544fc66418ebd07', 'createFile', './stats/day/2013_07_29_0af691c37d77', 1375156527, ''),
('0e71fbffea656da89ea6f543bdabbf76', 'createFile', './stats/day/2013_07_26_u_0af691c37d77', 1375070157, ''),
('e207f706f193048ed71fa852da4d2729', 'createFile', './stats/day/2013_08_02_0af691c37d77', 1375674812, ''),
('3691acf2763cf179d95ff4878ca4af19', 'createFile', './stats/day/2013_08_01_u_0af691c37d77', 1375414412, ''),
('7383cb9bae679ac0a6c4bd1d1e3b5bcc', 'createFile', './stats/day/2013_08_01_0af691c37d77', 1375414412, ''),
('e316545013bf4bd78b00c75b5aa63b7b', 'createFile', './stats/month/2013_07_0af691c37d77', 1375329366, ''),
('11f1a3605aa7af288025a84d0a2ad557', 'createFile', './stats/day/2013_07_31_u_0af691c37d77', 1375329362, ''),
('b9013771ee9a2856902c96051801b57e', 'createFile', './stats/day/2013_08_07_0af691c37d77', 1375919370, ''),
('9018f631c833260311388ea4cda9ff44', 'createFile', './stats/day/2013_08_06_u_0af691c37d77', 1375847381, ''),
('82ac3ebfb8bc40c0c96daea17c1e3ee4', 'createFile', './stats/day/2013_08_06_0af691c37d77', 1375847381, ''),
('14331daec78c0c02cbb5ade9e3343220', 'createFile', './stats/day/2013_08_05_u_0af691c37d77', 1375761311, ''),
('880599c30886b03ee4a6537f52f8169a', 'createFile', './stats/day/2013_08_05_0af691c37d77', 1375761311, ''),
('f0a69c089fcd2f78f9cf8abe1e6bfc7b', 'createFile', './stats/day/2013_08_02_u_0af691c37d77', 1375674812, ''),
('b6116e399c545a43e0ee83a0f43cdb97', 'createFile', './stats/day/2013_08_08_0af691c37d77', 1376002900, ''),
('94ad86aee30b293314118152eeef0299', 'createFile', './stats/day/2013_08_07_u_0af691c37d77', 1375919370, ''),
('98e53f07a9f55abb51d122c8ab59aa3e', 'createFile', './stats/day/2013_08_09_0af691c37d77', 1376217590, ''),
('dd960cdfd0e5b87be72c2e2eda6a0a18', 'createFile', './stats/day/2013_08_08_u_0af691c37d77', 1376002900, ''),
('9cacf6bb0df24d214628c4882cf8de36', 'createFile', './stats/day/2013_08_13_0af691c37d77', 1376513350, ''),
('83d7a7aa4d24b54e5b4fce8a28cb4624', 'createFile', './stats/day/2013_08_12_u_0af691c37d77', 1376365113, ''),
('72af94032c92d97b7e73b17e530273b7', 'createFile', './stats/day/2013_08_12_0af691c37d77', 1376365113, ''),
('3a3fcefb6c051a79405eb5972dbd14b2', 'createFile', './stats/day/2013_08_11_u_0af691c37d77', 1376279860, ''),
('234cf10d07fb6468f68f28df50c39f75', 'createFile', './stats/day/2013_08_11_0af691c37d77', 1376279860, ''),
('7863ee3059d1092686c71446676696e3', 'createFile', './stats/day/2013_08_09_u_0af691c37d77', 1376217590, ''),
('7bf811110e91bc0fe5ce3507489a5f2b', 'createFile', './stats/day/2013_08_13_u_0af691c37d77', 1376513350, '');

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_alerts`
--

CREATE TABLE IF NOT EXISTS `livezilla_alerts` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `created` int(10) unsigned NOT NULL DEFAULT '0',
  `receiver_user_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `receiver_browser_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `event_action_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `text` mediumtext COLLATE utf8_bin NOT NULL,
  `displayed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `accepted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `receiver_user_id` (`receiver_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_bot_feeds`
--

CREATE TABLE IF NOT EXISTS `livezilla_bot_feeds` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `resource_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bot_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `tags` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `answer` text COLLATE utf8_bin NOT NULL,
  `new_window` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `language` varchar(7) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `tags` (`tags`),
  KEY `bot_id` (`bot_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_chat_archive`
--

CREATE TABLE IF NOT EXISTS `livezilla_chat_archive` (
  `time` int(11) unsigned NOT NULL DEFAULT '0',
  `endtime` int(11) unsigned NOT NULL DEFAULT '0',
  `closed` int(11) unsigned NOT NULL DEFAULT '0',
  `chat_id` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `external_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `fullname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `internal_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `area_code` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `html` longtext COLLATE utf8_bin NOT NULL,
  `plain` longtext COLLATE utf8_bin NOT NULL,
  `email` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `company` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `call_me_back` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `iso_language` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `iso_country` varchar(5) COLLATE utf8_bin NOT NULL DEFAULT '',
  `host` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `gzip` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `transcript_sent` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `transcript_receiver` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `question` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `customs` text COLLATE utf8_bin NOT NULL,
  `subject` text COLLATE utf8_bin NOT NULL,
  `voucher_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  KEY `chat_id` (`chat_id`),
  KEY `closed` (`closed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_chat_archive`
--

INSERT INTO `livezilla_chat_archive` (`time`, `endtime`, `closed`, `chat_id`, `external_id`, `fullname`, `internal_id`, `group_id`, `area_code`, `html`, `plain`, `email`, `company`, `phone`, `call_me_back`, `iso_language`, `iso_country`, `host`, `ip`, `gzip`, `transcript_sent`, `transcript_receiver`, `question`, `customs`, `subject`, `voucher_id`) VALUES
(1371129261, 1371129380, 1371129385, '11701', 'cb2815e326', 'Email', '11ca32e', 'support', '', '<DIV>\r\n<TABLE>\r\n<TBODY>\r\n<TR>\r\n<TD>\r\n<TABLE class=TCM cellSpacing=0>\r\n<TBODY>\r\n<TR>\r\n<TD class=FCM0></TD>\r\n<TD class=FCM1></TD>\r\n<TD class=FCM2>System</TD>\r\n<TD class=FCM3>\r\n<TABLE style="WIDTH: auto" cellSpacing=0>\r\n<TBODY>\r\n<TR>\r\n<TD name="DateTimeSytem"></TD>\r\n<TD class=FCM3t>&nbsp;13-06-2013 18:42:50</TD></TR></TBODY></TABLE></TD>\r\n<TD class=FCM1></TD>\r\n<TD class=FCM4></TD></TR></TBODY></TABLE></TD></TR>\r\n<TR>\r\n<TD dir=ltr class=FCM5><FONT color=#000000 size=2 face=Verdana>Chat Request for <B>Support</B> - eluminous<BR>\r\n<DIV class=TCBB>\r\n<TABLE class=TCB cellSpacing=0>\r\n<TBODY>\r\n<TR>\r\n<TD class=TCCL rowSpan=14></TD>\r\n<TD noWrap>Name:&nbsp;&nbsp;</TD>\r\n<TD>Email</TD></TR>\r\n<TR>\r\n<TD noWrap>Email:&nbsp;&nbsp;</TD>\r\n<TD><A class=lz_chat_mail href="mailto:Email@email.com" target=_self>Email@email.com</A></TD></TR>\r\n<TR>\r\n<TD>Company:&nbsp;&nbsp;</TD>\r\n<TD>Email</TD></TR>\r\n<TR>\r\n<TD>Phone:&nbsp;&nbsp;</TD>\r\n<TD></TD></TR>\r\n<TR>\r\n<TD vAlign=top>Question:&nbsp;&nbsp;</TD>\r\n<TD>Email</TD></TR>\r\n<TR>\r\n<TD vAlign=top noWrap>Chat ID:&nbsp;&nbsp;</TD>\r\n<TD>11701</TD></TR>\r\n<TR>\r\n<TD vAlign=top noWrap>Area(s):&nbsp;&nbsp;</TD>\r\n<TD></TD></TR></TBODY></TABLE></DIV></FONT></TD></TR></TBODY></TABLE></DIV>\r\n<DIV>\r\n<TABLE>\r\n<TBODY>\r\n<TR>\r\n<TD>\r\n<TABLE class=FCCF cellSpacing=0 cellPadding=0>\r\n<TBODY>\r\n<TR>\r\n<TD class=FCCF1></TD>\r\n<TD></TD>\r\n<TD class=FCCF2></TD></TR>\r\n<TR>\r\n<TD></TD>\r\n<TD>\r\n<TABLE>\r\n<TBODY>\r\n<TR>\r\n<TD dir=ltr class=FCMCB><FONT color=#000000 size=2 face=Verdana><B>Email</B> is now in Chat with <B>eluminous</B>.</FONT></TD></TR></TBODY></TABLE></TD>\r\n<TD></TD></TR>\r\n<TR>\r\n<TD class=FCCF3></TD>\r\n<TD></TD>\r\n<TD class=FCCF4></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></DIV>\r\n<DIV>\r\n<TABLE>\r\n<TBODY>\r\n<TR>\r\n<TD>\r\n<TABLE class=TCM cellSpacing=0>\r\n<TBODY>\r\n<TR>\r\n<TD class=FCM0></TD>\r\n<TD class=FCM1></TD>\r\n<TD class=FCM2>eluminous</TD>\r\n<TD class=FCM3>\r\n<TABLE style="WIDTH: auto" cellSpacing=0>\r\n<TBODY>\r\n<TR>\r\n<TD name="DateTime">\r\n<DIV class=MR></DIV></TD>\r\n<TD class=FCM3t>&nbsp;18:43:03</TD></TR></TBODY></TABLE></TD>\r\n<TD class=FCM1></TD>\r\n<TD class=FCM4></TD></TR></TBODY></TABLE></TD></TR>\r\n<TR>\r\n<TD dir=ltr class=FCM5><FONT style="FONT-FAMILY: ''Verdana''; FONT-SIZE: 12px">Hello Email, my name is eluminous, how may I help you?</FONT></TD></TR></TBODY></TABLE></DIV>\r\n<DIV>\r\n<TABLE>\r\n<TBODY>\r\n<TR>\r\n<TD>\r\n<TABLE class=TCM cellSpacing=0>\r\n<TBODY>\r\n<TR>\r\n<TD class=FCM0></TD>\r\n<TD class=FCM1></TD>\r\n<TD class=FCM2>System</TD>\r\n<TD class=FCM3>\r\n<TABLE style="WIDTH: auto" cellSpacing=0>\r\n<TBODY>\r\n<TR>\r\n<TD name="DateTimeSytem"></TD>\r\n<TD class=FCM3t>&nbsp;18:43:07</TD></TR></TBODY></TABLE></TD>\r\n<TD class=FCM1></TD>\r\n<TD class=FCM4></TD></TR></TBODY></TABLE></TD></TR>\r\n<TR>\r\n<TD dir=ltr class=FCM5><FONT color=#000000 size=2 face=Verdana>Chat has been accepted by <B>eluminous</B>.</FONT></TD></TR></TBODY></TABLE></DIV>\r\n<DIV>\r\n<TABLE>\r\n<TBODY>\r\n<TR>\r\n<TD>\r\n<TABLE class=TCM cellSpacing=0>\r\n<TBODY>\r\n<TR>\r\n<TD class=FCMg0></TD>\r\n<TD class=FCMg1></TD>\r\n<TD class=FCMg2>Email</TD>\r\n<TD class=FCMg3>&nbsp;18:43:10</TD>\r\n<TD class=FCMg1></TD>\r\n<TD class=FCMg4></TD></TR></TBODY></TABLE></TD></TR>\r\n<TR>\r\n<TD dir=ltr class=FCM5>lai bhari </TD></TR></TBODY></TABLE></DIV>\r\n<DIV>\r\n<TABLE>\r\n<TBODY>\r\n<TR>\r\n<TD>\r\n<TABLE class=FCCF cellSpacing=0 cellPadding=0>\r\n<TBODY>\r\n<TR>\r\n<TD class=FCCF1></TD>\r\n<TD></TD>\r\n<TD class=FCCF2></TD></TR>\r\n<TR>\r\n<TD></TD>\r\n<TD>\r\n<TABLE>\r\n<TBODY>\r\n<TR>\r\n<TD dir=ltr class=FCMCB>lka?</TD></TR></TBODY></TABLE></TD>\r\n<TD></TD></TR>\r\n<TR>\r\n<TD class=FCCF3></TD>\r\n<TD></TD>\r\n<TD class=FCCF4></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></DIV>\r\n<DIV>\r\n<TABLE>\r\n<TBODY>\r\n<TR>\r\n<TD>\r\n<TABLE class=TCM cellSpacing=0>\r\n<TBODY>\r\n<TR>\r\n<TD class=FCM0></TD>\r\n<TD class=FCM1></TD>\r\n<TD class=FCM2>eluminous</TD>\r\n<TD class=FCM3>\r\n<TABLE style="WIDTH: auto" cellSpacing=0>\r\n<TBODY>\r\n<TR>\r\n<TD name="DateTime">\r\n<DIV class=MR></DIV></TD>\r\n<TD class=FCM3t>&nbsp;18:43:29</TD></TR></TBODY></TABLE></TD>\r\n<TD class=FCM1></TD>\r\n<TD class=FCM4></TD></TR></TBODY></TABLE></TD></TR>\r\n<TR>\r\n<TD dir=ltr class=FCM5><FONT style="FONT-FAMILY: ''Verdana''; FONT-SIZE: 12px">tumcha lai bhari</FONT></TD></TR></TBODY></TABLE></DIV>\r\n<DIV>\r\n<TABLE>\r\n<TBODY>\r\n<TR>\r\n<TD>\r\n<TABLE class=TCM cellSpacing=0>\r\n<TBODY>\r\n<TR>\r\n<TD class=FCMg0></TD>\r\n<TD class=FCMg1></TD>\r\n<TD class=FCMg2>Email</TD>\r\n<TD class=FCMg3>&nbsp;18:43:44</TD>\r\n<TD class=FCMg1></TD>\r\n<TD class=FCMg4></TD></TR></TBODY></TABLE></TD></TR>\r\n<TR>\r\n<TD dir=ltr class=FCM5>kai tu pam </TD></TR></TBODY></TABLE></DIV>\r\n<DIV>\r\n<TABLE>\r\n<TBODY>\r\n<TR>\r\n<TD>\r\n<TABLE class=FCCF cellSpacing=0 cellPadding=0>\r\n<TBODY>\r\n<TR>\r\n<TD class=FCCF1></TD>\r\n<TD></TD>\r\n<TD class=FCCF2></TD></TR>\r\n<TR>\r\n<TD></TD>\r\n<TD>\r\n<TABLE>\r\n<TBODY>\r\n<TR>\r\n<TD dir=ltr class=FCMCB>chukiche ahe </TD></TR></TBODY></TABLE></TD>\r\n<TD></TD></TR>\r\n<TR>\r\n<TD class=FCCF3></TD>\r\n<TD></TD>\r\n<TD class=FCCF4></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></DIV>\r\n<DIV>\r\n<TABLE>\r\n<TBODY>\r\n<TR>\r\n<TD dir=ltr class=FCMCA><SPAN class=SMILEYSICK></SPAN></TD></TR></TBODY></TABLE></DIV>\r\n<DIV>\r\n<TABLE>\r\n<TBODY>\r\n<TR>\r\n<TD>\r\n<TABLE class=TCM cellSpacing=0>\r\n<TBODY>\r\n<TR>\r\n<TD class=FCM0></TD>\r\n<TD class=FCM1></TD>\r\n<TD class=FCM2>System</TD>\r\n<TD class=FCM3>\r\n<TABLE style="WIDTH: auto" cellSpacing=0>\r\n<TBODY>\r\n<TR>\r\n<TD name="DateTimeSytem"></TD>\r\n<TD class=FCM3t>&nbsp;18:45:05</TD></TR></TBODY></TABLE></TD>\r\n<TD class=FCM1></TD>\r\n<TD class=FCM4></TD></TR></TBODY></TABLE></TD></TR>\r\n<TR>\r\n<TD dir=ltr class=FCM5><FONT color=#000000 size=2 face=Verdana><B>Email</B> has left the Chat with <B>eluminous</B>.</FONT></TD></TR></TBODY></TABLE></DIV>', 'Chat Transcript\r\ndev.eluminousdev.com / Support\r\n\r\nDate: Thu, 13 Jun 2013 14:16:25 +0100\r\n-------------------------------------------------------------\r\nName:%fullname%\r\nEmail:%email%\r\nCompany: Email\r\nYour Question: Email\r\n\r\nChat reference number: 11701\r\n-------------------------------------------------------------\r\n| 13.06.2013 14:14:26 | eluminous: Hello Email, my name is eluminous, how may I help you?\r\n| 13.06.2013 14:14:29 | Email: lai bhari\r\n| 13.06.2013 14:14:43 | Email: lka?\r\n| 13.06.2013 14:14:50 | eluminous: tumcha lai bhari\r\n| 13.06.2013 14:15:03 | Email: kai tu pam\r\n| 13.06.2013 14:15:47 | Email: chukiche ahe\r\n| 13.06.2013 14:15:52 | Email: :-\\\\', 'Email@email.com', 'Email', '', 0, 'EN-US', 'IN', 'Unknown', '192.168.1.1', 0, 1, 'Email@email.com', 'Email', 'a:0:{}', 'dev.eluminousdev.com - Chat Transcript', ''),
(1371129395, 1371129407, 1371129419, '11702', 'cb2815e326', 'Email', '11ca32e', 'support', '', '<DIV>\r\n<TABLE>\r\n<TBODY>\r\n<TR>\r\n<TD>\r\n<TABLE class=TCM cellSpacing=0>\r\n<TBODY>\r\n<TR>\r\n<TD class=FCM0></TD>\r\n<TD class=FCM1></TD>\r\n<TD class=FCM2>System</TD>\r\n<TD class=FCM3>\r\n<TABLE style="WIDTH: auto" cellSpacing=0>\r\n<TBODY>\r\n<TR>\r\n<TD name="DateTimeSytem"></TD>\r\n<TD class=FCM3t>&nbsp;13-06-2013 18:45:18</TD></TR></TBODY></TABLE></TD>\r\n<TD class=FCM1></TD>\r\n<TD class=FCM4></TD></TR></TBODY></TABLE></TD></TR>\r\n<TR>\r\n<TD dir=ltr class=FCM5><FONT color=#000000 size=2 face=Verdana>Chat Request for <B>Support</B> - eluminous<BR>\r\n<DIV class=TCBB>\r\n<TABLE class=TCB cellSpacing=0>\r\n<TBODY>\r\n<TR>\r\n<TD class=TCCL rowSpan=14></TD>\r\n<TD noWrap>Name:&nbsp;&nbsp;</TD>\r\n<TD>Email</TD></TR>\r\n<TR>\r\n<TD noWrap>Email:&nbsp;&nbsp;</TD>\r\n<TD><A class=lz_chat_mail href="mailto:Email@email.com" target=_self>Email@email.com</A></TD></TR>\r\n<TR>\r\n<TD>Company:&nbsp;&nbsp;</TD>\r\n<TD>Email</TD></TR>\r\n<TR>\r\n<TD>Phone:&nbsp;&nbsp;</TD>\r\n<TD></TD></TR>\r\n<TR>\r\n<TD vAlign=top>Question:&nbsp;&nbsp;</TD>\r\n<TD></TD></TR>\r\n<TR>\r\n<TD vAlign=top noWrap>Chat ID:&nbsp;&nbsp;</TD>\r\n<TD>11702</TD></TR>\r\n<TR>\r\n<TD vAlign=top noWrap>Area(s):&nbsp;&nbsp;</TD>\r\n<TD></TD></TR></TBODY></TABLE></DIV></FONT></TD></TR></TBODY></TABLE></DIV>\r\n<DIV>\r\n<TABLE>\r\n<TBODY>\r\n<TR>\r\n<TD>\r\n<TABLE class=FCCF cellSpacing=0 cellPadding=0>\r\n<TBODY>\r\n<TR>\r\n<TD class=FCCF1></TD>\r\n<TD></TD>\r\n<TD class=FCCF2></TD></TR>\r\n<TR>\r\n<TD></TD>\r\n<TD>\r\n<TABLE>\r\n<TBODY>\r\n<TR>\r\n<TD dir=ltr class=FCMCB><FONT color=#000000 size=2 face=Verdana><B>Email</B> is now in Chat with <B>eluminous</B>.</FONT></TD></TR></TBODY></TABLE></TD>\r\n<TD></TD></TR>\r\n<TR>\r\n<TD class=FCCF3></TD>\r\n<TD></TD>\r\n<TD class=FCCF4></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></DIV>\r\n<DIV>\r\n<TABLE>\r\n<TBODY>\r\n<TR>\r\n<TD dir=ltr class=FCMCA><FONT color=#000000 size=2 face=Verdana><B>Email</B> has left the Chat with <B>eluminous</B>.</FONT></TD></TR></TBODY></TABLE></DIV>', '', 'Email@email.com', 'Email', '', 0, 'EN-US', 'IN', 'Unknown', '192.168.1.1', 0, 1, 'Email@email.com', '', 'a:0:{}', 'dev.eluminousdev.com - Chat Transcript', ''),
(1371129745, 1371129742, 1371129748, '11703', 'cb2815e326', 'Email', '11ca32e', 'support', '', '<DIV>\r\n<TABLE>\r\n<TBODY>\r\n<TR>\r\n<TD>\r\n<TABLE class=TCM cellSpacing=0>\r\n<TBODY>\r\n<TR>\r\n<TD class=FCM0></TD>\r\n<TD class=FCM1></TD>\r\n<TD class=FCM2>System</TD>\r\n<TD class=FCM3>\r\n<TABLE style="WIDTH: auto" cellSpacing=0>\r\n<TBODY>\r\n<TR>\r\n<TD name="DateTimeSytem"></TD>\r\n<TD class=FCM3t>&nbsp;13-06-2013 18:50:42</TD></TR></TBODY></TABLE></TD>\r\n<TD class=FCM1></TD>\r\n<TD class=FCM4></TD></TR></TBODY></TABLE></TD></TR>\r\n<TR>\r\n<TD dir=ltr class=FCM5><FONT color=#000000 size=2 face=Verdana>Chat Request for <B>Support</B> - eluminous<BR>\r\n<DIV class=TCBB>\r\n<TABLE class=TCB cellSpacing=0>\r\n<TBODY>\r\n<TR>\r\n<TD class=TCCL rowSpan=14></TD>\r\n<TD noWrap>Name:&nbsp;&nbsp;</TD>\r\n<TD>Email</TD></TR>\r\n<TR>\r\n<TD noWrap>Email:&nbsp;&nbsp;</TD>\r\n<TD><A class=lz_chat_mail href="mailto:Email@email.com" target=_self>Email@email.com</A></TD></TR>\r\n<TR>\r\n<TD>Company:&nbsp;&nbsp;</TD>\r\n<TD>Email</TD></TR>\r\n<TR>\r\n<TD>Phone:&nbsp;&nbsp;</TD>\r\n<TD></TD></TR>\r\n<TR>\r\n<TD vAlign=top>Question:&nbsp;&nbsp;</TD>\r\n<TD></TD></TR>\r\n<TR>\r\n<TD vAlign=top noWrap>Chat ID:&nbsp;&nbsp;</TD>\r\n<TD>11703</TD></TR>\r\n<TR>\r\n<TD vAlign=top noWrap>Area(s):&nbsp;&nbsp;</TD>\r\n<TD></TD></TR></TBODY></TABLE></DIV></FONT></TD></TR></TBODY></TABLE></DIV>\r\n<DIV>\r\n<TABLE>\r\n<TBODY>\r\n<TR>\r\n<TD>\r\n<TABLE class=FCCF cellSpacing=0 cellPadding=0>\r\n<TBODY>\r\n<TR>\r\n<TD class=FCCF1></TD>\r\n<TD></TD>\r\n<TD class=FCCF2></TD></TR>\r\n<TR>\r\n<TD></TD>\r\n<TD>\r\n<TABLE>\r\n<TBODY>\r\n<TR>\r\n<TD dir=ltr class=FCMCB><FONT color=#000000 size=2 face=Verdana><B>Email</B> is now in Chat with <B>eluminous</B>.</FONT></TD></TR></TBODY></TABLE></TD>\r\n<TD></TD></TR>\r\n<TR>\r\n<TD class=FCCF3></TD>\r\n<TD></TD>\r\n<TD class=FCCF4></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></DIV>\r\n<DIV>\r\n<TABLE>\r\n<TBODY>\r\n<TR>\r\n<TD dir=ltr class=FCMCA><FONT color=#000000 size=2 face=Verdana><B>Email</B> has left the Chat with <B>eluminous</B>.</FONT></TD></TR></TBODY></TABLE></DIV>', '', 'Email@email.com', 'Email', '', 0, 'EN-US', 'IN', 'Unknown', '192.168.1.1', 0, 1, 'Email@email.com', '', 'a:0:{}', 'dev.eluminousdev.com - Chat Transcript', ''),
(1371191843, 1371191880, 1371191891, '11704', '88cae3dd98', 'Test', '11ca32e', 'support', '', '<DIV>\r\n<TABLE>\r\n<TBODY>\r\n<TR>\r\n<TD>\r\n<TABLE class=TCM cellSpacing=0>\r\n<TBODY>\r\n<TR>\r\n<TD class=FCM0></TD>\r\n<TD class=FCM1></TD>\r\n<TD class=FCM2>System</TD>\r\n<TD class=FCM3>\r\n<TABLE style="WIDTH: auto" cellSpacing=0>\r\n<TBODY>\r\n<TR>\r\n<TD name="DateTimeSytem"></TD>\r\n<TD class=FCM3t>&nbsp;14-06-2013 12:05:51</TD></TR></TBODY></TABLE></TD>\r\n<TD class=FCM1></TD>\r\n<TD class=FCM4></TD></TR></TBODY></TABLE></TD></TR>\r\n<TR>\r\n<TD dir=ltr class=FCM5><FONT color=#000000 size=2 face=Verdana>Chat Request for <B>Support</B> - eluminous<BR>\r\n<DIV class=TCBB>\r\n<TABLE class=TCB cellSpacing=0>\r\n<TBODY>\r\n<TR>\r\n<TD class=TCCL rowSpan=14></TD>\r\n<TD noWrap>Name:&nbsp;&nbsp;</TD>\r\n<TD>Test</TD></TR>\r\n<TR>\r\n<TD noWrap>Email:&nbsp;&nbsp;</TD>\r\n<TD><A class=lz_chat_mail href="mailto:test@gmail.com" target=_self>test@gmail.com</A></TD></TR>\r\n<TR>\r\n<TD>Company:&nbsp;&nbsp;</TD>\r\n<TD>Elu</TD></TR>\r\n<TR>\r\n<TD>Phone:&nbsp;&nbsp;</TD>\r\n<TD></TD></TR>\r\n<TR>\r\n<TD vAlign=top>Question:&nbsp;&nbsp;</TD>\r\n<TD>test</TD></TR>\r\n<TR>\r\n<TD vAlign=top noWrap>Chat ID:&nbsp;&nbsp;</TD>\r\n<TD>11704</TD></TR>\r\n<TR>\r\n<TD vAlign=top noWrap>Area(s):&nbsp;&nbsp;</TD>\r\n<TD></TD></TR></TBODY></TABLE></DIV></FONT></TD></TR></TBODY></TABLE></DIV>\r\n<DIV>\r\n<TABLE>\r\n<TBODY>\r\n<TR>\r\n<TD>\r\n<TABLE class=FCCF cellSpacing=0 cellPadding=0>\r\n<TBODY>\r\n<TR>\r\n<TD class=FCCF1></TD>\r\n<TD></TD>\r\n<TD class=FCCF2></TD></TR>\r\n<TR>\r\n<TD></TD>\r\n<TD>\r\n<TABLE>\r\n<TBODY>\r\n<TR>\r\n<TD dir=ltr class=FCMCB><FONT color=#000000 size=2 face=Verdana><B>Test</B> is now in Chat with <B>eluminous</B>.</FONT></TD></TR></TBODY></TABLE></TD>\r\n<TD></TD></TR>\r\n<TR>\r\n<TD class=FCCF3></TD>\r\n<TD></TD>\r\n<TD class=FCCF4></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></DIV>\r\n<DIV>\r\n<TABLE>\r\n<TBODY>\r\n<TR>\r\n<TD dir=ltr class=FCMCA><FONT color=#000000 size=2 face=Verdana>Chat has been accepted by <B>eluminous</B>.</FONT></TD></TR></TBODY></TABLE></DIV>\r\n<DIV>\r\n<TABLE>\r\n<TBODY>\r\n<TR>\r\n<TD>\r\n<TABLE class=TCM cellSpacing=0>\r\n<TBODY>\r\n<TR>\r\n<TD class=FCMg0></TD>\r\n<TD class=FCMg1></TD>\r\n<TD class=FCMg2>Test</TD>\r\n<TD class=FCMg3>&nbsp;12:06:03</TD>\r\n<TD class=FCMg1></TD>\r\n<TD class=FCMg4></TD></TR></TBODY></TABLE></TD></TR>\r\n<TR>\r\n<TD dir=ltr class=FCM5>Hi</TD></TR></TBODY></TABLE></DIV>\r\n<DIV>\r\n<TABLE>\r\n<TBODY>\r\n<TR>\r\n<TD>\r\n<TABLE class=TCM cellSpacing=0>\r\n<TBODY>\r\n<TR>\r\n<TD class=FCM0></TD>\r\n<TD class=FCM1></TD>\r\n<TD class=FCM2>eluminous</TD>\r\n<TD class=FCM3>\r\n<TABLE style="WIDTH: auto" cellSpacing=0>\r\n<TBODY>\r\n<TR>\r\n<TD name="DateTime">\r\n<DIV class=MR></DIV></TD>\r\n<TD class=FCM3t>&nbsp;12:06:11</TD></TR></TBODY></TABLE></TD>\r\n<TD class=FCM1></TD>\r\n<TD class=FCM4></TD></TR></TBODY></TABLE></TD></TR>\r\n<TR>\r\n<TD dir=ltr class=FCM5><FONT style="FONT-FAMILY: ''Verdana''; FONT-SIZE: 12px">Hello Test, my name is eluminous, how may I help you?</FONT></TD></TR></TBODY></TABLE></DIV>\r\n<DIV>\r\n<TABLE>\r\n<TBODY>\r\n<TR>\r\n<TD>\r\n<TABLE class=TCM cellSpacing=0>\r\n<TBODY>\r\n<TR>\r\n<TD class=FCM0></TD>\r\n<TD class=FCM1></TD>\r\n<TD class=FCM2>System</TD>\r\n<TD class=FCM3>\r\n<TABLE style="WIDTH: auto" cellSpacing=0>\r\n<TBODY>\r\n<TR>\r\n<TD name="DateTimeSytem"></TD>\r\n<TD class=FCM3t>&nbsp;12:06:51</TD></TR></TBODY></TABLE></TD>\r\n<TD class=FCM1></TD>\r\n<TD class=FCM4></TD></TR></TBODY></TABLE></TD></TR>\r\n<TR>\r\n<TD dir=ltr class=FCM5><FONT color=#000000 size=2 face=Verdana><B>Test</B> has left the Chat with <B>eluminous</B>.</FONT></TD></TR></TBODY></TABLE></DIV>', 'Chat Transcript\r\ndev.eluminousdev.com / Support\r\n\r\nDate: Fri, 14 Jun 2013 07:38:11 +0100\r\n-------------------------------------------------------------\r\nName:%fullname%\r\nEmail:%email%\r\nCompany: Elu\r\nYour Question: test\r\n\r\nChat reference number: 11704\r\n-------------------------------------------------------------\r\n| 14.06.2013 07:37:25 | Test: Hi\r\n| 14.06.2013 07:37:32 | eluminous: Hello Test, my name is eluminous, how may I help you?', 'test@gmail.com', 'Elu', '', 0, 'EN-US', 'IN', 'Unknown', '192.168.1.1', 0, 1, 'test@gmail.com', 'test', 'a:0:{}', 'dev.eluminousdev.com - Chat Transcript', '');

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_chat_files`
--

CREATE TABLE IF NOT EXISTS `livezilla_chat_files` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL,
  `created` int(10) unsigned NOT NULL DEFAULT '0',
  `file_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `file_mask` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `file_id` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `chat_id` int(10) unsigned NOT NULL DEFAULT '0',
  `visitor_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `browser_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `operator_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `error` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `permission` tinyint(1) NOT NULL DEFAULT '-1',
  `download` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `closed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`created`),
  KEY `visitor_id` (`visitor_id`),
  KEY `operator_id` (`operator_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_chat_forwards`
--

CREATE TABLE IF NOT EXISTS `livezilla_chat_forwards` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `created` int(10) unsigned NOT NULL DEFAULT '0',
  `initiator_operator_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `sender_operator_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `target_operator_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `target_group_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `visitor_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `browser_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `chat_id` int(11) unsigned NOT NULL DEFAULT '0',
  `info_text` mediumtext COLLATE utf8_bin NOT NULL,
  `processed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `received` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `invite` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `chat_id` (`chat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_chat_posts`
--

CREATE TABLE IF NOT EXISTS `livezilla_chat_posts` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `chat_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `time` int(11) unsigned NOT NULL DEFAULT '0',
  `micro` int(11) unsigned NOT NULL DEFAULT '0',
  `sender` varchar(65) COLLATE utf8_bin NOT NULL DEFAULT '',
  `receiver` varchar(65) COLLATE utf8_bin NOT NULL DEFAULT '',
  `receiver_group` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `receiver_original` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `text` mediumtext COLLATE utf8_bin NOT NULL,
  `translation` mediumtext COLLATE utf8_bin NOT NULL,
  `translation_iso` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `received` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `persistent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `repost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sender_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `browser_id` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`receiver`,`micro`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_chat_requests`
--

CREATE TABLE IF NOT EXISTS `livezilla_chat_requests` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `created` int(10) unsigned NOT NULL DEFAULT '0',
  `sender_system_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `sender_group_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `receiver_user_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `receiver_browser_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `event_action_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `text` mediumtext COLLATE utf8_bin NOT NULL,
  `displayed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `accepted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `declined` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `closed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `canceled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `receiver_browser_id` (`receiver_browser_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_com_chat_localizations`
--

CREATE TABLE IF NOT EXISTS `livezilla_com_chat_localizations` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `tid` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `language` varchar(5) COLLATE utf8_bin NOT NULL DEFAULT '',
  `title` text COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `terms` longtext COLLATE utf8_bin NOT NULL,
  `email_voucher_created` text COLLATE utf8_bin NOT NULL,
  `email_voucher_paid` text COLLATE utf8_bin NOT NULL,
  `email_voucher_update` text COLLATE utf8_bin NOT NULL,
  `extension_request` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tid` (`tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_com_chat_providers`
--

CREATE TABLE IF NOT EXISTS `livezilla_com_chat_providers` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `account` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `URL` varchar(256) COLLATE utf8_bin NOT NULL DEFAULT '',
  `logo` varchar(256) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_com_chat_types`
--

CREATE TABLE IF NOT EXISTS `livezilla_com_chat_types` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `number_of_chats` int(10) unsigned NOT NULL DEFAULT '0',
  `number_of_chats_void` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `total_length` int(10) unsigned NOT NULL DEFAULT '0',
  `total_length_void` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `auto_expire` int(10) unsigned NOT NULL DEFAULT '0',
  `auto_expire_void` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `delete` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `price` double unsigned NOT NULL DEFAULT '0',
  `currency` varchar(5) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_com_chat_vouchers`
--

CREATE TABLE IF NOT EXISTS `livezilla_com_chat_vouchers` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `extends` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `tid` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `email` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `info` text COLLATE utf8_bin NOT NULL,
  `voided` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `paid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created` int(10) unsigned NOT NULL DEFAULT '0',
  `first_used` int(10) unsigned NOT NULL DEFAULT '0',
  `last_used` int(10) unsigned NOT NULL DEFAULT '0',
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  `edited` int(10) unsigned NOT NULL DEFAULT '0',
  `chat_time` int(10) unsigned NOT NULL DEFAULT '0',
  `chat_time_max` int(10) unsigned NOT NULL DEFAULT '0',
  `chat_sessions` int(10) unsigned NOT NULL DEFAULT '0',
  `chat_sessions_max` int(10) unsigned NOT NULL DEFAULT '0',
  `chat_list` text COLLATE utf8_bin NOT NULL,
  `visitor_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `business_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `company` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `tax_id` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `firstname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lastname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `address_1` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `address_2` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `city` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `state` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `zip` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `country` varchar(5) COLLATE utf8_bin NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `tn_id` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `price` double unsigned NOT NULL DEFAULT '0',
  `currency` varchar(5) COLLATE utf8_bin NOT NULL DEFAULT '',
  `vat` double unsigned NOT NULL DEFAULT '0',
  `payer_id` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `payment_details` text COLLATE utf8_bin NOT NULL,
  `language` varchar(5) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `tid` (`tid`),
  KEY `created` (`created`),
  KEY `edited` (`edited`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_events`
--

CREATE TABLE IF NOT EXISTS `livezilla_events` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `created` int(10) unsigned NOT NULL DEFAULT '0',
  `creator` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `edited` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pages_visited` int(10) unsigned NOT NULL DEFAULT '0',
  `time_on_site` int(10) unsigned NOT NULL DEFAULT '0',
  `max_trigger_amount` int(10) unsigned NOT NULL DEFAULT '0',
  `trigger_again_after` int(10) unsigned NOT NULL DEFAULT '0',
  `not_declined` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `not_accepted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `not_in_chat` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `priority` int(10) unsigned NOT NULL DEFAULT '0',
  `is_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `search_phrase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `save_cookie` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_event_actions`
--

CREATE TABLE IF NOT EXISTS `livezilla_event_actions` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `eid` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `value` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `eid` (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_event_action_internals`
--

CREATE TABLE IF NOT EXISTS `livezilla_event_action_internals` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `created` int(10) unsigned NOT NULL DEFAULT '0',
  `trigger_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `receiver_user_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `created` (`created`),
  KEY `receiver_user_id` (`receiver_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_event_action_overlays`
--

CREATE TABLE IF NOT EXISTS `livezilla_event_action_overlays` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `action_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `position` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT '',
  `speed` tinyint(1) NOT NULL DEFAULT '1',
  `slide` tinyint(1) NOT NULL DEFAULT '1',
  `margin_left` int(11) NOT NULL DEFAULT '0',
  `margin_top` int(11) NOT NULL DEFAULT '0',
  `margin_right` int(11) NOT NULL DEFAULT '0',
  `margin_bottom` int(11) NOT NULL DEFAULT '0',
  `style` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `close_on_click` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `shadow` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shadow_x` tinyint(4) NOT NULL DEFAULT '0',
  `shadow_y` tinyint(4) NOT NULL DEFAULT '0',
  `shadow_blur` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `shadow_color` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `width` int(10) unsigned NOT NULL DEFAULT '0',
  `height` int(10) unsigned NOT NULL DEFAULT '0',
  `background` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `background_opacity` double unsigned NOT NULL DEFAULT '0',
  `background_color` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `action_id` (`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_event_action_receivers`
--

CREATE TABLE IF NOT EXISTS `livezilla_event_action_receivers` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `action_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `receiver_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `action_id` (`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_event_action_senders`
--

CREATE TABLE IF NOT EXISTS `livezilla_event_action_senders` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pid` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `priority` tinyint(2) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_event_action_website_pushs`
--

CREATE TABLE IF NOT EXISTS `livezilla_event_action_website_pushs` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `action_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `target_url` varchar(2056) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ask` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `action_id` (`action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_event_funnels`
--

CREATE TABLE IF NOT EXISTS `livezilla_event_funnels` (
  `eid` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `uid` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ind` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`eid`,`uid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_event_goals`
--

CREATE TABLE IF NOT EXISTS `livezilla_event_goals` (
  `event_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `goal_id` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `prim` (`event_id`,`goal_id`),
  KEY `goal_id` (`goal_id`),
  KEY `event_id` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_event_triggers`
--

CREATE TABLE IF NOT EXISTS `livezilla_event_triggers` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `receiver_user_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `receiver_browser_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `action_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `triggered` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `receiver_user_id` (`receiver_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_event_urls`
--

CREATE TABLE IF NOT EXISTS `livezilla_event_urls` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `eid` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(2048) COLLATE utf8_bin NOT NULL DEFAULT '',
  `referrer` varchar(2048) COLLATE utf8_bin NOT NULL DEFAULT '',
  `time_on_site` int(10) unsigned NOT NULL DEFAULT '0',
  `blacklist` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `eid` (`eid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_filters`
--

CREATE TABLE IF NOT EXISTS `livezilla_filters` (
  `creator` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `created` int(10) unsigned NOT NULL DEFAULT '0',
  `editor` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `edited` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `expiredate` int(10) NOT NULL DEFAULT '0',
  `visitor_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reason` text COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `exertion` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `languages` text COLLATE utf8_bin NOT NULL,
  `activeipaddress` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `activevisitorid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `activelanguage` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `allow_chats` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_goals`
--

CREATE TABLE IF NOT EXISTS `livezilla_goals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `description` text COLLATE utf8_bin NOT NULL,
  `conversion` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ind` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `ind` (`ind`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_groups`
--

CREATE TABLE IF NOT EXISTS `livezilla_groups` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `owner` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dynamic` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_bin NOT NULL,
  `external` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `internal` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `created` int(10) unsigned NOT NULL DEFAULT '0',
  `email` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `standard` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `opening_hours` text COLLATE utf8_bin NOT NULL,
  `functions` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `chat_inputs_hidden` text COLLATE utf8_bin NOT NULL,
  `ticket_inputs_hidden` text COLLATE utf8_bin NOT NULL,
  `chat_inputs_required` text COLLATE utf8_bin NOT NULL,
  `ticket_inputs_required` text COLLATE utf8_bin NOT NULL,
  `max_chats` int(10) NOT NULL DEFAULT '0',
  `hide_chat_group_selection` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hide_ticket_group_selection` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `visitor_filters` text COLLATE utf8_bin NOT NULL,
  `chat_vouchers_required` text COLLATE utf8_bin NOT NULL,
  `pre_chat_html` text COLLATE utf8_bin NOT NULL,
  `post_chat_html` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_groups`
--

INSERT INTO `livezilla_groups` (`id`, `name`, `owner`, `dynamic`, `description`, `external`, `internal`, `created`, `email`, `standard`, `opening_hours`, `functions`, `chat_inputs_hidden`, `ticket_inputs_hidden`, `chat_inputs_required`, `ticket_inputs_required`, `max_chats`, `hide_chat_group_selection`, `hide_ticket_group_selection`, `visitor_filters`, `chat_vouchers_required`, `pre_chat_html`, `post_chat_html`) VALUES
('support', '', '', 0, 'a:1:{s:2:"EN";s:12:"U3VwcG9ydA==";}', 1, 1, 1371128452, 'support@eluminoustechnologies.com', 1, 'a:0:{};', '111101', 'a:0:{}', 'a:0:{}', 'a:0:{}', 'a:0:{}', -1, 0, 0, 'a:0:{}', 'a:0:{}', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_group_members`
--

CREATE TABLE IF NOT EXISTS `livezilla_group_members` (
  `user_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_id` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`user_id`,`group_id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_images`
--

CREATE TABLE IF NOT EXISTS `livezilla_images` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `button_type` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image_type` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `data` longtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`,`button_type`,`image_type`,`online`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_images`
--

INSERT INTO `livezilla_images` (`id`, `button_type`, `image_type`, `online`, `data`) VALUES
(2, 'overlay', 'png', 1, 'iVBORw0KGgoAAAANSUhEUgAAACAAAABwCAIAAADwluVUAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAA1NJREFUaEPtmk2KFEEQhecAHsEjeAWP4BE8gkfwCh7BlSsX4sqVuHAhrmbnyoWIyKCMP6iIg4h+8CBMsjMzMiOzCobppjYNVfEy3ou/iu6TFxt/TrD/d8vPjgDXHrzb4vrvwRbWsXkEcIk9UrSAojfffz96+/PW04+ureINvgaqI3dPv15ygPuvf8RY6qXICi6SPDv7BWN3Xn6++eSDy9swwGFpP/10QRTUkHoBODhXo3HMAlgUoQTk8BWiUshlAIeGBBkHuP38XJK6egYTLWbXnvJF3hWAwIdxkcZFdCI1F9EV14DniXR3sokDuKZ1wyyAKgSciBxKk+zCmK5ZAGxBFKZVf7DYPvhAFGH0y8WflCiQzAM3xnrDlEQrSu3W8F4AnRRzyJDJjjyNfjcGIJgbj8+gKOMtLnLtyesP33NwK6hxALdtIQ8RHAcQ45iAFo6MDJzdDZ6BMC1mMgIAee/VN47fDiRf5EzMWuWIU2QBqk5ZK3yzAPY8GFaFVJQEuR6gU2dfgyxszINlAKaqIlX9q8FJBux7UAsbjfU4RAdtJKMPYEdut7ZZkSlw6vWcuhipUwDF2pDOkCRjHECVmarQGTbDIqsg1wZ0zQBTDUfa1kyowU2Va3kAUUWKlHdTGihMMVGU2h0v/Dyw2oCtDIOvKuYEbjyKzIr8IJw0yqWDTI1AUH0PuAlb7TSeGh3lOxi11tZeAnR5IAzNKWhuSD07jAGArTI5ZndgbDkC2O56kop4Jk8C+2G6986OlNaYLc/0at7w0vcgazjZ4OXOYVcHQI1X2490dFxGUbEfpFu1eB6k9bnRduIA1gwIx/SNIwOLA+BBMdLJAE2rIioOoJMyN8T2gr15IBhOOgrjA9hoZaQLpvN13Aewdp+tlmn9CODCdAGYgIfrHBdmDCCdX7L3nHgUpce3odH2piZMHKA9NO4BoM3LAg+0RWa61jIeunj1dDu2L7K7V2xj+ADuSm0WQDKmK7UeZgZm01oUmR7tLZ5PUc9un0PEo8jmn+KPTwvyoHa0ZbuKdpC4gvsatAE0tkxlcg/AlMjtjdnKwUu/umpJZ9SvBDjMuEs12cHJVpNdLYqWTXZuS5kt10eAK/CmfxR5P5E7h9zR23b5r+Omfwj9B1XbSQ38nPijAAAAAElFTkSuQmCC'),
(1, 'overlay', 'png', 1, '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'),
(1, 'overlay', 'png', 0, 'iVBORw0KGgoAAAANSUhEUgAAACUAAAB7CAYAAADzGkmEAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAABBxJREFUeF7tnD+KFUEQxt8VvIJX2BuI4Am8weIVPIJewWwxMBA2MhIRjIw2M9pAjNxEMTAT3B3nY/jYev16uqur/0whM9C4rMPWj6qvq6u6Z+YwTdPB23AHBAftUFqZ7J7Se+pidlb/cTvbeD2PR/M4HI3I7McNI6Bo43q2d+4NCnA/jsAceEp6bAmlIyjAQWPuoCD+J948BW+98Aj10SPUd49Qfz1CzUyn9dzojB6uHnc7lHpNNYXv99dp+vZ2mt4/7rNwm6AgRVxXz3tAGWefa6jrVz1CWOkpegz/Qmc3H5aQfn42Te/OrKFtCCUB5c8/r5ZJoa9mK6HgHQzNNQxKzj6kB4QNv0MYQ9hNoNaMErY71Ken94LWG9Pqyqip9iAS+H+GQk6CdhhWiB1pAILHwKX3rtFTMIT8U3J1hyqB4b3DoLi0IFQIGQbWQ14IKccwKBhHGAHDtQ4Q5d5pMPsA8efXaRABKD2l904DKBrDspISvK0yNc6+0AMwDl3FLuiurEJtBEXIy4dL+GKh1YeyMRQNv3mweEdWCt2hSqpK6A7JtjsUtQNjCBe8Al3BQ3rja/caw5fK6NATYL+8XIq+8hlohIoJObf06D1ohKIBWQLnFuhhUNIQdCXXPK6DhN0cSg8QE7sxfLGZJj21CZQUNdMCK8yyKrOhp3IzjVtF8B5K5JJke3Ewhk96JQdYXlsZoeQCzGYBVUIqLeh1VgGVWlLCFh7JtjsUyxMsJXpj2nuNnmJJktviYTMxpMijeHPGWI0OKV3oKYQxFT4m1CGaYkqAsZTgbZ2NUVNySYHhGBh+xxIHqUI/IYxQ0iD0BeOYieyGw9YrF+ZjYCMU/ggMa6+y6rMCimC5KjQ3Q0/DWgmFP8h2CuKXgPazmwZQegFrxb5D7Z7SekB7366pzp7qe4ZsDF+snsKywx0Y5i5u+pflsoZQsWbU1qDuUJ2FHrbtPBwKG89Nwpeqp8IjW73YjZoKyxRNsdcdSm5No6oMN8hikN2h4KlUiYv8xD0GhrE7FD2BLgVJU29Qc69RU2F4sOy0gzNCySZTAhKubpPfCCUbhthjJWggIH4bXAWU1NHa0ZoNrhGUTBHwUGxHTz8ZGkDJw2s+gMPnEqTeukNpMnh4jysonmoNheKjI9h14aNvCCmObvUgDU7by3ZRSuGMQi87QRgEtXZcaw9Zg/DlZh+Pa21ny8bw5U5BN6mnZF+XemJxaPLMTfVNzmZyUPKUS3vv/X1GTWkNscUacgxSClV2hGv0lPYIdrNmlE9R87xYJtDNoNYS6d4hS5EjVG465Nzs26RDzkHV/b8xJdQZzdVXt/PcOXlFc39BLFLHu3xrDZnPXfhcCt3lO6Mu36519x6yyze23b3bju8muPoKgLvvJbj6skTRNzj+AaduW7yjbpzpAAAAAElFTkSuQmCC'),
(3, 'overlay', 'png', 0, 'iVBORw0KGgoAAAANSUhEUgAAAHAAAAAgCAYAAADKbvy8AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAA0hJREFUaEPtmUuKFEEQhvsKXsEreINB8ATeQLyCR9Aj6EqYhQvBlTvFhTsRUVwoCg4ufCxGFAZcDPho62sm5J/oyKrsroSe1ChIpqcqKrI6vvwjIqsXN58uljn6jcEi4fULD3YJsPMMlAATYN8pqPcSkgpMBaYCd6niVGAqMBWYCuxcBd0CXI4c999cXL3hqbGptft49HDN3fGPb0vOv/h8Y3nn5flTb5U4z3U9zP7x+6vhGyj86IGPMUD40ec6Oj5YPYvdo77s3IN3l0/NUXqWmoUxqwbWwKmxqQU4uhpOLmowpuyffLi2BgcA/rj9/Nya3b1XF5aH358Vp7DFFAHUOQ6+3p31KrMZQIKhI/oCJRsPsMYXCmdg64Meqd/sCZgdqFFXOc9sh/pEMWoHUA/v9eGt1bOgPoXiAWKjc0SLo0Z5ZtMMYGnSaAVGtjV2JRuCoAEnmH5R6JwlP6jXDg20pkT86DUWAWqs+f4sEE3pttA2AeZt/wmAPqjALAHU4BtoC4qqU+83f2anNc/D9QHWxcJ8ukDmgGuuQF8MoiJespmqgWMNgV1jNXtljdVAgunTl6mD9IhfBaUNkvqdUlHpGXxa3hZmMwX2BhBVaerjsx2mKu1IteFpAdCreucAfeMRqaZkM9XE1ChQg22tvw80avFNjKlQU2ukGm1MtN5umkL13jnbh+YptKaIj62yOU0M6tHmwIJa8hkpaGxLYPb2/FrLNmliWCzaKHFvV12oV6DWDw1qyS5SFLAUHp+jLUy0jcAfAWREvrlHfVvd8t0k96JQ20ZMbeRVhdFedJN02qwG1ijQp6ZSXSnZjTUlXPNqmLK3FKZvRvybF025CsarXufS+hZlgZYq7Apg9JaEgBNkguLTUZQWOUcKVPWPtfd+460Llfm47l+ljW3k7f5o37qJ8prUwG0mzHva/nozS4EJoy2MbeKZADv/KQuAv7Yhn/fsXn2wA+B+wjgTMLb5WWkfgHvDeJsQu4MIsz0AMq4M40tC7AYirGC2gqcQU4lnv6mB0QqeB2jplJqYjc3ZAwkT2FDy/gpPFaifLw1G14fxaBifhvHzJL3+Hv4ycMa5/3VEDcecWJg/iy//44/YwwAWMFnj9QeRmMRO/3lgNAAAAABJRU5ErkJggg=='),
(2, 'overlay', 'png', 0, 'iVBORw0KGgoAAAANSUhEUgAAACAAAABwCAIAAADwluVUAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAA1NJREFUaEPtmk2KFEEQhecAHsEjeAWP4BE8gkfwCh7BlSsX4sqVuHAhrmbnyoWIyKCMP6iIg4h+8CBMsjMzMiOzCobppjYNVfEy3ou/iu6TFxt/TrD/d8vPjgDXHrzb4vrvwRbWsXkEcIk9UrSAojfffz96+/PW04+ureINvgaqI3dPv15ygPuvf8RY6qXICi6SPDv7BWN3Xn6++eSDy9swwGFpP/10QRTUkHoBODhXo3HMAlgUoQTk8BWiUshlAIeGBBkHuP38XJK6egYTLWbXnvJF3hWAwIdxkcZFdCI1F9EV14DniXR3sokDuKZ1wyyAKgSciBxKk+zCmK5ZAGxBFKZVf7DYPvhAFGH0y8WflCiQzAM3xnrDlEQrSu3W8F4AnRRzyJDJjjyNfjcGIJgbj8+gKOMtLnLtyesP33NwK6hxALdtIQ8RHAcQ45iAFo6MDJzdDZ6BMC1mMgIAee/VN47fDiRf5EzMWuWIU2QBqk5ZK3yzAPY8GFaFVJQEuR6gU2dfgyxszINlAKaqIlX9q8FJBux7UAsbjfU4RAdtJKMPYEdut7ZZkSlw6vWcuhipUwDF2pDOkCRjHECVmarQGTbDIqsg1wZ0zQBTDUfa1kyowU2Va3kAUUWKlHdTGihMMVGU2h0v/Dyw2oCtDIOvKuYEbjyKzIr8IJw0yqWDTI1AUH0PuAlb7TSeGh3lOxi11tZeAnR5IAzNKWhuSD07jAGArTI5ZndgbDkC2O56kop4Jk8C+2G6986OlNaYLc/0at7w0vcgazjZ4OXOYVcHQI1X2490dFxGUbEfpFu1eB6k9bnRduIA1gwIx/SNIwOLA+BBMdLJAE2rIioOoJMyN8T2gr15IBhOOgrjA9hoZaQLpvN13Aewdp+tlmn9CODCdAGYgIfrHBdmDCCdX7L3nHgUpce3odH2piZMHKA9NO4BoM3LAg+0RWa61jIeunj1dDu2L7K7V2xj+ADuSm0WQDKmK7UeZgZm01oUmR7tLZ5PUc9un0PEo8jmn+KPTwvyoHa0ZbuKdpC4gvsatAE0tkxlcg/AlMjtjdnKwUu/umpJZ9SvBDjMuEs12cHJVpNdLYqWTXZuS5kt10eAK/CmfxR5P5E7h9zR23b5r+Omfwj9B1XbSQ38nPijAAAAAElFTkSuQmCC'),
(1, 'inlay', 'png', 0, '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'),
(1, 'inlay', 'png', 1, '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');
INSERT INTO `livezilla_images` (`id`, `button_type`, `image_type`, `online`, `data`) VALUES
(2, 'inlay', 'png', 0, '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');
INSERT INTO `livezilla_images` (`id`, `button_type`, `image_type`, `online`, `data`) VALUES
(2, 'inlay', 'png', 1, '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'),
(3, 'overlay', 'png', 1, 'iVBORw0KGgoAAAANSUhEUgAAAHAAAAAgCAYAAADKbvy8AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAgY0hSTQAAeiYAAICEAAD6AAAAgOgAAHUwAADqYAAAOpgAABdwnLpRPAAAAwlJREFUaEPtmU1KJEEQhfsKXsEreAMRPIE3kLmCR3CO4KyEXrgQXM1uZBbuZBCHWSgKigt/FooDggth1LZeYxSvw4zM+um2KpkoSGw7szMz4ssXEdk92Pg1GHnL1wcDh5cvPLBzgJlHIAfoAPMOQbmnEFegK9AV2KWKXYGuQFegKzBzFWQLcESPZYQe8/B0Xr61f7k28S3Q3sWXsu/28aDs4zn06+8nS5W/ScL8Vw+75RTYy++br8F1tD0xWzEHP1gj9nnLniYHoVUObAKQjdWGHt9+K6e0HNsE4M7RwggHwnq2/syPHR6zJ9bHh1LGbR7OTUCMHULpywIgnGk54+nf37IL48QgHg/VchPnW8bDkRoeDgrmwCE5v99upUCsLw+D/HG2MgGQ92zZkwVAbJJBSQhksHAEG1NF6ZbxcJw8WJcPRp0wae2Bwz6vxRGkzjp1IX56CMUGOVRKHowZ3wYg57yYU3UIxee4WXuAgjkEshqr1gV1ofH4TgAivMgjeZAdocNPLH+kjOfPpgqeKnkKY3hNiSZSdPGBscJ7mwOp7e0EIPKSNkIcgb91KrguAXLYF3Vzkaar7FBOT+0/1d8JQGyKFcd5BOE1BlAXMSkDubCoE0Kr5C0O+yH1coE0rZzeCwViE2w8V4k6fKbK+xRAzrfTLmJiV5PY1aCXIVQrQ/KNtVkuv3mMvj9pgNY6Fkisw1Uv1oIy5BrR9CKv0wDslcbrTftAzkyBOoRI/I+dNn2Cq4Qca52YEpGrNMRQtRjbq+4LFWKyB04PobDdSwU2AahzCHJhCESsOrQKBT0PFIOx+qu0phf50FVI1mS79J22bUqYqgJT+cf7Z/9LTasq1AHNHlDKxw4w85+yAPAlRdn7u1eaweAFAIcOqLeAUr91DgFwsWinDjE7iGC2CIBoq0W7c4jZQAQrMBvDY4iuxP4XNWA0hqcBSjhFTvTCpn8gwQRskPJK4bEC+fVyMWi9aD+Ldl205/fw+lr8RcNkeO9/baHioo0vZD7xL/7HfPA9GIAFmHzg9QaRNjVa4tDcpgAAAABJRU5ErkJggg=='),
(3, 'inlay', 'png', 1, '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'),
(3, 'inlay', 'png', 0, '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');

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_info`
--

CREATE TABLE IF NOT EXISTS `livezilla_info` (
  `version` varchar(15) COLLATE utf8_bin NOT NULL,
  `chat_id` int(11) unsigned NOT NULL DEFAULT '11700',
  `ticket_id` int(11) unsigned NOT NULL DEFAULT '11700',
  `gtspan` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_info`
--

INSERT INTO `livezilla_info` (`version`, `chat_id`, `ticket_id`, `gtspan`) VALUES
('4.2.0.5', 11704, 11701, 0);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_operators`
--

CREATE TABLE IF NOT EXISTS `livezilla_operators` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `system_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `login_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `fullname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `description` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `permissions` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `webspace` int(10) unsigned NOT NULL DEFAULT '0',
  `first_active` int(10) unsigned NOT NULL DEFAULT '0',
  `last_active` int(10) unsigned NOT NULL DEFAULT '0',
  `password` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `password_change` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `password_change_request` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `typing` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `visitor_file_sizes` mediumtext COLLATE utf8_bin NOT NULL,
  `last_chat_allocation` int(10) unsigned NOT NULL DEFAULT '0',
  `groups` text COLLATE utf8_bin NOT NULL,
  `groups_status` text COLLATE utf8_bin NOT NULL,
  `groups_hidden` text COLLATE utf8_bin NOT NULL,
  `reposts` text COLLATE utf8_bin NOT NULL,
  `languages` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `auto_accept_chats` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `login_ip_range` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `websites_users` text COLLATE utf8_bin NOT NULL,
  `websites_config` text COLLATE utf8_bin NOT NULL,
  `sign_off` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bot` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `wm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `wmohca` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_operators`
--

INSERT INTO `livezilla_operators` (`id`, `system_id`, `login_id`, `fullname`, `description`, `email`, `permissions`, `webspace`, `first_active`, `last_active`, `password`, `password_change`, `password_change_request`, `status`, `level`, `ip`, `typing`, `visitor_file_sizes`, `last_chat_allocation`, `groups`, `groups_status`, `groups_hidden`, `reposts`, `languages`, `auto_accept_chats`, `login_ip_range`, `websites_users`, `websites_config`, `sign_off`, `bot`, `wm`, `wmohca`) VALUES
('admin', '11ca32e', '', 'eluminous', '', 'eluminous_sse22@eluminoustechnologies.com', '222222210000021011212', 5, 1376301024, 1376301032, '0b3564e0e0f6bf03780f8e7d3cfb8b09', '', 0, 2, 1, '192.168.1.84', '', 'a:0:{}', 0, 'YToxOntpOjA7czoxMjoiYzNWd2NHOXlkQT09Ijt9', 'a:0:{}', 'YTowOnt9', 'a:0:{}', 'EN', 1, '', 'YTowOnt9', 'YTowOnt9', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_operator_logins`
--

CREATE TABLE IF NOT EXISTS `livezilla_operator_logins` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `time` int(11) unsigned NOT NULL DEFAULT '0',
  `password` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_operator_status`
--

CREATE TABLE IF NOT EXISTS `livezilla_operator_status` (
  `time` int(11) unsigned NOT NULL,
  `confirmed` int(11) unsigned NOT NULL,
  `internal_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`time`,`internal_id`,`status`),
  KEY `time` (`time`),
  KEY `internal_id` (`internal_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_overlay_boxes`
--

CREATE TABLE IF NOT EXISTS `livezilla_overlay_boxes` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `created` int(10) unsigned NOT NULL DEFAULT '0',
  `receiver_user_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `receiver_browser_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `event_action_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` text COLLATE utf8_bin NOT NULL,
  `content` text COLLATE utf8_bin NOT NULL,
  `displayed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `closed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `receiver_browser_id` (`receiver_browser_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_predefined`
--

CREATE TABLE IF NOT EXISTS `livezilla_predefined` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL,
  `internal_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `group_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `lang_iso` varchar(5) COLLATE utf8_bin NOT NULL,
  `invitation_manual` mediumtext COLLATE utf8_bin NOT NULL,
  `invitation_auto` mediumtext COLLATE utf8_bin NOT NULL,
  `welcome` mediumtext COLLATE utf8_bin NOT NULL,
  `welcome_call_me_back` mediumtext COLLATE utf8_bin NOT NULL,
  `website_push_manual` mediumtext COLLATE utf8_bin NOT NULL,
  `website_push_auto` mediumtext COLLATE utf8_bin NOT NULL,
  `chat_info` mediumtext COLLATE utf8_bin NOT NULL,
  `call_me_back_info` mediumtext COLLATE utf8_bin NOT NULL,
  `ticket_info` mediumtext COLLATE utf8_bin NOT NULL,
  `browser_ident` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `auto_welcome` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `editable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `email_chat_transcript` mediumtext COLLATE utf8_bin NOT NULL,
  `email_ticket` mediumtext COLLATE utf8_bin NOT NULL,
  `queue_message` mediumtext COLLATE utf8_bin NOT NULL,
  `queue_message_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `alloc` (`group_id`,`lang_iso`,`internal_id`),
  KEY `internal_id` (`internal_id`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_predefined`
--

INSERT INTO `livezilla_predefined` (`id`, `internal_id`, `group_id`, `lang_iso`, `invitation_manual`, `invitation_auto`, `welcome`, `welcome_call_me_back`, `website_push_manual`, `website_push_auto`, `chat_info`, `call_me_back_info`, `ticket_info`, `browser_ident`, `is_default`, `auto_welcome`, `editable`, `email_chat_transcript`, `email_ticket`, `queue_message`, `queue_message_time`) VALUES
('0b7e77e71d0fb10220c9934ca59a4850', '', 'support', 'DE', 'Guten Tag, meine Name ist %name%. Benötigen Sie Hilfe? Gerne berate ich Sie in einem Live-Chat.', 'Guten Tag, meine Name ist %name%. Benötigen Sie Hilfe? Gerne berate ich Sie in einem Live-Chat.', 'Guten Tag %external_name%, mein Name ist %name% wie kann ich Ihnen helfen?', 'Guten Tag, meine Name ist %name%. Sie werden in den nächsten Sekunden einen Anruf von mir erhalten. Während unseres Telefonats können Sie mir bei Bedarf Informationen und Dateien auch über diesen Chat zukommen lassen.', 'Ein Betreuer dieser Webseite (%name%) möchte Sie auf einen anderen Bereich weiterleiten:\r\n\r\n%target_url%', 'Ein Betreuer dieser Webseite (%name%) möchte Sie auf einen anderen Bereich weiterleiten:\r\n\r\n%target_url%', '', '', '', 1, 0, 1, 1, 'Mitschrift Ihres Chats\r\n%website_name% / %group_description%\r\n\r\nDatum: %localdate%\r\n-------------------------------------------------------------\r\n%details%\r\nChat Referenz-Nummer: %chat_id%\r\n-------------------------------------------------------------\r\n%transcript%', 'Vielen Dank, wir haben Ihre Nachricht erhalten und werden uns umgehend mit Ihnen in Verbindung setzen.\r\n-------------------------------------------------------------\r\nDatum: %localdate%\r\n-------------------------------------------------------------\r\n%details%\r\nAbteilung: %group_description%\r\n-------------------------------------------------------------\r\n%mailtext%', '', 120),
('08e6e089b4f36f76a10930a4208b56d2', '', 'support', 'EN', 'Hello, my name is %name%. Do you need help? Start Live-Chat now to get assistance.', 'Hello, my name is %name%. Do you need help? Start Live-Chat now to get assistance.', 'Hello %external_name%, my name is %name%, how may I help you?', 'Hello, my name is %name%. Please expect my telephone call in the next few seconds. During our telephone conversation, feel free to pass me information and files through this chat.', 'Website Operator %name% would like to redirect you to this URL:\r\n\r\n%target_url%', 'Website Operator %name% would like to redirect you to this URL:\r\n\r\n%target_url%', '', '', '', 1, 1, 1, 1, 'Chat Transcript\r\n%website_name% / %group_description%\r\n\r\nDate: %localdate%\r\n-------------------------------------------------------------\r\n%details%\r\nChat reference number: %chat_id%\r\n-------------------------------------------------------------\r\n%transcript%', 'Thank you, we have received your message!\r\nWe will get in touch with you as soon as possible.\r\n-------------------------------------------------------------\r\nDate: %localdate%\r\n-------------------------------------------------------------\r\n%details%\r\nGroup: %group_description%\r\n-------------------------------------------------------------\r\n%mailtext%', '', 120);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_profiles`
--

CREATE TABLE IF NOT EXISTS `livezilla_profiles` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `edited` int(11) NOT NULL DEFAULT '0',
  `first_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `company` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `fax` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `street` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `zip` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `department` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `city` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `country` varchar(255) COLLATE utf8_bin NOT NULL,
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `languages` varchar(1024) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comments` longtext COLLATE utf8_bin NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_profile_pictures`
--

CREATE TABLE IF NOT EXISTS `livezilla_profile_pictures` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `internal_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `webcam` tinyint(1) NOT NULL DEFAULT '0',
  `data` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `internal_id` (`internal_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_ratings`
--

CREATE TABLE IF NOT EXISTS `livezilla_ratings` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL,
  `time` int(11) unsigned NOT NULL,
  `user_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `internal_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `fullname` varchar(32) COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `company` varchar(50) COLLATE utf8_bin NOT NULL,
  `qualification` tinyint(1) unsigned NOT NULL,
  `politeness` tinyint(1) unsigned NOT NULL,
  `comment` varchar(400) COLLATE utf8_bin NOT NULL,
  `ip` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_ratings`
--

INSERT INTO `livezilla_ratings` (`id`, `time`, `user_id`, `internal_id`, `fullname`, `email`, `company`, `qualification`, `politeness`, `comment`, `ip`) VALUES
('1371129370_192.168.1.1', 1371129370, 'cb2815e326', 'admin', 'Email', 'Email@email.com', 'Email', 5, 5, '1 number ahes tu ', '192.168.1.1');

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_resources`
--

CREATE TABLE IF NOT EXISTS `livezilla_resources` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL,
  `owner` varchar(15) COLLATE utf8_bin NOT NULL,
  `editor` varchar(15) COLLATE utf8_bin NOT NULL,
  `value` longtext COLLATE utf8_bin NOT NULL,
  `edited` int(11) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `created` int(11) unsigned NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `discarded` tinyint(1) unsigned NOT NULL,
  `parentid` varchar(32) COLLATE utf8_bin NOT NULL,
  `rank` int(11) unsigned NOT NULL,
  `size` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `edited` (`edited`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_stats_aggs`
--

CREATE TABLE IF NOT EXISTS `livezilla_stats_aggs` (
  `year` smallint(4) unsigned NOT NULL DEFAULT '0',
  `month` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `day` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `mtime` int(10) unsigned NOT NULL DEFAULT '0',
  `sessions` int(10) unsigned NOT NULL DEFAULT '0',
  `visitors_unique` int(10) unsigned NOT NULL DEFAULT '0',
  `conversions` int(10) unsigned NOT NULL DEFAULT '0',
  `aggregated` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `chats_forwards` int(10) unsigned NOT NULL DEFAULT '0',
  `chats_posts_internal` int(10) unsigned NOT NULL DEFAULT '0',
  `chats_posts_external` int(10) unsigned NOT NULL DEFAULT '0',
  `avg_time_site` double unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`year`,`month`,`day`),
  KEY `time` (`time`),
  KEY `aggregated` (`aggregated`),
  KEY `mtime` (`mtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_stats_aggs`
--

INSERT INTO `livezilla_stats_aggs` (`year`, `month`, `day`, `time`, `mtime`, `sessions`, `visitors_unique`, `conversions`, `aggregated`, `chats_forwards`, `chats_posts_internal`, `chats_posts_external`, `avg_time_site`) VALUES
(2013, 6, 13, 1371180819, 16195000, 4, 4, 0, 1, 0, 2, 5, 906),
(2013, 6, 0, 1372652534, 29457600, 149, 100, 0, 1, 0, 3, 6, 9607.575392857145),
(2013, 0, 0, 1372221549, 77394400, 115, 75, 0, 0, 0, 3, 6, 8642.353825),
(2013, 6, 14, 1371271930, 87468100, 8, 6, 0, 1, 0, 1, 1, 9132.875),
(2013, 6, 15, 1371440878, 23773300, 0, 0, 0, 1, 0, 0, 0, 0),
(2013, 6, 17, 1371526259, 45421700, 11, 6, 0, 1, 0, 0, 0, 12823.5455),
(2013, 6, 18, 1371613577, 99684500, 6, 4, 0, 1, 0, 0, 0, 17040.5),
(2013, 6, 19, 1371698501, 18698100, 19, 11, 0, 1, 0, 0, 0, 6286.8421),
(2013, 6, 20, 1371783734, 28056700, 18, 12, 0, 1, 0, 0, 0, 11200.2778),
(2013, 6, 21, 1371962289, 1769900, 15, 8, 0, 1, 0, 0, 0, 12991.3333),
(2013, 6, 23, 1372046008, 86530600, 4, 2, 0, 1, 0, 0, 0, 4658.25),
(2013, 6, 24, 1372132527, 17352400, 10, 8, 0, 1, 0, 0, 0, 13193.9),
(2013, 6, 25, 1372213419, 63120600, 18, 12, 0, 1, 0, 0, 0, 10484.7222),
(2013, 6, 26, 1372299135, 2012700, 12, 9, 0, 1, 0, 0, 0, 12826.6667),
(2013, 6, 27, 1372392173, 80856200, 14, 10, 0, 1, 0, 0, 0, 7763.1429),
(2013, 6, 28, 1372652527, 3436100, 10, 8, 0, 1, 0, 0, 0, 15198),
(2013, 7, 1, 1372734430, 58206100, 8, 5, 0, 1, 0, 0, 0, 15989.875),
(2013, 7, 0, 1375329366, 29899300, 163, 102, 0, 1, 0, 0, 0, 6997.69627826087),
(2013, 7, 2, 1372823784, 13734200, 10, 6, 0, 1, 0, 0, 0, 6859.7),
(2013, 7, 3, 1372910384, 50589200, 2, 2, 0, 1, 0, 0, 0, 14981),
(2013, 7, 4, 1372996257, 21684300, 14, 10, 0, 1, 0, 0, 0, 8588.9286),
(2013, 7, 5, 1373261962, 43757200, 3, 3, 0, 1, 0, 0, 0, 1217.6667),
(2013, 7, 8, 1373341854, 4475700, 6, 5, 0, 1, 0, 0, 0, 5856),
(2013, 7, 9, 1373424823, 55341300, 5, 5, 0, 1, 0, 0, 0, 16086),
(2013, 7, 10, 1373514666, 7294400, 7, 3, 0, 1, 0, 0, 0, 2884.1429),
(2013, 7, 11, 1373600462, 56574000, 18, 10, 0, 1, 0, 0, 0, 6605),
(2013, 7, 12, 1373859844, 90065700, 7, 3, 0, 1, 0, 0, 0, 5915.2857),
(2013, 7, 15, 1373946233, 95358300, 6, 4, 0, 1, 0, 0, 0, 7549.3333),
(2013, 7, 16, 1374039562, 35623300, 3, 1, 0, 1, 0, 0, 0, 1672.3333),
(2013, 7, 17, 1374117020, 53211900, 7, 4, 0, 1, 0, 0, 0, 2217.4286),
(2013, 7, 18, 1374203040, 11726400, 7, 5, 0, 1, 0, 0, 0, 14762.8571),
(2013, 7, 19, 1374464831, 42988800, 14, 10, 0, 1, 0, 0, 0, 7419.9286),
(2013, 7, 22, 1374551286, 34815600, 4, 3, 0, 1, 0, 0, 0, 6775.25),
(2013, 7, 23, 1374632307, 18582300, 13, 9, 0, 1, 0, 0, 0, 6848.6154),
(2013, 7, 24, 1374721492, 58113100, 19, 7, 0, 1, 0, 0, 0, 6843.5263),
(2013, 7, 25, 1374811189, 1061100, 7, 4, 0, 1, 0, 0, 0, 8724.1429),
(2013, 7, 26, 1375070157, 64617600, 1, 1, 0, 1, 0, 0, 0, 13150),
(2013, 7, 29, 1375156527, 29460700, 1, 1, 0, 1, 0, 0, 0, 0),
(2013, 7, 30, 1375242570, 95980100, 0, 0, 0, 1, 0, 0, 0, 0),
(2013, 7, 31, 1375329362, 56746100, 1, 1, 0, 1, 0, 0, 0, 0),
(2013, 8, 1, 1375414412, 70103100, 8, 4, 0, 1, 0, 0, 0, 831.5),
(2013, 8, 0, 1375329366, 70728800, 0, 0, 0, 0, 0, 0, 0, 0),
(2013, 8, 2, 1375674812, 22731900, 4, 4, 0, 1, 0, 0, 0, 41.5),
(2013, 8, 5, 1375761311, 38071300, 2, 1, 0, 1, 0, 0, 0, 10048),
(2013, 8, 6, 1375847381, 58271500, 0, 0, 0, 1, 0, 0, 0, 0),
(2013, 8, 7, 1375919370, 6001500, 2, 2, 0, 1, 0, 0, 0, 47),
(2013, 8, 8, 1376002900, 69808800, 0, 0, 0, 1, 0, 0, 0, 0),
(2013, 8, 9, 1376217590, 44413300, 0, 0, 0, 1, 0, 0, 0, 0),
(2013, 8, 11, 1376279860, 27292800, 0, 0, 0, 1, 0, 0, 0, 0),
(2013, 8, 12, 1376365113, 48673800, 0, 0, 0, 1, 0, 0, 0, 0),
(2013, 8, 13, 1376513350, 77148900, 1, 1, 0, 1, 0, 0, 0, 309),
(2013, 8, 14, 1376967253, 27531000, 0, 0, 0, 1, 0, 0, 0, 0),
(2013, 8, 20, 1377057123, 62922100, 3, 2, 0, 1, 0, 0, 0, 2100),
(2013, 8, 21, 1377154079, 64139800, 3, 3, 0, 1, 0, 0, 0, 11547.3333),
(2013, 8, 22, 1377231002, 53392900, 4, 2, 0, 1, 0, 0, 0, 4070.5),
(2013, 8, 23, 1377496572, 19303000, 2, 1, 0, 1, 0, 0, 0, 7950),
(2013, 8, 26, 1377572830, 95652000, 1, 1, 0, 1, 0, 0, 0, 16976),
(2013, 8, 27, 1377572831, 80823100, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_stats_aggs_availabilities`
--

CREATE TABLE IF NOT EXISTS `livezilla_stats_aggs_availabilities` (
  `year` smallint(5) unsigned NOT NULL DEFAULT '0',
  `month` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `day` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hour` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `user_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `seconds` int(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`year`,`month`,`day`,`user_id`,`hour`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_stats_aggs_availabilities`
--

INSERT INTO `livezilla_stats_aggs_availabilities` (`year`, `month`, `day`, `hour`, `user_id`, `status`, `seconds`) VALUES
(2013, 6, 13, 14, 'everyoneintern', 0, 441),
(2013, 6, 13, 14, '11ca32e', 0, 441),
(2013, 6, 14, 4, 'everyoneintern', 0, 747),
(2013, 6, 14, 5, 'everyoneintern', 0, 3600),
(2013, 6, 14, 6, 'everyoneintern', 0, 3600),
(2013, 6, 14, 7, 'everyoneintern', 0, 3600),
(2013, 6, 14, 8, 'everyoneintern', 0, 3600),
(2013, 6, 14, 9, 'everyoneintern', 0, 2891),
(2013, 6, 14, 10, 'everyoneintern', 0, 3600),
(2013, 6, 14, 11, 'everyoneintern', 0, 3600),
(2013, 6, 14, 12, 'everyoneintern', 0, 3038),
(2013, 6, 14, 13, 'everyoneintern', 0, 3600),
(2013, 6, 14, 14, 'everyoneintern', 0, 1196),
(2013, 6, 14, 4, '11ca32e', 0, 747),
(2013, 6, 14, 5, '11ca32e', 0, 3600),
(2013, 6, 14, 6, '11ca32e', 0, 3600),
(2013, 6, 14, 7, '11ca32e', 0, 3600),
(2013, 6, 14, 8, '11ca32e', 0, 3600),
(2013, 6, 14, 9, '11ca32e', 0, 2891),
(2013, 6, 14, 10, '11ca32e', 0, 3600),
(2013, 6, 14, 11, '11ca32e', 0, 3600),
(2013, 6, 14, 12, '11ca32e', 0, 3038),
(2013, 6, 14, 13, '11ca32e', 0, 3600),
(2013, 6, 14, 14, '11ca32e', 0, 1196),
(2013, 6, 15, 5, '11ca32e', 0, 310),
(2013, 6, 15, 5, 'everyoneintern', 0, 310),
(2013, 6, 17, 4, '11ca32e', 0, 721),
(2013, 6, 17, 5, '11ca32e', 0, 3600),
(2013, 6, 17, 6, '11ca32e', 0, 3600),
(2013, 6, 17, 7, '11ca32e', 0, 3600),
(2013, 6, 17, 8, '11ca32e', 0, 2681),
(2013, 6, 17, 9, '11ca32e', 0, 2900),
(2013, 6, 17, 10, '11ca32e', 0, 3600),
(2013, 6, 17, 11, '11ca32e', 0, 3591),
(2013, 6, 17, 12, '11ca32e', 0, 3600),
(2013, 6, 17, 13, '11ca32e', 0, 3600),
(2013, 6, 17, 14, '11ca32e', 0, 1897),
(2013, 6, 17, 4, 'everyoneintern', 0, 721),
(2013, 6, 17, 5, 'everyoneintern', 0, 3600),
(2013, 6, 17, 6, 'everyoneintern', 0, 3600),
(2013, 6, 17, 7, 'everyoneintern', 0, 3600),
(2013, 6, 17, 8, 'everyoneintern', 0, 2681),
(2013, 6, 17, 9, 'everyoneintern', 0, 2900),
(2013, 6, 17, 10, 'everyoneintern', 0, 3600),
(2013, 6, 17, 11, 'everyoneintern', 0, 3591),
(2013, 6, 17, 12, 'everyoneintern', 0, 3600),
(2013, 6, 17, 13, 'everyoneintern', 0, 3600),
(2013, 6, 17, 14, 'everyoneintern', 0, 1897),
(2013, 6, 18, 5, 'everyoneintern', 0, 3600),
(2013, 6, 18, 4, 'everyoneintern', 0, 1356),
(2013, 6, 18, 15, '11ca32e', 0, 615),
(2013, 6, 18, 14, '11ca32e', 0, 3600),
(2013, 6, 18, 13, '11ca32e', 0, 3600),
(2013, 6, 18, 12, '11ca32e', 0, 2811),
(2013, 6, 18, 11, '11ca32e', 0, 3257),
(2013, 6, 18, 10, '11ca32e', 0, 3600),
(2013, 6, 18, 9, '11ca32e', 0, 2629),
(2013, 6, 18, 8, '11ca32e', 0, 3130),
(2013, 6, 18, 7, '11ca32e', 0, 3600),
(2013, 6, 18, 6, '11ca32e', 0, 3600),
(2013, 6, 18, 5, '11ca32e', 0, 3600),
(2013, 6, 18, 4, '11ca32e', 0, 1356),
(2013, 6, 18, 6, 'everyoneintern', 0, 3600),
(2013, 6, 18, 7, 'everyoneintern', 0, 3600),
(2013, 6, 18, 8, 'everyoneintern', 0, 3130),
(2013, 6, 18, 9, 'everyoneintern', 0, 2629),
(2013, 6, 18, 10, 'everyoneintern', 0, 3600),
(2013, 6, 18, 11, 'everyoneintern', 0, 3257),
(2013, 6, 18, 12, 'everyoneintern', 0, 2811),
(2013, 6, 18, 13, 'everyoneintern', 0, 3600),
(2013, 6, 18, 14, 'everyoneintern', 0, 3600),
(2013, 6, 18, 15, 'everyoneintern', 0, 615),
(2013, 6, 19, 10, 'everyoneintern', 0, 3587),
(2013, 6, 19, 9, 'everyoneintern', 0, 2250),
(2013, 6, 19, 8, 'everyoneintern', 0, 3012),
(2013, 6, 19, 7, 'everyoneintern', 0, 3600),
(2013, 6, 19, 6, 'everyoneintern', 0, 3600),
(2013, 6, 19, 5, 'everyoneintern', 0, 3600),
(2013, 6, 19, 4, 'everyoneintern', 0, 821),
(2013, 6, 19, 15, '11ca32e', 0, 2336),
(2013, 6, 19, 14, '11ca32e', 0, 3250),
(2013, 6, 19, 13, '11ca32e', 0, 3600),
(2013, 6, 19, 12, '11ca32e', 0, 3600),
(2013, 6, 19, 11, '11ca32e', 0, 3600),
(2013, 6, 19, 10, '11ca32e', 0, 3587),
(2013, 6, 19, 9, '11ca32e', 0, 2250),
(2013, 6, 19, 8, '11ca32e', 0, 3012),
(2013, 6, 19, 7, '11ca32e', 0, 3600),
(2013, 6, 19, 6, '11ca32e', 0, 3600),
(2013, 6, 19, 5, '11ca32e', 0, 3600),
(2013, 6, 19, 4, '11ca32e', 0, 821),
(2013, 6, 19, 11, 'everyoneintern', 0, 3600),
(2013, 6, 19, 12, 'everyoneintern', 0, 3600),
(2013, 6, 19, 13, 'everyoneintern', 0, 3600),
(2013, 6, 19, 14, 'everyoneintern', 0, 3250),
(2013, 6, 19, 15, 'everyoneintern', 0, 2336),
(2013, 6, 20, 16, 'everyoneintern', 0, 1795),
(2013, 6, 20, 15, 'everyoneintern', 0, 532),
(2013, 6, 20, 14, 'everyoneintern', 0, 3450),
(2013, 6, 20, 13, 'everyoneintern', 0, 3600),
(2013, 6, 20, 12, 'everyoneintern', 0, 3600),
(2013, 6, 20, 11, 'everyoneintern', 0, 3600),
(2013, 6, 20, 10, 'everyoneintern', 0, 3600),
(2013, 6, 20, 9, 'everyoneintern', 0, 2769),
(2013, 6, 20, 8, 'everyoneintern', 0, 3069),
(2013, 6, 20, 7, 'everyoneintern', 0, 3600),
(2013, 6, 20, 6, 'everyoneintern', 0, 3600),
(2013, 6, 20, 5, 'everyoneintern', 0, 3600),
(2013, 6, 20, 4, 'everyoneintern', 0, 790),
(2013, 6, 20, 4, '11ca32e', 0, 790),
(2013, 6, 20, 5, '11ca32e', 0, 3600),
(2013, 6, 20, 6, '11ca32e', 0, 3600),
(2013, 6, 20, 7, '11ca32e', 0, 3600),
(2013, 6, 20, 8, '11ca32e', 0, 3069),
(2013, 6, 20, 9, '11ca32e', 0, 2769),
(2013, 6, 20, 10, '11ca32e', 0, 3600),
(2013, 6, 20, 11, '11ca32e', 0, 3600),
(2013, 6, 20, 12, '11ca32e', 0, 3600),
(2013, 6, 20, 13, '11ca32e', 0, 3600),
(2013, 6, 20, 14, '11ca32e', 0, 3450),
(2013, 6, 20, 15, '11ca32e', 0, 532),
(2013, 6, 20, 16, '11ca32e', 0, 1795),
(2013, 6, 21, 4, 'everyoneintern', 0, 852),
(2013, 6, 21, 16, '11ca32e', 0, 2109),
(2013, 6, 21, 15, '11ca32e', 0, 2348),
(2013, 6, 21, 14, '11ca32e', 0, 2365),
(2013, 6, 21, 13, '11ca32e', 0, 2779),
(2013, 6, 21, 12, '11ca32e', 0, 1222),
(2013, 6, 21, 11, '11ca32e', 0, 1761),
(2013, 6, 21, 10, '11ca32e', 0, 3600),
(2013, 6, 21, 9, '11ca32e', 0, 3600),
(2013, 6, 21, 8, '11ca32e', 0, 3028),
(2013, 6, 21, 7, '11ca32e', 0, 3600),
(2013, 6, 21, 6, '11ca32e', 0, 3600),
(2013, 6, 21, 5, '11ca32e', 0, 3042),
(2013, 6, 21, 4, '11ca32e', 0, 852),
(2013, 6, 21, 5, 'everyoneintern', 0, 3042),
(2013, 6, 21, 6, 'everyoneintern', 0, 3600),
(2013, 6, 21, 7, 'everyoneintern', 0, 3600),
(2013, 6, 21, 8, 'everyoneintern', 0, 3028),
(2013, 6, 21, 9, 'everyoneintern', 0, 3600),
(2013, 6, 21, 10, 'everyoneintern', 0, 3600),
(2013, 6, 21, 11, 'everyoneintern', 0, 1761),
(2013, 6, 21, 12, 'everyoneintern', 0, 1222),
(2013, 6, 21, 13, 'everyoneintern', 0, 2779),
(2013, 6, 21, 14, 'everyoneintern', 0, 2365),
(2013, 6, 21, 15, 'everyoneintern', 0, 2348),
(2013, 6, 21, 16, 'everyoneintern', 0, 2109),
(2013, 6, 23, 5, '11ca32e', 0, 1309),
(2013, 6, 23, 6, '11ca32e', 0, 3600),
(2013, 6, 23, 7, '11ca32e', 0, 2222),
(2013, 6, 23, 8, '11ca32e', 0, 3533),
(2013, 6, 23, 9, '11ca32e', 0, 701),
(2013, 6, 23, 5, 'everyoneintern', 0, 1309),
(2013, 6, 23, 6, 'everyoneintern', 0, 3600),
(2013, 6, 23, 7, 'everyoneintern', 0, 2222),
(2013, 6, 23, 8, 'everyoneintern', 0, 3533),
(2013, 6, 23, 9, 'everyoneintern', 0, 701),
(2013, 6, 24, 4, '11ca32e', 0, 390),
(2013, 6, 24, 5, '11ca32e', 0, 3600),
(2013, 6, 24, 6, '11ca32e', 0, 3600),
(2013, 6, 24, 7, '11ca32e', 0, 3575),
(2013, 6, 24, 8, '11ca32e', 0, 3207),
(2013, 6, 24, 9, '11ca32e', 0, 2321),
(2013, 6, 24, 10, '11ca32e', 0, 3455),
(2013, 6, 24, 11, '11ca32e', 0, 1591),
(2013, 6, 24, 4, 'everyoneintern', 0, 390),
(2013, 6, 24, 5, 'everyoneintern', 0, 3600),
(2013, 6, 24, 6, 'everyoneintern', 0, 3600),
(2013, 6, 24, 7, 'everyoneintern', 0, 3575),
(2013, 6, 24, 8, 'everyoneintern', 0, 3207),
(2013, 6, 24, 9, 'everyoneintern', 0, 2321),
(2013, 6, 24, 10, 'everyoneintern', 0, 3455),
(2013, 6, 24, 11, 'everyoneintern', 0, 1591),
(2013, 6, 25, 5, '11ca32e', 0, 1133),
(2013, 6, 25, 6, '11ca32e', 0, 2463),
(2013, 6, 25, 7, '11ca32e', 0, 3600),
(2013, 6, 25, 8, '11ca32e', 0, 2433),
(2013, 6, 25, 9, '11ca32e', 0, 2466),
(2013, 6, 25, 10, '11ca32e', 0, 3600),
(2013, 6, 25, 11, '11ca32e', 0, 3600),
(2013, 6, 25, 12, '11ca32e', 0, 3600),
(2013, 6, 25, 13, '11ca32e', 0, 3449),
(2013, 6, 25, 14, '11ca32e', 0, 2336),
(2013, 6, 25, 5, 'everyoneintern', 0, 1133),
(2013, 6, 25, 6, 'everyoneintern', 0, 2463),
(2013, 6, 25, 7, 'everyoneintern', 0, 3600),
(2013, 6, 25, 8, 'everyoneintern', 0, 2433),
(2013, 6, 25, 9, 'everyoneintern', 0, 2466),
(2013, 6, 25, 10, 'everyoneintern', 0, 3600),
(2013, 6, 25, 11, 'everyoneintern', 0, 3600),
(2013, 6, 25, 12, 'everyoneintern', 0, 3600),
(2013, 6, 25, 13, 'everyoneintern', 0, 3449),
(2013, 6, 25, 14, 'everyoneintern', 0, 2336),
(2013, 6, 26, 5, '11ca32e', 0, 1274),
(2013, 6, 26, 6, '11ca32e', 0, 2508),
(2013, 6, 26, 7, '11ca32e', 0, 3600),
(2013, 6, 26, 8, '11ca32e', 0, 2624),
(2013, 6, 26, 9, '11ca32e', 0, 2313),
(2013, 6, 26, 10, '11ca32e', 0, 3600),
(2013, 6, 26, 11, '11ca32e', 0, 3600),
(2013, 6, 26, 12, '11ca32e', 0, 3600),
(2013, 6, 26, 13, '11ca32e', 0, 3600),
(2013, 6, 26, 14, '11ca32e', 0, 3600),
(2013, 6, 26, 15, '11ca32e', 0, 286),
(2013, 6, 26, 5, 'everyoneintern', 0, 1274),
(2013, 6, 26, 6, 'everyoneintern', 0, 2508),
(2013, 6, 26, 7, 'everyoneintern', 0, 3600),
(2013, 6, 26, 8, 'everyoneintern', 0, 2624),
(2013, 6, 26, 9, 'everyoneintern', 0, 2313),
(2013, 6, 26, 10, 'everyoneintern', 0, 3600),
(2013, 6, 26, 11, 'everyoneintern', 0, 3600),
(2013, 6, 26, 12, 'everyoneintern', 0, 3600),
(2013, 6, 26, 13, 'everyoneintern', 0, 3600),
(2013, 6, 26, 14, 'everyoneintern', 0, 3600),
(2013, 6, 26, 15, 'everyoneintern', 0, 286),
(2013, 6, 27, 5, '11ca32e', 0, 1447),
(2013, 6, 27, 6, '11ca32e', 0, 3430),
(2013, 6, 27, 7, '11ca32e', 0, 3600),
(2013, 6, 27, 8, '11ca32e', 0, 2478),
(2013, 6, 27, 9, '11ca32e', 0, 1516),
(2013, 6, 27, 10, '11ca32e', 0, 3560),
(2013, 6, 27, 11, '11ca32e', 0, 3600),
(2013, 6, 27, 12, '11ca32e', 0, 3600),
(2013, 6, 27, 13, '11ca32e', 0, 3600),
(2013, 6, 27, 14, '11ca32e', 0, 3600),
(2013, 6, 27, 15, '11ca32e', 0, 2590),
(2013, 6, 27, 5, 'everyoneintern', 0, 1447),
(2013, 6, 27, 6, 'everyoneintern', 0, 3430),
(2013, 6, 27, 7, 'everyoneintern', 0, 3600),
(2013, 6, 27, 8, 'everyoneintern', 0, 2478),
(2013, 6, 27, 9, 'everyoneintern', 0, 1516),
(2013, 6, 27, 10, 'everyoneintern', 0, 3560),
(2013, 6, 27, 11, 'everyoneintern', 0, 3600),
(2013, 6, 27, 12, 'everyoneintern', 0, 3600),
(2013, 6, 27, 13, 'everyoneintern', 0, 3600),
(2013, 6, 27, 14, 'everyoneintern', 0, 3600),
(2013, 6, 27, 15, 'everyoneintern', 0, 2590),
(2013, 6, 28, 5, '11ca32e', 0, 3426),
(2013, 6, 28, 6, '11ca32e', 0, 3600),
(2013, 6, 28, 7, '11ca32e', 0, 3461),
(2013, 6, 28, 8, '11ca32e', 0, 2155),
(2013, 6, 28, 9, '11ca32e', 0, 2443),
(2013, 6, 28, 10, '11ca32e', 0, 3600),
(2013, 6, 28, 11, '11ca32e', 0, 3600),
(2013, 6, 28, 12, '11ca32e', 0, 3600),
(2013, 6, 28, 13, '11ca32e', 0, 3508),
(2013, 6, 28, 14, '11ca32e', 0, 3600),
(2013, 6, 28, 15, '11ca32e', 0, 2193),
(2013, 6, 28, 5, 'everyoneintern', 0, 3426),
(2013, 6, 28, 6, 'everyoneintern', 0, 3600),
(2013, 6, 28, 7, 'everyoneintern', 0, 3461),
(2013, 6, 28, 8, 'everyoneintern', 0, 2155),
(2013, 6, 28, 9, 'everyoneintern', 0, 2443),
(2013, 6, 28, 10, 'everyoneintern', 0, 3600),
(2013, 6, 28, 11, 'everyoneintern', 0, 3600),
(2013, 6, 28, 12, 'everyoneintern', 0, 3600),
(2013, 6, 28, 13, 'everyoneintern', 0, 3508),
(2013, 6, 28, 14, 'everyoneintern', 0, 3600),
(2013, 6, 28, 15, 'everyoneintern', 0, 2193),
(2013, 7, 1, 5, '11ca32e', 0, 1457),
(2013, 7, 1, 6, '11ca32e', 0, 3600),
(2013, 7, 1, 7, '11ca32e', 0, 3600),
(2013, 7, 1, 8, '11ca32e', 0, 2573),
(2013, 7, 1, 9, '11ca32e', 0, 2790),
(2013, 7, 1, 10, '11ca32e', 0, 3600),
(2013, 7, 1, 11, '11ca32e', 0, 3600),
(2013, 7, 1, 12, '11ca32e', 0, 3600),
(2013, 7, 1, 13, '11ca32e', 0, 3600),
(2013, 7, 1, 14, '11ca32e', 0, 3600),
(2013, 7, 1, 15, '11ca32e', 0, 1704),
(2013, 7, 1, 5, 'everyoneintern', 0, 1457),
(2013, 7, 1, 6, 'everyoneintern', 0, 3600),
(2013, 7, 1, 7, 'everyoneintern', 0, 3600),
(2013, 7, 1, 8, 'everyoneintern', 0, 2573),
(2013, 7, 1, 9, 'everyoneintern', 0, 2790),
(2013, 7, 1, 10, 'everyoneintern', 0, 3600),
(2013, 7, 1, 11, 'everyoneintern', 0, 3600),
(2013, 7, 1, 12, 'everyoneintern', 0, 3600),
(2013, 7, 1, 13, 'everyoneintern', 0, 3600),
(2013, 7, 1, 14, 'everyoneintern', 0, 3600),
(2013, 7, 1, 15, 'everyoneintern', 0, 1704),
(2013, 7, 2, 4, '11ca32e', 0, 346),
(2013, 7, 2, 5, '11ca32e', 0, 3600),
(2013, 7, 2, 6, '11ca32e', 0, 3521),
(2013, 7, 2, 7, '11ca32e', 0, 3600),
(2013, 7, 2, 8, '11ca32e', 0, 2491),
(2013, 7, 2, 9, '11ca32e', 0, 2271),
(2013, 7, 2, 10, '11ca32e', 0, 3600),
(2013, 7, 2, 11, '11ca32e', 0, 3591),
(2013, 7, 2, 12, '11ca32e', 0, 3600),
(2013, 7, 2, 13, '11ca32e', 0, 3600),
(2013, 7, 2, 14, '11ca32e', 0, 229),
(2013, 7, 2, 4, 'everyoneintern', 0, 346),
(2013, 7, 2, 5, 'everyoneintern', 0, 3600),
(2013, 7, 2, 6, 'everyoneintern', 0, 3521),
(2013, 7, 2, 7, 'everyoneintern', 0, 3600),
(2013, 7, 2, 8, 'everyoneintern', 0, 2491),
(2013, 7, 2, 9, 'everyoneintern', 0, 2271),
(2013, 7, 2, 10, 'everyoneintern', 0, 3600),
(2013, 7, 2, 11, 'everyoneintern', 0, 3591),
(2013, 7, 2, 12, 'everyoneintern', 0, 3600),
(2013, 7, 2, 13, 'everyoneintern', 0, 3600),
(2013, 7, 2, 14, 'everyoneintern', 0, 229),
(2013, 7, 3, 4, '11ca32e', 0, 215),
(2013, 7, 3, 5, '11ca32e', 0, 3600),
(2013, 7, 3, 6, '11ca32e', 0, 3600),
(2013, 7, 3, 7, '11ca32e', 0, 3600),
(2013, 7, 3, 8, '11ca32e', 0, 2162),
(2013, 7, 3, 9, '11ca32e', 0, 2386),
(2013, 7, 3, 10, '11ca32e', 0, 3546),
(2013, 7, 3, 11, '11ca32e', 0, 3591),
(2013, 7, 3, 12, '11ca32e', 0, 3600),
(2013, 7, 3, 13, '11ca32e', 0, 3600),
(2013, 7, 3, 14, '11ca32e', 0, 864),
(2013, 7, 3, 4, 'everyoneintern', 0, 215),
(2013, 7, 3, 5, 'everyoneintern', 0, 3600),
(2013, 7, 3, 6, 'everyoneintern', 0, 3600),
(2013, 7, 3, 7, 'everyoneintern', 0, 3600),
(2013, 7, 3, 8, 'everyoneintern', 0, 2162),
(2013, 7, 3, 9, 'everyoneintern', 0, 2386),
(2013, 7, 3, 10, 'everyoneintern', 0, 3546),
(2013, 7, 3, 11, 'everyoneintern', 0, 3591),
(2013, 7, 3, 12, 'everyoneintern', 0, 3600),
(2013, 7, 3, 13, 'everyoneintern', 0, 3600),
(2013, 7, 3, 14, 'everyoneintern', 0, 864),
(2013, 7, 4, 4, '11ca32e', 0, 15),
(2013, 7, 4, 5, '11ca32e', 0, 3600),
(2013, 7, 4, 6, '11ca32e', 0, 3600),
(2013, 7, 4, 7, '11ca32e', 0, 3600),
(2013, 7, 4, 8, '11ca32e', 0, 3008),
(2013, 7, 4, 9, '11ca32e', 0, 2338),
(2013, 7, 4, 10, '11ca32e', 0, 3600),
(2013, 7, 4, 11, '11ca32e', 0, 2277),
(2013, 7, 4, 12, '11ca32e', 0, 870),
(2013, 7, 4, 13, '11ca32e', 0, 644),
(2013, 7, 4, 14, '11ca32e', 0, 3233),
(2013, 7, 4, 15, '11ca32e', 0, 626),
(2013, 7, 4, 4, 'everyoneintern', 0, 15),
(2013, 7, 4, 5, 'everyoneintern', 0, 3600),
(2013, 7, 4, 6, 'everyoneintern', 0, 3600),
(2013, 7, 4, 7, 'everyoneintern', 0, 3600),
(2013, 7, 4, 8, 'everyoneintern', 0, 3008),
(2013, 7, 4, 9, 'everyoneintern', 0, 2338),
(2013, 7, 4, 10, 'everyoneintern', 0, 3600),
(2013, 7, 4, 11, 'everyoneintern', 0, 2277),
(2013, 7, 4, 12, 'everyoneintern', 0, 870),
(2013, 7, 4, 13, 'everyoneintern', 0, 644),
(2013, 7, 4, 14, 'everyoneintern', 0, 3233),
(2013, 7, 4, 15, 'everyoneintern', 0, 626),
(2013, 7, 5, 4, '11ca32e', 0, 541),
(2013, 7, 5, 5, '11ca32e', 0, 2343),
(2013, 7, 5, 6, '11ca32e', 0, 3572),
(2013, 7, 5, 7, '11ca32e', 0, 2291),
(2013, 7, 5, 8, '11ca32e', 0, 3108),
(2013, 7, 5, 9, '11ca32e', 0, 2398),
(2013, 7, 5, 10, '11ca32e', 0, 3600),
(2013, 7, 5, 11, '11ca32e', 0, 2764),
(2013, 7, 5, 12, '11ca32e', 0, 3450),
(2013, 7, 5, 13, '11ca32e', 0, 1977),
(2013, 7, 5, 4, 'everyoneintern', 0, 541),
(2013, 7, 5, 5, 'everyoneintern', 0, 2343),
(2013, 7, 5, 6, 'everyoneintern', 0, 3572),
(2013, 7, 5, 7, 'everyoneintern', 0, 2291),
(2013, 7, 5, 8, 'everyoneintern', 0, 3108),
(2013, 7, 5, 9, 'everyoneintern', 0, 2398),
(2013, 7, 5, 10, 'everyoneintern', 0, 3600),
(2013, 7, 5, 11, 'everyoneintern', 0, 2764),
(2013, 7, 5, 12, 'everyoneintern', 0, 3450),
(2013, 7, 5, 13, 'everyoneintern', 0, 1977),
(2013, 7, 8, 6, '11ca32e', 0, 1236),
(2013, 7, 8, 7, '11ca32e', 0, 3600),
(2013, 7, 8, 8, '11ca32e', 0, 2498),
(2013, 7, 8, 9, '11ca32e', 0, 2460),
(2013, 7, 8, 10, '11ca32e', 0, 3600),
(2013, 7, 8, 11, '11ca32e', 0, 3600),
(2013, 7, 8, 12, '11ca32e', 0, 3600),
(2013, 7, 8, 13, '11ca32e', 0, 3353),
(2013, 7, 8, 6, 'everyoneintern', 0, 1236),
(2013, 7, 8, 7, 'everyoneintern', 0, 3600),
(2013, 7, 8, 8, 'everyoneintern', 0, 2498),
(2013, 7, 8, 9, 'everyoneintern', 0, 2460),
(2013, 7, 8, 10, 'everyoneintern', 0, 3600),
(2013, 7, 8, 11, 'everyoneintern', 0, 3600),
(2013, 7, 8, 12, 'everyoneintern', 0, 3600),
(2013, 7, 8, 13, 'everyoneintern', 0, 3353),
(2013, 7, 9, 4, '11ca32e', 0, 545),
(2013, 7, 9, 5, '11ca32e', 0, 3600),
(2013, 7, 9, 6, '11ca32e', 0, 3600),
(2013, 7, 9, 7, '11ca32e', 0, 3600),
(2013, 7, 9, 8, '11ca32e', 0, 3492),
(2013, 7, 9, 9, '11ca32e', 0, 2780),
(2013, 7, 9, 10, '11ca32e', 0, 3600),
(2013, 7, 9, 11, '11ca32e', 0, 2794),
(2013, 7, 9, 12, '11ca32e', 0, 3600),
(2013, 7, 9, 13, '11ca32e', 0, 3600),
(2013, 7, 9, 14, '11ca32e', 0, 2852),
(2013, 7, 9, 15, '11ca32e', 0, 2306),
(2013, 7, 9, 4, 'everyoneintern', 0, 545),
(2013, 7, 9, 5, 'everyoneintern', 0, 3600),
(2013, 7, 9, 6, 'everyoneintern', 0, 3600),
(2013, 7, 9, 7, 'everyoneintern', 0, 3600),
(2013, 7, 9, 8, 'everyoneintern', 0, 3492),
(2013, 7, 9, 9, 'everyoneintern', 0, 2780),
(2013, 7, 9, 10, 'everyoneintern', 0, 3600),
(2013, 7, 9, 11, 'everyoneintern', 0, 2794),
(2013, 7, 9, 12, 'everyoneintern', 0, 3600),
(2013, 7, 9, 13, 'everyoneintern', 0, 3600),
(2013, 7, 9, 14, 'everyoneintern', 0, 2852),
(2013, 7, 9, 15, 'everyoneintern', 0, 2306),
(2013, 7, 10, 4, '11ca32e', 0, 865),
(2013, 7, 10, 5, '11ca32e', 0, 3600),
(2013, 7, 10, 6, '11ca32e', 0, 3600),
(2013, 7, 10, 7, '11ca32e', 0, 3600),
(2013, 7, 10, 8, '11ca32e', 0, 2392),
(2013, 7, 10, 9, '11ca32e', 0, 2782),
(2013, 7, 10, 10, '11ca32e', 0, 3068),
(2013, 7, 10, 11, '11ca32e', 0, 3600),
(2013, 7, 10, 12, '11ca32e', 0, 3600),
(2013, 7, 10, 13, '11ca32e', 0, 3600),
(2013, 7, 10, 14, '11ca32e', 0, 430),
(2013, 7, 10, 4, 'everyoneintern', 0, 865),
(2013, 7, 10, 5, 'everyoneintern', 0, 3600),
(2013, 7, 10, 6, 'everyoneintern', 0, 3600),
(2013, 7, 10, 7, 'everyoneintern', 0, 3600),
(2013, 7, 10, 8, 'everyoneintern', 0, 2392),
(2013, 7, 10, 9, 'everyoneintern', 0, 2782),
(2013, 7, 10, 10, 'everyoneintern', 0, 3068),
(2013, 7, 10, 11, 'everyoneintern', 0, 3600),
(2013, 7, 10, 12, 'everyoneintern', 0, 3600),
(2013, 7, 10, 13, 'everyoneintern', 0, 3600),
(2013, 7, 10, 14, 'everyoneintern', 0, 430),
(2013, 7, 11, 4, 'everyoneintern', 0, 532),
(2013, 7, 11, 5, 'everyoneintern', 0, 3600),
(2013, 7, 11, 6, 'everyoneintern', 0, 274),
(2013, 7, 11, 4, '11ca32e', 0, 532),
(2013, 7, 11, 5, '11ca32e', 0, 3600),
(2013, 7, 11, 6, '11ca32e', 0, 274),
(2013, 7, 12, 4, '11ca32e', 0, 513),
(2013, 7, 12, 5, '11ca32e', 0, 3600),
(2013, 7, 12, 6, '11ca32e', 0, 2859),
(2013, 7, 12, 7, '11ca32e', 0, 3066),
(2013, 7, 12, 8, '11ca32e', 0, 2501),
(2013, 7, 12, 9, '11ca32e', 0, 2728),
(2013, 7, 12, 10, '11ca32e', 0, 3600),
(2013, 7, 12, 11, '11ca32e', 0, 3600),
(2013, 7, 12, 12, '11ca32e', 0, 3600),
(2013, 7, 12, 13, '11ca32e', 0, 3600),
(2013, 7, 12, 14, '11ca32e', 0, 3600),
(2013, 7, 12, 15, '11ca32e', 0, 1738),
(2013, 7, 12, 4, 'everyoneintern', 0, 513),
(2013, 7, 12, 5, 'everyoneintern', 0, 3600),
(2013, 7, 12, 6, 'everyoneintern', 0, 2859),
(2013, 7, 12, 7, 'everyoneintern', 0, 3066),
(2013, 7, 12, 8, 'everyoneintern', 0, 2501),
(2013, 7, 12, 9, 'everyoneintern', 0, 2728),
(2013, 7, 12, 10, 'everyoneintern', 0, 3600),
(2013, 7, 12, 11, 'everyoneintern', 0, 3600),
(2013, 7, 12, 12, 'everyoneintern', 0, 3600),
(2013, 7, 12, 13, 'everyoneintern', 0, 3600),
(2013, 7, 12, 14, 'everyoneintern', 0, 3600),
(2013, 7, 12, 15, 'everyoneintern', 0, 1738),
(2013, 7, 15, 4, '11ca32e', 0, 952),
(2013, 7, 15, 5, '11ca32e', 0, 3600),
(2013, 7, 15, 6, '11ca32e', 0, 3600),
(2013, 7, 15, 7, '11ca32e', 0, 1919),
(2013, 7, 15, 8, '11ca32e', 0, 1069),
(2013, 7, 15, 9, '11ca32e', 0, 2716),
(2013, 7, 15, 10, '11ca32e', 0, 3600),
(2013, 7, 15, 11, '11ca32e', 0, 1348),
(2013, 7, 15, 4, 'everyoneintern', 0, 952),
(2013, 7, 15, 5, 'everyoneintern', 0, 3600),
(2013, 7, 15, 6, 'everyoneintern', 0, 3600),
(2013, 7, 15, 7, 'everyoneintern', 0, 1919),
(2013, 7, 15, 8, 'everyoneintern', 0, 1069),
(2013, 7, 15, 9, 'everyoneintern', 0, 2716),
(2013, 7, 15, 10, 'everyoneintern', 0, 3600),
(2013, 7, 15, 11, 'everyoneintern', 0, 1348),
(2013, 7, 16, 4, '11ca32e', 0, 964),
(2013, 7, 16, 5, '11ca32e', 0, 3600),
(2013, 7, 16, 6, '11ca32e', 0, 3600),
(2013, 7, 16, 7, '11ca32e', 0, 3600),
(2013, 7, 16, 8, '11ca32e', 0, 2354),
(2013, 7, 16, 9, '11ca32e', 0, 2037),
(2013, 7, 16, 10, '11ca32e', 0, 3600),
(2013, 7, 16, 11, '11ca32e', 0, 3600),
(2013, 7, 16, 12, '11ca32e', 0, 3600),
(2013, 7, 16, 13, '11ca32e', 0, 2701),
(2013, 7, 16, 4, 'everyoneintern', 0, 964),
(2013, 7, 16, 5, 'everyoneintern', 0, 3600),
(2013, 7, 16, 6, 'everyoneintern', 0, 3600),
(2013, 7, 16, 7, 'everyoneintern', 0, 3600),
(2013, 7, 16, 8, 'everyoneintern', 0, 2354),
(2013, 7, 16, 9, 'everyoneintern', 0, 2037),
(2013, 7, 16, 10, 'everyoneintern', 0, 3600),
(2013, 7, 16, 11, 'everyoneintern', 0, 3600),
(2013, 7, 16, 12, 'everyoneintern', 0, 3600),
(2013, 7, 16, 13, 'everyoneintern', 0, 2701),
(2013, 7, 17, 9, '11ca32e', 0, 1986),
(2013, 7, 17, 10, '11ca32e', 0, 2186),
(2013, 7, 17, 11, '11ca32e', 0, 2342),
(2013, 7, 17, 12, '11ca32e', 0, 1385),
(2013, 7, 17, 13, '11ca32e', 0, 2501),
(2013, 7, 17, 14, '11ca32e', 0, 3600),
(2013, 7, 17, 15, '11ca32e', 0, 89),
(2013, 7, 17, 9, 'everyoneintern', 0, 1986),
(2013, 7, 17, 10, 'everyoneintern', 0, 2186),
(2013, 7, 17, 11, 'everyoneintern', 0, 2342),
(2013, 7, 17, 12, 'everyoneintern', 0, 1385),
(2013, 7, 17, 13, 'everyoneintern', 0, 2501),
(2013, 7, 17, 14, 'everyoneintern', 0, 3600),
(2013, 7, 17, 15, 'everyoneintern', 0, 89),
(2013, 7, 18, 4, '11ca32e', 0, 319),
(2013, 7, 18, 5, '11ca32e', 0, 3600),
(2013, 7, 18, 6, '11ca32e', 0, 3600),
(2013, 7, 18, 7, '11ca32e', 0, 1271),
(2013, 7, 18, 8, '11ca32e', 0, 1994),
(2013, 7, 18, 9, '11ca32e', 0, 1866),
(2013, 7, 18, 10, '11ca32e', 0, 3600),
(2013, 7, 18, 11, '11ca32e', 0, 3600),
(2013, 7, 18, 12, '11ca32e', 0, 3600),
(2013, 7, 18, 13, '11ca32e', 0, 3600),
(2013, 7, 18, 14, '11ca32e', 0, 1948),
(2013, 7, 18, 15, '11ca32e', 0, 3509),
(2013, 7, 18, 4, 'everyoneintern', 0, 319),
(2013, 7, 18, 5, 'everyoneintern', 0, 3600),
(2013, 7, 18, 6, 'everyoneintern', 0, 3600),
(2013, 7, 18, 7, 'everyoneintern', 0, 1271),
(2013, 7, 18, 8, 'everyoneintern', 0, 1994),
(2013, 7, 18, 9, 'everyoneintern', 0, 1866),
(2013, 7, 18, 10, 'everyoneintern', 0, 3600),
(2013, 7, 18, 11, 'everyoneintern', 0, 3600),
(2013, 7, 18, 12, 'everyoneintern', 0, 3600),
(2013, 7, 18, 13, 'everyoneintern', 0, 3600),
(2013, 7, 18, 14, 'everyoneintern', 0, 1948),
(2013, 7, 18, 15, 'everyoneintern', 0, 3509),
(2013, 7, 19, 4, '11ca32e', 0, 1273),
(2013, 7, 19, 5, '11ca32e', 0, 3600),
(2013, 7, 19, 6, '11ca32e', 0, 3600),
(2013, 7, 19, 7, '11ca32e', 0, 3176),
(2013, 7, 19, 8, '11ca32e', 0, 2612),
(2013, 7, 19, 9, '11ca32e', 0, 2695),
(2013, 7, 19, 10, '11ca32e', 0, 3600),
(2013, 7, 19, 11, '11ca32e', 0, 3600),
(2013, 7, 19, 12, '11ca32e', 0, 2984),
(2013, 7, 19, 13, '11ca32e', 0, 3488),
(2013, 7, 19, 14, '11ca32e', 0, 576),
(2013, 7, 19, 4, 'everyoneintern', 0, 1273),
(2013, 7, 19, 5, 'everyoneintern', 0, 3600),
(2013, 7, 19, 6, 'everyoneintern', 0, 3600),
(2013, 7, 19, 7, 'everyoneintern', 0, 3176),
(2013, 7, 19, 8, 'everyoneintern', 0, 2612),
(2013, 7, 19, 9, 'everyoneintern', 0, 2695),
(2013, 7, 19, 10, 'everyoneintern', 0, 3600),
(2013, 7, 19, 11, 'everyoneintern', 0, 3600),
(2013, 7, 19, 12, 'everyoneintern', 0, 2984),
(2013, 7, 19, 13, 'everyoneintern', 0, 3488),
(2013, 7, 19, 14, 'everyoneintern', 0, 576),
(2013, 7, 22, 4, '11ca32e', 0, 767),
(2013, 7, 22, 5, '11ca32e', 0, 3600),
(2013, 7, 22, 6, '11ca32e', 0, 3600),
(2013, 7, 22, 7, '11ca32e', 0, 3600),
(2013, 7, 22, 8, '11ca32e', 0, 2639),
(2013, 7, 22, 9, '11ca32e', 0, 3060),
(2013, 7, 22, 10, '11ca32e', 0, 3600),
(2013, 7, 22, 11, '11ca32e', 0, 3600),
(2013, 7, 22, 12, '11ca32e', 0, 3600),
(2013, 7, 22, 13, '11ca32e', 0, 3354),
(2013, 7, 22, 14, '11ca32e', 0, 3320),
(2013, 7, 22, 4, 'everyoneintern', 0, 767),
(2013, 7, 22, 5, 'everyoneintern', 0, 3600),
(2013, 7, 22, 6, 'everyoneintern', 0, 3600),
(2013, 7, 22, 7, 'everyoneintern', 0, 3600),
(2013, 7, 22, 8, 'everyoneintern', 0, 2639),
(2013, 7, 22, 9, 'everyoneintern', 0, 3060),
(2013, 7, 22, 10, 'everyoneintern', 0, 3600),
(2013, 7, 22, 11, 'everyoneintern', 0, 3600),
(2013, 7, 22, 12, 'everyoneintern', 0, 3600),
(2013, 7, 22, 13, 'everyoneintern', 0, 3354),
(2013, 7, 22, 14, 'everyoneintern', 0, 3320),
(2013, 7, 23, 4, '11ca32e', 0, 714),
(2013, 7, 23, 5, '11ca32e', 0, 3600),
(2013, 7, 23, 6, '11ca32e', 0, 3600),
(2013, 7, 23, 7, '11ca32e', 0, 3600),
(2013, 7, 23, 8, '11ca32e', 0, 3359),
(2013, 7, 23, 9, '11ca32e', 0, 3600),
(2013, 7, 23, 10, '11ca32e', 0, 3600),
(2013, 7, 23, 11, '11ca32e', 0, 3600),
(2013, 7, 23, 12, '11ca32e', 0, 3600),
(2013, 7, 23, 13, '11ca32e', 0, 3600),
(2013, 7, 23, 14, '11ca32e', 0, 3600),
(2013, 7, 23, 15, '11ca32e', 0, 3600),
(2013, 7, 23, 16, '11ca32e', 0, 29),
(2013, 7, 23, 4, 'everyoneintern', 0, 714),
(2013, 7, 23, 5, 'everyoneintern', 0, 3600),
(2013, 7, 23, 6, 'everyoneintern', 0, 3600),
(2013, 7, 23, 7, 'everyoneintern', 0, 3600),
(2013, 7, 23, 8, 'everyoneintern', 0, 3359),
(2013, 7, 23, 9, 'everyoneintern', 0, 3600),
(2013, 7, 23, 10, 'everyoneintern', 0, 3600),
(2013, 7, 23, 11, 'everyoneintern', 0, 3600),
(2013, 7, 23, 12, 'everyoneintern', 0, 3600),
(2013, 7, 23, 13, 'everyoneintern', 0, 3600),
(2013, 7, 23, 14, 'everyoneintern', 0, 3600),
(2013, 7, 23, 15, 'everyoneintern', 0, 3600),
(2013, 7, 23, 16, 'everyoneintern', 0, 29),
(2013, 7, 24, 3, '11ca32e', 0, 2489),
(2013, 7, 24, 4, '11ca32e', 0, 3600),
(2013, 7, 24, 5, '11ca32e', 0, 3600),
(2013, 7, 24, 6, '11ca32e', 0, 3600),
(2013, 7, 24, 7, '11ca32e', 0, 3600),
(2013, 7, 24, 8, '11ca32e', 0, 3201),
(2013, 7, 24, 9, '11ca32e', 0, 3600),
(2013, 7, 24, 10, '11ca32e', 0, 3600),
(2013, 7, 24, 11, '11ca32e', 0, 3600),
(2013, 7, 24, 12, '11ca32e', 0, 3600),
(2013, 7, 24, 13, '11ca32e', 0, 3600),
(2013, 7, 24, 14, '11ca32e', 0, 3600),
(2013, 7, 24, 15, '11ca32e', 0, 3600),
(2013, 7, 24, 16, '11ca32e', 0, 2395),
(2013, 7, 24, 3, 'everyoneintern', 0, 2489),
(2013, 7, 24, 4, 'everyoneintern', 0, 3600),
(2013, 7, 24, 5, 'everyoneintern', 0, 3600),
(2013, 7, 24, 6, 'everyoneintern', 0, 3600),
(2013, 7, 24, 7, 'everyoneintern', 0, 3600),
(2013, 7, 24, 8, 'everyoneintern', 0, 3201),
(2013, 7, 24, 9, 'everyoneintern', 0, 3600),
(2013, 7, 24, 10, 'everyoneintern', 0, 3600),
(2013, 7, 24, 11, 'everyoneintern', 0, 3600),
(2013, 7, 24, 12, 'everyoneintern', 0, 3600),
(2013, 7, 24, 13, 'everyoneintern', 0, 3600),
(2013, 7, 24, 14, 'everyoneintern', 0, 3600),
(2013, 7, 24, 15, 'everyoneintern', 0, 3600),
(2013, 7, 24, 16, 'everyoneintern', 0, 2395),
(2013, 7, 25, 5, '11ca32e', 0, 3271),
(2013, 7, 25, 6, '11ca32e', 0, 3346),
(2013, 7, 25, 7, '11ca32e', 0, 3547),
(2013, 7, 25, 8, '11ca32e', 0, 2683),
(2013, 7, 25, 9, '11ca32e', 0, 2796),
(2013, 7, 25, 10, '11ca32e', 0, 3600),
(2013, 7, 25, 11, '11ca32e', 0, 3600),
(2013, 7, 25, 12, '11ca32e', 0, 3600),
(2013, 7, 25, 13, '11ca32e', 0, 3600),
(2013, 7, 25, 14, '11ca32e', 0, 3600),
(2013, 7, 25, 15, '11ca32e', 0, 3600),
(2013, 7, 25, 16, '11ca32e', 0, 244),
(2013, 7, 25, 5, 'everyoneintern', 0, 3271),
(2013, 7, 25, 6, 'everyoneintern', 0, 3346),
(2013, 7, 25, 7, 'everyoneintern', 0, 3547),
(2013, 7, 25, 8, 'everyoneintern', 0, 2683),
(2013, 7, 25, 9, 'everyoneintern', 0, 2796),
(2013, 7, 25, 10, 'everyoneintern', 0, 3600),
(2013, 7, 25, 11, 'everyoneintern', 0, 3600),
(2013, 7, 25, 12, 'everyoneintern', 0, 3600),
(2013, 7, 25, 13, 'everyoneintern', 0, 3600),
(2013, 7, 25, 14, 'everyoneintern', 0, 3600),
(2013, 7, 25, 15, 'everyoneintern', 0, 3600),
(2013, 7, 25, 16, 'everyoneintern', 0, 244),
(2013, 7, 26, 4, '11ca32e', 0, 9),
(2013, 7, 26, 5, '11ca32e', 0, 3600),
(2013, 7, 26, 6, '11ca32e', 0, 3600),
(2013, 7, 26, 7, '11ca32e', 0, 3600),
(2013, 7, 26, 8, '11ca32e', 0, 2847),
(2013, 7, 26, 9, '11ca32e', 0, 2496),
(2013, 7, 26, 10, '11ca32e', 0, 3600),
(2013, 7, 26, 11, '11ca32e', 0, 3600),
(2013, 7, 26, 12, '11ca32e', 0, 3600),
(2013, 7, 26, 13, '11ca32e', 0, 3080),
(2013, 7, 26, 14, '11ca32e', 0, 374),
(2013, 7, 26, 4, 'everyoneintern', 0, 9),
(2013, 7, 26, 5, 'everyoneintern', 0, 3600),
(2013, 7, 26, 6, 'everyoneintern', 0, 3600),
(2013, 7, 26, 7, 'everyoneintern', 0, 3600),
(2013, 7, 26, 8, 'everyoneintern', 0, 2847),
(2013, 7, 26, 9, 'everyoneintern', 0, 2496),
(2013, 7, 26, 10, 'everyoneintern', 0, 3600),
(2013, 7, 26, 11, 'everyoneintern', 0, 3600),
(2013, 7, 26, 12, 'everyoneintern', 0, 3600),
(2013, 7, 26, 13, 'everyoneintern', 0, 3080),
(2013, 7, 26, 14, 'everyoneintern', 0, 374),
(2013, 7, 29, 4, '11ca32e', 0, 243),
(2013, 7, 29, 5, '11ca32e', 0, 3600),
(2013, 7, 29, 6, '11ca32e', 0, 3340),
(2013, 7, 29, 7, '11ca32e', 0, 3600),
(2013, 7, 29, 8, '11ca32e', 0, 2772),
(2013, 7, 29, 9, '11ca32e', 0, 2685),
(2013, 7, 29, 10, '11ca32e', 0, 3245),
(2013, 7, 29, 11, '11ca32e', 0, 3600),
(2013, 7, 29, 12, '11ca32e', 0, 3600),
(2013, 7, 29, 13, '11ca32e', 0, 3600),
(2013, 7, 29, 14, '11ca32e', 0, 1480),
(2013, 7, 29, 4, 'everyoneintern', 0, 242),
(2013, 7, 29, 5, 'everyoneintern', 0, 3600),
(2013, 7, 29, 6, 'everyoneintern', 0, 3340),
(2013, 7, 29, 7, 'everyoneintern', 0, 3600),
(2013, 7, 29, 8, 'everyoneintern', 0, 2772),
(2013, 7, 29, 9, 'everyoneintern', 0, 2685),
(2013, 7, 29, 10, 'everyoneintern', 0, 3245),
(2013, 7, 29, 11, 'everyoneintern', 0, 3600),
(2013, 7, 29, 12, 'everyoneintern', 0, 3600),
(2013, 7, 29, 13, 'everyoneintern', 0, 3600),
(2013, 7, 29, 14, 'everyoneintern', 0, 1480),
(2013, 7, 30, 4, '11ca32e', 0, 272),
(2013, 7, 30, 5, '11ca32e', 0, 3600),
(2013, 7, 30, 6, '11ca32e', 0, 3600),
(2013, 7, 30, 7, '11ca32e', 0, 3600),
(2013, 7, 30, 8, '11ca32e', 0, 2524),
(2013, 7, 30, 9, '11ca32e', 0, 2766),
(2013, 7, 30, 10, '11ca32e', 0, 3600),
(2013, 7, 30, 11, '11ca32e', 0, 3600),
(2013, 7, 30, 12, '11ca32e', 0, 3600),
(2013, 7, 30, 13, '11ca32e', 0, 3600),
(2013, 7, 30, 14, '11ca32e', 0, 3600),
(2013, 7, 30, 15, '11ca32e', 0, 1968),
(2013, 7, 30, 4, 'everyoneintern', 0, 272),
(2013, 7, 30, 5, 'everyoneintern', 0, 3600),
(2013, 7, 30, 6, 'everyoneintern', 0, 3600),
(2013, 7, 30, 7, 'everyoneintern', 0, 3600),
(2013, 7, 30, 8, 'everyoneintern', 0, 2524),
(2013, 7, 30, 9, 'everyoneintern', 0, 2766),
(2013, 7, 30, 10, 'everyoneintern', 0, 3600),
(2013, 7, 30, 11, 'everyoneintern', 0, 3600),
(2013, 7, 30, 12, 'everyoneintern', 0, 3600),
(2013, 7, 30, 13, 'everyoneintern', 0, 3600),
(2013, 7, 30, 14, 'everyoneintern', 0, 3600),
(2013, 7, 30, 15, 'everyoneintern', 0, 1968),
(2013, 7, 31, 4, '11ca32e', 0, 629),
(2013, 7, 31, 5, '11ca32e', 0, 3600),
(2013, 7, 31, 6, '11ca32e', 0, 3600),
(2013, 7, 31, 7, '11ca32e', 0, 3600),
(2013, 7, 31, 8, '11ca32e', 0, 3600),
(2013, 7, 31, 9, '11ca32e', 0, 3261),
(2013, 7, 31, 10, '11ca32e', 0, 3600),
(2013, 7, 31, 11, '11ca32e', 0, 3600),
(2013, 7, 31, 12, '11ca32e', 0, 3600),
(2013, 7, 31, 13, '11ca32e', 0, 3600),
(2013, 7, 31, 14, '11ca32e', 0, 3363),
(2013, 7, 31, 15, '11ca32e', 0, 3600),
(2013, 7, 31, 16, '11ca32e', 0, 1211),
(2013, 7, 31, 4, 'everyoneintern', 0, 629),
(2013, 7, 31, 5, 'everyoneintern', 0, 3600),
(2013, 7, 31, 6, 'everyoneintern', 0, 3600),
(2013, 7, 31, 7, 'everyoneintern', 0, 3600),
(2013, 7, 31, 8, 'everyoneintern', 0, 3600),
(2013, 7, 31, 9, 'everyoneintern', 0, 3261),
(2013, 7, 31, 10, 'everyoneintern', 0, 3600),
(2013, 7, 31, 11, 'everyoneintern', 0, 3600),
(2013, 7, 31, 12, 'everyoneintern', 0, 3600),
(2013, 7, 31, 13, 'everyoneintern', 0, 3600),
(2013, 7, 31, 14, 'everyoneintern', 0, 3363),
(2013, 7, 31, 15, 'everyoneintern', 0, 3600),
(2013, 7, 31, 16, 'everyoneintern', 0, 1211),
(2013, 8, 1, 4, '11ca32e', 0, 235),
(2013, 8, 1, 5, '11ca32e', 0, 3600),
(2013, 8, 1, 6, '11ca32e', 0, 3600),
(2013, 8, 1, 7, '11ca32e', 0, 3600),
(2013, 8, 1, 8, '11ca32e', 0, 2496),
(2013, 8, 1, 9, '11ca32e', 0, 1717),
(2013, 8, 1, 10, '11ca32e', 0, 3434),
(2013, 8, 1, 11, '11ca32e', 0, 3600),
(2013, 8, 1, 12, '11ca32e', 0, 3142),
(2013, 8, 1, 13, '11ca32e', 0, 1884),
(2013, 8, 1, 4, 'everyoneintern', 0, 235),
(2013, 8, 1, 5, 'everyoneintern', 0, 3600),
(2013, 8, 1, 6, 'everyoneintern', 0, 3600),
(2013, 8, 1, 7, 'everyoneintern', 0, 3600),
(2013, 8, 1, 8, 'everyoneintern', 0, 2496),
(2013, 8, 1, 9, 'everyoneintern', 0, 1717),
(2013, 8, 1, 10, 'everyoneintern', 0, 3434),
(2013, 8, 1, 11, 'everyoneintern', 0, 3600),
(2013, 8, 1, 12, 'everyoneintern', 0, 3142),
(2013, 8, 1, 13, 'everyoneintern', 0, 1884),
(2013, 8, 2, 4, '11ca32e', 0, 325),
(2013, 8, 2, 5, '11ca32e', 0, 3600),
(2013, 8, 2, 6, '11ca32e', 0, 3600),
(2013, 8, 2, 7, '11ca32e', 0, 3600),
(2013, 8, 2, 8, '11ca32e', 0, 2532),
(2013, 8, 2, 9, '11ca32e', 0, 2589),
(2013, 8, 2, 10, '11ca32e', 0, 3228),
(2013, 8, 2, 11, '11ca32e', 0, 3600),
(2013, 8, 2, 12, '11ca32e', 0, 3600),
(2013, 8, 2, 13, '11ca32e', 0, 2141),
(2013, 8, 2, 4, 'everyoneintern', 0, 325),
(2013, 8, 2, 5, 'everyoneintern', 0, 3600),
(2013, 8, 2, 6, 'everyoneintern', 0, 3600),
(2013, 8, 2, 7, 'everyoneintern', 0, 3600),
(2013, 8, 2, 8, 'everyoneintern', 0, 2532),
(2013, 8, 2, 9, 'everyoneintern', 0, 2589),
(2013, 8, 2, 10, 'everyoneintern', 0, 3228),
(2013, 8, 2, 11, 'everyoneintern', 0, 3600),
(2013, 8, 2, 12, 'everyoneintern', 0, 3600),
(2013, 8, 2, 13, 'everyoneintern', 0, 2141),
(2013, 8, 5, 5, '11ca32e', 0, 527),
(2013, 8, 5, 6, '11ca32e', 0, 3600),
(2013, 8, 5, 7, '11ca32e', 0, 3600),
(2013, 8, 5, 8, '11ca32e', 0, 2588),
(2013, 8, 5, 9, '11ca32e', 0, 3081),
(2013, 8, 5, 10, '11ca32e', 0, 3600),
(2013, 8, 5, 11, '11ca32e', 0, 3600),
(2013, 8, 5, 12, '11ca32e', 0, 3600),
(2013, 8, 5, 13, '11ca32e', 0, 2449),
(2013, 8, 5, 5, 'everyoneintern', 0, 527),
(2013, 8, 5, 6, 'everyoneintern', 0, 3600),
(2013, 8, 5, 7, 'everyoneintern', 0, 3600),
(2013, 8, 5, 8, 'everyoneintern', 0, 2588),
(2013, 8, 5, 9, 'everyoneintern', 0, 3081),
(2013, 8, 5, 10, 'everyoneintern', 0, 3600),
(2013, 8, 5, 11, 'everyoneintern', 0, 3600),
(2013, 8, 5, 12, 'everyoneintern', 0, 3600),
(2013, 8, 5, 13, 'everyoneintern', 0, 2449),
(2013, 8, 6, 4, '11ca32e', 0, 288),
(2013, 8, 6, 5, '11ca32e', 0, 3600),
(2013, 8, 6, 6, '11ca32e', 0, 3600),
(2013, 8, 6, 7, '11ca32e', 0, 3600),
(2013, 8, 6, 8, '11ca32e', 0, 2549),
(2013, 8, 6, 9, '11ca32e', 0, 2381),
(2013, 8, 6, 10, '11ca32e', 0, 3600),
(2013, 8, 6, 11, '11ca32e', 0, 3538),
(2013, 8, 6, 12, '11ca32e', 0, 3600),
(2013, 8, 6, 13, '11ca32e', 0, 2818),
(2013, 8, 6, 4, 'everyoneintern', 0, 288),
(2013, 8, 6, 5, 'everyoneintern', 0, 3600),
(2013, 8, 6, 6, 'everyoneintern', 0, 3600),
(2013, 8, 6, 7, 'everyoneintern', 0, 3600),
(2013, 8, 6, 8, 'everyoneintern', 0, 2549),
(2013, 8, 6, 9, 'everyoneintern', 0, 2381),
(2013, 8, 6, 10, 'everyoneintern', 0, 3600),
(2013, 8, 6, 11, 'everyoneintern', 0, 3538),
(2013, 8, 6, 12, 'everyoneintern', 0, 3600),
(2013, 8, 6, 13, 'everyoneintern', 0, 2818),
(2013, 8, 7, 4, '11ca32e', 0, 618),
(2013, 8, 7, 5, '11ca32e', 0, 3600),
(2013, 8, 7, 6, '11ca32e', 0, 3600),
(2013, 8, 7, 7, '11ca32e', 0, 3600),
(2013, 8, 7, 8, '11ca32e', 0, 2388),
(2013, 8, 7, 9, '11ca32e', 0, 1911),
(2013, 8, 7, 10, '11ca32e', 0, 3600),
(2013, 8, 7, 11, '11ca32e', 0, 3600),
(2013, 8, 7, 12, '11ca32e', 0, 3364),
(2013, 8, 7, 13, '11ca32e', 0, 2375),
(2013, 8, 7, 4, 'everyoneintern', 0, 618),
(2013, 8, 7, 5, 'everyoneintern', 0, 3600),
(2013, 8, 7, 6, 'everyoneintern', 0, 3600),
(2013, 8, 7, 7, 'everyoneintern', 0, 3600),
(2013, 8, 7, 8, 'everyoneintern', 0, 2388),
(2013, 8, 7, 9, 'everyoneintern', 0, 1911),
(2013, 8, 7, 10, 'everyoneintern', 0, 3600),
(2013, 8, 7, 11, 'everyoneintern', 0, 3600),
(2013, 8, 7, 12, 'everyoneintern', 0, 3364),
(2013, 8, 7, 13, 'everyoneintern', 0, 2375),
(2013, 8, 8, 4, '11ca32e', 0, 547),
(2013, 8, 8, 5, '11ca32e', 0, 3600),
(2013, 8, 8, 6, '11ca32e', 0, 3600),
(2013, 8, 8, 7, '11ca32e', 0, 3384),
(2013, 8, 8, 8, '11ca32e', 0, 2839),
(2013, 8, 8, 4, 'everyoneintern', 0, 547),
(2013, 8, 8, 5, 'everyoneintern', 0, 3600),
(2013, 8, 8, 6, 'everyoneintern', 0, 3600),
(2013, 8, 8, 7, 'everyoneintern', 0, 3384),
(2013, 8, 8, 8, 'everyoneintern', 0, 2839),
(2013, 8, 12, 4, '11ca32e', 0, 131),
(2013, 8, 12, 5, '11ca32e', 0, 3600),
(2013, 8, 12, 6, '11ca32e', 0, 3600),
(2013, 8, 12, 7, '11ca32e', 0, 3600),
(2013, 8, 12, 8, '11ca32e', 0, 2552),
(2013, 8, 12, 9, '11ca32e', 0, 1140),
(2013, 8, 12, 10, '11ca32e', 0, 3032),
(2013, 8, 12, 4, 'everyoneintern', 0, 131),
(2013, 8, 12, 5, 'everyoneintern', 0, 3600),
(2013, 8, 12, 6, 'everyoneintern', 0, 3600),
(2013, 8, 12, 7, 'everyoneintern', 0, 3600),
(2013, 8, 12, 8, 'everyoneintern', 0, 2552),
(2013, 8, 12, 9, 'everyoneintern', 0, 1140),
(2013, 8, 12, 10, 'everyoneintern', 0, 3032);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_stats_aggs_browsers`
--

CREATE TABLE IF NOT EXISTS `livezilla_stats_aggs_browsers` (
  `year` smallint(5) unsigned NOT NULL DEFAULT '0',
  `month` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `day` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `browser` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`year`,`month`,`day`,`browser`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_stats_aggs_browsers`
--

INSERT INTO `livezilla_stats_aggs_browsers` (`year`, `month`, `day`, `browser`, `amount`) VALUES
(2013, 6, 13, 1, 2),
(2013, 6, 13, 2, 2),
(2013, 6, 0, 7, 1),
(2013, 6, 0, 10, 2),
(2013, 0, 0, 2, 63),
(2013, 0, 0, 3, 1),
(2013, 6, 14, 2, 5),
(2013, 6, 14, 1, 2),
(2013, 6, 14, 3, 1),
(2013, 6, 0, 1, 49),
(2013, 0, 0, 7, 1),
(2013, 6, 17, 2, 7),
(2013, 6, 17, 1, 3),
(2013, 6, 17, 4, 1),
(2013, 6, 18, 2, 2),
(2013, 6, 0, 2, 76),
(2013, 0, 0, 8, 1),
(2013, 6, 18, 1, 4),
(2013, 6, 19, 4, 1),
(2013, 6, 19, 5, 1),
(2013, 6, 19, 1, 8),
(2013, 6, 19, 2, 9),
(2013, 6, 0, 8, 1),
(2013, 0, 0, 1, 40),
(2013, 6, 20, 6, 1),
(2013, 6, 20, 7, 1),
(2013, 6, 20, 4, 2),
(2013, 6, 20, 1, 4),
(2013, 6, 20, 2, 10),
(2013, 6, 0, 9, 3),
(2013, 6, 0, 11, 6),
(2013, 0, 0, 4, 7),
(2013, 0, 0, 5, 1),
(2013, 6, 21, 2, 8),
(2013, 6, 21, 1, 5),
(2013, 6, 21, 4, 2),
(2013, 6, 23, 2, 3),
(2013, 6, 23, 1, 1),
(2013, 6, 24, 1, 5),
(2013, 6, 24, 2, 3),
(2013, 6, 24, 4, 1),
(2013, 6, 24, 8, 1),
(2013, 6, 25, 2, 13),
(2013, 6, 25, 1, 5),
(2013, 6, 0, 4, 7),
(2013, 0, 0, 6, 1),
(2013, 6, 26, 1, 4),
(2013, 6, 26, 2, 3),
(2013, 6, 26, 11, 2),
(2013, 6, 26, 9, 2),
(2013, 6, 26, 10, 1),
(2013, 6, 27, 2, 7),
(2013, 6, 27, 1, 4),
(2013, 6, 27, 11, 2),
(2013, 6, 27, 10, 1),
(2013, 6, 28, 2, 4),
(2013, 6, 28, 1, 2),
(2013, 6, 28, 11, 2),
(2013, 6, 28, 9, 1),
(2013, 6, 28, 12, 1),
(2013, 6, 0, 3, 1),
(2013, 6, 0, 12, 1),
(2013, 6, 0, 5, 1),
(2013, 6, 0, 6, 1),
(2013, 7, 1, 2, 5),
(2013, 7, 1, 1, 2),
(2013, 7, 1, 10, 1),
(2013, 7, 2, 2, 7),
(2013, 7, 2, 1, 2),
(2013, 7, 2, 13, 1),
(2013, 7, 3, 1, 1),
(2013, 7, 3, 2, 1),
(2013, 7, 4, 2, 7),
(2013, 7, 4, 11, 4),
(2013, 7, 4, 9, 1),
(2013, 7, 4, 10, 1),
(2013, 7, 4, 13, 1),
(2013, 7, 5, 2, 2),
(2013, 7, 5, 1, 1),
(2013, 7, 8, 2, 4),
(2013, 7, 8, 11, 1),
(2013, 7, 8, 13, 1),
(2013, 7, 9, 2, 2),
(2013, 7, 9, 11, 2),
(2013, 7, 9, 1, 1),
(2013, 7, 10, 2, 5),
(2013, 7, 10, 11, 2),
(2013, 7, 11, 11, 7),
(2013, 7, 11, 2, 5),
(2013, 7, 11, 3, 3),
(2013, 7, 11, 14, 2),
(2013, 7, 11, 15, 1),
(2013, 7, 12, 2, 5),
(2013, 7, 12, 11, 1),
(2013, 7, 12, 16, 1),
(2013, 7, 15, 16, 3),
(2013, 7, 15, 11, 3),
(2013, 7, 16, 11, 3),
(2013, 7, 17, 11, 4),
(2013, 7, 17, 16, 3),
(2013, 7, 18, 11, 3),
(2013, 7, 18, 16, 3),
(2013, 7, 18, 1, 1),
(2013, 7, 19, 16, 5),
(2013, 7, 19, 11, 4),
(2013, 7, 19, 1, 3),
(2013, 7, 19, 3, 1),
(2013, 7, 19, 17, 1),
(2013, 7, 22, 16, 3),
(2013, 7, 22, 11, 1),
(2013, 7, 23, 16, 7),
(2013, 7, 23, 11, 4),
(2013, 7, 23, 18, 1),
(2013, 7, 23, 7, 1),
(2013, 7, 24, 16, 10),
(2013, 7, 24, 11, 6),
(2013, 7, 24, 19, 2),
(2013, 7, 24, 1, 1),
(2013, 7, 25, 16, 7),
(2013, 7, 26, 16, 1),
(2013, 7, 29, 11, 1),
(2013, 7, 31, 16, 1),
(2013, 7, 0, 11, 46),
(2013, 7, 0, 16, 44),
(2013, 7, 0, 2, 43),
(2013, 7, 0, 1, 12),
(2013, 7, 0, 3, 4),
(2013, 7, 0, 13, 3),
(2013, 7, 0, 19, 2),
(2013, 7, 0, 14, 2),
(2013, 7, 0, 10, 2),
(2013, 7, 0, 15, 1),
(2013, 7, 0, 17, 1),
(2013, 7, 0, 7, 1),
(2013, 7, 0, 9, 1),
(2013, 7, 0, 18, 1),
(2013, 8, 1, 16, 6),
(2013, 8, 1, 19, 1),
(2013, 8, 1, 7, 1),
(2013, 8, 2, 16, 3),
(2013, 8, 2, 7, 1),
(2013, 8, 5, 11, 2),
(2013, 8, 7, 11, 2),
(2013, 8, 13, 16, 1),
(2013, 8, 20, 16, 2),
(2013, 8, 20, 18, 1),
(2013, 8, 21, 16, 2),
(2013, 8, 21, 13, 1),
(2013, 8, 22, 16, 2),
(2013, 8, 22, 20, 2),
(2013, 8, 23, 20, 2),
(2013, 8, 26, 20, 1);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_stats_aggs_chats`
--

CREATE TABLE IF NOT EXISTS `livezilla_stats_aggs_chats` (
  `year` smallint(5) unsigned NOT NULL DEFAULT '0',
  `month` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `day` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hour` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `user_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  `accepted` int(10) unsigned NOT NULL DEFAULT '0',
  `declined` int(10) unsigned NOT NULL DEFAULT '0',
  `avg_duration` double unsigned NOT NULL DEFAULT '0',
  `avg_waiting_time` double unsigned NOT NULL DEFAULT '0',
  `avg_response_time` double unsigned NOT NULL DEFAULT '0',
  `chat_posts` int(10) unsigned NOT NULL DEFAULT '0',
  `multi` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`year`,`month`,`day`,`user_id`,`hour`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_stats_aggs_chats`
--

INSERT INTO `livezilla_stats_aggs_chats` (`year`, `month`, `day`, `hour`, `user_id`, `amount`, `accepted`, `declined`, `avg_duration`, `avg_waiting_time`, `avg_response_time`, `chat_posts`, `multi`) VALUES
(2013, 6, 13, 14, '11ca32e', 2, 2, 0, 69.5, 22, 21, 2, 0),
(2013, 6, 14, 7, '11ca32e', 1, 1, 0, 37, 59, 7, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_stats_aggs_cities`
--

CREATE TABLE IF NOT EXISTS `livezilla_stats_aggs_cities` (
  `year` smallint(5) unsigned NOT NULL DEFAULT '0',
  `month` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `day` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `city` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`year`,`month`,`day`,`city`),
  KEY `city` (`city`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_stats_aggs_cities`
--

INSERT INTO `livezilla_stats_aggs_cities` (`year`, `month`, `day`, `city`, `amount`) VALUES
(2013, 6, 13, 1, 4),
(2013, 6, 0, 2, 32),
(2013, 0, 0, 6, 1),
(2013, 6, 14, 1, 4),
(2013, 6, 0, 4, 21),
(2013, 0, 0, 5, 16),
(2013, 6, 14, 2, 2),
(2013, 6, 14, 3, 1),
(2013, 6, 14, 4, 1),
(2013, 6, 0, 8, 8),
(2013, 6, 0, 7, 15),
(2013, 0, 0, 2, 25),
(2013, 0, 0, 3, 1),
(2013, 6, 17, 1, 8),
(2013, 6, 17, 4, 2),
(2013, 6, 17, 2, 1),
(2013, 6, 18, 2, 2),
(2013, 6, 18, 4, 3),
(2013, 6, 18, 1, 1),
(2013, 6, 19, 1, 3),
(2013, 6, 19, 4, 4),
(2013, 6, 19, 5, 2),
(2013, 6, 19, 2, 9),
(2013, 6, 0, 5, 21),
(2013, 0, 0, 4, 16),
(2013, 6, 19, 6, 1),
(2013, 6, 20, 4, 1),
(2013, 6, 0, 3, 1),
(2013, 0, 0, 1, 42),
(2013, 6, 20, 5, 4),
(2013, 6, 20, 1, 8),
(2013, 6, 20, 2, 2),
(2013, 6, 20, 7, 3),
(2013, 6, 0, 1, 50),
(2013, 0, 0, 7, 14),
(2013, 6, 21, 2, 2),
(2013, 6, 21, 5, 6),
(2013, 6, 21, 4, 3),
(2013, 6, 21, 1, 4),
(2013, 6, 23, 1, 3),
(2013, 6, 23, 7, 1),
(2013, 6, 24, 7, 4),
(2013, 6, 24, 1, 2),
(2013, 6, 24, 5, 2),
(2013, 6, 24, 2, 1),
(2013, 6, 24, 4, 1),
(2013, 6, 25, 7, 6),
(2013, 6, 25, 2, 5),
(2013, 6, 25, 1, 4),
(2013, 6, 25, 5, 2),
(2013, 6, 25, 4, 1),
(2013, 6, 26, 2, 6),
(2013, 6, 26, 5, 3),
(2013, 6, 26, 4, 2),
(2013, 6, 26, 1, 1),
(2013, 6, 27, 8, 5),
(2013, 6, 27, 1, 3),
(2013, 6, 27, 2, 2),
(2013, 6, 27, 4, 2),
(2013, 6, 27, 7, 1),
(2013, 6, 27, 5, 1),
(2013, 6, 28, 1, 5),
(2013, 6, 28, 8, 3),
(2013, 6, 28, 4, 1),
(2013, 6, 28, 5, 1),
(2013, 6, 0, 6, 1),
(2013, 7, 1, 1, 5),
(2013, 7, 1, 8, 2),
(2013, 7, 1, 4, 1),
(2013, 7, 2, 1, 4),
(2013, 7, 2, 7, 2),
(2013, 7, 2, 8, 2),
(2013, 7, 2, 2, 1),
(2013, 7, 2, 4, 1),
(2013, 7, 3, 1, 1),
(2013, 7, 3, 8, 1),
(2013, 7, 4, 1, 7),
(2013, 7, 4, 8, 4),
(2013, 7, 4, 2, 2),
(2013, 7, 4, 5, 1),
(2013, 7, 5, 1, 1),
(2013, 7, 5, 2, 1),
(2013, 7, 5, 4, 1),
(2013, 7, 8, 8, 3),
(2013, 7, 8, 1, 2),
(2013, 7, 8, 2, 1),
(2013, 7, 9, 8, 3),
(2013, 7, 9, 1, 2),
(2013, 7, 10, 2, 3),
(2013, 7, 10, 4, 2),
(2013, 7, 10, 8, 2),
(2013, 7, 11, 8, 14),
(2013, 7, 11, 4, 4),
(2013, 7, 12, 8, 6),
(2013, 7, 12, 4, 1),
(2013, 7, 15, 8, 6),
(2013, 7, 16, 8, 3),
(2013, 7, 17, 8, 5),
(2013, 7, 17, 2, 2),
(2013, 7, 18, 8, 5),
(2013, 7, 18, 2, 2),
(2013, 7, 19, 8, 13),
(2013, 7, 19, 2, 1),
(2013, 7, 22, 8, 4),
(2013, 7, 23, 8, 13),
(2013, 7, 24, 8, 18),
(2013, 7, 24, 7, 1),
(2013, 7, 25, 8, 7),
(2013, 7, 26, 8, 1),
(2013, 7, 29, 8, 1),
(2013, 7, 31, 8, 1),
(2013, 7, 0, 8, 114),
(2013, 7, 0, 1, 22),
(2013, 7, 0, 2, 13),
(2013, 7, 0, 4, 10),
(2013, 7, 0, 7, 3),
(2013, 7, 0, 5, 1),
(2013, 8, 1, 8, 8),
(2013, 8, 2, 8, 4),
(2013, 8, 5, 8, 2),
(2013, 8, 7, 8, 2),
(2013, 8, 13, 8, 1),
(2013, 8, 20, 8, 3),
(2013, 8, 21, 8, 3),
(2013, 8, 22, 8, 4),
(2013, 8, 23, 8, 2),
(2013, 8, 26, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_stats_aggs_countries`
--

CREATE TABLE IF NOT EXISTS `livezilla_stats_aggs_countries` (
  `year` smallint(5) unsigned NOT NULL DEFAULT '0',
  `month` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `day` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `country` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT '',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`year`,`month`,`day`,`country`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_stats_aggs_countries`
--

INSERT INTO `livezilla_stats_aggs_countries` (`year`, `month`, `day`, `country`, `amount`) VALUES
(2013, 6, 13, 'IN', 4),
(2013, 6, 0, 'IN', 102),
(2013, 0, 0, 'US', 6),
(2013, 6, 14, 'IN', 6),
(2013, 6, 0, 'ID', 33),
(2013, 0, 0, 'IN', 83),
(2013, 6, 14, 'ID', 2),
(2013, 6, 17, 'IN', 9),
(2013, 6, 17, 'ID', 1),
(2013, 6, 17, 'US', 1),
(2013, 6, 18, 'IN', 4),
(2013, 6, 0, 'US', 14),
(2013, 0, 0, 'ID', 26),
(2013, 6, 18, 'ID', 2),
(2013, 6, 19, 'US', 1),
(2013, 6, 19, 'IN', 8),
(2013, 6, 19, 'ID', 10),
(2013, 6, 20, 'IN', 16),
(2013, 6, 20, 'ID', 2),
(2013, 6, 21, 'ID', 2),
(2013, 6, 21, 'IN', 12),
(2013, 6, 21, 'US', 1),
(2013, 6, 23, 'IN', 3),
(2013, 6, 23, 'US', 1),
(2013, 6, 24, 'IN', 7),
(2013, 6, 24, 'US', 2),
(2013, 6, 24, 'ID', 1),
(2013, 6, 25, 'IN', 13),
(2013, 6, 25, 'ID', 5),
(2013, 6, 26, 'ID', 6),
(2013, 6, 26, 'IN', 6),
(2013, 6, 27, 'IN', 7),
(2013, 6, 27, 'US', 5),
(2013, 6, 27, 'ID', 2),
(2013, 6, 28, 'IN', 7),
(2013, 6, 28, 'US', 3),
(2013, 7, 1, 'IN', 6),
(2013, 7, 1, 'US', 2),
(2013, 7, 2, 'IN', 5),
(2013, 7, 2, 'US', 4),
(2013, 7, 2, 'ID', 1),
(2013, 7, 3, 'IN', 1),
(2013, 7, 3, 'US', 1),
(2013, 7, 4, 'IN', 8),
(2013, 7, 4, 'US', 4),
(2013, 7, 4, 'ID', 2),
(2013, 7, 5, 'IN', 2),
(2013, 7, 5, 'ID', 1),
(2013, 7, 8, 'US', 4),
(2013, 7, 8, 'ID', 1),
(2013, 7, 8, 'IN', 1),
(2013, 7, 9, 'US', 3),
(2013, 7, 9, 'IN', 2),
(2013, 7, 10, 'ID', 3),
(2013, 7, 10, 'IN', 2),
(2013, 7, 10, 'US', 2),
(2013, 7, 11, 'US', 12),
(2013, 7, 11, 'IN', 4),
(2013, 7, 11, '', 2),
(2013, 7, 12, 'US', 6),
(2013, 7, 12, 'IN', 1),
(2013, 7, 15, 'US', 6),
(2013, 7, 16, 'US', 3),
(2013, 7, 17, 'US', 5),
(2013, 7, 17, 'ID', 2),
(2013, 7, 18, 'US', 5),
(2013, 7, 18, 'ID', 2),
(2013, 7, 19, 'US', 12),
(2013, 7, 19, '', 1),
(2013, 7, 19, 'ID', 1),
(2013, 7, 22, 'US', 4),
(2013, 7, 23, 'US', 11),
(2013, 7, 23, 'GB', 2),
(2013, 7, 24, 'US', 18),
(2013, 7, 24, 'IN', 1),
(2013, 7, 25, 'US', 7),
(2013, 7, 26, 'US', 1),
(2013, 7, 29, 'US', 1),
(2013, 7, 31, 'US', 1),
(2013, 7, 0, 'US', 112),
(2013, 7, 0, 'IN', 33),
(2013, 7, 0, 'ID', 13),
(2013, 7, 0, '', 3),
(2013, 7, 0, 'GB', 2),
(2013, 8, 1, 'US', 7),
(2013, 8, 1, 'GB', 1),
(2013, 8, 2, 'US', 3),
(2013, 8, 2, 'GB', 1),
(2013, 8, 5, 'US', 2),
(2013, 8, 7, 'US', 2),
(2013, 8, 13, 'US', 1),
(2013, 8, 20, 'US', 3),
(2013, 8, 21, 'US', 3),
(2013, 8, 22, 'US', 4),
(2013, 8, 23, 'US', 2),
(2013, 8, 26, 'US', 1);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_stats_aggs_crawlers`
--

CREATE TABLE IF NOT EXISTS `livezilla_stats_aggs_crawlers` (
  `year` smallint(5) unsigned NOT NULL DEFAULT '0',
  `month` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `day` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `crawler` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`year`,`month`,`day`,`crawler`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_stats_aggs_crawlers`
--

INSERT INTO `livezilla_stats_aggs_crawlers` (`year`, `month`, `day`, `crawler`, `amount`) VALUES
(2013, 7, 31, 1, 20),
(2013, 7, 0, 1, 20),
(2013, 8, 8, 1, 3),
(2013, 8, 9, 1, 2),
(2013, 8, 11, 1, 1),
(2013, 8, 12, 1, 1),
(2013, 8, 14, 1, 1),
(2013, 8, 26, 1, 5),
(2013, 8, 27, 1, 32);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_stats_aggs_domains`
--

CREATE TABLE IF NOT EXISTS `livezilla_stats_aggs_domains` (
  `year` smallint(5) unsigned NOT NULL DEFAULT '0',
  `month` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `day` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `domain` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`year`,`month`,`day`,`domain`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_stats_aggs_domains`
--

INSERT INTO `livezilla_stats_aggs_domains` (`year`, `month`, `day`, `domain`, `amount`) VALUES
(2013, 6, 13, 3, 1),
(2013, 6, 13, 2, 7),
(2013, 6, 0, 5, 2),
(2013, 6, 0, 3, 1808),
(2013, 0, 0, 4, 1),
(2013, 0, 0, 3, 1296),
(2013, 6, 14, 2, 80),
(2013, 6, 14, 3, 50),
(2013, 6, 17, 2, 223),
(2013, 6, 17, 3, 120),
(2013, 6, 18, 3, 91),
(2013, 6, 18, 2, 128),
(2013, 6, 19, 3, 42),
(2013, 6, 19, 2, 121),
(2013, 6, 20, 3, 102),
(2013, 6, 20, 2, 295),
(2013, 6, 21, 3, 369),
(2013, 6, 21, 2, 332),
(2013, 6, 23, 2, 72),
(2013, 6, 23, 3, 70),
(2013, 6, 24, 2, 403),
(2013, 6, 24, 3, 237),
(2013, 6, 24, 4, 1),
(2013, 6, 25, 2, 219),
(2013, 6, 25, 3, 214),
(2013, 6, 0, 4, 1),
(2013, 0, 0, 2, 1925),
(2013, 6, 25, 5, 1),
(2013, 6, 26, 2, 439),
(2013, 6, 0, 2, 3044),
(2013, 0, 0, 5, 1),
(2013, 6, 26, 3, 133),
(2013, 6, 27, 2, 241),
(2013, 6, 27, 3, 192),
(2013, 6, 28, 2, 484),
(2013, 6, 28, 3, 187),
(2013, 6, 28, 5, 1),
(2013, 7, 1, 2, 268),
(2013, 7, 1, 3, 124),
(2013, 7, 2, 2, 293),
(2013, 7, 2, 3, 162),
(2013, 7, 3, 2, 5),
(2013, 7, 4, 2, 213),
(2013, 7, 4, 3, 66),
(2013, 7, 4, 5, 1),
(2013, 7, 5, 2, 34),
(2013, 7, 8, 2, 108),
(2013, 7, 8, 3, 2),
(2013, 7, 8, 5, 1),
(2013, 7, 9, 3, 255),
(2013, 7, 9, 2, 134),
(2013, 7, 10, 2, 129),
(2013, 7, 10, 3, 5),
(2013, 7, 10, 5, 1),
(2013, 7, 11, 2, 134),
(2013, 7, 11, 3, 108),
(2013, 7, 12, 3, 74),
(2013, 7, 12, 2, 73),
(2013, 7, 15, 3, 141),
(2013, 7, 15, 2, 118),
(2013, 7, 15, 5, 1),
(2013, 7, 16, 2, 4),
(2013, 7, 16, 3, 1),
(2013, 7, 17, 2, 24),
(2013, 7, 17, 3, 10),
(2013, 7, 18, 2, 414),
(2013, 7, 18, 3, 145),
(2013, 7, 19, 2, 295),
(2013, 7, 19, 3, 97),
(2013, 7, 22, 3, 71),
(2013, 7, 22, 2, 56),
(2013, 7, 23, 2, 369),
(2013, 7, 23, 3, 115),
(2013, 7, 23, 8, 3),
(2013, 7, 24, 2, 346),
(2013, 7, 24, 3, 67),
(2013, 7, 25, 3, 115),
(2013, 7, 25, 2, 81),
(2013, 7, 26, 2, 1),
(2013, 7, 29, 2, 1),
(2013, 7, 31, 2, 1),
(2013, 7, 0, 2, 3101),
(2013, 7, 0, 3, 1558),
(2013, 7, 0, 5, 4),
(2013, 7, 0, 8, 3),
(2013, 8, 1, 2, 58),
(2013, 8, 2, 2, 14),
(2013, 8, 5, 3, 9),
(2013, 8, 7, 2, 5),
(2013, 8, 13, 2, 1),
(2013, 8, 20, 2, 56),
(2013, 8, 21, 2, 13),
(2013, 8, 21, 7, 5),
(2013, 8, 21, 3, 1),
(2013, 8, 22, 2, 23),
(2013, 8, 22, 7, 3),
(2013, 8, 22, 3, 2),
(2013, 8, 23, 3, 20),
(2013, 8, 23, 7, 15),
(2013, 8, 23, 2, 1),
(2013, 8, 26, 7, 8);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_stats_aggs_durations`
--

CREATE TABLE IF NOT EXISTS `livezilla_stats_aggs_durations` (
  `year` smallint(5) unsigned NOT NULL DEFAULT '0',
  `month` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `day` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `duration` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`year`,`month`,`day`,`duration`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_stats_aggs_durations`
--

INSERT INTO `livezilla_stats_aggs_durations` (`year`, `month`, `day`, `duration`, `amount`) VALUES
(2013, 6, 13, 5, 1),
(2013, 6, 13, 3, 1),
(2013, 6, 13, 1, 1),
(2013, 6, 0, 5, 9),
(2013, 6, 0, 4, 6),
(2013, 6, 0, 3, 12),
(2013, 0, 0, 5, 3),
(2013, 0, 0, 4, 6),
(2013, 0, 0, 3, 9),
(2013, 6, 13, 6, 1),
(2013, 6, 14, 1, 1),
(2013, 6, 0, 2, 10),
(2013, 6, 0, 1, 22),
(2013, 0, 0, 6, 16),
(2013, 0, 0, 7, 57),
(2013, 6, 14, 3, 1),
(2013, 6, 14, 4, 2),
(2013, 6, 14, 6, 1),
(2013, 6, 14, 7, 3),
(2013, 6, 0, 6, 18),
(2013, 0, 0, 2, 8),
(2013, 6, 17, 2, 2),
(2013, 6, 17, 3, 1),
(2013, 6, 17, 6, 1),
(2013, 6, 17, 7, 7),
(2013, 6, 18, 7, 5),
(2013, 6, 0, 7, 72),
(2013, 0, 0, 1, 16),
(2013, 6, 18, 6, 1),
(2013, 6, 19, 6, 3),
(2013, 6, 19, 4, 2),
(2013, 6, 19, 3, 2),
(2013, 6, 19, 2, 2),
(2013, 6, 19, 1, 3),
(2013, 6, 19, 7, 7),
(2013, 6, 21, 5, 1),
(2013, 6, 20, 7, 9),
(2013, 6, 20, 6, 3),
(2013, 6, 20, 4, 1),
(2013, 6, 20, 2, 2),
(2013, 6, 20, 1, 3),
(2013, 6, 21, 3, 2),
(2013, 6, 21, 2, 1),
(2013, 6, 21, 1, 4),
(2013, 6, 21, 6, 1),
(2013, 6, 21, 7, 6),
(2013, 6, 23, 1, 1),
(2013, 6, 23, 3, 1),
(2013, 6, 23, 7, 2),
(2013, 6, 24, 1, 1),
(2013, 6, 24, 2, 1),
(2013, 6, 24, 3, 1),
(2013, 6, 24, 6, 1),
(2013, 6, 24, 7, 6),
(2013, 6, 25, 1, 2),
(2013, 6, 25, 4, 1),
(2013, 6, 25, 5, 1),
(2013, 6, 25, 6, 3),
(2013, 6, 25, 7, 11),
(2013, 6, 26, 1, 2),
(2013, 6, 26, 2, 2),
(2013, 6, 26, 3, 1),
(2013, 6, 26, 6, 2),
(2013, 6, 26, 7, 5),
(2013, 6, 27, 1, 3),
(2013, 6, 27, 3, 2),
(2013, 6, 27, 5, 3),
(2013, 6, 27, 6, 1),
(2013, 6, 27, 7, 5),
(2013, 6, 28, 1, 1),
(2013, 6, 28, 5, 3),
(2013, 6, 28, 7, 6),
(2013, 7, 1, 1, 1),
(2013, 7, 1, 5, 1),
(2013, 7, 1, 7, 6),
(2013, 7, 2, 1, 1),
(2013, 7, 2, 2, 1),
(2013, 7, 2, 3, 1),
(2013, 7, 2, 5, 1),
(2013, 7, 2, 6, 2),
(2013, 7, 2, 7, 4),
(2013, 7, 3, 1, 1),
(2013, 7, 3, 7, 1),
(2013, 7, 4, 1, 3),
(2013, 7, 4, 2, 1),
(2013, 7, 4, 3, 1),
(2013, 7, 4, 5, 2),
(2013, 7, 4, 7, 7),
(2013, 7, 5, 3, 2),
(2013, 7, 5, 6, 1),
(2013, 7, 8, 6, 1),
(2013, 7, 8, 7, 5),
(2013, 7, 9, 3, 2),
(2013, 7, 9, 7, 3),
(2013, 7, 10, 1, 2),
(2013, 7, 10, 3, 1),
(2013, 7, 10, 5, 2),
(2013, 7, 10, 7, 2),
(2013, 7, 11, 1, 4),
(2013, 7, 11, 2, 3),
(2013, 7, 11, 3, 1),
(2013, 7, 11, 4, 1),
(2013, 7, 11, 5, 2),
(2013, 7, 11, 6, 3),
(2013, 7, 11, 7, 4),
(2013, 7, 12, 2, 2),
(2013, 7, 12, 3, 1),
(2013, 7, 12, 6, 1),
(2013, 7, 12, 7, 3),
(2013, 7, 15, 2, 1),
(2013, 7, 15, 5, 1),
(2013, 7, 15, 7, 4),
(2013, 7, 16, 1, 2),
(2013, 7, 16, 7, 1),
(2013, 7, 17, 1, 1),
(2013, 7, 17, 2, 1),
(2013, 7, 17, 4, 1),
(2013, 7, 17, 5, 2),
(2013, 7, 17, 6, 1),
(2013, 7, 17, 7, 1),
(2013, 7, 18, 5, 1),
(2013, 7, 18, 6, 1),
(2013, 7, 18, 7, 5),
(2013, 7, 19, 1, 3),
(2013, 7, 19, 2, 1),
(2013, 7, 19, 3, 1),
(2013, 7, 19, 5, 1),
(2013, 7, 19, 7, 8),
(2013, 7, 22, 2, 1),
(2013, 7, 22, 3, 1),
(2013, 7, 22, 6, 1),
(2013, 7, 22, 7, 1),
(2013, 7, 23, 1, 4),
(2013, 7, 23, 3, 1),
(2013, 7, 23, 4, 1),
(2013, 7, 23, 6, 1),
(2013, 7, 23, 7, 6),
(2013, 7, 24, 1, 5),
(2013, 7, 24, 2, 4),
(2013, 7, 24, 5, 2),
(2013, 7, 24, 6, 2),
(2013, 7, 24, 7, 6),
(2013, 7, 25, 1, 1),
(2013, 7, 25, 2, 1),
(2013, 7, 25, 5, 1),
(2013, 7, 25, 6, 1),
(2013, 7, 25, 7, 3),
(2013, 7, 26, 7, 1),
(2013, 7, 29, 1, 1),
(2013, 7, 31, 1, 1),
(2013, 7, 0, 1, 30),
(2013, 7, 0, 2, 16),
(2013, 7, 0, 3, 12),
(2013, 7, 0, 4, 3),
(2013, 7, 0, 5, 16),
(2013, 7, 0, 6, 15),
(2013, 7, 0, 7, 71),
(2013, 8, 1, 1, 3),
(2013, 8, 1, 2, 4),
(2013, 8, 1, 7, 1),
(2013, 8, 2, 1, 3),
(2013, 8, 2, 2, 1),
(2013, 8, 5, 7, 2),
(2013, 8, 7, 1, 1),
(2013, 8, 7, 2, 1),
(2013, 8, 13, 3, 1),
(2013, 8, 20, 2, 1),
(2013, 8, 20, 4, 1),
(2013, 8, 20, 7, 1),
(2013, 8, 21, 2, 1),
(2013, 8, 21, 4, 1),
(2013, 8, 21, 7, 1),
(2013, 8, 22, 2, 3),
(2013, 8, 22, 7, 1),
(2013, 8, 23, 1, 1),
(2013, 8, 23, 7, 1),
(2013, 8, 26, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_stats_aggs_goals`
--

CREATE TABLE IF NOT EXISTS `livezilla_stats_aggs_goals` (
  `year` smallint(5) unsigned NOT NULL DEFAULT '0',
  `month` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `day` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `goal` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`year`,`month`,`day`,`goal`),
  KEY `target` (`goal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_stats_aggs_goals_queries`
--

CREATE TABLE IF NOT EXISTS `livezilla_stats_aggs_goals_queries` (
  `year` smallint(5) unsigned NOT NULL DEFAULT '0',
  `month` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `day` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `goal` int(10) unsigned NOT NULL DEFAULT '0',
  `query` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`year`,`month`,`day`,`goal`,`query`),
  KEY `target` (`goal`),
  KEY `query` (`query`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_stats_aggs_isps`
--

CREATE TABLE IF NOT EXISTS `livezilla_stats_aggs_isps` (
  `year` smallint(5) unsigned NOT NULL DEFAULT '0',
  `month` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `day` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isp` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`year`,`month`,`day`,`isp`),
  KEY `isp` (`isp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_stats_aggs_isps`
--

INSERT INTO `livezilla_stats_aggs_isps` (`year`, `month`, `day`, `isp`, `amount`) VALUES
(2013, 6, 13, 2, 3),
(2013, 6, 13, 1, 1),
(2013, 6, 0, 3, 8),
(2013, 6, 0, 6, 23),
(2013, 0, 0, 2, 51),
(2013, 0, 0, 6, 16),
(2013, 6, 14, 2, 3),
(2013, 6, 0, 1, 29),
(2013, 0, 0, 5, 16),
(2013, 6, 14, 3, 2),
(2013, 6, 14, 1, 1),
(2013, 6, 14, 4, 1),
(2013, 6, 14, 5, 1),
(2013, 6, 0, 8, 8),
(2013, 6, 0, 2, 57),
(2013, 0, 0, 3, 8),
(2013, 0, 0, 7, 2),
(2013, 6, 17, 2, 6),
(2013, 6, 17, 1, 2),
(2013, 6, 17, 5, 2),
(2013, 6, 17, 3, 1),
(2013, 6, 18, 3, 1),
(2013, 6, 0, 7, 2),
(2013, 0, 0, 1, 21),
(2013, 6, 18, 2, 1),
(2013, 6, 18, 6, 1),
(2013, 6, 18, 5, 3),
(2013, 6, 19, 6, 7),
(2013, 6, 19, 5, 4),
(2013, 6, 19, 3, 3),
(2013, 6, 19, 2, 3),
(2013, 6, 19, 1, 2),
(2013, 6, 20, 6, 2),
(2013, 6, 20, 5, 1),
(2013, 6, 20, 2, 10),
(2013, 6, 20, 1, 5),
(2013, 6, 21, 5, 3),
(2013, 6, 21, 6, 2),
(2013, 6, 21, 1, 6),
(2013, 6, 21, 2, 4),
(2013, 6, 23, 2, 4),
(2013, 6, 24, 2, 6),
(2013, 6, 24, 1, 2),
(2013, 6, 24, 5, 1),
(2013, 6, 24, 6, 1),
(2013, 6, 25, 2, 10),
(2013, 6, 25, 1, 2),
(2013, 6, 25, 6, 2),
(2013, 6, 25, 7, 2),
(2013, 6, 25, 3, 1),
(2013, 6, 25, 5, 1),
(2013, 6, 26, 6, 6),
(2013, 6, 26, 1, 3),
(2013, 6, 0, 5, 21),
(2013, 0, 0, 4, 1),
(2013, 6, 26, 5, 2),
(2013, 6, 26, 2, 1),
(2013, 6, 27, 8, 5),
(2013, 6, 27, 2, 3),
(2013, 6, 27, 1, 2),
(2013, 6, 27, 5, 2),
(2013, 6, 27, 6, 2),
(2013, 6, 28, 1, 3),
(2013, 6, 28, 2, 3),
(2013, 6, 28, 8, 3),
(2013, 6, 28, 5, 1),
(2013, 6, 0, 4, 1),
(2013, 7, 1, 2, 5),
(2013, 7, 1, 8, 2),
(2013, 7, 1, 5, 1),
(2013, 7, 2, 2, 6),
(2013, 7, 2, 8, 2),
(2013, 7, 2, 5, 1),
(2013, 7, 2, 6, 1),
(2013, 7, 3, 2, 1),
(2013, 7, 3, 8, 1),
(2013, 7, 4, 2, 6),
(2013, 7, 4, 8, 4),
(2013, 7, 4, 1, 2),
(2013, 7, 4, 6, 2),
(2013, 7, 5, 2, 1),
(2013, 7, 5, 5, 1),
(2013, 7, 5, 6, 1),
(2013, 7, 8, 8, 3),
(2013, 7, 8, 2, 2),
(2013, 7, 8, 6, 1),
(2013, 7, 9, 8, 3),
(2013, 7, 9, 1, 1),
(2013, 7, 9, 2, 1),
(2013, 7, 10, 6, 3),
(2013, 7, 10, 5, 2),
(2013, 7, 10, 8, 2),
(2013, 7, 11, 8, 14),
(2013, 7, 11, 5, 4),
(2013, 7, 12, 8, 6),
(2013, 7, 12, 5, 1),
(2013, 7, 15, 8, 6),
(2013, 7, 16, 8, 3),
(2013, 7, 17, 8, 5),
(2013, 7, 17, 6, 2),
(2013, 7, 18, 8, 5),
(2013, 7, 18, 6, 2),
(2013, 7, 19, 8, 13),
(2013, 7, 19, 6, 1),
(2013, 7, 22, 8, 4),
(2013, 7, 23, 8, 13),
(2013, 7, 24, 8, 18),
(2013, 7, 24, 2, 1),
(2013, 7, 25, 8, 7),
(2013, 7, 26, 8, 1),
(2013, 7, 29, 8, 1),
(2013, 7, 31, 8, 1),
(2013, 7, 0, 8, 114),
(2013, 7, 0, 2, 23),
(2013, 7, 0, 6, 13),
(2013, 7, 0, 5, 10),
(2013, 7, 0, 1, 3),
(2013, 8, 1, 8, 8),
(2013, 8, 2, 8, 4),
(2013, 8, 5, 8, 2),
(2013, 8, 7, 8, 2),
(2013, 8, 13, 8, 1),
(2013, 8, 20, 8, 3),
(2013, 8, 21, 8, 3),
(2013, 8, 22, 8, 4),
(2013, 8, 23, 8, 2),
(2013, 8, 26, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_stats_aggs_languages`
--

CREATE TABLE IF NOT EXISTS `livezilla_stats_aggs_languages` (
  `year` smallint(5) unsigned NOT NULL DEFAULT '0',
  `month` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `day` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language` varchar(5) COLLATE utf8_bin NOT NULL,
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`year`,`month`,`day`,`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_stats_aggs_languages`
--

INSERT INTO `livezilla_stats_aggs_languages` (`year`, `month`, `day`, `language`, `amount`) VALUES
(2013, 6, 13, 'EN-US', 4),
(2013, 6, 0, 'EN-US', 138),
(2013, 0, 0, 'EN-US', 106),
(2013, 6, 14, 'EN-US', 8),
(2013, 6, 17, 'EN-US', 10),
(2013, 6, 17, 'EN', 1),
(2013, 6, 18, 'EN-US', 6),
(2013, 6, 0, 'EN-GB', 1),
(2013, 0, 0, 'EN', 8),
(2013, 6, 19, 'EN-US', 18),
(2013, 6, 19, 'EN', 1),
(2013, 6, 20, 'EN-US', 15),
(2013, 6, 20, 'EN', 2),
(2013, 6, 0, 'EN', 10),
(2013, 0, 0, 'EN-GB', 1),
(2013, 6, 20, 'EN-GB', 1),
(2013, 6, 21, 'EN-US', 13),
(2013, 6, 21, 'EN', 2),
(2013, 6, 23, 'EN-US', 4),
(2013, 6, 24, 'EN-US', 8),
(2013, 6, 24, 'EN', 2),
(2013, 6, 25, 'EN-US', 18),
(2013, 6, 26, 'EN-US', 11),
(2013, 6, 26, 'EN', 1),
(2013, 6, 27, 'EN-US', 14),
(2013, 6, 28, 'EN-US', 9),
(2013, 6, 28, 'EN', 1),
(2013, 7, 1, 'EN-US', 8),
(2013, 7, 2, 'EN-US', 10),
(2013, 7, 3, 'EN-US', 2),
(2013, 7, 4, 'EN-US', 13),
(2013, 7, 4, 'EN', 1),
(2013, 7, 5, 'EN-US', 3),
(2013, 7, 8, 'EN-US', 6),
(2013, 7, 9, 'EN-US', 5),
(2013, 7, 10, 'EN-US', 7),
(2013, 7, 11, 'EN-US', 16),
(2013, 7, 11, 'EN', 2),
(2013, 7, 12, 'EN-US', 7),
(2013, 7, 15, 'EN-US', 6),
(2013, 7, 16, 'EN-US', 3),
(2013, 7, 17, 'EN-US', 7),
(2013, 7, 18, 'EN-US', 7),
(2013, 7, 19, 'EN-US', 13),
(2013, 7, 19, '', 1),
(2013, 7, 22, 'EN-US', 4),
(2013, 7, 23, 'EN-US', 11),
(2013, 7, 23, 'EN-GB', 2),
(2013, 7, 24, 'EN-US', 19),
(2013, 7, 25, 'EN-US', 7),
(2013, 7, 26, 'EN-US', 1),
(2013, 7, 29, 'EN-US', 1),
(2013, 7, 31, 'EN-US', 1),
(2013, 7, 0, 'EN-US', 157),
(2013, 7, 0, 'EN', 3),
(2013, 7, 0, 'EN-GB', 2),
(2013, 7, 0, '', 1),
(2013, 8, 1, 'EN-US', 7),
(2013, 8, 1, 'EN-GB', 1),
(2013, 8, 2, 'EN-US', 3),
(2013, 8, 2, 'EN-GB', 1),
(2013, 8, 5, 'EN-US', 2),
(2013, 8, 7, 'EN-US', 2),
(2013, 8, 13, 'EN-US', 1),
(2013, 8, 20, 'EN-US', 3),
(2013, 8, 21, 'EN-US', 3),
(2013, 8, 22, 'EN-US', 4),
(2013, 8, 23, 'EN-US', 2),
(2013, 8, 26, 'EN-US', 1);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_stats_aggs_pages`
--

CREATE TABLE IF NOT EXISTS `livezilla_stats_aggs_pages` (
  `year` smallint(5) unsigned NOT NULL DEFAULT '0',
  `month` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `day` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `url` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`year`,`month`,`day`,`url`),
  KEY `url` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_stats_aggs_pages`
--

INSERT INTO `livezilla_stats_aggs_pages` (`year`, `month`, `day`, `url`, `amount`) VALUES
(2013, 0, 0, 2, 1),
(2013, 0, 0, 6, 840),
(2013, 0, 0, 12, 1896),
(2013, 0, 0, 44, 28),
(2013, 0, 0, 96, 437),
(2013, 0, 0, 370, 2),
(2013, 0, 0, 424, 2),
(2013, 0, 0, 558, 3),
(2013, 0, 0, 560, 2),
(2013, 0, 0, 576, 1),
(2013, 0, 0, 1322, 3),
(2013, 0, 0, 2120, 3),
(2013, 0, 0, 3268, 1),
(2013, 0, 0, 3926, 1),
(2013, 0, 0, 4380, 1),
(2013, 0, 0, 4496, 1),
(2013, 0, 0, 5222, 1),
(2013, 6, 0, 2, 1),
(2013, 6, 0, 6, 1085),
(2013, 6, 0, 12, 2999),
(2013, 6, 0, 44, 43),
(2013, 6, 0, 96, 700),
(2013, 6, 0, 370, 2),
(2013, 6, 0, 424, 2),
(2013, 6, 0, 558, 4),
(2013, 6, 0, 560, 2),
(2013, 6, 0, 576, 1),
(2013, 6, 0, 1322, 3),
(2013, 6, 0, 2120, 3),
(2013, 6, 0, 3268, 1),
(2013, 6, 0, 3926, 1),
(2013, 6, 0, 4380, 1),
(2013, 6, 0, 4496, 2),
(2013, 6, 0, 5222, 2),
(2013, 6, 0, 8642, 1),
(2013, 6, 0, 8670, 2),
(2013, 6, 13, 2, 1),
(2013, 6, 13, 6, 1),
(2013, 6, 13, 12, 6),
(2013, 6, 14, 6, 33),
(2013, 6, 14, 12, 78),
(2013, 6, 14, 44, 2),
(2013, 6, 14, 96, 17),
(2013, 6, 17, 6, 88),
(2013, 6, 17, 12, 217),
(2013, 6, 17, 44, 6),
(2013, 6, 17, 96, 23),
(2013, 6, 17, 370, 2),
(2013, 6, 17, 424, 2),
(2013, 6, 17, 558, 2),
(2013, 6, 17, 560, 2),
(2013, 6, 17, 576, 1),
(2013, 6, 18, 6, 58),
(2013, 6, 18, 12, 123),
(2013, 6, 18, 44, 5),
(2013, 6, 18, 96, 30),
(2013, 6, 18, 1322, 3),
(2013, 6, 19, 6, 35),
(2013, 6, 19, 12, 120),
(2013, 6, 19, 44, 1),
(2013, 6, 19, 96, 6),
(2013, 6, 19, 558, 1),
(2013, 6, 20, 6, 54),
(2013, 6, 20, 12, 293),
(2013, 6, 20, 44, 2),
(2013, 6, 20, 96, 47),
(2013, 6, 20, 2120, 1),
(2013, 6, 21, 6, 211),
(2013, 6, 21, 12, 327),
(2013, 6, 21, 44, 5),
(2013, 6, 21, 96, 156),
(2013, 6, 21, 2120, 1),
(2013, 6, 21, 3268, 1),
(2013, 6, 23, 6, 68),
(2013, 6, 23, 12, 72),
(2013, 6, 23, 2120, 1),
(2013, 6, 23, 3926, 1),
(2013, 6, 24, 6, 208),
(2013, 6, 24, 12, 398),
(2013, 6, 24, 44, 5),
(2013, 6, 24, 96, 28),
(2013, 6, 24, 4380, 1),
(2013, 6, 24, 4496, 1),
(2013, 6, 25, 6, 84),
(2013, 6, 25, 12, 217),
(2013, 6, 25, 44, 2),
(2013, 6, 25, 96, 130),
(2013, 6, 25, 5222, 1),
(2013, 6, 26, 6, 66),
(2013, 6, 26, 12, 430),
(2013, 6, 26, 44, 9),
(2013, 6, 26, 96, 65),
(2013, 6, 26, 558, 1),
(2013, 6, 26, 4496, 1),
(2013, 6, 27, 6, 83),
(2013, 6, 27, 12, 239),
(2013, 6, 27, 44, 2),
(2013, 6, 27, 96, 109),
(2013, 6, 28, 6, 96),
(2013, 6, 28, 12, 479),
(2013, 6, 28, 44, 4),
(2013, 6, 28, 96, 89),
(2013, 6, 28, 5222, 1),
(2013, 6, 28, 8642, 1),
(2013, 6, 28, 8670, 2),
(2013, 7, 0, 6, 1009),
(2013, 7, 0, 12, 3074),
(2013, 7, 0, 44, 27),
(2013, 7, 0, 96, 547),
(2013, 7, 0, 4496, 2),
(2013, 7, 0, 5222, 4),
(2013, 7, 0, 9757, 3),
(2013, 7, 1, 6, 14),
(2013, 7, 1, 12, 267),
(2013, 7, 1, 44, 1),
(2013, 7, 1, 96, 109),
(2013, 7, 1, 4496, 1),
(2013, 7, 2, 6, 6),
(2013, 7, 2, 12, 289),
(2013, 7, 2, 44, 4),
(2013, 7, 2, 96, 156),
(2013, 7, 3, 12, 5),
(2013, 7, 4, 6, 66),
(2013, 7, 4, 12, 213),
(2013, 7, 4, 5222, 1),
(2013, 7, 5, 12, 33),
(2013, 7, 5, 44, 1),
(2013, 7, 8, 6, 2),
(2013, 7, 8, 12, 108),
(2013, 7, 8, 5222, 1),
(2013, 7, 9, 6, 255),
(2013, 7, 9, 12, 134),
(2013, 7, 10, 12, 126),
(2013, 7, 10, 44, 3),
(2013, 7, 10, 96, 5),
(2013, 7, 10, 5222, 1),
(2013, 7, 11, 6, 50),
(2013, 7, 11, 12, 130),
(2013, 7, 11, 44, 4),
(2013, 7, 11, 96, 58),
(2013, 7, 12, 6, 4),
(2013, 7, 12, 12, 71),
(2013, 7, 12, 44, 2),
(2013, 7, 12, 96, 70),
(2013, 7, 15, 6, 21),
(2013, 7, 15, 12, 116),
(2013, 7, 15, 44, 2),
(2013, 7, 15, 96, 119),
(2013, 7, 15, 4496, 1),
(2013, 7, 15, 5222, 1),
(2013, 7, 16, 12, 3),
(2013, 7, 16, 44, 1),
(2013, 7, 16, 96, 1),
(2013, 7, 17, 12, 23),
(2013, 7, 17, 44, 1),
(2013, 7, 17, 96, 10),
(2013, 7, 18, 6, 133),
(2013, 7, 18, 12, 412),
(2013, 7, 18, 44, 2),
(2013, 7, 18, 96, 12),
(2013, 7, 19, 6, 92),
(2013, 7, 19, 12, 293),
(2013, 7, 19, 44, 2),
(2013, 7, 19, 96, 5),
(2013, 7, 22, 6, 71),
(2013, 7, 22, 12, 56),
(2013, 7, 23, 6, 115),
(2013, 7, 23, 12, 369),
(2013, 7, 23, 9757, 3),
(2013, 7, 24, 6, 65),
(2013, 7, 24, 12, 342),
(2013, 7, 24, 44, 4),
(2013, 7, 24, 96, 2),
(2013, 7, 25, 6, 115),
(2013, 7, 25, 12, 81),
(2013, 7, 26, 12, 1),
(2013, 7, 29, 12, 1),
(2013, 7, 31, 12, 1),
(2013, 8, 1, 12, 58),
(2013, 8, 2, 12, 14),
(2013, 8, 5, 6, 9),
(2013, 8, 7, 12, 5),
(2013, 8, 13, 12, 1),
(2013, 8, 20, 12, 56),
(2013, 8, 21, 6, 1),
(2013, 8, 21, 12, 13),
(2013, 8, 21, 11843, 5),
(2013, 8, 22, 6, 2),
(2013, 8, 22, 12, 23),
(2013, 8, 22, 11843, 3),
(2013, 8, 23, 6, 20),
(2013, 8, 23, 12, 1),
(2013, 8, 23, 11843, 15),
(2013, 8, 26, 11843, 8);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_stats_aggs_pages_entrance`
--

CREATE TABLE IF NOT EXISTS `livezilla_stats_aggs_pages_entrance` (
  `year` smallint(5) unsigned NOT NULL DEFAULT '0',
  `month` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `day` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `url` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`year`,`month`,`day`,`url`),
  KEY `url` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_stats_aggs_pages_entrance`
--

INSERT INTO `livezilla_stats_aggs_pages_entrance` (`year`, `month`, `day`, `url`, `amount`) VALUES
(2013, 0, 0, 2, 1),
(2013, 0, 0, 6, 86),
(2013, 0, 0, 12, 207),
(2013, 0, 0, 44, 10),
(2013, 0, 0, 96, 30),
(2013, 0, 0, 3926, 1),
(2013, 0, 0, 4380, 1),
(2013, 6, 0, 2, 1),
(2013, 6, 0, 6, 121),
(2013, 6, 0, 12, 315),
(2013, 6, 0, 44, 22),
(2013, 6, 0, 96, 35),
(2013, 6, 0, 3926, 1),
(2013, 6, 0, 4380, 1),
(2013, 6, 0, 4496, 1),
(2013, 6, 0, 5222, 1),
(2013, 6, 0, 8670, 1),
(2013, 6, 13, 2, 1),
(2013, 6, 13, 6, 1),
(2013, 6, 13, 12, 2),
(2013, 6, 14, 6, 3),
(2013, 6, 14, 12, 9),
(2013, 6, 14, 44, 0),
(2013, 6, 14, 96, 1),
(2013, 6, 17, 6, 5),
(2013, 6, 17, 12, 12),
(2013, 6, 17, 44, 1),
(2013, 6, 17, 96, 2),
(2013, 6, 17, 370, 0),
(2013, 6, 17, 424, 0),
(2013, 6, 17, 558, 0),
(2013, 6, 17, 560, 0),
(2013, 6, 17, 576, 0),
(2013, 6, 18, 6, 3),
(2013, 6, 18, 12, 16),
(2013, 6, 18, 44, 1),
(2013, 6, 18, 96, 5),
(2013, 6, 18, 1322, 0),
(2013, 6, 19, 6, 9),
(2013, 6, 19, 12, 24),
(2013, 6, 19, 44, 1),
(2013, 6, 19, 96, 2),
(2013, 6, 19, 558, 0),
(2013, 6, 20, 6, 12),
(2013, 6, 20, 12, 45),
(2013, 6, 20, 44, 2),
(2013, 6, 20, 96, 2),
(2013, 6, 20, 2120, 0),
(2013, 6, 21, 6, 20),
(2013, 6, 21, 12, 33),
(2013, 6, 21, 44, 3),
(2013, 6, 21, 96, 6),
(2013, 6, 21, 2120, 0),
(2013, 6, 21, 3268, 0),
(2013, 6, 23, 6, 6),
(2013, 6, 23, 12, 9),
(2013, 6, 23, 2120, 0),
(2013, 6, 23, 3926, 1),
(2013, 6, 24, 6, 17),
(2013, 6, 24, 12, 24),
(2013, 6, 24, 44, 1),
(2013, 6, 24, 96, 6),
(2013, 6, 24, 4380, 1),
(2013, 6, 24, 4496, 0),
(2013, 6, 25, 6, 10),
(2013, 6, 25, 12, 23),
(2013, 6, 25, 44, 1),
(2013, 6, 25, 96, 6),
(2013, 6, 25, 5222, 0),
(2013, 6, 26, 6, 8),
(2013, 6, 26, 12, 60),
(2013, 6, 26, 44, 7),
(2013, 6, 26, 96, 1),
(2013, 6, 26, 558, 0),
(2013, 6, 26, 4496, 1),
(2013, 6, 27, 6, 15),
(2013, 6, 27, 12, 32),
(2013, 6, 27, 44, 2),
(2013, 6, 27, 96, 2),
(2013, 6, 28, 6, 12),
(2013, 6, 28, 12, 26),
(2013, 6, 28, 44, 3),
(2013, 6, 28, 96, 2),
(2013, 6, 28, 5222, 1),
(2013, 6, 28, 8642, 0),
(2013, 6, 28, 8670, 1),
(2013, 7, 0, 6, 59),
(2013, 7, 0, 12, 257),
(2013, 7, 0, 44, 23),
(2013, 7, 0, 96, 33),
(2013, 7, 0, 5222, 4),
(2013, 7, 0, 9757, 2),
(2013, 7, 1, 6, 5),
(2013, 7, 1, 12, 22),
(2013, 7, 1, 44, 0),
(2013, 7, 1, 96, 5),
(2013, 7, 1, 4496, 0),
(2013, 7, 2, 6, 1),
(2013, 7, 2, 12, 15),
(2013, 7, 2, 44, 4),
(2013, 7, 2, 96, 6),
(2013, 7, 3, 12, 3),
(2013, 7, 4, 6, 9),
(2013, 7, 4, 12, 30),
(2013, 7, 4, 5222, 1),
(2013, 7, 5, 12, 2),
(2013, 7, 5, 44, 1),
(2013, 7, 8, 6, 1),
(2013, 7, 8, 12, 8),
(2013, 7, 8, 5222, 1),
(2013, 7, 9, 6, 6),
(2013, 7, 9, 12, 9),
(2013, 7, 10, 12, 13),
(2013, 7, 10, 44, 2),
(2013, 7, 10, 96, 2),
(2013, 7, 10, 5222, 1),
(2013, 7, 11, 6, 3),
(2013, 7, 11, 12, 22),
(2013, 7, 11, 44, 4),
(2013, 7, 11, 96, 4),
(2013, 7, 12, 6, 1),
(2013, 7, 12, 12, 9),
(2013, 7, 12, 44, 2),
(2013, 7, 12, 96, 6),
(2013, 7, 15, 6, 2),
(2013, 7, 15, 12, 8),
(2013, 7, 15, 44, 2),
(2013, 7, 15, 96, 4),
(2013, 7, 15, 4496, 0),
(2013, 7, 15, 5222, 1),
(2013, 7, 16, 12, 1),
(2013, 7, 16, 44, 1),
(2013, 7, 16, 96, 1),
(2013, 7, 17, 12, 9),
(2013, 7, 17, 44, 1),
(2013, 7, 17, 96, 2),
(2013, 7, 18, 6, 7),
(2013, 7, 18, 12, 17),
(2013, 7, 18, 44, 1),
(2013, 7, 18, 96, 1),
(2013, 7, 19, 6, 2),
(2013, 7, 19, 12, 19),
(2013, 7, 19, 44, 1),
(2013, 7, 19, 96, 1),
(2013, 7, 22, 6, 3),
(2013, 7, 22, 12, 4),
(2013, 7, 23, 6, 5),
(2013, 7, 23, 12, 23),
(2013, 7, 23, 9757, 2),
(2013, 7, 24, 6, 8),
(2013, 7, 24, 12, 31),
(2013, 7, 24, 44, 4),
(2013, 7, 24, 96, 1),
(2013, 7, 25, 6, 6),
(2013, 7, 25, 12, 9),
(2013, 7, 26, 12, 1),
(2013, 7, 29, 12, 1),
(2013, 7, 31, 12, 1),
(2013, 8, 1, 12, 8),
(2013, 8, 2, 12, 4),
(2013, 8, 5, 6, 2),
(2013, 8, 7, 12, 2),
(2013, 8, 13, 12, 1),
(2013, 8, 20, 12, 7),
(2013, 8, 21, 6, 1),
(2013, 8, 21, 12, 6),
(2013, 8, 21, 11843, 3),
(2013, 8, 22, 6, 1),
(2013, 8, 22, 12, 2),
(2013, 8, 22, 11843, 1),
(2013, 8, 23, 6, 1),
(2013, 8, 23, 12, 1),
(2013, 8, 23, 11843, 2),
(2013, 8, 26, 11843, 2);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_stats_aggs_pages_exit`
--

CREATE TABLE IF NOT EXISTS `livezilla_stats_aggs_pages_exit` (
  `year` smallint(5) unsigned NOT NULL DEFAULT '0',
  `month` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `day` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `url` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`year`,`month`,`day`,`url`),
  KEY `url` (`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_stats_aggs_pages_exit`
--

INSERT INTO `livezilla_stats_aggs_pages_exit` (`year`, `month`, `day`, `url`, `amount`) VALUES
(2013, 6, 13, 12, 2),
(2013, 6, 13, 6, 1),
(2013, 6, 13, 2, 1),
(2013, 6, 0, 1322, 1),
(2013, 6, 0, 4380, 1),
(2013, 6, 0, 2, 1),
(2013, 0, 0, 44, 2),
(2013, 0, 0, 3926, 1),
(2013, 0, 0, 4380, 1),
(2013, 6, 14, 12, 9),
(2013, 6, 14, 6, 3),
(2013, 6, 14, 96, 1),
(2013, 6, 14, 44, 0),
(2013, 6, 0, 6, 114),
(2013, 0, 0, 1322, 1),
(2013, 6, 17, 12, 14),
(2013, 6, 17, 6, 4),
(2013, 6, 17, 96, 2),
(2013, 6, 17, 370, 0),
(2013, 6, 17, 424, 0),
(2013, 6, 17, 558, 0),
(2013, 6, 17, 560, 0),
(2013, 6, 17, 576, 0),
(2013, 6, 17, 44, 0),
(2013, 6, 18, 96, 2),
(2013, 6, 18, 1322, 1),
(2013, 6, 18, 12, 16),
(2013, 6, 18, 6, 3),
(2013, 6, 18, 44, 0),
(2013, 6, 0, 44, 7),
(2013, 0, 0, 2, 1),
(2013, 6, 19, 558, 1),
(2013, 6, 19, 44, 1),
(2013, 6, 19, 6, 6),
(2013, 6, 19, 12, 23),
(2013, 6, 19, 96, 1),
(2013, 6, 0, 96, 29),
(2013, 6, 0, 12, 322),
(2013, 0, 0, 558, 1),
(2013, 0, 0, 96, 23),
(2013, 6, 20, 6, 12),
(2013, 6, 20, 96, 2),
(2013, 6, 20, 12, 46),
(2013, 6, 20, 44, 0),
(2013, 6, 20, 2120, 0),
(2013, 6, 21, 96, 5),
(2013, 6, 21, 44, 0),
(2013, 6, 21, 12, 35),
(2013, 6, 21, 6, 18),
(2013, 6, 21, 2120, 0),
(2013, 6, 21, 3268, 0),
(2013, 6, 23, 12, 9),
(2013, 6, 23, 6, 6),
(2013, 6, 23, 3926, 1),
(2013, 6, 23, 2120, 0),
(2013, 6, 0, 558, 1),
(2013, 0, 0, 4496, 1),
(2013, 6, 24, 12, 23),
(2013, 6, 24, 6, 16),
(2013, 6, 24, 96, 4),
(2013, 6, 24, 44, 1),
(2013, 6, 24, 4496, 1),
(2013, 6, 24, 4380, 1),
(2013, 6, 25, 12, 24),
(2013, 6, 0, 8670, 1),
(2013, 6, 0, 4496, 1),
(2013, 0, 0, 6, 77),
(2013, 0, 0, 12, 208),
(2013, 6, 25, 6, 8),
(2013, 6, 25, 96, 6),
(2013, 6, 25, 44, 0),
(2013, 6, 25, 5222, 0),
(2013, 6, 26, 12, 60),
(2013, 6, 26, 6, 8),
(2013, 6, 26, 44, 5),
(2013, 6, 26, 96, 2),
(2013, 6, 26, 558, 0),
(2013, 6, 26, 4496, 0),
(2013, 6, 27, 12, 34),
(2013, 6, 27, 6, 14),
(2013, 6, 27, 96, 2),
(2013, 6, 27, 44, 0),
(2013, 6, 28, 12, 27),
(2013, 6, 28, 6, 15),
(2013, 6, 28, 96, 2),
(2013, 6, 28, 8670, 1),
(2013, 6, 28, 5222, 0),
(2013, 6, 28, 44, 0),
(2013, 6, 28, 8642, 0),
(2013, 6, 0, 3926, 1),
(2013, 7, 1, 12, 20),
(2013, 7, 1, 96, 8),
(2013, 7, 1, 6, 5),
(2013, 7, 1, 4496, 0),
(2013, 7, 1, 44, 0),
(2013, 7, 2, 12, 14),
(2013, 7, 2, 96, 6),
(2013, 7, 2, 44, 2),
(2013, 7, 2, 6, 1),
(2013, 7, 3, 12, 3),
(2013, 7, 4, 12, 31),
(2013, 7, 4, 6, 9),
(2013, 7, 4, 5222, 0),
(2013, 7, 5, 12, 3),
(2013, 7, 5, 44, 0),
(2013, 7, 8, 12, 8),
(2013, 7, 8, 6, 1),
(2013, 7, 8, 5222, 1),
(2013, 7, 9, 12, 9),
(2013, 7, 9, 6, 6),
(2013, 7, 10, 12, 16),
(2013, 7, 10, 96, 2),
(2013, 7, 10, 44, 0),
(2013, 7, 10, 5222, 0),
(2013, 7, 11, 12, 25),
(2013, 7, 11, 96, 4),
(2013, 7, 11, 6, 3),
(2013, 7, 11, 44, 1),
(2013, 7, 12, 12, 11),
(2013, 7, 12, 96, 6),
(2013, 7, 12, 6, 1),
(2013, 7, 12, 44, 0),
(2013, 7, 15, 12, 8),
(2013, 7, 15, 96, 5),
(2013, 7, 15, 6, 2),
(2013, 7, 15, 44, 1),
(2013, 7, 15, 5222, 1),
(2013, 7, 15, 4496, 1),
(2013, 7, 16, 12, 2),
(2013, 7, 16, 96, 1),
(2013, 7, 16, 44, 0),
(2013, 7, 17, 12, 9),
(2013, 7, 17, 96, 2),
(2013, 7, 17, 44, 1),
(2013, 7, 18, 12, 16),
(2013, 7, 18, 6, 5),
(2013, 7, 18, 96, 1),
(2013, 7, 18, 44, 0),
(2013, 7, 19, 12, 20),
(2013, 7, 19, 6, 2),
(2013, 7, 19, 96, 1),
(2013, 7, 19, 44, 0),
(2013, 7, 22, 6, 4),
(2013, 7, 22, 12, 4),
(2013, 7, 23, 12, 25),
(2013, 7, 23, 6, 5),
(2013, 7, 23, 9757, 0),
(2013, 7, 24, 12, 31),
(2013, 7, 24, 6, 7),
(2013, 7, 24, 96, 1),
(2013, 7, 24, 44, 1),
(2013, 7, 25, 12, 9),
(2013, 7, 25, 6, 6),
(2013, 7, 26, 12, 1),
(2013, 7, 29, 12, 1),
(2013, 7, 31, 12, 1),
(2013, 7, 0, 12, 267),
(2013, 7, 0, 6, 57),
(2013, 7, 0, 96, 37),
(2013, 7, 0, 44, 6),
(2013, 7, 0, 5222, 2),
(2013, 7, 0, 4496, 1),
(2013, 8, 1, 12, 8),
(2013, 8, 2, 12, 4),
(2013, 8, 5, 6, 2),
(2013, 8, 7, 12, 2),
(2013, 8, 13, 12, 1),
(2013, 8, 20, 12, 7),
(2013, 8, 21, 12, 6),
(2013, 8, 21, 11843, 3),
(2013, 8, 21, 6, 1),
(2013, 8, 22, 12, 2),
(2013, 8, 22, 6, 1),
(2013, 8, 22, 11843, 1),
(2013, 8, 23, 11843, 2),
(2013, 8, 23, 12, 1),
(2013, 8, 23, 6, 1),
(2013, 8, 26, 11843, 2);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_stats_aggs_queries`
--

CREATE TABLE IF NOT EXISTS `livezilla_stats_aggs_queries` (
  `year` smallint(5) unsigned NOT NULL DEFAULT '0',
  `month` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `day` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `query` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`year`,`month`,`day`,`query`),
  KEY `query` (`query`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_stats_aggs_referrers`
--

CREATE TABLE IF NOT EXISTS `livezilla_stats_aggs_referrers` (
  `year` smallint(5) unsigned NOT NULL DEFAULT '0',
  `month` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `day` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `referrer` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`year`,`month`,`day`,`referrer`),
  KEY `referrer` (`referrer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_stats_aggs_referrers`
--

INSERT INTO `livezilla_stats_aggs_referrers` (`year`, `month`, `day`, `referrer`, `amount`) VALUES
(2013, 7, 18, 9085, 1),
(2013, 7, 22, 9086, 1),
(2013, 7, 24, 10524, 7),
(2013, 7, 29, 9086, 1),
(2013, 7, 0, 10524, 7),
(2013, 7, 0, 9086, 2),
(2013, 7, 0, 9085, 1),
(2013, 8, 1, 10524, 1),
(2013, 8, 2, 11656, 2),
(2013, 8, 2, 11682, 1),
(2013, 8, 7, 11702, 1),
(2013, 8, 7, 11656, 1),
(2013, 8, 13, 11656, 1);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_stats_aggs_regions`
--

CREATE TABLE IF NOT EXISTS `livezilla_stats_aggs_regions` (
  `year` smallint(5) unsigned NOT NULL DEFAULT '0',
  `month` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `day` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `region` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`year`,`month`,`day`,`region`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_stats_aggs_regions`
--

INSERT INTO `livezilla_stats_aggs_regions` (`year`, `month`, `day`, `region`, `amount`) VALUES
(2013, 6, 13, 1, 4),
(2013, 6, 0, 2, 32),
(2013, 0, 0, 3, 1),
(2013, 6, 14, 1, 5),
(2013, 6, 0, 1, 107),
(2013, 0, 0, 4, 1),
(2013, 6, 14, 2, 2),
(2013, 6, 14, 3, 1),
(2013, 6, 0, 5, 8),
(2013, 0, 0, 2, 25),
(2013, 6, 17, 1, 10),
(2013, 6, 17, 2, 1),
(2013, 6, 18, 2, 2),
(2013, 6, 18, 1, 4),
(2013, 6, 19, 2, 9),
(2013, 6, 19, 1, 9),
(2013, 6, 19, 4, 1),
(2013, 6, 20, 2, 2),
(2013, 6, 0, 3, 1),
(2013, 0, 0, 1, 88),
(2013, 6, 20, 1, 16),
(2013, 6, 21, 2, 2),
(2013, 6, 21, 1, 13),
(2013, 6, 23, 1, 4),
(2013, 6, 24, 1, 9),
(2013, 6, 24, 2, 1),
(2013, 6, 25, 1, 13),
(2013, 6, 25, 2, 5),
(2013, 6, 26, 1, 6),
(2013, 6, 26, 2, 6),
(2013, 6, 27, 1, 7),
(2013, 6, 27, 5, 5),
(2013, 6, 27, 2, 2),
(2013, 6, 28, 1, 7),
(2013, 6, 28, 5, 3),
(2013, 6, 0, 4, 1),
(2013, 7, 1, 1, 6),
(2013, 7, 1, 5, 2),
(2013, 7, 2, 1, 7),
(2013, 7, 2, 5, 2),
(2013, 7, 2, 2, 1),
(2013, 7, 3, 1, 1),
(2013, 7, 3, 5, 1),
(2013, 7, 4, 1, 8),
(2013, 7, 4, 5, 4),
(2013, 7, 4, 2, 2),
(2013, 7, 5, 1, 2),
(2013, 7, 5, 2, 1),
(2013, 7, 8, 5, 3),
(2013, 7, 8, 1, 2),
(2013, 7, 8, 2, 1),
(2013, 7, 9, 5, 3),
(2013, 7, 9, 1, 2),
(2013, 7, 10, 2, 3),
(2013, 7, 10, 1, 2),
(2013, 7, 10, 5, 2),
(2013, 7, 11, 5, 14),
(2013, 7, 11, 1, 4),
(2013, 7, 12, 5, 6),
(2013, 7, 12, 1, 1),
(2013, 7, 15, 5, 6),
(2013, 7, 16, 5, 3),
(2013, 7, 17, 5, 5),
(2013, 7, 17, 2, 2),
(2013, 7, 18, 5, 5),
(2013, 7, 18, 2, 2),
(2013, 7, 19, 5, 13),
(2013, 7, 19, 2, 1),
(2013, 7, 22, 5, 4),
(2013, 7, 23, 5, 13),
(2013, 7, 24, 5, 18),
(2013, 7, 24, 1, 1),
(2013, 7, 25, 5, 7),
(2013, 7, 26, 5, 1),
(2013, 7, 29, 5, 1),
(2013, 7, 31, 5, 1),
(2013, 7, 0, 5, 114),
(2013, 7, 0, 1, 36),
(2013, 7, 0, 2, 13),
(2013, 8, 1, 5, 8),
(2013, 8, 2, 5, 4),
(2013, 8, 5, 5, 2),
(2013, 8, 7, 5, 2),
(2013, 8, 13, 5, 1),
(2013, 8, 20, 5, 3),
(2013, 8, 21, 5, 3),
(2013, 8, 22, 5, 4),
(2013, 8, 23, 5, 2),
(2013, 8, 26, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_stats_aggs_resolutions`
--

CREATE TABLE IF NOT EXISTS `livezilla_stats_aggs_resolutions` (
  `year` smallint(5) unsigned NOT NULL DEFAULT '0',
  `month` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `day` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `resolution` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`year`,`month`,`day`,`resolution`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_stats_aggs_resolutions`
--

INSERT INTO `livezilla_stats_aggs_resolutions` (`year`, `month`, `day`, `resolution`, `amount`) VALUES
(2013, 6, 13, 2, 2),
(2013, 6, 13, 1, 1),
(2013, 6, 0, 6, 12),
(2013, 6, 0, 4, 34),
(2013, 0, 0, 5, 12),
(2013, 0, 0, 6, 9),
(2013, 6, 13, 3, 1),
(2013, 6, 14, 4, 3),
(2013, 6, 0, 8, 14),
(2013, 6, 0, 3, 9),
(2013, 0, 0, 10, 2),
(2013, 0, 0, 3, 3),
(2013, 6, 14, 1, 2),
(2013, 6, 14, 2, 2),
(2013, 6, 14, 5, 1),
(2013, 6, 0, 9, 1),
(2013, 0, 0, 1, 17),
(2013, 6, 17, 2, 4),
(2013, 6, 17, 1, 2),
(2013, 6, 17, 4, 2),
(2013, 6, 17, 5, 2),
(2013, 6, 17, 6, 1),
(2013, 6, 18, 5, 1),
(2013, 6, 0, 2, 28),
(2013, 0, 0, 9, 1),
(2013, 6, 18, 4, 2),
(2013, 6, 18, 1, 3),
(2013, 6, 19, 7, 6),
(2013, 6, 19, 5, 1),
(2013, 6, 19, 2, 2),
(2013, 6, 19, 6, 2),
(2013, 6, 19, 3, 2),
(2013, 6, 19, 1, 3),
(2013, 6, 19, 4, 3),
(2013, 6, 0, 1, 22),
(2013, 0, 0, 8, 13),
(2013, 6, 20, 6, 1),
(2013, 6, 20, 4, 3),
(2013, 6, 20, 5, 2),
(2013, 6, 20, 1, 2),
(2013, 6, 20, 8, 3),
(2013, 6, 20, 2, 6),
(2013, 6, 20, 9, 1),
(2013, 6, 0, 5, 15),
(2013, 6, 0, 7, 10),
(2013, 0, 0, 7, 7),
(2013, 0, 0, 4, 24),
(2013, 6, 21, 4, 2),
(2013, 6, 21, 1, 2),
(2013, 6, 21, 2, 3),
(2013, 6, 21, 5, 1),
(2013, 6, 21, 8, 3),
(2013, 6, 21, 6, 3),
(2013, 6, 21, 10, 1),
(2013, 6, 0, 10, 3),
(2013, 0, 0, 2, 27),
(2013, 6, 23, 4, 2),
(2013, 6, 23, 2, 1),
(2013, 6, 23, 8, 1),
(2013, 6, 24, 8, 3),
(2013, 6, 24, 2, 2),
(2013, 6, 24, 5, 2),
(2013, 6, 24, 1, 1),
(2013, 6, 24, 4, 1),
(2013, 6, 24, 6, 1),
(2013, 6, 25, 8, 3),
(2013, 6, 25, 2, 5),
(2013, 6, 25, 4, 5),
(2013, 6, 25, 1, 1),
(2013, 6, 25, 5, 1),
(2013, 6, 25, 6, 1),
(2013, 6, 25, 7, 1),
(2013, 6, 25, 10, 1),
(2013, 6, 26, 4, 3),
(2013, 6, 26, 7, 2),
(2013, 6, 26, 1, 2),
(2013, 6, 26, 3, 2),
(2013, 6, 26, 5, 1),
(2013, 6, 26, 6, 1),
(2013, 6, 26, 11, 1),
(2013, 6, 27, 4, 3),
(2013, 6, 27, 5, 2),
(2013, 6, 27, 1, 2),
(2013, 6, 27, 3, 2),
(2013, 6, 27, 6, 1),
(2013, 6, 27, 7, 1),
(2013, 6, 27, 8, 1),
(2013, 6, 27, 10, 1),
(2013, 6, 27, 2, 1),
(2013, 6, 28, 4, 5),
(2013, 6, 28, 3, 2),
(2013, 6, 28, 1, 1),
(2013, 6, 28, 5, 1),
(2013, 6, 28, 6, 1),
(2013, 6, 0, 11, 1),
(2013, 7, 1, 4, 4),
(2013, 7, 1, 5, 2),
(2013, 7, 1, 6, 1),
(2013, 7, 1, 1, 1),
(2013, 7, 2, 4, 4),
(2013, 7, 2, 2, 2),
(2013, 7, 2, 1, 1),
(2013, 7, 2, 3, 1),
(2013, 7, 2, 5, 1),
(2013, 7, 2, 6, 1),
(2013, 7, 3, 4, 1),
(2013, 7, 3, 5, 1),
(2013, 7, 4, 4, 7),
(2013, 7, 4, 3, 5),
(2013, 7, 4, 5, 1),
(2013, 7, 4, 6, 1),
(2013, 7, 5, 4, 2),
(2013, 7, 5, 1, 1),
(2013, 7, 8, 4, 4),
(2013, 7, 8, 3, 1),
(2013, 7, 8, 12, 1),
(2013, 7, 9, 3, 2),
(2013, 7, 9, 13, 1),
(2013, 7, 9, 4, 1),
(2013, 7, 9, 5, 1),
(2013, 7, 10, 4, 5),
(2013, 7, 10, 1, 2),
(2013, 7, 11, 1, 7),
(2013, 7, 11, 2, 2),
(2013, 7, 11, 3, 2),
(2013, 7, 11, 13, 2),
(2013, 7, 11, 14, 2),
(2013, 7, 11, 4, 1),
(2013, 7, 11, 5, 1),
(2013, 7, 11, 6, 1),
(2013, 7, 12, 4, 6),
(2013, 7, 12, 1, 1),
(2013, 7, 15, 4, 3),
(2013, 7, 15, 3, 1),
(2013, 7, 15, 15, 1),
(2013, 7, 15, 1, 1),
(2013, 7, 16, 1, 3),
(2013, 7, 17, 4, 3),
(2013, 7, 17, 1, 3),
(2013, 7, 17, 3, 1),
(2013, 7, 18, 3, 3),
(2013, 7, 18, 4, 3),
(2013, 7, 18, 1, 1),
(2013, 7, 19, 3, 7),
(2013, 7, 19, 4, 4),
(2013, 7, 19, 2, 1),
(2013, 7, 19, 5, 1),
(2013, 7, 19, 16, 1),
(2013, 7, 22, 4, 3),
(2013, 7, 22, 3, 1),
(2013, 7, 23, 4, 5),
(2013, 7, 23, 3, 3),
(2013, 7, 23, 13, 1),
(2013, 7, 23, 17, 1),
(2013, 7, 23, 18, 1),
(2013, 7, 23, 19, 1),
(2013, 7, 23, 1, 1),
(2013, 7, 24, 4, 9),
(2013, 7, 24, 1, 5),
(2013, 7, 24, 3, 3),
(2013, 7, 24, 2, 1),
(2013, 7, 24, 5, 1),
(2013, 7, 25, 4, 6),
(2013, 7, 25, 20, 1),
(2013, 7, 26, 4, 1),
(2013, 7, 29, 1, 1),
(2013, 7, 31, 4, 1),
(2013, 7, 0, 4, 73),
(2013, 7, 0, 3, 30),
(2013, 7, 0, 1, 28),
(2013, 7, 0, 5, 9),
(2013, 7, 0, 2, 6),
(2013, 7, 0, 13, 4),
(2013, 7, 0, 6, 4),
(2013, 7, 0, 14, 2),
(2013, 7, 0, 19, 1),
(2013, 7, 0, 12, 1),
(2013, 7, 0, 20, 1),
(2013, 7, 0, 15, 1),
(2013, 7, 0, 16, 1),
(2013, 7, 0, 17, 1),
(2013, 7, 0, 18, 1),
(2013, 8, 1, 4, 6),
(2013, 8, 1, 17, 1),
(2013, 8, 1, 3, 1),
(2013, 8, 2, 6, 1),
(2013, 8, 2, 10, 1),
(2013, 8, 2, 13, 1),
(2013, 8, 2, 17, 1),
(2013, 8, 5, 5, 2),
(2013, 8, 7, 3, 2),
(2013, 8, 13, 4, 1),
(2013, 8, 20, 4, 2),
(2013, 8, 20, 9, 1),
(2013, 8, 21, 4, 2),
(2013, 8, 21, 1, 1),
(2013, 8, 22, 4, 4),
(2013, 8, 23, 4, 2),
(2013, 8, 26, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_stats_aggs_search_engines`
--

CREATE TABLE IF NOT EXISTS `livezilla_stats_aggs_search_engines` (
  `year` smallint(5) unsigned NOT NULL DEFAULT '0',
  `month` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `day` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `domain` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`year`,`month`,`day`,`domain`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_stats_aggs_systems`
--

CREATE TABLE IF NOT EXISTS `livezilla_stats_aggs_systems` (
  `year` smallint(5) unsigned NOT NULL DEFAULT '0',
  `month` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `day` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `system` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`year`,`month`,`day`,`system`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_stats_aggs_systems`
--

INSERT INTO `livezilla_stats_aggs_systems` (`year`, `month`, `day`, `system`, `amount`) VALUES
(2013, 6, 13, 1, 3),
(2013, 6, 0, 5, 1),
(2013, 0, 0, 2, 20),
(2013, 6, 13, 2, 1),
(2013, 6, 14, 1, 6),
(2013, 6, 0, 4, 5),
(2013, 0, 0, 3, 5),
(2013, 6, 14, 2, 2),
(2013, 6, 17, 1, 9),
(2013, 6, 17, 2, 2),
(2013, 6, 18, 1, 3),
(2013, 6, 18, 2, 3),
(2013, 6, 19, 4, 2),
(2013, 6, 19, 3, 4),
(2013, 6, 19, 2, 4),
(2013, 6, 19, 1, 9),
(2013, 6, 0, 3, 5),
(2013, 6, 0, 2, 28),
(2013, 0, 0, 4, 2),
(2013, 0, 0, 5, 1),
(2013, 6, 20, 5, 1),
(2013, 6, 20, 2, 2),
(2013, 6, 20, 1, 15),
(2013, 6, 0, 1, 109),
(2013, 0, 0, 6, 1),
(2013, 6, 21, 2, 2),
(2013, 6, 21, 1, 12),
(2013, 6, 21, 6, 1),
(2013, 6, 0, 6, 1),
(2013, 0, 0, 1, 86),
(2013, 6, 23, 1, 4),
(2013, 6, 24, 1, 9),
(2013, 6, 24, 2, 1),
(2013, 6, 25, 1, 14),
(2013, 6, 25, 2, 3),
(2013, 6, 25, 3, 1),
(2013, 6, 26, 1, 8),
(2013, 6, 26, 2, 2),
(2013, 6, 26, 4, 2),
(2013, 6, 27, 1, 10),
(2013, 6, 27, 2, 3),
(2013, 6, 27, 4, 1),
(2013, 6, 28, 1, 7),
(2013, 6, 28, 2, 3),
(2013, 7, 1, 1, 7),
(2013, 7, 1, 2, 1),
(2013, 7, 2, 1, 7),
(2013, 7, 2, 2, 3),
(2013, 7, 3, 1, 2),
(2013, 7, 4, 1, 10),
(2013, 7, 4, 2, 4),
(2013, 7, 5, 1, 2),
(2013, 7, 5, 2, 1),
(2013, 7, 8, 1, 6),
(2013, 7, 9, 1, 3),
(2013, 7, 9, 2, 2),
(2013, 7, 10, 1, 5),
(2013, 7, 10, 2, 2),
(2013, 7, 11, 2, 12),
(2013, 7, 11, 1, 4),
(2013, 7, 11, 7, 2),
(2013, 7, 12, 1, 6),
(2013, 7, 12, 2, 1),
(2013, 7, 15, 1, 4),
(2013, 7, 15, 2, 2),
(2013, 7, 16, 2, 3),
(2013, 7, 17, 2, 4),
(2013, 7, 17, 1, 3),
(2013, 7, 18, 1, 5),
(2013, 7, 18, 2, 2),
(2013, 7, 19, 2, 9),
(2013, 7, 19, 1, 4),
(2013, 7, 19, 8, 1),
(2013, 7, 22, 1, 4),
(2013, 7, 23, 2, 6),
(2013, 7, 23, 1, 5),
(2013, 7, 23, 9, 1),
(2013, 7, 23, 10, 1),
(2013, 7, 24, 2, 9),
(2013, 7, 24, 1, 8),
(2013, 7, 24, 7, 2),
(2013, 7, 25, 1, 5),
(2013, 7, 25, 2, 1),
(2013, 7, 25, 3, 1),
(2013, 7, 26, 2, 1),
(2013, 7, 29, 2, 1),
(2013, 7, 31, 1, 1),
(2013, 7, 0, 1, 91),
(2013, 7, 0, 2, 64),
(2013, 7, 0, 7, 4),
(2013, 7, 0, 10, 1),
(2013, 7, 0, 3, 1),
(2013, 7, 0, 8, 1),
(2013, 7, 0, 9, 1),
(2013, 8, 1, 1, 6),
(2013, 8, 1, 7, 1),
(2013, 8, 1, 9, 1),
(2013, 8, 2, 2, 2),
(2013, 8, 2, 1, 1),
(2013, 8, 2, 9, 1),
(2013, 8, 5, 1, 2),
(2013, 8, 7, 1, 1),
(2013, 8, 7, 2, 1),
(2013, 8, 13, 2, 1),
(2013, 8, 20, 1, 2),
(2013, 8, 20, 5, 1),
(2013, 8, 21, 1, 2),
(2013, 8, 21, 2, 1),
(2013, 8, 22, 1, 4),
(2013, 8, 23, 1, 2),
(2013, 8, 26, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_stats_aggs_visitors`
--

CREATE TABLE IF NOT EXISTS `livezilla_stats_aggs_visitors` (
  `year` smallint(5) unsigned NOT NULL DEFAULT '0',
  `month` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `day` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hour` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `visitors_unique` int(10) unsigned NOT NULL DEFAULT '0',
  `page_impressions` int(10) unsigned NOT NULL DEFAULT '0',
  `visitors_recurring` int(10) unsigned NOT NULL DEFAULT '0',
  `bounces` int(10) unsigned NOT NULL DEFAULT '0',
  `search_engine` int(10) unsigned NOT NULL DEFAULT '0',
  `from_referrer` int(10) unsigned NOT NULL DEFAULT '0',
  `browser_instances` int(10) unsigned NOT NULL DEFAULT '0',
  `js` int(10) unsigned NOT NULL DEFAULT '0',
  `on_chat_page` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`year`,`month`,`day`,`hour`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_stats_aggs_visitors`
--

INSERT INTO `livezilla_stats_aggs_visitors` (`year`, `month`, `day`, `hour`, `visitors_unique`, `page_impressions`, `visitors_recurring`, `bounces`, `search_engine`, `from_referrer`, `browser_instances`, `js`, `on_chat_page`) VALUES
(2013, 6, 13, 14, 4, 19, 0, 2, 0, 0, 14, 4, 10),
(2013, 6, 14, 4, 1, 7, 0, 0, 0, 0, 1, 1, 0),
(2013, 6, 14, 5, 2, 12, 1, 0, 0, 0, 6, 2, 3),
(2013, 6, 14, 6, 4, 21, 2, 0, 0, 0, 9, 4, 4),
(2013, 6, 14, 7, 0, 16, 0, 0, 0, 0, 4, 0, 3),
(2013, 6, 14, 8, 0, 9, 0, 0, 0, 0, 0, 0, 0),
(2013, 6, 14, 9, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(2013, 6, 14, 10, 0, 24, 0, 0, 0, 0, 2, 0, 1),
(2013, 6, 14, 11, 1, 13, 0, 0, 0, 0, 2, 1, 0),
(2013, 6, 14, 12, 0, 25, 0, 0, 0, 0, 0, 0, 0),
(2013, 6, 14, 13, 0, 14, 0, 0, 0, 0, 1, 0, 1),
(2013, 6, 17, 4, 1, 2, 1, 0, 0, 0, 1, 1, 0),
(2013, 6, 17, 5, 4, 57, 4, 0, 0, 0, 7, 4, 1),
(2013, 6, 17, 6, 2, 67, 0, 0, 0, 0, 5, 2, 0),
(2013, 6, 17, 7, 0, 63, 0, 0, 0, 0, 1, 0, 0),
(2013, 6, 17, 8, 0, 22, 0, 0, 0, 0, 0, 0, 0),
(2013, 6, 17, 9, 0, 30, 0, 0, 0, 0, 0, 0, 0),
(2013, 6, 17, 10, 1, 22, 1, 0, 0, 0, 1, 1, 0),
(2013, 6, 17, 11, 1, 13, 1, 0, 0, 0, 2, 1, 0),
(2013, 6, 17, 12, 2, 24, 2, 0, 0, 0, 2, 2, 0),
(2013, 6, 17, 13, 0, 33, 0, 0, 0, 0, 1, 0, 0),
(2013, 6, 17, 14, 0, 11, 0, 0, 0, 0, 0, 0, 0),
(2013, 6, 18, 10, 0, 22, 0, 0, 0, 0, 1, 0, 0),
(2013, 6, 18, 9, 1, 29, 1, 0, 0, 0, 1, 1, 0),
(2013, 6, 18, 8, 0, 5, 0, 0, 0, 0, 1, 0, 0),
(2013, 6, 18, 7, 0, 6, 0, 0, 0, 0, 1, 0, 0),
(2013, 6, 18, 6, 0, 15, 0, 0, 0, 0, 3, 0, 0),
(2013, 6, 18, 5, 2, 55, 2, 0, 0, 0, 8, 2, 1),
(2013, 6, 18, 4, 2, 5, 1, 0, 0, 0, 3, 2, 0),
(2013, 6, 18, 11, 0, 28, 0, 0, 0, 0, 2, 0, 0),
(2013, 6, 18, 12, 0, 2, 0, 0, 0, 0, 0, 0, 0),
(2013, 6, 18, 13, 0, 25, 0, 0, 0, 0, 0, 0, 0),
(2013, 6, 18, 14, 1, 25, 1, 0, 0, 0, 2, 1, 0),
(2013, 6, 18, 15, 0, 3, 0, 0, 0, 0, 0, 0, 0),
(2013, 6, 19, 13, 0, 2, 0, 0, 0, 0, 2, 0, 0),
(2013, 6, 19, 12, 4, 25, 0, 2, 0, 0, 5, 4, 0),
(2013, 6, 19, 11, 1, 31, 0, 0, 0, 0, 3, 1, 0),
(2013, 6, 19, 10, 2, 14, 0, 0, 0, 0, 3, 2, 0),
(2013, 6, 19, 9, 1, 10, 1, 0, 0, 0, 2, 1, 0),
(2013, 6, 19, 8, 3, 11, 2, 0, 0, 0, 5, 3, 0),
(2013, 6, 19, 7, 2, 24, 2, 0, 0, 0, 3, 2, 0),
(2013, 6, 19, 6, 2, 19, 2, 0, 0, 0, 5, 2, 0),
(2013, 6, 19, 5, 1, 6, 1, 0, 0, 0, 1, 1, 0),
(2013, 6, 19, 4, 1, 5, 1, 0, 0, 0, 1, 1, 0),
(2013, 6, 19, 15, 2, 16, 2, 0, 0, 0, 2, 2, 0),
(2013, 6, 20, 10, 0, 27, 0, 0, 0, 0, 5, 0, 0),
(2013, 6, 20, 9, 3, 24, 2, 0, 0, 0, 6, 3, 0),
(2013, 6, 20, 8, 4, 31, 2, 1, 0, 0, 9, 4, 0),
(2013, 6, 20, 7, 3, 10, 1, 1, 0, 0, 6, 3, 0),
(2013, 6, 20, 6, 1, 60, 1, 0, 0, 0, 5, 1, 0),
(2013, 6, 20, 5, 3, 15, 3, 0, 0, 0, 3, 3, 0),
(2013, 6, 20, 4, 2, 48, 1, 0, 0, 0, 3, 2, 0),
(2013, 6, 20, 11, 0, 28, 0, 0, 0, 0, 3, 0, 0),
(2013, 6, 20, 12, 0, 27, 0, 0, 0, 0, 3, 0, 0),
(2013, 6, 20, 13, 0, 26, 0, 0, 0, 0, 4, 0, 0),
(2013, 6, 20, 14, 1, 62, 0, 0, 0, 0, 6, 1, 1),
(2013, 6, 20, 15, 0, 22, 0, 0, 0, 0, 1, 0, 0),
(2013, 6, 20, 16, 1, 18, 1, 0, 0, 0, 3, 1, 0),
(2013, 6, 21, 10, 0, 55, 0, 0, 0, 0, 7, 0, 0),
(2013, 6, 21, 9, 0, 59, 0, 0, 0, 0, 1, 0, 0),
(2013, 6, 21, 8, 0, 41, 0, 0, 0, 0, 4, 0, 0),
(2013, 6, 21, 7, 0, 33, 0, 0, 0, 0, 3, 0, 0),
(2013, 6, 21, 6, 1, 35, 1, 0, 0, 0, 2, 1, 0),
(2013, 6, 21, 5, 7, 71, 6, 0, 0, 0, 17, 7, 0),
(2013, 6, 21, 4, 2, 58, 1, 0, 0, 0, 2, 2, 0),
(2013, 6, 21, 11, 1, 34, 0, 0, 0, 0, 1, 1, 0),
(2013, 6, 21, 12, 0, 27, 0, 0, 0, 0, 2, 0, 0),
(2013, 6, 21, 13, 1, 77, 1, 0, 0, 0, 4, 1, 0),
(2013, 6, 21, 14, 1, 114, 1, 0, 0, 0, 5, 1, 0),
(2013, 6, 21, 15, 1, 58, 1, 0, 0, 0, 4, 1, 0),
(2013, 6, 21, 16, 0, 31, 0, 0, 0, 0, 3, 0, 0),
(2013, 6, 21, 19, 1, 1, 0, 0, 0, 0, 1, 1, 0),
(2013, 6, 21, 20, 0, 7, 0, 0, 0, 0, 0, 0, 0),
(2013, 6, 23, 5, 1, 10, 1, 0, 0, 0, 1, 1, 0),
(2013, 6, 23, 6, 0, 20, 0, 0, 0, 0, 3, 0, 0),
(2013, 6, 23, 7, 1, 34, 0, 0, 0, 0, 4, 1, 0),
(2013, 6, 23, 8, 0, 55, 0, 0, 0, 0, 5, 0, 0),
(2013, 6, 23, 9, 0, 17, 0, 0, 0, 0, 1, 0, 0),
(2013, 6, 23, 13, 2, 6, 2, 0, 0, 0, 2, 2, 0),
(2013, 6, 24, 4, 1, 6, 1, 0, 0, 0, 5, 1, 0),
(2013, 6, 24, 5, 1, 19, 1, 0, 0, 0, 3, 1, 0),
(2013, 6, 24, 6, 1, 63, 1, 0, 0, 0, 1, 1, 0),
(2013, 6, 24, 7, 2, 28, 1, 1, 0, 0, 6, 2, 1),
(2013, 6, 24, 8, 0, 6, 0, 0, 0, 0, 2, 0, 2),
(2013, 6, 24, 9, 1, 114, 1, 0, 0, 0, 8, 1, 2),
(2013, 6, 24, 10, 1, 131, 1, 0, 0, 0, 10, 1, 3),
(2013, 6, 24, 11, 1, 119, 1, 0, 0, 0, 7, 1, 0),
(2013, 6, 24, 12, 1, 77, 1, 0, 0, 0, 7, 1, 1),
(2013, 6, 24, 13, 0, 44, 0, 0, 0, 0, 3, 0, 0),
(2013, 6, 24, 14, 0, 10, 0, 0, 0, 0, 0, 0, 0),
(2013, 6, 24, 16, 1, 33, 1, 0, 0, 0, 1, 1, 0),
(2013, 6, 25, 5, 2, 24, 2, 0, 0, 0, 5, 2, 0),
(2013, 6, 25, 4, 3, 16, 0, 1, 0, 0, 3, 3, 0),
(2013, 6, 25, 6, 0, 22, 0, 0, 0, 0, 1, 0, 0),
(2013, 6, 25, 7, 1, 52, 1, 0, 0, 0, 1, 1, 0),
(2013, 6, 25, 8, 1, 39, 0, 0, 0, 0, 2, 1, 0),
(2013, 6, 25, 9, 2, 41, 2, 0, 0, 0, 3, 2, 0),
(2013, 6, 25, 10, 1, 15, 1, 0, 0, 0, 2, 1, 0),
(2013, 6, 25, 11, 4, 119, 1, 2, 0, 0, 7, 4, 0),
(2013, 6, 25, 12, 3, 22, 3, 1, 0, 0, 5, 3, 0),
(2013, 6, 25, 13, 0, 14, 0, 0, 0, 0, 4, 0, 0),
(2013, 6, 25, 14, 1, 45, 1, 0, 0, 0, 6, 1, 1),
(2013, 6, 25, 15, 0, 26, 0, 0, 0, 0, 0, 0, 0),
(2013, 6, 26, 3, 1, 11, 1, 0, 0, 0, 2, 1, 0),
(2013, 6, 26, 4, 0, 14, 0, 0, 0, 0, 0, 0, 0),
(2013, 6, 26, 5, 2, 65, 2, 0, 0, 0, 13, 2, 0),
(2013, 6, 26, 6, 1, 80, 0, 0, 0, 0, 11, 1, 0),
(2013, 6, 26, 7, 0, 44, 0, 0, 0, 0, 1, 0, 0),
(2013, 6, 26, 8, 0, 43, 0, 0, 0, 0, 0, 0, 0),
(2013, 6, 26, 9, 0, 38, 0, 0, 0, 0, 2, 0, 0),
(2013, 6, 26, 10, 3, 111, 0, 0, 0, 0, 20, 3, 0),
(2013, 6, 26, 11, 0, 39, 0, 0, 0, 0, 5, 0, 0),
(2013, 6, 26, 12, 2, 69, 1, 1, 0, 0, 9, 2, 1),
(2013, 6, 26, 13, 0, 19, 0, 0, 0, 0, 3, 0, 0),
(2013, 6, 26, 14, 3, 40, 3, 0, 0, 0, 9, 3, 0),
(2013, 6, 27, 3, 3, 13, 2, 1, 0, 0, 5, 3, 0),
(2013, 6, 27, 5, 3, 44, 3, 0, 0, 0, 9, 3, 0),
(2013, 6, 27, 6, 2, 16, 1, 1, 0, 0, 4, 2, 0),
(2013, 6, 27, 7, 0, 6, 0, 0, 0, 0, 1, 0, 0),
(2013, 6, 27, 8, 1, 37, 1, 0, 0, 0, 2, 1, 0),
(2013, 6, 27, 9, 0, 28, 0, 0, 0, 0, 0, 0, 0),
(2013, 6, 27, 10, 2, 65, 2, 0, 0, 0, 3, 2, 0),
(2013, 6, 27, 11, 0, 57, 0, 0, 0, 0, 6, 0, 0),
(2013, 6, 27, 12, 0, 74, 0, 0, 0, 0, 9, 0, 0),
(2013, 6, 27, 13, 1, 16, 0, 1, 0, 0, 4, 1, 0),
(2013, 6, 27, 14, 2, 60, 2, 2, 0, 0, 5, 2, 0),
(2013, 6, 27, 15, 0, 17, 0, 0, 0, 0, 0, 0, 0),
(2013, 6, 28, 5, 4, 30, 4, 0, 0, 0, 7, 4, 0),
(2013, 6, 28, 6, 1, 38, 1, 0, 0, 0, 6, 1, 0),
(2013, 6, 28, 7, 0, 28, 0, 0, 0, 0, 6, 0, 0),
(2013, 6, 28, 8, 1, 59, 1, 0, 0, 0, 3, 1, 0),
(2013, 6, 28, 9, 0, 108, 0, 0, 0, 0, 1, 0, 0),
(2013, 6, 28, 10, 0, 73, 0, 0, 0, 0, 1, 0, 0),
(2013, 6, 28, 11, 0, 72, 0, 0, 0, 0, 2, 0, 0),
(2013, 6, 28, 12, 4, 77, 1, 1, 0, 0, 12, 4, 1),
(2013, 6, 28, 13, 0, 97, 0, 0, 0, 0, 0, 0, 0),
(2013, 6, 28, 14, 0, 82, 0, 0, 0, 0, 4, 0, 0),
(2013, 6, 28, 15, 0, 9, 0, 0, 0, 0, 2, 0, 0),
(2013, 7, 1, 5, 3, 24, 3, 0, 0, 0, 6, 3, 0),
(2013, 7, 1, 6, 1, 56, 0, 0, 0, 0, 2, 1, 0),
(2013, 7, 1, 7, 0, 15, 0, 0, 0, 0, 0, 0, 0),
(2013, 7, 1, 8, 0, 22, 0, 0, 0, 0, 2, 0, 0),
(2013, 7, 1, 9, 2, 34, 2, 1, 0, 0, 6, 2, 0),
(2013, 7, 1, 10, 0, 39, 0, 0, 0, 0, 4, 0, 0),
(2013, 7, 1, 11, 0, 22, 0, 0, 0, 0, 1, 0, 0),
(2013, 7, 1, 12, 0, 11, 0, 0, 0, 0, 1, 0, 0),
(2013, 7, 1, 13, 1, 62, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 1, 14, 1, 89, 1, 0, 0, 0, 3, 1, 0),
(2013, 7, 1, 15, 0, 18, 0, 0, 0, 0, 2, 0, 0),
(2013, 7, 2, 4, 2, 22, 1, 0, 0, 0, 4, 2, 0),
(2013, 7, 2, 5, 1, 36, 1, 0, 0, 0, 3, 1, 0),
(2013, 7, 2, 6, 1, 72, 1, 0, 0, 0, 2, 1, 0),
(2013, 7, 2, 7, 0, 108, 0, 0, 0, 0, 1, 0, 0),
(2013, 7, 2, 8, 1, 28, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 2, 9, 0, 21, 0, 0, 0, 0, 2, 0, 1),
(2013, 7, 2, 10, 3, 61, 3, 0, 0, 0, 5, 3, 0),
(2013, 7, 2, 11, 2, 79, 2, 0, 0, 0, 3, 2, 0),
(2013, 7, 2, 12, 0, 29, 0, 0, 0, 0, 2, 0, 0),
(2013, 7, 3, 5, 1, 1, 0, 0, 0, 0, 1, 1, 0),
(2013, 7, 3, 7, 0, 1, 0, 0, 0, 0, 1, 0, 0),
(2013, 7, 3, 10, 1, 3, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 4, 5, 4, 11, 4, 0, 0, 0, 4, 4, 0),
(2013, 7, 4, 6, 3, 111, 2, 0, 0, 0, 7, 3, 0),
(2013, 7, 4, 7, 4, 6, 2, 1, 0, 0, 5, 4, 0),
(2013, 7, 4, 8, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(2013, 7, 4, 9, 1, 23, 1, 0, 0, 0, 4, 1, 0),
(2013, 7, 4, 10, 0, 52, 0, 0, 0, 0, 3, 0, 0),
(2013, 7, 4, 11, 2, 52, 2, 1, 0, 0, 5, 2, 0),
(2013, 7, 4, 12, 0, 4, 0, 0, 0, 0, 3, 0, 0),
(2013, 7, 4, 14, 0, 18, 0, 0, 0, 0, 6, 0, 0),
(2013, 7, 4, 15, 0, 2, 0, 0, 0, 0, 1, 0, 0),
(2013, 7, 5, 5, 2, 9, 2, 0, 0, 0, 2, 2, 0),
(2013, 7, 5, 16, 1, 25, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 8, 7, 1, 2, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 8, 8, 1, 9, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 8, 9, 1, 35, 1, 0, 0, 0, 4, 1, 0),
(2013, 7, 8, 10, 0, 41, 0, 0, 0, 0, 1, 0, 0),
(2013, 7, 8, 11, 3, 24, 0, 1, 0, 0, 3, 3, 0),
(2013, 7, 9, 8, 3, 19, 3, 1, 0, 0, 4, 3, 0),
(2013, 7, 9, 9, 1, 45, 0, 0, 0, 0, 3, 1, 0),
(2013, 7, 9, 10, 0, 74, 0, 0, 0, 0, 1, 0, 0),
(2013, 7, 9, 11, 0, 82, 0, 0, 0, 0, 3, 0, 0),
(2013, 7, 9, 12, 0, 87, 0, 0, 0, 0, 0, 0, 0),
(2013, 7, 9, 13, 1, 44, 0, 1, 0, 0, 3, 1, 0),
(2013, 7, 9, 14, 0, 21, 0, 0, 0, 0, 0, 0, 0),
(2013, 7, 9, 15, 0, 17, 0, 0, 0, 0, 1, 0, 0),
(2013, 7, 10, 3, 1, 1, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 10, 4, 1, 1, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 10, 7, 1, 29, 1, 0, 0, 0, 8, 1, 1),
(2013, 7, 10, 8, 1, 9, 1, 0, 0, 0, 3, 1, 0),
(2013, 7, 10, 10, 0, 23, 0, 0, 0, 0, 1, 0, 0),
(2013, 7, 10, 11, 1, 64, 1, 0, 0, 0, 2, 1, 0),
(2013, 7, 10, 12, 1, 1, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 10, 13, 1, 8, 1, 0, 0, 0, 2, 1, 0),
(2013, 7, 11, 5, 6, 100, 2, 1, 0, 0, 11, 6, 0),
(2013, 7, 11, 6, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(2013, 7, 11, 7, 2, 3, 1, 1, 0, 0, 2, 2, 0),
(2013, 7, 11, 8, 3, 4, 2, 0, 0, 0, 4, 3, 0),
(2013, 7, 11, 9, 4, 26, 3, 1, 0, 0, 7, 4, 1),
(2013, 7, 11, 10, 3, 38, 3, 0, 0, 0, 4, 3, 0),
(2013, 7, 11, 11, 0, 14, 0, 0, 0, 0, 0, 0, 0),
(2013, 7, 11, 12, 0, 15, 0, 0, 0, 0, 4, 0, 0),
(2013, 7, 11, 13, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(2013, 7, 11, 14, 0, 41, 0, 0, 0, 0, 2, 0, 0),
(2013, 7, 12, 4, 1, 2, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 12, 5, 1, 1, 0, 1, 0, 0, 1, 1, 0),
(2013, 7, 12, 6, 0, 4, 0, 0, 0, 0, 2, 0, 0),
(2013, 7, 12, 7, 0, 31, 0, 0, 0, 0, 1, 0, 0),
(2013, 7, 12, 8, 1, 37, 0, 0, 0, 0, 3, 1, 0),
(2013, 7, 12, 9, 1, 30, 1, 0, 0, 0, 5, 1, 0),
(2013, 7, 12, 10, 1, 27, 1, 0, 0, 0, 2, 1, 0),
(2013, 7, 12, 11, 0, 1, 0, 0, 0, 0, 1, 0, 0),
(2013, 7, 12, 13, 0, 8, 0, 0, 0, 0, 0, 0, 0),
(2013, 7, 12, 14, 2, 6, 2, 0, 0, 0, 2, 2, 0),
(2013, 7, 15, 4, 1, 1, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 15, 5, 0, 15, 0, 0, 0, 0, 0, 0, 0),
(2013, 7, 15, 6, 0, 24, 0, 0, 0, 0, 1, 0, 0),
(2013, 7, 15, 7, 0, 22, 0, 0, 0, 0, 0, 0, 0),
(2013, 7, 15, 8, 0, 22, 0, 0, 0, 0, 0, 0, 0),
(2013, 7, 15, 9, 2, 118, 1, 1, 0, 0, 5, 2, 0),
(2013, 7, 15, 10, 1, 50, 1, 1, 0, 0, 4, 1, 0),
(2013, 7, 15, 11, 1, 4, 1, 0, 0, 0, 2, 1, 0),
(2013, 7, 15, 12, 1, 3, 1, 0, 0, 0, 2, 1, 0),
(2013, 7, 15, 13, 0, 1, 0, 0, 0, 0, 1, 0, 0),
(2013, 7, 16, 5, 1, 1, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 16, 8, 1, 2, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 16, 11, 1, 2, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 17, 6, 1, 1, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 17, 7, 1, 2, 1, 0, 0, 0, 2, 1, 0),
(2013, 7, 17, 10, 1, 2, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 17, 11, 2, 23, 2, 0, 0, 0, 6, 2, 0),
(2013, 7, 17, 14, 1, 5, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 17, 16, 1, 1, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 18, 4, 1, 72, 1, 0, 0, 0, 3, 1, 0),
(2013, 7, 18, 5, 0, 51, 0, 0, 0, 0, 2, 0, 0),
(2013, 7, 18, 6, 2, 34, 2, 0, 0, 0, 4, 2, 0),
(2013, 7, 18, 7, 1, 39, 0, 0, 0, 1, 5, 1, 1),
(2013, 7, 18, 8, 1, 54, 1, 0, 0, 0, 4, 1, 0),
(2013, 7, 18, 9, 0, 99, 0, 0, 0, 0, 1, 0, 0),
(2013, 7, 18, 10, 0, 70, 0, 0, 0, 0, 1, 0, 0),
(2013, 7, 18, 11, 1, 15, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 18, 12, 0, 40, 0, 0, 0, 0, 1, 0, 0),
(2013, 7, 18, 13, 1, 37, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 18, 14, 0, 38, 0, 0, 0, 0, 0, 0, 0),
(2013, 7, 18, 15, 0, 11, 0, 0, 0, 0, 0, 0, 0),
(2013, 7, 19, 4, 2, 48, 2, 0, 0, 0, 5, 2, 0),
(2013, 7, 19, 5, 3, 79, 1, 1, 0, 0, 4, 3, 0),
(2013, 7, 19, 6, 2, 40, 1, 1, 0, 0, 3, 2, 0),
(2013, 7, 19, 7, 3, 54, 1, 1, 0, 0, 4, 2, 0),
(2013, 7, 19, 8, 0, 12, 0, 0, 0, 0, 1, 0, 0),
(2013, 7, 19, 9, 0, 29, 0, 0, 0, 0, 3, 0, 3),
(2013, 7, 19, 10, 0, 21, 0, 0, 0, 0, 0, 0, 0),
(2013, 7, 19, 11, 1, 63, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 19, 12, 2, 12, 2, 1, 0, 0, 3, 2, 0),
(2013, 7, 19, 13, 1, 11, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 19, 14, 0, 26, 0, 0, 0, 0, 1, 0, 0),
(2013, 7, 22, 6, 1, 1, 0, 1, 0, 1, 1, 1, 0),
(2013, 7, 22, 8, 1, 6, 1, 0, 0, 0, 2, 1, 0),
(2013, 7, 22, 9, 1, 23, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 22, 10, 0, 14, 0, 0, 0, 0, 1, 0, 0),
(2013, 7, 22, 11, 0, 13, 0, 0, 0, 0, 1, 0, 0),
(2013, 7, 22, 12, 0, 33, 0, 0, 0, 0, 0, 0, 0),
(2013, 7, 22, 13, 0, 30, 0, 0, 0, 0, 0, 0, 0),
(2013, 7, 22, 14, 1, 5, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 22, 15, 0, 2, 0, 0, 0, 0, 0, 0, 0),
(2013, 7, 23, 4, 1, 9, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 23, 5, 2, 41, 1, 0, 0, 0, 3, 2, 0),
(2013, 7, 23, 6, 0, 35, 0, 0, 0, 0, 2, 0, 0),
(2013, 7, 23, 7, 1, 61, 1, 0, 0, 0, 3, 1, 0),
(2013, 7, 23, 8, 0, 8, 0, 0, 0, 0, 1, 0, 0),
(2013, 7, 23, 9, 3, 23, 3, 0, 0, 0, 3, 3, 0),
(2013, 7, 23, 10, 0, 40, 0, 0, 0, 0, 6, 0, 0),
(2013, 7, 23, 11, 1, 101, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 23, 12, 1, 73, 1, 0, 0, 0, 4, 1, 0),
(2013, 7, 23, 13, 0, 64, 0, 0, 0, 0, 1, 0, 1),
(2013, 7, 23, 14, 1, 11, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 23, 15, 2, 21, 0, 1, 0, 0, 4, 2, 0),
(2013, 7, 23, 18, 1, 1, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 24, 3, 4, 27, 3, 0, 0, 0, 5, 4, 0),
(2013, 7, 24, 4, 3, 23, 3, 0, 0, 0, 5, 3, 0),
(2013, 7, 24, 5, 0, 4, 0, 0, 0, 0, 1, 0, 0),
(2013, 7, 24, 6, 2, 18, 1, 0, 0, 0, 6, 2, 0),
(2013, 7, 24, 7, 0, 8, 0, 0, 0, 0, 0, 0, 0),
(2013, 7, 24, 8, 0, 5, 0, 0, 0, 0, 1, 0, 0),
(2013, 7, 24, 10, 0, 30, 0, 0, 0, 2, 1, 0, 0),
(2013, 7, 24, 11, 1, 56, 1, 0, 0, 1, 1, 1, 0),
(2013, 7, 24, 12, 3, 72, 3, 0, 0, 4, 4, 3, 0),
(2013, 7, 24, 13, 2, 17, 2, 0, 0, 0, 4, 2, 0),
(2013, 7, 24, 14, 0, 30, 0, 0, 0, 0, 3, 0, 0),
(2013, 7, 24, 15, 3, 86, 3, 0, 0, 0, 5, 3, 0),
(2013, 7, 24, 16, 1, 37, 1, 0, 0, 0, 2, 1, 0),
(2013, 7, 25, 6, 1, 10, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 25, 7, 1, 23, 1, 1, 0, 0, 2, 1, 0),
(2013, 7, 25, 8, 0, 32, 0, 0, 0, 0, 2, 0, 0),
(2013, 7, 25, 9, 0, 49, 0, 0, 0, 0, 2, 0, 0),
(2013, 7, 25, 10, 2, 73, 1, 0, 0, 0, 5, 2, 0),
(2013, 7, 25, 11, 1, 7, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 25, 12, 1, 1, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 25, 13, 1, 1, 1, 0, 0, 0, 1, 1, 0),
(2013, 7, 26, 8, 1, 1, 1, 1, 0, 0, 1, 1, 0),
(2013, 7, 29, 8, 1, 1, 0, 1, 0, 1, 1, 1, 0),
(2013, 7, 31, 6, 1, 1, 0, 1, 0, 0, 1, 1, 0),
(2013, 8, 1, 7, 5, 43, 3, 0, 0, 0, 5, 5, 0),
(2013, 8, 1, 8, 2, 12, 2, 0, 0, 1, 2, 2, 0),
(2013, 8, 1, 18, 1, 3, 0, 0, 0, 0, 1, 1, 0),
(2013, 8, 2, 4, 1, 1, 0, 1, 0, 1, 1, 1, 0),
(2013, 8, 2, 9, 1, 11, 0, 0, 0, 1, 1, 1, 0),
(2013, 8, 2, 13, 1, 1, 1, 1, 0, 0, 1, 1, 0),
(2013, 8, 2, 14, 1, 1, 0, 1, 0, 1, 1, 1, 0),
(2013, 8, 5, 4, 1, 3, 1, 0, 0, 0, 1, 1, 0),
(2013, 8, 5, 7, 1, 4, 1, 0, 0, 0, 1, 1, 0),
(2013, 8, 5, 10, 0, 2, 0, 0, 0, 0, 0, 0, 0),
(2013, 8, 7, 7, 1, 4, 0, 0, 0, 1, 2, 1, 1),
(2013, 8, 7, 10, 1, 2, 0, 0, 0, 1, 1, 1, 0),
(2013, 8, 13, 14, 1, 1, 0, 1, 0, 1, 1, 1, 0),
(2013, 8, 20, 3, 1, 2, 0, 0, 0, 0, 1, 1, 0),
(2013, 8, 20, 4, 1, 35, 1, 0, 0, 0, 4, 1, 0),
(2013, 8, 20, 11, 1, 19, 1, 0, 0, 0, 2, 1, 0),
(2013, 8, 21, 4, 1, 3, 0, 0, 0, 0, 1, 1, 0),
(2013, 8, 21, 5, 1, 4, 0, 0, 0, 0, 2, 1, 0),
(2013, 8, 21, 7, 1, 8, 0, 0, 0, 0, 6, 1, 1),
(2013, 8, 21, 8, 0, 3, 0, 0, 0, 0, 1, 0, 0),
(2013, 8, 21, 11, 0, 1, 0, 0, 0, 0, 0, 0, 0),
(2013, 8, 21, 14, 0, 1, 0, 0, 0, 0, 1, 0, 0),
(2013, 8, 22, 7, 1, 1, 0, 0, 0, 0, 1, 1, 0),
(2013, 8, 22, 8, 1, 22, 1, 0, 0, 0, 1, 1, 0),
(2013, 8, 22, 12, 1, 2, 0, 0, 0, 0, 1, 1, 0),
(2013, 8, 22, 13, 1, 3, 1, 0, 0, 0, 1, 1, 0),
(2013, 8, 23, 5, 1, 6, 1, 0, 0, 0, 1, 1, 0),
(2013, 8, 23, 6, 0, 11, 0, 0, 0, 0, 0, 0, 0),
(2013, 8, 23, 7, 0, 18, 0, 0, 0, 0, 2, 0, 0),
(2013, 8, 23, 11, 1, 1, 1, 0, 0, 0, 1, 1, 0),
(2013, 8, 26, 6, 1, 2, 1, 0, 0, 0, 1, 1, 0),
(2013, 8, 26, 7, 0, 5, 0, 0, 0, 0, 0, 0, 0),
(2013, 8, 26, 11, 0, 1, 0, 0, 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_stats_aggs_visits`
--

CREATE TABLE IF NOT EXISTS `livezilla_stats_aggs_visits` (
  `year` smallint(5) unsigned NOT NULL DEFAULT '0',
  `month` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `day` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `visits` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`year`,`month`,`day`,`visits`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_stats_aggs_visits`
--

INSERT INTO `livezilla_stats_aggs_visits` (`year`, `month`, `day`, `visits`, `amount`) VALUES
(2013, 6, 13, 1, 4),
(2013, 6, 0, 18, 2),
(2013, 0, 0, 8, 4),
(2013, 6, 14, 1, 5),
(2013, 6, 14, 2, 2),
(2013, 6, 14, 3, 1),
(2013, 6, 0, 21, 1),
(2013, 6, 0, 16, 1),
(2013, 0, 0, 10, 2),
(2013, 0, 0, 4, 7),
(2013, 6, 17, 3, 2),
(2013, 6, 17, 1, 2),
(2013, 6, 17, 2, 2),
(2013, 6, 17, 6, 1),
(2013, 6, 17, 7, 1),
(2013, 6, 17, 8, 1),
(2013, 6, 17, 4, 1),
(2013, 6, 17, 5, 1),
(2013, 6, 18, 5, 1),
(2013, 6, 0, 13, 2),
(2013, 6, 0, 12, 2),
(2013, 6, 0, 20, 2),
(2013, 6, 0, 14, 3),
(2013, 6, 0, 19, 3),
(2013, 0, 0, 6, 5),
(2013, 0, 0, 5, 6),
(2013, 0, 0, 3, 8),
(2013, 0, 0, 1, 40),
(2013, 0, 0, 7, 4),
(2013, 6, 18, 4, 2),
(2013, 6, 18, 1, 1),
(2013, 6, 18, 6, 1),
(2013, 6, 18, 3, 1),
(2013, 6, 19, 4, 1),
(2013, 6, 19, 6, 2),
(2013, 6, 19, 5, 2),
(2013, 6, 19, 8, 1),
(2013, 6, 19, 7, 1),
(2013, 6, 19, 2, 3),
(2013, 6, 19, 1, 8),
(2013, 6, 19, 3, 1),
(2013, 6, 20, 5, 1),
(2013, 6, 20, 8, 1),
(2013, 6, 20, 11, 1),
(2013, 6, 20, 10, 1),
(2013, 6, 20, 7, 1),
(2013, 6, 20, 2, 2),
(2013, 6, 20, 9, 2),
(2013, 6, 20, 1, 7),
(2013, 6, 20, 12, 1),
(2013, 6, 20, 13, 1),
(2013, 6, 0, 17, 1),
(2013, 6, 0, 11, 3),
(2013, 6, 0, 9, 3),
(2013, 6, 0, 4, 10),
(2013, 6, 0, 3, 13),
(2013, 0, 0, 9, 3),
(2013, 0, 0, 2, 20),
(2013, 0, 0, 20, 1),
(2013, 0, 0, 21, 1),
(2013, 0, 0, 12, 2),
(2013, 6, 21, 14, 1),
(2013, 6, 21, 15, 1),
(2013, 6, 21, 10, 1),
(2013, 6, 21, 3, 1),
(2013, 6, 21, 2, 4),
(2013, 6, 21, 1, 4),
(2013, 6, 21, 11, 1),
(2013, 6, 0, 8, 4),
(2013, 6, 0, 2, 23),
(2013, 6, 0, 1, 51),
(2013, 0, 0, 18, 2),
(2013, 0, 0, 19, 2),
(2013, 0, 0, 13, 2),
(2013, 6, 21, 16, 1),
(2013, 6, 21, 6, 1),
(2013, 6, 23, 17, 1),
(2013, 6, 23, 18, 1),
(2013, 6, 23, 19, 1),
(2013, 6, 23, 1, 1),
(2013, 6, 24, 2, 3),
(2013, 6, 0, 15, 4),
(2013, 6, 0, 6, 6),
(2013, 6, 0, 10, 3),
(2013, 0, 0, 14, 1),
(2013, 0, 0, 15, 1),
(2013, 0, 0, 11, 2),
(2013, 6, 24, 4, 2),
(2013, 6, 24, 12, 1),
(2013, 6, 24, 18, 1),
(2013, 6, 24, 3, 1),
(2013, 6, 24, 7, 1),
(2013, 6, 24, 1, 1),
(2013, 6, 25, 1, 7),
(2013, 6, 25, 2, 3),
(2013, 6, 25, 3, 1),
(2013, 6, 25, 4, 1),
(2013, 6, 25, 13, 1),
(2013, 6, 25, 19, 1),
(2013, 6, 25, 20, 1),
(2013, 6, 25, 21, 1),
(2013, 6, 25, 8, 1),
(2013, 6, 25, 5, 1),
(2013, 6, 26, 1, 5),
(2013, 6, 26, 2, 2),
(2013, 6, 0, 5, 6),
(2013, 6, 0, 7, 6),
(2013, 0, 0, 16, 1),
(2013, 0, 0, 17, 1),
(2013, 6, 26, 14, 1),
(2013, 6, 26, 15, 1),
(2013, 6, 26, 9, 1),
(2013, 6, 26, 6, 1),
(2013, 6, 26, 3, 1),
(2013, 6, 27, 3, 3),
(2013, 6, 27, 1, 3),
(2013, 6, 27, 2, 2),
(2013, 6, 27, 4, 2),
(2013, 6, 27, 15, 1),
(2013, 6, 27, 10, 1),
(2013, 6, 27, 7, 1),
(2013, 6, 27, 14, 1),
(2013, 6, 28, 1, 3),
(2013, 6, 28, 15, 1),
(2013, 6, 28, 19, 1),
(2013, 6, 28, 20, 1),
(2013, 6, 28, 11, 1),
(2013, 6, 28, 7, 1),
(2013, 6, 28, 3, 1),
(2013, 6, 28, 4, 1),
(2013, 7, 1, 20, 1),
(2013, 7, 1, 21, 1),
(2013, 7, 1, 22, 1),
(2013, 7, 1, 23, 1),
(2013, 7, 1, 12, 1),
(2013, 7, 1, 2, 1),
(2013, 7, 1, 1, 1),
(2013, 7, 1, 16, 1),
(2013, 7, 2, 4, 2),
(2013, 7, 2, 5, 2),
(2013, 7, 2, 2, 2),
(2013, 7, 2, 17, 1),
(2013, 7, 2, 1, 1),
(2013, 7, 2, 3, 1),
(2013, 7, 2, 13, 1),
(2013, 7, 3, 1, 1),
(2013, 7, 3, 24, 1),
(2013, 7, 4, 1, 3),
(2013, 7, 4, 2, 3),
(2013, 7, 4, 28, 1),
(2013, 7, 4, 3, 1),
(2013, 7, 4, 4, 1),
(2013, 7, 4, 5, 1),
(2013, 7, 4, 6, 1),
(2013, 7, 4, 25, 1),
(2013, 7, 4, 26, 1),
(2013, 7, 4, 27, 1),
(2013, 7, 5, 5, 1),
(2013, 7, 5, 18, 1),
(2013, 7, 5, 29, 1),
(2013, 7, 8, 1, 3),
(2013, 7, 8, 30, 1),
(2013, 7, 8, 6, 1),
(2013, 7, 8, 29, 1),
(2013, 7, 9, 1, 2),
(2013, 7, 9, 3, 1),
(2013, 7, 9, 29, 1),
(2013, 7, 9, 5, 1),
(2013, 7, 10, 31, 1),
(2013, 7, 10, 32, 1),
(2013, 7, 10, 7, 1),
(2013, 7, 10, 8, 1),
(2013, 7, 10, 9, 1),
(2013, 7, 10, 19, 1),
(2013, 7, 10, 20, 1),
(2013, 7, 11, 1, 7),
(2013, 7, 11, 2, 3),
(2013, 7, 11, 3, 2),
(2013, 7, 11, 4, 2),
(2013, 7, 11, 21, 1),
(2013, 7, 11, 22, 1),
(2013, 7, 11, 23, 1),
(2013, 7, 11, 24, 1),
(2013, 7, 12, 1, 2),
(2013, 7, 12, 5, 1),
(2013, 7, 12, 25, 1),
(2013, 7, 12, 2, 1),
(2013, 7, 12, 3, 1),
(2013, 7, 12, 4, 1),
(2013, 7, 15, 26, 1),
(2013, 7, 15, 27, 1),
(2013, 7, 15, 6, 1),
(2013, 7, 15, 7, 1),
(2013, 7, 15, 2, 1),
(2013, 7, 15, 1, 1),
(2013, 7, 16, 30, 1),
(2013, 7, 16, 28, 1),
(2013, 7, 16, 29, 1),
(2013, 7, 17, 31, 1),
(2013, 7, 17, 32, 1),
(2013, 7, 17, 33, 1),
(2013, 7, 17, 8, 1),
(2013, 7, 17, 2, 1),
(2013, 7, 17, 9, 1),
(2013, 7, 17, 10, 1),
(2013, 7, 18, 12, 1),
(2013, 7, 18, 1, 1),
(2013, 7, 18, 34, 1),
(2013, 7, 18, 35, 1),
(2013, 7, 18, 9, 1),
(2013, 7, 18, 3, 1),
(2013, 7, 18, 11, 1),
(2013, 7, 19, 1, 5),
(2013, 7, 19, 2, 3),
(2013, 7, 19, 13, 1),
(2013, 7, 19, 5, 1),
(2013, 7, 19, 36, 1),
(2013, 7, 19, 37, 1),
(2013, 7, 19, 38, 1),
(2013, 7, 19, 9, 1),
(2013, 7, 22, 14, 1),
(2013, 7, 22, 1, 1),
(2013, 7, 22, 10, 1),
(2013, 7, 22, 13, 1),
(2013, 7, 23, 1, 3),
(2013, 7, 23, 3, 3),
(2013, 7, 23, 4, 2),
(2013, 7, 23, 15, 1),
(2013, 7, 23, 10, 1),
(2013, 7, 23, 5, 1),
(2013, 7, 23, 13, 1),
(2013, 7, 23, 14, 1),
(2013, 7, 24, 2, 3),
(2013, 7, 24, 1, 2),
(2013, 7, 24, 6, 2),
(2013, 7, 24, 3, 2),
(2013, 7, 24, 39, 1),
(2013, 7, 24, 40, 1),
(2013, 7, 24, 41, 1),
(2013, 7, 24, 42, 1),
(2013, 7, 24, 43, 1),
(2013, 7, 24, 16, 1),
(2013, 7, 24, 17, 1),
(2013, 7, 24, 18, 1),
(2013, 7, 24, 19, 1),
(2013, 7, 24, 38, 1),
(2013, 7, 25, 4, 2),
(2013, 7, 25, 6, 1),
(2013, 7, 25, 1, 1),
(2013, 7, 25, 20, 1),
(2013, 7, 25, 21, 1),
(2013, 7, 25, 5, 1),
(2013, 7, 26, 5, 1),
(2013, 7, 29, 1, 1),
(2013, 7, 31, 1, 1),
(2013, 7, 0, 1, 36),
(2013, 7, 0, 2, 18),
(2013, 7, 0, 3, 12),
(2013, 7, 0, 4, 10),
(2013, 7, 0, 5, 10),
(2013, 7, 0, 6, 6),
(2013, 7, 0, 9, 4),
(2013, 7, 0, 13, 4),
(2013, 7, 0, 29, 4),
(2013, 7, 0, 21, 3),
(2013, 7, 0, 20, 3),
(2013, 7, 0, 10, 3),
(2013, 7, 0, 24, 2),
(2013, 7, 0, 30, 2),
(2013, 7, 0, 22, 2),
(2013, 7, 0, 7, 2),
(2013, 7, 0, 23, 2),
(2013, 7, 0, 25, 2),
(2013, 7, 0, 8, 2),
(2013, 7, 0, 26, 2),
(2013, 7, 0, 27, 2),
(2013, 7, 0, 19, 2),
(2013, 7, 0, 12, 2),
(2013, 7, 0, 28, 2),
(2013, 7, 0, 31, 2),
(2013, 8, 1, 1, 3),
(2013, 8, 1, 2, 1),
(2013, 8, 1, 3, 1),
(2013, 8, 1, 4, 1),
(2013, 8, 1, 5, 1),
(2013, 8, 1, 22, 1),
(2013, 8, 2, 1, 3),
(2013, 8, 2, 2, 1),
(2013, 8, 5, 6, 1),
(2013, 8, 5, 7, 1),
(2013, 8, 7, 1, 2),
(2013, 8, 13, 1, 1),
(2013, 8, 20, 22, 1),
(2013, 8, 20, 23, 1),
(2013, 8, 20, 1, 1),
(2013, 8, 21, 1, 3),
(2013, 8, 22, 1, 2),
(2013, 8, 22, 2, 2),
(2013, 8, 23, 3, 1),
(2013, 8, 23, 4, 1),
(2013, 8, 26, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_tickets`
--

CREATE TABLE IF NOT EXISTS `livezilla_tickets` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL,
  `user_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `target_group_id` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_tickets`
--

INSERT INTO `livezilla_tickets` (`id`, `user_id`, `target_group_id`) VALUES
('11701', 'cb2815e326', 'support');

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_ticket_customs`
--

CREATE TABLE IF NOT EXISTS `livezilla_ticket_customs` (
  `ticket_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `custom_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`ticket_id`,`custom_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_ticket_editors`
--

CREATE TABLE IF NOT EXISTS `livezilla_ticket_editors` (
  `ticket_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `internal_fullname` varchar(32) COLLATE utf8_bin NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ticket_id`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_ticket_editors`
--

INSERT INTO `livezilla_ticket_editors` (`ticket_id`, `internal_fullname`, `status`, `time`) VALUES
('11701', 'eluminous', 1, 1371181746);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_ticket_messages`
--

CREATE TABLE IF NOT EXISTS `livezilla_ticket_messages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `time` int(11) unsigned NOT NULL,
  `ticket_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `text` mediumtext COLLATE utf8_bin NOT NULL,
  `fullname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `company` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `call_me_back` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `country` varchar(5) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ticket_id` (`ticket_id`),
  KEY `time` (`time`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `livezilla_ticket_messages`
--

INSERT INTO `livezilla_ticket_messages` (`id`, `time`, `ticket_id`, `text`, `fullname`, `email`, `company`, `ip`, `phone`, `call_me_back`, `country`) VALUES
(1, 1371129453, '11701', '', 'Email', 'Email@email.com', 'Email', '192.168.1.1', '', 0, 'IN');

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_visitors`
--

CREATE TABLE IF NOT EXISTS `livezilla_visitors` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `entrance` int(10) unsigned NOT NULL DEFAULT '0',
  `last_active` int(10) unsigned NOT NULL DEFAULT '0',
  `host` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `system` smallint(5) unsigned NOT NULL DEFAULT '0',
  `browser` smallint(5) unsigned NOT NULL DEFAULT '0',
  `visits` smallint(5) unsigned NOT NULL DEFAULT '0',
  `visit_id` varchar(7) COLLATE utf8_bin NOT NULL DEFAULT '',
  `visit_latest` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `visit_last` int(10) unsigned NOT NULL DEFAULT '0',
  `resolution` smallint(5) unsigned NOT NULL DEFAULT '0',
  `language` varchar(5) COLLATE utf8_bin NOT NULL,
  `country` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT '',
  `city` int(10) unsigned NOT NULL DEFAULT '0',
  `region` int(10) unsigned NOT NULL DEFAULT '0',
  `isp` int(10) unsigned NOT NULL DEFAULT '0',
  `timezone` varchar(24) COLLATE utf8_bin NOT NULL DEFAULT '',
  `latitude` double NOT NULL DEFAULT '0',
  `longitude` double NOT NULL DEFAULT '0',
  `geo_result` int(10) unsigned NOT NULL DEFAULT '0',
  `js` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `signature` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`,`entrance`),
  UNIQUE KEY `visit_id` (`visit_id`),
  KEY `signature` (`signature`),
  KEY `language` (`language`),
  KEY `country` (`country`),
  KEY `city` (`city`),
  KEY `region` (`region`),
  KEY `isp` (`isp`),
  KEY `system` (`system`),
  KEY `id` (`id`),
  KEY `ip` (`ip`),
  KEY `last_active` (`last_active`),
  KEY `browser` (`browser`),
  KEY `resolution` (`resolution`),
  KEY `visit_latest` (`visit_latest`),
  KEY `timezone` (`timezone`),
  KEY `entrance` (`entrance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_visitors`
--

INSERT INTO `livezilla_visitors` (`id`, `entrance`, `last_active`, `host`, `ip`, `system`, `browser`, `visits`, `visit_id`, `visit_latest`, `visit_last`, `resolution`, `language`, `country`, `city`, `region`, `isp`, `timezone`, `latitude`, `longitude`, `geo_result`, `js`, `signature`) VALUES
('9d5717d40d', 1377573658, 1377587634, '', '192.168.1.1', 1, 20, 3, 'ddad524', 1, 1377154974, 4, 'EN-US', 'US', 8, 5, 8, '+07:00', -522, -522, 2, 1, 'b062beda8e503474998c93797e6ffede'),
('c027662882', 1377575951, 1377580392, '', '192.168.1.84', 1, 20, 5, '1fa7b12', 1, 1377496587, 4, 'EN-US', 'US', 8, 5, 8, '+05:30', -522, -522, 2, 1, '2c985159e8851b69d06d3b74631292a1');

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_visitor_browsers`
--

CREATE TABLE IF NOT EXISTS `livezilla_visitor_browsers` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `visitor_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `visit_id` varchar(7) COLLATE utf8_bin NOT NULL DEFAULT '',
  `created` int(10) unsigned NOT NULL DEFAULT '0',
  `last_active` int(10) unsigned NOT NULL DEFAULT '0',
  `last_update` varchar(2) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_chat` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `query` int(10) unsigned NOT NULL DEFAULT '0',
  `fullname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `company` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `customs` text COLLATE utf8_bin NOT NULL,
  `url_entrance` int(10) unsigned NOT NULL DEFAULT '0',
  `url_exit` int(10) unsigned NOT NULL DEFAULT '0',
  `pre_message` mediumtext COLLATE utf8_bin NOT NULL,
  `overlay` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `overlay_container` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `visit_id` (`visit_id`),
  KEY `query` (`query`),
  KEY `last_active` (`last_active`),
  KEY `last_update` (`last_update`),
  KEY `is_chat` (`is_chat`),
  KEY `created` (`created`),
  KEY `visitor_id` (`visitor_id`),
  KEY `overlay` (`overlay`),
  KEY `overlay_container` (`overlay_container`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_visitor_browsers`
--

INSERT INTO `livezilla_visitor_browsers` (`id`, `visitor_id`, `visit_id`, `created`, `last_active`, `last_update`, `is_chat`, `query`, `fullname`, `email`, `company`, `phone`, `customs`, `url_entrance`, `url_exit`, `pre_message`, `overlay`, `overlay_container`) VALUES
('0aaa7e8bcc', 'c027662882', '1fa7b12', 1377576421, 1377580392, 'dd', 0, 0, '', '', '', '', 'a:10:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";i:7;s:0:"";i:8;s:0:"";i:9;s:0:"";}', 0, 0, '', 0, 0),
('1a29dc00e6', 'c027662882', '1fa7b12', 1377578194, 1377578194, '93', 0, 0, '', '', '', '', 'a:10:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";i:7;s:0:"";i:8;s:0:"";i:9;s:0:"";}', 0, 0, '', 0, 0),
('46a2322884', 'c027662882', '1fa7b12', 1377575951, 1377580383, 'b3', 0, 0, '', '', '', '', 'a:10:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";i:7;s:0:"";i:8;s:0:"";i:9;s:0:"";}', 0, 0, '', 0, 0),
('60f6827204', 'c027662882', '1fa7b12', 1377576483, 1377580384, '58', 0, 0, '', '', '', '', 'a:10:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";i:7;s:0:"";i:8;s:0:"";i:9;s:0:"";}', 0, 0, '', 0, 0),
('99b1f759d0', 'c027662882', '1fa7b12', 1377578184, 1377578184, '38', 0, 0, '', '', '', '', 'a:10:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";i:7;s:0:"";i:8;s:0:"";i:9;s:0:"";}', 0, 0, '', 0, 0),
('ad147d6e6f', 'c027662882', '1fa7b12', 1377576283, 1377580381, 'dc', 0, 0, '', '', '', '', 'a:10:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";i:7;s:0:"";i:8;s:0:"";i:9;s:0:"";}', 0, 0, '', 0, 0),
('c78e3023f7', '9d5717d40d', 'ddad524', 1377573658, 1377587635, '96', 0, 0, '', '', '', '', 'a:10:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";i:7;s:0:"";i:8;s:0:"";i:9;s:0:"";}', 0, 0, '', 0, 0),
('c84a226797', '9d5717d40d', 'ddad524', 1377573859, 1377573869, 'bc', 0, 0, '', '', '', '', 'a:10:{i:0;s:0:"";i:1;s:0:"";i:2;s:0:"";i:3;s:0:"";i:4;s:0:"";i:5;s:0:"";i:6;s:0:"";i:7;s:0:"";i:8;s:0:"";i:9;s:0:"";}', 0, 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_visitor_browser_urls`
--

CREATE TABLE IF NOT EXISTS `livezilla_visitor_browser_urls` (
  `browser_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `entrance` int(10) unsigned NOT NULL DEFAULT '0',
  `referrer` int(10) unsigned NOT NULL DEFAULT '0',
  `url` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_bin NOT NULL,
  `untouched` text COLLATE utf8_bin NOT NULL,
  `title` text COLLATE utf8_bin NOT NULL,
  `ref_untouched` text COLLATE utf8_bin NOT NULL,
  `is_entrance` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_exit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entrance`,`browser_id`),
  KEY `browser_id` (`browser_id`),
  KEY `referrer` (`referrer`),
  KEY `entrance` (`entrance`),
  KEY `is_entrance` (`is_entrance`),
  KEY `is_exit` (`is_exit`),
  KEY `url` (`url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `livezilla_visitor_browser_urls`
--

INSERT INTO `livezilla_visitor_browser_urls` (`browser_id`, `entrance`, `referrer`, `url`, `params`, `untouched`, `title`, `ref_untouched`, `is_entrance`, `is_exit`) VALUES
('c78e3023f7', 1377573658, 1, 11843, '', 'http://eluminousdev.com/bungaIndo/', 'Bunga Indo', '', 1, 0),
('c84a226797', 1377573858, 1, 11843, '?route=affliate', 'http://eluminousdev.com/bungaIndo/index.php?route=affliate', 'The page you requested cannot be found!', '', 1, 0),
('c84a226797', 1377573869, 1, 11843, '?route=vendor', 'http://eluminousdev.com/bungaIndo/index.php?route=vendor', 'The page you requested cannot be found!', '', 0, 1),
('c78e3023f7', 1377575799, 1, 11843, '?route=product/product&product_id=50', 'http://eluminousdev.com/bungaIndo/index.php?route=product/product&product_id=50', 'lily', '', 0, 0),
('c78e3023f7', 1377575802, 1, 11843, '?route=product/product&product_id=58', 'http://eluminousdev.com/bungaIndo/index.php?route=product/product&product_id=58', 'Choco-chips', '', 0, 0),
('c78e3023f7', 1377575813, 1, 11843, '?route=checkout/cart', 'http://eluminousdev.com/bungaIndo/index.php?route=checkout/cart', 'Checkout', '', 0, 0),
('c78e3023f7', 1377575823, 1, 11843, '?route=product/product&product_id=58', 'http://eluminousdev.com/bungaIndo/index.php?route=product/product&product_id=58', 'Choco-chips', '', 0, 0),
('46a2322884', 1377575951, 1, 11843, '?route=product/product&product_id=58', 'http://eluminousdev.com/bungaIndo/index.php?route=product/product&product_id=58', 'Choco-chips', '', 1, 0),
('46a2322884', 1377575976, 1, 11843, '?route=product/category&path=60', 'http://eluminousdev.com/bungaIndo/index.php?route=product/category&path=60', 'Flower', '', 0, 0),
('46a2322884', 1377575977, 1, 11843, '?route=product/product&path=60&product_id=53', 'http://eluminousdev.com/bungaIndo/index.php?route=product/product&path=60&product_id=53', 'Flower 4', '', 0, 0),
('46a2322884', 1377575981, 1, 11843, '?route=checkout/cart', 'http://eluminousdev.com/bungaIndo/index.php?route=checkout/cart', 'Checkout', '', 0, 0),
('46a2322884', 1377575989, 1, 11843, '?route=account/login_register', 'http://eluminousdev.com/bungaIndo/index.php?route=account/login_register', 'Register Account', '', 0, 0),
('46a2322884', 1377575994, 1, 11843, '?route=checkout/shipping_address', 'http://eluminousdev.com/bungaIndo/index.php?route=checkout/shipping_address', '', '', 0, 1),
('ad147d6e6f', 1377576283, 1, 11843, '?route=product/product&product_id=58', 'http://eluminousdev.com/bungaIndo/index.php?route=product/product&product_id=58', 'Choco-chips', '', 1, 0),
('0aaa7e8bcc', 1377576421, 1, 6, '', 'http://localhost/bungaIndo/', 'Your Store1', '', 1, 0),
('0aaa7e8bcc', 1377576440, 1, 6, '?route=checkout/cart', 'http://localhost/bungaIndo/index.php?route=checkout/cart', 'Checkout', '', 0, 0),
('0aaa7e8bcc', 1377576448, 1, 6, '?route=account/login_register', 'http://localhost/bungaIndo/index.php?route=account/login_register', 'Register Account', '', 0, 0),
('0aaa7e8bcc', 1377576463, 1, 6, '?route=checkout/shipping_address', 'http://localhost/bungaIndo/index.php?route=checkout/shipping_address', '', '', 0, 0),
('60f6827204', 1377576482, 1, 6, '?route=product/category&path=60', 'http://localhost/bungaIndo/index.php?route=product/category&path=60', 'Flower', '', 1, 0),
('60f6827204', 1377576486, 1, 6, '?route=product/product&path=60&product_id=50', 'http://localhost/bungaIndo/index.php?route=product/product&path=60&product_id=50', 'Flower 1', '', 0, 0),
('60f6827204', 1377576501, 1, 6, '?route=product/product&path=60&product_id=67', 'http://localhost/bungaIndo/index.php?route=product/product&path=60&product_id=67', 'Product not found!', '', 0, 0),
('60f6827204', 1377576514, 1, 6, '?route=product/product&path=60&product_id=50', 'http://localhost/bungaIndo/index.php?route=product/product&path=60&product_id=50', 'Flower 1', '', 0, 0),
('60f6827204', 1377576528, 1, 6, '?route=product/product&path=60&product_id=58', 'http://localhost/bungaIndo/index.php?route=product/product&path=60&product_id=58', 'Chocolates1', '', 0, 0),
('0aaa7e8bcc', 1377578181, 1, 6, '?route=product/category&path=60', 'http://localhost/bungaIndo/index.php?route=product/category&path=60', 'Flower', '', 0, 0),
('99b1f759d0', 1377578184, 1, 6, '?route=product/product&path=60&product_id=50', 'http://localhost/bungaIndo/index.php?route=product/product&path=60&product_id=50', 'Flower 1', '', 1, 1),
('1a29dc00e6', 1377578194, 1, 6, '?route=product/product&path=60&product_id=55', 'http://localhost/bungaIndo/index.php?route=product/product&path=60&product_id=55', 'Flower 7', '', 1, 1),
('60f6827204', 1377578408, 1, 6, '?route=product/product&path=60&product_id=50', 'http://localhost/bungaIndo/index.php?route=product/product&path=60&product_id=50', 'Flower 1', '', 0, 0),
('60f6827204', 1377578415, 1, 6, '?route=common/home', 'http://localhost/bungaIndo/index.php?route=common/home', 'Your Store1', '', 0, 1),
('0aaa7e8bcc', 1377578428, 1, 6, '?route=product/product&path=60&product_id=50', 'http://localhost/bungaIndo/index.php?route=product/product&path=60&product_id=50', 'Flower 1', '', 0, 0),
('0aaa7e8bcc', 1377578432, 1, 6, '?route=product/category&path=60', 'http://localhost/bungaIndo/index.php?route=product/category&path=60', 'Flower', '', 0, 0),
('0aaa7e8bcc', 1377578435, 1, 6, '?route=product/category&path=59', 'http://localhost/bungaIndo/index.php?route=product/category&path=59', 'Sale', '', 0, 0),
('0aaa7e8bcc', 1377578438, 1, 6, '?route=product/category&path=61', 'http://localhost/bungaIndo/index.php?route=product/category&path=61', 'Occasion', '', 0, 0),
('0aaa7e8bcc', 1377578442, 1, 6, '?route=product/product&path=61&product_id=51', 'http://localhost/bungaIndo/index.php?route=product/product&path=61&product_id=51', 'Flower 2', '', 0, 1),
('ad147d6e6f', 1377578512, 1, 11843, '?route=common/home', 'http://eluminousdev.com/bungaIndo/index.php?route=common/home', 'Bunga Indo', '', 0, 0),
('ad147d6e6f', 1377578515, 1, 11843, '?route=product/product&product_id=50', 'http://eluminousdev.com/bungaIndo/index.php?route=product/product&product_id=50', 'lily', '', 0, 0),
('ad147d6e6f', 1377578518, 1, 11843, '?route=product/category&path=59', 'http://eluminousdev.com/bungaIndo/index.php?route=product/category&path=59', 'Sale', '', 0, 0),
('ad147d6e6f', 1377578522, 1, 11843, '?route=product/category&path=64', 'http://eluminousdev.com/bungaIndo/index.php?route=product/category&path=64', 'Gift', '', 0, 0),
('ad147d6e6f', 1377578524, 1, 11843, '?route=product/category&path=64_84', 'http://eluminousdev.com/bungaIndo/index.php?route=product/category&path=64_84', 'Teddy Bear', '', 0, 0),
('ad147d6e6f', 1377578526, 1, 11843, '?route=product/category&path=64_83', 'http://eluminousdev.com/bungaIndo/index.php?route=product/category&path=64_83', 'Jewelery', '', 0, 0),
('ad147d6e6f', 1377578527, 1, 11843, '?route=product/category&path=63', 'http://eluminousdev.com/bungaIndo/index.php?route=product/category&path=63', 'Hampers', '', 0, 0),
('ad147d6e6f', 1377578529, 1, 11843, '?route=product/category&path=63_81', 'http://eluminousdev.com/bungaIndo/index.php?route=product/category&path=63_81', 'Cake', '', 0, 0),
('ad147d6e6f', 1377578531, 1, 11843, '?route=product/category&path=63_80', 'http://eluminousdev.com/bungaIndo/index.php?route=product/category&path=63_80', 'Chocolate', '', 0, 0),
('ad147d6e6f', 1377578532, 1, 11843, '?route=product/category&path=62', 'http://eluminousdev.com/bungaIndo/index.php?route=product/category&path=62', 'Board Flower', '', 0, 0),
('ad147d6e6f', 1377578533, 1, 11843, '?route=product/category&path=61', 'http://eluminousdev.com/bungaIndo/index.php?route=product/category&path=61', 'Occasion', '', 0, 0),
('ad147d6e6f', 1377578534, 1, 11843, '?route=product/category&path=60', 'http://eluminousdev.com/bungaIndo/index.php?route=product/category&path=60', 'Flower', '', 0, 0),
('ad147d6e6f', 1377578535, 1, 11843, '?route=product/category&path=61', 'http://eluminousdev.com/bungaIndo/index.php?route=product/category&path=61', 'Occasion', '', 0, 0),
('ad147d6e6f', 1377578536, 1, 11843, '?route=product/category&path=63', 'http://eluminousdev.com/bungaIndo/index.php?route=product/category&path=63', 'Hampers', '', 0, 0),
('ad147d6e6f', 1377578548, 1, 11843, '?route=product/search&search=choco', 'http://eluminousdev.com/bungaIndo/index.php?route=product/search&search=choco', 'Search - choco', '', 0, 0),
('ad147d6e6f', 1377578553, 1, 11843, '?route=product/search&search=ted', 'http://eluminousdev.com/bungaIndo/index.php?route=product/search&search=ted', 'Search - ted', '', 0, 0),
('ad147d6e6f', 1377578558, 1, 11843, '?route=product/search&search=li', 'http://eluminousdev.com/bungaIndo/index.php?route=product/search&search=li', 'Search - li', '', 0, 0),
('ad147d6e6f', 1377578576, 1, 11843, '?route=product/search&search=Ribb', 'http://eluminousdev.com/bungaIndo/index.php?route=product/search&search=Ribb', 'Search - Ribb', '', 0, 1),
('c78e3023f7', 1377578908, 1, 11843, '?route=common/home', 'http://eluminousdev.com/bungaIndo/index.php?route=common/home', 'Bunga Indo', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_visitor_chats`
--

CREATE TABLE IF NOT EXISTS `livezilla_visitor_chats` (
  `visitor_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `browser_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `visit_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `chat_id` int(11) unsigned NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `fullname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `company` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `call_me_back` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `typing` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `waiting` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `area_code` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `first_active` int(10) unsigned NOT NULL DEFAULT '0',
  `last_active` int(10) unsigned NOT NULL DEFAULT '0',
  `qpenalty` int(10) unsigned NOT NULL DEFAULT '0',
  `request_operator` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `request_group` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `question` text COLLATE utf8_bin NOT NULL,
  `customs` text COLLATE utf8_bin NOT NULL,
  `allocated` int(11) unsigned NOT NULL DEFAULT '0',
  `archive_created` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `internal_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `internal_closed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `internal_declined` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_close` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `exit` int(11) unsigned NOT NULL DEFAULT '0',
  `queue_message_shown` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `chat_ticket_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `response_time` int(11) unsigned NOT NULL DEFAULT '0',
  `chat_posts` int(11) unsigned NOT NULL DEFAULT '0',
  `queue_posts` text COLLATE utf8_bin NOT NULL,
  `init_chat_with` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`visitor_id`,`browser_id`,`visit_id`,`chat_id`),
  KEY `chat_id` (`chat_id`),
  KEY `exit` (`exit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_visitor_chat_operators`
--

CREATE TABLE IF NOT EXISTS `livezilla_visitor_chat_operators` (
  `chat_id` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `declined` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ltime` int(10) unsigned NOT NULL DEFAULT '0',
  `jtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `alloc` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`,`chat_id`),
  KEY `chat_id` (`chat_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_visitor_data_area_codes`
--

CREATE TABLE IF NOT EXISTS `livezilla_visitor_data_area_codes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `area_code` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `area_code` (`area_code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `livezilla_visitor_data_area_codes`
--

INSERT INTO `livezilla_visitor_data_area_codes` (`id`, `area_code`) VALUES
(1, ''),
(2, 'SERVERPAGE');

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_visitor_data_browsers`
--

CREATE TABLE IF NOT EXISTS `livezilla_visitor_data_browsers` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `browser` varchar(255) COLLATE utf8_bin NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `browser` (`browser`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=21 ;

--
-- Dumping data for table `livezilla_visitor_data_browsers`
--

INSERT INTO `livezilla_visitor_data_browsers` (`id`, `browser`, `type`) VALUES
(1, 'FireFox 21', 0),
(2, 'Chrome 27', 0),
(3, 'FireFox 11', 0),
(4, 'Internet Explorer 9', 0),
(5, 'FireFox 20', 0),
(6, 'FireFox 19', 0),
(7, 'Safari 8', 0),
(8, 'Internet Explorer 7', 0),
(9, 'Internet Explorer 8', 0),
(10, 'Safari 5', 0),
(11, 'FireFox 22', 0),
(12, 'Chrome 23', 0),
(13, 'FireFox 23', 0),
(14, 'Opera 9', 0),
(15, 'Internet Explorer 6', 0),
(16, 'Chrome 28', 0),
(17, '', 0),
(18, 'Safari 7', 0),
(19, 'Chrome 25', 0),
(20, 'Chrome 29', 0);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_visitor_data_cities`
--

CREATE TABLE IF NOT EXISTS `livezilla_visitor_data_cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `city` (`city`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=9 ;

--
-- Dumping data for table `livezilla_visitor_data_cities`
--

INSERT INTO `livezilla_visitor_data_cities` (`id`, `city`) VALUES
(1, 'Mumbai'),
(2, 'Jakarta'),
(3, 'Delhi'),
(4, 'Nashik'),
(5, 'Powai'),
(6, 'Tangerang'),
(7, 'Pune'),
(8, '');

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_visitor_data_crawlers`
--

CREATE TABLE IF NOT EXISTS `livezilla_visitor_data_crawlers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `crawler` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `crawler` (`crawler`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `livezilla_visitor_data_crawlers`
--

INSERT INTO `livezilla_visitor_data_crawlers` (`id`, `crawler`) VALUES
(1, 'Google');

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_visitor_data_domains`
--

CREATE TABLE IF NOT EXISTS `livezilla_visitor_data_domains` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `domain` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `external` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `search` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `domain` (`domain`),
  KEY `search` (`search`),
  KEY `external` (`external`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=11 ;

--
-- Dumping data for table `livezilla_visitor_data_domains`
--

INSERT INTO `livezilla_visitor_data_domains` (`id`, `domain`, `external`, `search`) VALUES
(1, '', 0, 0),
(2, 'http://dev.eluminousdev.com', 0, 0),
(3, 'http://localhost', 0, 0),
(4, 'file:///C', 0, 0),
(5, 'http://www.dev.eluminousdev.com', 0, 0),
(6, 'http://us-mg6.mail.yahoo.com', 1, 0),
(7, 'http://eluminousdev.com', 0, 0),
(8, 'http://49.248.144.235', 0, 0),
(9, 'http://202.169.62.25', 1, 0),
(10, 'http://eluminoustechnologies.com', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_visitor_data_isps`
--

CREATE TABLE IF NOT EXISTS `livezilla_visitor_data_isps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isp` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `isp` (`isp`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=9 ;

--
-- Dumping data for table `livezilla_visitor_data_isps`
--

INSERT INTO `livezilla_visitor_data_isps` (`id`, `isp`) VALUES
(1, 'Hathway Ip Over Cable Internet Access Service'),
(2, 'Tata Teleservices (maharashtra) Ltd'),
(3, 'Pt Smart Telecom'),
(4, 'Wireless Hsd'),
(5, 'Broadband Multiplay Project'),
(6, 'Pt Telkom Indonesia'),
(7, 'Pt Hutchison Cp Telecommunications'),
(8, '');

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_visitor_data_pages`
--

CREATE TABLE IF NOT EXISTS `livezilla_visitor_data_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `domain` int(10) unsigned NOT NULL DEFAULT '0',
  `path` int(10) unsigned NOT NULL DEFAULT '0',
  `title` int(10) unsigned NOT NULL DEFAULT '0',
  `area_code` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ` (`domain`,`path`),
  KEY `domain` (`domain`),
  KEY `path` (`path`),
  KEY `title` (`title`),
  KEY `area_code` (`area_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=12048 ;

--
-- Dumping data for table `livezilla_visitor_data_pages`
--

INSERT INTO `livezilla_visitor_data_pages` (`id`, `domain`, `path`, `title`, `area_code`) VALUES
(1, 1, 1, 1, 1),
(2, 2, 2, 2, 2),
(4, 2, 3, 3, 2),
(5, 3, 4, 1, 1),
(6, 3, 5, 11, 1),
(12, 2, 5, 11, 1),
(44, 2, 6, 49, 1),
(96, 3, 7, 11, 1),
(370, 3, 8, 4, 1),
(424, 3, 9, 4, 1),
(558, 3, 10, 4, 1),
(560, 3, 11, 4, 1),
(576, 3, 12, 4, 1),
(1322, 3, 13, 42, 1),
(2120, 3, 6, 4, 1),
(3268, 3, 14, 4, 1),
(3926, 3, 15, 15, 1),
(4380, 4, 16, 50, 1),
(4496, 3, 17, 49, 1),
(5222, 5, 5, 49, 1),
(8642, 2, 18, 49, 1),
(8670, 3, 19, 4, 1),
(9085, 6, 20, 1, 1),
(9086, 7, 21, 1, 1),
(9757, 8, 5, 49, 1),
(10524, 9, 22, 1, 1),
(11656, 10, 23, 1, 1),
(11682, 10, 24, 1, 1),
(11702, 10, 25, 1, 1),
(11843, 7, 5, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_visitor_data_paths`
--

CREATE TABLE IF NOT EXISTS `livezilla_visitor_data_paths` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=26 ;

--
-- Dumping data for table `livezilla_visitor_data_paths`
--

INSERT INTO `livezilla_visitor_data_paths` (`id`, `path`) VALUES
(1, ''),
(2, '/bungaIndo/livezilla/'),
(3, '/bungaIndo/livezilla/chat.php'),
(4, '/bungaIndo/?route=checkout/cart'),
(5, '/bungaIndo/'),
(6, '/bungaIndo/#'),
(7, '/sheetal/bungaIndo/'),
(8, '/sheetal/bungaIndo/#tab-Flower%201'),
(9, '/sheetal/bungaIndo/#tab-Board%20flower'),
(10, '/sheetal/bungaIndo/#tab-50'),
(11, '/sheetal/bungaIndo/#tab-54'),
(12, '/sheetal/bungaIndo/#tab_54'),
(13, '/sheetal/bungaIndo/#tab-51'),
(14, '/bungaIndo/#tab-53'),
(15, '/bungaIndo/?product=50'),
(16, ':/Users/Eluminious/AppData/Local/Temp/tmpBF8C.html'),
(17, '/sheetal/bungaIndo/#'),
(18, '/bungaIndo//djmulitt,%20Generic%20viagra%20without%20prescription,%20XlBRXgL,%20[url=http://www.viagraovernight2013.com/]Buy%20viagra%20uk[/url],%20mEEBjrJ,%20http://www.viagraovernight2013.com/%20Natural%20viagra%20alter'),
(19, '/bungaINdo/'),
(20, '/neo/launch?.rand=ebvfr67liflc1'),
(21, '/etech_responsive/open-cart'),
(22, '/pay/confirmpayment/'),
(23, '/open-cart'),
(24, '/e-commerce-portfolio2'),
(25, '/extended-js');

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_visitor_data_queries`
--

CREATE TABLE IF NOT EXISTS `livezilla_visitor_data_queries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `query` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `query` (`query`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_visitor_data_regions`
--

CREATE TABLE IF NOT EXISTS `livezilla_visitor_data_regions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `region` (`region`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=6 ;

--
-- Dumping data for table `livezilla_visitor_data_regions`
--

INSERT INTO `livezilla_visitor_data_regions` (`id`, `region`) VALUES
(1, 'Maharashtra'),
(2, 'Jakarta Raya'),
(3, 'Delhi'),
(4, 'Banten'),
(5, '');

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_visitor_data_resolutions`
--

CREATE TABLE IF NOT EXISTS `livezilla_visitor_data_resolutions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resolution` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `resolution` (`resolution`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=21 ;

--
-- Dumping data for table `livezilla_visitor_data_resolutions`
--

INSERT INTO `livezilla_visitor_data_resolutions` (`id`, `resolution`) VALUES
(1, '1024 x 768 (24 Bit)'),
(2, '1024 x 768 (32 Bit)'),
(3, '1366 x 768 (24 Bit)'),
(4, '1366 x 768 (32 Bit)'),
(5, '1600 x 900 (24 Bit)'),
(6, '1600 x 900 (32 Bit)'),
(7, '1440 x 900 (24 Bit)'),
(8, '1920 x 1080 (24 Bit)'),
(9, '768 x 1024 (32 Bit)'),
(10, '1920 x 1080 (32 Bit)'),
(11, '800 x 600 (24 Bit)'),
(12, '1252 x 704 (24 Bit)'),
(13, '1280 x 800 (32 Bit)'),
(14, '720 x 1230 (32 Bit)'),
(15, '939 x 704 (24 Bit)'),
(16, ''),
(17, '320 x 568 (32 Bit)'),
(18, '320 x 480 (32 Bit)'),
(19, '1280 x 1024 (32 Bit)'),
(20, '1280 x 800 (24 Bit)');

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_visitor_data_systems`
--

CREATE TABLE IF NOT EXISTS `livezilla_visitor_data_systems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `system` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `system` (`system`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=11 ;

--
-- Dumping data for table `livezilla_visitor_data_systems`
--

INSERT INTO `livezilla_visitor_data_systems` (`id`, `system`) VALUES
(1, 'Windows 7'),
(2, 'Windows XP'),
(3, 'MAC OS X 10.6 (Snow Leopard)'),
(4, 'MAC OS X 10.7 (Lion)'),
(5, 'IPad'),
(6, 'Windows 8'),
(7, 'Linux'),
(8, ''),
(9, 'IPhone iOS6'),
(10, 'IPhone iOS5');

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_visitor_data_titles`
--

CREATE TABLE IF NOT EXISTS `livezilla_visitor_data_titles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_bin NOT NULL,
  `confirmed` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`),
  KEY `confirmed` (`confirmed`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=102 ;

--
-- Dumping data for table `livezilla_visitor_data_titles`
--

INSERT INTO `livezilla_visitor_data_titles` (`id`, `title`, `confirmed`) VALUES
(1, '', 0),
(2, 'LiveZilla Server Page', 1),
(3, 'dev.eluminousdev.com', 47),
(4, 'Your Store1', 386),
(5, 'Flower 1', 101),
(6, 'Sale', 273),
(7, 'Flower', 559),
(8, 'Search', 262),
(9, 'Register Account', 708),
(10, 'Hampers', 55),
(11, 'Checkout', 1128),
(12, 'Flower 3', 66),
(13, 'My Account Information', 874),
(14, 'Account Logout', 156),
(15, 'The page you requested cannot be found!', 48),
(16, 'Thank-you!', 234),
(17, 'Occasion', 176),
(18, 'Flower 7', 18),
(19, 'Flower 6', 9),
(20, 'Board Flower', 118),
(21, 'Order History', 768),
(22, 'Address Book', 686),
(23, 'Order Information', 472),
(24, 'flower2', 9),
(25, 'Gift', 47),
(26, 'Site map', 10),
(27, 'About Us', 28),
(28, 'Change Password', 3),
(29, 'Search - jakarta', 9),
(30, 'Search - flower', 38),
(31, 'Forgot Your Password?', 60),
(32, 'Congratulations!Your Account Has Been Registered!', 38),
(33, 'FAQ', 14),
(34, 'Terms & Conditions', 14),
(35, 'Contact Us', 32),
(36, 'fl1', 16),
(37, 'Flower 4', 10),
(38, 'Search - a', 2),
(39, 'Flower 2', 57),
(40, 'Search - fl', 2),
(41, 'Search - f', 4),
(42, 'BungaIndo', 73),
(43, 'Search - kurukshetra', 1),
(44, 'Search - flo', 5),
(45, 'Flower 5', 7),
(46, 'Board flower', 4),
(47, 'Product Returns', 1),
(48, 'Product not found!', 8),
(49, 'Bunga Indo', 650),
(50, 'LiveZilla Server Admin (Preview)', 1),
(51, 'Privacy Policy', 1),
(52, 'Site Map', 28),
(53, 'Information Page Not Found!', 1),
(54, 'Chocolates', 1),
(55, 'Daisy', 28),
(56, 'Condolences', 20),
(57, 'Lily', 31),
(58, 'Anniversary', 63),
(59, 'lily', 67),
(60, 'Cake', 10),
(61, 'flower 3', 1),
(62, 'Rose', 5),
(63, 'Birthday', 2),
(64, 'Mixed Flower', 9),
(65, 'Search - jjj', 1),
(66, 'Search - mnk', 1),
(67, 'Search - fsdfd', 1),
(68, 'Search - bandung', 4),
(69, 'Category not found!', 2),
(70, 'Baby Born', 5),
(71, 'Chocolate', 5),
(72, 'Congratulations', 4),
(73, 'Cookie', 4),
(74, 'teddy', 2),
(75, 'Search - gfgf', 1),
(76, 'Search - occ', 2),
(77, 'Search - njhjghjghjg', 1),
(78, 'Search - oi', 1),
(79, 'I’m Sorry', 2),
(80, 'Happy Wedding', 3),
(81, 'Baby', 12),
(82, 'Teddy Bear', 4),
(83, 'Get Well Soon', 2),
(84, 'Fruit', 2),
(85, 'Jewelery', 4),
(86, 'Search - 213', 1),
(87, 'Search - test', 1),
(88, 'Search - apple', 1),
(89, 'Search - sad', 1),
(90, 'Search - ''', 1),
(91, 'Search - ":', 1),
(92, 'Tulip', 2),
(93, 'test New', 1),
(94, 'Choco-chips', 6),
(95, 'Search - lily', 1),
(96, 'Deal of the month', 7),
(97, 'Chocolates1', 1),
(98, 'Search - choco', 1),
(99, 'Search - ted', 1),
(100, 'Search - li', 1),
(101, 'Search - Ribb', 1);

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_visitor_goals`
--

CREATE TABLE IF NOT EXISTS `livezilla_visitor_goals` (
  `visitor_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `goal_id` int(10) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `first_visit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `query` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`visitor_id`,`goal_id`),
  KEY `visitor_id` (`visitor_id`),
  KEY `goal_id` (`goal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `livezilla_website_pushs`
--

CREATE TABLE IF NOT EXISTS `livezilla_website_pushs` (
  `id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `created` int(10) unsigned NOT NULL DEFAULT '0',
  `sender_system_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `receiver_user_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `receiver_browser_id` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `text` mediumtext COLLATE utf8_bin NOT NULL,
  `ask` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `target_url` varchar(2048) COLLATE utf8_bin NOT NULL DEFAULT '',
  `displayed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `accepted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `declined` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `receiver_browser_id` (`receiver_browser_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `livezilla_alerts`
--
ALTER TABLE `livezilla_alerts`
  ADD CONSTRAINT `livezilla_alerts_ibfk_1` FOREIGN KEY (`receiver_user_id`) REFERENCES `livezilla_visitors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livezilla_chat_files`
--
ALTER TABLE `livezilla_chat_files`
  ADD CONSTRAINT `livezilla_chat_files_ibfk_1` FOREIGN KEY (`visitor_id`) REFERENCES `livezilla_visitors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livezilla_chat_forwards`
--
ALTER TABLE `livezilla_chat_forwards`
  ADD CONSTRAINT `livezilla_chat_forwards_ibfk_1` FOREIGN KEY (`chat_id`) REFERENCES `livezilla_visitor_chats` (`chat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livezilla_chat_requests`
--
ALTER TABLE `livezilla_chat_requests`
  ADD CONSTRAINT `livezilla_chat_requests_ibfk_1` FOREIGN KEY (`receiver_browser_id`) REFERENCES `livezilla_visitor_browsers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livezilla_com_chat_localizations`
--
ALTER TABLE `livezilla_com_chat_localizations`
  ADD CONSTRAINT `livezilla_com_chat_localizations_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `livezilla_com_chat_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livezilla_com_chat_vouchers`
--
ALTER TABLE `livezilla_com_chat_vouchers`
  ADD CONSTRAINT `livezilla_com_chat_vouchers_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `livezilla_com_chat_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livezilla_event_actions`
--
ALTER TABLE `livezilla_event_actions`
  ADD CONSTRAINT `livezilla_event_actions_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `livezilla_events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livezilla_event_action_overlays`
--
ALTER TABLE `livezilla_event_action_overlays`
  ADD CONSTRAINT `livezilla_event_action_overlays_ibfk_1` FOREIGN KEY (`action_id`) REFERENCES `livezilla_event_actions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livezilla_event_action_receivers`
--
ALTER TABLE `livezilla_event_action_receivers`
  ADD CONSTRAINT `livezilla_event_action_receivers_ibfk_1` FOREIGN KEY (`action_id`) REFERENCES `livezilla_event_actions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livezilla_event_action_website_pushs`
--
ALTER TABLE `livezilla_event_action_website_pushs`
  ADD CONSTRAINT `livezilla_event_action_website_pushs_ibfk_1` FOREIGN KEY (`action_id`) REFERENCES `livezilla_event_actions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livezilla_event_funnels`
--
ALTER TABLE `livezilla_event_funnels`
  ADD CONSTRAINT `livezilla_event_funnels_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `livezilla_event_urls` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `livezilla_event_funnels_ibfk_2` FOREIGN KEY (`eid`) REFERENCES `livezilla_events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livezilla_event_goals`
--
ALTER TABLE `livezilla_event_goals`
  ADD CONSTRAINT `livezilla_event_goals_ibfk_1` FOREIGN KEY (`goal_id`) REFERENCES `livezilla_goals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `livezilla_event_goals_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `livezilla_events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livezilla_event_triggers`
--
ALTER TABLE `livezilla_event_triggers`
  ADD CONSTRAINT `livezilla_event_triggers_ibfk_1` FOREIGN KEY (`receiver_user_id`) REFERENCES `livezilla_visitors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livezilla_event_urls`
--
ALTER TABLE `livezilla_event_urls`
  ADD CONSTRAINT `livezilla_event_urls_ibfk_1` FOREIGN KEY (`eid`) REFERENCES `livezilla_events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livezilla_group_members`
--
ALTER TABLE `livezilla_group_members`
  ADD CONSTRAINT `livezilla_group_members_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `livezilla_groups` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livezilla_overlay_boxes`
--
ALTER TABLE `livezilla_overlay_boxes`
  ADD CONSTRAINT `livezilla_overlay_boxes_ibfk_1` FOREIGN KEY (`receiver_browser_id`) REFERENCES `livezilla_visitor_browsers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livezilla_stats_aggs_goals`
--
ALTER TABLE `livezilla_stats_aggs_goals`
  ADD CONSTRAINT `livezilla_stats_aggs_goals_ibfk_1` FOREIGN KEY (`goal`) REFERENCES `livezilla_goals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livezilla_stats_aggs_pages`
--
ALTER TABLE `livezilla_stats_aggs_pages`
  ADD CONSTRAINT `livezilla_stats_aggs_pages_ibfk_1` FOREIGN KEY (`url`) REFERENCES `livezilla_visitor_data_pages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livezilla_ticket_customs`
--
ALTER TABLE `livezilla_ticket_customs`
  ADD CONSTRAINT `livezilla_ticket_customs_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `livezilla_tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livezilla_ticket_editors`
--
ALTER TABLE `livezilla_ticket_editors`
  ADD CONSTRAINT `livezilla_ticket_editors_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `livezilla_tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livezilla_ticket_messages`
--
ALTER TABLE `livezilla_ticket_messages`
  ADD CONSTRAINT `livezilla_ticket_messages_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `livezilla_tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livezilla_visitor_browsers`
--
ALTER TABLE `livezilla_visitor_browsers`
  ADD CONSTRAINT `livezilla_visitor_browsers_ibfk_1` FOREIGN KEY (`visit_id`) REFERENCES `livezilla_visitors` (`visit_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livezilla_visitor_browser_urls`
--
ALTER TABLE `livezilla_visitor_browser_urls`
  ADD CONSTRAINT `livezilla_visitor_browser_urls_ibfk_1` FOREIGN KEY (`browser_id`) REFERENCES `livezilla_visitor_browsers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `livezilla_visitor_chats`
--
ALTER TABLE `livezilla_visitor_chats`
  ADD CONSTRAINT `livezilla_visitor_chats_ibfk_1` FOREIGN KEY (`visitor_id`) REFERENCES `livezilla_visitors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livezilla_visitor_chat_operators`
--
ALTER TABLE `livezilla_visitor_chat_operators`
  ADD CONSTRAINT `livezilla_visitor_chat_operators_ibfk_1` FOREIGN KEY (`chat_id`) REFERENCES `livezilla_visitor_chats` (`chat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livezilla_visitor_goals`
--
ALTER TABLE `livezilla_visitor_goals`
  ADD CONSTRAINT `livezilla_visitor_goals_ibfk_1` FOREIGN KEY (`visitor_id`) REFERENCES `livezilla_visitors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `livezilla_website_pushs`
--
ALTER TABLE `livezilla_website_pushs`
  ADD CONSTRAINT `livezilla_website_pushs_ibfk_1` FOREIGN KEY (`receiver_browser_id`) REFERENCES `livezilla_visitor_browsers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

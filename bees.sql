-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014 年 06 月 16 日 19:17
-- 服务器版本: 5.6.12-log
-- PHP 版本: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `bees`
--
CREATE DATABASE IF NOT EXISTS `bees` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bees`;

-- --------------------------------------------------------

--
-- 表的结构 `bs_admin`
--

CREATE TABLE IF NOT EXISTS `bs_admin` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(60) NOT NULL,
  `admin_password` varchar(60) NOT NULL,
  `admin_nich` varchar(60) NOT NULL,
  `admin_purview` mediumint(8) NOT NULL,
  `admin_admin` varchar(60) DEFAULT NULL,
  `admin_mail` varchar(60) DEFAULT NULL,
  `admin_tel` varchar(60) DEFAULT NULL,
  `is_disable` mediumint(8) NOT NULL DEFAULT '0',
  `admin_ip` varchar(60) DEFAULT NULL,
  `admin_time` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `bs_admin`
--

INSERT INTO `bs_admin` (`id`, `admin_name`, `admin_password`, `admin_nich`, `admin_purview`, `admin_admin`, `admin_mail`, `admin_tel`, `is_disable`, `admin_ip`, `admin_time`) VALUES
(9, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 1, NULL, '', NULL, 0, '127.0.0.1', '1402895279');

-- --------------------------------------------------------

--
-- 表的结构 `bs_admin_group`
--

CREATE TABLE IF NOT EXISTS `bs_admin_group` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `admin_group_name` varchar(60) NOT NULL,
  `admin_group_info` varchar(255) DEFAULT NULL,
  `admin_group_purview` text COMMENT '分组权限-字符串以,分割',
  `is_disable` mediumint(8) NOT NULL DEFAULT '0' COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `bs_admin_group`
--

INSERT INTO `bs_admin_group` (`id`, `admin_group_name`, `admin_group_info`, `admin_group_purview`, `is_disable`) VALUES
(1, '超级管理员', '可以管理后台所有功能，没有任何限制', 'all_purview', 0),
(2, '信息发布员 ', '发布信息内容的管理员', 'content_create,content_edit', 0);

-- --------------------------------------------------------

--
-- 表的结构 `bs_alone`
--

CREATE TABLE IF NOT EXISTS `bs_alone` (
  `id` mediumint(8) NOT NULL,
  `content` text,
  `pics` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bs_alone`
--

INSERT INTO `bs_alone` (`id`, `content`, `pics`) VALUES
(17, '<div class="arc_body">\r\n	<div class="us">\r\n		<p>\r\n			&nbsp;</p>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', ',22,,21,,20,,18'),
(36, '<div class="leftcontent" style="text-align: center; widows: 2; text-transform: none; text-indent: 0px; width: 585px; font: 12px/20px 宋体; white-space: normal; orphans: 2; letter-spacing: normal; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">\r\n	<b><img alt="" src="../upload/img/201406130906198936.jpg" style="width: 366px; height: 196px" /></b></div>\r\n<div class="leftcontent" style="widows: 2; text-transform: none; text-indent: 0px; width: 585px; font: 12px/20px 宋体; white-space: normal; orphans: 2; letter-spacing: normal; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">\r\n	<b>Shaoxing Togawa Rubber Co. Ltd.</b>Founded in 2005 April, is a wholly owned subsidiary of Sichuan, Togawa Japanese investment in China.<br />\r\n	<br />\r\n	Company address:Pu Industrial Park in Zhejiang province Shangyu city Chinese<span class="Apple-converted-space">&nbsp;</span><br />\r\n	Land area:10000 square meters<br />\r\n	Building area:4700 square meters<br />\r\n	Main products:O type, U type gasket, gasket ring production and sales.<br />\r\n	　　　　　　　　　　 Rubber products and synthetic resin production and sales of products.<br />\r\n	　　　　　　　　 　　Mold&nbsp;and metal parts&nbsp;sales.<br />\r\n	Company purpose:to improve the technical staff, moral and life, make the worker all-round development, benefit the whole society and make contributions to.<br />\r\n	Company policy:improve the quality of products, Protect environment, production to meet the social needs of the product.<br />\r\n	Business philosophy: quality first, vigorous, friendship, gratitude.<br />\r\n	Company aim:customer satisfaction, the best quality, service society.<br />\r\n	<br />\r\n	Contact information:<br />\r\n	Address:Zhejiang province Shangyu city China Pu Industrial Park zip code:312300<br />\r\n	Phone:0571-82365378 Fax:0571-82365378<br />\r\n	E-mail:123123123@123.com</div>\r\n<div style="widows: 2; text-transform: none; text-indent: 0px; font: 12px/14px 宋体; white-space: normal; orphans: 2; letter-spacing: normal; height: 60px; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">\r\n	&nbsp;</div>\r\n<div class="leftcontent" style="widows: 2; text-transform: none; text-indent: 0px; width: 585px; font: 12px/20px 宋体; white-space: normal; orphans: 2; letter-spacing: normal; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">\r\n	<p>\r\n		Shaoxing Togawa Rubber Co. Ltd. is the exclusive subsidiary of Japan Togawa in China, has a history of over 10 years, the company to high technical titles in future.</p>\r\n	<p>\r\n		The Japanese Togawa Rubber Corporation is one of Japan&#39;s biggest rubber enterprises, has 90 years of operating history.</p>\r\n	<p>\r\n		As to the high-tech, high Takahira Nao, armed their enterprise, we always adhere to the faith and to help customers, adhere to their own services to impress clients.<br />\r\n		To improve the quality of the products, Protect environment constantly, and strive to create products to meet the needs of the society.</p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `bs_article`
--

CREATE TABLE IF NOT EXISTS `bs_article` (
  `id` mediumint(8) NOT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bs_article`
--

INSERT INTO `bs_article` (`id`, `content`) VALUES
(35, '<p>\r\n	内容全部放在这里</p>\r\n<p>\r\n	<img alt="" src="../upload/img/20140613150942961.jpg" style="width: 640px; height: 1090px;" /></p>\r\n'),
(37, '');

-- --------------------------------------------------------

--
-- 表的结构 `bs_ask`
--

CREATE TABLE IF NOT EXISTS `bs_ask` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `addtime` varchar(60) NOT NULL,
  `reply` text,
  `member` mediumint(8) NOT NULL,
  `replytime` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bs_auto_fields`
--

CREATE TABLE IF NOT EXISTS `bs_auto_fields` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `field_name` varchar(60) NOT NULL,
  `use_name` varchar(60) NOT NULL COMMENT '表单提示文字',
  `field_type` varchar(60) NOT NULL,
  `field_value` varchar(255) DEFAULT NULL COMMENT '字段默认值',
  `field_length` mediumint(8) DEFAULT NULL,
  `channel_id` mediumint(8) NOT NULL COMMENT '所属频道id',
  `field_info` varchar(255) DEFAULT NULL COMMENT '字段提示信息',
  `is_disable` mediumint(8) NOT NULL,
  `check_value` varchar(60) DEFAULT NULL,
  `field_order` mediumint(8) NOT NULL DEFAULT '10',
  `is_del` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- 转存表中的数据 `bs_auto_fields`
--

INSERT INTO `bs_auto_fields` (`id`, `field_name`, `use_name`, `field_type`, `field_value`, `field_length`, `channel_id`, `field_info`, `is_disable`, `check_value`, `field_order`, `is_del`) VALUES
(1, 'content', '内容', 'html', '', 255, 2, '', 0, '', 1, 1),
(2, 'model', '型号', 'text', '', 255, 3, '', 1, '', 1, 1),
(28, 'content', '详细内容', 'html', '', 255, 5, '', 0, '', 16, 1),
(6, 'down', '下载地址', 'upload_file', '', 255, 4, '', 0, '', 1, 1),
(27, 'content', '详细内容', 'html', '', 255, 4, '', 0, '', 4, 1),
(10, 'jobnum', '招聘人数', 'text', '', 255, 5, '', 0, '', 2, 0),
(12, 'jopaddress', '工作地点', 'text', '', 255, 5, '', 0, '', 5, 0),
(16, 'joblasttime', '截止日期', 'text', '2011-1-2', 255, 5, '', 0, '', 9, 0),
(26, 'content', '详细介绍', 'html', '', 255, 3, '', 0, '', 4, 1),
(24, 'content', '详细内容', 'html', '', 255, 1, '', 0, '', 1, 1),
(25, 'pics', '产品图片', 'upload_pic_more', '', 255, 3, '', 0, '', 10, 0),
(29, 'filesize', '文件大小', 'text', '', 255, 4, '单位为K', 1, '', 3, 1),
(30, 'filetype', '文件类型', 'select', '.exe,.rar,其他', 255, 4, '', 1, '', 2, 1),
(36, 'pics', '图集', 'upload_pic_more', '', 255, 1, '', 0, '', 10, 0);

-- --------------------------------------------------------

--
-- 表的结构 `bs_block`
--

CREATE TABLE IF NOT EXISTS `bs_block` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `tag` varchar(60) NOT NULL,
  `content` text,
  `tag_name` varchar(255) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `bs_block`
--

INSERT INTO `bs_block` (`id`, `tag`, `content`, `tag_name`, `lang`) VALUES
(4, 'contact_us', '<p>联系电话：</p>\r\n<p>QQ：</p>\r\n<p>联系地址：</p>\r\n<p>网址：<a href="http://www.beescms.com">http://www.beescms.com</a></p>\r\n<p>论坛：<a href="http://www.beescms.com/bbs">http://www.beescms.com/bbs</a></p>\r\n<p>帮助：<a href="http://www.beescms.com/help">http://www.beescms.com/help</a></p>', '', ''),
(5, 'about_us', '<p><img alt="" style="width: 96px; float: left; height: 122px;" src="/beescms3/upload/fck/20110625030630_fck.png" />BEES 企业网站管理系统拥有简单方便的模板标签，能够快速做出模板；自定义表单，自定义模型，内置新闻、下载、产品、招聘、单页模型；SEO功   能，每个页面都可以单独SEO优化，并且可以自定义URL生成；多语言，多风格，每种语言每个页面都可以定义风格；html静态页面生成功能；人性化后台 操作，不用太多知识就可以快速建好网站，维护管理方便。</p>', '', ''),
(6, 'about_us', '<div class="leftcontent" style="line-height: 20px; width: 585px; color: rgb(0, 0, 0); font-family: 宋体; text-align: center;">\r\n	&nbsp;</div>\r\n<div class="leftcontent" style="line-height: 20px; width: 585px; color: rgb(0, 0, 0); font-family: 宋体; text-align: center;">\r\n	<img alt="" src="../upload/img/201406130906198936.jpg" style="width: 366px; height: 196px;" /></div>\r\n<div class="leftcontent" style="line-height: 20px; width: 585px; color: rgb(0, 0, 0); font-family: 宋体; text-align: center;">\r\n	&nbsp;</div>\r\n<div class="leftcontent" style="line-height: 20px; width: 585px; color: rgb(0, 0, 0); font-family: 宋体;">\r\n	<b>绍兴十川橡胶有限公司</b>成立于2005年4月，是日本十川株式会社在华投资的独资子公司。<br />\r\n	<br />\r\n	公司地址：中国浙江省上虞市上浦工业园区&nbsp;<br />\r\n	土地面积：10,000平方米&nbsp;<br />\r\n	建筑面积：4,700平方米&nbsp;<br />\r\n	主要产品：O型圈、垫片、U型垫片的生产销售。<br />\r\n	　　　　　橡胶产品以及合成树脂产品的生产销售。<br />\r\n	　　　　　模具及金属件的销售。<br />\r\n	公司宗旨：努力提高职工技术、思想品德及生活，使职工全面发展，造福于全社会并做出贡献。&nbsp;<br />\r\n	公司方针：提高产品质量，保护环境，生产出符合社会需要的产品。<br />\r\n	经营理念：质量第一、生气蓬勃、友好相处、知恩图报。&nbsp;<br />\r\n	公司目标：顾客满意、质量最佳、服务社会。<br />\r\n	<br />\r\n	联系信息：<br />\r\n	地址：中国浙江省上虞市上浦工业园区 邮编：312300<br />\r\n	电话：0571-82365378 传真：0571-82365378<br />\r\n	E-mail:123123123@123.com</div>\r\n<div style="color: rgb(0, 0, 0); font-family: 宋体; line-height: 14px; height: 60px;">\r\n	&nbsp;</div>\r\n<div class="img" style="text-align: center; margin: 20px 0px; color: rgb(0, 0, 0); font-family: 宋体; line-height: 14px;">\r\n	&nbsp;</div>\r\n<div class="leftcontent" style="line-height: 20px; width: 585px; color: rgb(0, 0, 0); font-family: 宋体;">\r\n	<p>\r\n		绍兴十川橡胶有限公司是日本十川橡胶株式会社在国内的独家子公司，拥有10多年的历史，公司以高分子技术职称未来。</p>\r\n	<p>\r\n		日本十川橡胶株式会社是日本最大的橡胶企业之一，拥有90多年的经营历史。</p>\r\n	<p>\r\n		作为以高科技、高平直、高要求来武装自身的企业，我们始终坚持诚信和让利于客户，坚持自己的服务去打动客户。<br />\r\n		不断致力提高产品质量、保护环境，为创造出符合社会需要的产品而努力。</p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '公司简介', 'cn'),
(7, 'contact_us', '<div id="mapCard_name" style="clear: both; margin-left: 5px; word-wrap: break-word; word-break: break-all; color: rgb(0, 0, 0); font-family: arial; line-height: 22.799999237060547px; width: 595px;">\r\n	名称：绍兴十川橡胶有限公司</div>\r\n<div id="mapCard_address" style="clear: both; margin-left: 5px; word-wrap: break-word; word-break: break-all; color: rgb(0, 0, 0); font-family: arial; line-height: 22.799999237060547px; width: 595px;">\r\n	地址：浙江省绍兴市上虞市上浦工业园区</div>\r\n<div id="mapCard_phone" style="clear: both; margin-left: 5px; word-wrap: break-word; word-break: break-all; color: rgb(0, 0, 0); font-family: arial; line-height: 22.799999237060547px; width: 595px;">\r\n	电话：0571-82365378</div>\r\n<div id="mapCard_fax" style="clear: both; margin-left: 5px; word-wrap: break-word; word-break: break-all; color: rgb(0, 0, 0); font-family: arial; line-height: 22.799999237060547px; width: 595px;">\r\n	传真号：0571-82365378</div>\r\n<div id="mapCard_email" style="clear: both; margin-left: 5px; word-wrap: break-word; word-break: break-all; color: rgb(0, 0, 0); font-family: arial; line-height: 22.799999237060547px; width: 595px;">\r\n	email：</div>\r\n', '联系我们', 'cn');

-- --------------------------------------------------------

--
-- 表的结构 `bs_book`
--

CREATE TABLE IF NOT EXISTS `bs_book` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `book_name` varchar(60) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `book_type` mediumint(8) NOT NULL DEFAULT '0' COMMENT '0-留言,1-投诉,2-询问,3-售后',
  `pr_id` mediumint(8) DEFAULT NULL COMMENT '产品',
  `book_title` varchar(60) NOT NULL,
  `book_content` text NOT NULL,
  `addtime` varchar(60) NOT NULL,
  `reply` text,
  `verify` mediumint(8) NOT NULL DEFAULT '0',
  `lang` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `bs_book`
--

INSERT INTO `bs_book` (`id`, `book_name`, `mail`, `book_type`, `pr_id`, `book_title`, `book_content`, `addtime`, `reply`, `verify`, `lang`) VALUES
(1, '测试名', 'test@163.com', 2, 23, '询问价格', '问下这个产品的价格', '1309053643', '', 1, 'cn');

-- --------------------------------------------------------

--
-- 表的结构 `bs_book_info`
--

CREATE TABLE IF NOT EXISTS `bs_book_info` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `is_book` varchar(60) DEFAULT NULL,
  `book_pos` varchar(60) DEFAULT NULL,
  `book_verify` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `bs_book_info`
--

INSERT INTO `bs_book_info` (`id`, `is_book`, `book_pos`, `book_verify`) VALUES
(1, '1', '2', '0');

-- --------------------------------------------------------

--
-- 表的结构 `bs_category`
--

CREATE TABLE IF NOT EXISTS `bs_category` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `custom_url` varchar(255) DEFAULT NULL,
  `cate_name` varchar(60) NOT NULL,
  `cate_mb_is` mediumint(8) NOT NULL,
  `cate_hide` mediumint(8) NOT NULL,
  `cate_channel` mediumint(8) NOT NULL,
  `cate_fold_name` varchar(60) NOT NULL,
  `cate_order` mediumint(8) NOT NULL,
  `cate_rank` mediumint(8) DEFAULT '0',
  `cate_tpl` mediumint(8) NOT NULL,
  `cate_tpl_index` varchar(60) DEFAULT NULL,
  `cate_tpl_list` varchar(60) DEFAULT NULL,
  `cate_tpl_content` varchar(60) DEFAULT NULL,
  `cate_title_seo` varchar(60) DEFAULT NULL,
  `cate_key_seo` varchar(60) DEFAULT NULL,
  `cate_info_seo` varchar(350) DEFAULT NULL,
  `lang` varchar(60) NOT NULL,
  `cate_parent` mediumint(8) NOT NULL,
  `cate_html` mediumint(8) NOT NULL DEFAULT '0',
  `cate_nav` varchar(60) NOT NULL DEFAULT '0',
  `is_content` mediumint(8) DEFAULT '0',
  `cate_url` varchar(60) DEFAULT NULL,
  `cate_is_open` mediumint(8) NOT NULL DEFAULT '0',
  `form_id` mediumint(8) DEFAULT NULL,
  `cate_pic1` varchar(255) DEFAULT NULL,
  `cate_pic2` varchar(255) DEFAULT NULL,
  `cate_pic3` varchar(255) DEFAULT NULL,
  `cate_content` text,
  `temp_id` mediumint(8) DEFAULT NULL,
  `list_num` mediumint(8) NOT NULL DEFAULT '20',
  `nav_show` varchar(60) DEFAULT NULL,
  `is_index` tinyint(1) DEFAULT '0' COMMENT '是否显示在首页',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- 转存表中的数据 `bs_category`
--

INSERT INTO `bs_category` (`id`, `custom_url`, `cate_name`, `cate_mb_is`, `cate_hide`, `cate_channel`, `cate_fold_name`, `cate_order`, `cate_rank`, `cate_tpl`, `cate_tpl_index`, `cate_tpl_list`, `cate_tpl_content`, `cate_title_seo`, `cate_key_seo`, `cate_info_seo`, `lang`, `cate_parent`, `cate_html`, `cate_nav`, `is_content`, `cate_url`, `cate_is_open`, `form_id`, `cate_pic1`, `cate_pic2`, `cate_pic3`, `cate_content`, `temp_id`, `list_num`, `nav_show`, `is_index`) VALUES
(4, '', '公司新闻', 0, 0, 2, 'gsxw', 1, 0, 0, '', 'list_article.html', 'article_content.html', '', '', '', 'cn', 0, 1, '2', 0, 'http://', 0, 0, 'img/201406121951036002.jpg', '', '', '', 2, 20, '0', 0),
(5, '', '产品介绍', 0, 0, 3, 'cpzx', 2, 0, 0, '', 'list_product_info.html', 'product_content.html', '', '', '', 'cn', 0, 1, '2', 0, 'http://', 0, 0, 'img/201406122020205898.jpg', '', '', '<p>\r\n	<b style="color: rgb(0, 0, 0); font-family: 宋体; line-height: 20px;">产品介绍</b><br style="color: rgb(0, 0, 0); font-family: 宋体; line-height: 20px;" />\r\n	<br style="color: rgb(0, 0, 0); font-family: 宋体; line-height: 20px;" />\r\n	<span style="color: rgb(0, 0, 0); font-family: 宋体; line-height: 20px;">弊公司开发并生产高品质橡胶部品及合成部品，销售至多个领域（市场）。</span><br style="color: rgb(0, 0, 0); font-family: 宋体; line-height: 20px;" />\r\n	<span style="color: rgb(0, 0, 0); font-family: 宋体; line-height: 20px;">我们的产品中汇聚了膜片、密封垫、密封材、O型圈、防振橡胶LIM产品等各种各样的产品群。</span><br style="color: rgb(0, 0, 0); font-family: 宋体; line-height: 20px;" />\r\n	<br style="color: rgb(0, 0, 0); font-family: 宋体; line-height: 20px;" />\r\n	<span style="color: rgb(0, 0, 0); font-family: 宋体; line-height: 20px;">点击左侧的产品清单即可查看各种产品的详细信息。&nbsp;</span><br style="color: rgb(0, 0, 0); font-family: 宋体; line-height: 20px;" />\r\n	<span style="color: rgb(0, 0, 0); font-family: 宋体; line-height: 20px;">我们致力于根据不同的客户应对各种问题与客户一起制造更好的产品。</span><br style="color: rgb(0, 0, 0); font-family: 宋体; line-height: 20px;" />\r\n	<span style="color: rgb(0, 0, 0); font-family: 宋体; line-height: 20px;">假如您对橡胶产品有疑问或者有想要咨询请随时与我们联系。&nbsp;</span><br style="color: rgb(0, 0, 0); font-family: 宋体; line-height: 20px;" />\r\n	<span style="color: rgb(0, 0, 0); font-family: 宋体; line-height: 20px;">弊公司、营业及技术人员会随时回复你的咨询。</span></p>\r\n', 3, 20, '0', 0),
(8, '', '联系我们', 0, 0, 1, 'contact', 5, 0, 3, '', 'list_contact.html', '', '', '', '', 'cn', 0, 1, '', 1, 'http://', 0, 0, 'img/201406122013161683.jpg', '', '', '', 0, 20, '0', 0),
(28, '', '公司介绍', 0, 0, 1, 'gsjs', 2, 0, 3, '', 'list_about_us.html', 'alone_content.html', '', '', '', 'cn', 0, 1, '2', 0, 'http://', 0, 0, 'img/201406122013161683.jpg', '', '', '', 0, 20, '0', 0),
(11, '', 'BF膜片', 0, 0, 3, 'stb', 1, 0, 0, '', 'list_product.html', 'product_content.html', '', '', '', 'cn', 5, 1, '', 0, 'http://', 0, 0, '', '', '', '<p>\r\n	iiiiii</p>\r\n', 4, 20, '0', 0),
(30, '', '关联公司', 0, 0, 2, 'glgs', 10, 0, 0, '', 'list_relation.html', 'article_content.html', '', '', '', 'cn', 0, 1, '2', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0', 0),
(31, '', '文件下载', 0, 0, 4, 'download', 10, 0, 0, NULL, 'list_down.html', 'down_content.html', '', '', '', 'cn', 0, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0', 0),
(19, '', 'Products', 0, 0, 3, 'product', 2, 0, 0, '', 'list_product.html', 'product_content.html', '', '', '', 'en', 0, 1, '2', 0, 'http://', 0, 0, 'img/201406122020205898.jpg', '', '', '<p>\r\n	<strong>产品介绍</strong><br style="widows: 2; text-transform: none; text-indent: 0px; font: 12px/20px 宋体; white-space: normal; orphans: 2; letter-spacing: normal; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px" />\r\n	<br style="widows: 2; text-transform: none; text-indent: 0px; font: 12px/20px 宋体; white-space: normal; orphans: 2; letter-spacing: normal; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px" />\r\n	<span style="widows: 2; text-transform: none; text-indent: 0px; display: inline !important; font: 12px/20px 宋体; white-space: normal; orphans: 2; float: none; letter-spacing: normal; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">弊公司开发并生产高品质橡胶部品及合成部品，销售至多个领域（市场）。</span><br style="widows: 2; text-transform: none; text-indent: 0px; font: 12px/20px 宋体; white-space: normal; orphans: 2; letter-spacing: normal; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px" />\r\n	<span style="widows: 2; text-transform: none; text-indent: 0px; display: inline !important; font: 12px/20px 宋体; white-space: normal; orphans: 2; float: none; letter-spacing: normal; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">我们的产品中汇聚了膜片、密封垫、密封材、O型圈、防振橡胶LIM产品等各种各样的产品群。</span><br style="widows: 2; text-transform: none; text-indent: 0px; font: 12px/20px 宋体; white-space: normal; orphans: 2; letter-spacing: normal; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px" />\r\n	<br style="widows: 2; text-transform: none; text-indent: 0px; font: 12px/20px 宋体; white-space: normal; orphans: 2; letter-spacing: normal; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px" />\r\n	<span style="widows: 2; text-transform: none; text-indent: 0px; display: inline !important; font: 12px/20px 宋体; white-space: normal; orphans: 2; float: none; letter-spacing: normal; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">点击左侧的产品清单即可查看各种产品的详细信息。<span class="Apple-converted-space">&nbsp;</span></span><br style="widows: 2; text-transform: none; text-indent: 0px; font: 12px/20px 宋体; white-space: normal; orphans: 2; letter-spacing: normal; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px" />\r\n	<span style="widows: 2; text-transform: none; text-indent: 0px; display: inline !important; font: 12px/20px 宋体; white-space: normal; orphans: 2; float: none; letter-spacing: normal; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">我们致力于根据不同的客户应对各种问题与客户一起制造更好的产品。</span><br style="widows: 2; text-transform: none; text-indent: 0px; font: 12px/20px 宋体; white-space: normal; orphans: 2; letter-spacing: normal; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px" />\r\n	<span style="widows: 2; text-transform: none; text-indent: 0px; display: inline !important; font: 12px/20px 宋体; white-space: normal; orphans: 2; float: none; letter-spacing: normal; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">假如您对橡胶产品有疑问或者有想要咨询请随时与我们联系。<span class="Apple-converted-space">&nbsp;</span></span><br style="widows: 2; text-transform: none; text-indent: 0px; font: 12px/20px 宋体; white-space: normal; orphans: 2; letter-spacing: normal; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px" />\r\n	<span style="widows: 2; text-transform: none; text-indent: 0px; display: inline !important; font: 12px/20px 宋体; white-space: normal; orphans: 2; float: none; letter-spacing: normal; color: rgb(0,0,0); word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px">弊公司、营业及技术人员会随时回复你的咨询。</span></p>\r\n', 4, 20, '0', 0),
(32, '', '订单相关', 0, 0, 4, 'ddxg', 10, 0, 0, NULL, 'list_down.html', 'down_content.html', '', '', '', 'cn', 31, 1, '', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0', 0),
(26, '', '用途 · 市场', 0, 0, 3, 'ytsc', 3, 0, 0, '', 'list_product.html', 'product_content.html', '', '', '', 'cn', 0, 1, '2', 0, 'http://', 0, 0, 'img/201406122059458124.jpg', '', '', '', 0, 20, '0', 1),
(29, '', '材料 · 原材料', 0, 0, 3, 'cl', 6, 0, 0, '', 'list_product.html', 'product_content.html', '', '', '', 'cn', 0, 1, '2', 0, 'http://', 0, 0, 'img/201406122056392951.jpg', '', '', '', 0, 20, '0', 0),
(33, '', 'About us', 0, 0, 1, 'about', 2, 0, 3, '', 'list_about_us.html', 'alone_content.html', '', '', '', 'en', 0, 1, '2', 1, 'http://', 0, 0, 'img/201406122013161683.jpg', '', '', '', 0, 20, '0', 0),
(34, '', 'News', 0, 0, 2, 'news', 1, 0, 0, '', 'list_article.html', 'article_content.html', '', '', '', 'en', 0, 1, '2', 0, 'http://', 0, 0, 'img/201406121951036002.jpg', '', '', '', 0, 20, '0', 0),
(35, '', 'Market', 0, 0, 1, 'market', 4, 0, 3, '', 'list_alone.html', 'alone_content.html', 'Market', 'Market', '', 'en', 0, 1, '2', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0', 0),
(36, '', 'Materials', 0, 0, 1, 'materials', 5, 0, 3, NULL, 'list_alone.html', 'alone_content.html', '', '', '', 'en', 0, 1, '2', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0', 0),
(37, '', 'Reation', 0, 0, 1, 'reation', 6, 0, 3, '', 'list_relation.html', 'alone_content.html', '', '', '', 'en', 0, 1, '2', 0, 'http://', 0, 0, '', '', '', '', 0, 20, '0', 0),
(38, '', '工业用品', 0, 0, 3, 'gyyp', 10, 0, 0, NULL, 'list_product.html', 'product_content.html', '', '', '', 'cn', 26, 1, '', 0, 'http://', 0, 0, '', 'img/201406161313198761.png', '', '', 0, 20, '0', 1);

-- --------------------------------------------------------

--
-- 表的结构 `bs_channel`
--

CREATE TABLE IF NOT EXISTS `bs_channel` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `channel_name` varchar(60) NOT NULL,
  `channel_mark` varchar(60) NOT NULL,
  `channel_table` varchar(60) NOT NULL,
  `is_disable` mediumint(8) NOT NULL,
  `is_member` mediumint(8) DEFAULT NULL,
  `channel_mb_grade` mediumint(8) DEFAULT '0',
  `is_verify` mediumint(8) NOT NULL COMMENT '发布内容是否审核',
  `is_del` mediumint(8) NOT NULL DEFAULT '0',
  `channel_order` mediumint(8) NOT NULL DEFAULT '10',
  `is_alone` mediumint(8) NOT NULL DEFAULT '0',
  `list_php` varchar(150) DEFAULT NULL,
  `content_php` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `bs_channel`
--

INSERT INTO `bs_channel` (`id`, `channel_name`, `channel_mark`, `channel_table`, `is_disable`, `is_member`, `channel_mb_grade`, `is_verify`, `is_del`, `channel_order`, `is_alone`, `list_php`, `content_php`) VALUES
(1, '单页模型', 'alone', 'alone', 0, 0, 2, 0, 1, 5, 1, 'alone/alone.php', 'alone/show_alone.php'),
(2, '文章模块', 'article', 'article', 0, 0, 2, 0, 0, 1, 0, 'article/article.php', 'article/show_article.php'),
(3, '产品模块', 'product', 'product', 0, 0, 2, 0, 0, 2, 0, 'product/product.php', 'product/show_product.php'),
(4, '下载模块', 'down', 'down', 0, 0, 2, 0, 0, 3, 0, 'down/down.php', 'down/show_down.php'),
(5, '招聘模块', 'job', 'job', 1, 0, 2, 0, 0, 4, 0, 'job/job.php', 'job/show_job.php'),
(-9, '表单模块', 'mx_form', 'mx_form', 1, 0, 0, 0, 0, 10, 0, 'mx_form/mx_form.php', 'mx_form/show_mx_form.php');

-- --------------------------------------------------------

--
-- 表的结构 `bs_cmsinfo`
--

CREATE TABLE IF NOT EXISTS `bs_cmsinfo` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `info_tag` varchar(60) DEFAULT NULL COMMENT '配置信息标识',
  `info_array` text COMMENT '配置信息内容',
  `info_name` varchar(60) DEFAULT NULL COMMENT '配置信息名',
  `lang_tag` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `bs_cmsinfo`
--

INSERT INTO `bs_cmsinfo` (`id`, `info_tag`, `info_array`, `info_name`, `lang_tag`) VALUES
(1, 'sys', 'array (\n  ''web_upload_file'' => ''zip|gz|rar|iso|doc|xsl|ppt|wps|swf|mpg|mp3|rm|rmvb|wmv|wma|wav|mid|mov'',\n  ''thump_width'' => ''300'',\n  ''thump_height'' => ''200'',\n  ''upload_size'' => ''2024000'',\n  ''web_member'' => \n  array (\n    0 => ''1'',\n  ),\n  ''is_member'' => \n  array (\n    0 => ''1'',\n  ),\n  ''member_mail'' => \n  array (\n    0 => ''1'',\n  ),\n  ''member_no_name'' => ''admin|administrator|user|users'',\n  ''image_is'' => \n  array (\n    0 => ''0'',\n  ),\n  ''image_url_is'' => \n  array (\n    0 => ''1'',\n  ),\n  ''image_type'' => \n  array (\n    0 => ''1'',\n  ),\n  ''image_text'' => ''www.beescms.com'',\n  ''image_text_color'' => ''0,0,0'',\n  ''image_text_size'' => ''12'',\n  ''pic'' => ''mark_logo.gif'',\n  ''image_position'' => \n  array (\n    0 => ''9'',\n  ),\n  ''mail_type'' => \n  array (\n    0 => ''1'',\n  ),\n  ''mail_host'' => ''smtp.163.com'',\n  ''mail_pot'' => ''25'',\n  ''mail_mail'' => '''',\n  ''mail_user'' => '''',\n  ''mail_pw'' => '''',\n  ''mail_js'' => '''',\n  ''mail_jw'' => '''',\n  ''safe_open'' => \n  array (\n    0 => ''1'',\n    1 => ''2'',\n    2 => ''3'',\n  ),\n  ''web_content_title'' => ''180'',\n  ''web_content_info'' => ''200'',\n  ''is_hits'' => ''1'',\n  ''fialt_words'' => ''她妈|它妈|他妈|你妈|去死|贱人|非典|艾滋病|阳痿'',\n  ''arc_html'' => \n  array (\n    0 => ''1'',\n  ),\n  ''nav'' => ''syssys'',\n  ''admin_p_nav'' => ''allsys'',\n)', '系统配置', ''),
(2, 'index_info', 'array (\n  ''flash_is'' => ''0'',\n  ''index_lang'' => ''9'',\n  ''nav'' => ''indexsys'',\n  ''admin_p_nav'' => ''allsys'',\n)', '首页配置', ''),
(6, 'info', 'array (\n  ''web_name'' => ''绍兴十川橡胶'',\n  ''web_index_name'' => ''绍兴十川橡胶'',\n  ''web_html'' => ''0'',\n  ''is_cache'' => ''0'',\n  ''cache_time'' => ''30'',\n  ''web_logo'' => '''',\n  ''web_template'' => ''default_cn'',\n  ''web_powerby'' => '''',\n  ''web_keywords'' => '''',\n  ''web_description'' => ''绍兴十川橡胶'',\n  ''web_yinxiao'' => '''',\n  ''hot_key'' => ''绍兴十川橡胶'',\n  ''all_key'' => ''绍兴十川橡胶'',\n  ''nav'' => ''websys'',\n  ''admin_p_nav'' => ''allsys'',\n)', '网站配置', 'cn'),
(7, 'info', 'array (\n  ''web_name'' => ''Shaoxing Togawa Rubber Co. Ltd'',\n  ''web_index_name'' => ''Shaoxing Togawa Rubber Co. Ltd'',\n  ''web_html'' => ''0'',\n  ''is_cache'' => ''1'',\n  ''cache_time'' => ''30'',\n  ''web_logo'' => '''',\n  ''web_template'' => ''default_en'',\n  ''web_powerby'' => '''',\n  ''web_keywords'' => ''Shaoxing Togawa Rubber Co. Ltd'',\n  ''web_description'' => ''Shaoxing Togawa Rubber Co. Ltd'',\n  ''web_yinxiao'' => '''',\n  ''hot_key'' => '''',\n  ''all_key'' => '''',\n  ''nav'' => ''websys'',\n  ''admin_p_nav'' => ''allsys'',\n)', '网站配置', 'en'),
(8, 'info', 'array (\n  ''web_name'' => '''',\n  ''web_index_name'' => '''',\n  ''web_html'' => ''0'',\n  ''is_cache'' => ''0'',\n  ''cache_time'' => ''30'',\n  ''web_logo'' => ''img/20121210/201212102144457490.gif'',\n  ''web_template'' => ''default_jp'',\n  ''web_powerby'' => '''',\n  ''web_keywords'' => '''',\n  ''web_description'' => '''',\n  ''web_yinxiao'' => '''',\n  ''hot_key'' => '''',\n  ''all_key'' => '''',\n  ''nav'' => ''websys'',\n  ''admin_p_nav'' => ''allsys'',\n)', '网站配置', 'jp');

-- --------------------------------------------------------

--
-- 表的结构 `bs_collect`
--

CREATE TABLE IF NOT EXISTS `bs_collect` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `member_id` mediumint(8) NOT NULL,
  `arc_id` mediumint(8) NOT NULL,
  `addtime` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bs_down`
--

CREATE TABLE IF NOT EXISTS `bs_down` (
  `id` mediumint(8) NOT NULL,
  `down` varchar(255) DEFAULT NULL,
  `body` text,
  `content` text,
  `filesize` varchar(255) DEFAULT NULL,
  `filetype` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bs_down`
--

INSERT INTO `bs_down` (`id`, `down`, `body`, `content`, `filesize`, `filetype`) VALUES
(38, '../upload/file/-20140616135118.doc', NULL, '', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `bs_feedform`
--

CREATE TABLE IF NOT EXISTS `bs_feedform` (
  `id` mediumint(8) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `f_name` varchar(255) DEFAULT NULL,
  `f_mail` varchar(255) DEFAULT NULL,
  `f_tel` varchar(255) DEFAULT NULL,
  `f_content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bs_flash_ad`
--

CREATE TABLE IF NOT EXISTS `bs_flash_ad` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `pic` varchar(255) DEFAULT NULL,
  `pic_url` varchar(255) DEFAULT NULL,
  `pic_text` varchar(255) DEFAULT NULL,
  `pic_order` mediumint(8) NOT NULL DEFAULT '10',
  `lang` varchar(60) CHARACTER SET latin1 NOT NULL,
  `cate_id` mediumint(8) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `bs_flash_ad`
--

INSERT INTO `bs_flash_ad` (`id`, `pic`, `pic_url`, `pic_text`, `pic_order`, `lang`, `cate_id`) VALUES
(2, 'img/201406121931196560.png', '', '', 10, 'cn', 1),
(4, 'img/201406121931196560.png', '', '', 2, 'en', 1);

-- --------------------------------------------------------

--
-- 表的结构 `bs_flash_ad_cate`
--

CREATE TABLE IF NOT EXISTS `bs_flash_ad_cate` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(60) NOT NULL,
  `cate_tpl_id` mediumint(8) DEFAULT '0',
  `is_disable` mediumint(8) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `bs_flash_ad_cate`
--

INSERT INTO `bs_flash_ad_cate` (`id`, `cate_name`, `cate_tpl_id`, `is_disable`) VALUES
(1, '默认', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `bs_flash_info`
--

CREATE TABLE IF NOT EXISTS `bs_flash_info` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `flash_width` varchar(60) DEFAULT NULL,
  `flash_height` varchar(60) DEFAULT NULL,
  `flash_style` mediumint(8) NOT NULL,
  `lang` varchar(60) NOT NULL,
  `cate_id` mediumint(8) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `bs_flash_info`
--

INSERT INTO `bs_flash_info` (`id`, `flash_width`, `flash_height`, `flash_style`, `lang`, `cate_id`) VALUES
(1, '1000', '200', 1, 'cn', 1);

-- --------------------------------------------------------

--
-- 表的结构 `bs_form`
--

CREATE TABLE IF NOT EXISTS `bs_form` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `form_name` varchar(60) NOT NULL,
  `form_mark` varchar(60) NOT NULL,
  `is_disable` mediumint(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `bs_form`
--

INSERT INTO `bs_form` (`id`, `form_name`, `form_mark`, `is_disable`) VALUES
(5, '产品购买', 'prinfo', 0),
(8, '在线应聘', 'webjob', 0),
(9, '留言反馈', 'feedform', 0);

-- --------------------------------------------------------

--
-- 表的结构 `bs_formfield`
--

CREATE TABLE IF NOT EXISTS `bs_formfield` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `field_name` varchar(60) NOT NULL,
  `use_name` varchar(60) NOT NULL,
  `field_type` varchar(60) NOT NULL,
  `field_value` varchar(255) NOT NULL,
  `field_length` mediumint(8) NOT NULL,
  `form_id` mediumint(8) NOT NULL,
  `field_info` varchar(60) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL,
  `is_disable` mediumint(8) NOT NULL,
  `form_order` mediumint(8) NOT NULL DEFAULT '0',
  `is_empty` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- 转存表中的数据 `bs_formfield`
--

INSERT INTO `bs_formfield` (`id`, `field_name`, `use_name`, `field_type`, `field_value`, `field_length`, `form_id`, `field_info`, `is_disable`, `form_order`, `is_empty`) VALUES
(9, 'username', '姓名', 'text', '', 255, 5, '', 0, 1, 0),
(32, 'web_contact', 'QQ/MSN/旺旺', 'text', '', 255, 5, '', 0, 4, 0),
(17, 'address', '公司地址', 'text', '', 255, 5, '', 0, 5, 0),
(12, 'mail', '邮箱', 'text', '', 255, 5, '', 0, 2, 1),
(13, 'tel', '电话/传真', 'text', '', 255, 5, '', 0, 3, 0),
(14, 'content', '详细内容', 'textarea', '', 255, 5, '', 0, 6, 0),
(19, 'jobname', '姓名', 'text', '', 255, 8, '', 0, 1, 0),
(20, 'jobsex', '性别', 'select', '男\r\n女', 255, 8, '', 0, 2, 0),
(21, 'jobmoth', '出生年月', 'text', '', 255, 8, '', 0, 3, 0),
(22, 'jobjg', '籍贯', 'text', '', 255, 8, '', 0, 4, 0),
(23, 'jobxl', '学历', 'text', '', 255, 8, '', 0, 5, 0),
(24, 'jobzy', '专业', 'text', '', 255, 8, '', 0, 6, 0),
(25, 'jobbyyx', '毕业院校', 'text', '', 255, 8, '', 0, 7, 0),
(26, 'jobphone', '联系电话', 'text', '', 255, 8, '', 0, 8, 0),
(27, 'jobmail', 'E–mail', 'text', '', 255, 8, '', 0, 9, 0),
(28, 'jobhj', '所获奖项', 'textarea', '', 255, 8, '', 0, 10, 0),
(29, 'jobgzjl', '工作经历', 'textarea', '', 255, 8, '', 0, 11, 0),
(30, 'jobzyjn', '专业技能', 'textarea', '', 255, 8, '', 0, 12, 0),
(31, 'jobyyah', '业余爱好', 'textarea', '', 255, 8, '', 0, 13, 0),
(33, 'title', '主题', 'text', '', 255, 9, '', 0, 1, 0),
(34, 'f_name', '姓名', 'text', '', 255, 9, '', 0, 2, 0),
(35, 'f_mail', 'E-mail', 'text', '', 255, 9, '', 0, 3, 0),
(36, 'f_tel', '电话', 'text', '', 255, 9, '', 0, 4, 0),
(37, 'f_content', '内容', 'textarea', '', 255, 9, '', 0, 5, 0);

-- --------------------------------------------------------

--
-- 表的结构 `bs_formlist`
--

CREATE TABLE IF NOT EXISTS `bs_formlist` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) DEFAULT NULL,
  `form_time` varchar(60) DEFAULT NULL,
  `form_ip` varchar(60) DEFAULT NULL,
  `is_read` mediumint(8) NOT NULL DEFAULT '0',
  `member_id` mediumint(8) DEFAULT '0',
  `arc_id` mediumint(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bs_job`
--

CREATE TABLE IF NOT EXISTS `bs_job` (
  `id` mediumint(8) NOT NULL,
  `jobnum` varchar(255) DEFAULT NULL,
  `jopaddress` varchar(255) DEFAULT NULL,
  `joblasttime` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bs_keywords`
--

CREATE TABLE IF NOT EXISTS `bs_keywords` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `keywords` varchar(60) NOT NULL,
  `wordsurl` varchar(60) NOT NULL,
  `lang` varchar(60) CHARACTER SET ucs2 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `bs_lang`
--

CREATE TABLE IF NOT EXISTS `bs_lang` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(60) NOT NULL,
  `lang_order` mediumint(8) NOT NULL,
  `lang_tag` varchar(60) NOT NULL,
  `lang_is_use` mediumint(8) NOT NULL DEFAULT '1',
  `lang_is_open` mediumint(8) NOT NULL,
  `lang_is_url` mediumint(8) NOT NULL,
  `lang_url` varchar(60) DEFAULT NULL,
  `lang_is_fix` mediumint(8) NOT NULL DEFAULT '0',
  `lang_main` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `bs_lang`
--

INSERT INTO `bs_lang` (`id`, `lang_name`, `lang_order`, `lang_tag`, `lang_is_use`, `lang_is_open`, `lang_is_url`, `lang_url`, `lang_is_fix`, `lang_main`) VALUES
(10, 'English', 9, 'en', 1, 0, 0, 'http://', 0, 0),
(9, '简体中文', 10, 'cn', 1, 0, 0, 'http://', 1, 1),
(11, '日语版', 10, 'jp', 1, 0, 0, 'http://', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `bs_lang_cate`
--

CREATE TABLE IF NOT EXISTS `bs_lang_cate` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `lang_cate` varchar(60) NOT NULL,
  `lang_info` text,
  `lang` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `bs_lang_cate`
--

INSERT INTO `bs_lang_cate` (`id`, `lang_cate`, `lang_info`, `lang`) VALUES
(1, '模板语言', '模板中使用到的语言，如栏目名等', 'cn'),
(2, '全局语言', '程序中使用的语言，为了程序运行正常，请勿删除', 'cn'),
(3, '信息提示', '前台一些反馈信息', 'cn'),
(4, '会员中心', '会员中心使用的导航等语言', 'cn'),
(18, '会员中心', '会员中心使用的导航等语言', 'en'),
(17, '信息提示', '前台一些反馈信息', 'en'),
(16, '全局语言', '程序中使用的语言，为了程序运行正常，请勿删除', 'en'),
(15, '模板语言', '模板中使用到的语言，如栏目名等', 'en');

-- --------------------------------------------------------

--
-- 表的结构 `bs_lang_lang`
--

CREATE TABLE IF NOT EXISTS `bs_lang_lang` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `lang_tag` varchar(60) NOT NULL,
  `lang_value` varchar(240) DEFAULT NULL,
  `lang` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=527 ;

--
-- 转存表中的数据 `bs_lang_lang`
--

INSERT INTO `bs_lang_lang` (`id`, `lang_tag`, `lang_value`, `lang`) VALUES
(5, 'pages', '共', 'cn'),
(6, 'pagesize', '条记录', 'cn'),
(7, 'page', '当前第', 'cn'),
(8, 'pagehome', '首页', 'cn'),
(9, 'pageend', '尾页', 'cn'),
(10, 'pagapre', '上一页', 'cn'),
(11, 'pagenext', '下一页', 'cn'),
(12, 'pagego', '转到', 'cn'),
(13, 'previous', '上一条', 'cn'),
(14, 'next', '下一条', 'cn'),
(15, 'nonestr', '没有了', 'cn'),
(17, 'sitemap', '网站地图', 'cn'),
(384, 'order_msg4', '表单已经处理，我们会及时和你联系！', 'cn'),
(382, 'order_msg3', '发生错误,该表单已经停止使用,不能添加表单信息', 'cn'),
(380, 'order_msg2', '表单不能为空', 'cn'),
(376, 'index', '首页', 'cn'),
(377, 'book', '留言本', 'cn'),
(378, 'order_msg1', '发生错误，无法处理该表单，清重新操作！', 'cn'),
(84, 'member_msg', '请先登录', 'cn'),
(85, 'member_msg2', '验证码不正确', 'cn'),
(86, 'member_smg3', '用户名或密码不能为空', 'cn'),
(87, 'member_msg3', '用户名名或密码不正确', 'cn'),
(88, 'member_msg4', '登录失败,该账号已被锁定', 'cn'),
(89, 'member_msg5', '会员注册已经暂停', 'cn'),
(90, 'member_msg6', '用户名只能是字母数字，4以上长度', 'cn'),
(91, 'member_msg7', '昵称只能是字母数字，4以上长度', 'cn'),
(92, 'member_msg8', '密码不能为空', 'cn'),
(93, 'member_msg9', '两次密码不一样', 'cn'),
(94, 'member_msg10', '邮箱不正确', 'cn'),
(95, 'member_msg11', '该用户名不能注册', 'cn'),
(96, 'member_msg12', '已经存在相同的用户名，请更换用户名', 'cn'),
(97, 'member_msg13', '该邮箱已经被使用,请更换', 'cn'),
(98, 'member_msg14', '用户注册成功', 'cn'),
(99, 'msg_info', '不存在flash引导页模板', 'cn'),
(100, 'msg_info2', '不存在【@】语言首页模板', 'cn'),
(101, 'msg_info3', '找不到【@】语言模板文件', 'cn'),
(102, 'msg_info4', '请先生成【@】语言首页', 'cn'),
(103, 'msg_info5', '请先更新栏目缓存', 'cn'),
(104, 'msg_info6', '请先更新频道缓存', 'cn'),
(105, 'msg_info7', '你当前的会员权限不能浏览', 'cn'),
(106, 'msg_info8', '该内容未审核,还不能浏览', 'cn'),
(107, 'msg_info9', '还没有添加内容', 'cn'),
(422, 'msg_info4', 'Please generate【@】Language Home', 'en'),
(421, 'msg_info3', 'Unable to find【@】language template file', 'en'),
(420, 'msg_info2', 'Does not exist【@】Language Home template', 'en'),
(419, 'msg_info', 'Not flash boot Pages template', 'en'),
(418, 'member_msg14', 'Register success', 'en'),
(417, 'member_msg13', 'he mailbox is already in use, replace', 'en'),
(439, 'member_msg25', 'Deleted successfully', 'en'),
(438, 'member_msg24', 'Advisory modified successfully', 'en'),
(437, 'member_msg23', 'The content can not be empty', 'en'),
(436, 'member_msg22', 'The consultation has been processed, please re-add', 'en'),
(435, 'member_msg21', 'The consultation does not exist', 'en'),
(434, 'member_msg20', 'Consulting successfully added', 'en'),
(433, 'member_msg19', 'Title or content can not be empty', 'en'),
(432, 'msg_info10', 'Parameter passing errors', 'en'),
(431, 'member_msg18', 'Modified successfully', 'en'),
(430, 'member_msg17', 'From form submission', 'en'),
(429, 'member_msg16', 'Phone must be numeric', 'en'),
(428, 'member_msg15', 'QQ number is incorrect', 'en'),
(427, 'msg_info9', 'Has not yet added content', 'en'),
(426, 'msg_info8', 'The content is not audited, but also can not browse', 'en'),
(425, 'msg_info7', 'Your current membership privileges can not browse', 'en'),
(424, 'msg_info6', 'Please update the channel cache', 'en'),
(423, 'msg_info5', 'Please update section cache', 'en'),
(416, 'member_msg12', 'The same user name already exists, replace the user name', 'en'),
(415, 'member_msg11', 'The user name can not be registered', 'en'),
(414, 'member_msg10', 'E-mail is incorrect', 'en'),
(413, 'member_msg9', 'Not the same password twice', 'en'),
(412, 'member_msg8', 'Password can not be empty', 'en'),
(411, 'member_msg7', 'The nickname can only contain alphanumeric, length of 4 or more', 'en'),
(410, 'member_msg6', 'The user name can only be alphanumeric longer than 4', 'en'),
(409, 'member_msg5', 'Member registration has been suspended', 'en'),
(408, 'member_msg4', 'Login failed, the account has been locked', 'en'),
(266, 'member_msg15', 'QQ号码不正确', 'cn'),
(267, 'member_msg16', '手机必须为数字', 'cn'),
(268, 'member_msg17', '请从表单提交', 'cn'),
(269, 'member_msg18', '修改成功', 'cn'),
(407, 'member_msg3', 'Username name or password is incorrect', 'en'),
(406, 'member_smg3', 'User name or password can not be empty', 'en'),
(274, 'msg_info10', '参数传递错误,请重新操作', 'cn'),
(276, 'member_msg19', '标题或内容不能为空', 'cn'),
(277, 'member_msg20', '咨询添加成功', 'cn'),
(278, 'member_msg21', '不存在该咨询', 'cn'),
(279, 'member_msg22', '咨询已经处理,请重新添加', 'cn'),
(280, 'member_msg23', '内容不能为空', 'cn'),
(281, 'member_msg24', '咨询修改成功', 'cn'),
(282, 'member_msg25', '删除成功', 'cn'),
(283, 'member_msg26', '原始密码不正确', 'cn'),
(284, 'member_msg27', '已经退出', 'cn'),
(449, 'member_msg28', 'User Center', 'en'),
(450, 'member_out', '退出登陆', 'cn'),
(451, 'member_out', 'Logout', 'en'),
(447, 'member_wel', 'Welcome back!', 'en'),
(448, 'member_msg28', '用户中心', 'cn'),
(445, 'book_msg4', 'Successfully added', 'en'),
(444, 'book_msg3', 'The message can not be empty', 'en'),
(443, 'book_msg2', 'Message title can not be empty', 'en'),
(442, 'book_msg1', 'The Guestbook can not use', 'en'),
(441, 'member_msg27', 'Has withdrawn from the', 'en'),
(440, 'member_msg26', 'Original password is incorrect', 'en'),
(386, 'pages', 'Common', 'en'),
(387, 'pagesize', 'Records', 'en'),
(388, 'page', 'Current', 'en'),
(389, 'pagehome', 'Home', 'en'),
(390, 'pageend', 'Last', 'en'),
(391, 'pagapre', 'Previous', 'en'),
(392, 'pagenext', 'Next', 'en'),
(393, 'pagego', 'Go to', 'en'),
(405, 'member_msg2', 'Incorrect verification code', 'en'),
(404, 'member_msg', 'Please login', 'en'),
(350, 'book_msg1', '留言本不能使用', 'cn'),
(351, 'book_msg2', '留言标题不能为空', 'cn'),
(352, 'book_msg3', '留言内容不能为空', 'cn'),
(353, 'book_msg4', '添加成功', 'cn'),
(403, 'order_msg1', 'An error occurs, can not process the form, clear!', 'en'),
(402, 'book', 'Guestbook', 'en'),
(401, 'index', 'Home', 'en'),
(400, 'order_msg2', 'The form can not be empty', 'en'),
(399, 'order_msg3', 'An error occurs, the form has to stop using, you can not add form', 'en'),
(398, 'order_msg4', 'The form has been processed, we will promptly contact you!', 'en'),
(397, 'sitemap', 'Site Map', 'en'),
(396, 'nonestr', 'No', 'en'),
(395, 'next', 'Next', 'en'),
(446, 'member_wel', '欢迎你回来!', 'cn'),
(394, 'previous', 'Previous', 'en'),
(452, 'code', '验证码：', 'cn'),
(453, 'code', 'Code:', 'en'),
(454, 'code_info', '看不清？更换一张', 'cn'),
(455, 'code_info', 'See? Replacing a', 'en'),
(456, 'form_submit', '提交', 'cn'),
(457, 'form_submit', 'submit', 'en'),
(458, 'form_reset', '重置', 'cn'),
(459, 'form_reset', 'reset', 'en'),
(460, 'pages', '共', 'jp'),
(461, 'pagesize', '条记录', 'jp'),
(462, 'page', '当前第', 'jp'),
(463, 'pagehome', '首页', 'jp'),
(464, 'pageend', '尾页', 'jp'),
(465, 'pagapre', '上一页', 'jp'),
(466, 'pagenext', '下一页', 'jp'),
(467, 'pagego', '转到', 'jp'),
(468, 'previous', '上一条', 'jp'),
(469, 'next', '下一条', 'jp'),
(470, 'nonestr', '没有了', 'jp'),
(471, 'sitemap', '网站地图', 'jp'),
(472, 'order_msg4', '表单已经处理，我们会及时和你联系！', 'jp'),
(473, 'order_msg3', '发生错误,该表单已经停止使用,不能添加表单信息', 'jp'),
(474, 'order_msg2', '表单不能为空', 'jp'),
(475, 'index', '首页', 'jp'),
(476, 'book', '留言本', 'jp'),
(477, 'order_msg1', '发生错误，无法处理该表单，清重新操作！', 'jp'),
(478, 'member_msg', '请先登录', 'jp'),
(479, 'member_msg2', '验证码不正确', 'jp'),
(480, 'member_smg3', '用户名或密码不能为空', 'jp'),
(481, 'member_msg3', '用户名名或密码不正确', 'jp'),
(482, 'member_msg4', '登录失败,该账号已被锁定', 'jp'),
(483, 'member_msg5', '会员注册已经暂停', 'jp'),
(484, 'member_msg6', '用户名只能是字母数字，4以上长度', 'jp'),
(485, 'member_msg7', '昵称只能是字母数字，4以上长度', 'jp'),
(486, 'member_msg8', '密码不能为空', 'jp'),
(487, 'member_msg9', '两次密码不一样', 'jp'),
(488, 'member_msg10', '邮箱不正确', 'jp'),
(489, 'member_msg11', '该用户名不能注册', 'jp'),
(490, 'member_msg12', '已经存在相同的用户名，请更换用户名', 'jp'),
(491, 'member_msg13', '该邮箱已经被使用,请更换', 'jp'),
(492, 'member_msg14', '用户注册成功', 'jp'),
(493, 'msg_info', '不存在flash引导页模板', 'jp'),
(494, 'msg_info2', '不存在【@】语言首页模板', 'jp'),
(495, 'msg_info3', '找不到【@】语言模板文件', 'jp'),
(496, 'msg_info4', '请先生成【@】语言首页', 'jp'),
(497, 'msg_info5', '请先更新栏目缓存', 'jp'),
(498, 'msg_info6', '请先更新频道缓存', 'jp'),
(499, 'msg_info7', '你当前的会员权限不能浏览', 'jp'),
(500, 'msg_info8', '该内容未审核,还不能浏览', 'jp'),
(501, 'msg_info9', '还没有添加内容', 'jp'),
(502, 'member_msg15', 'QQ号码不正确', 'jp'),
(503, 'member_msg16', '手机必须为数字', 'jp'),
(504, 'member_msg17', '请从表单提交', 'jp'),
(505, 'member_msg18', '修改成功', 'jp'),
(506, 'msg_info10', '参数传递错误,请重新操作', 'jp'),
(507, 'member_msg19', '标题或内容不能为空', 'jp'),
(508, 'member_msg20', '咨询添加成功', 'jp'),
(509, 'member_msg21', '不存在该咨询', 'jp'),
(510, 'member_msg22', '咨询已经处理,请重新添加', 'jp'),
(511, 'member_msg23', '内容不能为空', 'jp'),
(512, 'member_msg24', '咨询修改成功', 'jp'),
(513, 'member_msg25', '删除成功', 'jp'),
(514, 'member_msg26', '原始密码不正确', 'jp'),
(515, 'member_msg27', '已经退出', 'jp'),
(516, 'member_out', '退出登陆', 'jp'),
(517, 'member_msg28', '用户中心', 'jp'),
(518, 'book_msg1', '留言本不能使用', 'jp'),
(519, 'book_msg2', '留言标题不能为空', 'jp'),
(520, 'book_msg3', '留言内容不能为空', 'jp'),
(521, 'book_msg4', '添加成功', 'jp'),
(522, 'member_wel', '欢迎你回来!', 'jp'),
(523, 'code', '验证码：', 'jp'),
(524, 'code_info', '看不清？更换一张', 'jp'),
(525, 'form_submit', '提交', 'jp'),
(526, 'form_reset', '重置', 'jp');

-- --------------------------------------------------------

--
-- 表的结构 `bs_link`
--

CREATE TABLE IF NOT EXISTS `bs_link` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `link_url` varchar(60) NOT NULL,
  `link_name` varchar(60) NOT NULL,
  `link_logo` varchar(60) DEFAULT NULL,
  `link_order` mediumint(8) NOT NULL DEFAULT '1',
  `link_info` varchar(255) DEFAULT NULL,
  `link_mail` varchar(60) DEFAULT NULL,
  `lang` varchar(60) NOT NULL,
  `addtime` varchar(60) DEFAULT NULL,
  `link_type` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `bs_link`
--

INSERT INTO `bs_link` (`id`, `link_url`, `link_name`, `link_logo`, `link_order`, `link_info`, `link_mail`, `lang`, `addtime`, `link_type`) VALUES
(1, 'http://www.beescms.com', '企业网站管理系统', 'http://', 1, '', '', 'cn', '1309053704', 0),
(2, 'http://www.beescms.com/bbs', '交流论坛', 'http://', 2, '', '', 'cn', '1309053729', 0),
(3, 'http://www.beescms.com/help', '在线帮助', 'http://', 3, '', '', 'cn', '1309053749', 0),
(4, 'http://www.beescms.com', 'BEES企业网站管理系统', 'img/20110812/201108121414162883.gif', 1, '', '', 'cn', '1313129685', 1),
(5, 'http://www.169host.com', '域名空间', '', 1, '', '', 'cn', '1323935030', 0),
(6, 'http://www.lp0874.com', '罗平生活网', '', 10, '', '', 'cn', '1355143203', 0),
(7, 'http://www.baidu.com', '百度', '', 1, '', '', 'jp', '1402569060', 0);

-- --------------------------------------------------------

--
-- 表的结构 `bs_maintb`
--

CREATE TABLE IF NOT EXISTS `bs_maintb` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `filter` varchar(60) DEFAULT NULL,
  `tbpic` varchar(60) DEFAULT NULL,
  `keywords` varchar(60) DEFAULT NULL,
  `info` text,
  `author` varchar(60) DEFAULT NULL,
  `source` varchar(60) DEFAULT NULL,
  `hits` mediumint(8) NOT NULL DEFAULT '0',
  `category` mediumint(8) NOT NULL,
  `channel` mediumint(9) NOT NULL,
  `addtime` varchar(60) NOT NULL,
  `updatetime` varchar(60) DEFAULT NULL,
  `top` mediumint(8) NOT NULL,
  `purview` mediumint(8) NOT NULL COMMENT '浏览权限',
  `is_html` mediumint(8) NOT NULL COMMENT '1为动态浏览,0为静态',
  `verify` mediumint(8) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `lang` varchar(60) DEFAULT NULL,
  `is_url` mediumint(8) NOT NULL DEFAULT '0',
  `url_add` varchar(60) DEFAULT NULL,
  `title_color` varchar(60) DEFAULT NULL,
  `title_style` mediumint(8) NOT NULL DEFAULT '0',
  `is_open` mediumint(8) NOT NULL DEFAULT '0',
  `cache_time` varchar(60) DEFAULT NULL,
  `custom_url` varchar(255) DEFAULT NULL,
  `c_order` mediumint(8) DEFAULT NULL,
  `content_key` varchar(200) DEFAULT NULL,
  `small_title` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- 转存表中的数据 `bs_maintb`
--

INSERT INTO `bs_maintb` (`id`, `title`, `filter`, `tbpic`, `keywords`, `info`, `author`, `source`, `hits`, `category`, `channel`, `addtime`, `updatetime`, `top`, `purview`, `is_html`, `verify`, `url`, `lang`, `is_url`, `url_add`, `title_color`, `title_style`, `is_open`, `cache_time`, `custom_url`, `c_order`, `content_key`, `small_title`) VALUES
(35, '我只是一个测试标题', '', '', '', '\r\n	内容全部放在这里\r\n\r\n	\r\n', '未知', '未知', 1, 4, 2, '1402571191', '1402898768', 0, 0, 0, 0, 'htm/gsxw/2014_0612_35.html', 'cn', 0, 'http://', 'rgb(0, 0, 0)', 0, 0, '30', '', NULL, '', '我只是一个测试标题'),
(17, '简介', '', '', '', 'BEES企业网站管理系统（以下称BEES）是一个基于PHP+Mysql架构的企业网站管理系统。BEES 采用模块化方式开发，功能强大灵活易于扩展，并且完全开放源代码，多种语言分站，为企业网站...', '未知', '未知', 124, 8, 1, '1308982008', '1402650419', 0, 0, 0, 0, '', 'cn', 0, '', '', 0, 0, '30', '', 0, '', ''),
(36, 'about us', NULL, '', '', '\r\n	\r\n\r\n	Shaoxing Togawa Rubber Co. Ltd.Founded in 2005 April, is a wholly owned subsidiary of Sichuan, Togawa Japanese investment in China.\r\n	\r\n	Company address:Pu Industrial Park in Zhejiang province Shangyu city Chinese&nbsp;\r\n	Land area:1...', '未知', '未知', 1, 33, 1, '1402718806', '1402718806', 0, 0, 0, 0, NULL, 'en', 0, NULL, NULL, 0, 0, '30', NULL, NULL, NULL, NULL),
(37, '株式会社十川橡胶100%出资', '', 'img/201406141304017363.png', '', '', '未知', '未知', 2, 34, 2, '1402722387', '1402722387', 0, 0, 0, 0, 'htm/news/2014_0614_37.html', 'en', 0, 'http://', '', 0, 0, '30', '', NULL, '', '株式会社十川橡胶100%出资'),
(38, '速度下载了', '', '', '', '', '未知', '未知', 14, 32, 4, '1402895182', '1402895182', 0, 0, 0, 0, 'htm/ddxg/2014_0616_38.html', 'cn', 0, 'http://', '', 0, 0, '30', '', NULL, '', '速度下载了'),
(39, '零件', '', 'img/201406161905537201.jpg', '', '', '未知', '未知', 1, 5, 3, '1402916765', '1402916805', 0, 0, 0, 0, 'htm/cpzx/2014_0616_39.html', 'cn', 0, 'http://', '', 0, 0, '30', '', NULL, '', '零件'),
(40, '零件', '', 'img/201406161313198761.png', '', '', '未知', '未知', 1, 19, 3, '1402916765', '1402916765', 0, 0, 0, 0, 'htm/product/2014_0616_40.html', 'en', 0, 'http://', '', 0, 0, '30', '', NULL, '', '零件');

-- --------------------------------------------------------

--
-- 表的结构 `bs_market`
--

CREATE TABLE IF NOT EXISTS `bs_market` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `market_name` varchar(60) DEFAULT NULL,
  `market_type` mediumint(8) NOT NULL DEFAULT '0',
  `market_num` varchar(60) NOT NULL,
  `market_order` varchar(60) NOT NULL DEFAULT '10',
  `market_is` mediumint(8) NOT NULL DEFAULT '1',
  `lang` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `bs_market`
--

INSERT INTO `bs_market` (`id`, `market_name`, `market_type`, `market_num`, `market_order`, `market_is`, `lang`) VALUES
(1, '销售客服', 1, '2429256177', '1', 1, 'cn'),
(2, '销售客服', 1, '2429256177', '1', 1, 'en');

-- --------------------------------------------------------

--
-- 表的结构 `bs_member`
--

CREATE TABLE IF NOT EXISTS `bs_member` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `member_name` varchar(60) DEFAULT NULL,
  `member_password` varchar(60) NOT NULL,
  `member_nich` varchar(60) NOT NULL,
  `member_purview` mediumint(8) NOT NULL DEFAULT '0',
  `member_user` varchar(60) NOT NULL,
  `member_mail` varchar(60) NOT NULL,
  `member_tel` varchar(60) DEFAULT NULL,
  `is_disable` mediumint(8) NOT NULL DEFAULT '0',
  `member_ip` varchar(60) DEFAULT NULL,
  `member_time` varchar(60) DEFAULT NULL,
  `member_count` mediumint(8) NOT NULL DEFAULT '0',
  `member_qq` varchar(60) DEFAULT NULL,
  `member_phone` varchar(60) DEFAULT NULL,
  `member_sex` mediumint(8) DEFAULT '0',
  `member_addtime` varchar(60) DEFAULT NULL,
  `member_birth` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- 表的结构 `bs_member_group`
--

CREATE TABLE IF NOT EXISTS `bs_member_group` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `member_group_name` varchar(60) NOT NULL,
  `member_group_info` varchar(255) NOT NULL,
  `is_disable` mediumint(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `bs_member_group`
--

INSERT INTO `bs_member_group` (`id`, `member_group_name`, `member_group_info`, `is_disable`) VALUES
(1, '注册会员', '注册完成的所有会员都是这个级别', 0),
(2, 'VIP会员', '注册会员通过管理后台升级的级别', 0);

-- --------------------------------------------------------

--
-- 表的结构 `bs_mx_form`
--

CREATE TABLE IF NOT EXISTS `bs_mx_form` (
  `id` mediumint(8) NOT NULL,
  `form_id` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bs_prinfo`
--

CREATE TABLE IF NOT EXISTS `bs_prinfo` (
  `id` mediumint(8) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `web_contact` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bs_product`
--

CREATE TABLE IF NOT EXISTS `bs_product` (
  `id` mediumint(8) NOT NULL,
  `model` varchar(255) DEFAULT NULL,
  `pics` varchar(255) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bs_product`
--

INSERT INTO `bs_product` (`id`, `model`, `pics`, `content`) VALUES
(39, NULL, NULL, ''),
(40, NULL, NULL, '');

-- --------------------------------------------------------

--
-- 表的结构 `bs_upfiles`
--

CREATE TABLE IF NOT EXISTS `bs_upfiles` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `file_info` varchar(255) DEFAULT NULL,
  `file_ext` varchar(255) DEFAULT NULL,
  `file_size` mediumint(8) DEFAULT '0',
  `file_path` varchar(255) DEFAULT NULL,
  `file_time` varchar(255) DEFAULT NULL,
  `hits` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `bs_upfiles`
--

INSERT INTO `bs_upfiles` (`id`, `file_info`, `file_ext`, `file_size`, `file_path`, `file_time`, `hits`) VALUES
(1, '', 'doc', 260620, 'upload/file/-20140616135118.doc', '1402897878', 0);

-- --------------------------------------------------------

--
-- 表的结构 `bs_uppics`
--

CREATE TABLE IF NOT EXISTS `bs_uppics` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `pic_name` varchar(60) NOT NULL COMMENT '图片名称',
  `pic_url` varchar(255) DEFAULT NULL COMMENT '外部链接',
  `pic_ext` varchar(60) NOT NULL COMMENT '图片后缀',
  `pic_alt` varchar(255) DEFAULT NULL COMMENT '图片alt',
  `pic_size` varchar(60) DEFAULT NULL,
  `pic_path` varchar(60) DEFAULT NULL COMMENT '图片路径',
  `pic_time` varchar(60) DEFAULT NULL COMMENT '图片上传修改时间',
  `pic_thumb` varchar(60) DEFAULT NULL COMMENT '缩略图',
  `pic_cate` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- 转存表中的数据 `bs_uppics`
--

INSERT INTO `bs_uppics` (`id`, `pic_name`, `pic_url`, `pic_ext`, `pic_alt`, `pic_size`, `pic_path`, `pic_time`, `pic_thumb`, `pic_cate`) VALUES
(1, '201106251457435418', '', 'jpg', '', '91718', 'upload/img/20110625/', '1308985063', 'img/20110625/201106251457435418_thumb.jpeg', 0),
(2, '20110625145753523', '', 'jpg', '', '28173', 'upload/img/20110625/', '1308985073', 'img/20110625/20110625145753523_thumb.jpeg', 0),
(3, '201106251457589343', '', 'jpg', '', '213545', 'upload/img/20110625/', '1308985078', 'img/20110625/201106251457589343_thumb.jpeg', 0),
(4, '201106251458052470', '', 'jpg', '', '115786', 'upload/img/20110625/', '1308985085', 'img/20110625/201106251458052470_thumb.jpeg', 0),
(5, '201106251458118388', '', 'JPG', '', '203626', 'upload/img/20110625/', '1308985091', 'img/20110625/201106251458118388_thumb.jpeg', 0),
(6, '201106251458309693', '', 'jpg', '', '552104', 'upload/img/20110625/', '1308985110', 'img/20110625/201106251458309693_thumb.jpeg', 0),
(7, '201106251458309992', '', 'jpg', '', '626030', 'upload/img/20110625/', '1308985110', 'img/20110625/201106251458309992_thumb.jpeg', 0),
(8, '201106251458316084', '', 'jpg', '', '8738', 'upload/img/20110625/', '1308985111', 'img/20110625/201106251458316084_thumb.jpeg', 0),
(9, '201106251459034996', '', 'jpg', '', '30121', 'upload/img/20110625/', '1308985143', 'img/20110625/201106251459034996_thumb.jpeg', 0),
(10, '201106251459032990', '', 'jpg', '', '32967', 'upload/img/20110625/', '1308985143', 'img/20110625/201106251459032990_thumb.jpeg', 0),
(27, '201406121951036002', NULL, 'jpg', '', '70668', 'upload/img/', '1402573863', 'img/201406121951036002_thumb.jpeg', 3),
(28, '201406122013161683', NULL, 'jpg', '', '68985', 'upload/img/', '1402575196', 'img/201406122013161683_thumb.jpeg', 3),
(29, '201406122020205898', NULL, 'jpg', '', '60881', 'upload/img/', '1402575620', 'img/201406122020205898_thumb.jpeg', 3),
(30, '201406122056392951', NULL, 'jpg', '', '69143', 'upload/img/', '1402577799', 'img/201406122056392951_thumb.jpeg', 3),
(31, '201406122059458124', NULL, 'jpg', '', '68906', 'upload/img/', '1402577985', 'img/201406122059458124_thumb.jpeg', 3),
(32, '201406130906198936', NULL, 'jpg', '', '54666', 'upload/img/', '1402621579', 'img/201406130906198936_thumb.jpeg', 3),
(33, '20140613150942961', NULL, 'jpg', '', '277311', 'upload/img/', '1402643382', 'img/20140613150942961_thumb.jpeg', 3),
(26, '201406121931196560', NULL, 'png', '', '241905', 'upload/img/', '1402572679', 'img/201406121931196560_thumb.png', 3),
(34, '201406141304017363', NULL, 'png', '', '5061', 'upload/img/', '1402722241', 'img/201406141304017363_thumb.png', 3),
(35, '201406161313198761', NULL, 'png', '', '61275', 'upload/img/', '1402895599', 'img/201406161313198761_thumb.png', 3),
(36, '201406161905537201', NULL, 'jpg', '', '9467', 'upload/img/', '1402916753', 'img/201406161905537201_thumb.jpeg', 3);

-- --------------------------------------------------------

--
-- 表的结构 `bs_uppic_cate`
--

CREATE TABLE IF NOT EXISTS `bs_uppic_cate` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `bs_uppic_cate`
--

INSERT INTO `bs_uppic_cate` (`id`, `cate_name`) VALUES
(2, '下载图片'),
(3, '默认');

-- --------------------------------------------------------

--
-- 表的结构 `bs_webjob`
--

CREATE TABLE IF NOT EXISTS `bs_webjob` (
  `id` mediumint(8) NOT NULL,
  `jobname` varchar(255) DEFAULT NULL,
  `jobsex` varchar(255) DEFAULT NULL,
  `jobmoth` varchar(255) DEFAULT NULL,
  `jobjg` varchar(255) DEFAULT NULL,
  `jobxl` varchar(255) DEFAULT NULL,
  `jobzy` varchar(255) DEFAULT NULL,
  `jobbyyx` varchar(255) DEFAULT NULL,
  `jobphone` varchar(255) DEFAULT NULL,
  `jobmail` varchar(255) DEFAULT NULL,
  `jobhj` varchar(255) DEFAULT NULL,
  `jobgzjl` varchar(255) DEFAULT NULL,
  `jobzyjn` varchar(255) DEFAULT NULL,
  `jobyyah` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

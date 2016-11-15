-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015 年 05 月 23 日 14:54
-- 服务器版本: 5.5.40
-- PHP 版本: 5.3.29

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `itdog`
--

-- --------------------------------------------------------

--
-- 表的结构 `tp_access`
--

CREATE TABLE IF NOT EXISTS `tp_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tp_activity`
--

CREATE TABLE IF NOT EXISTS `tp_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joinnum` int(11) NOT NULL COMMENT '参与人数',
  `click` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `starpicurl` varchar(100) NOT NULL COMMENT '活动开始图片',
  `title` varchar(60) NOT NULL COMMENT '活动名称',
  `txt` varchar(60) NOT NULL COMMENT '兑奖信息',
  `sttxt` varchar(200) NOT NULL COMMENT '活动主题',
  `statdate` int(11) NOT NULL COMMENT '活动开始时间',
  `enddate` int(11) NOT NULL COMMENT '活动结束时间',
  `info` varchar(200) NOT NULL COMMENT '活动说明',
  `aginfo` varchar(200) NOT NULL COMMENT '活动规则',
  `endtite` varchar(60) NOT NULL COMMENT '结束公告',
  `endpicurl` varchar(100) NOT NULL COMMENT '结束图片地址',
  `endinfo` varchar(60) NOT NULL,
  `fist` varchar(50) NOT NULL COMMENT '一等奖奖品',
  `fistnums` int(4) NOT NULL COMMENT '一等奖奖品数量',
  `fistlucknums` int(1) NOT NULL COMMENT '一等奖中奖人数',
  `second` varchar(50) NOT NULL COMMENT '二等奖奖品',
  `type` tinyint(1) NOT NULL,
  `secondnums` int(4) NOT NULL COMMENT '二等奖奖品数量',
  `secondlucknums` int(1) NOT NULL COMMENT '三等奖中奖人数',
  `third` varchar(50) NOT NULL,
  `thirdnums` int(4) NOT NULL,
  `thirdlucknums` int(1) NOT NULL,
  `allpeople` int(11) NOT NULL COMMENT '预计参与人数',
  `canrqnums` int(2) NOT NULL COMMENT '个人抽奖次数限制',
  `parssword` int(15) NOT NULL,
  `renamesn` varchar(50) NOT NULL DEFAULT '',
  `renametel` varchar(60) NOT NULL,
  `displayjpnums` int(1) NOT NULL,
  `createtime` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `four` varchar(50) NOT NULL COMMENT '四等奖奖品',
  `fournums` int(11) NOT NULL COMMENT '四等奖奖品数量',
  `fourlucknums` int(11) NOT NULL COMMENT '四等奖中奖人数',
  `five` varchar(50) NOT NULL COMMENT '五等奖奖品',
  `fivenums` int(11) NOT NULL COMMENT '5奖品数量',
  `fivelucknums` int(11) NOT NULL COMMENT '5中间人数',
  `six` varchar(50) NOT NULL COMMENT '六等奖奖品',
  `sixnums` int(11) NOT NULL COMMENT '6奖品数量',
  `sixlucknums` int(11) NOT NULL COMMENT '6中奖人数',
  `zjpic` varchar(150) NOT NULL DEFAULT '',
  `daynums` mediumint(4) NOT NULL DEFAULT '0',
  `maxgetprizenum` mediumint(4) NOT NULL DEFAULT '1',
  `needreg` tinyint(1) NOT NULL DEFAULT '0',
  `backmp3` varchar(100) NOT NULL COMMENT '背景音乐',
  `hpic` varchar(150) NOT NULL COMMENT '首页背景图片',
  `xpic` varchar(150) NOT NULL COMMENT '兑奖页面宣传图片',
  `mpic` varchar(150) NOT NULL COMMENT '我的盒子背景图片',
  `optime` int(11) NOT NULL COMMENT '需要分享的次数',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `tp_activity`
--

INSERT INTO `tp_activity` (`id`, `joinnum`, `click`, `token`, `keyword`, `starpicurl`, `title`, `txt`, `sttxt`, `statdate`, `enddate`, `info`, `aginfo`, `endtite`, `endpicurl`, `endinfo`, `fist`, `fistnums`, `fistlucknums`, `second`, `type`, `secondnums`, `secondlucknums`, `third`, `thirdnums`, `thirdlucknums`, `allpeople`, `canrqnums`, `parssword`, `renamesn`, `renametel`, `displayjpnums`, `createtime`, `status`, `four`, `fournums`, `fourlucknums`, `five`, `fivenums`, `fivelucknums`, `six`, `sixnums`, `sixlucknums`, `zjpic`, `daynums`, `maxgetprizenum`, `needreg`, `backmp3`, `hpic`, `xpic`, `mpic`, `optime`) VALUES
(1, 0, 0, 'ikecal1416840878', '拆礼盒', 'http://s.404.cn/tpl/static/autumns/img/ads.jpg', '拆礼盒活动开始了', '兑奖请联系我们，电话138********', '欢迎参加拆礼盒活动，祝您好运哦！', 1416844800, 1419436800, '亲，请点击进入拆礼盒活动页面，祝您好运哦！', '此活动杜绝恶意刷礼盒，每个手机只能有一个微信号帮忙。', '拆礼盒活动已经结束了', 'http://s.404.cn/tpl/static/autumns/img/ads.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '', 0, 0, '', 1, 0, 0, '', 0, 0, 0, 0, 0, '', '', 0, 0, 1, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 1, 0, 'http://s.404.cn/tpl/static/autumns/mp3/bg.mp3', 'http://s.404.cn/tpl/static/autumns/img/backimg.jpg', 'http://s.404.cn/tpl/static/autumns/img/openimg.jpg', 'http://s.404.cn/tpl/static/autumns/img/myboximg.jpg', 0),
(2, 13, 0, 'kpktkq1416817563', '拆礼盒', '/tpl/static/autumns/img/ads.jpg', '拆礼盒活动开始了', '兑奖请联系我们，电话138********', '欢迎参加拆礼盒活动，祝您好运哦！', 1417017600, 1419609600, '亲，请点击进入拆礼盒活动页面，祝您好运哦！', '此活动杜绝恶意刷礼盒，每个手机只能有一个微信号帮忙。', '拆礼盒活动已经结束了', '/tpl/static/autumns/img/ads.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '3232', 222, 0, '322', 1, 22, 0, '324432', 22, 0, 100, 100, 0, '', '', 1, 0, 1, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 1, 1, '/tpl/static/autumns/mp3/bg.mp3', 'http://demo.weiqianlong.com/tpl/static/autumns/img/backimg.jpg', 'http://demo.weiqianlong.com/tpl/static/autumns/img/openimg.jpg', 'http://demo.weiqianlong.com/tpl/static/autumns/img/myboximg.jpg', 0),
(3, 0, 0, 'htedog1417267111', '拆礼盒', '/tpl/static/autumns/img/ads.jpg', '拆礼盒活动开始了', '兑奖请联系我们，电话138********', '欢迎参加拆礼盒活动，祝您好运哦！', 1417276800, 1419868800, '亲，请点击进入拆礼盒活动页面，祝您好运哦！', '此活动杜绝恶意刷礼盒，每个手机只能有一个微信号帮忙。', '拆礼盒活动已经结束了', '/tpl/static/autumns/img/ads.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', '小米4', 100, 0, '', 1, 0, 0, '', 0, 0, 10000, 2, 0, '', '', 0, 0, 1, '', 0, 0, '', 0, 0, '', 0, 0, '', 0, 1, 0, 'http://demo.weiqianlong.com/tpl/static/attachment/music/default/3.mp3', 'http://demo.weiqianlong.com/tpl/static/attachment/background/view/3.jpg', 'http://demo.weiqianlong.com/tpl/static/attachment/background/view/7.jpg', 'http://demo.weiqianlong.com/tpl/static/attachment/background/view/8.jpg', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_adma`
--

CREATE TABLE IF NOT EXISTS `tp_adma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `url` varchar(100) NOT NULL,
  `copyright` varchar(50) NOT NULL,
  `info` varchar(120) NOT NULL,
  `title` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_agent`
--

CREATE TABLE IF NOT EXISTS `tp_agent` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(800) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `usercount` int(10) NOT NULL DEFAULT '0',
  `wxusercount` int(10) NOT NULL DEFAULT '0',
  `sitename` varchar(50) NOT NULL DEFAULT '',
  `sitelogo` varchar(200) NOT NULL DEFAULT '',
  `qrcode` varchar(100) NOT NULL DEFAULT '',
  `sitetitle` varchar(60) NOT NULL DEFAULT '',
  `siteurl` varchar(100) NOT NULL DEFAULT '',
  `robotname` varchar(40) NOT NULL DEFAULT '',
  `connectouttip` varchar(50) NOT NULL DEFAULT '',
  `needcheckuser` tinyint(1) NOT NULL DEFAULT '0',
  `regneedmp` tinyint(1) NOT NULL DEFAULT '1',
  `reggid` int(10) NOT NULL DEFAULT '0',
  `regvaliddays` mediumint(4) NOT NULL DEFAULT '30',
  `qq` varchar(12) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `metades` varchar(300) NOT NULL DEFAULT '',
  `metakeywords` varchar(200) NOT NULL DEFAULT '',
  `statisticcode` varchar(300) NOT NULL DEFAULT '',
  `copyright` varchar(100) NOT NULL DEFAULT '',
  `alipayaccount` varchar(50) NOT NULL DEFAULT '',
  `alipaypid` varchar(100) NOT NULL DEFAULT '',
  `alipaykey` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `salt` varchar(6) NOT NULL DEFAULT '',
  `money` int(10) NOT NULL DEFAULT '0',
  `moneybalance` int(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `lastloginip` varchar(26) NOT NULL DEFAULT '',
  `lastlogintime` int(11) NOT NULL DEFAULT '0',
  `wxacountprice` mediumint(4) NOT NULL DEFAULT '0',
  `monthprice` mediumint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_agent_expenserecords`
--

CREATE TABLE IF NOT EXISTS `tp_agent_expenserecords` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `agentid` int(10) NOT NULL DEFAULT '0',
  `amount` int(10) NOT NULL DEFAULT '0',
  `orderid` varchar(60) NOT NULL DEFAULT '',
  `des` varchar(200) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `agentid` (`agentid`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_agent_function`
--

CREATE TABLE IF NOT EXISTS `tp_agent_function` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` tinyint(3) NOT NULL,
  `usenum` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `funname` varchar(100) NOT NULL,
  `info` varchar(100) NOT NULL,
  `isserve` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `agentid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`),
  KEY `agentid` (`agentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_agent_price`
--

CREATE TABLE IF NOT EXISTS `tp_agent_price` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `agentid` int(10) NOT NULL DEFAULT '0',
  `minaccount` int(10) NOT NULL DEFAULT '0',
  `maxaccount` int(10) NOT NULL DEFAULT '0',
  `price` int(10) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `agentid` (`agentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_alipay_config`
--

CREATE TABLE IF NOT EXISTS `tp_alipay_config` (
  `token` varchar(60) NOT NULL,
  `paytype` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(40) NOT NULL DEFAULT '',
  `pid` varchar(40) NOT NULL DEFAULT '',
  `key` varchar(200) NOT NULL DEFAULT '',
  `partnerkey` varchar(100) NOT NULL DEFAULT '',
  `appsecret` varchar(200) NOT NULL DEFAULT '',
  `appid` varchar(60) NOT NULL DEFAULT '',
  `paysignkey` varchar(200) NOT NULL DEFAULT '',
  `partnerid` varchar(200) NOT NULL DEFAULT '',
  `mchid` varchar(100) NOT NULL,
  `open` tinyint(1) NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_alipay_config`
--

INSERT INTO `tp_alipay_config` (`token`, `paytype`, `name`, `pid`, `key`, `partnerkey`, `appsecret`, `appid`, `paysignkey`, `partnerid`, `mchid`, `open`, `info`) VALUES
('mbeboo1416823194', '', '', '', '', '', '', '', '', '', '', 1, 'a:11:{s:7:"is_open";s:1:"1";s:6:"weixin";a:10:{s:4:"open";s:1:"1";s:6:"is_old";s:1:"0";s:9:"new_appid";s:0:"";s:5:"mchid";s:0:"";s:3:"key";s:0:"";s:9:"appsecret";s:0:"";s:5:"appid";s:0:"";s:10:"paysignkey";s:0:"";s:9:"partnerid";s:0:"";s:10:"partnerkey";s:0:"";}s:6:"alipay";a:4:{s:4:"open";s:1:"0";s:4:"name";s:0:"";s:3:"pid";s:0:"";s:3:"key";s:0:"";}s:6:"tenpay";a:3:{s:4:"open";s:1:"1";s:9:"partnerid";s:0:"";s:10:"partnerkey";s:0:"";}s:14:"tenpayComputer";a:3:{s:4:"open";s:1:"0";s:9:"partnerid";s:0:"";s:10:"partnerkey";s:0:"";}s:8:"allinpay";a:3:{s:4:"open";s:1:"0";s:10:"merchantId";s:0:"";s:11:"merchantKey";s:0:"";}s:6:"yeepay";a:5:{s:4:"open";s:1:"0";s:15:"merchantaccount";s:0:"";s:18:"merchantPrivateKey";s:0:"";s:17:"merchantPublicKey";s:0:"";s:15:"yeepayPublicKey";s:0:"";}s:9:"chinabank";a:3:{s:4:"open";s:1:"0";s:17:"chinabank_account";s:0:"";s:13:"chinabank_key";s:0:"";}s:5:"daofu";a:1:{s:4:"open";s:1:"1";}s:6:"dianfu";a:1:{s:4:"open";s:1:"1";}s:6:"button";s:0:"";}'),
('jfvblr1416830511', '', '', '', '', '', '', '', '', '', '', 1, 'a:11:{s:7:"is_open";s:1:"1";s:6:"weixin";N;s:6:"alipay";N;s:6:"tenpay";N;s:14:"tenpayComputer";N;s:8:"allinpay";N;s:6:"yeepay";N;s:9:"chinabank";N;s:5:"daofu";N;s:6:"dianfu";N;s:6:"button";s:0:"";}'),
('kpktkq1416817563', '', '', '', '', '', '', '', '', '', '', 1, 'a:11:{s:7:"is_open";s:1:"1";s:6:"weixin";a:10:{s:4:"open";s:1:"1";s:6:"is_old";s:1:"0";s:9:"new_appid";s:0:"";s:5:"mchid";s:0:"";s:3:"key";s:0:"";s:9:"appsecret";s:0:"";s:5:"appid";s:0:"";s:10:"paysignkey";s:0:"";s:9:"partnerid";s:0:"";s:10:"partnerkey";s:0:"";}s:6:"alipay";a:4:{s:4:"open";s:1:"1";s:4:"name";s:0:"";s:3:"pid";s:0:"";s:3:"key";s:0:"";}s:6:"tenpay";a:3:{s:4:"open";s:1:"1";s:9:"partnerid";s:0:"";s:10:"partnerkey";s:0:"";}s:14:"tenpayComputer";a:3:{s:4:"open";s:1:"1";s:9:"partnerid";s:0:"";s:10:"partnerkey";s:0:"";}s:8:"allinpay";a:3:{s:4:"open";s:1:"1";s:10:"merchantId";s:0:"";s:11:"merchantKey";s:0:"";}s:6:"yeepay";a:5:{s:4:"open";s:1:"1";s:15:"merchantaccount";s:0:"";s:18:"merchantPrivateKey";s:0:"";s:17:"merchantPublicKey";s:0:"";s:15:"yeepayPublicKey";s:0:"";}s:9:"chinabank";a:3:{s:4:"open";s:1:"1";s:17:"chinabank_account";s:0:"";s:13:"chinabank_key";s:0:"";}s:5:"daofu";a:1:{s:4:"open";s:1:"1";}s:6:"dianfu";a:1:{s:4:"open";s:1:"1";}s:6:"button";s:0:"";}'),
('htedog1417267111', '', 'lay5200@126.com', '2088502003613495', 'jnl6zezcbf3n3gwi4sgqapu0v3cyolcx', '', '', '', '', '', '', 1, 'a:10:{s:7:"is_open";s:1:"1";s:6:"weixin";a:10:{s:4:"open";s:1:"1";s:6:"is_old";s:1:"0";s:9:"new_appid";s:0:"";s:5:"mchid";s:0:"";s:3:"key";s:0:"";s:9:"appsecret";s:0:"";s:5:"appid";s:0:"";s:10:"paysignkey";s:0:"";s:9:"partnerid";s:0:"";s:10:"partnerkey";s:0:"";}s:6:"alipay";a:4:{s:4:"open";s:1:"1";s:4:"name";s:15:"lay5200@126.com";s:3:"pid";s:16:"2088502003613495";s:3:"key";s:32:"jnl6zezcbf3n3gwi4sgqapu0v3cyolcx";}s:6:"tenpay";a:3:{s:4:"open";s:1:"1";s:9:"partnerid";s:0:"";s:10:"partnerkey";s:0:"";}s:14:"tenpayComputer";a:3:{s:4:"open";s:1:"1";s:9:"partnerid";s:0:"";s:10:"partnerkey";s:0:"";}s:8:"allinpay";a:3:{s:4:"open";s:1:"1";s:10:"merchantId";s:0:"";s:11:"merchantKey";s:0:"";}s:6:"yeepay";a:5:{s:4:"open";s:1:"1";s:15:"merchantaccount";s:0:"";s:18:"merchantPrivateKey";s:0:"";s:17:"merchantPublicKey";s:0:"";s:15:"yeepayPublicKey";s:0:"";}s:9:"chinabank";a:3:{s:4:"open";s:1:"1";s:17:"chinabank_account";s:0:"";s:13:"chinabank_key";s:0:"";}s:5:"daofu";a:1:{s:4:"open";s:1:"1";}s:6:"dianfu";a:1:{s:4:"open";s:1:"1";}}');

-- --------------------------------------------------------

--
-- 表的结构 `tp_api`
--

CREATE TABLE IF NOT EXISTS `tp_api` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `token` varchar(60) NOT NULL,
  `url` varchar(100) NOT NULL,
  `apitoken` varchar(60) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `is_colation` tinyint(1) NOT NULL,
  `colation_keyword` varchar(100) NOT NULL,
  `number` tinyint(1) NOT NULL,
  `order` tinyint(1) NOT NULL,
  `time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `noanswer` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_areply`
--

CREATE TABLE IF NOT EXISTS `tp_areply` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  `token` char(30) NOT NULL,
  `home` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_artical`
--

CREATE TABLE IF NOT EXISTS `tp_artical` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `info` varchar(5000) NOT NULL,
  `img` char(200) NOT NULL,
  `status` varchar(1) NOT NULL,
  `agentid` int(10) NOT NULL DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `type` varchar(200) NOT NULL,
  `jianjie` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_article`
--

CREATE TABLE IF NOT EXISTS `tp_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(90) NOT NULL,
  `description` char(255) NOT NULL,
  `author` varchar(15) NOT NULL,
  `form` varchar(30) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `content` text NOT NULL,
  `imgs` char(40) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_attribute`
--

CREATE TABLE IF NOT EXISTS `tp_attribute` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(50) NOT NULL,
  `catid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `name` varchar(100) NOT NULL COMMENT '属性名',
  `value` varchar(100) NOT NULL COMMENT '属性值',
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`catid`),
  KEY `catid` (`catid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `tp_attribute`
--

INSERT INTO `tp_attribute` (`id`, `cid`, `token`, `catid`, `name`, `value`) VALUES
(1, 2, 'kpktkq1416817563', 1, '单独', '111'),
(2, 2, 'kpktkq1416817563', 1, '实打实的', '22'),
(3, 2, 'kpktkq1416817563', 4, '撒旦撒旦', '211');

-- --------------------------------------------------------

--
-- 表的结构 `tp_autumns_box`
--

CREATE TABLE IF NOT EXISTS `tp_autumns_box` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL,
  `bid` int(11) NOT NULL COMMENT '活动ID',
  `invite` int(11) NOT NULL,
  `boxdate` int(11) NOT NULL COMMENT '领取盒子的时间',
  `box` int(11) NOT NULL COMMENT '盒子样式',
  `wecha_id` varchar(60) NOT NULL,
  `prize` varchar(100) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `isprize` int(11) NOT NULL COMMENT '是否中奖',
  `isprizes` int(11) NOT NULL COMMENT '是否领奖',
  `prizedate` varchar(20) NOT NULL COMMENT '兑奖起始时间',
  `prizedates` varchar(20) NOT NULL COMMENT '兑奖结束时间',
  `lvprize` varchar(30) NOT NULL,
  `sn` varchar(13) NOT NULL,
  `sntime` int(11) NOT NULL COMMENT '奖品发放时间',
  `sendstutas` int(11) NOT NULL DEFAULT '0' COMMENT '是否发奖',
  `prtime` int(11) NOT NULL COMMENT '领奖时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- 转存表中的数据 `tp_autumns_box`
--

INSERT INTO `tp_autumns_box` (`id`, `name`, `token`, `bid`, `invite`, `boxdate`, `box`, `wecha_id`, `prize`, `phone`, `isprize`, `isprizes`, `prizedate`, `prizedates`, `lvprize`, `sn`, `sntime`, `sendstutas`, `prtime`) VALUES
(1, '游客', 'kpktkq1416817563', 3, 0, 1417329535, 3, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '', '', 0, 0, '', '', '', '', 0, 0, 0),
(2, '游客', 'kpktkq1416817563', 3, 0, 1417331924, 2, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '', '', 0, 0, '', '', '', '', 0, 0, 0),
(3, '游客', 'kpktkq1416817563', 3, 0, 1417332090, 3, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '', '', 0, 0, '', '', '', '', 0, 0, 0),
(4, '回家看', 'kpktkq1416817563', 3, 0, 1417334537, 2, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '', '', 0, 0, '', '', '', '', 0, 0, 0),
(5, '游客', 'kpktkq1416817563', 3, 0, 1417334826, 2, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '', '', 0, 0, '', '', '', '', 0, 0, 0),
(6, '游客', 'kpktkq1416817563', 3, 0, 1417334900, 2, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '', '', 0, 0, '', '', '', '', 0, 0, 0),
(7, '回家看', 'kpktkq1416817563', 3, 0, 1417337782, 1, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '', '', 0, 0, '', '', '', '', 0, 0, 0),
(8, '回家看', 'kpktkq1416817563', 3, 0, 1417337806, 1, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '', '', 0, 0, '', '', '', '', 0, 0, 0),
(9, '回家看', 'kpktkq1416817563', 3, 0, 1417342609, 2, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '', '', 0, 0, '', '', '', '', 0, 0, 0),
(10, '回家看', 'kpktkq1416817563', 3, 0, 1417342906, 1, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '', '', 0, 0, '', '', '', '', 0, 0, 0),
(11, '回家看', 'kpktkq1416817563', 3, 0, 1417343044, 4, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '', '', 0, 0, '', '', '', '', 0, 0, 0),
(12, '回家看', 'kpktkq1416817563', 3, 0, 1417344963, 2, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '', '', 0, 0, '', '', '', '', 0, 0, 0),
(13, '回家看', 'kpktkq1416817563', 3, 0, 1417344969, 1, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '', '', 0, 0, '', '', '', '', 0, 0, 0),
(14, '回家看', 'kpktkq1416817563', 3, 0, 1417345096, 2, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '', '', 0, 0, '', '', '', '', 0, 0, 0),
(15, '回家看', 'kpktkq1416817563', 3, 0, 1417345104, 1, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '', '', 0, 0, '', '', '', '', 0, 0, 0),
(16, '回家看', 'kpktkq1416817563', 3, 0, 1417345205, 5, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '', '', 0, 0, '', '', '', '', 0, 0, 0),
(17, '回家看', 'kpktkq1416817563', 3, 0, 1417345400, 4, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '', '', 0, 0, '', '', '', '', 0, 0, 0),
(18, '回家看', 'kpktkq1416817563', 3, 0, 1417345681, 1, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '', '', 0, 0, '', '', '', '', 0, 0, 0),
(19, '游客', 'kpktkq1416817563', 3, 0, 1417347898, 1, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '', '', 0, 0, '', '', '', '', 0, 0, 0),
(20, '游客', 'kpktkq1416817563', 3, 0, 1417348096, 2, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '', '', 0, 0, '', '', '', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_autumns_ip`
--

CREATE TABLE IF NOT EXISTS `tp_autumns_ip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) NOT NULL,
  `bid` int(11) NOT NULL COMMENT '盒子ID',
  `lid` int(11) NOT NULL COMMENT '活动ID',
  `token` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_autumns_open`
--

CREATE TABLE IF NOT EXISTS `tp_autumns_open` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `bid` int(11) NOT NULL COMMENT '盒子ID',
  `lid` int(11) NOT NULL COMMENT '活动ID',
  `time` int(11) NOT NULL COMMENT '分享次数',
  `isopen` int(11) NOT NULL COMMENT '是否打开',
  `wecha_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- 转存表中的数据 `tp_autumns_open`
--

INSERT INTO `tp_autumns_open` (`id`, `token`, `bid`, `lid`, `time`, `isopen`, `wecha_id`) VALUES
(1, 'kpktkq1416817563', 1, 3, 0, 0, 'osvmet4uw_C9vLaGrCcZPRrNCZlY'),
(2, 'kpktkq1416817563', 2, 3, 0, 0, 'osvmet4uw_C9vLaGrCcZPRrNCZlY'),
(3, 'kpktkq1416817563', 3, 3, 0, 0, 'osvmet4uw_C9vLaGrCcZPRrNCZlY'),
(4, 'kpktkq1416817563', 4, 3, 0, 0, 'osvmet3oEgq-yXCbwnU6NP8u6ayc'),
(5, 'kpktkq1416817563', 5, 3, 0, 0, 'osvmet4uw_C9vLaGrCcZPRrNCZlY'),
(6, 'kpktkq1416817563', 6, 3, 0, 1, 'osvmet4uw_C9vLaGrCcZPRrNCZlY'),
(7, 'kpktkq1416817563', 7, 3, 0, 0, 'osvmet3oEgq-yXCbwnU6NP8u6ayc'),
(8, 'kpktkq1416817563', 8, 3, 0, 0, 'osvmet3oEgq-yXCbwnU6NP8u6ayc'),
(9, 'kpktkq1416817563', 9, 3, 0, 1, 'osvmet3oEgq-yXCbwnU6NP8u6ayc'),
(10, 'kpktkq1416817563', 10, 3, 0, 1, 'osvmet3oEgq-yXCbwnU6NP8u6ayc'),
(11, 'kpktkq1416817563', 11, 3, 0, 1, 'osvmet3oEgq-yXCbwnU6NP8u6ayc'),
(12, 'kpktkq1416817563', 12, 3, 0, 0, 'osvmet3oEgq-yXCbwnU6NP8u6ayc'),
(13, 'kpktkq1416817563', 13, 3, 0, 1, 'osvmet3oEgq-yXCbwnU6NP8u6ayc'),
(14, 'kpktkq1416817563', 14, 3, 0, 0, 'osvmet3oEgq-yXCbwnU6NP8u6ayc'),
(15, 'kpktkq1416817563', 15, 3, 0, 1, 'osvmet3oEgq-yXCbwnU6NP8u6ayc'),
(16, 'kpktkq1416817563', 16, 3, 0, 1, 'osvmet3oEgq-yXCbwnU6NP8u6ayc'),
(17, 'kpktkq1416817563', 17, 3, 0, 1, 'osvmet3oEgq-yXCbwnU6NP8u6ayc'),
(18, 'kpktkq1416817563', 18, 3, 0, 1, 'osvmet3oEgq-yXCbwnU6NP8u6ayc'),
(19, 'kpktkq1416817563', 19, 3, 0, 0, 'osvmet4uw_C9vLaGrCcZPRrNCZlY'),
(20, 'kpktkq1416817563', 20, 3, 0, 1, 'osvmet4uw_C9vLaGrCcZPRrNCZlY');

-- --------------------------------------------------------

--
-- 表的结构 `tp_baoming`
--

CREATE TABLE IF NOT EXISTS `tp_baoming` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `company` varchar(100) DEFAULT NULL,
  `info` varchar(500) DEFAULT NULL COMMENT '公司简介',
  `title` text NOT NULL,
  `jianjie` text NOT NULL,
  `tp` char(255) NOT NULL,
  `logo` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `tp_baoming`
--

INSERT INTO `tp_baoming` (`id`, `token`, `company`, `info`, `title`, `jianjie`, `tp`, `logo`) VALUES
(8, 'kpktkq1416817563', '主题活动', '主题活动', '主题活动', '主题活动', '主题活动', '主题活动');

-- --------------------------------------------------------

--
-- 表的结构 `tp_baoming_list`
--

CREATE TABLE IF NOT EXISTS `tp_baoming_list` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `zhuti` varchar(100) NOT NULL,
  `feiyong` text,
  `time` text,
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `banner` varchar(200) NOT NULL,
  `info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- 转存表中的数据 `tp_baoming_list`
--

INSERT INTO `tp_baoming_list` (`id`, `token`, `zhuti`, `feiyong`, `time`, `sort`, `banner`, `info`) VALUES
(23, 'kpktkq1416817563', '主题活动', '主题活动', '主题活动', 0, '主题活动', '<p>\r\n	<span style="color:#FF0000;font-family:&apos;Microsoft YaHei&apos;, Helvitica, Verdana, Arial, san-serif;font-size:13.3333339691162px;line-height:20px;background-color:#FCFCFC;">主题活动但是速度速度</span>\r\n</p>\r\n<p>\r\n	<span style="color:#FF0000;font-family:&apos;Microsoft YaHei&apos;, Helvitica, Verdana, Arial, san-serif;font-size:13.3333339691162px;line-height:20px;background-color:#FCFCFC;"><span style="color:#4C33E5;">大撒旦撒上大多数</span><span style="color:#E53333;"></span></span>\r\n</p>'),
(24, 'kpktkq1416817563', '主题活动大肆发放', '主题活动主题活动', '主题活动', 0, '主题活动', '&lt;span style=&quot;color:#FF0000;font-family:&apos;Microsoft YaHei&apos;, Helvitica, Verdana, Arial, san-serif;font-size:13.3333339691162px;line-height:20px;background-color:#FCFCFC;&quot;&gt;主题活动&lt;/span&gt;');

-- --------------------------------------------------------

--
-- 表的结构 `tp_baoming_order`
--

CREATE TABLE IF NOT EXISTS `tp_baoming_order` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(64) NOT NULL,
  `wecha_id` varchar(64) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `weixin` varchar(100) NOT NULL,
  `beizhu` text NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `tp_baoming_order`
--

INSERT INTO `tp_baoming_order` (`id`, `token`, `wecha_id`, `name`, `phone`, `weixin`, `beizhu`, `pid`) VALUES
(18, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '呵呵', '15622112233', '与 i 回家', '', 23),
(19, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '分段', '13899882211', '764467', '', 24);

-- --------------------------------------------------------

--
-- 表的结构 `tp_behavior`
--

CREATE TABLE IF NOT EXISTS `tp_behavior` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `date` varchar(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `model` varchar(60) NOT NULL,
  `num` int(11) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `openid` (`openid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=288 ;

--
-- 转存表中的数据 `tp_behavior`
--

INSERT INTO `tp_behavior` (`id`, `fid`, `token`, `openid`, `date`, `enddate`, `model`, `num`, `keyword`, `type`) VALUES
(1, 40, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416824312, 'Scenes', 1, '触发关键字', 0),
(2, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416824331, 'chat', 3, '方法', 0),
(3, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416824335, 'home', 6, '主页', 1),
(4, 40, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416824440, 'Scenes', 1, '发', 0),
(5, 40, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416824465, 'Scenes', 3, '场景', 0),
(6, 1, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416825372, 'Lottery', 2, '摇奖', 0),
(7, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416825526, 'chat', 3, '幅度上升', 0),
(8, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416825528, 'chat', 3, '刚刚发的', 0),
(9, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416825573, 'chat', 21, '贺卡', 0),
(10, 24, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416825620, 'Hforward', 2, '转发有礼', 0),
(11, 24, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416825714, 'Hforward', 6, '呵呵哈哈', 0),
(12, 14, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416826034, 'Hcar', 4, '测试', 0),
(13, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416827492, 'chat', 3, ' 测试', 0),
(14, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416827681, 'chat', 3, '转发达人', 0),
(15, 14, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416828191, 'Hcar', 6, '卡娃', 0),
(16, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416828309, 'chat', 3, '方式改革', 0),
(17, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416828324, 'chat', 3, '法国队', 0),
(18, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416828329, 'chat', 3, '退出', 0),
(19, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416828458, 'chat', 3, '转发', 0),
(20, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416828520, 'home', 3, '首页', 1),
(21, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416828829, 'chat', 3, '测试', 0),
(22, 0, 'jfvblr1416830511', 'ob2qxjk7eXqmqY3bRyAuQtMjAPrE', '2014-11-24', 1416830740, 'chat', 3, '什么', 0),
(23, 0, 'jfvblr1416830511', 'ob2qxjgbC8wTmFfmJdS14O-So_jg', '2014-11-24', 1416830745, 'chat', 3, '卡娃贺卡', 0),
(24, 1, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-24', 1416830930, 'follow', 1, '用户关注', 0),
(25, 0, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-24', 1416830981, 'home', 4, '首页', 1),
(26, 14, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-24', 1416831000, 'Hcar', 1, '卡娃', 0),
(27, 0, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-24', 1416831085, 'chat', 3, '转发有礼', 0),
(28, 24, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-24', 1416831106, 'Hforward', 1, '呵呵哈哈', 0),
(29, 1, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-24', 1416834706, 'Img', 1, '图文', 0),
(30, 0, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-24', 1416835077, 'chat', 3, '反反复复广告', 0),
(31, 0, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-24', 1416835086, 'chat', 3, '刚好也一样', 0),
(32, 0, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-24', 1416835094, 'chat', 3, '刚刚给反弹', 0),
(33, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416835539, 'chat', 3, '法国电视', 0),
(34, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416835542, 'chat', 3, '刚刚电视', 0),
(35, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416835623, 'chat', 3, '姐姐长长久久', 0),
(36, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416835673, 'chat', 3, '不可靠', 0),
(37, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416835676, 'chat', 17, 'ok', 0),
(38, 1, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-24', 1416835733, 'Lottery', 1, '摇奖', 0),
(39, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416835783, 'chat', 3, '发生', 0),
(40, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416835786, 'chat', 2, '你是谁', 0),
(41, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416835790, 'chat', 3, '饭否上', 0),
(42, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416836032, 'chat', 3, '分段', 0),
(43, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416836038, 'chat', 3, '防晒霜', 0),
(44, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416836042, 'chat', 3, '花费多少', 0),
(45, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416836059, 'chat', 3, '发货快', 0),
(46, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416836065, 'chat', 3, '的 v 个', 0),
(47, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416836214, 'chat', 3, 'hgjkk', 0),
(48, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416836228, 'chat', 9, '/::Z', 0),
(49, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416836229, 'chat', 3, '/::-|', 0),
(50, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416836230, 'chat', 3, '/::~', 0),
(51, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416836236, 'chat', 3, '/::)', 0),
(52, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416836236, 'chat', 3, '大多数', 0),
(53, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416836515, 'chat', 3, '关于加快', 0),
(54, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416836520, 'chat', 3, '官方的', 0),
(55, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416836680, 'chat', 3, '回家看', 0),
(56, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416836683, 'chat', 3, '/::<', 0),
(57, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416836685, 'chat', 3, '/::B', 0),
(58, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-24', 1416836689, 'chat', 3, '更加困难', 0),
(59, 0, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-24', 1416836813, 'chat', 2, '的风风光光', 0),
(60, 0, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-24', 1416837169, 'chat', 3, '反反复复反复', 0),
(61, 0, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-24', 1416838049, 'chat', 6, '秘书', 0),
(62, 0, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-24', 1416838163, 'chat', 3, '22', 0),
(63, 14, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-25', 1416907145, 'Hcar', 2, '卡娃', 0),
(64, 1, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-26', 1417014172, 'Business', 1, '美容', 0),
(65, 1, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-26', 1417014387, 'Member_card_set', 1, '会员卡', 0),
(66, 1, 'hupilh1417143669', 'ojiT9tkDKkjOZ7ehT_a9umlRRrzs', '2014-11-28', 1417143972, 'Packet', 1, '红包', 0),
(67, 0, 'hupilh1417143669', 'ojiT9tkDKkjOZ7ehT_a9umlRRrzs', '2014-11-28', 1417173405, 'chat', 1, '123', 0),
(68, 1, 'hupilh1417143669', 'ojiT9tkDKkjOZ7ehT_a9umlRRrzs', '2014-11-28', 1417173759, 'Packet', 1, '用户关注', 0),
(69, 1, 'hupilh1417143669', 'ojiT9tkDKkjOZ7ehT_a9umlRRrzs', '2014-11-28', 1417173838, 'follow', 1, '用户关注', 0),
(70, 16, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-28', 1417175168, 'Jingcai', 13, '竞猜', 0),
(71, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-28', 1417175497, 'home', 2, '主页', 1),
(72, 0, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-28', 1417179945, 'chat', 1, '汽车', 0),
(73, 1, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-28', 1417179969, 'Carset', 1, '微汽车', 0),
(74, 1, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-28', 1417180670, 'medicalSet', 1, '微医疗', 0),
(75, 2, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-28', 1417189375, 'Packet', 1, '红包', 0),
(76, 0, 'htedog1417267111', 'o3aweuP2jfzJca8li4VvxJzBWTpQ', '2014-11-30', 1417319119, 'chat', 2, '001', 0),
(77, 0, 'htedog1417267111', 'o3aweuG2e-P0b7GA0dhjNwN3yJdo', '2014-11-30', 1417319523, 'chat', 1, '！？', 0),
(78, 0, 'htedog1417267111', 'o3aweuG2e-P0b7GA0dhjNwN3yJdo', '2014-11-30', 1417319532, 'chat', 1, '有啥福利', 0),
(79, 0, 'htedog1417267111', 'o3aweuG2e-P0b7GA0dhjNwN3yJdo', '2014-11-30', 1417319541, 'chat', 1, '给我看看', 0),
(80, 0, 'htedog1417267111', 'o3aweuG2e-P0b7GA0dhjNwN3yJdo', '2014-11-30', 1417319548, 'chat', 1, '福利', 0),
(81, 0, 'htedog1417267111', 'o3aweuG2e-P0b7GA0dhjNwN3yJdo', '2014-11-30', 1417319554, 'chat', 1, '屌丝', 0),
(82, 0, 'htedog1417267111', 'o3aweuG2e-P0b7GA0dhjNwN3yJdo', '2014-11-30', 1417319565, 'chat', 1, '你说你自己吧', 0),
(83, 0, 'htedog1417267111', 'o3aweuG2e-P0b7GA0dhjNwN3yJdo', '2014-11-30', 1417319598, 'chat', 1, '用户关注', 0),
(84, 16, 'htedog1417267111', 'o3aweuP2jfzJca8li4VvxJzBWTpQ', '2014-11-30', 1417319692, 'Hcar', 1, '祝福', 0),
(85, 3, 'htedog1417267111', 'o3aweuP2jfzJca8li4VvxJzBWTpQ', '2014-11-30', 1417320221, 'Packet', 1, '红包', 0),
(86, 1, 'htedog1417267111', 'o3aweuP2jfzJca8li4VvxJzBWTpQ', '2014-11-30', 1417320474, 'Punish', 1, '惩罚', 0),
(87, 0, 'htedog1417267111', 'o3aweuP2jfzJca8li4VvxJzBWTpQ', '2014-11-30', 1417320540, 'chat', 1, '无语', 0),
(88, 1, 'htedog1417267111', 'o3aweuC9oUYoj0EEK27JQsx-x8n4', '2014-11-30', 1417320661, 'Punish', 1, '用户关注', 0),
(89, 4, 'htedog1417267111', 'o3aweuP2jfzJca8li4VvxJzBWTpQ', '2014-11-30', 1417320787, 'Lottery', 2, '摇奖', 0),
(90, 3, 'htedog1417267111', 'o3aweuP2jfzJca8li4VvxJzBWTpQ', '2014-11-30', 1417321070, 'Activity', 1, '拆礼盒', 0),
(91, 3, 'htedog1417267111', 'o3aweuEaXz_oN0gv4_CkYkAj2MiY', '2014-11-30', 1417321417, 'Activity', 1, '用户关注', 0),
(92, 1, 'htedog1417267111', 'o3aweuLSNzMUIaniPxuTGgTGOo7o', '2014-11-30', 1417324054, 'follow', 1, '用户关注', 0),
(93, 0, 'jfvblr1416830511', 'oXzezjqUZITRAu6DZ9ty2xY9tAMQ', '2014-11-30', 1417325617, 'home', 1, '首页', 1),
(94, 0, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-30', 1417328795, 'home', 1, ' 首页', 1),
(95, 2, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-30', 1417328829, 'Punish', 2, '惩罚', 0),
(96, 0, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-30', 1417328926, 'chat', 1, '23', 0),
(97, 2, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-30', 1417329288, 'Packet', 1, '红包', 0),
(98, 2, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-30', 1417329424, 'Activity', 3, '拆礼盒', 0),
(99, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-30', 1417330568, 'chat', 2, '惩罚台', 0),
(100, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-30', 1417334387, 'home', 1, '主页', 1),
(101, 2, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-30', 1417334425, 'Activity', 3, '拆礼盒', 0),
(102, 2, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-30', 1417335032, 'Punish', 1, '惩罚', 0),
(103, 2, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-30', 1417335117, 'Packet', 1, '红包', 0),
(104, 0, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-30', 1417337193, 'home', 3, '首页', 1),
(105, 0, 'htedog1417267111', 'o3aweuLSNzMUIaniPxuTGgTGOo7o', '2014-11-30', 1417337849, 'chat', 1, '1', 0),
(106, 0, 'htedog1417267111', 'o3aweuLSNzMUIaniPxuTGgTGOo7o', '2014-11-30', 1417337856, 'chat', 1, '5', 0),
(107, 0, 'htedog1417267111', 'o3aweuLSNzMUIaniPxuTGgTGOo7o', '2014-11-30', 1417337871, 'chat', 1, '奇数=_=', 0),
(108, 3, 'htedog1417267111', 'o3aweuLSNzMUIaniPxuTGgTGOo7o', '2014-11-30', 1417337880, 'Activity', 1, '用户关注', 0),
(109, 1, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-30', 1417339690, 'Carset', 1, '微汽车', 0),
(110, 1, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-30', 1417339819, 'medicalSet', 1, '微医疗', 0),
(111, 0, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-30', 1417340553, 'chat', 1, '招聘', 0),
(112, 1, 'htedog1417267111', 'o3aweuF3DWVzinR-wLmaiaICuqGY', '2014-11-30', 1417340995, 'follow', 1, '用户关注', 0),
(113, 0, 'htedog1417267111', 'o3aweuF3DWVzinR-wLmaiaICuqGY', '2014-11-30', 1417341079, 'chat', 1, '福利', 0),
(114, 0, 'htedog1417267111', 'o3aweuF3DWVzinR-wLmaiaICuqGY', '2014-11-30', 1417341088, 'chat', 1, '艹', 0),
(115, 3, 'htedog1417267111', 'o3aweuF3DWVzinR-wLmaiaICuqGY', '2014-11-30', 1417341770, 'Activity', 1, '用户关注', 0),
(116, 1, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-30', 1417341828, 'Business', 1, '美容', 0),
(117, 2, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-30', 1417341920, 'Business', 1, '宠物', 0),
(118, 14, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-30', 1417343617, 'Kefu', 2, '是的撒旦', 0),
(119, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345242, 'chat', 1, '丝袜', 0),
(120, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345258, 'chat', 1, '大师兄', 0),
(121, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345269, 'chat', 1, '酥胸', 0),
(122, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345282, 'chat', 1, '666666', 0),
(123, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345288, 'chat', 1, '对', 0),
(124, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345294, 'chat', 1, '嗯', 0),
(125, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345300, 'chat', 1, '你是干嘛的', 0),
(126, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345310, 'chat', 1, '我要图片', 0),
(127, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345321, 'chat', 1, '不上', 0),
(128, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345328, 'chat', 1, '想你', 0),
(129, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345333, 'chat', 1, '恩', 0),
(130, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345344, 'chat', 1, '不，要，句，點，我！！！', 0),
(131, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345357, 'chat', 1, '不哭站起来撸', 0),
(132, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345369, 'chat', 1, '小矮子190', 0),
(133, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345378, 'chat', 1, '男的女的', 0),
(134, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345391, 'chat', 1, '你有木有对象', 0),
(135, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345399, 'chat', 1, '你要男的女的', 0),
(136, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345408, 'chat', 1, '人妖怎样', 0),
(137, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345418, 'chat', 1, '我对象是男的', 0),
(138, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345425, 'chat', 1, '你叫啥', 0),
(139, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345439, 'chat', 1, '马拉个币是啥', 0),
(140, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345448, 'chat', 1, '路飞', 0),
(141, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345457, 'chat', 1, '索隆', 0),
(142, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345466, 'chat', 1, '雅蠛蝶', 0),
(143, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345479, 'chat', 1, '一库一库', 0),
(144, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345493, 'chat', 1, '摩擦', 0),
(145, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345501, 'chat', 1, '欧巴', 0),
(146, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345511, 'chat', 1, '干巴爹', 0),
(147, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345530, 'chat', 1, '干爸嗲', 0),
(148, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345538, 'chat', 1, '鬼畜', 0),
(149, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345546, 'chat', 1, '人妖', 0),
(150, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345552, 'chat', 1, '你是不是人妖！', 0),
(151, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345561, 'chat', 1, '我是谁？', 0),
(152, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345571, 'chat', 1, '你是傻逼', 0),
(153, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345577, 'chat', 1, '你就是傻逼', 0),
(154, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345587, 'chat', 1, '快点承认', 0),
(155, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345594, 'chat', 1, '快点', 0),
(156, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345597, 'chat', 1, '我要', 0),
(157, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345610, 'chat', 1, '拜拜', 0),
(158, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345615, 'chat', 1, '/:bye/:bye/:bye', 0),
(159, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345633, 'chat', 1, '抓你鸡鸡', 0),
(160, 0, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '2014-11-30', 1417345646, 'chat', 1, '我要黄图', 0),
(161, 1, 'mbeboo1416823194', 'otO33jnYlg4AccLi9HrJgXNQ85Oc', '2014-11-30', 1417349771, 'follow', 1, '用户关注', 0),
(162, 1, 'mbeboo1416823194', 'oXzezjqUZITRAu6DZ9ty2xY9tAMQ', '2014-11-30', 1417349996, 'Selfform', 1, '353', 0),
(163, 1, 'mbeboo1416823194', 'oXzezjqUZITRAu6DZ9ty2xY9tAMQ', '2014-11-30', 1417350315, 'Shake', 1, '摇一摇', 0),
(164, 3, 'htedog1417267111', 'o3aweuIkVRte6pIvDPEJPqyWEIho', '2014-11-30', 1417352320, 'Product', 1, '用户关注', 0),
(165, 1, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '2014-11-30', 1417356165, 'Member_card_set', 1, '会员', 0),
(166, 1, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-11-30', 1417356347, 'Member_card_set', 1, '会员卡', 0),
(167, 0, 'mbeboo1416823194', 'oXzezjqUZITRAu6DZ9ty2xY9tAMQ', '2014-11-30', 1417357868, 'chat', 2, '卡娃', 0),
(168, 17, 'mbeboo1416823194', 'oXzezjqUZITRAu6DZ9ty2xY9tAMQ', '2014-11-30', 1417357917, 'Hcar', 1, '123', 0),
(169, 17, 'mbeboo1416823194', 'oXzezjqUZITRAu6DZ9ty2xY9tAMQ', '2014-11-30', 1417358141, 'Hcar', 1, '卡娃贺卡', 0),
(170, 0, 'mbeboo1416823194', 'oXzezjqUZITRAu6DZ9ty2xY9tAMQ', '2014-11-30', 1417358225, 'home', 1, '首页', 1),
(171, 3, 'mbeboo1416823194', 'oXzezjqUZITRAu6DZ9ty2xY9tAMQ', '2014-11-30', 1417360462, 'Punish', 1, '惩罚台', 0),
(172, 0, 'htedog1417267111', 'o3aweuMuGiVNv9DuZJagJ0veWv48', '2014-11-30', 1417362230, 'chat', 2, '酥胸', 0),
(173, 0, 'htedog1417267111', 'o3aweuMuGiVNv9DuZJagJ0veWv48', '2014-11-30', 1417362242, 'chat', 1, '。', 0),
(174, 0, 'htedog1417267111', 'o3aweuMuGiVNv9DuZJagJ0veWv48', '2014-11-30', 1417362284, 'chat', 1, '酥胸！', 0),
(175, 0, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-12-01', 1417397464, 'chat', 1, 'sds ', 0),
(176, 0, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-12-01', 1417397471, 'chat', 1, 'wo qu ', 0),
(177, 0, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-12-01', 1417397475, 'chat', 1, '你是谁', 0),
(178, 18, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-12-01', 1417399190, 'Musiccar', 6, '音乐贺卡', 0),
(179, 3, 'htedog1417267111', 'o3aweuBPp-leCOrJDOsS1BpAKccA', '2014-12-01', 1417402250, 'Product', 1, '用户关注', 0),
(180, 3, 'htedog1417267111', 'o3aweuEeOuxGGje7CRs0LyAbj0pw', '2014-12-01', 1417406011, 'Product', 1, '用户关注', 0),
(181, 1, 'htedog1417267111', 'o3aweuBkkHSxPbShQjmzpUcD4qKw', '2014-12-01', 1417411243, 'follow', 1, '用户关注', 0),
(182, 0, 'htedog1417267111', 'o3aweuBkkHSxPbShQjmzpUcD4qKw', '2014-12-01', 1417411267, 'chat', 1, '文爱', 0),
(183, 18, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-12-01', 1417415744, 'Musiccar', 1, '贺卡', 0),
(184, 14, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-12-01', 1417415747, 'Hcar', 1, '卡娃', 0),
(185, 1, 'kpktkq1416817563', 'osvmet0ATseTVsaJS6uRp-dVTV3s', '2014-12-01', 1417431264, 'follow', 1, '用户关注', 0),
(186, 1, 'kpktkq1416817563', 'osvmet3hbVmLNxwBee5V1iqNl3KA', '2014-12-01', 1417437987, 'follow', 1, '用户关注', 0),
(187, 1, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2014-12-01', 1417438007, 'Game', 1, '测测你的知名度', 0),
(188, 14, 'kpktkq1416817563', 'osvmet3hbVmLNxwBee5V1iqNl3KA', '2014-12-01', 1417438234, 'Hcar', 1, '卡娃', 0),
(189, 1, 'htedog1417267111', 'o3aweuG8J2EQtbwkwhOJLO2yUWoY', '2014-12-01', 1417440536, 'follow', 1, '用户关注', 0),
(190, 3, 'htedog1417267111', 'o3aweuG8J2EQtbwkwhOJLO2yUWoY', '2014-12-01', 1417440629, 'Product', 1, '用户关注', 0),
(191, 1, 'htedog1417267111', 'o3aweuPJq-KT0-gmngQSwBp_5gJY', '2014-12-01', 1417441941, 'follow', 1, '用户关注', 0),
(192, 1, 'htedog1417267111', 'o3aweuLd4kHJrnQ0Fm3hs7q7apQE', '2014-12-01', 1417442164, 'follow', 1, '用户关注', 0),
(193, 1, 'htedog1417267111', 'o3aweuOAgc3yPFnxXBrUApnb859E', '2014-12-01', 1417442227, 'follow', 1, '用户关注', 0),
(194, 0, 'htedog1417267111', 'o3aweuOAgc3yPFnxXBrUApnb859E', '2014-12-01', 1417442265, 'chat', 3, '藏头诗纪展鹏', 0),
(195, 1, 'kpktkq1416817563', 'osvmet7R_zuvwGKOAYWaIjcK-jOw', '2014-12-01', 1417442492, 'follow', 1, '用户关注', 0),
(196, 18, 'kpktkq1416817563', 'osvmet7R_zuvwGKOAYWaIjcK-jOw', '2014-12-01', 1417442510, 'Musiccar', 1, '音乐贺卡', 0),
(197, 1, 'htedog1417267111', 'o3aweuCTQQsB09DUxmLvRcgdgYjY', '2014-12-01', 1417442633, 'follow', 1, '用户关注', 0),
(198, 0, 'htedog1417267111', 'o3aweuCTQQsB09DUxmLvRcgdgYjY', '2014-12-01', 1417442645, 'chat', 1, '00', 0),
(199, 0, 'kpktkq1416817563', 'osvmet7R_zuvwGKOAYWaIjcK-jOw', '2014-12-01', 1417442656, 'chat', 1, 'Ok', 0),
(200, 3, 'htedog1417267111', 'o3aweuCTQQsB09DUxmLvRcgdgYjY', '2014-12-01', 1417442660, 'Product', 1, '用户关注', 0),
(201, 0, 'htedog1417267111', 'o3aweuLd4kHJrnQ0Fm3hs7q7apQE', '2014-12-01', 1417442790, 'chat', 1, 'ibs', 0),
(202, 0, 'kpktkq1416817563', 'osvmet7R_zuvwGKOAYWaIjcK-jOw', '2014-12-01', 1417442797, 'chat', 1, '微秀', 0),
(203, 0, 'htedog1417267111', 'o3aweuLd4kHJrnQ0Fm3hs7q7apQE', '2014-12-01', 1417442816, 'chat', 1, 'lbs', 0),
(204, 0, 'htedog1417267111', 'o3aweuLd4kHJrnQ0Fm3hs7q7apQE', '2014-12-01', 1417442851, 'chat', 1, '你说呢', 0),
(205, 0, 'htedog1417267111', 'o3aweuLd4kHJrnQ0Fm3hs7q7apQE', '2014-12-01', 1417442870, 'chat', 1, '快点', 0),
(206, 1, 'htedog1417267111', 'o3aweuPkKiUFlKQStdbioGBx5gfk', '2014-12-01', 1417443030, 'follow', 1, '用户关注', 0),
(207, 1, 'htedog1417267111', 'o3aweuB8vXwFtdJXW_bevFhn3L6Y', '2014-12-01', 1417443053, 'follow', 1, '用户关注', 0),
(208, 3, 'htedog1417267111', 'o3aweuB8vXwFtdJXW_bevFhn3L6Y', '2014-12-01', 1417443107, 'Product', 1, '用户关注', 0),
(209, 1, 'htedog1417267111', 'o3aweuIr5z3RoQ0w5jGBw80ZWab4', '2014-12-01', 1417443224, 'follow', 1, '用户关注', 0),
(210, 1, 'htedog1417267111', 'o3aweuBzWAXdmU8NVmldZCKcUPhM', '2014-12-01', 1417443418, 'follow', 1, '用户关注', 0),
(211, 0, 'htedog1417267111', 'o3aweuBzWAXdmU8NVmldZCKcUPhM', '2014-12-01', 1417443472, 'help', 1, 'help', 1),
(212, 1, 'htedog1417267111', 'o3aweuF9vdkJU7rGdclphFRxZ5Tg', '2014-12-01', 1417443603, 'follow', 1, '用户关注', 0),
(213, 1, 'htedog1417267111', 'o3aweuHLdUV-zjfRQZ_HF8T8kbHQ', '2014-12-01', 1417444075, 'follow', 1, '用户关注', 0),
(214, 3, 'htedog1417267111', 'o3aweuHLdUV-zjfRQZ_HF8T8kbHQ', '2014-12-01', 1417444114, 'Product', 1, '用户关注', 0),
(215, 1, 'htedog1417267111', 'o3aweuE7O1K5ynZir2cY0eEgS10I', '2014-12-01', 1417444281, 'follow', 1, '用户关注', 0),
(216, 0, 'htedog1417267111', 'o3aweuE7O1K5ynZir2cY0eEgS10I', '2014-12-01', 1417444364, 'chat', 1, '裸聊', 0),
(217, 1, 'htedog1417267111', 'o3aweuGY52pfeiIQcFQEnAiqpvJk', '2014-12-01', 1417444409, 'follow', 1, '用户关注', 0),
(218, 1, 'htedog1417267111', 'o3aweuBU1ZpXVsDAbheabmEry9nY', '2014-12-01', 1417444422, 'follow', 1, '用户关注', 0),
(219, 1, 'htedog1417267111', 'o3aweuDg0o5wu0T7j7fJkqrz3FHE', '2014-12-01', 1417444433, 'follow', 1, '用户关注', 0),
(220, 0, 'htedog1417267111', 'o3aweuE7O1K5ynZir2cY0eEgS10I', '2014-12-01', 1417444435, 'chat', 1, '激情聊天', 0),
(221, 3, 'htedog1417267111', 'o3aweuBU1ZpXVsDAbheabmEry9nY', '2014-12-01', 1417444453, 'Product', 1, '用户关注', 0),
(222, 1, 'htedog1417267111', 'o3aweuOgPvm8GOQFpsB-8w7vxbaU', '2014-12-01', 1417444453, 'follow', 1, '用户关注', 0),
(223, 3, 'htedog1417267111', 'o3aweuDg0o5wu0T7j7fJkqrz3FHE', '2014-12-01', 1417444482, 'Product', 1, '用户关注', 0),
(224, 1, 'htedog1417267111', 'o3aweuJoooy-bha3KXyNKtIM1P5A', '2014-12-01', 1417444516, 'follow', 1, '用户关注', 0),
(225, 0, 'htedog1417267111', 'o3aweuJoooy-bha3KXyNKtIM1P5A', '2014-12-01', 1417444549, 'chat', 1, '00', 0),
(226, 0, 'htedog1417267111', 'o3aweuJoooy-bha3KXyNKtIM1P5A', '2014-12-01', 1417444555, 'chat', 1, '23', 0),
(227, 0, 'htedog1417267111', 'o3aweuJoooy-bha3KXyNKtIM1P5A', '2014-12-01', 1417444562, 'chat', 1, '52', 0),
(228, 3, 'htedog1417267111', 'o3aweuOgPvm8GOQFpsB-8w7vxbaU', '2014-12-01', 1417444567, 'Product', 1, '用户关注', 0),
(229, 0, 'htedog1417267111', 'o3aweuJoooy-bha3KXyNKtIM1P5A', '2014-12-01', 1417444567, 'chat', 1, '74', 0),
(230, 1, 'htedog1417267111', 'o3aweuLX9hhLqOg6P1r0WVglPD0k', '2014-12-01', 1417444569, 'follow', 1, '用户关注', 0),
(231, 0, 'htedog1417267111', 'o3aweuJoooy-bha3KXyNKtIM1P5A', '2014-12-01', 1417444573, 'chat', 1, '85269552', 0),
(232, 1, 'htedog1417267111', 'o3aweuKI6CaU1hbJrW7Sln-DB508', '2014-12-01', 1417444583, 'follow', 1, '用户关注', 0),
(233, 0, 'htedog1417267111', 'o3aweuJoooy-bha3KXyNKtIM1P5A', '2014-12-01', 1417444584, 'chat', 1, '741339855655366', 0),
(234, 0, 'htedog1417267111', 'o3aweuJoooy-bha3KXyNKtIM1P5A', '2014-12-01', 1417444601, 'chat', 1, '你是机器人吗', 0),
(235, 0, 'htedog1417267111', 'o3aweuJoooy-bha3KXyNKtIM1P5A', '2014-12-01', 1417444614, 'chat', 1, '你会脸红吗', 0),
(236, 0, 'htedog1417267111', 'o3aweuJoooy-bha3KXyNKtIM1P5A', '2014-12-01', 1417444623, 'chat', 1, '我也不会', 0),
(237, 0, 'htedog1417267111', 'o3aweuJoooy-bha3KXyNKtIM1P5A', '2014-12-01', 1417444634, 'chat', 1, '你怎么不学', 0),
(238, 0, 'htedog1417267111', 'o3aweuJoooy-bha3KXyNKtIM1P5A', '2014-12-01', 1417444643, 'chat', 1, '那么', 0),
(239, 0, 'htedog1417267111', 'o3aweuJoooy-bha3KXyNKtIM1P5A', '2014-12-01', 1417444651, 'chat', 1, '说好的福利呢', 0),
(240, 0, 'htedog1417267111', 'o3aweuJoooy-bha3KXyNKtIM1P5A', '2014-12-01', 1417444659, 'chat', 1, '我要妹纸', 0),
(241, 1, 'htedog1417267111', 'o3aweuFjoykWQQhBtxFGEgcxrtpE', '2014-12-01', 1417444670, 'follow', 1, '用户关注', 0),
(242, 0, 'htedog1417267111', 'o3aweuJoooy-bha3KXyNKtIM1P5A', '2014-12-01', 1417444670, 'chat', 1, '你有妹纸吗', 0),
(243, 0, 'htedog1417267111', 'o3aweuJoooy-bha3KXyNKtIM1P5A', '2014-12-01', 1417444678, 'chat', 1, '。。。。', 0),
(244, 0, 'htedog1417267111', 'o3aweuJoooy-bha3KXyNKtIM1P5A', '2014-12-01', 1417444684, 'chat', 1, '，，，，', 0),
(245, 0, 'htedog1417267111', 'o3aweuJoooy-bha3KXyNKtIM1P5A', '2014-12-01', 1417444689, 'chat', 1, '？？', 0),
(246, 0, 'htedog1417267111', 'o3aweuJoooy-bha3KXyNKtIM1P5A', '2014-12-01', 1417444694, 'chat', 1, '！', 0),
(247, 0, 'htedog1417267111', 'o3aweuJoooy-bha3KXyNKtIM1P5A', '2014-12-01', 1417444700, 'chat', 1, '2+2', 0),
(248, 0, 'htedog1417267111', 'o3aweuFjoykWQQhBtxFGEgcxrtpE', '2014-12-01', 1417444706, 'Member_card_set', 1, '会员', 0),
(249, 0, 'htedog1417267111', 'o3aweuJoooy-bha3KXyNKtIM1P5A', '2014-12-01', 1417444707, 'chat', 1, '2+3', 0),
(250, 0, 'htedog1417267111', 'o3aweuE7O1K5ynZir2cY0eEgS10I', '2014-12-01', 1417444719, 'chat', 1, 'lbs', 0),
(251, 0, 'htedog1417267111', 'o3aweuJoooy-bha3KXyNKtIM1P5A', '2014-12-01', 1417444722, 'chat', 1, '8-9', 0),
(252, 1, 'htedog1417267111', 'o3aweuKVH7ZZZV1rWSc9lRXcAtA4', '2014-12-01', 1417444725, 'follow', 1, '用户关注', 0),
(253, 0, 'htedog1417267111', 'o3aweuKVH7ZZZV1rWSc9lRXcAtA4', '2014-12-01', 1417444795, 'chat', 1, '聊天', 0),
(254, 1, 'htedog1417267111', 'o3aweuMf1weGFNN52A3QJJOzST1g', '2014-12-01', 1417444807, 'follow', 1, '用户关注', 0),
(255, 0, 'htedog1417267111', 'o3aweuMf1weGFNN52A3QJJOzST1g', '2014-12-01', 1417444860, 'chat', 1, '00', 0),
(256, 0, 'htedog1417267111', 'o3aweuMi2p5JOw-W6nSSVp8ADRcw', '2014-12-01', 1417444888, 'chat', 1, '爆乳', 0),
(257, 0, 'htedog1417267111', 'o3aweuMi2p5JOw-W6nSSVp8ADRcw', '2014-12-01', 1417444930, 'chat', 1, '美腿', 0),
(258, 0, 'htedog1417267111', 'o3aweuMi2p5JOw-W6nSSVp8ADRcw', '2014-12-01', 1417444969, 'chat', 1, '萌妹子', 0),
(259, 1, 'htedog1417267111', 'o3aweuF1pQmylrjicDfcSZBwA1_g', '2014-12-01', 1417445108, 'follow', 1, '用户关注', 0),
(260, 3, 'htedog1417267111', 'o3aweuBzWAXdmU8NVmldZCKcUPhM', '2014-12-01', 1417445128, 'Product', 1, '用户关注', 0),
(261, 3, 'htedog1417267111', 'o3aweuF1pQmylrjicDfcSZBwA1_g', '2014-12-01', 1417445142, 'Product', 1, '用户关注', 0),
(262, 1, 'htedog1417267111', 'o3aweuPBE7iPXcYmFV1fa6PEOqa4', '2014-12-01', 1417445187, 'follow', 1, '用户关注', 0),
(263, 1, 'htedog1417267111', 'o3aweuE7uCI4rJCWdkfSpoA35VlI', '2014-12-01', 1417445423, 'follow', 1, '用户关注', 0),
(264, 1, 'htedog1417267111', 'o3aweuK8j0fhpD4OykyewD-6PSJg', '2014-12-01', 1417445482, 'follow', 1, '用户关注', 0),
(265, 0, 'htedog1417267111', 'o3aweuE7uCI4rJCWdkfSpoA35VlI', '2014-12-01', 1417445499, 'chat', 1, 'Ok', 0),
(266, 0, 'htedog1417267111', 'o3aweuK8j0fhpD4OykyewD-6PSJg', '2014-12-01', 1417445502, 'chat', 1, '00', 0),
(267, 0, 'htedog1417267111', 'o3aweuK8j0fhpD4OykyewD-6PSJg', '2014-12-01', 1417445524, 'chat', 1, '11', 0),
(268, 0, 'htedog1417267111', 'o3aweuK8j0fhpD4OykyewD-6PSJg', '2014-12-01', 1417445546, 'chat', 1, '美女', 0),
(269, 3, 'htedog1417267111', 'o3aweuK8j0fhpD4OykyewD-6PSJg', '2014-12-01', 1417445560, 'Product', 1, '用户关注', 0),
(270, 1, 'htedog1417267111', 'o3aweuLsiDzyDPs7ctkDnsieH3oA', '2014-12-01', 1417445773, 'follow', 1, '用户关注', 0),
(271, 0, 'htedog1417267111', 'o3aweuLsiDzyDPs7ctkDnsieH3oA', '2014-12-01', 1417445820, 'chat', 1, '聊天', 0),
(272, 0, 'htedog1417267111', 'o3aweuLsiDzyDPs7ctkDnsieH3oA', '2014-12-01', 1417445836, 'chat', 1, 'lbs', 0),
(273, 0, 'htedog1417267111', 'o3aweuLsiDzyDPs7ctkDnsieH3oA', '2014-12-01', 1417445857, 'chat', 1, '1', 0),
(274, 0, 'htedog1417267111', 'o3aweuLsiDzyDPs7ctkDnsieH3oA', '2014-12-01', 1417445862, 'chat', 1, '8', 0),
(275, 0, 'htedog1417267111', 'o3aweuLsiDzyDPs7ctkDnsieH3oA', '2014-12-01', 1417445874, 'chat', 1, '00', 0),
(276, 0, 'htedog1417267111', 'o3aweuLsiDzyDPs7ctkDnsieH3oA', '2014-12-01', 1417445924, 'chat', 1, '14', 0),
(277, 0, 'htedog1417267111', 'o3aweuLsiDzyDPs7ctkDnsieH3oA', '2014-12-01', 1417446004, 'help', 1, '帮助', 1),
(278, 0, 'htedog1417267111', 'o3aweuLsiDzyDPs7ctkDnsieH3oA', '2014-12-01', 1417446017, 'Member_card_set', 1, '会员', 0),
(279, 3, 'htedog1417267111', 'o3aweuLsiDzyDPs7ctkDnsieH3oA', '2014-12-01', 1417446061, 'Product', 1, '用户关注', 0),
(280, 3, 'htedog1417267111', 'o3aweuE7uCI4rJCWdkfSpoA35VlI', '2014-12-01', 1417446087, 'Product', 1, '用户关注', 0),
(281, 1, 'htedog1417267111', 'o3aweuHia5PxduAAhgL5fwJOu250', '2014-12-01', 1417446588, 'follow', 1, '用户关注', 0),
(282, 0, 'htedog1417267111', 'o3aweuHia5PxduAAhgL5fwJOu250', '2014-12-01', 1417446607, 'chat', 1, '00', 0),
(283, 0, 'htedog1417267111', 'o3aweuHia5PxduAAhgL5fwJOu250', '2014-12-01', 1417446641, 'chat', 1, '姐妹磨镜', 0),
(284, 3, 'htedog1417267111', 'o3aweuHia5PxduAAhgL5fwJOu250', '2014-12-01', 1417446665, 'Product', 1, '用户关注', 0),
(285, 0, 'hdwvpv1431337356', 'oGR3DjpsjZF4uxkdgQ0At27qY1T4', '2015-05-12', 1431392801, 'chat', 2, '糗事', 0),
(286, 0, 'hdwvpv1431337356', 'oGR3DjpsjZF4uxkdgQ0At27qY1T4', '2015-05-12', 1431392825, 'home', 1, '首页', 1),
(287, 1, 'hdwvpv1431337356', 'oGR3DjpsjZF4uxkdgQ0At27qY1T4', '2015-05-12', 1431393797, 'follow', 1, '用户关注', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_busines`
--

CREATE TABLE IF NOT EXISTS `tp_busines` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `mtitle` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `album_id` int(11) NOT NULL,
  `toppicurl` varchar(200) NOT NULL DEFAULT '',
  `roompicurl` varchar(200) NOT NULL DEFAULT '',
  `address` varchar(50) NOT NULL DEFAULT '',
  `longitude` char(11) NOT NULL DEFAULT '',
  `latitude` char(11) NOT NULL DEFAULT '',
  `business_desc` text NOT NULL,
  `type` char(15) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL,
  `blogo` varchar(200) NOT NULL,
  `businesphone` char(13) NOT NULL DEFAULT '',
  `orderInfo` varchar(800) NOT NULL DEFAULT '',
  `compyphone` char(12) NOT NULL DEFAULT '',
  `path` varchar(3000) DEFAULT '0',
  `tpid` tinyint(4) DEFAULT '36',
  `conttpid` tinyint(4) DEFAULT '36',
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_busines`
--

INSERT INTO `tp_busines` (`bid`, `token`, `keyword`, `mtitle`, `title`, `picurl`, `album_id`, `toppicurl`, `roompicurl`, `address`, `longitude`, `latitude`, `business_desc`, `type`, `sort`, `blogo`, `businesphone`, `orderInfo`, `compyphone`, `path`, `tpid`, `conttpid`) VALUES
(1, 'kpktkq1416817563', '美容', '测试', '测试', 'http://demo.weiqianlong.com/uploads/k/kpktkq1416817563/0/e/8/d/5475de823c930.png', 1, 'http://demo.weiqianlong.com/uploads/k/kpktkq1416817563/0/e/8/d/5475de823c930.png', 'http://demo.weiqianlong.com/uploads/k/kpktkq1416817563/0/e/8/d/5475de823c930.png', 'http://demo.weiqianlong.com/uploads/k/kpktkq141681', '阿斯蒂芬', '地方', 'http://demo.weiqianlong.com/uploads/k/kpktkq1416817563/0/e/8/d/5475de823c930.png', 'beauty', 1, '', '', 'http://demo.weiqianlong.com/uploads/k/kpktkq1416817563/0/e/8/d/5475de823c930.png', '', '0', 36, 0),
(2, 'kpktkq1416817563', '宠物', '332 ', '动手术的到底是', 'http://demo.weiqianlong.com/uploads/k/kpktkq1416817563/0/e/8/d/5475de823c930.png', 1, 'http://demo.weiqianlong.com/uploads/k/kpktkq1416817563/0/e/8/d/5475de823c930.png', 'http://demo.weiqianlong.com/uploads/k/kpktkq1416817563/0/e/8/d/5475de823c930.png', '2221对方身份都是收费 ', '1', '1', '对方水电费', 'affections', 1, '', '', '东方时尚', '0351-6537399', '0', 36, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_busines_comment`
--

CREATE TABLE IF NOT EXISTS `tp_busines_comment` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `type` char(15) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `position` varchar(50) NOT NULL DEFAULT '',
  `face_picurl` varchar(200) NOT NULL,
  `face_desc` varchar(1000) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL,
  `bid_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_busines_main`
--

CREATE TABLE IF NOT EXISTS `tp_busines_main` (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `bid_id` int(11) NOT NULL,
  `name` char(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `main_desc` text NOT NULL,
  `type` char(15) NOT NULL,
  `telphone` char(12) NOT NULL DEFAULT '',
  `maddress` varchar(50) NOT NULL DEFAULT '',
  `desc_pic` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_busines_main`
--

INSERT INTO `tp_busines_main` (`mid`, `token`, `bid_id`, `name`, `sort`, `main_desc`, `type`, `telphone`, `maddress`, `desc_pic`) VALUES
(1, 'kpktkq1416817563', 1, '撒旦', 1, 'http://demo.weiqianlong.com/uploads/k/kpktkq1416817563/0/e/8/d/5475de823c930.png', 'beauty', '', '', 'http://demo.weiqianlong.com/uploads/k/kpktkq1416817563/0/e/8/d/5475de823c930.png');

-- --------------------------------------------------------

--
-- 表的结构 `tp_busines_pic`
--

CREATE TABLE IF NOT EXISTS `tp_busines_pic` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `bid_id` int(11) NOT NULL,
  `picurl_1` varchar(200) NOT NULL DEFAULT '',
  `picurl_2` varchar(200) NOT NULL DEFAULT '',
  `picurl_3` varchar(200) NOT NULL DEFAULT '',
  `picurl_4` varchar(200) NOT NULL DEFAULT '',
  `picurl_5` varchar(200) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL,
  `type` char(15) NOT NULL,
  `ablum_id` int(11) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_busines_second`
--

CREATE TABLE IF NOT EXISTS `tp_busines_second` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `type` char(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mid_id` int(11) NOT NULL,
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `learntime` varchar(100) NOT NULL,
  `datatype` varchar(100) NOT NULL DEFAULT '',
  `sort` int(11) NOT NULL,
  `second_desc` text NOT NULL,
  `oneprice` decimal(10,2) DEFAULT '0.00',
  `googsnumber` bigint(20) NOT NULL DEFAULT '0',
  `havenumber` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_busines_second`
--

INSERT INTO `tp_busines_second` (`sid`, `token`, `type`, `name`, `mid_id`, `picurl`, `learntime`, `datatype`, `sort`, `second_desc`, `oneprice`, `googsnumber`, `havenumber`) VALUES
(1, 'kpktkq1416817563', 'beauty', '斯蒂芬', 1, 'http://demo.weiqianlong.com/uploads/k/kpktkq1416817563/0/e/8/d/5475de823c930.png', '撒旦', '撒旦', 1, 'http://demo.weiqianlong.com/uploads/k/kpktkq1416817563/0/e/8/d/5475de823c930.png', '11.00', 1206, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_car`
--

CREATE TABLE IF NOT EXISTS `tp_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `www` varchar(50) NOT NULL DEFAULT '',
  `logo` varchar(200) NOT NULL DEFAULT '',
  `sort` int(11) DEFAULT NULL,
  `info` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_carmodel`
--

CREATE TABLE IF NOT EXISTS `tp_carmodel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `brand_serise` varchar(50) NOT NULL,
  `model_year` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `panorama_id` int(11) DEFAULT '0',
  `guide_price` decimal(10,2) NOT NULL,
  `dealer_price` decimal(10,2) NOT NULL,
  `emission` double NOT NULL,
  `stalls` tinyint(4) DEFAULT NULL,
  `box` tinyint(4) NOT NULL,
  `pic_url` varchar(200) NOT NULL,
  `s_id` int(11) NOT NULL,
  `type` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_carnews`
--

CREATE TABLE IF NOT EXISTS `tp_carnews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `news_id` int(11) NOT NULL,
  `pre_id` int(11) NOT NULL,
  `usedcar_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_carowner`
--

CREATE TABLE IF NOT EXISTS `tp_carowner` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '''''',
  `head_url` varchar(200) NOT NULL DEFAULT '''''',
  `info` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_carsaler`
--

CREATE TABLE IF NOT EXISTS `tp_carsaler` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(200) NOT NULL,
  `mobile` char(13) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `salestype` tinyint(4) NOT NULL,
  `info` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_carseries`
--

CREATE TABLE IF NOT EXISTS `tp_carseries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `shortname` varchar(50) NOT NULL,
  `picture` varchar(200) NOT NULL,
  `sort` int(11) NOT NULL,
  `info` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_carset`
--

CREATE TABLE IF NOT EXISTS `tp_carset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `head_url` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL,
  `title1` varchar(50) NOT NULL DEFAULT '',
  `title2` varchar(50) NOT NULL DEFAULT '',
  `title3` varchar(50) NOT NULL DEFAULT '',
  `title4` varchar(50) NOT NULL DEFAULT '',
  `title5` varchar(50) NOT NULL DEFAULT '',
  `title6` varchar(50) NOT NULL DEFAULT '',
  `head_url_1` varchar(200) NOT NULL DEFAULT '',
  `head_url_2` varchar(200) NOT NULL DEFAULT '',
  `head_url_3` varchar(200) NOT NULL DEFAULT '',
  `head_url_4` varchar(200) NOT NULL DEFAULT '',
  `head_url_5` varchar(200) NOT NULL DEFAULT '',
  `head_url_6` varchar(200) NOT NULL DEFAULT '',
  `url1` varchar(200) NOT NULL DEFAULT '',
  `url2` varchar(200) NOT NULL DEFAULT '',
  `url3` varchar(200) NOT NULL DEFAULT '',
  `url4` varchar(200) NOT NULL DEFAULT '',
  `url5` varchar(200) NOT NULL DEFAULT '',
  `url6` varchar(200) NOT NULL DEFAULT '',
  `path` varchar(3000) DEFAULT '0',
  `tpid` tinyint(4) DEFAULT '23',
  `conttpid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_carset`
--

INSERT INTO `tp_carset` (`id`, `token`, `keyword`, `title`, `head_url`, `url`, `title1`, `title2`, `title3`, `title4`, `title5`, `title6`, `head_url_1`, `head_url_2`, `head_url_3`, `head_url_4`, `head_url_5`, `head_url_6`, `url1`, `url2`, `url3`, `url4`, `url5`, `url6`, `path`, `tpid`, `conttpid`) VALUES
(1, 'kpktkq1416817563', '微汽车', 'sss', 'tpl/User/default/common/car/car_title.jpg', 'ss', '经销车型', '销售顾问', '在线预约', '车主关怀', '实用工具', '车型欣赏', 'tpl/User/default/common/car/car_jx.jpg', 'tpl/User/default/common/car/car_yuyue.jpg', 'tpl/User/default/common/car/car_yuyue.jpg', 'tpl/User/default/common/car/carowner.png', 'tpl/User/default/common/car/tool-box-preferences.png', 'tpl/User/default/common/car/lanbo14.jpg', 'ss', '', '', '', '', '', '0', 23, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_caruser`
--

CREATE TABLE IF NOT EXISTS `tp_caruser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `brand_serise` varchar(50) NOT NULL,
  `car_no` varchar(20) NOT NULL,
  `car_userName` varchar(50) NOT NULL,
  `car_startTime` varchar(50) NOT NULL,
  `car_insurance_lastDate` varchar(50) NOT NULL,
  `car_insurance_lastCost` decimal(10,2) NOT NULL,
  `car_care_mileage` int(11) NOT NULL,
  `user_tel` char(11) NOT NULL,
  `car_care_lastDate` varchar(50) NOT NULL,
  `car_care_lastCost` decimal(10,2) NOT NULL,
  `kfinfo` varchar(200) NOT NULL DEFAULT '',
  `insurance_Date` varchar(50) DEFAULT NULL,
  `insurance_Cost` decimal(10,2) DEFAULT NULL,
  `care_mileage` int(11) DEFAULT NULL,
  `car_care_Date` varchar(50) DEFAULT NULL,
  `car_care_Cost` decimal(10,2) DEFAULT NULL,
  `car_buyTime` varchar(50) NOT NULL DEFAULT '',
  `car_care_inspection` varchar(50) NOT NULL DEFAULT '',
  `care_next_mileage` int(11) NOT NULL DEFAULT '0',
  `next_care_inspection` varchar(50) NOT NULL DEFAULT '',
  `next_insurance_Date` varchar(50) NOT NULL DEFAULT '',
  `carmodel` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_car_utility`
--

CREATE TABLE IF NOT EXISTS `tp_car_utility` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `status` int(11) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_case`
--

CREATE TABLE IF NOT EXISTS `tp_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `url` char(255) NOT NULL,
  `img` char(200) NOT NULL,
  `status` varchar(1) NOT NULL,
  `agentid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_case`
--

INSERT INTO `tp_case` (`id`, `name`, `url`, `img`, `status`, `agentid`) VALUES
(1, '后台手动添加', 'http://demo.weiqianlong.com/', 'http://demo.weiqianlong.com/tpl/Home/pigcms/common/images/logo-pigcms.png', '1', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_catemenu`
--

CREATE TABLE IF NOT EXISTS `tp_catemenu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `name` varchar(120) NOT NULL,
  `orderss` varchar(10) NOT NULL DEFAULT '0',
  `picurl` varchar(120) NOT NULL,
  `url` text NOT NULL,
  `status` varchar(10) NOT NULL,
  `RadioGroup1` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `tp_catemenu`
--

INSERT INTO `tp_catemenu` (`id`, `fid`, `token`, `name`, `orderss`, `picurl`, `url`, `status`, `RadioGroup1`) VALUES
(1, 0, 'kpktkq1416817563', '测试', '0', 'http://demo.weiqianlong.com/tpl/User/default/common/images/photo/plugmenu15.png', '{siteUrl}/index.php?g=Wap&amp;m=Jingcai&amp;a=index&amp;token=kpktkq1416817563&amp;wecha_id={wechat_id}', '1', '0'),
(2, 0, 'kpktkq1416817563', '黄金版', '0', 'http://demo.weiqianlong.com/tpl/User/default/common/images/photo/plugmenu16.png', '{siteUrl}/index.php?g=Wap&amp;m=Red_packet&amp;a=index&amp;token=kpktkq1416817563&amp;wecha_id={wechat_id}&amp;id=2', '1', '0'),
(3, 1, 'kpktkq1416817563', '1', '0', 'http://demo.weiqianlong.com/tpl/User/default/common/images/photo/plugmenu17.png', '{siteUrl}/index.php?g=Wap&amp;m=Red_packet&amp;a=index&amp;token=kpktkq1416817563&amp;wecha_id={wechat_id}&amp;id=2', '1', '0'),
(4, 1, 'kpktkq1416817563', '22', '0', 'http://demo.weiqianlong.com/tpl/User/default/common/images/photo/plugmenu16.png', '{siteUrl}/index.php?g=Wap&amp;m=Jingcai&amp;a=index&amp;token=kpktkq1416817563&amp;wecha_id={wechat_id}', '1', '0'),
(5, 0, 'mbeboo1416823194', '阿斯蒂芬', '0', 'http://p79.wzbywy.com/tpl/User/default/common/images/photo/plugmenu4.png', '', '1', '0');

-- --------------------------------------------------------

--
-- 表的结构 `tp_classify`
--

CREATE TABLE IF NOT EXISTS `tp_classify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL,
  `info` varchar(90) NOT NULL COMMENT '分类描述',
  `sorts` int(6) NOT NULL COMMENT '显示顺序',
  `img` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  `token` varchar(30) NOT NULL,
  `path` varchar(3000) DEFAULT '0',
  `tpid` varchar(255) DEFAULT '1',
  `conttpid` tinyint(4) DEFAULT '1',
  `pc_web_id` int(11) NOT NULL,
  `sonpagesize` int(2) NOT NULL DEFAULT '5' COMMENT '子类手机每页显示数',
  PRIMARY KEY (`id`),
  KEY `fid` (`fid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `tp_classify`
--

INSERT INTO `tp_classify` (`id`, `fid`, `name`, `info`, `sorts`, `img`, `url`, `status`, `token`, `path`, `tpid`, `conttpid`, `pc_web_id`, `sonpagesize`) VALUES
(1, 0, '12', '21', 1, 'http://demo.weiqianlong.com/tpl/static/attachment/icon/canyin/canyin_red/3.png', '', '1', 'kpktkq1416817563', '0', '328', 1, 0, 5),
(2, 0, '分类一', '', 1, 'http://demo.weiqianlong.com/tpl/static/attachment/icon/canyin/canyin_red/22.png', '', '1', 'jfvblr1416830511', '0', '328', 9, 0, 5),
(3, 0, '阿萨德撒', '穷二代', 1, 'http://demo.weiqianlong.com/tpl/static/attachment/icon/canyin/canyin_red/7.png', '{siteUrl}/index.php?g=Wap&amp;m=Red_packet&amp;a=index&amp;token=kpktkq1416817563&amp;wecha_id={wechat_id}&amp;id=2', '1', 'kpktkq1416817563', '0', '1', 1, 0, 5),
(4, 0, 'tr5345', '345345', 1, 'http://demo.weiqianlong.com/tpl/static/attachment/icon/canyin/canyin_red/4.png', '', '1', 'mbeboo1416823194', '0', '1', 1, 0, 5),
(5, 0, '分类二', '', 1, 'http://demo.weiqianlong.com/tpl/static/attachment/icon/canyin/canyin_red/13.png', '', '1', 'jfvblr1416830511', '0', '1', 1, 0, 5),
(6, 2, '4', '', 1, 'http://demo.weiqianlong.com/tpl/static/attachment/icon/canyin/canyin_red/15.png', '', '1', 'jfvblr1416830511', '0-2', '1', 1, 0, 5),
(7, 6, '99', '', 1, 'http://demo.weiqianlong.com/tpl/static/attachment/icon/canyin/canyin_red/7.png', '', '1', 'jfvblr1416830511', '0-2-6', '1', 1, 0, 5),
(10, 0, '火', '', 1, 'http://demo.weiqianlong.com/tpl/static/attachment/icon/canyin/canyin_red/13.png', '', '1', 'mbeboo1416823194', '0', '1', 1, 0, 5),
(8, 1, '撒打算的', '实打实的', 1, 'http://demo.weiqianlong.com/tpl/static/attachment/icon/canyin/canyin_red/13.png', '', '1', 'kpktkq1416817563', '0-1', '1', 1, 0, 5),
(9, 8, '撒旦撒旦', '撒打算', 1, 'http://demo.weiqianlong.com/tpl/static/attachment/icon/canyin/canyin_red/21.png', '', '1', 'kpktkq1416817563', '0-1-8', '1', 1, 0, 5);

-- --------------------------------------------------------

--
-- 表的结构 `tp_company`
--

CREATE TABLE IF NOT EXISTS `tp_company` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `amapid` varchar(50) NOT NULL DEFAULT '',
  `display` tinyint(1) NOT NULL DEFAULT '1',
  `token` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `username` varchar(60) NOT NULL,
  `password` varchar(32) NOT NULL,
  `shortname` varchar(50) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `tel` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(200) NOT NULL DEFAULT '',
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `intro` text NOT NULL,
  `catid` mediumint(3) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  `isbranch` tinyint(1) NOT NULL DEFAULT '0',
  `logourl` varchar(180) NOT NULL DEFAULT '',
  `area_id` int(11) NOT NULL DEFAULT '0',
  `cate_id` int(11) NOT NULL DEFAULT '0',
  `market_id` int(11) NOT NULL DEFAULT '0',
  `mark_url` varchar(200) NOT NULL DEFAULT '',
  `add_time` char(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `tp_company`
--

INSERT INTO `tp_company` (`id`, `amapid`, `display`, `token`, `name`, `username`, `password`, `shortname`, `mp`, `tel`, `address`, `latitude`, `longitude`, `intro`, `catid`, `taxis`, `isbranch`, `logourl`, `area_id`, `cate_id`, `market_id`, `mark_url`, `add_time`) VALUES
(1, '', 1, 'imkblg1416880426', 'asd', '', '', 'asd', '15935745625', '15935745625', 'asd', 0, 0, '', 0, 0, 0, '', 0, 0, 0, '', '0'),
(2, '', 1, 'kpktkq1416817563', '12', '', '', '21', '', '13211223344', '121', 12, 12, '12', 0, 0, 0, '12', 0, 0, 0, '', '0'),
(3, '', 1, 'mbeboo1416823194', '44564', '', '', '4564', '15676765654', '456456456', 'bfbsdfgsdgdgfd', 21.750869, 109.335135, 'dfgdfgdf', 0, 0, 0, 'http://demo.weiqianlong.com/tpl/static/attachment/icon/canyin/canyin_red/13.png', 0, 0, 0, '', '0'),
(4, '', 1, 'ntauon1416894710', '杭州友欧科技有限公司', '', '', '友欧科技', '0571-864076', '0571-86407620', '杭州江干区九盛路9号东方电子商务园9幢3楼', 0, 0, '', 0, 0, 0, 'http://demo.weiqianlong.com/uploads/n/ntauon1416894710/1/5/c/c/thumb_54759ba6010c2.jpg', 0, 0, 0, '', '0'),
(5, '', 1, 'oxyaaz1417094865', 'df', '', '', 'df', 'df', 'df', 'df', 0, 0, '32', 0, 32, 0, 'df', 0, 0, 0, '', '0'),
(6, '', 1, 'htedog1417267111', '微媒体商城', '', '', '微媒体商城', '', '13918387410', '微媒体商城', 108, 108, '微媒体商城', 0, 0, 0, '11086@qq.com', 0, 0, 0, '', '0');

-- --------------------------------------------------------

--
-- 表的结构 `tp_company_staff`
--

CREATE TABLE IF NOT EXISTS `tp_company_staff` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `companyid` int(10) NOT NULL,
  `token` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT '',
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `tel` varchar(11) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `companyid` (`companyid`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_company_staff`
--

INSERT INTO `tp_company_staff` (`id`, `companyid`, `token`, `name`, `username`, `password`, `tel`, `time`) VALUES
(1, 2, 'kpktkq1416817563', '11', '222', 'bcbe3365e6ac95ea2c0343a2395834dd', '18267720333', 1417356689);

-- --------------------------------------------------------

--
-- 表的结构 `tp_cosmetology`
--

CREATE TABLE IF NOT EXISTS `tp_cosmetology` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `piccover` varchar(500) NOT NULL,
  `registrationtoppic` varchar(500) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `lat` varchar(30) NOT NULL,
  `lng` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sms` varchar(100) NOT NULL,
  `open_email` varchar(50) NOT NULL,
  `open_sms` varchar(50) NOT NULL,
  `checked` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_cosmetology_departments`
--

CREATE TABLE IF NOT EXISTS `tp_cosmetology_departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_cosmetology_setup`
--

CREATE TABLE IF NOT EXISTS `tp_cosmetology_setup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `age` varchar(20) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `scheduled_date` datetime NOT NULL,
  `address` varchar(500) NOT NULL,
  `departments` varchar(200) NOT NULL,
  `expert` varchar(200) NOT NULL,
  `disease` varchar(500) NOT NULL,
  `process` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_cosmetology_setup_control`
--

CREATE TABLE IF NOT EXISTS `tp_cosmetology_setup_control` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `age` varchar(20) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `scheduled_date` varchar(200) NOT NULL,
  `address` varchar(500) NOT NULL,
  `departments` varchar(200) NOT NULL,
  `expert` varchar(200) NOT NULL,
  `disease` varchar(500) NOT NULL,
  `process` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_customer_service`
--

CREATE TABLE IF NOT EXISTS `tp_customer_service` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) DEFAULT NULL,
  `token` varchar(30) DEFAULT NULL,
  `name` varchar(255) DEFAULT 'gardennet',
  `state` tinyint(1) DEFAULT '1',
  `autoans` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_custom_field`
--

CREATE TABLE IF NOT EXISTS `tp_custom_field` (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_name` char(15) NOT NULL,
  `filed_option` char(60) NOT NULL,
  `field_type` char(10) NOT NULL,
  `item_name` char(15) NOT NULL,
  `field_match` char(80) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `is_empty` enum('0','1') NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `err_info` char(35) NOT NULL,
  `set_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_custom_info`
--

CREATE TABLE IF NOT EXISTS `tp_custom_info` (
  `info_id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(20) NOT NULL,
  `wecha_id` char(30) NOT NULL,
  `set_id` int(11) NOT NULL,
  `add_time` char(11) NOT NULL,
  `user_name` char(35) NOT NULL,
  `phone` char(11) NOT NULL,
  `sub_info` text NOT NULL,
  PRIMARY KEY (`info_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_custom_limit`
--

CREATE TABLE IF NOT EXISTS `tp_custom_limit` (
  `limit_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `enddate` char(10) NOT NULL,
  `sub_total` smallint(6) NOT NULL,
  `today_total` smallint(6) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`limit_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_custom_set`
--

CREATE TABLE IF NOT EXISTS `tp_custom_set` (
  `set_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(30) NOT NULL,
  `keyword` char(25) NOT NULL,
  `intro` varchar(100) NOT NULL,
  `addtime` char(10) NOT NULL,
  `top_pic` char(100) NOT NULL,
  `succ_info` char(35) NOT NULL,
  `err_info` char(35) NOT NULL,
  `detail` text NOT NULL,
  `limit_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  `tel` char(20) NOT NULL,
  `address` char(80) NOT NULL,
  `longitude` char(20) NOT NULL,
  `latitude` char(20) NOT NULL,
  PRIMARY KEY (`set_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_czzreply_info`
--

CREATE TABLE IF NOT EXISTS `tp_czzreply_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `picurls1` varchar(120) NOT NULL DEFAULT '',
  `info` varchar(120) NOT NULL DEFAULT '',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `copyright` text NOT NULL,
  `bg` varchar(120) NOT NULL,
  `wx` varchar(120) NOT NULL,
  `zz` varchar(120) NOT NULL,
  `url` varchar(120) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_dati`
--

CREATE TABLE IF NOT EXISTS `tp_dati` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL COMMENT '????',
  `picurl` varchar(200) DEFAULT NULL COMMENT '????',
  `info` varchar(300) DEFAULT NULL COMMENT '????',
  `type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0 ??? 1 ??? 2 ???',
  `daan` varchar(200) NOT NULL COMMENT '??',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '????????',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '??',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_dati_record`
--

CREATE TABLE IF NOT EXISTS `tp_dati_record` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(200) NOT NULL COMMENT 'token',
  `wecha_id` varchar(200) NOT NULL,
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '??',
  `playtime` int(15) DEFAULT NULL COMMENT '???????',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_deliemail`
--

CREATE TABLE IF NOT EXISTS `tp_deliemail` (
  `token` varchar(60) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `smtpserver` varchar(40) NOT NULL DEFAULT '',
  `port` varchar(40) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(60) NOT NULL DEFAULT '',
  `receive` varchar(60) NOT NULL DEFAULT '',
  `shangcheng` tinyint(1) NOT NULL DEFAULT '0',
  `yuyue` tinyint(1) NOT NULL DEFAULT '0',
  `baom` tinyint(1) NOT NULL DEFAULT '0',
  `zxyy` tinyint(1) NOT NULL DEFAULT '0',
  `toupiao` tinyint(1) NOT NULL DEFAULT '0',
  `dingcan` tinyint(1) NOT NULL,
  `car` tinyint(1) NOT NULL,
  `yiliao` tinyint(1) NOT NULL,
  `jdbg` tinyint(1) NOT NULL,
  `beauty` tinyint(1) NOT NULL,
  `fitness` tinyint(1) NOT NULL,
  `gover` tinyint(1) NOT NULL,
  `zhaopin` tinyint(1) NOT NULL,
  `jianli` tinyint(1) NOT NULL,
  `fangchan` tinyint(1) NOT NULL,
  `food` tinyint(1) NOT NULL,
  `travel` tinyint(1) NOT NULL,
  `flower` tinyint(1) NOT NULL,
  `property` tinyint(1) NOT NULL,
  `bar` tinyint(1) NOT NULL,
  `fitment` tinyint(1) NOT NULL,
  `wedding` tinyint(1) NOT NULL,
  `affections` tinyint(1) NOT NULL,
  `housekeeper` tinyint(1) NOT NULL,
  `lease` tinyint(1) NOT NULL,
  `wn` tinyint(1) NOT NULL,
  PRIMARY KEY (`token`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_deliemail`
--

INSERT INTO `tp_deliemail` (`token`, `type`, `smtpserver`, `port`, `name`, `password`, `receive`, `shangcheng`, `yuyue`, `baom`, `zxyy`, `toupiao`, `dingcan`, `car`, `yiliao`, `jdbg`, `beauty`, `fitness`, `gover`, `zhaopin`, `jianli`, `fangchan`, `food`, `travel`, `flower`, `property`, `bar`, `fitment`, `wedding`, `affections`, `housekeeper`, `lease`, `wn`) VALUES
('avljgc1397041839', 1, 'smtp.qq.com', '25', '283497031@qq.com', 'lry520', '283497031@qq.com', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('chsyqp1401254915', 0, '', '', '', '', '859033082@qq.com', 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('orbhyn1400224508', 0, '', '', '', '', '3050647@qq.com', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('rtzvcz1401302172', 0, 'smtp.qq.com', '25', '1031414184@qq.com', 'XTAIWTXY1103..', 'op[', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('tzqawo1400308953', 0, 'smtp.qq.com', '25', '87866306@qq.com', 'abcbxH123', '87866306@qq.com', 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ivrnef1401365899', 0, '', '', 'test', 'test123', '2721683008@qq.com', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('lfethi1401449403', 0, '', '', '', '', '393620317@qq.com', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('xyqpiw1401499333', 0, '', '', '', '', 'kennyhn@163.com', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('vjqknh1401698458', 0, '', '', '', '', '289568103@.com', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('nepvyy1400393099', 0, '', '', 'test', 'test123', '289568103@qq.com', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('jhyscr1401723019', 0, '', '', '', '', '6386739@qq.com', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('svhmlo1401765734', 0, '', '', '', '', '289568103@qq.com', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('fkcmxo1402024612', 1, 'smtp.yeah.net', '25', 'sinoseashow', 'yangsong', '115387@qq.com', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('rbxjud1402368974', 0, '', '', '', '', '13300798@qq.com', 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('zdlhnn1402630375', 0, '', '', '', '', '174682776@qq.com', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('rprdef1402652925', 0, '', '', '', '', '1350631175@qq.com', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('txzoau1401961004', 0, '', '', '', '', '2860652032@qq.com', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('vnkcxl1402887625', 0, '', '', '', '', '120171110@qq.com', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('spkysy1402932766', 0, '', '', '', '', '1468458135@qq.com', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('gosrqp1403703413', 0, '', '', 'zunhoocom@gosrqp1403703413', '13141516', '454899359@qq.com', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('yotmqh1407716184', 0, '', '', '', '', '1111111111111', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('fvaczq1405658789', 0, '', '', '', '', '283497031@qq.com', 1, 1, 1, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
('zbzquf1407768433', 1, 'smtp.163.com', '25', 'wpz1999@163.com', 'wpz6161570', '4882950@qq.com', 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ykigocom', 1, 'smtp.163.com', '25', 'ytwtwx@163.com', 'aa789456', '32317396@qq.com', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('suzyfz1408882362', 0, '', '', '', '', '', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('eczabu1409039759', 0, '', '', '', '', 'fghfd@dfd.com', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('luhigr1410947367', 0, '', '', '', '', '', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('zzrmgy1411015202', 0, '', '', '', '', '13300798@qq.com', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('wfnara1412052731', 1, 'smtp.163.com', '25', 'vhongyun@163.com', 'zaq12wsx', '13300798@qq.com', 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('famgyn1412215306', 1, 'smtp.qq.com', '25', '260037439@qq.com', 'dwmmzswsxxsw', '260037439@qq.com', 0, 1, 0, 1, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
('gzhxty', 0, '', '', '', '', '123479942@qq.com', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('ijmbca1410835777', 0, '', '', '', '', '283497031@qq.com', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('tbbpsz1413738056', 0, '', '', '', '', '278638500@qq.com', 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('yveitr1414329720', 0, '', '', '', '', '66545819@qq.com', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('vitwdl1414416989', 0, '', '', '', '', '87760119@qq.com', 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('vjbjfx1414404056', 1, '', '', '', '', '58334605@qq.com', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('jpbpsa1414572658', 1, 'smtp.qq.com', '25', '43923780', 'sjh520', '58334605@qq.com', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('pkanso1415434182', 1, 'smtp.qq.com', '25', '8528203@qq.com', 'hack4821204', '123568659@qq.com', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0),
('lepdve1416025211', 1, '421208665@qq.com', '25', '13557646007', 'q13481417196', '421208665@qq.com', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('gszclw1417007249', 0, '', '', '', '', '297101624@qq.com', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
('mbeboo1416823194', 0, '', '', '', '', '283497031@qq.com', 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('kpktkq1416817563', 1, 'smtp.126.com', '25', 'lingrongyan@126.com', 'lry520520', '283497031@qq.com', 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_delisms`
--

CREATE TABLE IF NOT EXISTS `tp_delisms` (
  `token` varchar(60) NOT NULL,
  `phone` varchar(40) NOT NULL DEFAULT '',
  `name` varchar(40) NOT NULL DEFAULT '',
  `password` varchar(60) NOT NULL DEFAULT '',
  `shangcheng` tinyint(1) NOT NULL DEFAULT '0',
  `yuyue` tinyint(1) NOT NULL DEFAULT '0',
  `baom` tinyint(1) NOT NULL DEFAULT '0',
  `zxyy` tinyint(1) NOT NULL DEFAULT '0',
  `toupiao` tinyint(1) NOT NULL DEFAULT '0',
  `dingcan` tinyint(1) NOT NULL,
  `car` tinyint(1) NOT NULL,
  `yiliao` tinyint(1) NOT NULL,
  `jdbg` tinyint(1) NOT NULL,
  `ktv` tinyint(1) NOT NULL,
  `huisuo` tinyint(1) NOT NULL,
  `jiuba` tinyint(1) NOT NULL,
  PRIMARY KEY (`token`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tp_diaoyan`
--

CREATE TABLE IF NOT EXISTS `tp_diaoyan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `stime` date DEFAULT NULL,
  `etime` date DEFAULT NULL,
  `stat` tinyint(2) DEFAULT '0',
  `pic` varchar(200) DEFAULT NULL,
  `sinfo` varchar(500) DEFAULT NULL,
  `einfo` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_diaoyan_timu`
--

CREATE TABLE IF NOT EXISTS `tp_diaoyan_timu` (
  `tid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `optia` varchar(200) DEFAULT NULL,
  `optib` varchar(200) DEFAULT NULL,
  `optic` varchar(200) DEFAULT NULL,
  `optid` varchar(200) DEFAULT NULL,
  `optie` varchar(200) DEFAULT NULL,
  `max` smallint(2) DEFAULT NULL,
  `pid` int(11) NOT NULL,
  `perca` int(11) DEFAULT '0',
  `percb` int(11) DEFAULT '0',
  `percc` int(11) DEFAULT '0',
  `percd` int(11) DEFAULT '0',
  `perce` int(11) DEFAULT '0',
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_diaoyan_user`
--

CREATE TABLE IF NOT EXISTS `tp_diaoyan_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `diaoyan_id` int(11) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  `qid` int(11) DEFAULT NULL,
  `ans` varchar(20) DEFAULT NULL,
  `jianyi` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_dining_table`
--

CREATE TABLE IF NOT EXISTS `tp_dining_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `num` int(10) unsigned NOT NULL,
  `image` varchar(200) NOT NULL,
  `isbox` tinyint(1) unsigned NOT NULL,
  `isorder` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `catid` int(8) NOT NULL COMMENT '店铺id',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `isbox` (`isbox`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `tp_dining_table`
--

INSERT INTO `tp_dining_table` (`id`, `cid`, `name`, `num`, `image`, `isbox`, `isorder`, `status`, `catid`) VALUES
(1, 2, '12', 1, '', 0, 0, 0, 2),
(2, 2, '1212', 2, '', 0, 0, 0, 2),
(3, 2, '阿斯达斯的', 11, '', 0, 0, 0, 2);

-- --------------------------------------------------------

--
-- 表的结构 `tp_dish`
--

CREATE TABLE IF NOT EXISTS `tp_dish` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `unit` varchar(3) NOT NULL,
  `price` float NOT NULL,
  `ishot` tinyint(1) unsigned NOT NULL,
  `isopen` tinyint(1) unsigned NOT NULL,
  `image` varchar(200) NOT NULL COMMENT '片',
  `des` varchar(500) NOT NULL,
  `creattime` int(10) unsigned NOT NULL,
  `catid` int(8) NOT NULL COMMENT '店铺id',
  `sort` int(10) unsigned NOT NULL COMMENT '排序，数字越小排的越前',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `sid` (`sid`),
  KEY `isopen` (`isopen`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_dish`
--

INSERT INTO `tp_dish` (`id`, `cid`, `sid`, `name`, `unit`, `price`, `ishot`, `isopen`, `image`, `des`, `creattime`, `catid`, `sort`) VALUES
(1, 2, 1, '12', '1', 12, 1, 1, '', '12', 1417015885, 2, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_dish_company`
--

CREATE TABLE IF NOT EXISTS `tp_dish_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `istakeaway` tinyint(1) unsigned NOT NULL,
  `price` float NOT NULL,
  `payonline` tinyint(1) unsigned NOT NULL,
  `subscription` float NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '',
  `catid` mediumint(3) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL COMMENT '店铺状态',
  `category` varchar(10) NOT NULL COMMENT '店铺分类',
  `time` varchar(12) NOT NULL COMMENT '营业时间',
  `money` double(10,2) NOT NULL COMMENT '起送价格',
  `radius` varchar(10) NOT NULL COMMENT '服务半径',
  `scope` varchar(100) NOT NULL COMMENT '配送范围',
  `bulletin` text NOT NULL COMMENT '店铺公告',
  `memberCode` varchar(50) NOT NULL,
  `feiyin_key` varchar(50) NOT NULL,
  `deviceNo` varchar(20) NOT NULL,
  `print_status` int(1) NOT NULL,
  `print_total` int(4) NOT NULL COMMENT '打印份数',
  `phone_authorize` int(1) NOT NULL COMMENT '手机订单短信验证开关',
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_status` int(1) NOT NULL,
  `email_status` int(1) NOT NULL,
  `printer` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_dish_company`
--

INSERT INTO `tp_dish_company` (`id`, `cid`, `istakeaway`, `price`, `payonline`, `subscription`, `token`, `catid`, `status`, `category`, `time`, `money`, `radius`, `scope`, `bulletin`, `memberCode`, `feiyin_key`, `deviceNo`, `print_status`, `print_total`, `phone_authorize`, `phone`, `email`, `phone_status`, `email_status`, `printer`) VALUES
(1, 2, 1, 1, 1, 0, '', 2, 0, '', '', 0.00, '', '', '', '', '', '', 0, 0, 0, '', '', 0, 0, ''),
(2, 3, 0, 0, 0, 0, '', 3, 0, '', '', 0.00, '', '', '', '', '', '', 1, 0, 1, '', '', 1, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_dish_like`
--

CREATE TABLE IF NOT EXISTS `tp_dish_like` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `did` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `wecha_id` (`wecha_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_dish_order`
--

CREATE TABLE IF NOT EXISTS `tp_dish_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL,
  `total` int(11) NOT NULL,
  `price` float NOT NULL,
  `nums` smallint(3) unsigned NOT NULL,
  `info` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `tel` varchar(13) NOT NULL DEFAULT '',
  `address` varchar(200) NOT NULL,
  `tableid` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `reservetime` int(11) NOT NULL,
  `isuse` tinyint(1) NOT NULL,
  `paid` tinyint(1) unsigned NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `printed` tinyint(1) unsigned NOT NULL,
  `des` varchar(500) NOT NULL,
  `takeaway` tinyint(1) unsigned NOT NULL,
  `paytype` varchar(50) NOT NULL DEFAULT '',
  `third_id` varchar(100) NOT NULL DEFAULT '',
  `catid` int(8) NOT NULL COMMENT '店铺id',
  `send_email` char(1) NOT NULL DEFAULT '0' COMMENT '1已发0失败',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`wecha_id`),
  KEY `token` (`token`),
  KEY `orderid` (`orderid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_dish_sort`
--

CREATE TABLE IF NOT EXISTS `tp_dish_sort` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `des` varchar(500) NOT NULL,
  `image` varchar(200) NOT NULL,
  `num` smallint(3) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `catid` int(8) NOT NULL COMMENT '店铺id',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_dish_sort`
--

INSERT INTO `tp_dish_sort` (`id`, `cid`, `name`, `des`, `image`, `num`, `sort`, `catid`) VALUES
(1, 2, '12', '', '', 1, 0, 2);

-- --------------------------------------------------------

--
-- 表的结构 `tp_dish_table`
--

CREATE TABLE IF NOT EXISTS `tp_dish_table` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `tableid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `reservetime` int(10) unsigned NOT NULL,
  `creattime` int(10) unsigned NOT NULL,
  `orderid` int(10) unsigned NOT NULL,
  `isuse` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `wecha_id` (`wecha_id`,`reservetime`),
  KEY `tableid` (`tableid`),
  KEY `orderid` (`orderid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `tp_dish_table`
--

INSERT INTO `tp_dish_table` (`id`, `cid`, `tableid`, `wecha_id`, `reservetime`, `creattime`, `orderid`, `isuse`) VALUES
(1, 2, 1, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 1417016583, 1417016033, 1, 0),
(2, 2, 2, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 1417016839, 1417016259, 2, 0),
(3, 2, 3, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 1417019005, 1417018414, 3, 0),
(4, 2, 1, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 1417374000, 1417179667, 5, 0),
(5, 2, 1, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 1418018400, 1417182032, 15, 0),
(6, 2, 2, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 1417968000, 1417182074, 16, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_diyform`
--

CREATE TABLE IF NOT EXISTS `tp_diyform` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `age` tinyint(2) NOT NULL,
  `qq` int(11) NOT NULL,
  `photo` int(11) NOT NULL,
  `tel` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_diyform_set`
--

CREATE TABLE IF NOT EXISTS `tp_diyform_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `info` varchar(100) NOT NULL,
  `jion_num` int(5) NOT NULL,
  `select_name` varchar(200) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_diymen_class`
--

CREATE TABLE IF NOT EXISTS `tp_diymen_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `url` varchar(150) NOT NULL,
  `is_show` tinyint(1) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `wxsys` char(40) NOT NULL,
  `emoji_code` varchar(16) NOT NULL COMMENT '图标码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `tp_diymen_class`
--

INSERT INTO `tp_diymen_class` (`id`, `token`, `pid`, `title`, `keyword`, `url`, `is_show`, `sort`, `wxsys`, `emoji_code`) VALUES
(5, 'hdwvpv1431337356', 0, '首页', '首页', '', 1, 0, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_diymen_set`
--

CREATE TABLE IF NOT EXISTS `tp_diymen_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `appid` varchar(18) NOT NULL,
  `appsecret` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- 转存表中的数据 `tp_diymen_set`
--

INSERT INTO `tp_diymen_set` (`id`, `token`, `appid`, `appsecret`) VALUES
(1, 'kpktkq1416817563', '12', '12'),
(2, 'mbeboo1416823194', 'test', 'test'),
(3, 'jfvblr1416830511', '1', '1'),
(4, 'gnenqw1416832178', '', ''),
(5, 'ikecal1416840878', '12', '21'),
(6, 'qrefzy1416878793', '', ''),
(7, 'imkblg1416880426', '', ''),
(8, 'ntauon1416894710', '', ''),
(9, 'qinaax1416894724', '', ''),
(10, 'rnepgf1416909557', '', ''),
(11, 'iuinxr1416909760', '', ''),
(12, 'cgtejd1416909792', '', ''),
(13, 'frmwmq1416909820', '', ''),
(14, 'lxnfaw1416928484', '11111111', '1111111'),
(15, 'xonzce1416930560', '', ''),
(16, 'caydxt1416931484', '', ''),
(17, 'gnzsbn1417091680', '', ''),
(18, 'oxyaaz1417094865', 'df', 'df'),
(19, 'gcoxvo1417102701', '', ''),
(20, 'hupilh1417143669', 'wx3f733f5bf4f0871a', '0022f45b725e0500bff79512e481b762'),
(21, 'htedog1417267111', 'hashqdjdkwdjwdkjwj', 'hashqdjdkwdjwdkjwjfjnkef'),
(22, 'gicfqb1417268082', '', ''),
(23, 'nopcdm1417401318', '', ''),
(24, 'azmylq1417441992', '', ''),
(25, 'jwxlha1418258010', '', ''),
(26, 'lxiuwf1418474602', 'wx0dffd06d6fbc53e9', 'a0c6604192b50a824375c23af8818ad1'),
(27, 'hdwvpv1431337356', 'wx54d994cbfdfb33fd', '3649d26eb9eb6dbae07f8839ee4830cf');

-- --------------------------------------------------------

--
-- 表的结构 `tp_dream`
--

CREATE TABLE IF NOT EXISTS `tp_dream` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `content` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=91 ;

--
-- 转存表中的数据 `tp_dream`
--

INSERT INTO `tp_dream` (`id`, `title`, `content`) VALUES
(1, '梦见父母', '梦见自己成了幼儿与父母相处  幸运的事情即将发生。可以尝到美昧可口的咖啡、得到电影招待券等等。你将不觉莞尔一笑。梦见和父母快乐地有说有笑  家中将起波澜。对父母将感觉厌烦，会有离家出走的行为。你还未成年，不要因轻率急躁而遗恨终身，要多多自重。梦见父母离婚  朋友运不如意。你无心的一句话，将引起误解。如果置之不理，朋友将离你而去，要设法解释清楚才好。梦见受母亲疼爱  在爱情方面将有乐事。约会的地方最好尽量选择幽静的地方，诸如图书馆、博物馆、黄昏的公园等等。梦见被父亲大骂一顿  健康方面有不良征兆。尤其要注意的是意外事故，在上下车、横穿车道时要特别小心哪。梦见离开父母而成孤苦伶仃  爱情方面将有很大的幸运。如果有意中人，不必迟疑可以进攻，绝对不会被封杀出局。因为这是梦中注定的'),
(2, '梦见护士', ' 已婚女子梦见护士  不久会怀孕，得贵子。 少女梦见有一群美貌的护士  很快要出嫁。 少女梦见和护士争吵  婚事不顺利，迟迟不能出嫁。 病人梦见护士  痛苦很快要过去。'),
(3, '梦见老师', ' 梦见受老师称赞  在学业方面乌云密布。由于连日的熬夜，在课堂上竟开始打陀结果受到老师批评。这就是所谓反梦。 梦见受老师责骂  家人关系极佳。对双亲能克尽孝道，你将令人刮目相看。也许每个月的零用钱会大幅度增加呢。 梦见到老师家里拜访  人际关系的运势衰退的预兆。头顶上有一颗争执之星，要注意你的言行举止，防止争执，尤其脾气不可暴躁。 梦见正在上课  读书运渐入佳境。将有指点迷津的同学出现，以此为契机，你的读书欲将大增。也就是说，你将会有很大的干劲。要努力喔! 梦见遇见校长  这是上学恐惧症。不要一天到晚抱着书本，过分拘泥于成绩，有时也要放松心情，尽量参加其他活动。否则你的神经将很快衰弱。 梦见异性老师向你亲密攀谈  爱情运将下降，情人之间的感情开始变得索然无味，最好改变一下约会的方式'),
(4, '梦见男孩', '梦见男孩，是祥兆。女人梦见男孩，会生病。梦见漂亮的男孩，朋友会忘恩负义。梦见生男孩，生活会幸福、恬适。梦见男孩夭亡，大难将降临。女人梦见自己将要生一个男孩，意味着会过上幸福舒畅的生活'),
(5, '梦见皇后', ' 男人梦见皇后  会经济受损。 女人梦见皇后  丈夫会心情愉快。 囚犯梦见皇后  很快能恢复自由。 叛国者梦见皇后  不久会成为国家领导人的宠儿。 商人梦见皇后  出国做生意能发大财。 已婚女人梦见自己成了皇后  很快会与丈夫分离，或孩子生病，或者由于丈夫失业，左支右绌。 未婚女子梦见自己当了皇后  嫁到一个有名望富有的家庭。 男人梦见同皇后握手  会受到国家尊重，官运亨通。 男人梦见同皇后握手  会娶富人家的小姐为妻。 已婚女人梦见和皇后握手  会身居高位。 未婚女子梦见和皇后握手  想与意中人结为伴侣，但却会遭到父母的阻拦。 梦见和皇后争吵  能发大财'),
(6, '梦见朋友', ' 梦见大伙儿一起去旅行  最近，很可能发生快乐的事。如亲友参加电视猜谜得奖；老师临时有事，自习时间增加等等。 梦见与朋友一起挨老师责骂  考试运极度好转。考试前所看的复习题，全部出现在试卷中，必将获得近于满分的成绩。 梦见与朋友一起旷课到处游荡  在健康方面乌云密布。放学途中买东西吃，将食物中毒；咬紧牙关熬夜，眼睛将出毛病、只好去看医生，不料医生临时休业真是霉运当头! 梦见有朋友来玩  异性运上升。将有新的浪漫史产生。爱情战的武器，不外乎是电话。最幸运的黄金时段将是晚上八点到九点。 梦见与朋友一起又吃又喝  在金钱方面要多加小心。不要花无谓的钱，搞得囊空如洗。 梦见与朋友并排读书  进行新尝试的最好时机。参加社团、练技习艺，只要是日常想做的事，立刻开始行动吧。 梦见与朋友一起工作  人际关系好。没有钱的时候；有事情必须要别人帮忙时候，朋友一定会伸出援助的手。 梦见朋友与异性很要好  爱情运将停滞。与情人之间总是格格不入，波折迭起。选一处喝咖啡的地方，也争执不休。 梦见与朋友玩笑嬉戏  在异性方面将有问题出现。对性的诱惑千万要小心，要保持清醒与理智。 梦见一群好友反目而分裂  人际关系将不如意。无意间发觉最信赖的朋友在背后说你，因此受到莫大的打击。要治愈这心里的创伤，要一段很长的时间'),
(7, '梦见守财奴', ' 梦见一毛不拔的人  朋友会吵嘴。 梦见与吝啬鬼交朋友  要遭不幸。 男人梦见自己成了铁公鸡  一毛不拔，生意能赚大钱。 已婚女人梦见自己小气  婆婆家的处境会很令人担忧。 梦见和吝啬人吵架  预示要交新朋友。 梦见偷拿守财奴的东西  会身居高位。 梦见铁公鸡送钱给自己家  会被偷窃'),
(8, '梦见尼姑', ' 男人梦见女出家人  无数的灾难会临头。 女人梦见与出家人交谈  丈夫家的人能和睦相处，生活愉快。 少女梦见与女出家人发生争吵  是凶兆，亲人会受辱。'),
(9, '梦见小孩', ' 梦见抱起婴儿  财运相当顺利的象征。你的存款将大幅度增加，但绝对不可借给别人，因为要不回来的可能性很大。 梦见欺负小孩儿  人际关系有阴影。你的隐私将被周围的人发觉。必须小心加以防范，别忘了隔墙有耳! 梦见与儿童一起游戏  学校里将发生快乐的事。新近成为会员的后生小辈，竟是英俊无比的异性每天都盼望快点下课'),
(10, '梦见人群', ' 梦见许多穿着华贵服装的人聚集在一起  未婚者将会喜结良缘。 梦到穿脏衣服的人聚集在一起  做梦人的亲属会有人与世长辞'),
(11, '梦见疯子', ' 少女梦见与女出家人发生争吵  是凶兆，亲人会受辱。 姑娘梦见疯子  会嫁给一个富有、如意的男子。 跛子梦见疯子  会找到忠诚的仆人。 梦见妻子疯了  她会把家安排得井井有条'),
(12, '梦见兄弟姊妹', ' 梦见受兄或姊欺负而心有不甘  兄弟运蕴酿着波折。仅仅为了一支铅笔、或一块橡皮，就要起一场争执。这时，最好由父母出面做公道人。 梦见兄弟或妹妹将出去游玩  在人际关系中将有幸运来临。可能由于趣味相投，将结识新朋友。只要坦诚相待，必然可以成为心腹之交。 梦见兄弟吵架  比赛运衰减。围棋、象棋、电视娱乐比赛不管参加任何一种比赛，准输无疑。这种状态将持续半年，要有心理准备! 梦见与兄弟姊妹合力做些事情  学业方面将有进步。以往难缠的科目，也将全部都有好分数。有可能得到老师当众表扬，使你神采飞扬。 梦见与兄弟或姊妹远离  在异性方面将有幸运。可能接到某同学写的热情洋溢的情书。这时将如何应付?这是你个人的事。 梦见与兄弟姊妹同盖一床被子  雨过天睛，健康运上升。今后一个月，虽然有一点不如意，但过后将精力充沛，可以过一段无病无痛的日子'),
(13, '梦见军队', '梦见军队开来或军队处于立定姿势，这是好的征兆。梦见军队离去，意味着将遭不幸。梦见军队打败了，倒霉的日子将要到来。梦见军队胜利了，寓意着要交好运。'),
(14, '梦见清道夫', ' 梦见清洁夫  要遭厄运。 女人梦见清扫人  会忍受丈夫分离的痛苦。 梦见当了清道夫  前途无量。 商人梦见做清道夫的工作  生意会兴旺，能发大财。 梦见与清扫工吵架  会臭名远扬。 梦见和清洁工交朋友  会名声大噪，得财进宝'),
(15, '梦见祖父母', ' 梦见祖父母给你零用钱  将有极佳的金钱运。但仍有浪费的倾向，所以出去逛街购物时要有节制。 梦见祖父母责骂母亲  健康方面亮起红灯。虽有强健的身体，也不可过信自己的体力。 必须保持良好的生活规律，要经常运动，加上充分的营养及休息才可保持健康。 梦见帮祖父母捶背  技能方面将进步。这将是练习弹奏吉他的良机，每天加紧练习吧! 梦见祖父母躺在病床上  家中可能发生纠葛。你与双亲及兄弟强能发生争执，注意不要任性。'),
(16, '梦见婴儿', ' 孕妇梦见婴儿，则无象征意义。 梦见抱着婴儿，象征着梦者将会有所收获，不久之后将会得到对于来说很重要的东西。 梦见婴儿笑，象征着人际关系的良好，您能以诚待人，且身边会有很多。 梦见婴儿长牙，象征着计划的顺利实施，您能得到贵人的帮助，不久之后就会有好消息。 梦见婴儿说话，可能是在提醒您最近您会遇到麻烦，总有人从中做怪，也就是犯小人。 梦见婴儿死了，是不详之梦，表明自己计划和希望的破灭，您已经或者将要失去对自己来说很重要的东西。 梦见婴儿哭，表示当前有些压抑的情绪，使得自己心烦意乱，这时候最好静下心来，不要主动出击，做事低调些。'),
(17, '梦见野蛮人', '男人梦见野蛮人，小心啊女人梦见野蛮人，丈夫家里会发生吵架。梦见与野蛮人打斗，是不祥之兆，灾祸会降临。商人梦见会见未开化的人，不久要出国，能发大财。受指控的人梦见未开化的人，会被驱逐出境。旅游者梦见野蛮人，旅行会愉快'),
(18, '梦见邻居', '梦见邻人出现，有火难之灾。火灾固然要小心，也要注意开水、火柴等烫伤。但所梦见的如果是隔壁的邻居，就不会有危险，尽可放心。梦见与邻居同辈的异性，爱情将有新局面。表示你对爱情已有美好憧憬，一定会对某一个人产生爱情。'),
(19, '梦见王子公主', ' 一般梦中的王子、公主多代表着自己或兄弟姐妹。而梦中的国王、女王则代表你的双亲。 梦见王子或公主，则象征着这些日子，也许会与善意的人吵架'),
(20, '梦见小贩', ' 男人梦见小贩  会与朋友分道扬镳。 已婚女人梦见小贩  会与丈夫家的人分开另过，独自操持家务。 梦见与小贩交谈  是好的征兆，丈夫会勤俭持家。 女人梦见与小贩交谈  会有一个装饰豪华具有现代化的住宅、华贵的服装、舒适的生活，一切应有尽有。 梦见与小贩吵架  陌生人会骗走自己的财产。 梦见和小贩交朋友  生意会好转，发大财。 官员梦见自己成了小贩  会被降职，最后只好提出辞职。 商人梦见自己成了小贩  生意会萧条，有可能倒闭。 病人梦见自己成了小贩  要遭厄运，尽管请西医大夫和中医治疗，但病情仍不见好转。 大学教师梦见自己成了小贩  是祥兆，会扬名天下，世界许多国家会邀请他发表演说。失业者梦见自己成了小贩  会接到好几个机构的聘书，但是都难以胜任'),
(21, '梦见医生', ' 梦见医生  亲人会卧床不起。 病人和久病痊愈的人梦见医生  病情会加重，或突然病倒。 梦见与医生交谈，或向医生咨询  会身体健康，延年益寿。 病人梦见和医生谈话，或请教医生  不久病情会好转。 梦见与医生争吵，是不祥之兆  要遭受重大损失。 梦见自己当了医生或西医大夫  不久会被辞退，或生意受到冲击。 梦见去请医生  会与德高望众、受人民尊重的人建立友好关系。 梦见与医生交朋友  不用求人送礼，就能发财。 女人梦见丈夫当了医生  会患子宫病。 梦见侍候医护人员  生意会起伏不定，生活动荡不安'),
(22, '梦见丈夫', ' 梦见担心丈夫头发掉落变成秃顶，这是用梦境体现了对 丈夫 的无能、软弱的嫌恶和怨恨。 梦见丈夫有第三者,可能是你对你们的婚姻在潜意识中总觉得有压力。也许是你的丈夫很优秀，也许是你总是看低自己的魅力，所以你在内心深处总会有危机感，总有着隐隐约约的压力和担心。梦仅仅是现实在我们脑海中扭曲的反映，梦反映什么不重要，重要的是通过梦境我们可以更多地了解自己的内心，更好的改进自己心理状况。 梦见丈夫睡在别人的床上,有这样的梦,实质上说明的情况是你爱老公的程度比不了他爱你的程度. 另外,你已经很习惯有他的日子了,但有的时候,他说不定比你还喜欢吃醋.......呵呵.既然这样,梦见这个,就不是坏事,好好珍惜这份感情吧.'),
(23, '梦见烈士', ' 梦见烈士  会受到人们的尊重，不断进步。 梦见女烈士  要发大财。 梦见受到烈士的责骂  处境对自己极为不利。 梦见自己成了烈士  会灾难临头'),
(24, '梦见警察', ' 梦见警察站着  是危险的兆头。 梦见自己被逮捕  会成为政府官员所喜欢的人物。 惯犯梦见警察抓人  多次作案，能发大财。梦见与警察交谈  会被提升。 女人梦见与警察交谈  丈夫的保镖会受伤。 囚犯梦见与警察谈话  很快会被释放。 商人梦见与警察交谈  要提防竞争对手。 领导人梦见与警察交谈  政府和警察会非常尊重自己。 梦见与警察吵架  是凶兆，预示仇人和强盗在威胁着自己。 未婚男子梦见与警察争吵  会带着自己的情侣逃跑。 男人梦见请求援助  作梦人会幸福安全。 女人梦见求助于警察帮助  很快要出狱。 梦见挨警察的打  会贪污公款，损失惨重。 梦见自己当了警察  会威信扫地。梦见自己穿着警服  会受到刑事案件的牵连'),
(25, '梦见导师', ' 男人梦见自己的 导师 ，一切都会顺心如意。 女人梦见自己的 导师 ，要遭欺辱。梦见新的 导师 ，会遭受损失。 老叟梦见与自己的 导师 交谈，不久要与世长辞。 商人梦见和自己的 导师 谈话，吸收新的合股人，能发大财。 梦见与 导师 吵架，会家破人亡。 学生梦见和 导师 交谈，会因生活困难。中途辍学'),
(26, '梦见队伍', ' 梦见迎亲的队伍  家里要死人。 女人梦见迎亲队伍  丈夫家里要吵架。 已婚男人梦见参加迎亲队伍  会身居高位，人们都有求于自己。 已婚女人梦见参加迎亲队伍  不久会怀孕，能生一个漂亮的男孩。 未婚男女梦见迎亲队伍  会喜结良缘。 未婚男子梦见参加迎亲队伍  会与恋人各奔东西。 囚犯梦见加入迎亲队伍  很快会获得自由。 病人梦见参加迎亲队伍  病情会恶化。 梦见参加政治或宗教游行  会有好消息。 政治领导人梦见加入政治或宗教游行  会受到国家领导人的尊重。旅游者梦见参加政治或宗教游行  会发生车祸'),
(27, '梦见名人', ' 梦见接到喜欢的朋友来信  在异性关系上，将有快乐事发生。在朋友的生日派对中，被介绍认识几个异性，其中也许有上个喜欢你的人。爱情可能就此萌芽 梦见受著名的运动选手指导  健康方面将有不韦。尤其社团活动时，发生事故或受伤的可能性很大。 这个时候，最好避免练球练得太晚。 梦见与最喜欢的明星亲密相处  财运将大幅度好转。多余的支出减少，零用钱到了月底还有很多。借给朋友的钱，也一定可以收回。 梦见与外国电影明星交谈  朋友运上升的前兆。这时可以和几个要好的朋友计划郊游。这段快乐的时光将可以增强你与朋友之间的友谊。 梦见与首相握手  遭受意外事故的可能性极大。譬如向摇着尾巴走来的狗伸出友谊的手，却被咬等倒霉到了极点。 梦见与历史上的名人会见  亲友将遭受病难的预兆。要给予病痛缠身或体弱多病的朋友婉转的安慰'),
(28, '梦见同学', ' 梦见同性的同学反映你现在人际关系上出现了问题。 梦见异性同学则表示你对朋友有不满的态度，反映了你现在被孤立而寂寞的心态。 梦见与同学打架，人际关系运上升。你跟任何人都可以大胆而积极地交往，周围的人对你也必然坦诚相待，绝不会发生冲突'),
(29, '梦见英雄', ' 中年人梦见自己成了英雄  是身强力壮的兆头。 老年人梦见自己成英雄  会溘然而逝。应该尽早立遗嘱，分家产。 病人梦见自己成了英雄  病情会恶化，如果他的八字好，会得救'),
(30, '梦见上司', '梦见上司，现实生活中想发挥自己的能力但受到阻挠。梦到这个梦时还要注意工作上可能将会惹麻烦梦见上司不批准自已请求，预示工作或工作环境有小麻烦。梦见与上司同行就是与麻烦同行。梦见上司生病，预示麻烦会没有。梦见上司来访，表示缺乏自信。'),
(31, '梦见同事', '梦见和工作伙伴商讨事情，暗示计画可能受到阻挠或是会停滞不前。梦见商讨或交涉成功的话，表示你现实生活中将遭遇困难'),
(32, '梦见小偷', '原版周公解梦内与小偷相关的内容：赶贼入市不出凶；强贼入宅主家破；与贼同行大吉利；赶贼行见者大吉。现代释梦：梦见小偷，暗示你最近情绪不太稳定，财运有起落。但是商人梦见小偷，预示生意兴隆。梦见自己成了小偷，预示有财运，钱财上会有意想不到的收获。梦见发现小偷偷东西，表示你可能正一步步制订某项计划，接近某个目标。另外，梦见小偷，还可能表示你有不正当的性行为。梦见自己和小偷同行，预示你将发财。梦见你是个小偷并被警察追赶，预示你进行的事业将陷入困境，你开展的社交关系也将陷入僵局。梦见你追赶或抓获一个小偷，意味着你将最终在较量中赢得对手的尊重。梦见自己认识的某个人成了小偷，则表示潜意识中你不信任那个人，虽然在生活中，你可能并未家常到这一点。梦见有小偷到自己家入室行窃，提醒你近期一定要小心谨慎，家里可能有会遇到祸事。梦见小偷入室窥视，环视屋内，表示你对性的好奇心很重，有偷窥欲。如果小偷没有发现你就离开了，表示你曾有一段不为人知的秘密性关系。如果小偷发现了你并攻击你，则暗示你最近有强烈的欲望。'),
(33, '梦见孤儿', '梦中的孤儿，是人性脆弱一面的代表，往往表示你内心孤独渴望被关爱。如果梦见自己变成了孤儿，这是提醒做梦人必须要摆脱内心的依赖，独立自主，自力更生。如果梦见自己在照顾孤儿，预示你可能会得到他人的帮助。如果梦里看见街边的流浪儿，意味着工作上会有困难。梦见慰问孤儿，预示他人的忧虑将触动你的同情心，并将最终促使你牺牲掉个人的享乐。梦见与你有关的孤儿，预示你的生活将增添新的责任，并将由此导致你与某个朋友或某个爱好相同的人之间产生疏远。'),
(34, '梦见妻子', '梦见拥抱妻子，是不祥之兆，会与妻子分居。梦见与妻子拌嘴，夫妻恩爱，生活幸福、美满。囚犯梦见与妻吵架，很快能见到妻子。梦见和妻分离，会更加宠爱妻子。梦见找了一位好吵闹的妻子，生活会幸福、舒适。梦见妻子疯了，寓意着妻子会把家安排得井井有条。梦见妻子十分疲乏，会与妻子分离。丈夫梦见妻子年青了许多，预示家庭幸福、美满。丈夫梦见援助妻子，夫妻生活会很幸福美满。梦见受到妻子的表扬，妻子会行为不轨，令人厌恶。'),
(35, '梦见和尚', '梦见僧人或和尚，吉兆，会有好运。梦见僧侣念经，是死亡的暗示。梦到自己出家，表示重生或疾病可好转。遇高僧说教，表示将开拓人生大道。梦见出家人的画，生活富裕安逸。梦见听和尚或僧人说教，自己的事业会走上正轨。'),
(36, '梦见军人', '梦见自己成为军人，预示梦者生活会出现新的转机。梦见别人成为军人，意味着梦者事业征途上一切井然有序。梦见军人在站岗，意味着梦者在未来的工作中需要提高警惕，防止小人捣乱。梦见军人休假，表示梦者已完全处于一种安全和谐的环境之中。女人梦见军人，表示潜意识内对婚姻的担忧。'),
(37, '梦见病人', '梦见自己成了病人，预示计划被延迟，或你会得到别人的帮助。梦见别人是病人，表示你会有机会寻求朋友、长辈的帮助。梦见家里有麻疯病病人来访，意味着将会有人登门拜访贵府，向你进行宣传。梦见自己成为精病患者，将跨过障碍和难关，生活越来越安定、富裕的征兆。梦见病人逐渐恢复健康，暗示梦者进行中的事情或计划的事情一帆顺的祥梦。梦见病人在歌唱，这是家里发生等不吉利的事情的征兆。梦见患上传染病的人吃后痊愈，这是将脱离某种组织或团体的意思。梦见精神病病人查看自己的，这是患病或诸事不顺的征兆。梦见病人出院回家，这是暗示梦者祈求一切安好，身体健康的梦。梦见去探望某个病人，梦中的病人即将获得痊愈的征兆。'),
(38, '梦见婴儿', '梦见婴儿，一方面，暗示了你自己内心中脆弱、渴望被爱的一面；另一方面，则预示你的自我发展，生活进展中将会转运，得到新机会和好运，之前的辛勤有回报等等。梦见漂亮可爱的婴儿，预示你会有好运气。梦见非常难看的婴儿，则象征可能会有信任的人捣鬼欺骗你。梦见自己抱起婴儿，象征着梦者将会有所收获，不久之后将会得到对于自己来说很重要的东西。梦见婴儿笑，象征着人际关系的良好，您能以诚待人，且身边会有很多。梦见婴儿长牙，象征着计划的顺利实施，您能得到贵人的帮助，不久之后就会有好消息。梦见婴儿说话，可能是在提醒您最近您会遇到麻烦，总有人从中做怪，也就是犯小人.梦见婴儿死亡的梦境，是不详之梦，表明自己计划和希望的破灭，您已经或者将要失去对自己来说很重要的东西。梦见婴儿哭，表示当前有些压抑的情绪，使得自己心烦意乱，这时候最好静下心来，不要主动出击，做事低调些。梦见婴儿哭，并且导致梦者心烦意乱，则预示将有不愉快的事情发生，也可能是你最近身体欠佳。梦见刚出生的孩子就开始直立行走，预示你的工作成绩，将得到赞誉好评。梦见生病的婴儿，表示你在工作或恋爱中可能会遭受挫折。如果梦见小孩丢失，则表示你现在遇到的麻烦或者担心，将会消除，心绪将重获安定，走上逐渐发展的正轨。梦见刚出生的婴儿在大小便，预示可能会遇到不吉利的事，也可能你信赖的人，会令你陷入尴尬境地。已婚但还没有孩子的人来说，梦见婴儿，有时则可能仅仅是表示心中想要孩子的愿望。初为父母的人，梦见婴儿要窒息或在危险中，通常表示了对孩子的强烈关心。孕妇梦见婴儿，则无象征意义。梦见自己的孩子出生，是将要怀孕，或发财、有丰厚进项的预兆。梦见有陌生人抚摩婴儿，暗示你近期运气不佳，会遇到倒霉事儿。'),
(39, '梦见姐姐', '男人梦见自己的姐姐，是祥兆，能长寿；女人梦见未婚的姐姐，额外开销会突然增多。女人梦见已婚的姐姐，会与丈夫家的一个女性发生争吵。梦见给姐姐礼物，侵吞公款，会破财。梦见与姐姐吵嘴，会越来越富。梦见去姐姐的家，贵客会登门。梦见与姐姐交谈，会有好消息。梦见姐姐去世，她会长寿。梦见死去的姐姐，会有好运气，家庭和睦。'),
(40, '梦见陌生人', '梦见陌生人或者不认识的人是一种好的暗示，如果你梦到从未见过的人的话，这暗示着在最近的将来，你将有恋爱的机会。(但是婴儿则例外)梦见陌生小男孩，或许会有一见钟情发生，但可惜的是和他似乎无法顺利发展。梦见陌生小女孩，会有你喜欢的人已有恋人的传言。但单纯为误传的可能性很高，所以请仔细去确认两者事实上的关系。梦见陌生年轻男孩，会有花花公子型的男孩接近你。但是如果你答应的话，将来可能会后悔。梦见陌生年轻女孩，似乎会在街上巧遇喜欢的男孩。外出时，请打扮得漂亮一点。梦见陌生男性中年，经由朋友的介绍，似乎会有发展成美丽恋情的机遇。梦见陌生女性中年，会得到自己所喜欢的男孩的消息。若能把握机会展开攻势的话，会有好结果产生。梦见陌生男性老年，似乎会得到从未和他讲过话、意想不到的男孩的青睐。梦见陌生女性老年，和不怎么样的男孩的关系，似乎会引起谣传。要控制自己容易招惹误会的言行举止。梦见请求陌生人原谅，预示将经历悲伤，遭受挫折。梦见陌生人表扬自己，寓意着会受到侮辱。梦见陌生人皱眉，预示你可能会结交新朋友。梦见躺在陌生人的床上，夫妻将要离婚。'),
(41, '梦见舅舅', '梦见舅舅，会受到人们的尊重。女孩梦见舅舅，会陷入困境。犯人梦见舅舅，很快会获得自由'),
(42, '梦见裁缝', '裁缝代表了辛勤劳作与生活转机，是好的预示，梦见裁缝通常表示前一段的时间的努力会有所回报或者有好事即将发生。男人梦见裁缝，预示将发财致富，事业会上个新台阶。女人梦见裁缝，预示娘家或夫家会有大办婚礼这样的喜事。梦见自己成了裁缝，预示收入增加，经济条件转好。梦见请裁缝做新衬衣，预示家里可能将举行婚礼。梦见把裁缝叫到家里，预示子女将独立，长大成人，成家立业。梦见和裁缝交朋友，预示家里会增加额外的开销。梦见自己和裁缝吵架，预示经济上可能会承担损失。梦见与裁缝发生误会，表示你将对某项计划的结果感到不满与失望。梦见裁缝给你量尺寸，预示你将会因某事与他人发生争吵，从而使你们的关系趋于紧张。'),
(43, '梦见双胞胎', '梦见双胞胎，反映做梦人互相对立的个性以及矛盾的心理；梦见双胞胎在打架，表示内心中有强烈对立的自我。梦见双胞胎一起快乐地玩耍，表示你的内心中，虽然有不同的自我，但不同自我之间相处都很和谐。梦中的双胞胎身体瘦弱，表示你将亲临失望和痛苦的第一线。梦见四胞胎，则预示你可能要承受困难，但依然充满希望。男子梦见双胞胎，通常表示经过思虑和内心的斗争后，成家立业，事业成功。商人梦见双胞胎，预示最终会财源广进。病人梦见双胞胎，预示身体正慢慢恢复健康。'),
(44, '梦见寡妇', '梦见寡妇，通常预示你会有损失或内心悲伤。女人梦见寡妇，暗示自己对目前的生活状况表示担忧，对未来没有信心。男人梦见寡妇，表现了对女性的渴望，同时又想得到一位独立自主的女性青睐，能在事业上帮助自己。男子梦见和寡妇交谈，要小心有人造谣中伤你。梦见自己给寡妇钱，或帮助寡妇，预示你会有好运气，或者得到意外的回报。梦见和寡妇吵架，预示你会倒霉。如果梦见了披麻戴孝的寡妇，则象征你自己心中对死亡的恐惧。'),
(45, '梦见警察', '警察是具有典型男性特征的形象，有权威、规范、良心的含义。梦见警察站着，是危险的兆头。梦见与警察吵架，要多加小心，预示你会有强盗或仇人威胁你。梦见挨警察的打，预示你可能会发生营私舞弊，贪污渎职的事情，造成严重损失。梦见自己当了警察，或是当侦探去调查案件，预示你在人际关系方面将遇到挫折，可能会受到别人的造谣中伤，名誉受损，或威信扫地，陷入困境，要细致冷静地应付。梦见自己穿着警服，会受到刑事案件的牵连梦见被警察追捕，表示你可能有有些想法和冲动，在内心深处感觉是道德准则或社会规范所反对的，会受到责备，因此感到不安。这个时候的警察是超我的象征，也就是良心的化身。也有可能表示你内心中一直压抑的，少年时代对生活中那个独裁专制的父亲的怨恨。梦见和警察交谈，暗示你会得到重视和提升。梦见接受警察的盘问或问讯，提醒你要提防自己的身体健康，你可能会患病。尤其要注意饮食，对食物中毒、痢疾、便秘等消化疾病更要格外当心。梦见向警察求助，预示你会安全幸福，克服困难。梦见自己被警察抓住，预示工作将取得显着成绩，或是学习成绩进步惊人，会受到领导、上司、老师的重视，令人刮目相看。梦见犯了罪被警察抓住，读书运最好的时刻。在全班的成绩普遍低的情况下，只有你一个人是九十分以上的好成绩，必能一鸣惊人。未婚男子梦见与警察争吵，会带着自己的情侣逃跑。男人梦见请求援助，作梦人会幸福安全。女人梦见求助于警察帮助，很快要出狱。女人梦见与警察交谈，丈夫的保镖会受伤。妻子梦见和警察谈话，可能表示丈夫将遇到危险。商人梦见和警察谈话，警告你要小心提防竞争对手。官员梦见和警察谈话，预示会得到政府和警察的尊重。囚犯梦见与警察谈话，很快会被释放。惯犯梦见警察抓人，多次作案，能发大财。'),
(46, '梦见哑巴', '梦见自己成为哑巴，不祥之兆，要提防小人。梦见自己突然变成哑巴，想要张嘴却说不出话来，暗示可能有小人中伤你，你却找不出原因，让你举步艰难。梦见自己成为哑巴然后又好了，预示着自己最终战胜小人。'),
(47, '梦见明星', '名歌星出现于梦中时，则暗示与朋友有口角之争，人际关系亦将有麻烦产生。要多留意朋友嫉妒、吃醋的心理。'),
(48, '梦见弓箭手', '梦中的弓箭手，是恋爱与婚姻的代表。梦见弓弩手/弓箭手，预示你即将找到生命中的另一半，要好好珍惜。已婚人士梦见弓箭手，预示你的婚姻幸福美满，将与你的伴侣携手走过人生。'),
(49, '梦见孕妇', '预示着梦者所进行的事情非常顺利，而且金钱上会有好的运气。 　　未婚女人梦见孕妇，预示难以出嫁，或出嫁后婚姻会出现问题，如争吵分歧等，让家庭不和。'),
(50, '梦见妓女', '梦见自己是妓女，预示你将因自己表现恶劣，让正直的朋友看不起你。年轻女子梦见妓女，预示她会欺骗她心爱的人，让其相信自己是纯洁的，坦诚的。对于已婚女人，此梦过后，她将开始怀疑丈夫，因此不断地争吵。梦见与妓女相殴，梦主得情助势，门户昌荣气象之兆。技艺之人争长夺色。老者梦此，主有虚症，不祥。梦见与妓女为夫妻，大吉，梦此者夫妻昌吉也。未配者主得技艺美色之妻。如素爱烟花之人，为与妓女合心。梦见与妓女相别，吉，此梦阴事之非远离之象。凡事得理，疾病脱身。其占为浪子回头，花凋蝶散。'),
(51, '梦见已故的祖父母', '梦见已故的祖父带着农具去种地，父亲或家里的其他人会调动工作岗位或搬家。梦见已故的祖父赶着一头母牛来到院里或将牛栓在牛棚，预示即将迎来儿媳、家庭主妇或妻子，或者得到意外的财物。梦见已故的祖父抚摸孙子，在现实中里的孙子会患病。梦见已故的祖父背着孙子或领到屋外，预示近期内孙子会死亡。梦见已故的祖父母欲向自己说什么话，这是预示有事情将发生，需要倍加小心。梦见已故的祖父母再世后准备带着自己外出，这是警告你有可能由于意外的事故或疾病而死亡，又或者面临严重的忧患。'),
(52, '梦见坏人', '梦见坏人预示者你似乎正向往着危险的恋爱。例如想抢夺朋友的男友，或是想和有妇之夫的他度过危险偷情的一夜等等。如果你已有男朋友的话，梦见坏人预示着是否浮动的心正开始萌芽。'),
(53, '梦见犯人', '梦见与犯人交谈，要遭厄运，要提高警惕，避免灾祸。梦见与犯人交朋友，暗示你可能会结交品行不良的朋友，给你造成严重损失。梦见与囚犯吵架，烦恼和灾祸会过去，将要过上称心如意的日子。梦见犯人逃走，病患即将好转。犯人梦见获得大赦或无罪释放，家里的房屋有危险'),
(54, '梦见帅哥', '梦见一帅哥被我打了，这是你潜意识的作用，在现实上，你可能比较在意这样的帅哥，有想接近的冲动，但你把这种冲动压抑在内心深处它，然后在梦中把压抑释放了出来，成一个暴力动作。梦中知道对方是个帅哥，但模模糊糊地看不清样子，好幸福的感觉。代表你的内心深处已经厌倦了你男朋友。哎！解铃还需系铃人，是因为你的男朋友和你太少的接触，所以你会在梦里面梦不到他。你们要是天天都在一起做一些有意义的事。做一些比较开心的事。我想你晚上也能梦到他的。女人若梦见帅哥的话一般意味着以后可能会被人追求或代表着你希望有人来爱你，真诚对待你。'),
(55, '梦见日本人', '梦见日本人，预示能从敌人的魔爪中逃跑出来。未婚者梦见日本人，预兆您的爱情可成功。但双方不可我行我素。待业者梦见日本人，说明您的财运不顺，需待时机。'),
(56, '梦见处女', '梦见处女，预示你的事业将会福星高照。已婚女人梦见自己仍是处女，表示她会对自己曾经做过的某些事情感到羞愧和后悔，但悔过的心并不会给她带来好运。一个年轻女子梦见自己已不再是处女，预示她与男性之间行为的不失检点会损及自己的名誉。男人梦见和一个处女保持不正当关系，预示他不管如何努力也将无法完成原定的某项计划，别人的行为倒会给他带来很多麻烦；或预示他的理想会由于合作缺乏保障而无法实现。'),
(57, '梦见老情人', '很多人都会梦到老情人，(即过去的男女朋友或自己曾爱慕的对象)首先说明你在心中还留有他的位置，不管这个位置是好是坏，至少他还占着一点分量。梦见老情人，表示一些消极的态度，和令你困扰的人际关系。梦见和对方关系很差，代表你的人际关系会转好，还有你和对方的关系有可能以另一种形式出现。梦见和对方关系很好、相处得很开心，是反映了你现在寂寞的心态。梦见和对方结婚，则代表你和他的关系已经划清界线，你是完全决绝的了。已有伴侣的朋友梦见老情人，往往显示梦者对身边伴侣有所不满，而伴侣无意作出迁就。梦者在现实生活中已有异心，但未找到可以取代伴侣的人，因而令脑海产生找寻旧档案的讯息。一些从前曾经爱慕而无结果的爱情，成为暂代品。但这却不足以表示你们即将分手，相反等你醒来好好考虑一下现实情况，会更加珍惜身边人，为对方做出改变。经常梦见老情人，这时就该检讨与爱侣的感情，若让情况持续，梦者一旦在现实生活遇到投缘的异性，多会不能自制，出现三角关系。梦见老情人再次伤害或背叛你，让你在梦中痛不欲生，这或许则是在提醒你，不要在感情上再犯相同的愚蠢错误，小心审视身边伴侣。单身的朋友梦见老情人，或许你真的觉得寂寞了，很想渴望爱情的到来。而在没有具体想象对象的时候，老情人就出现在梦中。这时候你就该好好调整下自己的状态，时刻准备着，抓住任何爱情的机会哦。'),
(58, '梦见第三者', '梦见第三者，吉兆，预示着爱情会很甜蜜。'),
(59, '梦见白马王子', '女人梦见白马王子，说明心里极度缺乏爱的感觉，有滥交的可能性。少女梦见白马王子，即将要交到男朋友，但一定不是自己称心如意或者能过一辈子的那种。未婚女子梦见白马王子，将和男朋友分手，婚姻大事将会无限期拖延。已婚女子梦见白马王子，家庭关系要出现危机，和丈夫将有离婚的危险，有外遇的可能性大于百分之六十。'),
(60, '梦见仇人', '梦见仇人，预示你将取得成就，困难将过去，未来会有好运，值得期待。梦见和仇人交朋友，预示你将结交很多新朋友，帮助你获得成功。梦见和仇人争吵，则预示你会遭受损失。梦见仇人难过，预示你会打赢官司，或是战胜敌手。梦见收到了仇人死亡的消息，预示你会有宽容又忠实可靠的朋友。商人梦见仇人，预示你能打败对手占领市场。商人梦见仇人攻击自己，预示生意上会遇到挫折。女人梦见丈夫的情妇，预示你将赢得丈夫。'),
(61, '梦见美女', '梦见与美貌女子交往，为破财之兆。 　　梦见跟一个陌生的同龄美女长成了好朋友，说明交朋友，希望自己的快乐苦恼能和别人分享和承担，可能现实中缺少这种朋友关系，有什么事情都是自己扛。'),
(62, '梦见喜欢的人', ''),
(63, '梦见外星人', '梦见外星人就在自己眼前，预示你有好运气，可能会有意想不到的收获。梦见外星人可能暗示着生活被某种外来因素所左右，或者对自己所处的环境还不太了解。'),
(64, '梦见毛主席', '梦见毛主席，朋友运好转。与朋友将有顺利的交往；与双亲和兄弟之间的关系也将非常好。梦见和毛主席握手，表示健康良好，将会变得越来越健康。二，三天连续熬夜看手也无所谓，加油吧!未婚的人梦见和毛主席握手，您的恋情性急则不成，耐心则成功。未婚男女梦见毛主席，您的恋情问题会有，但要主动去解决，好运才会来。老人梦见毛主席预示出远门，佳，可获得利益。生意人梦见毛主席，说明您的财运可聚财。求学者梦见和毛主席握手，说明考试成绩一般。病人梦见和毛主席握手，说明这段时间您的运气：外表美观而内在空虚，所以要先充实内在，才有好运气。要提防小人诽谤。'),
(65, '梦见陆军 ', '梦见整齐的陆军队列向你开来或立在原地，暗示你有勇往直前积极进取的精神，并会踏踏实实，稳步追求事业的发展。梦见壮观的陆军队列，或挺拔的陆军战士，有时也可能仅仅表示你对军人阳刚气质的向往，或是过去有过参军的愿望。男人梦见陆军，预示事业要大步向前，稳定发展。女人梦见陆军，预示生活舒适，生活质量稳步提高。'),
(66, '梦见风骚女子', '梦见看到一位风骚的女子，表示你有狡猾的敌人需要你去征服。梦见你杀死一名风骚女子，意味着你的欲望会实现。年轻女性梦见风骚女人，梦到她的行径快要比得上风骚女子的行径了，意味着她需要男人的保护。'),
(67, '梦见久未见面的人', '梦见久未见面的人时，寓意着此人将会很快归来。'),
(68, '梦见工人', '通常来说梦中的男建筑工人，有父亲的意味，充满力量，搭建遮风避雨的房屋。梦见有一个建筑工或维修工修理你的房子，预示你将反思出你生活中的问题，并对它加以解决。梦中的房子象征自我。梦见一个工人在疏通管道，预示你将解决情感积郁的问题。梦见技工，或技工面对着一堆拆零的零件，象征自己面对着生活中一摊乱麻般的局面，并为要理清头绪，解决现状，感到异常苦恼。梦见井下作业的矿工，则有可能暗示你正在探索自己幽暗的内心深处。梦见管道工，则表示你对内心精神或情感的摸索。孕妇梦见管道工，还有可能是妇道医生的形象在梦里的显现。'),
(69, '梦见厨师', '梦见厨师在准备宴会，喜庆的日子将要到来。梦见厨师教你烹调，在金钱方面有暗影出现。 这时很容在路上或公共汽车上遗失钱财，小心不要带太多的钱出门。'),
(70, '梦见陆军', '梦见整齐的陆军队列向你开来或立在原地，暗示你有勇往直前积极进取的精神，并会踏踏实实，稳步追求事业的发展。梦见壮观的陆军队列，或挺拔的陆军战士，有时也可能仅仅表示你对军人阳刚气质的向往，或是过去有过参军的愿望。男人梦见陆军，预示事业要大步向前，稳定发展。女人梦见陆军，预示生活舒适，生活质量稳步提高。'),
(71, '梦见烧香的人', '梦见烧香的人，表示你的感情已经成熟，你的另一半也很优秀，很受到肯定，在不久之后你们就能共结礼堂。'),
(72, '梦见神秘人', '梦中你看见很神秘的人，则意味着你的运气会变好或变坏，而这也要看个人的长相是不是好看或难看，有没有畸形而定。'),
(73, '梦见亿万富豪', '梦见成为亿万富豪，则近日营业将会损失惨重。'),
(74, '梦见跛子', '梦见跛子，在遇到困境时你不会知道求助于朋友。梦见自己成了跛子，会遇到难以克服的困难。梦见爬墙时摔跛了腿，会取得成功。'),
(75, '梦见虐待狂', '虐待狂象征着被误导的生命力，也暗示着清醒状态下的受虐天性。梦见自己变成虐待狂，人际上将出现大的问题，须学会自我反顾。梦见自己被虐待狂虐待，暗示着梦者在现实心里上渴望被虐待。'),
(76, '梦见贵人', '梦见贵人表示你能够出人头地的机会很大，未来有一番作为。梦见领袖，则表示心灵上得到安详;如果梦见领袖在行事，则会受到赏识。一般人梦见自己在贵人面前，表示将会出人头地;但若梦中与贵人为对等地位，则有忧事将至。'),
(77, '梦见窃贼', '梦见窃贼进入梦境，表示梦者经历着个人氛围的损害。产生的原因可能在外部，可是造成了愈来愈大的内心恐惧和困难的感觉。梦见窃贼在搜你的身，你将遇到强劲的竞争对手，在和陌生人交往时要万分小心，否则你将被对手打垮。梦见家或公司被人室盗窃。你在社会上和事业上的名望会受到质疑，但你直面困难的勇气将保护你。此梦后，可能由于疏忽而发生事故。'),
(78, '梦见赤裸的男人', '梦见赤裸的男人，将会感到忧愁和悲伤。梦到男人浑身赤裸，在清清的水中游泳，预示将有许多人爱(羡)慕她；如果水很浑浊，仰慕者将因为嫉妒而恶意造谣。'),
(79, '梦见两性人', '梦见两性人或雌雄同体的生物表示梦者对自己的性别角色存在疑问或者不满意。此外，如果梦者希望对本身有进一步的了解，他就必须努力在自己理性的一面和感性的一面作出平衡，而这种心理状态会在他的梦中以两性人的形式表现出来。梦中出现的两性人表示一种完全的平衡。'),
(80, '梦见嫂子', '经常梦见我嫂子，有可能和植物神经功能紊乱有关。建议注意休息，避免精神紧张，放松心情，药物方面可以给与谷维素片口服治疗。梦见跟嫂子发生关系，亲情缺乏和渴望的表现。梦见怀孕的嫂子遇难，梦中的死亡多与新生有关。你的嫂子和她的宝宝会平安无事，不久之后你将会听到宝宝出世的消息。'),
(81, '梦见工人', '通常来说梦中的男建筑工人，有父亲的意味，充满力量，搭建遮风避雨的房屋。梦见有一个建筑工或维修工修理你的房子，预示你将反思出你生活中的问题，并对它加以解决。梦中的房子象征自我。梦见一个工作在疏通管道，预示你将解决情感积郁的问题。梦见技工，或技工面对着一堆拆零的零件，象征自己面对着生活中一摊乱麻般的局面，并为要理清头绪，解决现状，感到异常苦恼。梦见井下作业的矿工，则有可能暗示你正在探索自己幽暗的内心深处。梦见管道工，则表示你对内心精神或情感的摸索。孕妇梦见管道工，还有可能是妇道医生的形象在梦里的显现。'),
(82, '梦见国王', '国王是统帅全国，为民排忧解难的形象。梦见国王，预示你将有机会面对富贵荣耀，但同时也意味着你会有忧愁烦闷，承担责任，为此你将奋力与现实博斗，并需要保持充足的自信心。梦见自己和国王对话，预示你勇于承担责任，不畏惧矛盾或痛苦，最终必将功成名就。'),
(83, '梦见老太太', '梦见个老太太送小孩给我，非孕妇的梦中可能表过潜意识中想要个孩子的愿望。梦见和老太太结婚，会得到遗产。'),
(84, '梦见皇帝', '梦中的皇帝，按照心理分析的观点，象征父权。通常来说，男人梦见如在电视剧中的情景一般，在金碧辉煌的房间里，看见黄袍加身的皇帝，预示会加官晋爵，发财兴旺。梦见被皇帝召见，对官场中人预示要升官。除此之外，做这个梦还可能预示工作中可能会遇到风波，尤其是要注意涉及大宗财务支出方面的事情。梦见被皇帝责罚，象征家业昌盛，人丁兴旺，子孙满堂。梦见与帝王对话、交谈，则暗示你凭借长辈指点或贵人相助，将走上荣身之路，梦想总有一天能够实现，将来定会功成名就。梦见自己是皇帝，则是在提醒你做事要多听各方面的意见，顾全大局，切忌独断专行。女人梦见皇帝，预示生活幸福，衣食无忧。商人梦见皇帝，预示财源广进，生意兴隆。'),
(85, '梦见陌生男人', '梦见男性老年 似乎会得到从未和他讲过话、意想不到的男孩的青睐。'),
(86, '梦见老伯伯', '梦见一位老伯伯变成小孩子，要小心提防，比你年长的人会陷害你。'),
(87, '梦见小人', '梦见小人，预示身边有人正隐瞒一些对于你很重要的事情，可能会有不顺利的事情发生。也意味着要调动工作，财源会旺盛。女性梦见小人预兆有机会旅行，一路平安，有友相伴。待业者梦见小人主钱财方面：佳，但防投资错误。老人梦见小人则您的运气平平，安守本份，可保平安，否则会招致坏运。'),
(88, '梦见木匠', '梦见木匠，寓意创造奇迹，生活美好。梦见和木匠吵架，是提示你某项预算花销太大，要开源节流。梦见木匠盖新房子，表示你会在政绩、学术或艺术领域等方面取得杰出成绩。梦见自己家请木匠做工，并且木匠手艺高超，做工精致，表示你是个很会享受生活的人，日子安逸舒适。梦见木匠在干木工活，预示你将从事正当诚实的劳动，排斥自私的消遣和娱乐活动，踏踏实实地改变自己的生活。男人梦见木匠，预示不久会收到好消息。女人梦见木匠，会成为精明能干的持家能手。'),
(89, '梦见故人', '梦见故人，孩子要成亲。梦见故人死亡，朋友运下降。因为你的竞争意识太强，所以让别人敬而远之。尤其在考试之后，这种现象特别明显，实在有反省的必要。梦见故人哭，服刑期间会做苦力待业者梦见故人哭主财运：初运佳，但防后运衰退。梦见故人借钱，人际关系方面运气上升的可能性很大。你与亲友的交情将更加深厚，有什么困难，都可以与之商量，对方一定可以替你分忧已婚者梦见故人借钱要出远门，最好不要立刻出发，等待好时机吧!梦见故人被追打，努力拼搏能赚钱。同时，在异性方面也会有所收获。将会有一次新的交际，相逢的地方是朋友家。但这次交往是否会发展成为恋爱，要看以后的进展情况。老人梦见故人则近期运势运程，运气不通，诸事不如意，避免与人发生纠纷，及家庭不和。老人梦见故人被追打则您的运势，万事如意。如果不谦虚，反而骄傲横行，则容易招到祸害。病人梦见故人死亡则近期运程，困难多，万事不如意。有小人加害，须小心谨慎。但不要悲观，要退一步想，以待好运来。未婚的人梦见故人哭预兆您的爱情：成功。待业者梦见故人被追打说明您的财运佳。未婚男女梦见故人被追打解释：最近爱情方面耐心则成功。'),
(90, '梦见小朋友', '梦见一位很可爱、趣致的小朋友，你会收到年终的奖金、双薪。');

-- --------------------------------------------------------

--
-- 表的结构 `tp_estate`
--

CREATE TABLE IF NOT EXISTS `tp_estate` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `matchtype` tinyint(11) NOT NULL COMMENT '关键词匹配模式：',
  `cover` varchar(200) NOT NULL COMMENT '图文消息封面',
  `panorama_id` int(11) NOT NULL,
  `classify_id` int(11) NOT NULL,
  `res_id` int(11) NOT NULL,
  `banner` varchar(200) NOT NULL,
  `video` varchar(200) DEFAULT NULL,
  `house_banner` varchar(200) NOT NULL,
  `place` varchar(80) NOT NULL DEFAULT '',
  `lng` varchar(15) NOT NULL,
  `lat` varchar(15) NOT NULL,
  `estate_desc` text NOT NULL,
  `project_brief` text NOT NULL,
  `traffic_desc` text NOT NULL,
  `path` varchar(3000) DEFAULT '0',
  `tpid` varchar(255) DEFAULT '36',
  `conttpid` int(11) DEFAULT NULL,
  `menu1` varchar(50) NOT NULL,
  `menu2` varchar(50) NOT NULL,
  `menu3` varchar(50) NOT NULL,
  `menu4` varchar(50) NOT NULL,
  `menu5` varchar(50) NOT NULL,
  `menu6` varchar(50) NOT NULL,
  `menu7` varchar(50) NOT NULL,
  `menu8` varchar(50) NOT NULL,
  `picurl1` varchar(500) NOT NULL,
  `picurl2` varchar(500) NOT NULL,
  `picurl3` varchar(500) NOT NULL,
  `picurl4` varchar(500) NOT NULL,
  `picurl5` varchar(500) NOT NULL,
  `picurl6` varchar(500) NOT NULL,
  `picurl7` varchar(500) NOT NULL,
  `picurl8` varchar(500) NOT NULL,
  `slide1` char(100) NOT NULL,
  `slide2` char(100) NOT NULL,
  `slide3` char(100) NOT NULL,
  `slide4` char(100) NOT NULL,
  `slide5` char(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `token_2` (`token`),
  FULLTEXT KEY `token` (`token`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `keyword` (`keyword`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_estate`
--

INSERT INTO `tp_estate` (`id`, `token`, `title`, `keyword`, `matchtype`, `cover`, `panorama_id`, `classify_id`, `res_id`, `banner`, `video`, `house_banner`, `place`, `lng`, `lat`, `estate_desc`, `project_brief`, `traffic_desc`, `path`, `tpid`, `conttpid`, `menu1`, `menu2`, `menu3`, `menu4`, `menu5`, `menu6`, `menu7`, `menu8`, `picurl1`, `picurl2`, `picurl3`, `picurl4`, `picurl5`, `picurl6`, `picurl7`, `picurl8`, `slide1`, `slide2`, `slide3`, `slide4`, `slide5`) VALUES
(1, 'mbeboo1416823194', '76767', '6767', 0, 'http://demo.weiqianlong.com/tpl/static/attachment/focus/default/../canyin/7.jpg', 0, 4, 0, 'http://demo.weiqianlong.com/tpl/static/attachment/focus/default/../canyin/1.jpg', '', 'http://demo.weiqianlong.com/tpl/static/attachment/focus/default/../canyin/4.jpg', '支持优酷视频地址', '56567', '56756', '7575', '5765', '675', '0', '36', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', './tpl/static/attachment/background/view/1.jpg', './tpl/static/attachment/background/view/2.jpg', './tpl/static/attachment/background/view/3.jpg', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_estate_album`
--

CREATE TABLE IF NOT EXISTS `tp_estate_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `poid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_estate_expert`
--

CREATE TABLE IF NOT EXISTS `tp_estate_expert` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `face` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_estate_housetype`
--

CREATE TABLE IF NOT EXISTS `tp_estate_housetype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `panorama_id` int(10) NOT NULL DEFAULT '0',
  `son_id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `floor_num` varchar(20) NOT NULL,
  `area` varchar(50) NOT NULL,
  `fang` int(11) NOT NULL,
  `ting` int(11) NOT NULL,
  `wei` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `abid` varchar(200) NOT NULL,
  `type1` varchar(200) NOT NULL,
  `type2` varchar(200) NOT NULL,
  `type3` varchar(200) NOT NULL,
  `type4` varchar(200) NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `panorama_id` (`panorama_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_estate_impress`
--

CREATE TABLE IF NOT EXISTS `tp_estate_impress` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `pid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` int(11) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `is_show` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_estate_impress_add`
--

CREATE TABLE IF NOT EXISTS `tp_estate_impress_add` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `imp_id` int(11) NOT NULL,
  `imp_user` char(20) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_estate_nav`
--

CREATE TABLE IF NOT EXISTS `tp_estate_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(35) NOT NULL,
  `pic` char(100) NOT NULL,
  `url` varchar(120) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `is_system` enum('0','1') NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `pid` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `tp_estate_nav`
--

INSERT INTO `tp_estate_nav` (`id`, `name`, `pic`, `url`, `is_show`, `is_system`, `sort`, `pid`, `token`) VALUES
(1, '楼盘首页', './tpl/User/default/common/images/photo/plugmenu6.png', '{siteUrl}/index.php?g=Wap&m=Estate&a=index&token=mbeboo1416823194&wecha_id={wecha_id}&id={id}', '1', '1', 100, 1, 'mbeboo1416823194'),
(2, '楼盘简介', './tpl/User/default/common/images/photo/plugmenu4.png', '{siteUrl}/index.php?g=Wap&m=Estate&a=introduce&token=mbeboo1416823194&wecha_id={wecha_id}&id={id}', '1', '1', 99, 1, 'mbeboo1416823194'),
(3, '楼盘相册', './tpl/User/default/common/images/photo/plugmenu7.png', '{siteUrl}/index.php?g=Wap&m=Estate&a=photo&token=mbeboo1416823194&wecha_id={wecha_id}&id={id}', '1', '1', 98, 1, 'mbeboo1416823194'),
(4, '户型全景', './tpl/User/default/common/images/photo/plugmenu17.png', '{siteUrl}/index.php?g=Wap&m=Estate&a=housetype&token=mbeboo1416823194&wecha_id={wecha_id}&id={id}', '1', '1', 97, 1, 'mbeboo1416823194'),
(5, '印象点评', './tpl/User/default/common/images/photo/plugmenu15.png', '{siteUrl}/index.php?g=Wap&m=Estate&a=impress&token=mbeboo1416823194&wecha_id={wecha_id}&id={id}', '1', '1', 96, 1, 'mbeboo1416823194'),
(6, '预约看房', './tpl/User/default/common/images/photo/plugmenu8.png', '{siteUrl}/index.php?g=Wap&m=Reservation&a=index&token=mbeboo1416823194&wecha_id={wecha_id}&id={id}&rid={rid}', '1', '1', 95, 1, 'mbeboo1416823194'),
(7, '关于我们', './tpl/User/default/common/images/photo/plugmenu19.png', '{siteUrl}/index.php?g=Wap&m=Estate&a=aboutus&token=mbeboo1416823194&wecha_id={wecha_id}&id={id}', '1', '1', 94, 1, 'mbeboo1416823194');

-- --------------------------------------------------------

--
-- 表的结构 `tp_estate_son`
--

CREATE TABLE IF NOT EXISTS `tp_estate_son` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_fangchan_reply`
--

CREATE TABLE IF NOT EXISTS `tp_fangchan_reply` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `info` varchar(500) DEFAULT NULL COMMENT '公司简介',
  `title` text NOT NULL,
  `tp` char(255) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_fanyan_reply`
--

CREATE TABLE IF NOT EXISTS `tp_fanyan_reply` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `info` varchar(500) DEFAULT NULL COMMENT '????',
  `title` text NOT NULL,
  `tp` char(255) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `scorename` text NOT NULL,
  `tip1` text NOT NULL,
  `tip2` text NOT NULL,
  `tip3` text NOT NULL,
  `tip4` text NOT NULL,
  `tip5` text NOT NULL,
  `tip6` text NOT NULL,
  `tip7` text NOT NULL,
  `tip8` text NOT NULL,
  `gz` varchar(500) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_fanyan_setcin`
--

CREATE TABLE IF NOT EXISTS `tp_fanyan_setcin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `info` text,
  `tel` varchar(11) DEFAULT NULL,
  `messages` text,
  `banner` varchar(100) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `lng` varchar(30) NOT NULL,
  `lat` varchar(30) NOT NULL,
  `picurl1` varchar(100) NOT NULL,
  `picurl2` varchar(100) NOT NULL,
  `picurl3` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_fenlei_flash`
--

CREATE TABLE IF NOT EXISTS `tp_fenlei_flash` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `picurl1` char(255) NOT NULL,
  `picurl2` char(255) NOT NULL,
  `picurl3` char(255) NOT NULL,
  `picurl4` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_fenlei_reply`
--

CREATE TABLE IF NOT EXISTS `tp_fenlei_reply` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `info` varchar(500) DEFAULT NULL COMMENT '公司简介',
  `title` text NOT NULL,
  `tp` char(255) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `tp_fenlei_reply`
--

INSERT INTO `tp_fenlei_reply` (`id`, `token`, `info`, `title`, `tp`, `copyright`) VALUES
(5, 'kpktkq1416817563', '微商盟', '微商盟', '微商盟', '微商盟');

-- --------------------------------------------------------

--
-- 表的结构 `tp_fenlei_setcin`
--

CREATE TABLE IF NOT EXISTS `tp_fenlei_setcin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `info` text,
  `tel` varchar(11) DEFAULT NULL,
  `messages` text,
  `banner` varchar(100) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `lng` varchar(30) NOT NULL,
  `lat` varchar(30) NOT NULL,
  `picurl1` varchar(100) NOT NULL,
  `picurl2` varchar(100) NOT NULL,
  `picurl3` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `tp_fenlei_setcin`
--

INSERT INTO `tp_fenlei_setcin` (`id`, `token`, `pid`, `name`, `info`, `tel`, `messages`, `banner`, `address`, `lng`, `lat`, `picurl1`, `picurl2`, `picurl3`) VALUES
(16, 'kpktkq1416817563', 16, '&lt;/TR&gt;ASDFASASD', '&lt;/TRASD&gt;', 'ASD', 'ASD', '', 'AS', '116.331398', '39.897445', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_files`
--

CREATE TABLE IF NOT EXISTS `tp_files` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `size` int(10) NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `tp_files`
--

INSERT INTO `tp_files` (`id`, `token`, `url`, `size`, `type`, `time`) VALUES
(1, 'ntauon1416894710', 'http://demo.weiqianlong.com/uploads/n/ntauon1416894710/1/5/c/c/thumb_54759ba6010c2.jpg', 38516, 'jpg', 1416993702),
(2, 'kpktkq1416817563', 'http://demo.weiqianlong.com/uploads/k/kpktkq1416817563/0/e/8/d/5475de823c930.png', 4474, 'png', 1417010818),
(3, 'mbeboo1416823194', 'http://demo.weiqianlong.com/uploads/m/mbeboo1416823194/f/e/0/d/547ab6fe05c05.jpg', 317182, 'jpg', 1417328382),
(4, 'mbeboo1416823194', 'http://demo.weiqianlong.com/uploads/m/mbeboo1416823194/4/8/d/9/547ab70708783.jpg', 420707, 'jpg', 1417328391),
(5, 'mbeboo1416823194', 'http://demo.weiqianlong.com/uploads/m/mbeboo1416823194/1/8/d/0/547ab70f31491.jpg', 398326, 'jpg', 1417328399),
(6, 'mbeboo1416823194', 'http://demo.weiqianlong.com/uploads/m/mbeboo1416823194/2/0/6/9/547ab71466699.jpg', 244263, 'jpg', 1417328404),
(7, 'mbeboo1416823194', 'http://demo.weiqianlong.com/uploads/m/mbeboo1416823194/f/0/9/5/thumb_547b0608833d0.png', 28762, 'png', 1417348616),
(8, 'htedog1417267111', 'http://demo.weiqianlong.com/uploads/h/htedog1417267111/0/c/6/c/thumb_547b0fe1adf2c.jpeg', 120250, 'jpeg', 1417351138),
(9, 'htedog1417267111', 'http://demo.weiqianlong.com/uploads/h/htedog1417267111/1/b/d/7/thumb_547b102071e77.jpeg', 108847, 'jpeg', 1417351200),
(10, 'admin', 'http://demo.weiqianlong.com/uploads/a/admin/9/c/7/0/thumb_547b406969cc2.jpg', 87801, 'jpg', 1417363561),
(11, 'kpktkq1416817563', 'http://demo.weiqianlong.com/uploads/k/kpktkq1416817563/4/f/8/a/thumb_547bec08c8312.png', 23131, 'png', 1417407496);

-- --------------------------------------------------------

--
-- 表的结构 `tp_flash`
--

CREATE TABLE IF NOT EXISTS `tp_flash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `img` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `info` varchar(90) NOT NULL,
  `tip` int(11) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT '0',
  `did` int(11) NOT NULL,
  `fid` int(11) NOT NULL DEFAULT '0' COMMENT '子分类ID',
  PRIMARY KEY (`id`),
  KEY `tip` (`tip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_forum_comment`
--

CREATE TABLE IF NOT EXISTS `tp_forum_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `content` varchar(3000) NOT NULL,
  `createtime` int(11) NOT NULL,
  `favourid` varchar(3000) DEFAULT NULL,
  `replyid` varchar(3000) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `token` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_forum_config`
--

CREATE TABLE IF NOT EXISTS `tp_forum_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bgurl` varchar(200) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `comcheck` varchar(4) NOT NULL DEFAULT '',
  `intro` varchar(600) NOT NULL DEFAULT '',
  `ischeck` tinyint(4) NOT NULL DEFAULT '0',
  `pv` float NOT NULL DEFAULT '0',
  `forumname` char(60) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `token` varchar(50) NOT NULL,
  `isopen` tinyint(4) DEFAULT '1',
  `notice_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_forum_message`
--

CREATE TABLE IF NOT EXISTS `tp_forum_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(3000) NOT NULL,
  `createtime` int(11) NOT NULL,
  `fromuid` varchar(50) NOT NULL,
  `touid` varchar(40) NOT NULL,
  `fromuname` varchar(60) DEFAULT NULL,
  `touname` varchar(60) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `isread` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_forum_topics`
--

CREATE TABLE IF NOT EXISTS `tp_forum_topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `content` varchar(1500) NOT NULL,
  `likeid` varchar(3000) DEFAULT NULL,
  `commentid` varchar(3000) DEFAULT NULL,
  `favourid` varchar(3000) DEFAULT NULL,
  `createtime` int(11) NOT NULL,
  `updatetime` int(11) DEFAULT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `photos` varchar(300) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_function`
--

CREATE TABLE IF NOT EXISTS `tp_function` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` tinyint(3) NOT NULL,
  `usenum` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `funname` varchar(100) NOT NULL,
  `info` varchar(100) NOT NULL,
  `isserve` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=112 ;

--
-- 转存表中的数据 `tp_function`
--

INSERT INTO `tp_function` (`id`, `gid`, `usenum`, `name`, `funname`, `info`, `isserve`, `status`) VALUES
(1, 1, 0, '天气查询', 'tianqi', '天气查询服务:例  城市名+天气', 1, 1),
(2, 1, 0, '糗事', 'qiushi', '糗事　直接发送糗事', 1, 1),
(3, 1, 0, '计算器', 'jishuan', '计算器使用方法　例：计算50-50　，计算100*100', 1, 1),
(4, 4, 0, '朗读', 'langdu', '朗读＋关键词　例：朗读pigcms多用户营销系统', 1, 1),
(5, 3, 0, '健康指数查询', 'jiankang', '健康指数查询　健康＋高，＋重　例：健康170,65', 1, 1),
(6, 1, 0, '快递查询', 'kuaidi', '快递＋快递名＋快递号　例：快递顺丰117215889174', 1, 1),
(7, 1, 0, '笑话', 'xiaohua', '笑话　直接发送笑话', 1, 1),
(8, 2, 0, '藏头诗', 'changtoushi', ' 藏头诗+关键词　例：藏头诗我爱你', 1, 1),
(9, 1, 0, '陪聊', 'peiliao', '聊天　直接输入聊天关键词即可', 1, 1),
(10, 1, 0, '聊天', 'liaotian', '聊天　直接输入聊天关键词即可', 1, 1),
(11, 3, 0, '周公解梦', 'mengjian', '周公解梦　梦见+关键词　例如:梦见父母', 1, 1),
(12, 2, 0, '语音翻译', 'yuyinfanyi', '翻译＋关键词 例：翻译你好', 1, 1),
(13, 2, 0, '火车查询', 'huoche', '火车查询　火车＋城市＋目的地　例火车上海南京', 1, 1),
(14, 2, 0, '公交查询', 'gongjiao', '公交＋城市＋公交编号　例：上海公交774', 1, 1),
(15, 2, 0, '身份证查询', 'shenfenzheng', '身份证＋号码　　例：身份证342423198803015568', 1, 1),
(16, 1, 0, '手机归属地查询', 'shouji', '手机归属地查询(吉凶 运势) 手机＋手机号码　例：手机13856017160', 1, 1),
(17, 3, 0, '音乐查询', 'yinle', '音乐＋音乐名  例：音乐爱你一万年', 1, 1),
(18, 1, 0, '附近周边信息查询', 'fujin', '附近周边信息查询(ＬＢＳ） 回复:附近+关键词  例:附近酒店', 1, 1),
(19, 4, 0, '公众小秘书', 'Paper', '公众小秘书', 2, 1),
(20, 3, 0, '淘宝店铺', 'taobao', '输入淘宝＋关键词　即可访问淘宝3g手机店铺', 2, 1),
(21, 4, 0, '会员资料管理', 'userinfo', '会员资料管理　输入会员　即可参与', 2, 1),
(22, 1, 0, '翻译', 'fanyi', '翻译＋关键词 例：翻译你好', 1, 1),
(23, 4, 0, '第三方接口', 'api', '第三方接口整合模块，请在管理平台下载接口文件并配置接口信息，', 1, 1),
(24, 1, 0, '姓名算命', 'suanming', '姓名算命 算命＋关键词　例：算命李白', 1, 1),
(25, 3, 0, '百度百科', 'baike', '百度百科　使用方法：百科＋关键词　例：百科北京', 2, 1),
(26, 2, 0, '彩票查询', 'caipiao', '回复内容:彩票+彩种即可查询彩票中奖信息,例：彩票双色球', 1, 1),
(27, 4, 0, '照片墙', 'Zhaopianwall', '活动开启后，在聊天窗口中直接发送图片，即可图片上墙！', 2, 1),
(28, 4, 0, 'RippleOS', 'RippleOS', 'RippleOS路由器', 1, 1),
(29, 1, 0, '3G首页', 'shouye', '输入首页,访问微3g 网站', 1, 1),
(30, 1, 0, 'DIY宣传页', 'adma', 'DIY宣传页,用于创建二维码宣传页权限开启', 1, 1),
(31, 4, 0, '会员卡', 'huiyuanka', '尊贵享受vip会员卡,回复会员卡即可领取会员卡', 1, 1),
(32, 4, 0, '微名片', 'Vcard', '微名片', 2, 1),
(33, 4, 0, '账号审核', 'usernameCheck', '正确的审核帐号方式是：审核+帐号', 2, 1),
(34, 1, 0, '歌词查询', 'geci', '歌词查询 回复歌词＋歌名即可查询一首歌曲的歌词,例：歌词醉清风', 1, 1),
(35, 2, 0, '域名whois查询', 'whois', '域名whois查询　回复域名＋域名 可查询网站备案信息,域名whois注册时间等等\r\n 例：域名pigcms.com', 1, 1),
(36, 1, 0, '通用预订系统', 'host_kev', '通用预订系统 可用于酒店预订，ktv订房，旅游预订等。', 2, 1),
(37, 4, 0, '自定义表单', 'diyform', '自定义表单(用于报名，预约,留言)等', 1, 1),
(38, 2, 0, '无线网络订餐', 'dx', '无线网络订餐', 1, 1),
(39, 2, 0, '在线商城', 'shop', '在线商城,购买系统', 1, 1),
(40, 2, 0, '在线团购系统', 'etuan', '在线团购系统', 1, 1),
(41, 4, 0, '自定义菜单', 'diymen_set', '自定义菜单,一键生成轻app', 1, 1),
(42, 4, 0, '幸运大转盘', 'choujiang', '输入抽奖　即可参加幸运大转盘抽奖活动', 2, 1),
(43, 4, 0, '抽奖', 'lottery', '抽奖,输入抽奖即可参加幸运大转盘', 1, 1),
(44, 4, 0, '刮刮卡', 'gua2', '刮刮卡抽奖活动', 1, 1),
(45, 4, 0, '全景', 'panorama', '', 1, 1),
(46, 4, 0, '婚庆喜帖', 'Wedding', '', 2, 1),
(47, 4, 0, '投票', 'Vote', '', 2, 1),
(48, 4, 0, '房产', 'estate', '', 2, 1),
(49, 4, 0, '3G相册', 'album', '', 1, 1),
(50, 4, 0, '砸金蛋', 'GoldenEgg', '', 2, 1),
(51, 4, 0, '水果机', 'LuckyFruit', '', 2, 1),
(52, 4, 0, '留言板', 'messageboard', '', 2, 1),
(53, 4, 0, '微汽车', 'car', '', 2, 1),
(54, 4, 0, '微信墙', 'wall', '', 1, 1),
(55, 4, 0, '摇一摇', 'shake', '', 1, 1),
(56, 4, 0, '微论坛', 'forum', '', 1, 1),
(57, 4, 0, '微医疗', 'medical', '', 1, 1),
(58, 4, 0, '群发消息', 'groupmessage', '', 1, 1),
(59, 4, 0, '分享统计', 'share', '', 1, 1),
(60, 4, 0, '酒店宾馆', 'hotel', '', 1, 1),
(61, 4, 0, '微教育', 'school', '', 1, 1),
(62, 4, 0, '微场景', 'Live', '', 2, 1),
(63, 1, 0, '微街景', 'Jiejing', '', 1, 1),
(64, 1, 0, '中秋吃月饼', 'Autumn', '', 1, 1),
(65, 1, 0, '摁死小情侣游戏', 'Lovers', '回复 “小情侣” 即可参加', 1, 1),
(66, 1, 0, '七夕走鹊桥', 'AppleGame', '回复 “走鹊桥” 即可参与', 1, 1),
(67, 1, 0, '微调研', 'Research', '', 1, 1),
(68, 1, 0, '一战到底', 'Problem', '', 1, 1),
(69, 1, 0, '微信签到', 'Signin', '', 1, 1),
(70, 1, 0, '现场活动', 'Scene', '', 1, 1),
(71, 1, 0, '微商圈', 'Market', '', 1, 1),
(72, 1, 0, '微预约', 'Custom', '', 1, 1),
(73, 1, 0, '祝福贺卡', 'Greeting_card', '', 1, 1),
(74, 1, 0, '微美容', 'beauty', '', 1, 1),
(75, 1, 0, '微健身', 'fitness', '', 1, 1),
(76, 1, 0, '微政务', 'gover', '', 1, 1),
(77, 1, 0, '微食品', 'food', '', 1, 1),
(78, 1, 0, '微旅游', 'travel', '', 1, 1),
(79, 1, 0, '微花店', 'flower', '', 1, 1),
(80, 1, 0, '微物业', 'property', '', 1, 1),
(81, 1, 0, '微KTV', 'ktv', '', 1, 1),
(82, 1, 0, '微酒吧', 'bar', '', 1, 1),
(83, 1, 0, '微装修', 'fitment', '', 1, 1),
(84, 1, 0, '微婚庆', 'buswedd', '', 1, 1),
(85, 1, 0, '微宠物', 'affections', '', 1, 1),
(86, 1, 0, '微家政', 'housekeeper', '', 1, 1),
(87, 1, 0, '微租赁', 'lease', '', 1, 1),
(88, 1, 0, '微游戏', 'Gamecenter', '', 1, 1),
(89, 1, 0, '百度直达号', 'Zhida', '', 1, 1),
(90, 1, 0, '微信红包', 'Red_packet', '', 1, 1),
(91, 1, 0, '惩罚台', 'Punish', '', 1, 1),
(92, 1, 0, '邀请函', 'Invite', '', 1, 1),
(93, 1, 0, '拆礼盒', 'Autumns', '', 1, 1),
(94, 1, 0, '活动报名', 'Baoming', '主题活动报名', 1, 1),
(95, 1, 0, '微众场景', 'Scenes', '', 1, 1),
(96, 1, 0, '微商盟', 'Fenlei', '微商盟', 1, 1),
(97, 1, 0, '极客答题', 'Jikedati', '', 1, 1),
(98, 1, 0, '微招聘', 'Zhaopin', '', 1, 1),
(99, 1, 0, '微房产', 'Fangchan', '', 1, 1),
(100, 1, 0, '欢乐摇奖', 'Shakeprize', '', 1, 1),
(101, 1, 0, '转发有礼', 'Hforward', '', 1, 1),
(102, 1, 0, '分享达人', 'Sharetalent', '', 1, 1),
(103, 1, 0, '群发消息', 'Message', '', 1, 1),
(104, 1, 0, '高级模版', 'AdvanceTpl', '', 1, 1),
(105, 1, 0, '卡娃贺卡', 'Hcar', '', 1, 1),
(106, 1, 0, '微秀贺卡', 'Knwx', '', 1, 1),
(107, 1, 0, '微竞猜', 'Jingcai', '', 1, 1),
(108, 1, 0, '邮件提醒', 'Wzqemail', '', 1, 1),
(109, 1, 0, '第三方客服', 'Kefu', '第三方客服，接入美洽、百度商桥等', 1, 1),
(110, 1, 0, '分享助力', 'Helping', '', 1, 1),
(111, 1, 0, '人气冲榜', 'Popularity', '', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_funintro`
--

CREATE TABLE IF NOT EXISTS `tp_funintro` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL DEFAULT '',
  `isnew` tinyint(1) NOT NULL DEFAULT '0',
  `logo` varchar(200) NOT NULL DEFAULT '',
  `type` smallint(4) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=114 ;

--
-- 转存表中的数据 `tp_funintro`
--

INSERT INTO `tp_funintro` (`id`, `title`, `isnew`, `logo`, `type`, `content`, `time`) VALUES
(2, '天气查询', 0, '', 0, '<span class="marginb">\n<p>\n输入城市+天气，可以马上得到近五天的气情况，出行无忧。\n</p>\n<p>\n例如：上海天气\n</p>\n</span><img alt=""src="/tpl/Home/pigcms/common/images/demo/gn001.jpg"/>', 0),
(3, '快递查询', 0, '', 0, '<span class="marginb">\n<p>\n输入快递名称+运单号，可以快速查询快递的详细动态，收件从此不用愁。\n</p>\n<p>\n例如：天天快递130004442691\n</p>\n</span><img alt=""src="/tpl/Home/pigcms/common/images/demo/gn002.jpg"/>', 0),
(4, '手机归属地查询', 0, '', 0, '<span class="marginb">\n<p>\n输入手机号码即可获得该手机相关信息，有手机归属地，手机类型，手机区号，邮编等。\n</p>\n<p>\n例如：13625008699\n</p>\n</span><img alt=""src="/tpl/Home/pigcms/common/images/demo/gn003.jpg"/>', 0),
(5, '身份证查询', 0, '', 0, '<span class="marginb">\n<p>\n输入身份证号即可获得相关信息。\n</p>\n<p>\n例如：342502198501250013\n</p>\n</span><img alt=""src="/tpl/Home/pigcms/common/images/demo/gn004.jpg"/>', 0),
(6, '公交查询', 0, '', 0, '<span class="marginb">\n<p>\n输入城市+公交+车次，有3.6万线路\n</p>\n<p>\n例如线路查询：厦门公交92路\n</p>\n<p>\n站点到站点查询：厦门公交厦大医院到软件园二期\n</p>\n<p>\n站点查询：厦门公交厦大医院站\n</p>\n</span><img alt=""src="/tpl/Home/pigcms/common/images/demo/gn005.jpg"/>', 0),
(7, '火车查询', 0, '', 0, '<span class="marginb">\n<p>\n输入：火车 车次 或 火车 站点 站点，有4460列火车数据。\n</p>\n<p>\n例如车次查询：火车k332\n</p>\n<p>\n站点到站点查询：火车 厦门 东乡\n</p>\n</span><img alt=""src="/tpl/Home/pigcms/common/images/demo/gn006-2.jpg"/>', 0),
(8, '健康指数查询', 0, '', 0, '<span class="marginb">\n<p>\n身高单位为cm 体重单位为公斤\n</p>\n<p>\n输入：身高173 体重56 或输入：高173 重56\n</p>\n</span><img alt=""src="/tpl/Home/pigcms/common/images/demo/gn007.jpg"/>', 0),
(9, '实时翻译(语音)', 0, '', 0, '<span class="marginb">\n<p>\n支持几十种语言的实时翻译，中、英、日、韩、法、俄、等等全文翻译。\n</p>\n<p>\n输入翻译，可以查询支持的语种有哪些。\n</p>\n<p>\n英文我爱你：表示把中文翻译成英文，日语早上好：表示把中文翻译成日文\n</p>\n<p>\n法语我爱你：表示把中文翻译成法语，俄语我爱你：表示把中文翻译成俄语\n</p>\n<p>\n备注：如果后台开启翻译朗读功能，可以将翻译结果直接朗读出来，\n</p>\n<p>\n学习世界语言的必备武器！更有意思！\n</p>\n</span><img alt=""src="/tpl/Home/pigcms/common/images/demo/gn008.jpg"/><img alt=""src="/tpl/Home/pigcms/common/images/demo/gn008-2.jpg"/>', 0),
(10, '百度百科', 0, '', 0, '<span class="marginb">\n<p>\n输入百科（bk）+要查询的词，即可得到相关信息。\n</p>\n<p>\n例如：百科刘德华 或 bk刘德华\n</p>\n</span><img alt=""src="/tpl/Home/pigcms/common/images/demo/gn009.jpg"/><img alt=""src="/tpl/Home/pigcms/common/images/demo/gn009-2.jpg"/>', 0),
(11, '百度问答', 0, '', 0, '<span class="marginb">\n<p>\n输入超过5个汉字自动回复相关问答内容。\n</p>\n<p>\n例如：要怎么哄女人开心\n</p>\n</span><img alt=""src="/tpl/Home/pigcms/common/images/demo/gn010.jpg"/><img alt=""src="/tpl/Home/pigcms/common/images/demo/gn010-2.jpg"/>', 0),
(12, '人品计算', 0, '', 0, '<span class="marginb">\n<p>\n输入人品+姓名，计算当天人品。\n</p>\n<p>\n例如：李白人品\n</p>\n</span><img alt=""src="/tpl/Home/pigcms/common/images/demo/gn011.jpg"/>', 0),
(13, '笑话', 0, '', 0, '<span class="marginb">\n<p>\n输入任何数字：0-9或者笑话或者笑脸的表情\n</p>\n<p>\n可以随机查看笑话，有2.6万数据。\n</p>\n</span><img alt=""src="/tpl/Home/pigcms/common/images/demo/gn012.jpg"/><img alt=""src="/tpl/Home/pigcms/common/images/demo/gn012-2.jpg"/>', 0),
(14, '糗事', 0, '', 0, '<span class="marginb">\n<p>\n输入糗事或者任意字母，可以随机查看糗事，有51.5万数据。\n</p>\n<p>\n例如：糗事 或者 q\n</p>\n</span><img alt=""src="/tpl/Home/pigcms/common/images/demo/gn013.jpg"/><img alt=""src="/tpl/Home/pigcms/common/images/demo/gn013-2.jpg"/>', 0),
(15, '谜语', 0, '', 0, '<span class="marginb">\n<p>\n输入谜语，即可玩猜谜语游戏，有5万数据。\n</p>\n<p>\n查答案可输入答案谜语编号，例如：谜语 232\n</p>\n</span><img alt=""src="/tpl/Home/pigcms/common/images/demo/gn014.jpg"/>', 0),
(16, '解梦', 0, '', 0, '<span class="marginb">\n<p>\n	输入梦见发财或者梦到发财，立刻获得解梦信息。\n</p>\n<p>\n	例如：梦见我发财了\n</p>\n</span><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn015.jpg" /><br />', 0),
(17, '成语接龙', 0, '', 0, '<span class="marginb">\n<p>\n	输入正确的成语即可\n</p>\n<p>\n	例如：肝肠寸断\n</p>\n</span><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn016.jpg" />', 0),
(18, '成语字典', 0, '', 0, '<span class="marginb">\n<p>\n	输入例如：成语 半死不活，得到该成语的解释。\n</p>\n</span><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn017.jpg" />', 0),
(19, '陪聊', 0, '', 0, '<span class="marginb">\n<p>\n	开启陪聊功能可以自动跟用户智能聊天\n</p>\n<p>\n	目前仅1000条陪聊库，在不断完善中...\n</p>\n</span><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn018.jpg" />', 0),
(20, '机器人学习功能', 0, '', 0, '<span class="marginb">\n<p>\n	用手机直接发送：问 关键词 答 内容，这样教机器人回答问题，机器人就学会了。\n</p>\n<p>\n	例如：问 你是谁 答 我是欧阳啊！\n</p>\n</span><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn019.jpg" />', 0),
(21, '自定义图文回复', 0, '', 0, '<span class="marginb">\n<p>\n	在pigcms微信后台设置关键词，编辑对应的回复内容，以图文形式显示。\n</p>\n<p>\n	还有关联的图文展示，推荐阅读。\n</p>\n<p>\n	效果更好，用户体验更佳。\n</p>\n</span><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn020.jpg" /><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn020-2.jpg" />', 0),
(22, '藏头藏尾诗', 0, '', 0, '<span class="marginb">\n<p>\n	输入：藏头诗 我爱你香港 或者 cts 我爱你香港 或者\n</p>\n<p>\n	藏尾诗 我爱你香港 或者 cws 我爱你香港\n</p>\n<p>\n	会根据输入的内容自动生成藏头诗或者藏尾诗，非常有意思。\n</p>\n<p>\n	例如：cts 我爱你香港 或者 cws 我爱你香港\n</p>\n</span><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn021.jpg" />', 0),
(23, '诗歌接龙', 0, '', 0, '<span class="marginb">\n<p>\n	输入诗词的任意一句，会自动回复下一句。\n</p>\n<p>\n	例如：床前明月光\n</p>\n</span><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn022.jpg" />', 0),
(24, '诗歌赏析', 0, '', 0, '<span class="marginb">\n<p>\n	输入：古诗+诗名或者古诗+诗名+作者，可以欣赏这首完整的诗歌。\n</p>\n<p>\n	例如：古诗 黄鹤楼\n</p>\n</span><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn023.jpg" />', 0),
(25, '网络音乐搜索', 0, '', 0, '<span class="marginb">\n<p>\n	输入：音乐+歌手+歌名 或者 音乐+歌名 可以欣赏这首歌曲。\n</p>\n<p>\n	例如：音乐 谢霆锋谢谢你的爱\n</p>\n<p>\n	还可以输入：播放音乐|来首歌|来首音乐|放歌|音乐|mp3|点首歌|点歌|我要听歌\n</p>\n<p>\n	来随机播放音乐\n</p>\n<p>\n	还可以输入：陈奕迅的歌或者播放浮夸\n</p>\n</span><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn024.jpg" /><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn024-2.jpg" />', 0),
(26, '网络电影搜索', 0, '', 0, '<span class="marginb">\n<p>\n	输入：电影+名称 可以欣赏这部电影了，当然有的电影是搜不到的，电影库会慢慢增加。\n</p>\n<p>\n	例如：电影 功夫熊猫\n</p>\n</span><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn025.jpg" />', 0),
(27, '文字转语音', 0, '', 0, '<span class="marginb">\n<p>\n	输入：朗读+文字，就可以把文字转成语音播放。\n</p>\n<p>\n	例如：朗读你好，pigcms欢迎你！\n</p>\n</span><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn026.jpg" />', 0),
(28, '股票查询', 0, '', 0, '<span class="marginb">\n<p>\n	输入：股票+股票代号或名称或拼音缩写，股票二字可以用gp缩写\n</p>\n<p>\n	例如：股票601088 或者 股票西藏天路 或者 股票dqtl 或者 gp601088\n</p>\n</span><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn027.jpg" />', 0),
(29, '彩票查询', 0, '', 0, '<span class="marginb">\n<p>\n	输入彩票+名称\n</p>\n<p>\n	可以查询彩票有：双色球、大乐透、七星彩、排列3、排列5、体彩22选5、胜负彩14场、任选9场、4场进球、6场半全场、老11选5、11选5、新11选5、双色球\n</p>\n<p>\n	例如：彩票双色球\n</p>\n</span><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn028.jpg" /><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn028-2.jpg" />', 0),
(30, '文字转语音', 0, '', 0, '<span class="marginb">\n<p>\n	开启此功能，聊天内容出现敏感词时会自动转成语音，\n</p>\n<p>\n	你也可以输入朗读+文字，例如：朗读你好呀\n</p>\n</span><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn031.jpg" />', 0),
(31, '周边商铺', 0, '', 0, '<span class="marginb">\n<p>\n	开启此功能，直接发送地理位置信息，然后输入“附近便利店”\n</p>\n</span><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn033.jpg" /><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn033-2.jpg" />', 0),
(32, '.刮刮卡', 0, '', 0, '<span class="marginb">\n<p>\n	开启此功能，直接发布刮刮卡刮奖活动，设置活动内容、奖项及中将比例，带给粉丝完全不同的感受。\n</p>\n<p>\n	输入“刮刮卡”体验此互动活动\n</p>\n</span><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn034.jpg" /><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn034-2.jpg" />', 0),
(33, '幸运大转盘活动', 0, '', 0, '<span class="marginb">\n<p>\n	开启此功能，直接发布幸运大转盘活动，设置活动内容、奖项及中将比例，带给粉丝完全不同的感受。\n</p>\n<p>\n	输入"大转盘"体验此互动活动\n</p>\n</span><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn035.jpg" /><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn035-2.jpg" />', 0),
(34, '优惠券活动', 0, '', 0, '<span class="marginb">\n<p>\n	开启此功能，直接发布优惠券活动，设置活动内容、奖项等，带给粉丝完全不同的感受。\n</p>\n<p>\n	输入"优惠券"体验此互动活动\n</p>\n</span><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn036.jpg" /><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn036-2.jpg" />', 0),
(35, '周边生活地图版', 0, '', 0, '<span class="marginb">\n<p>\n	开启此功能，首先要发送地理位置信息，然后输入附近+关键词即可,\n</p>\n<p>\n	例如 附近酒吧,附近学校,附近工商银行,附近医院,附近小吃,附近美食,附近酒吧,附近咖啡厅,附近公交站,附近加油站.......\n</p>\n</span><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn037.jpg" /><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn037-2.jpg" />', 0),
(36, '步行导航', 0, '', 0, '<span class="marginb">\n<p>\n	微信中输入“地图”会自动回复配置的商家地理信息，如果您选择步行，可以获取步行路书和地图导航。\n</p>\n<p>\n	<img alt="" src="/tpl/Home/pigcms/common/images/demo/buxing.jpg" />\n</p>\n</span>', 0),
(37, '驾车导航', 0, '', 0, '<span class="marginb">\n<p>\n	微信中输入“地图”会自动回复配置的商家地理信息，如果您选择开车，可以获取驾车路书和地图导航。\n</p>\n<p>\n	<img alt="" src="/tpl/Home/pigcms/common/images/demo/kaiche.jpg" />\n</p>\n</span>', 0),
(38, '发位置显示周边', 0, '', 0, '<span class="marginb"> \n<p>\n	开启此开关,将不会提示地理位置已经记录，而是直接显示周边数据，不影响关键词。\n</p>\n<p>\n	查询可以通过：附近+关键词，获取附近更精细的分类查询！\n</p>\n<p>\n	例如：附近便利店 附近医院 附近美食 附近小吃 等等\n</p>\n</span><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn041.jpg" /><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn041-2.jpg" />', 0),
(39, '公交地图版', 0, '', 0, '<span class="marginb"> \n<p>\n	开启此开关,可以查询公交某个站点到某个站点如何坐车，只能查你当前位置所在城市的公交等\n</p>\n<p>\n	例如：公交龙山桥到SM 或者 厦大西村到中山路怎么坐车\n</p>\n</span><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn042.jpg" /><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn042-2.jpg" /><img alt="" src="/tpl/Home/pigcms/common/images/demo/gn042-3.jpg" />', 0),
(40, '自定义LBS数据', 0, '', 0, '<span class="marginb">\n<p>\n	微信中输入“地图”会自动回复商家的地理信息，并且可以获取最近的分店，以及获取各种交通方式导航。\n</p>\n<p>\n	<img alt="" src="/tpl/Home/pigcms/common/images/demo/lbs.jpg" />\n</p>\n</span>', 0),
(41, 'DIY宣传页', 0, '', 0, '<span class="marginb">\n<p>\n	只需要填写二维码地址，简单介绍你公众号的特点，就可以自动生成一个漂亮的PC推广也没，方便你分享给好友，分享到微博，论坛，博客等等，起到好的推广的作用。\n</p>\n</span><img alt="" src="/tpl/Home/pigcms/common/images/demo/diy.gif" width="99%" />', 0),
(42, '相册功能', 0, '', 0, '<span class="marginb">\n<p>\n	开启此功能,只需要设置相册名称，相册封面图及上传图片，就可以得到一个精美的相册网站。\n									非常适合婚纱行业、汽车行业或者需要展示产品图片的商家。\n									下面是效果图及简单的操作说明。\n</p>\n</span><img alt="" src="/tpl/Home/pigcms/common/images/demo/3gphoto.jpg" width="99%" />', 0),
(43, '会员卡管理', 0, '', 0, '<span class="marginb">\n<p>\n	强的会员卡功能，包含8大模块，diy设计会员卡，各版本设计，会员卡资料管理，在线自定义卡号，积分签到，消费积分，等强的大的功能。\n</p>\n</span><img alt="" src="/tpl/Home/pigcms/common/images/demo/member1.gif" width="98%" /><img alt="" src="/tpl/Home/pigcms/common/images/demo/cart1.gif" width="98%" /><img alt="" src="/tpl/Home/pigcms/common/images/demo/cart2.gif" width="98%" />', 0),
(44, '会员卡管理', 0, '', 0, '<span class="marginb">\n<p>\n	开启此功能,可以设置酒店预订，KTV预订等，设置手机后，还可以收到订单提醒。\n</p>\n</span><img alt="" src="/tpl/Home/pigcms/common/images/demo/host_ktv.gif" width="98%" />', 0),
(45, '无线点餐订餐', 0, '', 0, '<span class="marginb">\n<p>\n	微信中输入“订餐”会自动回复订餐功能，可以预定座位包厢、也可以在线点餐或叫外卖，<br />\n网友提交订单后，商家无线打印机会自动打印出订单信息。\n</p>\n<p>\n	<img alt="" src="/tpl/Home/pigcms/common/images/demo/dc.jpg" />\n</p>\n</span>', 0),
(46, '微团购', 0, '', 0, '<span class="marginb">\n<p>\n	微信中输入“团购”会自动回复团购功能，可以设定团购截止日期，初始出售数量，并显示截止日期倒计时。\n</p>\n<p>\n	<img alt="" src="/tpl/Home/pigcms/common/images/demo/tuangou.jpg" />\n</p>\n</span>', 0),
(47, '微商城', 0, '', 0, '<span class="marginb">\n<p>\n	微信中输入“商城”会自动回复，可以设置商品分类，支持商品搜索，多种属性排序，多商品购物车结算，瀑布流展示。\n</p>\n<p>\n	<img alt="" src="/tpl/Home/pigcms/common/images/demo/shangcheng.jpg" />\n</p>\n</span>', 0),
(48, '万能表单', 0, '', 0, '<span class="marginb">\n<p>\n	微信中输入自定义的万能表单的关键词会自动回复相应表单，可以利用该功能自由定制各类表单信息，如下图所示。\n</p>\n<p>\n	<img alt="" src="/tpl/Home/pigcms/common/images/demo/wnbd.jpg" />\n</p>\n</span>', 0),
(49, '微网站(3G网站)', 0, '', 0, '<span class="marginb">\n<p>\n	小猪开发团队10.1假期全体加班，加点所完成，\n</p>\n<p>\n	<img src="/tpl/Home/pigcms/common/images/demo/tpl.gif" width="930" />\n</p>\n</span>', 0),
(50, 'crm客户关系管理', 0, '', 0, '<span class="marginb">分组管理接口\n									获取用户基本信息\n									获取关注者列表\n									获取用户地理位置\n									网页授权获取用户基本信息\n									网页获取用户网络状态</span>', 0),
(51, '智能语音识别接口', 0, '', 0, '把用户输入的语音识别成文字并进行自动回复', 0),
(52, '主动信息推送', 0, '', 0, '认证服务号主动发送信息给粉丝', 0),
(53, '360°全景', 0, '', 0, '<span class="marginb"> \n<p>\n	通过该功能可以实现三维立体360°全景看车看房，也可以作为其他产品的三维立体展示。\n</p>\n<p>\n	<img alt="" src="/tpl/Home/pigcms/common/images/demo/360.jpg" /> \n</p>\n</span>', 0),
(54, '支付宝在线支付', 0, '', 0, '<span class="marginb">\n<p>\n	通过支付宝在线支付接口可以实现微商城的在线支付功能。\n</p>\n<p>\n	<img alt="" src="/tpl/Home/pigcms/common/images/demo/alipay.jpg" />\n</p>\n</span>', 0),
(55, '婚庆喜帖', 0, '', 0, '<span class="marginb">\n<p>\n	婚庆行业的微信营销解决方案，可以展现用户想要表达的话、结婚日期、地址、导航、接待电话，同时亲朋好友可以在微喜帖平台上提交赴宴通知、送上祝福，并且转发喜帖。\n</p>\n<p>\n	<img alt="" src="/tpl/Home/pigcms/common/images/demo/wedding.jpg" />\n</p>\n</span>', 0),
(56, '留言板', 0, '', 0, '<span class="marginb">\n<p>\n	微信留言板功能，能控制留言是否需要审核，留言间隔时间等。\n</p>\n<p>\n	<img alt="" src="/tpl/Home/pigcms/common/images/demo/ly.png" />\n</p>\n</span>', 0),
(57, '房地产行业应用', 0, '', 0, '<span class="marginb">\n<p>\n	针对房地产行业微信营销的应用，包括楼盘介绍，360°全景看房，户型介绍，专家点评，预约看房等功能。\n</p>\n<p>\n	<img alt="" src="/tpl/Home/pigcms/common/images/demo/fc.png" />\n</p>\n</span>', 0),
(58, '财付通支付', 0, '', 0, '支持财付通即时到帐接口和wap接口，微信团购、商城、订餐、宾馆的支付都可以使用', 0),
(59, '微信支付', 0, '', 0, '认证服务号可以使用微信支付，微信团购、商城、订餐、宾馆的支付都可以使用', 0),
(60, '系统功能库', 0, '', 0, '<p>\n	微网站的分类、幻灯片、文章等做外链的时候可以从系统功能库中选择任何功能作为链接，这个功能是融通整个系统的关键，也是小猪CMS的原创功能。\n</p>\n<p>\n	在设置自定义菜单关键词测时候也可以从功能库进行选择。\n</p>', 0),
(61, '生活服务外链', 0, '', 0, '系统提供外链库，涵盖常用生活服务、星座、小游戏、便民生活等，让商户作为网站的时候可以自由选择工具性链接', 0),
(62, '连锁商家管理', 0, '', 0, '会员卡功能、餐饮行业模块、酒店行业模块等都拥有连锁店功能，每个连锁店可以管理自己的信息订单，每个连锁店都有自己的独立后台', 0),
(63, '微网站无限级分类', 0, '', 0, '新版的系统支持无限级分类，这种结构特别有利于旅游、生活服务类微网站的制作', 0),
(64, '分类独立选择模板', 0, '', 0, '微网站的每个分类都可以独立选择列表页模板和文章页模板，这种功能让微网站的制作更灵活', 0),
(65, '底部导航菜单', 0, '', 0, '突破自定义菜单限制，微网站中可以设计底部导航菜单，共有15种导航菜单供选择', 0),
(66, '自定义菜单', 0, '', 0, '在系统后台便可以设定自定义菜单，在添加菜单的时候可以自由选择系统内设定的关键词，简单易用。', 0),
(67, '微论坛', 0, '', 0, '微信论坛，粉丝作为论坛的直接参与者进行话题讨论', 0),
(68, '微投票', 0, '', 0, '支持文字类和图片类投票，选项可以自定义，可以单选可以多选', 0),
(69, '微汽车', 0, '', 0, '汽车微信行业应用，包括品牌、车系车型管理，销售管理，保养预约，4s店业务等', 0),
(70, '微教育', 0, '', 0, '教育行业应用', 0),
(71, '微医疗', 0, '', 0, '医疗行业微信应用，包括医院各项业务介绍，挂号预约等功能', 0),
(72, '酒店宾馆', 0, '', 0, '酒店宾馆行业微信应用，包括在线订房，在线支付，连锁店管理，酒店全景等功能。', 0),
(73, '通用订单（KTV酒吧）', 0, '', 0, '比如ktv和酒吧类似行业的订单应用，比如ktv包厢的预定，订单管理等功能', 0),
(74, '微美容', 0, '', 0, '美容行业应用', 0),
(75, '微政务', 0, '', 0, '政府行业应用', 0),
(76, '微健身', 0, '', 0, '健身行业应用', 0),
(77, '微食品', 0, '', 0, '食品行业应用', 0),
(78, '微旅游', 0, '', 0, '旅游行业应用', 0),
(79, '微花店', 0, '', 0, '花店行业应用', 0),
(80, '微物业', 0, '', 0, '物业管理微信应用', 0),
(81, '微KTV', 0, '', 0, 'ktv行业应用', 0),
(82, '微酒吧', 0, '', 0, '酒吧行业应用', 0),
(83, '微装修', 0, '', 0, '装修行业应用', 0),
(84, '微婚庆', 0, '', 0, '婚庆行业应用', 0),
(85, '微宠物', 0, '', 0, '宠物店、宠物医院微信应用', 0),
(86, '微家政', 0, '', 0, '家政行业微信应用', 0),
(87, '微租赁', 0, '', 0, '租赁行业应用', 0),
(88, '融合第三方', 0, '', 0, '融合第三方接口可以接入任何语言写的程序，接口类型分为文本接口和xml接口。在系统回答不上来的时候可以自动让第三方程序来回答粉丝的请求。', 0),
(89, '粉丝管理', 0, '', 0, '认证服务号可以在系统内管理自己的粉丝，包括对粉丝进行分组，粉丝的省份、城市、性别、头像等资料的管理', 0),
(90, '粉丝行为分析', 0, '', 0, '系统用图表方式对粉丝的喜好行为进行统计分析，为商家提供直观清晰的营销决策', 0),
(91, '渠道二维码', 0, '', 0, '<p>\n	为了满足用户渠道推广分析的需要，系统提供了生成带参数二维码的接口。使用该功能可以获得多个带不同场景值的二维码，用户扫描后，公众号可以接收到事件推送。\n</p>\n<p>\n	后台可以统计每个渠道的二维码扫描数量。\n</p>', 0),
(92, '人工客服', 0, '', 0, '<span>人工客服是指通过电脑端的真人客服工作人员直接与粉丝进行对话（类似于QQ聊天），人工客服在电脑端接收粉丝发送的信息并进行回答，粉丝在微信上进行对话并接收到客服发送的信息。<br />\n人工客服支持多工号操作，您只需要在后台添加多个客服工号，每个客服便可以单独进行登录来接待不同的粉丝。</span>', 0),
(93, '群发消息', 0, '', 0, '认证服务号可以通过系统群发图文消息，而不用再进入微信公众平台群发。', 0),
(94, '分享互动统计', 0, '', 0, '<p>\n	　&nbsp;&nbsp; 小猪CMS推出了分享（分享到朋友圈、微博或者发送给朋友）赚取积分的功能，商家在后台可以设置分享一次赚取多少积分，并且可以限制每个粉丝每天最多赚取多少积分。\n</p>\n<p>\n	　　分享功能与会员卡、商城系统形成一个良性互动的圈子，粉丝与商家可以在分享中实现互利互赢，是一种营销效果极佳的信息传播方式。\n</p>\n<p>\n	　　粉丝通过分享获取积分，积分会累积到会员卡中，凭借积分可以兑换奖品，在商城内作为抵用券抵用现金，这种方式大大提高了粉丝分享传播信息的积极性。\n</p>', 0),
(95, '水果机', 0, '', 0, '幸运水果机功能，就是我们熟悉的老虎机功能', 0),
(96, '砸金蛋', 0, '', 0, '在微信上砸金蛋，是针对商家做活动推广而开发的游戏模块', 0),
(97, '祝福贺卡', 0, '', 0, '支持多种背景和效果，粉丝转发可以修改贺卡内容', 0),
(98, '摇一摇', 0, '', 0, '大型会场及活动现场应用，通过粉丝摇动手机，大屏幕展现摇晃次数结果并进行奖励，来提高现场活动气氛', 0),
(99, '微信墙', 0, '', 0, '大型活动现场功能，粉丝发送的文字和图片可以显示在大屏幕上，在大屏幕上可以对参与粉丝进行滚动抽奖', 0),
(100, '微调研', 0, '', 0, '<span>微调研功能支持自定义问卷，自定义题目，自定义选项数量，带有完善的统计功能，粉丝参加完调研后可以参加抽奖，以提高粉丝参与的积极性。 </span>', 0),
(101, '微信签到', 0, '', 0, '<span>粉丝签到功能可以在会议现场、活动现场使用，可以代替原有的线下签到方式。签到界面设计美观，banner可以自定义为广告图片。后台带有完善的签到数据统计功能。 </span>', 0),
(102, '数据魔方', 0, '', 0, '数据魔方就是系统内各类数据的统计分析，以直观的图标的形式提供给商家，包括粉丝地域性别分析、分析喜好分析、分析行为分析、新增粉丝及对话量对比粉丝、趋势对比分析等', 0),
(103, '无缝接入第三方应答', 0, '', 0, '<span>\n<p>\n	　　小猪CMS新推出了无缝接入第三方程序应答功能，为了更好的支持第三方程序接入本系统，小猪cms新添加了在系统回答不上来的时候自动转接到第三方程序处理的功能。\n</p>\n<p>\n	　　这个功能的工作原理是：当小猪CMS中没有对应的自动回复的时候，就会把粉丝输入的信息连带粉丝的信息转交给用户设置的第三方程序处理，第三方程序可以进行自动回复，如果第三方程序也处理不了，则再转交给小猪CMS处理。\n</p>\n</span>', 0),
(104, '短信提醒', 0, '', 0, '<span>\n<p>\n	　　各类订单信息及连锁店订单信息都会直接发送到相应的手机号上，商家不必盯着电脑屏幕查看订单信息，商家可以随时掌握订单情况。\n</p>\n<p>\n	　　后台有完善的短信使用统计功能，您能清晰透明的了解您的短信用途和消费记录。\n</p>\n</span>', 0),
(105, '会员卡储值与支付', 0, '', 0, '<span>\n<p align="left">\n	　微信粉丝领取微信会员卡后可以通过在线支付方式或者线下支付方式进行储值，储值的会员卡余额可用于微信商城、团购、酒店预订等线上支付，也可以用于线下支付。\n</p>\n<p align="left">\n	　无论是通过线上支付还是线下支付，在消费的同时都可以获取积分。获取的积分同样可以进行礼品兑换或者商城现金抵用。\n</p>\n<p align="left">\n	　通过这种消费互利机制，系统已在微信端建立了一套完善的商家与消费者生态循环体系；并且已完美的解决了微信会员卡对于线上消费与线下消费的积分问题。\n</p>\n</span>', 0),
(106, '微信wifi', 0, '', 0, '只有关注微信公众号的粉丝才可以使用wifi，通过这种方式在商家店铺里面安装微信wifi，可以大量吸引粉丝关注商家公众号。', 0),
(107, '无线订单打印机', 0, '', 0, '该打印机设置简单，插入手机卡便可以自动打印订餐信息、酒店预定信息、预约信息等', 0),
(108, '微信照片打印机', 0, '', 0, '用于关注公众号以后，粉丝发送照片给公众号，便可以利用打印机打印照片，这是一个很好的增加粉丝的途径', 0),
(113, '关于我们', 0, '', 1, '后台关于我们手动添加', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_gamereply_info`
--

CREATE TABLE IF NOT EXISTS `tp_gamereply_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `picurls1` varchar(120) NOT NULL DEFAULT '',
  `info` varchar(120) NOT NULL DEFAULT '',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `copyright` text NOT NULL,
  `ad` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_games`
--

CREATE TABLE IF NOT EXISTS `tp_games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(40) NOT NULL DEFAULT '',
  `gameid` int(11) NOT NULL DEFAULT '0',
  `picurl` varchar(160) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(60) NOT NULL DEFAULT '',
  `intro` varchar(500) NOT NULL DEFAULT '',
  `selfinfo` varchar(5000) NOT NULL DEFAULT '',
  `token` varchar(20) NOT NULL DEFAULT '',
  `playcount` int(11) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_games`
--

INSERT INTO `tp_games` (`id`, `key`, `gameid`, `picurl`, `title`, `keyword`, `intro`, `selfinfo`, `token`, `playcount`, `time`) VALUES
(1, '', 25, '', '测测你的知名度', '测测你的知名度', '测测你的知名度', '{}', 'kpktkq1416817563', 0, 1417437996);

-- --------------------------------------------------------

--
-- 表的结构 `tp_gametreply_info`
--

CREATE TABLE IF NOT EXISTS `tp_gametreply_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `picurls1` varchar(120) NOT NULL DEFAULT '',
  `info` varchar(120) NOT NULL DEFAULT '',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `copyright` text NOT NULL,
  `ad` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_gamettreply_info`
--

CREATE TABLE IF NOT EXISTS `tp_gamettreply_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `picurls1` varchar(120) NOT NULL DEFAULT '',
  `info` varchar(120) NOT NULL DEFAULT '',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `copyright` text NOT NULL,
  `ad` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_game_config`
--

CREATE TABLE IF NOT EXISTS `tp_game_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `wxid` varchar(40) NOT NULL DEFAULT '',
  `wxname` varchar(50) NOT NULL DEFAULT '',
  `wxlogo` varchar(150) NOT NULL DEFAULT '',
  `link` varchar(150) NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL DEFAULT '0',
  `key` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_game_config`
--

INSERT INTO `tp_game_config` (`id`, `token`, `wxid`, `wxname`, `wxlogo`, `link`, `uid`, `key`) VALUES
(1, 'mbeboo1416823194', 'test', 'test', './tpl/User/default/common/images/portrait.jpg', '{siteUrl}/index.php?g=Wap&amp;amp;m=Store&amp;amp;a=select&amp;amp;token=mbeboo1416823194&amp;amp;wecha_id={wechat_id}', 7630, '2b0b3d4de7084c67dffa4898f184c3d6'),
(2, 'kpktkq1416817563', 'gh_997779b8debb', '泌阳', './tpl/User/default/common/images/portrait.jpg', '', 8590, '9c5a54e9f6bbfbd7705e769766380ab0');

-- --------------------------------------------------------

--
-- 表的结构 `tp_game_records`
--

CREATE TABLE IF NOT EXISTS `tp_game_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gameid` int(11) NOT NULL DEFAULT '0',
  `token` varchar(30) NOT NULL DEFAULT '',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `score` varchar(30) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `gameid` (`gameid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_goldegg`
--

CREATE TABLE IF NOT EXISTS `tp_goldegg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joinnum` int(11) NOT NULL COMMENT '????',
  `click` int(11) NOT NULL COMMENT '????',
  `token` varchar(255) NOT NULL COMMENT '??TOKEN',
  `keyword` varchar(255) NOT NULL COMMENT '???',
  `startpicurl` varchar(255) NOT NULL COMMENT '??????????',
  `title` varchar(255) NOT NULL COMMENT '????',
  `txt` varchar(255) NOT NULL COMMENT '?????????????',
  `summary` varchar(255) NOT NULL COMMENT '??',
  `startdate` int(11) NOT NULL COMMENT '??????',
  `enddate` int(11) NOT NULL COMMENT '??????',
  `info` varchar(255) NOT NULL COMMENT '????',
  `aginfo` varchar(255) NOT NULL COMMENT '??????',
  `endtite` varchar(255) NOT NULL COMMENT '????????',
  `endpicurl` varchar(255) NOT NULL COMMENT '????????',
  `endinfo` varchar(255) NOT NULL COMMENT '??????',
  `allpeople` int(11) NOT NULL COMMENT '???????',
  `canrqnums` int(22) NOT NULL COMMENT '????????',
  `parssword` int(15) NOT NULL COMMENT '????',
  `snimport` tinyint(1) NOT NULL COMMENT 'SN?????',
  `renamesn` varchar(60) NOT NULL DEFAULT 'SN?' COMMENT 'SN?????',
  `renametel` varchar(60) NOT NULL DEFAULT '???' COMMENT '??????',
  `displayjpnums` int(1) NOT NULL COMMENT '????????????',
  `createtime` int(11) NOT NULL COMMENT '??????',
  `status` int(1) NOT NULL COMMENT '????,0???,1???,2???',
  `verify` int(1) NOT NULL COMMENT '???????',
  `verifynum` int(11) NOT NULL DEFAULT '0' COMMENT '?????',
  `verifycode` varchar(255) NOT NULL COMMENT '?????',
  `type` varchar(10) NOT NULL COMMENT '????',
  `first` varchar(50) NOT NULL COMMENT '???????',
  `firstnums` int(4) NOT NULL COMMENT '???????',
  `firstlucknums` int(11) NOT NULL COMMENT '???????',
  `second` varchar(50) NOT NULL COMMENT '???????',
  `secondnums` int(4) NOT NULL COMMENT '???????',
  `secondlucknums` int(11) NOT NULL COMMENT '???????',
  `third` varchar(50) NOT NULL COMMENT '???',
  `thirdnums` int(4) NOT NULL COMMENT '???',
  `thirdlucknums` int(11) NOT NULL COMMENT '???',
  `four` varchar(50) NOT NULL COMMENT '???????',
  `fournums` int(11) NOT NULL COMMENT '???????',
  `fourlucknums` int(11) NOT NULL COMMENT '???????',
  `five` varchar(50) NOT NULL COMMENT '???',
  `fivenums` int(11) NOT NULL COMMENT '???',
  `fivelucknums` int(11) NOT NULL COMMENT '???',
  `six` varchar(50) NOT NULL COMMENT '???????',
  `sixnums` int(11) NOT NULL COMMENT '???????',
  `sixlucknums` int(11) NOT NULL COMMENT '???????',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_goldegg_record`
--

CREATE TABLE IF NOT EXISTS `tp_goldegg_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) NOT NULL COMMENT '??ID',
  `usenums` tinyint(1) NOT NULL DEFAULT '0' COMMENT '??????',
  `wecha_id` varchar(60) NOT NULL COMMENT '???????',
  `token` varchar(60) NOT NULL COMMENT '??TOKEN',
  `islucky` int(1) NOT NULL COMMENT '????',
  `wecha_name` varchar(60) NOT NULL COMMENT '???',
  `phone` varchar(20) NOT NULL COMMENT '???',
  `sn` varchar(60) NOT NULL COMMENT '??????',
  `time` int(11) NOT NULL COMMENT '??',
  `prize` varchar(60) NOT NULL DEFAULT '' COMMENT '????',
  `sendstutas` int(11) NOT NULL DEFAULT '0' COMMENT '????',
  `sendtime` int(11) NOT NULL COMMENT '????',
  PRIMARY KEY (`id`,`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_greeting_card`
--

CREATE TABLE IF NOT EXISTS `tp_greeting_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `token` varchar(60) NOT NULL,
  `num` int(11) NOT NULL,
  `click` int(11) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `bakcground_url` varchar(200) NOT NULL,
  `mp3` varchar(200) NOT NULL,
  `style` tinyint(2) NOT NULL,
  `name` varchar(60) NOT NULL,
  `zfname` varchar(60) NOT NULL,
  `copy` varchar(200) NOT NULL,
  `info` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_hcar`
--

CREATE TABLE IF NOT EXISTS `tp_hcar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `tp_hcar`
--

INSERT INTO `tp_hcar` (`id`, `content`) VALUES
(5, '内容'),
(6, '欢迎光临'),
(7, '欢迎光临');

-- --------------------------------------------------------

--
-- 表的结构 `tp_hcarreplay`
--

CREATE TABLE IF NOT EXISTS `tp_hcarreplay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `jianjie` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `lj` varchar(255) DEFAULT NULL,
  `sm` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `tp_hcarreplay`
--

INSERT INTO `tp_hcarreplay` (`id`, `token`, `title`, `pic`, `jianjie`, `keyword`, `lj`, `sm`) VALUES
(14, 'kpktkq1416817563', '贺卡', '', '贺卡', '卡娃', '贺卡', ''),
(15, 'jfvblr1416830511', '卡娃贺卡', 'http://demo.weiqianlong.com/tpl/static/attachment/focus/default/4.jpg', '卡娃贺卡', '卡娃贺卡', '', ''),
(16, 'htedog1417267111', '001', '', '001', '祝福', '欢迎使用卡妞微秀制作功能！', ''),
(17, 'mbeboo1416823194', '卡娃', 'http://demo.weiqianlong.com/uploads/m/mbeboo1416823194/f/e/0/d/547ab6fe05c05.jpg', '卡娃', '卡娃贺卡', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_heka`
--

CREATE TABLE IF NOT EXISTS `tp_heka` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(200) NOT NULL,
  `info` varchar(600) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `background` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_heka_list`
--

CREATE TABLE IF NOT EXISTS `tp_heka_list` (
  `id` int(12) unsigned NOT NULL AUTO_INCREMENT,
  `hid` int(12) unsigned NOT NULL,
  `token` varchar(200) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `backmusic` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_helping`
--

CREATE TABLE IF NOT EXISTS `tp_helping` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(40) NOT NULL,
  `title` char(40) NOT NULL,
  `keyword` char(20) NOT NULL,
  `intro` varchar(250) NOT NULL,
  `info` text NOT NULL,
  `reply_pic` varchar(250) NOT NULL,
  `top_pic` varchar(250) NOT NULL,
  `start` char(15) NOT NULL,
  `end` char(15) NOT NULL,
  `add_time` char(15) NOT NULL,
  `is_open` tinyint(4) NOT NULL,
  `is_reg` tinyint(4) NOT NULL,
  `is_attention` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_helping_user`
--

CREATE TABLE IF NOT EXISTS `tp_helping_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(40) NOT NULL,
  `wecha_id` char(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `help_count` int(11) NOT NULL,
  `add_time` char(15) NOT NULL,
  `share_key` char(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_hforward`
--

CREATE TABLE IF NOT EXISTS `tp_hforward` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL,
  `picurl` varchar(500) NOT NULL,
  `info` text NOT NULL,
  `statdate` int(11) NOT NULL,
  `lj` varchar(255) DEFAULT NULL,
  `gz` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- 转存表中的数据 `tp_hforward`
--

INSERT INTO `tp_hforward` (`id`, `title`, `keyword`, `token`, `picurl`, `info`, `statdate`, `lj`, `gz`) VALUES
(24, '转发有礼', '呵呵哈哈', 'kpktkq1416817563', 'http://demo.weiqianlong.com/tpl/static/attachment/focus/default/1.gif', '转发有礼', 1417276800, 'http://', '转发有礼');

-- --------------------------------------------------------

--
-- 表的结构 `tp_hfor_item`
--

CREATE TABLE IF NOT EXISTS `tp_hfor_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `wecha_id` varchar(255) NOT NULL,
  `createtime` int(11) NOT NULL,
  `tongji` int(11) DEFAULT '0',
  `ip` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `tp_hfor_item`
--

INSERT INTO `tp_hfor_item` (`id`, `fid`, `name`, `phone`, `wecha_id`, `createtime`, `tongji`, `ip`) VALUES
(1, 11, '2121', '15267720632', 'ob2qxjgbC8wTmFfmJdS14O-o_jg', 1416031642, 10, '122.228.131.67,101.226.103.59,112.64.235.249,101.226.66.175,180.153.206.13,118.205.17.119'),
(2, 27, '李老师', '13580874568', 'oNd7Fs6_Rruo0E6HJIhz7iAmjZh0', 1416116532, 0, ''),
(3, 28, '小孩', '15090879999', 'oay62s3wd4EOp59g2JwHoJnmtJmY', 1416476277, 0, ''),
(4, 11, '宝宝吧', '18267720666', 'ob2qxjgbC8wTmFfmJdS14O-So_jg', 1416639203, 12, '211.161.247.205'),
(5, 30, '的的形成', '15645678909', 'oisrrtyZ0oVie0nYGpZEEv0QL8c0', 1416812796, 0, ''),
(6, 24, '事实上', '18267720666', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 1416832258, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_home`
--

CREATE TABLE IF NOT EXISTS `tp_home` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL,
  `picurl` varchar(120) NOT NULL,
  `apiurl` varchar(150) NOT NULL,
  `homeurl` varchar(120) NOT NULL,
  `info` varchar(120) NOT NULL,
  `musicurl` varchar(180) NOT NULL DEFAULT '',
  `plugmenucolor` varchar(10) NOT NULL DEFAULT '',
  `copyright` varchar(200) NOT NULL DEFAULT '',
  `animation` tinyint(2) NOT NULL,
  `logo` varchar(200) NOT NULL DEFAULT '',
  `radiogroup` mediumint(4) NOT NULL DEFAULT '0',
  `advancetpl` tinyint(1) NOT NULL DEFAULT '0',
  `dianhua` varchar(20) NOT NULL,
  `keyword` char(255) NOT NULL,
  `bjdh` int(10) NOT NULL,
  `head` varchar(255) NOT NULL,
  `zdh` tinyint(1) NOT NULL,
  `gzhurl` char(255) DEFAULT NULL COMMENT '公众号链接地址',
  `start` tinyint(1) NOT NULL DEFAULT '0',
  `stpic` varchar(120) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `tp_home`
--

INSERT INTO `tp_home` (`id`, `token`, `title`, `picurl`, `apiurl`, `homeurl`, `info`, `musicurl`, `plugmenucolor`, `copyright`, `animation`, `logo`, `radiogroup`, `advancetpl`, `dianhua`, `keyword`, `bjdh`, `head`, `zdh`, `gzhurl`, `start`, `stpic`) VALUES
(3, 'jfvblr1416830511', '首页', 'http://demo.weiqianlong.com/tpl/static/attachment/background/view/3.jpg', '', '', '首页', '', '', '', 0, '', 0, 0, '', '', 0, '', 0, '', 0, 'http://s.404.cn/tpl/static/home/kcdhbj.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `tp_home_background`
--

CREATE TABLE IF NOT EXISTS `tp_home_background` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(200) NOT NULL DEFAULT '',
  `taxis` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_host`
--

CREATE TABLE IF NOT EXISTS `tp_host` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL COMMENT '关键词',
  `title` varchar(50) NOT NULL COMMENT '商家名称',
  `address` varchar(50) NOT NULL COMMENT '商家地',
  `tel` varchar(13) NOT NULL COMMENT '商家电话',
  `tel2` varchar(13) NOT NULL COMMENT '手机号',
  `ppicurl` varchar(250) NOT NULL COMMENT '订房封面图片',
  `headpic` varchar(250) NOT NULL COMMENT '订单页头部图片',
  `name` varchar(50) NOT NULL COMMENT '文字描述',
  `sort` int(11) NOT NULL COMMENT '排序',
  `picurl` varchar(100) NOT NULL COMMENT '图片地址',
  `url` varchar(50) NOT NULL COMMENT '图片跳转地址以http',
  `info` text NOT NULL COMMENT '商家介绍：',
  `info2` text NOT NULL COMMENT '订房说明u',
  `creattime` int(11) NOT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_host`
--

INSERT INTO `tp_host` (`id`, `token`, `keyword`, `title`, `address`, `tel`, `tel2`, `ppicurl`, `headpic`, `name`, `sort`, `picurl`, `url`, `info`, `info2`, `creattime`) VALUES
(1, 'kpktkq1416817563', '12', '12', '', '1212', '13211223344', '12', './tpl/User/default/common/images/cart_info/online.jpg', '12', 0, '2', '2', '12', '12', 1416823517);

-- --------------------------------------------------------

--
-- 表的结构 `tp_host_list_add`
--

CREATE TABLE IF NOT EXISTS `tp_host_list_add` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hid` int(11) NOT NULL COMMENT '商家id',
  `token` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL COMMENT '房间类型',
  `typeinfo` varchar(100) NOT NULL COMMENT '简要说明',
  `price` decimal(10,2) NOT NULL COMMENT '原价：',
  `yhprice` decimal(10,2) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '文字描述',
  `picurl` varchar(110) NOT NULL COMMENT '图片地址',
  `url` varchar(100) NOT NULL COMMENT '图片跳转地址以http',
  `info` text NOT NULL COMMENT '配套设施',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_host_order`
--

CREATE TABLE IF NOT EXISTS `tp_host_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `book_people` varchar(50) NOT NULL COMMENT '预订人',
  `tel` varchar(13) NOT NULL COMMENT '电话',
  `check_in` int(11) NOT NULL COMMENT '入住时间',
  `check_out` int(11) NOT NULL COMMENT '离开时间',
  `room_type` varchar(50) NOT NULL COMMENT '房间类型',
  `book_time` int(11) NOT NULL COMMENT '预订时间',
  `book_num` int(11) NOT NULL COMMENT '预订数量',
  `price` decimal(10,2) NOT NULL COMMENT ' 价格',
  `order_status` int(11) NOT NULL COMMENT '订单状态 1 成功,2 失败,3 未处理',
  `hid` int(11) NOT NULL COMMENT '订房商家id',
  `remarks` varchar(250) NOT NULL COMMENT '留言备注',
  `orderid` varchar(100) NOT NULL,
  `paytype` varchar(100) NOT NULL,
  `third_id` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_hotels_house`
--

CREATE TABLE IF NOT EXISTS `tp_hotels_house` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(80) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `note` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `sid` (`sid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- 转存表中的数据 `tp_hotels_house`
--

INSERT INTO `tp_hotels_house` (`id`, `cid`, `token`, `name`, `image`, `sid`, `note`) VALUES
(1, 2, 'kpktkq1416817563', '201', '', 1, ''),
(2, 2, 'kpktkq1416817563', '202', '', 1, ''),
(3, 2, 'kpktkq1416817563', '203', '', 1, ''),
(4, 2, 'kpktkq1416817563', '204', '', 1, ''),
(5, 2, 'kpktkq1416817563', '205', '', 1, ''),
(6, 2, 'kpktkq1416817563', '206', '', 1, ''),
(7, 2, 'kpktkq1416817563', '207', '', 1, ''),
(8, 2, 'kpktkq1416817563', '208', '', 1, ''),
(9, 2, 'kpktkq1416817563', '209', '', 1, ''),
(10, 2, 'kpktkq1416817563', '210', '', 1, ''),
(11, 2, 'kpktkq1416817563', '211', '', 1, ''),
(12, 2, 'kpktkq1416817563', '212', '', 1, ''),
(13, 2, 'kpktkq1416817563', '213', '', 1, ''),
(14, 2, 'kpktkq1416817563', '214', '', 1, ''),
(15, 2, 'kpktkq1416817563', '215', '', 1, ''),
(16, 2, 'kpktkq1416817563', '216', '', 1, ''),
(17, 2, 'kpktkq1416817563', '217', '', 1, ''),
(18, 2, 'kpktkq1416817563', '218', '', 1, ''),
(19, 2, 'kpktkq1416817563', '219', '', 1, ''),
(20, 2, 'kpktkq1416817563', '220', '', 1, ''),
(21, 2, 'kpktkq1416817563', '221', '', 1, ''),
(22, 2, 'kpktkq1416817563', '222', '', 1, ''),
(23, 2, 'kpktkq1416817563', '3232', '', 2, '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_hotels_house_sort`
--

CREATE TABLE IF NOT EXISTS `tp_hotels_house_sort` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` float NOT NULL,
  `vprice` float NOT NULL,
  `note` varchar(500) NOT NULL,
  `num` tinyint(1) unsigned NOT NULL,
  `houses` smallint(3) unsigned NOT NULL,
  `area` float NOT NULL,
  `bed` varchar(100) NOT NULL,
  `floor` varchar(100) NOT NULL,
  `bedwidth` varchar(100) NOT NULL,
  `network` varchar(100) NOT NULL,
  `smoke` varchar(100) NOT NULL,
  `image_1` varchar(200) NOT NULL,
  `image_2` varchar(200) NOT NULL,
  `image_3` varchar(200) NOT NULL,
  `image_4` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_hotels_house_sort`
--

INSERT INTO `tp_hotels_house_sort` (`id`, `cid`, `token`, `name`, `image`, `price`, `vprice`, `note`, `num`, `houses`, `area`, `bed`, `floor`, `bedwidth`, `network`, `smoke`, `image_1`, `image_2`, `image_3`, `image_4`) VALUES
(1, 2, 'kpktkq1416817563', '21', '', 12, 12, '', 21, 22, 1, '', '', '', '', '', '', '', '', ''),
(2, 2, 'kpktkq1416817563', '2121', '', 2, 32, '', 32, 1, 12, '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_hotels_image`
--

CREATE TABLE IF NOT EXISTS `tp_hotels_image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(80) NOT NULL,
  `image` varchar(200) NOT NULL,
  `info` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_hotels_order`
--

CREATE TABLE IF NOT EXISTS `tp_hotels_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `sid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL,
  `price` float NOT NULL,
  `nums` smallint(3) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `time` int(11) NOT NULL,
  `startdate` int(8) unsigned NOT NULL,
  `enddate` int(8) unsigned NOT NULL,
  `paid` tinyint(1) unsigned NOT NULL,
  `orderid` varchar(100) NOT NULL,
  `printed` tinyint(1) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `paytype` varchar(100) NOT NULL,
  `third_id` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`,`wecha_id`),
  KEY `token` (`token`),
  KEY `orderid` (`orderid`),
  KEY `enddate` (`enddate`),
  KEY `sid` (`sid`),
  KEY `stardate` (`startdate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_iframe`
--

CREATE TABLE IF NOT EXISTS `tp_iframe` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `tp` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_img`
--

CREATE TABLE IF NOT EXISTS `tp_img` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `keyword` char(255) NOT NULL,
  `precisions` tinyint(1) NOT NULL DEFAULT '0',
  `text` text NOT NULL COMMENT '简介',
  `classid` int(11) NOT NULL,
  `sort` int(10) NOT NULL,
  `classname` varchar(60) NOT NULL,
  `pic` char(255) NOT NULL COMMENT '封面图片',
  `showpic` varchar(1) NOT NULL COMMENT '图片是否显示封面',
  `info` text NOT NULL COMMENT '??????',
  `url` char(255) NOT NULL COMMENT '图文外链地址',
  `createtime` varchar(13) NOT NULL,
  `uptatetime` varchar(13) NOT NULL,
  `click` int(11) NOT NULL,
  `token` char(30) NOT NULL,
  `title` varchar(60) NOT NULL,
  `usort` int(11) NOT NULL,
  `longitude` varchar(20) NOT NULL DEFAULT '0',
  `latitude` varchar(20) NOT NULL DEFAULT '0',
  `type` varchar(1) NOT NULL COMMENT '???????',
  `writer` varchar(200) DEFAULT NULL COMMENT '作者',
  `texttype` int(11) NOT NULL DEFAULT '1' COMMENT '文本类型',
  `usorts` int(11) NOT NULL DEFAULT '1' COMMENT '分类文章排列顺序',
  PRIMARY KEY (`id`),
  KEY `classid` (`classid`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_img_multi`
--

CREATE TABLE IF NOT EXISTS `tp_img_multi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keywords` varchar(100) DEFAULT '',
  `imgs` varchar(255) DEFAULT NULL,
  `token` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_indent`
--

CREATE TABLE IF NOT EXISTS `tp_indent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `gid` tinyint(2) NOT NULL,
  `month` mediumint(5) NOT NULL DEFAULT '0',
  `uname` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `info` int(11) NOT NULL,
  `indent_id` char(20) NOT NULL,
  `widtrade_no` varchar(20) NOT NULL,
  `price` float NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `tp_indent`
--

INSERT INTO `tp_indent` (`id`, `uid`, `gid`, `month`, `uname`, `title`, `info`, `indent_id`, `widtrade_no`, `price`, `create_time`, `status`) VALUES
(1, 2, 0, 0, 'demo', '充值', 0, '2_1416930687', '', 200, 1416930687, 0),
(2, 2, 0, 0, 'demo', '充值', 0, '2_1417082181', '', 200, 1417082181, 0),
(3, 2, 0, 0, 'demo', '充值', 0, '2_1417096394', '', 200, 1417096394, 0),
(4, 2, 0, 0, 'demo', '充值', 0, '2_1417268160', '', 200, 1417268160, 0),
(5, 2, 0, 0, 'demo', '充值', 0, '2_1417433291', '', 200, 1417433291, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_invite`
--

CREATE TABLE IF NOT EXISTS `tp_invite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `title` varchar(30) NOT NULL,
  `content` varchar(360) NOT NULL,
  `replypic` varchar(200) NOT NULL,
  `cover` varchar(150) NOT NULL,
  `meetpic` varchar(150) NOT NULL,
  `photo` varchar(20) NOT NULL,
  `linkman` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `site` varchar(100) NOT NULL,
  `twopic` varchar(150) NOT NULL,
  `theme` varchar(50) NOT NULL,
  `themeurl` varchar(150) NOT NULL,
  `warn` varchar(100) NOT NULL,
  `inback` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_invites`
--

CREATE TABLE IF NOT EXISTS `tp_invites` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `keyword` varchar(30) NOT NULL,
  `picurl` varchar(120) NOT NULL,
  `type` int(3) NOT NULL,
  `brief` varchar(200) NOT NULL,
  `content` varchar(300) NOT NULL,
  `statdate` varchar(30) NOT NULL,
  `address` varchar(120) NOT NULL,
  `lng` double NOT NULL,
  `lat` double NOT NULL,
  `qr_code` varchar(120) NOT NULL,
  `copyrite` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_invites_info`
--

CREATE TABLE IF NOT EXISTS `tp_invites_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `username` varchar(20) NOT NULL,
  `telphone` varchar(15) NOT NULL,
  `rdo_go` int(2) NOT NULL,
  `content` varchar(200) NOT NULL,
  `type` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_invite_enroll`
--

CREATE TABLE IF NOT EXISTS `tp_invite_enroll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yid` int(1) NOT NULL,
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `post` varchar(50) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_invite_meeting`
--

CREATE TABLE IF NOT EXISTS `tp_invite_meeting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yid` int(1) NOT NULL,
  `token` varchar(60) NOT NULL,
  `time` int(11) NOT NULL,
  `ytime` int(11) NOT NULL,
  `xtime` int(11) NOT NULL,
  `content` text NOT NULL,
  `guest` varchar(200) NOT NULL,
  `call` varchar(20) NOT NULL,
  `site` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_invite_partner`
--

CREATE TABLE IF NOT EXISTS `tp_invite_partner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yid` int(1) NOT NULL,
  `token` varchar(30) NOT NULL,
  `partnertype` varchar(50) NOT NULL COMMENT '合作伙伴类型',
  `typepic` varchar(200) NOT NULL COMMENT '类型图片',
  `company` varchar(200) NOT NULL COMMENT '公司',
  `photo` varchar(100) NOT NULL COMMENT '服务热线',
  `scheme` text NOT NULL COMMENT '方案',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_invite_plan`
--

CREATE TABLE IF NOT EXISTS `tp_invite_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yid` int(1) NOT NULL,
  `token` varchar(50) NOT NULL,
  `month` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `call` varchar(20) NOT NULL,
  `site` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_invite_user`
--

CREATE TABLE IF NOT EXISTS `tp_invite_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` char(60) NOT NULL,
  `yid` int(1) NOT NULL,
  `headpic` varchar(100) NOT NULL,
  `username` varchar(30) NOT NULL,
  `position` varchar(30) NOT NULL,
  `synopsis` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_jiejing`
--

CREATE TABLE IF NOT EXISTS `tp_jiejing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `title` varchar(50) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `pano` varchar(200) NOT NULL,
  `text` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_jikedati_flash`
--

CREATE TABLE IF NOT EXISTS `tp_jikedati_flash` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `picurl1` char(255) NOT NULL,
  `picurl2` char(255) NOT NULL,
  `picurl3` char(255) NOT NULL,
  `picurl4` char(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_jikedati_reply`
--

CREATE TABLE IF NOT EXISTS `tp_jikedati_reply` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `info` varchar(500) DEFAULT NULL COMMENT '公司简介',
  `title` text NOT NULL,
  `tp` char(255) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `banner` varchar(255) NOT NULL,
  `scorename` text NOT NULL,
  `tip1` text NOT NULL,
  `tip2` text NOT NULL,
  `tip3` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_jikedati_setcin`
--

CREATE TABLE IF NOT EXISTS `tp_jikedati_setcin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `info` text,
  `tel` varchar(11) DEFAULT NULL,
  `messages` text,
  `banner` varchar(100) DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `lng` varchar(30) NOT NULL,
  `lat` varchar(30) NOT NULL,
  `picurl1` varchar(100) NOT NULL,
  `picurl2` varchar(100) NOT NULL,
  `picurl3` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_jikedati_user`
--

CREATE TABLE IF NOT EXISTS `tp_jikedati_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `diaoyan_id` int(11) DEFAULT NULL,
  `wecha_id` varchar(100) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_jingcai_changci`
--

CREATE TABLE IF NOT EXISTS `tp_jingcai_changci` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `stime` int(11) NOT NULL COMMENT '赛事时间',
  `pid` int(11) NOT NULL COMMENT '赛事回复配置id',
  `type_id` int(11) NOT NULL COMMENT '赛事类型',
  `zhudui` int(11) NOT NULL COMMENT '主队',
  `kedui` int(11) NOT NULL COMMENT '客场',
  `speilv` int(11) NOT NULL COMMENT '主胜赔率',
  `ppeilv` int(11) NOT NULL COMMENT '平赔率',
  `fpeilv` int(11) NOT NULL COMMENT '主负赔率',
  `minlimit` int(11) NOT NULL DEFAULT '0' COMMENT '最小限额',
  `zhuduinum` int(11) NOT NULL DEFAULT '0' COMMENT '主队进球',
  `keduinum` int(11) NOT NULL DEFAULT '0' COMMENT '客队进球',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '比赛状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- 转存表中的数据 `tp_jingcai_changci`
--

INSERT INTO `tp_jingcai_changci` (`id`, `token`, `stime`, `pid`, `type_id`, `zhudui`, `kedui`, `speilv`, `ppeilv`, `fpeilv`, `minlimit`, `zhuduinum`, `keduinum`, `status`) VALUES
(24, 'kpktkq1416817563', 1417261598, 16, 14, 43, 44, 12, 12, 12, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_jingcai_changci_record`
--

CREATE TABLE IF NOT EXISTS `tp_jingcai_changci_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(200) NOT NULL,
  `type_id` int(11) NOT NULL COMMENT '赛事类型',
  `changci_id` int(11) NOT NULL COMMENT '赛事id',
  `ycjg` int(1) NOT NULL DEFAULT '1' COMMENT '预测结果',
  `ctime` int(11) NOT NULL COMMENT '预测时间',
  `sjm` varchar(50) NOT NULL COMMENT '抽奖码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `tp_jingcai_changci_record`
--

INSERT INTO `tp_jingcai_changci_record` (`id`, `token`, `wecha_id`, `type_id`, `changci_id`, `ycjg`, `ctime`, `sjm`) VALUES
(21, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 14, 24, 3, 1417185449, '12');

-- --------------------------------------------------------

--
-- 表的结构 `tp_jingcai_set`
--

CREATE TABLE IF NOT EXISTS `tp_jingcai_set` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `cover` varchar(200) NOT NULL,
  `bannerpic` varchar(500) NOT NULL,
  `info` varchar(500) DEFAULT NULL,
  `choujiang` int(1) DEFAULT '0',
  `status` int(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `token_2` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `tp_jingcai_set`
--

INSERT INTO `tp_jingcai_set` (`id`, `token`, `title`, `keyword`, `cover`, `bannerpic`, `info`, `choujiang`, `status`) VALUES
(16, 'kpktkq1416817563', '竞猜1', '竞猜1', 'http://demo.weiqianlong.com/tpl/static/attachment/focus/default/4.jpg', 'http://demo.weiqianlong.com/tpl/static/attachment/focus/default/../canyin/2.jpg', 'asdasdas sdfsdfsadsadasdsda', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_jingcai_team`
--

CREATE TABLE IF NOT EXISTS `tp_jingcai_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '赛事回复配置id',
  `type_id` int(11) NOT NULL COMMENT '赛事类型',
  `token` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL COMMENT '团体名字',
  `desc` varchar(500) NOT NULL COMMENT '团体描述',
  `team_logo` varchar(500) NOT NULL COMMENT '团体logo',
  `sort` tinyint(4) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '团队状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- 转存表中的数据 `tp_jingcai_team`
--

INSERT INTO `tp_jingcai_team` (`id`, `pid`, `type_id`, `token`, `name`, `desc`, `team_logo`, `sort`, `status`) VALUES
(43, 16, 14, 'kpktkq1416817563', '测试', '测试', './tpl/static/jingcai/logo.jpg', 1, 1),
(44, 16, 14, 'kpktkq1416817563', '撒旦撒', '阿萨德', './tpl/static/jingcai/logo.jpg', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_jingcai_type`
--

CREATE TABLE IF NOT EXISTS `tp_jingcai_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `description` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `tp_jingcai_type`
--

INSERT INTO `tp_jingcai_type` (`id`, `pid`, `token`, `title`, `sort`, `description`) VALUES
(14, 16, 'kpktkq1416817563', '飞过海', 1, ''),
(15, 16, 'kpktkq1416817563', '测试', 1, '测');

-- --------------------------------------------------------

--
-- 表的结构 `tp_kefu`
--

CREATE TABLE IF NOT EXISTS `tp_kefu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `title` varchar(50) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `info2` varchar(200) NOT NULL,
  `text` varchar(50) NOT NULL,
  `status` text NOT NULL,
  `sc` text NOT NULL,
  `cy` text NOT NULL,
  `lt` text NOT NULL,
  `yy` text NOT NULL,
  `zp` text NOT NULL,
  `hyk` text NOT NULL,
  `car` text NOT NULL,
  `yiliao` text NOT NULL,
  `jiaoyu` text NOT NULL,
  `jdbg` text NOT NULL,
  `fc` text NOT NULL,
  `ktv` text NOT NULL,
  `jiuba` text NOT NULL,
  `huisuo` text NOT NULL,
  `zhuangxiu` text NOT NULL,
  `meirong` text NOT NULL,
  `beauty` tinyint(4) NOT NULL,
  `fitness` tinyint(4) NOT NULL,
  `gover` tinyint(4) NOT NULL,
  `food` tinyint(4) NOT NULL,
  `travel` tinyint(4) NOT NULL,
  `flower` tinyint(4) NOT NULL,
  `property` tinyint(4) NOT NULL,
  `bar` tinyint(4) NOT NULL,
  `fitment` tinyint(4) NOT NULL,
  `wedding` tinyint(4) NOT NULL,
  `affections` tinyint(4) NOT NULL,
  `housekeeper` tinyint(4) NOT NULL,
  `lease` tinyint(4) NOT NULL,
  `fxdr` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `tp_kefu`
--

INSERT INTO `tp_kefu` (`id`, `token`, `keyword`, `title`, `picurl`, `info2`, `text`, `status`, `sc`, `cy`, `lt`, `yy`, `zp`, `hyk`, `car`, `yiliao`, `jiaoyu`, `jdbg`, `fc`, `ktv`, `jiuba`, `huisuo`, `zhuangxiu`, `meirong`, `beauty`, `fitness`, `gover`, `food`, `travel`, `flower`, `property`, `bar`, `fitment`, `wedding`, `affections`, `housekeeper`, `lease`, `fxdr`) VALUES
(1, 'avljgc1397041839', '客服', '微最强在线客服', 'http://wzweixiang.com/uploads/a/avljgc1397041839/6/a/0/2/thumb_53780d727e024.jpg', 'http://kefu6.kuaishang.com.cn/bs/im.htm?cas=10128___177444&amp;fi=10282', '微最强在线客服，欢迎体验！', '1', '1', '1', '1', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'nepvyy1400393099', '客服', '客服', 'http://wzweixiang.com/tpl/static/attachment/background/view/7.jpg', 'http://kefu6.kuaishang.com.cn/bs/im.htm?cas=8953___851039&amp;fi=9269&amp;ism=1', '客服客服', '1', '1', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'ozugxw1400589873', '客服', '客户服务', 'http://wzweixiang.com/tpl/static/attachment/focus/default/4.jpg', 'http://kefu6.kuaishang.com.cn/bs/im.htm?cas=8953___851039&amp;fi=9269&amp;ism=1', '似的发生的发生的', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'qpyzzq1401101914', '客服', '客服', 'http://wzweixiang.com/tpl/static/attachment/icon/lovely/chalkboard.png', '', '客服客服', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'tzqawo1400308953', '', '', '', '', '', '0', '0', '0', '0', '', '0', '0', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'vjqknh1401698458', '客服', '在线客服', 'http://wzweixiang.com/tpl/static/attachment/background/view/9.jpg', '', '123321', '1', '1', '1', '1', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(7, 'rbxjud1402368974', '客服', '客服', 'http://weiqianlong.com/tpl/static/attachment/focus/default/1.gif', 'http://kefu6.kuaishang.com.cn/bs/im.htm?cas=10128___177444&amp;fi=10282', '客服', '1', '1', '1', '1', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, 'zdlhnn1402630375', '客服', '客服系统', 'http://weiqianlong.com/tpl/static/attachment/focus/default/1.gif', '', '打豆豆', '1', '1', '1', '1', '', '1', '1', '1', '1', '0', '0', '1', '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 'fandei1404098591', '在线客服', '咨询客服', '/uploads/112/fandei1404098591/7/d/1/c/thumb_53bcf1319f519.jpg', '', '', '0', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, 'lgpkeh1409469649', '啊', '啊', 'http://114.215.182.129/uploads/l/lgpkeh1409469649/b/b/f/3/540fa62084417.png', 'http://kefu6.kuaishang.cn/bs/im.htm?cas=9785___466693&amp;fi=9904', '啊', '1', '0', '0', '0', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(11, 'sskwsv1412316065', '', '', '', 'http://kefu6.kuaishang.com.cn/bs/im.htm?cas=8953___851039&fi=9269&ism=1', '', '1', '0', '1', '0', '', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12, 'lpwkup1416927028', '', '', '', '', '', '0', '0', '0', '0', '', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, 'gszclw1417007249', '在线客服', '在线客服', 'http://weiqianlong.com/uploads/g/gszclw1417007249/3/d/4/c/thumb_5475e43833c84.jpg', 'http://kefu6.kuaishang.com.cn/bs/im.htm?cas=10128___177444&fi=10282', '在线客服介绍', '1', '1', '1', '1', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(14, 'kpktkq1416817563', '是的撒旦', '的撒旦', 'http://demo.weiqianlong.com/uploads/k/kpktkq1416817563/0/e/8/d/5475de823c930.png', 'http://kefu6.kuaishang.com.cn/bs/im.htm?cas=10128___177444&amp;fi=10282', '撒旦撒', '1', '1', '1', '1', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_keyword`
--

CREATE TABLE IF NOT EXISTS `tp_keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` char(255) NOT NULL,
  `pid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `module` varchar(15) NOT NULL,
  `precision` tinyint(1) NOT NULL DEFAULT '0',
  `precisions` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_knwxmy`
--

CREATE TABLE IF NOT EXISTS `tp_knwxmy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `content` varchar(5000) DEFAULT NULL,
  `pic` varchar(255) DEFAULT '',
  `style` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `knwxopen` int(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `catgroy` varchar(233) NOT NULL,
  `save` varchar(255) NOT NULL,
  `click` varchar(255) NOT NULL DEFAULT '0',
  `share` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=65 ;

--
-- 转存表中的数据 `tp_knwxmy`
--

INSERT INTO `tp_knwxmy` (`id`, `wecha_id`, `token`, `content`, `pic`, `style`, `time`, `knwxopen`, `title`, `catgroy`, `save`, `click`, `share`) VALUES
(12, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 'kpktkq1416817563', '', '', 1, 1416835533, 0, '我的微秀', '1416835533', '', '0', '0'),
(11, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'kpktkq1416817563', '', '', 1, 1416835315, 0, '我的微秀', '1416835315', '', '1', '0'),
(13, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 'kpktkq1416817563', '', '', 1, 1416835777, 0, '我的微秀', '1416835777', '', '1', '0'),
(14, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 'kpktkq1416817563', '', '', 1, 1416836220, 0, '我的微秀', '1416836220', '', '0', '0'),
(15, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 'kpktkq1416817563', 'ok', '', 0, 1416836935, 0, '我的微秀', '1416835315', '', '1', '0'),
(16, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 'kpktkq1416817563', '骨灰级看到', '', 0, 1416836941, 0, '我的微秀', '1416835315', '', '1', '0'),
(17, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 'kpktkq1416817563', '打底裤快乐', '', 0, 1416836945, 0, '我的微秀', '1416835315', '', '1', '0'),
(18, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 'kpktkq1416817563', '疯狂空间', '', 0, 1416836948, 0, '我的微秀', '1416835315', '', '1', '0'),
(19, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 'kpktkq1416817563', 'guik', '', 0, 1416836963, 0, '我的微秀', '1416835315', '', '1', '0'),
(20, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 'kpktkq1416817563', 'ok', '', 0, 1416836965, 0, '我的微秀', '1416835315', '', '1', '0'),
(21, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 'kpktkq1416817563', '那你就看看', '', 0, 1416836969, 0, '我的微秀', '1416835315', '', '1', '0'),
(22, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'kpktkq1416817563', 'ok', '', 0, 1416837133, 0, '我的微秀', '1416835315', '', '1', '0'),
(23, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'kpktkq1416817563', '反反复复', '', 0, 1416837136, 0, '我的微秀', '1416835315', '', '1', '0'),
(24, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'kpktkq1416817563', '刚刚给他抬头', '', 0, 1416837140, 0, '我的微秀', '1416835315', '', '1', '0'),
(25, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'kpktkq1416817563', '', '', 1061, 1416837211, 0, '我的微秀', '1416837211', 'save', '6', '0'),
(26, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'kpktkq1416817563', 'vv 个广告', '', 1061, 1416837240, 0, '我的微秀', '1416837211', 'save', '6', '0'),
(27, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'kpktkq1416817563', '回顾改革', '', 1061, 1416837243, 0, '我的微秀', '1416837211', 'save', '6', '0'),
(28, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 'kpktkq1416817563', '', '', 1, 1416837351, 0, '我的微秀', '1416837351', '', '1', '0'),
(29, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'kpktkq1416817563', '', '', 1, 1416837411, 0, '我的微秀', '1416837411', '', '0', '0'),
(30, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'kpktkq1416817563', '给哥哥哥哥', '', 0, 1416837413, 0, '我的微秀', '1416837351', '', '1', '0'),
(31, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 'kpktkq1416817563', '方法', '', 0, 1416837515, 0, '我的微秀', '1416837351', '', '1', '0'),
(32, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 'kpktkq1416817563', '一个个', '', 0, 1416837519, 0, '我的微秀', '1416837351', '', '1', '0'),
(33, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 'kpktkq1416817563', 'gfdq', '', 0, 1416837551, 0, '我的微秀', '1416837351', '', '1', '0'),
(34, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 'kpktkq1416817563', '', 'http://mmbiz.qpic.cn/mmbiz/Eea6mxYw4xBaS4ER8jBicicG8KndZwf7aZs8icOTzJPB2UuichQQibTDr29fHUEGw9A90h7Y7pia03AfcnSomGKejmzQ/0', 0, 1416837595, 0, '我的微秀', '1416837351', '', '1', '0'),
(35, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'kpktkq1416817563', '', '', 1, 1416837610, 0, '我的微秀', '1416837610', '', '2', '0'),
(36, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'kpktkq1416817563', '风风光光', '', 0, 1416837612, 0, '我的微秀', '1416837610', '', '2', '0'),
(37, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'kpktkq1416817563', '', 'http://mmbiz.qpic.cn/mmbiz/OT6WNAYZJXodLs5l2zqtR1q8FWvo5wTVEsVZelLTGGj78HZ0OCknVqaB6v1HC1bVsrCLG8l2jicm5kfrj6N0PSg/0', 0, 1416837617, 0, '我的微秀', '1416837610', '', '2', '0'),
(38, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'kpktkq1416817563', '', '', 1, 1416906678, 0, '我的微秀', '1416906678', '', '6', '0'),
(39, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'kpktkq1416817563', 'sddssf', '', 0, 1416906684, 0, '我的微秀', '1416906678', '', '6', '0'),
(40, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'kpktkq1416817563', '', '', 1065, 1416908524, 0, '我的微秀', '1416908524', '', '7', '0'),
(41, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'kpktkq1416817563', '哥哥哥哥哥哥', '', 1065, 1416908526, 0, '我的微秀', '1416908524', '', '7', '0'),
(42, 'o3aweuP2jfzJca8li4VvxJzBWTpQ', 'htedog1417267111', '', '', 1004, 1417319082, 0, '我的微秀', '1417319082', '', '14', '0'),
(43, 'o3aweuP2jfzJca8li4VvxJzBWTpQ', 'htedog1417267111', '001', '', 1004, 1417319089, 0, '我的微秀', '1417319082', '', '14', '0'),
(44, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'kpktkq1416817563', '', '', 1, 1417356106, 0, '我的微秀', '1417356106', '', '2', '0'),
(45, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'kpktkq1416817563', 'ok', '', 0, 1417356122, 0, '我的微秀', '1417356106', '', '2', '0'),
(46, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'kpktkq1416817563', '大撒旦撒旦', '', 0, 1417356126, 0, '我的微秀', '1417356106', '', '2', '0'),
(47, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'kpktkq1416817563', '', '', 1, 1417396905, 0, '我的微秀', '1417396905', '', '2', '0'),
(48, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'kpktkq1416817563', 'z', '', 0, 1417396909, 0, '我的微秀', '1417396905', '', '2', '0'),
(49, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'kpktkq1416817563', '', 'http://mmbiz.qpic.cn/mmbiz/OT6WNAYZJXpCQV30QgcHzMYCdL5sYVpt93cWYzeT2Gibp1SLpia9Q5PlET4chsHCzV5QLticMWS9kOZzb461g7NYg/0', 0, 1417396919, 0, '我的微秀', '1417396905', '', '2', '0'),
(50, 'osvmet3hbVmLNxwBee5V1iqNl3KA', 'kpktkq1416817563', '', '', 1069, 1417438002, 0, '我的微秀jzg', '1417438002', 'save', '16', '0'),
(51, 'osvmet7R_zuvwGKOAYWaIjcK-jOw', 'kpktkq1416817563', '', '', 1034, 1417442665, 0, '我的微秀', '1417442665', '', '5', '0'),
(52, 'osvmet7R_zuvwGKOAYWaIjcK-jOw', 'kpktkq1416817563', '微秀', '', 1034, 1417442680, 0, '我的微秀', '1417442665', '', '5', '0'),
(53, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'kpktkq1416817563', '', '', 1, 1417442879, 0, '我的微秀', '1417442879', '', '3', '0'),
(54, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'kpktkq1416817563', '撒旦撒旦撒旦', '', 0, 1417442880, 0, '我的微秀', '1417442879', '', '3', '0'),
(55, 'osvmet7R_zuvwGKOAYWaIjcK-jOw', 'kpktkq1416817563', '', '', 1, 1417442881, 0, '我的微秀', '1417442881', 'save', '14', '0'),
(56, 'osvmet7R_zuvwGKOAYWaIjcK-jOw', 'kpktkq1416817563', '', 'http://mmbiz.qpic.cn/mmbiz/bU73Z8oVWaFYzOrAXH1x6yOUlWyrxWEbHEvq2WO5bzHS9oARhInMkMIxUn7DuDEEROMGV4GjKmpGgBzIDZIHCQ/0', 0, 1417442902, 0, '我的微秀', '1417442881', 'save', '14', '0'),
(57, 'osvmet7R_zuvwGKOAYWaIjcK-jOw', 'kpktkq1416817563', '', 'http://mmbiz.qpic.cn/mmbiz/bU73Z8oVWaFYzOrAXH1x6yOUlWyrxWEb0Dkgz7lozy9q3QQd2DiaOhAdTHIszZjJI6Qq5Q6JsVRmrVxnzOE1iblA/0', 0, 1417442902, 0, '我的微秀', '1417442881', 'save', '14', '0'),
(58, 'osvmet7R_zuvwGKOAYWaIjcK-jOw', 'kpktkq1416817563', '', 'http://mmbiz.qpic.cn/mmbiz/bU73Z8oVWaFYzOrAXH1x6yOUlWyrxWEbp81CIsm8BKLdTT5wrBwictvhUdmQugia73eNwvEz4XUF1lOneLtzCqgQ/0', 0, 1417442903, 0, '我的微秀', '1417442881', 'save', '14', '0'),
(59, 'osvmet7R_zuvwGKOAYWaIjcK-jOw', 'kpktkq1416817563', '', 'http://mmbiz.qpic.cn/mmbiz/bU73Z8oVWaFYzOrAXH1x6yOUlWyrxWEbSGib6wLHR1PjDfIOHXIevl7yNeALicwcfPZuYmAia6FTRRQibxIz9nnG3w/0', 0, 1417442903, 0, '我的微秀', '1417442881', 'save', '14', '0'),
(60, 'osvmet7R_zuvwGKOAYWaIjcK-jOw', 'kpktkq1416817563', '', 'http://mmbiz.qpic.cn/mmbiz/bU73Z8oVWaFYzOrAXH1x6yOUlWyrxWEb3wcJHkBbdgpUFU9A8ugbSAde8HcwJicdTTibhTyuCey1VJtYA6KR5qDw/0', 0, 1417442903, 0, '我的微秀', '1417442881', 'save', '14', '0'),
(61, 'osvmet7R_zuvwGKOAYWaIjcK-jOw', 'kpktkq1416817563', '', 'http://mmbiz.qpic.cn/mmbiz/bU73Z8oVWaFYzOrAXH1x6yOUlWyrxWEbicicRkcHyh9N1z2BpicuYta7ibDff2AeibuiaxKqdhaZ1Bd1ib9vfvysqibfPQ/0', 0, 1417442904, 0, '我的微秀', '1417442881', 'save', '14', '0'),
(62, 'osvmet7R_zuvwGKOAYWaIjcK-jOw', 'kpktkq1416817563', '', 'http://mmbiz.qpic.cn/mmbiz/bU73Z8oVWaFYzOrAXH1x6yOUlWyrxWEb88FoUEzDfEPrvAV9ok1ia4Pf8ibh5ml9VmIHwLRAwfyPVWeicexMq8TIg/0', 0, 1417442904, 0, '我的微秀', '1417442881', 'save', '14', '0'),
(63, 'osvmet7R_zuvwGKOAYWaIjcK-jOw', 'kpktkq1416817563', '', 'http://mmbiz.qpic.cn/mmbiz/bU73Z8oVWaFYzOrAXH1x6yOUlWyrxWEbSGib6wLHR1PjDfIOHXIevl7yNeALicwcfPZuYmAia6FTRRQibxIz9nnG3w/0', 0, 1417442904, 0, '我的微秀', '1417442881', 'save', '14', '0'),
(64, 'osvmet7R_zuvwGKOAYWaIjcK-jOw', 'kpktkq1416817563', '', 'http://mmbiz.qpic.cn/mmbiz/bU73Z8oVWaFYzOrAXH1x6yOUlWyrxWEbVsdIFwaNuicNT1c4T3iczqDYrFAre1icW1VoOrP3VnueLBgIweNZfjD8Q/0', 0, 1417442905, 0, '我的微秀', '1417442881', 'save', '14', '0');

-- --------------------------------------------------------

--
-- 表的结构 `tp_knwxreplay`
--

CREATE TABLE IF NOT EXISTS `tp_knwxreplay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `jianjie` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `gzlj` varchar(255) DEFAULT NULL,
  `open` int(1) DEFAULT NULL,
  `banquan` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- 转存表中的数据 `tp_knwxreplay`
--

INSERT INTO `tp_knwxreplay` (`id`, `token`, `title`, `pic`, `jianjie`, `keyword`, `gzlj`, `open`, `banquan`) VALUES
(18, 'kpktkq1416817563', '贺卡', '', '贺卡', '', '', 1, '贺卡'),
(19, 'mbeboo1416823194', '111', 'http://p79.wzbywy.com/tpl/static/attachment/icon/canyin/canyin_red/17.png', '111', '', '1111', 1, '是'),
(20, 'htedog1417267111', '欢迎使用卡妞微秀制作功能！', 'http://demo.weiqianlong.com/tpl/static/attachment/background/view/2.jpg', '欢迎使用卡妞微秀制作功能！', '', 'http://mp.weixin.qq.com/s?__biz=MzA4OTAxODA3Nw==&amp;mid=201840228&amp;idx=1&amp;sn=1c6b32f9a3bc762d6a21d216177f9f44#rd', 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_leave`
--

CREATE TABLE IF NOT EXISTS `tp_leave` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(60) NOT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(60) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `token` varchar(60) NOT NULL,
  `time` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_links`
--

CREATE TABLE IF NOT EXISTS `tp_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `url` char(255) NOT NULL,
  `status` varchar(1) NOT NULL,
  `agentid` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_links`
--

INSERT INTO `tp_links` (`id`, `name`, `url`, `status`, `agentid`) VALUES
(1, '微乐分享', 'http://ImWeile.Com/', '1', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_live`
--

CREATE TABLE IF NOT EXISTS `tp_live` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `show_company` enum('0','1') NOT NULL,
  `name` char(50) NOT NULL,
  `keyword` char(40) NOT NULL,
  `open_pic` char(120) NOT NULL,
  `is_masking` enum('0','1') NOT NULL,
  `masking_pic` char(120) NOT NULL,
  `intro` varchar(500) NOT NULL,
  `music` char(120) NOT NULL,
  `end_pic` char(120) NOT NULL,
  `share_bg` char(120) NOT NULL,
  `share_button` char(120) NOT NULL,
  `add_time` char(11) NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  `token` char(25) CHARACTER SET cp1251 COLLATE cp1251_bin NOT NULL,
  `warn` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_live_company`
--

CREATE TABLE IF NOT EXISTS `tp_live_company` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `name` char(50) NOT NULL,
  `bg_pic` char(120) NOT NULL,
  `top_pic` char(120) NOT NULL,
  `company_id` int(10) unsigned NOT NULL,
  `live_id` int(10) unsigned NOT NULL,
  `sort` tinyint(3) unsigned NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `show_map` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_live_content`
--

CREATE TABLE IF NOT EXISTS `tp_live_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL,
  `bg_pic` char(120) NOT NULL,
  `movie_pic` char(120) NOT NULL,
  `movie_link` char(200) NOT NULL,
  `type` enum('1','2') NOT NULL,
  `sort` tinyint(4) unsigned NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `token` char(25) NOT NULL,
  `add_time` char(11) NOT NULL,
  `live_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_lottery`
--

CREATE TABLE IF NOT EXISTS `tp_lottery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joinnum` int(11) NOT NULL COMMENT '参与人数',
  `click` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `starpicurl` varchar(100) NOT NULL COMMENT '填写活动开始图片网址',
  `title` varchar(60) NOT NULL COMMENT '活动名称',
  `txt` varchar(60) NOT NULL COMMENT '用户输入兑奖时候的显示信息',
  `sttxt` varchar(200) NOT NULL COMMENT '简介',
  `statdate` int(11) NOT NULL COMMENT '活动开始时间',
  `enddate` int(11) NOT NULL COMMENT '活动结束时间',
  `info` varchar(200) NOT NULL COMMENT '活动说明',
  `aginfo` varchar(200) NOT NULL COMMENT '重复抽奖回复',
  `endtite` varchar(60) NOT NULL COMMENT '活动结束公告主题',
  `endpicurl` varchar(100) NOT NULL,
  `endinfo` varchar(60) NOT NULL,
  `fist` varchar(50) NOT NULL COMMENT '一等奖奖品设置',
  `fistnums` int(4) NOT NULL COMMENT '一等奖奖品数量',
  `fistlucknums` int(1) NOT NULL COMMENT '一等奖中奖号码',
  `second` varchar(50) NOT NULL COMMENT '二等奖奖品设置',
  `type` tinyint(1) NOT NULL,
  `secondnums` int(4) NOT NULL,
  `secondlucknums` int(1) NOT NULL,
  `third` varchar(50) NOT NULL,
  `thirdnums` int(4) NOT NULL,
  `thirdlucknums` int(1) NOT NULL,
  `allpeople` int(11) NOT NULL,
  `canrqnums` int(2) NOT NULL COMMENT '个人限制抽奖次数',
  `parssword` int(15) NOT NULL,
  `renamesn` varchar(50) NOT NULL DEFAULT '',
  `renametel` varchar(60) NOT NULL,
  `displayjpnums` int(1) NOT NULL,
  `createtime` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `four` varchar(50) NOT NULL,
  `fournums` int(11) NOT NULL,
  `fourlucknums` int(11) NOT NULL,
  `five` varchar(50) NOT NULL,
  `fivenums` int(11) NOT NULL,
  `fivelucknums` int(11) NOT NULL,
  `six` varchar(50) NOT NULL COMMENT '六等奖',
  `sixnums` int(11) NOT NULL,
  `sixlucknums` int(11) NOT NULL,
  `zjpic` varchar(150) NOT NULL DEFAULT '',
  `daynums` mediumint(4) NOT NULL DEFAULT '0',
  `maxgetprizenum` mediumint(4) NOT NULL DEFAULT '1',
  `needreg` tinyint(1) NOT NULL DEFAULT '0',
  `mpguanzhuurl` varchar(250) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_lottery_cheat`
--

CREATE TABLE IF NOT EXISTS `tp_lottery_cheat` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `lid` int(10) NOT NULL DEFAULT '0',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `prizetype` mediumint(4) NOT NULL DEFAULT '0',
  `intro` varchar(60) NOT NULL DEFAULT '',
  `code` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `lid` (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_lottery_record`
--

CREATE TABLE IF NOT EXISTS `tp_lottery_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) NOT NULL,
  `usenums` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户使用次数',
  `wecha_id` varchar(60) NOT NULL COMMENT '微信唯一识别码',
  `token` varchar(30) NOT NULL,
  `islottery` int(1) NOT NULL COMMENT '是否中奖',
  `wecha_name` varchar(60) NOT NULL COMMENT '微信号',
  `phone` varchar(15) NOT NULL,
  `sn` varchar(13) NOT NULL COMMENT '中奖后序列号',
  `time` int(11) NOT NULL,
  `prize` varchar(50) NOT NULL DEFAULT '' COMMENT '已中奖项',
  `sendstutas` int(11) NOT NULL DEFAULT '0',
  `sendtime` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(250) NOT NULL,
  `prizetype` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`,`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_mail`
--

CREATE TABLE IF NOT EXISTS `tp_mail` (
  `email` text NOT NULL,
  `token` varchar(60) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `smtpserver` varchar(40) NOT NULL DEFAULT '',
  `port` varchar(40) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(60) NOT NULL DEFAULT '',
  `receive` varchar(60) NOT NULL DEFAULT '',
  `shangcheng` tinyint(1) NOT NULL DEFAULT '0',
  `yuyue` tinyint(1) NOT NULL DEFAULT '0',
  `dingdan` tinyint(1) NOT NULL DEFAULT '0',
  `biaodan` tinyint(1) NOT NULL DEFAULT '0',
  `toupiao` tinyint(1) NOT NULL DEFAULT '0',
  `emailuser` text NOT NULL,
  `emailpassword` text NOT NULL,
  `emailstatus` text NOT NULL,
  PRIMARY KEY (`token`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tp_market`
--

CREATE TABLE IF NOT EXISTS `tp_market` (
  `market_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL,
  `title` char(30) NOT NULL,
  `keyword` char(20) NOT NULL,
  `tel` char(25) NOT NULL,
  `address` varchar(100) NOT NULL,
  `longitude` char(20) NOT NULL,
  `latitude` char(20) NOT NULL,
  `line` varchar(100) NOT NULL,
  `intro` text NOT NULL,
  `logo_pic` char(100) NOT NULL,
  `token` char(20) NOT NULL,
  `market_index_tpl` mediumint(9) NOT NULL,
  `tenant_index_tpl` mediumint(9) NOT NULL,
  `tenant_list_tpl` mediumint(9) NOT NULL,
  PRIMARY KEY (`market_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_market`
--

INSERT INTO `tp_market` (`market_id`, `name`, `title`, `keyword`, `tel`, `address`, `longitude`, `latitude`, `line`, `intro`, `logo_pic`, `token`, `market_index_tpl`, `tenant_index_tpl`, `tenant_list_tpl`) VALUES
(1, '商圈', '商圈', '商圈', '0779-7122266', '廉州大道1号(百家惠超市4-5楼)(合浦客运中心斜对面)', '109.216448', '21.682216', '商圈', '商圈', './tpl/static/market/default.jpg', 'mbeboo1416823194', 330, 116, 329);

-- --------------------------------------------------------

--
-- 表的结构 `tp_market_area`
--

CREATE TABLE IF NOT EXISTS `tp_market_area` (
  `area_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `area_name` char(35) NOT NULL,
  `manage` char(50) NOT NULL,
  `area_pic` char(100) NOT NULL,
  `area_intro` text NOT NULL,
  `is_use` enum('0','1') NOT NULL,
  `add_time` char(10) NOT NULL,
  `sort` tinyint(2) NOT NULL,
  `market_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`area_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_market_cate`
--

CREATE TABLE IF NOT EXISTS `tp_market_cate` (
  `cate_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cate_name` char(35) NOT NULL,
  `cate_pic` char(100) NOT NULL,
  `cate_intro` varchar(200) NOT NULL,
  `cate_pid` int(11) NOT NULL,
  `path_info` varchar(255) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `market_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_market_nav`
--

CREATE TABLE IF NOT EXISTS `tp_market_nav` (
  `nav_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nav_name` char(35) NOT NULL,
  `nav_pic` char(100) NOT NULL,
  `nav_link` varchar(300) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `market_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  `is_system` enum('0','1') NOT NULL,
  PRIMARY KEY (`nav_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `tp_market_nav`
--

INSERT INTO `tp_market_nav` (`nav_id`, `nav_name`, `nav_pic`, `nav_link`, `is_show`, `sort`, `market_id`, `token`, `is_system`) VALUES
(1, '商家', './tpl/static/attachment/icon/white/1.png', '{siteUrl}/index.php?g=Wap&m=Market&a=tenant&token=mbeboo1416823194&wecha_id={wechat_id}', '1', 100, 1, 'mbeboo1416823194', '1'),
(2, '停车场', './tpl/static/attachment/icon/white/4.png', '{siteUrl}/index.php?g=Wap&m=Market&a=park&token=mbeboo1416823194&wecha_id={wechat_id}', '1', 99, 1, 'mbeboo1416823194', '1'),
(3, '简介', './tpl/static/attachment/icon/white/9.png', '{siteUrl}/index.php?g=Wap&m=Market&a=intro&token=mbeboo1416823194&wecha_id={wechat_id}', '1', 98, 1, 'mbeboo1416823194', '1'),
(4, '团购', './tpl/static/attachment/icon/white/7.png', '{siteUrl}/index.php?g=Wap&m=Groupon&a=grouponIndex&token=mbeboo1416823194&wecha_id={wechat_id}', '1', 97, 1, 'mbeboo1416823194', '1'),
(5, 'tr5345', './tpl/static/attachment/icon/white/14.png', '{siteUrl}/index.php?g=Wap&amp;m=Panorama&amp;a=index&amp;token=mbeboo1416823194&amp;wecha_id={wechat_id}', '1', 96, 1, 'mbeboo1416823194', '0');

-- --------------------------------------------------------

--
-- 表的结构 `tp_market_park`
--

CREATE TABLE IF NOT EXISTS `tp_market_park` (
  `park_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `park_name` char(35) NOT NULL,
  `park_num` tinyint(4) NOT NULL,
  `park_intro` text NOT NULL,
  `is_use` enum('0','1') NOT NULL,
  `add_time` char(10) NOT NULL,
  `market_id` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`park_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_market_slide`
--

CREATE TABLE IF NOT EXISTS `tp_market_slide` (
  `slide_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slide_title` char(35) NOT NULL DEFAULT '',
  `slide_url` char(100) NOT NULL,
  `slide_link` char(80) NOT NULL,
  `market_id` int(11) NOT NULL,
  PRIMARY KEY (`slide_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `tp_market_slide`
--

INSERT INTO `tp_market_slide` (`slide_id`, `slide_title`, `slide_url`, `slide_link`, `market_id`) VALUES
(1, '', './tpl/static/attachment/focus/default/2.jpg', '', 1),
(2, '', './tpl/static/attachment/focus/default/3.jpg', '', 1),
(3, '', './tpl/static/attachment/focus/default/4.jpg', '', 1),
(4, '', '', '', 1),
(5, '', '', '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_medical`
--

CREATE TABLE IF NOT EXISTS `tp_medical` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `piccover` varchar(500) NOT NULL,
  `registrationtoppic` varchar(500) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `lat` varchar(30) NOT NULL,
  `lng` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `sms` varchar(100) NOT NULL,
  `open_email` varchar(50) NOT NULL,
  `open_sms` varchar(50) NOT NULL,
  `checked` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_medical_departments`
--

CREATE TABLE IF NOT EXISTS `tp_medical_departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_medical_set`
--

CREATE TABLE IF NOT EXISTS `tp_medical_set` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `head_url` varchar(200) NOT NULL DEFAULT '',
  `album_id` int(11) DEFAULT NULL,
  `menu1` varchar(20) NOT NULL DEFAULT '',
  `menu2` varchar(20) NOT NULL DEFAULT '',
  `menu3` varchar(20) NOT NULL DEFAULT '',
  `menu4` varchar(20) NOT NULL DEFAULT '',
  `menu5` varchar(20) NOT NULL DEFAULT '',
  `menu6` varchar(20) NOT NULL DEFAULT '',
  `menu7` varchar(20) NOT NULL DEFAULT '',
  `menu8` varchar(20) NOT NULL DEFAULT '',
  `menu9` varchar(50) DEFAULT '',
  `menu10` varchar(50) DEFAULT '',
  `picurl1` varchar(200) DEFAULT '',
  `picurl2` varchar(200) DEFAULT '',
  `picurl3` varchar(200) DEFAULT '',
  `picurl4` varchar(200) DEFAULT '',
  `picurl5` varchar(200) DEFAULT '',
  `picurl6` varchar(200) DEFAULT '',
  `picurl7` varchar(200) DEFAULT '',
  `picurl8` varchar(200) DEFAULT '',
  `picurl9` varchar(200) DEFAULT '',
  `picurl10` varchar(200) DEFAULT '',
  `hotfocus_id` int(11) NOT NULL,
  `experts_id` int(11) NOT NULL,
  `ceem_id` int(11) NOT NULL,
  `Rcase_id` int(11) NOT NULL,
  `technology_id` int(11) NOT NULL,
  `drug_id` int(11) NOT NULL,
  `evants_id` int(11) NOT NULL,
  `video` text NOT NULL,
  `symptoms_id` int(11) NOT NULL,
  `info` char(200) NOT NULL DEFAULT '',
  `path` varchar(3000) DEFAULT '0',
  `tpid` varchar(200) DEFAULT '1',
  `conttpid` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `keyword` (`keyword`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_medical_set`
--

INSERT INTO `tp_medical_set` (`id`, `keyword`, `title`, `token`, `head_url`, `album_id`, `menu1`, `menu2`, `menu3`, `menu4`, `menu5`, `menu6`, `menu7`, `menu8`, `menu9`, `menu10`, `picurl1`, `picurl2`, `picurl3`, `picurl4`, `picurl5`, `picurl6`, `picurl7`, `picurl8`, `picurl9`, `picurl10`, `hotfocus_id`, `experts_id`, `ceem_id`, `Rcase_id`, `technology_id`, `drug_id`, `evants_id`, `video`, `symptoms_id`, `info`, `path`, `tpid`, `conttpid`) VALUES
(1, '微医疗', '332', 'kpktkq1416817563', 'http://demo.weiqianlong.com/tpl/static/attachment/focus/default/2.jpg', 0, '医院简介', '热点聚焦', '医院专家', '尖端设备', '康复案例', '先进技术', '研发药物', '就医指南', '症状自查', '官方活动', 'http://demo.weiqianlong.com/tpl/User/default/common/images/photo/plugmenu6.png', 'http://demo.weiqianlong.com/tpl/User/default/common/images/photo/plugmenu7.png', 'http://demo.weiqianlong.com/tpl/User/default/common/images/photo/plugmenu6.png', 'http://demo.weiqianlong.com/tpl/User/default/common/images/photo/plugmenu7.png', 'http://demo.weiqianlong.com/tpl/User/default/common/images/photo/plugmenu7.png', 'http://demo.weiqianlong.com/tpl/User/default/common/images/photo/plugmenu5.png', 'http://demo.weiqianlong.com/tpl/User/default/common/images/photo/plugmenu6.png', 'http://demo.weiqianlong.com/tpl/User/default/common/images/photo/plugmenu5.png', 'http://demo.weiqianlong.com/tpl/User/default/common/images/photo/plugmenu11.png', 'http://demo.weiqianlong.com/tpl/User/default/common/images/photo/plugmenu14.png', 0, 0, 0, 0, 0, 0, 0, '', 0, '32sfsdfdgdfgxfgfhfgchcgfhf', '0', '0', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_medical_setup`
--

CREATE TABLE IF NOT EXISTS `tp_medical_setup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `age` varchar(20) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `scheduled_date` datetime NOT NULL,
  `address` varchar(500) NOT NULL,
  `departments` varchar(200) NOT NULL,
  `expert` varchar(200) NOT NULL,
  `disease` varchar(500) NOT NULL,
  `process` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_medical_setup_control`
--

CREATE TABLE IF NOT EXISTS `tp_medical_setup_control` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `age` varchar(20) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `scheduled_date` char(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `departments` varchar(200) NOT NULL,
  `expert` varchar(200) NOT NULL,
  `disease` varchar(500) NOT NULL,
  `Process` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_medical_user`
--

CREATE TABLE IF NOT EXISTS `tp_medical_user` (
  `iid` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `rid` int(11) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT '',
  `truename` varchar(50) NOT NULL DEFAULT '',
  `utel` char(13) NOT NULL,
  `dateline` varchar(50) NOT NULL,
  `sex` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `txt33` varchar(50) NOT NULL DEFAULT '',
  `txt44` varchar(50) NOT NULL DEFAULT '',
  `txt55` varchar(50) NOT NULL DEFAULT '',
  `yyks` varchar(50) NOT NULL DEFAULT '',
  `yyzj` varchar(50) NOT NULL DEFAULT '',
  `yybz` varchar(50) NOT NULL DEFAULT '',
  `yy4` varchar(50) NOT NULL DEFAULT '',
  `yy5` varchar(50) NOT NULL DEFAULT '',
  `uinfo` varchar(50) NOT NULL DEFAULT '',
  `kfinfo` varchar(100) NOT NULL DEFAULT '',
  `remate` int(10) NOT NULL DEFAULT '0',
  `booktime` int(11) DEFAULT NULL,
  `paid` tinyint(4) DEFAULT '0',
  `orderid` bigint(20) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `orderName` varchar(200) NOT NULL DEFAULT '',
  `txt3name` varchar(50) NOT NULL DEFAULT '',
  `txt4name` varchar(50) NOT NULL DEFAULT '',
  `txt5name` varchar(50) NOT NULL DEFAULT '',
  `select4name` varchar(50) NOT NULL DEFAULT '',
  `select5name` varchar(50) NOT NULL DEFAULT '',
  `date` datetime NOT NULL,
  PRIMARY KEY (`iid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `tp_medical_user`
--

INSERT INTO `tp_medical_user` (`iid`, `token`, `wecha_id`, `rid`, `type`, `truename`, `utel`, `dateline`, `sex`, `age`, `txt33`, `txt44`, `txt55`, `yyks`, `yyzj`, `yybz`, `yy4`, `yy5`, `uinfo`, `kfinfo`, `remate`, `booktime`, `paid`, `orderid`, `price`, `orderName`, `txt3name`, `txt4name`, `txt5name`, `select4name`, `select5name`, `date`) VALUES
(1, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 2, 'medical', 'sfsfs', '18267720555', '2014-11-30', 1, 11, '', '', '', '', '', '', '', '', '', '', 0, 1417180694, 1, 141128211814480003, '111.00', ':::', '', '', '', '', '', '0000-00-00 00:00:00'),
(2, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 2, 'medical', 'sfsfs', '18267720555', '2014-11-30', 1, 11, '', '', '', '', '', '', '', '', '', '', 0, 1417180760, 1, 141128211920295445, '0.00', ':::', '', '', '', '', '', '0000-00-00 00:00:00'),
(3, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 2, 'medical', 'sfsfs', '18267720555', '2014-11-30', 1, 11, '', '', '', '', '', '', '', '', '', '', 0, 1417180855, 1, 141128212055786728, '0.00', ':::', '', '', '', '', '', '0000-00-00 00:00:00'),
(4, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 2, 'medical', 'sfsfs', '18267720555', '2014-11-30', 1, 11, '', '', '', '', '', '', '', '', '', '', 0, 1417180875, 1, 141128212115095666, '0.00', ':::', '', '', '', '', '', '0000-00-00 00:00:00'),
(5, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 2, 'medical', 'sfsfs', '18267720555', '2014-11-30', 1, 11, '', '', '', '', '', '', '', '', '', '', 0, 1417180899, 1, 141128212139488775, '0.00', ':::', '', '', '', '', '', '0000-00-00 00:00:00'),
(6, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 2, 'medical', 'sfsfs', '18267720555', '2014-11-30', 1, 11, '', '', '', '', '', '', '', '', '', '', 0, 1417182093, 1, 141128214133681635, '0.00', ':::', '', '', '', '', '', '0000-00-00 00:00:00'),
(7, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 2, 'medical', 'sfsfs', '18267720555', '2014-11-30', 1, 11, '', '', '', '', '', '', '', '', '', '', 0, 1417182180, 1, 141128214300063483, '0.00', ':::', '', '', '', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `tp_member`
--

CREATE TABLE IF NOT EXISTS `tp_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `isopen` int(1) NOT NULL,
  `homepic` varchar(100) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_memberflash`
--

CREATE TABLE IF NOT EXISTS `tp_memberflash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `img` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `info` varchar(90) NOT NULL,
  `tip` smallint(11) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tip` (`tip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_card_contact`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `cname` varchar(30) NOT NULL,
  `tel` varchar(12) NOT NULL,
  `sort` tinyint(1) NOT NULL,
  `info` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_card_coupon`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_coupon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic` char(150) NOT NULL,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `group` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `attr` enum('0','1') NOT NULL,
  `price` int(11) NOT NULL,
  `people` int(3) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` text NOT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `tp_member_card_coupon`
--

INSERT INTO `tp_member_card_coupon` (`id`, `pic`, `cardid`, `token`, `title`, `group`, `type`, `attr`, `price`, `people`, `statdate`, `enddate`, `info`, `usetime`, `create_time`) VALUES
(1, '/tpl/User/default/common/images/cart_info/daijin.png', 1, 'kpktkq1416817563', '优惠券', 1, 0, '0', 22, 1, 1417276800, 1418140800, '阿斯达斯的', 1, 1417356080),
(4, '/tpl/User/default/common/images/cart_info/youhui.jpg', 1, 'kpktkq1416817563', '发布优惠券', 1, 1, '0', 12, 11, 1417363200, 1418227200, '12', 0, 1417432464);

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_card_coupon_record`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_coupon_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `wecha_id` char(40) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `coupon_type` enum('1','2','3') NOT NULL,
  `is_use` enum('0','1') NOT NULL,
  `cardid` int(11) NOT NULL,
  `add_time` char(11) NOT NULL,
  `use_time` char(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `tp_member_card_coupon_record`
--

INSERT INTO `tp_member_card_coupon_record` (`id`, `token`, `wecha_id`, `coupon_id`, `coupon_type`, `is_use`, `cardid`, `add_time`, `use_time`) VALUES
(1, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 1, '2', '0', 1, '1417356213', ''),
(2, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 1, '3', '0', 1, '1417356221', ''),
(3, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 3, '1', '0', 1, '1417356526', ''),
(4, 'kpktkq1416817563', '{wechat_id}', 0, '1', '0', 1, '1417358769', ''),
(5, 'kpktkq1416817563', '{wechat_id}', 3, '1', '0', 1, '1417358777', ''),
(6, 'kpktkq1416817563', '{wechat_id}', 1, '2', '0', 1, '1417358784', ''),
(7, 'kpktkq1416817563', '{wechat_id}', 1, '3', '0', 1, '1417358790', ''),
(8, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 1, '3', '0', 1, '1417359740', ''),
(9, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 1, '3', '0', 1, '1417359742', ''),
(10, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 1, '3', '0', 1, '1417359875', ''),
(11, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 1, '2', '1', 1, '1417360472', '1417361009'),
(12, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 3, '1', '0', 1, '1417360498', ''),
(13, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 1, '3', '0', 1, '1417363338', ''),
(14, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 1, '3', '0', 1, '1417363350', ''),
(15, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 1, '3', '0', 1, '1417363356', ''),
(16, 'kpktkq1416817563', '{wechat_id}', 4, '1', '0', 1, '1417432479', ''),
(17, 'kpktkq1416817563', '{wechat_id}', 1, '3', '0', 1, '1417432491', '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_card_create`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_create` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `number` varchar(20) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100 ;

--
-- 转存表中的数据 `tp_member_card_create`
--

INSERT INTO `tp_member_card_create` (`id`, `cardid`, `token`, `number`, `wecha_id`) VALUES
(1, 1, 'kpktkq1416817563', 'cs2', 'osvmet3oEgq-yXCbwnU6NP8u6ayc'),
(2, 1, 'kpktkq1416817563', 'cs3', 'osvmet4uw_C9vLaGrCcZPRrNCZlY'),
(3, 1, 'kpktkq1416817563', 'cs4', '{wechat_id}'),
(4, 1, 'kpktkq1416817563', 'cs5', ''),
(5, 1, 'kpktkq1416817563', 'cs6', ''),
(6, 1, 'kpktkq1416817563', 'cs7', ''),
(7, 1, 'kpktkq1416817563', 'cs8', ''),
(8, 1, 'kpktkq1416817563', 'cs9', ''),
(9, 1, 'kpktkq1416817563', 'cs10', ''),
(10, 1, 'kpktkq1416817563', 'cs11', ''),
(11, 1, 'kpktkq1416817563', 'cs12', ''),
(12, 1, 'kpktkq1416817563', 'cs13', ''),
(13, 1, 'kpktkq1416817563', 'cs14', ''),
(14, 1, 'kpktkq1416817563', 'cs15', ''),
(15, 1, 'kpktkq1416817563', 'cs16', ''),
(16, 1, 'kpktkq1416817563', 'cs17', ''),
(17, 1, 'kpktkq1416817563', 'cs18', ''),
(18, 1, 'kpktkq1416817563', 'cs19', ''),
(19, 1, 'kpktkq1416817563', 'cs20', ''),
(20, 1, 'kpktkq1416817563', 'cs21', ''),
(21, 1, 'kpktkq1416817563', 'cs22', ''),
(22, 1, 'kpktkq1416817563', 'cs23', ''),
(23, 1, 'kpktkq1416817563', 'cs24', ''),
(24, 1, 'kpktkq1416817563', 'cs25', ''),
(25, 1, 'kpktkq1416817563', 'cs26', ''),
(26, 1, 'kpktkq1416817563', 'cs27', ''),
(27, 1, 'kpktkq1416817563', 'cs28', ''),
(28, 1, 'kpktkq1416817563', 'cs29', ''),
(29, 1, 'kpktkq1416817563', 'cs30', ''),
(30, 1, 'kpktkq1416817563', 'cs31', ''),
(31, 1, 'kpktkq1416817563', 'cs32', ''),
(32, 1, 'kpktkq1416817563', 'cs33', ''),
(33, 1, 'kpktkq1416817563', 'cs34', ''),
(34, 1, 'kpktkq1416817563', 'cs35', ''),
(35, 1, 'kpktkq1416817563', 'cs36', ''),
(36, 1, 'kpktkq1416817563', 'cs37', ''),
(37, 1, 'kpktkq1416817563', 'cs38', ''),
(38, 1, 'kpktkq1416817563', 'cs39', ''),
(39, 1, 'kpktkq1416817563', 'cs40', ''),
(40, 1, 'kpktkq1416817563', 'cs41', ''),
(41, 1, 'kpktkq1416817563', 'cs42', ''),
(42, 1, 'kpktkq1416817563', 'cs43', ''),
(43, 1, 'kpktkq1416817563', 'cs44', ''),
(44, 1, 'kpktkq1416817563', 'cs45', ''),
(45, 1, 'kpktkq1416817563', 'cs46', ''),
(46, 1, 'kpktkq1416817563', 'cs47', ''),
(47, 1, 'kpktkq1416817563', 'cs48', ''),
(48, 1, 'kpktkq1416817563', 'cs49', ''),
(49, 1, 'kpktkq1416817563', 'cs50', ''),
(50, 1, 'kpktkq1416817563', 'cs51', ''),
(51, 1, 'kpktkq1416817563', 'cs52', ''),
(52, 1, 'kpktkq1416817563', 'cs53', ''),
(53, 1, 'kpktkq1416817563', 'cs54', ''),
(54, 1, 'kpktkq1416817563', 'cs55', ''),
(55, 1, 'kpktkq1416817563', 'cs56', ''),
(56, 1, 'kpktkq1416817563', 'cs57', ''),
(57, 1, 'kpktkq1416817563', 'cs58', ''),
(58, 1, 'kpktkq1416817563', 'cs59', ''),
(59, 1, 'kpktkq1416817563', 'cs60', ''),
(60, 1, 'kpktkq1416817563', 'cs61', ''),
(61, 1, 'kpktkq1416817563', 'cs62', ''),
(62, 1, 'kpktkq1416817563', 'cs63', ''),
(63, 1, 'kpktkq1416817563', 'cs64', ''),
(64, 1, 'kpktkq1416817563', 'cs65', ''),
(65, 1, 'kpktkq1416817563', 'cs66', ''),
(66, 1, 'kpktkq1416817563', 'cs67', ''),
(67, 1, 'kpktkq1416817563', 'cs68', ''),
(68, 1, 'kpktkq1416817563', 'cs69', ''),
(69, 1, 'kpktkq1416817563', 'cs70', ''),
(70, 1, 'kpktkq1416817563', 'cs71', ''),
(71, 1, 'kpktkq1416817563', 'cs72', ''),
(72, 1, 'kpktkq1416817563', 'cs73', ''),
(73, 1, 'kpktkq1416817563', 'cs74', ''),
(74, 1, 'kpktkq1416817563', 'cs75', ''),
(75, 1, 'kpktkq1416817563', 'cs76', ''),
(76, 1, 'kpktkq1416817563', 'cs77', ''),
(77, 1, 'kpktkq1416817563', 'cs78', ''),
(78, 1, 'kpktkq1416817563', 'cs79', ''),
(79, 1, 'kpktkq1416817563', 'cs80', ''),
(80, 1, 'kpktkq1416817563', 'cs81', ''),
(81, 1, 'kpktkq1416817563', 'cs82', ''),
(82, 1, 'kpktkq1416817563', 'cs83', ''),
(83, 1, 'kpktkq1416817563', 'cs84', ''),
(84, 1, 'kpktkq1416817563', 'cs85', ''),
(85, 1, 'kpktkq1416817563', 'cs86', ''),
(86, 1, 'kpktkq1416817563', 'cs87', ''),
(87, 1, 'kpktkq1416817563', 'cs88', ''),
(88, 1, 'kpktkq1416817563', 'cs89', ''),
(89, 1, 'kpktkq1416817563', 'cs90', ''),
(90, 1, 'kpktkq1416817563', 'cs91', ''),
(91, 1, 'kpktkq1416817563', 'cs92', ''),
(92, 1, 'kpktkq1416817563', 'cs93', ''),
(93, 1, 'kpktkq1416817563', 'cs94', ''),
(94, 1, 'kpktkq1416817563', 'cs95', ''),
(95, 1, 'kpktkq1416817563', 'cs96', ''),
(96, 1, 'kpktkq1416817563', 'cs97', ''),
(97, 1, 'kpktkq1416817563', 'cs98', ''),
(98, 1, 'kpktkq1416817563', 'cs99', ''),
(99, 1, 'kpktkq1416817563', 'cs100', '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_card_custom`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_custom` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(40) NOT NULL,
  `wechaname` tinyint(4) NOT NULL DEFAULT '1',
  `tel` tinyint(4) NOT NULL DEFAULT '1',
  `truename` tinyint(4) NOT NULL DEFAULT '0',
  `qq` tinyint(4) NOT NULL DEFAULT '0',
  `paypass` tinyint(4) NOT NULL DEFAULT '1',
  `portrait` tinyint(4) NOT NULL DEFAULT '0',
  `sex` tinyint(4) NOT NULL DEFAULT '0',
  `bornyear` tinyint(4) NOT NULL DEFAULT '0',
  `bornmonth` tinyint(4) NOT NULL DEFAULT '0',
  `bornday` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_card_exchange`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_exchange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` mediumint(8) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `everyday` tinyint(4) NOT NULL,
  `continuation` tinyint(4) NOT NULL,
  `reward` tinyint(4) NOT NULL,
  `cardinfo` text NOT NULL,
  `cardinfo2` text NOT NULL,
  `create_time` int(11) NOT NULL,
  `discount` int(4) NOT NULL COMMENT '充值折扣',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_card_focus`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_focus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `info` varchar(300) DEFAULT NULL,
  `img` varchar(200) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `token` char(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_card_gifts`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_gifts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(50) NOT NULL,
  `type` enum('1','2') NOT NULL,
  `item_value` int(11) NOT NULL,
  `item_attr` char(50) NOT NULL,
  `start` char(11) NOT NULL,
  `end` char(11) NOT NULL,
  `token` char(25) NOT NULL,
  `cardid` int(11) NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_member_card_gifts`
--

INSERT INTO `tp_member_card_gifts` (`id`, `name`, `type`, `item_value`, `item_attr`, `start`, `end`, `token`, `cardid`, `is_open`) VALUES
(1, '黄金版', '2', 0, '1', '1415030400', '1417363200', 'kpktkq1416817563', 1, '1');

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_card_info`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `info` varchar(200) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `description` varchar(12) NOT NULL,
  `class` tinyint(1) NOT NULL,
  `password` varchar(11) NOT NULL,
  `crate_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_card_integral`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_integral` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `integral` int(8) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` varchar(200) NOT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  `pic` char(150) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_member_card_integral`
--

INSERT INTO `tp_member_card_integral` (`id`, `cardid`, `token`, `title`, `integral`, `statdate`, `enddate`, `info`, `usetime`, `create_time`, `pic`) VALUES
(1, 1, 'kpktkq1416817563', '礼品券', 0, 1417356092, 1418220092, '1212', 0, 1417356098, '/tpl/User/default/common/images/cart_info/lipin.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_card_myintegral`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_myintegral` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `integral` int(8) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` text NOT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_card_notice`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_notice` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `title` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `endtime` int(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_member_card_notice`
--

INSERT INTO `tp_member_card_notice` (`id`, `cardid`, `title`, `content`, `endtime`, `time`) VALUES
(1, 1, '侧谔谔', '侧谔谔', 1417881599, 1417015670);

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_card_pay_record`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_pay_record` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orderid` char(30) NOT NULL,
  `ordername` varchar(1000) NOT NULL,
  `transactionid` varchar(100) DEFAULT NULL,
  `paytype` char(30) DEFAULT NULL,
  `createtime` int(11) NOT NULL,
  `paytime` int(11) DEFAULT NULL,
  `paid` tinyint(4) NOT NULL DEFAULT '0',
  `price` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `token` char(50) NOT NULL,
  `wecha_id` char(50) NOT NULL,
  `module` varchar(30) NOT NULL DEFAULT 'Card',
  `type` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `tp_member_card_pay_record`
--

INSERT INTO `tp_member_card_pay_record` (`id`, `orderid`, `ordername`, `transactionid`, `paytype`, `createtime`, `paytime`, `paid`, `price`, `token`, `wecha_id`, `module`, `type`) VALUES
(1, '201411262307384158', 'cs2 充值', '', '', 1417014458, 0, 0, 1.00, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 'Card', 1),
(2, '201411262311593267', 'cs2 充值', '', '', 1417014719, 0, 0, 11.00, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 'Card', 1),
(3, '201411262313108904', 'cs2 充值', '', '', 1417014790, 0, 0, 1.00, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 'Card', 1),
(4, '201411262327092429', '后台手动充值', '', 'recharge', 1417015629, 1417015629, 1, 88888.00, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 'Card', 1),
(5, 'c20141126233739', 'c20141126233739', '', 'CardPay', 1417016267, 0, 1, 12.00, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 'Card', 0),
(6, 'c20141127001334', 'c20141127001334', '', 'CardPay', 1417018422, 0, 1, 12.00, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 'Card', 0),
(7, 'c20141127204229', 'c20141127204229', '', 'CardPay', 1417092158, 0, 1, 13.00, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 'Card', 0),
(8, '201411302323294892', '现金支付除优惠劵外的款项', '', 'CardPay', 1417361009, 0, 0, 222.00, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'Card', 0),
(9, '201411302323586361', 'cs3 充值', '', 'daofu', 1417361038, 0, 0, 22444.00, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'Card', 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_card_rule`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_rule` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `percent_rule` varchar(100) NOT NULL COMMENT '百分比返还',
  `fixed_rule` text NOT NULL COMMENT '固定返还',
  PRIMARY KEY (`id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_card_set`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `cardname` varchar(60) NOT NULL,
  `miniscore` int(10) NOT NULL DEFAULT '0',
  `logo` varchar(200) NOT NULL,
  `bg` varchar(100) NOT NULL,
  `diybg` varchar(200) NOT NULL,
  `info` text NOT NULL,
  `msg` varchar(100) NOT NULL,
  `numbercolor` varchar(10) NOT NULL,
  `vipnamecolor` varchar(10) NOT NULL,
  `Lastmsg` varchar(100) NOT NULL,
  `vip` varchar(100) NOT NULL,
  `qiandao` varchar(100) NOT NULL,
  `shopping` varchar(100) NOT NULL,
  `memberinfo` varchar(100) NOT NULL,
  `membermsg` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `create_time` int(11) NOT NULL,
  `recharge` varchar(100) NOT NULL DEFAULT '/tpl/User/default/common/images/cart_info/recharge.jpg',
  `payrecord` varchar(100) NOT NULL DEFAULT '/tpl/User/default/common/images/cart_info/payrecord.jpg',
  `sm` text NOT NULL,
  `cj` char(255) NOT NULL,
  `tl` char(255) NOT NULL,
  `company_pwd` char(32) NOT NULL,
  `is_check` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `miniscore` (`miniscore`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_member_card_set`
--

INSERT INTO `tp_member_card_set` (`id`, `token`, `cardname`, `miniscore`, `logo`, `bg`, `diybg`, `info`, `msg`, `numbercolor`, `vipnamecolor`, `Lastmsg`, `vip`, `qiandao`, `shopping`, `memberinfo`, `membermsg`, `contact`, `create_time`, `recharge`, `payrecord`, `sm`, `cj`, `tl`, `company_pwd`, `is_check`) VALUES
(1, 'kpktkq1416817563', '微乾隆', 0, '/tpl/User/default/common/images/cart_info/logo-card.png', './tpl/User/default/common/images/card/card_bg15.png', '', '', '微信会员卡，方便携带收藏，永不挂失', '#000000', '#121212', '/tpl/User/default/common/images/cart_info/news.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/qiandao.jpg', '/tpl/User/default/common/images/cart_info/shopping.jpg', '/tpl/User/default/common/images/cart_info/user.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/addr.jpg', 1416833617, '/tpl/User/default/common/images/cart_info/recharge.jpg', '/tpl/User/default/common/images/cart_info/payrecord.jpg', '', '', '', '', '0'),
(2, 'mbeboo1416823194', '微乾隆 新版演示站会员卡', 545, '/tpl/User/default/common/images/cart_info/logo-card.png', './tpl/User/default/common/images/card/card_bg15.png', '', '454', '微信会员卡，方便携带收藏，永不挂失', '#000000', '#121212', '/tpl/User/default/common/images/cart_info/news.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/qiandao.jpg', '/tpl/User/default/common/images/cart_info/shopping.jpg', '/tpl/User/default/common/images/cart_info/user.jpg', '/tpl/User/default/common/images/cart_info/vippower.jpg', '/tpl/User/default/common/images/cart_info/addr.jpg', 1417228800, '/tpl/User/default/common/images/cart_info/recharge.jpg', '/tpl/User/default/common/images/cart_info/payrecord.jpg', '', '', '', '', '0');

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_card_sign`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_sign` (
  `id` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `sign_time` int(11) NOT NULL,
  `is_sign` int(11) NOT NULL,
  `score_type` int(11) NOT NULL,
  `expense` int(11) NOT NULL,
  `sell_expense` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_member_card_sign`
--

INSERT INTO `tp_member_card_sign` (`id`, `token`, `wecha_id`, `sign_time`, `is_sign`, `score_type`, `expense`, `sell_expense`) VALUES
(0, 'kpktkq1416817563', '{wechat_id}', 0, 0, 1, 0, 0),
(0, 'kpktkq1416817563', '{wechat_id}', 1417358821, 1, 1, 0, 0),
(0, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 0, 0, 1, 0, 0),
(0, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 1417363386, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_card_use_record`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_use_record` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `itemid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(30) NOT NULL DEFAULT '',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `staffid` int(10) NOT NULL DEFAULT '0',
  `cat` smallint(4) NOT NULL DEFAULT '0',
  `expense` mediumint(4) NOT NULL DEFAULT '0',
  `score` mediumint(4) NOT NULL DEFAULT '0',
  `usecount` mediumint(4) NOT NULL DEFAULT '1',
  `time` int(10) NOT NULL DEFAULT '0',
  `notes` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `itemid` (`itemid`,`cat`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `tp_member_card_use_record`
--

INSERT INTO `tp_member_card_use_record` (`id`, `itemid`, `token`, `wecha_id`, `staffid`, `cat`, `expense`, `score`, `usecount`, `time`, `notes`) VALUES
(1, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 0, 0, 0, 0, 0, 1417015641, ''),
(2, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 0, 99, 12, 0, 1, 1417016268, ''),
(3, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 0, 99, 12, 0, 1, 1417018422, ''),
(4, 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 0, 99, 13, 0, 1, 1417092158, ''),
(5, 2, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 0, 2, 0, 0, 1, 1417356221, ''),
(6, 1, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 1, 4, 11, 0, 1, 1417356694, '11'),
(7, 7, 'kpktkq1416817563', '{wechat_id}', 0, 2, 0, 0, 1, 1417358790, ''),
(8, 8, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 0, 2, 0, 0, 1, 1417359740, ''),
(9, 9, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 0, 2, 0, 0, 1, 1417359742, ''),
(10, 10, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 0, 2, 0, 0, 1, 1417359875, ''),
(11, 13, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 0, 2, 0, 0, 1, 1417363338, ''),
(12, 14, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 0, 2, 0, 0, 1, 1417363350, ''),
(13, 15, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 0, 2, 0, 0, 1, 1417363356, ''),
(14, 17, 'kpktkq1416817563', '{wechat_id}', 0, 2, 0, 0, 1, 1417432491, '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_card_vip`
--

CREATE TABLE IF NOT EXISTS `tp_member_card_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cardid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `group` tinyint(1) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `info` varchar(200) NOT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cardid` (`cardid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_member_card_vip`
--

INSERT INTO `tp_member_card_vip` (`id`, `cardid`, `token`, `title`, `group`, `type`, `statdate`, `enddate`, `info`, `usetime`, `create_time`) VALUES
(1, 1, 'kpktkq1416817563', '特权名称', 0, 1, 0, 0, '&lt;span style=&quot;color:#444444;font-family:&apos;Microsoft YaHei&apos;, Helvitica, Verdana, Arial, san-serif;font-size:14px;font-weight:bold;line-height:21px;background-color:#FFFFFF;&quot;&gt;特权名', 1, 1417356110);

-- --------------------------------------------------------

--
-- 表的结构 `tp_member_wei_category`
--

CREATE TABLE IF NOT EXISTS `tp_member_wei_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL DEFAULT '',
  `title` varchar(60) NOT NULL DEFAULT '',
  `displayorder` smallint(10) NOT NULL DEFAULT '0',
  `summary` varchar(1000) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_moopha_article`
--

CREATE TABLE IF NOT EXISTS `tp_moopha_article` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `channel_id` int(10) NOT NULL,
  `token` varchar(50) NOT NULL,
  `site` int(4) NOT NULL DEFAULT '1',
  `title` varchar(200) NOT NULL,
  `titles` varchar(400) NOT NULL DEFAULT '',
  `subtitle` varchar(200) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `externallink` tinyint(1) NOT NULL DEFAULT '0',
  `thumb` varchar(100) DEFAULT NULL,
  `content` longtext,
  `intro` varchar(2000) NOT NULL,
  `author` varchar(20) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `keywords` varchar(300) DEFAULT NULL,
  `uid` varchar(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  `last_update` int(10) NOT NULL,
  `viewcount` int(10) NOT NULL DEFAULT '0',
  `template` varchar(50) DEFAULT NULL,
  `pagecount` tinyint(2) NOT NULL DEFAULT '1',
  `disagree` int(10) NOT NULL DEFAULT '0',
  `cancomment` tinyint(1) NOT NULL DEFAULT '1',
  `commentcount` int(10) NOT NULL DEFAULT '0',
  `agree` int(10) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  `lastcreate` int(10) NOT NULL DEFAULT '1400000000',
  `sourcetype` smallint(2) NOT NULL DEFAULT '0',
  `ex` tinyint(1) DEFAULT '0',
  `pubed` tinyint(1) NOT NULL DEFAULT '1',
  `geoid` mediumint(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `channel_id` (`channel_id`),
  KEY `channel_id_2` (`channel_id`,`thumb`),
  KEY `time` (`time`),
  KEY `taxis` (`taxis`),
  KEY `ex` (`ex`),
  KEY `geoid` (`geoid`),
  KEY `uid` (`uid`),
  KEY `keywords` (`keywords`),
  KEY `sourcetype` (`sourcetype`),
  KEY `pubed` (`pubed`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_moopha_attachement`
--

CREATE TABLE IF NOT EXISTS `tp_moopha_attachement` (
  `url` varchar(150) NOT NULL DEFAULT '',
  `pubid` smallint(3) NOT NULL DEFAULT '1',
  `filetype` varchar(10) NOT NULL DEFAULT 'picture',
  `cat` varchar(20) NOT NULL DEFAULT '',
  `catid` int(10) NOT NULL DEFAULT '0',
  `ip` varchar(15) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  KEY `cat` (`cat`,`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tp_moopha_channel`
--

CREATE TABLE IF NOT EXISTS `tp_moopha_channel` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `shortname` varchar(50) NOT NULL DEFAULT '',
  `isnav` tinyint(1) NOT NULL DEFAULT '1',
  `channeltype` tinyint(1) NOT NULL DEFAULT '1',
  `cindex` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL,
  `externallink` tinyint(1) NOT NULL DEFAULT '0',
  `des` mediumtext NOT NULL,
  `thumb` varchar(100) DEFAULT NULL,
  `metatitle` varchar(100) DEFAULT NULL,
  `metakeyword` varchar(100) DEFAULT NULL,
  `metades` varchar(200) DEFAULT NULL,
  `thumbwidth` int(4) NOT NULL,
  `thumbheight` int(4) NOT NULL,
  `thumb2width` mediumint(4) NOT NULL DEFAULT '0',
  `thumb2height` mediumint(4) NOT NULL DEFAULT '0',
  `thumb3width` mediumint(4) NOT NULL DEFAULT '0',
  `thumb3height` mediumint(4) NOT NULL DEFAULT '0',
  `thumb4width` mediumint(4) NOT NULL DEFAULT '0',
  `thumb4height` mediumint(4) NOT NULL DEFAULT '0',
  `parentid` int(10) NOT NULL DEFAULT '0',
  `channeltemplate` int(10) DEFAULT '1',
  `contenttemplate` int(10) DEFAULT '1',
  `autotype` varchar(10) NOT NULL DEFAULT '',
  `ex` tinyint(1) NOT NULL DEFAULT '0',
  `iscity` tinyint(1) NOT NULL DEFAULT '0',
  `site` int(4) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  `lastcreate` int(10) NOT NULL DEFAULT '1400000000',
  `pagesize` smallint(3) NOT NULL DEFAULT '30',
  `specialid` mediumint(4) NOT NULL DEFAULT '0',
  `homepicturechannel` tinyint(1) NOT NULL DEFAULT '0',
  `hometextchannel` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `site` (`site`),
  KEY `taxis` (`taxis`),
  KEY `time` (`time`),
  KEY `specialid` (`specialid`),
  KEY `token` (`token`),
  KEY `isnav` (`isnav`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `tp_moopha_channel`
--

INSERT INTO `tp_moopha_channel` (`id`, `name`, `shortname`, `isnav`, `channeltype`, `cindex`, `token`, `link`, `externallink`, `des`, `thumb`, `metatitle`, `metakeyword`, `metades`, `thumbwidth`, `thumbheight`, `thumb2width`, `thumb2height`, `thumb3width`, `thumb3height`, `thumb4width`, `thumb4height`, `parentid`, `channeltemplate`, `contenttemplate`, `autotype`, `ex`, `iscity`, `site`, `taxis`, `lastcreate`, `pagesize`, `specialid`, `homepicturechannel`, `hometextchannel`, `time`) VALUES
(1, '首页', '首页', 0, 1, 'homepage', 'mbeboo1416823194', '', 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, '', 0, 0, 1, 0, 1400000000, 30, 0, 0, 0, 1416835316),
(2, '关于我们', '简介', 1, 1, 'aboutus', 'mbeboo1416823194', '?m=site&c=home&a=channel&channelid=2', 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, '', 0, 0, 1, 0, 1400000000, 30, 0, 0, 0, 1416835316),
(3, '最新动态', '动态', 1, 1, 'news', 'mbeboo1416823194', '?m=site&c=home&a=channel&channelid=3', 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, '', 0, 0, 1, 0, 1400000000, 30, 0, 0, 0, 1416835316),
(4, '产品展示', '产品', 1, 1, 'products', 'mbeboo1416823194', '?m=site&c=home&a=channel&channelid=4', 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, '', 0, 0, 1, 0, 1400000000, 30, 0, 0, 0, 1416835316),
(5, '精彩案例', '案例', 1, 1, 'case', 'mbeboo1416823194', '/', 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, '', 0, 0, 1, 0, 1400000000, 30, 0, 0, 0, 1416835316),
(6, '联系我们', '联系', 1, 1, 'contact', 'mbeboo1416823194', '?m=site&c=home&a=channel&channelid=6', 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, '', 0, 0, 1, 0, 1400000000, 30, 0, 0, 0, 1416835316),
(7, '幻灯片', '幻灯片', 0, 1, 'focus', 'mbeboo1416823194', '/', 0, '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, '', 0, 0, 1, 0, 1400000000, 30, 0, 0, 0, 1416835316);

-- --------------------------------------------------------

--
-- 表的结构 `tp_moopha_channel_contentattribute`
--

CREATE TABLE IF NOT EXISTS `tp_moopha_channel_contentattribute` (
  `channelid` int(4) NOT NULL,
  `attributeid` int(4) NOT NULL,
  `taxis` int(4) NOT NULL DEFAULT '0',
  KEY `channelid` (`channelid`),
  KEY `taxis` (`taxis`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tp_moopha_keywords`
--

CREATE TABLE IF NOT EXISTS `tp_moopha_keywords` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(60) NOT NULL DEFAULT '',
  `link` varchar(150) NOT NULL DEFAULT '',
  `title` varchar(150) NOT NULL DEFAULT '',
  `target` varchar(15) NOT NULL DEFAULT '_blank',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_moopha_picture`
--

CREATE TABLE IF NOT EXISTS `tp_moopha_picture` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `contentid` int(10) NOT NULL,
  `url` varchar(100) NOT NULL,
  `intro` text NOT NULL,
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contentid` (`contentid`),
  KEY `taxis` (`taxis`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_moopha_site`
--

CREATE TABLE IF NOT EXISTS `tp_moopha_site` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `intro` varchar(600) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `logourl` varchar(120) NOT NULL DEFAULT '',
  `siteindex` varchar(50) NOT NULL,
  `taxis` int(4) NOT NULL,
  `main` int(1) NOT NULL,
  `abspath` tinyint(1) NOT NULL DEFAULT '0',
  `url` varchar(100) DEFAULT NULL,
  `statisticcode` varchar(600) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `siteindex` (`siteindex`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_moopha_site`
--

INSERT INTO `tp_moopha_site` (`id`, `name`, `intro`, `picurl`, `token`, `template`, `logourl`, `siteindex`, `taxis`, `main`, `abspath`, `url`, `statisticcode`, `time`) VALUES
(1, '', '', '', 'mbeboo1416823194', '', '', '', 0, 0, 0, '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_moopha_template`
--

CREATE TABLE IF NOT EXISTS `tp_moopha_template` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `path` varchar(200) NOT NULL,
  `generate_path` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL COMMENT '1-index,2-channel,3-template,4-singlepage',
  `isdefault` tinyint(1) NOT NULL DEFAULT '0',
  `createhtml` tinyint(1) NOT NULL DEFAULT '1',
  `site` int(4) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `isdefault` (`isdefault`),
  KEY `site` (`site`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_moopha_user`
--

CREATE TABLE IF NOT EXISTS `tp_moopha_user` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `realname` varchar(50) DEFAULT NULL,
  `email` varchar(60) NOT NULL,
  `password` char(32) NOT NULL,
  `salt` char(6) NOT NULL,
  `mp` char(11) DEFAULT NULL,
  `qq` varchar(15) DEFAULT '',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `regip` varchar(30) DEFAULT NULL,
  `regtime` int(10) DEFAULT NULL,
  `lastloginip` varchar(30) DEFAULT NULL,
  `lastlogintime` int(10) DEFAULT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_msg`
--

CREATE TABLE IF NOT EXISTS `tp_msg` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `tel` varchar(12) NOT NULL,
  `qq` int(11) NOT NULL,
  `domain` varchar(60) NOT NULL,
  `time` int(11) NOT NULL,
  `price` int(5) NOT NULL,
  `info` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_musiccar`
--

CREATE TABLE IF NOT EXISTS `tp_musiccar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `jianjie` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `gzlj` varchar(255) DEFAULT NULL,
  `open` int(1) DEFAULT NULL,
  `banquan` varchar(255) NOT NULL,
  `ad` varchar(255) NOT NULL,
  `lj` varchar(255) NOT NULL,
  `yd` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- 转存表中的数据 `tp_musiccar`
--

INSERT INTO `tp_musiccar` (`id`, `token`, `title`, `pic`, `jianjie`, `keyword`, `gzlj`, `open`, `banquan`, `ad`, `lj`, `yd`) VALUES
(18, 'kpktkq1416817563', '音乐贺卡', 'http://demo.weiqianlong.com/tpl/static/attachment/focus/default/3.jpg', '音乐贺卡', '音乐贺卡', '啊飒飒是', 0, '', 'http://demo.weiqianlong.com/uploads/k/kpktkq1416817563/4/f/8/a/thumb_547bec08c8312.png', 'http://item.taobao.com/item.htm?spm=a1z10.1.w5003-9334511825.14.YXazAv&amp;id=41906138267&amp;scene=taobao_shop', 'http://item.taobao.com/item.htm?spm=a1z10.1.w5003-9334511825.14.YXazAv&amp;id=41906138267&amp;scene=taobao_shop'),
(19, 'mbeboo1416823194', 'asdfasdf', 'http://p79.wzbywy.com/tpl/static/attachment/icon/canyin/canyin_red/11.png', 'asdfsadfdsf', '贺卡', 'DSD酸', 1, '', '阿斯顿发撒地方', '', ''),
(20, 'htedog1417267111', '欢迎使用卡妞微秀制作功能！', 'http://demo.weiqianlong.com/tpl/static/attachment/background/view/2.jpg', '欢迎使用卡妞微秀制作功能！', '', 'http://mp.weixin.qq.com/s?__biz=MzA4OTAxODA3Nw==&amp;mid=201840228&amp;idx=1&amp;sn=1c6b32f9a3bc762d6a21d216177f9f44#rd', 1, '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_my_answer`
--

CREATE TABLE IF NOT EXISTS `tp_my_answer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uid` bigint(20) DEFAULT NULL,
  `token` varchar(30) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(1023) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wid_index` (`token`),
  KEY `question_index` (`question`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_nearby_user`
--

CREATE TABLE IF NOT EXISTS `tp_nearby_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL,
  `uid` varchar(32) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_news`
--

CREATE TABLE IF NOT EXISTS `tp_news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(90) NOT NULL,
  `key` varchar(120) NOT NULL,
  `description` char(60) NOT NULL,
  `category` int(1) NOT NULL COMMENT '1:动态，2：公告，3：其他',
  `content` text NOT NULL,
  `imgs` char(120) NOT NULL,
  `showtime` int(11) NOT NULL,
  `status` varchar(1) NOT NULL,
  `agentid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_node`
--

CREATE TABLE IF NOT EXISTS `tp_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '节点名称',
  `title` varchar(50) NOT NULL COMMENT '菜单名称',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否激活 1：是 2：否',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `pid` smallint(6) unsigned NOT NULL COMMENT '父ID',
  `level` tinyint(1) unsigned NOT NULL COMMENT '节点等级',
  `data` varchar(255) DEFAULT NULL COMMENT '附加参数',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序权重',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '菜单显示类型 0:不显示 1:导航菜单 2:左侧菜单',
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=104 ;

--
-- 转存表中的数据 `tp_node`
--

INSERT INTO `tp_node` (`id`, `name`, `title`, `status`, `remark`, `pid`, `level`, `data`, `sort`, `display`) VALUES
(1, 'cms', '根节点', 1, '', 0, 1, '', 0, 0),
(2, 'Site', '站点管理', 1, '', 1, 0, '', 0, 1),
(3, 'User', '用户管理', 1, '', 1, 0, '', 0, 1),
(4, 'extent', '扩展管理', 1, '', 1, 0, '', 10, 1),
(5, 'article', '内容管理', 1, '', 1, 0, '', 0, 1),
(6, 'Site', '站点设置', 1, '', 2, 2, '', 0, 2),
(7, 'index', '基本信息设置', 1, '', 6, 3, '', 0, 2),
(8, 'safe', '安全设置', 1, '', 6, 3, '', 0, 2),
(9, 'email', '邮箱设置', 1, '', 6, 3, '', 0, 2),
(10, 'upfile', '附件设置', 1, '', 6, 3, '', 0, 2),
(11, 'Node', '节点管理', 1, '', 2, 2, '', 0, 2),
(12, 'add', '添加节点', 1, '', 11, 3, '', 0, 2),
(13, 'index', '节点列表', 1, '', 11, 3, '', 0, 0),
(14, 'insert', '写入', 1, '0', 11, 3, '', 0, 0),
(15, 'edit', '编辑节点', 1, '0', 11, 3, '', 0, 0),
(16, 'update', '更新节点', 1, '0', 11, 3, '', 0, 0),
(17, 'del', '删除节点', 1, '0', 11, 3, '', 0, 0),
(18, 'User', '站长管理', 1, '0', 3, 2, '', 0, 2),
(19, 'add', '添加管理', 1, '0', 18, 3, '', 0, 2),
(20, 'index', '站长列表', 1, '0', 18, 3, '', 0, 0),
(21, 'edit', '编辑站长', 1, '0', 18, 3, '', 0, 0),
(22, 'insert', '写入数据库', 1, '0', 18, 3, '', 0, 0),
(23, 'update', '更新用户', 1, '0', 18, 3, '', 0, 0),
(24, 'del', '删除用户', 1, '0', 18, 3, '', 0, 0),
(25, 'Group', '管理组', 1, '0', 3, 2, '', 0, 2),
(26, 'add', '创建用户组', 1, '0', 25, 3, '', 0, 2),
(27, 'index', '用户组列表', 1, '0', 25, 3, '', 0, 0),
(28, 'edit', '编辑用户组', 1, '0', 25, 3, '', 0, 0),
(29, 'del', '删除用户组', 1, '0', 25, 3, '', 0, 0),
(30, 'insert', '写入数据库', 1, '0', 25, 3, '', 0, 0),
(31, 'update', '更新用户组', 1, '0', 25, 3, '', 0, 0),
(32, 'insert', '保存测试', 1, '0', 6, 3, '', 0, 0),
(36, 'menu', '左侧栏', 1, '0', 35, 3, '', 0, 0),
(35, 'System', '首页', 1, '0', 2, 2, '', 0, 0),
(37, 'main', '右侧栏目', 1, '0', 35, 3, '', 0, 0),
(38, 'Article', '微信图文', 1, '0', 5, 2, '', 0, 2),
(39, 'index', '图文列表', 1, '0', 38, 3, '', 0, 0),
(40, 'add', '图文添加', 1, '0', 38, 3, '', 0, 2),
(41, 'edit', '微信图文编辑', 1, '0', 38, 3, '', 0, 0),
(42, 'del', '微信图文删除', 1, '0', 38, 3, '', 0, 0),
(80, 'token', '公众号管理', 1, '0', 1, 2, '', 0, 1),
(45, 'Function', '功能模块', 1, '0', 1, 0, '', 0, 1),
(46, 'Function', '功能模块', 1, '0', 45, 2, '', 0, 2),
(47, 'add', '添加模块', 1, '0', 46, 3, '', 0, 2),
(48, 'User_group', '套餐管理', 1, '0', 3, 2, '', 0, 2),
(49, 'add', '添加套餐', 1, '0', 48, 3, '', 0, 2),
(50, 'Users', '客户管理', 1, '0', 3, 2, '', 0, 2),
(51, 'index', '客户列表', 1, '0', 50, 3, '', 0, 0),
(52, 'add', '添加客户', 1, '0', 50, 3, '', 0, 2),
(53, 'edit', '编辑客户', 1, '0', 50, 3, '', 0, 0),
(54, 'del', '删除客户', 1, '0', 50, 3, '', 0, 0),
(55, 'insert', '写入数据库', 1, '0', 50, 3, '', 0, 0),
(56, 'upsave', '更新用户', 1, '0', 50, 3, '', 0, 0),
(57, 'Text', '微信文本', 1, '0', 5, 2, '', 0, 2),
(58, 'index', '文本列表', 1, '0', 57, 3, '', 0, 2),
(59, 'del', '删除', 1, '0', 57, 3, '', 0, 0),
(60, 'Custom', '自定义页面', 1, '0', 5, 2, '', 0, 2),
(61, 'index', '列表', 1, '0', 60, 3, '', 0, 2),
(62, 'edit', '编辑', 1, '0', 60, 3, '', 0, 0),
(63, 'del', '删除', 1, '0', 60, 3, '', 0, 0),
(64, 'Records', '充值记录', 1, '0', 4, 2, '', 0, 2),
(65, 'index', '充值列表', 1, '0', 64, 3, '', 0, 0),
(66, 'Case', '用户案例', 1, '0', 4, 2, '', 0, 2),
(67, 'index', '案例列表', 1, '0', 66, 3, '', 0, 0),
(68, 'add', '添加案例', 1, '0', 66, 3, '', 0, 2),
(69, 'edit', '编辑案例', 1, '0', 66, 3, '', 0, 0),
(70, 'del', '删除案例', 1, '0', 66, 3, '', 0, 0),
(71, 'insert', '写入数据库', 1, '0', 66, 3, '', 0, 0),
(72, 'upsave', '更新数据库', 1, '0', 66, 3, '', 0, 0),
(73, 'Links', '友情链接', 1, '0', 4, 2, '', 0, 2),
(74, 'index', '友情链接', 1, '0', 73, 3, '', 0, 0),
(75, 'add', '添加链接', 1, '0', 73, 3, '', 0, 2),
(76, 'edit', '编辑链接', 1, '0', 73, 3, '', 0, 0),
(77, 'insert', '插入数据库', 1, '0', 73, 3, '', 0, 0),
(78, 'upsave', '更新数据库', 1, '0', 73, 3, '', 0, 0),
(79, 'del', '删除友情链接', 1, '0', 73, 3, '', 0, 0),
(81, 'Token', '公众号管理', 1, '0', 80, 2, '', 0, 2),
(83, 'alipay', '在线支付接口', 1, '0', 6, 3, '', 0, 2),
(84, 'sms', '短信接口', 1, '', 6, 3, '', 0, 2),
(85, 'Funintro', '功能介绍', 1, '0', 45, 2, '', 0, 2),
(86, 'add', '添加内容', 1, '0', 85, 3, '', 0, 2),
(87, 'themes', '模板设置', 1, '0', 6, 3, '', 0, 2),
(88, 'Agent', '代理商管理', 1, '0', 1, 2, '', 0, 1),
(89, 'Agent', '代理商管理', 1, '0', 88, 2, '', 0, 2),
(90, 'add', '添加代理商', 1, '0', 89, 3, '', 0, 2),
(91, 'AgentPrice', '优惠套餐包', 1, '0', 88, 2, '', 0, 2),
(92, 'add', '添加套餐包', 1, '0', 91, 3, '', 0, 2),
(93, 'AgentBuyRecords', '消费记录', 1, '0', 88, 2, '', 0, 2),
(94, 'rippleos_key', '微WIFI', 1, '0', 6, 3, '', 0, 2),
(95, 'Aboutus', '关于我们', 1, '0', 45, 2, '', 0, 2),
(96, 'add', '添加内容', 1, '0', 95, 3, '', 0, 2),
(97, 'Database', '数据库维护', 1, '0', 2, 2, '', 0, 2),
(99, 'News', '新闻管理', 1, '0', 4, 2, '', 0, 2),
(100, 'add', '添加内容', 1, '0', 99, 3, '', 0, 2),
(101, 'platform', '平台支付配置', 1, '', 6, 3, '', 0, 2),
(102, 'Platform', '平台支付', 1, '', 4, 2, '', 0, 2),
(103, 'index', '平台对账', 1, '', 102, 3, '', 0, 2);

-- --------------------------------------------------------

--
-- 表的结构 `tp_norms`
--

CREATE TABLE IF NOT EXISTS `tp_norms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) unsigned NOT NULL COMMENT '产品参数分类',
  `catid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `value` varchar(150) NOT NULL COMMENT '规格值',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `tp_norms`
--

INSERT INTO `tp_norms` (`id`, `type`, `catid`, `value`) VALUES
(1, 0, 2, 'L'),
(2, 0, 2, 'S'),
(3, 0, 2, 'M'),
(4, 1, 2, '蓝'),
(5, 1, 2, '粉红'),
(6, 0, 1, 'x'),
(7, 1, 1, '白色'),
(8, 1, 1, '蓝色'),
(9, 0, 1, 'xl'),
(10, 0, 4, '111'),
(11, 1, 4, '2222');

-- --------------------------------------------------------

--
-- 表的结构 `tp_ordering_class`
--

CREATE TABLE IF NOT EXISTS `tp_ordering_class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `name` varchar(10) NOT NULL,
  `sort` tinyint(2) NOT NULL,
  `info` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_ordering_set`
--

CREATE TABLE IF NOT EXISTS `tp_ordering_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `title` varchar(60) NOT NULL,
  `info` varchar(120) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `flash` text NOT NULL,
  `create_time` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_orderprinter`
--

CREATE TABLE IF NOT EXISTS `tp_orderprinter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(20) NOT NULL DEFAULT '',
  `companyid` int(10) NOT NULL DEFAULT '0',
  `mcode` varchar(60) NOT NULL DEFAULT '',
  `mkey` varchar(60) NOT NULL DEFAULT '',
  `mp` varchar(11) NOT NULL DEFAULT '',
  `count` mediumint(5) NOT NULL DEFAULT '1',
  `modules` varchar(100) NOT NULL DEFAULT '',
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_other`
--

CREATE TABLE IF NOT EXISTS `tp_other` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `info` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_panorama`
--

CREATE TABLE IF NOT EXISTS `tp_panorama` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `picurl` varchar(300) NOT NULL,
  `intro` varchar(300) NOT NULL DEFAULT '',
  `music` varchar(100) NOT NULL DEFAULT '',
  `frontpic` varchar(100) NOT NULL DEFAULT '',
  `rightpic` varchar(100) NOT NULL DEFAULT '',
  `backpic` varchar(100) NOT NULL DEFAULT '',
  `leftpic` varchar(100) NOT NULL DEFAULT '',
  `toppic` varchar(100) NOT NULL DEFAULT '',
  `bottompic` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(60) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `taxis` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_paper`
--

CREATE TABLE IF NOT EXISTS `tp_paper` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(40) NOT NULL,
  `keyword` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `message` text NOT NULL,
  `time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_paper`
--

INSERT INTO `tp_paper` (`id`, `token`, `keyword`, `title`, `pic`, `message`, `time`) VALUES
(1, 'kpktkq1416817563', '22', '3223', 'http://demo.weiqianlong.com/tpl/static/attachment/focus/default/4.jpg', '撒旦撒旦', 2014);

-- --------------------------------------------------------

--
-- 表的结构 `tp_payment`
--

CREATE TABLE IF NOT EXISTS `tp_payment` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(200) DEFAULT NULL,
  `pay_code` varchar(20) NOT NULL DEFAULT '',
  `pay_name` varchar(120) NOT NULL DEFAULT '',
  `pay_fee` varchar(10) NOT NULL DEFAULT '0',
  `pay_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pay_config` text NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_photo`
--

CREATE TABLE IF NOT EXISTS `tp_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(20) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `isshoinfo` tinyint(1) NOT NULL,
  `num` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `create_time` int(11) NOT NULL,
  `info` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_photo_list`
--

CREATE TABLE IF NOT EXISTS `tp_photo_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `info` varchar(120) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `tp_photo_list`
--

INSERT INTO `tp_photo_list` (`id`, `token`, `pid`, `title`, `sort`, `picurl`, `create_time`, `status`, `info`) VALUES
(1, 'kpktkq1416817563', 1, '12345', 0, 'http://demo.weiqianlong.com/uploads/k/kpktkq1416817563/0/e/8/d/5475de823c930.png', 1417010821, 1, ''),
(2, 'mbeboo1416823194', 2, '12345', 0, 'http://demo.weiqianlong.com/uploads/m/mbeboo1416823194/2/0/6/9/547ab71466699.jpg', 1417328433, 1, ''),
(3, 'mbeboo1416823194', 2, '12345', 0, 'http://demo.weiqianlong.com/uploads/m/mbeboo1416823194/1/8/d/0/547ab70f31491.jpg', 1417328433, 1, ''),
(4, 'mbeboo1416823194', 2, '12345', 0, 'http://demo.weiqianlong.com/uploads/m/mbeboo1416823194/4/8/d/9/547ab70708783.jpg', 1417328433, 1, ''),
(5, 'mbeboo1416823194', 2, '12345', 0, 'http://demo.weiqianlong.com/uploads/m/mbeboo1416823194/f/e/0/d/547ab6fe05c05.jpg', 1417328433, 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_photo_log`
--

CREATE TABLE IF NOT EXISTS `tp_photo_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `openid` varchar(100) NOT NULL DEFAULT '',
  `printed` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_pic_wall`
--

CREATE TABLE IF NOT EXISTS `tp_pic_wall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joinnum` int(11) NOT NULL COMMENT '????????',
  `click` int(11) NOT NULL COMMENT '????????',
  `token` varchar(30) NOT NULL,
  `keyword` varchar(10) NOT NULL,
  `starpicurl` varchar(100) NOT NULL COMMENT '?????????????',
  `title` varchar(60) NOT NULL COMMENT '??????',
  `sttxt` varchar(200) NOT NULL COMMENT '????',
  `statdate` int(11) NOT NULL COMMENT '????????',
  `enddate` int(11) NOT NULL COMMENT '?????????',
  `info` varchar(200) NOT NULL COMMENT '?????',
  `endtite` varchar(60) NOT NULL COMMENT '??????????????',
  `endpicurl` varchar(100) NOT NULL COMMENT '???????????',
  `endinfo` varchar(60) NOT NULL COMMENT '?????????',
  `status` int(1) NOT NULL,
  `createtime` int(11) NOT NULL,
  `ischeck` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_pic_wall`
--

INSERT INTO `tp_pic_wall` (`id`, `joinnum`, `click`, `token`, `keyword`, `starpicurl`, `title`, `sttxt`, `statdate`, `enddate`, `info`, `endtite`, `endpicurl`, `endinfo`, `status`, `createtime`, `ischeck`) VALUES
(1, 0, 0, 'kpktkq1416817563', '照片墙', 'http://demo.weiqianlong.com/tpl/User/default/common/images/img/activity-zhaopianwall-start.jpg', '照片墙活动开始了', '请在公众账号聊天界面 切换到文字模式点击+选取照片，点击发送', 1416844800, 1417104000, '亲，请点击进入照片墙页面，晒晒更健康哦！', '照片墙活动已经结束了', 'http://demo.weiqianlong.com/tpl/User/default/common/images/img/activity-zhaopianwall-end.jpg', '亲，活动已经结束，请继续关注我们的后续活动哦。', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_pic_walllog`
--

CREATE TABLE IF NOT EXISTS `tp_pic_walllog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL COMMENT '活动id',
  `token` varchar(60) NOT NULL COMMENT '???????token',
  `picurl` varchar(100) NOT NULL COMMENT '???????',
  `wecha_id` varchar(30) NOT NULL COMMENT '??????id',
  `username` varchar(30) NOT NULL COMMENT '??????????',
  `create_time` int(11) NOT NULL COMMENT '???????',
  `state` int(1) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_platform_pay`
--

CREATE TABLE IF NOT EXISTS `tp_platform_pay` (
  `platform_id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(60) NOT NULL,
  `price` float NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `token` varchar(50) NOT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `from` varchar(50) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`platform_id`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_popularity`
--

CREATE TABLE IF NOT EXISTS `tp_popularity` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(30) NOT NULL,
  `keyword` char(35) NOT NULL,
  `title` char(45) NOT NULL,
  `pic` char(200) NOT NULL,
  `top_pic` varchar(250) NOT NULL,
  `start` char(15) NOT NULL,
  `end` char(15) NOT NULL,
  `addr` varchar(150) NOT NULL,
  `longitude` char(20) NOT NULL,
  `latitude` char(20) NOT NULL,
  `info` text NOT NULL,
  `is_open` tinyint(4) NOT NULL,
  `add_time` char(15) NOT NULL,
  `show_num` tinyint(4) NOT NULL,
  `is_reg` tinyint(4) NOT NULL,
  `is_attention` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_popularity_prize`
--

CREATE TABLE IF NOT EXISTS `tp_popularity_prize` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(30) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` char(45) NOT NULL,
  `img` char(200) NOT NULL,
  `num` int(11) NOT NULL,
  `use_num` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_popularity_share`
--

CREATE TABLE IF NOT EXISTS `tp_popularity_share` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(30) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `wecha_id` char(40) NOT NULL,
  `share_key` char(32) NOT NULL,
  `add_time` char(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_popularity_user`
--

CREATE TABLE IF NOT EXISTS `tp_popularity_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wecha_id` char(40) NOT NULL,
  `pid` int(11) NOT NULL,
  `token` char(35) NOT NULL,
  `add_time` char(15) NOT NULL,
  `share_count` int(11) NOT NULL,
  `share_key` char(40) NOT NULL,
  `is_real` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_problem_game`
--

CREATE TABLE IF NOT EXISTS `tp_problem_game` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(60) NOT NULL,
  `title` char(60) NOT NULL,
  `keyword` char(20) NOT NULL,
  `logo_pic` char(120) NOT NULL,
  `token` char(25) NOT NULL,
  `banner` char(120) NOT NULL,
  `explain` varchar(600) NOT NULL,
  `rule` text NOT NULL,
  `add_time` char(10) NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  `answer_time` char(5) NOT NULL,
  `sub_limit` smallint(5) unsigned NOT NULL,
  `over_hint` varchar(500) NOT NULL,
  `question_num` mediumint(9) NOT NULL,
  `score` mediumint(9) NOT NULL,
  `end_day` smallint(6) NOT NULL,
  `start_time` char(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_problem_game`
--

INSERT INTO `tp_problem_game` (`id`, `name`, `title`, `keyword`, `logo_pic`, `token`, `banner`, `explain`, `rule`, `add_time`, `is_open`, `answer_time`, `sub_limit`, `over_hint`, `question_num`, `score`, `end_day`, `start_time`) VALUES
(1, '121', '21', '121', '12', 'ikecal1416840878', './tpl/static/problem/image/default.png', '亲，点击进入问答页面开始答题，累计答题赢礼品呦，快来参加活动吧！', '12', '1416905581', '0', '20', 0, '今日问题已结束,明天继续来征战', 5, 10, 7, '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_problem_option`
--

CREATE TABLE IF NOT EXISTS `tp_problem_option` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `question_id` int(11) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `answer` varchar(500) NOT NULL,
  `is_true` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_problem_question`
--

CREATE TABLE IF NOT EXISTS `tp_problem_question` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(20) NOT NULL,
  `title` varchar(500) NOT NULL,
  `sort` tinyint(4) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  `problem_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_problem_question_log`
--

CREATE TABLE IF NOT EXISTS `tp_problem_question_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(20) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `expend_time` char(5) NOT NULL,
  `add_time` char(10) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_problem_user`
--

CREATE TABLE IF NOT EXISTS `tp_problem_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(20) NOT NULL,
  `wecha_id` char(100) NOT NULL,
  `user_name` char(50) NOT NULL,
  `phone` char(11) NOT NULL,
  `nickname` char(50) NOT NULL,
  `add_time` char(10) NOT NULL,
  `problem_id` int(11) NOT NULL,
  `score_count` int(11) NOT NULL,
  `expend_count` mediumint(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_product`
--

CREATE TABLE IF NOT EXISTS `tp_product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `sort` int(10) NOT NULL DEFAULT '0',
  `catid` mediumint(4) NOT NULL DEFAULT '0',
  `gid` int(10) unsigned NOT NULL,
  `storeid` mediumint(4) NOT NULL DEFAULT '0',
  `name` varchar(150) NOT NULL DEFAULT '',
  `price` float NOT NULL DEFAULT '0',
  `vprice` float NOT NULL,
  `oprice` float NOT NULL DEFAULT '0',
  `mailprice` float NOT NULL COMMENT '邮费',
  `discount` float NOT NULL DEFAULT '10',
  `intro` text NOT NULL,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `salecount` mediumint(4) NOT NULL DEFAULT '0',
  `logourl` varchar(150) NOT NULL DEFAULT '',
  `dining` tinyint(1) NOT NULL DEFAULT '0',
  `groupon` tinyint(1) NOT NULL DEFAULT '0',
  `endtime` int(10) NOT NULL DEFAULT '0',
  `fakemembercount` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  `num` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`storeid`),
  KEY `catid_2` (`catid`),
  KEY `storeid` (`storeid`),
  KEY `token` (`token`),
  KEY `price` (`price`),
  KEY `oprice` (`oprice`),
  KEY `discount` (`discount`),
  KEY `dining` (`dining`),
  KEY `groupon` (`groupon`,`endtime`),
  KEY `cid` (`cid`),
  KEY `gid` (`gid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `tp_product`
--

INSERT INTO `tp_product` (`id`, `cid`, `sort`, `catid`, `gid`, `storeid`, `name`, `price`, `vprice`, `oprice`, `mailprice`, `discount`, `intro`, `token`, `keyword`, `salecount`, `logourl`, `dining`, `groupon`, `endtime`, `fakemembercount`, `time`, `num`, `status`) VALUES
(7, 2, 0, 4, 0, 0, '撒旦撒旦', 22, 33, 111, 0, 2, '', 'kpktkq1416817563', '22', 0, 'http://demo.weiqianlong.com/tpl/static/attachment/focus/default/5.gif', 0, 0, 0, 0, 1417355682, 444444, 0),
(2, 3, 0, 2, 0, 0, '草鞋', 12, 12, 22, 12, 5.5, '而为推脱股份制仍佣兵仍', 'mbeboo1416823194', '11111', 0, 'http://demo.weiqianlong.com/uploads/m/mbeboo1416823194/f/e/0/d/547ab6fe05c05.jpg', 0, 0, 0, 11, 1417352788, 115, 0),
(3, 6, 0, 3, 0, 0, '蛋炒饭', 11, 9, 13, 0, 8.5, '', 'htedog1417267111', '蛋炒饭', 0, '', 0, 0, 0, 673, 1417351695, 999, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_product_attribute`
--

CREATE TABLE IF NOT EXISTS `tp_product_attribute` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(10) unsigned NOT NULL COMMENT '属性ID',
  `pid` int(10) unsigned NOT NULL COMMENT '商品ID',
  `name` varchar(100) NOT NULL COMMENT '属性名',
  `value` varchar(100) NOT NULL COMMENT '属性值',
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `tp_product_attribute`
--

INSERT INTO `tp_product_attribute` (`id`, `aid`, `pid`, `name`, `value`) VALUES
(1, 1, 1, '实打实的', '111'),
(2, 2, 1, '实打实的', '22'),
(3, 1, 4, '实打实的', '111'),
(4, 2, 4, '实打实的', '22'),
(5, 1, 5, '单独', '111'),
(6, 2, 5, '实打实的', '22'),
(7, 3, 7, '撒旦撒旦', '撒旦撒旦');

-- --------------------------------------------------------

--
-- 表的结构 `tp_product_cart`
--

CREATE TABLE IF NOT EXISTS `tp_product_cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `transactionid` varchar(100) NOT NULL DEFAULT '',
  `paytype` varchar(30) NOT NULL DEFAULT '',
  `productid` int(10) NOT NULL DEFAULT '0',
  `code` varchar(50) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `diningtype` mediumint(2) NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `total` mediumint(4) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `truename` varchar(20) NOT NULL DEFAULT '',
  `tel` varchar(14) NOT NULL DEFAULT '',
  `address` varchar(100) NOT NULL DEFAULT '',
  `ordertype` mediumint(2) NOT NULL DEFAULT '0',
  `tableid` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  `buytime` varchar(100) NOT NULL DEFAULT '',
  `groupon` tinyint(1) NOT NULL DEFAULT '0',
  `dining` tinyint(1) NOT NULL DEFAULT '0',
  `year` mediumint(4) NOT NULL DEFAULT '0',
  `month` mediumint(4) NOT NULL DEFAULT '0',
  `day` mediumint(4) NOT NULL DEFAULT '0',
  `hour` smallint(4) NOT NULL DEFAULT '0',
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `orderid` varchar(40) NOT NULL DEFAULT '',
  `sent` tinyint(1) NOT NULL DEFAULT '0',
  `logistics` varchar(70) NOT NULL DEFAULT '',
  `logisticsid` varchar(50) NOT NULL DEFAULT '',
  `printed` tinyint(1) NOT NULL DEFAULT '0',
  `handled` tinyint(1) NOT NULL DEFAULT '0',
  `handledtime` int(10) NOT NULL DEFAULT '0',
  `handleduid` int(10) NOT NULL DEFAULT '0',
  `score` int(10) unsigned NOT NULL,
  `paymode` tinyint(1) unsigned NOT NULL,
  `twid` varchar(20) NOT NULL COMMENT '来源推广人的推广ID',
  `totalprice` float NOT NULL COMMENT '购买商品的订单总价',
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`time`),
  KEY `groupon` (`groupon`),
  KEY `dining` (`dining`),
  KEY `printed` (`printed`),
  KEY `year` (`year`,`month`,`day`,`hour`),
  KEY `diningtype` (`diningtype`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_product_cart_list`
--

CREATE TABLE IF NOT EXISTS `tp_product_cart_list` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `cartid` int(10) NOT NULL DEFAULT '0',
  `productid` int(10) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `total` mediumint(4) NOT NULL DEFAULT '0',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `token` varchar(50) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cartid` (`cartid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `tp_product_cart_list`
--

INSERT INTO `tp_product_cart_list` (`id`, `cid`, `cartid`, `productid`, `price`, `total`, `wecha_id`, `token`, `time`) VALUES
(1, 2, 1, 1, 22, 2, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'kpktkq1416817563', 1417179035),
(2, 2, 2, 1, 11, 1, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'kpktkq1416817563', 1417179201),
(3, 3, 3, 2, 36, 3, 'otO33jnYlg4AccLi9HrJgXNQ85Oc', 'mbeboo1416823194', 1417349904),
(4, 3, 4, 2, 12, 1, 'ulQ6', 'mbeboo1416823194', 1417350287),
(5, 3, 5, 2, 12, 1, 'oXzezjqUZITRAu6DZ9ty2xY9tAMQ', 'mbeboo1416823194', 1417350809),
(6, 3, 6, 2, 12, 1, 'ulQ6', 'mbeboo1416823194', 1417351036),
(7, 3, 7, 2, 12, 1, 'ulQ6', 'mbeboo1416823194', 1417351293),
(14, 3, 14, 2, 15, 1, 'ulQ6', 'mbeboo1416823194', 1417357204),
(9, 3, 9, 2, 12, 1, 'oXzezjqUZITRAu6DZ9ty2xY9tAMQ', 'mbeboo1416823194', 1417351822),
(11, 3, 11, 2, 12, 1, 'Lay8', 'mbeboo1416823194', 1417352065),
(13, 6, 13, 3, 11, 1, 'o3aweuP2jfzJca8li4VvxJzBWTpQ', 'htedog1417267111', 1417353236),
(15, 3, 15, 2, 15, 1, 'fUI9', 'mbeboo1416823194', 1417357267),
(16, 3, 16, 2, 15, 1, 'hWI11', 'mbeboo1416823194', 1417358795),
(17, 3, 17, 2, 15, 1, 'eqj12', 'mbeboo1416823194', 1417358942),
(18, 3, 18, 2, 10, 1, 'cGI13', 'mbeboo1416823194', 1417387602),
(19, 3, 19, 2, 20, 2, 'UKF14', 'mbeboo1416823194', 1417429234);

-- --------------------------------------------------------

--
-- 表的结构 `tp_product_cat`
--

CREATE TABLE IF NOT EXISTS `tp_product_cat` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `sort` int(10) NOT NULL DEFAULT '0',
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL,
  `des` varchar(500) NOT NULL DEFAULT '',
  `parentid` mediumint(4) NOT NULL,
  `logourl` varchar(100) NOT NULL,
  `dining` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL,
  `norms` varchar(100) NOT NULL COMMENT '分类产品的规格',
  `color` varchar(100) NOT NULL COMMENT '分类产品的外观',
  `isfinal` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pc_cat_id` int(11) NOT NULL,
  `pc_web_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`),
  KEY `token` (`token`),
  KEY `dining` (`dining`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_product_comment`
--

CREATE TABLE IF NOT EXISTS `tp_product_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(50) NOT NULL,
  `cartid` int(10) unsigned NOT NULL,
  `pid` int(10) unsigned NOT NULL,
  `detailid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  `truename` varchar(20) NOT NULL,
  `tel` varchar(14) NOT NULL,
  `content` varchar(500) NOT NULL,
  `productinfo` varchar(80) NOT NULL,
  `score` tinyint(1) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  `isdelete` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `wecha_id` (`wecha_id`),
  KEY `token` (`token`),
  KEY `cartid` (`cartid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_product_detail`
--

CREATE TABLE IF NOT EXISTS `tp_product_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL COMMENT '??ID',
  `format` varchar(100) NOT NULL COMMENT '?????????',
  `color` varchar(100) NOT NULL COMMENT '??',
  `num` int(10) unsigned NOT NULL COMMENT '??',
  `price` float NOT NULL COMMENT '??',
  `vprice` float NOT NULL,
  `logo` varchar(200) NOT NULL COMMENT '??',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `tp_product_detail`
--

INSERT INTO `tp_product_detail` (`id`, `pid`, `format`, `color`, `num`, `price`, `vprice`, `logo`) VALUES
(1, 2, '1', '3', 47, 10, 9, ''),
(2, 2, '2', '3', 46, 15, 14, ''),
(3, 41, '8', '11', 100, 108, 108, ''),
(4, 41, '9', '11', 100, 108, 108, ''),
(5, 41, '10', '11', 100, 108, 108, ''),
(6, 42, '8', '11', 100, 108, 108, ''),
(7, 42, '9', '11', 100, 108, 108, ''),
(8, 42, '10', '11', 100, 108, 108, ''),
(9, 43, '8', '11', 100, 299, 299, ''),
(10, 43, '9', '11', 100, 299, 299, ''),
(11, 43, '10', '11', 100, 299, 299, ''),
(12, 44, '14', '0', 100, 12, 10, ''),
(13, 7, '10', '11', 0, 2112, 2121, '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_product_diningtable`
--

CREATE TABLE IF NOT EXISTS `tp_product_diningtable` (
  `id` mediumint(4) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `intro` varchar(500) NOT NULL DEFAULT '',
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_product_group`
--

CREATE TABLE IF NOT EXISTS `tp_product_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `time` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_product_image`
--

CREATE TABLE IF NOT EXISTS `tp_product_image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL COMMENT '商品ID',
  `image` varchar(200) NOT NULL COMMENT '图片地址',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_product_image`
--

INSERT INTO `tp_product_image` (`id`, `pid`, `image`) VALUES
(1, 2, 'http://demo.weiqianlong.com/uploads/m/mbeboo1416823194/4/8/d/9/547ab70708783.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `tp_product_mail_price`
--

CREATE TABLE IF NOT EXISTS `tp_product_mail_price` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `price` float NOT NULL COMMENT '满多少元免邮费',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_product_relation`
--

CREATE TABLE IF NOT EXISTS `tp_product_relation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gid` int(10) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `gid` (`gid`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_product_setting`
--

CREATE TABLE IF NOT EXISTS `tp_product_setting` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sort` int(10) NOT NULL,
  `cid` int(10) NOT NULL,
  `token` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `score` float NOT NULL,
  `paymode` tinyint(1) unsigned NOT NULL,
  `tpid` int(10) unsigned NOT NULL,
  `footerid` int(10) unsigned NOT NULL,
  `headerbackgroud` text NOT NULL,
  `headerid` int(10) unsigned NOT NULL,
  `isgroup` tinyint(1) unsigned NOT NULL,
  `email` varchar(64) NOT NULL DEFAULT '',
  `email_status` char(1) NOT NULL DEFAULT '0',
  `shop_send_sms` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `tp_product_setting`
--

INSERT INTO `tp_product_setting` (`id`, `sort`, `cid`, `token`, `price`, `score`, `paymode`, `tpid`, `footerid`, `headerbackgroud`, `headerid`, `isgroup`, `email`, `email_status`, `shop_send_sms`) VALUES
(1, 0, 3, 'mbeboo1416823194', 0, 100, 1, 0, 9, '', 0, 0, '', '0', 0),
(2, 0, 6, 'htedog1417267111', 200, 100, 1, 113, 12, '', 0, 0, '202043700@qq.com', '0', 0),
(3, 0, 2, 'kpktkq1416817563', 212, 0, 0, 329, 0, '', 9, 0, '', '1', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_punish`
--

CREATE TABLE IF NOT EXISTS `tp_punish` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `title` char(40) NOT NULL,
  `keyword` char(20) NOT NULL,
  `pic` char(120) NOT NULL,
  `name` char(10) NOT NULL,
  `use_num` int(11) NOT NULL,
  `info` varchar(500) NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `tp_punish`
--

INSERT INTO `tp_punish` (`id`, `token`, `title`, `keyword`, `pic`, `name`, `use_num`, `info`, `is_open`) VALUES
(1, 'htedog1417267111', '哈哈哈', '无语', 'http://demo.weiqianlong.com/tpl/static/Punish/images/default.png', '惩罚台', 0, '你还', '1'),
(2, 'kpktkq1416817563', '惩罚他', '惩罚', 'http://demo.weiqianlong.com/tpl/static/Punish/images/default.png', '惩罚台', 2, '惩罚是飒飒', '1'),
(3, 'mbeboo1416823194', '惩罚台', '惩罚台', 'http://demo.weiqianlong.com/tpl/static/Punish/images/default.png', '惩罚台', 8, '惩罚台', '1');

-- --------------------------------------------------------

--
-- 表的结构 `tp_punish_item`
--

CREATE TABLE IF NOT EXISTS `tp_punish_item` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `is_show` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=37 ;

--
-- 转存表中的数据 `tp_punish_item`
--

INSERT INTO `tp_punish_item` (`id`, `token`, `pid`, `name`, `is_show`) VALUES
(1, 'htedog1417267111', 1, '喝光你左右两边人杯内的酒', '1'),
(2, 'htedog1417267111', 1, '你指定两个人喝完一整杯交杯酒', '1'),
(3, 'htedog1417267111', 1, '选择玩真心话大冒险或连干两杯', '1'),
(4, 'htedog1417267111', 1, '恭喜你再来一盘', '1'),
(5, 'htedog1417267111', 1, '除你以外，所有人喝完一整杯', '1'),
(6, 'htedog1417267111', 1, '神的眷顾完全通过', '1'),
(7, 'htedog1417267111', 1, '连干两杯', '1'),
(8, 'htedog1417267111', 1, '喝完一杯', '1'),
(9, 'htedog1417267111', 1, '选择一个异性和自己喝完一整杯交杯酒', '1'),
(10, 'htedog1417267111', 1, '指定一个人选择玩真心话大冒险或连干两整杯', '1'),
(11, 'htedog1417267111', 1, '喝完半杯', '1'),
(12, 'htedog1417267111', 1, '舔酒杯10下，并用自己的手机拍照发朋友圈', '1'),
(13, 'kpktkq1416817563', 2, '喝光你左右两边人杯内的酒', '1'),
(14, 'kpktkq1416817563', 2, '你指定两个人喝完一整杯交杯酒', '1'),
(15, 'kpktkq1416817563', 2, '选择玩真心话大冒险或连干两杯', '1'),
(16, 'kpktkq1416817563', 2, '恭喜你再来一盘', '1'),
(17, 'kpktkq1416817563', 2, '除你以外，所有人喝完一整杯', '1'),
(18, 'kpktkq1416817563', 2, '神的眷顾完全通过', '1'),
(19, 'kpktkq1416817563', 2, '连干两杯', '1'),
(20, 'kpktkq1416817563', 2, '喝完一杯', '1'),
(21, 'kpktkq1416817563', 2, '选择一个异性和自己喝完一整杯交杯酒', '1'),
(22, 'kpktkq1416817563', 2, '指定一个人选择玩真心话大冒险或连干两整杯', '1'),
(23, 'kpktkq1416817563', 2, '喝完半杯', '1'),
(24, 'kpktkq1416817563', 2, '舔酒杯10下，并用自己的手机拍照发朋友圈', '1'),
(25, 'mbeboo1416823194', 3, '喝光你左右两边人杯内的酒', '1'),
(26, 'mbeboo1416823194', 3, '你指定两个人喝完一整杯交杯酒', '1'),
(27, 'mbeboo1416823194', 3, '选择玩真心话大冒险或连干两杯', '1'),
(28, 'mbeboo1416823194', 3, '恭喜你再来一盘', '1'),
(29, 'mbeboo1416823194', 3, '除你以外，所有人喝完一整杯', '1'),
(30, 'mbeboo1416823194', 3, '神的眷顾完全通过', '1'),
(31, 'mbeboo1416823194', 3, '连干两杯', '1'),
(32, 'mbeboo1416823194', 3, '喝完一杯', '1'),
(33, 'mbeboo1416823194', 3, '选择一个异性和自己喝完一整杯交杯酒', '1'),
(34, 'mbeboo1416823194', 3, '指定一个人选择玩真心话大冒险或连干两整杯', '1'),
(35, 'mbeboo1416823194', 3, '喝完半杯', '1'),
(36, 'mbeboo1416823194', 3, '舔酒杯10下，并用自己的手机拍照发朋友圈', '1');

-- --------------------------------------------------------

--
-- 表的结构 `tp_qcloud_sendout`
--

CREATE TABLE IF NOT EXISTS `tp_qcloud_sendout` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `suborderid` varchar(1000) DEFAULT NULL,
  `orderid` varchar(1000) DEFAULT NULL,
  `packageid` varchar(1000) DEFAULT NULL,
  `payprice` varchar(100) DEFAULT NULL,
  `openid` varchar(1000) DEFAULT NULL,
  `paynum` varchar(100) DEFAULT NULL,
  `freedays` varchar(100) DEFAULT NULL,
  `servicedays` varchar(100) DEFAULT NULL,
  `payunit` char(100) DEFAULT NULL,
  `service` char(50) DEFAULT 'site',
  `serviceId` varchar(1000) DEFAULT NULL,
  `price` varchar(100) DEFAULT NULL,
  `providerId` char(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_qcloud_user`
--

CREATE TABLE IF NOT EXISTS `tp_qcloud_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `openid` char(100) NOT NULL,
  `token` char(255) NOT NULL,
  `mpname` char(60) NOT NULL,
  `mporiginalid` char(60) NOT NULL,
  `mpid` char(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_quanxian`
--

CREATE TABLE IF NOT EXISTS `tp_quanxian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` char(32) NOT NULL,
  `admin` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `statu` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_recipe`
--

CREATE TABLE IF NOT EXISTS `tp_recipe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `begintime` int(11) NOT NULL,
  `endtime` int(11) NOT NULL,
  `monday` text NOT NULL,
  `tuesday` text NOT NULL,
  `wednesday` text NOT NULL,
  `thursday` text NOT NULL,
  `friday` text NOT NULL,
  `saturday` text NOT NULL,
  `sunday` text NOT NULL,
  `ishow` int(1) NOT NULL DEFAULT '1' COMMENT '1:显示,2隐藏,默认1',
  `sort` int(11) NOT NULL DEFAULT '1',
  `type` char(15) NOT NULL DEFAULT '',
  `headpic` varchar(200) NOT NULL,
  `infos` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_recognition`
--

CREATE TABLE IF NOT EXISTS `tp_recognition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(60) NOT NULL,
  `attention_num` int(5) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `code_url` varchar(200) NOT NULL,
  `scene_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_red_packet`
--

CREATE TABLE IF NOT EXISTS `tp_red_packet` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `title` char(40) NOT NULL,
  `keyword` char(30) NOT NULL,
  `msg_pic` char(120) NOT NULL,
  `desc` varchar(200) NOT NULL,
  `info` text NOT NULL,
  `start_time` char(11) NOT NULL,
  `end_time` char(11) NOT NULL,
  `ext_total` mediumint(8) unsigned NOT NULL,
  `get_number` smallint(5) unsigned NOT NULL,
  `value_count` mediumint(8) unsigned NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  `item_num` mediumint(9) NOT NULL,
  `item_sum` mediumint(9) NOT NULL,
  `item_max` mediumint(9) NOT NULL,
  `item_unit` varchar(30) NOT NULL,
  `packet_type` enum('1','2') NOT NULL,
  `deci` smallint(6) NOT NULL,
  `people` mediumint(9) NOT NULL,
  `password` char(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `tp_red_packet`
--

INSERT INTO `tp_red_packet` (`id`, `token`, `title`, `keyword`, `msg_pic`, `desc`, `info`, `start_time`, `end_time`, `ext_total`, `get_number`, `value_count`, `is_open`, `item_num`, `item_sum`, `item_max`, `item_unit`, `packet_type`, `deci`, `people`, `password`) VALUES
(1, 'hupilh1417143669', '红包', '红包', '/tpl/static/packet/images/msg_pic.png', '拿红包拉', '&amp;nbsp; &amp;nbsp; 12312', '1417104000', '1417363200', 0, 1, 0, '1', 0, 100, 10, '', '1', 0, 0, '123'),
(2, 'kpktkq1416817563', '活动', '红包', '/tpl/static/packet/images/msg_pic.png', '活动', '&lt;h4 style=&quot;font-size:16px;color:#444444;font-family:&apos;Microsoft YaHei&apos;, Helvitica, Verdana, Arial, san-serif;background-color:#FFFFFF;&quot;&gt;\r\n	活动\r\n&lt;/h4&gt;', '1417104000', '1417363200', 0, 5, 0, '1', 0, 50000, 500, '', '1', 0, 0, '112233'),
(3, 'htedog1417267111', '微信红包', '红包', '/tpl/static/packet/images/msg_pic.png', '微信红包', '红包', '1417276800', '1417536000', 0, 1, 0, '1', 0, 500, 2, '', '1', 2, 0, '12345');

-- --------------------------------------------------------

--
-- 表的结构 `tp_red_packet_exchange`
--

CREATE TABLE IF NOT EXISTS `tp_red_packet_exchange` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `wecha_id` char(50) NOT NULL,
  `packet_id` int(11) NOT NULL,
  `price` char(10) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `type_name` char(45) NOT NULL,
  `time` char(11) NOT NULL,
  `log_id` text NOT NULL,
  `mobile` char(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_red_packet_exchange`
--

INSERT INTO `tp_red_packet_exchange` (`id`, `token`, `wecha_id`, `packet_id`, `price`, `status`, `type`, `type_name`, `time`, `log_id`, `mobile`) VALUES
(1, 'htedog1417267111', 'o3aweuP2jfzJca8li4VvxJzBWTpQ', 3, '0.29', 1, 1, '线下兑换', '1417320380', '3', ''),
(2, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 2, '20.00', 1, 1, '线下兑换', '1417329404', '4', '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_red_packet_log`
--

CREATE TABLE IF NOT EXISTS `tp_red_packet_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `add_time` char(11) NOT NULL,
  `token` char(25) NOT NULL,
  `packet_id` int(11) NOT NULL,
  `prize_id` int(11) NOT NULL,
  `prize_name` char(40) NOT NULL,
  `worth` decimal(10,2) NOT NULL,
  `is_reward` enum('0','1','2') NOT NULL,
  `type` enum('1','2') NOT NULL,
  `code` char(40) NOT NULL,
  `wecha_id` char(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `tp_red_packet_log`
--

INSERT INTO `tp_red_packet_log` (`id`, `add_time`, `token`, `packet_id`, `prize_id`, `prize_name`, `worth`, `is_reward`, `type`, `code`, `wecha_id`) VALUES
(1, '1417144070', 'hupilh1417143669', 1, 0, '1元', '1.00', '0', '1', '84041cb42e8d', 'ojiT9tkDKkjOZ7ehT_a9umlRRrzs'),
(2, '1417189393', 'kpktkq1416817563', 2, 0, '1元', '1.00', '0', '1', 'aed1ae599ee5', 'osvmet3oEgq-yXCbwnU6NP8u6ayc'),
(3, '1417320358', 'htedog1417267111', 3, 0, '0.29元', '0.29', '2', '1', '0e9f0edbe3fe', 'o3aweuP2jfzJca8li4VvxJzBWTpQ'),
(4, '1417329384', 'kpktkq1416817563', 2, 0, '20元', '20.00', '2', '1', 'e0d3928a8220', 'osvmet4uw_C9vLaGrCcZPRrNCZlY');

-- --------------------------------------------------------

--
-- 表的结构 `tp_red_packet_prize`
--

CREATE TABLE IF NOT EXISTS `tp_red_packet_prize` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `type` enum('1','2') NOT NULL,
  `name` char(40) NOT NULL,
  `worth` int(11) NOT NULL,
  `num` mediumint(9) NOT NULL,
  `odds` decimal(10,0) NOT NULL,
  `sue` mediumint(9) NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  `packet_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_red_packet_reward`
--

CREATE TABLE IF NOT EXISTS `tp_red_packet_reward` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `wecha_id` char(50) NOT NULL,
  `mobile` char(11) NOT NULL,
  `wxname` char(40) NOT NULL,
  `packet_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `add_time` char(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_reply`
--

CREATE TABLE IF NOT EXISTS `tp_reply` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `differ` tinyint(1) NOT NULL DEFAULT '0',
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `message_id` int(11) NOT NULL,
  `reply` varchar(1000) NOT NULL,
  `time` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `message_id` (`message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_reply_info`
--

CREATE TABLE IF NOT EXISTS `tp_reply_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `picurls1` varchar(120) NOT NULL,
  `picurls2` varchar(120) NOT NULL,
  `picurls3` varchar(120) NOT NULL,
  `info` varchar(120) NOT NULL DEFAULT '',
  `infotype` varchar(20) NOT NULL DEFAULT '',
  `diningyuding` tinyint(1) NOT NULL DEFAULT '1',
  `diningwaimai` tinyint(1) NOT NULL DEFAULT '1',
  `config` text NOT NULL,
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `apiurl` varchar(50) NOT NULL DEFAULT '',
  `copyright` text NOT NULL,
  `readpass` char(40) DEFAULT NULL,
  `banner` varchar(500) NOT NULL DEFAULT '',
  `money_chg_send_sms` int(1) NOT NULL,
  `integral_chg_send_sms` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_requestdata`
--

CREATE TABLE IF NOT EXISTS `tp_requestdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `year` int(4) NOT NULL,
  `month` int(2) NOT NULL,
  `day` int(2) NOT NULL,
  `time` int(11) NOT NULL,
  `textnum` int(5) NOT NULL,
  `imgnum` int(5) NOT NULL,
  `videonum` int(5) NOT NULL,
  `other` int(5) NOT NULL,
  `follownum` int(5) NOT NULL,
  `unfollownum` int(5) NOT NULL,
  `3g` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `tp_requestdata`
--

INSERT INTO `tp_requestdata` (`id`, `token`, `year`, `month`, `day`, `time`, `textnum`, `imgnum`, `videonum`, `other`, `follownum`, `unfollownum`, `3g`) VALUES
(1, 'kpktkq1416817563', 2014, 11, 24, 1416824312, 173, 1, 17, 13, 1, 0, 0),
(2, 'jfvblr1416830511', 2014, 11, 24, 1416830740, 6, 0, 0, 0, 0, 0, 0),
(3, 'kpktkq1416817563', 2014, 11, 25, 1416907145, 0, 0, 0, 2, 0, 0, 0),
(4, 'kpktkq1416817563', 2014, 11, 26, 1417014172, 1, 0, 0, 1, 0, 0, 0),
(5, 'hupilh1417143669', 2014, 11, 28, 1417173405, 1, 0, 0, 0, 1, 1, 0),
(6, 'kpktkq1416817563', 2014, 11, 28, 1417175168, 1, 0, 2, 12, 0, 0, 0),
(7, 'htedog1417267111', 2014, 11, 30, 1417315811, 62, 0, 2, 4, 2, 6, 0),
(8, 'kpktkq1416817563', 2014, 11, 30, 1417328795, 6, 0, 1, 5, 0, 0, 0),
(9, 'mbeboo1416823194', 2014, 11, 30, 1417349771, 2, 0, 0, 3, 1, 0, 0),
(10, 'kpktkq1416817563', 2014, 12, 1, 1417397464, 5, 0, 0, 10, 3, 0, 0),
(11, 'htedog1417267111', 2014, 12, 1, 1417402250, 58, 0, 0, 15, 29, 15, 0),
(12, 'hdwvpv1431337356', 2015, 5, 12, 1431392727, 5, 0, 0, 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_research`
--

CREATE TABLE IF NOT EXISTS `tp_research` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lid` int(10) unsigned NOT NULL,
  `nums` int(10) unsigned NOT NULL,
  `token` varchar(80) NOT NULL,
  `title` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `logourl` varchar(300) NOT NULL,
  `description` varchar(300) NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  `endtime` int(10) unsigned NOT NULL,
  `starttime` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `lid` (`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_research_answer`
--

CREATE TABLE IF NOT EXISTS `tp_research_answer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `qid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `nums` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `qid` (`qid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_research_question`
--

CREATE TABLE IF NOT EXISTS `tp_research_question` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_research_result`
--

CREATE TABLE IF NOT EXISTS `tp_research_result` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rid` int(10) unsigned NOT NULL,
  `wecha_id` varchar(80) NOT NULL,
  `qid` int(10) unsigned NOT NULL,
  `aids` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`),
  KEY `wecha_id` (`wecha_id`,`qid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_reservation`
--

CREATE TABLE IF NOT EXISTS `tp_reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `addtype` varchar(20) NOT NULL DEFAULT 'house_book',
  `address` varchar(50) NOT NULL,
  `place` varchar(50) NOT NULL,
  `lng` varchar(13) NOT NULL,
  `lat` varchar(13) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `headpic` varchar(200) NOT NULL,
  `info` varchar(200) NOT NULL,
  `typename` varchar(50) NOT NULL,
  `typename2` varchar(50) NOT NULL,
  `typename3` varchar(50) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `date` varchar(50) NOT NULL,
  `allnums` varchar(50) NOT NULL,
  `name_show` tinyint(4) NOT NULL DEFAULT '1',
  `time_show` tinyint(4) NOT NULL DEFAULT '1',
  `txt1` varchar(50) NOT NULL,
  `value1` varchar(50) NOT NULL,
  `txt2` varchar(50) NOT NULL,
  `value2` varchar(50) NOT NULL,
  `txt3` varchar(50) NOT NULL,
  `value3` varchar(50) NOT NULL,
  `txt4` varchar(50) NOT NULL,
  `value4` varchar(50) NOT NULL,
  `txt5` varchar(50) NOT NULL,
  `value5` varchar(50) NOT NULL,
  `select1` varchar(50) NOT NULL,
  `svalue1` varchar(100) NOT NULL,
  `select2` varchar(50) NOT NULL,
  `svalue2` varchar(100) NOT NULL,
  `select3` varchar(50) NOT NULL,
  `svalue3` varchar(100) NOT NULL,
  `select4` varchar(50) NOT NULL,
  `svalue4` varchar(100) NOT NULL,
  `select5` varchar(50) NOT NULL,
  `svalue5` varchar(100) NOT NULL,
  `datename` varchar(100) NOT NULL,
  `take` int(11) NOT NULL DEFAULT '1',
  `email` varchar(30) NOT NULL,
  `open_email` tinyint(4) NOT NULL DEFAULT '0',
  `sms` varchar(13) NOT NULL,
  `open_sms` tinyint(4) NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_reservation`
--

INSERT INTO `tp_reservation` (`id`, `token`, `keyword`, `title`, `picurl`, `addtype`, `address`, `place`, `lng`, `lat`, `tel`, `headpic`, `info`, `typename`, `typename2`, `typename3`, `type`, `date`, `allnums`, `name_show`, `time_show`, `txt1`, `value1`, `txt2`, `value2`, `txt3`, `value3`, `txt4`, `value4`, `txt5`, `value5`, `select1`, `svalue1`, `select2`, `svalue2`, `select3`, `svalue3`, `select4`, `svalue4`, `select5`, `svalue5`, `datename`, `take`, `email`, `open_email`, `sms`, `open_sms`, `price`) VALUES
(1, 'kpktkq1416817563', '222', '322332', 'tpl/User/default/common/car/yuyue.jpg', 'drive', '322424', '', '11', '22', '0551-62696666', 'tpl/User/default/common/car/yuyue.jpg', 'esse', '', '', '', 1, '', '', 1, 1, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '', 0, '', 0, '0.00'),
(2, 'kpktkq1416817563', '', '22332', 'http://demo.weiqianlong.com/tpl/static/attachment/focus/default/4.jpg', 'medical', 'sdsdsdsadsad', '', '222', '22', '0551-65371998', 'http://demo.weiqianlong.com/tpl/static/attachment/focus/default/3.jpg', '22221121212', '我的挂号订单', '订单说明', '订单电话', 1, '', '', 1, 1, '', '1', '', '', '', '', '', '', '', '', '预约科室', '', '预约专家', '', '预约病种', '', '', '', '', '', '留言信息', 1, '', 0, '', 0, '0.00');

-- --------------------------------------------------------

--
-- 表的结构 `tp_reservebook`
--

CREATE TABLE IF NOT EXISTS `tp_reservebook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(50) NOT NULL,
  `truename` varchar(50) NOT NULL,
  `tel` varchar(13) NOT NULL,
  `housetype` varchar(50) NOT NULL,
  `dateline` varchar(50) NOT NULL,
  `timepart` varchar(50) NOT NULL,
  `info` varchar(100) NOT NULL,
  `type` char(15) NOT NULL,
  `carnum` varchar(20) NOT NULL,
  `km` int(10) NOT NULL,
  `booktime` int(11) NOT NULL,
  `remate` tinyint(3) NOT NULL DEFAULT '0' COMMENT '客服标志',
  `kfinfo` varchar(100) NOT NULL,
  `sex` int(11) DEFAULT '0',
  `age` int(11) NOT NULL DEFAULT '0',
  `address` varchar(50) NOT NULL DEFAULT '',
  `choose` varchar(50) NOT NULL DEFAULT '',
  `number` int(11) NOT NULL DEFAULT '0',
  `paid` int(1) DEFAULT '0',
  `orderid` char(32) NOT NULL DEFAULT '',
  `payprice` decimal(10,2) DEFAULT NULL,
  `shiporder` char(32) NOT NULL DEFAULT '',
  `productName` varchar(50) NOT NULL DEFAULT '',
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `wecha_id` (`wecha_id`),
  KEY `type` (`type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- 转存表中的数据 `tp_reservebook`
--

INSERT INTO `tp_reservebook` (`id`, `rid`, `token`, `wecha_id`, `truename`, `tel`, `housetype`, `dateline`, `timepart`, `info`, `type`, `carnum`, `km`, `booktime`, `remate`, `kfinfo`, `sex`, `age`, `address`, `choose`, `number`, `paid`, `orderid`, `payprice`, `shiporder`, `productName`, `date`) VALUES
(1, 1, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '好纠结', '13321111233', '', '', '', '', 'beauty', '', 0, 1417014211, 0, '', 1, 0, '个结局 v 难看', '', 0, 0, '141126230331116322', '11.00', '', '撒旦', '0000-00-00 00:00:00'),
(2, 1, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '好纠结', '13321111233', '', '', '', '', 'beauty', '', 0, 1417014263, 0, '', 1, 0, '个结局 v 难看', '', 0, 0, '141126230423383053', '11.00', '', '撒旦', '0000-00-00 00:00:00'),
(3, 1, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '好纠结', '13211123344', '', '', '', '', 'beauty', '', 0, 1417014505, 0, '', 1, 0, '号你们', '', 0, 0, '141126230825548863', '11.00', '', '撒旦', '0000-00-00 00:00:00'),
(4, 1, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '好纠结', '13211123344', '', '', '', '', 'beauty', '', 0, 1417014521, 0, '', 1, 0, '号你们', '', 0, 0, '141126230841728547', '11.00', '', '撒旦', '0000-00-00 00:00:00'),
(5, 1, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '好纠结', '13899881122', '', '', '', '', 'beauty', '', 0, 1417015752, 0, '', 1, 0, '个很坎坷', '', 0, 0, '141126232912894975', '11.00', '', '撒旦', '0000-00-00 00:00:00'),
(6, 1, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '好纠结', '13899881122', '', '', '', '', 'beauty', '', 0, 1417015804, 0, '', 1, 0, '个很坎坷', '', 0, 0, '141126233004222088', '11.00', '', '撒旦', '0000-00-00 00:00:00'),
(7, 1, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'sadasd', '18267720632', '', '2014-12-02', '16:00-17:00', 'sadasd', 'drive', '', 0, 1417179996, 0, '', 0, 0, '', 'sdsad', 0, 0, '', '0.00', '', '', '0000-00-00 00:00:00'),
(8, 1, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '很纠结纠结纠结', '18267720633', '事实上', '2014-11-30', '16:00-17:00', '', 'drive', '', 0, 1417180161, 0, '', 0, 0, '', '现在', 0, 0, '', '0.00', '', '', '0000-00-00 00:00:00'),
(9, 1, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'sdsad', '18267720222', 'sds', '2014-11-30', '16:00-17:00', '', 'drive', '', 0, 1417180241, 0, '', 0, 0, '', 'ssdfs', 0, 0, '', '0.00', '', '', '0000-00-00 00:00:00'),
(10, 1, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'sadasd', '18267720222', '33', '2014-11-30', '16:00-17:00', '', 'drive', '', 0, 1417180408, 0, '', 0, 0, '', 'ass', 0, 0, '', '0.00', '', '', '0000-00-00 00:00:00'),
(11, 1, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2121', '21212111', '2121', '2014-11-23', '16:00-17:00', '', 'drive', '', 0, 1417180951, 0, '', 0, 0, '', '', 0, 0, '', '0.00', '', '', '0000-00-00 00:00:00'),
(12, 1, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2121', '21212111', '2121', '2014-11-23', '16:00-17:00', '', 'drive', '', 0, 1417180961, 0, '', 0, 0, '', '', 0, 0, '', '0.00', '', '', '0000-00-00 00:00:00'),
(13, 1, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2121', '18267720666', '2121', '2014-11-23', '16:00-17:00', '', 'drive', '', 0, 1417180976, 0, '', 0, 0, '', '', 0, 0, '', '0.00', '', '', '0000-00-00 00:00:00'),
(14, 1, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '2121', '18267720666', '2121', '2014-11-23', '16:00-17:00', '', 'drive', '', 0, 1417181016, 0, '', 0, 0, '', '', 0, 0, '', '0.00', '', '', '0000-00-00 00:00:00'),
(15, 1, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '232', '18267720666', '22', '2014-11-26', '16:00-17:00', '', 'drive', '', 0, 1417181069, 0, '', 0, 0, '', '212', 0, 0, '', '0.00', '', '', '0000-00-00 00:00:00'),
(16, 1, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '232', '18267720666', '22', '2014-11-26', '16:00-17:00', '', 'drive', '', 0, 1417181074, 0, '', 0, 0, '', '212', 0, 0, '', '0.00', '', '', '0000-00-00 00:00:00'),
(17, 1, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '232', '18267720666', '22', '2014-11-26', '16:00-17:00', '', 'drive', '', 0, 1417181074, 0, '', 0, 0, '', '212', 0, 0, '', '0.00', '', '', '0000-00-00 00:00:00'),
(18, 1, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '232', '18267720666', '22', '2014-11-26', '16:00-17:00', '', 'drive', '', 0, 1417181075, 0, '', 0, 0, '', '212', 0, 0, '', '0.00', '', '', '0000-00-00 00:00:00'),
(19, 1, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '232', '18267720666', '22', '2014-11-26', '16:00-17:00', '', 'drive', '', 0, 1417181075, 0, '', 0, 0, '', '212', 0, 0, '', '0.00', '', '', '0000-00-00 00:00:00'),
(20, 1, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '232', '18267720666', '22', '2014-11-26', '16:00-17:00', '', 'drive', '', 0, 1417181075, 0, '', 0, 0, '', '212', 0, 0, '', '0.00', '', '', '0000-00-00 00:00:00'),
(21, 1, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '232', '18267720666', '22', '2014-11-26', '16:00-17:00', '', 'drive', '', 0, 1417181076, 0, '', 0, 0, '', '212', 0, 0, '', '0.00', '', '', '0000-00-00 00:00:00'),
(22, 1, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '232', '18267720666', '22', '2014-11-26', '16:00-17:00', '', 'drive', '', 0, 1417181076, 0, '', 0, 0, '', '212', 0, 0, '', '0.00', '', '', '0000-00-00 00:00:00'),
(23, 1, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '232', '18267720666', '22', '2014-11-26', '16:00-17:00', '', 'drive', '', 0, 1417181076, 0, '', 0, 0, '', '212', 0, 0, '', '0.00', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- 表的结构 `tp_rippleos_node`
--

CREATE TABLE IF NOT EXISTS `tp_rippleos_node` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) DEFAULT NULL,
  `node` int(20) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `code_keyword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_role`
--

CREATE TABLE IF NOT EXISTS `tp_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL COMMENT '后台组名',
  `pid` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '父ID',
  `status` tinyint(1) unsigned DEFAULT '0' COMMENT '是否激活 1：是 0：否',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序权重',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `tp_role`
--

INSERT INTO `tp_role` (`id`, `name`, `pid`, `status`, `sort`, `remark`) VALUES
(1, '超级管理员', 0, 1, 0, ''),
(2, '演示组', 0, 1, 0, ''),
(3, '普通会员', 0, 1, 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_role_user`
--

CREATE TABLE IF NOT EXISTS `tp_role_user` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` smallint(6) unsigned NOT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tp_router`
--

CREATE TABLE IF NOT EXISTS `tp_router` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `bywechat` tinyint(1) NOT NULL DEFAULT '1',
  `wechat` varchar(50) NOT NULL DEFAULT '',
  `qrcode` varchar(200) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `token` varchar(40) NOT NULL DEFAULT '',
  `gw_id` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_router_config`
--

CREATE TABLE IF NOT EXISTS `tp_router_config` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(200) NOT NULL DEFAULT '',
  `title` varchar(200) NOT NULL DEFAULT '',
  `picurl` varchar(200) NOT NULL DEFAULT '',
  `info` varchar(300) NOT NULL DEFAULT '',
  `contact_qq` varchar(12) NOT NULL DEFAULT '',
  `welcome_img` varchar(200) NOT NULL DEFAULT '',
  `other_img` varchar(200) NOT NULL DEFAULT '',
  `token` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_scenepin_addtp`
--

CREATE TABLE IF NOT EXISTS `tp_scenepin_addtp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `info` varchar(120) NOT NULL,
  `style1` tinyint(1) NOT NULL DEFAULT '0',
  `cover` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `lng` double NOT NULL,
  `lat` double NOT NULL,
  `address` varchar(255) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `ad` varchar(255) NOT NULL,
  `wechat` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_scene_addtp`
--

CREATE TABLE IF NOT EXISTS `tp_scene_addtp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bd` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `pid` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `create_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `info` varchar(120) NOT NULL,
  `style1` tinyint(1) NOT NULL DEFAULT '0',
  `cover` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  `lng` double NOT NULL,
  `lat` double NOT NULL,
  `address` varchar(255) NOT NULL,
  `tel` varchar(20) NOT NULL,
  `ad` varchar(255) NOT NULL,
  `wechat` varchar(255) NOT NULL,
  `bdname` varchar(255) NOT NULL,
  `bdtitle` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_scene_reply`
--

CREATE TABLE IF NOT EXISTS `tp_scene_reply` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `info` varchar(500) DEFAULT NULL COMMENT '公司简介',
  `title` text NOT NULL,
  `tp` char(255) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_school_cat`
--

CREATE TABLE IF NOT EXISTS `tp_school_cat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(25) NOT NULL,
  `name` char(50) NOT NULL,
  `icon` char(150) NOT NULL,
  `sort` tinyint(3) unsigned NOT NULL,
  `is_show` enum('1','0') NOT NULL,
  `url` varchar(300) NOT NULL,
  `system` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_school_classify`
--

CREATE TABLE IF NOT EXISTS `tp_school_classify` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(50) NOT NULL,
  `ssort` int(5) NOT NULL,
  `token` varchar(50) NOT NULL,
  `type` char(20) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `type` (`type`),
  FULLTEXT KEY `type_2` (`type`),
  FULLTEXT KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_school_score`
--

CREATE TABLE IF NOT EXISTS `tp_school_score` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `xq_id` int(11) NOT NULL,
  `qh_id` int(11) NOT NULL,
  `km_id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `my_score` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_school_set_index`
--

CREATE TABLE IF NOT EXISTS `tp_school_set_index` (
  `setid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `keyword` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `head_url` varchar(200) NOT NULL,
  `info` varchar(100) NOT NULL,
  `album_id` int(11) NOT NULL,
  `musicurl` varchar(200) NOT NULL DEFAULT '',
  `menu1` varchar(50) NOT NULL,
  `menu1_id` int(11) NOT NULL,
  `menu2` char(15) NOT NULL,
  `menu3` char(15) NOT NULL,
  `menu4` char(15) NOT NULL,
  `menu5` char(15) NOT NULL,
  `menu6` char(15) NOT NULL,
  `menu7` char(15) NOT NULL,
  `menu8` char(15) NOT NULL,
  `menu9` varchar(50) NOT NULL DEFAULT '',
  `menu10` varchar(50) NOT NULL DEFAULT '',
  `menu2_id` int(11) NOT NULL,
  `menu3_id` int(11) NOT NULL,
  `menu4_id` int(11) NOT NULL,
  `menu5_id` int(11) NOT NULL,
  `menu6_id` int(11) NOT NULL,
  `path` varchar(3000) NOT NULL DEFAULT '0',
  `tpid` int(11) DEFAULT NULL,
  `conttpid` int(11) DEFAULT NULL,
  `picurl1` varchar(200) NOT NULL DEFAULT '',
  `picurl2` varchar(200) NOT NULL DEFAULT '',
  `picurl3` varchar(200) NOT NULL DEFAULT '',
  `picurl4` varchar(200) NOT NULL DEFAULT '',
  `picurl5` varchar(200) NOT NULL DEFAULT '',
  `picurl6` varchar(200) NOT NULL DEFAULT '',
  `picurl7` varchar(200) NOT NULL DEFAULT '',
  `picurl8` varchar(200) NOT NULL DEFAULT '',
  `picurl9` varchar(200) NOT NULL DEFAULT '',
  `picurl10` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`setid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_school_students`
--

CREATE TABLE IF NOT EXISTS `tp_school_students` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `xq_id` int(11) NOT NULL,
  `area_addr` varchar(60) NOT NULL DEFAULT '',
  `bj_id` int(11) NOT NULL,
  `birthdate` date NOT NULL,
  `sex` int(1) NOT NULL,
  `createdate` int(11) NOT NULL,
  `seffectivetime` date DEFAULT NULL,
  `stheendtime` date DEFAULT NULL,
  `jf_statu` int(11) DEFAULT NULL,
  `mobile` char(11) NOT NULL,
  `homephone` char(16) NOT NULL,
  `s_name` char(50) NOT NULL,
  `localdate_id` char(20) NOT NULL DEFAULT '',
  `note` varchar(50) NOT NULL DEFAULT '',
  `amount` int(11) NOT NULL,
  `area` varchar(50) NOT NULL,
  `token` varchar(50) NOT NULL,
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_school_tcourse`
--

CREATE TABLE IF NOT EXISTS `tp_school_tcourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `tid` int(11) NOT NULL,
  `km_id` int(11) NOT NULL,
  `bj_id` int(11) NOT NULL,
  `xq_id` int(11) NOT NULL,
  `sd_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_school_teachers`
--

CREATE TABLE IF NOT EXISTS `tp_school_teachers` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` char(50) NOT NULL,
  `birthdate` date NOT NULL,
  `createtime` int(11) NOT NULL,
  `homephone` char(12) NOT NULL,
  `mobile` char(11) NOT NULL,
  `email` char(50) NOT NULL,
  `sex` int(1) NOT NULL,
  `token` varchar(50) NOT NULL,
  `jiontime` date DEFAULT NULL,
  `info` text NOT NULL,
  `faceimg` varchar(200) NOT NULL DEFAULT '',
  `headinfo` varchar(600) NOT NULL DEFAULT '',
  `sort` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_score_gift`
--

CREATE TABLE IF NOT EXISTS `tp_score_gift` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL COMMENT '奖品名称',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '所需积分',
  `num` int(11) NOT NULL COMMENT '剩余数量',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_score_logs`
--

CREATE TABLE IF NOT EXISTS `tp_score_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `acid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `scoretype` int(3) NOT NULL COMMENT '积分类型1.消耗2.增加',
  `typename` varchar(200) NOT NULL COMMENT '操作类型名称',
  `info` text NOT NULL COMMENT '详情记录',
  `time` varchar(200) NOT NULL COMMENT '记录时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_selfform`
--

CREATE TABLE IF NOT EXISTS `tp_selfform` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(400) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `successtip` varchar(60) NOT NULL DEFAULT '',
  `failtip` varchar(60) NOT NULL DEFAULT '',
  `endtime` int(11) NOT NULL DEFAULT '0',
  `logourl` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `endtime` (`endtime`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_selfform`
--

INSERT INTO `tp_selfform` (`id`, `token`, `name`, `keyword`, `intro`, `content`, `time`, `successtip`, `failtip`, `endtime`, `logourl`) VALUES
(1, 'mbeboo1416823194', '4534', '353', '534534', '345345345', 1417349913, '', '', 1418227199, 'http://demo.weiqianlong.com/uploads/m/mbeboo1416823194/f/0/9/5/thumb_547b0608833d0.png');

-- --------------------------------------------------------

--
-- 表的结构 `tp_selfform_input`
--

CREATE TABLE IF NOT EXISTS `tp_selfform_input` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `formid` int(10) NOT NULL DEFAULT '0',
  `displayname` varchar(30) NOT NULL DEFAULT '',
  `fieldname` varchar(30) NOT NULL DEFAULT '',
  `inputtype` varchar(20) NOT NULL DEFAULT '',
  `options` varchar(200) NOT NULL DEFAULT '',
  `require` tinyint(1) NOT NULL DEFAULT '0',
  `regex` varchar(100) NOT NULL DEFAULT '',
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  `errortip` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `formid` (`formid`,`taxis`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_selfform_input`
--

INSERT INTO `tp_selfform_input` (`id`, `formid`, `displayname`, `fieldname`, `inputtype`, `options`, `require`, `regex`, `taxis`, `errortip`) VALUES
(1, 1, '234', 'sfsdf', 'text', '', 0, '', 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_selfform_value`
--

CREATE TABLE IF NOT EXISTS `tp_selfform_value` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `formid` int(10) NOT NULL DEFAULT '0',
  `wecha_id` varchar(50) NOT NULL DEFAULT '',
  `values` varchar(2000) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `formid` (`formid`,`wecha_id`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_send_message`
--

CREATE TABLE IF NOT EXISTS `tp_send_message` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `msg_id` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `token` varchar(30) NOT NULL DEFAULT '',
  `msgtype` varchar(30) NOT NULL DEFAULT '',
  `text` varchar(800) NOT NULL DEFAULT '',
  `imgids` varchar(200) NOT NULL DEFAULT '',
  `mediasrc` varchar(200) NOT NULL DEFAULT '',
  `mediaid` varchar(100) NOT NULL DEFAULT '',
  `reachcount` int(10) NOT NULL DEFAULT '0',
  `groupid` int(10) NOT NULL DEFAULT '0',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`time`),
  KEY `msg_id` (`msg_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_service_logs`
--

CREATE TABLE IF NOT EXISTS `tp_service_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `enddate` int(11) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_service_user`
--

CREATE TABLE IF NOT EXISTS `tp_service_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `token` varchar(60) NOT NULL,
  `userName` varchar(60) NOT NULL,
  `userPwd` varchar(32) NOT NULL,
  `endJoinDate` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_service_user`
--

INSERT INTO `tp_service_user` (`id`, `name`, `token`, `userName`, `userPwd`, `endJoinDate`, `status`) VALUES
(1, '小扑', 'hdwvpv1431337356', 'gope', '1878f5bc52e6a9f468eb9de42e7f95d0', 1431393331, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_setinfo`
--

CREATE TABLE IF NOT EXISTS `tp_setinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `token` varchar(100) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `value` varchar(200) DEFAULT NULL,
  `kind` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `setname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_shake`
--

CREATE TABLE IF NOT EXISTS `tp_shake` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `isact` int(1) NOT NULL DEFAULT '0',
  `title` varchar(40) NOT NULL,
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `intro` varchar(400) NOT NULL DEFAULT '',
  `thumb` varchar(200) NOT NULL DEFAULT '',
  `logo` char(100) NOT NULL,
  `cheer` varchar(350) NOT NULL,
  `shownum` int(11) NOT NULL DEFAULT '10',
  `joinnum` int(11) DEFAULT NULL,
  `shaketype` int(11) NOT NULL DEFAULT '1',
  `token` varchar(40) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `isopen` int(1) NOT NULL DEFAULT '0',
  `clienttime` int(11) NOT NULL DEFAULT '3',
  `showtime` int(10) NOT NULL DEFAULT '3',
  `endtime` varchar(13) DEFAULT NULL,
  `background` varchar(150) DEFAULT NULL,
  `backgroundmusic` varchar(150) DEFAULT NULL,
  `music` varchar(150) DEFAULT NULL,
  `usetime` int(10) NOT NULL DEFAULT '0',
  `rule` varchar(600) NOT NULL DEFAULT '',
  `info` varchar(600) NOT NULL DEFAULT '',
  `starttime` int(11) NOT NULL,
  `endshake` int(11) NOT NULL,
  `qrcode` varchar(150) DEFAULT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_shake`
--

INSERT INTO `tp_shake` (`id`, `isact`, `title`, `keyword`, `intro`, `thumb`, `logo`, `cheer`, `shownum`, `joinnum`, `shaketype`, `token`, `createtime`, `isopen`, `clienttime`, `showtime`, `endtime`, `background`, `backgroundmusic`, `music`, `usetime`, `rule`, `info`, `starttime`, `endshake`, `qrcode`, `time`) VALUES
(1, 0, '摇一摇', '摇一摇', '', '', './tpl/static/wall/images/default_logo.png', '再大力！|再大力，再大力!|摇，大力摇！|小心手机，别飞出去伤到花花草草|看灰机～～～', 10, 0, 1, 'mbeboo1416823194', '', 1, 3, 3, '1417350509', './tpl/static/wall/images/default_bg.jpg', '/tpl/static/wall/music/v2.mp3', '', 100, '', '', 3, 600, '', 1417082632);

-- --------------------------------------------------------

--
-- 表的结构 `tp_shakelog`
--

CREATE TABLE IF NOT EXISTS `tp_shakelog` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `aid` int(11) NOT NULL,
  `token` varchar(40) NOT NULL,
  `mark` longtext,
  `endtime` int(15) NOT NULL,
  `joinnum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_shake_rt`
--

CREATE TABLE IF NOT EXISTS `tp_shake_rt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `token` varchar(30) NOT NULL DEFAULT '',
  `phone` varchar(12) NOT NULL DEFAULT '',
  `count` int(10) NOT NULL DEFAULT '0',
  `shakeid` int(10) NOT NULL DEFAULT '0',
  `round` mediumint(9) NOT NULL,
  `is_scene` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shakeid` (`shakeid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_shake_rt`
--

INSERT INTO `tp_shake_rt` (`id`, `wecha_id`, `token`, `phone`, `count`, `shakeid`, `round`, `is_scene`) VALUES
(1, 'oXzezjqUZITRAu6DZ9ty2xY9tAMQ', 'mbeboo1416823194', '', 0, 1, 1, '0'),
(2, 'oXzezjqUZITRAu6DZ9ty2xY9tAMQ', 'mbeboo1416823194', '', 41, 1, 2, '0');

-- --------------------------------------------------------

--
-- 表的结构 `tp_share`
--

CREATE TABLE IF NOT EXISTS `tp_share` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(30) NOT NULL DEFAULT '',
  `moduleid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(30) NOT NULL DEFAULT '',
  `wecha_id` varchar(80) NOT NULL DEFAULT '',
  `to` varchar(30) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL,
  `url` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`moduleid`,`token`,`time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `tp_share`
--

INSERT INTO `tp_share` (`id`, `module`, `moduleid`, `token`, `wecha_id`, `to`, `time`, `url`) VALUES
(1, 'Index', 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 'friend', 1416840021, 'http://demo.weiqianlong.com/index.php?g=Wap&amp;m=Index&amp;a=index&amp;token=kpktkq1416817563'),
(2, 'Red_packet', 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 'friend', 1417189492, 'http://demo.weiqianlong.com/index.php?g=Wap&amp;amp;m=Red_packet&amp;amp;a=index&amp;amp;token=kpktkq1416817563&amp;amp;id=2'),
(3, 'Autumns', 5, 'htedog1417267111', 'o3aweuP2jfzJca8li4VvxJzBWTpQ', 'friend', 1417326289, 'http://demo.weiqianlong.com/index.php?g=Wap&amp;amp;m=Autumns&amp;amp;a=index&amp;amp;token=htedog1417267111&amp;amp;id=5'),
(4, 'Index', 0, 'htedog1417267111', 'o3aweuP2jfzJca8li4VvxJzBWTpQ', 'friend', 1417326309, 'http://demo.weiqianlong.com/index.php?g=Wap&amp;amp;m=Index&amp;amp;a=index&amp;amp;token=htedog1417267111'),
(5, 'Index', 0, 'htedog1417267111', 'o3aweuP2jfzJca8li4VvxJzBWTpQ', 'friend', 1417326318, 'http://demo.weiqianlong.com/index.php?g=Wap&amp;amp;m=Index&amp;amp;a=index&amp;amp;token=htedog1417267111'),
(6, 'Autumns', 3, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'friend', 1417334830, 'http://demo.weiqianlong.com/index.php?g=Wap&amp;amp;m=Autumns&amp;amp;a=open&amp;amp;token=kpktkq1416817563&amp;amp;id=3'),
(7, 'Autumns', 3, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'friend', 1417334903, 'http://demo.weiqianlong.com/index.php?g=Wap&amp;amp;m=Autumns&amp;amp;a=open&amp;amp;token=kpktkq1416817563&amp;amp;id=3'),
(8, 'Autumns', 3, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 'friend', 1417342682, 'http://demo.weiqianlong.com/index.php?g=Wap&amp;amp;m=Autumns&amp;amp;a=open&amp;amp;token=kpktkq1416817563&amp;amp;id=3'),
(9, 'Store', 2, 'mbeboo1416823194', 'otO33jnYlg4AccLi9HrJgXNQ85Oc', 'friend', 1417350067, 'http://demo.weiqianlong.com/index.php?g=Wap&amp;amp;m=Store&amp;amp;a=product&amp;amp;token=mbeboo1416823194&amp;amp;id=2&amp;amp;twid=MFT5'),
(10, 'Store', 2, 'mbeboo1416823194', 'oXzezjqUZITRAu6DZ9ty2xY9tAMQ', 'friend', 1417357102, 'http://demo.weiqianlong.com/index.php?g=Wap&amp;amp;m=Store&amp;amp;a=product&amp;amp;token=mbeboo1416823194&amp;amp;id=2&amp;amp;twid=bBb7'),
(11, 'Store', 2, 'mbeboo1416823194', 'oXzezjqUZITRAu6DZ9ty2xY9tAMQ', 'frineds', 1417358632, 'http://demo.weiqianlong.com/index.php?g=Wap&amp;amp;m=Store&amp;amp;a=product&amp;amp;token=mbeboo1416823194&amp;amp;id=2&amp;amp;twid=bBb7'),
(12, 'Store', 2, 'mbeboo1416823194', 'oXzezjqUZITRAu6DZ9ty2xY9tAMQ', 'friend', 1417358639, 'http://demo.weiqianlong.com/index.php?g=Wap&amp;amp;m=Store&amp;amp;a=product&amp;amp;token=mbeboo1416823194&amp;amp;id=2&amp;amp;twid=bBb7'),
(13, 'Card', 0, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 'friend', 1417359897, 'http://demo.weiqianlong.com/index.php?g=Wap&amp;amp;m=Card&amp;amp;a=index&amp;amp;token=kpktkq1416817563');

-- --------------------------------------------------------

--
-- 表的结构 `tp_sharetalent`
--

CREATE TABLE IF NOT EXISTS `tp_sharetalent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(255) NOT NULL,
  `picurl` varchar(255) NOT NULL,
  `prize` varchar(255) NOT NULL,
  `rule` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `info` mediumtext NOT NULL,
  `statdate` int(11) NOT NULL,
  `date` date NOT NULL,
  `hdrules` mediumtext NOT NULL,
  `picurl1` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `click` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `tp_sharetalent`
--

INSERT INTO `tp_sharetalent` (`id`, `token`, `title`, `picurl`, `prize`, `rule`, `number`, `info`, `statdate`, `date`, `hdrules`, `picurl1`, `url`, `click`) VALUES
(4, 'kpktkq1416817563', '分享达人—', 'http://demo.weiqianlong.com/tpl/static/attachment/focus/default/4.jpg', '分享达人—', 1, 1, '&lt;p&gt;\r\n	撒旦撒大苏打\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#FF9900;&quot;&gt;苏打撒旦撒sadasdsadas&lt;/span&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;span style=&quot;color:#FF9900;&quot;&gt;大撒旦撒旦&amp;nbsp;&lt;/span&gt;\r\n&lt;/p&gt;', 1417190400, '2014-11-24', '&lt;span class=&quot;red&quot; style=&quot;color:#FF0000;font-family:&apos;Microsoft YaHei&apos;, Helvitica, Verdana, Arial, san-serif;font-size:13.3333339691162px;background-color:#FCFCFC;&quot;&gt;分享达人&lt;/span&gt;&lt;span style=&quot;color:#666666;font-family:&apos;Microsoft YaHei&apos;, Helvitica, Verdana, Arial, san-serif;font-size:13.3333339691162px;background-color:#FCFCFC;&quot;&gt;—&lt;/span&gt;', 'http://demo.weiqianlong.com/tpl/static/attachment/focus/default/../hotel/4.jpg', '', 20),
(5, 'htedog1417267111', '你好', 'http://demo.weiqianlong.com/tpl/static/attachment/background/view/1.jpg', '小米1', 1000, 2, '年货', 1417708800, '2014-11-30', '年后', 'http://demo.weiqianlong.com/tpl/static/attachment/focus/default/2.jpg', 'http://mp.weixin.qq.com/s?__biz=MzA3NDg4OTAxNw==&amp;amp;mid=201800319&amp;amp;idx=1&amp;amp;sn=a62ab89e698f0006dd3abfbbfa2d4722#rd', 5);

-- --------------------------------------------------------

--
-- 表的结构 `tp_sharetalent_record`
--

CREATE TABLE IF NOT EXISTS `tp_sharetalent_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `statdate` int(11) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL,
  `click` int(11) NOT NULL,
  `rule` int(11) NOT NULL,
  `prize` varchar(255) NOT NULL,
  `end` int(11) NOT NULL,
  `picurl` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `statu` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_sharetalent_reply`
--

CREATE TABLE IF NOT EXISTS `tp_sharetalent_reply` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `info` varchar(500) DEFAULT NULL COMMENT '公司简介',
  `title` text NOT NULL,
  `tp` char(255) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `tp_sharetalent_reply`
--

INSERT INTO `tp_sharetalent_reply` (`id`, `token`, `info`, `title`, `tp`, `copyright`) VALUES
(2, 'kpktkq1416817563', '分享达人—', '分享达人—', '分享达人—', '分享达人—'),
(3, 'htedog1417267111', '年后', '你好', 'http://demo.weiqianlong.com/tpl/static/attachment/focus/default/1.gif', '微媒体');

-- --------------------------------------------------------

--
-- 表的结构 `tp_sharetalent_sm`
--

CREATE TABLE IF NOT EXISTS `tp_sharetalent_sm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `info` mediumtext NOT NULL,
  `infos` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_sharetalent_sm`
--

INSERT INTO `tp_sharetalent_sm` (`id`, `token`, `info`, `infos`) VALUES
(2, 'htedog1417267111', '你好', '年后');

-- --------------------------------------------------------

--
-- 表的结构 `tp_sharetalent_user`
--

CREATE TABLE IF NOT EXISTS `tp_sharetalent_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `tp_sharetalent_user`
--

INSERT INTO `tp_sharetalent_user` (`id`, `token`, `wecha_id`, `name`, `tel`, `date`) VALUES
(11, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'cf发', '18267720666', '2014-11-24 20:53:21'),
(12, 'htedog1417267111', 'o3aweuP2jfzJca8li4VvxJzBWTpQ', '', '', '2014-11-30 11:52:14');

-- --------------------------------------------------------

--
-- 表的结构 `tp_sharetalent_userip`
--

CREATE TABLE IF NOT EXISTS `tp_sharetalent_userip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `pid` int(11) NOT NULL,
  `enterdate` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_share_set`
--

CREATE TABLE IF NOT EXISTS `tp_share_set` (
  `token` varchar(40) NOT NULL DEFAULT '',
  `score` int(5) NOT NULL DEFAULT '0',
  `daylimit` int(5) NOT NULL DEFAULT '1',
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tp_sign_conf`
--

CREATE TABLE IF NOT EXISTS `tp_sign_conf` (
  `conf_id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `use` enum('0','1') NOT NULL,
  `integral` tinyint(4) NOT NULL,
  `stair` tinyint(4) NOT NULL,
  `token` char(25) NOT NULL,
  PRIMARY KEY (`conf_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_sign_in`
--

CREATE TABLE IF NOT EXISTS `tp_sign_in` (
  `sign_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` char(40) NOT NULL,
  `wecha_id` char(60) NOT NULL,
  `user_name` char(50) NOT NULL,
  `integral` tinyint(4) NOT NULL,
  `time` char(11) NOT NULL,
  `continue` tinyint(2) NOT NULL,
  `phone` char(11) NOT NULL,
  `set_id` int(11) NOT NULL,
  PRIMARY KEY (`sign_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_sign_set`
--

CREATE TABLE IF NOT EXISTS `tp_sign_set` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `keywords` char(25) NOT NULL,
  `title` char(60) NOT NULL,
  `content` varchar(250) NOT NULL,
  `token` char(35) NOT NULL,
  `reply_img` char(150) NOT NULL,
  `top_pic` char(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_sign_set`
--

INSERT INTO `tp_sign_set` (`id`, `keywords`, `title`, `content`, `token`, `reply_img`, `top_pic`) VALUES
(1, '微信签到', '微信签到', '微信签到', 'mbeboo1416823194', 'http://demo.weiqianlong.com/tpl/static/sign/r.jpg', 'http://demo.weiqianlong.com/tpl/static/sign/top.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `tp_site_plugmenu`
--

CREATE TABLE IF NOT EXISTS `tp_site_plugmenu` (
  `token` varchar(60) NOT NULL DEFAULT '',
  `name` varchar(20) NOT NULL DEFAULT '',
  `url` varchar(100) DEFAULT '',
  `taxis` mediumint(4) NOT NULL DEFAULT '0',
  `display` tinyint(1) NOT NULL DEFAULT '0',
  KEY `token` (`token`,`taxis`,`display`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tp_sjmreply_info`
--

CREATE TABLE IF NOT EXISTS `tp_sjmreply_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `sharepicurl` varchar(120) NOT NULL DEFAULT '',
  `info` varchar(120) NOT NULL DEFAULT '',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `copyright` text NOT NULL,
  `ad` int(11) NOT NULL,
  `wxname` varchar(255) NOT NULL,
  `tip` varchar(255) NOT NULL,
  `url` char(255) NOT NULL,
  `shareurl` char(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_sms_code`
--

CREATE TABLE IF NOT EXISTS `tp_sms_code` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(40) NOT NULL,
  `token` char(30) NOT NULL,
  `wecha_id` char(45) NOT NULL,
  `action` char(100) NOT NULL,
  `create_time` char(11) NOT NULL,
  `is_use` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_sms_expendrecord`
--

CREATE TABLE IF NOT EXISTS `tp_sms_expendrecord` (
  `id` int(11) DEFAULT NULL,
  `uid` int(11) NOT NULL DEFAULT '0',
  `price` int(6) NOT NULL DEFAULT '0',
  `count` int(10) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  KEY `uid` (`uid`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tp_sms_record`
--

CREATE TABLE IF NOT EXISTS `tp_sms_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `token` varchar(20) NOT NULL,
  `time` int(10) NOT NULL,
  `mp` varchar(11) NOT NULL DEFAULT '',
  `text` varchar(400) NOT NULL DEFAULT '',
  `status` mediumint(4) NOT NULL DEFAULT '0',
  `price` mediumint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`token`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_snccode`
--

CREATE TABLE IF NOT EXISTS `tp_snccode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `wechaname` varchar(60) NOT NULL,
  `caeatetime` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_sncode`
--

CREATE TABLE IF NOT EXISTS `tp_sncode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `module` varchar(60) NOT NULL,
  `usenums` tinyint(1) NOT NULL DEFAULT '0' COMMENT '用户使用次数',
  `wecha_id` varchar(60) NOT NULL COMMENT '微信唯一识别码',
  `token` varchar(30) NOT NULL,
  `islucky` int(1) NOT NULL COMMENT '是否中奖',
  `wecha_name` varchar(60) NOT NULL COMMENT '微信号',
  `phone` varchar(15) NOT NULL,
  `sn` varchar(13) NOT NULL COMMENT '中奖后序列号',
  `prize` varchar(50) NOT NULL DEFAULT '' COMMENT '已中奖项',
  `sendstutas` int(11) NOT NULL DEFAULT '0',
  `sendtime` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`,`lid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_storeflash`
--

CREATE TABLE IF NOT EXISTS `tp_storeflash` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `img` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `info` varchar(90) NOT NULL,
  `tip` smallint(11) NOT NULL DEFAULT '1',
  `sort` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tip` (`tip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_store_flash`
--

CREATE TABLE IF NOT EXISTS `tp_store_flash` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(32) NOT NULL,
  `img` varchar(300) NOT NULL,
  `url` varchar(300) NOT NULL,
  `info` varchar(90) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `tp_store_flash`
--

INSERT INTO `tp_store_flash` (`id`, `cid`, `token`, `img`, `url`, `info`, `type`) VALUES
(2, 6, 'htedog1417267111', 'http://demo.weiqianlong.com/uploads/h/htedog1417267111/0/c/6/c/thumb_547b0fe1adf2c.jpeg', '', '', 1),
(3, 6, 'htedog1417267111', 'http://demo.weiqianlong.com/uploads/h/htedog1417267111/1/b/d/7/thumb_547b102071e77.jpeg', '', '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_styleset`
--

CREATE TABLE IF NOT EXISTS `tp_styleset` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `RadioGroup` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_system_info`
--

CREATE TABLE IF NOT EXISTS `tp_system_info` (
  `lastsqlupdate` int(10) NOT NULL,
  `version` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `tp_system_info`
--

INSERT INTO `tp_system_info` (`lastsqlupdate`, `version`) VALUES
(1410830280, '1410861960');

-- --------------------------------------------------------

--
-- 表的结构 `tp_taobao`
--

CREATE TABLE IF NOT EXISTS `tp_taobao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(64) NOT NULL,
  `keyword` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  `picurl` varchar(100) NOT NULL,
  `homeurl` varchar(100) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_tempmsg`
--

CREATE TABLE IF NOT EXISTS `tp_tempmsg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tempkey` char(50) NOT NULL,
  `name` char(100) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `topcolor` char(10) NOT NULL DEFAULT '#029700',
  `textcolor` char(10) NOT NULL DEFAULT '#000000',
  `token` char(40) NOT NULL,
  `tempid` char(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tempkey` (`tempkey`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `tp_tempmsg`
--

INSERT INTO `tp_tempmsg` (`id`, `tempkey`, `name`, `content`, `topcolor`, `textcolor`, `token`, `tempid`, `status`) VALUES
(1, 'TM00130', '预约看房通知', '{{first.DATA}}\r\n预约楼盘：{{apartmentName.DATA}}\r\n房号：{{roomNumber.DATA}}\r\n楼盘地址：{{address.DATA}}\r\n预约时间：{{time.DATA}}\r\n{{remark.DATA}}', '#029700', '#000000', 'kpktkq1416817563', '', 0),
(2, 'TM00785', '开奖结果通知', '\r\n{{first.DATA}}\r\n开奖项目：{{program.DATA}}\r\n中奖详情：{{result.DATA}}\r\n{{remark.DATA}}', '#029700', '#000000', 'kpktkq1416817563', '', 0),
(3, 'TM00820', '服务完成通知', '\r\n{{first.DATA}}\r\n完成情况：{{keynote1.DATA}}\r\n完成日期：{{keynote2.DATA}}\r\n{{remark.DATA}}', '#029700', '#000000', 'kpktkq1416817563', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_text`
--

CREATE TABLE IF NOT EXISTS `tp_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `keyword` char(255) NOT NULL,
  `precisions` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(1) NOT NULL,
  `text` text NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `updatetime` varchar(13) NOT NULL,
  `click` int(11) NOT NULL,
  `token` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_token_open`
--

CREATE TABLE IF NOT EXISTS `tp_token_open` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `queryname` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- 转存表中的数据 `tp_token_open`
--

INSERT INTO `tp_token_open` (`id`, `uid`, `token`, `queryname`) VALUES
(1, 1, 'kpktkq1416817563', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Baoming,Scenes,Fenlei,Jikedati,Zhaopin,Fangchan,Shakeprize,Hforward,Sharetalent,Message,AdvanceTpl,Hcar,Knwx,Jingcai,Wzqemail,Kefu'),
(2, 2, 'mbeboo1416823194', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Baoming,Scenes,Fenlei,Jikedati,Zhaopin,Fangchan,Shakeprize,Hforward,Sharetalent,Message,AdvanceTpl,Hcar,Knwx,groupmessage,Wzqemail,Kefu,Jingcai'),
(3, 2, 'jfvblr1416830511', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Baoming,Scenes,Fenlei,Jikedati,Zhaopin,Fangchan,Shakeprize,Hforward,Sharetalent,Message,AdvanceTpl,Hcar,Knwx,Jingcai,Wzqemail,Kefu'),
(4, 2, 'gnenqw1416832178', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Baoming,Scenes,Fenlei,Jikedati,Zhaopin,Fangchan,Shakeprize,Hforward,Sharetalent,Message,AdvanceTpl,Hcar,Knwx'),
(5, 1, 'ikecal1416840878', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Baoming,Scenes,Fenlei,Jikedati,Zhaopin,Fangchan,Shakeprize,Hforward,Sharetalent,Message,AdvanceTpl,Hcar,Knwx'),
(6, 2, 'qrefzy1416878793', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Baoming,Scenes,Fenlei,Jikedati,Zhaopin,Fangchan,Shakeprize,Hforward,Sharetalent,Message,AdvanceTpl,Hcar,Knwx'),
(7, 3, 'imkblg1416880426', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Baoming,Scenes,Fenlei,Jikedati,Zhaopin,Fangchan,Shakeprize,Hforward,Sharetalent,Message,AdvanceTpl,Hcar,Knwx'),
(8, 5, 'ntauon1416894710', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Baoming,Scenes,Fenlei,Jikedati,Zhaopin,Fangchan,Shakeprize,Hforward,Sharetalent,Message,AdvanceTpl,Hcar,Knwx'),
(9, 5, 'qinaax1416894724', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Baoming,Scenes,Fenlei,Jikedati,Zhaopin,Fangchan,Shakeprize,Hforward,Sharetalent,Message,AdvanceTpl,Hcar,Knwx'),
(10, 1, 'rnepgf1416909557', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Baoming,Scenes,Fenlei,Jikedati,Zhaopin,Fangchan,Shakeprize,Hforward,Sharetalent,Message,AdvanceTpl,Hcar,Knwx'),
(11, 1, 'iuinxr1416909760', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Baoming,Scenes,Fenlei,Jikedati,Zhaopin,Fangchan,Shakeprize,Hforward,Sharetalent,Message,AdvanceTpl,Hcar,Knwx'),
(12, 1, 'cgtejd1416909792', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Baoming,Scenes,Fenlei,Jikedati,Zhaopin,Fangchan,Shakeprize,Hforward,Sharetalent,Message,AdvanceTpl,Hcar,Knwx'),
(13, 1, 'frmwmq1416909820', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Baoming,Scenes,Fenlei,Jikedati,Zhaopin,Fangchan,Shakeprize,Hforward,Sharetalent,Message,AdvanceTpl,Hcar,Knwx'),
(14, 6, 'lxnfaw1416928484', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Baoming,Scenes,Fenlei,Jikedati,Zhaopin,Fangchan,Shakeprize,Hforward,Sharetalent,Message,AdvanceTpl,Hcar,Knwx'),
(15, 2, 'xonzce1416930560', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Baoming,Scenes,Fenlei,Jikedati,Zhaopin,Fangchan,Shakeprize,Hforward,Sharetalent,Message,AdvanceTpl,Hcar,Knwx'),
(16, 2, 'caydxt1416931484', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Baoming,Scenes,Fenlei,Jikedati,Zhaopin,Fangchan,Shakeprize,Hforward,Sharetalent,Message,AdvanceTpl,Hcar,Knwx'),
(17, 7, 'gnzsbn1417091680', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Baoming,Scenes,Fenlei,Jikedati,Zhaopin,Fangchan,Shakeprize,Hforward,Sharetalent,Message,AdvanceTpl,Hcar,Knwx'),
(18, 8, 'oxyaaz1417094865', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Baoming,Scenes,Fenlei,Jikedati,Zhaopin,Fangchan,Shakeprize,Hforward,Sharetalent,Message,AdvanceTpl,Hcar,Knwx'),
(19, 2, 'gcoxvo1417102701', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Baoming,Scenes,Fenlei,Jikedati,Zhaopin,Fangchan,Shakeprize,Hforward,Sharetalent,Message,AdvanceTpl,Hcar,Knwx'),
(20, 8, 'hupilh1417143669', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Baoming,Scenes,Fenlei,Jikedati,Zhaopin,Fangchan,Shakeprize,Hforward,Sharetalent,Message,AdvanceTpl,Hcar,Knwx'),
(21, 2, 'htedog1417267111', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Baoming,Scenes,Fenlei,Jikedati,Zhaopin,Fangchan,Shakeprize,Hforward,Sharetalent,Message,AdvanceTpl,Hcar,Knwx,Jingcai,Wzqemail,Kefu'),
(22, 2, 'gicfqb1417268082', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Baoming,Scenes,Fenlei,Jikedati,Zhaopin,Fangchan,Shakeprize,Hforward,Sharetalent,Message,AdvanceTpl,Hcar,Knwx,Jingcai,Wzqemail,Kefu'),
(23, 2, 'nopcdm1417401318', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Baoming,Scenes,Fenlei,Jikedati,Zhaopin,Fangchan,Shakeprize,Hforward,Sharetalent,Message,AdvanceTpl,Hcar,Knwx,Jingcai,Wzqemail,Kefu'),
(24, 9, 'azmylq1417441992', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Baoming,Scenes,Fenlei,Jikedati,Zhaopin,Fangchan,Shakeprize,Hforward,Sharetalent,Message,AdvanceTpl,Hcar,Knwx,Jingcai,Wzqemail,Kefu'),
(25, 2, 'jwxlha1418258010', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Baoming,Scenes,Fenlei,Jikedati,Zhaopin,Fangchan,Shakeprize,Hforward,Sharetalent,Message,AdvanceTpl,Hcar,Knwx,Jingcai,Wzqemail,Kefu'),
(26, 10, 'lxiuwf1418474602', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Baoming,Scenes,Fenlei,Jikedati,Zhaopin,Fangchan,Shakeprize,Hforward,Sharetalent,Message,AdvanceTpl,Hcar,Knwx,Jingcai,Wzqemail,Kefu,Helping,Popularity'),
(27, 11, 'hdwvpv1431337356', 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Baoming,Scenes,Fenlei,Jikedati,Zhaopin,Fangchan,Shakeprize,Hforward,Sharetalent,Message,AdvanceTpl,Hcar,Knwx,Jingcai,Wzqemail,Kefu,Helping,Popularity');

-- --------------------------------------------------------

--
-- 表的结构 `tp_toshake`
--

CREATE TABLE IF NOT EXISTS `tp_toshake` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `phone` varchar(15) NOT NULL,
  `token` varchar(20) NOT NULL,
  `wecha_id` varchar(30) DEFAULT NULL,
  `point` int(10) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_twitter_count`
--

CREATE TABLE IF NOT EXISTS `tp_twitter_count` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `twid` varchar(20) NOT NULL,
  `token` varchar(60) NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `total` float NOT NULL COMMENT '总金额',
  `remove` float NOT NULL COMMENT '提出的金额',
  PRIMARY KEY (`id`),
  KEY `twid` (`twid`),
  KEY `token` (`token`,`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_twitter_count`
--

INSERT INTO `tp_twitter_count` (`id`, `twid`, `token`, `cid`, `total`, `remove`) VALUES
(1, 'MFT5', 'mbeboo1416823194', 3, 2.48, 0),
(2, 'bBb7', 'mbeboo1416823194', 3, 6.3, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_twitter_log`
--

CREATE TABLE IF NOT EXISTS `tp_twitter_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(60) NOT NULL,
  `twid` varchar(20) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  `price` float NOT NULL,
  `fromsource` varchar(60) NOT NULL COMMENT '来自源',
  `param` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `twid` (`twid`),
  KEY `token` (`token`),
  KEY `fromsource` (`fromsource`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `tp_twitter_log`
--

INSERT INTO `tp_twitter_log` (`id`, `cid`, `token`, `twid`, `type`, `dateline`, `price`, `fromsource`, `param`) VALUES
(1, 3, 'mbeboo1416823194', 'MFT5', 2, 1417350279, 1, '', 1),
(2, 3, 'mbeboo1416823194', 'MFT5', 3, 1417350287, 0.12, '', 12),
(3, 3, 'mbeboo1416823194', 'MFT5', 3, 1417351036, 0.12, '', 12),
(4, 3, 'mbeboo1416823194', 'MFT5', 3, 1417351293, 0.12, '', 12),
(5, 3, 'mbeboo1416823194', 'MFT5', 2, 1417352051, 1, '', 1),
(6, 3, 'mbeboo1416823194', 'MFT5', 3, 1417352065, 0.12, '', 12),
(7, 3, 'mbeboo1416823194', 'bBb7', 3, 1417357204, 0.15, '', 15),
(8, 3, 'mbeboo1416823194', 'bBb7', 2, 1417357260, 1, '', 1),
(9, 3, 'mbeboo1416823194', 'bBb7', 3, 1417357267, 0.15, '', 15),
(10, 3, 'mbeboo1416823194', 'bBb7', 1, 1417357304, 0.1, '', 1),
(11, 3, 'mbeboo1416823194', 'bBb7', 1, 1417357553, 0.1, '', 1),
(12, 3, 'mbeboo1416823194', 'bBb7', 1, 1417358672, 0.1, '', 1),
(13, 3, 'mbeboo1416823194', 'bBb7', 2, 1417358785, 1, '', 1),
(14, 3, 'mbeboo1416823194', 'bBb7', 3, 1417358795, 0.15, '', 15),
(15, 3, 'mbeboo1416823194', 'bBb7', 2, 1417358933, 1, '', 1),
(16, 3, 'mbeboo1416823194', 'bBb7', 3, 1417358942, 0.15, '', 15),
(17, 3, 'mbeboo1416823194', 'bBb7', 1, 1417362386, 0.1, '', 1),
(18, 3, 'mbeboo1416823194', 'bBb7', 2, 1417387593, 1, '', 1),
(19, 3, 'mbeboo1416823194', 'bBb7', 3, 1417387602, 0.1, '', 10),
(20, 3, 'mbeboo1416823194', 'bBb7', 2, 1417429225, 1, '', 1),
(21, 3, 'mbeboo1416823194', 'bBb7', 3, 1417429234, 0.2, '', 20);

-- --------------------------------------------------------

--
-- 表的结构 `tp_twitter_remove`
--

CREATE TABLE IF NOT EXISTS `tp_twitter_remove` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(60) NOT NULL,
  `twid` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL COMMENT '提款人姓名',
  `tel` varchar(15) NOT NULL,
  `number` varchar(32) NOT NULL COMMENT '收款账号',
  `bank` varchar(30) NOT NULL COMMENT '银行名称',
  `address` varchar(60) NOT NULL COMMENT '开户行地址',
  `price` float NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  `dateline` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_twitter_set`
--

CREATE TABLE IF NOT EXISTS `tp_twitter_set` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL,
  `token` varchar(60) NOT NULL,
  `clickprice` float NOT NULL COMMENT '点击的价格',
  `clickmax` int(10) unsigned NOT NULL COMMENT '每天点击的上限',
  `registerprice` float NOT NULL COMMENT '注册的价格',
  `registermax` int(10) unsigned NOT NULL COMMENT '每天注册的上限',
  `percent` float NOT NULL COMMENT '商品总价的百分比',
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_twitter_set`
--

INSERT INTO `tp_twitter_set` (`id`, `cid`, `token`, `clickprice`, `clickmax`, `registerprice`, `registermax`, `percent`) VALUES
(1, 4, 'ntauon1416894710', 100, 10, 20, 30, 5),
(2, 3, 'mbeboo1416823194', 0.1, 100, 1, 100, 1);

-- --------------------------------------------------------

--
-- 表的结构 `tp_update_record`
--

CREATE TABLE IF NOT EXISTS `tp_update_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg` varchar(600) NOT NULL DEFAULT '',
  `type` varchar(20) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `tp_update_record`
--

INSERT INTO `tp_update_record` (`id`, `msg`, `type`, `time`) VALUES
(1, '2014年12月升级包1', 'upgrade', 1388110020),
(2, '2014年12月升级包2', 'upgrade', 1388110080),
(3, '2014年12月升级包3', 'upgrade', 1388110140),
(4, '2014年12月升级包4', 'upgrade', 1388110260),
(5, '2014年12月升级包5', 'upgrade', 1388110320),
(6, '2014年12月升级包6', 'upgrade', 1388110380),
(7, '1、行业应用后台版面错乱；2、照片打印机照片不显示', '0', 1405399740),
(8, '1、会员卡幻灯片问题 2、新添加公众号无响应 3、多图文顺序问题 4、相册上传按钮不显示问题', '0', 1405474020),
(9, '相册没有上传按钮', '0', 1405478100),
(10, '微信公众平台接口调整导致的url超时或者关注不回复问题', '1', 1405652520),
(11, '公共模板文件', '1', 1410740700),
(12, 'php文件', '1', 1410740760),
(13, '公共en文件', '1', 1410740820),
(14, '', '1', 1410740940),
(15, '', '1', 1410741180),
(16, '微场景分享、直达号sitemap，stroe colorid没有默认值', '0', 1410861960);

-- --------------------------------------------------------

--
-- 表的结构 `tp_upyun_attachement`
--

CREATE TABLE IF NOT EXISTS `tp_upyun_attachement` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `url` varchar(160) NOT NULL,
  `code` varchar(10) NOT NULL,
  `time` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_user`
--

CREATE TABLE IF NOT EXISTS `tp_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `role` smallint(6) unsigned NOT NULL COMMENT '组ID',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 1:启用 0:禁止',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `last_login_time` int(11) unsigned NOT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(15) DEFAULT NULL COMMENT '最后登录IP',
  `last_location` varchar(100) DEFAULT NULL COMMENT '最后登录位置',
  PRIMARY KEY (`id`),
  KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_user`
--

INSERT INTO `tp_user` (`id`, `username`, `password`, `role`, `status`, `remark`, `last_login_time`, `last_login_ip`, `last_location`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 1, 1, '', 1432363977, '0.0.0.0', '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_userinfo`
--

CREATE TABLE IF NOT EXISTS `tp_userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `portrait` varchar(200) NOT NULL DEFAULT '',
  `wallopen` tinyint(1) NOT NULL DEFAULT '0',
  `total_score` int(10) NOT NULL DEFAULT '0',
  `total_score_bf` int(10) NOT NULL,
  `expensetotal` int(10) NOT NULL DEFAULT '0',
  `token` varchar(60) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  `wechaname` varchar(60) NOT NULL,
  `truename` varchar(60) NOT NULL DEFAULT '',
  `tel` varchar(11) NOT NULL,
  `bornyear` varchar(4) NOT NULL DEFAULT '',
  `bornmonth` varchar(4) NOT NULL DEFAULT '',
  `bornday` varchar(4) NOT NULL DEFAULT '',
  `qq` varchar(11) NOT NULL DEFAULT '',
  `sex` tinyint(1) NOT NULL,
  `age` varchar(3) NOT NULL DEFAULT '',
  `birthday` varchar(11) NOT NULL,
  `address` varchar(100) NOT NULL,
  `info` varchar(200) NOT NULL,
  `sign_score` int(11) NOT NULL,
  `expend_score` int(11) NOT NULL,
  `continuous` int(11) NOT NULL,
  `add_expend` int(11) NOT NULL,
  `add_expend_time` int(11) NOT NULL,
  `live_time` int(11) NOT NULL,
  `getcardtime` int(10) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `balance` double(10,2) unsigned NOT NULL DEFAULT '0.00',
  `balance_bf` decimal(10,2) NOT NULL,
  `paypass` varchar(32) DEFAULT NULL,
  `twid` varchar(20) NOT NULL COMMENT '推广号',
  `username` varchar(32) NOT NULL COMMENT '账号',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `city` varchar(40) DEFAULT NULL,
  `province` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`),
  KEY `twid` (`twid`),
  KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_users`
--

CREATE TABLE IF NOT EXISTS `tp_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(80) NOT NULL DEFAULT '',
  `inviter` int(10) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `mp` varchar(11) NOT NULL DEFAULT '',
  `smscount` int(10) NOT NULL DEFAULT '0',
  `wifi` tinyint(2) NOT NULL,
  `gtpl` tinyint(2) NOT NULL,
  `ly` tinyint(2) NOT NULL,
  `lt` tinyint(2) NOT NULL,
  `sq` tinyint(2) NOT NULL,
  `dlsc` tinyint(2) NOT NULL,
  `lh` tinyint(2) NOT NULL,
  `tg` tinyint(2) NOT NULL,
  `dzp` tinyint(2) NOT NULL,
  `yhq` tinyint(2) NOT NULL,
  `ggk` tinyint(2) NOT NULL,
  `sgj` tinyint(2) NOT NULL,
  `zjd` tinyint(2) NOT NULL,
  `yzdd` tinyint(2) NOT NULL,
  `qd` tinyint(2) NOT NULL,
  `hk` tinyint(2) NOT NULL,
  `yyl` tinyint(2) NOT NULL,
  `zpq` tinyint(2) NOT NULL,
  `wxq` tinyint(2) NOT NULL,
  `wmp` tinyint(2) NOT NULL,
  `xwifi` tinyint(2) NOT NULL,
  `wdc` tinyint(2) NOT NULL,
  `wxt` tinyint(2) NOT NULL,
  `wqc` tinyint(2) NOT NULL,
  `wyl` tinyint(2) NOT NULL,
  `wjy` tinyint(2) NOT NULL,
  `wjd` tinyint(2) NOT NULL,
  `wfc` tinyint(2) NOT NULL,
  `wmr` tinyint(2) NOT NULL,
  `wjs` tinyint(2) NOT NULL,
  `wzw` tinyint(2) NOT NULL,
  `wsp` tinyint(2) NOT NULL,
  `wly` tinyint(2) NOT NULL,
  `whd` tinyint(2) NOT NULL,
  `wwy` tinyint(2) NOT NULL,
  `wtkv` tinyint(2) NOT NULL,
  `wjb` tinyint(2) NOT NULL,
  `wzx` tinyint(2) NOT NULL,
  `whq` tinyint(2) NOT NULL,
  `wcw` tinyint(2) NOT NULL,
  `wjz` tinyint(2) NOT NULL,
  `wzl` tinyint(2) NOT NULL,
  `wdy` tinyint(2) NOT NULL,
  `wxc` tinyint(2) NOT NULL,
  `wtp` tinyint(2) NOT NULL,
  `qj` tinyint(2) NOT NULL,
  `wnbd` tinyint(2) NOT NULL,
  `zxyd` tinyint(2) NOT NULL,
  `xwyy` tinyint(2) NOT NULL,
  `wyq` tinyint(2) NOT NULL,
  `zthd` tinyint(2) NOT NULL,
  `jjdh` tinyint(2) NOT NULL,
  `wsm` tinyint(2) NOT NULL,
  `jkdtw` tinyint(2) NOT NULL,
  `xwfc` tinyint(2) NOT NULL,
  `wzp` tinyint(2) NOT NULL,
  `cjyy` tinyint(2) NOT NULL,
  `uc_id` int(11) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `lasttime` varchar(13) NOT NULL,
  `status` varchar(1) NOT NULL,
  `apenable` tinyint(4) NOT NULL,
  `createip` varchar(30) NOT NULL,
  `mpenable` tinyint(4) NOT NULL,
  `lastip` varchar(30) NOT NULL,
  `diynum` int(11) NOT NULL,
  `activitynum` int(11) NOT NULL,
  `gongzhongnumgon` int(11) NOT NULL,
  `card_num` int(11) NOT NULL,
  `card_create_status` tinyint(1) NOT NULL,
  `money` int(11) NOT NULL,
  `moneybalance` int(10) NOT NULL DEFAULT '0',
  `spend` int(5) NOT NULL DEFAULT '0',
  `viptime` varchar(13) NOT NULL,
  `connectnum` int(11) NOT NULL DEFAULT '0',
  `lastloginmonth` smallint(2) NOT NULL DEFAULT '0',
  `attachmentsize` int(10) NOT NULL DEFAULT '0',
  `wechat_card_num` int(3) NOT NULL,
  `serviceUserNum` tinyint(3) NOT NULL,
  `invitecode` varchar(6) NOT NULL DEFAULT '',
  `remark` varchar(200) NOT NULL DEFAULT '',
  `agentid` int(10) NOT NULL DEFAULT '0',
  `business` char(20) NOT NULL DEFAULT 'other',
  `usertplid` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_user_group`
--

CREATE TABLE IF NOT EXISTS `tp_user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `taxisid` int(10) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL,
  `diynum` int(11) NOT NULL,
  `connectnum` int(11) NOT NULL,
  `iscopyright` tinyint(1) NOT NULL,
  `activitynum` int(3) NOT NULL,
  `price` int(11) NOT NULL,
  `statistics_user` int(11) NOT NULL,
  `create_card_num` int(4) NOT NULL,
  `wechat_card_num` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `func` varchar(3000) DEFAULT NULL,
  `agentid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `tp_user_group`
--

INSERT INTO `tp_user_group` (`id`, `taxisid`, `name`, `diynum`, `connectnum`, `iscopyright`, `activitynum`, `price`, `statistics_user`, `create_card_num`, `wechat_card_num`, `status`, `func`, `agentid`) VALUES
(1, 1, '试用版', 2000, 2000, 0, 0, 0, 0, 10, 1, 1, '', 0),
(2, 2, '体验版', 3000, 3000, 1, 2, 10, 0, 50, 1, 1, '', 0),
(3, 3, '增强版', 40000, 40000, 1, 4, 150, 0, 80, 2, 1, '', 0),
(4, 4, '黄金版', 50000, 50000, 1, 10, 200, 0, 10000, 100, 1, 'tianqi,qiushi,jishuan,langdu,jiankang,kuaidi,xiaohua,changtoushi,peiliao,liaotian,mengjian,yuyinfanyi,huoche,gongjiao,shenfenzheng,shouji,yinle,fujin,Paper,taobao,userinfo,fanyi,api,suanming,baike,caipiao,Zhaopianwall,RippleOS,shouye,adma,huiyuanka,Vcard,usernameCheck,geci,whois,host_kev,diyform,dx,shop,etuan,diymen_set,choujiang,lottery,gua2,panorama,Wedding,Vote,estate,album,GoldenEgg,LuckyFruit,messageboard,car,wall,shake,forum,medical,groupmessage,share,hotel,school,Live,Jiejing,Autumn,Lovers,AppleGame,Research,Problem,Signin,Scene,Market,Custom,Greeting_card,beauty,fitness,gover,food,travel,flower,property,ktv,bar,fitment,buswedd,affections,housekeeper,lease,Gamecenter,Zhida,Red_packet,Punish,Invite,Autumns,Baoming,Scenes,Fenlei,Jikedati,Zhaopin,Fangchan,Shakeprize,Hforward,Sharetalent,Message,AdvanceTpl,Hcar,Knwx,Jingcai,Wzqemail,Kefu,Helping,Popularity', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_user_request`
--

CREATE TABLE IF NOT EXISTS `tp_user_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(30) NOT NULL,
  `uid` varchar(32) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `msgtype` varchar(15) NOT NULL DEFAULT 'text',
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `msgtype` (`msgtype`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_vcard`
--

CREATE TABLE IF NOT EXISTS `tp_vcard` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `company` varchar(100) DEFAULT NULL,
  `company_tel` varchar(100) DEFAULT NULL,
  `baiduapi` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `info` varchar(500) DEFAULT NULL COMMENT '公司简介',
  `fax` varchar(100) DEFAULT NULL,
  `title` text NOT NULL,
  `jianjie` text NOT NULL,
  `tp` char(255) NOT NULL,
  `logo` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_vcard_list`
--

CREATE TABLE IF NOT EXISTS `tp_vcard_list` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `tel` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `work` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `qq` varchar(100) DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `banner` varchar(200) NOT NULL,
  `jianjie` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_voiceresponse`
--

CREATE TABLE IF NOT EXISTS `tp_voiceresponse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `uname` varchar(90) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `uptatetime` varchar(13) NOT NULL,
  `keyword` char(255) NOT NULL,
  `title` varchar(60) NOT NULL,
  `musicurl` char(255) NOT NULL,
  `hqmusicurl` char(255) NOT NULL,
  `description` char(255) NOT NULL,
  `token` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_vote`
--

CREATE TABLE IF NOT EXISTS `tp_vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `token` varchar(50) NOT NULL,
  `type` char(5) NOT NULL COMMENT 'text/img 文本/图片',
  `picurl` varchar(500) NOT NULL,
  `showpic` tinyint(4) NOT NULL COMMENT '是否显示图片',
  `info` varchar(500) NOT NULL COMMENT '投票说明',
  `statdate` int(11) NOT NULL,
  `enddate` int(11) NOT NULL,
  `display` tinyint(4) NOT NULL,
  `cknums` tinyint(3) NOT NULL DEFAULT '1' COMMENT '最多可选择，默认1',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `sl` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `refresh` tinyint(4) NOT NULL,
  `is_reg` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `keyword` (`keyword`),
  FULLTEXT KEY `token` (`token`),
  FULLTEXT KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_vote_item`
--

CREATE TABLE IF NOT EXISTS `tp_vote_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vid` int(11) NOT NULL COMMENT 'vote_id',
  `item` varchar(50) NOT NULL,
  `vcount` int(11) NOT NULL,
  `startpicurl` varchar(200) NOT NULL DEFAULT '',
  `tourl` varchar(200) NOT NULL DEFAULT '',
  `rank` tinyint(4) NOT NULL COMMENT '排序',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_vote_record`
--

CREATE TABLE IF NOT EXISTS `tp_vote_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` varchar(50) NOT NULL COMMENT '投票项 1,2,3,',
  `vid` int(11) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `touched` tinyint(4) NOT NULL,
  `touch_time` int(11) NOT NULL COMMENT '投票日期',
  `token` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_wall`
--

CREATE TABLE IF NOT EXISTS `tp_wall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(20) NOT NULL DEFAULT '',
  `time` int(11) NOT NULL DEFAULT '0',
  `logo` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `startbackground` varchar(100) NOT NULL,
  `background` varchar(100) NOT NULL,
  `endbackground` varchar(100) NOT NULL,
  `isopen` tinyint(1) NOT NULL DEFAULT '1',
  `firstprizename` varchar(50) NOT NULL,
  `firstprizepic` varchar(100) NOT NULL,
  `firstprizecount` mediumint(5) NOT NULL DEFAULT '0',
  `secondprizename` varchar(50) NOT NULL,
  `secondprizecount` mediumint(4) NOT NULL DEFAULT '0',
  `secondprizepic` varchar(50) NOT NULL,
  `thirdprizename` varchar(50) NOT NULL,
  `thirdprizepic` varchar(100) NOT NULL,
  `thirdprizecount` mediumint(4) NOT NULL DEFAULT '0',
  `fourthprizename` varchar(50) NOT NULL,
  `fourthprizecount` mediumint(4) NOT NULL DEFAULT '0',
  `fourthprizepic` varchar(100) NOT NULL,
  `fifthprizename` varchar(50) NOT NULL,
  `fifthprizecount` mediumint(5) NOT NULL DEFAULT '0',
  `fifthprizepic` varchar(100) NOT NULL,
  `sixthprizename` varchar(50) NOT NULL,
  `sixthprizecount` mediumint(4) NOT NULL DEFAULT '0',
  `sixthprizepic` varchar(100) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `qrcode` varchar(100) NOT NULL,
  `ck_msg` enum('0','1') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_wall`
--

INSERT INTO `tp_wall` (`id`, `token`, `time`, `logo`, `title`, `startbackground`, `background`, `endbackground`, `isopen`, `firstprizename`, `firstprizepic`, `firstprizecount`, `secondprizename`, `secondprizecount`, `secondprizepic`, `thirdprizename`, `thirdprizepic`, `thirdprizecount`, `fourthprizename`, `fourthprizecount`, `fourthprizepic`, `fifthprizename`, `fifthprizecount`, `fifthprizepic`, `sixthprizename`, `sixthprizecount`, `sixthprizepic`, `keyword`, `qrcode`, `ck_msg`) VALUES
(1, 'mbeboo1416823194', 1417096783, './tpl/static/wall/images/default_logo.png', '投票开始了', '', './tpl/static/wall/images/default_bg.jpg', '', 1, '', '', 0, '', 0, '', '', '', 0, '', 0, '', '', 0, '', '', 0, '', '', '', '0');

-- --------------------------------------------------------

--
-- 表的结构 `tp_wall_member`
--

CREATE TABLE IF NOT EXISTS `tp_wall_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(20) NOT NULL DEFAULT '',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `portrait` varchar(150) NOT NULL DEFAULT '',
  `nickname` varchar(60) NOT NULL DEFAULT '',
  `truename` varchar(40) NOT NULL,
  `phone` char(11) NOT NULL,
  `mp` varchar(11) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `wallid` int(10) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `sex` tinyint(1) NOT NULL DEFAULT '0',
  `act_id` int(11) NOT NULL,
  `act_type` enum('1','2','3') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`,`wallid`),
  KEY `wecha_id` (`wecha_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_wall_member`
--

INSERT INTO `tp_wall_member` (`id`, `token`, `wecha_id`, `portrait`, `nickname`, `truename`, `phone`, `mp`, `time`, `wallid`, `status`, `sex`, `act_id`, `act_type`) VALUES
(1, 'mbeboo1416823194', 'oXzezjqUZITRAu6DZ9ty2xY9tAMQ', 'http://demo.weiqianlong.com/tpl/static/portrait/5.jpg', '哈哈', '7646', '15687856235', '', 1417350502, 0, 1, 1, 1, '2');

-- --------------------------------------------------------

--
-- 表的结构 `tp_wall_message`
--

CREATE TABLE IF NOT EXISTS `tp_wall_message` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `wallid` int(10) NOT NULL DEFAULT '0',
  `token` varchar(20) NOT NULL DEFAULT '',
  `wecha_id` varchar(60) NOT NULL DEFAULT '',
  `content` varchar(500) NOT NULL DEFAULT '',
  `picture` varchar(150) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT '0',
  `is_scene` enum('0','1') NOT NULL,
  `is_check` enum('0','1') NOT NULL,
  `check_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wallid` (`wallid`,`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_wall_prize`
--

CREATE TABLE IF NOT EXISTS `tp_wall_prize` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(40) NOT NULL,
  `pname` char(40) NOT NULL,
  `pic` char(100) NOT NULL,
  `num` mediumint(9) NOT NULL,
  `token` char(20) NOT NULL,
  `sort` tinyint(3) unsigned NOT NULL,
  `sceneid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_wall_prize_record`
--

CREATE TABLE IF NOT EXISTS `tp_wall_prize_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `wallid` int(11) NOT NULL DEFAULT '0',
  `prize` mediumint(4) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL,
  `sceneid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wallid` (`wallid`,`prize`,`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_wall_supperzzle`
--

CREATE TABLE IF NOT EXISTS `tp_wall_supperzzle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sceneid` int(10) unsigned NOT NULL,
  `nid` int(10) unsigned NOT NULL,
  `vid` int(10) unsigned NOT NULL,
  `addtime` int(11) NOT NULL,
  `token` char(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_weather`
--

CREATE TABLE IF NOT EXISTS `tp_weather` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `code` char(9) NOT NULL,
  `name` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2502 ;

--
-- 转存表中的数据 `tp_weather`
--

INSERT INTO `tp_weather` (`id`, `code`, `name`) VALUES
(1, '101010100', '北京'),
(2, '101010200', '海淀'),
(3, '101010400', '顺义'),
(4, '101010500', '怀柔'),
(5, '101010600', '通州'),
(6, '101010700', '昌平'),
(7, '101010800', '延庆'),
(8, '101010900', '丰台'),
(9, '101011000', '石景山'),
(10, '101011100', '大兴'),
(11, '101011200', '房山'),
(12, '101011300', '密云'),
(13, '101011400', '门头沟'),
(14, '101011500', '平谷'),
(15, '101020100', '上海'),
(16, '101020200', '闵行'),
(17, '101020300', '宝山'),
(18, '101020500', '嘉定'),
(19, '101020600', '浦东南汇'),
(20, '101020700', '金山'),
(21, '101020800', '青浦'),
(22, '101020900', '松江'),
(23, '101021000', '奉贤'),
(24, '101021100', '崇明'),
(25, '101021300', '浦东'),
(26, '101030200', '武清'),
(27, '101030300', '宝坻'),
(28, '101030400', '东丽'),
(29, '101030500', '西青'),
(30, '101030600', '北辰'),
(31, '101030700', '宁河'),
(32, '101030800', '汉沽'),
(33, '101030900', '静海'),
(34, '101031000', '津南'),
(35, '101031100', '塘沽'),
(36, '101031200', '大港'),
(37, '101031400', '蓟县'),
(38, '101040100', '重庆'),
(39, '101040200', '永川'),
(40, '101040300', '合川'),
(41, '101040400', '南川'),
(42, '101040500', '江津'),
(43, '101040600', '万盛'),
(44, '101040700', '渝北'),
(45, '101040800', '北碚'),
(46, '101041000', '长寿'),
(47, '101041100', '黔江'),
(48, '101041300', '万州'),
(49, '101041400', '涪陵'),
(50, '101041500', '开县'),
(51, '101041600', '城口'),
(52, '101041700', '云阳'),
(53, '101041800', '巫溪'),
(54, '101041900', '奉节'),
(55, '101042000', '巫山'),
(56, '101042100', '潼南'),
(57, '101042200', '垫江'),
(58, '101042300', '梁平'),
(59, '101042400', '忠县'),
(60, '101042500', '石柱'),
(61, '101042600', '大足'),
(62, '101042700', '荣昌'),
(63, '101042800', '铜梁'),
(64, '101042900', '璧山'),
(65, '101043000', '丰都'),
(66, '101043100', '武隆'),
(67, '101043200', '彭水'),
(68, '101043300', '綦江'),
(69, '101043400', '酉阳'),
(70, '101043600', '秀山'),
(71, '101050101', '哈尔滨'),
(72, '101050102', '双城'),
(73, '101050103', '呼兰'),
(74, '101050104', '阿城'),
(75, '101050105', '宾县'),
(76, '101050106', '依兰'),
(77, '101050107', '巴彦'),
(78, '101050108', '通河'),
(79, '101050109', '方正'),
(80, '101050110', '延寿'),
(81, '101050111', '尚志'),
(82, '101050112', '五常'),
(83, '101050113', '木兰'),
(84, '101050201', '齐齐哈尔'),
(85, '101050202', '讷河'),
(86, '101050203', '龙江'),
(87, '101050204', '甘南'),
(88, '101050205', '富裕'),
(89, '101050206', '依安'),
(90, '101050207', '拜泉'),
(91, '101050208', '克山'),
(92, '101050209', '克东'),
(93, '101050210', '泰来'),
(94, '101050301', '牡丹江'),
(95, '101050302', '海林'),
(96, '101050303', '穆棱'),
(97, '101050304', '林口'),
(98, '101050305', '绥芬河'),
(99, '101050306', '宁安'),
(100, '101050307', '东宁'),
(101, '101050401', '佳木斯'),
(102, '101050402', '汤原'),
(103, '101050403', '抚远'),
(104, '101050404', '桦川'),
(105, '101050405', '桦南'),
(106, '101050406', '同江'),
(107, '101050407', '富锦'),
(108, '101050501', '绥化'),
(109, '101050502', '肇东'),
(110, '101050503', '安达'),
(111, '101050504', '海伦'),
(112, '101050505', '明水'),
(113, '101050506', '望奎'),
(114, '101050507', '兰西'),
(115, '101050508', '青冈'),
(116, '101050509', '庆安'),
(117, '101050510', '绥棱'),
(118, '101050601', '黑河'),
(119, '101050602', '嫩江'),
(120, '101050603', '孙吴'),
(121, '101050604', '逊克'),
(122, '101050605', '五大连池'),
(123, '101050606', '北安'),
(124, '101050701', '大兴安岭'),
(125, '101050702', '塔河'),
(126, '101050703', '漠河'),
(127, '101050704', '呼玛'),
(128, '101050801', '伊春'),
(129, '101050804', '铁力'),
(130, '101050805', '嘉荫'),
(131, '101050901', '大庆'),
(132, '101050902', '林甸'),
(133, '101050903', '肇州'),
(134, '101050904', '肇源'),
(135, '101050905', '杜蒙'),
(136, '101051002', '七台河'),
(137, '101051003', '勃利'),
(138, '101051101', '鸡西'),
(139, '101051102', '虎林'),
(140, '101051103', '密山'),
(141, '101051104', '鸡东'),
(142, '101051201', '鹤岗'),
(143, '101051202', '绥滨'),
(144, '101051203', '萝北'),
(145, '101051301', '双鸭山'),
(146, '101051302', '集贤'),
(147, '101051303', '宝清'),
(148, '101051304', '饶河'),
(149, '101051305', '友谊'),
(150, '101060101', '长春'),
(151, '101060102', '农安'),
(152, '101060103', '德惠'),
(153, '101060104', '九台'),
(154, '101060105', '榆树'),
(155, '101060201', '吉林'),
(156, '101060202', '舒兰'),
(157, '101060203', '永吉'),
(158, '101060204', '蛟河'),
(159, '101060205', '磐石'),
(160, '101060206', '桦甸'),
(161, '101060302', '敦化'),
(162, '101060303', '安图'),
(163, '101060304', '汪清'),
(164, '101060305', '和龙'),
(165, '101060307', '龙井'),
(166, '101060308', '珲春'),
(167, '101060309', '图们'),
(168, '101060312', '延吉'),
(169, '101060401', '四平'),
(170, '101060402', '双辽'),
(171, '101060403', '梨树'),
(172, '101060404', '公主岭'),
(173, '101060405', '伊通'),
(174, '101060501', '通化'),
(175, '101060502', '梅河口'),
(176, '101060503', '柳河'),
(177, '101060504', '辉南'),
(178, '101060505', '集安'),
(179, '101060601', '白城'),
(180, '101060602', '洮南'),
(181, '101060603', '大安'),
(182, '101060604', '镇赉'),
(183, '101060605', '通榆'),
(184, '101060701', '辽源'),
(185, '101060702', '东丰'),
(186, '101060703', '东辽'),
(187, '101060801', '松原'),
(188, '101060802', '乾安'),
(189, '101060803', '前郭'),
(190, '101060804', '长岭'),
(191, '101060805', '扶余'),
(192, '101060901', '白山'),
(193, '101060902', '靖宇'),
(194, '101060903', '临江'),
(195, '101060905', '长白'),
(196, '101060906', '抚松'),
(197, '101060907', '江源'),
(198, '101070101', '沈阳'),
(199, '101070103', '辽中'),
(200, '101070104', '康平'),
(201, '101070105', '法库'),
(202, '101070106', '新民'),
(203, '101070201', '大连'),
(204, '101070202', '瓦房店'),
(205, '101070204', '普兰店'),
(206, '101070206', '长海'),
(207, '101070207', '庄河'),
(208, '101070301', '鞍山'),
(209, '101070302', '台安'),
(210, '101070303', '岫岩'),
(211, '101070304', '海城'),
(212, '101070401', '抚顺'),
(213, '101070402', '新宾'),
(214, '101070403', '清原'),
(215, '101070501', '本溪'),
(216, '101070504', '桓仁'),
(217, '101070601', '丹东'),
(218, '101070602', '凤城'),
(219, '101070603', '宽甸'),
(220, '101070604', '东港'),
(221, '101070701', '锦州'),
(222, '101070702', '凌海'),
(223, '101070704', '义县'),
(224, '101070705', '黑山'),
(225, '101070706', '北镇'),
(226, '101070801', '营口'),
(227, '101070802', '大石桥'),
(228, '101070803', '盖州'),
(229, '101070901', '阜新'),
(230, '101070902', '彰武'),
(231, '101071001', '辽阳'),
(232, '101071003', '灯塔'),
(233, '101071004', '弓长岭'),
(234, '101071101', '铁岭'),
(235, '101071102', '开原'),
(236, '101071103', '昌图'),
(237, '101071104', '西丰'),
(238, '101071105', '调兵山'),
(239, '101071201', '朝阳'),
(240, '101071203', '凌源'),
(241, '101071204', '喀左'),
(242, '101071205', '北票'),
(243, '101071207', '建平'),
(244, '101071301', '盘锦'),
(245, '101071302', '大洼'),
(246, '101071303', '盘山'),
(247, '101071401', '葫芦岛'),
(248, '101071402', '建昌'),
(249, '101071403', '绥中'),
(250, '101071404', '兴城'),
(251, '101080101', '呼和浩特'),
(252, '101080102', '土左'),
(253, '101080103', '托克托'),
(254, '101080104', '和林格尔'),
(255, '101080105', '清水河'),
(256, '101080107', '武川'),
(257, '101080201', '包头'),
(258, '101080202', '白云鄂博'),
(259, '101080204', '土右'),
(260, '101080205', '固阳'),
(261, '101080206', '达茂'),
(262, '101080301', '乌海'),
(263, '101080401', '乌兰察布'),
(264, '101080402', '卓资'),
(265, '101080403', '化德'),
(266, '101080404', '商都'),
(267, '101080406', '兴和'),
(268, '101080407', '凉城'),
(269, '101080408', '察右前'),
(270, '101080409', '察右中'),
(271, '101080410', '察右后'),
(272, '101080411', '四子王'),
(273, '101080412', '丰镇'),
(274, '101080501', '通辽'),
(275, '101080503', '科左中'),
(276, '101080504', '科左后'),
(277, '101080506', '开鲁'),
(278, '101080507', '库伦'),
(279, '101080508', '奈曼'),
(280, '101080509', '扎鲁特'),
(281, '101080601', '赤峰'),
(282, '101080603', '阿鲁'),
(283, '101080605', '巴林左'),
(284, '101080606', '巴林右'),
(285, '101080607', '林西'),
(286, '101080608', '克什'),
(287, '101080609', '翁牛特'),
(288, '101080611', '喀喇沁'),
(289, '101080613', '宁城'),
(290, '101080614', '敖汉'),
(291, '101080701', '鄂尔多斯'),
(292, '101080703', '达拉特'),
(293, '101080704', '准格尔'),
(294, '101080706', '河南'),
(295, '101080708', '鄂托克'),
(296, '101080709', '杭锦'),
(297, '101080710', '乌审'),
(298, '101080711', '伊金霍洛'),
(299, '101080801', '巴彦淖尔'),
(300, '101080802', '五原'),
(301, '101080803', '磴口'),
(302, '101080804', '乌前'),
(303, '101080806', '乌中'),
(304, '101080807', '乌后'),
(305, '101080810', '杭锦后'),
(306, '101080901', '锡林浩特'),
(307, '101080903', '二连浩特'),
(308, '101080904', '阿巴嘎'),
(309, '101080906', '苏左'),
(310, '101080907', '苏右'),
(311, '101080909', '东乌'),
(312, '101080910', '西乌'),
(313, '101080911', '太仆寺'),
(314, '101080912', '镶黄'),
(315, '101080913', '正镶白'),
(316, '101080914', '正蓝'),
(317, '101080915', '多伦'),
(318, '101081000', '呼伦贝尔'),
(319, '101081001', '海拉尔'),
(320, '101081003', '阿荣'),
(321, '101081004', '莫力达瓦'),
(322, '101081005', '鄂伦春'),
(323, '101081006', '鄂温克'),
(324, '101081007', '陈巴尔虎'),
(325, '101081008', '新左'),
(326, '101081009', '新右'),
(327, '101081010', '满洲里'),
(328, '101081011', '牙克石'),
(329, '101081012', '扎兰屯'),
(330, '101081014', '额尔古纳'),
(331, '101081015', '根河'),
(332, '101081101', '乌兰浩特'),
(333, '101081102', '阿尔山'),
(334, '101081103', '科右中'),
(335, '101081105', '扎赉特'),
(336, '101081107', '突泉'),
(337, '101081108', '霍林郭勒'),
(338, '101081109', '科右前'),
(339, '101081201', '阿拉善'),
(340, '101081202', '阿右'),
(341, '101081203', '额济纳'),
(342, '101090101', '石家庄'),
(343, '101090102', '井陉'),
(344, '101090103', '正定'),
(345, '101090104', '栾城'),
(346, '101090105', '行唐'),
(347, '101090106', '灵寿'),
(348, '101090107', '高邑'),
(349, '101090108', '深泽'),
(350, '101090109', '赞皇'),
(351, '101090110', '无极'),
(352, '101090111', '平山'),
(353, '101090112', '元氏'),
(354, '101090113', '赵县'),
(355, '101090114', '辛集'),
(356, '101090115', '藁城'),
(357, '101090116', '晋州'),
(358, '101090117', '新乐'),
(359, '101090118', '鹿泉'),
(360, '101090201', '保定'),
(361, '101090202', '满城'),
(362, '101090203', '阜平'),
(363, '101090204', '徐水'),
(364, '101090205', '唐县'),
(365, '101090206', '高阳'),
(366, '101090207', '容城'),
(367, '101090209', '涞源'),
(368, '101090210', '望都'),
(369, '101090211', '安新'),
(370, '101090212', '易县'),
(371, '101090214', '曲阳'),
(372, '101090215', '蠡县'),
(373, '101090216', '顺平'),
(374, '101090217', '雄县'),
(375, '101090218', '涿州'),
(376, '101090219', '定州'),
(377, '101090220', '安国'),
(378, '101090221', '高碑店'),
(379, '101090222', '涞水'),
(380, '101090223', '定兴'),
(381, '101090224', '清苑'),
(382, '101090225', '博野'),
(383, '101090301', '张家口'),
(384, '101090302', '宣化'),
(385, '101090303', '张北'),
(386, '101090304', '康保'),
(387, '101090305', '沽源'),
(388, '101090306', '尚义'),
(389, '101090307', '蔚县'),
(390, '101090308', '阳原'),
(391, '101090309', '怀安'),
(392, '101090310', '万全'),
(393, '101090311', '怀来'),
(394, '101090312', '涿鹿'),
(395, '101090313', '赤城'),
(396, '101090314', '崇礼'),
(397, '101090402', '承德'),
(398, '101090404', '兴隆'),
(399, '101090405', '平泉'),
(400, '101090406', '滦平'),
(401, '101090407', '隆化'),
(402, '101090408', '丰宁'),
(403, '101090409', '宽城'),
(404, '101090410', '围场'),
(405, '101090501', '唐山'),
(406, '101090502', '丰南'),
(407, '101090503', '丰润'),
(408, '101090504', '滦县'),
(409, '101090505', '滦南'),
(410, '101090506', '乐亭'),
(411, '101090507', '迁西'),
(412, '101090508', '玉田'),
(413, '101090509', '唐海'),
(414, '101090510', '遵化'),
(415, '101090511', '迁安'),
(416, '101090512', '曹妃甸'),
(417, '101090601', '廊坊'),
(418, '101090602', '固安'),
(419, '101090603', '永清'),
(420, '101090604', '香河'),
(421, '101090605', '大城'),
(422, '101090606', '文安'),
(423, '101090607', '大厂'),
(424, '101090608', '霸州'),
(425, '101090609', '三河'),
(426, '101090701', '沧州'),
(427, '101090702', '青县'),
(428, '101090703', '东光'),
(429, '101090704', '海兴'),
(430, '101090705', '盐山'),
(431, '101090706', '肃宁'),
(432, '101090707', '南皮'),
(433, '101090708', '吴桥'),
(434, '101090709', '献县'),
(435, '101090710', '孟村'),
(436, '101090711', '泊头'),
(437, '101090712', '任丘'),
(438, '101090713', '黄骅'),
(439, '101090714', '河间'),
(440, '101090716', '沧县'),
(441, '101090801', '衡水'),
(442, '101090802', '枣强'),
(443, '101090803', '武邑'),
(444, '101090804', '武强'),
(445, '101090805', '饶阳'),
(446, '101090806', '安平'),
(447, '101090807', '故城'),
(448, '101090808', '景县'),
(449, '101090809', '阜城'),
(450, '101090810', '冀州'),
(451, '101090811', '深州'),
(452, '101090901', '邢台'),
(453, '101090902', '临城'),
(454, '101090905', '柏乡'),
(455, '101090906', '隆尧'),
(456, '101090907', '南和'),
(457, '101090908', '宁晋'),
(458, '101090909', '巨鹿'),
(459, '101090910', '新河'),
(460, '101090911', '广宗'),
(461, '101090912', '平乡'),
(462, '101090913', '威县'),
(463, '101090914', '清河'),
(464, '101090915', '临西'),
(465, '101090916', '南宫'),
(466, '101090917', '沙河'),
(467, '101090918', '任县'),
(468, '101090919', '内丘'),
(469, '101091001', '邯郸'),
(470, '101091002', '峰峰矿'),
(471, '101091003', '临漳'),
(472, '101091004', '成安'),
(473, '101091005', '大名'),
(474, '101091006', '涉县'),
(475, '101091007', '磁县'),
(476, '101091008', '肥乡'),
(477, '101091009', '永年'),
(478, '101091010', '邱县'),
(479, '101091011', '鸡泽'),
(480, '101091012', '广平'),
(481, '101091013', '馆陶'),
(482, '101091014', '魏县'),
(483, '101091015', '曲周'),
(484, '101091016', '武安'),
(485, '101091101', '秦皇岛'),
(486, '101091102', '青龙'),
(487, '101091103', '昌黎'),
(488, '101091104', '抚宁'),
(489, '101091105', '卢龙'),
(490, '101100101', '太原'),
(491, '101100102', '清徐'),
(492, '101100103', '阳曲'),
(493, '101100104', '娄烦'),
(494, '101100105', '古交'),
(495, '101100201', '大同'),
(496, '101100202', '阳高'),
(497, '101100204', '天镇'),
(498, '101100205', '广灵'),
(499, '101100206', '灵丘'),
(500, '101100207', '浑源'),
(501, '101100208', '左云'),
(502, '101100301', '阳泉'),
(503, '101100302', '盂县'),
(504, '101100303', '平定'),
(505, '101100401', '晋中'),
(506, '101100403', '榆社'),
(507, '101100404', '左权'),
(508, '101100405', '和顺'),
(509, '101100406', '昔阳'),
(510, '101100407', '寿阳'),
(511, '101100408', '太谷'),
(512, '101100409', '祁县'),
(513, '101100410', '平遥'),
(514, '101100411', '灵石'),
(515, '101100412', '介休'),
(516, '101100501', '长治'),
(517, '101100502', '黎城'),
(518, '101100503', '屯留'),
(519, '101100504', '潞城'),
(520, '101100505', '襄垣'),
(521, '101100506', '平顺'),
(522, '101100507', '武乡'),
(523, '101100508', '沁县'),
(524, '101100509', '长子'),
(525, '101100510', '沁源'),
(526, '101100511', '壶关'),
(527, '101100601', '晋城'),
(528, '101100602', '沁水'),
(529, '101100603', '阳城'),
(530, '101100604', '陵川'),
(531, '101100605', '高平'),
(532, '101100606', '泽州'),
(533, '101100701', '临汾'),
(534, '101100702', '曲沃'),
(535, '101100703', '永和'),
(536, '101100704', '隰县'),
(537, '101100705', '大宁'),
(538, '101100706', '吉县'),
(539, '101100707', '襄汾'),
(540, '101100708', '蒲县'),
(541, '101100709', '汾西'),
(542, '101100710', '洪洞'),
(543, '101100711', '霍州'),
(544, '101100712', '乡宁'),
(545, '101100713', '翼城'),
(546, '101100714', '侯马'),
(547, '101100715', '浮山'),
(548, '101100716', '安泽'),
(549, '101100717', '古县'),
(550, '101100801', '运城'),
(551, '101100802', '临猗'),
(552, '101100803', '稷山'),
(553, '101100804', '万荣'),
(554, '101100805', '河津'),
(555, '101100806', '新绛'),
(556, '101100807', '绛县'),
(557, '101100808', '闻喜'),
(558, '101100809', '垣曲'),
(559, '101100810', '永济'),
(560, '101100811', '芮城'),
(561, '101100812', '夏县'),
(562, '101100813', '平陆'),
(563, '101100901', '朔州'),
(564, '101100903', '山阴'),
(565, '101100904', '右玉'),
(566, '101100905', '应县'),
(567, '101100906', '怀仁'),
(568, '101101001', '忻州'),
(569, '101101002', '定襄'),
(570, '101101003', '五台'),
(571, '101101004', '河曲'),
(572, '101101005', '偏关'),
(573, '101101006', '神池'),
(574, '101101007', '宁武'),
(575, '101101008', '代县'),
(576, '101101009', '繁峙'),
(577, '101101011', '保德'),
(578, '101101012', '静乐'),
(579, '101101013', '岢岚'),
(580, '101101014', '五寨'),
(581, '101101015', '原平'),
(582, '101101100', '吕梁'),
(583, '101101101', '离石'),
(584, '101101102', '临县'),
(585, '101101103', '兴县'),
(586, '101101104', '岚县'),
(587, '101101105', '柳林'),
(588, '101101106', '石楼'),
(589, '101101107', '方山'),
(590, '101101108', '交口'),
(591, '101101109', '中阳'),
(592, '101101110', '孝义'),
(593, '101101111', '汾阳'),
(594, '101101112', '文水'),
(595, '101101113', '交城'),
(596, '101110101', '西安'),
(597, '101110102', '长安'),
(598, '101110104', '蓝田'),
(599, '101110105', '周至'),
(600, '101110106', '户县'),
(601, '101110107', '高陵'),
(602, '101110200', '咸阳'),
(603, '101110201', '三原'),
(604, '101110202', '礼泉'),
(605, '101110203', '永寿'),
(606, '101110204', '淳化'),
(607, '101110205', '泾阳'),
(608, '101110206', '武功'),
(609, '101110207', '乾县'),
(610, '101110208', '彬县'),
(611, '101110209', '长武'),
(612, '101110210', '旬邑'),
(613, '101110211', '兴平'),
(614, '101110300', '延安'),
(615, '101110401', '榆林'),
(616, '101110402', '府谷'),
(617, '101110403', '神木'),
(618, '101110404', '佳县'),
(619, '101110405', '定边'),
(620, '101110406', '靖边'),
(621, '101110407', '横山'),
(622, '101110408', '米脂'),
(623, '101110409', '子洲'),
(624, '101110410', '绥德'),
(625, '101110411', '吴堡'),
(626, '101110412', '清涧'),
(627, '101110501', '渭南'),
(628, '101110502', '华县'),
(629, '101110503', '潼关'),
(630, '101110504', '大荔'),
(631, '101110505', '白水'),
(632, '101110506', '富平'),
(633, '101110507', '蒲城'),
(634, '101110508', '澄城'),
(635, '101110509', '合阳'),
(636, '101110510', '韩城'),
(637, '101110511', '华阴'),
(638, '101110601', '商洛'),
(639, '101110602', '洛南'),
(640, '101110603', '柞水'),
(641, '101110604', '商州'),
(642, '101110605', '镇安'),
(643, '101110606', '丹凤'),
(644, '101110607', '商南'),
(645, '101110608', '山阳'),
(646, '101110701', '安康'),
(647, '101110702', '紫阳'),
(648, '101110703', '石泉'),
(649, '101110704', '汉阴'),
(650, '101110705', '旬阳'),
(651, '101110706', '岚皋'),
(652, '101110707', '平利'),
(653, '101110708', '白河'),
(654, '101110709', '镇坪'),
(655, '101110710', '宁陕'),
(656, '101110801', '汉中'),
(657, '101110802', '略阳'),
(658, '101110803', '勉县'),
(659, '101110804', '留坝'),
(660, '101110805', '洋县'),
(661, '101110806', '城固'),
(662, '101110807', '西乡'),
(663, '101110808', '佛坪'),
(664, '101110809', '宁强'),
(665, '101110810', '南郑'),
(666, '101110811', '镇巴'),
(667, '101110901', '宝鸡'),
(668, '101110903', '千阳'),
(669, '101110904', '麟游'),
(670, '101110905', '岐山'),
(671, '101110906', '凤翔'),
(672, '101110907', '扶风'),
(673, '101110908', '眉县'),
(674, '101110909', '太白'),
(675, '101110910', '凤县'),
(676, '101110911', '陇县'),
(677, '101111001', '铜川'),
(678, '101111003', '宜君'),
(679, '101111101', '杨凌'),
(680, '101120101', '济南'),
(681, '101120103', '商河'),
(682, '101120104', '章丘'),
(683, '101120105', '平阴'),
(684, '101120106', '济阳'),
(685, '101120201', '青岛'),
(686, '101120204', '即墨'),
(687, '101120205', '胶州'),
(688, '101120206', '胶南'),
(689, '101120207', '莱西'),
(690, '101120208', '平度'),
(691, '101120301', '淄博'),
(692, '101120304', '高青'),
(693, '101120306', '沂源'),
(694, '101120307', '桓台'),
(695, '101120401', '德州'),
(696, '101120402', '武城'),
(697, '101120403', '临邑'),
(698, '101120404', '陵县'),
(699, '101120405', '齐河'),
(700, '101120406', '乐陵'),
(701, '101120407', '庆云'),
(702, '101120408', '平原'),
(703, '101120409', '宁津'),
(704, '101120410', '夏津'),
(705, '101120411', '禹城'),
(706, '101120501', '烟台'),
(707, '101120502', '莱州'),
(708, '101120503', '长岛'),
(709, '101120504', '蓬莱'),
(710, '101120505', '龙口'),
(711, '101120506', '招远'),
(712, '101120507', '栖霞'),
(713, '101120510', '莱阳'),
(714, '101120511', '海阳'),
(715, '101120601', '潍坊'),
(716, '101120602', '青州'),
(717, '101120603', '寿光'),
(718, '101120604', '临朐'),
(719, '101120605', '昌乐'),
(720, '101120606', '昌邑'),
(721, '101120607', '安丘'),
(722, '101120608', '高密'),
(723, '101120609', '诸城'),
(724, '101120701', '济宁'),
(725, '101120702', '嘉祥'),
(726, '101120703', '微山'),
(727, '101120704', '鱼台'),
(728, '101120705', '兖州'),
(729, '101120706', '金乡'),
(730, '101120707', '汶上'),
(731, '101120708', '泗水'),
(732, '101120709', '梁山'),
(733, '101120710', '曲阜'),
(734, '101120711', '邹城'),
(735, '101120801', '泰安'),
(736, '101120802', '新泰'),
(737, '101120804', '肥城'),
(738, '101120805', '东平'),
(739, '101120806', '宁阳'),
(740, '101120901', '临沂'),
(741, '101120902', '莒南'),
(742, '101120903', '沂南'),
(743, '101120904', '苍山'),
(744, '101120905', '临沭'),
(745, '101120906', '郯城'),
(746, '101120907', '蒙阴'),
(747, '101120908', '平邑'),
(748, '101120909', '费县'),
(749, '101120910', '沂水'),
(750, '101121001', '菏泽'),
(751, '101121002', '鄄城'),
(752, '101121003', '郓城'),
(753, '101121004', '东明'),
(754, '101121005', '定陶'),
(755, '101121006', '巨野'),
(756, '101121007', '曹县'),
(757, '101121008', '成武'),
(758, '101121009', '单县'),
(759, '101121101', '滨州'),
(760, '101121102', '博兴'),
(761, '101121103', '无棣'),
(762, '101121104', '阳信'),
(763, '101121105', '惠民'),
(764, '101121106', '沾化'),
(765, '101121107', '邹平'),
(766, '101121201', '东营'),
(767, '101121203', '垦利'),
(768, '101121204', '利津'),
(769, '101121205', '广饶'),
(770, '101121301', '威海'),
(771, '101121302', '文登'),
(772, '101121303', '荣成'),
(773, '101121304', '乳山'),
(774, '101121401', '枣庄'),
(775, '101121405', '滕州'),
(776, '101121501', '日照'),
(777, '101121502', '五莲'),
(778, '101121503', '莒县'),
(779, '101121601', '莱芜'),
(780, '101121701', '聊城'),
(781, '101121702', '冠县'),
(782, '101121703', '阳谷'),
(783, '101121704', '高唐'),
(784, '101121705', '茌平'),
(785, '101121706', '东阿'),
(786, '101121707', '临清'),
(787, '101121709', '莘县'),
(788, '101130101', '乌鲁木齐'),
(789, '101130105', '达坂城'),
(790, '101130201', '克拉玛依'),
(791, '101130202', '乌尔禾'),
(792, '101130203', '白碱滩'),
(793, '101130301', '石河子'),
(794, '101130401', '昌吉'),
(795, '101130402', '呼图壁'),
(796, '101130403', '米泉'),
(797, '101130404', '阜康'),
(798, '101130405', '吉木萨尔'),
(799, '101130406', '奇台'),
(800, '101130407', '玛纳斯'),
(801, '101130408', '木垒'),
(802, '101130501', '吐鲁番'),
(803, '101130503', '克州'),
(804, '101130504', '鄯善'),
(805, '101130601', '库尔勒'),
(806, '101130602', '轮台'),
(807, '101130603', '尉犁'),
(808, '101130604', '若羌'),
(809, '101130605', '且末'),
(810, '101130606', '和静'),
(811, '101130607', '焉耆'),
(812, '101130608', '和硕'),
(813, '101130612', '博湖'),
(814, '101130701', '阿拉尔'),
(815, '101130801', '阿克苏'),
(816, '101130802', '乌什'),
(817, '101130803', '温宿'),
(818, '101130804', '拜城'),
(819, '101130805', '新和'),
(820, '101130806', '沙雅'),
(821, '101130807', '库车'),
(822, '101130808', '柯坪'),
(823, '101130809', '阿瓦提'),
(824, '101130901', '喀什'),
(825, '101130902', '英吉沙'),
(826, '101130903', '塔什库尔干'),
(827, '101130904', '麦盖提'),
(828, '101130905', '莎车'),
(829, '101130906', '叶城'),
(830, '101130907', '泽普'),
(831, '101130908', '巴楚'),
(832, '101130909', '岳普湖'),
(833, '101130910', '伽师'),
(834, '101130911', '疏附'),
(835, '101130912', '疏勒'),
(836, '101131001', '伊宁'),
(837, '101131002', '察布查尔'),
(838, '101131003', '尼勒克'),
(839, '101131005', '巩留'),
(840, '101131006', '新源'),
(841, '101131007', '昭苏'),
(842, '101131008', '特克斯'),
(843, '101131009', '霍城'),
(844, '101131011', '奎屯'),
(845, '101131101', '塔城'),
(846, '101131102', '裕民'),
(847, '101131103', '额敏'),
(848, '101131104', '和布克赛尔'),
(849, '101131105', '托里'),
(850, '101131106', '乌苏'),
(851, '101131107', '沙湾'),
(852, '101131201', '哈密'),
(853, '101131203', '巴里坤'),
(854, '101131204', '伊吾'),
(855, '101131301', '和田'),
(856, '101131302', '皮山'),
(857, '101131303', '策勒'),
(858, '101131304', '墨玉'),
(859, '101131305', '洛浦'),
(860, '101131306', '民丰'),
(861, '101131307', '于田'),
(862, '101131401', '阿勒泰'),
(863, '101131402', '哈巴河'),
(864, '101131405', '吉木乃'),
(865, '101131406', '布尔津'),
(866, '101131407', '福海'),
(867, '101131408', '富蕴'),
(868, '101131409', '青河'),
(869, '101131501', '阿图什'),
(870, '101131502', '乌恰'),
(871, '101131503', '阿克陶'),
(872, '101131504', '阿合奇'),
(873, '101131601', '博乐'),
(874, '101131602', '温泉'),
(875, '101131603', '精河'),
(876, '101140101', '拉萨'),
(877, '101140102', '当雄'),
(878, '101140103', '尼木'),
(879, '101140104', '林周'),
(880, '101140105', '堆龙德庆'),
(881, '101140106', '曲水'),
(882, '101140107', '达孜'),
(883, '101140108', '墨竹工卡'),
(884, '101140201', '日喀则'),
(885, '101140202', '拉孜'),
(886, '101140204', '聂拉木'),
(887, '101140205', '定日'),
(888, '101140206', '江孜'),
(889, '101140208', '仲巴'),
(890, '101140209', '萨嘎'),
(891, '101140210', '吉隆'),
(892, '101140211', '昂仁'),
(893, '101140212', '定结'),
(894, '101140213', '萨迦'),
(895, '101140214', '谢通门'),
(896, '101140215', '楠木林'),
(897, '101140216', '岗巴'),
(898, '101140217', '白朗'),
(899, '101140218', '亚东'),
(900, '101140219', '康马'),
(901, '101140220', '仁布'),
(902, '101140301', '山南'),
(903, '101140302', '贡嘎'),
(904, '101140303', '札囊'),
(905, '101140304', '加查'),
(906, '101140305', '浪卡子'),
(907, '101140306', '错那'),
(908, '101140307', '隆子'),
(909, '101140309', '乃东'),
(910, '101140310', '桑日'),
(911, '101140311', '洛扎'),
(912, '101140312', '措美'),
(913, '101140313', '琼结'),
(914, '101140314', '曲松'),
(915, '101140401', '林芝'),
(916, '101140402', '波密'),
(917, '101140403', '米林'),
(918, '101140404', '察隅'),
(919, '101140405', '工布江达'),
(920, '101140406', '朗县'),
(921, '101140407', '墨脱'),
(922, '101140501', '昌都'),
(923, '101140502', '丁青'),
(924, '101140503', '边坝'),
(925, '101140504', '洛隆'),
(926, '101140505', '左贡'),
(927, '101140506', '芒康'),
(928, '101140507', '类乌齐'),
(929, '101140508', '八宿'),
(930, '101140509', '江达'),
(931, '101140510', '察雅'),
(932, '101140511', '贡觉'),
(933, '101140601', '那曲'),
(934, '101140602', '尼玛'),
(935, '101140603', '嘉黎'),
(936, '101140604', '班戈'),
(937, '101140605', '安多'),
(938, '101140606', '索县'),
(939, '101140607', '聂荣'),
(940, '101140608', '巴青'),
(941, '101140609', '比如'),
(942, '101140610', '双湖'),
(943, '101140701', '阿里'),
(944, '101140702', '改则'),
(945, '101140703', '申扎'),
(946, '101140705', '普兰'),
(947, '101140706', '札达'),
(948, '101140707', '噶尔'),
(949, '101140708', '日土'),
(950, '101140709', '革吉'),
(951, '101140710', '措勤'),
(952, '101150101', '西宁'),
(953, '101150102', '大通'),
(954, '101150103', '湟源'),
(955, '101150104', '湟中'),
(956, '101150201', '海东'),
(957, '101150202', '乐都'),
(958, '101150203', '民和'),
(959, '101150204', '互助'),
(960, '101150205', '化隆'),
(961, '101150206', '循化'),
(962, '101150208', '平安'),
(963, '101150301', '黄南'),
(964, '101150302', '尖扎'),
(965, '101150303', '泽库'),
(966, '101150305', '同仁'),
(967, '101150401', '海南'),
(968, '101150404', '贵德'),
(969, '101150406', '兴海'),
(970, '101150407', '贵南'),
(971, '101150408', '同德'),
(972, '101150409', '共和'),
(973, '101150501', '果洛'),
(974, '101150502', '班玛'),
(975, '101150503', '甘德'),
(976, '101150504', '达日'),
(977, '101150505', '久治'),
(978, '101150506', '玛多'),
(979, '101150508', '玛沁'),
(980, '101150601', '玉树'),
(981, '101150602', '称多'),
(982, '101150603', '治多'),
(983, '101150604', '杂多'),
(984, '101150605', '囊谦'),
(985, '101150606', '曲麻莱'),
(986, '101150701', '海西'),
(987, '101150708', '天峻'),
(988, '101150709', '乌兰'),
(989, '101150716', '德令哈'),
(990, '101150801', '海北'),
(991, '101150802', '门源'),
(992, '101150803', '祁连'),
(993, '101150804', '海晏'),
(994, '101150806', '刚察'),
(995, '101150901', '格尔木'),
(996, '101150902', '都兰'),
(997, '101160101', '兰州'),
(998, '101160102', '皋兰'),
(999, '101160103', '永登'),
(1000, '101160104', '榆中'),
(1001, '101160201', '定西'),
(1002, '101160202', '通渭'),
(1003, '101160203', '陇西'),
(1004, '101160204', '渭源'),
(1005, '101160205', '临洮'),
(1006, '101160206', '漳县'),
(1007, '101160207', '岷县'),
(1008, '101160301', '平凉'),
(1009, '101160302', '泾川'),
(1010, '101160303', '灵台'),
(1011, '101160304', '崇信'),
(1012, '101160305', '华亭'),
(1013, '101160306', '庄浪'),
(1014, '101160307', '静宁'),
(1015, '101160401', '庆阳'),
(1016, '101160402', '西峰'),
(1017, '101160403', '环县'),
(1018, '101160404', '华池'),
(1019, '101160405', '合水'),
(1020, '101160406', '正宁'),
(1021, '101160407', '宁县'),
(1022, '101160408', '镇原'),
(1023, '101160409', '庆城'),
(1024, '101160501', '武威'),
(1025, '101160502', '民勤'),
(1026, '101160503', '古浪'),
(1027, '101160505', '天祝'),
(1028, '101160601', '金昌'),
(1029, '101160602', '永昌'),
(1030, '101160701', '张掖'),
(1031, '101160702', '肃南'),
(1032, '101160703', '民乐'),
(1033, '101160704', '临泽'),
(1034, '101160705', '高台'),
(1035, '101160706', '山丹'),
(1036, '101160801', '酒泉'),
(1037, '101160803', '金塔'),
(1038, '101160804', '阿克塞'),
(1039, '101160805', '瓜州'),
(1040, '101160806', '肃北'),
(1041, '101160807', '玉门'),
(1042, '101160808', '敦煌'),
(1043, '101160901', '天水'),
(1044, '101160903', '清水'),
(1045, '101160904', '秦安'),
(1046, '101160905', '甘谷'),
(1047, '101160906', '武山'),
(1048, '101160907', '张家川'),
(1049, '101161001', '陇南'),
(1050, '101161002', '成县'),
(1051, '101161003', '文县'),
(1052, '101161004', '宕昌'),
(1053, '101161005', '康县'),
(1054, '101161006', '西和'),
(1055, '101161007', '礼县'),
(1056, '101161008', '徽县'),
(1057, '101161009', '两当'),
(1058, '101161101', '临夏'),
(1059, '101161102', '康乐'),
(1060, '101161103', '永靖'),
(1061, '101161104', '广河'),
(1062, '101161105', '和政'),
(1063, '101161107', '积石山'),
(1064, '101161201', '合作'),
(1065, '101161202', '临潭'),
(1066, '101161203', '卓尼'),
(1067, '101161204', '舟曲'),
(1068, '101161205', '迭部'),
(1069, '101161206', '玛曲'),
(1070, '101161207', '碌曲'),
(1071, '101161208', '夏河'),
(1072, '101161301', '白银'),
(1073, '101161302', '靖远'),
(1074, '101161303', '会宁'),
(1075, '101161304', '平川'),
(1076, '101161305', '景泰'),
(1077, '101161401', '嘉峪关'),
(1078, '101170101', '银川'),
(1079, '101170102', '永宁'),
(1080, '101170103', '灵武'),
(1081, '101170104', '贺兰'),
(1082, '101170201', '石嘴山'),
(1083, '101170203', '平罗'),
(1084, '101170301', '吴忠'),
(1085, '101170302', '同心'),
(1086, '101170303', '盐池'),
(1087, '101170306', '青铜峡'),
(1088, '101170401', '固原'),
(1089, '101170402', '西吉'),
(1090, '101170403', '隆德'),
(1091, '101170404', '泾源'),
(1092, '101170406', '彭阳'),
(1093, '101170501', '中卫'),
(1094, '101170502', '中宁'),
(1095, '101170504', '海原'),
(1096, '101180101', '郑州'),
(1097, '101180102', '巩义'),
(1098, '101180103', '荥阳'),
(1099, '101180104', '登封'),
(1100, '101180105', '新密'),
(1101, '101180106', '新郑'),
(1102, '101180107', '中牟'),
(1103, '101180108', '上街'),
(1104, '101180201', '安阳'),
(1105, '101180202', '汤阴'),
(1106, '101180203', '滑县'),
(1107, '101180204', '内黄'),
(1108, '101180205', '林州'),
(1109, '101180301', '新乡'),
(1110, '101180302', '获嘉'),
(1111, '101180303', '原阳'),
(1112, '101180304', '辉县'),
(1113, '101180305', '卫辉'),
(1114, '101180306', '延津'),
(1115, '101180307', '封丘'),
(1116, '101180308', '长垣'),
(1117, '101180401', '许昌'),
(1118, '101180402', '鄢陵'),
(1119, '101180403', '襄城'),
(1120, '101180404', '长葛'),
(1121, '101180405', '禹州'),
(1122, '101180501', '平顶山'),
(1123, '101180502', '郏县'),
(1124, '101180503', '宝丰'),
(1125, '101180504', '汝州'),
(1126, '101180505', '叶县'),
(1127, '101180506', '舞钢'),
(1128, '101180507', '鲁山'),
(1129, '101180508', '石龙'),
(1130, '101180601', '信阳'),
(1131, '101180602', '息县'),
(1132, '101180603', '罗山'),
(1133, '101180604', '光山'),
(1134, '101180605', '新县'),
(1135, '101180606', '淮滨'),
(1136, '101180607', '潢川'),
(1137, '101180608', '固始'),
(1138, '101180609', '商城'),
(1139, '101180701', '南阳'),
(1140, '101180702', '南召'),
(1141, '101180703', '方城'),
(1142, '101180704', '社旗'),
(1143, '101180705', '西峡'),
(1144, '101180706', '内乡'),
(1145, '101180707', '镇平'),
(1146, '101180708', '淅川'),
(1147, '101180709', '新野'),
(1148, '101180710', '唐河'),
(1149, '101180711', '邓州'),
(1150, '101180712', '桐柏'),
(1151, '101180801', '开封'),
(1152, '101180802', '杞县'),
(1153, '101180803', '尉氏'),
(1154, '101180804', '通许'),
(1155, '101180805', '兰考'),
(1156, '101180901', '洛阳'),
(1157, '101180902', '新安'),
(1158, '101180903', '孟津'),
(1159, '101180904', '宜阳'),
(1160, '101180905', '洛宁'),
(1161, '101180906', '伊川'),
(1162, '101180907', '嵩县'),
(1163, '101180908', '偃师'),
(1164, '101180909', '栾川'),
(1165, '101180910', '汝阳'),
(1166, '101180911', '吉利'),
(1167, '101181001', '商丘'),
(1168, '101181003', '睢县'),
(1169, '101181004', '民权'),
(1170, '101181005', '虞城'),
(1171, '101181006', '柘城'),
(1172, '101181007', '宁陵'),
(1173, '101181008', '夏邑'),
(1174, '101181009', '永城'),
(1175, '101181101', '焦作'),
(1176, '101181102', '修武'),
(1177, '101181103', '武陟'),
(1178, '101181104', '沁阳'),
(1179, '101181106', '博爱'),
(1180, '101181107', '温县'),
(1181, '101181108', '孟州'),
(1182, '101181201', '鹤壁'),
(1183, '101181202', '浚县'),
(1184, '101181203', '淇县'),
(1185, '101181301', '濮阳'),
(1186, '101181302', '台前'),
(1187, '101181303', '南乐'),
(1188, '101181304', '清丰'),
(1189, '101181305', '范县'),
(1190, '101181401', '周口'),
(1191, '101181402', '扶沟'),
(1192, '101181403', '太康'),
(1193, '101181404', '淮阳'),
(1194, '101181405', '西华'),
(1195, '101181406', '商水'),
(1196, '101181407', '项城'),
(1197, '101181408', '郸城'),
(1198, '101181409', '鹿邑'),
(1199, '101181410', '沈丘'),
(1200, '101181501', '漯河'),
(1201, '101181502', '临颍'),
(1202, '101181503', '舞阳'),
(1203, '101181504', '临颖'),
(1204, '101181601', '驻马店'),
(1205, '101181602', '西平'),
(1206, '101181603', '遂平'),
(1207, '101181604', '上蔡'),
(1208, '101181605', '汝南'),
(1209, '101181606', '泌阳'),
(1210, '101181607', '平舆'),
(1211, '101181608', '新蔡'),
(1212, '101181609', '确山'),
(1213, '101181610', '正阳'),
(1214, '101181701', '三门峡'),
(1215, '101181702', '灵宝'),
(1216, '101181703', '渑池'),
(1217, '101181704', '卢氏'),
(1218, '101181705', '义马'),
(1219, '101181706', '陕县'),
(1220, '101181801', '济源'),
(1221, '101190101', '南京'),
(1222, '101190102', '溧水'),
(1223, '101190103', '高淳'),
(1224, '101190104', '江宁'),
(1225, '101190105', '六合'),
(1226, '101190107', '浦口'),
(1227, '101190201', '无锡'),
(1228, '101190202', '江阴'),
(1229, '101190203', '宜兴'),
(1230, '101190204', '锡山'),
(1231, '101190301', '镇江'),
(1232, '101190302', '丹阳'),
(1233, '101190303', '扬中'),
(1234, '101190304', '句容'),
(1235, '101190305', '丹徒'),
(1236, '101190401', '苏州'),
(1237, '101190402', '常熟'),
(1238, '101190403', '张家港'),
(1239, '101190404', '昆山'),
(1240, '101190405', '吴中'),
(1241, '101190407', '吴江'),
(1242, '101190408', '太仓'),
(1243, '101190501', '南通'),
(1244, '101190502', '海安'),
(1245, '101190503', '如皋'),
(1246, '101190504', '如东'),
(1247, '101190507', '启东'),
(1248, '101190508', '海门'),
(1249, '101190601', '扬州'),
(1250, '101190602', '宝应'),
(1251, '101190603', '仪征'),
(1252, '101190604', '高邮'),
(1253, '101190605', '江都'),
(1254, '101190606', '邗江'),
(1255, '101190701', '盐城'),
(1256, '101190702', '响水'),
(1257, '101190703', '滨海'),
(1258, '101190704', '阜宁'),
(1259, '101190705', '射阳'),
(1260, '101190706', '建湖'),
(1261, '101190707', '东台'),
(1262, '101190708', '大丰'),
(1263, '101190709', '盐都'),
(1264, '101190801', '徐州'),
(1265, '101190802', '铜山'),
(1266, '101190803', '丰县'),
(1267, '101190804', '沛县'),
(1268, '101190805', '邳州'),
(1269, '101190806', '睢宁'),
(1270, '101190807', '新沂'),
(1271, '101190901', '淮安'),
(1272, '101190902', '金湖'),
(1273, '101190903', '盱眙'),
(1274, '101190904', '洪泽'),
(1275, '101190905', '涟水'),
(1276, '101191001', '连云港'),
(1277, '101191002', '东海'),
(1278, '101191003', '赣榆'),
(1279, '101191004', '灌云'),
(1280, '101191005', '灌南'),
(1281, '101191101', '常州'),
(1282, '101191102', '溧阳'),
(1283, '101191103', '金坛'),
(1284, '101191104', '武进'),
(1285, '101191201', '泰州'),
(1286, '101191202', '兴化'),
(1287, '101191203', '泰兴'),
(1288, '101191204', '姜堰'),
(1289, '101191205', '靖江'),
(1290, '101191301', '宿迁'),
(1291, '101191302', '沭阳'),
(1292, '101191303', '泗阳'),
(1293, '101191304', '泗洪'),
(1294, '101191305', '宿豫'),
(1295, '101200101', '武汉'),
(1296, '101200102', '蔡甸'),
(1297, '101200103', '黄陂'),
(1298, '101200104', '新洲'),
(1299, '101200105', '江夏'),
(1300, '101200106', '东西湖'),
(1301, '101200201', '襄阳'),
(1302, '101200202', '襄州'),
(1303, '101200203', '保康'),
(1304, '101200204', '南漳'),
(1305, '101200205', '宜城'),
(1306, '101200206', '老河口'),
(1307, '101200207', '谷城'),
(1308, '101200208', '枣阳'),
(1309, '101200301', '鄂州'),
(1310, '101200302', '梁子湖'),
(1311, '101200401', '孝感'),
(1312, '101200402', '安陆'),
(1313, '101200403', '云梦'),
(1314, '101200404', '大悟'),
(1315, '101200405', '应城'),
(1316, '101200406', '汉川'),
(1317, '101200407', '孝昌'),
(1318, '101200501', '黄冈'),
(1319, '101200502', '红安'),
(1320, '101200503', '麻城'),
(1321, '101200504', '罗田'),
(1322, '101200505', '英山'),
(1323, '101200506', '浠水'),
(1324, '101200507', '蕲春'),
(1325, '101200508', '黄梅'),
(1326, '101200509', '武穴'),
(1327, '101200510', '团风'),
(1328, '101200601', '黄石'),
(1329, '101200602', '大冶'),
(1330, '101200603', '阳新'),
(1331, '101200604', '铁山'),
(1332, '101200605', '下陆'),
(1333, '101200606', '西塞山'),
(1334, '101200701', '咸宁'),
(1335, '101200702', '赤壁'),
(1336, '101200703', '嘉鱼'),
(1337, '101200704', '崇阳'),
(1338, '101200705', '通城'),
(1339, '101200706', '通山'),
(1340, '101200801', '荆州'),
(1341, '101200802', '江陵'),
(1342, '101200803', '公安'),
(1343, '101200804', '石首'),
(1344, '101200805', '监利'),
(1345, '101200806', '洪湖'),
(1346, '101200807', '松滋'),
(1347, '101200901', '宜昌'),
(1348, '101200902', '远安'),
(1349, '101200903', '秭归'),
(1350, '101200904', '兴山'),
(1351, '101200906', '五峰'),
(1352, '101200907', '当阳'),
(1353, '101200908', '长阳'),
(1354, '101200909', '宜都'),
(1355, '101200910', '枝江'),
(1356, '101201001', '恩施'),
(1357, '101201002', '利川'),
(1358, '101201003', '建始'),
(1359, '101201004', '咸丰'),
(1360, '101201005', '宣恩'),
(1361, '101201006', '鹤峰'),
(1362, '101201007', '来凤'),
(1363, '101201008', '巴东'),
(1364, '101201101', '十堰'),
(1365, '101201102', '竹溪'),
(1366, '101201103', '郧西'),
(1367, '101201104', '郧县'),
(1368, '101201105', '竹山'),
(1369, '101201106', '房县'),
(1370, '101201107', '丹江口'),
(1371, '101201108', '茅箭'),
(1372, '101201109', '张湾'),
(1373, '101201201', '神农架'),
(1374, '101201301', '随州'),
(1375, '101201302', '广水'),
(1376, '101201401', '荆门'),
(1377, '101201402', '钟祥'),
(1378, '101201403', '京山'),
(1379, '101201404', '掇刀'),
(1380, '101201405', '沙洋'),
(1381, '101201406', '沙市'),
(1382, '101201501', '天门'),
(1383, '101201601', '仙桃'),
(1384, '101201701', '潜江'),
(1385, '101210101', '杭州'),
(1386, '101210102', '萧山'),
(1387, '101210103', '桐庐'),
(1388, '101210104', '淳安'),
(1389, '101210105', '建德'),
(1390, '101210106', '余杭'),
(1391, '101210107', '临安'),
(1392, '101210108', '富阳'),
(1393, '101210201', '湖州'),
(1394, '101210202', '长兴'),
(1395, '101210203', '安吉'),
(1396, '101210204', '德清'),
(1397, '101210301', '嘉兴'),
(1398, '101210302', '嘉善'),
(1399, '101210303', '海宁'),
(1400, '101210304', '桐乡'),
(1401, '101210305', '平湖'),
(1402, '101210306', '海盐'),
(1403, '101210401', '宁波'),
(1404, '101210403', '慈溪'),
(1405, '101210404', '余姚'),
(1406, '101210405', '奉化'),
(1407, '101210406', '象山'),
(1408, '101210408', '宁海'),
(1409, '101210410', '北仑'),
(1410, '101210411', '鄞州'),
(1411, '101210501', '绍兴'),
(1412, '101210502', '诸暨'),
(1413, '101210503', '上虞'),
(1414, '101210504', '新昌'),
(1415, '101210505', '嵊州'),
(1416, '101210601', '台州'),
(1417, '101210603', '玉环'),
(1418, '101210604', '三门'),
(1419, '101210605', '天台'),
(1420, '101210606', '仙居'),
(1421, '101210607', '温岭'),
(1422, '101210610', '临海'),
(1423, '101210701', '温州'),
(1424, '101210702', '泰顺'),
(1425, '101210703', '文成'),
(1426, '101210704', '平阳'),
(1427, '101210705', '瑞安'),
(1428, '101210706', '洞头'),
(1429, '101210707', '乐清'),
(1430, '101210708', '永嘉'),
(1431, '101210709', '苍南'),
(1432, '101210801', '丽水'),
(1433, '101210802', '遂昌'),
(1434, '101210803', '龙泉'),
(1435, '101210804', '缙云'),
(1436, '101210805', '青田'),
(1437, '101210806', '云和'),
(1438, '101210807', '庆元'),
(1439, '101210808', '松阳'),
(1440, '101210809', '景宁'),
(1441, '101210901', '金华'),
(1442, '101210902', '浦江'),
(1443, '101210903', '兰溪'),
(1444, '101210904', '义乌'),
(1445, '101210905', '东阳'),
(1446, '101210906', '武义'),
(1447, '101210907', '永康'),
(1448, '101210908', '磐安'),
(1449, '101211001', '衢州'),
(1450, '101211002', '常山'),
(1451, '101211003', '开化'),
(1452, '101211004', '龙游'),
(1453, '101211005', '江山'),
(1454, '101211101', '舟山'),
(1455, '101211102', '嵊泗'),
(1456, '101211104', '岱山'),
(1457, '101220101', '合肥'),
(1458, '101220102', '长丰'),
(1459, '101220103', '肥东'),
(1460, '101220104', '肥西'),
(1461, '101220201', '蚌埠'),
(1462, '101220202', '怀远'),
(1463, '101220203', '固镇'),
(1464, '101220204', '五河'),
(1465, '101220301', '芜湖'),
(1466, '101220302', '繁昌'),
(1467, '101220304', '南陵'),
(1468, '101220401', '淮南'),
(1469, '101220402', '凤台'),
(1470, '101220403', '潘集'),
(1471, '101220501', '马鞍山'),
(1472, '101220502', '当涂'),
(1473, '101220601', '安庆'),
(1474, '101220602', '枞阳'),
(1475, '101220603', '太湖'),
(1476, '101220604', '潜山'),
(1477, '101220605', '怀宁'),
(1478, '101220606', '宿松'),
(1479, '101220607', '望江'),
(1480, '101220608', '岳西'),
(1481, '101220609', '桐城'),
(1482, '101220701', '宿州'),
(1483, '101220702', '砀山'),
(1484, '101220703', '灵璧'),
(1485, '101220704', '泗县'),
(1486, '101220705', '萧县'),
(1487, '101220801', '阜阳'),
(1488, '101220802', '阜南'),
(1489, '101220803', '颍上'),
(1490, '101220804', '临泉'),
(1491, '101220805', '界首'),
(1492, '101220806', '太和'),
(1493, '101220901', '亳州'),
(1494, '101220902', '涡阳'),
(1495, '101220903', '利辛'),
(1496, '101220904', '蒙城'),
(1497, '101221001', '黄山'),
(1498, '101221004', '祁门'),
(1499, '101221005', '黟县'),
(1500, '101221006', '歙县'),
(1501, '101221007', '休宁'),
(1502, '101221101', '滁州'),
(1503, '101221102', '凤阳'),
(1504, '101221103', '明光'),
(1505, '101221104', '定远'),
(1506, '101221105', '全椒'),
(1507, '101221106', '来安'),
(1508, '101221107', '天长'),
(1509, '101221201', '淮北'),
(1510, '101221202', '濉溪'),
(1511, '101221301', '铜陵'),
(1512, '101221401', '宣城'),
(1513, '101221402', '泾县'),
(1514, '101221403', '旌德'),
(1515, '101221404', '宁国'),
(1516, '101221405', '绩溪'),
(1517, '101221406', '广德'),
(1518, '101221407', '郎溪'),
(1519, '101221501', '六安'),
(1520, '101221502', '霍邱'),
(1521, '101221503', '寿县'),
(1522, '101221505', '金寨'),
(1523, '101221506', '霍山'),
(1524, '101221507', '舒城'),
(1525, '101221601', '巢湖'),
(1526, '101221602', '庐江'),
(1527, '101221603', '无为'),
(1528, '101221604', '含山'),
(1529, '101221605', '和县'),
(1530, '101221701', '池州'),
(1531, '101221702', '东至'),
(1532, '101221703', '青阳'),
(1533, '101221705', '石台'),
(1534, '101230101', '福州'),
(1535, '101230102', '闽清'),
(1536, '101230103', '闽侯'),
(1537, '101230104', '罗源'),
(1538, '101230105', '连江'),
(1539, '101230107', '永泰'),
(1540, '101230108', '平潭'),
(1541, '101230110', '长乐'),
(1542, '101230111', '福清'),
(1543, '101230201', '厦门'),
(1544, '101230301', '宁德'),
(1545, '101230302', '古田'),
(1546, '101230303', '霞浦'),
(1547, '101230304', '寿宁'),
(1548, '101230305', '周宁'),
(1549, '101230306', '福安'),
(1550, '101230307', '柘荣'),
(1551, '101230308', '福鼎'),
(1552, '101230309', '屏南'),
(1553, '101230401', '莆田'),
(1554, '101230402', '仙游'),
(1555, '101230404', '涵江'),
(1556, '101230405', '秀屿'),
(1557, '101230406', '荔城'),
(1558, '101230407', '城厢'),
(1559, '101230501', '泉州'),
(1560, '101230502', '安溪'),
(1561, '101230504', '永春'),
(1562, '101230505', '德化'),
(1563, '101230506', '南安'),
(1564, '101230508', '惠安'),
(1565, '101230509', '晋江'),
(1566, '101230510', '石狮'),
(1567, '101230601', '漳州'),
(1568, '101230602', '长泰'),
(1569, '101230603', '南靖'),
(1570, '101230604', '平和'),
(1571, '101230605', '龙海'),
(1572, '101230606', '漳浦'),
(1573, '101230607', '诏安'),
(1574, '101230609', '云霄'),
(1575, '101230610', '华安'),
(1576, '101230701', '龙岩'),
(1577, '101230702', '长汀'),
(1578, '101230703', '连城'),
(1579, '101230704', '武平'),
(1580, '101230705', '上杭'),
(1581, '101230706', '永定'),
(1582, '101230707', '漳平'),
(1583, '101230801', '三明'),
(1584, '101230802', '宁化'),
(1585, '101230803', '清流'),
(1586, '101230804', '泰宁'),
(1587, '101230805', '将乐'),
(1588, '101230806', '建宁'),
(1589, '101230807', '明溪'),
(1590, '101230808', '沙县'),
(1591, '101230809', '尤溪'),
(1592, '101230810', '永安'),
(1593, '101230811', '大田'),
(1594, '101230901', '南平'),
(1595, '101230902', '顺昌'),
(1596, '101230903', '光泽'),
(1597, '101230904', '邵武'),
(1598, '101230905', '武夷山'),
(1599, '101230906', '浦城'),
(1600, '101230907', '建阳'),
(1601, '101230908', '松溪'),
(1602, '101230909', '政和'),
(1603, '101230910', '建瓯'),
(1604, '101231001', '钓鱼岛'),
(1605, '101240101', '南昌'),
(1606, '101240102', '新建'),
(1607, '101240104', '安义'),
(1608, '101240105', '进贤'),
(1609, '101240201', '九江'),
(1610, '101240202', '瑞昌'),
(1611, '101240204', '武宁'),
(1612, '101240205', '德安'),
(1613, '101240206', '永修'),
(1614, '101240207', '湖口'),
(1615, '101240208', '彭泽'),
(1616, '101240209', '星子'),
(1617, '101240210', '都昌'),
(1618, '101240212', '修水'),
(1619, '101240301', '上饶'),
(1620, '101240302', '鄱阳'),
(1621, '101240303', '婺源'),
(1622, '101240305', '余干'),
(1623, '101240306', '万年'),
(1624, '101240307', '德兴'),
(1625, '101240309', '弋阳'),
(1626, '101240310', '横峰'),
(1627, '101240311', '铅山'),
(1628, '101240312', '玉山'),
(1629, '101240313', '广丰'),
(1630, '101240401', '抚州'),
(1631, '101240402', '广昌'),
(1632, '101240403', '乐安'),
(1633, '101240404', '崇仁'),
(1634, '101240405', '金溪'),
(1635, '101240406', '资溪'),
(1636, '101240407', '宜黄'),
(1637, '101240408', '南城'),
(1638, '101240409', '南丰'),
(1639, '101240410', '黎川'),
(1640, '101240411', '东乡'),
(1641, '101240501', '宜春'),
(1642, '101240502', '铜鼓'),
(1643, '101240503', '宜丰'),
(1644, '101240504', '万载'),
(1645, '101240505', '上高'),
(1646, '101240506', '靖安'),
(1647, '101240507', '奉新'),
(1648, '101240508', '高安'),
(1649, '101240509', '樟树'),
(1650, '101240510', '丰城'),
(1651, '101240601', '吉安'),
(1652, '101240603', '吉水'),
(1653, '101240604', '新干'),
(1654, '101240605', '峡江'),
(1655, '101240606', '永丰'),
(1656, '101240607', '永新'),
(1657, '101240608', '井冈山'),
(1658, '101240609', '万安'),
(1659, '101240610', '遂川'),
(1660, '101240611', '泰和'),
(1661, '101240612', '安福'),
(1662, '101240701', '赣州'),
(1663, '101240702', '崇义'),
(1664, '101240703', '上犹'),
(1665, '101240704', '南康'),
(1666, '101240705', '大余'),
(1667, '101240706', '信丰'),
(1668, '101240707', '宁都'),
(1669, '101240708', '石城'),
(1670, '101240709', '瑞金'),
(1671, '101240710', '于都'),
(1672, '101240711', '会昌'),
(1673, '101240712', '安远'),
(1674, '101240713', '全南'),
(1675, '101240714', '龙南'),
(1676, '101240715', '定南'),
(1677, '101240716', '寻乌'),
(1678, '101240717', '兴国'),
(1679, '101240718', '赣县'),
(1680, '101240801', '景德镇'),
(1681, '101240802', '乐平'),
(1682, '101240803', '浮梁'),
(1683, '101240901', '萍乡'),
(1684, '101240902', '莲花'),
(1685, '101240903', '上栗'),
(1686, '101240905', '芦溪'),
(1687, '101240906', '湘东'),
(1688, '101241001', '新余'),
(1689, '101241002', '分宜'),
(1690, '101241101', '鹰潭'),
(1691, '101241102', '余江'),
(1692, '101241103', '贵溪'),
(1693, '101250101', '长沙'),
(1694, '101250102', '宁乡'),
(1695, '101250103', '浏阳'),
(1696, '101250105', '望城'),
(1697, '101250201', '湘潭'),
(1698, '101250202', '韶山'),
(1699, '101250203', '湘乡'),
(1700, '101250301', '株洲'),
(1701, '101250302', '攸县'),
(1702, '101250303', '醴陵'),
(1703, '101250305', '茶陵'),
(1704, '101250306', '炎陵'),
(1705, '101250401', '衡阳'),
(1706, '101250402', '衡山'),
(1707, '101250403', '衡东'),
(1708, '101250404', '祁东'),
(1709, '101250406', '常宁'),
(1710, '101250407', '衡南'),
(1711, '101250408', '耒阳'),
(1712, '101250501', '郴州'),
(1713, '101250502', '桂阳'),
(1714, '101250503', '嘉禾'),
(1715, '101250504', '宜章'),
(1716, '101250505', '临武'),
(1717, '101250507', '资兴'),
(1718, '101250508', '汝城'),
(1719, '101250509', '安仁'),
(1720, '101250510', '永兴'),
(1721, '101250511', '桂东'),
(1722, '101250512', '苏仙'),
(1723, '101250601', '常德'),
(1724, '101250602', '安乡'),
(1725, '101250603', '桃源'),
(1726, '101250604', '汉寿'),
(1727, '101250605', '澧县'),
(1728, '101250606', '临澧'),
(1729, '101250607', '石门'),
(1730, '101250608', '津市'),
(1731, '101250700', '益阳'),
(1732, '101250702', '南县'),
(1733, '101250703', '桃江'),
(1734, '101250704', '安化'),
(1735, '101250705', '沅江'),
(1736, '101250801', '娄底'),
(1737, '101250802', '双峰'),
(1738, '101250803', '冷水江'),
(1739, '101250805', '新化'),
(1740, '101250806', '涟源'),
(1741, '101250901', '邵阳'),
(1742, '101250902', '隆回'),
(1743, '101250903', '洞口');
INSERT INTO `tp_weather` (`id`, `code`, `name`) VALUES
(1744, '101250904', '新邵'),
(1745, '101250905', '邵东'),
(1746, '101250906', '绥宁'),
(1747, '101250907', '新宁'),
(1748, '101250908', '武冈'),
(1749, '101250909', '城步'),
(1750, '101251001', '岳阳'),
(1751, '101251002', '华容'),
(1752, '101251003', '湘阴'),
(1753, '101251004', '汨罗'),
(1754, '101251005', '平江'),
(1755, '101251006', '临湘'),
(1756, '101251101', '张家界'),
(1757, '101251102', '桑植'),
(1758, '101251103', '慈利'),
(1759, '101251104', '武陵源'),
(1760, '101251201', '怀化'),
(1761, '101251203', '沅陵'),
(1762, '101251204', '辰溪'),
(1763, '101251205', '靖州'),
(1764, '101251206', '会同'),
(1765, '101251207', '通道'),
(1766, '101251208', '麻阳'),
(1767, '101251209', '新晃'),
(1768, '101251210', '芷江'),
(1769, '101251211', '溆浦'),
(1770, '101251212', '中方'),
(1771, '101251213', '洪江'),
(1772, '101251401', '永州'),
(1773, '101251402', '祁阳'),
(1774, '101251403', '东安'),
(1775, '101251404', '双牌'),
(1776, '101251405', '道县'),
(1777, '101251406', '宁远'),
(1778, '101251407', '江永'),
(1779, '101251408', '蓝山'),
(1780, '101251409', '新田'),
(1781, '101251410', '江华'),
(1782, '101251501', '吉首'),
(1783, '101251502', '保靖'),
(1784, '101251503', '永顺'),
(1785, '101251504', '古丈'),
(1786, '101251505', '凤凰'),
(1787, '101251506', '泸溪'),
(1788, '101251507', '龙山'),
(1789, '101251508', '花垣'),
(1790, '101260101', '贵阳'),
(1791, '101260102', '白云'),
(1792, '101260103', '花溪'),
(1793, '101260104', '乌当'),
(1794, '101260105', '息烽'),
(1795, '101260106', '开阳'),
(1796, '101260107', '修文'),
(1797, '101260108', '清镇'),
(1798, '101260109', '小河'),
(1799, '101260110', '云岩'),
(1800, '101260111', '南明'),
(1801, '101260201', '遵义'),
(1802, '101260203', '仁怀'),
(1803, '101260204', '绥阳'),
(1804, '101260205', '湄潭'),
(1805, '101260206', '凤冈'),
(1806, '101260207', '桐梓'),
(1807, '101260208', '赤水'),
(1808, '101260209', '习水'),
(1809, '101260210', '道真'),
(1810, '101260211', '正安'),
(1811, '101260212', '务川'),
(1812, '101260213', '余庆'),
(1813, '101260214', '汇川'),
(1814, '101260215', '红花岗'),
(1815, '101260301', '安顺'),
(1816, '101260302', '普定'),
(1817, '101260303', '镇宁'),
(1818, '101260304', '平坝'),
(1819, '101260305', '紫云'),
(1820, '101260306', '关岭'),
(1821, '101260401', '都匀'),
(1822, '101260402', '贵定'),
(1823, '101260403', '瓮安'),
(1824, '101260404', '长顺'),
(1825, '101260405', '福泉'),
(1826, '101260406', '惠水'),
(1827, '101260407', '龙里'),
(1828, '101260408', '罗甸'),
(1829, '101260409', '平塘'),
(1830, '101260410', '独山'),
(1831, '101260411', '三都'),
(1832, '101260412', '荔波'),
(1833, '101260501', '凯里'),
(1834, '101260502', '岑巩'),
(1835, '101260503', '施秉'),
(1836, '101260504', '镇远'),
(1837, '101260505', '黄平'),
(1838, '101260507', '麻江'),
(1839, '101260508', '丹寨'),
(1840, '101260509', '三穗'),
(1841, '101260510', '台江'),
(1842, '101260511', '剑河'),
(1843, '101260512', '雷山'),
(1844, '101260513', '黎平'),
(1845, '101260514', '天柱'),
(1846, '101260515', '锦屏'),
(1847, '101260516', '榕江'),
(1848, '101260517', '从江'),
(1849, '101260601', '铜仁'),
(1850, '101260602', '江口'),
(1851, '101260603', '玉屏'),
(1852, '101260604', '万山特'),
(1853, '101260605', '思南'),
(1854, '101260607', '印江'),
(1855, '101260608', '石阡'),
(1856, '101260609', '沿河'),
(1857, '101260610', '德江'),
(1858, '101260611', '松桃'),
(1859, '101260701', '毕节'),
(1860, '101260702', '赫章'),
(1861, '101260703', '金沙'),
(1862, '101260704', '威宁'),
(1863, '101260705', '大方'),
(1864, '101260706', '纳雍'),
(1865, '101260707', '织金'),
(1866, '101260708', '黔西'),
(1867, '101260801', '水城'),
(1868, '101260802', '六枝特'),
(1869, '101260804', '盘县'),
(1870, '101260901', '兴义'),
(1871, '101260902', '晴隆'),
(1872, '101260903', '兴仁'),
(1873, '101260904', '贞丰'),
(1874, '101260905', '望谟'),
(1875, '101260907', '安龙'),
(1876, '101260908', '册亨'),
(1877, '101260909', '普安'),
(1878, '101270101', '成都'),
(1879, '101270103', '新都'),
(1880, '101270104', '温江'),
(1881, '101270105', '金堂'),
(1882, '101270106', '双流'),
(1883, '101270107', '郫县'),
(1884, '101270108', '大邑'),
(1885, '101270109', '蒲江'),
(1886, '101270110', '新津'),
(1887, '101270111', '都江堰'),
(1888, '101270112', '彭州'),
(1889, '101270113', '邛崃'),
(1890, '101270114', '崇州'),
(1891, '101270201', '攀枝花'),
(1892, '101270203', '米易'),
(1893, '101270204', '盐边'),
(1894, '101270301', '自贡'),
(1895, '101270302', '富顺'),
(1896, '101270303', '荣县'),
(1897, '101270401', '绵阳'),
(1898, '101270402', '三台'),
(1899, '101270403', '盐亭'),
(1900, '101270404', '安县'),
(1901, '101270405', '梓潼'),
(1902, '101270406', '北川'),
(1903, '101270407', '平武'),
(1904, '101270408', '江油'),
(1905, '101270501', '南充'),
(1906, '101270502', '南部'),
(1907, '101270503', '营山'),
(1908, '101270504', '蓬安'),
(1909, '101270505', '仪陇'),
(1910, '101270506', '西充'),
(1911, '101270507', '阆中'),
(1912, '101270601', '达州'),
(1913, '101270602', '宣汉'),
(1914, '101270603', '开江'),
(1915, '101270604', '大竹'),
(1916, '101270605', '渠县'),
(1917, '101270606', '万源'),
(1918, '101270608', '达县'),
(1919, '101270701', '遂宁'),
(1920, '101270702', '蓬溪'),
(1921, '101270703', '射洪'),
(1922, '101270801', '广安'),
(1923, '101270802', '岳池'),
(1924, '101270803', '武胜'),
(1925, '101270804', '邻水'),
(1926, '101270805', '华蓥'),
(1927, '101270901', '巴中'),
(1928, '101270902', '通江'),
(1929, '101270903', '南江'),
(1930, '101270904', '平昌'),
(1931, '101271001', '泸州'),
(1932, '101271003', '泸县'),
(1933, '101271004', '合江'),
(1934, '101271005', '叙永'),
(1935, '101271006', '古蔺'),
(1936, '101271101', '宜宾'),
(1937, '101271104', '南溪'),
(1938, '101271105', '江安'),
(1939, '101271106', '长宁'),
(1940, '101271107', '高县'),
(1941, '101271108', '珙县'),
(1942, '101271109', '筠连'),
(1943, '101271110', '兴文'),
(1944, '101271111', '屏山'),
(1945, '101271201', '内江'),
(1946, '101271203', '威远'),
(1947, '101271204', '资中'),
(1948, '101271205', '隆昌'),
(1949, '101271301', '资阳'),
(1950, '101271302', '安岳'),
(1951, '101271303', '乐至'),
(1952, '101271304', '简阳'),
(1953, '101271401', '乐山'),
(1954, '101271402', '犍为'),
(1955, '101271403', '井研'),
(1956, '101271404', '夹江'),
(1957, '101271405', '沐川'),
(1958, '101271406', '峨边'),
(1959, '101271407', '马边'),
(1960, '101271409', '峨眉山'),
(1961, '101271501', '眉山'),
(1962, '101271502', '仁寿'),
(1963, '101271503', '彭山'),
(1964, '101271504', '洪雅'),
(1965, '101271505', '丹棱'),
(1966, '101271506', '青神'),
(1967, '101271601', '凉山'),
(1968, '101271603', '木里'),
(1969, '101271604', '盐源'),
(1970, '101271605', '德昌'),
(1971, '101271606', '会理'),
(1972, '101271607', '会东'),
(1973, '101271608', '宁南'),
(1974, '101271609', '普格'),
(1975, '101271610', '西昌'),
(1976, '101271611', '金阳'),
(1977, '101271612', '昭觉'),
(1978, '101271613', '喜德'),
(1979, '101271614', '冕宁'),
(1980, '101271615', '越西'),
(1981, '101271616', '甘洛'),
(1982, '101271617', '雷波'),
(1983, '101271618', '美姑'),
(1984, '101271619', '布拖'),
(1985, '101271701', '雅安'),
(1986, '101271702', '名山'),
(1987, '101271703', '荥经'),
(1988, '101271704', '汉源'),
(1989, '101271705', '石棉'),
(1990, '101271706', '天全'),
(1991, '101271707', '芦山'),
(1992, '101271708', '宝兴'),
(1993, '101271801', '甘孜'),
(1994, '101271802', '康定'),
(1995, '101271803', '泸定'),
(1996, '101271804', '丹巴'),
(1997, '101271805', '九龙'),
(1998, '101271806', '雅江'),
(1999, '101271807', '道孚'),
(2000, '101271808', '炉霍'),
(2001, '101271809', '新龙'),
(2002, '101271810', '德格'),
(2003, '101271811', '白玉'),
(2004, '101271812', '石渠'),
(2005, '101271813', '色达'),
(2006, '101271814', '理塘'),
(2007, '101271815', '巴塘'),
(2008, '101271816', '乡城'),
(2009, '101271817', '稻城'),
(2010, '101271818', '得荣'),
(2011, '101271901', '阿坝'),
(2012, '101271902', '汶川'),
(2013, '101271903', '理县'),
(2014, '101271904', '茂县'),
(2015, '101271905', '松潘'),
(2016, '101271906', '九寨沟'),
(2017, '101271907', '金川'),
(2018, '101271908', '小金'),
(2019, '101271909', '黑水'),
(2020, '101271910', '马尔康'),
(2021, '101271911', '壤塘'),
(2022, '101271912', '若尔盖'),
(2023, '101271913', '红原'),
(2024, '101272001', '德阳'),
(2025, '101272002', '中江'),
(2026, '101272003', '广汉'),
(2027, '101272004', '什邡'),
(2028, '101272005', '绵竹'),
(2029, '101272006', '罗江'),
(2030, '101272101', '广元'),
(2031, '101272102', '旺苍'),
(2032, '101272103', '青川'),
(2033, '101272104', '剑阁'),
(2034, '101272105', '苍溪'),
(2035, '101280101', '广州'),
(2036, '101280102', '番禺'),
(2037, '101280103', '从化'),
(2038, '101280104', '增城'),
(2039, '101280105', '花都'),
(2040, '101280201', '韶关'),
(2041, '101280202', '乳源'),
(2042, '101280203', '始兴'),
(2043, '101280204', '翁源'),
(2044, '101280205', '乐昌'),
(2045, '101280206', '仁化'),
(2046, '101280207', '南雄'),
(2047, '101280208', '新丰'),
(2048, '101280209', '曲江'),
(2049, '101280210', '浈江'),
(2050, '101280211', '武江'),
(2051, '101280301', '惠州'),
(2052, '101280302', '博罗'),
(2053, '101280303', '惠阳'),
(2054, '101280304', '惠东'),
(2055, '101280305', '龙门'),
(2056, '101280401', '梅州'),
(2057, '101280402', '兴宁'),
(2058, '101280403', '蕉岭'),
(2059, '101280404', '大埔'),
(2060, '101280406', '丰顺'),
(2061, '101280407', '平远'),
(2062, '101280408', '五华'),
(2063, '101280409', '梅县'),
(2064, '101280501', '汕头'),
(2065, '101280502', '潮阳'),
(2066, '101280503', '澄海'),
(2067, '101280504', '南澳'),
(2068, '101280601', '深圳'),
(2069, '101280701', '珠海'),
(2070, '101280702', '斗门'),
(2071, '101280703', '金湾'),
(2072, '101280800', '佛山'),
(2073, '101280801', '顺德'),
(2074, '101280802', '三水'),
(2075, '101280803', '南海'),
(2076, '101280804', '高明'),
(2077, '101280901', '肇庆'),
(2078, '101280902', '广宁'),
(2079, '101280903', '四会'),
(2080, '101280905', '德庆'),
(2081, '101280906', '怀集'),
(2082, '101280907', '封开'),
(2083, '101280908', '高要'),
(2084, '101281001', '湛江'),
(2085, '101281002', '吴川'),
(2086, '101281003', '雷州'),
(2087, '101281004', '徐闻'),
(2088, '101281005', '廉江'),
(2089, '101281006', '赤坎'),
(2090, '101281007', '遂溪'),
(2091, '101281008', '坡头'),
(2092, '101281009', '霞山'),
(2093, '101281010', '麻章'),
(2094, '101281101', '江门'),
(2095, '101281103', '开平'),
(2096, '101281104', '新会'),
(2097, '101281105', '恩平'),
(2098, '101281106', '台山'),
(2099, '101281108', '鹤山'),
(2100, '101281109', '江海'),
(2101, '101281201', '河源'),
(2102, '101281202', '紫金'),
(2103, '101281203', '连平'),
(2104, '101281204', '和平'),
(2105, '101281205', '龙川'),
(2106, '101281206', '东源'),
(2107, '101281301', '清远'),
(2108, '101281302', '连南'),
(2109, '101281303', '连州'),
(2110, '101281304', '连山'),
(2111, '101281305', '阳山'),
(2112, '101281306', '佛冈'),
(2113, '101281307', '英德'),
(2114, '101281308', '清新'),
(2115, '101281401', '云浮'),
(2116, '101281402', '罗定'),
(2117, '101281403', '新兴'),
(2118, '101281404', '郁南'),
(2119, '101281406', '云安'),
(2120, '101281501', '潮州'),
(2121, '101281502', '饶平'),
(2122, '101281503', '潮安'),
(2123, '101281601', '东莞'),
(2124, '101281701', '中山'),
(2125, '101281801', '阳江'),
(2126, '101281802', '阳春'),
(2127, '101281803', '阳东'),
(2128, '101281804', '阳西'),
(2129, '101281901', '揭阳'),
(2130, '101281902', '揭西'),
(2131, '101281903', '普宁'),
(2132, '101281904', '惠来'),
(2133, '101281905', '揭东'),
(2134, '101282001', '茂名'),
(2135, '101282002', '高州'),
(2136, '101282003', '化州'),
(2137, '101282004', '电白'),
(2138, '101282005', '信宜'),
(2139, '101282006', '茂港'),
(2140, '101282101', '汕尾'),
(2141, '101282102', '海丰'),
(2142, '101282103', '陆丰'),
(2143, '101282104', '陆河'),
(2144, '101290101', '昆明'),
(2145, '101290103', '东川'),
(2146, '101290104', '寻甸'),
(2147, '101290105', '晋宁'),
(2148, '101290106', '宜良'),
(2149, '101290107', '石林'),
(2150, '101290108', '呈贡'),
(2151, '101290109', '富民'),
(2152, '101290110', '嵩明'),
(2153, '101290111', '禄劝'),
(2154, '101290112', '安宁'),
(2155, '101290201', '大理'),
(2156, '101290202', '云龙'),
(2157, '101290203', '漾濞'),
(2158, '101290204', '永平'),
(2159, '101290205', '宾川'),
(2160, '101290206', '弥渡'),
(2161, '101290207', '祥云'),
(2162, '101290208', '巍山'),
(2163, '101290209', '剑川'),
(2164, '101290210', '洱源'),
(2165, '101290211', '鹤庆'),
(2166, '101290212', '南涧'),
(2167, '101290301', '红河'),
(2168, '101290302', '石屏'),
(2169, '101290303', '建水'),
(2170, '101290304', '弥勒'),
(2171, '101290305', '元阳'),
(2172, '101290306', '绿春'),
(2173, '101290307', '开远'),
(2174, '101290308', '个旧'),
(2175, '101290309', '蒙自'),
(2176, '101290310', '屏边'),
(2177, '101290311', '泸西'),
(2178, '101290312', '金平'),
(2179, '101290313', '河口'),
(2180, '101290401', '曲靖'),
(2181, '101290402', '沾益'),
(2182, '101290403', '陆良'),
(2183, '101290404', '富源'),
(2184, '101290405', '马龙'),
(2185, '101290406', '师宗'),
(2186, '101290407', '罗平'),
(2187, '101290408', '会泽'),
(2188, '101290409', '宣威'),
(2189, '101290501', '保山'),
(2190, '101290503', '龙陵'),
(2191, '101290504', '施甸'),
(2192, '101290505', '昌宁'),
(2193, '101290506', '腾冲'),
(2194, '101290601', '文山'),
(2195, '101290602', '西畴'),
(2196, '101290603', '马关'),
(2197, '101290604', '麻栗坡'),
(2198, '101290605', '砚山'),
(2199, '101290606', '丘北'),
(2200, '101290607', '广南'),
(2201, '101290608', '富宁'),
(2202, '101290701', '玉溪'),
(2203, '101290702', '澄江'),
(2204, '101290703', '江川'),
(2205, '101290704', '通海'),
(2206, '101290705', '华宁'),
(2207, '101290706', '新平'),
(2208, '101290707', '易门'),
(2209, '101290708', '峨山'),
(2210, '101290709', '元江'),
(2211, '101290801', '楚雄'),
(2212, '101290802', '大姚'),
(2213, '101290803', '元谋'),
(2214, '101290804', '姚安'),
(2215, '101290805', '牟定'),
(2216, '101290806', '南华'),
(2217, '101290807', '武定'),
(2218, '101290808', '禄丰'),
(2219, '101290809', '双柏'),
(2220, '101290810', '永仁'),
(2221, '101290901', '普洱'),
(2222, '101290902', '景谷'),
(2223, '101290903', '景东'),
(2224, '101290904', '澜沧'),
(2225, '101290906', '墨江'),
(2226, '101290907', '江城'),
(2227, '101290908', '孟连'),
(2228, '101290909', '西盟'),
(2229, '101290911', '镇沅'),
(2230, '101290912', '宁洱'),
(2231, '101291001', '昭通'),
(2232, '101291002', '鲁甸'),
(2233, '101291003', '彝良'),
(2234, '101291004', '镇雄'),
(2235, '101291005', '威信'),
(2236, '101291006', '巧家'),
(2237, '101291007', '绥江'),
(2238, '101291008', '永善'),
(2239, '101291009', '盐津'),
(2240, '101291010', '大关'),
(2241, '101291011', '水富'),
(2242, '101291101', '临沧'),
(2243, '101291102', '沧源'),
(2244, '101291103', '耿马'),
(2245, '101291104', '双江'),
(2246, '101291105', '凤庆'),
(2247, '101291106', '永德'),
(2248, '101291107', '云县'),
(2249, '101291108', '镇康'),
(2250, '101291201', '怒江'),
(2251, '101291203', '福贡'),
(2252, '101291204', '兰坪'),
(2253, '101291205', '泸水'),
(2254, '101291207', '贡山'),
(2255, '101291301', '迪庆'),
(2256, '101291302', '德钦'),
(2257, '101291303', '维西'),
(2258, '101291401', '丽江'),
(2259, '101291402', '永胜'),
(2260, '101291403', '华坪'),
(2261, '101291404', '宁蒗'),
(2262, '101291501', '德宏'),
(2263, '101291503', '陇川'),
(2264, '101291504', '盈江'),
(2265, '101291506', '瑞丽'),
(2266, '101291507', '梁河'),
(2267, '101291508', '潞西'),
(2268, '101291601', '西双版纳'),
(2269, '101291603', '勐海'),
(2270, '101291605', '勐腊'),
(2271, '101300101', '南宁'),
(2272, '101300103', '邕宁'),
(2273, '101300104', '横县'),
(2274, '101300105', '隆安'),
(2275, '101300106', '马山'),
(2276, '101300107', '上林'),
(2277, '101300108', '武鸣'),
(2278, '101300109', '宾阳'),
(2279, '101300201', '崇左'),
(2280, '101300202', '天等'),
(2281, '101300203', '龙州'),
(2282, '101300204', '凭祥'),
(2283, '101300205', '大新'),
(2284, '101300206', '扶绥'),
(2285, '101300207', '宁明'),
(2286, '101300301', '柳州'),
(2287, '101300302', '柳城'),
(2288, '101300304', '鹿寨'),
(2289, '101300305', '柳江'),
(2290, '101300306', '融安'),
(2291, '101300307', '融水'),
(2292, '101300308', '三江'),
(2293, '101300401', '来宾'),
(2294, '101300402', '忻城'),
(2295, '101300403', '金秀'),
(2296, '101300404', '象州'),
(2297, '101300405', '武宣'),
(2298, '101300406', '合山'),
(2299, '101300501', '桂林'),
(2300, '101300503', '龙胜'),
(2301, '101300504', '永福'),
(2302, '101300505', '临桂'),
(2303, '101300506', '兴安'),
(2304, '101300507', '灵川'),
(2305, '101300508', '全州'),
(2306, '101300509', '灌阳'),
(2307, '101300510', '阳朔'),
(2308, '101300511', '恭城'),
(2309, '101300512', '平乐'),
(2310, '101300513', '荔浦'),
(2311, '101300514', '资源'),
(2312, '101300601', '梧州'),
(2313, '101300602', '藤县'),
(2314, '101300604', '苍梧'),
(2315, '101300605', '蒙山'),
(2316, '101300606', '岑溪'),
(2317, '101300701', '贺州'),
(2318, '101300702', '昭平'),
(2319, '101300703', '富川'),
(2320, '101300704', '钟山'),
(2321, '101300801', '贵港'),
(2322, '101300802', '桂平'),
(2323, '101300803', '平南'),
(2324, '101300901', '玉林'),
(2325, '101300902', '博白'),
(2326, '101300903', '北流'),
(2327, '101300904', '容县'),
(2328, '101300905', '陆川'),
(2329, '101300906', '兴业'),
(2330, '101301001', '百色'),
(2331, '101301002', '那坡'),
(2332, '101301003', '田阳'),
(2333, '101301004', '德保'),
(2334, '101301005', '靖西'),
(2335, '101301006', '田东'),
(2336, '101301007', '平果'),
(2337, '101301008', '隆林'),
(2338, '101301009', '西林'),
(2339, '101301010', '乐业'),
(2340, '101301011', '凌云'),
(2341, '101301012', '田林'),
(2342, '101301101', '钦州'),
(2343, '101301102', '浦北'),
(2344, '101301103', '灵山'),
(2345, '101301201', '河池'),
(2346, '101301202', '天峨'),
(2347, '101301203', '东兰'),
(2348, '101301204', '巴马'),
(2349, '101301205', '环江'),
(2350, '101301206', '罗城'),
(2351, '101301207', '宜州'),
(2352, '101301208', '凤山'),
(2353, '101301209', '南丹'),
(2354, '101301210', '都安'),
(2355, '101301211', '大化'),
(2356, '101301301', '北海'),
(2357, '101301302', '合浦'),
(2358, '101301303', '涠洲岛'),
(2359, '101301401', '防城港'),
(2360, '101301402', '上思'),
(2361, '101301403', '东兴'),
(2362, '101301405', '防城'),
(2363, '101310101', '海口'),
(2364, '101310201', '三亚'),
(2365, '101310202', '东方'),
(2366, '101310203', '临高'),
(2367, '101310204', '澄迈'),
(2368, '101310205', '儋州'),
(2369, '101310206', '昌江'),
(2370, '101310207', '白沙'),
(2371, '101310208', '琼中'),
(2372, '101310209', '定安'),
(2373, '101310210', '屯昌'),
(2374, '101310211', '琼海'),
(2375, '101310212', '文昌'),
(2376, '101310214', '保亭'),
(2377, '101310215', '万宁'),
(2378, '101310216', '陵水'),
(2379, '101310221', '乐东'),
(2380, '101310222', '五指山'),
(2381, '101320101', '香港'),
(2382, '101330101', '澳门'),
(2383, '101340101', '台北'),
(2384, '101340102', '桃园'),
(2385, '101340103', '新竹'),
(2386, '101340104', '宜兰'),
(2387, '101340201', '高雄'),
(2388, '101340202', '嘉义'),
(2389, '101340203', '台南'),
(2390, '101340204', '台东'),
(2391, '101340205', '屏东'),
(2392, '101340401', '台中'),
(2393, '101340402', '苗栗'),
(2394, '101340403', '彰化'),
(2395, '101340404', '南投'),
(2396, '101340405', '花莲'),
(2397, '101340406', '云林'),
(2398, '102010100', '首尔'),
(2399, '103010100', '东京'),
(2400, '103020100', '大阪'),
(2401, '103040100', '札幌'),
(2402, '103050100', '福冈'),
(2403, '103090100', '京都'),
(2404, '104010100', '新加坡'),
(2405, '105010100', '吉隆坡'),
(2406, '106010100', '曼谷'),
(2407, '107010100', '河内'),
(2408, '107020100', '胡志明市'),
(2409, '108010100', '仰光'),
(2410, '109010100', '万象'),
(2411, '111010100', '雅加达'),
(2412, '111080100', '登巴萨'),
(2413, '112010100', '德黑兰'),
(2414, '113010100', '新德里'),
(2415, '113030100', '孟买'),
(2416, '113090100', '斯利那加'),
(2417, '114010100', '伊斯兰堡'),
(2418, '114030100', '卡拉奇'),
(2419, '114040100', '白沙瓦'),
(2420, '115010100', '塔什干'),
(2421, '117010100', '科伦坡'),
(2422, '118010100', '喀布尔'),
(2423, '118030100', '坎大哈'),
(2424, '120010100', '斯里巴加湾'),
(2425, '121010100', '巴林'),
(2426, '124010100', '阿布扎比'),
(2427, '124020100', '迪拜'),
(2428, '127010100', '平壤'),
(2429, '130010100', '阿斯塔纳'),
(2430, '132010100', '乌兰巴托'),
(2431, '136010100', '马尼拉'),
(2432, '138010100', '利雅得'),
(2433, '139010100', '大马士革'),
(2434, '201010100', '伦敦'),
(2435, '201050100', '曼彻斯特'),
(2436, '202010100', '巴黎'),
(2437, '202100100', '马赛'),
(2438, '203010100', '柏林'),
(2439, '203020100', '法兰克福'),
(2440, '203050100', '汉堡'),
(2441, '204010100', '罗马'),
(2442, '204040100', '米兰'),
(2443, '205010100', '阿姆斯特丹'),
(2444, '206010100', '马德里'),
(2445, '206020100', '巴塞罗那'),
(2446, '207010100', '哥本哈根'),
(2447, '208010100', '莫斯科'),
(2448, '210020100', '日内瓦'),
(2449, '210030100', '苏黎世'),
(2450, '211010100', '斯德哥尔摩'),
(2451, '214010100', '里斯本'),
(2452, '215020100', '伊斯坦布尔'),
(2453, '216010100', '布鲁塞尔'),
(2454, '217010100', '维也纳'),
(2455, '218010100', '雅典'),
(2456, '222010100', '赫尔辛基'),
(2457, '301010100', '开罗'),
(2458, '302010100', '开普敦'),
(2459, '302020100', '约翰内斯堡'),
(2460, '303010100', '突尼斯'),
(2461, '304020100', '拉各斯'),
(2462, '305010100', '阿尔及尔'),
(2463, '311010100', '亚的斯亚贝巴'),
(2464, '317010100', '内罗毕'),
(2465, '321020100', '卡萨布兰卡'),
(2466, '327010100', '达喀尔'),
(2467, '332010100', '达累斯萨拉姆'),
(2468, '334010100', '卢萨卡'),
(2469, '401010100', '华盛顿'),
(2470, '401020101', '迈阿密'),
(2471, '401020104', '奥兰多'),
(2472, '401030101', '亚特兰大'),
(2473, '401040101', '洛杉矶'),
(2474, '401040102', '圣弗朗西斯科'),
(2475, '401060100', '波士顿'),
(2476, '401070101', '芝加哥'),
(2477, '401100101', '西雅图'),
(2478, '401110101', '纽约'),
(2479, '401120108', '休斯敦'),
(2480, '401370100', '拉斯维加斯'),
(2481, '401480100', '火奴鲁鲁'),
(2482, '404010100', '渥太华'),
(2483, '404030100', '温哥华'),
(2484, '404040100', '多伦多'),
(2485, '404130100', '埃德蒙顿'),
(2486, '404140100', '卡尔加里'),
(2487, '404220100', '温尼伯'),
(2488, '404230100', '魁北克'),
(2489, '404240100', '蒙特利尔'),
(2490, '406010100', '哈瓦那'),
(2491, '411010100', '墨西哥城'),
(2492, '416010100', '加拉加斯'),
(2493, '601020101', '悉尼'),
(2494, '601030101', '布里斯班'),
(2495, '601040101', '阿德来德'),
(2496, '601060101', '墨尔本'),
(2497, '601070101', '珀斯'),
(2498, '606010100', '惠灵顿'),
(2499, '606020100', '奥克兰'),
(2500, '606030100', '克莱斯特彻奇'),
(2501, '101030100', '天津');

-- --------------------------------------------------------

--
-- 表的结构 `tp_wechat_group`
--

CREATE TABLE IF NOT EXISTS `tp_wechat_group` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `wechatgroupid` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(60) NOT NULL DEFAULT '',
  `intro` varchar(200) NOT NULL DEFAULT '',
  `token` varchar(30) NOT NULL DEFAULT '',
  `fanscount` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `wechatgroupid` (`wechatgroupid`,`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_wechat_group_list`
--

CREATE TABLE IF NOT EXISTS `tp_wechat_group_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `g_id` varchar(20) NOT NULL DEFAULT '',
  `nickname` varchar(60) NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `province` varchar(20) NOT NULL DEFAULT '',
  `city` varchar(30) NOT NULL,
  `headimgurl` varchar(200) NOT NULL,
  `subscribe_time` int(11) NOT NULL,
  `token` varchar(30) NOT NULL,
  `openid` varchar(60) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_wechat_scene`
--

CREATE TABLE IF NOT EXISTS `tp_wechat_scene` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` char(30) NOT NULL,
  `title` char(50) NOT NULL,
  `pic` char(100) NOT NULL,
  `intro` varchar(250) NOT NULL,
  `shake_id` int(10) unsigned NOT NULL,
  `wall_id` int(10) unsigned NOT NULL,
  `vote_id` char(25) NOT NULL,
  `is_open` enum('0','1') NOT NULL,
  `open_vote` enum('0','1') NOT NULL,
  `open_zzle` enum('0','1') NOT NULL,
  `open_lottery` enum('0','1') NOT NULL,
  `token` char(20) NOT NULL,
  `logo` char(100) NOT NULL,
  `background` char(100) NOT NULL,
  `qrcode` char(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_wechat_scene`
--

INSERT INTO `tp_wechat_scene` (`id`, `keyword`, `title`, `pic`, `intro`, `shake_id`, `wall_id`, `vote_id`, `is_open`, `open_vote`, `open_zzle`, `open_lottery`, `token`, `logo`, `background`, `qrcode`) VALUES
(1, '22', '12阿瓦斯短发散发的是', '', '', 0, 0, '', '1', '1', '1', '1', 'kpktkq1416817563', './tpl/static/wall/images/default_logo.png', './tpl/static/wall/images/default_bg.jpg', ''),
(2, '关于我们', '投票开始了', '', '', 0, 0, '', '1', '1', '1', '1', 'mbeboo1416823194', './tpl/static/wall/images/default_logo.png', './tpl/static/wall/images/default_bg.jpg', '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_wecha_user`
--

CREATE TABLE IF NOT EXISTS `tp_wecha_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  PRIMARY KEY (`token`,`wecha_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_wecht_grout`
--

CREATE TABLE IF NOT EXISTS `tp_wecht_grout` (
  `id` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `w_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tp_wedding`
--

CREATE TABLE IF NOT EXISTS `tp_wedding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `token` varchar(60) NOT NULL,
  `keyword` varchar(60) NOT NULL,
  `title` varchar(150) NOT NULL,
  `picurl` varchar(150) NOT NULL,
  `openpic` varchar(200) NOT NULL,
  `coverurl` varchar(200) NOT NULL,
  `woman` varchar(30) NOT NULL,
  `man` varchar(30) NOT NULL,
  `who_first` tinyint(1) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `time` int(11) NOT NULL,
  `place` varchar(200) NOT NULL,
  `lng` varchar(16) NOT NULL,
  `lat` varchar(16) NOT NULL,
  `video` varchar(200) NOT NULL,
  `mp3url` varchar(200) NOT NULL,
  `passowrd` int(20) NOT NULL,
  `word` varchar(200) NOT NULL,
  `qr_code` varchar(200) NOT NULL,
  `copyrite` varchar(150) NOT NULL,
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_wedding_info`
--

CREATE TABLE IF NOT EXISTS `tp_wedding_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fid` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `num` tinyint(2) NOT NULL,
  `info` varchar(200) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_wehcat_member_enddate`
--

CREATE TABLE IF NOT EXISTS `tp_wehcat_member_enddate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(60) NOT NULL,
  `enddate` int(11) NOT NULL,
  `joinUpDate` int(11) NOT NULL DEFAULT '0',
  `uid` int(11) NOT NULL DEFAULT '0',
  `token` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

--
-- 转存表中的数据 `tp_wehcat_member_enddate`
--

INSERT INTO `tp_wehcat_member_enddate` (`id`, `openid`, `enddate`, `joinUpDate`, `uid`, `token`) VALUES
(1, 'osvmet3oEgq-yXCbwnU6NP8u6ayc', 1417356165, 0, 0, 'kpktkq1416817563'),
(2, 'ob2qxjk7eXqmqY3bRyAuQtMjAPrE', 1416830749, 0, 0, 'jfvblr1416830511'),
(3, 'ob2qxjgbC8wTmFfmJdS14O-So_jg', 1416830755, 0, 0, 'jfvblr1416830511'),
(4, 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 1417447645, 0, 0, 'kpktkq1416817563'),
(5, 'ojiT9tkDKkjOZ7ehT_a9umlRRrzs', 1417173838, 0, 0, 'hupilh1417143669'),
(6, 'o3aweuP2jfzJca8li4VvxJzBWTpQ', 1417321070, 0, 0, 'htedog1417267111'),
(7, 'o3aweuG2e-P0b7GA0dhjNwN3yJdo', 1417319598, 0, 0, 'htedog1417267111'),
(8, 'o3aweuC9oUYoj0EEK27JQsx-x8n4', 1417320661, 0, 0, 'htedog1417267111'),
(9, 'o3aweuEaXz_oN0gv4_CkYkAj2MiY', 1417321417, 0, 0, 'htedog1417267111'),
(10, 'o3aweuLSNzMUIaniPxuTGgTGOo7o', 1417337880, 0, 0, 'htedog1417267111'),
(11, 'oXzezjqUZITRAu6DZ9ty2xY9tAMQ', 1417360462, 0, 0, 'mbeboo1416823194'),
(12, 'o3aweuF3DWVzinR-wLmaiaICuqGY', 1417341770, 0, 0, 'htedog1417267111'),
(13, 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', 1417345646, 0, 0, 'htedog1417267111'),
(14, 'otO33jnYlg4AccLi9HrJgXNQ85Oc', 1417349771, 0, 0, 'mbeboo1416823194'),
(15, 'o3aweuIkVRte6pIvDPEJPqyWEIho', 1417352320, 0, 0, 'htedog1417267111'),
(16, 'o3aweuMuGiVNv9DuZJagJ0veWv48', 1417362284, 0, 0, 'htedog1417267111'),
(17, 'o3aweuBPp-leCOrJDOsS1BpAKccA', 1417402250, 0, 0, 'htedog1417267111'),
(18, 'o3aweuEeOuxGGje7CRs0LyAbj0pw', 1417406011, 0, 0, 'htedog1417267111'),
(19, 'o3aweuBkkHSxPbShQjmzpUcD4qKw', 1417411267, 0, 0, 'htedog1417267111'),
(20, 'osvmet0ATseTVsaJS6uRp-dVTV3s', 1417431264, 0, 0, 'kpktkq1416817563'),
(21, 'osvmet3hbVmLNxwBee5V1iqNl3KA', 1417438234, 0, 0, 'kpktkq1416817563'),
(22, 'o3aweuG8J2EQtbwkwhOJLO2yUWoY', 1417440629, 0, 0, 'htedog1417267111'),
(23, 'o3aweuPJq-KT0-gmngQSwBp_5gJY', 1417441941, 0, 0, 'htedog1417267111'),
(24, 'o3aweuLd4kHJrnQ0Fm3hs7q7apQE', 1417442870, 0, 0, 'htedog1417267111'),
(25, 'o3aweuOAgc3yPFnxXBrUApnb859E', 1417442275, 0, 0, 'htedog1417267111'),
(26, 'osvmet7R_zuvwGKOAYWaIjcK-jOw', 1417442797, 0, 0, 'kpktkq1416817563'),
(27, 'o3aweuCTQQsB09DUxmLvRcgdgYjY', 1417442660, 0, 0, 'htedog1417267111'),
(28, 'o3aweuPkKiUFlKQStdbioGBx5gfk', 1417443030, 0, 0, 'htedog1417267111'),
(29, 'o3aweuB8vXwFtdJXW_bevFhn3L6Y', 1417443107, 0, 0, 'htedog1417267111'),
(30, 'o3aweuIr5z3RoQ0w5jGBw80ZWab4', 1417443224, 0, 0, 'htedog1417267111'),
(31, 'o3aweuBzWAXdmU8NVmldZCKcUPhM', 1417445128, 0, 0, 'htedog1417267111'),
(32, 'o3aweuF9vdkJU7rGdclphFRxZ5Tg', 1417443603, 0, 0, 'htedog1417267111'),
(33, 'o3aweuHLdUV-zjfRQZ_HF8T8kbHQ', 1417444114, 0, 0, 'htedog1417267111'),
(34, 'o3aweuE7O1K5ynZir2cY0eEgS10I', 1417444719, 0, 0, 'htedog1417267111'),
(35, 'o3aweuGY52pfeiIQcFQEnAiqpvJk', 1417444409, 0, 0, 'htedog1417267111'),
(36, 'o3aweuBU1ZpXVsDAbheabmEry9nY', 1417444453, 0, 0, 'htedog1417267111'),
(37, 'o3aweuDg0o5wu0T7j7fJkqrz3FHE', 1417444482, 0, 0, 'htedog1417267111'),
(38, 'o3aweuOgPvm8GOQFpsB-8w7vxbaU', 1417444567, 0, 0, 'htedog1417267111'),
(39, 'o3aweuJoooy-bha3KXyNKtIM1P5A', 1417444722, 0, 0, 'htedog1417267111'),
(40, 'o3aweuLX9hhLqOg6P1r0WVglPD0k', 1417444569, 0, 0, 'htedog1417267111'),
(41, 'o3aweuKI6CaU1hbJrW7Sln-DB508', 1417444582, 0, 0, 'htedog1417267111'),
(42, 'o3aweuFjoykWQQhBtxFGEgcxrtpE', 1417444706, 0, 0, 'htedog1417267111'),
(43, 'o3aweuKVH7ZZZV1rWSc9lRXcAtA4', 1417444795, 0, 0, 'htedog1417267111'),
(44, 'o3aweuMf1weGFNN52A3QJJOzST1g', 1417444860, 0, 0, 'htedog1417267111'),
(45, 'o3aweuMi2p5JOw-W6nSSVp8ADRcw', 1417444969, 0, 0, 'htedog1417267111'),
(46, 'o3aweuF1pQmylrjicDfcSZBwA1_g', 1417445142, 0, 0, 'htedog1417267111'),
(47, 'o3aweuPBE7iPXcYmFV1fa6PEOqa4', 1417445187, 0, 0, 'htedog1417267111'),
(48, 'o3aweuE7uCI4rJCWdkfSpoA35VlI', 1417446087, 0, 0, 'htedog1417267111'),
(49, 'o3aweuK8j0fhpD4OykyewD-6PSJg', 1417445560, 0, 0, 'htedog1417267111'),
(50, 'o3aweuLsiDzyDPs7ctkDnsieH3oA', 1417446061, 0, 0, 'htedog1417267111'),
(51, 'o3aweuHia5PxduAAhgL5fwJOu250', 1417446665, 0, 0, 'htedog1417267111'),
(52, 'oGR3DjpsjZF4uxkdgQ0At27qY1T4', 1431393797, 0, 0, 'hdwvpv1431337356');

-- --------------------------------------------------------

--
-- 表的结构 `tp_weilivereply_info`
--

CREATE TABLE IF NOT EXISTS `tp_weilivereply_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `info` varchar(120) NOT NULL DEFAULT '',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `copyright` text NOT NULL,
  `tel` varchar(11) NOT NULL,
  `biaoti` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_wifi`
--

CREATE TABLE IF NOT EXISTS `tp_wifi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` char(255) NOT NULL,
  `appid` varchar(60) NOT NULL,
  `appkey` varchar(60) NOT NULL,
  `url` varchar(200) NOT NULL COMMENT '??url',
  `name` varchar(50) NOT NULL COMMENT 'wifi??',
  `token` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `intro` text NOT NULL,
  `picurl` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_wqlcmswifi`
--

CREATE TABLE IF NOT EXISTS `tp_wqlcmswifi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mac` varchar(60) NOT NULL,
  `token` varchar(60) NOT NULL,
  `title` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `picurl` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_wuye`
--

CREATE TABLE IF NOT EXISTS `tp_wuye` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `title` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  `toppicurl` varchar(200) NOT NULL,
  `roompicurl` varchar(200) NOT NULL,
  `address` varchar(500) NOT NULL,
  `lat` varchar(30) NOT NULL,
  `lng` varchar(30) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `xmcontent` varchar(2000) NOT NULL,
  `jtcontent` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_wuyecom`
--

CREATE TABLE IF NOT EXISTS `tp_wuyecom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `title` varchar(100) NOT NULL,
  `sort` varchar(3) NOT NULL,
  `name` varchar(100) NOT NULL,
  `zw` varchar(100) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `dpcontent` varchar(2000) NOT NULL,
  `subestatename` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_wuyephoto`
--

CREATE TABLE IF NOT EXISTS `tp_wuyephoto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sort` varchar(3) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `namephoto` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_wuyeposter`
--

CREATE TABLE IF NOT EXISTS `tp_wuyeposter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `status` varchar(30) NOT NULL,
  `name` varchar(100) NOT NULL,
  `picurl1` varchar(100) NOT NULL,
  `picurl2` varchar(200) NOT NULL,
  `picurl3` varchar(200) NOT NULL,
  `picurl4` varchar(200) NOT NULL,
  `subestatename` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_wuyesub`
--

CREATE TABLE IF NOT EXISTS `tp_wuyesub` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `token` varchar(31) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sort` varchar(3) NOT NULL,
  `content` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_wuyeunits`
--

CREATE TABLE IF NOT EXISTS `tp_wuyeunits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sub` varchar(30) NOT NULL,
  `lc` varchar(30) NOT NULL,
  `area` varchar(50) NOT NULL,
  `shi` varchar(30) NOT NULL,
  `ting` varchar(100) NOT NULL,
  `sort` varchar(3) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_wxuser`
--

CREATE TABLE IF NOT EXISTS `tp_wxuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `routerid` varchar(50) NOT NULL DEFAULT '',
  `uid` int(11) NOT NULL,
  `wxname` varchar(60) NOT NULL COMMENT '公众号名称',
  `winxintype` smallint(2) NOT NULL DEFAULT '1',
  `aeskey` varchar(45) NOT NULL DEFAULT '',
  `encode` tinyint(1) NOT NULL DEFAULT '0',
  `appid` varchar(50) NOT NULL DEFAULT '',
  `appsecret` varchar(50) NOT NULL DEFAULT '',
  `fuwuappid` varchar(50) NOT NULL DEFAULT '',
  `wxid` varchar(20) NOT NULL COMMENT '公众号原始ID',
  `weixin` char(20) NOT NULL COMMENT '微信号',
  `headerpic` char(255) NOT NULL COMMENT '头像地址',
  `token` char(255) NOT NULL,
  `pigsecret` varchar(150) NOT NULL DEFAULT '',
  `province` varchar(30) NOT NULL COMMENT '省',
  `city` varchar(60) NOT NULL COMMENT '市',
  `qq` char(25) NOT NULL COMMENT '公众号邮箱',
  `wxfans` int(11) NOT NULL COMMENT '微信粉丝',
  `typeid` int(11) NOT NULL COMMENT '分类ID',
  `typename` varchar(90) NOT NULL DEFAULT '0' COMMENT '分类名',
  `tongji` text NOT NULL,
  `allcardnum` int(11) NOT NULL,
  `cardisok` int(11) NOT NULL,
  `yetcardnum` int(11) NOT NULL,
  `totalcardnum` int(11) NOT NULL,
  `createtime` varchar(13) NOT NULL,
  `tpltypeid` varchar(255) NOT NULL DEFAULT '1' COMMENT '??????ID',
  `updatetime` varchar(13) NOT NULL,
  `tpltypename` varchar(255) NOT NULL,
  `tpllistid` varchar(2) NOT NULL COMMENT '列表模版ID',
  `tpllistname` varchar(20) NOT NULL COMMENT '列表模版名',
  `tplcontentid` varchar(2) NOT NULL COMMENT '内容模版ID',
  `tplcontentname` varchar(20) NOT NULL COMMENT '内容模版名',
  `agentid` int(10) NOT NULL DEFAULT '0',
  `shoptpltypeid` varchar(20) NOT NULL,
  `shoptpltypename` varchar(255) NOT NULL,
  `transfer_customer_service` tinyint(1) NOT NULL DEFAULT '0',
  `openphotoprint` tinyint(1) NOT NULL DEFAULT '0',
  `freephotocount` mediumint(4) NOT NULL DEFAULT '3',
  `oauth` tinyint(1) NOT NULL DEFAULT '0',
  `password` varchar(255) NOT NULL,
  `color_id` int(2) NOT NULL,
  `phone` text NOT NULL,
  `smsstatus` text NOT NULL,
  `smsuser` text NOT NULL,
  `smspassword` text NOT NULL,
  `email` text NOT NULL,
  `emailstatus` text NOT NULL,
  `emailuser` text NOT NULL,
  `emailpassword` text NOT NULL,
  `username` text NOT NULL,
  `printstatus` int(1) DEFAULT NULL,
  `member_code` varchar(50) DEFAULT NULL,
  `feiyin_key` varchar(50) DEFAULT NULL,
  `device_no` varchar(50) DEFAULT NULL,
  `ifbiz` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `uid_2` (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_wxwall_award`
--

CREATE TABLE IF NOT EXISTS `tp_wxwall_award` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wxq_id` int(10) unsigned NOT NULL,
  `from_user` varchar(50) NOT NULL,
  `createtime` int(10) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_wxwall_members`
--

CREATE TABLE IF NOT EXISTS `tp_wxwall_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from_user` varchar(50) NOT NULL COMMENT '???????ID',
  `nickname` varchar(20) NOT NULL DEFAULT '' COMMENT '??',
  `avatar` varchar(100) NOT NULL DEFAULT '' COMMENT '??',
  `wxq_id` int(10) unsigned NOT NULL COMMENT '????????????',
  `isjoin` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '????????',
  `isblacklist` tinyint(1) NOT NULL DEFAULT '0' COMMENT '????????',
  `lastupdate` int(10) unsigned NOT NULL COMMENT '????????',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_wxwall_message`
--

CREATE TABLE IF NOT EXISTS `tp_wxwall_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `wxq_id` int(10) unsigned NOT NULL COMMENT '??ID',
  `from_user` varchar(50) NOT NULL COMMENT '?????ID',
  `content` varchar(1000) NOT NULL DEFAULT '' COMMENT '???????',
  `type` varchar(10) NOT NULL COMMENT '??????',
  `isshow` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '????',
  `createtime` int(10) unsigned NOT NULL,
  `isshowed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '?????? 1 ? 0?',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_yeepay_tmp`
--

CREATE TABLE IF NOT EXISTS `tp_yeepay_tmp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(50) NOT NULL,
  `token` varchar(60) NOT NULL,
  `wecha_id` varchar(60) NOT NULL,
  `from` varchar(30) NOT NULL,
  `time` int(11) NOT NULL,
  `platform` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `tp_yeepay_tmp`
--

INSERT INTO `tp_yeepay_tmp` (`id`, `order_id`, `token`, `wecha_id`, `from`, `time`, `platform`) VALUES
(1, 'Y20141128214113', 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', 'Repast', 1417186267, 0),
(2, '20141130205102546841', 'htedog1417267111', 'o3aweuP2jfzJca8li4VvxJzBWTpQ', 'Store', 1417351903, 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_yingyong_reply`
--

CREATE TABLE IF NOT EXISTS `tp_yingyong_reply` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `info` varchar(500) DEFAULT NULL COMMENT '????',
  `title` text NOT NULL,
  `tp` char(255) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_yml_config`
--

CREATE TABLE IF NOT EXISTS `tp_yml_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `username` varchar(20) NOT NULL,
  `secret` varchar(32) NOT NULL,
  `print_enable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `wx_appid` varchar(100) NOT NULL,
  `wx_appsecret` varchar(100) NOT NULL,
  `voice_enable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `tp_yml_config`
--

INSERT INTO `tp_yml_config` (`id`, `token`, `username`, `secret`, `print_enable`, `wx_appid`, `wx_appsecret`, `voice_enable`) VALUES
(1, 'ntauon1416894710', 'admin', 'sdsadsa', 0, '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `tp_yml_record`
--

CREATE TABLE IF NOT EXISTS `tp_yml_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `token` varchar(50) NOT NULL,
  `wxid` varchar(100) NOT NULL,
  `step` text NOT NULL,
  `task_id` bigint(20) NOT NULL,
  `update_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- 转存表中的数据 `tp_yml_record`
--

INSERT INTO `tp_yml_record` (`id`, `token`, `wxid`, `step`, `task_id`, `update_time`) VALUES
(1, 'kpktkq1416817563', 'osvmet3oEgq-yXCbwnU6NP8u6ayc', '', 0, 1416824312),
(2, 'jfvblr1416830511', 'ob2qxjk7eXqmqY3bRyAuQtMjAPrE', '', 0, 1416830724),
(3, 'jfvblr1416830511', 'ob2qxjgbC8wTmFfmJdS14O-So_jg', '', 0, 1416830745),
(4, 'kpktkq1416817563', 'osvmet4uw_C9vLaGrCcZPRrNCZlY', '', 0, 1416830930),
(5, 'cxrtxk1406343379', 'oIUzojjtmSnSmGPffSiKSc83kXl8', '', 0, 1416877160),
(6, 'hupilh1417143669', 'ojiT9tkDKkjOZ7ehT_a9umlRRrzs', '', 0, 1417143971),
(7, 'htedog1417267111', 'o3aweuFjYkOIBC8K4TXbOdUgNg_Q', '', 0, 1417315811),
(8, 'htedog1417267111', 'o3aweuP2jfzJca8li4VvxJzBWTpQ', '', 0, 1417319081),
(9, 'htedog1417267111', 'o3aweuG2e-P0b7GA0dhjNwN3yJdo', '', 0, 1417319523),
(10, 'htedog1417267111', 'o3aweuC9oUYoj0EEK27JQsx-x8n4', '', 0, 1417320660),
(11, 'htedog1417267111', 'o3aweuEaXz_oN0gv4_CkYkAj2MiY', '', 0, 1417321416),
(12, 'htedog1417267111', 'o3aweuLSNzMUIaniPxuTGgTGOo7o', '', 0, 1417324054),
(13, 'jfvblr1416830511', 'oXzezjqUZITRAu6DZ9ty2xY9tAMQ', '', 0, 1417325617),
(14, 'htedog1417267111', 'o3aweuF3DWVzinR-wLmaiaICuqGY', '', 0, 1417340995),
(15, 'htedog1417267111', 'o3aweuG64pJc3OZVUc6KXt5YF9Tk', '', 0, 1417345242),
(16, 'mbeboo1416823194', 'oXzezjqUZITRAu6DZ9ty2xY9tAMQ', '', 0, 1417349310),
(17, 'mbeboo1416823194', 'otO33jnYlg4AccLi9HrJgXNQ85Oc', '', 0, 1417349771),
(18, 'htedog1417267111', 'o3aweuIkVRte6pIvDPEJPqyWEIho', '', 0, 1417352319),
(19, 'htedog1417267111', 'o3aweuMuGiVNv9DuZJagJ0veWv48', '', 0, 1417362230),
(20, 'htedog1417267111', 'o3aweuBPp-leCOrJDOsS1BpAKccA', '', 0, 1417402250),
(21, 'htedog1417267111', 'o3aweuEeOuxGGje7CRs0LyAbj0pw', '', 0, 1417406011),
(22, 'htedog1417267111', 'o3aweuBkkHSxPbShQjmzpUcD4qKw', '', 0, 1417411243),
(23, 'htedog1417267111', 'o3aweuEjGkBD9hAyR-BoJDxvTxSg', '', 0, 1417426186),
(24, 'kpktkq1416817563', 'osvmet-TSlmsK9xW2dpEnNqdW3KQ', '', 0, 1417427692),
(25, 'kpktkq1416817563', 'osvmet0ATseTVsaJS6uRp-dVTV3s', '', 0, 1417431264),
(26, 'kpktkq1416817563', 'osvmet3hbVmLNxwBee5V1iqNl3KA', '', 0, 1417437987),
(27, 'htedog1417267111', 'o3aweuG8J2EQtbwkwhOJLO2yUWoY', '', 0, 1417440536),
(28, 'htedog1417267111', 'o3aweuPJq-KT0-gmngQSwBp_5gJY', '', 0, 1417441941),
(29, 'htedog1417267111', 'o3aweuLd4kHJrnQ0Fm3hs7q7apQE', '', 0, 1417442164),
(30, 'htedog1417267111', 'o3aweuOAgc3yPFnxXBrUApnb859E', '', 0, 1417442227),
(31, 'kpktkq1416817563', 'osvmet7R_zuvwGKOAYWaIjcK-jOw', '', 0, 1417442492),
(32, 'htedog1417267111', 'o3aweuCTQQsB09DUxmLvRcgdgYjY', '', 0, 1417442633),
(33, 'htedog1417267111', 'o3aweuPkKiUFlKQStdbioGBx5gfk', '', 0, 1417443030),
(34, 'htedog1417267111', 'o3aweuB8vXwFtdJXW_bevFhn3L6Y', '', 0, 1417443053),
(35, 'htedog1417267111', 'o3aweuIr5z3RoQ0w5jGBw80ZWab4', '', 0, 1417443224),
(36, 'htedog1417267111', 'o3aweuBzWAXdmU8NVmldZCKcUPhM', '', 0, 1417443418),
(37, 'htedog1417267111', 'o3aweuF9vdkJU7rGdclphFRxZ5Tg', '', 0, 1417443603),
(38, 'htedog1417267111', 'o3aweuHLdUV-zjfRQZ_HF8T8kbHQ', '', 0, 1417444075),
(39, 'htedog1417267111', 'o3aweuE7O1K5ynZir2cY0eEgS10I', '', 0, 1417444281),
(40, 'htedog1417267111', 'o3aweuGY52pfeiIQcFQEnAiqpvJk', '', 0, 1417444409),
(41, 'htedog1417267111', 'o3aweuBU1ZpXVsDAbheabmEry9nY', '', 0, 1417444422),
(42, 'htedog1417267111', 'o3aweuDg0o5wu0T7j7fJkqrz3FHE', '', 0, 1417444433),
(43, 'htedog1417267111', 'o3aweuOgPvm8GOQFpsB-8w7vxbaU', '', 0, 1417444453),
(44, 'htedog1417267111', 'o3aweuJoooy-bha3KXyNKtIM1P5A', '', 0, 1417444516),
(45, 'htedog1417267111', 'o3aweuLX9hhLqOg6P1r0WVglPD0k', '', 0, 1417444569),
(46, 'htedog1417267111', 'o3aweuKI6CaU1hbJrW7Sln-DB508', '', 0, 1417444582),
(47, 'htedog1417267111', 'o3aweuFjoykWQQhBtxFGEgcxrtpE', '', 0, 1417444670),
(48, 'htedog1417267111', 'o3aweuKVH7ZZZV1rWSc9lRXcAtA4', '', 0, 1417444725),
(49, 'htedog1417267111', 'o3aweuMf1weGFNN52A3QJJOzST1g', '', 0, 1417444807),
(50, 'htedog1417267111', 'o3aweuMi2p5JOw-W6nSSVp8ADRcw', '', 0, 1417444888),
(51, 'htedog1417267111', 'o3aweuF1pQmylrjicDfcSZBwA1_g', '', 0, 1417445108),
(52, 'htedog1417267111', 'o3aweuPBE7iPXcYmFV1fa6PEOqa4', '', 0, 1417445187),
(53, 'htedog1417267111', 'o3aweuE7uCI4rJCWdkfSpoA35VlI', '', 0, 1417445423),
(54, 'htedog1417267111', 'o3aweuK8j0fhpD4OykyewD-6PSJg', '', 0, 1417445482),
(55, 'htedog1417267111', 'o3aweuLsiDzyDPs7ctkDnsieH3oA', '', 0, 1417445773),
(56, 'htedog1417267111', 'o3aweuHia5PxduAAhgL5fwJOu250', '', 0, 1417446588),
(57, 'hdwvpv1431337356', 'oGR3DjpsjZF4uxkdgQ0At27qY1T4', '', 0, 1431392725);

-- --------------------------------------------------------

--
-- 表的结构 `tp_yuezhanreply_info`
--

CREATE TABLE IF NOT EXISTS `tp_yuezhanreply_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(60) NOT NULL,
  `title` varchar(30) NOT NULL DEFAULT '',
  `picurl` varchar(120) NOT NULL DEFAULT '',
  `picurls1` varchar(120) NOT NULL DEFAULT '',
  `info` varchar(120) NOT NULL DEFAULT '',
  `keyword` varchar(50) NOT NULL DEFAULT '',
  `copyright` text NOT NULL,
  `ad` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `token` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_yuyue_setcin`
--

CREATE TABLE IF NOT EXISTS `tp_yuyue_setcin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `yuanjia` varchar(10) DEFAULT NULL,
  `youhui` varchar(10) DEFAULT NULL,
  `memo` varchar(100) DEFAULT NULL,
  `messages` text,
  `type` varchar(20) DEFAULT NULL,
  `pic1` varchar(100) DEFAULT NULL,
  `pic2` varchar(100) DEFAULT NULL,
  `pic3` varchar(100) DEFAULT NULL,
  `pic4` varchar(100) DEFAULT NULL,
  `pic5` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_yzdd`
--

CREATE TABLE IF NOT EXISTS `tp_yzdd` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(80) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ms` varchar(1023) DEFAULT NULL,
  `kssj` int(11) DEFAULT NULL,
  `jssj` int(11) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `gjz` varchar(50) DEFAULT NULL,
  `limit` int(11) DEFAULT '20' COMMENT '???',
  `mrtm` int(11) DEFAULT NULL COMMENT '"y',
  `tk` varchar(255) DEFAULT NULL,
  `dtts` int(11) DEFAULT NULL,
  `status` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_yzddtk`
--

CREATE TABLE IF NOT EXISTS `tp_yzddtk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tm` varchar(1023) DEFAULT NULL,
  `d1` varchar(255) DEFAULT NULL,
  `d2` varchar(255) DEFAULT NULL,
  `d3` varchar(255) DEFAULT NULL,
  `d4` varchar(255) DEFAULT NULL,
  `zd` varchar(2) DEFAULT NULL,
  `token` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_yzdd_record`
--

CREATE TABLE IF NOT EXISTS `tp_yzdd_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(80) NOT NULL,
  `wecha_id` varchar(100) NOT NULL,
  `yid` int(11) DEFAULT NULL,
  `tms` int(11) DEFAULT NULL,
  `zqs` int(11) DEFAULT '0',
  `ctime` int(11) DEFAULT NULL,
  `jrtms` int(11) DEFAULT '0',
  `jt` int(11) DEFAULT '0',
  `iscom` tinyint(1) DEFAULT '0',
  `hdrq` date DEFAULT NULL,
  `lasttmid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_yzdd_record_data`
--

CREATE TABLE IF NOT EXISTS `tp_yzdd_record_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(80) NOT NULL COMMENT '?',
  `wecha_id` varchar(100) NOT NULL,
  `yid` int(11) NOT NULL COMMENT '??',
  `zd` varchar(2) NOT NULL,
  `rid` int(11) DEFAULT NULL,
  `tmid` int(11) NOT NULL,
  `uuid` varchar(60) NOT NULL,
  `ctime` int(11) NOT NULL,
  `htime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uuid` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_zhaopin_reply`
--

CREATE TABLE IF NOT EXISTS `tp_zhaopin_reply` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `token` varchar(100) NOT NULL,
  `info` varchar(500) DEFAULT NULL COMMENT '公司简介',
  `title` text NOT NULL,
  `tp` char(255) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `tp_zhaopin_reply`
--

INSERT INTO `tp_zhaopin_reply` (`id`, `token`, `info`, `title`, `tp`, `copyright`) VALUES
(11, 'kpktkq1416817563', '倒萨大苏打', '岁的萨达', 'http://demo.weiqianlong.com/tpl/static/attachment/focus/default/4.jpg', '');

-- --------------------------------------------------------

--
-- 表的结构 `tp_zhengwu`
--

CREATE TABLE IF NOT EXISTS `tp_zhengwu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(31) NOT NULL,
  `title` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `picurl` varchar(200) NOT NULL,
  `name` varchar(100) NOT NULL,
  `toppicurl` varchar(200) NOT NULL,
  `roompicurl` varchar(200) NOT NULL,
  `address` varchar(500) NOT NULL,
  `lat` varchar(30) NOT NULL,
  `lng` varchar(30) NOT NULL,
  `content` varchar(2000) NOT NULL,
  `xmcontent` varchar(2000) NOT NULL,
  `jtcontent` varchar(2000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `tp_zhida`
--

CREATE TABLE IF NOT EXISTS `tp_zhida` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(1000) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `token` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
